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
//  TX_LL_CONTROL
//
//
//  Description: This module provides the transmitter state machine
//               control logic to connect the LocalLink interface to
//               the Aurora Channel.
//
//               This module supports 1 2-byte lane designs
//

`timescale 1 ns / 1 ps

module  aurora_8b10b_TX_LL_CONTROL
(
    // LocalLink PDU Interface
    TX_SRC_RDY_N,
    TX_SOF_N,
    TX_EOF_N,
    TX_REM,

    TX_DST_RDY_N,


    // Clock Compensation Interface
    WARN_CC,
    DO_CC,


    // Global Logic Interface
    CHANNEL_UP,


    // TX_LL Control Module Interface
    HALT_C,


    // Aurora Lane Interface
    GEN_SCP,
    GEN_ECP,
    GEN_CC,


    // System Interface
    USER_CLK

);

`define DLY #1


//***********************************Port Declarations*******************************


    // LocalLink PDU Interface
input              TX_SRC_RDY_N;
input              TX_SOF_N;
input              TX_EOF_N;
input              TX_REM;

output             TX_DST_RDY_N;




    // Clock Compensation Interface
input              WARN_CC;
input              DO_CC;


    // Global Logic Interface
input              CHANNEL_UP;

    // TX_LL Control Module Interface
output             HALT_C;

    // Aurora Lane Interface
output             GEN_SCP;
output             GEN_ECP;
output             GEN_CC;


    // System Interface
input              USER_CLK;



//**************************External Register Declarations****************************

reg                TX_DST_RDY_N;
reg                GEN_SCP;
reg                GEN_ECP;


//**************************Internal Register Declarations****************************

reg                do_cc_r;

reg                idle_r;
reg                sof_r;
reg                sof_data_eof_1_r;
reg                sof_data_eof_2_r;
reg                sof_data_eof_3_r;
reg                data_r;
reg                data_eof_1_r;
reg                data_eof_2_r;
reg                data_eof_3_r;





//*********************************Wire Declarations**********************************

wire               next_idle_c;
wire               next_sof_c;
wire               next_sof_data_eof_1_c;
wire               next_sof_data_eof_2_c;
wire               next_sof_data_eof_3_c;
wire               next_data_c;
wire               next_data_eof_1_c;
wire               next_data_eof_2_c;
wire               next_data_eof_3_c;



wire               tx_dst_rdy_n_c;
wire               do_sof_c;
wire               do_eof_c;
wire               channel_full_c;
wire               pdu_ok_c;
wire               reset_i;


//*********************************Main Body of Code**********************************

    assign reset_i   = ~CHANNEL_UP;

    //___________________________Clock Compensation________________________________


    // Register the DO_CC and WARN_CC signals for internal use.  Note that the raw DO_CC
    // signal is used for some logic so the DO_CC signal should be driven directly
    // from a register whenever possible.

    always @(posedge USER_CLK)
                       do_cc_r <=  `DLY    DO_CC;




    //_____________________________PDU State Machine__________________________________

    // The PDU state machine handles the encapsulation and transmission of user
    // PDUs.  It can use the channel when there is no CC, NFC message, UFC header,
    // UFC message or remote NFC request.





    // State Registers
    always @(posedge USER_CLK)
        if(!CHANNEL_UP)
        begin
            idle_r              <=  `DLY    1'b1;
            sof_r               <=  `DLY    1'b0;
            sof_data_eof_1_r    <=  `DLY    1'b0;
            sof_data_eof_2_r    <=  `DLY    1'b0;
            sof_data_eof_3_r    <=  `DLY    1'b0;
            data_r              <=  `DLY    1'b0;
            data_eof_1_r        <=  `DLY    1'b0;
            data_eof_2_r        <=  `DLY    1'b0;
            data_eof_3_r        <=  `DLY    1'b0;
        end
        else if(pdu_ok_c)
        begin
            idle_r              <=  `DLY    next_idle_c;
            sof_r               <=  `DLY    next_sof_c;
            sof_data_eof_1_r    <=  `DLY    next_sof_data_eof_1_c;
            sof_data_eof_2_r    <=  `DLY    next_sof_data_eof_2_c;
            sof_data_eof_3_r    <=  `DLY    next_sof_data_eof_3_c;
            data_r              <=  `DLY    next_data_c;
            data_eof_1_r        <=  `DLY    next_data_eof_1_c;
            data_eof_2_r        <=  `DLY    next_data_eof_2_c;
            data_eof_3_r        <=  `DLY    next_data_eof_3_c;
        end






    // Next State Logic
    assign  next_idle_c             =   (idle_r & !do_sof_c) |
                                        (sof_data_eof_3_r & !do_sof_c) |
                                        (data_eof_3_r & !do_sof_c );



    assign  next_sof_c              =   (idle_r & do_sof_c & !do_eof_c) |
                                        (sof_data_eof_3_r & do_sof_c & !do_eof_c) |
                                        (data_eof_3_r & do_sof_c & !do_eof_c);



    assign  next_data_c             =   (sof_r & !do_eof_c ) |
                                        (data_r & !do_eof_c);


    assign  next_data_eof_1_c       =   (sof_r & do_eof_c) |
                                        (data_r & do_eof_c);


    assign  next_data_eof_2_c       =   data_eof_1_r;


    assign  next_data_eof_3_c       =   data_eof_2_r;


    assign  next_sof_data_eof_1_c   =   (idle_r & do_sof_c & do_eof_c)|
                                        (sof_data_eof_3_r & do_sof_c & do_eof_c)|
                                        (data_eof_3_r & do_sof_c & do_eof_c);


    assign  next_sof_data_eof_2_c   =   sof_data_eof_1_r;


    assign  next_sof_data_eof_3_c   =   sof_data_eof_2_r;



    // Generate an SCP character when the PDU state machine is active and in an SOF state.
    always @(posedge USER_CLK)
        if(!CHANNEL_UP) GEN_SCP <=  `DLY    1'b0;
        else            GEN_SCP <=  `DLY    ((sof_r | sof_data_eof_1_r) & pdu_ok_c);


    // Generate an ECP character when the PDU state machine is active and in and EOF state.
    always @(posedge USER_CLK)
        if(!CHANNEL_UP) GEN_ECP <=  `DLY    1'b0;
        else            GEN_ECP <=  `DLY    (data_eof_3_r | sof_data_eof_3_r) & pdu_ok_c;



    assign  tx_dst_rdy_n_c  =   (next_sof_data_eof_1_c & pdu_ok_c) |
                                sof_data_eof_1_r |
                                (next_data_eof_1_c & pdu_ok_c) |
                                DO_CC  |
                                data_eof_1_r|
                                (data_eof_2_r && !pdu_ok_c) |
                                (sof_data_eof_2_r && !pdu_ok_c);














    // The flops for the GEN_CC signal are replicated for timing and instantiated to allow us
    // to set their value reliably on powerup.
    FDR gen_cc_flop_0_i
    (
        .D(do_cc_r),
        .C(USER_CLK),
        .R(reset_i),
        .Q(GEN_CC)
    );
















    // The TX_DST_RDY_N signal is registered.
    always @(posedge USER_CLK)
        if(!CHANNEL_UP)     TX_DST_RDY_N    <=  `DLY    1'b1;
        else                TX_DST_RDY_N    <=  `DLY    tx_dst_rdy_n_c;








    // Helper Logic
   
   
   
    // SOF requests are valid when TX_SRC_RDY_N, TX_DST_RDY_N and TX_SOF_N are all asserted
    assign  do_sof_c                =   !TX_SRC_RDY_N &
                                        !TX_DST_RDY_N &
                                        !TX_SOF_N;


    // EOF requests are valid when TX_SRC_RDY_N, TX_DST_RDY_N and TX_EOF_N are all asserted
    assign  do_eof_c                =   !TX_SRC_RDY_N &
                                        !TX_DST_RDY_N &
                                        !TX_EOF_N;
   
   
   
   
   
   



    // Freeze the PDU state machine when CCs must be handled.
    assign  pdu_ok_c                =   !do_cc_r;


    // Halt the flow of data through the datastream when the PDU state machine is frozen.
    assign  HALT_C                  =   !pdu_ok_c;






    // The aurora channel is 'full' if there is more than enough data to fit into
    // a channel that is already carrying an SCP and an ECP character.
    assign  channel_full_c          =   1'b1;

endmodule
