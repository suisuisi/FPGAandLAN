//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: 本模块主要完成 icmp 包的解析，以及 icmp 请求包信息的输出，目前只支持 ping 请求包的识别和解析，其余类型的 icmp 包全部过滤。
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

module icmp_packet_process(
	  input       			clk,
	  input       			reset,
	  input       			icmp_packet_valid,
	  input [7:0]	   	icmp_packet_data,
	  output reg      	icmp_request_en,
	  output reg [15:0]  icmp_request_id,
	  output reg [15:0] 	icmp_request_sq_num,
	  output reg [15:0] icmp_checksum,
	  output reg        icmp_ping_echo_data_valid,
	  output reg [7:0] 	icmp_ping_echo_data,
	  output wire [9:0] icmp_ping_echo_data_length
    ); 

reg [7:0]  type;
reg [7:0]  code;
reg [15:0] checksum;
wire [15:0] checksum_temp;
reg [3:0]  cnt;
reg [9:0]  echo_data_cnt;
reg        STATE;

reg [1:0]  checksum_state;
reg        checksum_correct;
wire [31:0] tmp_accum1;
reg [15:0] accum1;
reg [31:0] accum2;

localparam   RECORD_ICMP_HEADER = 0;
localparam   WAIT_PACKET_END = 1;

localparam   PING_REQUEST = 8'h08;

assign  icmp_ping_echo_data_length = echo_data_cnt + 1'b1;

assign  tmp_accum1 = accum2 + accum1;
assign  checksum_temp = ~(tmp_accum1[15:0] + tmp_accum1[31:16] - checksum - {type, 8'd0});

always @(posedge clk or posedge reset) 
   begin
		if(reset) begin
			checksum_state <= 2'd0;
			accum1 <= 16'd0;
			accum2 <= 32'd0;
            checksum_correct <= 1'b1;			
		end
		else begin
			case(checksum_state) 
				0: begin 
						if(icmp_packet_valid) begin
						   accum1[15:8] <= icmp_packet_data; 
						   checksum_state <= 2'd1; 
						end
						else begin
						   accum1[15:8] <= 8'd0;
						   checksum_state <= 2'd0;
						end
				   end
				1: begin accum1[7:0]  <= icmp_packet_data; checksum_state <= 2'd2; end
				2: begin 		
					  if(!icmp_packet_valid) begin
						 if((tmp_accum1[15:0] + tmp_accum1[31:16]) != 16'hffff)
						      checksum_correct <= 1'b0;
                         else
                              checksum_correct <= 1'b1;
						 checksum_state <= 2'd3;
					  end
				      else begin
						 accum2 <= tmp_accum1;					  
						 accum1[15:8] <= icmp_packet_data;					   
						 checksum_state <= 2'd1;
					  end
				   end
                3: begin
                       accum1 <= 16'd0;
					   accum2 <= 32'd0;
					   checksum_state <= 2'd0;
				   end				
			endcase
		end
	end

always @(posedge clk or posedge reset) 
   begin
		if(reset) begin
		   cnt <= 4'd0;
			type <= 8'd0;
			code <= 8'd0;
			echo_data_cnt <= 10'd0;
			checksum <= 16'd0;
			icmp_request_en <= 1'b0;
			icmp_request_id <= 16'd0;
			icmp_request_sq_num <= 16'd0;
			icmp_ping_echo_data_valid <= 1'b0;
			icmp_ping_echo_data <= 8'd0;
			icmp_checksum <= 16'd0;
			STATE <= RECORD_ICMP_HEADER;
	   end
		else begin
			case(STATE)
				RECORD_ICMP_HEADER:
					begin
					    icmp_request_en <= 1'b0;
						echo_data_cnt <= 10'd0;
						if(icmp_packet_valid)
							case(cnt)
								0: begin type <= icmp_packet_data; cnt <= cnt + 1'b1; end
								1: begin code <= icmp_packet_data; cnt <= cnt + 1'b1; end
								2: begin checksum[15:8] <= icmp_packet_data; cnt <= cnt + 1'b1; end
								3: begin checksum[7:0] <= icmp_packet_data; cnt <= cnt + 1'b1; end
								4: begin icmp_request_id[15:8] <= icmp_packet_data; cnt <= cnt + 1'b1; end
								5: begin icmp_request_id[7:0] <= icmp_packet_data; cnt <= cnt + 1'b1; end
								6: begin icmp_request_sq_num[15:8] <= icmp_packet_data; cnt <= cnt + 1'b1; end
								7: begin icmp_request_sq_num[7:0] <= icmp_packet_data; cnt <= cnt + 1'b1; end
								8: begin										
										cnt <= 4'd0;
										STATE <= WAIT_PACKET_END;										
										if(type == PING_REQUEST && code == 8'h00) begin
											icmp_ping_echo_data_valid <= 1'b1;
											icmp_ping_echo_data <= icmp_packet_data;										
										end	
										else begin
											icmp_ping_echo_data_valid <= 1'b0;
											icmp_ping_echo_data <= 8'd0;
										end
									end
								default: STATE <= RECORD_ICMP_HEADER;
							endcase
						else
							STATE <= RECORD_ICMP_HEADER;
					end
				WAIT_PACKET_END:
					begin					
						if(icmp_packet_valid) begin
							icmp_ping_echo_data_valid <= icmp_ping_echo_data_valid;
							icmp_ping_echo_data <= icmp_packet_data;
							STATE <= WAIT_PACKET_END;
							if(icmp_ping_echo_data_valid)
								echo_data_cnt <= echo_data_cnt + 1'b1;
							else
							    echo_data_cnt <= 10'd0;
						end
						else begin
							icmp_ping_echo_data_valid <= 1'b0;
							icmp_ping_echo_data <= 8'd0;
							STATE <= RECORD_ICMP_HEADER;
							echo_data_cnt <= echo_data_cnt;
							if(icmp_ping_echo_data_valid) begin
								icmp_request_en <= 1'b1;
								icmp_checksum <= checksum_temp;
							end
							else begin
							    icmp_checksum <= 16'd0;
								icmp_request_en <= 1'b0;
							end								
						end
					end
			endcase
		end
   end
				  
									

endmodule
