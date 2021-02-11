--------------------------------------------------------------------------------
-- File       : system_gmii_to_rgmii_0_0_clocking.vhd
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
-- Description: This module holds the Clocking logic for gmii_to_rgmii cor


library ieee;
use ieee.std_logic_1164.all;

library unisim;
use unisim.vcomponents.all;

entity system_gmii_to_rgmii_0_0_clocking is
  port(
    clkin             : in  std_logic;               -- 200 MHz free running clock
    clkin_out         : out std_logic;               -- clkin passed thru BUFG
    reset             : in std_logic;
    mmcm_locked       : out std_logic;
    gmii_clk_125m     : out std_logic;               -- 125 MHz clock
    gmii_clk_25m      : out std_logic;               -- 25 MHz clock
    gmii_clk_2_5m     : out std_logic                -- 2.5 MHz clock
    
  );
end system_gmii_to_rgmii_0_0_clocking ; 

architecture rtl of system_gmii_to_rgmii_0_0_clocking is

  -- Signals for local interconnect
  signal clkin_bufg             : std_logic;
  
  signal clkfbout               : std_logic;
  signal clkfbout_buf           : std_logic;
  signal clk_125m_i             : std_logic;
  signal clk_25m_i              : std_logic;
  signal clk_10                 : std_logic;
  signal clk_2_5m_i             : std_logic;
  


begin

  -- Instantiate BUFG for clkin
  i_bufg_clk_in: BUFG port map (I => clkin, O => clkin_bufg);

  
  -- Instantiate MMCM
  mmcm_adv_inst: MMCME2_ADV
    generic map(
      BANDWIDTH            => "OPTIMIZED",
      CLKOUT4_CASCADE      => FALSE,
      COMPENSATION         => "ZHOLD",
      STARTUP_WAIT         => FALSE,
      DIVCLK_DIVIDE        => 1,
      CLKFBOUT_MULT_F      => 5.000,
      CLKFBOUT_PHASE       => 0.000,
      CLKFBOUT_USE_FINE_PS => FALSE,
      CLKOUT0_DIVIDE_F     => 8.000,
      CLKOUT0_PHASE        => 0.000,
      CLKOUT0_DUTY_CYCLE   => 0.500,
      CLKOUT0_USE_FINE_PS  => FALSE,
      CLKOUT1_DIVIDE       => 40,
      CLKOUT1_PHASE        => 0.000,
      CLKOUT1_DUTY_CYCLE   => 0.500,
      CLKOUT1_USE_FINE_PS  => FALSE,
      CLKOUT2_DIVIDE       => 100,
      CLKOUT2_PHASE        => 0.000,
      CLKOUT2_DUTY_CYCLE   => 0.500,
      CLKOUT2_USE_FINE_PS  => FALSE,
      CLKIN1_PERIOD        => 5.000,
      REF_JITTER1          => 0.010
    )
    port map(
      -- Output clocks
      CLKFBOUT            => clkfbout,
      CLKFBOUTB           => open,
      CLKOUT0             => clk_125m_i,
      CLKOUT0B            => open,
      CLKOUT1             => clk_25m_i,
      CLKOUT1B            => open,
      CLKOUT2             => clk_10,
      CLKOUT2B            => open,
      CLKOUT3             => open,
      CLKOUT3B            => open,
      CLKOUT4             => open,
      CLKOUT5             => open,
      CLKOUT6             => open,
      -- Input clock control
      CLKFBIN             => clkfbout,
      CLKIN1              => clkin_bufg,
      CLKIN2              => '0',
      -- Tied to always select the primary input clock
      CLKINSEL            => '1',
      -- Ports for dynamic reconfiguration
      DADDR               => (others => '0'),
      DCLK                => '0',
      DEN                 => '0',
      DI                  => (others => '0'),
      DO                  => open,
      DRDY                => open,
      DWE                 => '0',
      -- Ports for dynamic phase shift
      PSCLK               => '0',
      PSEN                => '0',
      PSINCDEC            => '0',
      PSDONE              => open,
      -- Other control and status signals
      LOCKED              => mmcm_locked,
      CLKINSTOPPED        => open,
      CLKFBSTOPPED        => open,
      PWRDWN              => '0',
      RST                 => reset
    );
   
  -- Generate the 2.5 MHz clock
  clk10_div_buf: BUFR
    generic map (
      BUFR_DIVIDE => "4")
    port map (
      I   => clk_10,
      CE  => '1',
      CLR => '0',
      O   => clk_2_5m_i
    );
  

  -- Assign to O/P ports
  clkin_out       <= clkin_bufg;
  
  gmii_clk_125m     <= clk_125m_i;
  gmii_clk_25m      <= clk_25m_i;
  gmii_clk_2_5m     <= clk_2_5m_i;
  
  

end rtl;

