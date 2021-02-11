//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
//Date        : Tue Nov 07 21:00:45 2017
//Host        : asus-PC running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
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
    an_adv_config_vector,
    configuration_vector,
    gtrefclk_in_clk_n,
    gtrefclk_in_clk_p,
    sfp_rxn,
    sfp_rxp,
    sfp_txn,
    sfp_txp,
    status_vector);
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
  input [15:0]an_adv_config_vector;
  input [4:0]configuration_vector;
  input gtrefclk_in_clk_n;
  input gtrefclk_in_clk_p;
  input sfp_rxn;
  input sfp_rxp;
  output sfp_txn;
  output sfp_txp;
  output [15:0]status_vector;

  wire [15:0]an_adv_config_vector_1;
  wire [4:0]configuration_vector_1;
  wire gig_ethernet_pcs_pma_0_gmii_rx_dv;
  wire gig_ethernet_pcs_pma_0_gmii_rx_er;
  wire [7:0]gig_ethernet_pcs_pma_0_gmii_rxd;
  wire gig_ethernet_pcs_pma_0_mdio_o;
  wire gig_ethernet_pcs_pma_0_sfp_RXN;
  wire gig_ethernet_pcs_pma_0_sfp_RXP;
  wire gig_ethernet_pcs_pma_0_sfp_TXN;
  wire gig_ethernet_pcs_pma_0_sfp_TXP;
  wire [15:0]gig_ethernet_pcs_pma_0_status_vector;
  wire gig_ethernet_pcs_pma_0_userclk2_out;
  wire gtrefclk_in_1_CLK_N;
  wire gtrefclk_in_1_CLK_P;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire [7:0]processing_system7_0_ENET1_GMII_TXD;
  wire [0:0]processing_system7_0_ENET1_GMII_TX_EN;
  wire [0:0]processing_system7_0_ENET1_GMII_TX_ER;
  wire processing_system7_0_ENET1_MDIO_MDC;
  wire processing_system7_0_ENET1_MDIO_O;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [4:0]xlconstant_2_dout;

  assign an_adv_config_vector_1 = an_adv_config_vector[15:0];
  assign configuration_vector_1 = configuration_vector[4:0];
  assign gig_ethernet_pcs_pma_0_sfp_RXN = sfp_rxn;
  assign gig_ethernet_pcs_pma_0_sfp_RXP = sfp_rxp;
  assign gtrefclk_in_1_CLK_N = gtrefclk_in_clk_n;
  assign gtrefclk_in_1_CLK_P = gtrefclk_in_clk_p;
  assign sfp_txn = gig_ethernet_pcs_pma_0_sfp_TXN;
  assign sfp_txp = gig_ethernet_pcs_pma_0_sfp_TXP;
  assign status_vector[15:0] = gig_ethernet_pcs_pma_0_status_vector;
  system_gig_ethernet_pcs_pma_0_0 gig_ethernet_pcs_pma_0
       (.an_adv_config_val(xlconstant_0_dout),
        .an_adv_config_vector(an_adv_config_vector_1),
        .an_restart_config(xlconstant_0_dout),
        .configuration_valid(xlconstant_0_dout),
        .configuration_vector(configuration_vector_1),
        .gmii_rx_dv(gig_ethernet_pcs_pma_0_gmii_rx_dv),
        .gmii_rx_er(gig_ethernet_pcs_pma_0_gmii_rx_er),
        .gmii_rxd(gig_ethernet_pcs_pma_0_gmii_rxd),
        .gmii_tx_en(processing_system7_0_ENET1_GMII_TX_EN),
        .gmii_tx_er(processing_system7_0_ENET1_GMII_TX_ER),
        .gmii_txd(processing_system7_0_ENET1_GMII_TXD),
        .gtrefclk_n(gtrefclk_in_1_CLK_N),
        .gtrefclk_p(gtrefclk_in_1_CLK_P),
        .independent_clock_bufg(processing_system7_0_FCLK_CLK0),
        .mdc(processing_system7_0_ENET1_MDIO_MDC),
        .mdio_i(processing_system7_0_ENET1_MDIO_O),
        .mdio_o(gig_ethernet_pcs_pma_0_mdio_o),
        .phyaddr(xlconstant_2_dout),
        .reset(util_vector_logic_0_Res),
        .rxn(gig_ethernet_pcs_pma_0_sfp_RXN),
        .rxp(gig_ethernet_pcs_pma_0_sfp_RXP),
        .signal_detect(xlconstant_1_dout),
        .status_vector(gig_ethernet_pcs_pma_0_status_vector),
        .txn(gig_ethernet_pcs_pma_0_sfp_TXN),
        .txp(gig_ethernet_pcs_pma_0_sfp_TXP),
        .userclk2_out(gig_ethernet_pcs_pma_0_userclk2_out));
  system_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .ENET1_EXT_INTIN(1'b0),
        .ENET1_GMII_COL(xlconstant_0_dout),
        .ENET1_GMII_CRS(xlconstant_0_dout),
        .ENET1_GMII_RXD(gig_ethernet_pcs_pma_0_gmii_rxd),
        .ENET1_GMII_RX_CLK(gig_ethernet_pcs_pma_0_userclk2_out),
        .ENET1_GMII_RX_DV(gig_ethernet_pcs_pma_0_gmii_rx_dv),
        .ENET1_GMII_RX_ER(gig_ethernet_pcs_pma_0_gmii_rx_er),
        .ENET1_GMII_TXD(processing_system7_0_ENET1_GMII_TXD),
        .ENET1_GMII_TX_CLK(gig_ethernet_pcs_pma_0_userclk2_out),
        .ENET1_GMII_TX_EN(processing_system7_0_ENET1_GMII_TX_EN),
        .ENET1_GMII_TX_ER(processing_system7_0_ENET1_GMII_TX_ER),
        .ENET1_MDIO_I(gig_ethernet_pcs_pma_0_mdio_o),
        .ENET1_MDIO_MDC(processing_system7_0_ENET1_MDIO_MDC),
        .ENET1_MDIO_O(processing_system7_0_ENET1_MDIO_O),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .GPIO_I(1'b0),
        .MIO(FIXED_IO_mio[53:0]),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .USB0_VBUS_PWRFAULT(1'b0));
  system_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(processing_system7_0_FCLK_RESET0_N),
        .Res(util_vector_logic_0_Res));
  system_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  system_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  system_xlconstant_1_0 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule
