//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: receive_buffer 主要对从 mac_layer 输出的 ip 包和 arp 包进行分类，
//#              并分别将对应数据输出至ip_receive 和 arp_receive 模块。
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

module receive_buffer(
		input					clk,
		input					reset,
		input       		mac_rx_data_valid,
		input [7:0] 		mac_rx_data,
		input [15:0]		mac_frame_type,
		output reg        ip_rx_data_valid,
		output reg [7:0]	ip_rx_data,
		output reg        arp_rx_data_valid,
		output reg [7:0]  arp_rx_data
    );


localparam      ARP_TYPE  = 16'h0806;
localparam      IP_TYPE   = 16'h0800;

always@(posedge clk or posedge reset)
	begin
		if(reset) begin
			ip_rx_data_valid 	<= 1'b0;
			ip_rx_data      	<= 8'd0;
			arp_rx_data_valid <= 1'b0;
			arp_rx_data       <= 8'd0;
		end
		else if(mac_rx_data_valid) begin
			if(mac_frame_type == IP_TYPE) begin
			   ip_rx_data_valid <= 1'b1;
			   ip_rx_data		  <= mac_rx_data;
			end
			else if(mac_frame_type == ARP_TYPE) begin
			   arp_rx_data_valid  <= 1'b1;
			   arp_rx_data		    <= mac_rx_data;
			end
			else begin
			   ip_rx_data_valid 	<= 1'b0;
			   ip_rx_data      	<= 8'd0;
			   arp_rx_data_valid <= 1'b0;
			   arp_rx_data       <= 8'd0;
			end
		end
		else begin
			ip_rx_data_valid 	<= 1'b0;
			ip_rx_data      	<= 8'd0;
			arp_rx_data_valid <= 1'b0;
			arp_rx_data       <= 8'd0;
		end
	end

endmodule
