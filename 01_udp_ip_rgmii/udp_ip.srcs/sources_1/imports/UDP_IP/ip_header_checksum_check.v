//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: ip_header_checksum_check ip首部校验和计算模块
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

module ip_header_checksum_check(
		input      			clk,
		input 				reset,
		input             ip_data_in_valid,
		input [7:0]			ip_data_in,
		output reg        checksum_correct
    );

reg [1:0]  state;
reg [3:0]  cnt;
wire [16:0] tmp_accum1;
reg [15:0] accum1, accum2;

assign tmp_accum1 = accum1 + accum2;

always @(posedge clk or posedge reset) 
   begin
		if(reset) begin
			state <= 2'd0;
			cnt <= 4'd0;
			accum1 <= 16'd0;
			accum2 <= 16'd0;		
            checksum_correct <= 1'b1;			
		end
		else begin
			case(state) 
				0: begin 
						if(ip_data_in_valid) begin
						   accum1[15:8] <= ip_data_in; 
						   state <= 2'd1; 
						end
						else begin
						   accum1[15:8] <= 8'd0;
						   state <= 2'd0;
						end
				   end
				1: begin accum1[7:0]  <= ip_data_in; state <= 2'd2; end
				2: begin 		
					  if(cnt == 4'd9) begin
						 if((tmp_accum1[15:0] + tmp_accum1[16]) != 16'hffff)
						      checksum_correct <= 1'b0;
//                         else
//                            checksum_correct <= 1'b0;
                         cnt <= 4'd0;
						 state <= 2'd3;
					  end
				      else begin	
						 accum2 <= tmp_accum1[15:0] + tmp_accum1[16];
						 accum1[15:8] <= ip_data_in;
						 cnt <= cnt + 1'b1;						   
						 state <= 2'd1;
					  end
				   end
                3: begin
                       accum1 <= 16'd0;
					   accum2 <= 16'd0;
				       if(ip_data_in_valid)
						  state <= state;
					   else
						  state <= 2'd0;
				   end				
			endcase
		end
	end

endmodule
