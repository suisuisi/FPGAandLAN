//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: udp_send udp_send 模块从上层协议模块接收数据、数据包长度和目的端口号，在数据包前端添加相应的 8 字
//# 			节的 UDP 首部，由于本模块不进行首部校验和计算，因此，将首部中的检验和字段全部置 0。最后，
//#             将封装完成的 UDP 报文及报文长度输出至 ip_send 模块。上局模块向本模块发送数据以及本模块向
//#             ip_send 模块发送数据时均迚行需要迚行插手通信。 
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

module udp_send #
(
   parameter LOCAL_PORT_NUM = 16'hf000    //源端口号
)
(
	input wire         udp_send_clk,					//时钟信号
	input wire         reset,							//复位信号，高电平有效

	//from software app
	input wire           app_data_in_valid,				  //本模块从外部所接收的数据输出有效信号，高电平有效
	input wire [7:0]     app_data_in,                     //本模块从外部所接收的数据输出
    input wire [15:0]	 app_data_length,                 //本模块从外部所接收的当前数据包的长度（不含udp、ip、mac 首部），单位：字节
	input wire [15:0]	 udp_dest_port,                   //本模块从外部所接收的数据包的源端口号
	input wire           app_data_request,				 //用户接口数据发送请求，高电平有效

	output wire          udp_send_ready,				 //握手是基于 ready、request、ack三个信号来实现的
	output wire          udp_send_ack,                   //握手是基于 ready、request、ack三个信号来实现的
	                                                     
	input wire           ip_send_ready,                  //握手是基于 ready、request、ack三个信号来实现的
	input wire           ip_send_ack,                    //握手是基于 ready、request、ack三个信号来实现的
	//to IP_send
	output wire          udp_send_request,				//用户接口数据发送请求，高电平有效
	output reg           udp_data_out_valid,			//发送的数据输出有效信号，高电平有效	
	output reg [7:0]     udp_data_out,					//发送的数据输出
	output reg [15:0]    udp_packet_length				//当前数据包的长度（不含udp、ip、mac 首部），单位：字节
);

reg [3:0]   cnt; 
//reg [3:0]   bufcnt;
//reg [7:0]  udp_data_out;
wire [7:0]  shift_data_out;
reg  [15:0] trans_data_cnt;
//reg  [4:0] pad_cnt;
reg  [1:0] STATE;
//reg [15:0]  accum;
//reg [16:0]  tmp_accum;
//reg [15:0]  CHECKSUM;

localparam  IDLE = 2'd0;
localparam  WAIT_ACK = 2'd1;
localparam  SEND_UDP_HEADER = 2'd2;
localparam  SEND_UDP_PACKET = 2'd3;

localparam  CHECKSUM = 16'h0000;        //假如UDP包不使用校验和功能，校验和部分需全部置0


assign udp_send_ready = ip_send_ready;
assign udp_send_request = app_data_request;
assign udp_send_ack = ip_send_ack;

shift udp_shfit_register           //8个级联的移位寄存器组
(
     .D(app_data_in), // input [7 : 0] d
     .CLK(udp_send_clk), // input clk
     .CE(app_data_in_valid | udp_data_out_valid), // input ce
     .Q(shift_data_out) // output [7 : 0] q
);

always @(posedge udp_send_clk or posedge reset) 
   begin
	   if(reset) begin
			cnt <= 4'h0;
			//bufcnt <= 4'h8;
			udp_data_out_valid <= 1'b0;
			udp_data_out <= 8'd0;
			udp_packet_length <= 16'd0;
			trans_data_cnt <= 16'd0;
			//pad_cnt <= 5'd0;
			STATE <= 2'd0;
	   end
	   else begin
			case(STATE)
				IDLE:
					begin
						if(udp_send_request & ip_send_ready)
							STATE <= WAIT_ACK;
						else
							STATE <= IDLE;
					end
				WAIT_ACK:
					begin
						if(ip_send_ack)
							STATE <= SEND_UDP_HEADER;
						else
							STATE <= WAIT_ACK;
					end
				SEND_UDP_HEADER:
					begin
						case (cnt) 
							0: begin
								if(app_data_in_valid) begin
									udp_data_out <= LOCAL_PORT_NUM[15:8];
									udp_data_out_valid <= 1'b1;
									udp_packet_length <= app_data_length + 16'h0008;       //UDP报文长度
									cnt <= cnt + 1'b1;
									// bufcnt <= 4'h8;
									// if(app_data_length < 16'd18)
										// pad_cnt <= 16'd18 - app_data_length;
									// else
										// pad_cnt <= 5'd0;
								end
								else
									cnt <= 4'd0;
			//					tmp_accum = LOCAL_PORT_NUM + udp_dest_port;     //阻塞赋值
			//					accum <= tmp_accum[15:0] + tmp_accum[16];
							end
							1: begin
								udp_data_out <= LOCAL_PORT_NUM[7:0];
			//					tmp_accum = accum + udp_packet_length;
			//					CHECKSUM <= ~(tmp_accum[15:0] + tmp_accum[16]);
								cnt <= cnt + 1'b1;
								end
							2: begin
								udp_data_out <= udp_dest_port[15:8];
								cnt <= cnt + 1'b1;
								end
							3: begin
								udp_data_out <= udp_dest_port[7:0];
								cnt <= cnt + 1'b1;
								end
							4: begin
								udp_data_out <= udp_packet_length[15:8];
								cnt <= cnt + 1'b1;
								end
							5: begin
								udp_data_out <= udp_packet_length[7:0];
								cnt <= cnt + 1'b1;
								end
							6: begin	
								udp_data_out <= CHECKSUM[15:8];
								cnt <= cnt + 1'b1;
								end
							7: begin
								udp_data_out <= CHECKSUM[7:0];
								STATE <= SEND_UDP_PACKET;
								cnt <= 4'h0;
								//cnt <= cnt + 1'b1;
								end
							// 8: begin
								// udp_data_out <= shift_data_out;
								// end
							default: cnt <= 4'h0;
						endcase
					end
				SEND_UDP_PACKET:
					begin
						if (trans_data_cnt != (udp_packet_length - 16'd8)) begin
							udp_data_out_valid <= 1'b1;
							udp_data_out <= shift_data_out;
							trans_data_cnt <= trans_data_cnt + 1'b1;
							STATE <= SEND_UDP_PACKET;
						end
						else begin
							// if(pad_cnt != 5'd0) begin
								// udp_data_out_valid <= 1'b1;
								// udp_data_out <= 8'd0;
								// pad_cnt <= pad_cnt - 1'b1;
							// end
							//else begin
								trans_data_cnt <= 16'd0;
								udp_data_out_valid <= 1'b0;
								udp_data_out <= 8'd0;
								udp_packet_length <= 16'd0;
								cnt <= 4'h0;
								STATE <= IDLE;
							//end
						end
					end
				default: STATE <= IDLE;
			endcase
	    end	
end

endmodule
