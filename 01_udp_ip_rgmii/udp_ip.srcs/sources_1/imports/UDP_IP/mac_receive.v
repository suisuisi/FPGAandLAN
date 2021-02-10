//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: 本模块主要有以下几个功能：
//#              从外部 phy 芯片接收 mac 帧，解析 mac 帧首部，进行 mac 地址过滤和帧类型过滤。
//#              内部子模块 CRC32_check 对每帧数据进行 CRC32 值的计算，判断数据的正确性。
//#             识别接收的 mac 流控帧，子模块 mac_control_frame_process 提取流控帧中的暂停时间
//#             和源 mac 地址输出至 mac_send 模块。
//#             mac_receive_fifo 完成 phy 接收时钟和用户接收时钟之间的时钟域转换，将数据输出。
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

module mac_receive #
(
    parameter     LOCAL_MAC_ADDRESS = 48'hffffffffffff
)
(
    input wire         reset,
    input wire         MAC_read_clk,
//	 input wire         MAC_data_request,
	 input wire         RGMII_reference_clk,
	 input wire         CRC32_check_en,
	 input wire         GMII_data_valid,
	 input wire [7:0]   GMII_rx_data,
	 //input        GMII_rx_error,
	 	 
	 output reg         mac_rx_data_valid,
	 output wire[7:0]   mac_rx_data,
	 output reg [15:0]  mac_frame_type,
	 //output reg        mac_good_frame,
	 output reg         mac_bad_frame,
	 //to mac_send module
	 output wire        mac_send_pause_en,
	 output wire [21:0] mac_send_pause_time,
	 output wire [47:0] pause_mac_address
    );

//reg  [47:0]  data_window;
//reg          frame_detect; 
//wire         frame_detect_next;
//reg  [3:0]   frame_header_cnt;
reg  [10:0]  fifo_read_data_cnt;
reg          fifo_write_en;
reg          fifo_read_en;
//wire [11:0]  fifo_data_cnt;
reg          CRC_en;
reg  [2:0]   CRC_cnt;
reg  [2:0]   STATE;
reg  [1:0]   READ_FIFO_STATE;
wire [31:0]  CRC_data_out;

reg  [47:0]  dst_mac_address;
reg  [47:0]  src_mac_address;
reg  [15:0]  frame_type_temp;
reg          mac_control_frame_valid;
reg  [3:0]   cnt;

reg  [10:0]  mac_frame_data_cnt;
reg          frame_length_fifo_write_en;
reg          frame_length_fifo_read_en;
wire [26:0]  mac_frame_length_fifo_data;
reg  [10:0]  mac_frame_length;
wire         mac_frame_length_fifo_empty;

reg  [7:0]   data_temp_reg1, data_temp_reg2, data_temp_reg3;
reg  [7:0]   GMII_rx_data_delay;
reg          valid_temp_reg1, valid_temp_reg2, valid_temp_reg3;
reg          GMII_data_valid_delay;

//parameter  mac_data_length = 11'd782;//768+14
//parameter  fifo_read_threshold = 11'd1500;
//localparam  frame_header_length = 4'd14; //源MAC地址 8byte+目的MAC地址 8byte+EtherType 2byte
//localparam  FRAME_DETECT = 3'd0;
localparam  WAIT_SFD = 3'd0;
localparam  CHECK_MAC_HEADER = 3'd1;
//localparam  WAIT_PAYLOAD = 3'd2;
localparam  WRITE_FIFO = 3'd2;
localparam  RECORD_FRAME_LENGTH = 3'd3;
localparam  WAIT_FRAME_END = 3'd4;

localparam  WAIT_MAC_FRAME = 0;
localparam  READ_MAC_FRAME_DATA_LENGTH = 1;
localparam  READ_MAC_FRAME_DATA = 2;

localparam  ARP_TYPE = 16'h0806;
localparam  IP_TYPE  = 16'h0800;
localparam  MAC_CONTROL_TYPE  = 16'h8808;

assign  pause_mac_address = src_mac_address;
//assign frame_detect_next = (data_window==56'h55555555555555)&(GMII_rx_data==8'hd5);//判断前导码
//assign frame_detect_next = (data_window==48'h555555555555)&(GMII_rx_data==8'h55);
	
always@(posedge RGMII_reference_clk or posedge reset)
   begin
	   if(reset) begin
		   data_temp_reg1 <= 8'd0;
			data_temp_reg2 <= 8'd0;
			data_temp_reg3 <= 8'd0;
			GMII_rx_data_delay <= 8'd0;
		end
		else begin
		   data_temp_reg1 <= GMII_rx_data;
			data_temp_reg2 <= data_temp_reg1;
			data_temp_reg3 <= data_temp_reg2;
			GMII_rx_data_delay <= data_temp_reg3;
		end
	end	


always@(posedge RGMII_reference_clk or posedge reset)
   begin
	   if(reset) begin
		   valid_temp_reg1 <= 8'd0;
			valid_temp_reg2 <= 8'd0;
			valid_temp_reg3 <= 8'd0;
			GMII_data_valid_delay <= 8'd0;
		end
		else begin
		   valid_temp_reg1 <= GMII_data_valid;
			valid_temp_reg2 <= valid_temp_reg1;
			valid_temp_reg3 <= valid_temp_reg2;
			GMII_data_valid_delay <= valid_temp_reg3;
		end
	end

    mac_receive_fifo mac_receive_fifo 
	 (
		  .rst(reset), // input rst
		  .wr_clk(RGMII_reference_clk), // input wr_clk
		  .rd_clk(MAC_read_clk), // input rd_clk
		  .din(GMII_rx_data_delay), // input [7 : 0] din
		  .wr_en(fifo_write_en & GMII_data_valid), // input wr_en
		  .rd_en(fifo_read_en), // input rd_en
		  .dout(mac_rx_data), // output [7 : 0] dout
		  .full(), // output full
		  .empty(), // output empty
		  .rd_data_count(), // output [11 : 0] rd_data_count
		  .wr_data_count() // output [11 : 0] wr_data_count
		);

   mac_frame_length_fifo mac_frame_length_fifo (
		  .rst(reset), // input rst
		  .wr_clk(RGMII_reference_clk), // input wr_clk
		  .rd_clk(MAC_read_clk), // input rd_clk
		  .din({mac_frame_data_cnt,frame_type_temp}), // input [26 : 0] din
		  .wr_en(frame_length_fifo_write_en), // input wr_en
		  .rd_en(frame_length_fifo_read_en), // input rd_en
		  .dout(mac_frame_length_fifo_data), // output [26 : 0] dout
		  .full(), // output full
		  .empty(mac_frame_length_fifo_empty) // output empty
      );

   CRC32_check CRC32_check_module
   (
		 .reset(reset), 
		 .clk(RGMII_reference_clk), 
		 .CRC32_en(CRC_en & CRC32_check_en), 
		 .CRC32_init(~GMII_data_valid_delay), 
		 //.CRC_result_read(CRC_result_read),          
		 .data(GMII_rx_data_delay), 
		 //.CRC_bad(CRC_bad)             //指示CRC校验结果是否正确
       .CRC_data(CRC_data_out)
	 );
	 
	 mac_control_frame_process mac_control_frame_process_module (
		 .clk(RGMII_reference_clk), 
		 .reset(reset), 
		 .mac_control_frame_valid(GMII_data_valid_delay & mac_control_frame_valid), 
		 .mac_data_in(GMII_rx_data_delay), 
		 .mac_send_pause_en(mac_send_pause_en), 
		 .mac_send_pause_time(mac_send_pause_time)
    );
	 

//always@(posedge RGMII_reference_clk or posedge reset)
//	begin
//		if(reset)
//			data_window <= 48'd0;
//		else if(GMII_data_valid)	 
//			data_window <= {data_window[39:0], GMII_rx_data};
//		else begin
//			data_window <= 48'd0;
//		end			    
//   end 
			 
always@(posedge RGMII_reference_clk or posedge reset)      
	begin
      if(reset) begin
		   STATE <= WAIT_SFD;
			dst_mac_address <= 48'd0;
			src_mac_address <= 48'd0;
			frame_type_temp <= 16'd0;
			mac_control_frame_valid <= 1'b0;
			cnt <= 4'd0;
//			frame_header_cnt <= 4'd0;
			fifo_write_en <= 1'b0;
			mac_frame_data_cnt <= 11'd0;
			CRC_en <= 1'b0;
			CRC_cnt <= 3'd4;
         mac_bad_frame <= 1'b1;
         frame_length_fifo_write_en <= 1'b0;			
		end
		else begin
		   case(STATE)
				WAIT_SFD:
					begin
						if( GMII_data_valid_delay & (GMII_rx_data_delay == 8'hd5)) begin
							CRC_en <= 1'b1;
							STATE <= CHECK_MAC_HEADER;
						end					
						else
							STATE <= WAIT_SFD;
					end
				CHECK_MAC_HEADER:
               begin		   
					   case(cnt)
						   4'd0: begin dst_mac_address[47:40] <= GMII_rx_data_delay; cnt <= cnt + 1'b1; end
							4'd1: begin dst_mac_address[39:32] <= GMII_rx_data_delay; cnt <= cnt + 1'b1; end
							4'd2: begin dst_mac_address[31:24] <= GMII_rx_data_delay; cnt <= cnt + 1'b1; end
							4'd3: begin dst_mac_address[23:16] <= GMII_rx_data_delay; cnt <= cnt + 1'b1; end
							4'd4: begin dst_mac_address[15:8]  <= GMII_rx_data_delay; cnt <= cnt + 1'b1; end
							4'd5: begin dst_mac_address[7:0]   <= GMII_rx_data_delay; cnt <= cnt + 1'b1; end
							4'd6: begin src_mac_address[47:40] <= GMII_rx_data_delay; cnt <= cnt + 1'b1; end
							4'd7: begin src_mac_address[39:32] <= GMII_rx_data_delay; cnt <= cnt + 1'b1; end
							4'd8: begin src_mac_address[31:24] <= GMII_rx_data_delay; cnt <= cnt + 1'b1; end
							4'd9: begin src_mac_address[23:16] <= GMII_rx_data_delay; cnt <= cnt + 1'b1; end
							4'd10: begin src_mac_address[15:8] <= GMII_rx_data_delay; cnt <= cnt + 1'b1; end
							4'd11: begin src_mac_address[7:0]  <= GMII_rx_data_delay; cnt <= cnt + 1'b1; end
							4'd12: begin frame_type_temp[15:8] <= GMII_rx_data_delay; cnt <= cnt + 1'b1; end
							4'd13: begin 
							          frame_type_temp[7:0] <= GMII_rx_data_delay; 
										 cnt <= 4'd0; 										 
										 if(dst_mac_address == LOCAL_MAC_ADDRESS) begin		  //mac地址过滤
											 if({frame_type_temp[15:8],GMII_rx_data_delay} == IP_TYPE ||
												 {frame_type_temp[15:8],GMII_rx_data_delay} == ARP_TYPE) begin
												 fifo_write_en <= 1'b1;
											    STATE <= WRITE_FIFO;
											 end
											 else begin
											    fifo_write_en <= 1'b0;
											    STATE <= WAIT_FRAME_END;											 
											 end
										 end
										 else if(dst_mac_address == 48'h0180c2000001) begin  //mac控制帧
										    fifo_write_en <= 1'b0;
											 STATE <= WAIT_FRAME_END;
											 if({frame_type_temp[15:8],GMII_rx_data_delay} == MAC_CONTROL_TYPE)
											    mac_control_frame_valid <= 1'b1;
											 else
												 mac_control_frame_valid <= 1'b0;
										 end
										 else if(dst_mac_address == 48'hffffffffffff) begin  //对于广播包，只接收ARP包，其余类型的广播包全部过滤
										    if({frame_type_temp[15:8],GMII_rx_data_delay} == ARP_TYPE) begin
											    fifo_write_en <= 1'b1;	
												 STATE <= WRITE_FIFO; 
                                  end  											 
											 else begin
											    fifo_write_en <= 1'b0;
											    STATE <= WAIT_FRAME_END;
											 end
										 end
									    else begin
										    fifo_write_en <= 1'b0;	
									       STATE <= WAIT_FRAME_END;
										 end
									 end
						endcase
               end					
//				WAIT_PAYLOAD:
//					begin			   
//						if(frame_header_cnt == frame_header_length - 8) begin
//							frame_header_cnt <= 4'd0;					
//							STATE <= WRITE_FIFO;
//							fifo_write_en <= 1'b1;
//						end
//						else begin
//							frame_header_cnt <= frame_header_cnt + 1'b1;
//							STATE <= WAIT_PAYLOAD;				
//						end
//					end
				WRITE_FIFO:
					begin
						if(GMII_data_valid) begin
							mac_frame_data_cnt <= mac_frame_data_cnt + 1'b1;					
							STATE <= WRITE_FIFO;
						end
						else begin
						  if(CRC_cnt == 3'd0) begin
							  if(CRC_data_out != 32'hc704dd7b)
								  mac_bad_frame <= 1'b0;					
							  else
							      mac_bad_frame <= 1'b1;
							  CRC_en <= 1'b0;
							  CRC_cnt <= 3'd4;
							  STATE <= RECORD_FRAME_LENGTH;
							  fifo_write_en <= 1'b0;
							  frame_length_fifo_write_en <= 1'b1;					  
						  end	
						  else 
							  CRC_cnt <= CRC_cnt - 1'b1;         				
						end			
					end
				RECORD_FRAME_LENGTH:
					begin
						frame_length_fifo_write_en <= 1'b0;
						mac_frame_data_cnt <= 11'd0;
						STATE <= WAIT_SFD;
					end
				WAIT_FRAME_END:
				   begin              				
						if(GMII_data_valid_delay)
						   STATE <= WAIT_FRAME_END;
						else begin
						   CRC_en <= 1'b0;     //add bug fixed 2016.10.7
                           mac_control_frame_valid <= 1'b0;							
						   STATE <= WAIT_SFD;
						end
					end
		   endcase	
      end
   end


always@(posedge MAC_read_clk or posedge reset)      
	begin
      if(reset) begin
         frame_length_fifo_read_en <= 1'b0;
			mac_rx_data_valid <= 1'b0;
			READ_FIFO_STATE <= WAIT_MAC_FRAME;
			mac_frame_length <= 11'd0;
			mac_frame_type   <= 16'd0;
			fifo_read_data_cnt <= 11'd0;
			fifo_read_en <= 1'b0;
		end
      else begin
		   case(READ_FIFO_STATE)
			   WAIT_MAC_FRAME:
					begin
						if(!mac_frame_length_fifo_empty) begin
							frame_length_fifo_read_en <= 1'b1;					
							READ_FIFO_STATE <= READ_MAC_FRAME_DATA_LENGTH;
						end
						else
							READ_FIFO_STATE <= WAIT_MAC_FRAME;
					end
				READ_MAC_FRAME_DATA_LENGTH:
					begin
						mac_frame_length <= mac_frame_length_fifo_data[26:16];
						mac_frame_type   <= mac_frame_length_fifo_data[15:0];
						frame_length_fifo_read_en <= 1'b0;
						fifo_read_en <= 1'b1;
						mac_rx_data_valid <= 1'b1;
						READ_FIFO_STATE <= READ_MAC_FRAME_DATA;
					end
				READ_MAC_FRAME_DATA:
					begin
						if(fifo_read_data_cnt < (mac_frame_length - 1) ) begin
							fifo_read_data_cnt <= fifo_read_data_cnt + 1'b1;
							READ_FIFO_STATE <= READ_MAC_FRAME_DATA;
						end
						else begin
							fifo_read_en <= 1'b0;
							mac_rx_data_valid <= 1'b0;
							fifo_read_data_cnt <= 11'd0;
							mac_frame_length <= 11'd0;
							mac_frame_type   <= 16'd0;
							READ_FIFO_STATE <= WAIT_MAC_FRAME;
						end
					end
         endcase
		end
	end

endmodule
