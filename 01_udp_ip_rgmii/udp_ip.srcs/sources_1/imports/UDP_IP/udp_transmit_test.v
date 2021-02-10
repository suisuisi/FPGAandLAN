`timescale 1ns / 1ps

module udp_transmit_test(
		input          		key1,
		input               clk_50,
		input         	 	phy1_rgmii_rx_clk,
		input          		phy1_rgmii_rx_ctl,
		input [3:0]     	phy1_rgmii_rx_data,
		
		output wire        	phy1_rgmii_tx_clk,
		output wire         phy1_rgmii_tx_ctl,
		output wire [3:0]   phy1_rgmii_tx_data,
		
		output wire         phy_reset
		// output wire         ip_rx_error,
		// output wire         mac_rx_error,
		// output wire         idelayctrl_ready,
		// output wire         locked
    );


wire [7:0]	gmii_tx_data;
wire        gmii_tx_en;
wire [7:0]	gmii_rx_data;
wire        gmii_rx_dv;

wire       	app_rx_data_valid;
wire [7:0]	app_rx_data;
wire [15:0] app_rx_data_length;
wire [15:0] app_rx_port_num;


wire        udp_tx_ready;
wire        app_tx_ack;

reg         app_tx_data_request;
reg         app_tx_data_valid;
wire [7:0]  app_tx_data;
reg  [15:0] udp_data_length;
reg         app_tx_data_read;
wire [11:0] udp_packet_fifo_data_cnt;
reg [11:0]  fifo_read_data_cnt;
reg [1:0]   STATE;

wire        reset;
wire        mmcm_locked;
reg [9:0]   delay_cnt;

localparam  WAIT_UDP_DATA = 2'd0;
localparam  WAIT_ACK = 2'd1;
localparam  SEND_UDP_DATA = 2'd2;
localparam  DELAY = 2'd3;

assign  reset = ~key1;
assign  phy_reset = (delay_cnt == 10'd100)? 1'b1 : 1'b0;

always @(posedge clk_25)
   begin
      if(reset) 
         delay_cnt <= 10'd0;
      else if(mmcm_locked) begin
		 if(delay_cnt == 10'd100)
			delay_cnt <= delay_cnt;
		 else
		    delay_cnt <= delay_cnt + 1'b1;
      end
	  else
		 delay_cnt <= delay_cnt;
   end

  
  wire    idelayctrl_ready;
  reg     idelayctrl_reset;
  wire    idelayctrl_reset_in;
  wire    idelayctrl_reset_sync;
  reg   [3:0]      idelay_reset_cnt; 
  
  assign idelayctrl_reset_in   = reset;
  
   // An IDELAYCTRL primitive needs to be instantiated for the Fixed Tap Delay
   // mode of the IDELAY.
   IDELAYCTRL  #(
      .SIM_DEVICE ("7SERIES")
   )
   idelayctrl_inst(
      .RDY                  (idelayctrl_ready),
      .REFCLK               (clk_200),
      .RST                  (idelayctrl_reset)
   );

    // Create a synchronous reset in the IDELAYCTRL refclk clock domain.
   tri_mode_ethernet_mac_0_reset_sync idelayctrl_reset_gen (
      .clk              (clk_200),
      .enable           (1'b1),
      .reset_in         (idelayctrl_reset_in),
      .reset_out        (idelayctrl_reset_sync)
   );    
   
      // The IDELAYCTRL must experience a pulse which is at least 50 ns in
   // duration.  This is ten clock cycles of the 200MHz refclk.  Here we
   // drive the reset pulse for 12 clock cycles.
   always @(posedge clk_200)
   begin
      if (idelayctrl_reset_sync) begin
         idelay_reset_cnt     <= 4'b0000;
         idelayctrl_reset     <= 1'b1;
      end
      else begin
         case (idelay_reset_cnt)
            4'b0000 : idelay_reset_cnt <= 4'b0001;
            4'b0001 : idelay_reset_cnt <= 4'b0010;
            4'b0010 : idelay_reset_cnt <= 4'b0011;
            4'b0011 : idelay_reset_cnt <= 4'b0100;
            4'b0100 : idelay_reset_cnt <= 4'b0101;
            4'b0101 : idelay_reset_cnt <= 4'b0110;
            4'b0110 : idelay_reset_cnt <= 4'b0111;
            4'b0111 : idelay_reset_cnt <= 4'b1000;
            4'b1000 : idelay_reset_cnt <= 4'b1001;
            4'b1001 : idelay_reset_cnt <= 4'b1010;
            4'b1010 : idelay_reset_cnt <= 4'b1011;
            4'b1011 : idelay_reset_cnt <= 4'b1100;
            default : idelay_reset_cnt <= 4'b1100;
         endcase
         if (idelay_reset_cnt == 4'b1100) begin
            idelayctrl_reset  <= 1'b0;
         end
         else begin
            idelayctrl_reset  <= 1'b1;
         end
      end
   end
   

   
//----------------------------------------------------------------------------
//  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
//   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// CLK_OUT1____25.000______0.000______50.0______236.428____164.985
// CLK_OUT2___125.000_____ 0.000______50.0______154.207____164.985
// CLK_OUT3___125.000_____90.000______50.0______154.207____164.985
// CLK_OUT4___200.000______0.000______50.0______142.107____164.985
//
//----------------------------------------------------------------------------
// Input Clock   Freq (MHz)    Input Jitter (UI)
//----------------------------------------------------------------------------
// __primary__________50.000____________0.010

  clk_wiz_0 clk_wiz_0
   (
   // Clock in ports
    .clk_in1(clk_50),       // input clk_in1
    // Clock out ports
    .clk_out1(clk_25),      // output clk_out1
    .clk_out2(clk_125),     // output clk_out2
    .clk_out3(clk_125_90),  // output clk_out3
    .clk_out4(clk_200),     // output clk_out4
    // Status and control signals
    .reset(reset), // input reset
    .locked(mmcm_locked));      // output locked

udp_packet_fifo udp_packet_fifo 
(
	  .rst(reset), // input rst
	  .wr_clk(RGMII_reference_clk), // input wr_clk
	  .rd_clk(RGMII_reference_clk), // input rd_clk
	  .din(app_rx_data), // input [7 : 0] din
	  .wr_en(app_rx_data_valid), // input wr_en
	  .rd_en(app_tx_data_read), // input rd_en
	  .dout(app_tx_data), // output [7 : 0] dout
	  .full(), // output full
	  .empty(), // output empty
	  .rd_data_count(udp_packet_fifo_data_cnt) // output [11 : 0] rd_data_count
);


always@(posedge RGMII_reference_clk or posedge reset)
	begin
		if(reset) 
			udp_data_length <= 16'd0;
		else begin 
			if(app_rx_data_valid)
		      udp_data_length <= app_rx_data_length;
			else
				udp_data_length <= udp_data_length;
		end
	end

always@(posedge RGMII_reference_clk or posedge reset)
	begin
		if(reset) begin
		   app_tx_data_request <= 1'b0;
		   app_tx_data_read <= 1'b0;
			app_tx_data_valid <= 1'b0;
			fifo_read_data_cnt <= 12'd0;
			STATE <= WAIT_UDP_DATA;
		end
		else begin
		   case(STATE)
				WAIT_UDP_DATA:
					begin
						//if((udp_packet_fifo_data_cnt >= 12'd1500) && udp_tx_ready) begin
						if((udp_packet_fifo_data_cnt > 12'd0) && (~app_rx_data_valid) && udp_tx_ready) begin
						   app_tx_data_request <= 1'b1;
							STATE <= WAIT_ACK;
						end
						else begin
						   app_tx_data_request <= 1'b0;
							STATE <= WAIT_UDP_DATA;
						end
					end
				WAIT_ACK:
					begin
					   if(app_tx_ack) begin
						   app_tx_data_request <= 1'b0;
							app_tx_data_read <= 1'b1;
							app_tx_data_valid <= 1'b1;
							STATE <= SEND_UDP_DATA;
						end
						else begin
							app_tx_data_request <= 1'b1;
						  	app_tx_data_read <= 1'b0;
							app_tx_data_valid <= 1'b0;
							STATE <= WAIT_ACK;
						end
					end
				SEND_UDP_DATA:
					begin
						if(fifo_read_data_cnt == (udp_data_length - 1'b1)) begin
							fifo_read_data_cnt <= 12'd0;
							app_tx_data_valid <= 1'b0;
							app_tx_data_read <= 1'b0;
							STATE <= WAIT_UDP_DATA;
						end
						else begin
							fifo_read_data_cnt <= fifo_read_data_cnt + 1'b1;
							app_tx_data_valid <= 1'b1;
							app_tx_data_read <= 1'b1;
							STATE <= SEND_UDP_DATA;
						end						
					end
				DELAY:
					begin
						if(app_rx_data_valid)
							STATE <= WAIT_UDP_DATA;
						else
							STATE <= DELAY;
					end
				default: STATE <= WAIT_UDP_DATA;
			endcase
		end
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
udp_ip_protocol_stack
(
    .clk					(RGMII_reference_clk), 
    .phy_tx_clk				(clk_125),
	.phy_rx_clk				(RGMII_reference_clk),
    .reset					(reset), 
    .udp_tx_ready			(udp_tx_ready), 
    .app_tx_ack			(app_tx_ack), 
    .app_tx_request		(app_tx_data_request), 
    .app_tx_data_valid	(app_tx_data_valid), 
    .app_tx_data			(app_tx_data), 
    .app_tx_data_length	(udp_data_length), 
    .app_tx_dst_port		(16'hf001), 
    .ip_tx_dst_address	(32'hc0a80a02), 
    .app_rx_data_valid	(app_rx_data_valid), 
    .app_rx_data			(app_rx_data), 
    .app_rx_data_length	(app_rx_data_length), 
    .app_rx_port_num		(app_rx_port_num), 
    .gmii_rx_data_valid	(gmii_rx_dv), 
    .gmii_rx_data			(gmii_rx_data), 
    .gmii_tx_data_valid	(gmii_tx_en), 
    .gmii_tx_data			(gmii_tx_data), 
    .ip_rx_error			(ip_rx_error), 
    .mac_rx_error			(mac_rx_error)
    );
	 
rgmii_send rgmii_send_module (
    .reset(reset), 
    .RGMII_reference_clk(clk_125),
	.RGMII_reference_clk_90(clk_125),
    .mac_tx_data_valid(gmii_tx_en), 
    .mac_tx_data(gmii_tx_data), 
    .RGMII_tx_clk(phy1_rgmii_tx_clk), 
    .RGMII_tx_ctrl(phy1_rgmii_tx_ctl), 
    .RGMII_tx_data(phy1_rgmii_tx_data)
    );
	 
	 	 
rgmii_receive rgmii_receive_module (
    .reset(reset), 
    .RGMII_rx_clk(phy1_rgmii_rx_clk), 
    .RGMII_rx_ctrl(phy1_rgmii_rx_ctl), 
    .RGMII_rx_data(phy1_rgmii_rx_data), 
    .RGMII_reference_clk(RGMII_reference_clk), 
    .GMII_data_valid(gmii_rx_dv), 
    .GMII_rx_error(), 
    .GMII_rx_data(gmii_rx_data)
    );


endmodule
