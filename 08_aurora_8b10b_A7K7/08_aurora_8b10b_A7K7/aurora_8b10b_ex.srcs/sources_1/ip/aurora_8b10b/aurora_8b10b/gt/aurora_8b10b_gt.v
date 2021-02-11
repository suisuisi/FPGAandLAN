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
(* core_generation_info = "aurora_8b10b,aurora_8b10b_v11_0_7,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ2,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=1,c_lane_width=2,c_line_rate=12500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}" *)

//***************************** Entity Declaration ****************************

module aurora_8b10b_gt #
(
    // Simulation attributes
    parameter   GT_SIM_GTRESET_SPEEDUP   =   "FALSE",      // Set to TRUE to speed up sim reset
    parameter   TXSYNC_OVRD_IN           =   1'b0,
    parameter   TXSYNC_MULTILANE_IN      =   1'b0
)
(
    input           STABLE_CLOCK,         //Connect to System Clock 
    input           rst_in,               //Connect to System Reset
    output          drp_busy_out,         //Indicates that the DRP bus is not accessible to the User
    //-------------- Channel - Dynamic Reconfiguration Port (DRP) --------------
    input   [8:0]   drpaddr_in,
    input           drpclk_in,
    input   [15:0]  drpdi_in,
    output  [15:0]  drpdo_out,
    input           drpen_in,
    output          drprdy_out,
    input           drpwe_in,
    //----------------------------- Clocking Ports -----------------------------
    input           pll0clk_in,
    input           pll0refclk_in,
    input           pll1clk_in,
    input           pll1refclk_in,
    //----------------------------- Eye Scan Ports -----------------------------
    output          eyescandataerror_out,
    input           eyescantrigger_in,
    //---------------------- Loopback and Powerdown Ports ----------------------
    input   [2:0]   loopback_in,
    input   [1:0]   rxpd_in,
    input   [1:0]   txpd_in,
    //----------------------------- Receive Ports ------------------------------
    input           eyescanreset_in,
    input           rxuserrdy_in,
    //----------------- Receive Ports - Pattern Checker Ports ------------------
    output          rxprbserr_out,
    input   [2:0]   rxprbssel_in,
    //----------------- Receive Ports - Pattern Checker ports ------------------
    input           rxprbscntreset_in,
    //--------------------- Receive Ports - 8b10b Decoder ----------------------
    output  [1:0]   rxchariscomma_out,
    output  [1:0]   rxcharisk_out,
    output  [1:0]   rxdisperr_out,
    output  [1:0]   rxnotintable_out,
    //----------------------- Receive Ports - AFE Ports ------------------------
    input           gtprxn_in,
    input           gtprxp_in,
    //----------------- Receive Ports - Clock Correction Ports -----------------
    output  [1:0]   rxclkcorcnt_out,
    //------------- Receive Ports - Comma Detection and Alignment --------------
    output          rxbyteisaligned_out,
    output          rxbyterealign_out,
    output          rxcommadet_out,
    input           rxmcommaalignen_in,
    input           rxpcommaalignen_in,
    //----------------- Receive Ports - RX Data Path interface -----------------
    input           gtrxreset_in,
    input           rxpcsreset_in,
    input           rxpmareset_in,
    input           rxlpmreset_in,
    output  [15:0]  rxdata_out,
    output          rxoutclk_out,
    input           rxusrclk_in,
    input           rxusrclk2_in,
    //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    output          rxcdrlock_out,
    input           rxlpmhfhold_in,
    input           rxlpmlfhold_in,
    input           rxlpmhfovrden_in,
    input           rxcdrhold_in,
    output  [14:0]  dmonitorout_out,
    //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
    input           rxbufreset_in,
    output  [2:0]   rxbufstatus_out,
    //---------------------- Receive Ports - RX PLL Ports ----------------------
    output          rxresetdone_out,
    output          rxpmaresetdone_out,
    //---------------------- TX Configurable Driver Ports ----------------------
    input   [4:0]   txpostcursor_in,
    input   [4:0]   txprecursor_in,
    //--------------- Receive Ports - RX Polarity Control Ports ----------------
    input           rxpolarity_in,
    //----------------------------- Transmit Ports -----------------------------
    input           txuserrdy_in,
    //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    input   [1:0]   txcharisk_in,
    input   [1:0]   txchardispmode_in,
    input   [1:0]   txchardispval_in,
    //---------- Transmit Ports - TX Buffer and Phase Alignment Ports ----------
    output  [1:0]   txbufstatus_out,
    //---------------- Transmit Ports - TX Data Path interface -----------------
    input           gttxreset_in,
    input   [15:0]  txdata_in,
    output          txoutclk_out,
    output          txoutclkfabric_out,
    output          txoutclkpcs_out,
    input           txusrclk_in,
    input           txusrclk2_in,
    //------------------- Transmit Ports - PCI Express Ports -------------------
    input           txelecidle_in,
    //---------------- Transmit Ports - Pattern Generator Ports ----------------
    input           txprbsforceerr_in,
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    output          gtptxn_out,
    output          gtptxp_out,
    input   [3:0]   txdiffctrl_in,
    input   [6:0]   txmaincursor_in,
    //--------------------- Transmit Ports - TX PLL Ports ----------------------
    input           txpcsreset_in,
    input           txinhibit_in,
    input           txpmareset_in,
    output          txresetdone_out,
    //---------------- Transmit Ports - pattern Generator Ports ----------------
    input   [2:0]   txprbssel_in,
    //--------------- Transmit Ports - TX Polarity Control Ports ---------------
    input           txpolarity_in



);


//***************************** Wire Declarations *****************************

    // ground and vcc signals
    wire            tied_to_ground_i;
    wire    [63:0]  tied_to_ground_vec_i;
    wire            tied_to_vcc_i;
    wire    [63:0]  tied_to_vcc_vec_i;


    //RX Datapath signals
    wire    [31:0]  rxdata_i;
    wire    [1:0]   rxchariscomma_float_i;
    wire    [1:0]   rxcharisk_float_i;
    wire    [1:0]   rxdisperr_float_i;
    wire    [1:0]   rxnotintable_float_i;


    //TX Datapath signals
    wire    [31:0]  txdata_i;          
// DRP state machine signals
    wire            rxpmaresetdone_t;
    wire            gtrxreset_out;
    wire            rxpmareset_out;
    wire    [2:0]   rxrate_out;
    wire            drp_op_done;
    wire            drp_pma_busy;
    wire            drp_rate_busy;
    reg             drp_busy_i1= 1'b0;
    reg             drp_busy_i2= 1'b0;
    wire            drpen_rst_t;
    wire    [8:0]   drpaddr_rst_t;
    wire            drpwe_rst_t;
    wire    [15:0]  drpdo_rst_t;
    wire    [15:0]  drpdi_rst_t;
    wire            drprdy_rst_t;
    wire            drpen_pma_t;
    wire    [8:0]   drpaddr_pma_t;
    wire            drpwe_pma_t;
    wire    [15:0]  drpdo_pma_t;
    wire    [15:0]  drpdi_pma_t;
    wire            drprdy_pma_t;
    wire            drpen_rate_t;
    wire    [8:0]   drpaddr_rate_t;
    wire            drpwe_rate_t;
    wire    [15:0]  drpdo_rate_t;
    wire    [15:0]  drpdi_rate_t;
    wire            drprdy_rate_t;
    wire            drpen_i;
    wire    [8:0]   drpaddr_i;
    wire            drpwe_i;
    wire    [15:0]  drpdo_i;
    wire    [15:0]  drpdi_i;
    wire            drprdy_i;
       
//
//********************************* Main Body of Code**************************
                      
    //-------------------------  Static signal Assigments ---------------------  

    assign tied_to_ground_i             = 1'b0;
    assign tied_to_ground_vec_i         = 64'h0000000000000000;
    assign tied_to_vcc_i                = 1'b1;
    assign tied_to_vcc_vec_i            = 64'hffffffffffffffff;
    //-------------------  GT Datapath byte mapping  -----------------
    assign  rxdata_out    =   rxdata_i[15:0];

    assign  txdata_i    =   {tied_to_ground_vec_i[15:0],txdata_in};   



    //------------------------- GT Instantiations  --------------------------
        GTPE2_CHANNEL #
        (
            //_______________________ Simulation-Only Attributes __________________
   
            .SIM_RECEIVER_DETECT_PASS   ("TRUE"),
            .SIM_TX_EIDLE_DRIVE_LEVEL   ("X"),
            .SIM_RESET_SPEEDUP          (GT_SIM_GTRESET_SPEEDUP),
            .SIM_VERSION                ("2.0"),
           

           //----------------RX Byte and Word Alignment Attributes---------------
            .ALIGN_COMMA_DOUBLE                     ("FALSE"),
            .ALIGN_COMMA_ENABLE                     (10'b1111111111),
            .ALIGN_COMMA_WORD                       (2),
            .ALIGN_MCOMMA_DET                       ("TRUE"),
            .ALIGN_MCOMMA_VALUE                     (10'b1010000011),
            .ALIGN_PCOMMA_DET                       ("TRUE"),
            .ALIGN_PCOMMA_VALUE                     (10'b0101111100),
            .SHOW_REALIGN_COMMA                     ("TRUE"),
            .RXSLIDE_AUTO_WAIT                      (7),
            .RXSLIDE_MODE                           ("OFF"),
            .RX_SIG_VALID_DLY                       (10),

           //----------------RX 8B/10B Decoder Attributes---------------
            .RX_DISPERR_SEQ_MATCH                   ("TRUE"),
            .DEC_MCOMMA_DETECT                      ("TRUE"),
            .DEC_PCOMMA_DETECT                      ("TRUE"),
            .DEC_VALID_COMMA_ONLY                   ("FALSE"),

           //----------------------RX Clock Correction Attributes----------------------
            .CBCC_DATA_SOURCE_SEL                   ("DECODED"),
            .CLK_COR_SEQ_2_USE                      ("FALSE"),
            .CLK_COR_KEEP_IDLE                      ("FALSE"),
.CLK_COR_MAX_LAT                        (17),
.CLK_COR_MIN_LAT                        (12),
            .CLK_COR_PRECEDENCE                     ("TRUE"),
            .CLK_COR_REPEAT_WAIT                    (0),
            .CLK_COR_SEQ_LEN                        (2),
            .CLK_COR_SEQ_1_ENABLE                   (4'b1111),
            .CLK_COR_SEQ_1_1                        (10'b0111110111),
            .CLK_COR_SEQ_1_2                        (10'b0111110111),
            .CLK_COR_SEQ_1_3                        (10'b0100000000),
            .CLK_COR_SEQ_1_4                        (10'b0100000000),
            .CLK_CORRECT_USE                        ("TRUE"),
            .CLK_COR_SEQ_2_ENABLE                   (4'b1111),
            .CLK_COR_SEQ_2_1                        (10'b0100000000),
            .CLK_COR_SEQ_2_2                        (10'b0100000000),
            .CLK_COR_SEQ_2_3                        (10'b0100000000),
            .CLK_COR_SEQ_2_4                        (10'b0100000000),

           //----------------------RX Channel Bonding Attributes----------------------
            .CHAN_BOND_KEEP_ALIGN                   ("FALSE"),
            .CHAN_BOND_MAX_SKEW                     (7),
            .CHAN_BOND_SEQ_LEN                      (1),
            .CHAN_BOND_SEQ_1_1                      (10'b0101111100),
            .CHAN_BOND_SEQ_1_2                      (10'b0000000000),
            .CHAN_BOND_SEQ_1_3                      (10'b0000000000),
            .CHAN_BOND_SEQ_1_4                      (10'b0000000000),
            .CHAN_BOND_SEQ_1_ENABLE                 (4'b0001),
            .CHAN_BOND_SEQ_2_1                      (10'b0000000000),
            .CHAN_BOND_SEQ_2_2                      (10'b0000000000),
            .CHAN_BOND_SEQ_2_3                      (10'b0000000000),
            .CHAN_BOND_SEQ_2_4                      (10'b0000000000),
            .CHAN_BOND_SEQ_2_ENABLE                 (4'b0000),
            .CHAN_BOND_SEQ_2_USE                    ("FALSE"),
            .FTS_DESKEW_SEQ_ENABLE                  (4'b1111),
            .FTS_LANE_DESKEW_CFG                    (4'b1111),
            .FTS_LANE_DESKEW_EN                     ("FALSE"),

           //-------------------------RX Margin Analysis Attributes----------------------------
            .ES_CONTROL                             (6'b000000),
            .ES_ERRDET_EN                           ("FALSE"),
            .ES_EYE_SCAN_EN                         ("FALSE"),
            .ES_HORZ_OFFSET                         (12'h010),
            .ES_PMA_CFG                             (10'b0000000000),
            .ES_PRESCALE                            (5'b00000),
            .ES_QUALIFIER                           (80'h00000000000000000000),
            .ES_QUAL_MASK                           (80'h00000000000000000000),
            .ES_SDATA_MASK                          (80'h00000000000000000000),
            .ES_VERT_OFFSET                         (9'b000000000),

           //-----------------------FPGA RX Interface Attributes-------------------------
            .RX_DATA_WIDTH                          (20),

           //-------------------------PMA Attributes----------------------------
            .OUTREFCLK_SEL_INV                      (2'b11),
            .PMA_RSV                                (32'h00000333),
            .PMA_RSV2                               (32'h00002040),
            .PMA_RSV3                               (2'b00),
            .PMA_RSV4                               (4'b0000),
            .RX_BIAS_CFG                            (16'b0000111100110011),
            .DMONITOR_CFG                           (24'h000A00),
            .RX_CM_SEL                              (2'b11),
            .RX_CM_TRIM                             (4'b1010),
            .RX_DEBUG_CFG                           (14'b00000000000000),
            .RX_OS_CFG                              (13'b0000010000000),
            .TERM_RCAL_CFG                          (15'b100001000010000),
            .TERM_RCAL_OVRD                         (3'b000),
            .TST_RSV                                (32'h00000000),
.RX_CLK25_DIV                           (5),
.TX_CLK25_DIV                           (5),
            .UCODEER_CLR                            (1'b0),

           //-------------------------PCI Express Attributes----------------------------
            .PCS_PCIE_EN                            ("FALSE"),

           //-------------------------PCS Attributes----------------------------
            .PCS_RSVD_ATTR                          (48'h000000000000),

           //-----------RX Buffer Attributes------------
            .RXBUF_ADDR_MODE                        ("FULL"),
            .RXBUF_EIDLE_HI_CNT                     (4'b1000),
            .RXBUF_EIDLE_LO_CNT                     (4'b0000),
            .RXBUF_EN                               ("TRUE"),
            .RX_BUFFER_CFG                          (6'b000000),
            .RXBUF_RESET_ON_CB_CHANGE               ("TRUE"),
            .RXBUF_RESET_ON_COMMAALIGN              ("FALSE"),
            .RXBUF_RESET_ON_EIDLE                   ("FALSE"),
            .RXBUF_RESET_ON_RATE_CHANGE             ("TRUE"),
            .RXBUFRESET_TIME                        (5'b00001),
            .RXBUF_THRESH_OVFLW                     (61),
            .RXBUF_THRESH_OVRD                      ("FALSE"),
            .RXBUF_THRESH_UNDFLW                    (4),
            .RXDLY_CFG                              (16'h001F),
            .RXDLY_LCFG                             (9'h030),
            .RXDLY_TAP_CFG                          (16'h0000),
            .RXPH_CFG                               (24'hC00002),
            .RXPHDLY_CFG                            (24'h084020),
            .RXPH_MONITOR_SEL                       (5'b00000),
            .RX_XCLK_SEL                            ("RXREC"),
            .RX_DDI_SEL                             (6'b000000),
            .RX_DEFER_RESET_BUF_EN                  ("TRUE"),

           //---------------------CDR Attributes-------------------------
            .RXCDR_CFG                              (83'h0000107FE106001041010),
            .RXCDR_FR_RESET_ON_EIDLE                (1'b0),
            .RXCDR_HOLD_DURING_EIDLE                (1'b0),
            .RXCDR_PH_RESET_ON_EIDLE                (1'b0),
            .RXCDR_LOCK_CFG                         (6'b001001),

           //-----------------RX Initialization and Reset Attributes-------------------
            .RXCDRFREQRESET_TIME                    (5'b00001),
            .RXCDRPHRESET_TIME                      (5'b00001),
            .RXISCANRESET_TIME                      (5'b00001),
            .RXPCSRESET_TIME                        (5'b00001),
            .RXPMARESET_TIME                        (5'b00011),

           //-----------------RX OOB Signaling Attributes-------------------
            .RXOOB_CFG                              (7'b0000110),

           //-----------------------RX Gearbox Attributes---------------------------
            .RXGEARBOX_EN                           ("FALSE"),
            .GEARBOX_MODE                           (3'b000),

           //-----------------------PRBS Detection Attribute-----------------------
            .RXPRBS_ERR_LOOPBACK                    (1'b0),

           //-----------Power-Down Attributes----------
            .PD_TRANS_TIME_FROM_P2                  (12'h03c),
            .PD_TRANS_TIME_NONE_P2                  (8'h3c),
            .PD_TRANS_TIME_TO_P2                    (8'h64),

           //-----------RX OOB Signaling Attributes----------
            .SAS_MAX_COM                            (64),
            .SAS_MIN_COM                            (36),
            .SATA_BURST_SEQ_LEN                     (4'b0101),
            .SATA_BURST_VAL                         (3'b100),
            .SATA_EIDLE_VAL                         (3'b100),
            .SATA_MAX_BURST                         (8),
            .SATA_MAX_INIT                          (21),
            .SATA_MAX_WAKE                          (7),
            .SATA_MIN_BURST                         (4),
            .SATA_MIN_INIT                          (12),
            .SATA_MIN_WAKE                          (4),

           //-----------RX Fabric Clock Output Control Attributes----------
            .TRANS_TIME_RATE                        (8'h0E),

           //------------TX Buffer Attributes----------------
            .TXBUF_EN                               ("TRUE"),
            .TXBUF_RESET_ON_RATE_CHANGE             ("TRUE"),
            .TXDLY_CFG                              (16'h001F),
            .TXDLY_LCFG                             (9'h030),
            .TXDLY_TAP_CFG                          (16'h0000),
            .TXPH_CFG                               (16'h0780),
            .TXPHDLY_CFG                            (24'h084020),
            .TXPH_MONITOR_SEL                       (5'b00000),
            .TX_XCLK_SEL                            ("TXOUT"),

           //-----------------------FPGA TX Interface Attributes-------------------------
            .TX_DATA_WIDTH                          (20),

           //-----------------------TX Configurable Driver Attributes-------------------------
            .TX_DEEMPH0                             (6'b000000),
            .TX_DEEMPH1                             (6'b000000),
            .TX_EIDLE_ASSERT_DELAY                  (3'b110),
            .TX_EIDLE_DEASSERT_DELAY                (3'b100),
            .TX_LOOPBACK_DRIVE_HIZ                  ("FALSE"),
            .TX_MAINCURSOR_SEL                      (1'b0),
            .TX_DRIVE_MODE                          ("DIRECT"),
            .TX_MARGIN_FULL_0                       (7'b1001110),
            .TX_MARGIN_FULL_1                       (7'b1001001),
            .TX_MARGIN_FULL_2                       (7'b1000101),
            .TX_MARGIN_FULL_3                       (7'b1000010),
            .TX_MARGIN_FULL_4                       (7'b1000000),
            .TX_MARGIN_LOW_0                        (7'b1000110),
            .TX_MARGIN_LOW_1                        (7'b1000100),
            .TX_MARGIN_LOW_2                        (7'b1000010),
            .TX_MARGIN_LOW_3                        (7'b1000000),
            .TX_MARGIN_LOW_4                        (7'b1000000),

           //-----------------------TX Gearbox Attributes--------------------------
            .TXGEARBOX_EN                           ("FALSE"),

           //-----------------------TX Initialization and Reset Attributes--------------------------
            .TXPCSRESET_TIME                        (5'b00001),
            .TXPMARESET_TIME                        (5'b00001),

           //-----------------------TX Receiver Detection Attributes--------------------------
            .TX_RXDETECT_CFG                        (14'h1832),
            .TX_RXDETECT_REF                        (3'b100),

           //---------------- JTAG Attributes ---------------
            .ACJTAG_DEBUG_MODE                      (1'b0),
            .ACJTAG_MODE                            (1'b0),
            .ACJTAG_RESET                           (1'b0),

           //---------------- CDR Attributes ---------------
            .CFOK_CFG                               (43'h49000040E80),
            .CFOK_CFG2                              (7'b0100000),
            .CFOK_CFG3                              (7'b0100000),
            .CFOK_CFG4                              (1'b0),
            .CFOK_CFG5                              (2'h0),
            .CFOK_CFG6                              (4'b0000),
            .RXOSCALRESET_TIME                      (5'b00011),
            .RXOSCALRESET_TIMEOUT                   (5'b00000),

           //---------------- PMA Attributes ---------------
            .CLK_COMMON_SWING                       (1'b0),
            .RX_CLKMUX_EN                           (1'b1),
            .TX_CLKMUX_EN                           (1'b1),
            .ES_CLK_PHASE_SEL                       (1'b0),
            .USE_PCS_CLK_PHASE_SEL                  (1'b0),
            .PMA_RSV6                               (1'b0),
            .PMA_RSV7                               (1'b0),

           //---------------- TX Configuration Driver Attributes ---------------
            .TX_PREDRIVER_MODE                      (1'b0),
            .PMA_RSV5                               (1'b0),
            .SATA_PLL_CFG                           ("VCO_3000MHZ"),

           //---------------- RX Fabric Clock Output Control Attributes ---------------
            .RXOUT_DIV                              (4),

           //---------------- TX Fabric Clock Output Control Attributes ---------------
            .TXOUT_DIV                              (4),

           //---------------- RX Phase Interpolator Attributes---------------
            .RXPI_CFG0                              (3'b000),
            .RXPI_CFG1                              (1'b1),
            .RXPI_CFG2                              (1'b1),

           //------------RX Equalizer Attributes-------------
            .ADAPT_CFG0                             (20'h00000),
            .RXLPMRESET_TIME                        (7'b0001111),
            .RXLPM_BIAS_STARTUP_DISABLE             (1'b0),
            .RXLPM_CFG                              (4'b0110),
            .RXLPM_CFG1                             (1'b0),
            .RXLPM_CM_CFG                           (1'b0),
            .RXLPM_GC_CFG                           (9'b111100010),
            .RXLPM_GC_CFG2                          (3'b001),
            .RXLPM_HF_CFG                           (14'b00001111110000),
            .RXLPM_HF_CFG2                          (5'b01010),
            .RXLPM_HF_CFG3                          (4'b0000),
            .RXLPM_HOLD_DURING_EIDLE                (1'b0),
            .RXLPM_INCM_CFG                         (1'b1),
            .RXLPM_IPCM_CFG                         (1'b0),
            .RXLPM_LF_CFG                           (18'b000000001111110000),
            .RXLPM_LF_CFG2                          (5'b01010),
            .RXLPM_OSINT_CFG                        (3'b100),

           //---------------- TX Phase Interpolator PPM Controller Attributes---------------
            .TXPI_CFG0                              (2'b00),
            .TXPI_CFG1                              (2'b00),
            .TXPI_CFG2                              (2'b00),
            .TXPI_CFG3                              (1'b0),
            .TXPI_CFG4                              (1'b0),
            .TXPI_CFG5                              (3'b000),
            .TXPI_GREY_SEL                          (1'b0),
            .TXPI_INVSTROBE_SEL                     (1'b0),
            .TXPI_PPMCLK_SEL                        ("TXUSRCLK2"),
            .TXPI_PPM_CFG                           (8'h00),
            .TXPI_SYNFREQ_PPM                       (3'b000),

           //---------------- LOOPBACK Attributes---------------
            .LOOPBACK_CFG                           (1'b0),
            .PMA_LOOPBACK_CFG                       (1'b0),

           //----------------RX OOB Signalling Attributes---------------
            .RXOOB_CLK_CFG                          ("PMA"),

           //----------------TX OOB Signalling Attributes---------------
            .TXOOB_CFG                              (1'b0),

           //----------------RX Buffer Attributes---------------
            .RXSYNC_MULTILANE                       (1'b0),
            .RXSYNC_OVRD                            (1'b0),
            .RXSYNC_SKIP_DA                         (1'b0),

           //----------------TX Buffer Attributes---------------
            .TXSYNC_MULTILANE                       (TXSYNC_MULTILANE_IN),
            .TXSYNC_OVRD                            (TXSYNC_OVRD_IN),
            .TXSYNC_SKIP_DA                         (1'b0)

           
        )
        gtpe2_i
        (
       
        //-------------------------------- Channel ---------------------------------
        .CFGRESET                       (tied_to_ground_i),
        .GTRESETSEL                     (tied_to_ground_i),
        .GTRSVD                         (16'b0000000000000000),
        .RESETOVRD                      (tied_to_ground_i),
        //-------------- Channel - Dynamic Reconfiguration Port (DRP) --------------
        .DRPADDR                        (drpaddr_i),
        .DRPCLK                         (drpclk_in),
        .DRPDI                          (drpdi_i),
        .DRPDO                          (drpdo_i),
        .DRPEN                          (drpen_i),
        .DRPRDY                         (drprdy_i),
        .DRPWE                          (drpwe_i),
        //----------------------------- Clocking Ports -----------------------------
        .PLL0CLK                        (pll0clk_in),
        .PLL0REFCLK                     (pll0refclk_in),
        .PLL1CLK                        (pll1clk_in),
        .PLL1REFCLK                     (pll1refclk_in),
        .RXSYSCLKSEL                    (2'b00),
        .TXSYSCLKSEL                    (2'b00),
        //----------------------------- Eye Scan Ports -----------------------------
        .EYESCANDATAERROR               (eyescandataerror_out),
        .EYESCANMODE                    (tied_to_ground_i),
        .EYESCANRESET                   (eyescanreset_in),
        .EYESCANTRIGGER                 (eyescantrigger_in),
        //---------------------- Loopback and Powerdown Ports ----------------------
        .LOOPBACK                       (loopback_in),
        .RXPD                           (rxpd_in),
        .TXPD                           (txpd_in),
        //--------------------------- PCS Reserved Ports ---------------------------
        .PCSRSVDIN                      (16'b0000000000000000),
        .PCSRSVDOUT                     (),
        //--------------------------- PMA Reserved Ports ---------------------------
        .PMARSVDIN3                     (1'b0),
        .PMARSVDIN4                     (1'b0),
        //----------------------------- Receive Ports ------------------------------
        .CLKRSVD0                       (tied_to_ground_i),
        .CLKRSVD1                       (tied_to_ground_i),
        .DMONFIFORESET                  (tied_to_ground_i),
        .DMONITORCLK                    (tied_to_ground_i),
        .RXPMARESETDONE                 (rxpmaresetdone_t),
        .RXUSERRDY                      (rxuserrdy_in),
        .SIGVALIDCLK                    (tied_to_ground_i),
        //------------ Receive Ports - 64b66b and 64b67b Gearbox Ports -------------
        .RXDATAVALID                    (),
        .RXGEARBOXSLIP                  (tied_to_ground_i),
        .RXHEADER                       (),
        .RXHEADERVALID                  (),
        .RXSTARTOFSEQ                   (),
        //--------------------- Receive Ports - 8b10b Decoder ----------------------
        .RX8B10BEN                      (tied_to_vcc_i),
        .RXCHARISCOMMA                  ({rxchariscomma_float_i,rxchariscomma_out}),
        .RXCHARISK                      ({rxcharisk_float_i,rxcharisk_out}),
        .RXDISPERR                      ({rxdisperr_float_i,rxdisperr_out}),
        .RXNOTINTABLE                   ({rxnotintable_float_i,rxnotintable_out}),
        //----------------------- Receive Ports - AFE Ports ------------------------
        .GTPRXN                         (gtprxn_in),
        .GTPRXP                         (gtprxp_in),
        .PMARSVDIN2                     (1'b0),
        .PMARSVDOUT0                    (),
        .PMARSVDOUT1                    (),
        //----------------- Receive Ports - Channel Bonding Ports ------------------
        .RXCHANBONDSEQ                  (),
        .RXCHBONDEN                     (tied_to_ground_i),
        .RXCHBONDI                      (4'b0000),
        .RXCHBONDLEVEL                  (tied_to_ground_vec_i[2:0]),
        .RXCHBONDMASTER                 (tied_to_ground_i),
        .RXCHBONDO                      (),
        .RXCHBONDSLAVE                  (tied_to_ground_i),
        //----------------- Receive Ports - Channel Bonding Ports  -----------------
        .RXCHANISALIGNED                (),
        .RXCHANREALIGN                  (),
        //----------------- Receive Ports - Clock Correction Ports -----------------
        .RXCLKCORCNT                    (rxclkcorcnt_out),
        //------------- Receive Ports - Comma Detection and Alignment --------------
        .RXBYTEISALIGNED                (rxbyteisaligned_out),
        .RXBYTEREALIGN                  (rxbyterealign_out),
        .RXCOMMADET                     (rxcommadet_out),
        .RXCOMMADETEN                   (tied_to_vcc_i),
        .RXMCOMMAALIGNEN                (rxmcommaalignen_in),
        .RXPCOMMAALIGNEN                (rxpcommaalignen_in),
        .RXSLIDE                        (tied_to_ground_i),
        //--------------------- Receive Ports - PRBS Detection ---------------------
        .RXPRBSCNTRESET                 (rxprbscntreset_in),
        .RXPRBSERR                      (rxprbserr_out),
        .RXPRBSSEL                      (rxprbssel_in),
        //----------------- Receive Ports - RX Data Path interface -----------------
        .GTRXRESET                      (gtrxreset_out),
        .RXDATA                         (rxdata_i),
        .RXOUTCLK                       (rxoutclk_out),
        .RXOUTCLKFABRIC                 (),
        .RXOUTCLKPCS                    (),
        .RXOUTCLKSEL                    (3'b010),
        .RXPCSRESET                     (rxpcsreset_in),
        .RXPMARESET                     (rxpmareset_in),
        .RXUSRCLK                       (rxusrclk_in),
        .RXUSRCLK2                      (rxusrclk2_in),
        //---------- Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
        .DMONITOROUT                    (dmonitorout_out),
        .RXADAPTSELTEST                 (tied_to_ground_vec_i[13:0]),
        .RXDFEXYDEN                     (tied_to_ground_i),
        .RXOSCALRESET                   (tied_to_ground_i),
        .RXOSHOLD                       (tied_to_ground_i),
        .RXOSINTCFG                     (4'b0010),
        .RXOSINTDONE                    (),
        .RXOSINTEN                      (tied_to_vcc_i),
        .RXOSINTHOLD                    (tied_to_ground_i),
        .RXOSINTID0                     (tied_to_ground_vec_i[3:0]),
        .RXOSINTNTRLEN                  (tied_to_ground_i),
        .RXOSINTOVRDEN                  (tied_to_ground_i),
        .RXOSINTPD                      (tied_to_ground_i),
        .RXOSINTSTARTED                 (),
        .RXOSINTSTROBE                  (tied_to_ground_i),
        .RXOSINTSTROBEDONE              (),
        .RXOSINTSTROBESTARTED           (),
        .RXOSINTTESTOVRDEN              (tied_to_ground_i),
        .RXOSOVRDEN                     (tied_to_ground_i),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .RXCDRFREQRESET                 (tied_to_ground_i),
        .RXCDRHOLD                      (rxcdrhold_in),
        .RXCDRLOCK                      (rxcdrlock_out),
        .RXCDROVRDEN                    (tied_to_ground_i),
        .RXCDRRESET                     (tied_to_ground_i),
        .RXCDRRESETRSV                  (tied_to_ground_i),
        .RXELECIDLE                     (),
        .RXELECIDLEMODE                 (2'b11),
        .RXLPMHFHOLD                    (rxlpmhfhold_in),
        .RXLPMHFOVRDEN                  (rxlpmhfovrden_in),
        .RXLPMLFHOLD                    (rxlpmlfhold_in),
        .RXLPMLFOVRDEN                  (tied_to_ground_i),
        .RXLPMOSINTNTRLEN               (tied_to_ground_i),
        .RXLPMRESET                     (rxlpmreset_in),
        .RXOOBRESET                     (tied_to_ground_i),
        //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
        .RXBUFRESET                     (rxbufreset_in),
        .RXBUFSTATUS                    (rxbufstatus_out),
        .RXDDIEN                        (tied_to_ground_i),
        .RXDLYBYPASS                    (tied_to_vcc_i),
        .RXDLYEN                        (tied_to_ground_i),
        .RXDLYOVRDEN                    (tied_to_ground_i),
        .RXDLYSRESET                    (tied_to_ground_i),
        .RXDLYSRESETDONE                (),
        .RXPHALIGN                      (tied_to_ground_i),
        .RXPHALIGNDONE                  (),
        .RXPHALIGNEN                    (tied_to_ground_i),
        .RXPHDLYPD                      (tied_to_ground_i),
        .RXPHDLYRESET                   (tied_to_ground_i),
        .RXPHMONITOR                    (),
        .RXPHOVRDEN                     (tied_to_ground_i),
        .RXPHSLIPMONITOR                (),
        .RXSTATUS                       (),
        .RXSYNCALLIN                    (tied_to_ground_i),
        .RXSYNCDONE                     (),
        .RXSYNCIN                       (tied_to_ground_i),
        .RXSYNCMODE                     (tied_to_ground_i),
        .RXSYNCOUT                      (),
        //--------- Receive Ports - RX Fabric Clock Output Control Ports  ----------
        .RXRATEMODE                     (1'b0),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .RXRATE                         (tied_to_ground_vec_i[2:0]),
        .RXRATEDONE                     (),
        .RXRESETDONE                    (rxresetdone_out),
        //------------ Receive Ports - RX Pipe Control for PCI Express -------------
        .PHYSTATUS                      (),
        .RXVALID                        (),
        //--------------- Receive Ports - RX Polarity Control Ports ----------------
        .RXPOLARITY                     (rxpolarity_in),
        //------------------- Receive Ports - RX Ports for SATA --------------------
        .RXCOMINITDET                   (),
        .RXCOMSASDET                    (),
        .RXCOMWAKEDET                   (),
        //----------------------------- Transmit Ports -----------------------------
        .SETERRSTATUS                   (tied_to_ground_i),
        .TSTIN                          (20'b11111111111111111111),
        .TXPHDLYTSTCLK                  (tied_to_ground_i),
        .TXPIPPMEN                      (tied_to_ground_i),
        .TXPIPPMOVRDEN                  (tied_to_ground_i),
        .TXPIPPMPD                      (tied_to_ground_i),
        .TXPIPPMSEL                     (tied_to_vcc_i),
        .TXPIPPMSTEPSIZE                (tied_to_ground_vec_i[4:0]),
        .TXPMARESETDONE                 (),
        .TXPOSTCURSOR                   (txpostcursor_in),
        .TXPOSTCURSORINV                (tied_to_ground_i),
        .TXPRECURSOR                    (txprecursor_in),
        .TXPRECURSORINV                 (tied_to_ground_i),
        .TXRATEMODE                     (tied_to_ground_i),
        .TXUSERRDY                      (txuserrdy_in),
        //------------ Transmit Ports - 64b66b and 64b67b Gearbox Ports ------------
        .TXGEARBOXREADY                 (),
        .TXHEADER                       (tied_to_ground_vec_i[2:0]),
        .TXSEQUENCE                     (tied_to_ground_vec_i[6:0]),
        .TXSTARTSEQ                     (tied_to_ground_i),
        //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        .TX8B10BBYPASS                  (tied_to_ground_vec_i[3:0]),
        .TX8B10BEN                      (tied_to_vcc_i),
        .TXCHARDISPMODE                 ({tied_to_ground_vec_i[1:0],txchardispmode_in}),
        .TXCHARDISPVAL                  ({tied_to_ground_vec_i[1:0],txchardispval_in}),
        .TXCHARISK                      ({tied_to_ground_vec_i[1:0],txcharisk_in}),
        //--------------- Transmit Ports - Configurable Driver Ports ---------------
        .PMARSVDIN0                     (1'b0),
        .PMARSVDIN1                     (1'b0),
        //---------- Transmit Ports - TX Buffer and Phase Alignment Ports ----------
        .TXBUFSTATUS                    (txbufstatus_out),
        .TXDLYBYPASS                    (tied_to_vcc_i),
        .TXDLYEN                        (tied_to_ground_i),
        .TXDLYHOLD                      (tied_to_ground_i),
        .TXDLYOVRDEN                    (tied_to_ground_i),
        .TXDLYSRESET                    (tied_to_ground_i),
        .TXDLYSRESETDONE                (),
        .TXDLYUPDOWN                    (tied_to_ground_i),
        .TXPHALIGN                      (tied_to_ground_i),
        .TXPHALIGNDONE                  (),
        .TXPHALIGNEN                    (tied_to_ground_i),
        .TXPHDLYPD                      (tied_to_ground_i),
        .TXPHDLYRESET                   (tied_to_ground_i),
        .TXPHINIT                       (tied_to_ground_i),
        .TXPHINITDONE                   (),
        .TXPHOVRDEN                     (tied_to_ground_i),
        .TXSYNCALLIN                    (tied_to_ground_i),
        .TXSYNCDONE                     (),
        .TXSYNCIN                       (tied_to_ground_i),
        .TXSYNCMODE                     (tied_to_ground_i),
        .TXSYNCOUT                      (),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .GTTXRESET                      (gttxreset_in),
        .TXDATA                         (txdata_i),
        .TXOUTCLK                       (txoutclk_out),
        .TXOUTCLKFABRIC                 (txoutclkfabric_out),
        .TXOUTCLKPCS                    (txoutclkpcs_out),
        .TXOUTCLKSEL                    (3'b010),
        .TXPCSRESET                     (txpcsreset_in),
        .TXPMARESET                     (txpmareset_in),
        .TXUSRCLK                       (txusrclk_in),
        .TXUSRCLK2                      (txusrclk2_in),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .GTPTXN                         (gtptxn_out),
        .GTPTXP                         (gtptxp_out),
        .TXBUFDIFFCTRL                  (3'b100),
        .TXDIFFCTRL                     (txdiffctrl_in),
        .TXDIFFPD                       (tied_to_ground_i),
        .TXINHIBIT                      (txinhibit_in),
        .TXMAINCURSOR                   (txmaincursor_in),
        .TXPDELECIDLEMODE               (tied_to_ground_i),
        .TXPISOPD                       (tied_to_ground_i),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .TXRATE                         (tied_to_ground_vec_i[2:0]),
        .TXRATEDONE                     (),
        .TXRESETDONE                    (txresetdone_out),
        //------------------- Transmit Ports - TX PRBS Generator -------------------
        .TXPRBSFORCEERR                 (txprbsforceerr_in),
        .TXPRBSSEL                      (txprbssel_in),
        //------------------ Transmit Ports - TX Polarity Control ------------------
        .TXPOLARITY                     (txpolarity_in),
        //--------------- Transmit Ports - TX Ports for PCI Express ----------------
        .TXDEEMPH                       (tied_to_ground_i),
        .TXDETECTRX                     (tied_to_ground_i),
        .TXELECIDLE                     (txelecidle_in),
        .TXMARGIN                       (tied_to_ground_vec_i[2:0]),
        .TXSWING                        (tied_to_ground_i),
        //------------------- Transmit Ports - TX Ports for SATA -------------------
        .TXCOMFINISH                    (),
        .TXCOMINIT                      (tied_to_ground_i),
        .TXCOMSAS                       (tied_to_ground_i),
        .TXCOMWAKE                      (tied_to_ground_i)

     );

    assign rxpmaresetdone_out           = rxpmaresetdone_t;
    //------------------------- Soft Fix for Production Silicon----------------------
         aurora_8b10b_gtrxreset_seq gtrxreset_seq_i
            (
        .RST                            (rst_in),
        .GTRXRESET_IN                   (gtrxreset_in),
        .RXPMARESETDONE                 (rxpmaresetdone_t),
        .GTRXRESET_OUT                  (gtrxreset_out),
        .STABLE_CLOCK                   (STABLE_CLOCK),
        .DRP_OP_DONE                    (drp_op_done),
        .DRPCLK                         (drpclk_in),
        .DRPEN                          (drpen_rst_t),
        .DRPADDR                        (drpaddr_rst_t),
        .DRPWE                          (drpwe_rst_t),
        .DRPDO                          (drpdo_rst_t),
        .DRPDI                          (drpdi_rst_t),
        .DRPRDY                         (drprdy_rst_t)

            ); 

     assign drpen_i        = !drp_op_done   ?   drpen_rst_t  : 
                              drp_pma_busy  ?   drpen_pma_t  : 
                              drp_rate_busy ?   drpen_rate_t : drpen_in;

     assign drpaddr_i      = !drp_op_done   ?   drpaddr_rst_t  :
                              drp_pma_busy  ?   drpaddr_pma_t  : 
                              drp_rate_busy ?   drpaddr_rate_t : drpaddr_in;

     assign drpwe_i        = !drp_op_done   ?   drpwe_rst_t    :
                              drp_pma_busy  ?   drpwe_pma_t    : 
                              drp_rate_busy ?   drpwe_rate_t   : drpwe_in;

     assign drpdo_out      = (drp_op_done || !drp_pma_busy || !drp_rate_busy) ? drpdo_i     : 16'd0;

     assign drpdo_rst_t    = drpdo_i;

     assign drpdo_pma_t    = drpdo_i;

     assign drpdo_rate_t   = drpdo_i;

     assign drpdi_i        = !drp_op_done   ? drpdi_rst_t  :
                              drp_pma_busy  ? drpdi_pma_t  :    
                              drp_rate_busy ? drpdi_rate_t : drpdi_in;

     assign drprdy_out     = (drp_op_done || !drp_pma_busy || !drp_rate_busy) ? drprdy_i    : 1'b0;

     assign drprdy_rst_t   = drprdy_i;

     assign drprdy_pma_t   = drprdy_i;

     assign drprdy_rate_t  = drprdy_i;


  assign drp_pma_busy = 1'b0;
  assign drp_rate_busy = 1'b0;

   always @ (posedge drpclk_in) begin
      if(!drp_op_done || drp_rate_busy) 
         drp_busy_i1 <= 1'b1;
      else
         drp_busy_i1 <= 1'b0;
   end

   always @ (posedge drpclk_in) begin
      if(!drp_op_done || drp_pma_busy) 
         drp_busy_i2 <= 1'b1;
      else
         drp_busy_i2 <= 1'b0;
   end

   assign drp_busy_out = drp_busy_i1 || drp_busy_i2;





endmodule     
