// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
// Date        : Thu Nov 09 10:27:59 2017
// Host        : LB-201708051431 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_auto_us_0/system_auto_us_0_sim_netlist.v
// Design      : system_auto_us_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_auto_us_0,axi_dwidth_converter_v2_1_11_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_dwidth_converter_v2_1_11_top,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module system_auto_us_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SI_CLK CLK" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SI_RST RST" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [3:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [1:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;

  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [1:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_rready_UNCONNECTED;
  wire NLW_inst_s_axi_arready_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_inst_s_axi_rvalid_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_IS_ACLK_ASYNC = "0" *) 
  (* C_AXI_PROTOCOL = "1" *) 
  (* C_AXI_SUPPORTS_READ = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FIFO_MODE = "0" *) 
  (* C_MAX_SPLIT_BEATS = "16" *) 
  (* C_M_AXI_ACLK_RATIO = "2" *) 
  (* C_M_AXI_BYTES_LOG = "3" *) 
  (* C_M_AXI_DATA_WIDTH = "64" *) 
  (* C_PACKING_LEVEL = "1" *) 
  (* C_RATIO = "0" *) 
  (* C_RATIO_LOG = "0" *) 
  (* C_SUPPORTS_ID = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_S_AXI_ACLK_RATIO = "1" *) 
  (* C_S_AXI_BYTES_LOG = "2" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_CONVERSION = "2" *) 
  (* P_MAX_SPLIT_BEATS = "16" *) 
  system_auto_us_0_axi_dwidth_converter_v2_1_11_top inst
       (.m_axi_aclk(1'b0),
        .m_axi_araddr(NLW_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_aresetn(1'b0),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[3:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(NLW_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b1),
        .m_axi_rready(NLW_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(NLW_inst_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_11_a_upsizer" *) 
module system_auto_us_0_axi_dwidth_converter_v2_1_11_a_upsizer
   (wr_cmd_valid,
    Q,
    p_251_in,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7] ,
    p_0_out,
    p_1_in,
    p_3_out4_out,
    p_8_out,
    p_11_out,
    p_14_out,
    p_17_out18_out,
    p_22_out,
    p_25_out26_out,
    \USE_RTL_LENGTH.length_counter_q_reg[1] ,
    \USE_REGISTER.M_AXI_WVALID_q_reg ,
    D,
    \USE_RTL_CURR_WORD.current_word_q_reg[2] ,
    p_31_out__2,
    p_61_out__2,
    p_91_out__2,
    p_122_out__2,
    p_151_out__2,
    p_180_out__2,
    p_209_out__2,
    p_245_out__2,
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[63] ,
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[55] ,
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[47] ,
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[39] ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[31] ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[23] ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[15] ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ,
    s_axi_wready,
    E,
    s_ready_i_reg,
    m_axi_awvalid,
    m_valid_i_reg,
    wrap_buffer_available_reg,
    \USE_REGISTER.M_AXI_WVALID_q_reg_0 ,
    \USE_RTL_LENGTH.first_mi_word_q_reg ,
    SR,
    s_axi_aclk,
    s_axi_wvalid,
    wrap_buffer_available,
    sr_awvalid,
    s_axi_wlast,
    s_axi_wstrb,
    wstrb_wrap_buffer_7,
    wstrb_wrap_buffer_6,
    wstrb_wrap_buffer_5,
    wstrb_wrap_buffer_4,
    wstrb_wrap_buffer_3,
    wstrb_wrap_buffer_2,
    wstrb_wrap_buffer_1,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ,
    out,
    \USE_RTL_LENGTH.length_counter_q_reg[1]_0 ,
    first_mi_word_q,
    \USE_REGISTER.M_AXI_WVALID_q_reg_1 ,
    \USE_RTL_LENGTH.length_counter_q_reg[7] ,
    \USE_RTL_LENGTH.length_counter_q_reg[2] ,
    \USE_RTL_LENGTH.length_counter_q_reg[4] ,
    \USE_RTL_LENGTH.length_counter_q_reg[5] ,
    first_word_q,
    \USE_RTL_CURR_WORD.pre_next_word_q_reg[2] ,
    \USE_RTL_CURR_WORD.first_word_q_reg ,
    \USE_RTL_CURR_WORD.current_word_q_reg[2]_0 ,
    \USE_REGISTER.M_AXI_WVALID_q_reg_2 ,
    m_axi_wready,
    \USE_REGISTER.M_AXI_WVALID_q_reg_3 ,
    m_axi_awready,
    in);
  output wr_cmd_valid;
  output [6:0]Q;
  output p_251_in;
  output [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7] ;
  output p_0_out;
  output p_1_in;
  output p_3_out4_out;
  output p_8_out;
  output p_11_out;
  output p_14_out;
  output p_17_out18_out;
  output p_22_out;
  output p_25_out26_out;
  output \USE_RTL_LENGTH.length_counter_q_reg[1] ;
  output \USE_REGISTER.M_AXI_WVALID_q_reg ;
  output [2:0]D;
  output [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2] ;
  output p_31_out__2;
  output p_61_out__2;
  output p_91_out__2;
  output p_122_out__2;
  output p_151_out__2;
  output p_180_out__2;
  output p_209_out__2;
  output p_245_out__2;
  output [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[63] ;
  output [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[55] ;
  output [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[47] ;
  output [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[39] ;
  output [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[31] ;
  output [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[23] ;
  output [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[15] ;
  output [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ;
  output s_axi_wready;
  output [0:0]E;
  output s_ready_i_reg;
  output m_axi_awvalid;
  output m_valid_i_reg;
  output wrap_buffer_available_reg;
  output \USE_REGISTER.M_AXI_WVALID_q_reg_0 ;
  output \USE_RTL_LENGTH.first_mi_word_q_reg ;
  input [0:0]SR;
  input s_axi_aclk;
  input s_axi_wvalid;
  input wrap_buffer_available;
  input sr_awvalid;
  input s_axi_wlast;
  input [3:0]s_axi_wstrb;
  input wstrb_wrap_buffer_7;
  input wstrb_wrap_buffer_6;
  input wstrb_wrap_buffer_5;
  input wstrb_wrap_buffer_4;
  input wstrb_wrap_buffer_3;
  input wstrb_wrap_buffer_2;
  input wstrb_wrap_buffer_1;
  input \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ;
  input out;
  input [1:0]\USE_RTL_LENGTH.length_counter_q_reg[1]_0 ;
  input first_mi_word_q;
  input \USE_REGISTER.M_AXI_WVALID_q_reg_1 ;
  input \USE_RTL_LENGTH.length_counter_q_reg[7] ;
  input \USE_RTL_LENGTH.length_counter_q_reg[2] ;
  input \USE_RTL_LENGTH.length_counter_q_reg[4] ;
  input \USE_RTL_LENGTH.length_counter_q_reg[5] ;
  input first_word_q;
  input [2:0]\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] ;
  input \USE_RTL_CURR_WORD.first_word_q_reg ;
  input [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 ;
  input \USE_REGISTER.M_AXI_WVALID_q_reg_2 ;
  input m_axi_wready;
  input \USE_REGISTER.M_AXI_WVALID_q_reg_3 ;
  input m_axi_awready;
  input [23:0]in;

  wire [2:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]SR;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_1 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_2 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_3 ;
  wire [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2] ;
  wire [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 ;
  wire \USE_RTL_CURR_WORD.first_word_q_reg ;
  wire [2:0]\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] ;
  wire \USE_RTL_LENGTH.first_mi_word_q_reg ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[1] ;
  wire [1:0]\USE_RTL_LENGTH.length_counter_q_reg[1]_0 ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[2] ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[4] ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[5] ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[7] ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7] ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[15] ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[23] ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[31] ;
  wire [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[39] ;
  wire [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[47] ;
  wire [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[55] ;
  wire [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[63] ;
  wire cmd_push_block;
  wire cmd_push_block0;
  wire first_mi_word_q;
  wire first_word_q;
  wire [23:0]in;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_valid_i_reg;
  wire out;
  wire p_0_out;
  wire p_11_out;
  wire p_122_out__2;
  wire p_14_out;
  wire p_151_out__2;
  wire p_17_out18_out;
  wire p_180_out__2;
  wire p_1_in;
  wire p_209_out__2;
  wire p_22_out;
  wire p_245_out__2;
  wire p_251_in;
  wire p_25_out26_out;
  wire p_31_out__2;
  wire p_3_out4_out;
  wire p_61_out__2;
  wire p_8_out;
  wire p_91_out__2;
  wire s_axi_aclk;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire s_ready_i_reg;
  wire sr_awvalid;
  wire wr_cmd_valid;
  wire wrap_buffer_available;
  wire wrap_buffer_available_reg;
  wire wstrb_wrap_buffer_1;
  wire wstrb_wrap_buffer_2;
  wire wstrb_wrap_buffer_3;
  wire wstrb_wrap_buffer_4;
  wire wstrb_wrap_buffer_5;
  wire wstrb_wrap_buffer_6;
  wire wstrb_wrap_buffer_7;

  system_auto_us_0_generic_baseblocks_v2_1_0_command_fifo \GEN_CMD_QUEUE.cmd_queue 
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .\USE_REGISTER.M_AXI_WVALID_q_reg (\USE_REGISTER.M_AXI_WVALID_q_reg ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_0 (\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_1 (\USE_REGISTER.M_AXI_WVALID_q_reg_1 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_2 (\USE_REGISTER.M_AXI_WVALID_q_reg_2 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_3 (\USE_REGISTER.M_AXI_WVALID_q_reg_3 ),
        .\USE_RTL_CURR_WORD.current_word_q_reg[2] (\USE_RTL_CURR_WORD.current_word_q_reg[2] ),
        .\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 (\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 ),
        .\USE_RTL_CURR_WORD.first_word_q_reg (wr_cmd_valid),
        .\USE_RTL_CURR_WORD.first_word_q_reg_0 (\USE_RTL_CURR_WORD.first_word_q_reg ),
        .\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] (\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] ),
        .\USE_RTL_LENGTH.first_mi_word_q_reg (\USE_RTL_LENGTH.first_mi_word_q_reg ),
        .\USE_RTL_LENGTH.length_counter_q_reg[1] (p_251_in),
        .\USE_RTL_LENGTH.length_counter_q_reg[1]_0 (\USE_RTL_LENGTH.length_counter_q_reg[1] ),
        .\USE_RTL_LENGTH.length_counter_q_reg[1]_1 (\USE_RTL_LENGTH.length_counter_q_reg[1]_0 ),
        .\USE_RTL_LENGTH.length_counter_q_reg[2] (\USE_RTL_LENGTH.length_counter_q_reg[2] ),
        .\USE_RTL_LENGTH.length_counter_q_reg[4] (\USE_RTL_LENGTH.length_counter_q_reg[4] ),
        .\USE_RTL_LENGTH.length_counter_q_reg[5] (\USE_RTL_LENGTH.length_counter_q_reg[5] ),
        .\USE_RTL_LENGTH.length_counter_q_reg[7] (\USE_RTL_LENGTH.length_counter_q_reg[7] ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7] (\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7] ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 (p_1_in),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_1 (\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] (\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[15] (\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[15] ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[23] (\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[23] ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[31] (\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[31] ),
        .\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[39] (\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[39] ),
        .\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[47] (\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[47] ),
        .\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[55] (\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[55] ),
        .\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[63] (\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[63] ),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block0(cmd_push_block0),
        .first_mi_word_q(first_mi_word_q),
        .first_word_q(first_word_q),
        .in(in),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_valid_i_reg(m_valid_i_reg),
        .out(out),
        .p_0_out(p_0_out),
        .p_11_out(p_11_out),
        .p_122_out__2(p_122_out__2),
        .p_14_out(p_14_out),
        .p_151_out__2(p_151_out__2),
        .p_17_out18_out(p_17_out18_out),
        .p_180_out__2(p_180_out__2),
        .p_209_out__2(p_209_out__2),
        .p_22_out(p_22_out),
        .p_245_out__2(p_245_out__2),
        .p_25_out26_out(p_25_out26_out),
        .p_31_out__2(p_31_out__2),
        .p_3_out4_out(p_3_out4_out),
        .p_61_out__2(p_61_out__2),
        .p_8_out(p_8_out),
        .p_91_out__2(p_91_out__2),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg(s_ready_i_reg),
        .sr_awvalid(sr_awvalid),
        .wrap_buffer_available(wrap_buffer_available),
        .wrap_buffer_available_reg(wrap_buffer_available_reg),
        .wstrb_wrap_buffer_1(wstrb_wrap_buffer_1),
        .wstrb_wrap_buffer_2(wstrb_wrap_buffer_2),
        .wstrb_wrap_buffer_3(wstrb_wrap_buffer_3),
        .wstrb_wrap_buffer_4(wstrb_wrap_buffer_4),
        .wstrb_wrap_buffer_5(wstrb_wrap_buffer_5),
        .wstrb_wrap_buffer_6(wstrb_wrap_buffer_6),
        .wstrb_wrap_buffer_7(wstrb_wrap_buffer_7));
  FDRE cmd_push_block_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cmd_push_block0),
        .Q(cmd_push_block),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_11_axi_upsizer" *) 
module system_auto_us_0_axi_dwidth_converter_v2_1_11_axi_upsizer
   (s_axi_awready,
    m_axi_awlen,
    m_axi_awaddr,
    m_axi_awburst,
    m_axi_wdata,
    m_axi_wstrb,
    Q,
    m_axi_wvalid,
    s_axi_wready,
    m_axi_awvalid,
    m_axi_awsize,
    m_axi_wlast,
    s_axi_awvalid,
    m_axi_awready,
    out,
    s_axi_aclk,
    s_axi_wlast,
    s_axi_wdata,
    D,
    s_axi_wvalid,
    s_axi_wstrb,
    m_axi_wready);
  output s_axi_awready;
  output [3:0]m_axi_awlen;
  output [31:0]m_axi_awaddr;
  output [1:0]m_axi_awburst;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [12:0]Q;
  output m_axi_wvalid;
  output s_axi_wready;
  output m_axi_awvalid;
  output [2:0]m_axi_awsize;
  output m_axi_wlast;
  input s_axi_awvalid;
  input m_axi_awready;
  input out;
  input s_axi_aclk;
  input s_axi_wlast;
  input [31:0]s_axi_wdata;
  input [53:0]D;
  input s_axi_wvalid;
  input [3:0]s_axi_wstrb;
  input m_axi_wready;

  wire [53:0]D;
  wire [12:0]Q;
  wire [1:0]\USE_RTL_LENGTH.length_counter_q_reg ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_2 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_24 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_25 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_26 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_27 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_28 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_29 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_30 ;
  wire \USE_WRITE.write_addr_inst_n_19 ;
  wire \USE_WRITE.write_addr_inst_n_20 ;
  wire \USE_WRITE.write_addr_inst_n_35 ;
  wire \USE_WRITE.write_addr_inst_n_4 ;
  wire \USE_WRITE.write_addr_inst_n_45 ;
  wire \USE_WRITE.write_addr_inst_n_47 ;
  wire \USE_WRITE.write_addr_inst_n_48 ;
  wire \USE_WRITE.write_addr_inst_n_49 ;
  wire \USE_WRITE.write_addr_inst_n_5 ;
  wire \USE_WRITE.write_addr_inst_n_50 ;
  wire \USE_WRITE.write_addr_inst_n_6 ;
  wire \USE_WRITE.write_addr_inst_n_7 ;
  wire [2:0]cmd_first_word_i;
  wire cmd_fix_i;
  wire cmd_modified_i;
  wire cmd_packed_wrap_i;
  wire [2:0]current_word_q;
  wire first_mi_word_q;
  wire first_word_q;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [2:0]next_word;
  wire out;
  wire p_0_out;
  wire p_102_out;
  wire p_11_out;
  wire p_122_out__2;
  wire p_131_out;
  wire p_14_out;
  wire p_151_out__2;
  wire p_160_out;
  wire p_17_out18_out;
  wire p_180_out__2;
  wire p_189_out;
  wire p_1_in;
  wire [22:16]p_1_out;
  wire p_209_out__2;
  wire p_222_out;
  wire p_22_out;
  wire p_245_out__2;
  wire p_251_in;
  wire p_25_out26_out;
  wire p_31_out__2;
  wire p_3_out4_out;
  wire p_41_out;
  wire p_61_out__2;
  wire p_71_out;
  wire p_8_out;
  wire p_91_out__2;
  wire pop_si_data;
  wire [2:0]pre_next_word;
  wire [2:0]pre_next_word_q;
  wire s_axi_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire si_register_slice_inst_n_11;
  wire si_register_slice_inst_n_16;
  wire si_register_slice_inst_n_17;
  wire si_register_slice_inst_n_18;
  wire si_register_slice_inst_n_19;
  wire si_register_slice_inst_n_20;
  wire si_register_slice_inst_n_21;
  wire si_register_slice_inst_n_4;
  wire sr_awvalid;
  wire wdata_wrap_buffer_q;
  wire wr_cmd_fix;
  wire wr_cmd_modified;
  wire wr_cmd_packed_wrap;
  wire wr_cmd_valid;
  wire wrap_buffer_available;
  wire wstrb_wrap_buffer_1;
  wire wstrb_wrap_buffer_2;
  wire wstrb_wrap_buffer_3;
  wire wstrb_wrap_buffer_4;
  wire wstrb_wrap_buffer_5;
  wire wstrb_wrap_buffer_6;
  wire wstrb_wrap_buffer_7;

  system_auto_us_0_axi_dwidth_converter_v2_1_11_w_upsizer \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst 
       (.D(pre_next_word),
        .E(pop_si_data),
        .Q({wr_cmd_fix,wr_cmd_modified,wr_cmd_packed_wrap,\USE_WRITE.write_addr_inst_n_4 ,\USE_WRITE.write_addr_inst_n_5 ,\USE_WRITE.write_addr_inst_n_6 ,\USE_WRITE.write_addr_inst_n_7 }),
        .SR(wdata_wrap_buffer_q),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[13] (next_word),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg (\USE_WRITE.write_addr_inst_n_48 ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 (\USE_WRITE.write_addr_inst_n_49 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_0 (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_24 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_1 (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_25 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_2 (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_28 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_3 (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_29 ),
        .\USE_RTL_CURR_WORD.current_word_q_reg[1]_0 (\USE_WRITE.write_addr_inst_n_20 ),
        .\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 (pre_next_word_q),
        .\USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0 (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_27 ),
        .\USE_RTL_LENGTH.first_mi_word_q_reg_0 (\USE_WRITE.write_addr_inst_n_50 ),
        .\USE_RTL_LENGTH.length_counter_q_reg[0]_0 (\USE_WRITE.write_addr_inst_n_19 ),
        .\USE_RTL_LENGTH.length_counter_q_reg[1]_0 (\USE_RTL_LENGTH.length_counter_q_reg ),
        .\USE_RTL_LENGTH.length_counter_q_reg[1]_1 (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_30 ),
        .\USE_RTL_LENGTH.length_counter_q_reg[7]_0 (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1 ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 (current_word_q),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_2 ),
        .\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[4]_0 (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_26 ),
        .first_mi_word_q(first_mi_word_q),
        .first_word_q(first_word_q),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .out(out),
        .p_0_out(p_0_out),
        .p_11_out(p_11_out),
        .p_122_out__2(p_122_out__2),
        .p_14_out(p_14_out),
        .p_151_out__2(p_151_out__2),
        .p_17_out18_out(p_17_out18_out),
        .p_180_out__2(p_180_out__2),
        .p_1_in(p_1_in),
        .p_209_out__2(p_209_out__2),
        .p_22_out(p_22_out),
        .p_245_out__2(p_245_out__2),
        .p_251_in(p_251_in),
        .p_25_out26_out(p_25_out26_out),
        .p_31_out__2(p_31_out__2),
        .p_3_out4_out(p_3_out4_out),
        .p_61_out__2(p_61_out__2),
        .p_8_out(p_8_out),
        .p_91_out__2(p_91_out__2),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .wr_cmd_valid(wr_cmd_valid),
        .wrap_buffer_available(wrap_buffer_available),
        .wrap_buffer_available_reg_0(p_222_out),
        .wrap_buffer_available_reg_1(p_189_out),
        .wrap_buffer_available_reg_2(p_160_out),
        .wrap_buffer_available_reg_3(p_131_out),
        .wrap_buffer_available_reg_4(p_102_out),
        .wrap_buffer_available_reg_5(p_71_out),
        .wrap_buffer_available_reg_6(p_41_out),
        .wrap_buffer_available_reg_7(\USE_WRITE.write_addr_inst_n_35 ),
        .wstrb_wrap_buffer_1(wstrb_wrap_buffer_1),
        .wstrb_wrap_buffer_2(wstrb_wrap_buffer_2),
        .wstrb_wrap_buffer_3(wstrb_wrap_buffer_3),
        .wstrb_wrap_buffer_4(wstrb_wrap_buffer_4),
        .wstrb_wrap_buffer_5(wstrb_wrap_buffer_5),
        .wstrb_wrap_buffer_6(wstrb_wrap_buffer_6),
        .wstrb_wrap_buffer_7(wstrb_wrap_buffer_7));
  system_auto_us_0_axi_dwidth_converter_v2_1_11_a_upsizer \USE_WRITE.write_addr_inst 
       (.D(pre_next_word),
        .E(pop_si_data),
        .Q({wr_cmd_fix,wr_cmd_modified,wr_cmd_packed_wrap,\USE_WRITE.write_addr_inst_n_4 ,\USE_WRITE.write_addr_inst_n_5 ,\USE_WRITE.write_addr_inst_n_6 ,\USE_WRITE.write_addr_inst_n_7 }),
        .SR(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg (\USE_WRITE.write_addr_inst_n_20 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_0 (\USE_WRITE.write_addr_inst_n_49 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_1 (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_30 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_2 (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_26 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_3 (m_axi_wvalid),
        .\USE_RTL_CURR_WORD.current_word_q_reg[2] (next_word),
        .\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 (current_word_q),
        .\USE_RTL_CURR_WORD.first_word_q_reg (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_27 ),
        .\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] (pre_next_word_q),
        .\USE_RTL_LENGTH.first_mi_word_q_reg (\USE_WRITE.write_addr_inst_n_50 ),
        .\USE_RTL_LENGTH.length_counter_q_reg[1] (\USE_WRITE.write_addr_inst_n_19 ),
        .\USE_RTL_LENGTH.length_counter_q_reg[1]_0 (\USE_RTL_LENGTH.length_counter_q_reg ),
        .\USE_RTL_LENGTH.length_counter_q_reg[2] (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_28 ),
        .\USE_RTL_LENGTH.length_counter_q_reg[4] (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_24 ),
        .\USE_RTL_LENGTH.length_counter_q_reg[5] (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_25 ),
        .\USE_RTL_LENGTH.length_counter_q_reg[7] (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_29 ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7] (wdata_wrap_buffer_q),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 (p_222_out),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_2 ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[15] (p_189_out),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[23] (p_160_out),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[31] (p_131_out),
        .\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[39] (p_102_out),
        .\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[47] (p_71_out),
        .\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[55] (p_41_out),
        .\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[63] (\USE_WRITE.write_addr_inst_n_35 ),
        .first_mi_word_q(first_mi_word_q),
        .first_word_q(first_word_q),
        .in({cmd_fix_i,cmd_modified_i,si_register_slice_inst_n_4,cmd_packed_wrap_i,cmd_first_word_i,p_1_out[22:21],si_register_slice_inst_n_11,p_1_out[19:16],si_register_slice_inst_n_16,si_register_slice_inst_n_17,si_register_slice_inst_n_18,si_register_slice_inst_n_19,si_register_slice_inst_n_20,si_register_slice_inst_n_21,m_axi_awlen}),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_valid_i_reg(\USE_WRITE.write_addr_inst_n_47 ),
        .out(out),
        .p_0_out(p_0_out),
        .p_11_out(p_11_out),
        .p_122_out__2(p_122_out__2),
        .p_14_out(p_14_out),
        .p_151_out__2(p_151_out__2),
        .p_17_out18_out(p_17_out18_out),
        .p_180_out__2(p_180_out__2),
        .p_1_in(p_1_in),
        .p_209_out__2(p_209_out__2),
        .p_22_out(p_22_out),
        .p_245_out__2(p_245_out__2),
        .p_251_in(p_251_in),
        .p_25_out26_out(p_25_out26_out),
        .p_31_out__2(p_31_out__2),
        .p_3_out4_out(p_3_out4_out),
        .p_61_out__2(p_61_out__2),
        .p_8_out(p_8_out),
        .p_91_out__2(p_91_out__2),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg(\USE_WRITE.write_addr_inst_n_45 ),
        .sr_awvalid(sr_awvalid),
        .wr_cmd_valid(wr_cmd_valid),
        .wrap_buffer_available(wrap_buffer_available),
        .wrap_buffer_available_reg(\USE_WRITE.write_addr_inst_n_48 ),
        .wstrb_wrap_buffer_1(wstrb_wrap_buffer_1),
        .wstrb_wrap_buffer_2(wstrb_wrap_buffer_2),
        .wstrb_wrap_buffer_3(wstrb_wrap_buffer_3),
        .wstrb_wrap_buffer_4(wstrb_wrap_buffer_4),
        .wstrb_wrap_buffer_5(wstrb_wrap_buffer_5),
        .wstrb_wrap_buffer_6(wstrb_wrap_buffer_6),
        .wstrb_wrap_buffer_7(wstrb_wrap_buffer_7));
  system_auto_us_0_axi_register_slice_v2_1_11_axi_register_slice si_register_slice_inst
       (.D(D),
        .Q(Q),
        .SR(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1 ),
        .\USE_RTL_VALID_WRITE.buffer_Full_q_reg (\USE_WRITE.write_addr_inst_n_45 ),
        .cmd_push_block_reg(\USE_WRITE.write_addr_inst_n_47 ),
        .in({cmd_fix_i,cmd_modified_i,si_register_slice_inst_n_4,cmd_packed_wrap_i,cmd_first_word_i,p_1_out[22:21],si_register_slice_inst_n_11,p_1_out[19:16],si_register_slice_inst_n_16,si_register_slice_inst_n_17,si_register_slice_inst_n_18,si_register_slice_inst_n_19,si_register_slice_inst_n_20,si_register_slice_inst_n_21,m_axi_awlen}),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .sr_awvalid(sr_awvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_IS_ACLK_ASYNC = "0" *) (* C_AXI_PROTOCOL = "1" *) 
(* C_AXI_SUPPORTS_READ = "0" *) (* C_AXI_SUPPORTS_WRITE = "1" *) (* C_FAMILY = "zynq" *) 
(* C_FIFO_MODE = "0" *) (* C_MAX_SPLIT_BEATS = "16" *) (* C_M_AXI_ACLK_RATIO = "2" *) 
(* C_M_AXI_BYTES_LOG = "3" *) (* C_M_AXI_DATA_WIDTH = "64" *) (* C_PACKING_LEVEL = "1" *) 
(* C_RATIO = "0" *) (* C_RATIO_LOG = "0" *) (* C_SUPPORTS_ID = "0" *) 
(* C_SYNCHRONIZER_STAGE = "3" *) (* C_S_AXI_ACLK_RATIO = "1" *) (* C_S_AXI_BYTES_LOG = "2" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "1" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_11_top" *) (* P_AXI3 = "1" *) (* P_AXI4 = "0" *) 
(* P_AXILITE = "2" *) (* P_CONVERSION = "2" *) (* P_MAX_SPLIT_BEATS = "16" *) 
module system_auto_us_0_axi_dwidth_converter_v2_1_11_top
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* keep = "true" *) input s_axi_aclk;
  (* keep = "true" *) input s_axi_aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  (* keep = "true" *) input m_axi_aclk;
  (* keep = "true" *) input m_axi_aresetn;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  (* RTL_KEEP = "true" *) wire m_axi_aclk;
  (* RTL_KEEP = "true" *) wire m_axi_aresetn;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [1:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  (* RTL_KEEP = "true" *) wire s_axi_aclk;
  (* RTL_KEEP = "true" *) wire s_axi_aresetn;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_auto_us_0_axi_dwidth_converter_v2_1_11_axi_upsizer \gen_upsizer.gen_full_upsizer.axi_upsizer_inst 
       (.D({s_axi_awqos,s_axi_awlock,s_axi_awlen,s_axi_awcache,s_axi_awburst,s_axi_awsize,s_axi_awprot,s_axi_awaddr}),
        .Q({m_axi_awqos,m_axi_awlock,m_axi_awcache,m_axi_awprot}),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .out(s_axi_aresetn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_11_w_upsizer" *) 
module system_auto_us_0_axi_dwidth_converter_v2_1_11_w_upsizer
   (first_word_q,
    \USE_RTL_LENGTH.length_counter_q_reg[7]_0 ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ,
    wstrb_wrap_buffer_1,
    wstrb_wrap_buffer_2,
    wstrb_wrap_buffer_3,
    wstrb_wrap_buffer_4,
    wstrb_wrap_buffer_5,
    wstrb_wrap_buffer_6,
    wstrb_wrap_buffer_7,
    m_axi_wstrb,
    \USE_RTL_LENGTH.length_counter_q_reg[1]_0 ,
    wrap_buffer_available,
    first_mi_word_q,
    m_axi_wvalid,
    m_axi_wlast,
    \USE_REGISTER.M_AXI_WVALID_q_reg_0 ,
    \USE_REGISTER.M_AXI_WVALID_q_reg_1 ,
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[4]_0 ,
    \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0 ,
    \USE_REGISTER.M_AXI_WVALID_q_reg_2 ,
    \USE_REGISTER.M_AXI_WVALID_q_reg_3 ,
    \USE_RTL_LENGTH.length_counter_q_reg[1]_1 ,
    \USE_RTL_CURR_WORD.current_word_q_reg[2]_0 ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ,
    m_axi_wdata,
    E,
    s_axi_wlast,
    s_axi_aclk,
    p_25_out26_out,
    p_22_out,
    p_17_out18_out,
    p_14_out,
    p_11_out,
    p_8_out,
    p_3_out4_out,
    p_0_out,
    \USE_RTL_LENGTH.length_counter_q_reg[0]_0 ,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ,
    \USE_RTL_LENGTH.first_mi_word_q_reg_0 ,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ,
    p_251_in,
    Q,
    s_axi_wdata,
    p_31_out__2,
    out,
    s_axi_wstrb,
    m_axi_wready,
    p_61_out__2,
    p_91_out__2,
    p_122_out__2,
    p_151_out__2,
    p_180_out__2,
    p_209_out__2,
    p_245_out__2,
    \USE_RTL_CURR_WORD.current_word_q_reg[1]_0 ,
    p_1_in,
    s_axi_wvalid,
    wr_cmd_valid,
    D,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[13] ,
    SR,
    wrap_buffer_available_reg_0,
    wrap_buffer_available_reg_1,
    wrap_buffer_available_reg_2,
    wrap_buffer_available_reg_3,
    wrap_buffer_available_reg_4,
    wrap_buffer_available_reg_5,
    wrap_buffer_available_reg_6,
    wrap_buffer_available_reg_7);
  output first_word_q;
  output \USE_RTL_LENGTH.length_counter_q_reg[7]_0 ;
  output \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ;
  output wstrb_wrap_buffer_1;
  output wstrb_wrap_buffer_2;
  output wstrb_wrap_buffer_3;
  output wstrb_wrap_buffer_4;
  output wstrb_wrap_buffer_5;
  output wstrb_wrap_buffer_6;
  output wstrb_wrap_buffer_7;
  output [7:0]m_axi_wstrb;
  output [1:0]\USE_RTL_LENGTH.length_counter_q_reg[1]_0 ;
  output wrap_buffer_available;
  output first_mi_word_q;
  output m_axi_wvalid;
  output m_axi_wlast;
  output \USE_REGISTER.M_AXI_WVALID_q_reg_0 ;
  output \USE_REGISTER.M_AXI_WVALID_q_reg_1 ;
  output \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[4]_0 ;
  output \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0 ;
  output \USE_REGISTER.M_AXI_WVALID_q_reg_2 ;
  output \USE_REGISTER.M_AXI_WVALID_q_reg_3 ;
  output \USE_RTL_LENGTH.length_counter_q_reg[1]_1 ;
  output [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 ;
  output [2:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ;
  output [63:0]m_axi_wdata;
  input [0:0]E;
  input s_axi_wlast;
  input s_axi_aclk;
  input p_25_out26_out;
  input p_22_out;
  input p_17_out18_out;
  input p_14_out;
  input p_11_out;
  input p_8_out;
  input p_3_out4_out;
  input p_0_out;
  input \USE_RTL_LENGTH.length_counter_q_reg[0]_0 ;
  input \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ;
  input \USE_RTL_LENGTH.first_mi_word_q_reg_0 ;
  input \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ;
  input p_251_in;
  input [6:0]Q;
  input [31:0]s_axi_wdata;
  input p_31_out__2;
  input out;
  input [3:0]s_axi_wstrb;
  input m_axi_wready;
  input p_61_out__2;
  input p_91_out__2;
  input p_122_out__2;
  input p_151_out__2;
  input p_180_out__2;
  input p_209_out__2;
  input p_245_out__2;
  input \USE_RTL_CURR_WORD.current_word_q_reg[1]_0 ;
  input p_1_in;
  input s_axi_wvalid;
  input wr_cmd_valid;
  input [2:0]D;
  input [2:0]\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[13] ;
  input [0:0]SR;
  input [0:0]wrap_buffer_available_reg_0;
  input [0:0]wrap_buffer_available_reg_1;
  input [0:0]wrap_buffer_available_reg_2;
  input [0:0]wrap_buffer_available_reg_3;
  input [0:0]wrap_buffer_available_reg_4;
  input [0:0]wrap_buffer_available_reg_5;
  input [0:0]wrap_buffer_available_reg_6;
  input [0:0]wrap_buffer_available_reg_7;

  wire [2:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]SR;
  wire [2:0]\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[13] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ;
  wire \USE_REGISTER.M_AXI_WLAST_q_i_1_n_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_1 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_2 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_3 ;
  wire \USE_RTL_CURR_WORD.current_word_q_reg[1]_0 ;
  wire [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 ;
  wire \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0 ;
  wire \USE_RTL_LENGTH.first_mi_word_q_reg_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[0]_i_1_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[2]_i_1_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[3]_i_1_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[3]_i_2_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[4]_i_1_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[4]_i_2_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[5]_i_1_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[6]_i_1_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[7]_i_1_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0 ;
  wire [7:2]\USE_RTL_LENGTH.length_counter_q_reg ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[0]_0 ;
  wire [1:0]\USE_RTL_LENGTH.length_counter_q_reg[1]_0 ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[1]_1 ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[7]_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_4_n_0 ;
  wire [7:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire [2:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[10]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[11]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[12]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[13]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[14]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_2_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_4_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[8]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[9]_i_1_n_0 ;
  wire [7:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[16]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[17]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[18]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[19]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[20]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[21]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[22]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_2_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_4_n_0 ;
  wire [7:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[24]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[25]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[26]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[27]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[28]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[29]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[30]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_2_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_4_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ;
  wire [7:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[32]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[33]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[34]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[35]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[36]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[37]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[38]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_2_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_4_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[4]_0 ;
  wire [7:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[40]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[41]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[42]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[43]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[44]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[45]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[46]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_2_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_4_n_0 ;
  wire [7:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[48]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[49]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[50]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[51]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[52]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[53]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[54]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_2_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_4_n_0 ;
  wire [7:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[56]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[57]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[58]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[59]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[60]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[61]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[62]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_3_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ;
  wire [7:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire first_mi_word_q;
  wire first_word_q;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire out;
  wire p_0_out;
  wire p_11_out;
  wire p_122_out__2;
  wire p_12_out;
  wire p_14_out;
  wire p_151_out__2;
  wire p_15_out;
  wire p_17_out18_out;
  wire p_180_out__2;
  wire p_19_out;
  wire p_1_in;
  wire [7:0]p_1_in__0;
  wire p_1_out;
  wire p_209_out__2;
  wire p_22_out;
  wire p_23_out;
  wire p_240_in;
  wire p_245_out__2;
  wire p_251_in;
  wire p_25_out26_out;
  wire p_27_out;
  wire p_31_out__2;
  wire p_3_out4_out;
  wire p_5_out;
  wire p_61_out__2;
  wire p_8_out;
  wire p_91_out__2;
  wire p_9_out;
  wire pop_mi_data__0;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire wr_cmd_valid;
  wire wrap_buffer_available;
  wire [0:0]wrap_buffer_available_reg_0;
  wire [0:0]wrap_buffer_available_reg_1;
  wire [0:0]wrap_buffer_available_reg_2;
  wire [0:0]wrap_buffer_available_reg_3;
  wire [0:0]wrap_buffer_available_reg_4;
  wire [0:0]wrap_buffer_available_reg_5;
  wire [0:0]wrap_buffer_available_reg_6;
  wire [0:0]wrap_buffer_available_reg_7;
  wire wstrb_wrap_buffer_1;
  wire wstrb_wrap_buffer_2;
  wire wstrb_wrap_buffer_3;
  wire wstrb_wrap_buffer_4;
  wire wstrb_wrap_buffer_5;
  wire wstrb_wrap_buffer_6;
  wire wstrb_wrap_buffer_7;

  LUT6 #(
    .INIT(64'hB0000000B0B00000)) 
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_3 
       (.I0(m_axi_wready),
        .I1(m_axi_wvalid),
        .I2(s_axi_wvalid),
        .I3(wrap_buffer_available),
        .I4(wr_cmd_valid),
        .I5(Q[4]),
        .O(\USE_RTL_LENGTH.length_counter_q_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \USE_REGISTER.M_AXI_WLAST_q_i_1 
       (.I0(s_axi_wlast),
        .I1(m_axi_wready),
        .I2(m_axi_wvalid),
        .I3(m_axi_wlast),
        .O(\USE_REGISTER.M_AXI_WLAST_q_i_1_n_0 ));
  FDRE \USE_REGISTER.M_AXI_WLAST_q_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\USE_REGISTER.M_AXI_WLAST_q_i_1_n_0 ),
        .Q(m_axi_wlast),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE0E)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_11 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [4]),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg [3]),
        .I2(first_mi_word_q),
        .I3(Q[3]),
        .O(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ));
  LUT6 #(
    .INIT(64'hFFFFCFCFFFFACFCA)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_12 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [5]),
        .I1(Q[1]),
        .I2(first_mi_word_q),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 [1]),
        .I4(Q[0]),
        .I5(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 [0]),
        .O(\USE_REGISTER.M_AXI_WVALID_q_reg_1 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_4 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [7]),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg [6]),
        .I2(first_mi_word_q),
        .O(\USE_REGISTER.M_AXI_WVALID_q_reg_3 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_9 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .I1(first_mi_word_q),
        .I2(Q[2]),
        .I3(Q[5]),
        .O(\USE_REGISTER.M_AXI_WVALID_q_reg_2 ));
  FDRE \USE_REGISTER.M_AXI_WVALID_q_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .Q(m_axi_wvalid),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \USE_RTL_CURR_WORD.current_word_q_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[13] [0]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 [0]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \USE_RTL_CURR_WORD.current_word_q_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[13] [1]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 [1]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \USE_RTL_CURR_WORD.current_word_q_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[13] [2]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 [2]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDSE \USE_RTL_CURR_WORD.first_word_q_reg 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wlast),
        .Q(first_word_q),
        .S(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \USE_RTL_CURR_WORD.pre_next_word_q[2]_i_3 
       (.I0(first_word_q),
        .I1(Q[6]),
        .O(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0 ));
  FDRE \USE_RTL_CURR_WORD.pre_next_word_q_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 [0]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \USE_RTL_CURR_WORD.pre_next_word_q_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 [1]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \USE_RTL_CURR_WORD.pre_next_word_q_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 [2]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDSE \USE_RTL_LENGTH.first_mi_word_q_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.first_mi_word_q_reg_0 ),
        .Q(first_mi_word_q),
        .S(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  LUT4 #(
    .INIT(16'h2F70)) 
    \USE_RTL_LENGTH.length_counter_q[0]_i_1 
       (.I0(first_mi_word_q),
        .I1(Q[0]),
        .I2(p_251_in),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 [0]),
        .O(\USE_RTL_LENGTH.length_counter_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE22EA6A6)) 
    \USE_RTL_LENGTH.length_counter_q[2]_i_1 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .I1(p_251_in),
        .I2(\USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(first_mi_word_q),
        .O(\USE_RTL_LENGTH.length_counter_q[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \USE_RTL_LENGTH.length_counter_q[2]_i_2 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 [0]),
        .I1(Q[0]),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 [1]),
        .I3(first_mi_word_q),
        .I4(Q[1]),
        .O(\USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \USE_RTL_LENGTH.length_counter_q[3]_i_1 
       (.I0(p_251_in),
        .I1(\USE_RTL_LENGTH.length_counter_q[3]_i_2_n_0 ),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [3]),
        .I3(first_mi_word_q),
        .I4(Q[3]),
        .O(\USE_RTL_LENGTH.length_counter_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFE2)) 
    \USE_RTL_LENGTH.length_counter_q[3]_i_2 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .I1(first_mi_word_q),
        .I2(Q[2]),
        .I3(\USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0 ),
        .O(\USE_RTL_LENGTH.length_counter_q[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h72D2)) 
    \USE_RTL_LENGTH.length_counter_q[4]_i_1 
       (.I0(p_251_in),
        .I1(\USE_RTL_LENGTH.length_counter_q[4]_i_2_n_0 ),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [4]),
        .I3(first_mi_word_q),
        .O(\USE_RTL_LENGTH.length_counter_q[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFAEEEEFFFA)) 
    \USE_RTL_LENGTH.length_counter_q[4]_i_2 
       (.I0(\USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg [3]),
        .I4(first_mi_word_q),
        .I5(Q[3]),
        .O(\USE_RTL_LENGTH.length_counter_q[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2DAA)) 
    \USE_RTL_LENGTH.length_counter_q[5]_i_1 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [5]),
        .I1(first_mi_word_q),
        .I2(\USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0 ),
        .I3(p_251_in),
        .O(\USE_RTL_LENGTH.length_counter_q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7272F0D2)) 
    \USE_RTL_LENGTH.length_counter_q[6]_i_1 
       (.I0(p_251_in),
        .I1(\USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0 ),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [6]),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg [5]),
        .I4(first_mi_word_q),
        .O(\USE_RTL_LENGTH.length_counter_q[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h70F870F870F870DA)) 
    \USE_RTL_LENGTH.length_counter_q[7]_i_1 
       (.I0(p_251_in),
        .I1(first_mi_word_q),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [7]),
        .I3(\USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0 ),
        .I4(\USE_RTL_LENGTH.length_counter_q_reg [5]),
        .I5(\USE_RTL_LENGTH.length_counter_q_reg [6]),
        .O(\USE_RTL_LENGTH.length_counter_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \USE_RTL_LENGTH.length_counter_q[7]_i_2 
       (.I0(first_mi_word_q),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg [4]),
        .I2(\USE_RTL_LENGTH.length_counter_q[4]_i_2_n_0 ),
        .O(\USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0 ));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[0]_i_1_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 [0]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q_reg[0]_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 [1]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[2]_i_1_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[3]_i_1_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [3]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[4]_i_1_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [4]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[5]_i_1_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [5]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[6]_i_1_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [6]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[7]_i_1_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [7]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_4_n_0 ),
        .I3(p_245_out__2),
        .O(p_1_in__0[0]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_4_n_0 ),
        .I3(p_245_out__2),
        .O(p_1_in__0[1]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[2]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_4_n_0 ),
        .I3(p_245_out__2),
        .O(p_1_in__0[2]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[3]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_4_n_0 ),
        .I3(p_245_out__2),
        .O(p_1_in__0[3]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[4]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_4_n_0 ),
        .I3(p_245_out__2),
        .O(p_1_in__0[4]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[5]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_4_n_0 ),
        .I3(p_245_out__2),
        .O(p_1_in__0[5]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[6]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_4_n_0 ),
        .I3(p_245_out__2),
        .O(p_1_in__0[6]));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1 
       (.I0(p_245_out__2),
        .I1(m_axi_wready),
        .I2(m_axi_wvalid),
        .I3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_4_n_0 ),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_2 
       (.I0(s_axi_wdata[7]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_4_n_0 ),
        .I3(p_245_out__2),
        .O(p_1_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_4 
       (.I0(p_240_in),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_4_n_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[0] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in__0[0]),
        .Q(m_axi_wdata[0]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[1] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in__0[1]),
        .Q(m_axi_wdata[1]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[2] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(m_axi_wdata[2]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[3] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(m_axi_wdata[3]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[4] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(m_axi_wdata[4]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[5] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(m_axi_wdata[5]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[6] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(m_axi_wdata[6]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[7] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(m_axi_wdata[7]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C888C888C88)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[0]_i_1 
       (.I0(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_4_n_0 ),
        .I1(out),
        .I2(pop_mi_data__0),
        .I3(m_axi_wstrb[0]),
        .I4(s_axi_wstrb[0]),
        .I5(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ),
        .O(p_27_out));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_27_out),
        .Q(m_axi_wstrb[0]),
        .R(1'b0));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_0),
        .D(s_axi_wdata[0]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_0),
        .D(s_axi_wdata[1]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_0),
        .D(s_axi_wdata[2]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_0),
        .D(s_axi_wdata[3]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_0),
        .D(s_axi_wdata[4]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_0),
        .D(s_axi_wdata[5]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_0),
        .D(s_axi_wdata[6]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_0),
        .D(s_axi_wdata[7]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_25_out26_out),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[10]_i_1 
       (.I0(s_axi_wdata[10]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_4_n_0 ),
        .I3(p_209_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[11]_i_1 
       (.I0(s_axi_wdata[11]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_4_n_0 ),
        .I3(p_209_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[12]_i_1 
       (.I0(s_axi_wdata[12]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_4_n_0 ),
        .I3(p_209_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[13]_i_1 
       (.I0(s_axi_wdata[13]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_4_n_0 ),
        .I3(p_209_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[14]_i_1 
       (.I0(s_axi_wdata[14]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_4_n_0 ),
        .I3(p_209_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1 
       (.I0(p_209_out__2),
        .I1(m_axi_wready),
        .I2(m_axi_wvalid),
        .I3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_4_n_0 ),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_2 
       (.I0(s_axi_wdata[15]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_4_n_0 ),
        .I3(p_209_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_4 
       (.I0(p_240_in),
        .I1(wstrb_wrap_buffer_1),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[8]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_4_n_0 ),
        .I3(p_209_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[9]_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_4_n_0 ),
        .I3(p_209_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[9]_i_1_n_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[10] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[10]_i_1_n_0 ),
        .Q(m_axi_wdata[10]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[11] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[11]_i_1_n_0 ),
        .Q(m_axi_wdata[11]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[12] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[12]_i_1_n_0 ),
        .Q(m_axi_wdata[12]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[13] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[13]_i_1_n_0 ),
        .Q(m_axi_wdata[13]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[14] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[14]_i_1_n_0 ),
        .Q(m_axi_wdata[14]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[15] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_2_n_0 ),
        .Q(m_axi_wdata[15]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[8] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[8]_i_1_n_0 ),
        .Q(m_axi_wdata[8]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[9] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[9]_i_1_n_0 ),
        .Q(m_axi_wdata[9]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C888C888C88)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[1]_i_1 
       (.I0(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_4_n_0 ),
        .I1(out),
        .I2(pop_mi_data__0),
        .I3(m_axi_wstrb[1]),
        .I4(s_axi_wstrb[1]),
        .I5(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ),
        .O(p_23_out));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_23_out),
        .Q(m_axi_wstrb[1]),
        .R(1'b0));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_1),
        .D(s_axi_wdata[10]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_1),
        .D(s_axi_wdata[11]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_1),
        .D(s_axi_wdata[12]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_1),
        .D(s_axi_wdata[13]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_1),
        .D(s_axi_wdata[14]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_1),
        .D(s_axi_wdata[15]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_1),
        .D(s_axi_wdata[8]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_1),
        .D(s_axi_wdata[9]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_22_out),
        .Q(wstrb_wrap_buffer_1),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[16]_i_1 
       (.I0(s_axi_wdata[16]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_4_n_0 ),
        .I3(p_180_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[17]_i_1 
       (.I0(s_axi_wdata[17]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_4_n_0 ),
        .I3(p_180_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[18]_i_1 
       (.I0(s_axi_wdata[18]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_4_n_0 ),
        .I3(p_180_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[19]_i_1 
       (.I0(s_axi_wdata[19]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_4_n_0 ),
        .I3(p_180_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[20]_i_1 
       (.I0(s_axi_wdata[20]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_4_n_0 ),
        .I3(p_180_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[21]_i_1 
       (.I0(s_axi_wdata[21]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_4_n_0 ),
        .I3(p_180_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[22]_i_1 
       (.I0(s_axi_wdata[22]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_4_n_0 ),
        .I3(p_180_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1 
       (.I0(p_180_out__2),
        .I1(m_axi_wready),
        .I2(m_axi_wvalid),
        .I3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_4_n_0 ),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_2 
       (.I0(s_axi_wdata[23]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_4_n_0 ),
        .I3(p_180_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_4 
       (.I0(p_240_in),
        .I1(wstrb_wrap_buffer_2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_4_n_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[16] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[16]_i_1_n_0 ),
        .Q(m_axi_wdata[16]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[17] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[17]_i_1_n_0 ),
        .Q(m_axi_wdata[17]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[18] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[18]_i_1_n_0 ),
        .Q(m_axi_wdata[18]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[19] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[19]_i_1_n_0 ),
        .Q(m_axi_wdata[19]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[20] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[20]_i_1_n_0 ),
        .Q(m_axi_wdata[20]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[21] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[21]_i_1_n_0 ),
        .Q(m_axi_wdata[21]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[22] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[22]_i_1_n_0 ),
        .Q(m_axi_wdata[22]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[23] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_2_n_0 ),
        .Q(m_axi_wdata[23]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C888C888C88)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[2]_i_1 
       (.I0(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_4_n_0 ),
        .I1(out),
        .I2(pop_mi_data__0),
        .I3(m_axi_wstrb[2]),
        .I4(s_axi_wstrb[2]),
        .I5(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ),
        .O(p_19_out));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_19_out),
        .Q(m_axi_wstrb[2]),
        .R(1'b0));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[16] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_2),
        .D(s_axi_wdata[16]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[17] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_2),
        .D(s_axi_wdata[17]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[18] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_2),
        .D(s_axi_wdata[18]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[19] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_2),
        .D(s_axi_wdata[19]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[20] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_2),
        .D(s_axi_wdata[20]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[21] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_2),
        .D(s_axi_wdata[21]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[22] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_2),
        .D(s_axi_wdata[22]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[23] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_2),
        .D(s_axi_wdata[23]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_17_out18_out),
        .Q(wstrb_wrap_buffer_2),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[24]_i_1 
       (.I0(s_axi_wdata[24]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_4_n_0 ),
        .I3(p_151_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[25]_i_1 
       (.I0(s_axi_wdata[25]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_4_n_0 ),
        .I3(p_151_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[26]_i_1 
       (.I0(s_axi_wdata[26]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_4_n_0 ),
        .I3(p_151_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[27]_i_1 
       (.I0(s_axi_wdata[27]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_4_n_0 ),
        .I3(p_151_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[28]_i_1 
       (.I0(s_axi_wdata[28]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_4_n_0 ),
        .I3(p_151_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[29]_i_1 
       (.I0(s_axi_wdata[29]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_4_n_0 ),
        .I3(p_151_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[30]_i_1 
       (.I0(s_axi_wdata[30]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_4_n_0 ),
        .I3(p_151_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1 
       (.I0(p_151_out__2),
        .I1(m_axi_wready),
        .I2(m_axi_wvalid),
        .I3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_4_n_0 ),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_2 
       (.I0(s_axi_wdata[31]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_4_n_0 ),
        .I3(p_151_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_4 
       (.I0(p_240_in),
        .I1(wstrb_wrap_buffer_3),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_4_n_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[24] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[24]_i_1_n_0 ),
        .Q(m_axi_wdata[24]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[25] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[25]_i_1_n_0 ),
        .Q(m_axi_wdata[25]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[26] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[26]_i_1_n_0 ),
        .Q(m_axi_wdata[26]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[27] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[27]_i_1_n_0 ),
        .Q(m_axi_wdata[27]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[28] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[28]_i_1_n_0 ),
        .Q(m_axi_wdata[28]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[29] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[29]_i_1_n_0 ),
        .Q(m_axi_wdata[29]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[30] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[30]_i_1_n_0 ),
        .Q(m_axi_wdata[30]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[31] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_2_n_0 ),
        .Q(m_axi_wdata[31]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C888C888C88)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_1 
       (.I0(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_4_n_0 ),
        .I1(out),
        .I2(pop_mi_data__0),
        .I3(m_axi_wstrb[3]),
        .I4(s_axi_wstrb[3]),
        .I5(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ),
        .O(p_15_out));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2 
       (.I0(out),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[4]_0 ),
        .I2(p_1_in),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_15_out),
        .Q(m_axi_wstrb[3]),
        .R(1'b0));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[24] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_3),
        .D(s_axi_wdata[24]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[25] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_3),
        .D(s_axi_wdata[25]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[26] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_3),
        .D(s_axi_wdata[26]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[27] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_3),
        .D(s_axi_wdata[27]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[28] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_3),
        .D(s_axi_wdata[28]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[29] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_3),
        .D(s_axi_wdata[29]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[30] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_3),
        .D(s_axi_wdata[30]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[31] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_3),
        .D(s_axi_wdata[31]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_14_out),
        .Q(wstrb_wrap_buffer_3),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[32]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_4_n_0 ),
        .I3(p_122_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[32]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[33]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_4_n_0 ),
        .I3(p_122_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[33]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[34]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_4_n_0 ),
        .I3(p_122_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[34]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[35]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_4_n_0 ),
        .I3(p_122_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[35]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[36]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_4_n_0 ),
        .I3(p_122_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[36]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[37]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_4_n_0 ),
        .I3(p_122_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[37]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[38]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_4_n_0 ),
        .I3(p_122_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[38]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1 
       (.I0(p_122_out__2),
        .I1(m_axi_wready),
        .I2(m_axi_wvalid),
        .I3(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_4_n_0 ),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_2 
       (.I0(s_axi_wdata[7]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_4_n_0 ),
        .I3(p_122_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_4 
       (.I0(p_240_in),
        .I1(wstrb_wrap_buffer_4),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_4_n_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[32] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[32]_i_1_n_0 ),
        .Q(m_axi_wdata[32]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[33] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[33]_i_1_n_0 ),
        .Q(m_axi_wdata[33]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[34] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[34]_i_1_n_0 ),
        .Q(m_axi_wdata[34]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[35] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[35]_i_1_n_0 ),
        .Q(m_axi_wdata[35]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[36] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[36]_i_1_n_0 ),
        .Q(m_axi_wdata[36]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[37] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[37]_i_1_n_0 ),
        .Q(m_axi_wdata[37]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[38] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[38]_i_1_n_0 ),
        .Q(m_axi_wdata[38]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[39] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_2_n_0 ),
        .Q(m_axi_wdata[39]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C888C888C88)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[4]_i_1 
       (.I0(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_4_n_0 ),
        .I1(out),
        .I2(pop_mi_data__0),
        .I3(m_axi_wstrb[4]),
        .I4(s_axi_wstrb[0]),
        .I5(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ),
        .O(p_12_out));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_12_out),
        .Q(m_axi_wstrb[4]),
        .R(1'b0));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[32] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_4),
        .D(s_axi_wdata[0]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[33] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_4),
        .D(s_axi_wdata[1]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[34] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_4),
        .D(s_axi_wdata[2]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[35] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_4),
        .D(s_axi_wdata[3]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[36] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_4),
        .D(s_axi_wdata[4]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[37] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_4),
        .D(s_axi_wdata[5]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[38] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_4),
        .D(s_axi_wdata[6]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[39] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_4),
        .D(s_axi_wdata[7]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_11_out),
        .Q(wstrb_wrap_buffer_4),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[40]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_4_n_0 ),
        .I3(p_91_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[40]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[41]_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_4_n_0 ),
        .I3(p_91_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[41]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[42]_i_1 
       (.I0(s_axi_wdata[10]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_4_n_0 ),
        .I3(p_91_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[42]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[43]_i_1 
       (.I0(s_axi_wdata[11]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_4_n_0 ),
        .I3(p_91_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[43]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[44]_i_1 
       (.I0(s_axi_wdata[12]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_4_n_0 ),
        .I3(p_91_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[44]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[45]_i_1 
       (.I0(s_axi_wdata[13]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_4_n_0 ),
        .I3(p_91_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[45]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[46]_i_1 
       (.I0(s_axi_wdata[14]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_4_n_0 ),
        .I3(p_91_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[46]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1 
       (.I0(p_91_out__2),
        .I1(m_axi_wready),
        .I2(m_axi_wvalid),
        .I3(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_4_n_0 ),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_2 
       (.I0(s_axi_wdata[15]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_4_n_0 ),
        .I3(p_91_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_4 
       (.I0(p_240_in),
        .I1(wstrb_wrap_buffer_5),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_4_n_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[40] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[40]_i_1_n_0 ),
        .Q(m_axi_wdata[40]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[41] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[41]_i_1_n_0 ),
        .Q(m_axi_wdata[41]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[42] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[42]_i_1_n_0 ),
        .Q(m_axi_wdata[42]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[43] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[43]_i_1_n_0 ),
        .Q(m_axi_wdata[43]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[44] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[44]_i_1_n_0 ),
        .Q(m_axi_wdata[44]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[45] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[45]_i_1_n_0 ),
        .Q(m_axi_wdata[45]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[46] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[46]_i_1_n_0 ),
        .Q(m_axi_wdata[46]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[47] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_2_n_0 ),
        .Q(m_axi_wdata[47]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C888C888C88)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[5]_i_1 
       (.I0(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_4_n_0 ),
        .I1(out),
        .I2(pop_mi_data__0),
        .I3(m_axi_wstrb[5]),
        .I4(s_axi_wstrb[1]),
        .I5(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ),
        .O(p_9_out));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_9_out),
        .Q(m_axi_wstrb[5]),
        .R(1'b0));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[40] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_5),
        .D(s_axi_wdata[8]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[41] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_5),
        .D(s_axi_wdata[9]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[42] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_5),
        .D(s_axi_wdata[10]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[43] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_5),
        .D(s_axi_wdata[11]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[44] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_5),
        .D(s_axi_wdata[12]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[45] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_5),
        .D(s_axi_wdata[13]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[46] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_5),
        .D(s_axi_wdata[14]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[47] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_5),
        .D(s_axi_wdata[15]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out),
        .Q(wstrb_wrap_buffer_5),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[48]_i_1 
       (.I0(s_axi_wdata[16]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_4_n_0 ),
        .I3(p_61_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[48]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[49]_i_1 
       (.I0(s_axi_wdata[17]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_4_n_0 ),
        .I3(p_61_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[49]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[50]_i_1 
       (.I0(s_axi_wdata[18]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_4_n_0 ),
        .I3(p_61_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[50]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[51]_i_1 
       (.I0(s_axi_wdata[19]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_4_n_0 ),
        .I3(p_61_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[51]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[52]_i_1 
       (.I0(s_axi_wdata[20]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_4_n_0 ),
        .I3(p_61_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[52]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[53]_i_1 
       (.I0(s_axi_wdata[21]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_4_n_0 ),
        .I3(p_61_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[53]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[54]_i_1 
       (.I0(s_axi_wdata[22]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_4_n_0 ),
        .I3(p_61_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[54]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1 
       (.I0(p_61_out__2),
        .I1(m_axi_wready),
        .I2(m_axi_wvalid),
        .I3(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_4_n_0 ),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_2 
       (.I0(s_axi_wdata[23]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_4_n_0 ),
        .I3(p_61_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_4 
       (.I0(p_240_in),
        .I1(wstrb_wrap_buffer_6),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_4_n_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[48] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[48]_i_1_n_0 ),
        .Q(m_axi_wdata[48]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[49] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[49]_i_1_n_0 ),
        .Q(m_axi_wdata[49]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[50] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[50]_i_1_n_0 ),
        .Q(m_axi_wdata[50]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[51] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[51]_i_1_n_0 ),
        .Q(m_axi_wdata[51]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[52] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[52]_i_1_n_0 ),
        .Q(m_axi_wdata[52]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[53] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[53]_i_1_n_0 ),
        .Q(m_axi_wdata[53]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[54] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[54]_i_1_n_0 ),
        .Q(m_axi_wdata[54]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[55] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_2_n_0 ),
        .Q(m_axi_wdata[55]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C888C888C88)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[6]_i_1 
       (.I0(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_4_n_0 ),
        .I1(out),
        .I2(pop_mi_data__0),
        .I3(m_axi_wstrb[6]),
        .I4(s_axi_wstrb[2]),
        .I5(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ),
        .O(p_5_out));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_5_out),
        .Q(m_axi_wstrb[6]),
        .R(1'b0));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[48] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_6),
        .D(s_axi_wdata[16]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[49] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_6),
        .D(s_axi_wdata[17]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[50] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_6),
        .D(s_axi_wdata[18]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[51] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_6),
        .D(s_axi_wdata[19]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[52] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_6),
        .D(s_axi_wdata[20]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[53] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_6),
        .D(s_axi_wdata[21]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[54] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_6),
        .D(s_axi_wdata[22]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[55] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_6),
        .D(s_axi_wdata[23]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out4_out),
        .Q(wstrb_wrap_buffer_6),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[56]_i_1 
       (.I0(s_axi_wdata[24]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5_n_0 ),
        .I3(p_31_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[56]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[57]_i_1 
       (.I0(s_axi_wdata[25]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5_n_0 ),
        .I3(p_31_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[57]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[58]_i_1 
       (.I0(s_axi_wdata[26]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5_n_0 ),
        .I3(p_31_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[58]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[59]_i_1 
       (.I0(s_axi_wdata[27]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5_n_0 ),
        .I3(p_31_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[59]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[60]_i_1 
       (.I0(s_axi_wdata[28]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5_n_0 ),
        .I3(p_31_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[60]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[61]_i_1 
       (.I0(s_axi_wdata[29]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5_n_0 ),
        .I3(p_31_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[61]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[62]_i_1 
       (.I0(s_axi_wdata[30]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5_n_0 ),
        .I3(p_31_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[62]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_1 
       (.I0(out),
        .O(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2 
       (.I0(p_31_out__2),
        .I1(m_axi_wready),
        .I2(m_axi_wvalid),
        .I3(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5_n_0 ),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_3 
       (.I0(s_axi_wdata[31]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5_n_0 ),
        .I3(p_31_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5 
       (.I0(p_240_in),
        .I1(wstrb_wrap_buffer_7),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0000000D00000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_6 
       (.I0(m_axi_wvalid),
        .I1(m_axi_wready),
        .I2(s_axi_wvalid),
        .I3(Q[4]),
        .I4(wr_cmd_valid),
        .I5(wrap_buffer_available),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h00000000888A0000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_7 
       (.I0(E),
        .I1(first_mi_word_q),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [6]),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg [7]),
        .I4(wrap_buffer_available),
        .I5(\USE_RTL_CURR_WORD.current_word_q_reg[1]_0 ),
        .O(p_240_in));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[56]_i_1_n_0 ),
        .Q(m_axi_wdata[56]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[57] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[57]_i_1_n_0 ),
        .Q(m_axi_wdata[57]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[58] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[58]_i_1_n_0 ),
        .Q(m_axi_wdata[58]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[59] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[59]_i_1_n_0 ),
        .Q(m_axi_wdata[59]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[60] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[60]_i_1_n_0 ),
        .Q(m_axi_wdata[60]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[61] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[61]_i_1_n_0 ),
        .Q(m_axi_wdata[61]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[62] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[62]_i_1_n_0 ),
        .Q(m_axi_wdata[62]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[63] 
       (.C(s_axi_aclk),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_3_n_0 ),
        .Q(m_axi_wdata[63]),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C888C888C88)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_1 
       (.I0(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5_n_0 ),
        .I1(out),
        .I2(pop_mi_data__0),
        .I3(m_axi_wstrb[7]),
        .I4(s_axi_wstrb[3]),
        .I5(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ),
        .O(p_1_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2 
       (.I0(m_axi_wready),
        .I1(m_axi_wvalid),
        .O(pop_mi_data__0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3 
       (.I0(out),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[4]_0 ),
        .I2(p_1_in),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(m_axi_wstrb[7]),
        .R(1'b0));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[56] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_7),
        .D(s_axi_wdata[24]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[57] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_7),
        .D(s_axi_wdata[25]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[58] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_7),
        .D(s_axi_wdata[26]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[59] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_7),
        .D(s_axi_wdata[27]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[60] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_7),
        .D(s_axi_wdata[28]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[61] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_7),
        .D(s_axi_wdata[29]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[62] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_7),
        .D(s_axi_wdata[30]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[63] 
       (.C(s_axi_aclk),
        .CE(wrap_buffer_available_reg_7),
        .D(s_axi_wdata[31]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out),
        .Q(wstrb_wrap_buffer_7),
        .R(1'b0));
  FDRE wrap_buffer_available_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ),
        .Q(wrap_buffer_available),
        .R(\USE_RTL_LENGTH.length_counter_q_reg[7]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_11_axi_register_slice" *) 
module system_auto_us_0_axi_register_slice_v2_1_11_axi_register_slice
   (sr_awvalid,
    s_axi_awready,
    in,
    m_axi_awaddr,
    m_axi_awburst,
    Q,
    m_axi_awsize,
    s_axi_aclk,
    \USE_RTL_VALID_WRITE.buffer_Full_q_reg ,
    s_axi_awvalid,
    cmd_push_block_reg,
    m_axi_awready,
    out,
    SR,
    D);
  output sr_awvalid;
  output s_axi_awready;
  output [23:0]in;
  output [31:0]m_axi_awaddr;
  output [1:0]m_axi_awburst;
  output [12:0]Q;
  output [2:0]m_axi_awsize;
  input s_axi_aclk;
  input \USE_RTL_VALID_WRITE.buffer_Full_q_reg ;
  input s_axi_awvalid;
  input cmd_push_block_reg;
  input m_axi_awready;
  input out;
  input [0:0]SR;
  input [53:0]D;

  wire [53:0]D;
  wire [12:0]Q;
  wire [0:0]SR;
  wire \USE_RTL_VALID_WRITE.buffer_Full_q_reg ;
  wire cmd_push_block_reg;
  wire [23:0]in;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire out;
  wire s_axi_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire sr_awvalid;

  system_auto_us_0_axi_register_slice_v2_1_11_axic_register_slice aw_pipe
       (.D(D),
        .Q(Q),
        .SR(SR),
        .\USE_RTL_VALID_WRITE.buffer_Full_q_reg (\USE_RTL_VALID_WRITE.buffer_Full_q_reg ),
        .cmd_push_block_reg(cmd_push_block_reg),
        .in(in),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .sr_awvalid(sr_awvalid));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_11_axic_register_slice" *) 
module system_auto_us_0_axi_register_slice_v2_1_11_axic_register_slice
   (sr_awvalid,
    s_axi_awready,
    in,
    m_axi_awaddr,
    m_axi_awburst,
    Q,
    m_axi_awsize,
    s_axi_aclk,
    \USE_RTL_VALID_WRITE.buffer_Full_q_reg ,
    s_axi_awvalid,
    cmd_push_block_reg,
    m_axi_awready,
    out,
    SR,
    D);
  output sr_awvalid;
  output s_axi_awready;
  output [23:0]in;
  output [31:0]m_axi_awaddr;
  output [1:0]m_axi_awburst;
  output [12:0]Q;
  output [2:0]m_axi_awsize;
  input s_axi_aclk;
  input \USE_RTL_VALID_WRITE.buffer_Full_q_reg ;
  input s_axi_awvalid;
  input cmd_push_block_reg;
  input m_axi_awready;
  input out;
  input [0:0]SR;
  input [53:0]D;

  wire [53:0]D;
  wire [12:0]Q;
  wire [0:0]SR;
  wire \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_2_n_0 ;
  wire \USE_RTL_VALID_WRITE.buffer_Full_q_reg ;
  wire \aresetn_d_reg_n_0_[0] ;
  wire \aresetn_d_reg_n_0_[1] ;
  wire cmd_push_block_reg;
  wire [23:0]in;
  wire [31:0]m_axi_awaddr;
  wire \m_axi_awaddr[1]_INST_0_i_1_n_0 ;
  wire \m_axi_awaddr[2]_INST_0_i_2_n_0 ;
  wire \m_axi_awaddr[2]_INST_0_i_4_n_0 ;
  wire \m_axi_awaddr[3]_INST_0_i_1_n_0 ;
  wire \m_axi_awaddr[4]_INST_0_i_1_n_0 ;
  wire \m_axi_awaddr[4]_INST_0_i_2_n_0 ;
  wire \m_axi_awaddr[5]_INST_0_i_1_n_0 ;
  wire \m_axi_awaddr[5]_INST_0_i_3_n_0 ;
  wire \m_axi_awaddr[5]_INST_0_i_4_n_0 ;
  wire \m_axi_awaddr[5]_INST_0_i_5_n_0 ;
  wire [1:0]m_axi_awburst;
  wire \m_axi_awlen[0]_INST_0_i_1_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_2_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_3_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_4_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_10_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_1_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_2_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_3_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_4_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_5_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_6_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_7_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_8_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_9_n_0 ;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire \m_payload_i[31]_i_1_n_0 ;
  wire \m_payload_i_reg_n_0_[3] ;
  wire \m_payload_i_reg_n_0_[4] ;
  wire \m_payload_i_reg_n_0_[5] ;
  wire m_valid_i_i_1_n_0;
  wire out;
  wire s_axi_aclk;
  wire [3:0]s_axi_awlen_ii;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_ready_i_i_1_n_0;
  wire [2:0]sr_awaddr;
  wire [1:0]sr_awburst;
  wire [2:0]sr_awsize;
  wire sr_awvalid;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_i_1 
       (.I0(sr_awsize[2]),
        .I1(sr_awsize[1]),
        .I2(sr_awsize[0]),
        .O(in[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFEAE)) 
    \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_i_1 
       (.I0(\m_axi_awaddr[2]_INST_0_i_2_n_0 ),
        .I1(s_axi_awlen_ii[1]),
        .I2(sr_awsize[0]),
        .I3(s_axi_awlen_ii[0]),
        .I4(sr_awsize[1]),
        .I5(sr_awsize[2]),
        .O(in[8]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \USE_RTL_FIFO.data_srl_reg[31][16]_srl32_i_1 
       (.I0(sr_awaddr[2]),
        .I1(in[9]),
        .O(in[10]));
  LUT6 #(
    .INIT(64'h1FE0000000000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_1 
       (.I0(sr_awburst[1]),
        .I1(sr_awburst[0]),
        .I2(s_axi_awlen_ii[0]),
        .I3(sr_awaddr[0]),
        .I4(in[7]),
        .I5(in[4]),
        .O(in[11]));
  LUT6 #(
    .INIT(64'h00000000A95556AA)) 
    \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_1 
       (.I0(sr_awaddr[1]),
        .I1(sr_awburst[0]),
        .I2(sr_awburst[1]),
        .I3(\m_axi_awlen[0]_INST_0_i_4_n_0 ),
        .I4(\m_axi_awlen[3]_INST_0_i_6_n_0 ),
        .I5(\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2_n_0 ),
        .O(in[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0151)) 
    \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2 
       (.I0(\m_axi_awaddr[2]_INST_0_i_2_n_0 ),
        .I1(s_axi_awlen_ii[1]),
        .I2(sr_awsize[0]),
        .I3(s_axi_awlen_ii[0]),
        .I4(sr_awsize[1]),
        .I5(sr_awsize[2]),
        .O(\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8448)) 
    \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_1 
       (.I0(\m_axi_awlen[0]_INST_0_i_3_n_0 ),
        .I1(in[9]),
        .I2(sr_awaddr[2]),
        .I3(\m_axi_awlen[0]_INST_0_i_1_n_0 ),
        .O(in[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_i_1 
       (.I0(sr_awaddr[0]),
        .I1(in[7]),
        .I2(sr_awsize[0]),
        .I3(sr_awsize[1]),
        .I4(sr_awsize[2]),
        .O(in[14]));
  LUT6 #(
    .INIT(64'h5555550100000054)) 
    \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_i_1 
       (.I0(\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2_n_0 ),
        .I1(sr_awaddr[0]),
        .I2(sr_awsize[0]),
        .I3(sr_awsize[1]),
        .I4(sr_awsize[2]),
        .I5(sr_awaddr[1]),
        .O(in[15]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h28822828)) 
    \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_1 
       (.I0(in[9]),
        .I1(sr_awaddr[2]),
        .I2(in[6]),
        .I3(\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2_n_0 ),
        .I4(sr_awaddr[1]),
        .O(in[16]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFFF1)) 
    \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2 
       (.I0(sr_awaddr[0]),
        .I1(sr_awsize[0]),
        .I2(sr_awsize[1]),
        .I3(sr_awsize[2]),
        .O(\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \USE_RTL_FIFO.data_srl_reg[31][23]_srl32_i_1 
       (.I0(in[7]),
        .I1(sr_awaddr[0]),
        .I2(sr_awsize[0]),
        .I3(sr_awsize[1]),
        .I4(sr_awsize[2]),
        .O(in[17]));
  LUT6 #(
    .INIT(64'h2222222220222000)) 
    \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_1 
       (.I0(sr_awaddr[1]),
        .I1(\USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_2_n_0 ),
        .I2(s_axi_awlen_ii[0]),
        .I3(sr_awsize[0]),
        .I4(s_axi_awlen_ii[1]),
        .I5(\m_axi_awaddr[2]_INST_0_i_2_n_0 ),
        .O(in[18]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_2 
       (.I0(sr_awsize[2]),
        .I1(sr_awsize[1]),
        .O(\USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \USE_RTL_FIFO.data_srl_reg[31][25]_srl32_i_1 
       (.I0(in[9]),
        .I1(sr_awaddr[2]),
        .O(in[19]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \USE_RTL_FIFO.data_srl_reg[31][27]_srl32_i_1 
       (.I0(in[22]),
        .I1(\m_axi_awaddr[2]_INST_0_i_2_n_0 ),
        .O(in[21]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_i_1 
       (.I0(sr_awburst[0]),
        .I1(sr_awburst[1]),
        .O(in[23]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_i_1 
       (.I0(sr_awsize[0]),
        .I1(sr_awsize[1]),
        .I2(sr_awsize[2]),
        .O(in[4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_RTL_FIFO.data_srl_reg[31][9]_srl32_i_1 
       (.I0(sr_awsize[0]),
        .I1(sr_awsize[2]),
        .I2(sr_awsize[1]),
        .O(in[5]));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\aresetn_d_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg_n_0_[0] ),
        .Q(\aresetn_d_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h0D00AF00)) 
    \m_axi_awaddr[0]_INST_0 
       (.I0(in[22]),
        .I1(\m_axi_awaddr[2]_INST_0_i_2_n_0 ),
        .I2(in[20]),
        .I3(sr_awaddr[0]),
        .I4(in[7]),
        .O(m_axi_awaddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \m_axi_awaddr[0]_INST_0_i_1 
       (.I0(\m_axi_awaddr[2]_INST_0_i_2_n_0 ),
        .I1(sr_awsize[0]),
        .I2(sr_awsize[1]),
        .I3(sr_awsize[2]),
        .I4(s_axi_awlen_ii[0]),
        .O(in[7]));
  LUT5 #(
    .INIT(32'hAF000D00)) 
    \m_axi_awaddr[1]_INST_0 
       (.I0(in[22]),
        .I1(\m_axi_awaddr[2]_INST_0_i_2_n_0 ),
        .I2(in[20]),
        .I3(sr_awaddr[1]),
        .I4(\m_axi_awaddr[1]_INST_0_i_1_n_0 ),
        .O(m_axi_awaddr[1]));
  LUT6 #(
    .INIT(64'h00000000EFEEEFFF)) 
    \m_axi_awaddr[1]_INST_0_i_1 
       (.I0(sr_awsize[2]),
        .I1(sr_awsize[1]),
        .I2(s_axi_awlen_ii[0]),
        .I3(sr_awsize[0]),
        .I4(s_axi_awlen_ii[1]),
        .I5(\m_axi_awaddr[2]_INST_0_i_2_n_0 ),
        .O(\m_axi_awaddr[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h0D00AF00)) 
    \m_axi_awaddr[2]_INST_0 
       (.I0(in[22]),
        .I1(\m_axi_awaddr[2]_INST_0_i_2_n_0 ),
        .I2(in[20]),
        .I3(sr_awaddr[2]),
        .I4(in[9]),
        .O(m_axi_awaddr[2]));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \m_axi_awaddr[2]_INST_0_i_1 
       (.I0(in[23]),
        .I1(Q[4]),
        .I2(s_axi_awlen_ii[3]),
        .I3(s_axi_awlen_ii[2]),
        .I4(s_axi_awlen_ii[0]),
        .I5(s_axi_awlen_ii[1]),
        .O(in[22]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \m_axi_awaddr[2]_INST_0_i_2 
       (.I0(\m_axi_awaddr[5]_INST_0_i_4_n_0 ),
        .I1(sr_awburst[0]),
        .I2(sr_awburst[1]),
        .I3(s_axi_awlen_ii[3]),
        .O(\m_axi_awaddr[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axi_awaddr[2]_INST_0_i_3 
       (.I0(\m_axi_awaddr[2]_INST_0_i_2_n_0 ),
        .I1(\m_axi_awaddr[2]_INST_0_i_4_n_0 ),
        .O(in[9]));
  LUT6 #(
    .INIT(64'h0300232303002020)) 
    \m_axi_awaddr[2]_INST_0_i_4 
       (.I0(s_axi_awlen_ii[1]),
        .I1(sr_awsize[2]),
        .I2(sr_awsize[0]),
        .I3(s_axi_awlen_ii[0]),
        .I4(sr_awsize[1]),
        .I5(s_axi_awlen_ii[2]),
        .O(\m_axi_awaddr[2]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \m_axi_awaddr[3]_INST_0 
       (.I0(\m_payload_i_reg_n_0_[3] ),
        .I1(sr_awsize[2]),
        .I2(\m_axi_awaddr[3]_INST_0_i_1_n_0 ),
        .I3(in[20]),
        .O(m_axi_awaddr[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_awaddr[3]_INST_0_i_1 
       (.I0(s_axi_awlen_ii[0]),
        .I1(s_axi_awlen_ii[1]),
        .I2(sr_awsize[1]),
        .I3(s_axi_awlen_ii[2]),
        .I4(sr_awsize[0]),
        .I5(s_axi_awlen_ii[3]),
        .O(\m_axi_awaddr[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9AAA)) 
    \m_axi_awaddr[4]_INST_0 
       (.I0(\m_payload_i_reg_n_0_[4] ),
        .I1(\m_axi_awaddr[4]_INST_0_i_1_n_0 ),
        .I2(\m_payload_i_reg_n_0_[3] ),
        .I3(in[20]),
        .O(m_axi_awaddr[4]));
  LUT6 #(
    .INIT(64'hF5F5C3F3F5F5CFFF)) 
    \m_axi_awaddr[4]_INST_0_i_1 
       (.I0(\m_axi_awaddr[4]_INST_0_i_2_n_0 ),
        .I1(sr_awsize[1]),
        .I2(sr_awsize[2]),
        .I3(s_axi_awlen_ii[0]),
        .I4(sr_awsize[0]),
        .I5(s_axi_awlen_ii[2]),
        .O(\m_axi_awaddr[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_awaddr[4]_INST_0_i_2 
       (.I0(s_axi_awlen_ii[1]),
        .I1(sr_awsize[1]),
        .I2(s_axi_awlen_ii[3]),
        .O(\m_axi_awaddr[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \m_axi_awaddr[5]_INST_0 
       (.I0(\m_payload_i_reg_n_0_[5] ),
        .I1(\m_axi_awaddr[5]_INST_0_i_1_n_0 ),
        .I2(\m_payload_i_reg_n_0_[4] ),
        .I3(\m_payload_i_reg_n_0_[3] ),
        .I4(in[20]),
        .O(m_axi_awaddr[5]));
  LUT6 #(
    .INIT(64'hF3F05F5FF3FF5F5F)) 
    \m_axi_awaddr[5]_INST_0_i_1 
       (.I0(\m_axi_awaddr[5]_INST_0_i_3_n_0 ),
        .I1(s_axi_awlen_ii[0]),
        .I2(sr_awsize[1]),
        .I3(sr_awsize[0]),
        .I4(sr_awsize[2]),
        .I5(s_axi_awlen_ii[1]),
        .O(\m_axi_awaddr[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \m_axi_awaddr[5]_INST_0_i_2 
       (.I0(\m_axi_awaddr[5]_INST_0_i_4_n_0 ),
        .I1(s_axi_awlen_ii[3]),
        .I2(\m_axi_awaddr[5]_INST_0_i_5_n_0 ),
        .I3(in[22]),
        .O(in[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_awaddr[5]_INST_0_i_3 
       (.I0(s_axi_awlen_ii[2]),
        .I1(sr_awsize[0]),
        .I2(s_axi_awlen_ii[3]),
        .O(\m_axi_awaddr[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF0EEEEEA00)) 
    \m_axi_awaddr[5]_INST_0_i_4 
       (.I0(s_axi_awlen_ii[1]),
        .I1(s_axi_awlen_ii[0]),
        .I2(sr_awsize[0]),
        .I3(sr_awsize[1]),
        .I4(sr_awsize[2]),
        .I5(s_axi_awlen_ii[2]),
        .O(\m_axi_awaddr[5]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h22222220)) 
    \m_axi_awaddr[5]_INST_0_i_5 
       (.I0(sr_awburst[1]),
        .I1(sr_awburst[0]),
        .I2(sr_awaddr[2]),
        .I3(sr_awaddr[1]),
        .I4(sr_awaddr[0]),
        .O(\m_axi_awaddr[5]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \m_axi_awburst[0]_INST_0 
       (.I0(in[22]),
        .I1(\m_axi_awaddr[2]_INST_0_i_2_n_0 ),
        .I2(sr_awburst[0]),
        .O(m_axi_awburst[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \m_axi_awburst[1]_INST_0 
       (.I0(in[22]),
        .I1(\m_axi_awaddr[2]_INST_0_i_2_n_0 ),
        .I2(sr_awburst[1]),
        .O(m_axi_awburst[1]));
  LUT6 #(
    .INIT(64'hAAAA5666AAAA6A6A)) 
    \m_axi_awlen[0]_INST_0 
       (.I0(\m_axi_awlen[3]_INST_0_i_4_n_0 ),
        .I1(\m_axi_awlen[0]_INST_0_i_1_n_0 ),
        .I2(sr_awaddr[2]),
        .I3(in[9]),
        .I4(\m_axi_awlen[0]_INST_0_i_2_n_0 ),
        .I5(\m_axi_awlen[0]_INST_0_i_3_n_0 ),
        .O(in[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \m_axi_awlen[0]_INST_0_i_1 
       (.I0(\m_axi_awaddr[2]_INST_0_i_4_n_0 ),
        .I1(sr_awburst[1]),
        .I2(sr_awburst[0]),
        .O(\m_axi_awlen[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_axi_awlen[0]_INST_0_i_2 
       (.I0(sr_awburst[1]),
        .I1(in[22]),
        .O(\m_axi_awlen[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3222222220000000)) 
    \m_axi_awlen[0]_INST_0_i_3 
       (.I0(in[18]),
        .I1(in[23]),
        .I2(in[4]),
        .I3(s_axi_awlen_ii[0]),
        .I4(sr_awaddr[0]),
        .I5(\m_axi_awlen[0]_INST_0_i_4_n_0 ),
        .O(\m_axi_awlen[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \m_axi_awlen[0]_INST_0_i_4 
       (.I0(s_axi_awlen_ii[1]),
        .I1(sr_awsize[0]),
        .I2(s_axi_awlen_ii[0]),
        .I3(sr_awsize[1]),
        .I4(sr_awsize[2]),
        .O(\m_axi_awlen[0]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \m_axi_awlen[1]_INST_0 
       (.I0(\m_axi_awlen[3]_INST_0_i_3_n_0 ),
        .I1(\m_axi_awlen[3]_INST_0_i_4_n_0 ),
        .I2(\m_axi_awlen[3]_INST_0_i_2_n_0 ),
        .O(in[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h08F7)) 
    \m_axi_awlen[2]_INST_0 
       (.I0(\m_axi_awlen[3]_INST_0_i_4_n_0 ),
        .I1(\m_axi_awlen[3]_INST_0_i_3_n_0 ),
        .I2(\m_axi_awlen[3]_INST_0_i_2_n_0 ),
        .I3(\m_axi_awlen[3]_INST_0_i_1_n_0 ),
        .O(in[2]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \m_axi_awlen[3]_INST_0 
       (.I0(\m_axi_awlen[3]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awlen[3]_INST_0_i_2_n_0 ),
        .I2(\m_axi_awlen[3]_INST_0_i_3_n_0 ),
        .I3(\m_axi_awlen[3]_INST_0_i_4_n_0 ),
        .I4(in[22]),
        .I5(s_axi_awlen_ii[3]),
        .O(in[3]));
  LUT6 #(
    .INIT(64'hFFDF0000FFDFFFFF)) 
    \m_axi_awlen[3]_INST_0_i_1 
       (.I0(s_axi_awlen_ii[3]),
        .I1(sr_awsize[0]),
        .I2(sr_awsize[1]),
        .I3(sr_awsize[2]),
        .I4(in[22]),
        .I5(s_axi_awlen_ii[2]),
        .O(\m_axi_awlen[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \m_axi_awlen[3]_INST_0_i_10 
       (.I0(s_axi_awlen_ii[3]),
        .I1(sr_awsize[1]),
        .I2(s_axi_awlen_ii[1]),
        .I3(sr_awsize[0]),
        .I4(s_axi_awlen_ii[2]),
        .I5(sr_awsize[2]),
        .O(\m_axi_awlen[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0BBB00000BBBFFFF)) 
    \m_axi_awlen[3]_INST_0_i_2 
       (.I0(\m_axi_awlen[3]_INST_0_i_5_n_0 ),
        .I1(s_axi_awlen_ii[3]),
        .I2(s_axi_awlen_ii[2]),
        .I3(in[6]),
        .I4(in[22]),
        .I5(s_axi_awlen_ii[1]),
        .O(\m_axi_awlen[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFE8)) 
    \m_axi_awlen[3]_INST_0_i_3 
       (.I0(in[18]),
        .I1(\m_axi_awlen[3]_INST_0_i_6_n_0 ),
        .I2(\m_axi_awlen[3]_INST_0_i_7_n_0 ),
        .I3(\m_axi_awlen[3]_INST_0_i_8_n_0 ),
        .I4(\m_axi_awlen[0]_INST_0_i_2_n_0 ),
        .I5(\m_axi_awlen[3]_INST_0_i_9_n_0 ),
        .O(\m_axi_awlen[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_awlen[3]_INST_0_i_4 
       (.I0(\m_axi_awlen[3]_INST_0_i_10_n_0 ),
        .I1(in[22]),
        .I2(s_axi_awlen_ii[0]),
        .O(\m_axi_awlen[3]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \m_axi_awlen[3]_INST_0_i_5 
       (.I0(sr_awsize[1]),
        .I1(sr_awsize[2]),
        .I2(sr_awsize[0]),
        .O(\m_axi_awlen[3]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h80808000)) 
    \m_axi_awlen[3]_INST_0_i_6 
       (.I0(sr_awaddr[0]),
        .I1(s_axi_awlen_ii[0]),
        .I2(in[4]),
        .I3(sr_awburst[0]),
        .I4(sr_awburst[1]),
        .O(\m_axi_awlen[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \m_axi_awlen[3]_INST_0_i_7 
       (.I0(sr_awsize[2]),
        .I1(sr_awsize[1]),
        .I2(s_axi_awlen_ii[0]),
        .I3(sr_awsize[0]),
        .I4(s_axi_awlen_ii[1]),
        .I5(in[23]),
        .O(\m_axi_awlen[3]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \m_axi_awlen[3]_INST_0_i_8 
       (.I0(sr_awaddr[2]),
        .I1(sr_awburst[0]),
        .I2(sr_awburst[1]),
        .I3(\m_axi_awaddr[2]_INST_0_i_4_n_0 ),
        .O(\m_axi_awlen[3]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00037777)) 
    \m_axi_awlen[3]_INST_0_i_9 
       (.I0(\m_axi_awaddr[2]_INST_0_i_2_n_0 ),
        .I1(sr_awaddr[2]),
        .I2(sr_awburst[0]),
        .I3(sr_awburst[1]),
        .I4(\m_axi_awaddr[2]_INST_0_i_4_n_0 ),
        .O(\m_axi_awlen[3]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axi_awsize[0]_INST_0 
       (.I0(sr_awsize[0]),
        .I1(in[22]),
        .O(m_axi_awsize[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axi_awsize[1]_INST_0 
       (.I0(sr_awsize[1]),
        .I1(in[22]),
        .O(m_axi_awsize[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_awsize[2]_INST_0 
       (.I0(sr_awsize[2]),
        .I1(in[22]),
        .O(m_axi_awsize[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[31]_i_1 
       (.I0(sr_awvalid),
        .O(\m_payload_i[31]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[0]),
        .Q(sr_awaddr[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[10]),
        .Q(m_axi_awaddr[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[11]),
        .Q(m_axi_awaddr[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[12]),
        .Q(m_axi_awaddr[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[13]),
        .Q(m_axi_awaddr[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[14]),
        .Q(m_axi_awaddr[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[15]),
        .Q(m_axi_awaddr[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[16]),
        .Q(m_axi_awaddr[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[17]),
        .Q(m_axi_awaddr[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[18]),
        .Q(m_axi_awaddr[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[19]),
        .Q(m_axi_awaddr[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[1]),
        .Q(sr_awaddr[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[20]),
        .Q(m_axi_awaddr[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[21]),
        .Q(m_axi_awaddr[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[22]),
        .Q(m_axi_awaddr[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[23]),
        .Q(m_axi_awaddr[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[24]),
        .Q(m_axi_awaddr[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[25]),
        .Q(m_axi_awaddr[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[26]),
        .Q(m_axi_awaddr[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[27]),
        .Q(m_axi_awaddr[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[28]),
        .Q(m_axi_awaddr[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[29]),
        .Q(m_axi_awaddr[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[2]),
        .Q(sr_awaddr[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[30]),
        .Q(m_axi_awaddr[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[31]),
        .Q(m_axi_awaddr[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[32]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[33]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[34]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[35]),
        .Q(sr_awsize[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[36]),
        .Q(sr_awsize[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[37]),
        .Q(sr_awsize[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[38]),
        .Q(sr_awburst[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[39]),
        .Q(sr_awburst[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[3]),
        .Q(\m_payload_i_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[40]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[41]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[42]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[43]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[44]),
        .Q(s_axi_awlen_ii[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[45]),
        .Q(s_axi_awlen_ii[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[46]),
        .Q(s_axi_awlen_ii[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[47]),
        .Q(s_axi_awlen_ii[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[48]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[49]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[4]),
        .Q(\m_payload_i_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[50]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[51]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[52]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[53]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[5]),
        .Q(\m_payload_i_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[6]),
        .Q(m_axi_awaddr[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[7]),
        .Q(m_axi_awaddr[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[8]),
        .Q(m_axi_awaddr[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(D[9]),
        .Q(m_axi_awaddr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAA2AAA00002AAA)) 
    m_valid_i_i_1
       (.I0(\aresetn_d_reg_n_0_[1] ),
        .I1(cmd_push_block_reg),
        .I2(m_axi_awready),
        .I3(out),
        .I4(s_axi_awready),
        .I5(s_axi_awvalid),
        .O(m_valid_i_i_1_n_0));
  FDRE m_valid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1_n_0),
        .Q(sr_awvalid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h2A222AAA)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .I1(\aresetn_d_reg_n_0_[1] ),
        .I2(\USE_RTL_VALID_WRITE.buffer_Full_q_reg ),
        .I3(sr_awvalid),
        .I4(s_axi_awvalid),
        .O(s_ready_i_i_1_n_0));
  FDRE s_ready_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(s_axi_awready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "generic_baseblocks_v2_1_0_command_fifo" *) 
module system_auto_us_0_generic_baseblocks_v2_1_0_command_fifo
   (\USE_RTL_CURR_WORD.first_word_q_reg ,
    Q,
    \USE_RTL_LENGTH.length_counter_q_reg[1] ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7] ,
    p_0_out,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ,
    p_3_out4_out,
    p_8_out,
    p_11_out,
    p_14_out,
    p_17_out18_out,
    p_22_out,
    p_25_out26_out,
    \USE_RTL_LENGTH.length_counter_q_reg[1]_0 ,
    \USE_REGISTER.M_AXI_WVALID_q_reg ,
    D,
    \USE_RTL_CURR_WORD.current_word_q_reg[2] ,
    p_31_out__2,
    p_61_out__2,
    p_91_out__2,
    p_122_out__2,
    p_151_out__2,
    p_180_out__2,
    p_209_out__2,
    p_245_out__2,
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[63] ,
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[55] ,
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[47] ,
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[39] ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[31] ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[23] ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[15] ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_1 ,
    s_axi_wready,
    E,
    cmd_push_block0,
    s_ready_i_reg,
    m_axi_awvalid,
    m_valid_i_reg,
    wrap_buffer_available_reg,
    \USE_REGISTER.M_AXI_WVALID_q_reg_0 ,
    \USE_RTL_LENGTH.first_mi_word_q_reg ,
    SR,
    s_axi_aclk,
    s_axi_wvalid,
    wrap_buffer_available,
    cmd_push_block,
    sr_awvalid,
    s_axi_wlast,
    s_axi_wstrb,
    wstrb_wrap_buffer_7,
    wstrb_wrap_buffer_6,
    wstrb_wrap_buffer_5,
    wstrb_wrap_buffer_4,
    wstrb_wrap_buffer_3,
    wstrb_wrap_buffer_2,
    wstrb_wrap_buffer_1,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ,
    out,
    \USE_RTL_LENGTH.length_counter_q_reg[1]_1 ,
    first_mi_word_q,
    \USE_REGISTER.M_AXI_WVALID_q_reg_1 ,
    \USE_RTL_LENGTH.length_counter_q_reg[7] ,
    \USE_RTL_LENGTH.length_counter_q_reg[2] ,
    \USE_RTL_LENGTH.length_counter_q_reg[4] ,
    \USE_RTL_LENGTH.length_counter_q_reg[5] ,
    first_word_q,
    \USE_RTL_CURR_WORD.pre_next_word_q_reg[2] ,
    \USE_RTL_CURR_WORD.first_word_q_reg_0 ,
    \USE_RTL_CURR_WORD.current_word_q_reg[2]_0 ,
    \USE_REGISTER.M_AXI_WVALID_q_reg_2 ,
    m_axi_wready,
    \USE_REGISTER.M_AXI_WVALID_q_reg_3 ,
    m_axi_awready,
    in);
  output \USE_RTL_CURR_WORD.first_word_q_reg ;
  output [6:0]Q;
  output \USE_RTL_LENGTH.length_counter_q_reg[1] ;
  output [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7] ;
  output p_0_out;
  output \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ;
  output p_3_out4_out;
  output p_8_out;
  output p_11_out;
  output p_14_out;
  output p_17_out18_out;
  output p_22_out;
  output p_25_out26_out;
  output \USE_RTL_LENGTH.length_counter_q_reg[1]_0 ;
  output \USE_REGISTER.M_AXI_WVALID_q_reg ;
  output [2:0]D;
  output [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2] ;
  output p_31_out__2;
  output p_61_out__2;
  output p_91_out__2;
  output p_122_out__2;
  output p_151_out__2;
  output p_180_out__2;
  output p_209_out__2;
  output p_245_out__2;
  output [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[63] ;
  output [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[55] ;
  output [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[47] ;
  output [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[39] ;
  output [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[31] ;
  output [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[23] ;
  output [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[15] ;
  output [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_1 ;
  output s_axi_wready;
  output [0:0]E;
  output cmd_push_block0;
  output s_ready_i_reg;
  output m_axi_awvalid;
  output m_valid_i_reg;
  output wrap_buffer_available_reg;
  output \USE_REGISTER.M_AXI_WVALID_q_reg_0 ;
  output \USE_RTL_LENGTH.first_mi_word_q_reg ;
  input [0:0]SR;
  input s_axi_aclk;
  input s_axi_wvalid;
  input wrap_buffer_available;
  input cmd_push_block;
  input sr_awvalid;
  input s_axi_wlast;
  input [3:0]s_axi_wstrb;
  input wstrb_wrap_buffer_7;
  input wstrb_wrap_buffer_6;
  input wstrb_wrap_buffer_5;
  input wstrb_wrap_buffer_4;
  input wstrb_wrap_buffer_3;
  input wstrb_wrap_buffer_2;
  input wstrb_wrap_buffer_1;
  input \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ;
  input out;
  input [1:0]\USE_RTL_LENGTH.length_counter_q_reg[1]_1 ;
  input first_mi_word_q;
  input \USE_REGISTER.M_AXI_WVALID_q_reg_1 ;
  input \USE_RTL_LENGTH.length_counter_q_reg[7] ;
  input \USE_RTL_LENGTH.length_counter_q_reg[2] ;
  input \USE_RTL_LENGTH.length_counter_q_reg[4] ;
  input \USE_RTL_LENGTH.length_counter_q_reg[5] ;
  input first_word_q;
  input [2:0]\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] ;
  input \USE_RTL_CURR_WORD.first_word_q_reg_0 ;
  input [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 ;
  input \USE_REGISTER.M_AXI_WVALID_q_reg_2 ;
  input m_axi_wready;
  input \USE_REGISTER.M_AXI_WVALID_q_reg_3 ;
  input m_axi_awready;
  input [23:0]in;

  wire [2:0]D;
  wire [0:0]E;
  wire M_READY_I;
  wire [6:0]Q;
  wire [0:0]SR;
  wire \USE_REGISTER.M_AXI_WVALID_q_i_10_n_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_i_13_n_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_i_14_n_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_i_15_n_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_i_6_n_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_i_7_n_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_i_8_n_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_1 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_2 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_3 ;
  wire \USE_RTL_ADDR.addr_q[0]_i_1_n_0 ;
  wire \USE_RTL_ADDR.addr_q[1]_i_1_n_0 ;
  wire \USE_RTL_ADDR.addr_q[2]_i_1_n_0 ;
  wire \USE_RTL_ADDR.addr_q[3]_i_1_n_0 ;
  wire \USE_RTL_ADDR.addr_q[4]_i_2_n_0 ;
  wire \USE_RTL_ADDR.addr_q[4]_i_3_n_0 ;
  wire [4:0]\USE_RTL_ADDR.addr_q_reg__0 ;
  wire [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2] ;
  wire [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 ;
  wire \USE_RTL_CURR_WORD.first_word_q_reg ;
  wire \USE_RTL_CURR_WORD.first_word_q_reg_0 ;
  wire \USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2_n_0 ;
  wire \USE_RTL_CURR_WORD.pre_next_word_q[2]_i_2_n_0 ;
  wire [2:0]\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] ;
  wire \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0 ;
  wire \USE_RTL_LENGTH.first_mi_word_q_reg ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[1] ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[1]_0 ;
  wire [1:0]\USE_RTL_LENGTH.length_counter_q_reg[1]_1 ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[2] ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[4] ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[5] ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[7] ;
  wire \USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0 ;
  wire \USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_215_in ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer__0 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer_enabled__1 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/word_completed__6 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/wrap_buffer_available0 ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7] ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_1 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[15] ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[23] ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[31] ;
  wire [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[39] ;
  wire [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[47] ;
  wire [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[55] ;
  wire [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[63] ;
  wire addr_q;
  wire buffer_Full_q;
  wire [2:0]cmd_last_word;
  wire cmd_push_block;
  wire cmd_push_block0;
  wire [2:0]cmd_step;
  wire data_Exists_I;
  wire data_Exists_I_i_2_n_0;
  wire first_mi_word_q;
  wire first_word_q;
  wire [23:0]in;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_valid_i_reg;
  wire next_Data_Exists;
  wire out;
  wire p_0_out;
  wire p_11_out;
  wire p_122_out__2;
  wire p_14_out;
  wire p_151_out__2;
  wire p_17_out18_out;
  wire p_180_out__2;
  wire p_209_out__2;
  wire p_22_out;
  wire p_245_out__2;
  wire p_25_out26_out;
  wire p_31_out__2;
  wire p_3_out4_out;
  wire p_61_out__2;
  wire p_8_out;
  wire p_91_out__2;
  wire s_axi_aclk;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire s_ready_i_reg;
  wire sr_awvalid;
  wire valid_Write;
  wire wr_cmd_complete_wrap;
  wire [2:0]wr_cmd_first_word;
  wire [2:0]wr_cmd_mask;
  wire [2:0]wr_cmd_next_word;
  wire [2:2]wr_cmd_offset;
  wire wrap_buffer_available;
  wire wrap_buffer_available_reg;
  wire wstrb_wrap_buffer_1;
  wire wstrb_wrap_buffer_2;
  wire wstrb_wrap_buffer_3;
  wire wstrb_wrap_buffer_4;
  wire wstrb_wrap_buffer_5;
  wire wstrb_wrap_buffer_6;
  wire wstrb_wrap_buffer_7;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][10]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][11]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][12]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][13]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][16]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][17]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][18]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][19]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][20]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][21]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][22]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][23]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][24]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][25]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][26]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][27]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][28]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][29]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][2]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][3]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][8]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][9]_srl32_Q31_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h8F)) 
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_1 
       (.I0(s_axi_wlast),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg[1] ),
        .I2(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .O(M_READY_I));
  LUT6 #(
    .INIT(64'hAA8AAAAAAA8AAA8A)) 
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2 
       (.I0(\USE_REGISTER.M_AXI_WVALID_q_reg_1 ),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_i_6_n_0 ),
        .I4(\USE_REGISTER.M_AXI_WVALID_q_reg ),
        .I5(\USE_RTL_LENGTH.length_counter_q_reg[7] ),
        .O(\USE_RTL_LENGTH.length_counter_q_reg[1] ));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[0] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[10] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0 ),
        .Q(cmd_step[2]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[11] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0 ),
        .Q(wr_cmd_mask[0]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[12] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0 ),
        .Q(wr_cmd_mask[1]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[13] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0 ),
        .Q(wr_cmd_mask[2]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[16] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0 ),
        .Q(wr_cmd_offset),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[17] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0 ),
        .Q(cmd_last_word[0]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[18] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0 ),
        .Q(cmd_last_word[1]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0 ),
        .Q(cmd_last_word[2]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[20] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0 ),
        .Q(wr_cmd_next_word[0]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[21] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0 ),
        .Q(wr_cmd_next_word[1]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[22] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0 ),
        .Q(wr_cmd_next_word[2]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[23] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0 ),
        .Q(wr_cmd_first_word[0]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[24] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0 ),
        .Q(wr_cmd_first_word[1]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[25] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0 ),
        .Q(wr_cmd_first_word[2]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[26] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[27] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0 ),
        .Q(wr_cmd_complete_wrap),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[2] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[8] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0 ),
        .Q(cmd_step[0]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[9] 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0 ),
        .Q(cmd_step[1]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg 
       (.C(s_axi_aclk),
        .CE(M_READY_I),
        .D(data_Exists_I),
        .Q(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .R(SR));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_1 
       (.I0(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer_enabled__1 ),
        .I1(s_axi_wvalid),
        .I2(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I3(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/word_completed__6 ),
        .I4(m_axi_wready),
        .I5(\USE_REGISTER.M_AXI_WVALID_q_reg_3 ),
        .O(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ));
  LUT5 #(
    .INIT(32'h01FDFE02)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_10 
       (.I0(\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 [0]),
        .I1(Q[6]),
        .I2(first_word_q),
        .I3(wr_cmd_first_word[0]),
        .I4(cmd_last_word[0]),
        .O(\USE_REGISTER.M_AXI_WVALID_q_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h01FDFFFF)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_13 
       (.I0(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [2]),
        .I1(Q[6]),
        .I2(first_word_q),
        .I3(wr_cmd_next_word[2]),
        .I4(wr_cmd_mask[2]),
        .O(\USE_REGISTER.M_AXI_WVALID_q_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h01FDFFFF)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_14 
       (.I0(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [0]),
        .I1(Q[6]),
        .I2(first_word_q),
        .I3(wr_cmd_next_word[0]),
        .I4(wr_cmd_mask[0]),
        .O(\USE_REGISTER.M_AXI_WVALID_q_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h01FDFFFF)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_15 
       (.I0(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [1]),
        .I1(Q[6]),
        .I2(first_word_q),
        .I3(wr_cmd_next_word[1]),
        .I4(wr_cmd_mask[1]),
        .O(\USE_REGISTER.M_AXI_WVALID_q_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_2 
       (.I0(Q[4]),
        .I1(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I2(wrap_buffer_available),
        .O(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer_enabled__1 ));
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_3 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg[7] ),
        .I1(\USE_REGISTER.M_AXI_WVALID_q_reg ),
        .I2(\USE_REGISTER.M_AXI_WVALID_q_i_6_n_0 ),
        .I3(Q[5]),
        .I4(Q[6]),
        .O(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/word_completed__6 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_5 
       (.I0(\USE_REGISTER.M_AXI_WVALID_q_i_7_n_0 ),
        .I1(\USE_REGISTER.M_AXI_WVALID_q_i_8_n_0 ),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg[2] ),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_i_10_n_0 ),
        .I4(\USE_RTL_LENGTH.length_counter_q_reg[4] ),
        .I5(\USE_RTL_LENGTH.length_counter_q_reg[5] ),
        .O(\USE_REGISTER.M_AXI_WVALID_q_reg ));
  LUT4 #(
    .INIT(16'h0800)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_6 
       (.I0(\USE_REGISTER.M_AXI_WVALID_q_i_13_n_0 ),
        .I1(\USE_REGISTER.M_AXI_WVALID_q_i_14_n_0 ),
        .I2(wr_cmd_complete_wrap),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_i_15_n_0 ),
        .O(\USE_REGISTER.M_AXI_WVALID_q_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h01FDFE02)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_7 
       (.I0(\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 [1]),
        .I1(Q[6]),
        .I2(first_word_q),
        .I3(wr_cmd_first_word[1]),
        .I4(cmd_last_word[1]),
        .O(\USE_REGISTER.M_AXI_WVALID_q_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h5556AAA6)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_8 
       (.I0(cmd_last_word[2]),
        .I1(\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 [2]),
        .I2(Q[6]),
        .I3(first_word_q),
        .I4(wr_cmd_first_word[2]),
        .O(\USE_REGISTER.M_AXI_WVALID_q_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \USE_RTL_ADDR.addr_q[0]_i_1 
       (.I0(\USE_RTL_ADDR.addr_q_reg__0 [0]),
        .O(\USE_RTL_ADDR.addr_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999699)) 
    \USE_RTL_ADDR.addr_q[1]_i_1 
       (.I0(\USE_RTL_ADDR.addr_q_reg__0 [1]),
        .I1(\USE_RTL_ADDR.addr_q_reg__0 [0]),
        .I2(cmd_push_block),
        .I3(sr_awvalid),
        .I4(buffer_Full_q),
        .I5(M_READY_I),
        .O(\USE_RTL_ADDR.addr_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hA9A96AA9)) 
    \USE_RTL_ADDR.addr_q[2]_i_1 
       (.I0(\USE_RTL_ADDR.addr_q_reg__0 [2]),
        .I1(\USE_RTL_ADDR.addr_q_reg__0 [0]),
        .I2(\USE_RTL_ADDR.addr_q_reg__0 [1]),
        .I3(valid_Write),
        .I4(M_READY_I),
        .O(\USE_RTL_ADDR.addr_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9AAA96AAAAAA9)) 
    \USE_RTL_ADDR.addr_q[3]_i_1 
       (.I0(\USE_RTL_ADDR.addr_q_reg__0 [3]),
        .I1(\USE_RTL_ADDR.addr_q_reg__0 [1]),
        .I2(\USE_RTL_ADDR.addr_q_reg__0 [2]),
        .I3(\USE_RTL_ADDR.addr_q_reg__0 [0]),
        .I4(valid_Write),
        .I5(M_READY_I),
        .O(\USE_RTL_ADDR.addr_q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA9A000000100000)) 
    \USE_RTL_ADDR.addr_q[4]_i_1 
       (.I0(M_READY_I),
        .I1(cmd_push_block),
        .I2(sr_awvalid),
        .I3(buffer_Full_q),
        .I4(data_Exists_I),
        .I5(data_Exists_I_i_2_n_0),
        .O(addr_q));
  LUT6 #(
    .INIT(64'hAAAAAAA96AAAAAAA)) 
    \USE_RTL_ADDR.addr_q[4]_i_2 
       (.I0(\USE_RTL_ADDR.addr_q_reg__0 [4]),
        .I1(\USE_RTL_ADDR.addr_q_reg__0 [2]),
        .I2(\USE_RTL_ADDR.addr_q_reg__0 [3]),
        .I3(\USE_RTL_ADDR.addr_q_reg__0 [1]),
        .I4(\USE_RTL_ADDR.addr_q_reg__0 [0]),
        .I5(\USE_RTL_ADDR.addr_q[4]_i_3_n_0 ),
        .O(\USE_RTL_ADDR.addr_q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD5FFFF)) 
    \USE_RTL_ADDR.addr_q[4]_i_3 
       (.I0(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg[1] ),
        .I2(s_axi_wlast),
        .I3(buffer_Full_q),
        .I4(sr_awvalid),
        .I5(cmd_push_block),
        .O(\USE_RTL_ADDR.addr_q[4]_i_3_n_0 ));
  FDRE \USE_RTL_ADDR.addr_q_reg[0] 
       (.C(s_axi_aclk),
        .CE(addr_q),
        .D(\USE_RTL_ADDR.addr_q[0]_i_1_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg__0 [0]),
        .R(SR));
  FDRE \USE_RTL_ADDR.addr_q_reg[1] 
       (.C(s_axi_aclk),
        .CE(addr_q),
        .D(\USE_RTL_ADDR.addr_q[1]_i_1_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg__0 [1]),
        .R(SR));
  FDRE \USE_RTL_ADDR.addr_q_reg[2] 
       (.C(s_axi_aclk),
        .CE(addr_q),
        .D(\USE_RTL_ADDR.addr_q[2]_i_1_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg__0 [2]),
        .R(SR));
  FDRE \USE_RTL_ADDR.addr_q_reg[3] 
       (.C(s_axi_aclk),
        .CE(addr_q),
        .D(\USE_RTL_ADDR.addr_q[3]_i_1_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg__0 [3]),
        .R(SR));
  FDRE \USE_RTL_ADDR.addr_q_reg[4] 
       (.C(s_axi_aclk),
        .CE(addr_q),
        .D(\USE_RTL_ADDR.addr_q[4]_i_2_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg__0 [4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h888A8880)) 
    \USE_RTL_CURR_WORD.current_word_q[0]_i_1 
       (.I0(wr_cmd_mask[0]),
        .I1(wr_cmd_next_word[0]),
        .I2(first_word_q),
        .I3(Q[6]),
        .I4(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [0]),
        .O(\USE_RTL_CURR_WORD.current_word_q_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h888A8880)) 
    \USE_RTL_CURR_WORD.current_word_q[1]_i_1 
       (.I0(wr_cmd_mask[1]),
        .I1(wr_cmd_next_word[1]),
        .I2(first_word_q),
        .I3(Q[6]),
        .I4(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [1]),
        .O(\USE_RTL_CURR_WORD.current_word_q_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h888A8880)) 
    \USE_RTL_CURR_WORD.current_word_q[2]_i_1 
       (.I0(wr_cmd_mask[2]),
        .I1(wr_cmd_next_word[2]),
        .I2(first_word_q),
        .I3(Q[6]),
        .I4(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [2]),
        .O(\USE_RTL_CURR_WORD.current_word_q_reg[2] [2]));
  LUT6 #(
    .INIT(64'hA0A00080A0A0A0A0)) 
    \USE_RTL_CURR_WORD.first_word_q_i_1 
       (.I0(s_axi_wvalid),
        .I1(Q[4]),
        .I2(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I3(wrap_buffer_available),
        .I4(m_axi_wready),
        .I5(\USE_REGISTER.M_AXI_WVALID_q_reg_3 ),
        .O(E));
  LUT6 #(
    .INIT(64'h5457ABA800000000)) 
    \USE_RTL_CURR_WORD.pre_next_word_q[0]_i_1 
       (.I0(wr_cmd_next_word[0]),
        .I1(first_word_q),
        .I2(Q[6]),
        .I3(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [0]),
        .I4(cmd_step[0]),
        .I5(wr_cmd_mask[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h56A60000A9590000)) 
    \USE_RTL_CURR_WORD.pre_next_word_q[1]_i_1 
       (.I0(cmd_step[1]),
        .I1(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [1]),
        .I2(\USE_RTL_CURR_WORD.first_word_q_reg_0 ),
        .I3(wr_cmd_next_word[1]),
        .I4(wr_cmd_mask[1]),
        .I5(\USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h5557FFF7)) 
    \USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2 
       (.I0(cmd_step[0]),
        .I1(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [0]),
        .I2(Q[6]),
        .I3(first_word_q),
        .I4(wr_cmd_next_word[0]),
        .O(\USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9060909090606060)) 
    \USE_RTL_CURR_WORD.pre_next_word_q[2]_i_1 
       (.I0(\USE_RTL_CURR_WORD.pre_next_word_q[2]_i_2_n_0 ),
        .I1(cmd_step[2]),
        .I2(wr_cmd_mask[2]),
        .I3(wr_cmd_next_word[2]),
        .I4(\USE_RTL_CURR_WORD.first_word_q_reg_0 ),
        .I5(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hDDDFDDD544454440)) 
    \USE_RTL_CURR_WORD.pre_next_word_q[2]_i_2 
       (.I0(\USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2_n_0 ),
        .I1(wr_cmd_next_word[1]),
        .I2(first_word_q),
        .I3(Q[6]),
        .I4(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [1]),
        .I5(cmd_step[1]),
        .O(\USE_RTL_CURR_WORD.pre_next_word_q[2]_i_2_n_0 ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][0]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[0]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][0]_srl32_Q31_UNCONNECTED ));
  LUT3 #(
    .INIT(8'h04)) 
    \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1 
       (.I0(cmd_push_block),
        .I1(sr_awvalid),
        .I2(buffer_Full_q),
        .O(valid_Write));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][10]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][10]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[6]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][10]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][11]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][11]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[7]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][11]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][12]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][12]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[8]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][12]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][13]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][13]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[9]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][13]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][16]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][16]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[10]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][16]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][17]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][17]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[11]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][17]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][18]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][18]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[12]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][18]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][19]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][19]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[13]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][19]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][1]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[1]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][20]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][20]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[14]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][20]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][21]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][21]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[15]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][21]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][22]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][22]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[16]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][22]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][23]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][23]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[17]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][23]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][24]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][24]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[18]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][24]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][25]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][25]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[19]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][25]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][26]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][26]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[20]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][26]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][27]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][27]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[21]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][27]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][28]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][28]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[22]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][28]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][29]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][29]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[23]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][29]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][2]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[2]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][2]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][3]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[3]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][3]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][8]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][8]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[4]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][8]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][9]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][9]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg__0 ),
        .CE(valid_Write),
        .CLK(s_axi_aclk),
        .D(in[5]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][9]_srl32_Q31_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_RTL_LENGTH.first_mi_word_q_i_1 
       (.I0(s_axi_wlast),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg[1] ),
        .I2(first_mi_word_q),
        .O(\USE_RTL_LENGTH.first_mi_word_q_reg ));
  LUT6 #(
    .INIT(64'hF5A0DD225F0ADD22)) 
    \USE_RTL_LENGTH.length_counter_q[1]_i_1 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg[1] ),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg[1]_1 [0]),
        .I2(Q[0]),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg[1]_1 [1]),
        .I4(first_mi_word_q),
        .I5(Q[1]),
        .O(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00200000)) 
    \USE_RTL_VALID_WRITE.buffer_Full_q_i_1 
       (.I0(sr_awvalid),
        .I1(cmd_push_block),
        .I2(\USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0 ),
        .I3(M_READY_I),
        .I4(data_Exists_I),
        .I5(buffer_Full_q),
        .O(\USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \USE_RTL_VALID_WRITE.buffer_Full_q_i_2 
       (.I0(\USE_RTL_ADDR.addr_q_reg__0 [2]),
        .I1(\USE_RTL_ADDR.addr_q_reg__0 [3]),
        .I2(\USE_RTL_ADDR.addr_q_reg__0 [4]),
        .I3(\USE_RTL_ADDR.addr_q_reg__0 [1]),
        .I4(\USE_RTL_ADDR.addr_q_reg__0 [0]),
        .O(\USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0 ));
  FDRE \USE_RTL_VALID_WRITE.buffer_Full_q_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0 ),
        .Q(buffer_Full_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h2F002200)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_3 
       (.I0(s_axi_wstrb[0]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I2(Q[5]),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_reg_2 ),
        .I4(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .O(p_245_out__2));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q[7]_i_1 
       (.I0(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_215_in ),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7] ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q[7]_i_2 
       (.I0(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I1(wrap_buffer_available),
        .I2(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I3(Q[4]),
        .I4(s_axi_wvalid),
        .I5(s_axi_wstrb[0]),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_1 ));
  LUT5 #(
    .INIT(32'hFF000800)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q[0]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer__0 ),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I3(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_215_in ),
        .I4(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ),
        .O(p_25_out26_out));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q[0]_i_2 
       (.I0(wrap_buffer_available),
        .I1(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I2(Q[4]),
        .I3(s_axi_wvalid),
        .O(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer__0 ));
  LUT5 #(
    .INIT(32'hFFFEAAAE)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q[0]_i_3 
       (.I0(wr_cmd_offset),
        .I1(\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 [2]),
        .I2(Q[6]),
        .I3(first_word_q),
        .I4(wr_cmd_first_word[2]),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q[0]_i_4 
       (.I0(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg[1] ),
        .I2(s_axi_wlast),
        .I3(out),
        .O(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_215_in ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h2F002200)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_3 
       (.I0(s_axi_wstrb[1]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I2(Q[5]),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_reg_2 ),
        .I4(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .O(p_209_out__2));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q[15]_i_1 
       (.I0(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I1(wrap_buffer_available),
        .I2(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I3(Q[4]),
        .I4(s_axi_wvalid),
        .I5(s_axi_wstrb[1]),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[15] ));
  LUT5 #(
    .INIT(32'hFF000800)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q[1]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer__0 ),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I3(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_215_in ),
        .I4(wstrb_wrap_buffer_1),
        .O(p_22_out));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h2F002200)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_3 
       (.I0(s_axi_wstrb[2]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I2(Q[5]),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_reg_2 ),
        .I4(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .O(p_180_out__2));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q[23]_i_1 
       (.I0(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I1(wrap_buffer_available),
        .I2(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I3(Q[4]),
        .I4(s_axi_wvalid),
        .I5(s_axi_wstrb[2]),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[23] ));
  LUT5 #(
    .INIT(32'hFF000800)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q[2]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer__0 ),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I3(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_215_in ),
        .I4(wstrb_wrap_buffer_2),
        .O(p_17_out18_out));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h2F002200)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_3 
       (.I0(s_axi_wstrb[3]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I2(Q[5]),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_reg_2 ),
        .I4(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .O(p_151_out__2));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q[31]_i_1 
       (.I0(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I1(wrap_buffer_available),
        .I2(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I3(Q[4]),
        .I4(s_axi_wvalid),
        .I5(s_axi_wstrb[3]),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[31] ));
  LUT5 #(
    .INIT(32'hFF000800)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q[3]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer__0 ),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I3(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_215_in ),
        .I4(wstrb_wrap_buffer_3),
        .O(p_14_out));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h8F008800)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_3 
       (.I0(s_axi_wstrb[0]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I2(Q[5]),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_reg_2 ),
        .I4(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .O(p_122_out__2));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q[39]_i_1 
       (.I0(wrap_buffer_available),
        .I1(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I2(Q[4]),
        .I3(s_axi_wvalid),
        .I4(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I5(s_axi_wstrb[0]),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[39] ));
  LUT5 #(
    .INIT(32'hFF008000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q[4]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer__0 ),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I3(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_215_in ),
        .I4(wstrb_wrap_buffer_4),
        .O(p_11_out));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h8F008800)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_3 
       (.I0(s_axi_wstrb[1]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I2(Q[5]),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_reg_2 ),
        .I4(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .O(p_91_out__2));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q[47]_i_1 
       (.I0(wrap_buffer_available),
        .I1(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I2(Q[4]),
        .I3(s_axi_wvalid),
        .I4(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I5(s_axi_wstrb[1]),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[47] ));
  LUT5 #(
    .INIT(32'hFF008000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q[5]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer__0 ),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I3(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_215_in ),
        .I4(wstrb_wrap_buffer_5),
        .O(p_8_out));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h8F008800)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_3 
       (.I0(s_axi_wstrb[2]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I2(Q[5]),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_reg_2 ),
        .I4(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .O(p_61_out__2));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q[55]_i_1 
       (.I0(wrap_buffer_available),
        .I1(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I2(Q[4]),
        .I3(s_axi_wvalid),
        .I4(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I5(s_axi_wstrb[2]),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[55] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFF008000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q[6]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer__0 ),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I3(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_215_in ),
        .I4(wstrb_wrap_buffer_6),
        .O(p_3_out4_out));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h8F008800)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_4 
       (.I0(s_axi_wstrb[3]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I2(Q[5]),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_reg_2 ),
        .I4(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .O(p_31_out__2));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q[63]_i_1 
       (.I0(wrap_buffer_available),
        .I1(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I2(Q[4]),
        .I3(s_axi_wvalid),
        .I4(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I5(s_axi_wstrb[3]),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[63] ));
  LUT5 #(
    .INIT(32'hFF008000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q[7]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer__0 ),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]_0 ),
        .I3(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_215_in ),
        .I4(wstrb_wrap_buffer_7),
        .O(p_0_out));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    cmd_push_block_i_1
       (.I0(m_axi_awready),
        .I1(sr_awvalid),
        .I2(buffer_Full_q),
        .I3(cmd_push_block),
        .O(cmd_push_block0));
  LUT6 #(
    .INIT(64'hFF04FFFF00040004)) 
    data_Exists_I_i_1
       (.I0(buffer_Full_q),
        .I1(sr_awvalid),
        .I2(cmd_push_block),
        .I3(data_Exists_I_i_2_n_0),
        .I4(M_READY_I),
        .I5(data_Exists_I),
        .O(next_Data_Exists));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    data_Exists_I_i_2
       (.I0(\USE_RTL_ADDR.addr_q_reg__0 [0]),
        .I1(\USE_RTL_ADDR.addr_q_reg__0 [4]),
        .I2(\USE_RTL_ADDR.addr_q_reg__0 [3]),
        .I3(\USE_RTL_ADDR.addr_q_reg__0 [2]),
        .I4(\USE_RTL_ADDR.addr_q_reg__0 [1]),
        .O(data_Exists_I_i_2_n_0));
  FDRE data_Exists_I_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_Data_Exists),
        .Q(data_Exists_I),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    m_axi_awvalid_INST_0
       (.I0(buffer_Full_q),
        .I1(cmd_push_block),
        .I2(sr_awvalid),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    m_valid_i_i_2
       (.I0(cmd_push_block),
        .I1(buffer_Full_q),
        .O(m_valid_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hF2FF0000)) 
    s_axi_wready_INST_0
       (.I0(Q[4]),
        .I1(wrap_buffer_available),
        .I2(m_axi_wready),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_reg_3 ),
        .I4(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .O(s_axi_wready));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h77F7)) 
    s_ready_i_i_2
       (.I0(out),
        .I1(m_axi_awready),
        .I2(buffer_Full_q),
        .I3(cmd_push_block),
        .O(s_ready_i_reg));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    wrap_buffer_available_i_1
       (.I0(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/wrap_buffer_available0 ),
        .I1(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg[1] ),
        .I3(s_axi_wlast),
        .I4(wrap_buffer_available),
        .O(wrap_buffer_available_reg));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    wrap_buffer_available_i_2
       (.I0(s_axi_wvalid),
        .I1(Q[4]),
        .I2(\USE_RTL_CURR_WORD.first_word_q_reg ),
        .I3(wrap_buffer_available),
        .I4(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/word_completed__6 ),
        .O(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/wrap_buffer_available0 ));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
