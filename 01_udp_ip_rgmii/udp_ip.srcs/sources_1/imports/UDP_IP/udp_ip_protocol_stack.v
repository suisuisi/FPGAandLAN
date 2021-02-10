//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: udp_ip_protocol_stack 实现整个udp/ip 协议，将所有模块连接的顶层模块
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

module udp_ip_protocol_stack #
(
		parameter               LOCAL_PORT_NUM    = 16'hf000,			          //本地端口号  默认 61440（16'Hf000-->61440）
		parameter               LOCAL_IP_ADDRESS  = 32'hc0a80a01,                 //本地 IP 地址 默认 192.168.10.1 (c0-->192/a8-->168/0a-->10/01-->1,)
		parameter               LOCAL_MAC_ADDRESS = 48'h0123456789ab,             //本地 MAC 地址 	注意同一局域网内不要出现相同MAC地址
		parameter               CRC_CHECK_EN      = 1'b1,                         //CRC32 校验使能
		parameter               CRC_GEN_EN        = 1'b1,                         //CRC32 产生使能（勿修改默认值）
		parameter               INTER_FRAME_GAP   = 4'd12                         //MAC发送最小帧间隔
)
(   
		input                   clk,							//用户接口时钟
		input                   phy_tx_clk,						//phy GMII 发送接口时钟1G-->125Mhz 100M-->25M 10M-->2.5M
		input                   phy_rx_clk,						//phy GMII 接收接口时钟1G-->125Mhz 100M-->25M 10M-->2.5M
		input                   reset,							//复位信号，高电平有效
		output wire             udp_tx_ready,					//模块可接收外部用户数据输入标志信号，高电平有效
		output wire             app_tx_ack,						//app_tx_request 的反馈信号，高电平有效。表示此
																//时外部模块可通过用户接口可向本模块输入数据
		
		input                   app_tx_request,					//用户接口数据发送请求，高电平有效
		input                   app_tx_data_valid,				//用户接口发送数据有效标志信号，高电平有效
		input [7:0]             app_tx_data,					//用户接口所需发送的数据
		input [15:0]			app_tx_data_length,				//用户接口一次发送的数据包长度（不含 udp、ip、mac 首部），单位：字节
		input [15:0]			app_tx_dst_port,				//用户接口数据包的发送目的端口号
		input [31:0]			ip_tx_dst_address,				//用户接口数据包的发送目的 ip 地址
			
		output wire             app_rx_data_valid,				//本模块从外部所接收的数据输出有效信号，高电平有效
		output wire [7:0]       app_rx_data,					//本模块从外部所接收的数据输出
		output wire [15:0]      app_rx_data_length,				//本模块从外部所接收的当前数据包的长度（不含udp、ip、mac 首部），单位：字节
		output wire [15:0]      app_rx_port_num,				//本模块从外部所接收的数据包的源端口号
				
		input                   gmii_rx_data_valid,				//从外部 phy 接口数据接收有效信号
		input [7:0]        		gmii_rx_data,					//从外部 phy 接口接收的数据
		output wire             gmii_tx_data_valid,				//向外部 phy 接口发送数据有效信号
		output wire [7:0]       gmii_tx_data,					//向外部 phy 接口发送的数据
		
		output wire             ip_rx_error,					//接收数据包 ip 首部检验错误指示信号，低电平有效
		output wire 			mac_rx_error					//接收数据包 CRC32 校验错误指示信号，低电平有效
    );


wire     		udp_tx_request;
wire 				udp_tx_data_valid;
wire [7:0] 		udp_tx_data;
wire [15:0] 	udp_tx_data_length;
wire  			udp_rx_data_valid;
wire [7:0]  	udp_rx_data;
wire 				ip_tx_ready;
wire 				udp_tx_ack;
wire 				ip_tx_request;
wire 				ip_tx_data_valid;
wire [7:0] 		ip_tx_data;
wire [31:0] 	ip_tx_address;
wire   			arp_tx_request;
wire 				arp_tx_data_valid;
wire [7:0]		arp_tx_data;
wire 				arp_tx_data_type;
wire [47:0]		arp_tx_dst_mac_address;
wire  			arp_reply_valid;
wire [47:0]		read_mac_address;
wire   			mac_cache_read_done;
wire				mac_cache_read_en;
wire [31:0]	  	read_ip_address;
wire       		send_buffer_ready;
wire 				arp_tx_ack;
wire  			ip_tx_ack;
wire  			arp_request_en;
wire [31:0] 	arp_request_dst_ip_address;
wire [1:0]  	mac_tx_data_type;
wire        	mac_tx_data_valid;
wire [7:0]  	mac_tx_data;
wire [47:0]		mac_tx_dst_address;
wire         	ip_rx_data_valid;
wire [7:0]   	ip_rx_data;
wire          	arp_rx_data_valid;
wire [7:0]   	arp_rx_data;
wire           mac_tx_ready;
wire     		mac_rx_data_valid;
wire [7:0]     mac_rx_data;
wire [15:0]		mac_rx_data_type;


//例化 UDP 层

udp_layer #
(
    .LOCAL_PORT_NUM        (LOCAL_PORT_NUM)
)
U0_udp_layer 
(
    .reset						(reset), 
    .app_tx_request			(app_tx_request), 
    .app_tx_data_valid		(app_tx_data_valid), 
    .app_tx_data				(app_tx_data), 
    .app_tx_data_length		(app_tx_data_length), 
    .app_tx_dst_port			(app_tx_dst_port), 
    .app_rx_data_valid		(app_rx_data_valid), 
    .app_rx_data				(app_rx_data), 
    .app_rx_data_length		(app_rx_data_length), 
    .app_rx_port_num			(app_rx_port_num), 
    .ip_tx_ready				(ip_tx_ready), 
    .ip_tx_ack					(udp_tx_ack), 
    .udp_tx_ready				(udp_tx_ready), 
    .udp_tx_ack				(app_tx_ack), 
    .udp_tx_clk				(clk), 
    .udp_tx_request			(udp_tx_request), 
    .udp_tx_data_valid		(udp_tx_data_valid), 
    .udp_tx_data				(udp_tx_data), 
    .udp_tx_data_length		(udp_tx_data_length), 
    .udp_rx_clk				(clk), 
    .udp_rx_data_valid		(udp_rx_data_valid), 
    .udp_rx_data				(udp_rx_data)
    );

//例化 IP 层
	 
ip_layer #
(
    .LOCAL_IP_ADDRESS      (LOCAL_IP_ADDRESS)
)
U1_ip_layer 
(
    .reset						(reset), 
    .udp_tx_request			(udp_tx_request), 
    .udp_tx_data_valid		(udp_tx_data_valid), 
    .udp_tx_data				(udp_tx_data), 
    .udp_tx_data_length		(udp_tx_data_length), 
    .udp_rx_data_valid		(udp_rx_data_valid), 
    .udp_rx_data				(udp_rx_data), 
    .send_buffer_ready		(send_buffer_ready), 
    .send_buffer_ack			(ip_tx_ack), 
    .ip_tx_ready				(ip_tx_ready), 
    .ip_tx_ack					(udp_tx_ack), 
    .ip_tx_clk					(clk), 
    .ip_tx_dst_address		(ip_tx_dst_address), 
    .ip_tx_request			(ip_tx_request), 
    .ip_tx_data_valid		(ip_tx_data_valid), 
    .ip_tx_data				(ip_tx_data), 
    .ip_tx_address			(ip_tx_address), 
    .ip_rx_clk					(clk), 
    .ip_rx_data_valid		(ip_rx_data_valid), 
    .ip_rx_data				(ip_rx_data), 
    .ip_rx_error				(ip_rx_error)
    );
	
//例化 ARP 层
	
arp_layer #
(
	 .LOCAL_IP_ADDRESS      		(LOCAL_IP_ADDRESS),
	 .LOCAL_MAC_ADDRESS     		(LOCAL_MAC_ADDRESS)
)
U2_arp_layer 
(
    .clk									(clk), 
    .mac_cache_read_clk				(clk), 
    .reset								(reset), 
    .arp_rx_data_valid				(arp_rx_data_valid), 
    .arp_rx_data						(arp_rx_data), 
    .arp_tx_request					(arp_tx_request), 
    .arp_tx_data_valid				(arp_tx_data_valid), 
    .arp_tx_data						(arp_tx_data), 
    .arp_tx_data_type				(arp_tx_data_type), 
    .arp_tx_dst_mac_address		(arp_tx_dst_mac_address), 
    .send_buffer_ready				(send_buffer_ready), 
    .send_buffer_ack					(arp_tx_ack), 
    .arp_request_en					(arp_request_en), 
    .arp_request_dst_ip_address	(arp_request_dst_ip_address), 
    .arp_reply_valid					(arp_reply_valid), 
    .mac_cache_read_en				(mac_cache_read_en), 
    .read_ip_address					(read_ip_address), 
    .read_mac_address				(read_mac_address), 
    .mac_cache_read_done			(mac_cache_read_done)
    );



send_buffer U3_send_buffer 
(
    .clk								(clk), 
    .reset							(reset), 
    .mac_send_ready				(mac_tx_ready), 
    .arp_send_request			(arp_tx_request), 
    .arp_packet_type				(arp_tx_data_type), 
    .arp_tx_data_valid			(arp_tx_data_valid), 
    .arp_tx_data					(arp_tx_data), 
    .arp_tx_dst_mac_address	(arp_tx_dst_mac_address), 
    .ip_send_request				(ip_tx_request), 
    .ip_tx_data_valid			(ip_tx_data_valid), 
    .ip_tx_data					(ip_tx_data), 
    .ip_tx_ip_address			(ip_tx_address), 
    .ip_tx_dst_mac_address		(read_mac_address), 
    .mac_cache_read_done		(mac_cache_read_done), 
    .arp_reply_done				(arp_reply_valid), 
    .read_mac_cache_en			(mac_cache_read_en), 
    .ip_tx_dst_ip_address		(read_ip_address), 
    .send_buffer_ready			(send_buffer_ready), 
    .arp_send_ack					(arp_tx_ack), 
    .ip_send_ack					(ip_tx_ack), 
    .arp_request_en				(arp_request_en), 
    .arp_request_ip_address	(arp_request_dst_ip_address), 
    .send_data_type				(mac_tx_data_type), 
    .send_data_valid				(mac_tx_data_valid), 
    .send_data						(mac_tx_data), 
    .send_dst_mac_address		(mac_tx_dst_address)
    );




receive_buffer U4_receive_buffer 
(
    .clk							(clk), 
    .reset						(reset), 
    .mac_rx_data_valid		(mac_rx_data_valid), 
    .mac_rx_data				(mac_rx_data), 
    .mac_frame_type			(mac_rx_data_type), 
    .ip_rx_data_valid		(ip_rx_data_valid), 
    .ip_rx_data				(ip_rx_data), 
    .arp_rx_data_valid		(arp_rx_data_valid), 
    .arp_rx_data				(arp_rx_data)
    );	

//例化 MAC 层

mac_layer #
(
	 .LOCAL_MAC_ADDRESS    	(LOCAL_MAC_ADDRESS),
	 .CRC_CHECK_EN 			(CRC_CHECK_EN),
	 .CRC_GEN_EN        		(CRC_GEN_EN),
	 .INTER_FRAME_GAP  		(INTER_FRAME_GAP)
)
U5_mac_layer 
(
    .phy_tx_clk					(phy_tx_clk),
    .phy_rx_clk					(phy_rx_clk),
    .reset						(reset), 
    .gmii_rx_data_valid		(gmii_rx_data_valid), 
    .gmii_rx_data				(gmii_rx_data), 
    .gmii_tx_data_valid		(gmii_tx_data_valid), 
    .gmii_tx_data				(gmii_tx_data), 
    .mac_rx_clk				(clk), 
    .mac_rx_data_valid		(mac_rx_data_valid), 
    .mac_rx_data				(mac_rx_data), 
    .mac_rx_data_type		(mac_rx_data_type), 
    .mac_rx_error				(mac_rx_error), 
    .mac_tx_clk				(clk), 
    .mac_tx_ready				(mac_tx_ready), 
    .mac_tx_data_valid		(mac_tx_data_valid), 
    .mac_tx_data				(mac_tx_data), 
    .mac_tx_data_type		(mac_tx_data_type), 
    .mac_tx_dst_address		(mac_tx_dst_address)
    );	 

endmodule
