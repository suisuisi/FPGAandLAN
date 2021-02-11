///////////////////////////////////////////////////////////////////////////////
// (c) Copyright 2008 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//
///////////////////////////////////////////////////////////////////////////////
//
//  CHANNEL_INIT_SM
//
//
//  Description: the CHANNEL_INIT_SM module is a state machine for managing channel
//               bonding and verification.
//
//               The channel init state machine is reset until the lane up signals
//               of all the lanes that constitute the channel are asserted.  It then
//               requests channel bonding until the lanes have been bonded and
//               checks to make sure the bonding was successful.  Channel bonding is
//               skipped if there is only one lane in the channel.  If bonding is
//               unsuccessful, the lanes are reset.
//
//               After the bonding phase is complete, the state machine sends
//               verification sequences through the channel until it is clear that
//               the channel is ready to be used.  If verification is successful,
//               the CHANNEL_UP signal is asserted.  If it is unsuccessful, the
//               lanes are reset.
//
//               After CHANNEL_UP goes high, the state machine is quiescent, and will
//               reset only if one of the lanes goes down, a hard error is detected, or
//               a general reset is requested.
//
//               This module supports 1 2-byte lane designs
//

`timescale 1 ns / 1 ps

module aurora_8b10b_CHANNEL_INIT_SM #
(
     parameter   WATCHDOG_TIMEOUT =  14
)
(
    // GTP Interface
    CH_BOND_DONE,

    EN_CHAN_SYNC,


    // Aurora Lane Interface
    CHANNEL_BOND_LOAD,
    GOT_A,
    GOT_V,

    RESET_LANES,


    // System Interface
    USER_CLK,
    RESET,

    CHANNEL_UP,
    START_RX,


    // Idle and Verification Sequence Generator Interface
    DID_VER,

    GEN_VER,


    // Channel Error Management Interface
    GTRXRESET_OUT,
    RESET_CHANNEL

);

`define DLY #1

//***********************************Port Declarations*******************************

    // GTP Interface
input              CH_BOND_DONE;

    output             EN_CHAN_SYNC;

    // Aurora Lane Interface
input              CHANNEL_BOND_LOAD;
input   [0:1]      GOT_A;
input              GOT_V;
output             RESET_LANES;

    // System Interface
    input              USER_CLK;
    input              RESET;

    output             CHANNEL_UP;
    output             START_RX;

    // Idle and Verification Sequence Generator Interface
    input              DID_VER;

    output             GEN_VER;


    // Channel Init State Machine Interface
    output             GTRXRESET_OUT;
    input              RESET_CHANNEL;



//***************************External Register Declarations***************************

    reg             START_RX;


//***************************Internal Register Declarations***************************

    reg     [0:WATCHDOG_TIMEOUT-1]   free_count_r;
    reg     [0:15]  verify_watchdog_r;
    reg             all_lanes_v_r;
    reg             got_first_v_r;
    reg     [0:31]  v_count_r;
    reg             bad_v_r;
    reg     [0:2]   rxver_count_r;
    reg     [0:7]   txver_count_r;


    // State registers
    reg             wait_for_lane_up_r;
    reg             verify_r;
    reg             ready_r;
    reg             CHANNEL_UP;

    //FF for timing closure
    reg             ready_r2;

   wire               gtreset_c;
   wire               gtrxreset_nxt;

   reg   [7:0]        gtrxreset_extend_r =  8'd0;
   reg                GTRXRESET_OUT = 1'b0;  
//*********************************Wire Declarations**********************************

    wire            insert_ver_c;
    wire            verify_watchdog_done_r;
    wire            rxver_3d_done_r;
    wire            txver_8d_done_r;
    wire            reset_lanes_c;
    wire            free_count_done_w;



    // Next state signals
    wire            next_verify_c;
    wire            next_ready_c;


//*********************************Main Body of Code**********************************


    //________________Main state machine for bonding and verification________________


    // State registers
    always @(posedge USER_CLK)
        if(RESET|RESET_CHANNEL)
        begin
            wait_for_lane_up_r <=  `DLY    1'b1;
            verify_r           <=  `DLY    1'b0;
            ready_r            <=  `DLY    1'b0;
        end
        else
        begin
            wait_for_lane_up_r <=  `DLY    1'b0;
            verify_r           <=  `DLY    next_verify_c;
            ready_r            <=  `DLY    next_ready_c;
        end



    // Next state logic
    assign  next_verify_c       =   wait_for_lane_up_r |
                                    (verify_r & (!rxver_3d_done_r|!txver_8d_done_r));


    assign  next_ready_c        =   (verify_r & txver_8d_done_r & rxver_3d_done_r)|
                                    ready_r;



    // Output Logic
    always @(posedge USER_CLK)
      ready_r2          <=  `DLY  ready_r;

    // Channel up is high as long as the Global Logic is in the ready state.
    always @(posedge USER_CLK)
      CHANNEL_UP          <=  `DLY  ready_r2;


    // Turn the receive engine on as soon as all the lanes are up.
    always @(posedge USER_CLK)
        if(RESET)   START_RX    <=  `DLY    1'b0;
        else        START_RX    <=  `DLY    !wait_for_lane_up_r;



    // Generate the Verification sequence when in the verify state.
    assign  GEN_VER             =   verify_r;



    //__________________________Channel Reset _________________________________


    // Some problems during channel bonding and verification require the lanes to
    // be reset.  When this happens, we assert the Reset Lanes signal, which gets
    // sent to all Aurora Lanes.  When the Aurora Lanes reset, their LANE_UP signals
    // go down.  This causes the Channel Error Detector to assert the Reset Channel
    // signal.
    assign reset_lanes_c =              (verify_r & verify_watchdog_done_r)|
                                        (verify_r & bad_v_r & !rxver_3d_done_r)|
                                        (RESET_CHANNEL & !wait_for_lane_up_r)|
                                        RESET;

    FD #(.INIT(1'b1)) reset_lanes_flop_i
    (
        .D(reset_lanes_c),
        .C(USER_CLK),
        .Q(RESET_LANES)

    );



      assign gtreset_c =              (verify_r & verify_watchdog_done_r)|
                                      (verify_r & bad_v_r & !rxver_3d_done_r);


    FD #(.INIT(1'b1)) gtreset_flop_0_i
    (
        .D(gtreset_c),
        .C(USER_CLK),
        .Q(gtrxreset_nxt)

    );
   							    
always @ (posedge USER_CLK)
begin
  if(RESET)
    gtrxreset_extend_r  <= `DLY  8'd0; 
  else
    gtrxreset_extend_r  <= {gtrxreset_nxt,gtrxreset_extend_r[7:1]}; 
end

always @ (posedge USER_CLK)
    GTRXRESET_OUT  <= |gtrxreset_extend_r; 

    //___________________________Watchdog timers____________________________________

    always @ (posedge USER_CLK)
        if(RESET | RESET_CHANNEL)
            free_count_r <= `DLY {WATCHDOG_TIMEOUT{1'b1}};
        else
            free_count_r <= `DLY free_count_r - 1'b1;

    assign free_count_done_w = (free_count_r == 0);

    // We use the freerunning count as a CE for the verify watchdog.  The
    // count runs continuously so the watchdog will vary between a count of 4096
    // and 3840 cycles - acceptable for this application.
    always @ (posedge USER_CLK)
        if(free_count_done_w | !verify_r)
            verify_watchdog_r   <=  `DLY    {verify_r,verify_watchdog_r[0:14]};

    assign  verify_watchdog_done_r  =   verify_watchdog_r[15];


    //_____________________________Channel Bonding_______________________________

    // We don't use channel bonding for the single lane case, so we tie the
    // EN_CHAN_SYNC signal low.
    assign   EN_CHAN_SYNC    =   1'b0;



    //________________________________Verification__________________________


    // Vs need to appear on all lanes simultaneously.
    always @(posedge USER_CLK)
        all_lanes_v_r <=  `DLY  GOT_V;


    // Vs need to be decoded by the aurora lane and then checked by the
    // Global logic.  They must appear periodically.
    always @(posedge USER_CLK)
        if(!verify_r)                   got_first_v_r   <=  `DLY    1'b0;
        else if(all_lanes_v_r)          got_first_v_r   <=  `DLY    1'b1;


    assign  insert_ver_c    =   all_lanes_v_r & !got_first_v_r | (v_count_r[31] & verify_r);


    // Shift register for measuring the time between V counts.
    always @(posedge USER_CLK)
        v_count_r   <=  `DLY    {insert_ver_c,v_count_r[0:30]};


    // Assert bad_v_r if a V does not arrive when expected.
    always @(posedge USER_CLK)
        bad_v_r     <=  `DLY    (v_count_r[31] ^ all_lanes_v_r) & got_first_v_r;



    // Count the number of Ver sequences received.  You're done after you receive four.
    always @(posedge USER_CLK)
        if((v_count_r[31] & all_lanes_v_r) |!verify_r)
            rxver_count_r   <=  `DLY    {verify_r,rxver_count_r[0:1]};


    assign  rxver_3d_done_r     =   rxver_count_r[2];


    // Count the number of Ver sequences transmitted. You're done after you send eight.
    always @(posedge USER_CLK)
        if(DID_VER |!verify_r)
            txver_count_r   <=  `DLY    {verify_r,txver_count_r[0:6]};


    assign  txver_8d_done_r     =   txver_count_r[7];

endmodule
