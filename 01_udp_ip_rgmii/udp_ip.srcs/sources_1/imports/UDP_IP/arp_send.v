//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: 本模块主要有两个功能：
//#             根据 send_buffer 的 arp 请求发送 arp 请求包；
//#            根据 arp_receive 模块接收的 arp 请求包，发送相应的 arp 应答包。
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

module arp_send #
(
      parameter            LOCAL_IP_ADDRESS = 32'hc0a80a01,
		parameter            LOCAL_MAC_ADDRESS = 48'h0123456789ab
)
(
		input						clk,
		input						reset,
		input                send_buffer_ready,
		input                send_buffer_ack,     //arp_send模块成功占用send_buffer发送arp包的反馈握手信号
		input		            arp_reply_en,           //输入arp请求包
		input  [31:0]        arp_reply_ip_address,
		input  [47:0]        arp_reply_mac_address,  
		input                arp_request_en,         //输出arp请求包
	   input  [31:0]        arp_request_ip_address,
		//input  [47:0]        arp_request_mac_address,
		output reg           arp_packet_send_request,  //申请占用send_buffer发送arp包的请求信号
		output reg [47:0]		arp_dst_mac_address,
		output reg           arp_packet_type,
		output reg           arp_tx_data_valid,	
		output reg [7:0]     arp_tx_data
    );


reg [31:0]		ip_reply_buffer;
reg [47:0]		mac_reply_buffer;
reg [31:0]		ip_request_buffer;
reg 		      reply_buffer_valid;
reg            request_buffer_valid;
reg [15:0]     OPER;
reg [31:0]     TPA;
reg [47:0]     THA;
reg [4:0]      cnt;
reg [4:0]      pad_cnt;
reg            STATE;

localparam     ARP_REQUEST  =  16'h0001;
localparam     ARP_REPLY    =  16'h0002;
localparam     HTYPE  =  16'h0001;
localparam     PTYPE  =  16'h0800;
localparam     HLEN  =  8'h06;
localparam     PLEN  =  8'h04;
localparam     WAITE_BUFFER_READY  =  1'b0;
localparam     SEND_ARP_PACKET     =  1'b1;

always@(posedge clk or posedge reset)
   begin
		if(reset) begin	   
			ip_reply_buffer <= 32'd0;
			mac_reply_buffer <= 48'd0;
			reply_buffer_valid <= 1'b0;
			ip_request_buffer  <= 32'd0;
			request_buffer_valid <= 1'b0;
			arp_packet_send_request <= 1'b0;
			cnt <= 5'd0;
			pad_cnt <= 5'd0;
			arp_packet_type   <= 1'b0;
			arp_tx_data_valid <= 1'b0;
			arp_tx_data       <= 8'd0;
			OPER              <= 16'd0;
			TPA               <= 32'd0;
			THA               <= 48'd0;
			arp_dst_mac_address <= 48'd0;
			STATE             <= WAITE_BUFFER_READY;
		end
	   else begin
		   case({arp_request_en, arp_reply_en})
			   2'b00: begin
				          if((send_buffer_ready) && (!arp_packet_send_request) && (!arp_tx_data_valid)) begin//send_buffer可以接收arp请求包时
								 if(request_buffer_valid) begin
									 OPER <= ARP_REQUEST;
									 TPA <= ip_request_buffer;
									 THA <= 48'd0;
									 request_buffer_valid <= 1'b0;
									 arp_packet_send_request <= 1'b1;
								 end
								 else if((reply_buffer_valid) && (!request_buffer_valid)) begin
									 OPER <= ARP_REPLY;
									 TPA <= ip_reply_buffer;
									 THA <= mac_reply_buffer;
									 reply_buffer_valid <= 1'b0;
									 arp_packet_send_request <= 1'b1;
								 end
							 end
//							 else begin
//								 arp_packet_send_request <= 1'b0;
//							 end
						end
				2'b01:begin
							if((send_buffer_ready) && (!arp_packet_send_request) && (!arp_tx_data_valid)) begin
								OPER <= ARP_REPLY;
								TPA <= arp_reply_ip_address;
								THA <= arp_reply_mac_address;
								arp_packet_send_request <= 1'b1;
							end
							else begin                        //arp应答包
								ip_reply_buffer <= arp_reply_ip_address;
								reply_buffer_valid <= 1'b1;
								mac_reply_buffer <= arp_reply_mac_address;
								//arp_packet_send_request <= 1'b0;
							end
						end
				2'b10:begin
							if((send_buffer_ready) && (!arp_packet_send_request) && (!arp_tx_data_valid)) begin
								OPER <= ARP_REQUEST;
								TPA <= arp_request_ip_address;
								THA <= 48'd0;
								arp_packet_send_request <= 1'b1;
							end
							else begin                       //arp请求包
								ip_request_buffer <= arp_request_ip_address;
								request_buffer_valid <= 1'b1;
								//arp_packet_send_request <= 1'b0;
							end
						end
				2'b11:begin
							if((send_buffer_ready) && (!arp_packet_send_request) && (!arp_tx_data_valid)) begin
								OPER <= ARP_REQUEST;
								TPA <= arp_request_ip_address;
								THA <= 48'd0;
								arp_packet_send_request <= 1'b1;
							end
							else begin
								ip_request_buffer <= arp_request_ip_address;
								request_buffer_valid <= 1'b1;
								//arp_packet_send_request <= 1'b0;
							end
							ip_reply_buffer <= arp_reply_ip_address;
							reply_buffer_valid <= 1'b1;
							mac_reply_buffer <= arp_reply_mac_address;
						end
			endcase
			
			case(STATE)
			   WAITE_BUFFER_READY:
			      begin
					   if(arp_packet_send_request && send_buffer_ack) begin
							arp_tx_data <= HTYPE[15:8]; 
							arp_tx_data_valid <= 1'b1;
							cnt <= cnt + 1'b1; 									
							if(OPER == ARP_REQUEST) begin
							   arp_dst_mac_address <= 48'hffffffffffff;
								arp_packet_type <= 1'b1;
							end
							else begin
								arp_dst_mac_address <= THA;
								arp_packet_type <= 1'b0;							
							end
						   arp_packet_send_request <= 1'b0;
						   STATE <= SEND_ARP_PACKET;
						end
						else
						   STATE <= WAITE_BUFFER_READY;
					end
				SEND_ARP_PACKET:
				   begin					   
                  case(cnt)
//                     0: begin 
//									arp_tx_data <= HTYPE[15:8]; 
//									arp_tx_data_valid <= 1'b1;
//									cnt <= cnt + 1'b1; 									
//									if(OPER == ARP_REQUEST)
//									   arp_packet_type <= 1'b1;
//									else
//									   arp_packet_type <= 1'b0;								
//								end
							1: begin arp_tx_data <= HTYPE[7:0]; cnt <= cnt + 1'b1; end
							2: begin arp_tx_data <= PTYPE[15:8]; cnt <= cnt + 1'b1; end
							3: begin arp_tx_data <= PTYPE[7:0]; cnt <= cnt + 1'b1; end
							4: begin arp_tx_data <= HLEN; cnt <= cnt + 1'b1; end
							5: begin arp_tx_data <= PLEN; cnt <= cnt + 1'b1; end
							6: begin arp_tx_data <= OPER[15:8]; cnt <= cnt + 1'b1; end
							7: begin arp_tx_data <= OPER[7:0]; cnt <= cnt + 1'b1; end
							8: begin arp_tx_data <= LOCAL_MAC_ADDRESS[47:40]; cnt <= cnt + 1'b1; end
							9: begin arp_tx_data <= LOCAL_MAC_ADDRESS[39:32]; cnt <= cnt + 1'b1; end
							10: begin arp_tx_data <= LOCAL_MAC_ADDRESS[31:24]; cnt <= cnt + 1'b1; end
							11: begin arp_tx_data <= LOCAL_MAC_ADDRESS[23:16]; cnt <= cnt + 1'b1; end
							12: begin arp_tx_data <= LOCAL_MAC_ADDRESS[15:8]; cnt <= cnt + 1'b1; end
							13: begin arp_tx_data <= LOCAL_MAC_ADDRESS[7:0]; cnt <= cnt + 1'b1; end
							14: begin arp_tx_data <= LOCAL_IP_ADDRESS[31:24]; cnt <= cnt + 1'b1; end
							15: begin arp_tx_data <= LOCAL_IP_ADDRESS[23:16]; cnt <= cnt + 1'b1; end
							16: begin arp_tx_data <= LOCAL_IP_ADDRESS[15:8]; cnt <= cnt + 1'b1; end
							17: begin arp_tx_data <= LOCAL_IP_ADDRESS[7:0]; cnt <= cnt + 1'b1; end
							18: begin arp_tx_data <= THA[47:40]; cnt <= cnt + 1'b1; end
							19: begin arp_tx_data <= THA[39:32]; cnt <= cnt + 1'b1; end
							20: begin arp_tx_data <= THA[31:24]; cnt <= cnt + 1'b1; end
							21: begin arp_tx_data <= THA[23:16]; cnt <= cnt + 1'b1; end
							22: begin arp_tx_data <= THA[15:8]; cnt <= cnt + 1'b1; end
							23: begin arp_tx_data <= THA[7:0]; cnt <= cnt + 1'b1; end
							24: begin arp_tx_data <= TPA[31:24]; cnt <= cnt + 1'b1; end
							25: begin arp_tx_data <= TPA[23:16]; cnt <= cnt + 1'b1; end
							26: begin arp_tx_data <= TPA[15:8]; cnt <= cnt + 1'b1; end
							27: begin arp_tx_data <= TPA[7:0]; cnt <= cnt + 1'b1; end
							28: begin 
							       arp_tx_data <= 8'd0;
							       if(pad_cnt == 5'd17) begin   //add 18 0 to make sure data length is 46
								      cnt <= cnt + 1'b1; 
									  pad_cnt <= 5'd0;
								   end									  
								   else begin
								      pad_cnt <= pad_cnt + 1'b1;
								      cnt <= cnt;
								   end
								end       
							29: begin
                            arp_tx_data <= 8'd0;							
							       arp_tx_data_valid <= 1'b0;
									 arp_dst_mac_address <= 48'd0;
									 arp_packet_type <= 1'b0;
									 cnt <= 5'd0;
									 STATE <= WAITE_BUFFER_READY;
								 end
							default: begin
							            arp_tx_data <= 8'd0;							
							            arp_tx_data_valid <= 1'b0;
									      cnt <= 5'd0;
										end
						endcase
					end
			endcase
		end
	end
					
				   

endmodule
