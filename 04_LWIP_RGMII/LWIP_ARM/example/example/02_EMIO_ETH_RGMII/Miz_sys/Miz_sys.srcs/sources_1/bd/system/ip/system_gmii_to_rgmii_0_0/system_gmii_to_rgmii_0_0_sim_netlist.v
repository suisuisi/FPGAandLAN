// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Jul 19 14:59:50 2018
// Host        : LB-201803132255 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               J:/FEP/ETH1512/MZ7035/CH01_EMIO_ETH_RGMII/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_gmii_to_rgmii_0_0/system_gmii_to_rgmii_0_0_sim_netlist.v
// Design      : system_gmii_to_rgmii_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* x_core_info = "gmii_to_rgmii_v4_0_5,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module system_gmii_to_rgmii_0_0
   (tx_reset,
    rx_reset,
    clkin,
    ref_clk_out,
    mmcm_locked_out,
    gmii_clk_125m_out,
    gmii_clk_25m_out,
    gmii_clk_2_5m_out,
    speed_mode,
    gmii_tx_clk,
    gmii_tx_en,
    gmii_txd,
    gmii_tx_er,
    gmii_crs,
    gmii_col,
    gmii_rx_clk,
    gmii_rx_dv,
    gmii_rxd,
    gmii_rx_er,
    mdio_gem_mdc,
    mdio_gem_i,
    mdio_gem_o,
    mdio_gem_t,
    link_status,
    clock_speed,
    duplex_status,
    rgmii_txd,
    rgmii_tx_ctl,
    rgmii_txc,
    rgmii_rxd,
    rgmii_rx_ctl,
    rgmii_rxc,
    mdio_phy_mdc,
    mdio_phy_i,
    mdio_phy_o,
    mdio_phy_t);
  input tx_reset;
  input rx_reset;
  input clkin;
  output ref_clk_out;
  output mmcm_locked_out;
  output gmii_clk_125m_out;
  output gmii_clk_25m_out;
  output gmii_clk_2_5m_out;
  output [1:0]speed_mode;
  output gmii_tx_clk;
  input gmii_tx_en;
  input [7:0]gmii_txd;
  input gmii_tx_er;
  output gmii_crs;
  output gmii_col;
  output gmii_rx_clk;
  output gmii_rx_dv;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  input mdio_gem_mdc;
  output mdio_gem_i;
  input mdio_gem_o;
  input mdio_gem_t;
  output link_status;
  output [1:0]clock_speed;
  output duplex_status;
  output [3:0]rgmii_txd;
  output rgmii_tx_ctl;
  output rgmii_txc;
  input [3:0]rgmii_rxd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output mdio_phy_mdc;
  input mdio_phy_i;
  output mdio_phy_o;
  output mdio_phy_t;

  wire clkin;
  wire [1:0]clock_speed;
  wire duplex_status;
  wire gmii_clk_125m_out;
  wire gmii_clk_25m_out;
  wire gmii_clk_2_5m_out;
  wire gmii_col;
  wire gmii_crs;
  wire gmii_rx_clk;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_clk;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire link_status;
  wire mdio_gem_i;
  wire mdio_gem_mdc;
  wire mdio_gem_o;
  wire mdio_gem_t;
  wire mdio_phy_i;
  wire mdio_phy_mdc;
  wire mdio_phy_o;
  wire mdio_phy_t;
  wire mmcm_locked_out;
  wire ref_clk_out;
  (* IBUF_LOW_PWR *) wire rgmii_rx_ctl;
  (* IBUF_LOW_PWR *) wire rgmii_rxc;
  (* IBUF_LOW_PWR *) wire [3:0]rgmii_rxd;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire rgmii_tx_ctl;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire rgmii_txc;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire [3:0]rgmii_txd;
  wire rx_reset;
  wire [1:0]speed_mode;
  wire tx_reset;

  system_gmii_to_rgmii_0_0_system_gmii_to_rgmii_0_0_support U0
       (.clkin(clkin),
        .clock_speed(clock_speed),
        .duplex_status(duplex_status),
        .gmii_clk_125m_out(gmii_clk_125m_out),
        .gmii_clk_25m_out(gmii_clk_25m_out),
        .gmii_clk_2_5m_out(gmii_clk_2_5m_out),
        .gmii_col(gmii_col),
        .gmii_crs(gmii_crs),
        .gmii_rx_clk(gmii_rx_clk),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_clk(gmii_tx_clk),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .link_status(link_status),
        .mdio_gem_i(mdio_gem_i),
        .mdio_gem_mdc(mdio_gem_mdc),
        .mdio_gem_o(mdio_gem_o),
        .mdio_gem_t(mdio_gem_t),
        .mdio_phy_i(mdio_phy_i),
        .mdio_phy_mdc(mdio_phy_mdc),
        .mdio_phy_o(mdio_phy_o),
        .mdio_phy_t(mdio_phy_t),
        .mmcm_locked_out(mmcm_locked_out),
        .ref_clk_out(ref_clk_out),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_rxd(rgmii_rxd),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc),
        .rgmii_txd(rgmii_txd),
        .rx_reset(rx_reset),
        .speed_mode(speed_mode),
        .tx_reset(tx_reset));
endmodule

(* ORIG_REF_NAME = "system_gmii_to_rgmii_0_0_block" *) 
module system_gmii_to_rgmii_0_0_system_gmii_to_rgmii_0_0_block
   (speed_mode,
    gmii_crs,
    gmii_col,
    gmii_rx_clk,
    gmii_rx_dv,
    gmii_rxd,
    gmii_rx_er,
    mdio_gem_i,
    link_status,
    clock_speed,
    duplex_status,
    gmii_tx_clk,
    rgmii_txc,
    rgmii_tx_ctl,
    rgmii_txd,
    tx_reset,
    rx_reset,
    clkin_out,
    gmii_tx_en,
    gmii_txd,
    gmii_tx_er,
    mdio_gem_mdc,
    mdio_gem_o,
    mdio_phy_i,
    gmii_clk_2_5m_out,
    gmii_clk_25m_out,
    gmii_clk_125m_out,
    rgmii_rxc,
    rgmii_rx_ctl,
    rgmii_rxd);
  output [1:0]speed_mode;
  output gmii_crs;
  output gmii_col;
  output gmii_rx_clk;
  output gmii_rx_dv;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  output mdio_gem_i;
  output link_status;
  output [1:0]clock_speed;
  output duplex_status;
  output gmii_tx_clk;
  output rgmii_txc;
  output rgmii_tx_ctl;
  output [3:0]rgmii_txd;
  input tx_reset;
  input rx_reset;
  input clkin_out;
  input gmii_tx_en;
  input [7:0]gmii_txd;
  input gmii_tx_er;
  input mdio_gem_mdc;
  input mdio_gem_o;
  input mdio_phy_i;
  input gmii_clk_2_5m_out;
  input gmii_clk_25m_out;
  input gmii_clk_125m_out;
  input rgmii_rxc;
  input rgmii_rx_ctl;
  input [3:0]rgmii_rxd;

  wire I;
  wire clkin_out;
  wire [1:0]clock_speed;
  wire duplex_status;
  wire gmii_clk_125m_out;
  wire gmii_clk_25m_or_2_5m;
  wire gmii_clk_25m_out;
  wire gmii_clk_2_5m_out;
  wire gmii_col;
  wire gmii_crs;
  wire gmii_rx_clk;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_clk;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire link_status;
  wire mdio_gem_i;
  wire mdio_gem_mdc;
  wire mdio_gem_o;
  wire mdio_phy_i;
  wire rgmii_rx_ctl;
  wire rgmii_rx_ctl_ibuf;
  wire rgmii_rxc;
  wire rgmii_rxc_ibuf;
  wire [3:0]rgmii_rxd;
  wire [3:0]rgmii_rxd_ibuf;
  wire rgmii_tx_ctl;
  wire rgmii_tx_ctl_obuf;
  wire rgmii_txc;
  wire [3:0]rgmii_txd;
  wire [3:0]rgmii_txd_obuf;
  wire rx_reset;
  wire [1:0]speed_mode;
  wire tx_reset;
  wire NLW_system_gmii_to_rgmii_0_0_core_mdio_phy_mdc_UNCONNECTED;
  wire NLW_system_gmii_to_rgmii_0_0_core_mdio_phy_o_UNCONNECTED;
  wire NLW_system_gmii_to_rgmii_0_0_core_mdio_phy_t_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "BUFGMUX" *) 
  (* XILINX_TRANSFORM_PINMAP = "S:CE1,CE0" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .IS_CE0_INVERTED(1'b1),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE")) 
    i_bufgmux_gmii_clk
       (.CE0(speed_mode[1]),
        .CE1(speed_mode[1]),
        .I0(gmii_clk_25m_or_2_5m),
        .I1(gmii_clk_125m_out),
        .IGNORE0(1'b0),
        .IGNORE1(1'b0),
        .O(gmii_tx_clk),
        .S0(1'b1),
        .S1(1'b1));
  (* XILINX_LEGACY_PRIM = "BUFGMUX" *) 
  (* XILINX_TRANSFORM_PINMAP = "S:CE1,CE0" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .IS_CE0_INVERTED(1'b1),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE")) 
    i_bufgmux_gmii_clk_25m_2_5m
       (.CE0(speed_mode[0]),
        .CE1(speed_mode[0]),
        .I0(gmii_clk_2_5m_out),
        .I1(gmii_clk_25m_out),
        .IGNORE0(1'b0),
        .IGNORE1(1'b0),
        .O(gmii_clk_25m_or_2_5m),
        .S0(1'b1),
        .S1(1'b1));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    \ibuf_data[0].rgmii_rxd_ibuf_i 
       (.I(rgmii_rxd[0]),
        .O(rgmii_rxd_ibuf[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    \ibuf_data[1].rgmii_rxd_ibuf_i 
       (.I(rgmii_rxd[1]),
        .O(rgmii_rxd_ibuf[1]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    \ibuf_data[2].rgmii_rxd_ibuf_i 
       (.I(rgmii_rxd[2]),
        .O(rgmii_rxd_ibuf[2]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    \ibuf_data[3].rgmii_rxd_ibuf_i 
       (.I(rgmii_rxd[3]),
        .O(rgmii_rxd_ibuf[3]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \obuf_data[0].rgmii_txd_obuf_i 
       (.I(rgmii_txd_obuf[0]),
        .O(rgmii_txd[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \obuf_data[1].rgmii_txd_obuf_i 
       (.I(rgmii_txd_obuf[1]),
        .O(rgmii_txd[1]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \obuf_data[2].rgmii_txd_obuf_i 
       (.I(rgmii_txd_obuf[2]),
        .O(rgmii_txd[2]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \obuf_data[3].rgmii_txd_obuf_i 
       (.I(rgmii_txd_obuf[3]),
        .O(rgmii_txd[3]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    rgmii_rx_ctl_ibuf_i
       (.I(rgmii_rx_ctl),
        .O(rgmii_rx_ctl_ibuf));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    rgmii_rxc_ibuf_i
       (.I(rgmii_rxc),
        .O(rgmii_rxc_ibuf));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    rgmii_tx_ctl_obuf_i
       (.I(rgmii_tx_ctl_obuf),
        .O(rgmii_tx_ctl));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    rgmii_txc_obuf_i
       (.I(I),
        .O(rgmii_txc));
  (* C_DEVICE_TYPE = "0" *) 
  (* C_PHYADDR = "5'b01000" *) 
  (* C_RGMII_TXC_ODELAY_VAL = "0" *) 
  (* C_RGMII_TXC_SKEW_EN = "0" *) 
  system_gmii_to_rgmii_0_0_gmii_to_rgmii_v4_0_5 system_gmii_to_rgmii_0_0_core
       (.clock_speed(clock_speed),
        .duplex_status(duplex_status),
        .gmii_col(gmii_col),
        .gmii_crs(gmii_crs),
        .gmii_rx_clk(gmii_rx_clk),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_clk(gmii_tx_clk),
        .gmii_tx_clk_90(1'b0),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .link_status(link_status),
        .mdio_gem_i(mdio_gem_i),
        .mdio_gem_mdc(mdio_gem_mdc),
        .mdio_gem_o(mdio_gem_o),
        .mdio_gem_t(1'b0),
        .mdio_phy_i(mdio_phy_i),
        .mdio_phy_mdc(NLW_system_gmii_to_rgmii_0_0_core_mdio_phy_mdc_UNCONNECTED),
        .mdio_phy_o(NLW_system_gmii_to_rgmii_0_0_core_mdio_phy_o_UNCONNECTED),
        .mdio_phy_t(NLW_system_gmii_to_rgmii_0_0_core_mdio_phy_t_UNCONNECTED),
        .ref_clk(clkin_out),
        .rgmii_rx_ctl(rgmii_rx_ctl_ibuf),
        .rgmii_rxc(rgmii_rxc_ibuf),
        .rgmii_rxd(rgmii_rxd_ibuf),
        .rgmii_tx_ctl(rgmii_tx_ctl_obuf),
        .rgmii_txc(I),
        .rgmii_txd(rgmii_txd_obuf),
        .rx_reset(rx_reset),
        .speed_mode(speed_mode),
        .tx_reset(tx_reset));
endmodule

(* ORIG_REF_NAME = "system_gmii_to_rgmii_0_0_clocking" *) 
module system_gmii_to_rgmii_0_0_system_gmii_to_rgmii_0_0_clocking
   (tx_reset,
    mmcm_locked_out,
    clkin_out,
    gmii_clk_125m_out,
    gmii_clk_25m_out,
    gmii_clk_2_5m_out,
    tx_reset_0,
    clkin);
  output tx_reset;
  output mmcm_locked_out;
  output clkin_out;
  output gmii_clk_125m_out;
  output gmii_clk_25m_out;
  output gmii_clk_2_5m_out;
  input tx_reset_0;
  input clkin;

  wire clk_10;
  wire clkfbout;
  wire clkin;
  wire clkin_out;
  wire gmii_clk_125m_out;
  wire gmii_clk_25m_out;
  wire gmii_clk_2_5m_out;
  wire mmcm_locked_out;
  wire tx_reset;
  wire tx_reset_0;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("4"),
    .SIM_DEVICE("7SERIES")) 
    clk10_div_buf
       (.CE(1'b1),
        .CLR(1'b0),
        .I(clk_10),
        .O(gmii_clk_2_5m_out));
  (* box_type = "PRIMITIVE" *) 
  BUFG i_bufg_clk_in
       (.I(clkin),
        .O(clkin_out));
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(5.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(5.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(8.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(40),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(100),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.000000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clkin_out),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(gmii_clk_125m_out),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(gmii_clk_25m_out),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(clk_10),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(mmcm_locked_out),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(tx_reset_0));
  LUT2 #(
    .INIT(4'hB)) 
    system_gmii_to_rgmii_0_0_core_i_1
       (.I0(tx_reset_0),
        .I1(mmcm_locked_out),
        .O(tx_reset));
endmodule

(* INITIALISE = "2'b11" *) (* ORIG_REF_NAME = "system_gmii_to_rgmii_0_0_reset_sync" *) (* dont_touch = "yes" *) 
module system_gmii_to_rgmii_0_0_system_gmii_to_rgmii_0_0_reset_sync
   (reset_in,
    clk,
    reset_out);
  input reset_in;
  input clk;
  output reset_out;

  wire clk;
  wire reset_in;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_in),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(reset_in),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(reset_in),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(reset_in),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(reset_in),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "system_gmii_to_rgmii_0_0_resets" *) 
module system_gmii_to_rgmii_0_0_system_gmii_to_rgmii_0_0_resets
   (idelayctrl_reset,
    tx_reset,
    rx_reset,
    clkin_out);
  output idelayctrl_reset;
  input tx_reset;
  input rx_reset;
  input clkin_out;

  wire \FSM_onehot_idelay_reset_cnt[14]_i_1_n_0 ;
  wire \FSM_onehot_idelay_reset_cnt[14]_i_2_n_0 ;
  wire \FSM_onehot_idelay_reset_cnt[14]_i_3_n_0 ;
  wire \FSM_onehot_idelay_reset_cnt[14]_i_4_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[10] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[11] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[12] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[13] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[14] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[7] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[8] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[9] ;
  wire clkin_out;
  wire idelayctrl_reset;
  wire idelayctrl_reset_i_1_n_0;
  wire idelayctrl_reset_sync;
  wire reset;
  wire rx_reset;
  wire tx_reset;

  LUT4 #(
    .INIT(16'hAABA)) 
    \FSM_onehot_idelay_reset_cnt[14]_i_1 
       (.I0(\FSM_onehot_idelay_reset_cnt_reg_n_0_[13] ),
        .I1(\FSM_onehot_idelay_reset_cnt[14]_i_2_n_0 ),
        .I2(\FSM_onehot_idelay_reset_cnt[14]_i_3_n_0 ),
        .I3(\FSM_onehot_idelay_reset_cnt[14]_i_4_n_0 ),
        .O(\FSM_onehot_idelay_reset_cnt[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_idelay_reset_cnt[14]_i_2 
       (.I0(\FSM_onehot_idelay_reset_cnt_reg_n_0_[11] ),
        .I1(\FSM_onehot_idelay_reset_cnt_reg_n_0_[10] ),
        .I2(\FSM_onehot_idelay_reset_cnt_reg_n_0_[12] ),
        .I3(\FSM_onehot_idelay_reset_cnt_reg_n_0_[8] ),
        .I4(\FSM_onehot_idelay_reset_cnt_reg_n_0_[9] ),
        .O(\FSM_onehot_idelay_reset_cnt[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_idelay_reset_cnt[14]_i_3 
       (.I0(\FSM_onehot_idelay_reset_cnt_reg_n_0_[1] ),
        .I1(\FSM_onehot_idelay_reset_cnt_reg_n_0_[0] ),
        .I2(\FSM_onehot_idelay_reset_cnt_reg_n_0_[3] ),
        .I3(\FSM_onehot_idelay_reset_cnt_reg_n_0_[2] ),
        .O(\FSM_onehot_idelay_reset_cnt[14]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_idelay_reset_cnt[14]_i_4 
       (.I0(\FSM_onehot_idelay_reset_cnt_reg_n_0_[5] ),
        .I1(\FSM_onehot_idelay_reset_cnt_reg_n_0_[4] ),
        .I2(\FSM_onehot_idelay_reset_cnt_reg_n_0_[7] ),
        .I3(\FSM_onehot_idelay_reset_cnt_reg_n_0_[6] ),
        .O(\FSM_onehot_idelay_reset_cnt[14]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_idelay_reset_cnt_reg[0] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[0] ),
        .S(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[10] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[9] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[10] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[11] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[10] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[11] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[12] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[11] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[12] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[13] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[12] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[13] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[14] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt[14]_i_1_n_0 ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[14] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[1] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[0] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[1] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[2] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[1] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[2] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[3] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[2] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[3] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[4] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[3] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[4] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[5] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[4] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[5] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[6] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[5] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[6] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[7] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[6] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[7] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[8] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[7] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[8] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "iSTATE:000000000000001,iSTATE0:000000000000010,iSTATE1:000000000000100,iSTATE2:000000000001000,iSTATE3:000000000010000,iSTATE4:000000000100000,iSTATE5:000000001000000,iSTATE6:000000010000000,iSTATE7:000000100000000,iSTATE8:000001000000000,iSTATE9:000010000000000,iSTATE10:000100000000000,iSTATE11:001000000000000,iSTATE12:010000000000000,iSTATE13:100000000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[9] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[8] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[9] ),
        .R(idelayctrl_reset_sync));
  (* DONT_TOUCH *) 
  (* INITIALISE = "2'b11" *) 
  system_gmii_to_rgmii_0_0_system_gmii_to_rgmii_0_0_reset_sync idelayctrl_reset_gen
       (.clk(clkin_out),
        .reset_in(reset),
        .reset_out(idelayctrl_reset_sync));
  LUT2 #(
    .INIT(4'hE)) 
    idelayctrl_reset_gen_i_1
       (.I0(tx_reset),
        .I1(rx_reset),
        .O(reset));
  LUT4 #(
    .INIT(16'hFFEF)) 
    idelayctrl_reset_i_1
       (.I0(\FSM_onehot_idelay_reset_cnt_reg_n_0_[13] ),
        .I1(\FSM_onehot_idelay_reset_cnt[14]_i_2_n_0 ),
        .I2(\FSM_onehot_idelay_reset_cnt[14]_i_3_n_0 ),
        .I3(\FSM_onehot_idelay_reset_cnt[14]_i_4_n_0 ),
        .O(idelayctrl_reset_i_1_n_0));
  FDSE idelayctrl_reset_reg
       (.C(clkin_out),
        .CE(1'b1),
        .D(idelayctrl_reset_i_1_n_0),
        .Q(idelayctrl_reset),
        .S(idelayctrl_reset_sync));
endmodule

(* ORIG_REF_NAME = "system_gmii_to_rgmii_0_0_support" *) 
module system_gmii_to_rgmii_0_0_system_gmii_to_rgmii_0_0_support
   (tx_reset,
    rx_reset,
    clkin,
    ref_clk_out,
    mmcm_locked_out,
    gmii_clk_125m_out,
    gmii_clk_25m_out,
    gmii_clk_2_5m_out,
    speed_mode,
    gmii_tx_clk,
    gmii_tx_en,
    gmii_txd,
    gmii_tx_er,
    gmii_crs,
    gmii_col,
    gmii_rx_clk,
    gmii_rx_dv,
    gmii_rxd,
    gmii_rx_er,
    mdio_gem_mdc,
    mdio_gem_i,
    mdio_gem_o,
    mdio_gem_t,
    link_status,
    clock_speed,
    duplex_status,
    rgmii_txd,
    rgmii_tx_ctl,
    rgmii_txc,
    rgmii_rxd,
    rgmii_rx_ctl,
    rgmii_rxc,
    mdio_phy_mdc,
    mdio_phy_i,
    mdio_phy_o,
    mdio_phy_t);
  input tx_reset;
  input rx_reset;
  input clkin;
  output ref_clk_out;
  output mmcm_locked_out;
  output gmii_clk_125m_out;
  output gmii_clk_25m_out;
  output gmii_clk_2_5m_out;
  output [1:0]speed_mode;
  output gmii_tx_clk;
  input gmii_tx_en;
  input [7:0]gmii_txd;
  input gmii_tx_er;
  output gmii_crs;
  output gmii_col;
  output gmii_rx_clk;
  output gmii_rx_dv;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  input mdio_gem_mdc;
  output mdio_gem_i;
  input mdio_gem_o;
  input mdio_gem_t;
  output link_status;
  output [1:0]clock_speed;
  output duplex_status;
  output [3:0]rgmii_txd;
  output rgmii_tx_ctl;
  output rgmii_txc;
  input [3:0]rgmii_rxd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output mdio_phy_mdc;
  input mdio_phy_i;
  output mdio_phy_o;
  output mdio_phy_t;

  wire clkin;
  wire [1:0]clock_speed;
  wire duplex_status;
  wire gmii_clk_125m_out;
  wire gmii_clk_25m_out;
  wire gmii_clk_2_5m_out;
  wire gmii_col;
  wire gmii_crs;
  wire gmii_rx_clk;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_clk;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire i_system_gmii_to_rgmii_0_0_clocking_n_0;
  wire idelayctrl_reset_i;
  wire link_status;
  wire mdio_gem_i;
  wire mdio_gem_mdc;
  wire mdio_gem_o;
  wire mdio_gem_t;
  wire mdio_phy_i;
  wire mmcm_locked_out;
  wire ref_clk_out;
  wire rgmii_rx_ctl;
  wire rgmii_rxc;
  wire [3:0]rgmii_rxd;
  wire rgmii_tx_ctl;
  wire rgmii_txc;
  wire [3:0]rgmii_txd;
  wire rx_reset;
  wire [1:0]speed_mode;
  wire tx_reset;
  wire NLW_i_system_gmii_to_rgmii_0_0_idelayctrl_RDY_UNCONNECTED;

  assign mdio_phy_mdc = mdio_gem_mdc;
  assign mdio_phy_o = mdio_gem_o;
  assign mdio_phy_t = mdio_gem_t;
  system_gmii_to_rgmii_0_0_system_gmii_to_rgmii_0_0_block i_gmii_to_rgmii_block
       (.clkin_out(ref_clk_out),
        .clock_speed(clock_speed),
        .duplex_status(duplex_status),
        .gmii_clk_125m_out(gmii_clk_125m_out),
        .gmii_clk_25m_out(gmii_clk_25m_out),
        .gmii_clk_2_5m_out(gmii_clk_2_5m_out),
        .gmii_col(gmii_col),
        .gmii_crs(gmii_crs),
        .gmii_rx_clk(gmii_rx_clk),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_clk(gmii_tx_clk),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .link_status(link_status),
        .mdio_gem_i(mdio_gem_i),
        .mdio_gem_mdc(mdio_gem_mdc),
        .mdio_gem_o(mdio_gem_o),
        .mdio_phy_i(mdio_phy_i),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_rxd(rgmii_rxd),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc),
        .rgmii_txd(rgmii_txd),
        .rx_reset(rx_reset),
        .speed_mode(speed_mode),
        .tx_reset(i_system_gmii_to_rgmii_0_0_clocking_n_0));
  system_gmii_to_rgmii_0_0_system_gmii_to_rgmii_0_0_clocking i_system_gmii_to_rgmii_0_0_clocking
       (.clkin(clkin),
        .clkin_out(ref_clk_out),
        .gmii_clk_125m_out(gmii_clk_125m_out),
        .gmii_clk_25m_out(gmii_clk_25m_out),
        .gmii_clk_2_5m_out(gmii_clk_2_5m_out),
        .mmcm_locked_out(mmcm_locked_out),
        .tx_reset(i_system_gmii_to_rgmii_0_0_clocking_n_0),
        .tx_reset_0(tx_reset));
  (* box_type = "PRIMITIVE" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    i_system_gmii_to_rgmii_0_0_idelayctrl
       (.RDY(NLW_i_system_gmii_to_rgmii_0_0_idelayctrl_RDY_UNCONNECTED),
        .REFCLK(ref_clk_out),
        .RST(idelayctrl_reset_i));
  system_gmii_to_rgmii_0_0_system_gmii_to_rgmii_0_0_resets i_system_gmii_to_rgmii_0_0_resets
       (.clkin_out(ref_clk_out),
        .idelayctrl_reset(idelayctrl_reset_i),
        .rx_reset(rx_reset),
        .tx_reset(tx_reset));
endmodule

(* ORIG_REF_NAME = "MANAGEMENT" *) 
module system_gmii_to_rgmii_0_0_MANAGEMENT
   (DUPLEX_MODE_REG,
    \speed_mode[1] ,
    speed_mode,
    soft_reset,
    tx_reset0,
    reset_in,
    mdio_gem_i,
    ref_clk,
    reset_out,
    reset_sync6,
    reset_sync6_0,
    mdio_phy_i,
    mdio_gem_mdc,
    mdio_gem_o);
  output DUPLEX_MODE_REG;
  output \speed_mode[1] ;
  output [0:0]speed_mode;
  output soft_reset;
  output tx_reset0;
  output reset_in;
  output mdio_gem_i;
  input ref_clk;
  input reset_out;
  input reset_sync6;
  input reset_sync6_0;
  input mdio_phy_i;
  input mdio_gem_mdc;
  input mdio_gem_o;

  wire [15:15]DATA_OUT;
  wire DUPLEX_MODE_REG;
  wire MDC_REG2;
  wire MDC_REG3;
  wire MDC_RISING;
  wire MDC_RISING_REG1;
  wire MDIO_IN;
  wire MDIO_INTERFACE_1_n_3;
  wire MDIO_INTERFACE_1_n_5;
  wire MDIO_INTERFACE_1_n_6;
  wire MDIO_IN_REG2;
  wire MDIO_IN_REG3;
  wire RESET_REG1__0;
  wire RESET_REG_i_1_n_0;
  wire \SPEED_SELECTION_REG[0]_i_1_n_0 ;
  wire \SPEED_SELECTION_REG[1]_i_1_n_0 ;
  wire SYNC_MDC_n_0;
  wire mdio_gem_i;
  wire mdio_gem_mdc;
  wire mdio_gem_o;
  wire mdio_phy_i;
  wire ref_clk;
  wire reset_in;
  wire reset_out;
  wire reset_sync6;
  wire reset_sync6_0;
  wire soft_reset;
  wire [0:0]speed_mode;
  wire \speed_mode[1] ;
  wire tx_reset0;

  FDRE #(
    .INIT(1'b0)) 
    DUPLEX_MODE_REG_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(MDIO_INTERFACE_1_n_3),
        .Q(DUPLEX_MODE_REG),
        .R(reset_out));
  FDRE MDC_REG3_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(MDC_REG2),
        .Q(MDC_REG3),
        .R(reset_out));
  FDRE MDC_RISING_REG1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(SYNC_MDC_n_0),
        .Q(MDC_RISING_REG1),
        .R(reset_out));
  system_gmii_to_rgmii_0_0_MDIO_INTERFACE MDIO_INTERFACE_1
       (.DUPLEX_MODE_REG(DUPLEX_MODE_REG),
        .DUPLEX_MODE_REG_reg(MDIO_INTERFACE_1_n_3),
        .MDC_RISING(MDC_RISING),
        .MDC_RISING_REG1(MDC_RISING_REG1),
        .MDIO_IN(MDIO_IN),
        .Q({DATA_OUT,MDIO_INTERFACE_1_n_5,MDIO_INTERFACE_1_n_6}),
        .RESET_REG1__0(RESET_REG1__0),
        .RESET_REG_reg(soft_reset),
        .\SPEED_SELECTION_REG_reg[1] (\speed_mode[1] ),
        .mdio_gem_i(mdio_gem_i),
        .mdio_phy_i(mdio_phy_i),
        .ref_clk(ref_clk),
        .reset_out(reset_out),
        .speed_mode(speed_mode));
  FDSE MDIO_IN_REG3_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(MDIO_IN_REG2),
        .Q(MDIO_IN_REG3),
        .S(reset_out));
  FDSE MDIO_IN_REG4_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(MDIO_IN_REG3),
        .Q(MDIO_IN),
        .S(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    RESET_REG_i_1
       (.I0(DATA_OUT),
        .I1(MDC_RISING),
        .I2(RESET_REG1__0),
        .I3(soft_reset),
        .O(RESET_REG_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RESET_REG_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(RESET_REG_i_1_n_0),
        .Q(soft_reset),
        .R(reset_out));
  LUT4 #(
    .INIT(16'hBF80)) 
    \SPEED_SELECTION_REG[0]_i_1 
       (.I0(MDIO_INTERFACE_1_n_5),
        .I1(MDC_RISING),
        .I2(RESET_REG1__0),
        .I3(speed_mode),
        .O(\SPEED_SELECTION_REG[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \SPEED_SELECTION_REG[1]_i_1 
       (.I0(MDIO_INTERFACE_1_n_6),
        .I1(MDC_RISING),
        .I2(RESET_REG1__0),
        .I3(\speed_mode[1] ),
        .O(\SPEED_SELECTION_REG[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SPEED_SELECTION_REG_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\SPEED_SELECTION_REG[0]_i_1_n_0 ),
        .Q(speed_mode),
        .R(reset_out));
  FDRE #(
    .INIT(1'b1)) 
    \SPEED_SELECTION_REG_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\SPEED_SELECTION_REG[1]_i_1_n_0 ),
        .Q(\speed_mode[1] ),
        .R(reset_out));
  system_gmii_to_rgmii_0_0_sync_block SYNC_MDC
       (.MDC_REG3(MDC_REG3),
        .MDC_RISING_REG1_reg(SYNC_MDC_n_0),
        .data_out(MDC_REG2),
        .mdio_gem_mdc(mdio_gem_mdc),
        .ref_clk(ref_clk));
  system_gmii_to_rgmii_0_0_sync_block_4 SYNC_MDIO_IN
       (.data_out(MDIO_IN_REG2),
        .mdio_gem_o(mdio_gem_o),
        .ref_clk(ref_clk));
  LUT3 #(
    .INIT(8'hFE)) 
    reset_sync1_i_1
       (.I0(soft_reset),
        .I1(reset_sync6_0),
        .I2(reset_sync6),
        .O(reset_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    tx_reset_async_i_1
       (.I0(soft_reset),
        .I1(reset_sync6),
        .O(tx_reset0));
endmodule

(* ORIG_REF_NAME = "MDIO_INTERFACE" *) 
module system_gmii_to_rgmii_0_0_MDIO_INTERFACE
   (MDC_RISING,
    RESET_REG1__0,
    mdio_gem_i,
    DUPLEX_MODE_REG_reg,
    Q,
    ref_clk,
    reset_out,
    MDC_RISING_REG1,
    MDIO_IN,
    \SPEED_SELECTION_REG_reg[1] ,
    DUPLEX_MODE_REG,
    speed_mode,
    RESET_REG_reg,
    mdio_phy_i);
  output MDC_RISING;
  output RESET_REG1__0;
  output mdio_gem_i;
  output DUPLEX_MODE_REG_reg;
  output [2:0]Q;
  input ref_clk;
  input reset_out;
  input MDC_RISING_REG1;
  input MDIO_IN;
  input \SPEED_SELECTION_REG_reg[1] ;
  input DUPLEX_MODE_REG;
  input [0:0]speed_mode;
  input RESET_REG_reg;
  input mdio_phy_i;

  wire ADDRESS_MATCH_COMB;
  wire ADDRESS_MATCH_i_1_n_0;
  wire ADDRESS_MATCH_reg_n_0;
  wire [4:1]ADDR_RD;
  wire [0:0]ADDR_RD_0;
  wire [4:0]ADDR_WR;
  wire \ADDR_WR[4]_i_1_n_0 ;
  wire BIT_COUNT;
  wire \BIT_COUNT[1]_i_1_n_0 ;
  wire \BIT_COUNT[1]_i_2_n_0 ;
  wire \BIT_COUNT[2]_i_1_n_0 ;
  wire \BIT_COUNT[3]_i_3_n_0 ;
  wire \BIT_COUNT[3]_i_4_n_0 ;
  wire [3:0]BIT_COUNT_reg__0;
  wire DUPLEX_MODE_REG;
  wire DUPLEX_MODE_REG_reg;
  wire \FSM_onehot_STATE[0]_i_1_n_0 ;
  wire \FSM_onehot_STATE[0]_i_2_n_0 ;
  wire \FSM_onehot_STATE[10]_i_1_n_0 ;
  wire \FSM_onehot_STATE[10]_i_2_n_0 ;
  wire \FSM_onehot_STATE[1]_i_1_n_0 ;
  wire \FSM_onehot_STATE[2]_i_1_n_0 ;
  wire \FSM_onehot_STATE[3]_i_1_n_0 ;
  wire \FSM_onehot_STATE[4]_i_1_n_0 ;
  wire \FSM_onehot_STATE[5]_i_1_n_0 ;
  wire \FSM_onehot_STATE[6]_i_1_n_0 ;
  wire \FSM_onehot_STATE[6]_i_2_n_0 ;
  wire \FSM_onehot_STATE[7]_i_1_n_0 ;
  wire \FSM_onehot_STATE[8]_i_1_n_0 ;
  wire \FSM_onehot_STATE[9]_i_1_n_0 ;
  wire \FSM_onehot_STATE[9]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_STATE_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_STATE_reg_n_0_[10] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_STATE_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_STATE_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_STATE_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_STATE_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_STATE_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_STATE_reg_n_0_[7] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_STATE_reg_n_0_[8] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_STATE_reg_n_0_[9] ;
  wire LAST_DATA_SHIFT;
  wire LAST_DATA_SHIFT0;
  wire MDC_RISING;
  wire MDC_RISING_REG1;
  wire MDC_RISING_REG1_0;
  wire MDC_RISING_REG2;
  wire MDIO_IN;
  wire MDIO_OUT;
  wire MDIO_OUT_i_1_n_0;
  wire MDIO_TRI;
  wire MDIO_TRI_i_1_n_0;
  wire OPCODE;
  wire \OPCODE[0]_i_1_n_0 ;
  wire \OPCODE[1]_i_1_n_0 ;
  wire \OPCODE_reg_n_0_[0] ;
  wire \OPCODE_reg_n_0_[1] ;
  wire [2:0]Q;
  wire RESET_REG1__0;
  wire RESET_REG_reg;
  wire SHIFT_REG1__0;
  wire SHIFT_REG2__0;
  wire \SHIFT_REG[14]_i_1_n_0 ;
  wire \SHIFT_REG[15]_i_1_n_0 ;
  wire \SHIFT_REG[15]_i_3_n_0 ;
  wire \SHIFT_REG_reg[10]_srl2___i_gmii_to_rgmii_i_MANAGEMENT_MDIO_INTERFACE_1_SHIFT_REG_reg_r_0_n_0 ;
  wire \SHIFT_REG_reg[11]_i_gmii_to_rgmii_i_MANAGEMENT_MDIO_INTERFACE_1_SHIFT_REG_reg_r_1_n_0 ;
  wire SHIFT_REG_reg_gate_n_0;
  wire \SHIFT_REG_reg_n_0_[12] ;
  wire \SHIFT_REG_reg_n_0_[14] ;
  wire \SHIFT_REG_reg_n_0_[4] ;
  wire \SHIFT_REG_reg_n_0_[5] ;
  wire \SHIFT_REG_reg_n_0_[7] ;
  wire \SHIFT_REG_reg_n_0_[8] ;
  wire SHIFT_REG_reg_r_0_n_0;
  wire SHIFT_REG_reg_r_1_n_0;
  wire SHIFT_REG_reg_r_n_0;
  wire \SPEED_SELECTION_REG_reg[1] ;
  wire WE;
  wire WE_i_1_n_0;
  wire mdio_gem_i;
  wire mdio_phy_i;
  wire [3:0]p_0_in;
  (* RTL_KEEP = "yes" *) wire p_0_in11_in;
  wire p_10_in;
  wire [15:6]p_1_in;
  wire ref_clk;
  wire reset_out;
  wire [0:0]speed_mode;

  LUT4 #(
    .INIT(16'hBF80)) 
    ADDRESS_MATCH_i_1
       (.I0(ADDRESS_MATCH_COMB),
        .I1(MDC_RISING_REG1),
        .I2(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I3(ADDRESS_MATCH_reg_n_0),
        .O(ADDRESS_MATCH_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    ADDRESS_MATCH_i_2
       (.I0(ADDR_RD[4]),
        .I1(ADDR_RD[2]),
        .I2(ADDR_RD[3]),
        .I3(ADDR_RD_0),
        .I4(ADDR_RD[1]),
        .O(ADDRESS_MATCH_COMB));
  FDRE #(
    .INIT(1'b0)) 
    ADDRESS_MATCH_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(ADDRESS_MATCH_i_1_n_0),
        .Q(ADDRESS_MATCH_reg_n_0),
        .R(reset_out));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \ADDR_WR[4]_i_1 
       (.I0(MDC_RISING_REG1),
        .I1(BIT_COUNT_reg__0[2]),
        .I2(BIT_COUNT_reg__0[3]),
        .I3(BIT_COUNT_reg__0[1]),
        .I4(BIT_COUNT_reg__0[0]),
        .I5(p_0_in11_in),
        .O(\ADDR_WR[4]_i_1_n_0 ));
  FDRE \ADDR_WR_reg[0] 
       (.C(ref_clk),
        .CE(\ADDR_WR[4]_i_1_n_0 ),
        .D(ADDR_RD_0),
        .Q(ADDR_WR[0]),
        .R(reset_out));
  FDRE \ADDR_WR_reg[1] 
       (.C(ref_clk),
        .CE(\ADDR_WR[4]_i_1_n_0 ),
        .D(ADDR_RD[1]),
        .Q(ADDR_WR[1]),
        .R(reset_out));
  FDRE \ADDR_WR_reg[2] 
       (.C(ref_clk),
        .CE(\ADDR_WR[4]_i_1_n_0 ),
        .D(ADDR_RD[2]),
        .Q(ADDR_WR[2]),
        .R(reset_out));
  FDRE \ADDR_WR_reg[3] 
       (.C(ref_clk),
        .CE(\ADDR_WR[4]_i_1_n_0 ),
        .D(ADDR_RD[3]),
        .Q(ADDR_WR[3]),
        .R(reset_out));
  FDRE \ADDR_WR_reg[4] 
       (.C(ref_clk),
        .CE(\ADDR_WR[4]_i_1_n_0 ),
        .D(ADDR_RD[4]),
        .Q(ADDR_WR[4]),
        .R(reset_out));
  LUT6 #(
    .INIT(64'hAAAABBBBAAAAABBB)) 
    \BIT_COUNT[0]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I3(\BIT_COUNT[1]_i_2_n_0 ),
        .I4(BIT_COUNT_reg__0[0]),
        .I5(BIT_COUNT_reg__0[1]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h000F000000000007)) 
    \BIT_COUNT[1]_i_1 
       (.I0(\BIT_COUNT[1]_i_2_n_0 ),
        .I1(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I3(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I4(BIT_COUNT_reg__0[1]),
        .I5(BIT_COUNT_reg__0[0]),
        .O(\BIT_COUNT[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \BIT_COUNT[1]_i_2 
       (.I0(BIT_COUNT_reg__0[3]),
        .I1(BIT_COUNT_reg__0[2]),
        .O(\BIT_COUNT[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEFF)) 
    \BIT_COUNT[2]_i_1 
       (.I0(\BIT_COUNT[3]_i_3_n_0 ),
        .I1(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I3(BIT_COUNT_reg__0[2]),
        .I4(BIT_COUNT_reg__0[0]),
        .I5(BIT_COUNT_reg__0[1]),
        .O(\BIT_COUNT[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA2)) 
    \BIT_COUNT[3]_i_1 
       (.I0(MDC_RISING_REG1),
        .I1(SHIFT_REG2__0),
        .I2(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(\BIT_COUNT[3]_i_3_n_0 ),
        .O(BIT_COUNT));
  LUT6 #(
    .INIT(64'hABABABAAAAAAAAAB)) 
    \BIT_COUNT[3]_i_2 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I2(\BIT_COUNT[3]_i_3_n_0 ),
        .I3(BIT_COUNT_reg__0[2]),
        .I4(\BIT_COUNT[3]_i_4_n_0 ),
        .I5(BIT_COUNT_reg__0[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \BIT_COUNT[3]_i_3 
       (.I0(BIT_COUNT_reg__0[1]),
        .I1(BIT_COUNT_reg__0[0]),
        .I2(BIT_COUNT_reg__0[3]),
        .I3(BIT_COUNT_reg__0[2]),
        .I4(\FSM_onehot_STATE_reg_n_0_[4] ),
        .O(\BIT_COUNT[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \BIT_COUNT[3]_i_4 
       (.I0(BIT_COUNT_reg__0[0]),
        .I1(BIT_COUNT_reg__0[1]),
        .O(\BIT_COUNT[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_COUNT_reg[0] 
       (.C(ref_clk),
        .CE(BIT_COUNT),
        .D(p_0_in[0]),
        .Q(BIT_COUNT_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_COUNT_reg[1] 
       (.C(ref_clk),
        .CE(BIT_COUNT),
        .D(\BIT_COUNT[1]_i_1_n_0 ),
        .Q(BIT_COUNT_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_COUNT_reg[2] 
       (.C(ref_clk),
        .CE(BIT_COUNT),
        .D(\BIT_COUNT[2]_i_1_n_0 ),
        .Q(BIT_COUNT_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_COUNT_reg[3] 
       (.C(ref_clk),
        .CE(BIT_COUNT),
        .D(p_0_in[3]),
        .Q(BIT_COUNT_reg__0[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    DUPLEX_MODE_REG_i_1
       (.I0(\SHIFT_REG_reg_n_0_[8] ),
        .I1(MDC_RISING),
        .I2(RESET_REG1__0),
        .I3(DUPLEX_MODE_REG),
        .O(DUPLEX_MODE_REG_reg));
  LUT5 #(
    .INIT(32'hFF020202)) 
    \FSM_onehot_STATE[0]_i_1 
       (.I0(\FSM_onehot_STATE[10]_i_2_n_0 ),
        .I1(\FSM_onehot_STATE[0]_i_2_n_0 ),
        .I2(\FSM_onehot_STATE_reg_n_0_[9] ),
        .I3(\FSM_onehot_STATE_reg_n_0_[0] ),
        .I4(ADDR_RD_0),
        .O(\FSM_onehot_STATE[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_STATE[0]_i_2 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[6] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[8] ),
        .O(\FSM_onehot_STATE[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \FSM_onehot_STATE[10]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[6] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[8] ),
        .I3(\FSM_onehot_STATE_reg_n_0_[9] ),
        .I4(\FSM_onehot_STATE[10]_i_2_n_0 ),
        .O(\FSM_onehot_STATE[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_STATE[10]_i_2 
       (.I0(p_0_in11_in),
        .I1(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I3(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I4(\FSM_onehot_STATE_reg_n_0_[0] ),
        .I5(\FSM_onehot_STATE_reg_n_0_[2] ),
        .O(\FSM_onehot_STATE[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_onehot_STATE[1]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[0] ),
        .I2(ADDR_RD_0),
        .O(\FSM_onehot_STATE[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_STATE[2]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[0] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I2(ADDR_RD_0),
        .O(\FSM_onehot_STATE[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_STATE[3]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[2] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[0] ),
        .O(\FSM_onehot_STATE[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000F8)) 
    \FSM_onehot_STATE[4]_i_1 
       (.I0(\FSM_onehot_STATE[9]_i_2_n_0 ),
        .I1(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I3(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I4(\FSM_onehot_STATE_reg_n_0_[0] ),
        .I5(\FSM_onehot_STATE_reg_n_0_[2] ),
        .O(\FSM_onehot_STATE[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2088)) 
    \FSM_onehot_STATE[5]_i_1 
       (.I0(\FSM_onehot_STATE[6]_i_2_n_0 ),
        .I1(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I2(p_0_in11_in),
        .I3(\FSM_onehot_STATE[9]_i_2_n_0 ),
        .O(\FSM_onehot_STATE[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_STATE[6]_i_1 
       (.I0(\FSM_onehot_STATE[9]_i_2_n_0 ),
        .I1(p_0_in11_in),
        .I2(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I3(\FSM_onehot_STATE[6]_i_2_n_0 ),
        .O(\FSM_onehot_STATE[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_STATE[6]_i_2 
       (.I0(\FSM_onehot_STATE_reg_n_0_[2] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[0] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .O(\FSM_onehot_STATE[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_STATE[7]_i_1 
       (.I0(\FSM_onehot_STATE[10]_i_2_n_0 ),
        .I1(\FSM_onehot_STATE_reg_n_0_[6] ),
        .O(\FSM_onehot_STATE[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44404040)) 
    \FSM_onehot_STATE[8]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[6] ),
        .I1(\FSM_onehot_STATE[10]_i_2_n_0 ),
        .I2(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I3(\FSM_onehot_STATE[9]_i_2_n_0 ),
        .I4(\FSM_onehot_STATE_reg_n_0_[8] ),
        .O(\FSM_onehot_STATE[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \FSM_onehot_STATE[9]_i_1 
       (.I0(\FSM_onehot_STATE[9]_i_2_n_0 ),
        .I1(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[8] ),
        .I3(\FSM_onehot_STATE_reg_n_0_[6] ),
        .I4(\FSM_onehot_STATE[10]_i_2_n_0 ),
        .O(\FSM_onehot_STATE[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_STATE[9]_i_2 
       (.I0(BIT_COUNT_reg__0[3]),
        .I1(BIT_COUNT_reg__0[2]),
        .I2(BIT_COUNT_reg__0[1]),
        .I3(BIT_COUNT_reg__0[0]),
        .O(\FSM_onehot_STATE[9]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle_or_preamble:00000000001,wait_for_start:00000000010,opcode_1:00000000100,opcode_2:00000001000,ld_phyad:00000010000,ld_regad:00000100000,ta_1:00001000000,ta_2:00010000000,data_1:00100000000,data_2:01000000000,data_3:10000000000" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_STATE_reg[0] 
       (.C(ref_clk),
        .CE(MDC_RISING_REG1),
        .D(\FSM_onehot_STATE[0]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[0] ),
        .S(reset_out));
  (* FSM_ENCODED_STATES = "idle_or_preamble:00000000001,wait_for_start:00000000010,opcode_1:00000000100,opcode_2:00000001000,ld_phyad:00000010000,ld_regad:00000100000,ta_1:00001000000,ta_2:00010000000,data_1:00100000000,data_2:01000000000,data_3:10000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[10] 
       (.C(ref_clk),
        .CE(MDC_RISING_REG1),
        .D(\FSM_onehot_STATE[10]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[10] ),
        .R(reset_out));
  (* FSM_ENCODED_STATES = "idle_or_preamble:00000000001,wait_for_start:00000000010,opcode_1:00000000100,opcode_2:00000001000,ld_phyad:00000010000,ld_regad:00000100000,ta_1:00001000000,ta_2:00010000000,data_1:00100000000,data_2:01000000000,data_3:10000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[1] 
       (.C(ref_clk),
        .CE(MDC_RISING_REG1),
        .D(\FSM_onehot_STATE[1]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[1] ),
        .R(reset_out));
  (* FSM_ENCODED_STATES = "idle_or_preamble:00000000001,wait_for_start:00000000010,opcode_1:00000000100,opcode_2:00000001000,ld_phyad:00000010000,ld_regad:00000100000,ta_1:00001000000,ta_2:00010000000,data_1:00100000000,data_2:01000000000,data_3:10000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[2] 
       (.C(ref_clk),
        .CE(MDC_RISING_REG1),
        .D(\FSM_onehot_STATE[2]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[2] ),
        .R(reset_out));
  (* FSM_ENCODED_STATES = "idle_or_preamble:00000000001,wait_for_start:00000000010,opcode_1:00000000100,opcode_2:00000001000,ld_phyad:00000010000,ld_regad:00000100000,ta_1:00001000000,ta_2:00010000000,data_1:00100000000,data_2:01000000000,data_3:10000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[3] 
       (.C(ref_clk),
        .CE(MDC_RISING_REG1),
        .D(\FSM_onehot_STATE[3]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[3] ),
        .R(reset_out));
  (* FSM_ENCODED_STATES = "idle_or_preamble:00000000001,wait_for_start:00000000010,opcode_1:00000000100,opcode_2:00000001000,ld_phyad:00000010000,ld_regad:00000100000,ta_1:00001000000,ta_2:00010000000,data_1:00100000000,data_2:01000000000,data_3:10000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[4] 
       (.C(ref_clk),
        .CE(MDC_RISING_REG1),
        .D(\FSM_onehot_STATE[4]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[4] ),
        .R(reset_out));
  (* FSM_ENCODED_STATES = "idle_or_preamble:00000000001,wait_for_start:00000000010,opcode_1:00000000100,opcode_2:00000001000,ld_phyad:00000010000,ld_regad:00000100000,ta_1:00001000000,ta_2:00010000000,data_1:00100000000,data_2:01000000000,data_3:10000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[5] 
       (.C(ref_clk),
        .CE(MDC_RISING_REG1),
        .D(\FSM_onehot_STATE[5]_i_1_n_0 ),
        .Q(p_0_in11_in),
        .R(reset_out));
  (* FSM_ENCODED_STATES = "idle_or_preamble:00000000001,wait_for_start:00000000010,opcode_1:00000000100,opcode_2:00000001000,ld_phyad:00000010000,ld_regad:00000100000,ta_1:00001000000,ta_2:00010000000,data_1:00100000000,data_2:01000000000,data_3:10000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[6] 
       (.C(ref_clk),
        .CE(MDC_RISING_REG1),
        .D(\FSM_onehot_STATE[6]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[6] ),
        .R(reset_out));
  (* FSM_ENCODED_STATES = "idle_or_preamble:00000000001,wait_for_start:00000000010,opcode_1:00000000100,opcode_2:00000001000,ld_phyad:00000010000,ld_regad:00000100000,ta_1:00001000000,ta_2:00010000000,data_1:00100000000,data_2:01000000000,data_3:10000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[7] 
       (.C(ref_clk),
        .CE(MDC_RISING_REG1),
        .D(\FSM_onehot_STATE[7]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[7] ),
        .R(reset_out));
  (* FSM_ENCODED_STATES = "idle_or_preamble:00000000001,wait_for_start:00000000010,opcode_1:00000000100,opcode_2:00000001000,ld_phyad:00000010000,ld_regad:00000100000,ta_1:00001000000,ta_2:00010000000,data_1:00100000000,data_2:01000000000,data_3:10000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[8] 
       (.C(ref_clk),
        .CE(MDC_RISING_REG1),
        .D(\FSM_onehot_STATE[8]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[8] ),
        .R(reset_out));
  (* FSM_ENCODED_STATES = "idle_or_preamble:00000000001,wait_for_start:00000000010,opcode_1:00000000100,opcode_2:00000001000,ld_phyad:00000010000,ld_regad:00000100000,ta_1:00001000000,ta_2:00010000000,data_1:00100000000,data_2:01000000000,data_3:10000000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[9] 
       (.C(ref_clk),
        .CE(MDC_RISING_REG1),
        .D(\FSM_onehot_STATE[9]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[9] ),
        .R(reset_out));
  LUT2 #(
    .INIT(4'h8)) 
    LAST_DATA_SHIFT_i_1
       (.I0(MDC_RISING_REG1_0),
        .I1(\FSM_onehot_STATE_reg_n_0_[10] ),
        .O(LAST_DATA_SHIFT0));
  FDRE #(
    .INIT(1'b0)) 
    LAST_DATA_SHIFT_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(LAST_DATA_SHIFT0),
        .Q(LAST_DATA_SHIFT),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    MDC_RISING_REG1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(MDC_RISING_REG1),
        .Q(MDC_RISING_REG1_0),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    MDC_RISING_REG2_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(MDC_RISING_REG1_0),
        .Q(MDC_RISING_REG2),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    MDC_RISING_REG3_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(MDC_RISING_REG2),
        .Q(MDC_RISING),
        .R(reset_out));
  FDSE #(
    .INIT(1'b0)) 
    MDIO_IN_REG_reg
       (.C(ref_clk),
        .CE(MDC_RISING_REG1),
        .D(MDIO_IN),
        .Q(ADDR_RD_0),
        .S(reset_out));
  LUT5 #(
    .INIT(32'h8BFBFFFF)) 
    MDIO_OUT_i_1
       (.I0(Q[2]),
        .I1(\FSM_onehot_STATE[0]_i_2_n_0 ),
        .I2(p_0_in11_in),
        .I3(SHIFT_REG2__0),
        .I4(p_10_in),
        .O(MDIO_OUT_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    MDIO_OUT_i_2
       (.I0(BIT_COUNT_reg__0[2]),
        .I1(BIT_COUNT_reg__0[3]),
        .I2(BIT_COUNT_reg__0[1]),
        .I3(BIT_COUNT_reg__0[0]),
        .O(SHIFT_REG2__0));
  LUT3 #(
    .INIT(8'h40)) 
    MDIO_OUT_i_3
       (.I0(\OPCODE_reg_n_0_[0] ),
        .I1(ADDRESS_MATCH_reg_n_0),
        .I2(\OPCODE_reg_n_0_[1] ),
        .O(p_10_in));
  FDSE MDIO_OUT_reg
       (.C(ref_clk),
        .CE(MDC_RISING_REG1),
        .D(MDIO_OUT_i_1_n_0),
        .Q(MDIO_OUT),
        .S(reset_out));
  LUT6 #(
    .INIT(64'hFF1DFFFFFFFFFFFF)) 
    MDIO_TRI_i_1
       (.I0(\FSM_onehot_STATE[0]_i_2_n_0 ),
        .I1(p_0_in11_in),
        .I2(SHIFT_REG2__0),
        .I3(\OPCODE_reg_n_0_[0] ),
        .I4(ADDRESS_MATCH_reg_n_0),
        .I5(\OPCODE_reg_n_0_[1] ),
        .O(MDIO_TRI_i_1_n_0));
  FDSE MDIO_TRI_reg
       (.C(ref_clk),
        .CE(MDC_RISING_REG1),
        .D(MDIO_TRI_i_1_n_0),
        .Q(MDIO_TRI),
        .S(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OPCODE[0]_i_1 
       (.I0(ADDR_RD[1]),
        .I1(OPCODE),
        .I2(\OPCODE_reg_n_0_[0] ),
        .O(\OPCODE[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OPCODE[1]_i_1 
       (.I0(ADDR_RD[2]),
        .I1(OPCODE),
        .I2(\OPCODE_reg_n_0_[1] ),
        .O(\OPCODE[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \OPCODE[1]_i_2 
       (.I0(BIT_COUNT_reg__0[3]),
        .I1(BIT_COUNT_reg__0[0]),
        .I2(MDC_RISING_REG1),
        .I3(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I4(BIT_COUNT_reg__0[1]),
        .I5(BIT_COUNT_reg__0[2]),
        .O(OPCODE));
  FDRE #(
    .INIT(1'b0)) 
    \OPCODE_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\OPCODE[0]_i_1_n_0 ),
        .Q(\OPCODE_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OPCODE_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\OPCODE[1]_i_1_n_0 ),
        .Q(\OPCODE_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \SHIFT_REG[13]_i_1 
       (.I0(speed_mode),
        .I1(ADDR_RD[4]),
        .I2(\SHIFT_REG[15]_i_3_n_0 ),
        .I3(SHIFT_REG1__0),
        .I4(\SHIFT_REG_reg_n_0_[12] ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \SHIFT_REG[14]_i_1 
       (.I0(BIT_COUNT_reg__0[2]),
        .I1(BIT_COUNT_reg__0[3]),
        .I2(BIT_COUNT_reg__0[1]),
        .I3(BIT_COUNT_reg__0[0]),
        .I4(p_0_in11_in),
        .I5(\SHIFT_REG[15]_i_1_n_0 ),
        .O(\SHIFT_REG[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \SHIFT_REG[15]_i_1 
       (.I0(MDC_RISING_REG1),
        .I1(LAST_DATA_SHIFT),
        .O(\SHIFT_REG[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \SHIFT_REG[15]_i_2 
       (.I0(RESET_REG_reg),
        .I1(ADDR_RD[4]),
        .I2(\SHIFT_REG[15]_i_3_n_0 ),
        .I3(SHIFT_REG1__0),
        .I4(\SHIFT_REG_reg_n_0_[14] ),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SHIFT_REG[15]_i_3 
       (.I0(ADDR_RD[2]),
        .I1(ADDR_RD[1]),
        .I2(ADDR_RD_0),
        .I3(ADDR_RD[3]),
        .O(\SHIFT_REG[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \SHIFT_REG[15]_i_4 
       (.I0(p_0_in11_in),
        .I1(BIT_COUNT_reg__0[0]),
        .I2(BIT_COUNT_reg__0[1]),
        .I3(BIT_COUNT_reg__0[3]),
        .I4(BIT_COUNT_reg__0[2]),
        .O(SHIFT_REG1__0));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \SHIFT_REG[6]_i_1 
       (.I0(\SPEED_SELECTION_REG_reg[1] ),
        .I1(ADDR_RD[4]),
        .I2(\SHIFT_REG[15]_i_3_n_0 ),
        .I3(SHIFT_REG1__0),
        .I4(\SHIFT_REG_reg_n_0_[5] ),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \SHIFT_REG[8]_i_1 
       (.I0(DUPLEX_MODE_REG),
        .I1(ADDR_RD[4]),
        .I2(\SHIFT_REG[15]_i_3_n_0 ),
        .I3(SHIFT_REG1__0),
        .I4(\SHIFT_REG_reg_n_0_[7] ),
        .O(p_1_in[8]));
  FDRE #(
    .INIT(1'b0)) 
    \SHIFT_REG_reg[0] 
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(ADDR_RD_0),
        .Q(ADDR_RD[1]),
        .R(\SHIFT_REG[14]_i_1_n_0 ));
  (* srl_bus_name = "U0/\i_gmii_to_rgmii_block/system_gmii_to_rgmii_0_0_core /\i_gmii_to_rgmii/i_MANAGEMENT/MDIO_INTERFACE_1/SHIFT_REG_reg " *) 
  (* srl_name = "U0/\i_gmii_to_rgmii_block/system_gmii_to_rgmii_0_0_core /\i_gmii_to_rgmii/i_MANAGEMENT/MDIO_INTERFACE_1/SHIFT_REG_reg[10]_srl2___i_gmii_to_rgmii_i_MANAGEMENT_MDIO_INTERFACE_1_SHIFT_REG_reg_r_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SHIFT_REG_reg[10]_srl2___i_gmii_to_rgmii_i_MANAGEMENT_MDIO_INTERFACE_1_SHIFT_REG_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .CLK(ref_clk),
        .D(\SHIFT_REG_reg_n_0_[8] ),
        .Q(\SHIFT_REG_reg[10]_srl2___i_gmii_to_rgmii_i_MANAGEMENT_MDIO_INTERFACE_1_SHIFT_REG_reg_r_0_n_0 ));
  FDRE \SHIFT_REG_reg[11]_i_gmii_to_rgmii_i_MANAGEMENT_MDIO_INTERFACE_1_SHIFT_REG_reg_r_1 
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(\SHIFT_REG_reg[10]_srl2___i_gmii_to_rgmii_i_MANAGEMENT_MDIO_INTERFACE_1_SHIFT_REG_reg_r_0_n_0 ),
        .Q(\SHIFT_REG_reg[11]_i_gmii_to_rgmii_i_MANAGEMENT_MDIO_INTERFACE_1_SHIFT_REG_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \SHIFT_REG_reg[12] 
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(SHIFT_REG_reg_gate_n_0),
        .Q(\SHIFT_REG_reg_n_0_[12] ),
        .R(\SHIFT_REG[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SHIFT_REG_reg[13] 
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SHIFT_REG_reg[14] 
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(Q[1]),
        .Q(\SHIFT_REG_reg_n_0_[14] ),
        .R(\SHIFT_REG[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SHIFT_REG_reg[15] 
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SHIFT_REG_reg[1] 
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(ADDR_RD[1]),
        .Q(ADDR_RD[2]),
        .R(\SHIFT_REG[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SHIFT_REG_reg[2] 
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(ADDR_RD[2]),
        .Q(ADDR_RD[3]),
        .R(\SHIFT_REG[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SHIFT_REG_reg[3] 
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(ADDR_RD[3]),
        .Q(ADDR_RD[4]),
        .R(\SHIFT_REG[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SHIFT_REG_reg[4] 
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(ADDR_RD[4]),
        .Q(\SHIFT_REG_reg_n_0_[4] ),
        .R(\SHIFT_REG[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SHIFT_REG_reg[5] 
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(\SHIFT_REG_reg_n_0_[4] ),
        .Q(\SHIFT_REG_reg_n_0_[5] ),
        .R(\SHIFT_REG[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SHIFT_REG_reg[6] 
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SHIFT_REG_reg[7] 
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(Q[0]),
        .Q(\SHIFT_REG_reg_n_0_[7] ),
        .R(\SHIFT_REG[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SHIFT_REG_reg[8] 
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\SHIFT_REG_reg_n_0_[8] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    SHIFT_REG_reg_gate
       (.I0(\SHIFT_REG_reg[11]_i_gmii_to_rgmii_i_MANAGEMENT_MDIO_INTERFACE_1_SHIFT_REG_reg_r_1_n_0 ),
        .I1(SHIFT_REG_reg_r_1_n_0),
        .O(SHIFT_REG_reg_gate_n_0));
  FDRE SHIFT_REG_reg_r
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(1'b1),
        .Q(SHIFT_REG_reg_r_n_0),
        .R(\SHIFT_REG[14]_i_1_n_0 ));
  FDRE SHIFT_REG_reg_r_0
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(SHIFT_REG_reg_r_n_0),
        .Q(SHIFT_REG_reg_r_0_n_0),
        .R(\SHIFT_REG[14]_i_1_n_0 ));
  FDRE SHIFT_REG_reg_r_1
       (.C(ref_clk),
        .CE(\SHIFT_REG[15]_i_1_n_0 ),
        .D(SHIFT_REG_reg_r_0_n_0),
        .Q(SHIFT_REG_reg_r_1_n_0),
        .R(\SHIFT_REG[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \SPEED_SELECTION_REG[1]_i_2 
       (.I0(ADDR_WR[4]),
        .I1(ADDR_WR[3]),
        .I2(ADDR_WR[2]),
        .I3(ADDR_WR[1]),
        .I4(ADDR_WR[0]),
        .I5(WE),
        .O(RESET_REG1__0));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    WE_i_1
       (.I0(ADDRESS_MATCH_reg_n_0),
        .I1(\FSM_onehot_STATE_reg_n_0_[10] ),
        .I2(\OPCODE_reg_n_0_[1] ),
        .I3(\OPCODE_reg_n_0_[0] ),
        .I4(MDC_RISING_REG2),
        .I5(WE),
        .O(WE_i_1_n_0));
  FDRE WE_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(WE_i_1_n_0),
        .Q(WE),
        .R(reset_out));
  LUT3 #(
    .INIT(8'hB8)) 
    mdio_gem_i_INST_0
       (.I0(mdio_phy_i),
        .I1(MDIO_TRI),
        .I2(MDIO_OUT),
        .O(mdio_gem_i));
endmodule

(* ORIG_REF_NAME = "gmii_to_rgmii" *) 
module system_gmii_to_rgmii_0_0_gmii_to_rgmii
   (gmii_crs,
    gmii_rx_dv,
    gmii_rx_clk,
    rgmii_tx_ctl,
    rgmii_txc,
    rgmii_txd,
    gmii_rxd,
    \speed_mode[1] ,
    speed_mode,
    link_status,
    clock_speed,
    duplex_status,
    gmii_col,
    gmii_rx_er,
    mdio_gem_i,
    ref_clk,
    tx_reset,
    rx_reset,
    mdio_gem_mdc,
    mdio_gem_o,
    gmii_tx_clk,
    rgmii_rxc,
    rgmii_rx_ctl,
    rgmii_rxd,
    gmii_tx_er,
    gmii_tx_en,
    gmii_txd,
    mdio_phy_i);
  output gmii_crs;
  output gmii_rx_dv;
  output gmii_rx_clk;
  output rgmii_tx_ctl;
  output rgmii_txc;
  output [3:0]rgmii_txd;
  output [7:0]gmii_rxd;
  output \speed_mode[1] ;
  output [0:0]speed_mode;
  output link_status;
  output [1:0]clock_speed;
  output duplex_status;
  output gmii_col;
  output gmii_rx_er;
  output mdio_gem_i;
  input ref_clk;
  input tx_reset;
  input rx_reset;
  input mdio_gem_mdc;
  input mdio_gem_o;
  input gmii_tx_clk;
  input rgmii_rxc;
  input rgmii_rx_ctl;
  input [3:0]rgmii_rxd;
  input gmii_tx_er;
  input gmii_tx_en;
  input [7:0]gmii_txd;
  input mdio_phy_i;

  wire DUPLEX_MODE_REG;
  wire [1:0]clock_speed;
  wire duplex_status;
  wire gmii_col;
  wire gmii_crs;
  wire gmii_rx_clk;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_clk;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire link_status;
  wire mdio_gem_i;
  wire mdio_gem_mdc;
  wire mdio_gem_o;
  wire mdio_phy_i;
  wire ref_clk;
  wire reset_in;
  wire reset_to_mgmt_sync;
  wire rgmii_rx_ctl;
  wire rgmii_rxc;
  wire [3:0]rgmii_rxd;
  wire rgmii_tx_ctl;
  wire rgmii_txc;
  wire [3:0]rgmii_txd;
  wire rx_reset;
  wire rx_reset0;
  wire rx_reset_async_reg_n_0;
  wire rx_reset_sync;
  wire soft_reset;
  wire [0:0]speed_mode;
  wire \speed_mode[1] ;
  wire tx_reset;
  wire tx_reset0;
  wire tx_reset_async_reg_n_0;
  wire tx_reset_sync;

  system_gmii_to_rgmii_0_0_MANAGEMENT i_MANAGEMENT
       (.DUPLEX_MODE_REG(DUPLEX_MODE_REG),
        .mdio_gem_i(mdio_gem_i),
        .mdio_gem_mdc(mdio_gem_mdc),
        .mdio_gem_o(mdio_gem_o),
        .mdio_phy_i(mdio_phy_i),
        .ref_clk(ref_clk),
        .reset_in(reset_in),
        .reset_out(reset_to_mgmt_sync),
        .reset_sync6(tx_reset_sync),
        .reset_sync6_0(rx_reset_sync),
        .soft_reset(soft_reset),
        .speed_mode(speed_mode),
        .\speed_mode[1] (\speed_mode[1] ),
        .tx_reset0(tx_reset0));
  system_gmii_to_rgmii_0_0_gmii_to_rgmii_core i_gmii_to_rgmii
       (.DUPLEX_MODE_REG(DUPLEX_MODE_REG),
        .\SPEED_SELECTION_REG_reg[1] (\speed_mode[1] ),
        .clock_speed(clock_speed),
        .duplex_status(duplex_status),
        .gmii_col(gmii_col),
        .gmii_crs(gmii_crs),
        .gmii_rx_clk(gmii_rx_clk),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_clk(gmii_tx_clk),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .link_status(link_status),
        .reset_in(rx_reset_async_reg_n_0),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_rxd(rgmii_rxd),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc),
        .rgmii_txd(rgmii_txd),
        .tx_reset_async_reg(tx_reset_async_reg_n_0));
  system_gmii_to_rgmii_0_0_reset_sync i_reset_sync_mgmt_reset
       (.ref_clk(ref_clk),
        .reset_in(reset_in),
        .reset_out(reset_to_mgmt_sync));
  system_gmii_to_rgmii_0_0_reset_sync_0 i_reset_sync_rx_reset
       (.ref_clk(ref_clk),
        .reset_out(rx_reset_sync),
        .rx_reset(rx_reset),
        .rx_reset0(rx_reset0),
        .soft_reset(soft_reset));
  system_gmii_to_rgmii_0_0_reset_sync_1 i_reset_sync_tx_reset
       (.ref_clk(ref_clk),
        .reset_out(tx_reset_sync),
        .tx_reset(tx_reset));
  FDRE rx_reset_async_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rx_reset0),
        .Q(rx_reset_async_reg_n_0),
        .R(1'b0));
  FDRE tx_reset_async_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(tx_reset0),
        .Q(tx_reset_async_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gmii_to_rgmii_core" *) 
module system_gmii_to_rgmii_0_0_gmii_to_rgmii_core
   (gmii_rx_clk,
    rgmii_tx_ctl,
    gmii_rx_dv,
    rgmii_txc,
    rgmii_txd,
    gmii_rxd,
    link_status,
    duplex_status,
    gmii_crs,
    gmii_col,
    gmii_rx_er,
    clock_speed,
    rgmii_rxc,
    gmii_tx_clk,
    rgmii_rx_ctl,
    rgmii_rxd,
    gmii_tx_er,
    gmii_tx_en,
    DUPLEX_MODE_REG,
    \SPEED_SELECTION_REG_reg[1] ,
    tx_reset_async_reg,
    reset_in,
    gmii_txd);
  output gmii_rx_clk;
  output rgmii_tx_ctl;
  output gmii_rx_dv;
  output rgmii_txc;
  output [3:0]rgmii_txd;
  output [7:0]gmii_rxd;
  output link_status;
  output duplex_status;
  output gmii_crs;
  output gmii_col;
  output gmii_rx_er;
  output [1:0]clock_speed;
  input rgmii_rxc;
  input gmii_tx_clk;
  input rgmii_rx_ctl;
  input [3:0]rgmii_rxd;
  input gmii_tx_er;
  input gmii_tx_en;
  input DUPLEX_MODE_REG;
  input \SPEED_SELECTION_REG_reg[1] ;
  input tx_reset_async_reg;
  input reset_in;
  input [7:0]gmii_txd;

  wire D1;
  wire D2;
  wire DUPLEX_MODE_REG;
  wire \SPEED_SELECTION_REG_reg[1] ;
  wire [1:0]clock_speed;
  wire duplex_status;
  wire \gen_rgmii_rx_iddr_zq.rgmii_rx_ctl_in__0 ;
  wire \gen_rgmii_txdata_zq.txdata_out_bus[0].rgmii_txd_out_i_1_n_0 ;
  wire \gen_rgmii_txdata_zq.txdata_out_bus[1].rgmii_txd_out_i_1_n_0 ;
  wire \gen_rgmii_txdata_zq.txdata_out_bus[2].rgmii_txd_out_i_1_n_0 ;
  wire \gen_rgmii_txdata_zq.txdata_out_bus[3].rgmii_txd_out_i_1_n_0 ;
  wire gmii_col;
  wire gmii_crs;
  wire gmii_rx_clk;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_clk;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire gmii_tx_er_int;
  wire [7:0]gmii_txd;
  wire [7:0]gmii_txd_int;
  wire inband_ce;
  wire link_status;
  wire reset_in;
  wire rgmii_rx_ctl;
  wire rgmii_rx_ctl_delay;
  wire rgmii_rxc;
  wire rgmii_rxc_int;
  wire [3:0]rgmii_rxd;
  wire rgmii_rxd_delay_0;
  wire rgmii_rxd_delay_1;
  wire rgmii_rxd_delay_2;
  wire rgmii_rxd_delay_3;
  wire rgmii_tx_ctl;
  wire rgmii_txc;
  wire [3:0]rgmii_txd;
  wire rx_reset_sync_11;
  wire tx_reset_async_reg;
  wire tx_reset_sync_5;
  wire [4:0]\NLW_gen_rgmii_rx_zq.delay_rgmii_rx_ctl_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_gen_rgmii_rx_zq.rxdata_bus[0].delay_rgmii_rxd_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_gen_rgmii_rx_zq.rxdata_bus[1].delay_rgmii_rxd_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_gen_rgmii_rx_zq.rxdata_bus[2].delay_rgmii_rxd_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_gen_rgmii_rx_zq.rxdata_bus[3].delay_rgmii_rxd_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_rgmii_txc.gen_rgmii_txc_zq.rgmii_txc_out_S_UNCONNECTED ;
  wire \NLW_gen_rgmii_txdata_zq.rgmii_tx_ctl_out_S_UNCONNECTED ;
  wire \NLW_gen_rgmii_txdata_zq.txdata_out_bus[0].rgmii_txd_out_S_UNCONNECTED ;
  wire \NLW_gen_rgmii_txdata_zq.txdata_out_bus[1].rgmii_txd_out_S_UNCONNECTED ;
  wire \NLW_gen_rgmii_txdata_zq.txdata_out_bus[2].rgmii_txd_out_S_UNCONNECTED ;
  wire \NLW_gen_rgmii_txdata_zq.txdata_out_bus[3].rgmii_txd_out_S_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_rgmii_rx_clk
       (.I(rgmii_rxc),
        .O(gmii_rx_clk));
  (* box_type = "PRIMITIVE" *) 
  BUFIO bufio_rgmii_rx_clk
       (.I(rgmii_rxc),
        .O(rgmii_rxc_int));
  FDRE \clock_speed_reg[0] 
       (.C(gmii_rx_clk),
        .CE(inband_ce),
        .D(gmii_rxd[1]),
        .Q(clock_speed[0]),
        .R(rx_reset_sync_11));
  FDRE \clock_speed_reg[1] 
       (.C(gmii_rx_clk),
        .CE(inband_ce),
        .D(gmii_rxd[2]),
        .Q(clock_speed[1]),
        .R(rx_reset_sync_11));
  FDRE duplex_status_reg
       (.C(gmii_rx_clk),
        .CE(inband_ce),
        .D(gmii_rxd[3]),
        .Q(duplex_status),
        .R(rx_reset_sync_11));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_rgmii_rx_iddr_zq.rgmii_rx_ctl_in 
       (.C(rgmii_rxc_int),
        .CE(1'b1),
        .D(rgmii_rx_ctl_delay),
        .Q1(gmii_rx_dv),
        .Q2(\gen_rgmii_rx_iddr_zq.rgmii_rx_ctl_in__0 ),
        .R(1'b0),
        .S(1'b0));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_rgmii_rx_iddr_zq.rxdata_in_bus[0].rgmii_rx_data_in 
       (.C(rgmii_rxc_int),
        .CE(1'b1),
        .D(rgmii_rxd_delay_0),
        .Q1(gmii_rxd[0]),
        .Q2(gmii_rxd[4]),
        .R(1'b0),
        .S(1'b0));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_rgmii_rx_iddr_zq.rxdata_in_bus[1].rgmii_rx_data_in 
       (.C(rgmii_rxc_int),
        .CE(1'b1),
        .D(rgmii_rxd_delay_1),
        .Q1(gmii_rxd[1]),
        .Q2(gmii_rxd[5]),
        .R(1'b0),
        .S(1'b0));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_rgmii_rx_iddr_zq.rxdata_in_bus[2].rgmii_rx_data_in 
       (.C(rgmii_rxc_int),
        .CE(1'b1),
        .D(rgmii_rxd_delay_2),
        .Q1(gmii_rxd[2]),
        .Q2(gmii_rxd[6]),
        .R(1'b0),
        .S(1'b0));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_rgmii_rx_iddr_zq.rxdata_in_bus[3].rgmii_rx_data_in 
       (.C(rgmii_rxc_int),
        .CE(1'b1),
        .D(rgmii_rxd_delay_3),
        .Q1(gmii_rxd[3]),
        .Q2(gmii_rxd[7]),
        .R(1'b0),
        .S(1'b0));
  (* XILINX_LEGACY_PRIM = "IODELAYE1" *) 
  (* XILINX_TRANSFORM_PINMAP = "RST:LD" *) 
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(16),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \gen_rgmii_rx_zq.delay_rgmii_rx_ctl 
       (.C(1'b0),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_gen_rgmii_rx_zq.delay_rgmii_rx_ctl_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rgmii_rx_ctl_delay),
        .IDATAIN(rgmii_rx_ctl),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* XILINX_LEGACY_PRIM = "IODELAYE1" *) 
  (* XILINX_TRANSFORM_PINMAP = "RST:LD" *) 
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(16),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \gen_rgmii_rx_zq.rxdata_bus[0].delay_rgmii_rxd 
       (.C(1'b0),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_gen_rgmii_rx_zq.rxdata_bus[0].delay_rgmii_rxd_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rgmii_rxd_delay_0),
        .IDATAIN(rgmii_rxd[0]),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* XILINX_LEGACY_PRIM = "IODELAYE1" *) 
  (* XILINX_TRANSFORM_PINMAP = "RST:LD" *) 
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(16),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \gen_rgmii_rx_zq.rxdata_bus[1].delay_rgmii_rxd 
       (.C(1'b0),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_gen_rgmii_rx_zq.rxdata_bus[1].delay_rgmii_rxd_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rgmii_rxd_delay_1),
        .IDATAIN(rgmii_rxd[1]),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* XILINX_LEGACY_PRIM = "IODELAYE1" *) 
  (* XILINX_TRANSFORM_PINMAP = "RST:LD" *) 
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(16),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \gen_rgmii_rx_zq.rxdata_bus[2].delay_rgmii_rxd 
       (.C(1'b0),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_gen_rgmii_rx_zq.rxdata_bus[2].delay_rgmii_rxd_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rgmii_rxd_delay_2),
        .IDATAIN(rgmii_rxd[2]),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* XILINX_LEGACY_PRIM = "IODELAYE1" *) 
  (* XILINX_TRANSFORM_PINMAP = "RST:LD" *) 
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(16),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \gen_rgmii_rx_zq.rxdata_bus[3].delay_rgmii_rxd 
       (.C(1'b0),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_gen_rgmii_rx_zq.rxdata_bus[3].delay_rgmii_rxd_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rgmii_rxd_delay_3),
        .IDATAIN(rgmii_rxd[3]),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* __SRVAL = "FALSE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_rgmii_txc.gen_rgmii_txc_zq.rgmii_txc_out 
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(rgmii_txc),
        .R(tx_reset_sync_5),
        .S(\NLW_gen_rgmii_txc.gen_rgmii_txc_zq.rgmii_txc_out_S_UNCONNECTED ));
  (* __SRVAL = "FALSE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_rgmii_txdata_zq.rgmii_tx_ctl_out 
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D1(D1),
        .D2(D2),
        .Q(rgmii_tx_ctl),
        .R(tx_reset_sync_5),
        .S(\NLW_gen_rgmii_txdata_zq.rgmii_tx_ctl_out_S_UNCONNECTED ));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_rgmii_txdata_zq.rgmii_tx_ctl_out_i_1 
       (.I0(D1),
        .I1(gmii_tx_er_int),
        .O(D2));
  (* __SRVAL = "FALSE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_rgmii_txdata_zq.txdata_out_bus[0].rgmii_txd_out 
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D1(gmii_txd_int[0]),
        .D2(\gen_rgmii_txdata_zq.txdata_out_bus[0].rgmii_txd_out_i_1_n_0 ),
        .Q(rgmii_txd[0]),
        .R(tx_reset_sync_5),
        .S(\NLW_gen_rgmii_txdata_zq.txdata_out_bus[0].rgmii_txd_out_S_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rgmii_txdata_zq.txdata_out_bus[0].rgmii_txd_out_i_1 
       (.I0(gmii_txd_int[4]),
        .I1(\SPEED_SELECTION_REG_reg[1] ),
        .I2(gmii_txd_int[0]),
        .O(\gen_rgmii_txdata_zq.txdata_out_bus[0].rgmii_txd_out_i_1_n_0 ));
  (* __SRVAL = "FALSE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_rgmii_txdata_zq.txdata_out_bus[1].rgmii_txd_out 
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D1(gmii_txd_int[1]),
        .D2(\gen_rgmii_txdata_zq.txdata_out_bus[1].rgmii_txd_out_i_1_n_0 ),
        .Q(rgmii_txd[1]),
        .R(tx_reset_sync_5),
        .S(\NLW_gen_rgmii_txdata_zq.txdata_out_bus[1].rgmii_txd_out_S_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rgmii_txdata_zq.txdata_out_bus[1].rgmii_txd_out_i_1 
       (.I0(gmii_txd_int[5]),
        .I1(\SPEED_SELECTION_REG_reg[1] ),
        .I2(gmii_txd_int[1]),
        .O(\gen_rgmii_txdata_zq.txdata_out_bus[1].rgmii_txd_out_i_1_n_0 ));
  (* __SRVAL = "FALSE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_rgmii_txdata_zq.txdata_out_bus[2].rgmii_txd_out 
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D1(gmii_txd_int[2]),
        .D2(\gen_rgmii_txdata_zq.txdata_out_bus[2].rgmii_txd_out_i_1_n_0 ),
        .Q(rgmii_txd[2]),
        .R(tx_reset_sync_5),
        .S(\NLW_gen_rgmii_txdata_zq.txdata_out_bus[2].rgmii_txd_out_S_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rgmii_txdata_zq.txdata_out_bus[2].rgmii_txd_out_i_1 
       (.I0(gmii_txd_int[6]),
        .I1(\SPEED_SELECTION_REG_reg[1] ),
        .I2(gmii_txd_int[2]),
        .O(\gen_rgmii_txdata_zq.txdata_out_bus[2].rgmii_txd_out_i_1_n_0 ));
  (* __SRVAL = "FALSE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_rgmii_txdata_zq.txdata_out_bus[3].rgmii_txd_out 
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D1(gmii_txd_int[3]),
        .D2(\gen_rgmii_txdata_zq.txdata_out_bus[3].rgmii_txd_out_i_1_n_0 ),
        .Q(rgmii_txd[3]),
        .R(tx_reset_sync_5),
        .S(\NLW_gen_rgmii_txdata_zq.txdata_out_bus[3].rgmii_txd_out_S_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rgmii_txdata_zq.txdata_out_bus[3].rgmii_txd_out_i_1 
       (.I0(gmii_txd_int[7]),
        .I1(\SPEED_SELECTION_REG_reg[1] ),
        .I2(gmii_txd_int[3]),
        .O(\gen_rgmii_txdata_zq.txdata_out_bus[3].rgmii_txd_out_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0E0E0E00)) 
    gmii_col_INST_0
       (.I0(gmii_tx_er_int),
        .I1(D1),
        .I2(DUPLEX_MODE_REG),
        .I3(\gen_rgmii_rx_iddr_zq.rgmii_rx_ctl_in__0 ),
        .I4(gmii_rx_dv),
        .O(gmii_col));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    gmii_crs_INST_0
       (.I0(\gen_rgmii_rx_iddr_zq.rgmii_rx_ctl_in__0 ),
        .I1(gmii_rx_dv),
        .I2(D1),
        .I3(gmii_tx_er_int),
        .I4(DUPLEX_MODE_REG),
        .O(gmii_crs));
  LUT2 #(
    .INIT(4'h6)) 
    gmii_rx_er_INST_0
       (.I0(gmii_rx_dv),
        .I1(\gen_rgmii_rx_iddr_zq.rgmii_rx_ctl_in__0 ),
        .O(gmii_rx_er));
  FDRE gmii_tx_en_int_reg
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(gmii_tx_en),
        .Q(D1),
        .R(tx_reset_sync_5));
  FDRE gmii_tx_er_int_reg
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(gmii_tx_er),
        .Q(gmii_tx_er_int),
        .R(tx_reset_sync_5));
  FDRE \gmii_txd_int_reg[0] 
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(gmii_txd[0]),
        .Q(gmii_txd_int[0]),
        .R(tx_reset_sync_5));
  FDRE \gmii_txd_int_reg[1] 
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(gmii_txd[1]),
        .Q(gmii_txd_int[1]),
        .R(tx_reset_sync_5));
  FDRE \gmii_txd_int_reg[2] 
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(gmii_txd[2]),
        .Q(gmii_txd_int[2]),
        .R(tx_reset_sync_5));
  FDRE \gmii_txd_int_reg[3] 
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(gmii_txd[3]),
        .Q(gmii_txd_int[3]),
        .R(tx_reset_sync_5));
  FDRE \gmii_txd_int_reg[4] 
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(gmii_txd[4]),
        .Q(gmii_txd_int[4]),
        .R(tx_reset_sync_5));
  FDRE \gmii_txd_int_reg[5] 
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(gmii_txd[5]),
        .Q(gmii_txd_int[5]),
        .R(tx_reset_sync_5));
  FDRE \gmii_txd_int_reg[6] 
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(gmii_txd[6]),
        .Q(gmii_txd_int[6]),
        .R(tx_reset_sync_5));
  FDRE \gmii_txd_int_reg[7] 
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(gmii_txd[7]),
        .Q(gmii_txd_int[7]),
        .R(tx_reset_sync_5));
  system_gmii_to_rgmii_0_0_reset_sync_2 i_reset_sync_rx_reset
       (.CLK(gmii_rx_clk),
        .reset_in(reset_in),
        .reset_out(rx_reset_sync_11));
  system_gmii_to_rgmii_0_0_reset_sync_3 i_reset_sync_tx_reset
       (.gmii_tx_clk(gmii_tx_clk),
        .reset_out(tx_reset_sync_5),
        .tx_reset_async_reg(tx_reset_async_reg));
  LUT2 #(
    .INIT(4'h1)) 
    link_status_i_1
       (.I0(gmii_rx_dv),
        .I1(\gen_rgmii_rx_iddr_zq.rgmii_rx_ctl_in__0 ),
        .O(inband_ce));
  FDRE link_status_reg
       (.C(gmii_rx_clk),
        .CE(inband_ce),
        .D(gmii_rxd[0]),
        .Q(link_status),
        .R(rx_reset_sync_11));
endmodule

(* C_DEVICE_TYPE = "0" *) (* C_PHYADDR = "5'b01000" *) (* C_RGMII_TXC_ODELAY_VAL = "0" *) 
(* C_RGMII_TXC_SKEW_EN = "0" *) (* ORIG_REF_NAME = "gmii_to_rgmii_v4_0_5" *) 
module system_gmii_to_rgmii_0_0_gmii_to_rgmii_v4_0_5
   (tx_reset,
    rx_reset,
    ref_clk,
    gmii_tx_clk,
    gmii_tx_clk_90,
    speed_mode,
    gmii_tx_en,
    gmii_txd,
    gmii_tx_er,
    gmii_crs,
    gmii_col,
    gmii_rx_clk,
    gmii_rx_dv,
    gmii_rxd,
    gmii_rx_er,
    mdio_gem_mdc,
    mdio_gem_i,
    mdio_gem_o,
    mdio_gem_t,
    link_status,
    clock_speed,
    duplex_status,
    rgmii_txc,
    rgmii_tx_ctl,
    rgmii_txd,
    rgmii_rxc,
    rgmii_rx_ctl,
    rgmii_rxd,
    mdio_phy_mdc,
    mdio_phy_i,
    mdio_phy_o,
    mdio_phy_t);
  input tx_reset;
  input rx_reset;
  input ref_clk;
  input gmii_tx_clk;
  input gmii_tx_clk_90;
  output [1:0]speed_mode;
  input gmii_tx_en;
  input [7:0]gmii_txd;
  input gmii_tx_er;
  output gmii_crs;
  output gmii_col;
  output gmii_rx_clk;
  output gmii_rx_dv;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  input mdio_gem_mdc;
  output mdio_gem_i;
  input mdio_gem_o;
  input mdio_gem_t;
  output link_status;
  output [1:0]clock_speed;
  output duplex_status;
  output rgmii_txc;
  output rgmii_tx_ctl;
  output [3:0]rgmii_txd;
  input rgmii_rxc;
  input rgmii_rx_ctl;
  input [3:0]rgmii_rxd;
  output mdio_phy_mdc;
  input mdio_phy_i;
  output mdio_phy_o;
  output mdio_phy_t;

  wire \<const0> ;
  wire [1:0]clock_speed;
  wire duplex_status;
  wire gmii_col;
  wire gmii_crs;
  wire gmii_rx_clk;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_clk;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire link_status;
  wire mdio_gem_i;
  wire mdio_gem_mdc;
  wire mdio_gem_o;
  wire mdio_phy_i;
  wire ref_clk;
  wire rgmii_rx_ctl;
  wire rgmii_rxc;
  wire [3:0]rgmii_rxd;
  wire rgmii_tx_ctl;
  wire rgmii_txc;
  wire [3:0]rgmii_txd;
  wire rx_reset;
  wire [1:0]speed_mode;
  wire tx_reset;

  assign mdio_phy_mdc = \<const0> ;
  assign mdio_phy_o = \<const0> ;
  assign mdio_phy_t = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_gmii_to_rgmii_0_0_gmii_to_rgmii i_gmii_to_rgmii
       (.clock_speed(clock_speed),
        .duplex_status(duplex_status),
        .gmii_col(gmii_col),
        .gmii_crs(gmii_crs),
        .gmii_rx_clk(gmii_rx_clk),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_clk(gmii_tx_clk),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .link_status(link_status),
        .mdio_gem_i(mdio_gem_i),
        .mdio_gem_mdc(mdio_gem_mdc),
        .mdio_gem_o(mdio_gem_o),
        .mdio_phy_i(mdio_phy_i),
        .ref_clk(ref_clk),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_rxd(rgmii_rxd),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc),
        .rgmii_txd(rgmii_txd),
        .rx_reset(rx_reset),
        .speed_mode(speed_mode[0]),
        .\speed_mode[1] (speed_mode[1]),
        .tx_reset(tx_reset));
endmodule

(* ORIG_REF_NAME = "reset_sync" *) 
module system_gmii_to_rgmii_0_0_reset_sync
   (reset_out,
    ref_clk,
    reset_in);
  output reset_out;
  input ref_clk;
  input reset_in;

  wire ref_clk;
  wire reset_in;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(ref_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_in),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(reset_in),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(reset_in),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(reset_in),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(reset_in),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "reset_sync" *) 
module system_gmii_to_rgmii_0_0_reset_sync_0
   (rx_reset0,
    reset_out,
    soft_reset,
    ref_clk,
    rx_reset);
  output rx_reset0;
  output reset_out;
  input soft_reset;
  input ref_clk;
  input rx_reset;

  wire ref_clk;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire rx_reset;
  wire rx_reset0;
  wire soft_reset;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(ref_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rx_reset),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(rx_reset),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(rx_reset),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(rx_reset),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(rx_reset),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
  LUT2 #(
    .INIT(4'hE)) 
    rx_reset_async_i_1
       (.I0(reset_out),
        .I1(soft_reset),
        .O(rx_reset0));
endmodule

(* ORIG_REF_NAME = "reset_sync" *) 
module system_gmii_to_rgmii_0_0_reset_sync_1
   (reset_out,
    ref_clk,
    tx_reset);
  output reset_out;
  input ref_clk;
  input tx_reset;

  wire ref_clk;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire tx_reset;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(ref_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(tx_reset),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(tx_reset),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(tx_reset),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(tx_reset),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(tx_reset),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(ref_clk),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "reset_sync" *) 
module system_gmii_to_rgmii_0_0_reset_sync_2
   (reset_out,
    CLK,
    reset_in);
  output reset_out;
  input CLK;
  input reset_in;

  wire CLK;
  wire reset_in;
  wire reset_out;
  wire reset_sync_reg1_6;
  wire reset_sync_reg2_7;
  wire reset_sync_reg3_8;
  wire reset_sync_reg4_9;
  wire reset_sync_reg5_10;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_in),
        .Q(reset_sync_reg1_6));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(CLK),
        .CE(1'b1),
        .D(reset_sync_reg1_6),
        .PRE(reset_in),
        .Q(reset_sync_reg2_7));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(CLK),
        .CE(1'b1),
        .D(reset_sync_reg2_7),
        .PRE(reset_in),
        .Q(reset_sync_reg3_8));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(CLK),
        .CE(1'b1),
        .D(reset_sync_reg3_8),
        .PRE(reset_in),
        .Q(reset_sync_reg4_9));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(CLK),
        .CE(1'b1),
        .D(reset_sync_reg4_9),
        .PRE(reset_in),
        .Q(reset_sync_reg5_10));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(CLK),
        .CE(1'b1),
        .D(reset_sync_reg5_10),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "reset_sync" *) 
module system_gmii_to_rgmii_0_0_reset_sync_3
   (reset_out,
    gmii_tx_clk,
    tx_reset_async_reg);
  output reset_out;
  input gmii_tx_clk;
  input tx_reset_async_reg;

  wire gmii_tx_clk;
  wire reset_out;
  wire reset_sync_reg1_0;
  wire reset_sync_reg2_1;
  wire reset_sync_reg3_2;
  wire reset_sync_reg4_3;
  wire reset_sync_reg5_4;
  wire tx_reset_async_reg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(tx_reset_async_reg),
        .Q(reset_sync_reg1_0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(reset_sync_reg1_0),
        .PRE(tx_reset_async_reg),
        .Q(reset_sync_reg2_1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(reset_sync_reg2_1),
        .PRE(tx_reset_async_reg),
        .Q(reset_sync_reg3_2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(reset_sync_reg3_2),
        .PRE(tx_reset_async_reg),
        .Q(reset_sync_reg4_3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(reset_sync_reg4_3),
        .PRE(tx_reset_async_reg),
        .Q(reset_sync_reg5_4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(gmii_tx_clk),
        .CE(1'b1),
        .D(reset_sync_reg5_4),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "sync_block" *) 
module system_gmii_to_rgmii_0_0_sync_block
   (MDC_RISING_REG1_reg,
    data_out,
    MDC_REG3,
    mdio_gem_mdc,
    ref_clk);
  output MDC_RISING_REG1_reg;
  output data_out;
  input MDC_REG3;
  input mdio_gem_mdc;
  input ref_clk;

  wire MDC_REG3;
  wire MDC_RISING_REG1_reg;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire mdio_gem_mdc;
  wire ref_clk;

  LUT2 #(
    .INIT(4'h2)) 
    MDC_RISING_REG1_i_1
       (.I0(data_out),
        .I1(MDC_REG3),
        .O(MDC_RISING_REG1_reg));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(ref_clk),
        .CE(1'b1),
        .D(mdio_gem_mdc),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(ref_clk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(ref_clk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(ref_clk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(ref_clk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(ref_clk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sync_block" *) 
module system_gmii_to_rgmii_0_0_sync_block_4
   (data_out,
    mdio_gem_o,
    ref_clk);
  output data_out;
  input mdio_gem_o;
  input ref_clk;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire mdio_gem_o;
  wire ref_clk;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(ref_clk),
        .CE(1'b1),
        .D(mdio_gem_o),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(ref_clk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(ref_clk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(ref_clk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(ref_clk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(ref_clk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
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
