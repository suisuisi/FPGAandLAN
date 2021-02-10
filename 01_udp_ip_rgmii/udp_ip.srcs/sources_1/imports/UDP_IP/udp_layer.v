//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: udp_layer udp_layer 主要完成对上局应用数据的 udp 协议控制，其中包含了两个子模块 udp_send 和
//#              udp_receive，分别完成对上局应用数据 udp 报文的发送和接收。
//#              udp_send 中例化了长度为 8 的移位寄存器组 udp_shift_register，用于发送 udp 首部时迚行数据缓冲。
//# @Modification History: 2019-05-19 20:58:19
//# Date			    By			   VerDATAn			   Change Description: 
//# ========================================================================= #
//# 2020-03			   MIZ               V0.0					NEW
//# ========================================================================= #
//# |                                          								| #
//# |                                OpenFPGA     							| #
//****************************************************************************//
/*--------------------------------Block Description----------------------------------
reset            ------|               |-----udp_tx_ready
phy_tx_clk--     ----|               |-----app_tx_ack
phy_rx_clk-     -----|               |-----
reset          ------|               |-----
app_tx_request ------|               |-----
-------------------------------------------------------------------------------------
*/

`timescale 1ns / 1ps

module udp_layer #
(
		parameter      	   LOCAL_PORT_NUM = 16'hf000			//本地端口号  默认 61440（16'Hf000-->61440）
)
(
		input          		reset,								//复位信号，高电平有效
		input          		app_tx_request,						//用户接口数据发送请求，高电平有效
		input          		app_tx_data_valid,					//用户接口发送数据有效标志信号，高电平有效
		input [7:0]			app_tx_data,						//用户接口所需发送的数据
		input [15:0]   		app_tx_data_length,					//用户接口一次发送的数据包长度（不含 udp、ip、mac 首部），单位：字节
		input [15:0]   		app_tx_dst_port,					//用户接口数据包的发送目的端口号
		
		output			   	app_rx_data_valid,					//本模块从外部所接收的数据输出有效信号，高电平有效
		output wire [7:0] 	app_rx_data,                        //本模块从外部所接收的数据输出
		output wire [15:0]	app_rx_data_length,                 //本模块从外部所接收的当前数据包的长度（不含udp、ip、mac 首部），单位：字节
		output wire [15:0]	app_rx_port_num,                    //本模块从外部所接收的数据包的源端口号
		
		input          		ip_tx_ready,						//握手是基于 ready、request、ack三个信号来实现的
		input          		ip_tx_ack,							//握手是基于 ready、request、ack三个信号来实现的
		output wire	   		udp_tx_ready,						//握手是基于 ready、request、ack三个信号来实现的
		output wire	   		udp_tx_ack,							//握手是基于 ready、request、ack三个信号来实现的
		
		input          		udp_tx_clk,							//接口时钟
		output wire	   		udp_tx_request,						//UDP发送接口数据发送请求，高电平有效
		output wire    		udp_tx_data_valid,					//UDP发送接口发送数据有效标志信号，高电平有效
		output wire [7:0] 	udp_tx_data,						//UDP发送接口所需发送的数据
		output wire [15:0]	udp_tx_data_length,					//UDP发送接口一次发送的数据包长度（不含 udp、ip、mac 首部），单位：字节
		
		input             	udp_rx_clk,							//用户接口时钟
		input             	udp_rx_data_valid,					//UDP接收接口发送数据有效标志信号，高电平有效
		input [7:0]       	udp_rx_data							//UDP接收接口所需发送的数据
);


//例化 udp_send 模块

udp_send #
(
	 .LOCAL_PORT_NUM        (LOCAL_PORT_NUM)  
)
U0_udp_send_module 
(
    .udp_send_clk				(udp_tx_clk), 
    .reset						(reset), 
    .app_data_in_valid		(app_tx_data_valid), 
    .app_data_in				(app_tx_data), 
    .app_data_length			(app_tx_data_length), 
    .udp_dest_port			(app_tx_dst_port), 
    .app_data_request		(app_tx_request), 
    .udp_send_ready			(udp_tx_ready), 
    .udp_send_ack				(udp_tx_ack), 
    .ip_send_ready			(ip_tx_ready), 
    .ip_send_ack				(ip_tx_ack), 
    .udp_send_request		(udp_tx_request), 
    .udp_data_out_valid		(udp_tx_data_valid), 
    .udp_data_out				(udp_tx_data), 
    .udp_packet_length		(udp_tx_data_length)
    );
	 
//例化 receive 模块

udp_receive U1_udp_receive_module 
(
    .udp_receive_clk			(udp_rx_clk), 
    .reset						(reset), 
    .udp_data_in_valid		(udp_rx_data_valid), 
    .udp_data_in				(udp_rx_data), 
    .app_data_out_valid		(app_rx_data_valid), 
    .app_data_out				(app_rx_data), 
    .app_data_length			(app_rx_data_length),
	 .app_data_src_port_num (app_rx_port_num)
    );
	 
endmodule
