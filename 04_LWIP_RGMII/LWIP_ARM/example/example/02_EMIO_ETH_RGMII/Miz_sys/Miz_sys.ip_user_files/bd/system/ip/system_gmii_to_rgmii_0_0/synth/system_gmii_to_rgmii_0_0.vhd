--------------------------------------------------------------------------------
-- File       : system_gmii_to_rgmii_0_0.vhd
-- Author     : Xilinx Inc.
--------------------------------------------------------------------------------
-- (c) Copyright 2009 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES. 
--
-- ------------------------------------------------------------------------------
-- Description:  This module creates a version 2.0 Reduced Gigabit Media
--               Independent Interface (RGMII v2.0) by instantiating
--               Input/Output buffers and Input/Output double data rate
--               (DDR) flip-flops as required.
--
--               This interface is used to connect the Ethernet MAC to
--               an external Ethernet PHY.
--               This module routes the rgmii_rxc from the phy chip
--               (via a bufg) onto the rx_clk line.
--               For S6 a DCM is used to shift the input clock to ensure that
--               the set-up and hold times are observed.
--               For V6 a BUFIO/BUFR combination is used for the input clock to allow
--               the use of IODELAYs on the DATA.
--------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library unisim;
use unisim.vcomponents.all;

library gmii_to_rgmii_v4_0_5;
use gmii_to_rgmii_v4_0_5.all;

entity system_gmii_to_rgmii_0_0 is
  port(
    -- Asynchronous Resets
    tx_reset                      : in    std_logic;
    rx_reset                      : in    std_logic;
    -- Clocks
    clkin                         : in    std_logic;
    ref_clk_out                   : out   std_logic;
    mmcm_locked_out               : out   std_logic;
    gmii_clk_125m_out             : out   std_logic;
    gmii_clk_25m_out              : out   std_logic;
    gmii_clk_2_5m_out             : out   std_logic;
    
    
    -- Register interface: Status output
    speed_mode                    : out   std_logic_vector(1 downto 0);
    -- GMII Interface to GEM
    gmii_tx_clk                   : out   std_logic;
    gmii_tx_en                    : in    std_logic;
    gmii_txd                      : in    std_logic_vector(7 downto 0);
    gmii_tx_er                    : in    std_logic;
    gmii_crs                      : out   std_logic;
    gmii_col                      : out   std_logic;
    gmii_rx_clk                   : out   std_logic;
    gmii_rx_dv                    : out   std_logic;
    gmii_rxd                      : out   std_logic_vector(7 downto 0);
    gmii_rx_er                    : out   std_logic;
    -- MDIO Interface to GEM
    mdio_gem_mdc                  : in    std_logic;                        -- MDIO clock i/p from GEM
    mdio_gem_i                    : out   std_logic;                        -- Connect this to the MDIO_I port of GEM 
    mdio_gem_o                    : in    std_logic;                        -- Connect this to the MDIO_O Port of GEM 
    mdio_gem_t                    : in    std_logic;                        -- Connect this to the MDIO_T port of GEM 
    -- RGMII in-band status signals
    link_status                   : out   std_logic;
    clock_speed                   : out   std_logic_vector(1 downto 0);
    duplex_status                 : out   std_logic;
    -- RGMII interface: Pins on the FPGA
    rgmii_txd                     : out   std_logic_vector(3 downto 0);
    rgmii_tx_ctl                  : out   std_logic;
    rgmii_txc                     : out   std_logic;
    rgmii_rxd                     : in    std_logic_vector(3 downto 0);
    rgmii_rx_ctl                  : in    std_logic;
    rgmii_rxc                     : in    std_logic;
    -- MDIO Interface to External PHY
    mdio_phy_mdc                  : out   std_logic;                        -- MDIO clock i/p from GEM
    mdio_phy_i                    : in    std_logic;                        -- Connect this to the MDIO_I port of GEM 
    mdio_phy_o                    : out   std_logic;                        -- Connect this to the MDIO_O Port of GEM 
    mdio_phy_t                    : out   std_logic                         -- Connect this to the MDIO_T port of GEM 
  );
end system_gmii_to_rgmii_0_0;

architecture wrapper of system_gmii_to_rgmii_0_0 is

  
  component system_gmii_to_rgmii_0_0_support
  
    port(
      -- Asynchronous resets
      tx_reset                      : in    std_logic;
      rx_reset                      : in    std_logic;
      -- Clocks
      
      
      clkin                         : in    std_logic;
      ref_clk_out                   : out   std_logic;
      mmcm_locked_out               : out   std_logic;
      gmii_clk_125m_out             : out   std_logic;
      gmii_clk_25m_out              : out   std_logic; 
      gmii_clk_2_5m_out             : out   std_logic;
      
      
      -- Register interface: Status output
      speed_mode                    : out   std_logic_vector(1 downto 0);
      -- GMII Interface to GEM
      gmii_tx_clk                   : out   std_logic;
      gmii_tx_en                    : in    std_logic;
      gmii_txd                      : in    std_logic_vector(7 downto 0);
      gmii_tx_er                    : in    std_logic;
      gmii_crs                      : out   std_logic;
      gmii_col                      : out   std_logic;
      gmii_rx_clk                   : out   std_logic;
      gmii_rx_dv                    : out   std_logic;
      gmii_rxd                      : out   std_logic_vector(7 downto 0);
      gmii_rx_er                    : out   std_logic;
      -- MDIO Interface to GEM
      mdio_gem_mdc                  : in    std_logic;                        -- MDIO clock i/p from GEM
      mdio_gem_i                    : out   std_logic;                        -- Connect this to the MDIO_I port of GEM 
      mdio_gem_o                    : in    std_logic;                        -- Connect this to the MDIO_O Port of GEM 
      mdio_gem_t                    : in    std_logic;                        -- Connect this to the MDIO_T port of GEM 
      -- RGMII in-band status signals
      link_status                   : out   std_logic;
      clock_speed                   : out   std_logic_vector(1 downto 0);
      duplex_status                 : out   std_logic;
      -- RGMII interface: Pins on the FPGA
      rgmii_txd                     : out   std_logic_vector(3 downto 0);
      rgmii_tx_ctl                  : out   std_logic;
      rgmii_txc                     : out   std_logic;
      rgmii_rxd                     : in    std_logic_vector(3 downto 0);
      rgmii_rx_ctl                  : in    std_logic;
      rgmii_rxc                     : in    std_logic;
      -- MDIO Interface to External PHY
      mdio_phy_mdc                  : out   std_logic;                        -- MDIO clock i/p from GEM
      mdio_phy_i                    : in    std_logic;                        -- Connect this to the MDIO_I port of GEM 
      mdio_phy_o                    : out   std_logic;                        -- Connect this to the MDIO_O Port of GEM 
      mdio_phy_t                    : out   std_logic                         -- Connect this to the MDIO_T port of GEM 
  );
end component;      


  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF wrapper : ARCHITECTURE IS "system_gmii_to_rgmii_0_0,gmii_to_rgmii_v4_0_5,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=gmii_to_rgmii,x_ipVersion=4.0,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_EXTERNAL_CLOCK=false,C_USE_IDELAY_CTRL=true,C_PHYADDR=8,c_support_level=true}";
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF wrapper: ARCHITECTURE IS "gmii_to_rgmii_v4_0_5,Vivado 2017.4";

begin

  U0: system_gmii_to_rgmii_0_0_support
    port map(
      -- Asynchronous resets
      tx_reset                      => tx_reset,
      rx_reset                      => rx_reset, 
      -- Clocks   
      
      
      clkin                         => clkin,
      ref_clk_out                   => ref_clk_out,
      mmcm_locked_out               => mmcm_locked_out,
      gmii_clk_125m_out             => gmii_clk_125m_out, 
      gmii_clk_25m_out              => gmii_clk_25m_out, 
      gmii_clk_2_5m_out             => gmii_clk_2_5m_out, 
      
      
      -- Register interface: Status output
      speed_mode                    => speed_mode,
      -- GMII Interface to GEM
      gmii_tx_clk                   => gmii_tx_clk,
      gmii_tx_en                    => gmii_tx_en, 
      gmii_txd                      => gmii_txd, 
      gmii_tx_er                    => gmii_tx_er, 
      gmii_crs                      => gmii_crs, 
      gmii_col                      => gmii_col, 
      gmii_rx_clk                   => gmii_rx_clk, 
      gmii_rx_dv                    => gmii_rx_dv, 
      gmii_rxd                      => gmii_rxd, 
      gmii_rx_er                    => gmii_rx_er, 
      -- MDIO Interface to GEM
      mdio_gem_mdc                  => mdio_gem_mdc, 
      mdio_gem_i                    => mdio_gem_i, 
      mdio_gem_o                    => mdio_gem_o, 
      mdio_gem_t                    => mdio_gem_t, 
      -- RGMII in-band status signals
      link_status                   => link_status, 
      clock_speed                   => clock_speed, 
      duplex_status                 => duplex_status, 
      -- RGMII interface: Pins on the FPGA
      rgmii_txc                     => rgmii_txc, 
      rgmii_tx_ctl                  => rgmii_tx_ctl, 
      rgmii_txd                     => rgmii_txd, 
      rgmii_rxc                     => rgmii_rxc, 
      rgmii_rx_ctl                  => rgmii_rx_ctl, 
      rgmii_rxd                     => rgmii_rxd, 
      -- MDIO Interface to external PHY
      mdio_phy_mdc                  => mdio_phy_mdc, 
      mdio_phy_i                    => mdio_phy_i, 
      mdio_phy_o                    => mdio_phy_o, 
      mdio_phy_t                    => mdio_phy_t 
    );

end  wrapper;

