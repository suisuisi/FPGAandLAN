//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: send_buffer 主要完成 arp_send 和 ip_send 模块发送请求之间的
//#             仲裁，将 arp_send 和 ip_send 模块所需发送的数据发至 mac_layer。同时，
//#             完成 ip 地址至 mac 地址的查找，以及 ARP 请求的发起。
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

module send_buffer(
		input						clk,
		input						reset,
		input                mac_send_ready,
		input                arp_send_request,
		input                arp_packet_type,
		input                arp_tx_data_valid,
		input [7:0]				arp_tx_data,
		input [47:0]         arp_tx_dst_mac_address,
		input                ip_send_request,
		input                ip_tx_data_valid,
		input [7:0]				ip_tx_data,
		input [31:0]         ip_tx_ip_address,
		input [47:0]         ip_tx_dst_mac_address,
		input                mac_cache_read_done,
		input                arp_reply_done,
		output reg           read_mac_cache_en,
		output reg [31:0]		ip_tx_dst_ip_address,
		output reg           send_buffer_ready,
		output reg           arp_send_ack,     //arp_send模块成功占用send_buffer发送arp包的反馈握手信号
		output reg           ip_send_ack,      //ip_send模块成功占用send_buffer发送ip包的反馈握手信号
		output reg           arp_request_en,
		output reg[31:0]		arp_request_ip_address,
		output reg[1:0]      send_data_type,
	   output reg           send_data_valid,
		output reg[7:0]      send_data,
		output reg[47:0]     send_dst_mac_address
    );


localparam   IDLE = 3'd0;
localparam   CHECK_MAC_CACHE = 3'd1;
localparam   WAIT_ARP_REPLY = 3'd2;
localparam   WAIT_ARP_PACKET = 3'd3;
localparam   WAIT_IP_PACKET = 3'd4; 
localparam   SEND_ARP_PACKET = 3'd5;
localparam   SEND_IP_PACKET = 3'd6;     

reg [47:0]  send_mac_address_temp;
reg         arp_request_pend;
reg [2:0]   STATE;


always@(posedge clk or posedge reset)
	begin
		if(reset) begin
		   send_buffer_ready <= 1'b0;
			arp_send_ack <= 1'b0;
			ip_send_ack  <= 1'b0;
			read_mac_cache_en <= 1'b0;
			ip_tx_dst_ip_address <= 32'd0;
			arp_request_en <= 1'b0;
			arp_request_ip_address <= 32'd0;
			arp_request_pend <= 1'b0;
			send_data_type <= 2'd0;
			send_data_valid <= 1'b0;
			send_data  <= 8'd0;
			send_dst_mac_address <= 48'd0;
			send_mac_address_temp <= 48'd0;
			STATE <= IDLE;
		end
		else begin
		   case(STATE)
			   IDLE: 
				   begin
						arp_request_en <= 1'b0;
					   if(mac_send_ready) begin
							if(arp_send_request) begin
								send_buffer_ready <= 1'b0;
								arp_send_ack <= 1'b1;
								ip_send_ack  <= 1'b0;							
								STATE <= WAIT_ARP_PACKET;
							end
							else if(ip_send_request & (~arp_request_pend)) begin
								send_buffer_ready <= 1'b0;
								arp_send_ack <= 1'b0;						
								ip_tx_dst_ip_address <= ip_tx_ip_address;
//								if( ip_tx_dst_ip_address == ip_tx_ip_address) begin
//								   ip_send_ack  <= 1'b1;
//									read_mac_cache_en <= 1'b0;
//									STATE <= WAIT_IP_PACKET;
//								end
//								else begin
								   ip_send_ack  <= 1'b0;
									read_mac_cache_en <= 1'b1;								
									STATE <= CHECK_MAC_CACHE;
//							   end
							end
							else begin
								send_buffer_ready <= 1'b1;
								arp_send_ack <= 1'b0;
								ip_send_ack  <= 1'b0;						
								STATE <= IDLE;
							end
						end
						else begin
						   send_buffer_ready <= 1'b0;
							arp_send_ack <= 1'b0;
							ip_send_ack  <= 1'b0;
							read_mac_cache_en <= 1'b0;
							ip_tx_dst_ip_address <= 48'd0;
							STATE <= IDLE;
						end
					end
				CHECK_MAC_CACHE:
				   begin
						read_mac_cache_en <= 1'b0;
						if(mac_cache_read_done)
							if(ip_tx_dst_mac_address == 48'd0) begin
								ip_send_ack <= 1'b0;
								send_buffer_ready <= 1'b1;
								arp_request_en <= 1'b1;
								arp_request_ip_address <= ip_tx_dst_ip_address;
								arp_request_pend <= 1'b1;
								STATE <= IDLE;
							end
							else begin
								send_mac_address_temp <= ip_tx_dst_mac_address;
								ip_send_ack <= 1'b1;
								send_buffer_ready <= 1'b0;
								arp_request_en <= 1'b0;
								arp_request_pend <= 1'b0;
								STATE <= WAIT_IP_PACKET;
							end
						else
							STATE <= CHECK_MAC_CACHE;
					end
				WAIT_ARP_REPLY:
					begin
						if(arp_reply_done) begin
							arp_request_pend <= 1'b0;
							STATE <= IDLE;
						end
						else begin
							arp_request_pend <= 1'b1;
							STATE <= WAIT_ARP_REPLY;							
						end
					end
				WAIT_ARP_PACKET:
				   begin
					   arp_send_ack <= 1'b0; 
					   if(arp_tx_data_valid) begin						
							send_data_type <= {1'b1,arp_packet_type}; //2'b10:  arp reply; 2'b11:arp request ;2'b01 ip
							send_dst_mac_address <= arp_tx_dst_mac_address;
							send_data_valid <= 1'b1;
							send_data <= arp_tx_data;
							STATE <= SEND_ARP_PACKET;
						end
						else begin
							send_data_type <= 2'd0;
							send_data_valid <= 1'b0;
							send_data <= 8'd0;
							send_dst_mac_address <= 48'd0;
							STATE <= WAIT_ARP_PACKET;
						end
               end
				SEND_ARP_PACKET:
				   begin
					   if(arp_tx_data_valid) begin
							send_data_valid <= 1'b1;
							send_data <= arp_tx_data;
							STATE <= SEND_ARP_PACKET;
						end
						else begin
							send_data_type <= 2'd0;
							send_data_valid <= 1'b0;
							send_data <= 8'd0;
							send_dst_mac_address <= 48'd0;
							if(arp_request_pend)
								STATE <= WAIT_ARP_REPLY;
						   else
								STATE <= IDLE;
						end
               end
				WAIT_IP_PACKET:	
               begin
                  ip_send_ack <= 1'b0; 					
					   if(ip_tx_data_valid) begin					
							send_data_type <= 2'b01; //2'b10:  arp reply; 2'b11:arp request ;2'b01 ip
							send_data_valid <= 1'b1;
							send_data <= ip_tx_data;
							send_dst_mac_address <= send_mac_address_temp;
							STATE <= SEND_IP_PACKET;
						end
						else begin
							send_data_type <= 2'd0;
							send_data_valid <= 1'b0;
							send_data <= 8'd0;
							send_dst_mac_address <= 48'd0;
							STATE <= WAIT_IP_PACKET;
						end
					end					
				SEND_IP_PACKET:	
               begin				
					   if(ip_tx_data_valid) begin
							send_data_valid <= 1'b1;
							send_data <= ip_tx_data;
							STATE <= SEND_IP_PACKET;
						end
						else begin
							send_data_type <= 2'd0;
							send_data_valid <= 1'b0;
							send_data <= 8'd0;
							send_dst_mac_address <= 48'd0;
							STATE <= IDLE;
						end
					end
         endcase
      end
   end
	 
endmodule
