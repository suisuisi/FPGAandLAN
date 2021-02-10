`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:34:05 07/14/2015 
// Design Name: 
// Module Name:    test_icmp_top 
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
module test_icmp_top(
		input      clk,
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


parameter  WAIT_UDP_READY = 0;
parameter  WAIT_UDP_ACK = 1;
parameter  SEND_DATA = 2;

always@(posedge clk or posedge reset)
   if(reset) begin
	   test_data <= 10'd0;
		data_valid <= 1'b0;
		STATE <= WAIT_UDP_READY;
		app_data_request <= 1'b0;
	end
	else begin	
		case(STATE)
			WAIT_UDP_READY:
				begin
					if(udp_tx_ready) begin
						app_data_request <= 1'b1;
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
						STATE <= SEND_DATA;
					end
					else
						STATE <= WAIT_UDP_ACK;
				end
			SEND_DATA:
				begin
					
					if(test_data == 10'd0)
						data_valid <= 1'b1;
					else if(test_data == 10'd768) begin
						data_valid <= 1'b0;
//						STATE <= WAIT_UDP_READY;
					end
					
					if(test_data == 10'd830) begin
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
    .app_tx_data_length	(16'd768), 
    .app_tx_dst_port		(16'hf001), 
    .ip_tx_dst_address	(32'hc0a80a02), 
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

reg [3:0]     cnt1;
reg [7:0]     cnt2;
reg [10:0]    cnt3;
reg [1:0]     STATE2;
reg           icmp_data_request;
reg           icmp_packet_data_valid;
reg [7:0]     icmp_packet_data;
reg [15:0]    icmp_request_id;
reg [15:0]    icmp_request_sq_num;

wire          ip_tx_ready;
wire          udp_tx_ack;

parameter  WAIT_IP_READY = 0;
parameter  WAIT_IP_ACK = 1;
parameter  SEND_ICMP_DATA = 2;
parameter  DELAY = 3;

always@(posedge clk or posedge reset)
	begin
		if(reset) begin
         cnt1 <= 4'd0;
         cnt2 <= 8'h61;
		   cnt3 <= 11'd0;
			STATE2 <= DELAY;
			icmp_data_request <= 1'b0;
			icmp_packet_data_valid <= 1'b0;
			icmp_packet_data <= 8'd0;
			icmp_request_id <= 16'd0;
			icmp_request_sq_num <= 16'd0;
		end
		else begin	
			case(STATE2)
				WAIT_IP_READY:
					begin
						if(ip_tx_ready) begin
							icmp_data_request <= 1'b1;
							STATE2 <= WAIT_IP_ACK;
						end
						else begin
							icmp_data_request <= 1'b0;
							STATE2 <= WAIT_IP_READY;
						end
					end
				WAIT_IP_ACK:
					begin
						if(udp_tx_ack) begin
							icmp_data_request <= 1'b0;
							STATE2 <= SEND_ICMP_DATA;
						end
						else
							STATE2 <= WAIT_IP_ACK;
					end
				SEND_ICMP_DATA:
					begin
						case(cnt1)
							0: begin icmp_packet_data_valid <= 1'b1; icmp_packet_data <= 8'h08; cnt1 <= cnt1 + 1'b1; end
							1: begin icmp_packet_data <= 8'h00; cnt1 <= cnt1 + 1'b1; end
							2: begin icmp_packet_data <= 8'h4d; cnt1 <= cnt1 + 1'b1; end
							3: begin icmp_packet_data <= 8'h5c; cnt1 <= cnt1 + 1'b1; end
							4: begin icmp_packet_data <= icmp_request_id[15:8]; cnt1 <= cnt1 + 1'b1; end
							5: begin icmp_packet_data <= icmp_request_id[7:0]; cnt1 <= cnt1 + 1'b1; end
							6: begin icmp_packet_data <= icmp_request_sq_num[15:8]; cnt1 <= cnt1 + 1'b1; end
							7: begin icmp_packet_data <= icmp_request_sq_num[7:0]; cnt1 <= cnt1 + 1'b1; end
							8: begin
								   icmp_packet_data <= cnt2;  //0x61~0x77
									if(cnt2 == 8'h77) begin
										cnt1 <= cnt1 + 1'b1;
										cnt2 <= 8'h61;
									end
									else begin
										cnt1 <= cnt1;
										cnt2 <= cnt2 + 1'b1;
									end
								end
							9: begin
								   icmp_packet_data <= cnt2;  //0x61~0x69
									if(cnt2 == 8'h69) begin
										cnt1 <= cnt1 + 1'b1;
										cnt2 <= 8'h61;
									end
									else begin
										cnt1 <= cnt1;
										cnt2 <= cnt2 + 1'b1;
									end
								end
							10: begin
									cnt1 <= 4'd0;
									icmp_packet_data <= 8'd0;
									icmp_packet_data_valid <= 1'b0;
									icmp_request_sq_num <= icmp_request_sq_num + 1'b1;
									STATE2 <= DELAY;
								end
							default: ;
						endcase
					end
				DELAY:
					begin
						if(cnt3 == 11'h7ff) begin
						   cnt3 <= 11'd0;
						   STATE2 <= WAIT_IP_READY;
						end
						else begin
							cnt3 <= cnt3 + 1'b1;
						   STATE2 <= DELAY;
						end
					end
			endcase
		end
	end
	 
ip_mac_layer_wrapper #
(
	 .LOCAL_IP_ADDRESS   (32'hc0a80a02),
	 .LOCAL_MAC_ADDRESS  (48'hba9876543210),
	 .CRC_CHECK_EN       (1'b1),
	 .CRC_GEN_EN         (1'b1),
	 .INTER_FRAME_GAP    (4'd12)
)
ip_mac_layer_wrapper 
(
    .clk						(clk), 
    .phy_clk				(clk), 
    .reset					(reset), 
    .ip_tx_ready			(ip_tx_ready), 
    .udp_tx_ack			(udp_tx_ack), 
    .udp_tx_request		(icmp_data_request), 
    .udp_tx_data_valid	(icmp_packet_data_valid), 
    .udp_tx_data			(icmp_packet_data), 
    .udp_tx_data_length	(16'd40), 
    .ip_tx_dst_address	(32'hc0a80a01), 
    .udp_rx_data_valid	(app_rx_data_valid2), 
    .udp_rx_data			(app_rx_data2), 
    .gmii_rx_data_valid	(gmii_tx_data_valid), 
    .gmii_rx_data			(gmii_tx_data), 
    .gmii_tx_data_valid	(gmii_rx_data_valid), 
    .gmii_tx_data			(gmii_rx_data), 
    .ip_rx_error			(ip_rx_error2), 
    .mac_rx_error			(mac_rx_error2)
    );	 



endmodule
