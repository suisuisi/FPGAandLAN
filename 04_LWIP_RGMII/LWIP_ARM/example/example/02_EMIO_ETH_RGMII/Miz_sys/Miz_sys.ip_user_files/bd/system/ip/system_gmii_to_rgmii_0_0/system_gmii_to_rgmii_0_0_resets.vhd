--------------------------------------------------------------------------------
-- File       : system_gmii_to_rgmii_0_0_resets.vhd
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
-- Description: This module holds the resets for the gmii_to_rgmii core

library ieee;
use ieee.std_logic_1164.all;

library unisim;
use unisim.vcomponents.all;

entity system_gmii_to_rgmii_0_0_resets is
  port(
    reset             : in  std_logic;                -- Async reset
    ref_clk           : in  std_logic;                -- Reference clock to IDELAYCTRL
    idelayctrl_reset  : out std_logic
  );
end system_gmii_to_rgmii_0_0_resets;

architecture rtl of system_gmii_to_rgmii_0_0_resets is
  
  ------------------------------------------------------------------------------
  -- Component declaration for the reset synchroniser
  ------------------------------------------------------------------------------
   component system_gmii_to_rgmii_0_0_reset_sync
    port (
      reset_in               : in  std_logic;    -- Active high asynchronous reset
      clk                    : in  std_logic;    -- clock to be sync'ed to
      reset_out              : out std_logic     -- "Synchronised" reset signal
    );
  end component;

  -- Signals for local interconnect
  signal idelayctrl_reset_sync  : std_logic;
  signal idelay_reset_cnt       : std_logic_vector(3 downto 0);

begin

  -- Create a synchronous reset in the IDELAYCTRL ref_clk clock domain.
   idelayctrl_reset_gen : system_gmii_to_rgmii_0_0_reset_sync
    port map(
      clk        => ref_clk,
      reset_in   => reset,
      reset_out  => idelayctrl_reset_sync
    );
  
  -- Reset circuitry for the IDELAYCTRL reset.

  -- The IDELAYCTRL must experience a pulse which is at least 50 ns in
  -- duration.  This is ten clock cycles of the 200MHz ref_clk.  Here we
  -- drive the reset pulse for 12 clock cycles.
  process(ref_clk)
  begin
    if(rising_edge(ref_clk)) then
      if(idelayctrl_reset_sync = '1') then
        idelay_reset_cnt <= (others => '0');
        idelayctrl_reset <= '1';
      else
        idelayctrl_reset <= '1';
        case idelay_reset_cnt is
          when "0000"  => idelay_reset_cnt <= "0001";
          when "0001"  => idelay_reset_cnt <= "0010";
          when "0010"  => idelay_reset_cnt <= "0011";
          when "0011"  => idelay_reset_cnt <= "0100";
          when "0100"  => idelay_reset_cnt <= "0101";
          when "0101"  => idelay_reset_cnt <= "0110";
          when "0110"  => idelay_reset_cnt <= "0111";
          when "0111"  => idelay_reset_cnt <= "1000";
          when "1000"  => idelay_reset_cnt <= "1001";
          when "1001"  => idelay_reset_cnt <= "1010";
          when "1010"  => idelay_reset_cnt <= "1011";
          when "1011"  => idelay_reset_cnt <= "1100";
          when "1100"  => idelay_reset_cnt <= "1101";
          when "1101"  => idelay_reset_cnt <= "1110";
          when others  => idelay_reset_cnt <= "1110";
                          idelayctrl_reset <= '0';
        end case;
      end if;
    end if;
  end process;

end rtl;

