`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/09/07 15:26:00
// Design Name: 
// Module Name: udp_transmit_test_1g
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module udp_transmit_test
(		
		input          		rst_key,
		input               clk_100,
		input               gtrefclk1_p,
		input               gtrefclk1_n,	
		
		input         	 	sfp_rx_p,
		input          		sfp_rx_n,		
		output wire        	sfp_tx_p,
		output wire         sfp_tx_n,		
		output wire         sfp_tx_disable,		
		output wire [3:0]   led
    );
	


reg          data_valid;
reg          app_data_request;

reg [15:0] 		udp_port;
reg [31:0]		ip_address;
reg [15:0]		packet_length;

wire       	app_rx_data_valid;
wire [63:0]	app_rx_data;
wire [7:0]	app_rx_data_keep;
wire 		app_rx_data_last;
wire [15:0] app_rx_data_length;
wire [15:0] app_rx_port_num;


wire        udp_tx_ready;
wire        app_tx_ack;

reg         app_tx_data_request;
reg         app_tx_data_valid;
wire [63:0] app_tx_data;
reg  [7:0]  app_tx_data_keep;
reg         app_tx_data_last;
reg  [15:0] udp_data_length;
reg         app_tx_data_read;
wire [8:0] udp_packet_fifo_data_cnt;
reg [11:0]  fifo_read_data_cnt;
reg [63:0]  test_data;
reg [1:0]   STATE;

wire        	mac_tx_valid;
wire [63:0]  	mac_tx_data;
wire [7:0]  	mac_tx_keep;
wire            mac_tx_ready;
wire 		  	mac_tx_last;
wire			mac_tx_user;
		
wire     		mac_rx_valid;
wire [63:0]    	mac_rx_data;
wire [7:0]   	mac_rx_keep;
wire      		mac_rx_last;
wire      		mac_rx_user;
		
wire     		m_axis_tvalid1;
wire [63:0]    	m_axis_tdata1;
wire [7:0]   	m_axis_tkeep1;
wire            m_axis_tready1;
wire      		m_axis_tlast1;
wire      		m_axis_tuser1;

wire        	m_axis_tvalid2;
wire [63:0]  	m_axis_tdata2;
wire [7:0]  	m_axis_tkeep2;
wire            m_axis_tready2;
wire 		  	m_axis_tlast2;
wire			m_axis_tuser2;
		
wire     		m_axis_tvalid3;
wire [63:0]    	m_axis_tdata3;
wire [7:0]   	m_axis_tkeep3;
wire            m_axis_tready3;
wire      		m_axis_tlast3;
wire      		m_axis_tuser3;

wire        	m_axis_tvalid4;
wire [63:0]  	m_axis_tdata4;
wire [7:0]  	m_axis_tkeep4;
wire            m_axis_tready4;
wire 		  	m_axis_tlast4;
wire			m_axis_tuser4;


wire [7:0]	gmii_txd;
wire        gmii_tx_en;
wire        gmii_tx_er;
wire [7:0]	gmii_rxd;
wire        gmii_rx_dv;
wire        gmii_rx_er;


  wire       rx_mac_aclk;    // MAC Rx clock
  wire       tx_mac_aclk;    // MAC Tx clock
  

  // MAC receiver client I/F
  wire [7:0] rx_axis_mac_tdata;
  wire       rx_axis_mac_tvalid;
  wire       rx_axis_mac_tlast;
  wire       rx_axis_mac_tuser;
  
  // MAC transmitter client I/F
  wire [7:0] tx_axis_mac_tdata;
  wire       tx_axis_mac_tvalid;
  wire       tx_axis_mac_tready;
  wire       tx_axis_mac_tlast;
  wire       tx_axis_mac_tuser;
  


   // AXI-Lite interface
   wire  [11:0]         s_axi_awaddr;
   wire                 s_axi_awvalid;
   wire                 s_axi_awready;
   wire  [31:0]         s_axi_wdata;
   wire                 s_axi_wvalid;
   wire                 s_axi_wready;
   wire  [1:0]          s_axi_bresp;
   wire                 s_axi_bvalid;
   wire                 s_axi_bready;
   wire  [11:0]         s_axi_araddr;
   wire                 s_axi_arvalid;
   wire                 s_axi_arready;
   wire  [31:0]         s_axi_rdata;
   wire  [1:0]          s_axi_rresp;
   wire                 s_axi_rvalid;
   wire                 s_axi_rready;
   

wire        reset;
wire        mmcm_locked;
reg [15:0]  delay_cnt;
wire        dst_ip_unreachable;

wire        tx_reset;
wire        rx_reset;

wire    glbl_rst_intn;     
wire 	gtx_resetn;  
wire 	s_axi_resetn;
wire 	core_reset;

  wire [4:0]  configuration_vector;

  wire        an_interrupt;
  wire [15:0] an_adv_config_vector;
  wire        an_restart_config;
  wire        signal_detect;
  wire [15:0] status_vector;
  
  wire       userclk2;
  wire       udp_rx_error;
  reg        udp_error_flag;

localparam  WAIT_UDP_DATA = 2'd0;
localparam  WAIT_ACK = 2'd1;
localparam  SEND_UDP_DATA = 2'd2;
localparam  DELAY = 2'd3;


assign  reset = ~rst_key;

assign  sfp_tx_disable = 1'b0;

assign  led[0] = status_vector[0];  //link status
assign  led[1] = status_vector[1];  //Link Synchronization
// assign  led[2] = status_vector[7];  //PHY Link Status  ,always low in 1000base x mode, ingnore it
//assign  led[3:2] = status_vector[15:14];  //Pause
assign  led[2] = udp_error_flag; 
assign  led[3] = mmcm_locked; 

assign  signal_detect = 1'b1;
assign  an_adv_config_vector = 16'b0000000000100001;
assign  an_restart_config    = 1'b0;

assign  configuration_vector[1:0] = 2'h0;   // Disable Loopback
assign  configuration_vector[2]   = 1'b0;   // Disable POWERDOWN
assign  configuration_vector[3]   = 1'b0;   // Disable ISOLATE
assign  configuration_vector[4]   = 1'b1;   // Enable  Auto-Neg

wire     clk_15_625;
wire     clk_200;

//----------------------------------------------------------------------------
//  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
//   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// clk_out1____15.625______0.000______50.0______192.270_____98.575
// clk_out2___200.000______0.000______50.0______114.829_____98.575
//
//----------------------------------------------------------------------------
// Input Clock   Freq (MHz)    Input Jitter (UI)
//----------------------------------------------------------------------------
// __primary_________100.000____________0.010

  clk_wiz_0 clk_wiz_0
   (
   // Clock in ports
    .clk_in1(clk_100),       // input clk_in1
    // Clock out ports
    .clk_out1(clk_15_625),      // output clk_out1
    .clk_out2(clk_200),     // output clk_out2
    // Status and control signals
    .reset(reset), // input reset
    .locked(mmcm_locked));      // output locked
	
	
/* reg	[7:0] cnt = 0;
	
always@(posedge userclk2)
    begin
		// if(key1) begin
			// cnt <= 8'd0;
			// reset <= 1'b0;
		// end
		// else if(pcspma_status[0])begin
			if(cnt == 8'hff) begin
				cnt <= cnt;
				reset <= 1'b0;
			end		
			else begin
				cnt <= cnt + 1'b1;
				reset <= 1'b1;
			end
		//end
	end	 */

	
always @(posedge clk_15_625)
   begin
      if(core_reset) 
		  udp_error_flag <= 1'b0;
	  else if(udp_rx_error)
		  udp_error_flag <= 1'b1;
	  else
		  udp_error_flag <= udp_error_flag;
	end
		
udp_packet_fifo udp_packet_fifo 
(
	  .rst(core_reset), // input rst
	  .wr_clk(clk_15_625), // input wr_clk
	  .rd_clk(clk_15_625), // input rd_clk
	  .din(app_rx_data), // input [63 : 0] din
	  .wr_en(app_rx_data_valid), // input wr_en
	  .rd_en(app_tx_data_read), // input rd_en
	  .dout(app_tx_data), // output [63 : 0] dout
	  .full(), // output full
	  .empty(), // output empty
	  .rd_data_count(udp_packet_fifo_data_cnt) // output [8 : 0] rd_data_count
);


always@(posedge clk_15_625 or posedge core_reset)
	begin
		if(core_reset) 
			udp_data_length <= 16'd0;
		else begin 
			if(app_rx_data_valid)
		      udp_data_length <= app_rx_data_length;
			else
				udp_data_length <= udp_data_length;
		end
	end

always@(posedge clk_15_625 or posedge core_reset)
	begin
		if(core_reset) begin
		   app_tx_data_request <= 1'b0;
		   app_tx_data_read <= 1'b0;
		   	app_tx_data_last <= 1'b0;
			app_tx_data_keep <= 8'hff;
			app_tx_data_valid <= 1'b0;
			fifo_read_data_cnt <= 12'd0;
			STATE <= WAIT_UDP_DATA;
		end
		else begin
		   case(STATE)
				WAIT_UDP_DATA:
					begin
						//if((udp_packet_fifo_data_cnt >= 12'd1500) && udp_tx_ready) begin
						if((udp_packet_fifo_data_cnt > 9'd0) && (~app_rx_data_valid) && udp_tx_ready) begin
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
							if(udp_data_length <= 8) begin
								app_tx_data_last <= 1'b1;
								app_tx_data_keep <= (8'hff >> (8 - udp_data_length));
								STATE <= DELAY;
							end
							else begin
								fifo_read_data_cnt <= fifo_read_data_cnt + 8;
								STATE <= SEND_UDP_DATA;
							end
						end
						else if(dst_ip_unreachable) begin
							app_tx_data_request <= 1'b0;
							app_tx_data_valid <= 1'b0;
							STATE <= WAIT_UDP_DATA;
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
						app_tx_data_valid <= 1'b1;
						fifo_read_data_cnt <= fifo_read_data_cnt + 8;
						app_tx_data_read <= 1'b1;
						if((fifo_read_data_cnt + 8) >= udp_data_length) begin		
							app_tx_data_last <= 1'b1;
							app_tx_data_keep <= (8'hff >> (fifo_read_data_cnt + 8 - udp_data_length ));
							STATE <= DELAY;
						end
						else begin																			
							STATE <= SEND_UDP_DATA;
						end						
					end
				DELAY:
					begin
						app_tx_data_read <= 1'b0;
						app_tx_data_valid <= 1'b0;
						app_tx_data_last <= 1'b0;
						app_tx_data_keep <= 8'hff;
						fifo_read_data_cnt <= 12'd0;
						if(app_rx_data_valid)
							STATE <= WAIT_UDP_DATA;
						else
							STATE <= DELAY;
					end
				default: STATE <= WAIT_UDP_DATA;
			endcase
		end
	end	
	

tri_mode_ethernet_mac_0_example_design_resets example_resets
   (
      // clocks
      .s_axi_aclk       (userclk2),
      .gtx_clk          (userclk2),
	  .core_clk         (clk_15_625),

      // asynchronous resets
      .glbl_rst         (reset),
      .reset_error      (1'b0),
      .rx_reset         (rx_reset),
      .tx_reset         (tx_reset),

      .dcm_locked       (mmcm_locked),

      // synchronous reset outputs
  
      .glbl_rst_intn    (glbl_rst_intn),
   
   
      .gtx_resetn       (gtx_resetn),
   
      .s_axi_resetn     (s_axi_resetn),
      .phy_resetn       (),
      .chk_resetn       (),
	  .core_reset       (core_reset)
   );

udp_ip_protocol_stack udp_ip_protocol_stack
(
	.LOCAL_PORT_NUM     (16'hf000),
	.LOCAL_IP_ADDRESS   (32'hc0a80a01),
	.LOCAL_MAC_ADDRESS  (48'h000a35000102),
	.ICMP_EN			 (1'b1),
	.ARP_REPLY_EN       (1'b1),
	.ARP_REQUEST_EN 	 (1'b1),
	.ARP_TIMEOUT_VALUE	 (30'd20_000_000),
	.ARP_RETRY_NUM		 (4'd2),

	.core_clk					(clk_15_625),	
    .reset					(core_reset), 
    .udp_tx_ready			(udp_tx_ready), 
    .app_tx_ack			(app_tx_ack), 
    .app_tx_request		(app_tx_data_request), //app_tx_data_request
    .app_tx_data_valid	(app_tx_data_valid),	
    .app_tx_data		(app_tx_data),
	.app_tx_data_keep   (app_tx_data_keep),
	.app_tx_data_last   (app_tx_data_last),	
    .app_tx_data_length	(udp_data_length), 
    .app_tx_dst_port		(16'hf001), 
    .ip_tx_dst_address	(32'hc0a80a02), 
    .app_rx_data_valid	(app_rx_data_valid), 
    .app_rx_data			(app_rx_data),
	.app_rx_data_keep		(app_rx_data_keep),
	.app_rx_data_last		(app_rx_data_last),
    .app_rx_data_length	(app_rx_data_length), 
    .app_rx_port_num		(app_rx_port_num),
	.udp_rx_error           (udp_rx_error),	
	.mac_tx_data_valid		(mac_tx_valid),
	.mac_tx_data			(mac_tx_data),
	.mac_tx_keep			(mac_tx_keep),
	.mac_tx_ready			(mac_tx_ready),
	.mac_tx_last			(mac_tx_last),
	.mac_tx_user			(mac_tx_user),		
	.mac_rx_data_valid		(mac_rx_valid),
	.mac_rx_data			(mac_rx_data),
	.mac_rx_keep			(mac_rx_keep),
	.mac_rx_last			(mac_rx_last),
	.mac_rx_user			(1'b0),
    .ip_rx_error			(ip_rx_error),	
	.dst_ip_unreachable     (dst_ip_unreachable)
    );

axis_data_fifo_1 tx_async_fifo0 
(
  .s_axis_aresetn(~core_reset),          // input wire s_axis_aresetn
 // .m_axis_aresetn(gtx_resetn),          // input wire m_axis_aresetn
  .s_axis_aclk(clk_15_625),                // input wire s_axis_aclk
  .s_axis_tvalid(mac_tx_valid),            // input wire s_axis_tvalid
  .s_axis_tready(mac_tx_ready),            // output wire s_axis_tready
  .s_axis_tdata(mac_tx_data),              // input wire [63 : 0] s_axis_tdata
  .s_axis_tkeep(mac_tx_keep),              // input wire [7 : 0] s_axis_tkeep
  .s_axis_tlast(mac_tx_last),              // input wire s_axis_tlast
  .s_axis_tuser(1'b0),              // input wire [0 : 0] s_axis_tuser
  .m_axis_aclk(tx_mac_aclk),                // input wire m_axis_aclk
  .m_axis_tvalid(m_axis_tvalid1),            // output wire m_axis_tvalid
  .m_axis_tready(m_axis_tready1),            // input wire m_axis_tready
  .m_axis_tdata(m_axis_tdata1),              // output wire [63 : 0] m_axis_tdata
  .m_axis_tkeep(m_axis_tkeep1),              // output wire [7 : 0] m_axis_tkeep
  .m_axis_tlast(m_axis_tlast1),              // output wire m_axis_tlast
  .m_axis_tuser(),                          // output wire [0 : 0] m_axis_tuser
 // .axis_data_count(),        // output wire [31 : 0] axis_data_count
  .axis_wr_data_count(),  // output wire [31 : 0] axis_wr_data_count
  .axis_rd_data_count()  // output wire [31 : 0] axis_rd_data_count
);
	
axis_data_fifo_0 tx_packet_fifo0 
(
  .s_axis_aresetn(gtx_resetn),          // input wire s_axis_aresetn
  .s_axis_aclk(tx_mac_aclk),                // input wire s_axis_aclk
  .s_axis_tvalid(m_axis_tvalid1),            // input wire s_axis_tvalid
  .s_axis_tready(m_axis_tready1),            // output wire s_axis_tready
  .s_axis_tdata(m_axis_tdata1),              // input wire [63 : 0] s_axis_tdata
  .s_axis_tkeep(m_axis_tkeep1),              // input wire [7 : 0] s_axis_tkeep
  .s_axis_tlast(m_axis_tlast1),              // input wire s_axis_tlast
  .s_axis_tuser(1'b0),              // input wire [0 : 0] s_axis_tuser
  .m_axis_tvalid(m_axis_tvalid2),            // output wire m_axis_tvalid
  .m_axis_tready(m_axis_tready2),            // input wire m_axis_tready
  .m_axis_tdata(m_axis_tdata2),              // output wire [63 : 0] m_axis_tdata
  .m_axis_tkeep(m_axis_tkeep2),              // output wire [7 : 0] m_axis_tkeep
  .m_axis_tlast(m_axis_tlast2),              // output wire m_axis_tlast
  .m_axis_tuser(),                          // output wire [0 : 0] m_axis_tuser
//  .axis_data_count(),        // output wire [31 : 0] axis_data_count
  .axis_wr_data_count(),  // output wire [31 : 0] axis_wr_data_count
  .axis_rd_data_count()  // output wire [31 : 0] axis_rd_data_count
);	
	
axis_dwidth_converter_0 tx_axis_dwidth_converter0 
(
  .aclk(tx_mac_aclk),                    // input wire aclk
  .aresetn(gtx_resetn),              // input wire aresetn
  .s_axis_tvalid(m_axis_tvalid2),  // input wire s_axis_tvalid
  .s_axis_tready(m_axis_tready2),  // output wire s_axis_tready
  .s_axis_tdata(m_axis_tdata2),    // input wire [63 : 0] s_axis_tdata
  .s_axis_tkeep(m_axis_tkeep2),    // input wire [7 : 0] s_axis_tkeep
  .s_axis_tlast(m_axis_tlast2),    // input wire s_axis_tlast
  .m_axis_tvalid(tx_axis_mac_tvalid),  // output wire m_axis_tvalid
  .m_axis_tready(tx_axis_mac_tready),  // input wire m_axis_tready
  .m_axis_tdata(tx_axis_mac_tdata),    // output wire [7 : 0] m_axis_tdata
  .m_axis_tkeep(),    // output wire [0 : 0] m_axis_tkeep
  .m_axis_tlast(tx_axis_mac_tlast)    // output wire m_axis_tlast
);

axis_dwidth_converter_1 rx_axis_dwidth_converter0 (
  .aclk(rx_mac_aclk),                    // input wire aclk
  .aresetn(gtx_resetn),              // input wire aresetn
  .s_axis_tvalid(rx_axis_mac_tvalid),  // input wire s_axis_tvalid
  .s_axis_tready(),  				// output wire s_axis_tready
  .s_axis_tdata(rx_axis_mac_tdata),    // input wire [7 : 0] s_axis_tdata
  .s_axis_tkeep(1'b1),    			// input wire [0 : 0] s_axis_tkeep
  .s_axis_tlast(rx_axis_mac_tlast),    // input wire s_axis_tlast
  .m_axis_tvalid(m_axis_tvalid3),  // output wire m_axis_tvalid
  .m_axis_tready(m_axis_tready3),  // input wire m_axis_tready
  .m_axis_tdata(m_axis_tdata3),    // output wire [63 : 0] m_axis_tdata
  .m_axis_tkeep(m_axis_tkeep3),    // output wire [7 : 0] m_axis_tkeep
  .m_axis_tlast(m_axis_tlast3)    // output wire m_axis_tlast
);	

axis_data_fifo_1 rx_async_fifo0 
(
  .s_axis_aresetn(gtx_resetn),          // input wire s_axis_aresetn
 // .m_axis_aresetn(~core_reset),          // input wire m_axis_aresetn
  .s_axis_aclk(rx_mac_aclk),                // input wire s_axis_aclk
  .s_axis_tvalid(m_axis_tvalid3),            // input wire s_axis_tvalid
  .s_axis_tready(m_axis_tready3),            // output wire s_axis_tready
  .s_axis_tdata(m_axis_tdata3),              // input wire [63 : 0] s_axis_tdata
  .s_axis_tkeep(m_axis_tkeep3),              // input wire [7 : 0] s_axis_tkeep
  .s_axis_tlast(m_axis_tlast3),              // input wire s_axis_tlast
  .s_axis_tuser(1'b0),              // input wire [0 : 0] s_axis_tuser
  .m_axis_aclk(clk_15_625),                // input wire m_axis_aclk
  .m_axis_tvalid(m_axis_tvalid4),            // output wire m_axis_tvalid
  .m_axis_tready(m_axis_tready4),            // input wire m_axis_tready
  .m_axis_tdata(m_axis_tdata4),              // output wire [63 : 0] m_axis_tdata
  .m_axis_tkeep(m_axis_tkeep4),              // output wire [7 : 0] m_axis_tkeep
  .m_axis_tlast(m_axis_tlast4),              // output wire m_axis_tlast
  .m_axis_tuser(),                          // output wire [0 : 0] m_axis_tuser
 // .axis_data_count(),        // output wire [31 : 0] axis_data_count
  .axis_wr_data_count(),  // output wire [31 : 0] axis_wr_data_count
  .axis_rd_data_count()  // output wire [31 : 0] axis_rd_data_count
);


axis_data_fifo_0 rx_packet_fifo0 
(
  .s_axis_aresetn(~core_reset),          // input wire s_axis_aresetn
  .s_axis_aclk(clk_15_625),                // input wire s_axis_aclk
  .s_axis_tvalid(m_axis_tvalid4),            // input wire s_axis_tvalid
  .s_axis_tready(m_axis_tready4),            // output wire s_axis_tready
  .s_axis_tdata(m_axis_tdata4),              // input wire [63 : 0] s_axis_tdata
  .s_axis_tkeep(m_axis_tkeep4),              // input wire [7 : 0] s_axis_tkeep
  .s_axis_tlast(m_axis_tlast4),              // input wire s_axis_tlast
  .s_axis_tuser(1'b0),              // input wire [0 : 0] s_axis_tuser
  .m_axis_tvalid(mac_rx_valid),            // output wire m_axis_tvalid
  .m_axis_tready(1'b1),            // input wire m_axis_tready
  .m_axis_tdata(mac_rx_data),              // output wire [63 : 0] m_axis_tdata
  .m_axis_tkeep(mac_rx_keep),              // output wire [7 : 0] m_axis_tkeep
  .m_axis_tlast(mac_rx_last),              // output wire m_axis_tlast
  .m_axis_tuser(),                          // output wire [0 : 0] m_axis_tuser
 // .axis_data_count(),        // output wire [31 : 0] axis_data_count
  .axis_wr_data_count(),  // output wire [31 : 0] axis_wr_data_count
  .axis_rd_data_count()  // output wire [31 : 0] axis_rd_data_count
);	
  //----------------------------------------------------------------------------
  // Instantiate the Tri-Mode Ethernet MAC core
  //----------------------------------------------------------------------------
   tri_mode_ethernet_mac_0 tri_mode_ethernet_mac_i (
      .gtx_clk              (userclk2),
      
      // asynchronous reset
      .glbl_rstn            (glbl_rst_intn),
      .rx_axi_rstn          (1'b1),
      .tx_axi_rstn          (1'b1),

      // Receiver Interface
      .rx_statistics_vector (),
      .rx_statistics_valid  (),

      .rx_mac_aclk          (rx_mac_aclk),
      .rx_reset             (rx_reset),
      .rx_axis_mac_tdata    (rx_axis_mac_tdata),
      .rx_axis_mac_tvalid   (rx_axis_mac_tvalid),
      .rx_axis_mac_tlast    (rx_axis_mac_tlast),
      .rx_axis_mac_tuser    (),

      // Transmitter Interface
      .tx_ifg_delay         (8'd0),
      .tx_statistics_vector (),
      .tx_statistics_valid  (),

      .tx_mac_aclk          (tx_mac_aclk),
      .tx_reset             (tx_reset),
      .tx_axis_mac_tdata    (tx_axis_mac_tdata),
      .tx_axis_mac_tvalid   (tx_axis_mac_tvalid),
      .tx_axis_mac_tlast    (tx_axis_mac_tlast),
      .tx_axis_mac_tuser    (1'b0 ),
      .tx_axis_mac_tready   (tx_axis_mac_tready),

      // Flow Control
      .pause_req            (1'b0),
      .pause_val            (16'd0),


      // Speed Control
      .speedis100           (),
      .speedis10100         (),

	  
	  // GMII Interface
	  .gmii_txd(gmii_txd),                          // output wire [7 : 0] gmii_txd
	  .gmii_tx_en(gmii_tx_en),                      // output wire gmii_tx_en
	  .gmii_tx_er(gmii_tx_er),                      // output wire gmii_tx_er
      .gmii_rxd(gmii_rxd),                          // input wire [7 : 0] gmii_rxd
      .gmii_rx_dv(gmii_rx_dv),                      // input wire gmii_rx_dv
      .gmii_rx_er(gmii_rx_er),                      // input wire gmii_rx_er

      // AXI lite interface
      .s_axi_aclk           (userclk2),
      .s_axi_resetn         (s_axi_resetn),
      .s_axi_awaddr         (s_axi_awaddr),
      .s_axi_awvalid        (s_axi_awvalid),
      .s_axi_awready        (s_axi_awready),
      .s_axi_wdata          (s_axi_wdata),
      .s_axi_wvalid         (s_axi_wvalid),
      .s_axi_wready         (s_axi_wready),
      .s_axi_bresp          (s_axi_bresp),
      .s_axi_bvalid         (s_axi_bvalid),
      .s_axi_bready         (s_axi_bready),
      .s_axi_araddr         (s_axi_araddr),
      .s_axi_arvalid        (s_axi_arvalid),
      .s_axi_arready        (s_axi_arready),
      .s_axi_rdata          (s_axi_rdata),
      .s_axi_rresp          (s_axi_rresp),
      .s_axi_rvalid         (s_axi_rvalid),
      .s_axi_rready         (s_axi_rready),
      .mac_irq              ()
   );

 gig_ethernet_pcs_pma_0  gig_ethernet_pcs_pma_i
   (
      .gtrefclk_p              (gtrefclk1_p),
      .gtrefclk_n              (gtrefclk1_n),
      .gtrefclk_out            (),
      .gtrefclk_bufg_out       (),
      
      .txp                     (sfp_tx_p),
      .txn                     (sfp_tx_n),
      .rxp                     (sfp_rx_p),
      .rxn                     (sfp_rx_n),
      .mmcm_locked_out         (),
      .userclk_out             (),
      .userclk2_out            (userclk2),
      .rxuserclk_out           (),
      .rxuserclk2_out          (),
      .independent_clock_bufg  (clk_200),
      .pma_reset_out           (),
      .resetdone               (),
      
      .gmii_txd              (gmii_txd),
      .gmii_tx_en            (gmii_tx_en),
      .gmii_tx_er            (gmii_tx_er),
      .gmii_rxd              (gmii_rxd),
      .gmii_rx_dv            (gmii_rx_dv),
      .gmii_rx_er            (gmii_rx_er),
      .gmii_isolate          (),
      .configuration_vector  (configuration_vector),
      .an_interrupt          (an_interrupt),
      .an_adv_config_vector  (an_adv_config_vector),
      .an_restart_config     (an_restart_config),
      .status_vector          (status_vector),
      .reset                  (~glbl_rst_intn),
   

      .signal_detect         (signal_detect),
      .gt0_qplloutclk_out     (),      
      .gt0_qplloutrefclk_out  ()
      );
   
   
  //----------------------------------------------------------------------------
  // Instantiate the AXI-LITE Controller
  //----------------------------------------------------------------------------

   tri_mode_ethernet_mac_0_axi_lite_sm axi_lite_controller_0 (
      .s_axi_aclk                   (userclk2),
      .s_axi_resetn                 (s_axi_resetn),

      .mac_speed                    (2'b10),
      .update_speed                 (1'b0),   // may need glitch protection on this..
      .serial_command               (1'b0),
      .serial_response              (),

      .s_axi_awaddr                 (s_axi_awaddr),
      .s_axi_awvalid                (s_axi_awvalid),
      .s_axi_awready                (s_axi_awready),

      .s_axi_wdata                  (s_axi_wdata),
      .s_axi_wvalid                 (s_axi_wvalid),
      .s_axi_wready                 (s_axi_wready),

      .s_axi_bresp                  (s_axi_bresp),
      .s_axi_bvalid                 (s_axi_bvalid),
      .s_axi_bready                 (s_axi_bready),

      .s_axi_araddr                 (s_axi_araddr),
      .s_axi_arvalid                (s_axi_arvalid),
      .s_axi_arready                (s_axi_arready),

      .s_axi_rdata                  (s_axi_rdata),
      .s_axi_rresp                  (s_axi_rresp),
      .s_axi_rvalid                 (s_axi_rvalid),
      .s_axi_rready                 (s_axi_rready)
   );

	
endmodule
