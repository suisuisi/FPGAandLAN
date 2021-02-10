//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: ip_layer 主要完成对 udp 报文的 ip 协议控制，其中包含了三个子模块 ip_send、ip_receive 和
//#             icmp_echo_data_fifo，分别完成对 ip 层协议数据的发送和接收。除此之外，在 ip_receive 中包含了
//#            解析 icmp 协议的子模块 icmp_packet_process，ip 首部校验和校验模块ip_header_checksum_check。
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

module ip_layer #
(
		parameter              LOCAL_IP_ADDRESS = 32'hc0a80a01
)
(
		input                   reset,						//复位信号，高电平有效
		input                   udp_tx_request,				//UDP发送接口数据发送请求，高电平有效
		input                   udp_tx_data_valid,			//UDP发送接口发送数据有效标志信号，高电平有效
		input [7:0] 			udp_tx_data,				//UDP发送接口所需发送的数据
		input [15:0]			udp_tx_data_length,			//UDP发送接口一次发送的数据包长度（不含 udp、ip、mac 首部），单位：字节
		
		output wire             udp_rx_data_valid,			//UDP接收接口发送数据有效标志信号，高电平有效
		output wire [7:0] 	    udp_rx_data,				//UDP接收接口所需发送的数据
		
		input                  	send_buffer_ready,			//握手是基于 ready、request、ack三个信号来实现的
		input					send_buffer_ack,            //握手是基于 ready、request、ack三个信号来实现的
		output wire            	ip_tx_ready,				//握手是基于 ready、request、ack三个信号来实现的
		output wire            	ip_tx_ack,                  //握手是基于 ready、request、ack三个信号来实现的
		
		input                  	ip_tx_clk,					//时钟信号
		input [31:0]			ip_tx_dst_address,			//用户接口数据包的发送源 ip 地址
		output wire				ip_tx_request,				//发送请求，高电平有效
		output wire             ip_tx_data_valid,			//发送数据有效标志信号，高电平有效
		output wire [7:0]       ip_tx_data,					//接口所需发送的数据
		output wire [31:0]	    ip_tx_address,				//用户接口数据包的发送目的 ip 地址
		
		input                   ip_rx_clk,					//时钟信号
		input                   ip_rx_data_valid,			//发送数据有效标志信号，高电平有效
		input [7:0]				ip_rx_data,					//接口所需发送的数据
		output                  ip_rx_error					//检验错误指示信号，低电平有效
    );
	 
localparam   VERSION          = 4'h4;          //IPv4
localparam 	 IHL              = 4'h5;          //IP包头大小，5*4=20Bytes
localparam	 TOS              = 8'h00;         //普通服务类型
localparam	 ID_BASE          = 16'h0000;      //IP包标识基准0
localparam 	 FLAG             = 3'b010;        //不允许IP分片，且发送的IP数据包为最后一个段
localparam	 FRAGMENT_OFFSET  = 13'd0;         //IP包分片偏移0

wire      		icmp_request_en;
wire [15:0]    icmp_request_id;
wire [15:0]    icmp_request_sq_num;
wire [31:0]    icmp_request_ip_address;
wire [15:0]   icmp_checksum;
wire          icmp_ping_echo_data_valid;
wire [7:0] 	  icmp_ping_echo_data_in;
wire [9:0]    icmp_ping_echo_data_length;	
wire     	  icmp_ping_echo_data_read;
wire [7:0] 	  icmp_ping_echo_data_out;


echo_data_fifo icmp_echo_data_fifo (
  .rst(reset),       						// input wire rst
  .wr_clk(ip_rx_clk),  						// input wire wr_clk
  .rd_clk(ip_tx_clk),  						// input wire rd_clk
  .din(icmp_ping_echo_data_in),        		// input wire [7 : 0] din
  .wr_en(icmp_ping_echo_data_valid),    	// input wire wr_en
  .rd_en(icmp_ping_echo_data_read),    		// input wire rd_en
  .dout(icmp_ping_echo_data_out),      		// output wire [7 : 0] dout
  .full(),      							// output wire full
  .empty()    								// output wire empty
);


ip_send #
(
	 .VERSION                  (VERSION),
	 .IHL                      (IHL),
	 .TOS								(TOS),
	 .ID_BASE						(ID_BASE),
	 .FLAG							(FLAG),
	 .FRAGMENT_OFFSET          (FRAGMENT_OFFSET),
	 .LOCAL_IP_ADDRESS         (LOCAL_IP_ADDRESS)
)
ip_send_module
 (
    .ip_send_clk					(ip_tx_clk), 
    .reset							(reset), 
    .udp_data_in_valid			(udp_tx_data_valid), 
    .udp_data_in					(udp_tx_data), 
    .udp_data_length				(udp_tx_data_length), 
    .dst_ip_address				(ip_tx_dst_address), 
    .udp_send_request			(udp_tx_request), 
    .send_buffer_ready			(send_buffer_ready), 
    .send_buffer_ack				(send_buffer_ack), 
    .icmp_request_en				(icmp_request_en), 
    .icmp_request_id				(icmp_request_id), 
    .icmp_request_sq_num		(icmp_request_sq_num), 
    .icmp_request_ip_address	(icmp_request_ip_address),
    .icmp_checksum				(icmp_checksum),
	.icmp_ping_echo_data_read   (icmp_ping_echo_data_read),
	.icmp_ping_echo_data   		(icmp_ping_echo_data_out),
	.icmp_ping_echo_data_length (icmp_ping_echo_data_length),	
    .ip_send_ready				(ip_tx_ready), 
    .ip_send_request				(ip_tx_request), 
    .ip_send_ack					(ip_tx_ack), 
    .ip_send_address				(ip_tx_address), 
    .ip_data_out_valid			(ip_tx_data_valid), 
    .ip_data_out					(ip_tx_data)
    );
	 
	 
ip_receive #
(
	 .LOCAL_IP_ADDRESS         	(LOCAL_IP_ADDRESS)
)
ip_receive_module 
(
    .ip_receive_clk					(ip_rx_clk), 
    .reset								(reset), 
    .ip_data_in_valid				(ip_rx_data_valid), 
    .ip_data_in						(ip_rx_data), 
    .icmp_request_en					(icmp_request_en), 
    .icmp_request_ip_address		(icmp_request_ip_address), 
    .icmp_request_id					(icmp_request_id), 
    .icmp_request_sq_num			(icmp_request_sq_num),
	.icmp_checksum				(icmp_checksum),
	.icmp_ping_echo_data_valid  (icmp_ping_echo_data_valid),
	.icmp_ping_echo_data   		(icmp_ping_echo_data_in),
	.icmp_ping_echo_data_length (icmp_ping_echo_data_length),	
    .udp_data_out_valid				(udp_rx_data_valid), 
    .udp_data_out						(udp_rx_data), 
    .ip_header_checksum_correct	(ip_rx_error)
    );


endmodule
