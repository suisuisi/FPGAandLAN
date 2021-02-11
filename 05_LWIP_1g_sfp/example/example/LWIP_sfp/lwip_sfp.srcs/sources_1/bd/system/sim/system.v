//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
//Date        : Sat May 30 00:13:26 2020
//Host        : LAPTOP-8E6RLG3I running 64-bit major release  (build 9200)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "system.hwdef" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  input [15:0]an_adv_config_vector;
  input [4:0]configuration_vector;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gtrefclk_in CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gtrefclk_in, CAN_DEBUG false, FREQ_HZ 100000000" *) input gtrefclk_in_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gtrefclk_in CLK_P" *) input gtrefclk_in_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp RXN" *) input sfp_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp RXP" *) input sfp_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp TXN" *) output sfp_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp TXP" *) output sfp_txp;
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
