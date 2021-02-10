`timescale 1ns / 1ps

module mac_control_frame_process(
    input 					clk,
	 input 					reset,
	 input            	mac_control_frame_valid,
	 input [7:0]         mac_data_in,
	 output reg      		mac_send_pause_en,
	 output reg [21:0]   mac_send_pause_time  //暂停的周期数
    );


reg [15:0]  opcode;
reg [15:0]  pause_time;
reg [2:0]   cnt;
reg         STATE;


localparam READ_FRAME      = 0;
localparam WAIT_FRAME_END  = 1;

localparam PAUSE_FRAME = 16'h0001;

always@(posedge clk or posedge reset)
   begin
	   if(reset) begin
			cnt <= 3'd0;
			opcode <= 16'd0;
			pause_time <= 16'd0;
			mac_send_pause_en <= 1'b0;
			mac_send_pause_time <= 22'd0;
			STATE <= READ_FRAME;
		end
		else begin
		   case(STATE)
				READ_FRAME:
					begin
					   if(mac_control_frame_valid)
							case(cnt)
								0: begin opcode[15:8] <= mac_data_in; cnt <= cnt + 1'b1; end
								1: begin 
										opcode[7:0] <= mac_data_in; 
										if({opcode[15:8], mac_data_in} == PAUSE_FRAME) begin
											STATE <= READ_FRAME;
											cnt <= cnt + 1'b1; 
										end
										else begin
											cnt <= 3'd0;
											STATE <= WAIT_FRAME_END;
										end
									end
								2: begin pause_time[15:8] <= mac_data_in; cnt <= cnt + 1'b1; end
								3: begin pause_time[7:0] <= mac_data_in; cnt <= cnt + 1'b1; end
								4: begin
										cnt <= 3'd0;
										opcode <= 16'd0;
										pause_time <= 16'd0;
										mac_send_pause_en <= 1'b1;
										mac_send_pause_time <= {pause_time, 6'd0};  //*512/8 = *64 = *(2^6)
										STATE <= WAIT_FRAME_END;
									end
							endcase
						else
						   STATE <= READ_FRAME;
					end
				WAIT_FRAME_END:
				   begin
					   mac_send_pause_en <= 1'b0;
						mac_send_pause_time <= 22'd0;
						if(mac_control_frame_valid)
							STATE <= WAIT_FRAME_END;
						else 
						   STATE <= READ_FRAME;
					end
				endcase
			end
	   end

endmodule
