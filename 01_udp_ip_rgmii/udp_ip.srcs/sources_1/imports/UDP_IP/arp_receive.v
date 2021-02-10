//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: 本模块主要有两个功能：
//#              接收 receive_buffer 输入的 arp 请求包或 arp 应答包，
//#              提取其中的源 ip 地址和源 mac 地址，
//#              按一一对应的关系存入 mac_cache 模块中。
//#              根据接收到的 arp 请求包，将其目的 ip 地址与本地 ip 地址相比较。
//#             若两者一致，则向 arp_send 模块发送 arp 应答包发送请求信息，否则将该 arp 包过滤。
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

module arp_receive #
(
		parameter     			LOCAL_IP_ADDRESS = 32'hc0a80a01
)
(
		input						clk,
		input						reset,
		input						arp_rx_data_valid,
		input [7:0]    		arp_rx_data,
		output reg           arp_request_valid,
		output reg [31:0]    arp_request_ip_address,
		output reg [47:0]    arp_request_mac_address,
		output reg           arp_reply_valid,
		output reg [31:0]    arp_reply_ip_address,
		output reg [47:0]    arp_reply_mac_address	
    );

reg [15:0]  HTYPE;
reg [15:0]  PTYPE;
reg [7:0]   HLEN;
reg [7:0]   PLEN;
reg [15:0]  OPER;
reg [47:0]  SHA;
reg [31:0]  SPA;
reg [47:0]  THA;
reg [31:0]  TPA;

reg [4:0]   cnt;
reg [1:0]   STATE;

localparam    ARP_REQUEST = 16'h0001;
localparam    ARP_REPLY   = 16'h0002;
localparam    READ_ARP_PACKET  = 2'd0;
localparam    CHECK_ARP_TYPE   = 2'd1;
localparam    CLEAR_REQUEST    = 2'd2;

always@(posedge clk or posedge reset)
	begin
		if(reset) begin
		   HTYPE <= 16'd0;
			PTYPE <= 16'd0;
			HLEN  <= 8'd0;
			PLEN  <= 8'd0;
			OPER  <= 16'd0;
			SHA   <= 48'd0;
			SPA   <= 32'd0;
			THA   <= 48'd0;
			TPA   <= 32'd0;
			cnt   <= 5'd0;
			arp_request_valid <= 1'b0;
			arp_request_ip_address <= 32'd0;
			arp_request_mac_address <= 48'd0;
			arp_reply_valid <= 1'b0;
			arp_reply_ip_address <= 32'd0;
			arp_reply_mac_address <= 48'd0;
			STATE <= READ_ARP_PACKET;
		end
		else begin
			case(STATE)
				READ_ARP_PACKET:
				   begin
					   arp_request_valid <= 1'b0;
				      arp_reply_valid <= 1'b0;
						if(arp_rx_data_valid) begin
							case(cnt)
								0: begin HTYPE[15:8] <= arp_rx_data; cnt <= cnt + 1'b1; end
								1: begin HTYPE[7:0]  <= arp_rx_data; cnt <= cnt + 1'b1; end
								2: begin PTYPE[15:8] <= arp_rx_data; cnt <= cnt + 1'b1; end
								3: begin PTYPE[7:0]  <= arp_rx_data; cnt <= cnt + 1'b1; end
								4: begin HLEN        <= arp_rx_data; cnt <= cnt + 1'b1; end
								5: begin PLEN        <= arp_rx_data; cnt <= cnt + 1'b1; end
								6: begin OPER[15:8]  <= arp_rx_data; cnt <= cnt + 1'b1; end
								7: begin OPER[7:0]   <= arp_rx_data; cnt <= cnt + 1'b1; end
								8: begin SHA[47:40]  <= arp_rx_data; cnt <= cnt + 1'b1; end
								9: begin SHA[39:32]  <= arp_rx_data; cnt <= cnt + 1'b1; end
								10: begin SHA[31:24] <= arp_rx_data; cnt <= cnt + 1'b1; end
								11: begin SHA[23:16] <= arp_rx_data; cnt <= cnt + 1'b1; end		
								12: begin SHA[15:8]  <= arp_rx_data; cnt <= cnt + 1'b1; end		
								13: begin SHA[7:0]   <= arp_rx_data; cnt <= cnt + 1'b1; end
								14: begin SPA[31:24] <= arp_rx_data; cnt <= cnt + 1'b1; end
								15: begin SPA[23:16] <= arp_rx_data; cnt <= cnt + 1'b1; end		
								16: begin SPA[15:8]  <= arp_rx_data; cnt <= cnt + 1'b1; end		
								17: begin SPA[7:0]   <= arp_rx_data; cnt <= cnt + 1'b1; end
								18: begin THA[47:40] <= arp_rx_data; cnt <= cnt + 1'b1; end
								19: begin THA[39:32] <= arp_rx_data; cnt <= cnt + 1'b1; end
								20: begin THA[31:24] <= arp_rx_data; cnt <= cnt + 1'b1; end
								21: begin THA[23:16] <= arp_rx_data; cnt <= cnt + 1'b1; end		
								22: begin THA[15:8]  <= arp_rx_data; cnt <= cnt + 1'b1; end		
								23: begin THA[7:0]   <= arp_rx_data; cnt <= cnt + 1'b1; end
								24: begin TPA[31:24] <= arp_rx_data; cnt <= cnt + 1'b1; end
								25: begin TPA[23:16] <= arp_rx_data; cnt <= cnt + 1'b1; end		
								26: begin TPA[15:8]  <= arp_rx_data; cnt <= cnt + 1'b1; end		
								27: begin TPA[7:0]   <= arp_rx_data; cnt <= 5'd0; STATE <= CHECK_ARP_TYPE;end
								default: cnt <= 5'd0;
							endcase
						end
						else begin
						   HTYPE <= 16'd0;
							PTYPE <= 16'd0;
							HLEN  <= 8'd0;
							PLEN  <= 8'd0;
							OPER  <= 16'd0;
							SHA   <= 48'd0;
							SPA   <= 32'd0;
							THA   <= 48'd0;
							TPA   <= 32'd0;
							cnt   <= 5'd0;
							STATE <= READ_ARP_PACKET;
						end
					end	
				CHECK_ARP_TYPE:              				
					begin 
                  STATE <= READ_ARP_PACKET;				   
					   if(OPER == ARP_REQUEST) begin
							if(TPA == LOCAL_IP_ADDRESS) begin
							   arp_request_ip_address <= SPA;
								arp_request_mac_address <= SHA;
								arp_request_valid <= 1'b1;
								arp_reply_valid <= 1'b0;							
							end
							else begin
							   arp_request_ip_address <= 32'd0;
								arp_request_mac_address <= 48'd0;
								arp_request_valid <= 1'b0;
								arp_reply_valid <= 1'b0;
							end
						end
						else begin// if(OPER == ARP_REPLY)
                     arp_reply_ip_address <= SPA;					   
							arp_reply_mac_address <= SHA;						
							arp_request_valid <= 1'b0;
							arp_reply_valid <= 1'b1;
						end
					end
//				CLEAR_REQUEST:
//				   begin
//					   arp_request_ip_address <= 32'd0;
//						arp_request_mac_address <= 48'd0;
//					   arp_request_valid <= 1'b0;
//						STATE <= READ_ARP_PACKET;
//					end
			endcase
		end
	end

endmodule
