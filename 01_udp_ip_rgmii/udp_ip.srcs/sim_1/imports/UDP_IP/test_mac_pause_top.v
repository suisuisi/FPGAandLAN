`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:40:49 07/15/2015 
// Design Name: 
// Module Name:    test_mac_pause_top 
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
module test_mac_pause_top(
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




udp_ip_protocol_stack_modified #
(
	 .LOCAL_PORT_NUM     (16'hf000),
	 .LOCAL_IP_ADDRESS   (32'hc0a80a01),
	 .LOCAL_MAC_ADDRESS  (48'h0123456789ab),
	 .CRC_CHECK_EN       (1'b1),
	 .CRC_GEN_EN         (1'b1),
	 .INTER_FRAME_GAP    (4'd12)
)
udp_ip_protocol_stack_modified 
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
reg [11:0]    cnt3;
reg [1:0]     STATE2;
reg           mac_tx_data_valid;
reg [7:0]     mac_tx_data;
reg [1:0]     mac_tx_data_type;
reg [47:0]    mac_tx_dst_address; 

wire          mac_tx_ready;



parameter  SEND_MAC_DATA = 0;
parameter  DELAY = 1;

always@(posedge clk or posedge reset)
	begin
		if(reset) begin
         cnt1 <= 4'd0;
         cnt2 <= 8'h00;
			cnt3 <= 12'd0;
			STATE2 <= DELAY;
			mac_tx_data_valid <= 1'b0;
			mac_tx_data <= 8'd0;
			mac_tx_data_type <= 2'd2;
			mac_tx_dst_address <= 48'd0;
		end
		else begin	
			case(STATE2)
				SEND_MAC_DATA:
					begin
						case(cnt1)
							0: begin 
									if(mac_tx_ready) begin
									   mac_tx_data_valid <= 1'b1;
										mac_tx_data <= 8'h00; 
										mac_tx_data_type <= 2'd0;
										mac_tx_dst_address <= 48'h0180c2000001;
										cnt1 <= cnt1 + 1'b1; 
									end
									else begin
										mac_tx_data_valid <= 1'b0;
										mac_tx_data_type <= 2'd2;
										mac_tx_data <= 8'h00; 
										mac_tx_dst_address <= 48'd0;
										cnt1 <= 4'd0;
									end
								end
							1: begin mac_tx_data <= 8'h01; cnt1 <= cnt1 + 1'b1; end
							2: begin mac_tx_data <= 8'h00; cnt1 <= cnt1 + 1'b1; end
							3: begin mac_tx_data <= 8'h20; cnt1 <= cnt1 + 1'b1; end
							4: begin 
							      mac_tx_data <= 8'h00;
									if(cnt2 == 8'd41) begin
										STATE2 <= DELAY;
										cnt2 <= 8'd0;
										cnt1 <= 4'd0;
										mac_tx_data_valid <= 1'b0;
									end
									else begin
										cnt1 <= cnt1;
									   STATE2 <= SEND_MAC_DATA;
										cnt2 <= cnt2 + 1'b1;
										mac_tx_data_valid <= 1'b1;
									end
								end
							default: ;
						endcase
					end
				DELAY:
					begin
						if(cnt3 == 12'hfff) begin
						   cnt3 <= 12'd0;
						   STATE2 <= SEND_MAC_DATA;
						end
						else begin
							cnt3 <= cnt3 + 1'b1;
						   STATE2 <= DELAY;
						end
					end
			endcase
		end
	end
	 
mac_layer_modified #
(
	 .LOCAL_MAC_ADDRESS    	(48'hba9876543210),
	 .CRC_CHECK_EN 			(1'b1),
	 .CRC_GEN_EN        		(1'b1),
	 .INTER_FRAME_GAP  		(4'd12)
)
mac_layer_modified 
(
    .phy_clk					(clk), 
    .reset						(reset), 
    .gmii_rx_data_valid		(gmii_tx_data_valid), 
    .gmii_rx_data				(gmii_tx_data), 
    .gmii_tx_data_valid		(gmii_rx_data_valid), 
    .gmii_tx_data				(gmii_rx_data), 
    .mac_rx_clk				(clk), 
    .mac_rx_data_valid		(mac_rx_data_valid), 
    .mac_rx_data				(mac_rx_data), 
    .mac_rx_data_type		(mac_rx_data_type), 
    .mac_rx_error				(mac_rx_error2), 
    .mac_tx_clk				(clk), 
    .mac_tx_ready				(mac_tx_ready), 
    .mac_tx_data_valid		(mac_tx_data_valid), 
    .mac_tx_data				(mac_tx_data), 
    .mac_tx_data_type		(mac_tx_data_type), 
    .mac_tx_dst_address		(mac_tx_dst_address)
    );	




endmodule
