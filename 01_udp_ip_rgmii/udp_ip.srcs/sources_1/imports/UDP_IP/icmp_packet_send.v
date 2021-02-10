//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: 本模块从 ip_receive 模块接收 icmp 请求包信息，从 icmp_echo_data_fifo 中读取 ping 请求包的附加数据。然后向 ip_send 模块发送相应的 icmp 应答包。
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

module icmp_packet_send(
		input  					clk,
		input						reset,
		input 					icmp_request_en,
		input [15:0]   		icmp_request_id,
		input [15:0]   		icmp_request_sq_num,
		input [31:0]      	icmp_request_ip_address,
		input      [15:0] icmp_checksum,
		input      [7:0]  icmp_ping_echo_data,
		input      [9:0]  icmp_ping_echo_data_length,
		output reg        icmp_ping_echo_data_read,
		output reg				icmp_packet_pend,
		input						icmp_packet_read,
		output reg     		icmp_packet_data_valid,
		output reg [7:0] 		icmp_packet_data,
		output wire [9:0]   icmp_packet_data_length,
		output wire [31:0]	icmp_packet_dst_ip_address
    );


reg [15:0]    request_id;
reg [15:0]	  request_sq_num;
reg [31:0]	  request_ip_address;
reg [15:0]    checksum;
reg [9:0]	  echo_data_length;
//reg [31:0]    checksum_temp;
reg [3:0]     cnt1;
reg [9:0]     cnt2;
reg [1:0]     STATE;

localparam		WAIT_ICMP_PACKET = 2'd0;
localparam		WAIT_PACKET_SEND = 2'd1;
localparam		SEND_PACKET      = 2'd2;

localparam     PING_REPLY_TYPE  = 8'h00;

//localparam     CHECKSUM_BASE    = 32'h0006aa9d;  //除去id和sq_num以外部分的校验和

assign   icmp_packet_dst_ip_address = request_ip_address;
assign   icmp_packet_data_length = echo_data_length + 10'd8;

//计算icmp包的校验和
// always@(request_id or request_sq_num or reset)
   // begin
		// if(reset) begin
			// checksum = 16'd0;
			// checksum_temp = 32'd0;
		// end
		// else begin
			// checksum_temp = request_id + request_sq_num + CHECKSUM_BASE;
			// checksum = ~(checksum_temp[31:16] + checksum_temp[15:0]);
		// end
	// end
		
always@(posedge clk or posedge reset)
	begin
		if(reset) begin
			request_id <= 16'd0;
			request_sq_num <= 16'd0;
			request_ip_address <= 32'd0;
			checksum <= 16'd0;
			echo_data_length <= 10'd0;
			cnt1 <= 4'd0;
			cnt2 <= 10'd0;
			STATE <= WAIT_ICMP_PACKET;
			icmp_packet_pend <= 1'b0;
			icmp_packet_data_valid <= 1'b0;
			icmp_packet_data <= 8'd0;
			icmp_ping_echo_data_read <= 1'b0;
		end
		else begin
			case(STATE)
			   WAIT_ICMP_PACKET:
					begin
						if(icmp_request_en) begin
							request_id <= icmp_request_id;
							request_sq_num <= icmp_request_sq_num;
							request_ip_address <= icmp_request_ip_address;
							checksum <= icmp_checksum;
							echo_data_length <= icmp_ping_echo_data_length;
							icmp_packet_pend <= 1'b1;
							STATE <= WAIT_PACKET_SEND;
						end
						else begin
							request_id <= 16'd0;
							request_sq_num <= 16'd0;
							request_ip_address <= 32'd0;
							checksum <= 16'd0;
							echo_data_length <= 10'd0;
							icmp_packet_pend <= 1'b0;
							STATE <= WAIT_ICMP_PACKET;
						end
					end
				WAIT_PACKET_SEND:
					begin
						if(icmp_packet_read) begin
							icmp_packet_pend <= 1'b0;
							icmp_packet_data_valid <= 1'b1;
							icmp_packet_data <= PING_REPLY_TYPE;
							STATE <= SEND_PACKET;
						end
						else begin
						   icmp_packet_pend <= 1'b1;
							icmp_packet_data_valid <= 1'b0;
							icmp_packet_data <= 8'd0;
							STATE <= WAIT_PACKET_SEND;
						end
					end
				SEND_PACKET:
					begin
						case(cnt1)
							0: begin icmp_packet_data <= 8'h00; cnt1 <= cnt1 + 1'b1; end
							1: begin icmp_packet_data <= checksum[15:8]; cnt1 <= cnt1 + 1'b1; end
							2: begin icmp_packet_data <= checksum[7:0]; cnt1 <= cnt1 + 1'b1; end
							3: begin icmp_packet_data <= request_id[15:8]; cnt1 <= cnt1 + 1'b1; end
							4: begin icmp_packet_data <= request_id[7:0]; cnt1 <= cnt1 + 1'b1; end
							5: begin icmp_packet_data <= request_sq_num[15:8]; cnt1 <= cnt1 + 1'b1; end
							6: begin icmp_packet_data <= request_sq_num[7:0]; icmp_ping_echo_data_read <= 1'b1; cnt1 <= cnt1 + 1'b1; end
							7: begin
									icmp_packet_data_valid <= 1'b1;
									icmp_packet_data <= icmp_ping_echo_data;
									if(cnt2 == (echo_data_length - 1)) begin
										cnt2 <= 10'd0;
										icmp_ping_echo_data_read <= 1'b0;
										cnt1 <= cnt1 + 1'b1;
									end
									else begin
										icmp_ping_echo_data_read <= 1'b1;
										cnt2 <= cnt2 + 1'b1;
										cnt1 <= cnt1;
									end
								end
							8: begin
							      cnt1 <= 4'd0;
								  icmp_packet_data <= 8'd0;
								  icmp_packet_data_valid <= 1'b0;
								  STATE <= WAIT_ICMP_PACKET;
							   end
							default: ;
						endcase
					end
			endcase
		end
	end
							
endmodule
