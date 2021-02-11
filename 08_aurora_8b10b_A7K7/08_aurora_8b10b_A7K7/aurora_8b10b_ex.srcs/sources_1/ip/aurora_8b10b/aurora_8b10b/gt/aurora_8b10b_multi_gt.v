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
////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
`define DLY #1

//***************************** Entity Declaration ****************************

(* core_generation_info = "aurora_8b10b,aurora_8b10b_v11_0_7,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ2,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=1,c_lane_width=2,c_line_rate=12500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}" *)
module aurora_8b10b_multi_gt #
(
    // Simulation attributes
    parameter   WRAPPER_SIM_GTRESET_SPEEDUP    = "FALSE"    // Set to "true" to speed up sim reset
)
(
    input           STABLE_CLOCK,         //Connect to System Clock 
    //_________________________________________________________________________
    //_________________________________________________________________________
    //GT0
    //____________________________CHANNEL PORTS________________________________
    output          gt0_drp_busy_out,
    //-------------- Channel - Dynamic Reconfiguration Port (DRP) --------------
    input   [8:0]   gt0_drpaddr_in,
    input           gt0_drpclk_in,
    input   [15:0]  gt0_drpdi_in,
    output  [15:0]  gt0_drpdo_out,
    input           gt0_drpen_in,
    output          gt0_drprdy_out,
    input           gt0_drpwe_in,
    //----------------------------- Eye Scan Ports -----------------------------
    input           gt0_eyescantrigger_in,
    output          gt0_eyescandataerror_out,
    //---------------------- Loopback and Powerdown Ports ----------------------
    input   [2:0]   gt0_loopback_in,
    input   [1:0]   gt0_rxpd_in,
    input   [1:0]   gt0_txpd_in,
    //----------------------------- Receive Ports ------------------------------
    input           gt0_eyescanreset_in,
    input           gt0_rxuserrdy_in,
    //----------------- Receive Ports - Pattern Checker Ports ------------------
    output          gt0_rxprbserr_out,
    input   [2:0]   gt0_rxprbssel_in,
    //----------------- Receive Ports - Pattern Checker ports ------------------
    input           gt0_rxprbscntreset_in,
    //--------------------- Receive Ports - 8b10b Decoder ----------------------
    output  [1:0]   gt0_rxchariscomma_out,
    output  [1:0]   gt0_rxcharisk_out,
    output  [1:0]   gt0_rxdisperr_out,
    output  [1:0]   gt0_rxnotintable_out,
    //----------------------- Receive Ports - AFE Ports ------------------------
    input           gt0_gtprxn_in,
    input           gt0_gtprxp_in,
    //----------------- Receive Ports - Clock Correction Ports -----------------
    output  [1:0]   gt0_rxclkcorcnt_out,
    //------------- Receive Ports - Comma Detection and Alignment --------------
    output          gt0_rxbyteisaligned_out,
    output          gt0_rxbyterealign_out,
    output          gt0_rxcommadet_out,
    input           gt0_rxmcommaalignen_in,
    input           gt0_rxpcommaalignen_in,
    //----------------- Receive Ports - RX Data Path interface -----------------
    input           gt0_gtrxreset_in,
    input           gt0_rxpcsreset_in,
    input           gt0_rxpmareset_in,
    input           gt0_rxlpmreset_in,
    output  [15:0]  gt0_rxdata_out,
    output          gt0_rxoutclk_out,
    input           gt0_rxusrclk_in,
    input           gt0_rxusrclk2_in,
    //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    output          gt0_rxcdrlock_out,
    input           gt0_rxlpmhfhold_in,
    input           gt0_rxlpmlfhold_in,
    input           gt0_rxlpmhfovrden_in,
    input           gt0_rxcdrhold_in,
    output  [14:0]  gt0_dmonitorout_out,
    //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
    input           gt0_rxbufreset_in,
    output  [2:0]   gt0_rxbufstatus_out,
    //---------------------- Receive Ports - RX PLL Ports ----------------------
    output          gt0_rxresetdone_out,
    output          gt0_rxpmaresetdone_out,
    //---------------------- TX Configurable Driver Ports ----------------------
    input   [4:0]   gt0_txpostcursor_in,
    input   [4:0]   gt0_txprecursor_in,
    //--------------- Receive Ports - RX Polarity Control Ports ----------------
    input           gt0_rxpolarity_in,
    //----------------------------- Transmit Ports -----------------------------
    input           gt0_txuserrdy_in,
    //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    input   [1:0]   gt0_txchardispmode_in,
    input   [1:0]   gt0_txchardispval_in,
    input   [1:0]   gt0_txcharisk_in,
    //---------- Transmit Ports - TX Buffer and Phase Alignment Ports ----------
    output  [1:0]   gt0_txbufstatus_out,
    //---------------- Transmit Ports - TX Data Path interface -----------------
    input           gt0_gttxreset_in,
    input   [15:0]  gt0_txdata_in,
    output          gt0_txoutclk_out,
    output          gt0_txoutclkfabric_out,
    output          gt0_txoutclkpcs_out,
    input           gt0_txusrclk_in,
    input           gt0_txusrclk2_in,
    //------------------- Transmit Ports - PCI Express Ports -------------------
    input           gt0_txelecidle_in,
    //---------------- Transmit Ports - Pattern Generator Ports ----------------
    input           gt0_txprbsforceerr_in,
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    output          gt0_gtptxn_out,
    output          gt0_gtptxp_out,
    input   [3:0]   gt0_txdiffctrl_in,
    input   [6:0]   gt0_txmaincursor_in,
    //--------------------- Transmit Ports - TX PLL Ports ----------------------
    input           gt0_txpcsreset_in,
    input           gt0_txinhibit_in,
    input           gt0_txpmareset_in,
    output          gt0_txresetdone_out,
    //---------------- Transmit Ports - pattern Generator Ports ----------------
    input   [2:0]   gt0_txprbssel_in,
    //--------------- Transmit Ports - TX Polarity Control Ports ---------------
    input           gt0_txpolarity_in,

    //____________________________COMMON PORTS_______________________________{
    //----------------------- Channel - Ref Clock Ports ------------------------
    input           gt0_pll0outclk_i,
    input           gt0_pll1outclk_i,
    input           gt0_pll0outrefclk_i,
    input           gt0_pll1outrefclk_i,
    input           gt0_pll0reset_in
    //____________________________COMMON PORTS_______________________________}

);

//********************************* Main Body of Code**************************


    wire            gt0_pll0clk_i;
    wire            gt0_pll0refclk_i;
    wire            gt0_pll1clk_i;
    wire            gt0_pll1refclk_i;
    wire            gt0_rst_i;
       


    assign  gt0_pll0clk_i    = gt0_pll0outclk_i;
    assign  gt0_pll0refclk_i = gt0_pll0outrefclk_i;
    assign  gt0_pll1clk_i    = gt0_pll1outclk_i;
    assign  gt0_pll1refclk_i = gt0_pll1outrefclk_i;
    assign  gt0_rst_i        = gt0_pll0reset_in;  
    
    
//------------------------- GT Instances  -------------------------------
    //_________________________________________________________________________
    //_________________________________________________________________________
    //GT0
    aurora_8b10b_gt #
    (
        // Simulation attributes
        .GT_SIM_GTRESET_SPEEDUP   (WRAPPER_SIM_GTRESET_SPEEDUP),
        .TXSYNC_OVRD_IN           (1'b0),
        .TXSYNC_MULTILANE_IN      (1'b0)
    )
    gt0_aurora_8b10b_i
    (
        .STABLE_CLOCK                   (STABLE_CLOCK),
        .rst_in                         (gt0_rst_i),
        .drp_busy_out                   (gt0_drp_busy_out),	    
      
        //-------------------------- Channel - DRP Ports  --------------------------
        .drpaddr_in                     (gt0_drpaddr_in),
        .drpclk_in                      (gt0_drpclk_in),
        .drpdi_in                       (gt0_drpdi_in),
        .drpdo_out                      (gt0_drpdo_out),
        .drpen_in                       (gt0_drpen_in),
        .drprdy_out                     (gt0_drprdy_out),
        .drpwe_in                       (gt0_drpwe_in),
        //----------------------------- Clocking Ports -----------------------------
        .pll0clk_in                     (gt0_pll0clk_i),
        .pll0refclk_in                  (gt0_pll0refclk_i),
        .pll1clk_in                     (gt0_pll1clk_i),
        .pll1refclk_in                  (gt0_pll1refclk_i),
        //---------------------- Loopback and Powerdown Ports ----------------------
        .loopback_in                    (gt0_loopback_in),
        .rxpd_in                        (gt0_rxpd_in),
        .txpd_in                        (gt0_txpd_in),
        //----------------------------- Receive Ports ------------------------------
        .eyescanreset_in                (gt0_eyescanreset_in),
        .rxuserrdy_in                   (gt0_rxuserrdy_in),
        //----------------- Receive Ports - Pattern Checker Ports ------------------
        .rxprbserr_out                  (gt0_rxprbserr_out),
        .rxprbssel_in                   (gt0_rxprbssel_in),
        //----------------- Receive Ports - Pattern Checker ports ------------------
        .rxprbscntreset_in              (gt0_rxprbscntreset_in),
        //------------------------ RX Margin Analysis Ports ------------------------
        .eyescandataerror_out           (gt0_eyescandataerror_out),
        .eyescantrigger_in              (gt0_eyescantrigger_in),
        //--------------------- Receive Ports - 8b10b Decoder ----------------------
        .rxchariscomma_out              (gt0_rxchariscomma_out),
        .rxcharisk_out                  (gt0_rxcharisk_out),
        .rxdisperr_out                  (gt0_rxdisperr_out),
        .rxnotintable_out               (gt0_rxnotintable_out),
        //----------------------- Receive Ports - AFE Ports ------------------------
        .gtprxn_in                      (gt0_gtprxn_in),
        .gtprxp_in                      (gt0_gtprxp_in),
        //----------------- Receive Ports - Clock Correction Ports -----------------
        .rxclkcorcnt_out                (gt0_rxclkcorcnt_out),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .rxbyteisaligned_out            (gt0_rxbyteisaligned_out),
        .rxbyterealign_out              (gt0_rxbyterealign_out),
        .rxcommadet_out                 (gt0_rxcommadet_out),
        .rxmcommaalignen_in             (gt0_rxmcommaalignen_in),
        .rxpcommaalignen_in             (gt0_rxpcommaalignen_in),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .gtrxreset_in                   (gt0_gtrxreset_in),
        .rxpcsreset_in                  (gt0_rxpcsreset_in),
        .rxpmareset_in                  (gt0_rxpmareset_in),
        .rxlpmreset_in                  (gt0_rxlpmreset_in),
        .rxdata_out                     (gt0_rxdata_out),
        .rxoutclk_out                   (gt0_rxoutclk_out),
        .rxusrclk_in                    (gt0_rxusrclk_in),
        .rxusrclk2_in                   (gt0_rxusrclk2_in),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .rxcdrlock_out                  (gt0_rxcdrlock_out),
        .rxlpmhfhold_in                 (gt0_rxlpmhfhold_in),
        .rxlpmlfhold_in                 (gt0_rxlpmlfhold_in),
        .rxlpmhfovrden_in               (gt0_rxlpmhfovrden_in),
        .rxcdrhold_in                   (gt0_rxcdrhold_in),
        .dmonitorout_out                (gt0_dmonitorout_out),
        //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
        .rxbufreset_in                  (gt0_rxbufreset_in),
        .rxbufstatus_out                (gt0_rxbufstatus_out),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .rxresetdone_out                (gt0_rxresetdone_out),
        .rxpmaresetdone_out             (gt0_rxpmaresetdone_out),
        //---------------------- TX Configurable Driver Ports ----------------------
        .txpostcursor_in                (gt0_txpostcursor_in),
        .txprecursor_in                 (gt0_txprecursor_in),
        //--------------- Receive Ports - RX Polarity Control Ports ----------------
        .rxpolarity_in                  (gt0_rxpolarity_in),
        //----------------------------- Transmit Ports -----------------------------
        .txuserrdy_in                   (gt0_txuserrdy_in),
        //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        .txchardispmode_in              (gt0_txchardispmode_in),
        .txchardispval_in               (gt0_txchardispval_in),
        .txcharisk_in                   (gt0_txcharisk_in),
        //---------- Transmit Ports - TX Buffer and Phase Alignment Ports ----------
        .txbufstatus_out                (gt0_txbufstatus_out),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .gttxreset_in                   (gt0_gttxreset_in),
        .txdata_in                      (gt0_txdata_in),
        .txoutclk_out                   (gt0_txoutclk_out),
        .txoutclkfabric_out             (gt0_txoutclkfabric_out),
        .txoutclkpcs_out                (gt0_txoutclkpcs_out),
        .txusrclk_in                    (gt0_txusrclk_in),
        .txusrclk2_in                   (gt0_txusrclk2_in),
        //------------------- Transmit Ports - PCI Express Ports -------------------
        .txelecidle_in                  (gt0_txelecidle_in),
        //---------------- Transmit Ports - Pattern Generator Ports ----------------
        .txprbsforceerr_in              (gt0_txprbsforceerr_in),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .gtptxn_out                     (gt0_gtptxn_out),
        .gtptxp_out                     (gt0_gtptxp_out),
        .txdiffctrl_in                  (gt0_txdiffctrl_in),
        .txmaincursor_in                (gt0_txmaincursor_in),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .txpcsreset_in                  (gt0_txpcsreset_in),
        .txinhibit_in                   (gt0_txinhibit_in),
        .txpmareset_in                  (gt0_txpmareset_in),
        .txresetdone_out                (gt0_txresetdone_out),
        //---------------- Transmit Ports - pattern Generator Ports ----------------
        .txprbssel_in                   (gt0_txprbssel_in),
        //--------------- Transmit Ports - TX Polarity Control Ports ---------------
        .txpolarity_in                  (gt0_txpolarity_in)

    );



endmodule
