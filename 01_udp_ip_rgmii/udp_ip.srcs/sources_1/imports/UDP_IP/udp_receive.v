//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: udp_send udp_receive 模块从 ip_receive 模块接收 UDP 报文。
//#             本模块不对 UDP 首部进行校验和计算，提取其中的目的端口号和报文长度，
//#             计算出上层数据包长度输出。最后除去 8 字节的报文首部，
//#             得到上层协议数据包，依次输出至上层协议模块。 
//# @Modification History: 2019-05-19 20:58:19
//# Date			    By			   VerDATAn			   Change Description: 
//# ========================================================================= #
//# 2020-03			   MIZ               V0.0					NEW
//# ========================================================================= #
//# |                                          								| #
//# |                                OpenFPGA     							| #
//****************************************************************************//
/*--------------------------------Block Description----------------------------------
reset          ------|               |-----udp_tx_ready
phy_tx_clk--     ----|               |-----app_tx_ack
phy_rx_clk-     -----|               |-----
reset          ------|               |-----
app_tx_request ------|               |-----
-------------------------------------------------------------------------------------
*/
`timescale 1ns / 1ps

module udp_receive(
	input wire        udp_receive_clk,				//时钟信号
	input wire        reset,						//复位信号，高电平有效
	input wire        udp_data_in_valid,			//本模块从外部所接收的数据输出有效信号，高电平有效
	input wire [7:0]  udp_data_in,					//本模块从外部所接收的数据输出

	output reg        app_data_out_valid,			//本模块x向外部所发送的数据输出有效信号，高电平有效
	output reg [7:0]  app_data_out,					//发送的数据输出
	output reg [15:0] app_data_length,				//当前数据包的长度（不含udp、ip、mac 首部），单位：字节
	output wire [15:0]app_data_src_port_num			//数据包的源端口号
);

reg  [3:0]   cnt;
reg  [15:0]  udp_data_cnt;
reg  [15:0]  udp_source_port, udp_dest_port; 
reg  [15:0]  udp_packet_length;

assign    app_data_src_port_num = udp_source_port;

always @(posedge udp_receive_clk or posedge reset) 
   begin
		if(reset) begin
			cnt <= 4'd0;
			app_data_out_valid <= 1'b0;
			app_data_out <= 8'd0;
			udp_source_port <= 16'd0;
			udp_dest_port <= 16'd0;
			udp_packet_length <= 16'd0;
			app_data_length <= 16'd0;
			udp_data_cnt <= 16'd0;
		end
		else if(udp_data_in_valid) begin
			udp_data_cnt <= udp_data_cnt + 1'b1;
			case(cnt) 
				0: begin  udp_source_port[15:8]   <= udp_data_in; cnt <= cnt + 1'b1; end
				1: begin  udp_source_port[7:0]    <= udp_data_in; cnt <= cnt + 1'b1; end
				2: begin  udp_dest_port[15:8]     <= udp_data_in; cnt <= cnt + 1'b1; end
				3: begin  udp_dest_port[7:0]      <= udp_data_in; cnt <= cnt + 1'b1; end
				4: begin  udp_packet_length[15:8] <= udp_data_in; cnt <= cnt + 1'b1; end
				5: begin  udp_packet_length[7:0]  <= udp_data_in; cnt <= cnt + 1'b1; end
				6: begin  cnt <= cnt + 1'b1; end
				7: begin  cnt <= cnt + 1'b1; end
				8: begin
						app_data_out_valid <= 1'b1;
						app_data_out <= udp_data_in;
                  app_data_length <= udp_packet_length - 16'd8;						
						cnt <= cnt + 1'b1;
					end
				9: begin
						if(udp_packet_length < 16'd26) begin
							if(udp_data_cnt == udp_packet_length) begin
								app_data_out_valid <= 1'b0;
								app_data_out <= 8'd0;
								cnt <= cnt + 1'b1;
							end
							else begin
								app_data_out_valid <= 1'b1;
								app_data_out <= udp_data_in;
								cnt <= cnt;
							end
						end
						else begin
						    app_data_out_valid <= 1'b1;
							app_data_out <= udp_data_in;
							cnt <= cnt;
						end
					end
				10: begin
						app_data_out_valid <= 1'b0;
						app_data_out <= 8'd0;
						cnt <= cnt;
					end
				default: cnt <= 0;
			endcase
		end
		else if(!udp_data_in_valid) begin
		   udp_packet_length <= 16'd0;
			app_data_length <= 16'd0;
			udp_source_port <= 16'd0;
			udp_dest_port <= 16'd0;
         app_data_out <= 8'd0;
			app_data_out_valid <= 1'b0;
			cnt <= 4'd0;
			udp_data_cnt <= 16'd0;
		end
	end


endmodule
