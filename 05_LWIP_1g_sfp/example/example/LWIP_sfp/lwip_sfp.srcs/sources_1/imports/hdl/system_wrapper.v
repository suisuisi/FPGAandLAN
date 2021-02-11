//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
//Date        : Mon Nov 06 09:43:30 2017
//Host        : DESKTOP-R87O9AN running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,

    gtrefclk_in_clk_n,
    gtrefclk_in_clk_p,
    sfp_rxn,
    sfp_rxp,
    sfp_txn,
    sfp_txp,
	sfp_tx_disable,	
	led
	);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;

  input gtrefclk_in_clk_n;
  input gtrefclk_in_clk_p;
  input sfp_rxn;
  input sfp_rxp;
  output sfp_txn;
  output sfp_txp;
  output sfp_tx_disable;
  output [3:0] led;


  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [15:0]an_adv_config_vector;
  wire [4:0]configuration_vector;
  wire gtrefclk_in_clk_n;
  wire gtrefclk_in_clk_p;
  wire sfp_rxn;
  wire sfp_rxp;
  wire sfp_txn;
  wire sfp_txp;
  wire sfp_tx_disable;
  wire [15:0]status_vector;
  
  assign sfp_tx_disable = 1'b0;
  
  assign an_adv_config_vector = 16'b0000000000100001;
  assign configuration_vector[1:0] = 2'h0;   // Disable Loopback
  assign configuration_vector[2]   = 1'b0;   // Disable POWERDOWN
  assign configuration_vector[3]   = 1'b0;   // Disable ISOLATE
  assign configuration_vector[4]   = 1'b1;   // Enable  Auto-Neg
  
  assign  led[0] = status_vector[0];  //link status
  assign  led[1] = status_vector[1];  //Link Synchronization
  
  assign  led[2] = 1'b0;
  assign  led[3] = 1'b0;
  

  system system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .an_adv_config_vector(an_adv_config_vector),
        .configuration_vector(configuration_vector),
        .gtrefclk_in_clk_n(gtrefclk_in_clk_n),
        .gtrefclk_in_clk_p(gtrefclk_in_clk_p),
        .sfp_rxn(sfp_rxn),
        .sfp_rxp(sfp_rxp),
        .sfp_txn(sfp_txn),
        .sfp_txp(sfp_txp),
        .status_vector(status_vector));
endmodule
