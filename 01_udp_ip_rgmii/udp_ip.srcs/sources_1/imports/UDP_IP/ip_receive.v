//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: ip_receive 模块具有三个主要功能：
//#              从 receive_buffer 模块接收相应的 ip 数据报，内部子模块 ip_header_checksum_check 对 IP 数据报包头的校验和进行计算，判断包头正确性。
//#              根据 ip 包头中的目的 ip 地址进行数据包过滤，根据协议字段提取出 udp 包和 icmp 包，过滤其他协议类型数据。
//#              将 udp 包直接输出至 udp_receive 模块，将 icmp 包交给内部 icmp_packet_process 模块处理。
//#              内部子模块 icmp_packet_process 接收 ip_receive 模块提取出的 icmp 包（目前只支持 icmp 中的 ping请求包），
//#              根据 ping 请求包的内容产生相应的 ping 请求包信息输出至 ip_send 模块，并将 ping 请求包的附加数据存入 icmp_echo_data_fifo 中
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

module ip_receive #
(
   parameter         LOCAL_IP_ADDRESS = 32'h00000000
)
(
	input wire       	ip_receive_clk,						//时钟信号
	input wire        	reset,								//复位信号，高电平有效
	input wire        	ip_data_in_valid,					//发送数据有效标志信号，高电平有效
	input wire [7:0]  	ip_data_in,							//接口所需发送的数据

	output wire       	icmp_request_en,					//icmp请求使能
	output wire [31:0]  icmp_request_ip_address,			//icmp请求ip地址
	output wire [15:0]  icmp_request_id,					//icmp请求ID
	output wire [15:0]  icmp_request_sq_num,				//icmp_request_sq_num
	output wire [15:0]  icmp_checksum,						//icmp_checksum,
	output wire         icmp_ping_echo_data_valid,          //icmp_ping_echo_data_valid,
	output wire [7:0] 	icmp_ping_echo_data,                //icmp_ping_echo_data,
	output wire [9:0]   icmp_ping_echo_data_length,	        //icmp_ping_echo_data_length,
	output reg        	udp_data_out_valid,                 //udp_data_out_valid,
	output reg [7:0]  	udp_data_out,                       //udp_data_out,
	output wire       	ip_header_checksum_correct          //ip_header_checksum_correct
);

reg [4:0]    cnt;
reg [3:0]    ip_version;
reg [3:0]    ip_header_length;
reg [7:0]    ip_tos;
reg [15:0]   ip_packet_length;
reg [15:0]   ip_packet_id;
reg [2:0]    ip_packet_flag;
reg [12:0]   ip_fragment_offset;
reg [7:0]    ip_packet_ttl;
reg [7:0]    ip_packet_protocol;
reg [15:0]   ip_header_checksum;
reg [31:0]   ip_src_address;
reg [31:0]   ip_dst_address;
reg          icmp_packet_valid;
reg [1:0]    STATE;

localparam   WAIT_IP_PACKET    = 2'd0;
localparam   RECORD_IP_HEADER  = 2'd1;
localparam   OUTPUT_UDP_PACKET = 2'd2;
localparam   WAIT_PACKET_END   = 2'd3;

localparam   UDP_TYPE    = 8'h11;
localparam   ICMP_TYPE   = 8'h01;

assign  icmp_request_ip_address = ip_src_address;


ip_header_checksum_check ip_header_checksum_check_module 
(
    .clk						(ip_receive_clk), 
    .reset					(reset), 
    .ip_data_in_valid	(ip_data_in_valid), 
    .ip_data_in			(ip_data_in), 
    .checksum_correct	(ip_header_checksum_correct)
    );
	 
icmp_packet_process icmp_packet_process_module 
(
    .clk							(ip_receive_clk), 
    .reset						(reset), 
    .icmp_packet_valid		(ip_data_in_valid & icmp_packet_valid), 
    .icmp_packet_data		(ip_data_in), 
    .icmp_request_en			(icmp_request_en), 
    .icmp_request_id			(icmp_request_id), 
    .icmp_request_sq_num	(icmp_request_sq_num),
	.icmp_checksum			(icmp_checksum),
	.icmp_ping_echo_data_valid (icmp_ping_echo_data_valid),
	.icmp_ping_echo_data   (icmp_ping_echo_data),
	.icmp_ping_echo_data_length  (icmp_ping_echo_data_length)
    );
	 
	 
always @(posedge ip_receive_clk or posedge reset) 
   begin
		if(reset) begin
			cnt <= 5'd0;
			ip_version <= 4'd0;
			ip_header_length <= 4'd0;
			ip_tos <= 8'd0;
			ip_packet_length <= 16'd0;
			ip_packet_id <= 16'd0;
			ip_packet_flag <= 3'd0;
			ip_fragment_offset <= 13'd0;
			ip_packet_ttl <= 8'd0;
			ip_packet_protocol <= 8'd0;
			ip_header_checksum <= 16'd0;
			ip_src_address <= 32'd0;
			ip_dst_address <= 32'd0;
			icmp_packet_valid <= 1'b0;
			udp_data_out_valid <= 1'b0;
	      udp_data_out <= 8'd0;
			STATE <= WAIT_IP_PACKET;
		end
		else begin
			case(STATE)
				WAIT_IP_PACKET:
					begin
						if(ip_data_in_valid) begin
							ip_version <= ip_data_in[7:4];
							ip_header_length <= ip_data_in[3:0];
							STATE <= RECORD_IP_HEADER;
						end
						else
						   STATE <= WAIT_IP_PACKET;
					end
				RECORD_IP_HEADER:
					begin
						case(cnt)
							0: begin ip_tos <= ip_data_in; cnt <= cnt + 1'b1; end
							1: begin ip_packet_length[15:8] <= ip_data_in; cnt <= cnt + 1'b1; end
							2: begin ip_packet_length[7:0] <= ip_data_in; cnt <= cnt + 1'b1; end
							3: begin ip_packet_id[15:8] <= ip_data_in; cnt <= cnt + 1'b1; end
							4: begin ip_packet_id[7:0] <= ip_data_in; cnt <= cnt + 1'b1; end
							5: begin 
									ip_packet_flag <= ip_data_in[7:5]; 
									ip_fragment_offset[12:8] <= ip_data_in[4:0];
									cnt <= cnt + 1'b1; 
								end
							6: begin ip_fragment_offset[7:0] <= ip_data_in[4:0]; cnt <= cnt + 1'b1; end
							7: begin ip_packet_ttl[7:0] <= ip_data_in[4:0]; cnt <= cnt + 1'b1; end
							8: begin ip_packet_protocol[7:0] <= ip_data_in[4:0]; cnt <= cnt + 1'b1; end 
							9: begin ip_header_checksum[15:8] <= ip_data_in; cnt <= cnt + 1'b1; end
							10: begin ip_header_checksum[7:0] <= ip_data_in; cnt <= cnt + 1'b1; end
							11: begin ip_src_address[31:24] <= ip_data_in; cnt <= cnt + 1'b1; end
							12: begin ip_src_address[23:16] <= ip_data_in; cnt <= cnt + 1'b1; end
							13: begin ip_src_address[15:8] <= ip_data_in; cnt <= cnt + 1'b1; end
							14: begin ip_src_address[7:0] <= ip_data_in; cnt <= cnt + 1'b1; end
							15: begin ip_dst_address[31:24] <= ip_data_in; cnt <= cnt + 1'b1; end
							16: begin ip_dst_address[23:16] <= ip_data_in; cnt <= cnt + 1'b1; end
							17: begin ip_dst_address[15:8] <= ip_data_in; cnt <= cnt + 1'b1; end
							18: begin 
									 ip_dst_address[7:0] <= ip_data_in; 
									 cnt <= 5'd0; 
									 if({ip_dst_address[31:8], ip_data_in} == LOCAL_IP_ADDRESS) begin
										 if(ip_packet_protocol == ICMP_TYPE) begin
											 icmp_packet_valid <= 1'b1;
											 STATE <= WAIT_PACKET_END;
										 end
										 else if(ip_packet_protocol == UDP_TYPE) begin
										    icmp_packet_valid <= 1'b0;
											 STATE <= OUTPUT_UDP_PACKET;
										 end
										 else begin
										 	 icmp_packet_valid <= 1'b0;
											 STATE <= WAIT_PACKET_END;
										 end
									 end
									 else begin
										 icmp_packet_valid <= 1'b0;
										 STATE <= WAIT_PACKET_END;
									 end
								 end
						endcase
					end
				OUTPUT_UDP_PACKET:
					begin
						if(ip_data_in_valid) begin
							udp_data_out_valid <= 1'b1;
							udp_data_out <= ip_data_in;
							STATE <= OUTPUT_UDP_PACKET;
						end
					   else begin
							udp_data_out_valid <= 1'b0;
							udp_data_out <= 8'd0;
							STATE <= WAIT_IP_PACKET;
						end
               end
            WAIT_PACKET_END:
               begin
						if(ip_data_in_valid)
							STATE <= WAIT_PACKET_END;
						else begin
						  	icmp_packet_valid <= 1'b0;
							STATE <= WAIT_IP_PACKET; 
						end
					end
			endcase
		end
	end


endmodule
