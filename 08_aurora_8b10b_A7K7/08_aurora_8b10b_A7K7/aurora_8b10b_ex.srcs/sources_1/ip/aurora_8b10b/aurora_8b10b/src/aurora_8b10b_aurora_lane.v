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
//  AURORA_LANE
//
//
//  Description: The AURORA_LANE module provides a full duplex 2-byte aurora
//               lane connection using a single GTP.  The module handles lane
//               initialization, symbol generation and decoding as well as
//               error detection.  It also decodes some of the channel bonding
//               indicator signals needed by the Global logic.
//
//               * Supports GTP
//

`timescale 1 ns / 1 ps

module aurora_8b10b_AURORA_LANE #
(
   parameter   EXAMPLE_SIMULATION =   0      
)
(
    // GTP Interface
    RX_DATA,
    RX_NOT_IN_TABLE,
    RX_DISP_ERR,
    RX_CHAR_IS_K,
    RX_CHAR_IS_COMMA,
    RX_STATUS,
    RX_BUF_ERR,
    TX_BUF_ERR,
    RX_REALIGN,
    RX_POLARITY,
    RX_RESET,
    TX_CHAR_IS_K,
    TX_DATA,
    TX_RESET,
    LINK_RESET_OUT,
    HPCNT_RESET,

    // Comma Detect Phase Align Interface
    ENA_COMMA_ALIGN,

    // TX_LL Interface
    GEN_SCP,
    GEN_ECP,
    GEN_PAD,
    TX_PE_DATA,
    TX_PE_DATA_V,
    GEN_CC,

    // RX_LL Interface
    RX_PAD,
    RX_PE_DATA,
    RX_PE_DATA_V,
    RX_SCP,
    RX_ECP,

    // Global Logic Interface
    GEN_A,
    GEN_K,
    GEN_R,
    GEN_V,
    LANE_UP,
    SOFT_ERR,
    HARD_ERR,
    CHANNEL_BOND_LOAD,
    GOT_A,
    GOT_V,
    CHANNEL_UP,

    //System Interface
    INIT_CLK,
    USER_CLK,
    RESET_SYMGEN,
    RESET
);

//***********************************Port Declarations*******************************

    // GTP Interface
    input   [15:0]  RX_DATA;                // 2-byte data bus from the GTP.
    input   [1:0]   RX_NOT_IN_TABLE;        // Invalid 10-bit code was recieved.
    input   [1:0]   RX_DISP_ERR;            // Disparity error detected on RX interface.
    input   [1:0]   RX_CHAR_IS_K;           // Indicates which bytes of RX_DATA are control.
    input   [1:0]   RX_CHAR_IS_COMMA;       // Comma received on given byte.
    input   [5:0]   RX_STATUS;              // Part of GTP status and error bus.
    input           RX_BUF_ERR;             // Overflow/Underflow of RX buffer detected.
    input           TX_BUF_ERR;             // Overflow/Underflow of TX buffer detected.
    input           RX_REALIGN;             // SERDES was realigned because of a new comma.
    output          RX_POLARITY;            // Controls interpreted polarity of serial data inputs.
    output          RX_RESET;               // Reset RX side of GTP logic.
    output  [1:0]   TX_CHAR_IS_K;           // TX_DATA byte is a control character.
    output  [15:0]  TX_DATA;                // 2-byte data bus to the GTP.
    output          TX_RESET;               // Reset TX side of GTP logic.
    input           INIT_CLK;
    output          LINK_RESET_OUT;         // Link reset for hotplug scenerio.
    input           HPCNT_RESET;            // Hotplug count reset input 

    // Comma Detect Phase Align Interface
    output          ENA_COMMA_ALIGN;        // Request comma alignment.

    // TX_LL Interface
    input           GEN_SCP;                // SCP generation request from TX_LL.
    input           GEN_ECP;                // ECP generation request from TX_LL.
    input           GEN_PAD;                // PAD generation request from TX_LL.
    input   [0:15]  TX_PE_DATA;             // Data from TX_LL to send over lane.
    input           TX_PE_DATA_V;           // Indicates TX_PE_DATA is Valid.
    input           GEN_CC;                 // CC generation request from TX_LL.

    // RX_LL Interface
    output          RX_PAD;                 // Indicates lane received PAD.
    output  [0:15]  RX_PE_DATA;             // RX data from lane to RX_LL.
    output          RX_PE_DATA_V;           // RX_PE_DATA is data, not control symbol.
    output          RX_SCP;                 // Indicates lane received SCP.
    output          RX_ECP;                 // Indicates lane received ECP.

    // Global Logic Interface
    input           GEN_A;                  // 'A character' generation request from Global Logic.
    input   [0:1]   GEN_K;                  // 'K character' generation request from Global Logic.
    input   [0:1]   GEN_R;                  // 'R character' generation request from Global Logic.
    input   [0:1]   GEN_V;                  // Verification data generation request.
    output          LANE_UP;                // Lane is ready for bonding and verification.
    output          SOFT_ERR;               // Soft error detected.
    output          HARD_ERR;               // Hard error detected.
    output          CHANNEL_BOND_LOAD;      // Channel Bonding done code recieved.
    output  [0:1]   GOT_A;                  // Indicates lane recieved 'A character' bytes.
    output          GOT_V;                  // Verification symbols received.
    input           CHANNEL_UP;


    // System Interface
    input           USER_CLK;               // System clock for all non-GTP Aurora Logic.
    input           RESET_SYMGEN;           // Reset the SYM_GEN module.
    input           RESET;                  // Reset the lane.


//*********************************Wire Declarations**********************************

    wire            rx_cc_i;
    wire            gen_k_i;
    wire    [0:1]   gen_sp_data_i;
    wire    [0:1]   gen_spa_data_i;
    wire            rx_sp_i;
    wire            rx_spa_i;
    wire            rx_neg_i;
    wire            enable_err_detect_i;
    wire            do_word_align_i;
    wire            hard_err_reset_i;

//*********************************Main Body of Code**********************************

    // Lane Initialization state machine
    aurora_8b10b_LANE_INIT_SM lane_init_sm_i
    (
        // GTP Interface
        .RX_NOT_IN_TABLE(RX_NOT_IN_TABLE),
        .RX_DISP_ERR(RX_DISP_ERR),
        .RX_CHAR_IS_COMMA(RX_CHAR_IS_COMMA),
        .RX_REALIGN(RX_REALIGN),

        .RX_RESET(RX_RESET),
        .TX_RESET(TX_RESET),
        .RX_POLARITY(RX_POLARITY),

        // Comma Detect Phase Alignment Interface
        .ENA_COMMA_ALIGN(ENA_COMMA_ALIGN),

        // Symbol Generator Interface
        .GEN_K(gen_k_i),
        .GEN_SP_DATA(gen_sp_data_i),
        .GEN_SPA_DATA(gen_spa_data_i),

        // Symbol Decoder Interface
        .RX_SP(rx_sp_i),
        .RX_SPA(rx_spa_i),
        .RX_NEG(rx_neg_i),

        .DO_WORD_ALIGN(do_word_align_i),

        // Error Detection Logic Interface
        .HARD_ERR_RESET(hard_err_reset_i),

        .ENABLE_ERR_DETECT(enable_err_detect_i),

        // Global Logic Interface
        .LANE_UP(LANE_UP),

        // System Interface
        .USER_CLK(USER_CLK),
        .RESET(RESET)

    );


    // Channel Bonding Count Decode module
    aurora_8b10b_CHBOND_COUNT_DEC chbond_count_dec_i
    (
        .RX_STATUS(RX_STATUS),
        .CHANNEL_BOND_LOAD(CHANNEL_BOND_LOAD),
        .USER_CLK(USER_CLK)
    );


    // Symbol Generation module
    aurora_8b10b_SYM_GEN sym_gen_i
    (
        // TX_LL Interface
        .GEN_SCP(GEN_SCP),
        .GEN_ECP(GEN_ECP),
        .GEN_PAD(GEN_PAD),
        .TX_PE_DATA(TX_PE_DATA),
        .TX_PE_DATA_V(TX_PE_DATA_V),
        .GEN_CC(GEN_CC),

        // Global Logic Interface
        .GEN_A(GEN_A),
        .GEN_K(GEN_K),
        .GEN_R(GEN_R),
        .GEN_V(GEN_V),

        // Lane Init SM Interface
        .GEN_K_FSM(gen_k_i),
        .GEN_SP_DATA(gen_sp_data_i),
        .GEN_SPA_DATA(gen_spa_data_i),

        // GT Interface
        .TX_CHAR_IS_K({TX_CHAR_IS_K[0],TX_CHAR_IS_K[1]}),
        .TX_DATA({TX_DATA[7:0],TX_DATA[15:8]}),

        // System Interface
        .USER_CLK(USER_CLK),
        .RESET(RESET_SYMGEN)
    );


    // Symbol Decode module
    aurora_8b10b_SYM_DEC sym_dec_i
    (
        // RX_LL Interface
        .RX_PAD(RX_PAD),
        .RX_PE_DATA(RX_PE_DATA),
        .RX_PE_DATA_V(RX_PE_DATA_V),
        .RX_SCP(RX_SCP),
        .RX_ECP(RX_ECP),

        // Lane Init SM Interface
        .DO_WORD_ALIGN(do_word_align_i),

        .RX_SP(rx_sp_i),
        .RX_SPA(rx_spa_i),
        .RX_NEG(rx_neg_i),

        // Global Logic Interface
        .GOT_A(GOT_A),
        .GOT_V(GOT_V),

        .RX_CC(rx_cc_i),

        // GT Interface
        .RX_DATA({RX_DATA[7:0],RX_DATA[15:8]}),
        .RX_CHAR_IS_K({RX_CHAR_IS_K[0],RX_CHAR_IS_K[1]}),
        .RX_CHAR_IS_COMMA({RX_CHAR_IS_COMMA[0],RX_CHAR_IS_COMMA[1]}),

        // System Interface
        .USER_CLK(USER_CLK),
        .RESET(RESET)
    );


    // Error Detection module
    aurora_8b10b_ERR_DETECT err_detect_i
    (
        // Lane Init SM Interface
        .ENABLE_ERR_DETECT(enable_err_detect_i),

        .HARD_ERR_RESET(hard_err_reset_i),

        // Global Logic Interface
        .SOFT_ERR(SOFT_ERR),
        .HARD_ERR(HARD_ERR),

        // GTP Interface
        .RX_BUF_ERR(RX_BUF_ERR),
        .RX_DISP_ERR({RX_DISP_ERR[0],RX_DISP_ERR[1]}),
        .RX_NOT_IN_TABLE({RX_NOT_IN_TABLE[0],RX_NOT_IN_TABLE[1]}),
        .TX_BUF_ERR(TX_BUF_ERR),
        .RX_REALIGN(RX_REALIGN),

        // System Interface
        .USER_CLK(USER_CLK)
    );

    // Hot Plug module
    aurora_8b10b_hotplug #
    (   
        .EXAMPLE_SIMULATION (EXAMPLE_SIMULATION)
    )
    aurora_8b10b_hotplug_i
    (
        // Sym Dec Interface
        .RX_CC(rx_cc_i),
        .RX_SP(rx_sp_i),
        .RX_SPA(rx_spa_i),

        // GT Wrapper Interface
        .LINK_RESET_OUT(LINK_RESET_OUT),
        .HPCNT_RESET(HPCNT_RESET),

        // System Interface
        .INIT_CLK(INIT_CLK),
        .USER_CLK(USER_CLK),
        .RESET(RESET)
    );


endmodule
