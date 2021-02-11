 
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
//  AURORA RESET LOGIC
//
//
//
//  Description: RESET logic generation using Debouncer
//
//        
`timescale 1 ns / 1 ps
(* core_generation_info = "aurora_8b10b,aurora_8b10b_v11_0_7,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ2,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=1,c_lane_width=2,c_line_rate=12500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}" *)
(* DowngradeIPIdentifiedWarnings="yes" *)
module aurora_8b10b_SUPPORT_RESET_LOGIC
(
    // User IO
    RESET,
    USER_CLK, 
    INIT_CLK_IN,
    GT_RESET_IN,
    SYSTEM_RESET,
    GT_RESET_OUT
);

`define DLY #1
//***********************************Port Declarations*******************************
    // User I/O
input              RESET;
input              USER_CLK;
input              INIT_CLK_IN;
input              GT_RESET_IN;
output             SYSTEM_RESET;
output             GT_RESET_OUT;

//**************************Internal Register Declarations****************************
(* ASYNC_REG = "true" *) (* shift_extract = "{no}" *) reg     [0:3]      debounce_gt_rst_r = 4'd0;
reg     [0:3]      reset_debounce_r = 4'd0;
reg                reset_debounce_r2 = 1'b1;
reg                gt_rst_r; 

//********************************Wire Declarations**********************************
wire    gt_rst_sync;      

wire               SYSTEM_RESET;

//*********************************Main Body of Code**********************************

//Reset sync from INIT_CLK to USER_CLK
      aurora_8b10b_cdc_sync
        #(
           .c_cdc_type      (1             ),   
           .c_flop_input    (1             ),  
           .c_reset_state   (0             ),  
           .c_single_bit    (1             ),  
           .c_vector_width  (2             ),  
           .c_mtbf_stages   (3              )  
         )gt_rst_r_cdc_sync 
         (
           .prmry_aclk      (INIT_CLK_IN         ),
           .prmry_rst_n     (1'b1                ),
           .prmry_in        (gt_rst_r            ),
           .prmry_vect_in   (2'd0                ),
           .scndry_aclk     (USER_CLK            ),
           .scndry_rst_n    (1'b1                ),
           .prmry_ack       (                    ),
           .scndry_out      (gt_rst_sync         ),
           .scndry_vect_out (                    ) 
          );


//_________________Debounce the Reset and PMA init signal___________________________
// Simple Debouncer for Reset button. The debouncer has an
// asynchronous reset tied to GT_RESET_IN. This is primarily for simulation, to ensure
// that unknown values are not driven into the reset line

    always @(posedge USER_CLK or posedge gt_rst_sync)
        if(gt_rst_sync)
            reset_debounce_r    <=  4'b1111;   
        else
            reset_debounce_r    <=  {RESET,reset_debounce_r[0:2]};

    always @ (posedge USER_CLK)
      reset_debounce_r2 <= &reset_debounce_r;

    assign SYSTEM_RESET = reset_debounce_r2;

    // Debounce the GT_RESET_IN signal using the INIT_CLK
    always @(posedge INIT_CLK_IN)
        debounce_gt_rst_r <=  {GT_RESET_IN,debounce_gt_rst_r[0:2]};

    always @(posedge INIT_CLK_IN)
        gt_rst_r        <=   &debounce_gt_rst_r;

    assign  GT_RESET_OUT    =   gt_rst_r;

endmodule
