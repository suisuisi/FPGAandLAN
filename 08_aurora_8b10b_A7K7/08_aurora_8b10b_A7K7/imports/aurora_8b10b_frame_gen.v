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

//
//  FRAME GEN
//
//
//
//  Description: This module is a pattern generator to test the Aurora
//               designs in hardware. It generates data and passes it
//               through the Aurora channel. If connected to a framing
//               interface, it generates frames of varying size and
//               separation. LFSR is used to generate the pseudo-random
//               data and lower bits of LFSR are connected to REM bus

`timescale 1 ns / 1 ps
`define DLY #1

module aurora_8b10b_FRAME_GEN
(
    // User Interface
    TX_D, 
    TX_REM,    
    TX_SOF_N,      
    TX_EOF_N,
    TX_SRC_RDY_N,
    TX_DST_RDY_N,

    // System Interface
    USER_CLK,      
    RESET,
    CHANNEL_UP
);
//*****************************Parameter Declarations****************************

//***********************************Port Declarations*******************************

   // User Interface
output  [0:15]     TX_D;
output             TX_REM;
output             TX_SOF_N;
output             TX_EOF_N;
output             TX_SRC_RDY_N;
input              TX_DST_RDY_N;

      // System Interface
input              USER_CLK;
input              RESET; 
input              CHANNEL_UP;

//***************************External Register Declarations***************************

reg                TX_SRC_RDY_N;
reg                TX_SOF_N;
reg                TX_EOF_N;    

//***************************Internal Register Declarations***************************

reg     [0:15]     data_lfsr_r;    
reg     [0:7]      frame_size_r;
reg     [0:7]      bytes_sent_r;
reg     [0:3]      ifg_size_r;
   
    //State registers for one-hot state machine
reg                idle_r;
reg                single_cycle_frame_r;
reg                sof_r;
reg                data_cycle_r;
reg                eof_r;    
   
wire               reset_c;
//*********************************Wire Declarations**********************************
  
wire               ifg_done_c;
   
    //Next state signals for one-hot state machine
wire               next_idle_c;
wire               next_single_cycle_frame_c;
wire               next_sof_c;
wire               next_data_cycle_c;
wire               next_eof_c;



    wire       dly_data_xfer;
    reg [4:0]  channel_up_cnt;

//*********************************Main Body of Code**********************************

  always @ (posedge USER_CLK)
  begin
    if(RESET)
        channel_up_cnt <= `DLY 5'd0;
    else if(CHANNEL_UP)
      if(&channel_up_cnt)
        channel_up_cnt <= `DLY channel_up_cnt;
      else 
        channel_up_cnt <= `DLY channel_up_cnt + 1'b1;
    else
      channel_up_cnt <= `DLY 5'd0;
  end

  assign dly_data_xfer = (&channel_up_cnt);

  //Generate RESET signal when Aurora channel is not ready
  assign reset_c = RESET || !dly_data_xfer;

    //______________________________ Transmit Data  __________________________________   
    //Generate random data using XNOR feedback LFSR
    //随机数发生器
    always @(posedge USER_CLK)
        if(reset_c)
        begin
            data_lfsr_r          <=  `DLY    16'hABCD;  //random seed value
        end
        else if(!TX_DST_RDY_N && !idle_r)
        begin
            data_lfsr_r          <=  `DLY    {!{data_lfsr_r[3]^data_lfsr_r[12]^data_lfsr_r[14]^data_lfsr_r[15]},
                                data_lfsr_r[0:14]};
        end
  
    //Connect TX_D to the DATA LFSR
    assign  TX_D    =   {1{data_lfsr_r}};
  
    //Tie DATA LFSR to REM to generate random words
    assign  TX_REM  = data_lfsr_r[0:0];
  

    //Use a counter to determine the size of the next frame to send
    //frame_size_r 帧计数同时也是每一次帧发送的最大数据个数
    always @(posedge USER_CLK)
        if(reset_c)  
            frame_size_r    <=  `DLY    8'h00;
        else if(single_cycle_frame_r || eof_r)// 一个循环的开始或者一帧结束计数
            frame_size_r    <=  `DLY    frame_size_r + 1;
           
    //Use a second counter to determine how many bytes of the frame have already been sent
    //bytes_sent_r计数器计数一次帧传输发送的最大数据个数
    always @(posedge USER_CLK)
        if(reset_c)
            bytes_sent_r    <=  `DLY    8'h00;
        else if(sof_r)
            bytes_sent_r    <=  `DLY    8'h01;
        else if(!TX_DST_RDY_N && !idle_r)
            bytes_sent_r    <=  `DLY    bytes_sent_r + 1;
   
   
    //Use a freerunning counter to determine the IFG
    //这个就是一个计数器用来控制ifg_done_c这个变量
    always @(posedge USER_CLK)
        if(reset_c)
            ifg_size_r      <=  `DLY    4'h0;
        else
            ifg_size_r      <=  `DLY    ifg_size_r + 1;
           
    //IFG is done when ifg_size register is 0
    assign  ifg_done_c  =   (ifg_size_r == 4'h0);   
   
    //_____________________________ Framing State machine______________________________
    //Use a state machine to determine whether to start a frame, end a frame, send
    //data or send nothing
   //下面的状态机决定了是启动一个帧传输，还是发送一帧数据，或者发送数据，或者什么都不发送
    //State registers for 1-hot state machine
    always @(posedge USER_CLK)
        if(reset_c)
        begin
            idle_r                  <=  `DLY    1'b1;
            single_cycle_frame_r    <=  `DLY    1'b0;
            sof_r                   <=  `DLY    1'b0;
            data_cycle_r            <=  `DLY    1'b0;
            eof_r                   <=  `DLY    1'b0;
        end
        else if(!TX_DST_RDY_N)
        begin
            idle_r                  <=  `DLY    next_idle_c;//空闲状态
            single_cycle_frame_r    <=  `DLY    next_single_cycle_frame_c;//start aframe 第一帧数据的开始
            sof_r                   <=  `DLY    next_sof_c;//sof 一帧数据的开始
            data_cycle_r            <=  `DLY    next_data_cycle_c;//下一帧
            eof_r                   <=  `DLY    next_eof_c;
        end
       
       
    //Nextstate logic for 1-hot state machine
    

  //在bytes_sent_r值为1-15期间锁存包括single_cycle_frame_r，eof_r，idle_r信号到idle_r
  //满足条件是  ifg_done_c ==0（即bytes_sent_r计数器工作在1-15期间）
                                            //以下三种情况将产生idle_r
                                            //1)single_cycle_frame_r代表一帧新的数据开始 
                                            //2）eof_r代表一帧传送完成   
                                            //3）idle_r代表空闲可以传输数据，在这里还起到所存作用
    assign  next_idle_c                 =   !ifg_done_c &&//ifg_done_c==0
                                            (single_cycle_frame_r || eof_r || idle_r);
 //满足条件是  ifg_done_c ！=0（即bytes_sent_r=0）并且frame_size_r==0（分复位后以及循环计数归0）
                                            //以下三种情况将产生single_cycle_frame_r
                                            //1)idle_r代表空闲可以传输数据；
                                            //2）single_cycle_frame_r 锁存作用
                                            //3）eof_r代表一帧传送完成
    assign  next_single_cycle_frame_c   =   (ifg_done_c && (frame_size_r == 0)) &&
                                            (idle_r || single_cycle_frame_r || eof_r);
 //在bytes_sent_r值为0的时候锁存包括single_cycle_frame_r，eof_r，idle_信号到sof_c                            
 //满足条件是  ifg_done_c ！=0（即bytes_sent_r=0）并且frame_size_r！=0
                                            //以下三种情况将产生sof_r
                                            //1)idle_r代表空闲；
                                            //2）single_cycle_frame_r 代表每个循环第一帧
                                           //3）eof_r代表一帧传送完成                                               
    assign  next_sof_c                  =   (ifg_done_c && (frame_size_r != 0)) &&
                                            (idle_r || single_cycle_frame_r || eof_r);
  // frame_size_r != bytes_sent_r的时候 锁存  sof_r 和data_cycle_r 到data_cycle_r                                
    assign  next_data_cycle_c           =   (frame_size_r != bytes_sent_r) &&
                                            (sof_r || data_cycle_r);
  //满足条件是  frame_size_r == bytes_sent_r的时候锁存sof_r和data_cycle_r到eof_c
                                         //以下两种情况将产生eof_r
                                         //1)sof_r代表一帧开始；
                                         //2）data_cycle_r 代表每个帧发送阶段                                                
    assign  next_eof_c                  =   (frame_size_r == bytes_sent_r) &&//一帧发送完毕
                                            (sof_r || data_cycle_r);//
   
   
    //Output logic for 1-hot state machine
    always @(posedge USER_CLK)
        if(reset_c)
        begin
            TX_SOF_N        <=  `DLY    1'b1;
            TX_EOF_N        <=  `DLY    1'b1;
            TX_SRC_RDY_N    <=  `DLY    1'b1;   
        end
        else if(!TX_DST_RDY_N)
        begin
            TX_SOF_N        <=  `DLY    !(sof_r || single_cycle_frame_r);//axi Stream 总线接口 sof
            TX_EOF_N        <=  `DLY    !(eof_r || single_cycle_frame_r);//axi Stream 总线接口 eof
            TX_SRC_RDY_N    <=  `DLY    idle_r;//axi valid
        end  
        
               

endmodule
