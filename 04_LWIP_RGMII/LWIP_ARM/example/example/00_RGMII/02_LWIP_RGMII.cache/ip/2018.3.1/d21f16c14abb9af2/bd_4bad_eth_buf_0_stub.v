// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Apr 11 17:25:07 2020
// Host        : LAPTOP-8E6RLG3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_4bad_eth_buf_0_stub.v
// Design      : bd_4bad_eth_buf_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_ethernet_buffer_v2_0_19,Vivado 2018.3.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(INTERRUPT, S_AXI_ACLK, S_AXI_ARESETN, 
  S_AXI_AWADDR, S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, S_AXI_WVALID, 
  S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, S_AXI_ARADDR, S_AXI_ARVALID, 
  S_AXI_ARREADY, S_AXI_RDATA, S_AXI_RRESP, S_AXI_RVALID, S_AXI_RREADY, 
  EMAC_CLIENT_AUTONEG_INT, EMAC_RESET_DONE_INT, EMAC_RX_DCM_LOCKED_INT, 
  PCSPMA_STATUS_VECTOR, AXI_STR_TXD_ACLK, AXI_STR_TXD_ARESETN, AXI_STR_TXD_TVALID, 
  AXI_STR_TXD_TREADY, AXI_STR_TXD_TLAST, AXI_STR_TXD_TKEEP, AXI_STR_TXD_TDATA, 
  AXI_STR_TXC_ACLK, AXI_STR_TXC_ARESETN, AXI_STR_TXC_TVALID, AXI_STR_TXC_TREADY, 
  AXI_STR_TXC_TLAST, AXI_STR_TXC_TKEEP, AXI_STR_TXC_TDATA, AXI_STR_RXD_ACLK, 
  AXI_STR_RXD_ARESETN, AXI_STR_RXD_VALID, AXI_STR_RXD_READY, AXI_STR_RXD_LAST, 
  AXI_STR_RXD_KEEP, AXI_STR_RXD_DATA, AXI_STR_RXS_ACLK, AXI_STR_RXS_ARESETN, 
  AXI_STR_RXS_VALID, AXI_STR_RXS_READY, AXI_STR_RXS_LAST, AXI_STR_RXS_KEEP, 
  AXI_STR_RXS_DATA, pause_req, pause_val, S_AXI_2TEMAC_AWADDR, S_AXI_2TEMAC_AWVALID, 
  S_AXI_2TEMAC_AWREADY, S_AXI_2TEMAC_WDATA, S_AXI_2TEMAC_WVALID, S_AXI_2TEMAC_WREADY, 
  S_AXI_2TEMAC_BRESP, S_AXI_2TEMAC_BVALID, S_AXI_2TEMAC_BREADY, S_AXI_2TEMAC_ARADDR, 
  S_AXI_2TEMAC_ARVALID, S_AXI_2TEMAC_ARREADY, S_AXI_2TEMAC_RDATA, S_AXI_2TEMAC_RRESP, 
  S_AXI_2TEMAC_RVALID, S_AXI_2TEMAC_RREADY, RX_CLK_ENABLE_IN, rx_statistics_vector, 
  rx_statistics_valid, rx_mac_aclk, rx_reset, rx_axis_mac_tdata, rx_axis_mac_tvalid, 
  rx_axis_mac_tlast, rx_axis_mac_tuser, tx_ifg_delay, tx_mac_aclk, tx_reset, 
  tx_axis_mac_tdata, tx_axis_mac_tvalid, tx_axis_mac_tlast, tx_axis_mac_tuser, 
  tx_axis_mac_tready, speed_is_10_100, RESET2PCSPMA, RESET2TEMACn, PHY_RST_N, mdio_i_top, 
  mdio_o_top, mdio_t_top, mdc_top, mdio_t_pcspma, mdio_o_pcspma, mdio_i_temac, mdio_o_temac, 
  mdio_t_temac, mdc_temac, GTX_CLK)
/* synthesis syn_black_box black_box_pad_pin="INTERRUPT,S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[17:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[17:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY,EMAC_CLIENT_AUTONEG_INT,EMAC_RESET_DONE_INT,EMAC_RX_DCM_LOCKED_INT,PCSPMA_STATUS_VECTOR[15:0],AXI_STR_TXD_ACLK,AXI_STR_TXD_ARESETN,AXI_STR_TXD_TVALID,AXI_STR_TXD_TREADY,AXI_STR_TXD_TLAST,AXI_STR_TXD_TKEEP[3:0],AXI_STR_TXD_TDATA[31:0],AXI_STR_TXC_ACLK,AXI_STR_TXC_ARESETN,AXI_STR_TXC_TVALID,AXI_STR_TXC_TREADY,AXI_STR_TXC_TLAST,AXI_STR_TXC_TKEEP[3:0],AXI_STR_TXC_TDATA[31:0],AXI_STR_RXD_ACLK,AXI_STR_RXD_ARESETN,AXI_STR_RXD_VALID,AXI_STR_RXD_READY,AXI_STR_RXD_LAST,AXI_STR_RXD_KEEP[3:0],AXI_STR_RXD_DATA[31:0],AXI_STR_RXS_ACLK,AXI_STR_RXS_ARESETN,AXI_STR_RXS_VALID,AXI_STR_RXS_READY,AXI_STR_RXS_LAST,AXI_STR_RXS_KEEP[3:0],AXI_STR_RXS_DATA[31:0],pause_req,pause_val[16:31],S_AXI_2TEMAC_AWADDR[11:0],S_AXI_2TEMAC_AWVALID,S_AXI_2TEMAC_AWREADY,S_AXI_2TEMAC_WDATA[31:0],S_AXI_2TEMAC_WVALID,S_AXI_2TEMAC_WREADY,S_AXI_2TEMAC_BRESP[1:0],S_AXI_2TEMAC_BVALID,S_AXI_2TEMAC_BREADY,S_AXI_2TEMAC_ARADDR[11:0],S_AXI_2TEMAC_ARVALID,S_AXI_2TEMAC_ARREADY,S_AXI_2TEMAC_RDATA[31:0],S_AXI_2TEMAC_RRESP[1:0],S_AXI_2TEMAC_RVALID,S_AXI_2TEMAC_RREADY,RX_CLK_ENABLE_IN,rx_statistics_vector[27:0],rx_statistics_valid,rx_mac_aclk,rx_reset,rx_axis_mac_tdata[7:0],rx_axis_mac_tvalid,rx_axis_mac_tlast,rx_axis_mac_tuser,tx_ifg_delay[24:31],tx_mac_aclk,tx_reset,tx_axis_mac_tdata[7:0],tx_axis_mac_tvalid,tx_axis_mac_tlast,tx_axis_mac_tuser[0:0],tx_axis_mac_tready,speed_is_10_100,RESET2PCSPMA,RESET2TEMACn,PHY_RST_N,mdio_i_top,mdio_o_top,mdio_t_top,mdc_top,mdio_t_pcspma,mdio_o_pcspma,mdio_i_temac,mdio_o_temac,mdio_t_temac,mdc_temac,GTX_CLK" */;
  output INTERRUPT;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [17:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [17:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  input EMAC_CLIENT_AUTONEG_INT;
  input EMAC_RESET_DONE_INT;
  input EMAC_RX_DCM_LOCKED_INT;
  input [15:0]PCSPMA_STATUS_VECTOR;
  input AXI_STR_TXD_ACLK;
  input AXI_STR_TXD_ARESETN;
  input AXI_STR_TXD_TVALID;
  output AXI_STR_TXD_TREADY;
  input AXI_STR_TXD_TLAST;
  input [3:0]AXI_STR_TXD_TKEEP;
  input [31:0]AXI_STR_TXD_TDATA;
  input AXI_STR_TXC_ACLK;
  input AXI_STR_TXC_ARESETN;
  input AXI_STR_TXC_TVALID;
  output AXI_STR_TXC_TREADY;
  input AXI_STR_TXC_TLAST;
  input [3:0]AXI_STR_TXC_TKEEP;
  input [31:0]AXI_STR_TXC_TDATA;
  input AXI_STR_RXD_ACLK;
  input AXI_STR_RXD_ARESETN;
  output AXI_STR_RXD_VALID;
  input AXI_STR_RXD_READY;
  output AXI_STR_RXD_LAST;
  output [3:0]AXI_STR_RXD_KEEP;
  output [31:0]AXI_STR_RXD_DATA;
  input AXI_STR_RXS_ACLK;
  input AXI_STR_RXS_ARESETN;
  output AXI_STR_RXS_VALID;
  input AXI_STR_RXS_READY;
  output AXI_STR_RXS_LAST;
  output [3:0]AXI_STR_RXS_KEEP;
  output [31:0]AXI_STR_RXS_DATA;
  output pause_req;
  output [16:31]pause_val;
  output [11:0]S_AXI_2TEMAC_AWADDR;
  output S_AXI_2TEMAC_AWVALID;
  input S_AXI_2TEMAC_AWREADY;
  output [31:0]S_AXI_2TEMAC_WDATA;
  output S_AXI_2TEMAC_WVALID;
  input S_AXI_2TEMAC_WREADY;
  input [1:0]S_AXI_2TEMAC_BRESP;
  input S_AXI_2TEMAC_BVALID;
  output S_AXI_2TEMAC_BREADY;
  output [11:0]S_AXI_2TEMAC_ARADDR;
  output S_AXI_2TEMAC_ARVALID;
  input S_AXI_2TEMAC_ARREADY;
  input [31:0]S_AXI_2TEMAC_RDATA;
  input [1:0]S_AXI_2TEMAC_RRESP;
  input S_AXI_2TEMAC_RVALID;
  output S_AXI_2TEMAC_RREADY;
  input RX_CLK_ENABLE_IN;
  input [27:0]rx_statistics_vector;
  input rx_statistics_valid;
  input rx_mac_aclk;
  input rx_reset;
  input [7:0]rx_axis_mac_tdata;
  input rx_axis_mac_tvalid;
  input rx_axis_mac_tlast;
  input rx_axis_mac_tuser;
  output [24:31]tx_ifg_delay;
  input tx_mac_aclk;
  input tx_reset;
  output [7:0]tx_axis_mac_tdata;
  output tx_axis_mac_tvalid;
  output tx_axis_mac_tlast;
  output [0:0]tx_axis_mac_tuser;
  input tx_axis_mac_tready;
  input speed_is_10_100;
  output RESET2PCSPMA;
  output RESET2TEMACn;
  output PHY_RST_N;
  input mdio_i_top;
  output mdio_o_top;
  output mdio_t_top;
  output mdc_top;
  input mdio_t_pcspma;
  input mdio_o_pcspma;
  output mdio_i_temac;
  input mdio_o_temac;
  input mdio_t_temac;
  input mdc_temac;
  input GTX_CLK;
endmodule
