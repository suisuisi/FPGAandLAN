//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: 本模块主要有两个功能：
//#              接收 arp_receive 模块输入的 ip 地址和 mac 地址，
//#              按一一对应的方式进行保存。（目前最多可保存 4组地址）
//#              根据 send_buffer 模块输入的 ip 地址，
//#              查询出对应的 mac 地址进行反馈，若无该 ip 地址，则返回全0 的无效 mac 地址。
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

module mac_cache(
		input					w_clk,
		input         	   r_clk,
		input					reset,
		input         	   write_en,
		input	[31:0]		w_ip_address,
		input [47:0]		w_mac_address,
		
		input          	read_en,
		input [31:0]		r_ip_address,
		output reg [47:0]	r_mac_address,
		output reg        read_done
    );


reg   		 mac_cache_flag [0:3];
reg [31:0]	 ip_address_cache [0:3];
reg [47:0]	 mac_address_cache [0:3];
reg [1:0]    index;
 
always@(posedge w_clk or posedge reset)
	begin
		if(reset) begin
			mac_cache_flag[0] <= 1'b0;
			ip_address_cache[0] <= 32'd0;
			mac_address_cache[0] <= 48'd0;
			mac_cache_flag[1] <= 1'b0;
			ip_address_cache[1] <= 32'd0;
			mac_address_cache[1] <= 48'd0;
			mac_cache_flag[2] <= 1'b0;
			ip_address_cache[2] <= 32'd0;
			mac_address_cache[2] <= 48'd0;
			mac_cache_flag[3] <= 1'b0;
			ip_address_cache[3] <= 32'd0;
			mac_address_cache[3] <= 48'd0;
			index <= 2'd0;
		end
		else begin
			if(write_en) begin
				if(mac_cache_flag[0] && ip_address_cache[0] == w_ip_address)
					mac_address_cache[0] <= w_mac_address;
				else if(mac_cache_flag[1] && ip_address_cache[1] == w_ip_address)
					mac_address_cache[1] <= w_mac_address;
				else if(mac_cache_flag[2] && ip_address_cache[2] == w_ip_address) 
					mac_address_cache[2] <= w_mac_address;
				else if(mac_cache_flag[3] && ip_address_cache[3] == w_ip_address)
					mac_address_cache[3] <= w_mac_address;
				else begin
					mac_cache_flag[index] <= 1'b1;
					ip_address_cache[index] <= w_ip_address;
					mac_address_cache[index] <= w_mac_address;
					index <= index + 1'b1;
				end
			end
			else begin
				mac_cache_flag[0] <= mac_cache_flag[0];
				ip_address_cache[0] <= ip_address_cache[0];
				mac_address_cache[0] <= mac_address_cache[0];
				mac_cache_flag[1] <= mac_cache_flag[1];
				ip_address_cache[1] <= ip_address_cache[1];
				mac_address_cache[1] <= mac_address_cache[1];
				mac_cache_flag[2] <= mac_cache_flag[2];
				ip_address_cache[2] <= ip_address_cache[2];
				mac_address_cache[2] <= mac_address_cache[2];
				mac_cache_flag[3] <= mac_cache_flag[3];
				ip_address_cache[3] <= ip_address_cache[3];
				mac_address_cache[3] <= mac_address_cache[3];
			end
		end
	end

always@(posedge r_clk or posedge reset)
	begin
		if(reset) begin
			r_mac_address <= 48'd0;
			read_done <= 1'b0;
		end
		else begin
			if(read_en) begin
				read_done <= 1'b1;
				if(mac_cache_flag[0] && r_ip_address == ip_address_cache[0])
					r_mac_address <= mac_address_cache[0];
				else if(mac_cache_flag[1] && r_ip_address == ip_address_cache[1])
					r_mac_address <= mac_address_cache[1];
				else if(mac_cache_flag[2] && r_ip_address == ip_address_cache[2])
					r_mac_address <= mac_address_cache[2];
				else if(mac_cache_flag[3] && r_ip_address == ip_address_cache[3])
					r_mac_address <= mac_address_cache[3];
				else
					r_mac_address <= 48'd0;
			end
			else begin
				r_mac_address <= r_mac_address;
				read_done <= 1'b0;
			end
		end
	end


endmodule
