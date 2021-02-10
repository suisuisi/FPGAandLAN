//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: 本模块从 mac_receive 模块接收 mac 发送暂停使能信号、暂停持续时间
//#              和暂停 mac 地址。根据mac_send 模块的工作状态机，向 mac_send 模块输出
//#              发送暂停控制信号，从而达到对 mac_send 模块进行发送方向流量控制的目的。
//# @Modification History: 2019-05-19 20:58:19
//# Date			    By			   VerDATAn			   Change Description: 
//# ========================================================================= #
//# 2020-03			   MIZ               V0.0					NEW
//# ========================================================================= #
//# |                                          								| #
//# |                                OpenFPGA     							| #
//****************************************************************************//
/*--------------------------------Block Description----------------------------------
clk            ------|               |-----udp_tx_ready
phy_tx_clk--     ----|               |-----app_tx_ack
phy_rx_clk-     -----|               |-----
reset          ------|               |-----
app_tx_request ------|               |-----
-------------------------------------------------------------------------------------

*/
`timescale 1ns / 1ps

module mac_send_flow_control(
		input            	 clk,
		input 			 	 reset,
		input [2:0]        mac_send_state,
		input              mac_send_pause_en,
		input [21:0]    	 mac_send_pause_time,
		input [47:0]    	 pause_mac_address,
		output reg [47:0]	 pause_dst_mac_address,
		output reg         pause_flag
    );



reg [21:0]     pause_clk_num;
reg [21:0]     pause_clk_cnt;
reg [1:0]      STATE;

localparam WAIT_PAUSE_FRAME        = 2'd0;
localparam WAIT_CURRENT_SEND_DONE  = 2'd1;
localparam MAC_SEND_PAUSE          = 2'd2;

localparam ADD_IFG   = 3'd4;

always@(posedge clk or posedge reset)
   begin
		if(reset) begin
		   pause_clk_num  <= 22'd0;
			pause_dst_mac_address <= 48'd0;
			pause_flag <= 1'b0;
			pause_clk_cnt <= 22'd0;
			STATE <= WAIT_PAUSE_FRAME;
		end
		else begin
		   case(STATE)
				WAIT_PAUSE_FRAME:
					begin								
						pause_flag <= 1'b0;
						if(mac_send_pause_en) begin					   
							pause_clk_num <= mac_send_pause_time;
							pause_dst_mac_address <= pause_mac_address;
							STATE <= WAIT_CURRENT_SEND_DONE;
						end
						else begin
						   pause_clk_num  <= 22'd0;
							pause_dst_mac_address <= 48'd0;
						   STATE <= WAIT_PAUSE_FRAME;
						end
					end
				WAIT_CURRENT_SEND_DONE:
				   begin
						if(mac_send_state == ADD_IFG)begin
						   pause_flag <= 1'b1;
							STATE <= MAC_SEND_PAUSE;
						end
						else begin
							pause_flag <= 1'b0;
							STATE <= WAIT_CURRENT_SEND_DONE;
						end
					end
				MAC_SEND_PAUSE:
					begin
					   if(pause_clk_cnt == (pause_clk_num - 3)) begin
						   pause_clk_cnt <= 22'd0;
						   pause_flag <= 1'b0;
							pause_clk_num <= 22'd0;
							pause_dst_mac_address <= 48'd0;
							STATE <= WAIT_PAUSE_FRAME;
						end
						else begin
						   pause_flag <= 1'b1;
						   pause_clk_cnt <= pause_clk_cnt + 1'b1;
							STATE <= MAC_SEND_PAUSE;
						end
					end
			endcase
		end
	end
	
endmodule
