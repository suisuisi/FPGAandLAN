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
//  STANDARD CC MODULE
//
//
//  Description: This module drives the Aurora module's Clock Compensation
//               interface. Clock Compensation sequences are generated according
//               to the requirements in the Aurora Protocol specification.
//                 
//               This module supports Aurora Modules with any number of
//               2-byte lanes and no User Flow Control.
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps
(* core_generation_info = "aurora_8b10b,aurora_8b10b_v11_0_7,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ2,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=1,c_lane_width=2,c_line_rate=12500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}" *)
module aurora_8b10b_STANDARD_CC_MODULE #
(
     parameter CC_FREQ_FACTOR = 5'd24
)
(
    RESET,
    //Clock Compensation Control Interface
    WARN_CC,
    DO_CC,
   
    //System Interface
    PLL_NOT_LOCKED,
    USER_CLK

);

`define DLY #1

//***********************************Port Declarations*******************************

    //Clock Compensation Control Interface
    output      WARN_CC;
    output      DO_CC;
   
    //System Interface
    input       PLL_NOT_LOCKED;
    input       USER_CLK;
    input       RESET;
   
//**************************** External Register Declarations*************************

    reg             WARN_CC;
    reg             DO_CC;

//************************** Internal Register Declarations **************************

    reg     [0:9]   prepare_count_r;
    reg     [0:5]   cc_count_r;
    reg             reset_r;
   
    reg     [0:11]  count_13d_srl_r;
    reg             count_13d_flop_r;
    reg     [0:14]  count_16d_srl_r;
    reg             count_16d_flop_r;

    reg     [0:CC_FREQ_FACTOR - 2]  count_24d_srl_r;
    reg                             count_24d_flop_r;   

//*********************************Wire Declarations**********************************
    wire    enable_cc_c;

    wire    start_cc_c;
    wire    inner_count_done_r;
    wire    middle_count_done_c;
    wire    cc_idle_count_done_c;
  
//*********************************Main Body of Code**********************************

 //________________________Clock Correction State Machine__________________________
    assign enable_cc_c = !RESET;

    // The clock correction state machine is a counter with three sections.  The first
    // section counts out the idle period before a clock correction occurs.  The second
    // section counts out a period when NFC and UFC operations should not be attempted
    // because they will not be completed.  The last section counts out the cycles of
    // the clock correction sequence.

    // The inner count for the CC counter counts to 13.  It is implemented using
    // an SRL16 and a flop

    // The SRL counts 12 bits of the count   
    always @(posedge USER_CLK)
       if(RESET)
        count_13d_srl_r     <=  `DLY    12'b000000000000;
       else
        count_13d_srl_r     <=  `DLY    {count_13d_flop_r, count_13d_srl_r[0:10]};
       
    // The inner count is done when a 1 reaches the end of the SRL
    assign  inner_count_done_r  =  count_13d_srl_r[11];

    // The flop extends the shift register to 13 bits for counting. It is held at
    // zero while channel up is low to clear the register, and is seeded with a
    // single 1 when channel up transitions from 0 to 1
    always @(posedge USER_CLK)
        if(RESET)
            count_13d_flop_r    <=  `DLY    1'b0;
        else if(enable_cc_c && reset_r)
            count_13d_flop_r    <=  `DLY    1'b1;
        else
            count_13d_flop_r    <=  `DLY    inner_count_done_r;

    // The middle count for the CC counter counts to 16.  Its count increments only
    // when the inner count is done.  It is implemented using an SRL16 and a flop
   
    // The SRL counts 15 bits of the count. It is enabled only when the inner count
    // is done
    always @(posedge USER_CLK)
        if(RESET)
            count_16d_srl_r     <=  `DLY    15'b000000000000000;
        else if(inner_count_done_r|| !enable_cc_c)
            count_16d_srl_r     <=  `DLY    {count_16d_flop_r, count_16d_srl_r[0:13]};
           
    // The middle count is done when a 1 reaches the end of the SRL and the inner
    // count finishes
    assign  middle_count_done_c =   inner_count_done_r && count_16d_srl_r[14];    

    // The flop extends the shift register to 16 bits for counting. It is held at
    // zero while channel up is low to clear the register, and is seeded with a
    // single 1 when channel up transitions from 0 to 1
    always @(posedge USER_CLK)
        if(RESET)
            count_16d_flop_r    <=  `DLY    1'b0;
        else if(enable_cc_c && reset_r)
            count_16d_flop_r    <=  `DLY    1'b1;
        else if(inner_count_done_r)   
            count_16d_flop_r    <=  `DLY    middle_count_done_c;

    // The outer count (aka the cc idle count) is done when it reaches 24.  Its count
    // increments only when the middle count is done.  It is implemented with 2 SRL16s
    // and a flop
   
    // The SRL counts 23 bits of the count. It is enabled only when the middle count is
    // done
    always @(posedge USER_CLK)
        if(RESET)
            count_24d_srl_r     <=  `DLY   {CC_FREQ_FACTOR {1'b0}};
        else if(middle_count_done_c || !enable_cc_c)
            count_24d_srl_r     <=  `DLY   {count_24d_flop_r, count_24d_srl_r[0:CC_FREQ_FACTOR - 3]};
           
    // The cc idle count is done when a 1 reaches the end of the SRL and the middle count finishes
    assign  cc_idle_count_done_c    =   middle_count_done_c & count_24d_srl_r[CC_FREQ_FACTOR - 2];
   
    // The flop extends the shift register to 24 bits for counting. It is held at
    // zero while channel up is low to clear the register, and is seeded with a single
    // 1 when channel up transitions from 0 to 1
    always @(posedge USER_CLK)
        if(RESET)
            count_24d_flop_r    <=  `DLY    1'b0;
        else if(enable_cc_c && reset_r)
            count_24d_flop_r    <=  `DLY    1'b1;
        else if(middle_count_done_c)
            count_24d_flop_r    <=  `DLY    cc_idle_count_done_c;  
           
   
    // For simulation, initialize prepare count to all zeros to simulate an SRL16
    // after configuration. The circuit will also work is the init value includes
    // ones.
    initial
        prepare_count_r = 10'b0000000000;

     // Because UFC and CC sequences are not allowed to preempt one another, there
     // there is a warning signal to indicate an impending CC sequence.  This signal
     // is used to prevent UFC messages from starting.
     // For 1 lane, we need an 10-cycle count.
     always @(posedge USER_CLK)
        if(RESET)
         prepare_count_r <=  `DLY    10'b0000000000;
        else
         prepare_count_r <=  `DLY    {cc_idle_count_done_c,prepare_count_r[0:8]};


    // The state machine stays in the prepare_cc state from when the cc idle
    // count finishes, to when the prepare count has finished.  While in this
    // state, UFC operations cannot start, which prevents them from having to
    // be pre-empted by CC sequences.
    always @(posedge USER_CLK)
         if(RESET)                                  WARN_CC    <=  `DLY    1'b0;
         else if(cc_idle_count_done_c)              WARN_CC    <=  `DLY    1'b1;
         else if(prepare_count_r[9])                WARN_CC    <=  `DLY    1'b0;

    // For simulation, init to zeros, to simulate an SRL after configuration. The circuit
    // will also operate if the SRL is not initialized to all zeros
    initial
         cc_count_r = 6'b000000;

    // Track the state of channel up on the previous cycle. We use this signal to determine
    // when to seed the shift register counters with ones
    always @(posedge USER_CLK)
        reset_r <=  `DLY    RESET;

    //Do a CC after enable_cc_c is asserted or CC_warning is complete.
    assign start_cc_c   =   prepare_count_r[9] || (enable_cc_c && reset_r);

     // This SRL counter keeps track of the number of cycles spent in the CC
     // sequence.  It starts counting when the prepare_cc state ends, and
     // finishes counting after 6 cycles have passed.
     always @(posedge USER_CLK)
       if(RESET)
         cc_count_r      <=  `DLY   6'b000000;
       else
         cc_count_r      <=  `DLY    {(!enable_cc_c|prepare_count_r[9]),cc_count_r[0:4]};
       
     // The TX_LL module stays in the do_cc state for 6 cycles.  It starts
     // when the prepare_cc state ends.
     always @(posedge USER_CLK)
         if(RESET)                       DO_CC <=  `DLY    1'b0;
         else if(start_cc_c)             DO_CC <=  `DLY    1'b1;
         else if(cc_count_r)             DO_CC <=  `DLY    1'b1;        
         else                            DO_CC <=  `DLY    1'b0;        
        

endmodule
