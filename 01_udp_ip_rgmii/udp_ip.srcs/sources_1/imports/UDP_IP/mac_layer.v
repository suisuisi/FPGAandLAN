//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-03-20 21:06:32
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-29 01:08:17
//# Description: mac_layer 主要完成对 ip 数据报和 arp 包的 mac 协议控制，
//#              包含了两个子模块 mac_send 和mac_receive，分别完成 mac 帧的发送和接收。
//#              除此之外，mac_receive 包含 mac 暂停帧解析子模块mac_control_frame_process，
//#              CRC 码校验子模块 CRC32_check，并通过 receive_fifo 完成 phy 接口时钟域至用户接口时钟域的转换。
//#              mac_send 包含了 mac 发送流量控制的子模块 mac_send_flow_control，
//#              CRC 校验码生成子模块CRC32_generation，并通过 send_fifo 完成用户接口时钟域
//#              至 phy 接口时钟域的转换。
//#              本模块通过mac_control_frame_process 和 mac_send_flow_control 模块可完成有效的以太网流量控制。
//#              mac_send 中例化了长度为 22 的移位寄存器组 mac_shift_register，用于发送 mac 首部时进行数据缓冲。
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

module mac_layer #
(
      parameter            LOCAL_MAC_ADDRESS = 48'h0123456789ab,
		parameter            CRC_CHECK_EN 		= 1'b1,
		parameter            CRC_GEN_EN        = 1'b1,
		parameter            INTER_FRAME_GAP   = 4'd12
)
(		
		input                phy_tx_clk,
		input                phy_rx_clk,
		input                reset,		
		input                gmii_rx_data_valid,
		input [7:0]          gmii_rx_data,		
		output wire          gmii_tx_data_valid,
		output wire [7:0]    gmii_tx_data,
		
		input          		mac_rx_clk,
		output          	   mac_rx_data_valid,
		output wire [7:0]    mac_rx_data,
		output wire [15:0]   mac_rx_data_type,
		output wire          mac_rx_error,
		
		input                mac_tx_clk,
		output wire          mac_tx_ready,
		input                mac_tx_data_valid,
		input [7:0]          mac_tx_data,
		input [1:0]          mac_tx_data_type,
		input [47:0]         mac_tx_dst_address    		
		
    );

wire           mac_send_pause_en;
wire [21:0]    mac_send_pause_time; 
wire [47:0]    pause_mac_address;

mac_send #
(
	 .LOCAL_MAC_ADDRESS        (LOCAL_MAC_ADDRESS),
	 .IFG                      (INTER_FRAME_GAP)
)
mac_send_module
(
    .reset							(reset), 
    .send_data_clk				(mac_tx_clk), 
    .send_data_type				(mac_tx_data_type), 
    .send_data_valid				(mac_tx_data_valid), 
    .send_data						(mac_tx_data), 
    .RGMII_reference_clk		(phy_tx_clk), 
    .mac_destination_address	(mac_tx_dst_address), 
    .CRC32_generation_en		(CRC_GEN_EN), 
    .mac_send_pause_en		   (mac_send_pause_en), 
    .mac_send_pause_time	   (mac_send_pause_time),
	 .pause_mac_address        (pause_mac_address),
	 .mac_send_ready           (mac_tx_ready),
    .mac_tx_data_valid			(gmii_tx_data_valid), 
    .mac_tx_data					(gmii_tx_data)
    );
	 

mac_receive #
(
    .LOCAL_MAC_ADDRESS     (LOCAL_MAC_ADDRESS)
)
mac_receive_module
(
    .reset						(reset), 
    .MAC_read_clk				(mac_rx_clk), 
    .RGMII_reference_clk	(phy_rx_clk), 
    .CRC32_check_en			(CRC_CHECK_EN), 
    .GMII_data_valid			(gmii_rx_data_valid), 
    .GMII_rx_data				(gmii_rx_data), 
    .mac_rx_data_valid		(mac_rx_data_valid), 
    .mac_rx_data				(mac_rx_data), 
    .mac_frame_type			(mac_rx_data_type), 
    .mac_bad_frame			(mac_rx_error), 
    .mac_send_pause_en		(mac_send_pause_en), 
    .mac_send_pause_time	(mac_send_pause_time),
	 .pause_mac_address     (pause_mac_address)
    );

endmodule
