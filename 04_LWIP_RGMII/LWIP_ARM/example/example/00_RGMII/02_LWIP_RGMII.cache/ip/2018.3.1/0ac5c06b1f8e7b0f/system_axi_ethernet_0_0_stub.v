// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Apr 11 17:26:04 2020
// Host        : LAPTOP-8E6RLG3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_axi_ethernet_0_0_stub.v
// Design      : system_axi_ethernet_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_4bad,Vivado 2018.3.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_lite_resetn, s_axi_lite_clk, mac_irq, 
  axis_clk, axi_txd_arstn, axi_txc_arstn, axi_rxd_arstn, axi_rxs_arstn, interrupt, 
  signal_detect, mmcm_locked_out, rxuserclk_out, rxuserclk2_out, userclk_out, userclk2_out, 
  pma_reset_out, gt0_qplloutclk_out, gt0_qplloutrefclk_out, ref_clk, gtref_clk_out, 
  gtref_clk_buf_out, s_axi_araddr, s_axi_arready, s_axi_arvalid, s_axi_awaddr, s_axi_awready, 
  s_axi_awvalid, s_axi_bready, s_axi_bresp, s_axi_bvalid, s_axi_rdata, s_axi_rready, 
  s_axi_rresp, s_axi_rvalid, s_axi_wdata, s_axi_wready, s_axi_wstrb, s_axi_wvalid, 
  s_axis_txc_tdata, s_axis_txc_tkeep, s_axis_txc_tlast, s_axis_txc_tready, 
  s_axis_txc_tvalid, s_axis_txd_tdata, s_axis_txd_tkeep, s_axis_txd_tlast, 
  s_axis_txd_tready, s_axis_txd_tvalid, m_axis_rxd_tdata, m_axis_rxd_tkeep, 
  m_axis_rxd_tlast, m_axis_rxd_tready, m_axis_rxd_tvalid, m_axis_rxs_tdata, 
  m_axis_rxs_tkeep, m_axis_rxs_tlast, m_axis_rxs_tready, m_axis_rxs_tvalid, sfp_rxn, sfp_rxp, 
  sfp_txn, sfp_txp, mgt_clk_clk_n, mgt_clk_clk_p)
/* synthesis syn_black_box black_box_pad_pin="s_axi_lite_resetn,s_axi_lite_clk,mac_irq,axis_clk,axi_txd_arstn,axi_txc_arstn,axi_rxd_arstn,axi_rxs_arstn,interrupt,signal_detect,mmcm_locked_out,rxuserclk_out,rxuserclk2_out,userclk_out,userclk2_out,pma_reset_out,gt0_qplloutclk_out,gt0_qplloutrefclk_out,ref_clk,gtref_clk_out,gtref_clk_buf_out,s_axi_araddr[17:0],s_axi_arready,s_axi_arvalid,s_axi_awaddr[17:0],s_axi_awready,s_axi_awvalid,s_axi_bready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_rdata[31:0],s_axi_rready,s_axi_rresp[1:0],s_axi_rvalid,s_axi_wdata[31:0],s_axi_wready,s_axi_wstrb[3:0],s_axi_wvalid,s_axis_txc_tdata[31:0],s_axis_txc_tkeep[3:0],s_axis_txc_tlast,s_axis_txc_tready,s_axis_txc_tvalid,s_axis_txd_tdata[31:0],s_axis_txd_tkeep[3:0],s_axis_txd_tlast,s_axis_txd_tready,s_axis_txd_tvalid,m_axis_rxd_tdata[31:0],m_axis_rxd_tkeep[3:0],m_axis_rxd_tlast,m_axis_rxd_tready,m_axis_rxd_tvalid,m_axis_rxs_tdata[31:0],m_axis_rxs_tkeep[3:0],m_axis_rxs_tlast,m_axis_rxs_tready,m_axis_rxs_tvalid,sfp_rxn,sfp_rxp,sfp_txn,sfp_txp,mgt_clk_clk_n,mgt_clk_clk_p" */;
  input s_axi_lite_resetn;
  input s_axi_lite_clk;
  output mac_irq;
  input axis_clk;
  input axi_txd_arstn;
  input axi_txc_arstn;
  input axi_rxd_arstn;
  input axi_rxs_arstn;
  output interrupt;
  input signal_detect;
  output mmcm_locked_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  output userclk_out;
  output userclk2_out;
  output pma_reset_out;
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;
  input ref_clk;
  output gtref_clk_out;
  output gtref_clk_buf_out;
  input [17:0]s_axi_araddr;
  output s_axi_arready;
  input s_axi_arvalid;
  input [17:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input [31:0]s_axis_txc_tdata;
  input [3:0]s_axis_txc_tkeep;
  input s_axis_txc_tlast;
  output s_axis_txc_tready;
  input s_axis_txc_tvalid;
  input [31:0]s_axis_txd_tdata;
  input [3:0]s_axis_txd_tkeep;
  input s_axis_txd_tlast;
  output s_axis_txd_tready;
  input s_axis_txd_tvalid;
  output [31:0]m_axis_rxd_tdata;
  output [3:0]m_axis_rxd_tkeep;
  output m_axis_rxd_tlast;
  input m_axis_rxd_tready;
  output m_axis_rxd_tvalid;
  output [31:0]m_axis_rxs_tdata;
  output [3:0]m_axis_rxs_tkeep;
  output m_axis_rxs_tlast;
  input m_axis_rxs_tready;
  output m_axis_rxs_tvalid;
  input sfp_rxn;
  input sfp_rxp;
  output sfp_txn;
  output sfp_txp;
  input mgt_clk_clk_n;
  input mgt_clk_clk_p;
endmodule
