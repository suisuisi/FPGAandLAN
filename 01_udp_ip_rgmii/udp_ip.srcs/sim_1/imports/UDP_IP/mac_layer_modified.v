`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:55:13 07/15/2015 
// Design Name: 
// Module Name:    mac_layer_modified 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mac_layer_modified #
(
      parameter            LOCAL_MAC_ADDRESS = 48'h0123456789ab,
		parameter            CRC_CHECK_EN 		= 1'b1,
		parameter            CRC_GEN_EN        = 1'b1,
		parameter            INTER_FRAME_GAP   = 4'd12
)
(		
		input                phy_clk,
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

mac_send_modified #
(
	 .LOCAL_MAC_ADDRESS        (LOCAL_MAC_ADDRESS),
	 .IFG                      (INTER_FRAME_GAP)
)
mac_send_modified
(
    .reset							(reset), 
    .send_data_clk				(mac_tx_clk), 
    .send_data_type				(mac_tx_data_type), 
    .send_data_valid				(mac_tx_data_valid), 
    .send_data						(mac_tx_data), 
    .RGMII_reference_clk		(phy_clk), 
    .mac_destination_address	(mac_tx_dst_address), 
    .CRC32_generation_en		(CRC_GEN_EN), 
    .mac_send_pause_en		   (mac_send_pause_en), 
    .mac_send_pause_time	   (mac_send_pause_time),
	 .pause_mac_address        (pause_mac_address),
	 .mac_send_ready           (mac_tx_ready),
    .mac_tx_data_valid			(gmii_tx_data_valid), 
    .mac_tx_data					(gmii_tx_data)
    );
	 

MAC_rcv #
(
    .LOCAL_MAC_ADDRESS     (LOCAL_MAC_ADDRESS)
)
mac_receive_module
(
    .reset						(reset), 
    .MAC_read_clk				(mac_rx_clk), 
    .RGMII_reference_clk	(phy_clk), 
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
