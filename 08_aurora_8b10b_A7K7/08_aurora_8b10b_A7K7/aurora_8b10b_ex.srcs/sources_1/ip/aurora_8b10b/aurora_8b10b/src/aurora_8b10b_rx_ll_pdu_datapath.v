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
//  RX_LL_PDU_DATAPATH
//
//
//  Description: the RX_LL_PDU_DATAPATH module takes regular PDU data in Aurora format
//               and transforms it to LocalLink formatted data
//
//               This module supports 1 2-byte lane designs
//             
//

`timescale 1 ns / 1 ps

module aurora_8b10b_RX_LL_PDU_DATAPATH
(

    //Traffic Separator Interface
    PDU_DATA,
    PDU_DATA_V,
    PDU_PAD,
    PDU_SCP,
    PDU_ECP,


    //LocalLink PDU Interface
    RX_D,
    RX_REM,
    RX_SRC_RDY_N,
    RX_SOF_N,
    RX_EOF_N,
   
   
    //Error Interface
    FRAME_ERR,


    //System Interface
    USER_CLK,
    RESET
);

`define DLY #1


//***********************************Port Declarations*******************************
   
  
    //Traffic Separator Interface
    input   [0:15]  PDU_DATA;
    input   [0:0]  PDU_DATA_V;
    input   [0:0]  PDU_PAD;
    input   [0:0]  PDU_SCP;
    input   [0:0]  PDU_ECP;
      
   
    //LocalLink Interface
    output  [0:15]  RX_D;             
    output  [0:0]  RX_REM;           
    output          RX_SRC_RDY_N;
    output          RX_SOF_N;
    output          RX_EOF_N;
   
   
    //Error Interface
    output          FRAME_ERR;
   
   
    //System Interface
    input                           USER_CLK;
    input                           RESET;


   
//****************************External Register Declarations**************************

    reg     [0:15]  RX_D;   
   
    reg     [0:0]  RX_REM;           
    reg             RX_SRC_RDY_N;
    reg             RX_SOF_N;
    reg             RX_EOF_N;    
    reg             FRAME_ERR;


//****************************Internal Register Declarations**************************
    reg     [0:15]  storage_r;
    reg             storage_v_r;
    reg             in_frame_r;
    reg             sof_in_storage_r;
    reg             pad_in_storage_r;
   



//*********************************Wire Declarations**********************************
    wire            src_rdy_n_c;
    wire            storage_ce_c;
   
   
   
  
//*********************************Main Body of Code**********************************
   
   
   
   


    //All input goes into a storage register before it is sent on to the output
    always @(posedge USER_CLK)
        if(storage_ce_c)            storage_r   <=  `DLY    PDU_DATA;
      
   
    //Keep track of whether or not there is data in storage
    always @(posedge USER_CLK)
        if(RESET)                   storage_v_r <=  `DLY    1'b0;
        else if(storage_ce_c)       storage_v_r <=  `DLY    1'b1;
        else if(storage_v_r)        storage_v_r <=  `DLY    src_rdy_n_c;
   
   
    //Output data is registered
    always @(posedge USER_CLK)
        RX_D    <=  `DLY    storage_r;
       
       
    //Assert the SRC_RDY_N signal when there is data in storage and incomiming data or the
    // end of a frame
    assign  src_rdy_n_c =   ~(storage_v_r & (storage_ce_c |PDU_ECP[0]));
   
   
    //Register the SRC_RDY_N signal
    always @(posedge USER_CLK)
        if(RESET)   RX_SRC_RDY_N   <=  `DLY 1'b1;
        else        RX_SRC_RDY_N   <=  `DLY src_rdy_n_c;
   
   
    //Load data into storage when there is valid incoming data
    assign  storage_ce_c    =   in_frame_r & PDU_DATA_V;
   
   
    //Data is in a frame when it is preceded by an SOF followed by any number of non-ecp characters
    always @(posedge USER_CLK)
        if(RESET)           in_frame_r  <=  `DLY    1'b0;
        else if(PDU_SCP[0]) in_frame_r  <=  `DLY    1'b1;
        else if(PDU_ECP[0]) in_frame_r  <=  `DLY    1'b0;
       
   
    //Hold start of frame until it can be asserted with data
    always @(posedge USER_CLK)
        if(PDU_SCP[0])              sof_in_storage_r    <=  `DLY    1'b1;
        else if(sof_in_storage_r)   sof_in_storage_r    <=  `DLY    src_rdy_n_c;
       
       
    //Register sof_in_storage for use on the LocalLink Interface
    always @(posedge USER_CLK)
        RX_SOF_N    <=  `DLY    ~sof_in_storage_r;
       
       
    //Register eof for use on the LocalLink Interface
    always @(posedge USER_CLK)
        RX_EOF_N    <=  `DLY    ~PDU_ECP[0];
       
       
    //Store the pad signal for any data that gets moved into storage
    always @(posedge USER_CLK)
        if(storage_ce_c)    pad_in_storage_r    <=   `DLY   PDU_PAD[0];
       
       
    //Register the pad signal for use on the LocalLink inteface   
    always @(posedge USER_CLK)
        RX_REM  <=  `DLY    !pad_in_storage_r;
       
       
    //Indicate a frame error when a start arrives inframe, and end arrives out
    // of frame, or an end arrives with no data in storage, indicating an empty
    // frame
    always @(posedge USER_CLK)
        FRAME_ERR <=  `DLY    (PDU_SCP[0] && in_frame_r) ||
                                (PDU_ECP[0] && !in_frame_r) ||
                                (PDU_ECP[0] && !storage_v_r);




endmodule


