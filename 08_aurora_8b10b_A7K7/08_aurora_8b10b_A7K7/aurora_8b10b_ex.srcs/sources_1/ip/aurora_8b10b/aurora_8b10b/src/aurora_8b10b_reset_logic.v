 
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
module aurora_8b10b_RESET_LOGIC
(
    // User IO
    RESET,
    USER_CLK,
    INIT_CLK_IN,
    TX_LOCK_IN,
    PLL_NOT_LOCKED,
    LINK_RESET_IN,
    TX_RESETDONE_IN,
    RX_RESETDONE_IN,
    SYSTEM_RESET
);

`define DLY #1
//***********************************Port Declarations*******************************
    // User I/O
input              RESET;
input              USER_CLK;
input              INIT_CLK_IN;
input              TX_LOCK_IN;
input              PLL_NOT_LOCKED;
input              LINK_RESET_IN;
input              TX_RESETDONE_IN;
input              RX_RESETDONE_IN;
output             SYSTEM_RESET;

//**************************Internal Register Declarations****************************
reg                gt_rxresetdone_r;
reg                gt_rxresetdone_r2;
reg                gt_rxresetdone_r3;
reg                gt_txresetdone_r;
reg                gt_txresetdone_r2;
reg                gt_txresetdone_r3;
wire               tx_resetdone_sync; 
reg                link_reset_comb_r; 
reg                tx_lock_comb_r; 
wire               link_reset_sync; 

//********************************Wire Declarations**********************************
wire    tx_lock_sync;

reg               SYSTEM_RESET;

//*********************************Main Body of Code**********************************

    always @(posedge USER_CLK or negedge RX_RESETDONE_IN)

    begin
        if (!RX_RESETDONE_IN)
        begin
            gt_rxresetdone_r    <=   `DLY 1'b0;
            gt_rxresetdone_r2   <=   `DLY 1'b0;
        end
        else
        begin
            gt_rxresetdone_r    <=   `DLY RX_RESETDONE_IN;
            gt_rxresetdone_r2   <=   `DLY gt_rxresetdone_r;
        end
    end

    always @(posedge USER_CLK)
            gt_rxresetdone_r3   <=   `DLY gt_rxresetdone_r2;


    assign tx_resetdone_sync = TX_RESETDONE_IN;

    always @(posedge USER_CLK or negedge tx_resetdone_sync)
    begin
        if (!tx_resetdone_sync)
        begin
            gt_txresetdone_r    <=   `DLY 1'b0;
            gt_txresetdone_r2   <=   `DLY 1'b0;
        end
        else
        begin
            gt_txresetdone_r    <=   `DLY tx_resetdone_sync;
            gt_txresetdone_r2   <=   `DLY gt_txresetdone_r;
        end
    end

    //FF for slack violations fix
    always @(posedge USER_CLK)
            gt_txresetdone_r3   <=   `DLY gt_txresetdone_r2;


    //This flop will pipeline wide-OR in case of multi-lane
    always @(posedge INIT_CLK_IN)
            link_reset_comb_r   <=   `DLY LINK_RESET_IN;

      aurora_8b10b_cdc_sync
        #(
           .c_cdc_type      (1             ),   
           .c_flop_input    (1             ),  
           .c_reset_state   (0             ),  
           .c_single_bit    (1             ),  
           .c_vector_width  (2             ),  
           .c_mtbf_stages   (3              )  
         )link_reset_cdc_sync 
         (
           .prmry_aclk      (INIT_CLK_IN         ),
           .prmry_rst_n     (1'b1                ),
           .prmry_in        (link_reset_comb_r   ),
           .prmry_vect_in   (2'd0                ),
           .scndry_aclk     (USER_CLK            ),
           .scndry_rst_n    (1'b1                ),
           .prmry_ack       (                    ),
           .scndry_out      (link_reset_sync     ),
           .scndry_vect_out (                    ) 
          );

	  


    //This flop will pipeline wide-OR in case of multi-lane
    always @(posedge INIT_CLK_IN)
            tx_lock_comb_r   <=   `DLY TX_LOCK_IN;

      aurora_8b10b_cdc_sync
        #(
           .c_cdc_type      (1             ),   
           .c_flop_input    (1             ),  
           .c_reset_state   (0             ),  
           .c_single_bit    (1             ),  
           .c_vector_width  (2             ),  
           .c_mtbf_stages   (3              )  
         )tx_lock_cdc_sync 
         (
           .prmry_aclk      (INIT_CLK_IN         ),
           .prmry_rst_n     (1'b1                ),
           .prmry_in        (tx_lock_comb_r      ),
           .prmry_vect_in   (2'd0                ),
           .scndry_aclk     (USER_CLK            ),
           .scndry_rst_n    (1'b1                ),
           .prmry_ack       (                    ),
           .scndry_out      (tx_lock_sync        ),
           .scndry_vect_out (                    ) 
          );

always @ (posedge USER_CLK)
begin
    SYSTEM_RESET <= RESET || !gt_txresetdone_r3 || !gt_rxresetdone_r3 || link_reset_sync || !tx_lock_sync;
end

endmodule
