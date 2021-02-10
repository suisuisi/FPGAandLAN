//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: ip_send 模块具有两个主要功能：
//#             通过内部子模块 icmp_packet_send，从 ip_receive 模块接收 icmp 请求包信息，产生并封装发送相应的 icmp 应答包。
//#             从 udp_send 模块接收 udp 报文数据，封装为 IP 包后发送。
//#             ip_send 模块为 udp 报文、icmp 数据包添加 IP 包首部，同时迚行首部校验和的计算，
//#             将计算结果附于首部检验和字段，最后将封装完成的 IP 数据报输出至 send_buffer 模块。
//#             udp_send 与 ip_send，ip_send 与 icmp_packet_send，ip_send 与 send_buffer 之间的数据传输均需要完成握手通信。
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

module ip_send #
(
	parameter VERSION          = 4'h4,          //IPv4
	parameter IHL              = 4'h5,          //IP包头大小，5*4=20Bytes
	parameter TOS              = 8'h00,         //普通服务类型
	parameter ID_BASE          = 16'h0000,      //IP包标识基准0
	parameter FLAG             = 3'b010,        //不允许IP分片，且发送的IP数据包为最后一个段
	parameter FRAGMENT_OFFSET  = 13'd0,         //IP包分片偏移0
//	parameter TTL              = 8'h80,         //生存时间
//	parameter PROTOCOL         = 8'h11,         //17，UDP协议
	parameter LOCAL_IP_ADDRESS = 32'hc0a80a01  //源IP地址：192.168.10.1
//	parameter dst_ip_address      = 32'hc0a80102,  //目的IP地址：192.168.1.2
//	parameter CHKSUM_BASE      = 16'h8fbb      //除目的IP地址，IP包长度，IP包标识以外，上述已知IP包首部部分的校验和   
)
(
	input wire        ip_send_clk,
	input wire        reset,
	// from UDP send
   input wire	      udp_data_in_valid,
	input wire [7:0]  udp_data_in,
	input wire [15:0] udp_data_length,
	input wire [31:0] dst_ip_address,
	input wire        udp_send_request,
	//
	input wire        send_buffer_ready,
	input wire        send_buffer_ack,
	
	input wire        icmp_request_en,
	input wire [15:0] icmp_request_id,
	input wire [15:0] icmp_request_sq_num,
	input wire [31:0] icmp_request_ip_address,
	input      [15:0] icmp_checksum,
    input      [7:0]  icmp_ping_echo_data,
	input      [9:0]  icmp_ping_echo_data_length,
	output wire       icmp_ping_echo_data_read,
	// output ports
	output reg        ip_send_ready,
	output reg        ip_send_request,
	output reg        ip_send_ack,
	output reg [31:0] ip_send_address,        
	output reg	      ip_data_out_valid,
	output reg [7:0]  ip_data_out
);


reg [15:0] ip_data_length, datagram_cnt;
wire [31:0] checksum_base;
reg [15:0] checksum;
reg [31:0] checksum_temp;
reg [15:0] packet_id;
reg [4:0]  cnt;
reg 		  send_packet_flag;
wire [7:0] shift_data_out;
reg [15:0] trans_data_cnt;
reg [7:0]  TTL;
reg [7:0]  PROTOCOL;
reg        icmp_packet_read;
reg [2:0]  STATE;

localparam  IDLE = 3'd0;
localparam  WAIT_ACK = 3'd1;
localparam  SEND_IP_HEADER = 3'd2;
localparam  SEND_UDP_PACKET = 3'd3;
localparam  SEND_ICMP_PACKET = 3'd4;
	
//assign     ip_send_address	= dst_ip_address;
assign     checksum_base = {VERSION, IHL, TOS} + ID_BASE + {FLAG, FRAGMENT_OFFSET} + LOCAL_IP_ADDRESS[31:16] +  LOCAL_IP_ADDRESS[15:0];

	shift_ip ip_shift_register           //20个级联的移位寄存器组
	(
	  .D(udp_data_in), // input [7 : 0] d
	  .CLK(ip_send_clk), // input clk
	  .CE(udp_data_in_valid | ip_data_out_valid), // input ce
	  .Q(shift_data_out) // output [7 : 0] q
	  );
	  
	  
wire      	icmp_packet_pend;
wire      	icmp_packet_data_valid;
wire [7:0]  icmp_packet_data;
wire [31:0] icmp_packet_dst_ip_address;
wire [9:0]  icmp_packet_data_length;

icmp_packet_send icmp_packet_send_module 
(
    .clk									(ip_send_clk), 
    .reset								(reset), 
    .icmp_request_en					(icmp_request_en), 
    .icmp_request_id					(icmp_request_id), 
    .icmp_request_sq_num			(icmp_request_sq_num),
	.icmp_request_ip_address   	(icmp_request_ip_address),
	.icmp_checksum			(icmp_checksum),
	.icmp_ping_echo_data_read (icmp_ping_echo_data_read),
	.icmp_ping_echo_data   (icmp_ping_echo_data),
	.icmp_ping_echo_data_length  (icmp_ping_echo_data_length),	 
    .icmp_packet_pend				(icmp_packet_pend), 
    .icmp_packet_read				(icmp_packet_read), 
    .icmp_packet_data_valid		(icmp_packet_data_valid), 
    .icmp_packet_data				(icmp_packet_data),
	.icmp_packet_data_length       (icmp_packet_data_length),
	 .icmp_packet_dst_ip_address  (icmp_packet_dst_ip_address)
    );
	

always@(*)
   begin
		if(reset) begin
			checksum_temp = 32'd0;
			checksum = 16'd0;
		end
		else begin
			checksum_temp = checksum_base + {TTL, PROTOCOL} + packet_id + ip_data_length + ip_send_address[31:16] + ip_send_address[15:0];
		   checksum = ~(checksum_temp[31:16] + checksum_temp[15:0]);
		end
	end
	
always@(posedge ip_send_clk or posedge reset)
   begin
		if(reset) begin
				cnt <= 5'd0;
				ip_send_ready <= 1'b0;
				send_packet_flag <= 1'b0;
				ip_send_request <= 1'b0;
				ip_send_ack <= 1'b0;
				ip_data_out <= 8'd0;
				ip_data_out_valid <= 1'b0;
				ip_send_address <= 32'd0;
				datagram_cnt <= 16'h0;
				packet_id <= 16'd0;
				ip_data_length <= 16'd0;
				TTL <= 8'd0;
				PROTOCOL <= 8'd0;
				icmp_packet_read <= 1'b0;
				trans_data_cnt <= 16'd0;
				STATE <= IDLE;
		end
		else begin
			case(STATE)
				IDLE:
					begin
						if(send_buffer_ready)
							if(icmp_packet_pend) begin
								ip_send_ready <= 1'b0;
								send_packet_flag <= 1'b0;
								ip_send_request <= 1'b1;
								ip_send_address <= icmp_packet_dst_ip_address;
								STATE <= WAIT_ACK;
							end
							else if(udp_send_request) begin
								ip_send_ready <= 1'b0;
								send_packet_flag <= 1'b1;
								ip_send_request <= 1'b1;
								ip_send_address <= dst_ip_address;
								STATE <= WAIT_ACK;
					      end
							else begin
								ip_send_ready <= 1'b1;
								send_packet_flag <= 1'b0;
								ip_send_request <= 1'b0;
								STATE <= IDLE;							
							end
						else begin
						   ip_send_ready <= 1'b0;
							send_packet_flag <= 1'b0;
							ip_send_request <= 1'b0;
							STATE <= IDLE;
						end
					end
				WAIT_ACK:
					begin
						if(send_buffer_ack) begin
							ip_send_request <= 1'b0;
							STATE <= SEND_IP_HEADER;
							if(send_packet_flag)
								ip_send_ack <= 1'b1;
							else
							   ip_send_ack <= 1'b0;
						end
						else begin
						   ip_send_ack <= 1'b0;
							ip_send_request <= 1'b1;
							STATE <= WAIT_ACK;
						end
					end
				SEND_IP_HEADER:
					begin
						ip_send_ack <= 1'b0;
						case(cnt)
							0: begin
									if(udp_data_in_valid | (~send_packet_flag)) begin
										ip_data_out <= {VERSION, IHL};
										ip_data_out_valid <= 1'b1;
								      packet_id <= ID_BASE + datagram_cnt;
										TTL <= 8'h80;
										if(!send_packet_flag) begin
											ip_data_length <= icmp_packet_data_length + (IHL << 2);
											PROTOCOL <= 8'h01;
										end
										else begin
											ip_data_length <= udp_data_length + (IHL << 2);      //IP包总长度	
											PROTOCOL <= 8'h11;											
										end
										cnt <= cnt + 1'b1;
									end
									else
									   cnt <= 5'd0;
								end							
							1: begin ip_data_out <= TOS;cnt <= cnt + 1'b1; end
							2: begin ip_data_out <= ip_data_length[15:8]; cnt <= cnt + 1'b1; end
							3: begin ip_data_out <= ip_data_length[7:0]; cnt <= cnt + 1'b1; end
							4: begin ip_data_out <= packet_id[15:8]; cnt <= cnt + 1'b1; end
							5: begin ip_data_out <= packet_id[7:0]; cnt <= cnt + 1'b1; end
							6: begin ip_data_out <= {FLAG , FRAGMENT_OFFSET[12:8]}; cnt <= cnt + 1'b1; end
							7: begin ip_data_out <= FRAGMENT_OFFSET[7:0]; cnt <= cnt + 1'b1; end
							8: begin ip_data_out <= TTL; cnt <= cnt + 1'b1; end
							9: begin ip_data_out <= PROTOCOL; cnt <= cnt + 1'b1; end
							10: begin ip_data_out <= checksum[15:8]; cnt <= cnt + 1'b1; end
							11: begin ip_data_out <= checksum[7:0]; cnt <= cnt + 1'b1; end
							12: begin ip_data_out <= LOCAL_IP_ADDRESS[31:24]; cnt <= cnt + 1'b1; end
							13: begin ip_data_out <= LOCAL_IP_ADDRESS[23:16]; cnt <= cnt + 1'b1; end
							14: begin ip_data_out <= LOCAL_IP_ADDRESS[15:8];  cnt <= cnt + 1'b1; end
							15: begin ip_data_out <= LOCAL_IP_ADDRESS[7:0];   cnt <= cnt + 1'b1; end
							16: begin
                            cnt <= cnt + 1'b1;
									 if(!send_packet_flag)
									    ip_data_out <= icmp_packet_dst_ip_address[31:24];
									 else
										 ip_data_out <= ip_send_address[31:24]; 
								 end
							17: begin 
									 cnt <= cnt + 1'b1;
									 if(!send_packet_flag)
									    ip_data_out <= icmp_packet_dst_ip_address[23:16];
									 else
										 ip_data_out <= ip_send_address[23:16]; 
								 end
							18: begin 							   
									 cnt <= cnt + 1'b1; 
									 if(!send_packet_flag) begin
									    ip_data_out <= icmp_packet_dst_ip_address[15:8];
										 icmp_packet_read <= 1'b1;
									 end
									 else begin
										 ip_data_out <= ip_send_address[15:8];
									    icmp_packet_read <= 1'b0;
									 end
								 end
							19: begin
									 icmp_packet_read <= 1'b0;
									 cnt <= 5'd0;
									 if(!send_packet_flag) begin
									    ip_data_out <= icmp_packet_dst_ip_address[7:0];
										 STATE <= SEND_ICMP_PACKET;
									 end
									 else begin
										 ip_data_out <= ip_send_address[7:0]; 
									    STATE <= SEND_UDP_PACKET;
									 end
								 end
				         default: cnt <= 5'd0;
			         endcase
		         end
				SEND_UDP_PACKET:
				   begin	
						if(trans_data_cnt == (ip_data_length - 16'd20)) begin
							ip_data_out_valid <= 1'b0;
							ip_data_out <= 8'd0;
							datagram_cnt <= datagram_cnt + 16'h0001;
							trans_data_cnt <= 16'd0;
							STATE <= IDLE;
						end
						else begin
							ip_data_out_valid <= 1'b1;
							ip_data_out <= shift_data_out;
							trans_data_cnt <= trans_data_cnt + 1'b1;
							STATE <= SEND_UDP_PACKET;
						end
					end
				SEND_ICMP_PACKET:
					begin
						if(icmp_packet_data_valid) begin
							ip_data_out_valid <= 1'b1;
							ip_data_out <= icmp_packet_data;
							STATE <= SEND_ICMP_PACKET;
						end
						else begin
							ip_data_out_valid <= 1'b0;
							ip_data_out <= 8'd0;
							datagram_cnt <= datagram_cnt + 16'h0001;
							STATE <= IDLE;
						end
					end
			endcase
		end
	end

endmodule
