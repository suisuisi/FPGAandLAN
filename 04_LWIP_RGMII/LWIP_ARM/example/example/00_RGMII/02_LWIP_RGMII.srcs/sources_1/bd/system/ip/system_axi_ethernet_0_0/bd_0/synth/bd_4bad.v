//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_4bad.bd
//Design : bd_4bad
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_4bad,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_4bad,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "system_axi_ethernet_0_0.hwdef" *) 
module bd_4bad
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

  wire axi_rxd_arstn_1;
  wire axi_rxs_arstn_1;
  wire axi_txc_arstn_1;
  wire axi_txd_arstn_1;
  wire axis_clk_1;
  wire c_counter_binary_0_THRESH0;
  wire [31:0]eth_buf_AXI_STR_RXD_TDATA;
  wire [3:0]eth_buf_AXI_STR_RXD_TKEEP;
  wire eth_buf_AXI_STR_RXD_TLAST;
  wire eth_buf_AXI_STR_RXD_TREADY;
  wire eth_buf_AXI_STR_RXD_TVALID;
  wire [31:0]eth_buf_AXI_STR_RXS_TDATA;
  wire [3:0]eth_buf_AXI_STR_RXS_TKEEP;
  wire eth_buf_AXI_STR_RXS_TLAST;
  wire eth_buf_AXI_STR_RXS_TREADY;
  wire eth_buf_AXI_STR_RXS_TVALID;
  wire eth_buf_INTERRUPT;
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
  wire [0:0]eth_buf_TX_AXIS_MAC_TUSER;
  wire eth_buf_TX_AXIS_MAC_TVALID;
  wire eth_buf_pause_req;
  wire [16:31]eth_buf_pause_val;
  wire [24:31]eth_buf_tx_ifg_delay;
  wire [7:0]mac_gmii_RXD;
  wire mac_gmii_RX_DV;
  wire mac_gmii_RX_ER;
  wire [7:0]mac_gmii_TXD;
  wire mac_gmii_TX_EN;
  wire mac_gmii_TX_ER;
  wire [7:0]mac_m_axis_rx_TDATA;
  wire mac_m_axis_rx_TLAST;
  wire mac_m_axis_rx_TUSER;
  wire mac_m_axis_rx_TVALID;
  wire mac_mac_irq;
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
  wire mgt_clk_1_CLK_N;
  wire mgt_clk_1_CLK_P;
  wire pcs_pma_an_interrupt;
  wire pcs_pma_gt0_qplloutclk_out;
  wire pcs_pma_gt0_qplloutrefclk_out;
  wire pcs_pma_gtrefclk_bufg_out;
  wire pcs_pma_gtrefclk_out;
  wire pcs_pma_mdio_o;
  wire pcs_pma_mmcm_locked_out;
  wire pcs_pma_pma_reset_out;
  wire pcs_pma_resetdone;
  wire pcs_pma_rxuserclk2_out;
  wire pcs_pma_rxuserclk_out;
  wire pcs_pma_sfp_RXN;
  wire pcs_pma_sfp_RXP;
  wire pcs_pma_sfp_TXN;
  wire pcs_pma_sfp_TXP;
  wire [15:0]pcs_pma_status_vector;
  wire pcs_pma_userclk2_out;
  wire pcs_pma_userclk_out;
  wire ref_clk_1;
  wire [17:0]s_axi_1_ARADDR;
  wire s_axi_1_ARREADY;
  wire s_axi_1_ARVALID;
  wire [17:0]s_axi_1_AWADDR;
  wire s_axi_1_AWREADY;
  wire s_axi_1_AWVALID;
  wire s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire s_axi_1_BVALID;
  wire [31:0]s_axi_1_RDATA;
  wire s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire s_axi_1_RVALID;
  wire [31:0]s_axi_1_WDATA;
  wire s_axi_1_WREADY;
  wire [3:0]s_axi_1_WSTRB;
  wire s_axi_1_WVALID;
  wire s_axi_lite_clk_1;
  wire s_axi_lite_resetn_1;
  wire [31:0]s_axis_txc_1_TDATA;
  wire [3:0]s_axis_txc_1_TKEEP;
  wire s_axis_txc_1_TLAST;
  wire s_axis_txc_1_TREADY;
  wire s_axis_txc_1_TVALID;
  wire [31:0]s_axis_txd_1_TDATA;
  wire [3:0]s_axis_txd_1_TKEEP;
  wire s_axis_txd_1_TLAST;
  wire s_axis_txd_1_TREADY;
  wire s_axis_txd_1_TVALID;
  wire signal_detect_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_config_val_dout;
  wire [4:0]xlconstant_config_vec_dout;
  wire [4:0]xlconstant_phyadd_dout;

  assign axi_rxd_arstn_1 = axi_rxd_arstn;
  assign axi_rxs_arstn_1 = axi_rxs_arstn;
  assign axi_txc_arstn_1 = axi_txc_arstn;
  assign axi_txd_arstn_1 = axi_txd_arstn;
  assign axis_clk_1 = axis_clk;
  assign eth_buf_AXI_STR_RXD_TREADY = m_axis_rxd_tready;
  assign eth_buf_AXI_STR_RXS_TREADY = m_axis_rxs_tready;
  assign gt0_qplloutclk_out = pcs_pma_gt0_qplloutclk_out;
  assign gt0_qplloutrefclk_out = pcs_pma_gt0_qplloutrefclk_out;
  assign gtref_clk_buf_out = pcs_pma_gtrefclk_bufg_out;
  assign gtref_clk_out = pcs_pma_gtrefclk_out;
  assign interrupt = eth_buf_INTERRUPT;
  assign m_axis_rxd_tdata[31:0] = eth_buf_AXI_STR_RXD_TDATA;
  assign m_axis_rxd_tkeep[3:0] = eth_buf_AXI_STR_RXD_TKEEP;
  assign m_axis_rxd_tlast = eth_buf_AXI_STR_RXD_TLAST;
  assign m_axis_rxd_tvalid = eth_buf_AXI_STR_RXD_TVALID;
  assign m_axis_rxs_tdata[31:0] = eth_buf_AXI_STR_RXS_TDATA;
  assign m_axis_rxs_tkeep[3:0] = eth_buf_AXI_STR_RXS_TKEEP;
  assign m_axis_rxs_tlast = eth_buf_AXI_STR_RXS_TLAST;
  assign m_axis_rxs_tvalid = eth_buf_AXI_STR_RXS_TVALID;
  assign mac_irq = mac_mac_irq;
  assign mgt_clk_1_CLK_N = mgt_clk_clk_n;
  assign mgt_clk_1_CLK_P = mgt_clk_clk_p;
  assign mmcm_locked_out = pcs_pma_mmcm_locked_out;
  assign pcs_pma_sfp_RXN = sfp_rxn;
  assign pcs_pma_sfp_RXP = sfp_rxp;
  assign pma_reset_out = pcs_pma_pma_reset_out;
  assign ref_clk_1 = ref_clk;
  assign rxuserclk2_out = pcs_pma_rxuserclk2_out;
  assign rxuserclk_out = pcs_pma_rxuserclk_out;
  assign s_axi_1_ARADDR = s_axi_araddr[17:0];
  assign s_axi_1_ARVALID = s_axi_arvalid;
  assign s_axi_1_AWADDR = s_axi_awaddr[17:0];
  assign s_axi_1_AWVALID = s_axi_awvalid;
  assign s_axi_1_BREADY = s_axi_bready;
  assign s_axi_1_RREADY = s_axi_rready;
  assign s_axi_1_WDATA = s_axi_wdata[31:0];
  assign s_axi_1_WSTRB = s_axi_wstrb[3:0];
  assign s_axi_1_WVALID = s_axi_wvalid;
  assign s_axi_arready = s_axi_1_ARREADY;
  assign s_axi_awready = s_axi_1_AWREADY;
  assign s_axi_bresp[1:0] = s_axi_1_BRESP;
  assign s_axi_bvalid = s_axi_1_BVALID;
  assign s_axi_lite_clk_1 = s_axi_lite_clk;
  assign s_axi_lite_resetn_1 = s_axi_lite_resetn;
  assign s_axi_rdata[31:0] = s_axi_1_RDATA;
  assign s_axi_rresp[1:0] = s_axi_1_RRESP;
  assign s_axi_rvalid = s_axi_1_RVALID;
  assign s_axi_wready = s_axi_1_WREADY;
  assign s_axis_txc_1_TDATA = s_axis_txc_tdata[31:0];
  assign s_axis_txc_1_TKEEP = s_axis_txc_tkeep[3:0];
  assign s_axis_txc_1_TLAST = s_axis_txc_tlast;
  assign s_axis_txc_1_TVALID = s_axis_txc_tvalid;
  assign s_axis_txc_tready = s_axis_txc_1_TREADY;
  assign s_axis_txd_1_TDATA = s_axis_txd_tdata[31:0];
  assign s_axis_txd_1_TKEEP = s_axis_txd_tkeep[3:0];
  assign s_axis_txd_1_TLAST = s_axis_txd_tlast;
  assign s_axis_txd_1_TVALID = s_axis_txd_tvalid;
  assign s_axis_txd_tready = s_axis_txd_1_TREADY;
  assign sfp_txn = pcs_pma_sfp_TXN;
  assign sfp_txp = pcs_pma_sfp_TXP;
  assign signal_detect_1 = signal_detect;
  assign userclk2_out = pcs_pma_userclk2_out;
  assign userclk_out = pcs_pma_userclk_out;
  bd_4bad_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(s_axi_lite_clk_1),
        .SCLR(util_vector_logic_0_Res),
        .THRESH0(c_counter_binary_0_THRESH0));
  bd_4bad_c_shift_ram_0_0 c_shift_ram_0
       (.CE(c_counter_binary_0_THRESH0),
        .CLK(s_axi_lite_clk_1),
        .D(xlconstant_0_dout),
        .SCLR(util_vector_logic_0_Res));
  bd_4bad_eth_buf_0 eth_buf
       (.AXI_STR_RXD_ACLK(axis_clk_1),
        .AXI_STR_RXD_ARESETN(axi_rxd_arstn_1),
        .AXI_STR_RXD_DATA(eth_buf_AXI_STR_RXD_TDATA),
        .AXI_STR_RXD_KEEP(eth_buf_AXI_STR_RXD_TKEEP),
        .AXI_STR_RXD_LAST(eth_buf_AXI_STR_RXD_TLAST),
        .AXI_STR_RXD_READY(eth_buf_AXI_STR_RXD_TREADY),
        .AXI_STR_RXD_VALID(eth_buf_AXI_STR_RXD_TVALID),
        .AXI_STR_RXS_ACLK(axis_clk_1),
        .AXI_STR_RXS_ARESETN(axi_rxs_arstn_1),
        .AXI_STR_RXS_DATA(eth_buf_AXI_STR_RXS_TDATA),
        .AXI_STR_RXS_KEEP(eth_buf_AXI_STR_RXS_TKEEP),
        .AXI_STR_RXS_LAST(eth_buf_AXI_STR_RXS_TLAST),
        .AXI_STR_RXS_READY(eth_buf_AXI_STR_RXS_TREADY),
        .AXI_STR_RXS_VALID(eth_buf_AXI_STR_RXS_TVALID),
        .AXI_STR_TXC_ACLK(axis_clk_1),
        .AXI_STR_TXC_ARESETN(axi_txc_arstn_1),
        .AXI_STR_TXC_TDATA(s_axis_txc_1_TDATA),
        .AXI_STR_TXC_TKEEP(s_axis_txc_1_TKEEP),
        .AXI_STR_TXC_TLAST(s_axis_txc_1_TLAST),
        .AXI_STR_TXC_TREADY(s_axis_txc_1_TREADY),
        .AXI_STR_TXC_TVALID(s_axis_txc_1_TVALID),
        .AXI_STR_TXD_ACLK(axis_clk_1),
        .AXI_STR_TXD_ARESETN(axi_txd_arstn_1),
        .AXI_STR_TXD_TDATA(s_axis_txd_1_TDATA),
        .AXI_STR_TXD_TKEEP(s_axis_txd_1_TKEEP),
        .AXI_STR_TXD_TLAST(s_axis_txd_1_TLAST),
        .AXI_STR_TXD_TREADY(s_axis_txd_1_TREADY),
        .AXI_STR_TXD_TVALID(s_axis_txd_1_TVALID),
        .EMAC_CLIENT_AUTONEG_INT(pcs_pma_an_interrupt),
        .EMAC_RESET_DONE_INT(pcs_pma_resetdone),
        .EMAC_RX_DCM_LOCKED_INT(pcs_pma_mmcm_locked_out),
        .GTX_CLK(pcs_pma_userclk2_out),
        .INTERRUPT(eth_buf_INTERRUPT),
        .PCSPMA_STATUS_VECTOR(pcs_pma_status_vector),
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
        .S_AXI_ACLK(s_axi_lite_clk_1),
        .S_AXI_ARADDR(s_axi_1_ARADDR),
        .S_AXI_ARESETN(s_axi_lite_resetn_1),
        .S_AXI_ARREADY(s_axi_1_ARREADY),
        .S_AXI_ARVALID(s_axi_1_ARVALID),
        .S_AXI_AWADDR(s_axi_1_AWADDR),
        .S_AXI_AWREADY(s_axi_1_AWREADY),
        .S_AXI_AWVALID(s_axi_1_AWVALID),
        .S_AXI_BREADY(s_axi_1_BREADY),
        .S_AXI_BRESP(s_axi_1_BRESP),
        .S_AXI_BVALID(s_axi_1_BVALID),
        .S_AXI_RDATA(s_axi_1_RDATA),
        .S_AXI_RREADY(s_axi_1_RREADY),
        .S_AXI_RRESP(s_axi_1_RRESP),
        .S_AXI_RVALID(s_axi_1_RVALID),
        .S_AXI_WDATA(s_axi_1_WDATA),
        .S_AXI_WREADY(s_axi_1_WREADY),
        .S_AXI_WSTRB(s_axi_1_WSTRB),
        .S_AXI_WVALID(s_axi_1_WVALID),
        .mdc_temac(1'b1),
        .mdio_i_top(1'b1),
        .mdio_o_pcspma(1'b0),
        .mdio_o_temac(1'b1),
        .mdio_t_pcspma(1'b0),
        .mdio_t_temac(1'b1),
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
  bd_4bad_mac_0 mac
       (.glbl_rstn(eth_buf_RESET2TEMACn),
        .gmii_rx_dv(mac_gmii_RX_DV),
        .gmii_rx_er(mac_gmii_RX_ER),
        .gmii_rxd(mac_gmii_RXD),
        .gmii_tx_en(mac_gmii_TX_EN),
        .gmii_tx_er(mac_gmii_TX_ER),
        .gmii_txd(mac_gmii_TXD),
        .gtx_clk(pcs_pma_userclk2_out),
        .mac_irq(mac_mac_irq),
        .mdc(mac_mdc),
        .mdio_i(pcs_pma_mdio_o),
        .mdio_o(mac_mdio_o),
        .mdio_t(mac_mdio_t),
        .pause_req(eth_buf_pause_req),
        .pause_val({eth_buf_pause_val[16],eth_buf_pause_val[17],eth_buf_pause_val[18],eth_buf_pause_val[19],eth_buf_pause_val[20],eth_buf_pause_val[21],eth_buf_pause_val[22],eth_buf_pause_val[23],eth_buf_pause_val[24],eth_buf_pause_val[25],eth_buf_pause_val[26],eth_buf_pause_val[27],eth_buf_pause_val[28],eth_buf_pause_val[29],eth_buf_pause_val[30],eth_buf_pause_val[31]}),
        .rx_axi_rstn(eth_buf_RESET2TEMACn),
        .rx_axis_mac_tdata(mac_m_axis_rx_TDATA),
        .rx_axis_mac_tlast(mac_m_axis_rx_TLAST),
        .rx_axis_mac_tuser(mac_m_axis_rx_TUSER),
        .rx_axis_mac_tvalid(mac_m_axis_rx_TVALID),
        .rx_mac_aclk(mac_rx_mac_aclk),
        .rx_reset(mac_rx_reset),
        .rx_statistics_valid(mac_rx_statistics_valid),
        .rx_statistics_vector(mac_rx_statistics_vector),
        .s_axi_aclk(s_axi_lite_clk_1),
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
        .s_axi_resetn(s_axi_lite_resetn_1),
        .s_axi_rready(eth_buf_S_AXI_2TEMAC_RREADY),
        .s_axi_rresp(eth_buf_S_AXI_2TEMAC_RRESP),
        .s_axi_rvalid(eth_buf_S_AXI_2TEMAC_RVALID),
        .s_axi_wdata(eth_buf_S_AXI_2TEMAC_WDATA),
        .s_axi_wready(eth_buf_S_AXI_2TEMAC_WREADY),
        .s_axi_wvalid(eth_buf_S_AXI_2TEMAC_WVALID),
        .speedis10100(mac_speedis10100),
        .tx_axi_rstn(eth_buf_RESET2TEMACn),
        .tx_axis_mac_tdata(eth_buf_TX_AXIS_MAC_TDATA),
        .tx_axis_mac_tlast(eth_buf_TX_AXIS_MAC_TLAST),
        .tx_axis_mac_tready(eth_buf_TX_AXIS_MAC_TREADY),
        .tx_axis_mac_tuser(eth_buf_TX_AXIS_MAC_TUSER),
        .tx_axis_mac_tvalid(eth_buf_TX_AXIS_MAC_TVALID),
        .tx_ifg_delay({eth_buf_tx_ifg_delay[24],eth_buf_tx_ifg_delay[25],eth_buf_tx_ifg_delay[26],eth_buf_tx_ifg_delay[27],eth_buf_tx_ifg_delay[28],eth_buf_tx_ifg_delay[29],eth_buf_tx_ifg_delay[30],eth_buf_tx_ifg_delay[31]}),
        .tx_mac_aclk(mac_tx_mac_aclk),
        .tx_reset(mac_tx_reset));
  bd_4bad_pcs_pma_0 pcs_pma
       (.an_adv_config_val(1'b0),
        .an_adv_config_vector({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_interrupt(pcs_pma_an_interrupt),
        .an_restart_config(1'b0),
        .configuration_valid(xlconstant_config_val_dout),
        .configuration_vector(xlconstant_config_vec_dout),
        .ext_mdio_i(1'b1),
        .gmii_rx_dv(mac_gmii_RX_DV),
        .gmii_rx_er(mac_gmii_RX_ER),
        .gmii_rxd(mac_gmii_RXD),
        .gmii_tx_en(mac_gmii_TX_EN),
        .gmii_tx_er(mac_gmii_TX_ER),
        .gmii_txd(mac_gmii_TXD),
        .gt0_qplloutclk_out(pcs_pma_gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(pcs_pma_gt0_qplloutrefclk_out),
        .gtrefclk_bufg_out(pcs_pma_gtrefclk_bufg_out),
        .gtrefclk_n(mgt_clk_1_CLK_N),
        .gtrefclk_out(pcs_pma_gtrefclk_out),
        .gtrefclk_p(mgt_clk_1_CLK_P),
        .independent_clock_bufg(ref_clk_1),
        .mdc(mac_mdc),
        .mdio_i(mac_mdio_o),
        .mdio_o(pcs_pma_mdio_o),
        .mdio_t_in(mac_mdio_t),
        .mmcm_locked_out(pcs_pma_mmcm_locked_out),
        .phyaddr(xlconstant_phyadd_dout),
        .pma_reset_out(pcs_pma_pma_reset_out),
        .reset(eth_buf_RESET2PCSPMA),
        .resetdone(pcs_pma_resetdone),
        .rxn(pcs_pma_sfp_RXN),
        .rxp(pcs_pma_sfp_RXP),
        .rxuserclk2_out(pcs_pma_rxuserclk2_out),
        .rxuserclk_out(pcs_pma_rxuserclk_out),
        .signal_detect(signal_detect_1),
        .status_vector(pcs_pma_status_vector),
        .txn(pcs_pma_sfp_TXN),
        .txp(pcs_pma_sfp_TXP),
        .userclk2_out(pcs_pma_userclk2_out),
        .userclk_out(pcs_pma_userclk_out));
  bd_4bad_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(s_axi_lite_resetn_1),
        .Res(util_vector_logic_0_Res));
  bd_4bad_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  bd_4bad_xlconstant_config_val_0 xlconstant_config_val
       (.dout(xlconstant_config_val_dout));
  bd_4bad_xlconstant_config_vec_0 xlconstant_config_vec
       (.dout(xlconstant_config_vec_dout));
  bd_4bad_xlconstant_phyadd_0 xlconstant_phyadd
       (.dout(xlconstant_phyadd_dout));
endmodule
