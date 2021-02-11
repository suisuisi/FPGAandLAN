// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Apr 11 17:26:04 2020
// Host        : LAPTOP-8E6RLG3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/FILE/FPGA/ZYNQ/08_LAN/02_LWIP_RGMII/02_LWIP_RGMII.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/system_axi_ethernet_0_0_sim_netlist.v
// Design      : system_axi_ethernet_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_axi_ethernet_0_0,bd_4bad,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_4bad,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module system_axi_ethernet_0_0
   (s_axi_lite_resetn,
    s_axi_lite_clk,
    mac_irq,
    axis_clk,
    axi_txd_arstn,
    axi_txc_arstn,
    axi_rxd_arstn,
    axi_rxs_arstn,
    interrupt,
    signal_detect,
    mmcm_locked_out,
    rxuserclk_out,
    rxuserclk2_out,
    userclk_out,
    userclk2_out,
    pma_reset_out,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    ref_clk,
    gtref_clk_out,
    gtref_clk_buf_out,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axis_txc_tdata,
    s_axis_txc_tkeep,
    s_axis_txc_tlast,
    s_axis_txc_tready,
    s_axis_txc_tvalid,
    s_axis_txd_tdata,
    s_axis_txd_tkeep,
    s_axis_txd_tlast,
    s_axis_txd_tready,
    s_axis_txd_tvalid,
    m_axis_rxd_tdata,
    m_axis_rxd_tkeep,
    m_axis_rxd_tlast,
    m_axis_rxd_tready,
    m_axis_rxd_tvalid,
    m_axis_rxs_tdata,
    m_axis_rxs_tkeep,
    m_axis_rxs_tlast,
    m_axis_rxs_tready,
    m_axis_rxs_tvalid,
    sfp_rxn,
    sfp_rxp,
    sfp_txn,
    sfp_txp,
    mgt_clk_clk_n,
    mgt_clk_clk_p);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axi_lite_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axi_lite_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_lite_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axi_lite_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axi_lite_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_lite_resetn, INSERT_VIP 0, ASSOCIATED_CLKEN CE" *) input s_axi_lite_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.mac_irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.mac_irq, SENSITIVITY EDGE_RISING, PortWidth 1" *) output mac_irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.axis_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.axis_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF m_axis_rxd:m_axis_rxs:s_axis_txc:s_axis_txd, ASSOCIATED_RESET axi_rxd_arstn:axi_rxs_arstn:axi_txc_arstn:axi_txd_arstn, INSERT_VIP 0" *) input axis_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.axi_txd_arstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.axi_txd_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_txd_arstn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.axi_txc_arstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.axi_txc_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_txc_arstn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.axi_rxd_arstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.axi_rxd_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_rxd_arstn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.axi_rxs_arstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.axi_rxs_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_rxs_arstn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  input signal_detect;
  output mmcm_locked_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.rxuserclk_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.rxuserclk_out, FREQ_HZ 62500000, PHASE 0, CLK_DOMAIN bd_4bad_pcs_pma_0_rxuserclk_out, INSERT_VIP 0" *) output rxuserclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.rxuserclk2_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.rxuserclk2_out, FREQ_HZ 62500000, PHASE 0, CLK_DOMAIN bd_4bad_pcs_pma_0_rxuserclk2_out, INSERT_VIP 0" *) output rxuserclk2_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.userclk_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.userclk_out, FREQ_HZ 62500000, PHASE 0, CLK_DOMAIN bd_4bad_pcs_pma_0_userclk_out, INSERT_VIP 0" *) output userclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.userclk2_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.userclk2_out, FREQ_HZ 125000000, PHASE 0, CLK_DOMAIN bd_4bad_pcs_pma_0_userclk2_out, INSERT_VIP 0" *) output userclk2_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.pma_reset_out RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.pma_reset_out, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) output pma_reset_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.gt0_qplloutclk_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.gt0_qplloutclk_out, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_axi_ethernet_0_0_gt0_qplloutclk_out, INSERT_VIP 0" *) output gt0_qplloutclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.gt0_qplloutrefclk_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.gt0_qplloutrefclk_out, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_axi_ethernet_0_0_gt0_qplloutrefclk_out, INSERT_VIP 0" *) output gt0_qplloutrefclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ref_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ref_clk, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK2, INSERT_VIP 0" *) input ref_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.gtref_clk_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.gtref_clk_out, FREQ_HZ 125000000, PHASE 0, CLK_DOMAIN bd_4bad_pcs_pma_0_gtrefclk_out, INSERT_VIP 0" *) output gtref_clk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.gtref_clk_buf_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.gtref_clk_buf_out, FREQ_HZ 125000000, PHASE 0, CLK_DOMAIN bd_4bad_pcs_pma_0_gtrefclk_bufg_out, INSERT_VIP 0" *) output gtref_clk_buf_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [17:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [17:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txc TDATA" *) input [31:0]s_axis_txc_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txc TKEEP" *) input [3:0]s_axis_txc_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txc TLAST" *) input s_axis_txc_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txc TREADY" *) output s_axis_txc_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txc TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_txc, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_txc_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TDATA" *) input [31:0]s_axis_txd_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TKEEP" *) input [3:0]s_axis_txd_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TLAST" *) input s_axis_txd_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TREADY" *) output s_axis_txd_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_txd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_txd_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TDATA" *) output [31:0]m_axis_rxd_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TKEEP" *) output [3:0]m_axis_rxd_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TLAST" *) output m_axis_rxd_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TREADY" *) input m_axis_rxd_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rxd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_rxd_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxs TDATA" *) output [31:0]m_axis_rxs_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxs TKEEP" *) output [3:0]m_axis_rxs_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxs TLAST" *) output m_axis_rxs_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxs TREADY" *) input m_axis_rxs_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxs TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rxs, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_rxs_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp RXN" *) input sfp_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp RXP" *) input sfp_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp TXN" *) output sfp_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp TXP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sfp, BOARD.ASSOCIATED_PARAM ETHERNET_BOARD_INTERFACE" *) output sfp_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 mgt_clk CLK_N" *) input mgt_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 mgt_clk CLK_P" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mgt_clk, CAN_DEBUG false, FREQ_HZ 100000000, TYPE ETH_MGT_CLK, BOARD.ASSOCIATED_PARAM DIFFCLK_BOARD_INTERFACE" *) input mgt_clk_clk_p;

  wire axi_rxd_arstn;
  wire axi_rxs_arstn;
  wire axi_txc_arstn;
  wire axi_txd_arstn;
  wire axis_clk;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gtref_clk_buf_out;
  wire gtref_clk_out;
  wire interrupt;
  wire [31:0]m_axis_rxd_tdata;
  wire [3:0]m_axis_rxd_tkeep;
  wire m_axis_rxd_tlast;
  wire m_axis_rxd_tready;
  wire m_axis_rxd_tvalid;
  wire [31:0]m_axis_rxs_tdata;
  wire [3:0]m_axis_rxs_tkeep;
  wire m_axis_rxs_tlast;
  wire m_axis_rxs_tready;
  wire m_axis_rxs_tvalid;
  wire mac_irq;
  wire mgt_clk_clk_n;
  wire mgt_clk_clk_p;
  wire mmcm_locked_out;
  wire pma_reset_out;
  wire ref_clk;
  wire rxuserclk2_out;
  wire rxuserclk_out;
  wire [17:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [17:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_axi_lite_clk;
  wire s_axi_lite_resetn;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]s_axis_txc_tdata;
  wire [3:0]s_axis_txc_tkeep;
  wire s_axis_txc_tlast;
  wire s_axis_txc_tready;
  wire s_axis_txc_tvalid;
  wire [31:0]s_axis_txd_tdata;
  wire [3:0]s_axis_txd_tkeep;
  wire s_axis_txd_tlast;
  wire s_axis_txd_tready;
  wire s_axis_txd_tvalid;
  wire sfp_rxn;
  wire sfp_rxp;
  wire sfp_txn;
  wire sfp_txp;
  wire signal_detect;
  wire userclk2_out;
  wire userclk_out;

  (* HW_HANDOFF = "system_axi_ethernet_0_0.hwdef" *) 
  system_axi_ethernet_0_0_bd_4bad inst
       (.axi_rxd_arstn(axi_rxd_arstn),
        .axi_rxs_arstn(axi_rxs_arstn),
        .axi_txc_arstn(axi_txc_arstn),
        .axi_txd_arstn(axi_txd_arstn),
        .axis_clk(axis_clk),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gtref_clk_buf_out(gtref_clk_buf_out),
        .gtref_clk_out(gtref_clk_out),
        .interrupt(interrupt),
        .m_axis_rxd_tdata(m_axis_rxd_tdata),
        .m_axis_rxd_tkeep(m_axis_rxd_tkeep),
        .m_axis_rxd_tlast(m_axis_rxd_tlast),
        .m_axis_rxd_tready(m_axis_rxd_tready),
        .m_axis_rxd_tvalid(m_axis_rxd_tvalid),
        .m_axis_rxs_tdata(m_axis_rxs_tdata),
        .m_axis_rxs_tkeep(m_axis_rxs_tkeep),
        .m_axis_rxs_tlast(m_axis_rxs_tlast),
        .m_axis_rxs_tready(m_axis_rxs_tready),
        .m_axis_rxs_tvalid(m_axis_rxs_tvalid),
        .mac_irq(mac_irq),
        .mgt_clk_clk_n(mgt_clk_clk_n),
        .mgt_clk_clk_p(mgt_clk_clk_p),
        .mmcm_locked_out(mmcm_locked_out),
        .pma_reset_out(pma_reset_out),
        .ref_clk(ref_clk),
        .rxuserclk2_out(rxuserclk2_out),
        .rxuserclk_out(rxuserclk_out),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_lite_clk(s_axi_lite_clk),
        .s_axi_lite_resetn(s_axi_lite_resetn),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_txc_tdata(s_axis_txc_tdata),
        .s_axis_txc_tkeep(s_axis_txc_tkeep),
        .s_axis_txc_tlast(s_axis_txc_tlast),
        .s_axis_txc_tready(s_axis_txc_tready),
        .s_axis_txc_tvalid(s_axis_txc_tvalid),
        .s_axis_txd_tdata(s_axis_txd_tdata),
        .s_axis_txd_tkeep(s_axis_txd_tkeep),
        .s_axis_txd_tlast(s_axis_txd_tlast),
        .s_axis_txd_tready(s_axis_txd_tready),
        .s_axis_txd_tvalid(s_axis_txd_tvalid),
        .sfp_rxn(sfp_rxn),
        .sfp_rxp(sfp_rxp),
        .sfp_txn(sfp_txn),
        .sfp_txp(sfp_txp),
        .signal_detect(signal_detect),
        .userclk2_out(userclk2_out),
        .userclk_out(userclk_out));
endmodule

(* HW_HANDOFF = "system_axi_ethernet_0_0.hwdef" *) (* ORIG_REF_NAME = "bd_4bad" *) 
module system_axi_ethernet_0_0_bd_4bad
   (axi_rxd_arstn,
    axi_rxs_arstn,
    axi_txc_arstn,
    axi_txd_arstn,
    axis_clk,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    gtref_clk_buf_out,
    gtref_clk_out,
    interrupt,
    m_axis_rxd_tdata,
    m_axis_rxd_tkeep,
    m_axis_rxd_tlast,
    m_axis_rxd_tready,
    m_axis_rxd_tvalid,
    m_axis_rxs_tdata,
    m_axis_rxs_tkeep,
    m_axis_rxs_tlast,
    m_axis_rxs_tready,
    m_axis_rxs_tvalid,
    mac_irq,
    mgt_clk_clk_n,
    mgt_clk_clk_p,
    mmcm_locked_out,
    pma_reset_out,
    ref_clk,
    rxuserclk2_out,
    rxuserclk_out,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_lite_clk,
    s_axi_lite_resetn,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axis_txc_tdata,
    s_axis_txc_tkeep,
    s_axis_txc_tlast,
    s_axis_txc_tready,
    s_axis_txc_tvalid,
    s_axis_txd_tdata,
    s_axis_txd_tkeep,
    s_axis_txd_tlast,
    s_axis_txd_tready,
    s_axis_txd_tvalid,
    sfp_rxn,
    sfp_rxp,
    sfp_txn,
    sfp_txp,
    signal_detect,
    userclk2_out,
    userclk_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_RXD_ARSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_RXD_ARSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axi_rxd_arstn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_RXS_ARSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_RXS_ARSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axi_rxs_arstn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_TXC_ARSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_TXC_ARSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axi_txc_arstn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_TXD_ARSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_TXD_ARSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axi_txd_arstn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXIS_CLK, ASSOCIATED_BUSIF m_axis_rxd:m_axis_rxs:s_axis_txc:s_axis_txd, ASSOCIATED_RESET axi_rxd_arstn:axi_rxs_arstn:axi_txc_arstn:axi_txd_arstn, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input axis_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.GT0_QPLLOUTCLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.GT0_QPLLOUTCLK_OUT, CLK_DOMAIN system_axi_ethernet_0_0_gt0_qplloutclk_out, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) output gt0_qplloutclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.GT0_QPLLOUTREFCLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.GT0_QPLLOUTREFCLK_OUT, CLK_DOMAIN system_axi_ethernet_0_0_gt0_qplloutrefclk_out, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) output gt0_qplloutrefclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.GTREF_CLK_BUF_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.GTREF_CLK_BUF_OUT, CLK_DOMAIN bd_4bad_pcs_pma_0_gtrefclk_bufg_out, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0" *) output gtref_clk_buf_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.GTREF_CLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.GTREF_CLK_OUT, CLK_DOMAIN bd_4bad_pcs_pma_0_gtrefclk_out, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0" *) output gtref_clk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rxd, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]m_axis_rxd_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TKEEP" *) output [3:0]m_axis_rxd_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TLAST" *) output m_axis_rxd_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TREADY" *) input m_axis_rxd_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxd TVALID" *) output m_axis_rxd_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxs TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rxs, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]m_axis_rxs_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxs TKEEP" *) output [3:0]m_axis_rxs_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxs TLAST" *) output m_axis_rxs_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxs TREADY" *) input m_axis_rxs_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxs TVALID" *) output m_axis_rxs_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.MAC_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.MAC_IRQ, PortWidth 1, SENSITIVITY EDGE_RISING" *) output mac_irq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 mgt_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mgt_clk, CAN_DEBUG false, FREQ_HZ 100000000, TYPE ETH_MGT_CLK" *) input mgt_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 mgt_clk CLK_P" *) input mgt_clk_clk_p;
  output mmcm_locked_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PMA_RESET_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PMA_RESET_OUT, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) output pma_reset_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.REF_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.REF_CLK, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK2, FREQ_HZ 200000000, INSERT_VIP 0, PHASE 0.000" *) input ref_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RXUSERCLK2_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RXUSERCLK2_OUT, CLK_DOMAIN bd_4bad_pcs_pma_0_rxuserclk2_out, FREQ_HZ 62500000, INSERT_VIP 0, PHASE 0" *) output rxuserclk2_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RXUSERCLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RXUSERCLK_OUT, CLK_DOMAIN bd_4bad_pcs_pma_0_rxuserclk_out, FREQ_HZ 62500000, INSERT_VIP 0, PHASE 0" *) output rxuserclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, ADDR_WIDTH 18, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [17:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [17:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_LITE_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_LITE_CLK, ASSOCIATED_BUSIF s_axi, ASSOCIATED_CLKEN CE, ASSOCIATED_RESET s_axi_lite_resetn, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input s_axi_lite_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_LITE_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_LITE_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_lite_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txc TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_txc, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]s_axis_txc_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txc TKEEP" *) input [3:0]s_axis_txc_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txc TLAST" *) input s_axis_txc_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txc TREADY" *) output s_axis_txc_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txc TVALID" *) input s_axis_txc_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_txd, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]s_axis_txd_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TKEEP" *) input [3:0]s_axis_txd_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TLAST" *) input s_axis_txd_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TREADY" *) output s_axis_txd_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txd TVALID" *) input s_axis_txd_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp RXN" *) input sfp_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp RXP" *) input sfp_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp TXN" *) output sfp_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp TXP" *) output sfp_txp;
  input signal_detect;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.USERCLK2_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.USERCLK2_OUT, CLK_DOMAIN bd_4bad_pcs_pma_0_userclk2_out, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0" *) output userclk2_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.USERCLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.USERCLK_OUT, CLK_DOMAIN bd_4bad_pcs_pma_0_userclk_out, FREQ_HZ 62500000, INSERT_VIP 0, PHASE 0" *) output userclk_out;

  wire axi_rxd_arstn;
  wire axi_rxs_arstn;
  wire axi_txc_arstn;
  wire axi_txd_arstn;
  wire axis_clk;
  wire c_counter_binary_0_THRESH0;
  wire eth_buf_RESET2PCSPMA;
  wire eth_buf_RESET2TEMACn;
  wire [11:0]eth_buf_S_AXI_2TEMAC_ARADDR;
  wire eth_buf_S_AXI_2TEMAC_ARREADY;
  wire eth_buf_S_AXI_2TEMAC_ARVALID;
  wire [11:0]eth_buf_S_AXI_2TEMAC_AWADDR;
  wire eth_buf_S_AXI_2TEMAC_AWREADY;
  wire eth_buf_S_AXI_2TEMAC_AWVALID;
  wire eth_buf_S_AXI_2TEMAC_BREADY;
  wire [1:0]eth_buf_S_AXI_2TEMAC_BRESP;
  wire eth_buf_S_AXI_2TEMAC_BVALID;
  wire [31:0]eth_buf_S_AXI_2TEMAC_RDATA;
  wire eth_buf_S_AXI_2TEMAC_RREADY;
  wire [1:0]eth_buf_S_AXI_2TEMAC_RRESP;
  wire eth_buf_S_AXI_2TEMAC_RVALID;
  wire [31:0]eth_buf_S_AXI_2TEMAC_WDATA;
  wire eth_buf_S_AXI_2TEMAC_WREADY;
  wire eth_buf_S_AXI_2TEMAC_WVALID;
  wire [7:0]eth_buf_TX_AXIS_MAC_TDATA;
  wire eth_buf_TX_AXIS_MAC_TLAST;
  wire eth_buf_TX_AXIS_MAC_TREADY;
  wire eth_buf_TX_AXIS_MAC_TUSER;
  wire eth_buf_TX_AXIS_MAC_TVALID;
  wire eth_buf_pause_req;
  wire [16:31]eth_buf_pause_val;
  wire [24:31]eth_buf_tx_ifg_delay;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gtref_clk_buf_out;
  wire gtref_clk_out;
  wire interrupt;
  wire [31:0]m_axis_rxd_tdata;
  wire [3:0]m_axis_rxd_tkeep;
  wire m_axis_rxd_tlast;
  wire m_axis_rxd_tready;
  wire m_axis_rxd_tvalid;
  wire [31:0]m_axis_rxs_tdata;
  wire [3:0]m_axis_rxs_tkeep;
  wire m_axis_rxs_tlast;
  wire m_axis_rxs_tready;
  wire m_axis_rxs_tvalid;
  wire [7:0]mac_gmii_RXD;
  wire mac_gmii_RX_DV;
  wire mac_gmii_RX_ER;
  wire [7:0]mac_gmii_TXD;
  wire mac_gmii_TX_EN;
  wire mac_gmii_TX_ER;
  wire mac_irq;
  wire [7:0]mac_m_axis_rx_TDATA;
  wire mac_m_axis_rx_TLAST;
  wire mac_m_axis_rx_TUSER;
  wire mac_m_axis_rx_TVALID;
  wire mac_mdc;
  wire mac_mdio_o;
  wire mac_mdio_t;
  wire mac_rx_mac_aclk;
  wire mac_rx_reset;
  wire mac_rx_statistics_valid;
  wire [27:0]mac_rx_statistics_vector;
  wire mac_speedis10100;
  wire mac_tx_mac_aclk;
  wire mac_tx_reset;
  wire mgt_clk_clk_n;
  wire mgt_clk_clk_p;
  wire mmcm_locked_out;
  wire pcs_pma_an_interrupt;
  wire pcs_pma_mdio_o;
  wire pcs_pma_resetdone;
  wire [15:0]pcs_pma_status_vector;
  wire pma_reset_out;
  wire ref_clk;
  wire rxuserclk2_out;
  wire rxuserclk_out;
  wire [17:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [17:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_axi_lite_clk;
  wire s_axi_lite_resetn;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]s_axis_txc_tdata;
  wire [3:0]s_axis_txc_tkeep;
  wire s_axis_txc_tlast;
  wire s_axis_txc_tready;
  wire s_axis_txc_tvalid;
  wire [31:0]s_axis_txd_tdata;
  wire [3:0]s_axis_txd_tkeep;
  wire s_axis_txd_tlast;
  wire s_axis_txd_tready;
  wire s_axis_txd_tvalid;
  wire sfp_rxn;
  wire sfp_rxp;
  wire sfp_txn;
  wire sfp_txp;
  wire signal_detect;
  wire userclk2_out;
  wire userclk_out;
  wire util_vector_logic_0_Res;
  wire xlconstant_0_dout;
  wire xlconstant_config_val_dout;
  wire [4:0]xlconstant_config_vec_dout;
  wire [4:0]xlconstant_phyadd_dout;
  wire [23:0]NLW_c_counter_binary_0_Q_UNCONNECTED;
  wire [0:0]NLW_c_shift_ram_0_Q_UNCONNECTED;
  wire NLW_eth_buf_PHY_RST_N_UNCONNECTED;
  wire NLW_eth_buf_mdc_top_UNCONNECTED;
  wire NLW_eth_buf_mdio_i_temac_UNCONNECTED;
  wire NLW_eth_buf_mdio_o_top_UNCONNECTED;
  wire NLW_eth_buf_mdio_t_top_UNCONNECTED;
  wire NLW_mac_speedis100_UNCONNECTED;
  wire NLW_mac_tx_statistics_valid_UNCONNECTED;
  wire [4:0]NLW_mac_rx_axis_filter_tuser_UNCONNECTED;
  wire [31:0]NLW_mac_tx_statistics_vector_UNCONNECTED;
  wire NLW_pcs_pma_ext_mdc_UNCONNECTED;
  wire NLW_pcs_pma_ext_mdio_o_UNCONNECTED;
  wire NLW_pcs_pma_ext_mdio_t_UNCONNECTED;
  wire NLW_pcs_pma_gmii_isolate_UNCONNECTED;
  wire NLW_pcs_pma_mdio_t_UNCONNECTED;

  (* X_CORE_INFO = "c_counter_binary_v12_0_12,Vivado 2018.3.1" *) 
  system_axi_ethernet_0_0_bd_4bad_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(s_axi_lite_clk),
        .Q(NLW_c_counter_binary_0_Q_UNCONNECTED[23:0]),
        .SCLR(util_vector_logic_0_Res),
        .THRESH0(c_counter_binary_0_THRESH0));
  (* X_CORE_INFO = "c_shift_ram_v12_0_12,Vivado 2018.3.1" *) 
  system_axi_ethernet_0_0_bd_4bad_c_shift_ram_0_0 c_shift_ram_0
       (.CE(c_counter_binary_0_THRESH0),
        .CLK(s_axi_lite_clk),
        .D(xlconstant_0_dout),
        .Q(NLW_c_shift_ram_0_Q_UNCONNECTED[0]),
        .SCLR(util_vector_logic_0_Res));
  (* X_CORE_INFO = "axi_ethernet_buffer_v2_0_19,Vivado 2018.3.1" *) 
  system_axi_ethernet_0_0_bd_4bad_eth_buf_0 eth_buf
       (.AXI_STR_RXD_ACLK(axis_clk),
        .AXI_STR_RXD_ARESETN(axi_rxd_arstn),
        .AXI_STR_RXD_DATA(m_axis_rxd_tdata),
        .AXI_STR_RXD_KEEP(m_axis_rxd_tkeep),
        .AXI_STR_RXD_LAST(m_axis_rxd_tlast),
        .AXI_STR_RXD_READY(m_axis_rxd_tready),
        .AXI_STR_RXD_VALID(m_axis_rxd_tvalid),
        .AXI_STR_RXS_ACLK(axis_clk),
        .AXI_STR_RXS_ARESETN(axi_rxs_arstn),
        .AXI_STR_RXS_DATA(m_axis_rxs_tdata),
        .AXI_STR_RXS_KEEP(m_axis_rxs_tkeep),
        .AXI_STR_RXS_LAST(m_axis_rxs_tlast),
        .AXI_STR_RXS_READY(m_axis_rxs_tready),
        .AXI_STR_RXS_VALID(m_axis_rxs_tvalid),
        .AXI_STR_TXC_ACLK(axis_clk),
        .AXI_STR_TXC_ARESETN(axi_txc_arstn),
        .AXI_STR_TXC_TDATA(s_axis_txc_tdata),
        .AXI_STR_TXC_TKEEP(s_axis_txc_tkeep),
        .AXI_STR_TXC_TLAST(s_axis_txc_tlast),
        .AXI_STR_TXC_TREADY(s_axis_txc_tready),
        .AXI_STR_TXC_TVALID(s_axis_txc_tvalid),
        .AXI_STR_TXD_ACLK(axis_clk),
        .AXI_STR_TXD_ARESETN(axi_txd_arstn),
        .AXI_STR_TXD_TDATA(s_axis_txd_tdata),
        .AXI_STR_TXD_TKEEP(s_axis_txd_tkeep),
        .AXI_STR_TXD_TLAST(s_axis_txd_tlast),
        .AXI_STR_TXD_TREADY(s_axis_txd_tready),
        .AXI_STR_TXD_TVALID(s_axis_txd_tvalid),
        .EMAC_CLIENT_AUTONEG_INT(pcs_pma_an_interrupt),
        .EMAC_RESET_DONE_INT(pcs_pma_resetdone),
        .EMAC_RX_DCM_LOCKED_INT(mmcm_locked_out),
        .GTX_CLK(userclk2_out),
        .INTERRUPT(interrupt),
        .PCSPMA_STATUS_VECTOR(pcs_pma_status_vector),
        .PHY_RST_N(NLW_eth_buf_PHY_RST_N_UNCONNECTED),
        .RESET2PCSPMA(eth_buf_RESET2PCSPMA),
        .RESET2TEMACn(eth_buf_RESET2TEMACn),
        .RX_CLK_ENABLE_IN(1'b1),
        .S_AXI_2TEMAC_ARADDR(eth_buf_S_AXI_2TEMAC_ARADDR),
        .S_AXI_2TEMAC_ARREADY(eth_buf_S_AXI_2TEMAC_ARREADY),
        .S_AXI_2TEMAC_ARVALID(eth_buf_S_AXI_2TEMAC_ARVALID),
        .S_AXI_2TEMAC_AWADDR(eth_buf_S_AXI_2TEMAC_AWADDR),
        .S_AXI_2TEMAC_AWREADY(eth_buf_S_AXI_2TEMAC_AWREADY),
        .S_AXI_2TEMAC_AWVALID(eth_buf_S_AXI_2TEMAC_AWVALID),
        .S_AXI_2TEMAC_BREADY(eth_buf_S_AXI_2TEMAC_BREADY),
        .S_AXI_2TEMAC_BRESP(eth_buf_S_AXI_2TEMAC_BRESP),
        .S_AXI_2TEMAC_BVALID(eth_buf_S_AXI_2TEMAC_BVALID),
        .S_AXI_2TEMAC_RDATA(eth_buf_S_AXI_2TEMAC_RDATA),
        .S_AXI_2TEMAC_RREADY(eth_buf_S_AXI_2TEMAC_RREADY),
        .S_AXI_2TEMAC_RRESP(eth_buf_S_AXI_2TEMAC_RRESP),
        .S_AXI_2TEMAC_RVALID(eth_buf_S_AXI_2TEMAC_RVALID),
        .S_AXI_2TEMAC_WDATA(eth_buf_S_AXI_2TEMAC_WDATA),
        .S_AXI_2TEMAC_WREADY(eth_buf_S_AXI_2TEMAC_WREADY),
        .S_AXI_2TEMAC_WVALID(eth_buf_S_AXI_2TEMAC_WVALID),
        .S_AXI_ACLK(s_axi_lite_clk),
        .S_AXI_ARADDR(s_axi_araddr),
        .S_AXI_ARESETN(s_axi_lite_resetn),
        .S_AXI_ARREADY(s_axi_arready),
        .S_AXI_ARVALID(s_axi_arvalid),
        .S_AXI_AWADDR(s_axi_awaddr),
        .S_AXI_AWREADY(s_axi_awready),
        .S_AXI_AWVALID(s_axi_awvalid),
        .S_AXI_BREADY(s_axi_bready),
        .S_AXI_BRESP(s_axi_bresp),
        .S_AXI_BVALID(s_axi_bvalid),
        .S_AXI_RDATA(s_axi_rdata),
        .S_AXI_RREADY(s_axi_rready),
        .S_AXI_RRESP(s_axi_rresp),
        .S_AXI_RVALID(s_axi_rvalid),
        .S_AXI_WDATA(s_axi_wdata),
        .S_AXI_WREADY(s_axi_wready),
        .S_AXI_WSTRB(s_axi_wstrb),
        .S_AXI_WVALID(s_axi_wvalid),
        .mdc_temac(1'b1),
        .mdc_top(NLW_eth_buf_mdc_top_UNCONNECTED),
        .mdio_i_temac(NLW_eth_buf_mdio_i_temac_UNCONNECTED),
        .mdio_i_top(1'b1),
        .mdio_o_pcspma(1'b0),
        .mdio_o_temac(1'b1),
        .mdio_o_top(NLW_eth_buf_mdio_o_top_UNCONNECTED),
        .mdio_t_pcspma(1'b0),
        .mdio_t_temac(1'b1),
        .mdio_t_top(NLW_eth_buf_mdio_t_top_UNCONNECTED),
        .pause_req(eth_buf_pause_req),
        .pause_val(eth_buf_pause_val),
        .rx_axis_mac_tdata(mac_m_axis_rx_TDATA),
        .rx_axis_mac_tlast(mac_m_axis_rx_TLAST),
        .rx_axis_mac_tuser(mac_m_axis_rx_TUSER),
        .rx_axis_mac_tvalid(mac_m_axis_rx_TVALID),
        .rx_mac_aclk(mac_rx_mac_aclk),
        .rx_reset(mac_rx_reset),
        .rx_statistics_valid(mac_rx_statistics_valid),
        .rx_statistics_vector(mac_rx_statistics_vector),
        .speed_is_10_100(mac_speedis10100),
        .tx_axis_mac_tdata(eth_buf_TX_AXIS_MAC_TDATA),
        .tx_axis_mac_tlast(eth_buf_TX_AXIS_MAC_TLAST),
        .tx_axis_mac_tready(eth_buf_TX_AXIS_MAC_TREADY),
        .tx_axis_mac_tuser(eth_buf_TX_AXIS_MAC_TUSER),
        .tx_axis_mac_tvalid(eth_buf_TX_AXIS_MAC_TVALID),
        .tx_ifg_delay(eth_buf_tx_ifg_delay),
        .tx_mac_aclk(mac_tx_mac_aclk),
        .tx_reset(mac_tx_reset));
  (* X_CORE_INFO = "bd_4bad_mac_0_block,Vivado 2018.3.1" *) 
  system_axi_ethernet_0_0_bd_4bad_mac_0 mac
       (.glbl_rstn(eth_buf_RESET2TEMACn),
        .gmii_rx_dv(mac_gmii_RX_DV),
        .gmii_rx_er(mac_gmii_RX_ER),
        .gmii_rxd(mac_gmii_RXD),
        .gmii_tx_en(mac_gmii_TX_EN),
        .gmii_tx_er(mac_gmii_TX_ER),
        .gmii_txd(mac_gmii_TXD),
        .gtx_clk(userclk2_out),
        .mac_irq(mac_irq),
        .mdc(mac_mdc),
        .mdio_i(pcs_pma_mdio_o),
        .mdio_o(mac_mdio_o),
        .mdio_t(mac_mdio_t),
        .pause_req(eth_buf_pause_req),
        .pause_val({eth_buf_pause_val[16],eth_buf_pause_val[17],eth_buf_pause_val[18],eth_buf_pause_val[19],eth_buf_pause_val[20],eth_buf_pause_val[21],eth_buf_pause_val[22],eth_buf_pause_val[23],eth_buf_pause_val[24],eth_buf_pause_val[25],eth_buf_pause_val[26],eth_buf_pause_val[27],eth_buf_pause_val[28],eth_buf_pause_val[29],eth_buf_pause_val[30],eth_buf_pause_val[31]}),
        .rx_axi_rstn(eth_buf_RESET2TEMACn),
        .rx_axis_filter_tuser(NLW_mac_rx_axis_filter_tuser_UNCONNECTED[4:0]),
        .rx_axis_mac_tdata(mac_m_axis_rx_TDATA),
        .rx_axis_mac_tlast(mac_m_axis_rx_TLAST),
        .rx_axis_mac_tuser(mac_m_axis_rx_TUSER),
        .rx_axis_mac_tvalid(mac_m_axis_rx_TVALID),
        .rx_mac_aclk(mac_rx_mac_aclk),
        .rx_reset(mac_rx_reset),
        .rx_statistics_valid(mac_rx_statistics_valid),
        .rx_statistics_vector(mac_rx_statistics_vector),
        .s_axi_aclk(s_axi_lite_clk),
        .s_axi_araddr(eth_buf_S_AXI_2TEMAC_ARADDR),
        .s_axi_arready(eth_buf_S_AXI_2TEMAC_ARREADY),
        .s_axi_arvalid(eth_buf_S_AXI_2TEMAC_ARVALID),
        .s_axi_awaddr(eth_buf_S_AXI_2TEMAC_AWADDR),
        .s_axi_awready(eth_buf_S_AXI_2TEMAC_AWREADY),
        .s_axi_awvalid(eth_buf_S_AXI_2TEMAC_AWVALID),
        .s_axi_bready(eth_buf_S_AXI_2TEMAC_BREADY),
        .s_axi_bresp(eth_buf_S_AXI_2TEMAC_BRESP),
        .s_axi_bvalid(eth_buf_S_AXI_2TEMAC_BVALID),
        .s_axi_rdata(eth_buf_S_AXI_2TEMAC_RDATA),
        .s_axi_resetn(s_axi_lite_resetn),
        .s_axi_rready(eth_buf_S_AXI_2TEMAC_RREADY),
        .s_axi_rresp(eth_buf_S_AXI_2TEMAC_RRESP),
        .s_axi_rvalid(eth_buf_S_AXI_2TEMAC_RVALID),
        .s_axi_wdata(eth_buf_S_AXI_2TEMAC_WDATA),
        .s_axi_wready(eth_buf_S_AXI_2TEMAC_WREADY),
        .s_axi_wvalid(eth_buf_S_AXI_2TEMAC_WVALID),
        .speedis100(NLW_mac_speedis100_UNCONNECTED),
        .speedis10100(mac_speedis10100),
        .tx_axi_rstn(eth_buf_RESET2TEMACn),
        .tx_axis_mac_tdata(eth_buf_TX_AXIS_MAC_TDATA),
        .tx_axis_mac_tlast(eth_buf_TX_AXIS_MAC_TLAST),
        .tx_axis_mac_tready(eth_buf_TX_AXIS_MAC_TREADY),
        .tx_axis_mac_tuser(eth_buf_TX_AXIS_MAC_TUSER),
        .tx_axis_mac_tvalid(eth_buf_TX_AXIS_MAC_TVALID),
        .tx_ifg_delay({eth_buf_tx_ifg_delay[24],eth_buf_tx_ifg_delay[25],eth_buf_tx_ifg_delay[26],eth_buf_tx_ifg_delay[27],eth_buf_tx_ifg_delay[28],eth_buf_tx_ifg_delay[29],eth_buf_tx_ifg_delay[30],eth_buf_tx_ifg_delay[31]}),
        .tx_mac_aclk(mac_tx_mac_aclk),
        .tx_reset(mac_tx_reset),
        .tx_statistics_valid(NLW_mac_tx_statistics_valid_UNCONNECTED),
        .tx_statistics_vector(NLW_mac_tx_statistics_vector_UNCONNECTED[31:0]));
  system_axi_ethernet_0_0_bd_4bad_pcs_pma_0 pcs_pma
       (.an_adv_config_val(1'b0),
        .an_adv_config_vector({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_interrupt(pcs_pma_an_interrupt),
        .an_restart_config(1'b0),
        .configuration_valid(xlconstant_config_val_dout),
        .configuration_vector(xlconstant_config_vec_dout),
        .ext_mdc(NLW_pcs_pma_ext_mdc_UNCONNECTED),
        .ext_mdio_i(1'b1),
        .ext_mdio_o(NLW_pcs_pma_ext_mdio_o_UNCONNECTED),
        .ext_mdio_t(NLW_pcs_pma_ext_mdio_t_UNCONNECTED),
        .gmii_isolate(NLW_pcs_pma_gmii_isolate_UNCONNECTED),
        .gmii_rx_dv(mac_gmii_RX_DV),
        .gmii_rx_er(mac_gmii_RX_ER),
        .gmii_rxd(mac_gmii_RXD),
        .gmii_tx_en(mac_gmii_TX_EN),
        .gmii_tx_er(mac_gmii_TX_ER),
        .gmii_txd(mac_gmii_TXD),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gtrefclk_bufg_out(gtref_clk_buf_out),
        .gtrefclk_n(mgt_clk_clk_n),
        .gtrefclk_out(gtref_clk_out),
        .gtrefclk_p(mgt_clk_clk_p),
        .independent_clock_bufg(ref_clk),
        .mdc(mac_mdc),
        .mdio_i(mac_mdio_o),
        .mdio_o(pcs_pma_mdio_o),
        .mdio_t(NLW_pcs_pma_mdio_t_UNCONNECTED),
        .mdio_t_in(mac_mdio_t),
        .mmcm_locked_out(mmcm_locked_out),
        .phyaddr(xlconstant_phyadd_dout),
        .pma_reset_out(pma_reset_out),
        .reset(eth_buf_RESET2PCSPMA),
        .resetdone(pcs_pma_resetdone),
        .rxn(sfp_rxn),
        .rxp(sfp_rxp),
        .rxuserclk2_out(rxuserclk2_out),
        .rxuserclk_out(rxuserclk_out),
        .signal_detect(signal_detect),
        .status_vector(pcs_pma_status_vector),
        .txn(sfp_txn),
        .txp(sfp_txp),
        .userclk2_out(userclk2_out),
        .userclk_out(userclk_out));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.3.1" *) 
  system_axi_ethernet_0_0_bd_4bad_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(s_axi_lite_resetn),
        .Res(util_vector_logic_0_Res));
  (* CHECK_LICENSE_TYPE = "bd_4bad_xlconstant_0_0,xlconstant_v1_1_5_xlconstant,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.3.1" *) 
  system_axi_ethernet_0_0_bd_4bad_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  (* CHECK_LICENSE_TYPE = "bd_4bad_xlconstant_config_val_0,xlconstant_v1_1_5_xlconstant,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.3.1" *) 
  system_axi_ethernet_0_0_bd_4bad_xlconstant_config_val_0 xlconstant_config_val
       (.dout(xlconstant_config_val_dout));
  (* CHECK_LICENSE_TYPE = "bd_4bad_xlconstant_config_vec_0,xlconstant_v1_1_5_xlconstant,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.3.1" *) 
  system_axi_ethernet_0_0_bd_4bad_xlconstant_config_vec_0 xlconstant_config_vec
       (.dout(xlconstant_config_vec_dout));
  (* CHECK_LICENSE_TYPE = "bd_4bad_xlconstant_phyadd_0,xlconstant_v1_1_5_xlconstant,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.3.1" *) 
  system_axi_ethernet_0_0_bd_4bad_xlconstant_phyadd_0 xlconstant_phyadd
       (.dout(xlconstant_phyadd_dout));
endmodule

(* ORIG_REF_NAME = "bd_4bad_c_counter_binary_0_0" *) (* X_CORE_INFO = "c_counter_binary_v12_0_12,Vivado 2018.3.1" *) 
module system_axi_ethernet_0_0_bd_4bad_c_counter_binary_0_0
   (CLK,
    SCLR,
    THRESH0,
    Q);
  input CLK;
  input SCLR;
  output THRESH0;
  output [23:0]Q;


endmodule

(* ORIG_REF_NAME = "bd_4bad_c_shift_ram_0_0" *) (* X_CORE_INFO = "c_shift_ram_v12_0_12,Vivado 2018.3.1" *) 
module system_axi_ethernet_0_0_bd_4bad_c_shift_ram_0_0
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  output [0:0]Q;


endmodule

(* ORIG_REF_NAME = "bd_4bad_eth_buf_0" *) (* X_CORE_INFO = "axi_ethernet_buffer_v2_0_19,Vivado 2018.3.1" *) 
module system_axi_ethernet_0_0_bd_4bad_eth_buf_0
   (INTERRUPT,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    EMAC_CLIENT_AUTONEG_INT,
    EMAC_RESET_DONE_INT,
    EMAC_RX_DCM_LOCKED_INT,
    PCSPMA_STATUS_VECTOR,
    AXI_STR_TXD_ACLK,
    AXI_STR_TXD_ARESETN,
    AXI_STR_TXD_TVALID,
    AXI_STR_TXD_TREADY,
    AXI_STR_TXD_TLAST,
    AXI_STR_TXD_TKEEP,
    AXI_STR_TXD_TDATA,
    AXI_STR_TXC_ACLK,
    AXI_STR_TXC_ARESETN,
    AXI_STR_TXC_TVALID,
    AXI_STR_TXC_TREADY,
    AXI_STR_TXC_TLAST,
    AXI_STR_TXC_TKEEP,
    AXI_STR_TXC_TDATA,
    AXI_STR_RXD_ACLK,
    AXI_STR_RXD_ARESETN,
    AXI_STR_RXD_VALID,
    AXI_STR_RXD_READY,
    AXI_STR_RXD_LAST,
    AXI_STR_RXD_KEEP,
    AXI_STR_RXD_DATA,
    AXI_STR_RXS_ACLK,
    AXI_STR_RXS_ARESETN,
    AXI_STR_RXS_VALID,
    AXI_STR_RXS_READY,
    AXI_STR_RXS_LAST,
    AXI_STR_RXS_KEEP,
    AXI_STR_RXS_DATA,
    pause_req,
    pause_val,
    S_AXI_2TEMAC_AWADDR,
    S_AXI_2TEMAC_AWVALID,
    S_AXI_2TEMAC_AWREADY,
    S_AXI_2TEMAC_WDATA,
    S_AXI_2TEMAC_WVALID,
    S_AXI_2TEMAC_WREADY,
    S_AXI_2TEMAC_BRESP,
    S_AXI_2TEMAC_BVALID,
    S_AXI_2TEMAC_BREADY,
    S_AXI_2TEMAC_ARADDR,
    S_AXI_2TEMAC_ARVALID,
    S_AXI_2TEMAC_ARREADY,
    S_AXI_2TEMAC_RDATA,
    S_AXI_2TEMAC_RRESP,
    S_AXI_2TEMAC_RVALID,
    S_AXI_2TEMAC_RREADY,
    RX_CLK_ENABLE_IN,
    rx_statistics_vector,
    rx_statistics_valid,
    rx_mac_aclk,
    rx_reset,
    rx_axis_mac_tdata,
    rx_axis_mac_tvalid,
    rx_axis_mac_tlast,
    rx_axis_mac_tuser,
    tx_ifg_delay,
    tx_mac_aclk,
    tx_reset,
    tx_axis_mac_tdata,
    tx_axis_mac_tvalid,
    tx_axis_mac_tlast,
    tx_axis_mac_tuser,
    tx_axis_mac_tready,
    speed_is_10_100,
    RESET2PCSPMA,
    RESET2TEMACn,
    PHY_RST_N,
    mdio_i_top,
    mdio_o_top,
    mdio_t_top,
    mdc_top,
    mdio_t_pcspma,
    mdio_o_pcspma,
    mdio_i_temac,
    mdio_o_temac,
    mdio_t_temac,
    mdc_temac,
    GTX_CLK);
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

(* ORIG_REF_NAME = "bd_4bad_mac_0" *) (* X_CORE_INFO = "bd_4bad_mac_0_block,Vivado 2018.3.1" *) 
module system_axi_ethernet_0_0_bd_4bad_mac_0
   (gtx_clk,
    glbl_rstn,
    rx_axi_rstn,
    tx_axi_rstn,
    rx_statistics_vector,
    rx_statistics_valid,
    rx_mac_aclk,
    rx_reset,
    rx_axis_mac_tdata,
    rx_axis_mac_tvalid,
    rx_axis_mac_tlast,
    rx_axis_mac_tuser,
    rx_axis_filter_tuser,
    tx_ifg_delay,
    tx_statistics_vector,
    tx_statistics_valid,
    tx_mac_aclk,
    tx_reset,
    tx_axis_mac_tdata,
    tx_axis_mac_tvalid,
    tx_axis_mac_tlast,
    tx_axis_mac_tuser,
    tx_axis_mac_tready,
    pause_req,
    pause_val,
    speedis100,
    speedis10100,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    mdio_i,
    mdio_o,
    mdio_t,
    mdc,
    s_axi_aclk,
    s_axi_resetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    mac_irq);
  input gtx_clk;
  input glbl_rstn;
  input rx_axi_rstn;
  input tx_axi_rstn;
  output [27:0]rx_statistics_vector;
  output rx_statistics_valid;
  output rx_mac_aclk;
  output rx_reset;
  output [7:0]rx_axis_mac_tdata;
  output rx_axis_mac_tvalid;
  output rx_axis_mac_tlast;
  output rx_axis_mac_tuser;
  output [4:0]rx_axis_filter_tuser;
  input [7:0]tx_ifg_delay;
  output [31:0]tx_statistics_vector;
  output tx_statistics_valid;
  output tx_mac_aclk;
  output tx_reset;
  input [7:0]tx_axis_mac_tdata;
  input tx_axis_mac_tvalid;
  input tx_axis_mac_tlast;
  input tx_axis_mac_tuser;
  output tx_axis_mac_tready;
  input pause_req;
  input [15:0]pause_val;
  output speedis100;
  output speedis10100;
  output [7:0]gmii_txd;
  output gmii_tx_en;
  output gmii_tx_er;
  input [7:0]gmii_rxd;
  input gmii_rx_dv;
  input gmii_rx_er;
  input mdio_i;
  output mdio_o;
  output mdio_t;
  output mdc;
  input s_axi_aclk;
  input s_axi_resetn;
  input [11:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [11:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output mac_irq;


endmodule

(* ORIG_REF_NAME = "bd_4bad_pcs_pma_0" *) 
module system_axi_ethernet_0_0_bd_4bad_pcs_pma_0
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    gtrefclk_bufg_out,
    txp,
    txn,
    rxp,
    rxn,
    resetdone,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    independent_clock_bufg,
    pma_reset_out,
    mmcm_locked_out,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    ext_mdc,
    ext_mdio_i,
    ext_mdio_o,
    ext_mdio_t,
    mdio_t_in,
    mdc,
    mdio_i,
    mdio_o,
    mdio_t,
    phyaddr,
    configuration_vector,
    configuration_valid,
    an_interrupt,
    an_adv_config_vector,
    an_adv_config_val,
    an_restart_config,
    status_vector,
    reset,
    signal_detect,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output gtrefclk_bufg_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  input independent_clock_bufg;
  output pma_reset_out;
  output mmcm_locked_out;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  output ext_mdc;
  input ext_mdio_i;
  output ext_mdio_o;
  output ext_mdio_t;
  input mdio_t_in;
  input mdc;
  input mdio_i;
  output mdio_o;
  output mdio_t;
  input [4:0]phyaddr;
  input [4:0]configuration_vector;
  input configuration_valid;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_adv_config_val;
  input an_restart_config;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;


endmodule

(* ORIG_REF_NAME = "bd_4bad_util_vector_logic_0_0" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.3.1" *) 
module system_axi_ethernet_0_0_bd_4bad_util_vector_logic_0_0
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;


endmodule

(* CHECK_LICENSE_TYPE = "bd_4bad_xlconstant_0_0,xlconstant_v1_1_5_xlconstant,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4bad_xlconstant_0_0" *) 
(* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.3.1" *) 
module system_axi_ethernet_0_0_bd_4bad_xlconstant_0_0
   (dout);
  output [0:0]dout;

  wire \<const1> ;

  assign dout[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
endmodule

(* CHECK_LICENSE_TYPE = "bd_4bad_xlconstant_config_val_0,xlconstant_v1_1_5_xlconstant,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4bad_xlconstant_config_val_0" *) 
(* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.3.1" *) 
module system_axi_ethernet_0_0_bd_4bad_xlconstant_config_val_0
   (dout);
  output [0:0]dout;

  wire \<const1> ;

  assign dout[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
endmodule

(* CHECK_LICENSE_TYPE = "bd_4bad_xlconstant_config_vec_0,xlconstant_v1_1_5_xlconstant,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4bad_xlconstant_config_vec_0" *) 
(* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.3.1" *) 
module system_axi_ethernet_0_0_bd_4bad_xlconstant_config_vec_0
   (dout);
  output [4:0]dout;

  wire \<const0> ;
  wire \<const1> ;

  assign dout[4] = \<const1> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* CHECK_LICENSE_TYPE = "bd_4bad_xlconstant_phyadd_0,xlconstant_v1_1_5_xlconstant,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_4bad_xlconstant_phyadd_0" *) 
(* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.3.1" *) 
module system_axi_ethernet_0_0_bd_4bad_xlconstant_phyadd_0
   (dout);
  output [4:0]dout;

  wire \<const0> ;
  wire \<const1> ;

  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const1> ;
  assign dout[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
