`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:45:56 07/15/2015 
// Design Name: 
// Module Name:    udp_ip_protocol_stack_modified 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module udp_ip_protocol_stack_modified #
(
		parameter               LOCAL_PORT_NUM    = 16'hf000,
		parameter               LOCAL_IP_ADDRESS  = 32'hc0a80a01,
		parameter               LOCAL_MAC_ADDRESS = 48'h0123456789ab,
		parameter               CRC_CHECK_EN      = 1'b1,
		parameter               CRC_GEN_EN        = 1'b1,
		parameter               INTER_FRAME_GAP   = 4'd12
)
(   
		input                   clk,
		input                   phy_clk,
		input                   reset,
		output wire             udp_tx_ready,
		output wire             app_tx_ack,
		
		input                   app_tx_request,
		input                   app_tx_data_valid,
		input [7:0]             app_tx_data,
		input [15:0]				app_tx_data_length,
		input [15:0]				app_tx_dst_port,
		input [31:0]				ip_tx_dst_address,
			
		output wire             app_rx_data_valid,
		output wire [7:0]       app_rx_data,
		output wire [15:0]      app_rx_data_length,
		output wire [15:0]      app_rx_port_num,
				
		input                   gmii_rx_data_valid,
		input [7:0]        		gmii_rx_data,	
		output wire             gmii_tx_data_valid,
		output wire [7:0]       gmii_tx_data,
		
		output wire             ip_rx_error,
		output wire 				mac_rx_error
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

udp_layer #
(
    .LOCAL_PORT_NUM        (LOCAL_PORT_NUM)
)
udp_layer 
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


	 
ip_layer #
(
    .LOCAL_IP_ADDRESS      (LOCAL_IP_ADDRESS)
)
ip_layer 
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
	

	
arp_layer_modified #
(
	 .LOCAL_IP_ADDRESS      		(LOCAL_IP_ADDRESS),
	 .LOCAL_MAC_ADDRESS     		(LOCAL_MAC_ADDRESS)
)
arp_layer_modified 
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



send_buffer send_buffer 
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




receive_buffer receive_buffer 
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



mac_layer #
(
	 .LOCAL_MAC_ADDRESS    	(LOCAL_MAC_ADDRESS),
	 .CRC_CHECK_EN 			(CRC_CHECK_EN),
	 .CRC_GEN_EN        		(CRC_GEN_EN),
	 .INTER_FRAME_GAP  		(INTER_FRAME_GAP)
)
mac_layer 
(
    .phy_clk					(phy_clk), 
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
