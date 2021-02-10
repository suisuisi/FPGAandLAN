`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:46 07/13/2015 
// Design Name: 
// Module Name:    test_top 
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
module test_top(
		input      clk,
		input      clk_p,
		input      clk_n,
		input      reset,
		output wire    ip_rx_error,
		output wire    mac_rx_error,
		output wire    ip_rx_error2,
		output wire    mac_rx_error2
  
    );




wire          gmii_rx_data_valid;
wire [7:0]    gmii_rx_data;
wire          gmii_tx_data_valid;
wire [7:0]    gmii_tx_data;


reg [9:0]    test_data;
reg          data_valid;
reg          app_data_request;
reg [1:0]    STATE;

reg [15:0] 		udp_port;
reg [31:0]		ip_address;
reg [15:0]		packet_length;


parameter  WAIT_UDP_READY = 0;
parameter  WAIT_UDP_ACK = 1;
parameter  SEND_DATA = 2;

always@(posedge clk or posedge reset)
   if(reset) begin
	   test_data <= 10'd0;
		data_valid <= 1'b0;
		STATE <= WAIT_UDP_READY;
		app_data_request <= 1'b0;
		udp_port <= 16'd0;
		ip_address <= 32'd0;
		packet_length <= 16'd0;
	end
	else begin	
		case(STATE)
			WAIT_UDP_READY:
				begin
					if(udp_tx_ready) begin
						app_data_request <= 1'b1;
						ip_address <= 32'hc0a80a02;
						STATE <= WAIT_UDP_ACK;
					end
					else begin
						app_data_request <= 1'b0;
						STATE <= WAIT_UDP_READY;
					end
				end
			WAIT_UDP_ACK:
				begin
					if(app_tx_ack) begin
						app_data_request <= 1'b0;					
						udp_port <= 16'hf000;
						packet_length <= 16'd768;
						data_valid <= 1'b1;
						STATE <= SEND_DATA;
					end
					else
						STATE <= WAIT_UDP_ACK;
				end
			SEND_DATA:
				begin
					
//					if(test_data == 10'd0)
//						data_valid <= 1'b1;
					if(test_data == 10'd767) begin
						data_valid <= 1'b0;
//						STATE <= WAIT_UDP_READY;
						udp_port <= 16'd0;
						ip_address <= 32'd0;
						packet_length <= 16'd0;
					end
					else
					   data_valid <= 1'b1;
					
					if(test_data == 10'd767) begin
					   test_data <= 10'd0;
					   STATE <= WAIT_UDP_READY;
					end
					else begin
					   test_data <= test_data + 1'b1;
					   STATE <= SEND_DATA;
					end
				end
		endcase
	end




udp_ip_protocol_stack #
(
	 .LOCAL_PORT_NUM     (16'hf000),
	 .LOCAL_IP_ADDRESS   (32'hc0a80a01),
	 .LOCAL_MAC_ADDRESS  (48'h0123456789ab),
	 .CRC_CHECK_EN       (1'b1),
	 .CRC_GEN_EN         (1'b1),
	 .INTER_FRAME_GAP    (4'd12)
)
udp_ip_protocol_stack_1 
(
    .clk						(clk), 
    .phy_clk				(clk), 
    .reset					(reset), 
    .udp_tx_ready			(udp_tx_ready), 
    .app_tx_ack			(app_tx_ack), 
    .app_tx_request		(app_data_request), 
    .app_tx_data_valid	(data_valid), 
    .app_tx_data			(test_data[7:0]), 
    .app_tx_data_length	(packet_length), 
    .app_tx_dst_port		(udp_port), 
    .ip_tx_dst_address	(ip_address), 
    .app_rx_data_valid	(app_rx_data_valid), 
    .app_rx_data			(app_rx_data), 
    .app_rx_data_length	(app_rx_data_length), 
    .app_rx_port_num		(app_rx_port_num), 
    .gmii_rx_data_valid	(gmii_rx_data_valid), 
    .gmii_rx_data			(gmii_rx_data), 
    .gmii_tx_data_valid	(gmii_tx_data_valid), 
    .gmii_tx_data			(gmii_tx_data), 
    .ip_rx_error			(ip_rx_error), 
    .mac_rx_error			(mac_rx_error)
    );
	 
/* udp_ip_protocol_stack #
(
	 .LOCAL_PORT_NUM     (16'hf001),
	 .LOCAL_IP_ADDRESS   (32'hc0a80a02),
	 .LOCAL_MAC_ADDRESS  (48'hba9876543210),
	 .CRC_CHECK_EN       (1'b1),
	 .CRC_GEN_EN         (1'b1),
	 .INTER_FRAME_GAP    (4'd12)
)
udp_ip_protocol_stack_2 
(
    .clk						(clk), 
    .phy_clk				(clk), 
    .reset					(reset), 
    .udp_tx_ready			(udp_tx_ready2), 
    .app_tx_ack			(app_tx_ack2), 
    .app_tx_request		(1'b0), 
    .app_tx_data_valid	(1'b0), 
    .app_tx_data			(8'd0), 
    .app_tx_data_length	(16'd0), 
    .app_tx_dst_port		(16'd0), 
    .ip_tx_dst_address	(32'd0), 
    .app_rx_data_valid	(app_rx_data_valid2), 
    .app_rx_data			(app_rx_data2), 
    .app_rx_data_length	(app_rx_data_length2), 
    .app_rx_port_num		(app_rx_port_num2), 
    .gmii_rx_data_valid	(gmii_tx_data_valid), 
    .gmii_rx_data			(gmii_tx_data), 
    .gmii_tx_data_valid	(gmii_rx_data_valid), 
    .gmii_tx_data			(gmii_rx_data), 
    .ip_rx_error			(ip_rx_error2), 
    .mac_rx_error			(mac_rx_error2)
    );	  */

	
	 udp_transmit_test   udp_transmit_test(
         		.reset(reset),
               .refclk_p(clk_p),
              .refclk_n(clk_n),
         	 	.phy_gmii_rx_clk(~clk),
		          		.phy_gmii_rx_dv(gmii_tx_data_valid),
		          		.phy_gmii_rx_er(0),
		     		.phy_gmii_rx_data(gmii_tx_data),
		
		        	.phy_gmii_tx_clk(),
		         	.phy_gmii_tx_en(),
		         	.phy_gmii_tx_er(),
		    .phy_gmii_tx_data(),
		
		         	.phy_reset(),
		         .ip_rx_error(),
		         .mac_rx_error(),
		          .idelayctrl_ready(),
		          .locked()
    );

endmodule
