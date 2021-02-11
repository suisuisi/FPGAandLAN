///////////////////////////////////////////////////////////////////////////////
// (c) Copyright 2011 Xilinx, Inc. All rights reserved.
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
////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
(* core_generation_info = "aurora_8b10b,aurora_8b10b_v11_0_7,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ2,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=1,c_lane_width=2,c_line_rate=12500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}" *)
(* DowngradeIPIdentifiedWarnings="yes" *)
module aurora_8b10b_hotplug #
(
   parameter ENABLE_HOTPLUG  =  1,
   parameter   EXAMPLE_SIMULATION =   0      
)
(
    // Sym Dec Interface
    input           RX_CC,
    input           RX_SP,
    input           RX_SPA,

    // GT Wrapper Interface
    output          LINK_RESET_OUT,
    input          HPCNT_RESET,

    // System Interface
    input           INIT_CLK,
    input           USER_CLK,
    input           RESET
);

`define DLY #1

       
//***************************** Reg Declarations *****************************

 reg                link_reset_0;
 reg                link_reset_1;
 reg   [1:0]        link_reset_r;
 reg    [21:0]      count_for_reset_r;

 reg   [7:0]        rx_cc_extend_r =  8'd0;
 reg                rx_cc_extend_r2;  
 wire               cc_sync;


//********************************* Main Body of Code**************************
                      
    initial
	    count_for_reset_r = 22'd0;

//Extend the RX_CC pulse for 8 clock cycles
//This RX_CC extension is required when INIT_CLK is slower than USER_CLK

always @ (posedge USER_CLK)
begin
  if(RESET)
    rx_cc_extend_r  <= `DLY  8'd0; 
  else
    rx_cc_extend_r  <= {RX_CC,rx_cc_extend_r[7:1]}; 
end

always @ (posedge USER_CLK)
    rx_cc_extend_r2  <= |rx_cc_extend_r; 

      // Clock domain crossing from USER_CLK to INIT_CLK
      aurora_8b10b_cdc_sync
        #(
           .c_cdc_type      (1             ),   
           .c_flop_input    (1             ),  
           .c_reset_state   (0             ),  
           .c_single_bit    (1             ),  
           .c_vector_width  (2             ),  
           .c_mtbf_stages   (3              )  
         )rx_cc_cdc_sync 
         (
           .prmry_aclk      (USER_CLK            ),
           .prmry_rst_n     (1'b1                ),
           .prmry_in        (rx_cc_extend_r2     ),
           .prmry_vect_in   (2'd0                ),
           .scndry_aclk     (INIT_CLK            ),
           .scndry_rst_n    (1'b1                ),
           .prmry_ack       (                    ),
           .scndry_out      (cc_sync             ),
           .scndry_vect_out (                    ) 
          );

    // Incoming control characters are decoded to detmine CC reception
    // Reset the link if CC is not detected for longer time
    // Wait for sufficient time to allow the link recovery and CC consumption
    // link_reset_0 is used to reset the GT & Aurora core

    // RX_CC is used as the reset for the count_for_reset_r
generate
if (EXAMPLE_SIMULATION == 0) 
begin
    always @(posedge INIT_CLK)
    begin
       if(cc_sync)
	    count_for_reset_r <= `DLY 22'h0;
       else
       count_for_reset_r <= `DLY count_for_reset_r + 1'b1;
    end  
end
else
begin
    always @(posedge INIT_CLK)
    begin
       if(cc_sync)
	    count_for_reset_r <= `DLY 22'h0;
       else
       begin
         if (count_for_reset_r == 20'hFFFFF) 
	         count_for_reset_r <= `DLY 22'h0;
 
         else
            count_for_reset_r <= `DLY count_for_reset_r + 1'b1;
       end
    end  
end
endgenerate

generate
if (EXAMPLE_SIMULATION == 0) 
begin
      always @(posedge INIT_CLK)
      begin
        link_reset_0 <= `DLY ( (count_for_reset_r > 22'd4194283) & (count_for_reset_r < 22'd4194303) ) ? 1'b1 : 1'b0;
      end
end 
else 
begin
      // Wait for sufficient time : 2^20 = 1048576 only for simulation
      always @(posedge INIT_CLK)
      begin
        link_reset_0 <= `DLY ( (count_for_reset_r > 20'd1045575) & (count_for_reset_r < 20'd1048570) ) ? 1'b1 : 1'b0;
      end
end
endgenerate

      always @(posedge INIT_CLK)
      begin
        link_reset_r <= `DLY link_reset_0 ;
      end

generate
  if(ENABLE_HOTPLUG == 1)
    begin
      assign LINK_RESET_OUT = link_reset_r;
    end
  else
    begin
      assign LINK_RESET_OUT = 1'b0;
    end
endgenerate
endmodule
