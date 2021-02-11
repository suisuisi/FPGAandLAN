///////////////////////////////////////////////////////////////////////////////
// (c) Copyright 2013 Xilinx, Inc. All rights reserved.
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
`define DLY #1

//***************************** Entity Declaration ****************************

(* core_generation_info = "aurora_8b10b,aurora_8b10b_v11_0_7,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ2,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=1,c_lane_width=2,c_line_rate=12500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}" *)
module aurora_8b10b_gt_common_wrapper
(
    //-------------------------- Common Block - Ports --------------------------
    input           gt0_gtrefclk0_in,
    output          gt0_pll0lock_out,
    output          gt0_pll1lock_out,
    input           gt0_pll0lockdetclk_in,
    output          gt0_pll0refclklost_out,

    //____________________________COMMON PORTS_______________________________{
    output           gt0_pll0outclk_i,
    output           gt0_pll1outclk_i,
    output           gt0_pll0outrefclk_i,
    output           gt0_pll1outrefclk_i,
    input            gt0_pll0reset_in

    //____________________________COMMON PORTS_______________________________}
);
    // Simulation attributes
    parameter   WRAPPER_SIM_GTRESET_SPEEDUP    = "FALSE" ;   // Set to "TRUE" to speed up sim reset
//***************************** Parameter Declarations ************************
    parameter PLL0_FBDIV_IN      = 4;
    parameter PLL1_FBDIV_IN      = 4;
    parameter PLL0_FBDIV_45_IN   = 5;
    parameter PLL1_FBDIV_45_IN   = 5;
    parameter PLL0_REFCLK_DIV_IN = 1;
    parameter PLL1_REFCLK_DIV_IN = 1;


//***************************** Wire Declarations *****************************

    // ground and vcc signals
    wire            tied_to_ground_i;
    wire    [63:0]  tied_to_ground_vec_i;
    wire            tied_to_vcc_i;
    wire    [63:0]  tied_to_vcc_vec_i;

//********************************* Main Body of Code**************************

    assign tied_to_ground_i             = 1'b0;
    assign tied_to_ground_vec_i         = 64'h0000000000000000;
    assign tied_to_vcc_i                = 1'b1;
    assign tied_to_vcc_vec_i            = 64'hffffffffffffffff;




(* equivalent_register_removal="no" *) reg [95:0]   cpllpd_quad0_wait    =  96'hFFFFFFFFFFFFFFFFFFFFFFFF;
(* equivalent_register_removal="no" *) reg [127:0]  cpllreset_quad0_wait = 128'h000000000000000000000000000000FF;
  wire    cpllpd_ovrd_quad0_i ;
  wire    cpllreset_ovrd_quad0_i ;

  always @(posedge gt0_gtrefclk0_in)
  begin
      cpllpd_quad0_wait <= {cpllpd_quad0_wait[94:0], 1'b0};
      cpllreset_quad0_wait <= {cpllreset_quad0_wait[126:0], 1'b0};
  end
  
  assign cpllpd_ovrd_quad0_i = cpllpd_quad0_wait[95];
  assign cpllreset_ovrd_quad0_i = cpllreset_quad0_wait[127];



    //_________________________________________________________________________
    //_________________________________________________________________________
    //_________________________GTPE2_COMMON____________________________________

    GTPE2_COMMON #
    (
            // Simulation attributes
            .SIM_RESET_SPEEDUP   (WRAPPER_SIM_GTRESET_SPEEDUP),
            .SIM_PLL0REFCLK_SEL  (3'b001),
            .SIM_PLL1REFCLK_SEL  (3'b001),
            .SIM_VERSION         ("2.0"),

            .PLL0_FBDIV          (PLL0_FBDIV_IN     ),	
            .PLL0_FBDIV_45       (PLL0_FBDIV_45_IN  ),	
            .PLL0_REFCLK_DIV     (PLL0_REFCLK_DIV_IN),	
            .PLL1_FBDIV          (PLL1_FBDIV_IN     ),	
            .PLL1_FBDIV_45       (PLL1_FBDIV_45_IN  ),	
            .PLL1_REFCLK_DIV     (PLL1_REFCLK_DIV_IN),	     

           //----------------COMMON BLOCK Attributes---------------
            .BIAS_CFG                               (64'h0000000000050001),
            .COMMON_CFG                             (32'h00000000),

           //--------------------------PLL Attributes----------------------------
            .PLL0_CFG                               (27'h01F03DC),
            .PLL0_DMON_CFG                          (1'b0),
            .PLL0_INIT_CFG                          (24'h00001E),
            .PLL0_LOCK_CFG                          (9'h1E8),
            .PLL1_CFG                               (27'h01F03DC),
            .PLL1_DMON_CFG                          (1'b0),
            .PLL1_INIT_CFG                          (24'h00001E),
            .PLL1_LOCK_CFG                          (9'h1E8),
            .PLL_CLKOUT_CFG                         (8'h00),

           //--------------------------Reserved Attributes----------------------------
            .RSVD_ATTR0                             (16'h0000),
            .RSVD_ATTR1                             (16'h0000)

    )
    gtpe2_common_0_i
    (
	     .DMONITOROUT                    (),	
        //----------- Common Block  - Dynamic Reconfiguration Port (DRP) -----------
        .DRPADDR                        (tied_to_ground_vec_i[7:0]),
        .DRPCLK                         (tied_to_ground_i),
        .DRPDI                          (tied_to_ground_vec_i[15:0]),
        .DRPDO                          (),
        .DRPEN                          (tied_to_ground_i),
        .DRPRDY                         (),
        .DRPWE                          (tied_to_ground_i),
        //-------------------------- Common Block - Ports --------------------------
        .BGRCALOVRDENB                  (tied_to_vcc_i),
        .GTEASTREFCLK0                  (tied_to_ground_i),
        .GTEASTREFCLK1                  (tied_to_ground_i),
        .GTGREFCLK0                     (tied_to_ground_i),
        .GTGREFCLK1                     (tied_to_ground_i),
        .GTREFCLK0                      (gt0_gtrefclk0_in),
        .GTREFCLK1                      (tied_to_ground_i),
        .GTWESTREFCLK0                  (tied_to_ground_i),
        .GTWESTREFCLK1                  (tied_to_ground_i),
        .PLL0FBCLKLOST                  (),
        .PLL0LOCK                       (gt0_pll0lock_out),
        .PLL0LOCKDETCLK                 (gt0_pll0lockdetclk_in),
        .PLL0LOCKEN                     (tied_to_vcc_i),
        .PLL0OUTCLK                     (gt0_pll0outclk_i),
        .PLL0OUTREFCLK                  (gt0_pll0outrefclk_i),
        .PLL0PD                         (cpllpd_ovrd_quad0_i),
        .PLL0REFCLKLOST                 (gt0_pll0refclklost_out),
        .PLL0REFCLKSEL                  (3'b001),
        .PLL0RESET                      (cpllreset_ovrd_quad0_i | gt0_pll0reset_in),
        .PLL1FBCLKLOST                  (),
        .PLL1LOCK                       (gt0_pll1lock_out),
        .PLL1LOCKDETCLK                 (tied_to_ground_i),
        .PLL1LOCKEN                     (tied_to_vcc_i),
        .PLL1OUTCLK                     (gt0_pll1outclk_i),
        .PLL1OUTREFCLK                  (gt0_pll1outrefclk_i),
        .PLL1PD                         (1'b1),
        .PLL1REFCLKLOST                 (),
        .PLL1REFCLKSEL                  (3'b001),
        .PLL1RESET                      (cpllreset_ovrd_quad0_i),
        .PLLRSVD1                       (16'b0000000000000000),
        .PLLRSVD2                       (5'b00000),
        .PMARSVDOUT                     (),
        .REFCLKOUTMONITOR0              (),
        .REFCLKOUTMONITOR1              (),
        //--------------------------- Common Block Ports ---------------------------
        .BGBYPASSB                      (tied_to_vcc_i),
        .BGMONITORENB                   (tied_to_vcc_i),
        .BGPDB                          (tied_to_vcc_i),
        .BGRCALOVRD                     (5'b11111),
        .PMARSVD                        (8'b00000000),
        .RCALENB                        (tied_to_vcc_i)

    );

endmodule
 
