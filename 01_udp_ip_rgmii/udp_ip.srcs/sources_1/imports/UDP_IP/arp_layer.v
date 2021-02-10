//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: arp_layer 主要完成 arp 协议的控制。其中包含了 3 个子模块 arp_send、arp_receive 和 mac_cache。
//#              其中，arp_send、arp_receive 模块分别完成 arp 请求/应答包的发送和接收，
//#               mac_cache 则用于建立ip 地址和 mac 地址之间的查找表。
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

module arp_layer #
(
		parameter				LOCAL_IP_ADDRESS  = 32'hc0a87a01,
		parameter            LOCAL_MAC_ADDRESS = 48'h0123456789ab
)
(
		input						clk,
		input                mac_cache_read_clk,
		input						reset,
		input                arp_rx_data_valid,
		input [7:0]          arp_rx_data,
		output wire          arp_tx_request,
		output wire          arp_tx_data_valid,
		output wire [7:0]    arp_tx_data,
		output wire          arp_tx_data_type,
		output wire [47:0]   arp_tx_dst_mac_address,
		
		input                send_buffer_ready,
		input                send_buffer_ack,
		
		input                arp_request_en,
		input [31:0]         arp_request_dst_ip_address,
		output wire          arp_reply_valid,
		input                mac_cache_read_en,
		input [31:0]         read_ip_address,
		output wire [47:0]   read_mac_address,
		output wire          mac_cache_read_done
		
    );

wire       		arp_request_valid;
wire [31:0] 	arp_request_ip_address;
wire [47:0] 	arp_request_mac_address;
wire [31:0] 	arp_reply_ip_address;
wire [47:0] 	arp_reply_mac_address;

arp_send #
(
	 .LOCAL_IP_ADDRESS			(LOCAL_IP_ADDRESS),
	 .LOCAL_MAC_ADDRESS        (LOCAL_MAC_ADDRESS)
)
arp_send_module 
(
    .clk								(clk), 
    .reset							(reset), 
    .send_buffer_ready			(send_buffer_ready), 
    .send_buffer_ack				(send_buffer_ack), 
    .arp_reply_en					(arp_request_valid), 
    .arp_reply_ip_address		(arp_request_ip_address), 
    .arp_reply_mac_address		(arp_request_mac_address), 
    .arp_request_en				(arp_request_en), 
    .arp_request_ip_address	(arp_request_dst_ip_address), 
    .arp_packet_send_request	(arp_tx_request), 
    .arp_dst_mac_address		(arp_tx_dst_mac_address), 
    .arp_packet_type				(arp_tx_data_type), 
    .arp_tx_data_valid			(arp_tx_data_valid), 
    .arp_tx_data					(arp_tx_data)
    );
	 
	 
arp_receive #
(
	 .LOCAL_IP_ADDRESS			(LOCAL_IP_ADDRESS)
)
arp_receive_module 
(
    .clk								(clk), 
    .reset							(reset), 
    .arp_rx_data_valid			(arp_rx_data_valid), 
    .arp_rx_data					(arp_rx_data), 
    .arp_request_valid			(arp_request_valid), 
    .arp_request_ip_address	(arp_request_ip_address), 
    .arp_request_mac_address	(arp_request_mac_address), 
    .arp_reply_valid				(arp_reply_valid), 
    .arp_reply_ip_address		(arp_reply_ip_address), 
    .arp_reply_mac_address		(arp_reply_mac_address)
    );

reg            mac_cache_write_en;
reg [31:0]     mac_cache_write_ip_address;
reg [47:0]     mac_cache_write_mac_address;	

always@(*)
	begin
		if(reset) begin
			mac_cache_write_en = 1'b0;
			mac_cache_write_ip_address = 32'd0;
			mac_cache_write_mac_address = 48'd0;
		end
		else begin
			if(arp_request_valid) begin
				mac_cache_write_en = 1'b1;
				mac_cache_write_ip_address = arp_request_ip_address;
				mac_cache_write_mac_address = arp_request_mac_address;
			end
			else if(arp_reply_valid) begin
				mac_cache_write_en = 1'b1;
				mac_cache_write_ip_address = arp_reply_ip_address;
				mac_cache_write_mac_address = arp_reply_mac_address;
			end
			else begin
				mac_cache_write_en = 1'b0;
				mac_cache_write_ip_address = 32'd0;
				mac_cache_write_mac_address = 48'd0;				
			end
		end
	end
	 
mac_cache mac_cache_module 
(
    .w_clk							(clk), 
    .r_clk							(mac_cache_read_clk), 
    .reset							(reset), 
    .write_en						(mac_cache_write_en), 
    .w_ip_address					(mac_cache_write_ip_address), 
    .w_mac_address				(mac_cache_write_mac_address), 
    .read_en						(mac_cache_read_en), 
    .r_ip_address					(read_ip_address), 
    .r_mac_address				(read_mac_address), 
    .read_done						(mac_cache_read_done)
    );

endmodule
