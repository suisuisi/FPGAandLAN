--------------------------------------------------------------------------------
-- File       : system_gmii_to_rgmii_0_0_block.vhd
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
-- This is based on Coregen Wrappers from ISE O.40c (13.1)
-- Wrapper version 5.1
-------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

library gmii_to_rgmii_v4_0_5;
use gmii_to_rgmii_v4_0_5.all;

--------------------------------------------------------------------------------
-- The entity declaration for the PHY IF design.
--------------------------------------------------------------------------------

entity system_gmii_to_rgmii_0_0_block is
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
end system_gmii_to_rgmii_0_0_block;

architecture block_level of system_gmii_to_rgmii_0_0_block is

  component gmii_to_rgmii_v4_0_5 is
    generic(
      C_RGMII_TXC_SKEW_EN       : integer range 0 to 2  := 0;
      C_RGMII_TXC_ODELAY_VAL    : integer range 0 to 1250 := 26;                --@ 200MHz REFCLK, 1 tap = 78ps delay
      C_DEVICE_TYPE             : integer range 0 to 31  := 0;
      C_PHYADDR                 : std_logic_vector(4 downto 0) := "01000"
    );
    port(
      -- ASynchronous resets
      tx_reset                      : in    std_logic;
      rx_reset                      : in    std_logic;
      -- Clock inputs
      ref_clk                       : in    std_logic; 
      gmii_tx_clk                   : in    std_logic;                        -- This clock will be 125/25/2.5 MHz for 1000/100/10 Mbps line rates 
      gmii_tx_clk_90                : in    std_logic;                        -- This clock is gmii_tx_clk with 90 degrees phase shift 
      -- Register interface: Status output
      speed_mode                    : out   std_logic_vector(1 downto 0);
      -- GMII Interface to GEM
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
      rgmii_txc                     : out   std_logic;
      rgmii_tx_ctl                  : out   std_logic;
      rgmii_txd                     : out   std_logic_vector(3 downto 0);
      rgmii_rxc                     : in    std_logic;
      rgmii_rx_ctl                  : in    std_logic;
      rgmii_rxd                     : in    std_logic_vector(3 downto 0);
      -- MDIO Interface to External PHY
      mdio_phy_mdc                  : out   std_logic;                        -- MDIO clock i/p from GEM
      mdio_phy_i                    : in    std_logic;                        -- Connect this to the MDIO_I port of GEM 
      mdio_phy_o                    : out   std_logic;                        -- Connect this to the MDIO_O Port of GEM 
      mdio_phy_t                    : out   std_logic                         -- Connect this to the MDIO_T port of GEM 
    );
  end component;

  -- Signals for local interconnect
  signal gmii_tx_clk_i         : std_logic;
  signal speed_mode_i          : std_logic_vector(1 downto 0);
  signal gmii_clk_25m_or_2_5m  : std_logic;
  
  signal rgmii_txd_obuf       : std_logic_vector(3 downto 0);
  signal rgmii_tx_ctl_obuf    : std_logic;
  signal rgmii_txc_obuf       : std_logic;
  signal rgmii_rxd_ibuf       : std_logic_vector(3 downto 0);
  signal rgmii_rx_ctl_ibuf    : std_logic;
  signal rgmii_rxc_ibuf       : std_logic;
  signal tx_reset_mod         : std_logic;

begin

  -- Mux out the TX clock depending on the line rate
  -- Muxing is done at 2 levels

  i_bufgmux_gmii_clk_25m_2_5m: BUFGMUX
    port map(
      I0 => gmii_clk_2_5m_in,
      I1 => gmii_clk_25m_in,
      S  => speed_mode_i(0),
      O  => gmii_clk_25m_or_2_5m
    );

  i_bufgmux_gmii_clk: BUFGMUX
    port map(
      I0 => gmii_clk_25m_or_2_5m,
      I1 => gmii_clk_125m_in,
      S  => speed_mode_i(1),
      O  => gmii_tx_clk_i
    );

    

   rgmii_txc_obuf_i : OBUF 
   port map (
      I              => rgmii_txc_obuf,
      O              => rgmii_txc
   );
  
   rgmii_tx_ctl_obuf_i : OBUF 
   port map (
      I              => rgmii_tx_ctl_obuf,
      O              => rgmii_tx_ctl
   );
  
   obuf_data: for LOOPA in 3 downto 0 generate
       rgmii_txd_obuf_i : OBUF  
       port map (
          I              => rgmii_txd_obuf(LOOPA),
          O              => rgmii_txd(LOOPA)
       );
   end generate;  
  
   rgmii_rxc_ibuf_i : IBUF 
   port map (
      I              => rgmii_rxc,
      O              => rgmii_rxc_ibuf
   );
  
   rgmii_rx_ctl_ibuf_i : IBUF 
   port map (
      I              => rgmii_rx_ctl,
      O              => rgmii_rx_ctl_ibuf
   );
  
   ibuf_data: for LOOPI in 3 downto 0 generate
       rgmii_rxd_ibuf_i : IBUF 
       port map (
          I              => rgmii_rxd(LOOPI),
          O              => rgmii_rxd_ibuf(LOOPI)
       );
   end generate;  

  -- Instantiate the GMII to RGMII v3.0 Converter Core
  system_gmii_to_rgmii_0_0_core: gmii_to_rgmii_v4_0_5
    generic map(
      C_RGMII_TXC_SKEW_EN       => 0,
    
      C_RGMII_TXC_ODELAY_VAL    => 0,
    
      C_DEVICE_TYPE             => 0,
      C_PHYADDR                 => std_logic_vector(to_unsigned(8, 5))
    )
    port map(
     -- ASynchronous resets
     tx_reset                      => tx_reset_mod,
     rx_reset                      => rx_reset,
     -- Clock inputs
     ref_clk                       => ref_clk_in,
     gmii_tx_clk                   => gmii_tx_clk_i,
     gmii_tx_clk_90                => '0',
     -- Register interface: Status output
     speed_mode                    => speed_mode_i,
     
     -- GMII Interface to GEM
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
     rgmii_txc                     => rgmii_txc_obuf, 
     rgmii_tx_ctl                  => rgmii_tx_ctl_obuf, 
     rgmii_txd                     => rgmii_txd_obuf, 
     rgmii_rxc                     => rgmii_rxc_ibuf, 
     rgmii_rx_ctl                  => rgmii_rx_ctl_ibuf, 
     rgmii_rxd                     => rgmii_rxd_ibuf, 
     -- MDIO Interface to external PHY
     mdio_phy_mdc                  => mdio_phy_mdc, 
     mdio_phy_i                    => mdio_phy_i, 
     mdio_phy_o                    => mdio_phy_o, 
     mdio_phy_t                    => mdio_phy_t 
  );

  -- Assign to o/p ports
  speed_mode   <= speed_mode_i;
 
  gmii_tx_clk <= gmii_tx_clk_i;
   tx_reset_mod <= (NOT mmcm_locked_in) OR tx_reset;

end  block_level;

