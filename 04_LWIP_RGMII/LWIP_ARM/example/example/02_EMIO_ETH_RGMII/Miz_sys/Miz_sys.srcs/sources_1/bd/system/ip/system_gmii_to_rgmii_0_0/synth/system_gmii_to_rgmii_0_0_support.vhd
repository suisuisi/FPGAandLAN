--------------------------------------------------------------------------------
-- File       : system_gmii_to_rgmii_0_0_support.vhd
-- Author     : Xilinx Inc.
--------------------------------------------------------------------------------
-- (c) Copyright 2011 Xilinx, Inc. All rights reserved.
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
-- 
--------------------------------------------------------------------------------
-- Description: This module holds the support level for the gmii_to_rgmii core
--              This can be used as-is in a single core design, or adapted
--              for use with multi-core implementations
--
--
--
library ieee;
use ieee.std_logic_1164.all;

library unisim;
use unisim.vcomponents.all;

entity system_gmii_to_rgmii_0_0_support is
  port(
    -- Asynchronous resets
    tx_reset                      : in    std_logic;
    rx_reset                      : in    std_logic;
    -- Clocks
    clkin                         : in    std_logic;          -- 200 MHz free running clock
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
end system_gmii_to_rgmii_0_0_support;

architecture wrapper of system_gmii_to_rgmii_0_0_support is

  component  system_gmii_to_rgmii_0_0_clocking
    port(
      clkin               : in  std_logic;               -- 200 MHz free running clock
      clkin_out           : out std_logic;               -- clkin passed thru BUFG
      reset               : in  std_logic;
      mmcm_locked         : out std_logic;
      gmii_clk_125m       : out std_logic;               -- 125 MHz clock
      gmii_clk_25m        : out std_logic;               -- 25 MHz clock
      gmii_clk_2_5m       : out std_logic                -- 2.5 MHz clock
    
    );
  end component;

  
  component system_gmii_to_rgmii_0_0_resets
    port(
      reset             : in  std_logic;                -- Async reset
      ref_clk           : in  std_logic;                -- Reference clock to IDELAYCTRL
      idelayctrl_reset  : out std_logic
    );
  end component;   
  

  
  component system_gmii_to_rgmii_0_0_block
    port(
      -- Asynchronous resets
      tx_reset                      : in    std_logic;
      rx_reset                      : in    std_logic;
      -- Clocks
      ref_clk_in                    : in    std_logic;
    
      mmcm_locked_in                : in    std_logic;
      gmii_clk_125m_in              : in    std_logic;
      gmii_clk_25m_in               : in    std_logic; 
      gmii_clk_2_5m_in              : in    std_logic;
      
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

  -- Signals for local interconnect
  signal ref_clk_i            : std_logic;
  signal mmcm_locked_i        : std_logic;
  signal gmii_clk_125m_i      : std_logic;
  signal gmii_clk_25m_i       : std_logic;
  signal gmii_clk_2_5m_i      : std_logic;
  
  signal async_reset          : std_logic;
  signal idelayctrl_reset_i   : std_logic;
  


begin

  i_system_gmii_to_rgmii_0_0_clocking: system_gmii_to_rgmii_0_0_clocking
    port map(
      clkin            => clkin,
      clkin_out        => ref_clk_i,
      reset            => tx_reset,
      mmcm_locked      => mmcm_locked_i,
      gmii_clk_125m    => gmii_clk_125m_i,
      gmii_clk_25m     => gmii_clk_25m_i,
      gmii_clk_2_5m    => gmii_clk_2_5m_i
    
    );  

  -- Assign to GMII clock(s) to O/P port
  ref_clk_out          <= ref_clk_i;
  mmcm_locked_out      <= mmcm_locked_i; 
  gmii_clk_125m_out    <= gmii_clk_125m_i;
  gmii_clk_25m_out     <= gmii_clk_25m_i;
  gmii_clk_2_5m_out    <= gmii_clk_2_5m_i;

  async_reset <= tx_reset or rx_reset;

  i_system_gmii_to_rgmii_0_0_resets: system_gmii_to_rgmii_0_0_resets
    port map(
      reset             => async_reset,
      ref_clk           => ref_clk_i,
      idelayctrl_reset  => idelayctrl_reset_i
    );

  i_system_gmii_to_rgmii_0_0_idelayctrl: IDELAYCTRL
   generic map(
      SIM_DEVICE => "7SERIES"
   )
    port map(
      RDY     => open,
      REFCLK  => ref_clk_i,
      RST     => idelayctrl_reset_i
    );

    
  i_gmii_to_rgmii_block: system_gmii_to_rgmii_0_0_block
    port map(
      -- Asynchronous resets
      tx_reset                      => tx_reset,
      rx_reset                      => rx_reset,
      -- Clocks
      ref_clk_in                    => ref_clk_i,
    
      mmcm_locked_in                => mmcm_locked_i,
      gmii_clk_125m_in              => gmii_clk_125m_i, 
      gmii_clk_25m_in               => gmii_clk_25m_i,  
      gmii_clk_2_5m_in              => gmii_clk_2_5m_i, 
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
      rgmii_txd                     => rgmii_txd, 
      rgmii_tx_ctl                  => rgmii_tx_ctl, 
      rgmii_txc                     => rgmii_txc, 
      rgmii_rxd                     => rgmii_rxd, 
      rgmii_rx_ctl                  => rgmii_rx_ctl, 
      rgmii_rxc                     => rgmii_rxc, 
      -- MDIO Interface to external PHY
      mdio_phy_mdc                  => mdio_phy_mdc, 
      mdio_phy_i                    => mdio_phy_i, 
      mdio_phy_o                    => mdio_phy_o, 
      mdio_phy_t                    => mdio_phy_t 
    );

end wrapper;    
 
