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
//  RX_LL
//
//
//  Description: The RX_LL module receives data from the Aurora Channel,
//               converts it to LocalLink and sends it to the user interface.
//               It also handles NFC and UFC messages.
//
//               This module supports 1 2-byte lane designs.
//
//

`timescale 1 ns / 1 ps

module aurora_8b10b_RX_LL
(
    // LocalLink PDU Interface
    RX_D,
    RX_REM,
    RX_SRC_RDY_N,
    RX_SOF_N,
    RX_EOF_N,


    // Global Logic Interface
    START_RX,


    // Aurora Lane Interface
    RX_PAD,
    RX_PE_DATA,
    RX_PE_DATA_V,
    RX_SCP,
    RX_ECP,


    // Error Interface
    FRAME_ERR,


    // System Interface
    USER_CLK


);

`define DLY #1


//***********************************Port Declarations*******************************


    // LocalLink PDU Interface
output  [0:15]     RX_D;
output             RX_REM;
output             RX_SRC_RDY_N;
output             RX_SOF_N;
output             RX_EOF_N;


    // Global Logic Interface
input              START_RX;


    // Aurora Lane Interface
input              RX_PAD;
input   [0:15]     RX_PE_DATA;
input              RX_PE_DATA_V;
input              RX_SCP;
input              RX_ECP;


    // Error Interface
output             FRAME_ERR;

    // System Interface
input              USER_CLK;




wire               rx_ll_rst;

//*********************************Main Body of Code**********************************

   assign rx_ll_rst = ~START_RX;







    aurora_8b10b_RX_LL_PDU_DATAPATH rx_ll_pdu_datapath_i
    (

        // Traffic Separator Interface
        .PDU_DATA(RX_PE_DATA),
        .PDU_DATA_V(RX_PE_DATA_V),
        .PDU_PAD(RX_PAD),
        .PDU_SCP(RX_SCP),
        .PDU_ECP(RX_ECP),


        // LocalLink PDU Interface
        .RX_D(RX_D),
        .RX_REM(RX_REM),
        .RX_SRC_RDY_N(RX_SRC_RDY_N),
        .RX_SOF_N(RX_SOF_N),
        .RX_EOF_N(RX_EOF_N),


        // Error Interface
        .FRAME_ERR(FRAME_ERR),


        // System Interface
        .USER_CLK(USER_CLK),
        .RESET(rx_ll_rst)
    );





endmodule
