--------------------------------------------------------------------------------
-- File       : demo_tb.vhd
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

-- -----------------------------------------------------------------------------
-- Description: This testbench will exercise the funcationality of the gmii_to_rgmii pcore.
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demo_tb is
  generic(
    C_EXTERNAL_CLOCK : integer range 0 to 1         := 0;
    C_PHYADDR        : std_logic_vector(4 downto 0) := std_logic_vector(to_unsigned(8, 5))
  );

end demo_tb;

architecture behav of demo_tb is

  ------------------------------------------------------------------------------
  -- Component Declaration for Device Under Test (DUT).
  ------------------------------------------------------------------------------
  component system_gmii_to_rgmii_0_0_example_design
    port(
      -- Synchronous resets
      tx_reset                      : in    std_logic;
      rx_reset                      : in    std_logic;
    clkin                         : in    std_logic;
    
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
      -- RGMII Interface: Pins on the FPGA
      rgmii_txc                     : out   std_logic;
      rgmii_txd                     : out   std_logic_vector(3 downto 0);
      rgmii_tx_ctl                  : out   std_logic;
      rgmii_rxc                     : in    std_logic;
      rgmii_rxd                     : in    std_logic_vector(3 downto 0);
      rgmii_rx_ctl                  : in    std_logic;
      -- MDIO Interface: Pins on the FPGA
      mdio_phy_mdc                  : out   std_logic;
      mdio_phy_mdio                 : inout std_logic 
    );
  end component;

  ------------------------------------------------------------------------------
  -- types to support frame data
  ------------------------------------------------------------------------------
  -- Tx Data and Data_valid record
  type data_typ is record
      data : bit_vector(7 downto 0);        -- data
      valid : bit;                          -- data_valid
      error : bit;                          -- data_error
  end record;
  type frame_of_data_typ is array (natural range <>) of data_typ;

  -- Tx Data, Data_valid and underrun record
  type tri_mac_frame_type is record
      columns   : frame_of_data_typ(0 to 65);-- data field
      bad_frame : boolean;                   -- does this frame contain an error?
  end record;
  type frame_typ_ary is array (natural range <>) of tri_mac_frame_type;

  ------------------------------------------------------------------------------
  -- Stimulus - Frame data
  ------------------------------------------------------------------------------
  -- The following constant holds the stimulus for the testbench. It is
  -- an ordered array of frames, with frame 0 the first to be injected
  -- into the core transmit interface by the testbench.
  ------------------------------------------------------------------------------
  constant frame_data : frame_typ_ary := (
   -------------
   -- Frame 0
   -------------
    0          => (
      columns  => (
        0      => ( DATA => X"DA", VALID => '1', ERROR => '0'), -- Destination Address (DA)
        1      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        2      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        3      => ( DATA => X"04", VALID => '1', ERROR => '0'),
        4      => ( DATA => X"05", VALID => '1', ERROR => '0'),
        5      => ( DATA => X"06", VALID => '1', ERROR => '0'),
        6      => ( DATA => X"5A", VALID => '1', ERROR => '0'), -- Source Address (5A)
        7      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        8      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        9      => ( DATA => X"04", VALID => '1', ERROR => '0'),
       10      => ( DATA => X"05", VALID => '1', ERROR => '0'),
       11      => ( DATA => X"06", VALID => '1', ERROR => '0'),
       12      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       13      => ( DATA => X"2E", VALID => '1', ERROR => '0'), -- Length/Type = Length = 46
       14      => ( DATA => X"01", VALID => '1', ERROR => '0'),
       15      => ( DATA => X"02", VALID => '1', ERROR => '0'),
       16      => ( DATA => X"03", VALID => '1', ERROR => '0'),
       17      => ( DATA => X"04", VALID => '1', ERROR => '0'),
       18      => ( DATA => X"05", VALID => '1', ERROR => '0'),
       19      => ( DATA => X"06", VALID => '1', ERROR => '0'),
       20      => ( DATA => X"07", VALID => '1', ERROR => '0'),
       21      => ( DATA => X"08", VALID => '1', ERROR => '0'),
       22      => ( DATA => X"09", VALID => '1', ERROR => '0'),
       23      => ( DATA => X"0A", VALID => '1', ERROR => '0'),
       24      => ( DATA => X"0B", VALID => '1', ERROR => '0'),
       25      => ( DATA => X"0C", VALID => '1', ERROR => '0'),
       26      => ( DATA => X"0D", VALID => '1', ERROR => '0'),
       27      => ( DATA => X"0E", VALID => '1', ERROR => '0'),
       28      => ( DATA => X"0F", VALID => '1', ERROR => '0'),
       29      => ( DATA => X"10", VALID => '1', ERROR => '0'),
       30      => ( DATA => X"11", VALID => '1', ERROR => '0'),
       31      => ( DATA => X"12", VALID => '1', ERROR => '0'),
       32      => ( DATA => X"13", VALID => '1', ERROR => '0'),
       33      => ( DATA => X"14", VALID => '1', ERROR => '0'),
       34      => ( DATA => X"15", VALID => '1', ERROR => '0'),
       35      => ( DATA => X"16", VALID => '1', ERROR => '0'),
       36      => ( DATA => X"17", VALID => '1', ERROR => '0'),
       37      => ( DATA => X"18", VALID => '1', ERROR => '0'),
       38      => ( DATA => X"19", VALID => '1', ERROR => '0'),
       39      => ( DATA => X"1A", VALID => '1', ERROR => '0'),
       40      => ( DATA => X"1B", VALID => '1', ERROR => '0'),
       41      => ( DATA => X"1C", VALID => '1', ERROR => '0'),
       42      => ( DATA => X"1D", VALID => '1', ERROR => '0'),
       43      => ( DATA => X"1E", VALID => '1', ERROR => '0'),
       44      => ( DATA => X"1F", VALID => '1', ERROR => '0'),
       45      => ( DATA => X"20", VALID => '1', ERROR => '0'),
       46      => ( DATA => X"21", VALID => '1', ERROR => '0'),
       47      => ( DATA => X"22", VALID => '1', ERROR => '0'),
       48      => ( DATA => X"23", VALID => '1', ERROR => '0'),
       49      => ( DATA => X"24", VALID => '1', ERROR => '0'),
       50      => ( DATA => X"25", VALID => '1', ERROR => '0'),
       51      => ( DATA => X"26", VALID => '1', ERROR => '0'),
       52      => ( DATA => X"27", VALID => '1', ERROR => '0'),
       53      => ( DATA => X"28", VALID => '1', ERROR => '0'),
       54      => ( DATA => X"29", VALID => '1', ERROR => '0'),
       55      => ( DATA => X"2A", VALID => '1', ERROR => '0'),
       56      => ( DATA => X"2B", VALID => '1', ERROR => '0'),
       57      => ( DATA => X"2C", VALID => '1', ERROR => '0'),
       58      => ( DATA => X"2D", VALID => '1', ERROR => '0'),
       59      => ( DATA => X"2E", VALID => '1', ERROR => '0'), -- 46th Byte of Data
       others  => ( DATA => X"00", VALID => '0', ERROR => '0')),

      -- No error in this frame
      bad_frame => false),


   -------------
   -- Frame 1
   -------------
    1          => (
      columns  => (
        0      => ( DATA => X"DA", VALID => '1', ERROR => '0'), -- Destination Address (DA)
        1      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        2      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        3      => ( DATA => X"04", VALID => '1', ERROR => '0'),
        4      => ( DATA => X"05", VALID => '1', ERROR => '0'),
        5      => ( DATA => X"06", VALID => '1', ERROR => '0'),
        6      => ( DATA => X"5A", VALID => '1', ERROR => '0'), -- Source Address (5A)
        7      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        8      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        9      => ( DATA => X"04", VALID => '1', ERROR => '0'),
       10      => ( DATA => X"05", VALID => '1', ERROR => '0'),
       11      => ( DATA => X"06", VALID => '1', ERROR => '0'),
       12      => ( DATA => X"80", VALID => '1', ERROR => '0'), -- Length/Type = Type = 8000
       13      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       14      => ( DATA => X"01", VALID => '1', ERROR => '0'),
       15      => ( DATA => X"02", VALID => '1', ERROR => '0'),
       16      => ( DATA => X"03", VALID => '1', ERROR => '0'),
       17      => ( DATA => X"04", VALID => '1', ERROR => '0'),
       18      => ( DATA => X"05", VALID => '1', ERROR => '0'),
       19      => ( DATA => X"06", VALID => '1', ERROR => '0'),
       20      => ( DATA => X"07", VALID => '1', ERROR => '0'),
       21      => ( DATA => X"08", VALID => '1', ERROR => '0'),
       22      => ( DATA => X"09", VALID => '1', ERROR => '0'),
       23      => ( DATA => X"0A", VALID => '1', ERROR => '0'),
       24      => ( DATA => X"0B", VALID => '1', ERROR => '0'),
       25      => ( DATA => X"0C", VALID => '1', ERROR => '0'),
       26      => ( DATA => X"0D", VALID => '1', ERROR => '0'),
       27      => ( DATA => X"0E", VALID => '1', ERROR => '0'),
       28      => ( DATA => X"0F", VALID => '1', ERROR => '0'),
       29      => ( DATA => X"10", VALID => '1', ERROR => '0'),
       30      => ( DATA => X"11", VALID => '1', ERROR => '0'),
       31      => ( DATA => X"12", VALID => '1', ERROR => '0'),
       32      => ( DATA => X"13", VALID => '1', ERROR => '0'),
       33      => ( DATA => X"14", VALID => '1', ERROR => '0'),
       34      => ( DATA => X"15", VALID => '1', ERROR => '0'),
       35      => ( DATA => X"16", VALID => '1', ERROR => '0'),
       36      => ( DATA => X"17", VALID => '1', ERROR => '0'),
       37      => ( DATA => X"18", VALID => '1', ERROR => '0'),
       38      => ( DATA => X"19", VALID => '1', ERROR => '0'),
       39      => ( DATA => X"1A", VALID => '1', ERROR => '0'),
       40      => ( DATA => X"1B", VALID => '1', ERROR => '0'),
       41      => ( DATA => X"1C", VALID => '1', ERROR => '0'),
       42      => ( DATA => X"1D", VALID => '1', ERROR => '0'),
       43      => ( DATA => X"1E", VALID => '1', ERROR => '0'),
       44      => ( DATA => X"1F", VALID => '1', ERROR => '0'),
       45      => ( DATA => X"20", VALID => '1', ERROR => '0'),
       46      => ( DATA => X"21", VALID => '1', ERROR => '0'),
       47      => ( DATA => X"22", VALID => '1', ERROR => '0'),
       48      => ( DATA => X"23", VALID => '1', ERROR => '0'),
       49      => ( DATA => X"24", VALID => '1', ERROR => '0'),
       50      => ( DATA => X"25", VALID => '1', ERROR => '0'),
       51      => ( DATA => X"26", VALID => '1', ERROR => '0'),
       52      => ( DATA => X"27", VALID => '1', ERROR => '0'),
       53      => ( DATA => X"28", VALID => '1', ERROR => '0'),
       54      => ( DATA => X"29", VALID => '1', ERROR => '0'),
       55      => ( DATA => X"2A", VALID => '1', ERROR => '0'),
       56      => ( DATA => X"2B", VALID => '1', ERROR => '0'),
       57      => ( DATA => X"2C", VALID => '1', ERROR => '0'),
       58      => ( DATA => X"2D", VALID => '1', ERROR => '0'),
       59      => ( DATA => X"2E", VALID => '1', ERROR => '0'),
       60      => ( DATA => X"2F", VALID => '1', ERROR => '0'), -- 47th Data byte
       others  => ( DATA => X"00", VALID => '0', ERROR => '0')),

      -- No error in this frame
      bad_frame => false),


   -------------
   -- Frame 2
   -------------
    2          => (
      columns  => (
        0      => ( DATA => X"DA", VALID => '1', ERROR => '0'), -- Destination Address (DA)
        1      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        2      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        3      => ( DATA => X"04", VALID => '1', ERROR => '0'),
        4      => ( DATA => X"05", VALID => '1', ERROR => '0'),
        5      => ( DATA => X"06", VALID => '1', ERROR => '0'),
        6      => ( DATA => X"5A", VALID => '1', ERROR => '0'), -- Source Address (5A)
        7      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        8      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        9      => ( DATA => X"04", VALID => '1', ERROR => '0'),
       10      => ( DATA => X"05", VALID => '1', ERROR => '0'),
       11      => ( DATA => X"06", VALID => '1', ERROR => '0'),
       12      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       13      => ( DATA => X"2E", VALID => '1', ERROR => '0'), -- Length/Type = Length = 46
       14      => ( DATA => X"01", VALID => '1', ERROR => '0'),
       15      => ( DATA => X"02", VALID => '1', ERROR => '0'),
       16      => ( DATA => X"03", VALID => '1', ERROR => '0'),
       17      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       18      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       19      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       20      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       21      => ( DATA => X"12", VALID => '1', ERROR => '0'),
       22      => ( DATA => X"34", VALID => '1', ERROR => '0'),
       23      => ( DATA => X"56", VALID => '1', ERROR => '1'), -- Error asserted
       24      => ( DATA => X"78", VALID => '1', ERROR => '0'),
       25      => ( DATA => X"9A", VALID => '1', ERROR => '0'),
       26      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       27      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       28      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       29      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       30      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       31      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       32      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       33      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       34      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       35      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       36      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       37      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       38      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       39      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       40      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       41      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       42      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       43      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       44      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       45      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       46      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       47      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       48      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       49      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       50      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       51      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       52      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       53      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       54      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       55      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       56      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       57      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       58      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       59      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       others  => ( DATA => X"00", VALID => '0', ERROR => '0')),

       -- Error this frame
      bad_frame => true),


   -------------
   -- Frame 3
   -------------
   3          => (
      columns  => (
        0      => ( DATA => X"DA", VALID => '1', ERROR => '0'), -- Destination Address (DA)
        1      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        2      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        3      => ( DATA => X"04", VALID => '1', ERROR => '0'),
        4      => ( DATA => X"05", VALID => '1', ERROR => '0'),
        5      => ( DATA => X"06", VALID => '1', ERROR => '0'),
        6      => ( DATA => X"5A", VALID => '1', ERROR => '0'), -- Source Address (5A)
        7      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        8      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        9      => ( DATA => X"04", VALID => '1', ERROR => '0'),
       10      => ( DATA => X"05", VALID => '1', ERROR => '0'),
       11      => ( DATA => X"06", VALID => '1', ERROR => '0'),
       12      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       13      => ( DATA => X"03", VALID => '1', ERROR => '0'), -- Length/Type = Length = 03
       14      => ( DATA => X"01", VALID => '1', ERROR => '0'), -- Therefore padding is required
       15      => ( DATA => X"02", VALID => '1', ERROR => '0'),
       16      => ( DATA => X"03", VALID => '1', ERROR => '0'),
       17      => ( DATA => X"00", VALID => '1', ERROR => '0'), -- Padding starts here
       18      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       19      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       20      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       21      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       22      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       23      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       24      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       25      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       26      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       27      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       28      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       29      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       30      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       31      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       32      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       33      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       34      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       35      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       36      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       37      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       38      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       39      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       40      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       41      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       42      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       43      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       44      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       45      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       46      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       47      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       48      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       49      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       50      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       51      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       52      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       53      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       54      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       55      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       56      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       57      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       58      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       59      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       others  => ( DATA => X"00", VALID => '0', ERROR => '0')),

      -- No error in this frame
      bad_frame => false)
    );


  ------------------------------------------------------------------------------
  -- CRC engine
  ------------------------------------------------------------------------------
  function calc_crc (data : in std_logic_vector;
                     fcs  : in std_logic_vector)
  return std_logic_vector is

    variable crc          : std_logic_vector(31 downto 0);
    variable crc_feedback : std_logic;
  begin

    crc := not fcs;

    for I in 0 to 7 loop
      crc_feedback      := crc(0) xor data(I);

      crc(4 downto 0)   := crc(5 downto 1);
      crc(5)            := crc(6)  xor crc_feedback;
      crc(7 downto 6)   := crc(8 downto 7);
      crc(8)            := crc(9)  xor crc_feedback;
      crc(9)            := crc(10) xor crc_feedback;
      crc(14 downto 10) := crc(15 downto 11);
      crc(15)           := crc(16) xor crc_feedback;
      crc(18 downto 16) := crc(19 downto 17);
      crc(19)           := crc(20) xor crc_feedback;
      crc(20)           := crc(21) xor crc_feedback;
      crc(21)           := crc(22) xor crc_feedback;
      crc(22)           := crc(23);
      crc(23)           := crc(24) xor crc_feedback;
      crc(24)           := crc(25) xor crc_feedback;
      crc(25)           := crc(26);
      crc(26)           := crc(27) xor crc_feedback;
      crc(27)           := crc(28) xor crc_feedback;
      crc(28)           := crc(29);
      crc(29)           := crc(30) xor crc_feedback;
      crc(30)           := crc(31) xor crc_feedback;
      crc(31)           :=             crc_feedback;
    end loop;

    -- return the CRC result
    return not crc;
  end calc_crc;

    ------------------------------------------------------------------------------
  -- Stimulus - MDIO data frame
  ------------------------------------------------------------------------------
  -- type to support management frame
  type frame_of_mdio is array (natural range 0 to 63) of std_logic;

  constant mdio_1g_data : frame_of_mdio := (
         '1','1','1','1','1','1','1','1', -- preamble field
         '1','1','1','1','1','1','1','1',
             '1','1','1','1','1','1','1','1',
             '1','1','1','1','1','1','1','1',
             '0','1',              -- start opcode
             '0','1',              -- write opcode
             C_PHYADDR(4), C_PHYADDR(3), C_PHYADDR(2), C_PHYADDR(1), C_PHYADDR(0), -- phyad (write to this device) 
             '1','0','0','0','0',  -- regad (write to Configuration Register)
             '1','0',              -- Turn-around cycles
                    -- DATA FIELD

             '0',   -- Do not assert Reset
             '0',   -- No loopback
             '0',   -- Speed selection
             '0',   -- Disable Auto-Negotiation
             '0',   -- Disable Power Down
             '0',   -- Disable Isolate GMII
             '0',   -- Disable Auto-Negotiation Restart
             '1',   -- Full Duplex Mode
             '0',   -- Disable Collision Test
             '1',   -- Speed selection
             '0',   -- Reserved
             '0',
             '0',
             '0',
             '0',
             '0'
           );

   constant mdio_100m_data : frame_of_mdio := (
         '1','1','1','1','1','1','1','1', -- preamble field
         '1','1','1','1','1','1','1','1',
             '1','1','1','1','1','1','1','1',
             '1','1','1','1','1','1','1','1',
             '0','1',              -- start opcode
             '0','1',              -- write opcode 
             C_PHYADDR(4), C_PHYADDR(3), C_PHYADDR(2), C_PHYADDR(1), C_PHYADDR(0), -- phyad (write to this device) 
             '1','0','0','0','0',  -- regad (write to Configuration Register)
             '1','0',              -- Turn-around cycles
                    -- DATA FIELD

             '0',   -- Do not assert Reset
             '0',   -- No loopback
             '1',   -- Speed selection
             '0',   -- Disable Auto-Negotiation
             '0',   -- Disable Power Down
             '0',   -- Disable Isolate GMII
             '0',   -- Disable Auto-Negotiation Restart
             '1',   -- Full Duplex Mode
             '0',   -- Disable Collision Test
             '0',   -- Speed selection
             '0',   -- Reserved
             '0',
             '0',
             '0',
             '0',
             '0'
           );

   constant mdio_10m_data : frame_of_mdio := (
         '1','1','1','1','1','1','1','1', -- preamble field
         '1','1','1','1','1','1','1','1',
             '1','1','1','1','1','1','1','1',
             '1','1','1','1','1','1','1','1',
             '0','1',              -- start opcode
             '0','1',              -- write opcode
             C_PHYADDR(4), C_PHYADDR(3), C_PHYADDR(2), C_PHYADDR(1), C_PHYADDR(0), -- phyad (write to this device) 
             '1','0','0','0','0',  -- regad (write to Configuration Register)
             '1','0',              -- Turn-around cycles
                    -- DATA FIELD

             '0',   -- Do not assert Reset
             '0',   -- No loopback
             '0',   -- Speed selection
             '0',   -- Disable Auto-Negotiation
             '0',   -- Disable Power Down
             '0',   -- Disable Isolate GMII
             '0',   -- Disable Auto-Negotiation Restart
             '1',   -- Full Duplex Mode
             '0',   -- Disable Collision Test
             '0',   -- Speed selection
             '0',   -- Reserved
             '0',
             '0',
             '0',
             '0',
             '0'
           );           
  ------------------------------------------------------------------------------
  -- Test Bench signals and constants
  ------------------------------------------------------------------------------

  -- Delay to provide setup and hold timing at the GMII/RGMII.
  constant dly : time := 0 ns; 


  -- testbench signals
    
  signal clkin                           : std_logic;
  signal reset                           : std_logic                     := '0';             -- start in reset
  signal mdio_o                          : std_logic;
  signal mdio_i                          : std_logic;
  signal mdio_t                          : std_logic;
  signal mdc                             : std_logic;
  signal mdc_clk                         : std_logic;
  signal enable_mdc                      : std_logic;
  signal gmii_tx_en                      : std_logic;
  signal gmii_tx_er                      : std_logic;
  signal gmii_txd                        : std_logic_vector(7 downto 0) := (others => '0');
  signal gmii_rx_dv                      : std_logic := '0';
  signal gmii_rx_er                      : std_logic := '0';
  signal gmii_rxd                        : std_logic_vector(7 downto 0) := (others => '0');
  signal rx_monitor_finished_gmii_1G     : boolean := false;
  signal rx_monitor_finished_gmii_10M    : boolean := false;
  signal rx_monitor_finished_gmii_100M   : boolean := false;
  signal tx_monitor_finished_rgmii_1G    : boolean := false;
  signal tx_monitor_finished_rgmii_10M   : boolean := false;
  signal tx_monitor_finished_rgmii_100M  : boolean := false;
  signal management_1g_config_finished   : boolean := false;
  signal management_100m_config_finished : boolean := false;
  signal management_10m_config_finished  : boolean := false;
  signal rx_gmii_stimulus_finished       : boolean := false;
  signal rx_rgmii_stimulus_finished      : boolean := false;
  signal frame_error                     : std_logic;
  signal error_seen                      : std_logic;
  signal gmii_tx_clk                     : std_logic;
  signal gmii_rx_clk                     : std_logic;
  signal gmii_clk                        : std_logic;
  signal gmii_clk_90                     : std_logic;
  signal rgmii_rxc_1g                    : std_logic;
  signal rgmii_rxc_100m                  : std_logic;
  signal rgmii_rxc_10m                   : std_logic;
  signal dly_rgmii_rxc                   : std_logic;
  signal dly_rgmii_rxc_90                : std_logic;
  signal gmii_col                        : std_logic;
  signal gmii_crs                        : std_logic;
  signal gmii_col_exp                    : std_logic;
  signal gmii_crs_exp                    : std_logic;
  signal rgmii_txc                       : std_logic := '0';
  signal rgmii_tx_ctl                    : std_logic := '0';
  signal rgmii_txd                       : std_logic_vector(3 downto 0) := (others => '0');
  signal rgmii_rxc                       : std_logic := '0';
  signal rgmii_rx_ctl                    : std_logic := '0';
  signal rgmii_rxd                       : std_logic_vector(3 downto 0) := (others => '0');
  signal speed_mode                      : std_logic_vector(1 downto 0);

begin

  ------------------------------------------------------------------------------
  -- Wire up Device Under Test
  ------------------------------------------------------------------------------
  dut : system_gmii_to_rgmii_0_0_example_design
    port map(
      -- Synchronous resets
      tx_reset                => reset,
      rx_reset                => reset,
      
      clkin                   => clkin,
      
      -- Register interface: Status output
      speed_mode              => speed_mode,
      -- GMII Interface to GEM
      gmii_tx_clk             => gmii_tx_clk,
      gmii_tx_en              => gmii_tx_en,
      gmii_txd                => gmii_txd,
      gmii_tx_er              => gmii_tx_er,
      gmii_crs                => gmii_crs,
      gmii_col                => gmii_col,
      gmii_rx_clk             => gmii_rx_clk,
      gmii_rx_dv              => gmii_rx_dv,
      gmii_rxd                => gmii_rxd,
      gmii_rx_er              => gmii_rx_er,
      -- MDIO Interface to GEM
      mdio_gem_mdc            => mdc_clk,    
      mdio_gem_i              => mdio_i,
      mdio_gem_o              => mdio_o,
      mdio_gem_t              => mdio_t,
      -- RGMII in-band status signals
      link_status             => open,
      clock_speed             => open,
      duplex_status           => open,
      -- RGMII Interface: Pins on the FPGA
      rgmii_txc               => rgmii_txc,
      rgmii_txd               => rgmii_txd,
      rgmii_tx_ctl            => rgmii_tx_ctl,
      rgmii_rxc               => dly_rgmii_rxc,
      rgmii_rxd               => rgmii_rxd,
      rgmii_rx_ctl            => rgmii_rx_ctl,
      -- MDIO Interface: Pins on the FPGA
      mdio_phy_mdc            => open,
      mdio_phy_mdio           => open 
    );

  ------------------------------------------------------------------------------
  -- If the simulation is still going after delay below
  -- then something has gone wrong: terminate with an error
  ------------------------------------------------------------------------------
  p_timeout : process
  begin
    wait for 620 us;
    assert false
      report "ERROR - Simulation running forever!"
      severity failure;
  end process p_timeout;


  ------------------------------------------------------------------------------
  -- Clock drivers
  ------------------------------------------------------------------------------

  -- drives MDC at 2.5 MHz
  p_mdc : process
  begin
      mdc <= '0';
      wait for 200 ns;
      mdc <= '1';
      wait for 200 ns;
  end process p_mdc;

  mdc_clk       <= mdc and enable_mdc;

  -- drives clkin at 200 MHz
  p_clkin : process
  begin
    clkin <= '0';
    wait for 200 ns;
    loop
      clkin <= '0';
      wait for 2.5 ns;
      clkin <= '1';
      wait for 2.5 ns;
    end loop;
  end process p_clkin;

  
  -- drives rgmii_rxc_1g at 125 MHz
  p_rgmii_rxc_1g : process
  begin
    rgmii_rxc_1g <= '0';
    wait for 200 ns;
    loop
      rgmii_rxc_1g <= '0';
      wait for 4 ns;
      rgmii_rxc_1g <= '1';
      wait for 4 ns;
    end loop;
  end process p_rgmii_rxc_1g;

  -- drives rgmii_rxc_100m at 25 MHz
  p_rgmii_rxc_100m : process
  begin
    rgmii_rxc_100m <= '0';
    wait for 200 ns;
    loop
      rgmii_rxc_100m <= '0';
      wait for 20 ns;
      rgmii_rxc_100m <= '1';
      wait for 20 ns;
    end loop;
  end process p_rgmii_rxc_100m;

  -- drives rgmii_rxc_10m at 2.5 MHz
  p_rgmii_rxc_10m : process
  begin
    rgmii_rxc_10m <= '0';
    wait for 200 ns;
    loop
      rgmii_rxc_10m <= '0';
      wait for 200 ns;
      rgmii_rxc_10m <= '1';
      wait for 200 ns;
    end loop;
  end process p_rgmii_rxc_10m;

  -- Select between 10Mb/s, 100Mb/s and 1Gb/s RGMII Rx clock frequencies
  p_selrxc : process(speed_mode, rgmii_rxc_1g, rgmii_rxc_100m, rgmii_rxc_10m)
  begin
    if speed_mode = "11" then
      rgmii_rxc        <= '0';
      dly_rgmii_rxc    <= '0';
      dly_rgmii_rxc_90 <= '0';
    elsif speed_mode = "10" then
      rgmii_rxc        <= rgmii_rxc_1g;
      dly_rgmii_rxc    <= rgmii_rxc_1g  after 2 ns;
      dly_rgmii_rxc_90 <= rgmii_rxc_1g  after 4 ns;
    elsif speed_mode = "01" then
      rgmii_rxc        <= rgmii_rxc_100m;
      dly_rgmii_rxc    <= rgmii_rxc_100m after 10 ns;
      dly_rgmii_rxc_90 <= rgmii_rxc_100m after 20 ns;
    else
      rgmii_rxc        <= rgmii_rxc_10m;
      dly_rgmii_rxc    <= rgmii_rxc_10m after 100 ns;
      dly_rgmii_rxc_90 <= rgmii_rxc_10m after 200 ns;
    end if;
  end process p_selrxc;


      gmii_clk <= '0';

  -- monitor frame error and output error when asserted 
  error_seen_p : process (clkin)
  begin
    if clkin'event and clkin = '1' then
       if reset = '1' then
          error_seen <= '0';
       elsif frame_error = '1' and error_seen = '0' then
          error_seen <= '1';
          assert false
            report "** Error: Frame mismatch seen" & cr
            severity error;
       end if;
    end if;
  end process error_seen_p;

  gmii_col_exp <= (gmii_tx_en or gmii_tx_er) and (gmii_rx_dv or gmii_rx_er);
  gmii_crs_exp <= (gmii_tx_en or gmii_tx_er) or (gmii_rx_dv or gmii_rx_er);

  -- monitor collision and carrier sense when asserted 
  half_duplex_check_p : process (gmii_col, gmii_crs, gmii_col_exp, gmii_crs_exp)
  begin
    if gmii_tx_clk'event and gmii_tx_clk = '1' then
       if (gmii_col = gmii_col_exp) and (gmii_crs = gmii_crs_exp) then
       else
          assert false
            report "** Error: gmii_col and gmii_crs are not matching expected values" & cr
            severity error;
       end if;
    end if;
  end process half_duplex_check_p;

  ------------------------------------------------------------------------------
  -- Stimulus process. This process will inject frames of data into the
  -- PHY side of the receiver.
  ------------------------------------------------------------------------------
  p_gmii_stimulus : process

    ----------------------------------------------------------
    -- Procedure to inject a frame into the receiver at 1Gb/s
    ----------------------------------------------------------
    procedure send_gmii_frame_1g (current_frame : in natural) is
      variable current_col   : natural := 0;  -- Column counter within frame
      variable fcs           : std_logic_vector(31 downto 0);
    begin

      wait until gmii_tx_clk'event and gmii_tx_clk = '1';

      -- Reset the FCS calculation
      fcs         := (others => '0');

      -- Adding the preamble field
      for j in 0 to 7 loop
        gmii_txd   <= "01010101" after dly;
        gmii_tx_en <= '1' after dly;
        gmii_tx_er <= '0' after dly;
        wait until gmii_tx_clk'event and gmii_tx_clk = '1';
      end loop;

      -- Adding the Start of Frame Delimiter (SFD)
      gmii_txd   <= "11010101" after dly;
      gmii_tx_en <= '1' after dly;
      wait until gmii_tx_clk'event and gmii_tx_clk = '1';

      current_col := 0;
      gmii_txd     <= to_stdlogicvector(frame_data(current_frame).columns(current_col).data) after dly;
      gmii_tx_en   <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid) after dly;
      gmii_tx_er   <= to_stdUlogic(frame_data(current_frame).columns(current_col).error) after dly;
      fcs          := calc_crc(to_stdlogicvector(frame_data(current_frame).columns(current_col).data), fcs);

      wait until gmii_tx_clk'event and gmii_tx_clk = '1';

      current_col := current_col + 1;
      -- loop over columns in frame.
      while frame_data(current_frame).columns(current_col).valid /= '0' loop
        -- send one column of data
        gmii_txd   <= to_stdlogicvector(frame_data(current_frame).columns(current_col).data) after dly;
        gmii_tx_en <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid) after dly;
        gmii_tx_er   <= to_stdUlogic(frame_data(current_frame).columns(current_col).error) after dly;
        fcs          := calc_crc(to_stdlogicvector(frame_data(current_frame).columns(current_col).data), fcs);

        current_col := current_col + 1;
        wait until gmii_tx_clk'event and gmii_tx_clk = '1';

      end loop;

      -- Send the CRC.
      for j in 0 to 3 loop
         gmii_txd   <= fcs(((8*j)+7) downto (8*j)) after dly;
         gmii_tx_en <= '1' after dly;
         gmii_tx_er <= '0' after dly;
        wait until gmii_tx_clk'event and gmii_tx_clk = '1';
      end loop;

        -- Clear the data lines.
        gmii_txd   <= (others => '0') after dly;
        gmii_tx_en <=  '0' after dly;

        -- Adding the minimum Interframe gap for a receiver (8 idles)
        for j in 0 to 7 loop
          wait until gmii_tx_clk'event and gmii_tx_clk = '1';
        end loop;

    end send_gmii_frame_1g;


    ---------------------------------------------------------------
    -- Procedure to inject a frame into the receiver at 10/100Mb/s
    ---------------------------------------------------------------
    procedure send_gmii_frame_10_100m (current_frame : in natural) is
      variable current_col   : natural := 0;  -- Column counter within frame
      variable fcs           : std_logic_vector(31 downto 0);
    begin

      wait until gmii_tx_clk'event and gmii_tx_clk = '1';

      -- Reset the FCS calculation
      fcs         := (others => '0');

      -- Adding the preamble field
      for j in 0 to 15 loop
        gmii_txd   <= "00000101" after 30 ns;
        gmii_tx_en <= '1' after 30 ns;
        gmii_tx_er <= '0' after 30 ns;
        wait until gmii_tx_clk'event and gmii_tx_clk = '1';
      end loop;

      -- Adding the Start of Frame Delimiter (SFD)
      gmii_txd   <= "00001101" after 30 ns;
      gmii_tx_en <= '1' after 30 ns;
      gmii_tx_er <= '0' after 30 ns;
      wait until gmii_tx_clk'event and gmii_tx_clk = '1';

      current_col := 0;
      gmii_txd     <= "0000" & to_stdlogicvector(frame_data(current_frame).columns(current_col).data(3 downto 0)) after 30 ns;
      gmii_tx_en   <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid) after 30 ns;
      gmii_tx_er   <= to_stdUlogic(frame_data(current_frame).columns(current_col).error) after 30 ns;

      wait until gmii_tx_clk'event and gmii_tx_clk = '1';
      gmii_txd     <= "0000" & to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 4)) after 30 ns;
      gmii_tx_en   <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid) after 30 ns;
      gmii_tx_er   <= to_stdUlogic(frame_data(current_frame).columns(current_col).error) after 30 ns;
      fcs          := calc_crc(to_stdlogicvector(frame_data(current_frame).columns(current_col).data), fcs);

      wait until gmii_tx_clk'event and gmii_tx_clk = '1';

      current_col := current_col + 1;
      -- loop over columns in frame.
      while frame_data(current_frame).columns(current_col).valid /= '0' loop
        -- send one column of data
        gmii_txd   <= "0000" & to_stdlogicvector(frame_data(current_frame).columns(current_col).data(3 downto 0)) after 30 ns;
        gmii_tx_en <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid) after 30 ns;
        gmii_tx_er <= to_stdUlogic(frame_data(current_frame).columns(current_col).error) after 30 ns;

        wait until gmii_tx_clk'event and gmii_tx_clk = '1';
        gmii_txd   <= "0000" & to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 4)) after 30 ns;
        gmii_tx_en <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid) after 30 ns;
        gmii_tx_er <= to_stdUlogic(frame_data(current_frame).columns(current_col).error) after 30 ns;

        fcs         := calc_crc(to_stdlogicvector(frame_data(current_frame).columns(current_col).data), fcs);
        current_col := current_col + 1;
        wait until gmii_tx_clk'event and gmii_tx_clk = '1';  -- wait for next clock tick

      end loop;

      -- Send the CRC.
      for j in 0 to 3 loop
         gmii_txd   <= "0000" & fcs(((8*j)+3) downto (8*j)) after 30 ns;
         gmii_tx_en <= '1' after 30 ns;
         gmii_tx_er <= '0' after 30 ns;
         wait until gmii_tx_clk'event and gmii_tx_clk = '1';  -- wait for next clock tick
         gmii_txd   <= "0000" & fcs(((8*j)+7) downto ((8*j)+4)) after 30 ns;
         gmii_tx_en <= '1' after 30 ns;
         gmii_tx_er <= '0' after 30 ns;
         wait until gmii_tx_clk'event and gmii_tx_clk = '1';  -- wait for next clock tick
      end loop;

      -- Clear the data lines.
      gmii_txd   <= (others => '0') after 30 ns;
      gmii_tx_en <=  '0' after 30 ns;
      gmii_tx_er <=  '0' after 30 ns;

      -- Adding the minimum Interframe gap for a receiver (8 idles)
      for j in 0 to 7 loop
        wait until gmii_tx_clk'event and gmii_tx_clk = '1';
      end loop;

    end send_gmii_frame_10_100m;


  begin


    -- Send four frames through the MAC and Design Exampled
    -- at each state Ethernet speed
    --      -- frame 0 = minimum length frame
    --      -- frame 1 = type frame
    --      -- frame 2 = errored frame
    --      -- frame 3 = padded frame
    -------------------------------------------------------


    -- 1 Gb/s speed
    -------------------------------------------------------
    -- Wait for the Management MDIO transaction to finish.
    wait until management_1g_config_finished;
    -- Wait for the internal resets to settle

    assert false
      report "Sending four frames on gmii transmit interface at 1Gb/s..." & cr
      severity note;

    for current_frame in frame_data'low to frame_data'high loop
      send_gmii_frame_1g(current_frame);
    end loop;

  -- 100 Mb/s speed
  -------------------------------------------------------
  -- Wait for the Management MDIO transaction to finish.
  wait until management_100m_config_finished;
  assert false
    report "Sending four frames on gmii transmit interface at 100Mb/s..." & cr
    severity note;

  for current_frame in frame_data'low to frame_data'high loop
    send_gmii_frame_10_100m(current_frame);
  end loop;

    -- 10 Mb/s speed
    -------------------------------------------------------
    -- Wait for the Management MDIO transaction to finish.
    wait until management_10m_config_finished;
    assert false
      report "Sending four frames on gmii transmit interface at 10Mb/s..." & cr
      severity note;

    for current_frame in frame_data'low to frame_data'high loop
      send_gmii_frame_10_100m(current_frame);
    end loop;

    -- 1 Gb/s speed
    -------------------------------------------------------
    -- Wait for the Management MDIO transaction to finish.
    wait until management_1g_config_finished;
    assert false
      report "Sending four frames on gmii transmit interface at 1Gb/s..." & cr
      severity note;

    for current_frame in frame_data'low to frame_data'high loop
      send_gmii_frame_1g(current_frame);
    end loop;

    -- Wait for 1G monitor process to complete.
    wait until tx_monitor_finished_rgmii_1G;
    rx_gmii_stimulus_finished <= true;

  end process p_gmii_stimulus;

  ------------------------------------------------------------------------------
  -- Stimulus process. This process will inject frames of data into the
  -- PHY side of the receiver.
  ------------------------------------------------------------------------------
  p_rgmii_stimulus : process

    ----------------------------------------------------------
    -- Procedure to inject a frame into the receiver at 1Gb/s
    ----------------------------------------------------------
    procedure send_rgmii_frame_1g (current_frame : in natural) is
      variable current_col   : natural := 0;  -- Column counter within frame
      variable fcs           : std_logic_vector(31 downto 0);
    begin

      wait until rgmii_rxc'event and rgmii_rxc = '1';

      -- Reset the FCS calculation
      fcs         := (others => '0');

      -- Adding the preamble field
      for j in 0 to 13 loop
        rgmii_rxd   <= "0101";
        rgmii_rx_ctl <= '1';
        wait until rgmii_rxc'event;
      end loop;

      -- Adding the Start of Frame Delimiter (SFD)
      rgmii_rxd   <= "0101";
      rgmii_rx_ctl <= '1';
      wait until rgmii_rxc'event;
      rgmii_rxd   <= "1101";
      rgmii_rx_ctl <= '1';
      wait until rgmii_rxc'event;

      current_col := 0;
      rgmii_rxd    <= to_stdlogicvector(frame_data(current_frame).columns(current_col).data(3 downto 0));
      rgmii_rx_ctl <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid);
      wait until rgmii_rxc'event;
      rgmii_rxd    <= to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 4));
      rgmii_rx_ctl <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid);
      fcs          := calc_crc(to_stdlogicvector(frame_data(current_frame).columns(current_col).data), fcs);

      wait until rgmii_rxc'event;

      current_col := current_col + 1;
      -- loop over columns in frame.
      while frame_data(current_frame).columns(current_col).valid /= '0' loop
        -- send one column of data
        -- send rising edge data
        rgmii_rxd    <= to_stdlogicvector(frame_data(current_frame).columns(current_col).data(3 downto 0));
        rgmii_rx_ctl <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid);
        wait until rgmii_rxc'event;
        -- send falling edge data
        rgmii_rxd    <= to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 4));
        rgmii_rx_ctl <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid xor
                                     frame_data(current_frame).columns(current_col).error);
        fcs          := calc_crc(to_stdlogicvector(frame_data(current_frame).columns(current_col).data), fcs);
        current_col := current_col + 1;
        wait until rgmii_rxc'event;  -- wait for next clock tick
      end loop;

      -- Send the CRC.
      for j in 0 to 3 loop
         rgmii_rxd    <= fcs(((8*j)+3) downto (8*j));
         rgmii_rx_ctl <= '1';
         wait until rgmii_rxc'event;
         rgmii_rxd    <= fcs(((8*j)+7) downto ((8*j)+4));
         rgmii_rx_ctl <= '1';
         wait until rgmii_rxc'event;  -- wait for next clock tick
      end loop;

      -- Clear the data lines.
      rgmii_rxd   <= (others => '0');
      rgmii_rx_ctl <=  '0';

      -- Adding the minimum Interframe gap for a receiver (8 idles)
      for j in 0 to 7 loop
        wait until rgmii_rxc'event and rgmii_rxc = '1';
      end loop;

    end send_rgmii_frame_1g;


    ---------------------------------------------------------------
    -- Procedure to inject a frame into the receiver at 10/100Mb/s
    ---------------------------------------------------------------
    procedure send_rgmii_frame_10_100m (current_frame : in natural) is
      variable current_col   : natural := 0;  -- Column counter within frame
      variable fcs           : std_logic_vector(31 downto 0);
    begin

      wait until rgmii_rxc'event and rgmii_rxc = '1';

      -- Reset the FCS calculation
      fcs         := (others => '0');

      -- Adding the preamble field
      for j in 0 to 13 loop
        rgmii_rxd    <= "0101";
        rgmii_rx_ctl <= '1';
        wait until rgmii_rxc'event and rgmii_rxc = '1';
      end loop;

      -- Adding the Start of Frame Delimiter (SFD)
      rgmii_rxd    <= "0101";
      rgmii_rx_ctl <= '1';
      wait until rgmii_rxc'event and rgmii_rxc = '1';
      rgmii_rxd    <= "1101";
      rgmii_rx_ctl <= '1';
      wait until rgmii_rxc'event and rgmii_rxc = '1';

      current_col := 0;
      rgmii_rxd    <= to_stdlogicvector(frame_data(current_frame).columns(current_col).data(3 downto 0));
      rgmii_rx_ctl <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid);
      wait until rgmii_rxc'event and rgmii_rxc = '1';
      rgmii_rxd    <= to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 4));
      rgmii_rx_ctl <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid);
      fcs          := calc_crc(to_stdlogicvector(frame_data(current_frame).columns(current_col).data), fcs);
      wait until rgmii_rxc'event and rgmii_rxc = '1';

      current_col := current_col + 1;
      -- loop over columns in frame.
      while frame_data(current_frame).columns(current_col).valid /= '0' loop
        -- send one column of data
        -- send rising edge data
        rgmii_rxd    <= to_stdlogicvector(frame_data(current_frame).columns(current_col).data(3 downto 0));
        rgmii_rx_ctl <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid);
        wait until rgmii_rxc'event and rgmii_rxc = '1';
        -- send falling edge data
        rgmii_rxd    <= to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 4));
        rgmii_rx_ctl <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid xor
                                       frame_data(current_frame).columns(current_col).error);
        fcs          := calc_crc(to_stdlogicvector(frame_data(current_frame).columns(current_col).data), fcs);
        current_col := current_col + 1;
        wait until rgmii_rxc'event and rgmii_rxc = '1';

      end loop;

      -- Send the CRC.
      for j in 0 to 3 loop
         rgmii_rxd    <= fcs(((8*j)+3) downto (8*j));
         rgmii_rx_ctl <= '1';
         wait until rgmii_rxc'event and rgmii_rxc = '1';
         rgmii_rxd    <= fcs(((8*j)+7) downto ((8*j)+4));
         rgmii_rx_ctl <= '1';
         wait until rgmii_rxc'event and rgmii_rxc = '1';
      end loop;

      -- Clear the data lines.
      rgmii_rxd    <= (others => '0');
      rgmii_rx_ctl <=  '0';

      -- Adding the minimum Interframe gap for a receiver (8 idles)
      for j in 0 to 14 loop
        wait until rgmii_rxc'event and rgmii_rxc = '1';
      end loop;

    end send_rgmii_frame_10_100m;
  begin


    -- Send four frames through the MAC and Design Exampled
    -- at each state Ethernet speed
    --      -- frame 0 = minimum length frame
    --      -- frame 1 = type frame
    --      -- frame 2 = errored frame
    --      -- frame 3 = padded frame
    -------------------------------------------------------

    -- 1 Gb/s speed
    -------------------------------------------------------
    -- Wait for the Management MDIO transaction to finish.
    assert false
      report "--Real simulation starts here" & cr
      severity note;
      wait until management_1g_config_finished;
    -- Wait for the internal resets to settle

    assert false
      report "Sending four frames on rgmii receive interface at 1Gb/s..." & cr
      severity note;

    for current_frame in frame_data'low to frame_data'high loop
      send_rgmii_frame_1g(current_frame);
    end loop;

    -- 100 Mb/s speed
    -------------------------------------------------------
    -- Wait for the Management MDIO transaction to finish.
    wait until management_100m_config_finished;
    assert false
      report "Sending four frames on rgmii receive interface at 100Mb/s..." & cr
      severity note;

    for current_frame in frame_data'low to frame_data'high loop
      send_rgmii_frame_10_100m(current_frame);
    end loop;

    -- 10 Mb/s speed
    -------------------------------------------------------
    -- Wait for the Management MDIO transaction to finish.
    wait until management_10m_config_finished;
    assert false
      report "Sending four frames on rgmii receive interface at 10Mb/s..." & cr
      severity note;

    for current_frame in frame_data'low to frame_data'high loop
      send_rgmii_frame_10_100m(current_frame);
    end loop;

    -- 1 Gb/s speed
    -------------------------------------------------------
    -- Wait for the Management MDIO transaction to finish.
    wait until management_1g_config_finished;
    assert false
      report "Sending four frames on rgmii receive interface at 1Gb/s..." & cr
      severity note;

    for current_frame in frame_data'low to frame_data'high loop
      send_rgmii_frame_1g(current_frame);
    end loop;

    -- Wait for 1G monitor process to complete.
    wait until rx_monitor_finished_gmii_1G;
    rx_rgmii_stimulus_finished <= true;

  end process p_rgmii_stimulus;

------------------------------------------------------------------------------
-- Monitor process. This process checks the data coming out of the
-- transmitter to make sure that it matches that inserted into the
-- receiver.
------------------------------------------------------------------------------
  p_gmii_monitor : process

    ---------------------------------------------------
    -- Procedure to check a transmitted frame at 1Gb/s
    ---------------------------------------------------
    procedure check_gmii_frame_1g (current_frame : in natural) is
      variable current_col   : natural := 0;  -- Column counter within frame
      variable fcs           : std_logic_vector(31 downto 0);
      variable frame_type    : string(1 to 4) := (others => ' ');
    begin

      -- Reset the FCS calculation
      fcs         := (others => '0');

      -- Parse over the preamble field
      while gmii_rx_dv /= '1' or gmii_rxd = "01010101" loop
        wait until gmii_rx_clk'event and gmii_rx_clk = '1';
      end loop;

      -- Parse over the Start of Frame Delimiter (SFD)
      if (gmii_rxd /= "11010101") then
        assert false
          report "GMII SFD not present" & cr
          severity error;
      end if;
      wait until gmii_rx_clk'event and gmii_rx_clk = '1';
      -- Start comparing transmitted dat to received data
      assert false
        report "Comparing Transmitted Data Frames to Received Data Frames at 1Gb/s speed" & cr
        severity note;

      -- frame has started, loop over columns of frame
      while ((frame_data(current_frame).columns(current_col).valid)='1') loop

          assert (gmii_rx_dv = to_stdulogic(frame_data(current_frame).columns(current_col).valid))
            report "gmii_rx_dv incorrect" & cr
            severity error;

          if gmii_rx_dv = '1' then

            -- The transmitted Destination Address was the Source Address of the injected frame
            if current_col < 6 then
              assert (gmii_rxd(7 downto 0) =
                    to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 0)))
                report "gmii_rxd incorrect Destination Address" & cr
                severity error;

            -- The transmitted Source Address was the Destination Address of the injected frame
            elsif current_col >= 6 and current_col < 12 then
              assert (gmii_rxd(7 downto 0) =
                    to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 0)))
                report "gmii_rxd incorrect Source Address" & cr
                severity error;

            -- for remainder of frame
            else
              assert (gmii_rxd(7 downto 0) =
                    to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 0)))
                report "gmii_rxd incorrect" & cr
                severity error;
            end if;
        end if;

        -- calculate expected crc for the frame
        fcs        := calc_crc(gmii_rxd, fcs);

        -- wait for next column of data
        current_col        := current_col + 1;
        wait until gmii_rx_clk'event and gmii_rx_clk = '1';
      end loop;  -- while data valid

      -- Check the FCS matches that expected from calculation
      -- Having checked all data columns, txd must contain FCS.
      for j in 0 to 3 loop
        assert (gmii_rx_dv = '1')
          report "gmii_rx_dv incorrect during FCS field"  & cr
          severity error;

        assert (gmii_rxd = fcs(((8*j)+7) downto (8*j)))
          report "gmii_rxd incorrect during FCS field"  & cr
          severity error;

        wait until gmii_rx_clk'event and gmii_rx_clk = '1';
      end loop;  -- j
    end check_gmii_frame_1g;


    --------------------------------------------------------
    -- Procedure to check a transmitted frame at 10/100Mb/s
    --------------------------------------------------------
    procedure check_gmii_frame_10_100m (current_frame : in natural) is
      variable current_col   : natural := 0;  -- Column counter within frame
      variable fcs           : std_logic_vector(31 downto 0);
    begin

      -- Reset the FCS calculation
      fcs         := (others => '0');

      -- Parse over the preamble field
      while gmii_rx_dv /= '1' or gmii_rxd = "01010101" loop
        wait until gmii_rx_clk'event and gmii_rx_clk = '1';
      end loop;

      -- Start comparing transmitted dat to received data
      assert false
        report "Comparing Transmitted Data Frames to Received Data Frames at 100 or 10Mb/s speed" & cr
        severity note;

      -- Parse over the Start of Frame Delimiter (SFD)
      if (gmii_rxd /= "11011101") then
        assert false
          report "GMII SFD not present" & cr
          severity error;
      end if;
      wait until gmii_rx_clk'event and gmii_rx_clk = '1';

      -- frame has started, loop over columns of frame
      while ((frame_data(current_frame).columns(current_col).valid)='1') loop

          assert (gmii_rx_dv = to_stdulogic(frame_data(current_frame).columns(current_col).valid))
            report "gmii_rx_dv incorrect" & cr
            severity error;

          if gmii_rx_dv = '1' then
            -- The transmitted Destination Address was the Source Address of the injected frame
            fcs := calc_crc(to_stdlogicvector(frame_data(current_frame).columns(current_col).data), fcs);
            assert (gmii_rxd(3 downto 0) =
                  to_stdlogicvector(frame_data(current_frame).columns(current_col).data(3 downto 0)))
              report "gmii_rxd incorrect" & cr
              severity error;
            wait until gmii_rx_clk'event and gmii_rx_clk = '1';
            assert (gmii_rxd(3 downto 0) =
                  to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 4)))
              report "gmii_rxd incorrect" & cr
              severity error;
        end if;

        -- wait for next column of data
        current_col        := current_col + 1;
        wait until gmii_rx_clk'event and gmii_rx_clk = '1';
      end loop;  -- while data valid

      -- Check the FCS matches that expected from calculation
      -- Having checked all data columns, txd must contain FCS.
      for j in 0 to 3 loop
        assert (gmii_rx_dv = '1')
          report "gmii_rx_dv incorrect during FCS field"  & cr
          severity error;

        assert (gmii_rxd(3 downto 0) = fcs(((8*j)+3) downto (8*j)))
          report "gmii_rxd incorrect during FCS field"  & cr
          severity error;

        wait until gmii_rx_clk'event and gmii_rx_clk = '1';

        assert (gmii_rx_dv = '1')
          report "gmii_rx_dv incorrect during FCS field"  & cr
          severity error;

        assert (gmii_rxd(3 downto 0) = fcs(((8*j)+7) downto ((8*j)+4)))
          report "gmii_rxd incorrect during FCS field"  & cr
          severity error;

        wait until gmii_rx_clk'event and gmii_rx_clk = '1';
      end loop;  -- j

    end check_gmii_frame_10_100m;


    variable f                  : tri_mac_frame_type;       -- temporary frame variable
    variable current_frame      : natural   := 0;  -- current frame pointer


  begin 

    -- Compare the transmitted frame to the received frames
    --      -- frame 0 = minimum length frame
    --      -- frame 1 = type frame
    --      -- frame 2 = errored frame
    --      -- frame 3 = padded frame
    -- Repeated for all stated speeds.
    -------------------------------------------------------

    -- wait for reset to complete before starting monitor to ignore false startup errors
    wait until reset'event and reset = '0';

    -- 1 Gb/s speed
    -------------------------------------------------------

    current_frame      := 0;
    

    -- Look for 1Gb/s frames.
    -- loop over all the frames in the stimulus record
    loop

      -- There are only 4 frames in this test.
      if current_frame = frame_data'high + 1 then
        exit;
      end if;

      -- Check the current frame
      check_gmii_frame_1g(current_frame);

      -- move to the next frame
      if current_frame = frame_data'high then
        exit;
      else
        current_frame := current_frame + 1;
      end if;

    end loop;

    rx_monitor_finished_gmii_1G <= true;
    wait for 200 ns;

    -- 100 Mb/s speed
    -------------------------------------------------------

    current_frame      := 0;

    -- Look for 100Mb/s frames.
    -- loop over all the frames in the stimulus vector
    loop

      -- There are only 4 frames in this test.
      if current_frame = frame_data'high + 1 then
        exit;
      end if;

      -- Check the current frame
      check_gmii_frame_10_100m(current_frame);

      -- move to the next frame
      if current_frame = frame_data'high then
        exit;
      else
        current_frame := current_frame + 1;
      end if;

    end loop;
    rx_monitor_finished_gmii_100M <= true;
    rx_monitor_finished_gmii_1G <= false;
    wait for 200 ns;

    -- 10 Mb/s speed
    -------------------------------------------------------

    current_frame      := 0;

    -- Look for 10Mb/s frames.
    -- loop over all the frames in the stimulus vector
    loop

      -- There are only 4 frames in this test.
      if current_frame = frame_data'high + 1 then
        exit;
      end if;

      -- Check the current frame
      check_gmii_frame_10_100m(current_frame);

      -- move to the next frame
      if current_frame = frame_data'high then
        exit;
      else
        current_frame := current_frame + 1;
      end if;

    end loop;
    rx_monitor_finished_gmii_100M <= false;
    rx_monitor_finished_gmii_10M <= true;
    wait for 200 ns;

    -- 1 Gb/s speed
    -------------------------------------------------------

    current_frame      := 0;

    -- Look for 1Gb/s frames.
    -- loop over all the frames in the stimulus record
    loop

      -- There are only 4 frames in this test.
      if current_frame = frame_data'high + 1 then
        exit;
      end if;

      -- Check the current frame
      check_gmii_frame_1g(current_frame);

      -- move to the next frame
      if current_frame = frame_data'high then
        exit;
      else
        current_frame := current_frame + 1;
      end if;

    end loop;

    rx_monitor_finished_gmii_10M <= false;
    rx_monitor_finished_gmii_1G <= true;
    wait for 200 ns;

    assert false
      report "Test completed successfully" 
      severity note;
      report "Simulation stopped"
      severity failure;
  end process p_gmii_monitor;

    ------------------------------------------------------------------------------
  -- Monitor process. This process checks the data coming out of the
  -- transmitter to make sure that it matches that inserted into the
  -- receiver.
  ------------------------------------------------------------------------------
  p_rgmii_monitor : process

    ---------------------------------------------------
    -- Procedure to check a transmitted frame at 1Gb/s
    ---------------------------------------------------
    procedure check_rgmii_frame_1g (current_frame : in natural) is
      variable current_col   : integer := 0;  -- Column counter within frame
      variable fcs           : std_logic_vector(31 downto 0);
      variable frame_type    : string(1 to 4) := (others => ' ');

      -- Holds rising and falling rgmii data set
      variable rgmii_column  : std_logic_vector(7 downto 0);
    begin

      -- Reset the FCS calculation
      fcs         := (others => '0');

      -- wait until the first real column of data to come out of RX client
      while rgmii_tx_ctl /= '1' loop
        wait until rgmii_txc'event;
      end loop;

--      -- check tx_ctl has gone high at the correct edge (should be rising)
--      if (rgmii_txc = '0') then
--        assert false
--          report "rgmii tx_ctl started on incorrect phase" & cr
--          severity error;
--      end if;

      -- Parse over the preamble field
      while rgmii_txd = "0101" loop
        wait until rgmii_txc'event and rgmii_txc = '0';
      end loop;

      -- Parse over the Start of Frame Delimiter (SFD)
      if (rgmii_txd /= "1101") then
        assert false
          report "RGMII SFD not present" & cr
          severity error;
      end if;
      wait until rgmii_txc'event and rgmii_txc = '1';

      assert false
        report "Comparing Transmitted Data Frames to Received Data Frames" & cr
        severity note;

      -- frame has started, loop over columns of frame
      while ((frame_data(current_frame).columns(current_col).valid)='1') loop

        rgmii_column(3 downto 0) := rgmii_txd;
        assert (rgmii_tx_ctl = '1')
          report "Expected error frame is detected" & cr
          severity note;
        wait until rgmii_txc'event and rgmii_txc = '0';
        rgmii_column(7 downto 4) := rgmii_txd;

        if rgmii_tx_ctl = '1' then

            -- The transmitted Destination Address was the Source Address of the injected frame
            if current_col < 6 then
              assert (rgmii_column(7 downto 0) =
                  to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 0)))
              report "rgmii_txd incorrect during Destination Address" & cr
              severity error;

            -- The transmitted Source Address was the Destination Address of the injected frame
            elsif current_col >= 6 and current_col < 12 then
              assert (rgmii_column(7 downto 0) =
                  to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 0)))
              report "rgmii_txd incorrect during Source Address"  & cr
              severity error;

            -- for remainder of frame
            else
              assert (rgmii_column(7 downto 0) =
                  to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 0)))
              report "rgmii_txd incorrect"  & cr
              severity error;
            end if;
        else
          assert false
            report "Expected error frame is detected" & cr
            severity note;
        end if;

        -- calculate expected crc for the frame
        fcs        := calc_crc(rgmii_column, fcs);

        -- wait for next column of data
        current_col        := current_col + 1;
        wait until rgmii_txc'event and rgmii_txc = '1';
      end loop;  -- while data valid

      -- Check the FCS
      -- Having checked all data columns, txd must contain FCS.
      for j in 0 to 3 loop

        rgmii_column(3 downto 0) := rgmii_txd;
        assert (rgmii_tx_ctl = '1')
          report "rgmii_tx_ctl incorrect during FCS field"  & cr
          severity error;
        wait until rgmii_txc'event and rgmii_txc = '0';
        rgmii_column(7 downto 4) := rgmii_txd;

        assert (rgmii_tx_ctl = '1')
          report "rgmii_tx_ctl incorrect during FCS field"  & cr
          severity error;

        assert (rgmii_column = fcs(((8*j)+7) downto (8*j)))
          report "rgmii_txd incorrect during FCS field" & cr
          severity error;

        wait until rgmii_txc'event and rgmii_txc = '1';
      end loop;  -- j

    end check_rgmii_frame_1g;


    --------------------------------------------------------
    -- Procedure to check a transmitted frame at 10/100Mb/s
    --------------------------------------------------------
    procedure check_rgmii_frame_10_100m (current_frame : in natural) is
      variable current_col   : natural := 0;  -- Column counter within frame
      variable fcs           : std_logic_vector(31 downto 0);

      -- Holds rising and falling rgmii data set
      variable rgmii_column  : std_logic_vector(7 downto 0);
    begin

      -- Reset the FCS calculation
      fcs         := (others => '0');

      -- wait until the first real column of data to come out of RX client
      while rgmii_tx_ctl /= '1' loop
        wait until rgmii_txc'event;
      end loop;
        
      -- check tx_ctl has gone high at the correct edge (should be rising)
--      if (rgmii_txc = '0') then
--        assert false
--          report "rgmii tx_ctl started on incorrect phase" & cr
--          severity error;
--      end if;

      -- Parse over the preamble field
      while rgmii_txd = "0101" loop
        wait until rgmii_txc'event and rgmii_txc = '1';
      end loop;

      -- Start comparing transmitted dat to received data
      assert false
        report "Comparing Transmitted Data Frames to Received Data Frames" & cr
        severity note;

      -- Parse over the Start of Frame Delimiter (SFD)
      if (rgmii_txd /= "1101") then
        assert false
          report "RGMII SFD not present" & cr
          severity error;
      end if;
      wait until rgmii_txc'event and rgmii_txc = '1';

      -- frame has started, loop over columns of frame
      while ((frame_data(current_frame).columns(current_col).valid)='1') loop

        rgmii_column(3 downto 0) := rgmii_txd;
        assert (rgmii_tx_ctl = '1')
          report "Expected error frame is detected" & cr
          severity note;
        wait until rgmii_txc'event and rgmii_txc = '1';
        rgmii_column(7 downto 4) := rgmii_txd;

        if rgmii_tx_ctl = '1' then

            -- The transmitted Destination Address was the Source Address of the injected frame
            if current_col < 6 then
              assert (rgmii_column(7 downto 0) =
                  to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 0)))
              report "rgmii_txd incorrect during Destination Address" & cr
              severity error;

            -- The transmitted Source Address was the Destination Address of the injected frame
            elsif current_col >= 6 and current_col < 12 then
              assert (rgmii_column(7 downto 0) =
                  to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 0)))
              report "rgmii_txd incorrect during Source Address"  & cr
              severity error;

            -- for remainder of frame
            else
              assert (rgmii_column(7 downto 0) =
                  to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 0)))
              report "rgmii_txd incorrect"  & cr
              severity error;

            end if;
        else
          assert false
            report "Expected error frame is detected" & cr
            severity note;
        end if;

        -- calculate expected crc for the frame
        fcs        := calc_crc(rgmii_column, fcs);

        -- wait for next column of data
        current_col        := current_col + 1;
        wait until rgmii_txc'event and rgmii_txc = '1';
      end loop;  -- while data valid

      -- Check the FCS
      -- Having checked all data columns, txd must contain FCS.
      for j in 0 to 3 loop

        rgmii_column(3 downto 0) := rgmii_txd;
        assert (rgmii_tx_ctl = '1')
          report "rgmii_tx_ctl incorrect during FCS field" & cr
          severity error;
        wait until rgmii_txc'event and rgmii_txc = '1';
        rgmii_column(7 downto 4) := rgmii_txd;

        assert (rgmii_tx_ctl = '1')
          report "rgmii_tx_ctl incorrect during FCS field"  & cr
          severity error;

        assert (rgmii_column = fcs(((8*j)+7) downto (8*j)))
          report "rgmii_txd incorrect during FCS field" & cr
          severity error;

        wait until rgmii_txc'event and rgmii_txc = '0';
         -- check tx_ctl has gone low at the correct edge (should be rising)
--        assert (rgmii_tx_ctl = '1')
--          report "tx_ctl stopped on incorrect phase" & cr
--          severity error;

        wait until rgmii_txc'event and rgmii_txc = '1';
      end loop;  -- j

    end check_rgmii_frame_10_100m;


    variable f                  : tri_mac_frame_type;       -- temporary frame variable
    variable current_frame      : natural   := 0;  -- current frame pointer


  begin 


    -- Compare the transmitted frame to the received frames
    --      -- frame 0 = minimum length frame
    --      -- frame 1 = type frame
    --      -- frame 2 = errored frame
    --      -- frame 3 = padded frame
    -- Repeated for all stated speeds.
    -------------------------------------------------------

    -- wait for reset to complete before starting monitor to ignore false startup errors
    wait until reset'event and reset = '0';

       -- 1 Gb/s speed
       -------------------------------------------------------

       current_frame      := 0;

       -- Look for 1Gb/s frames.
       -- loop over all the frames in the stimulus record
       loop

         -- There are only 4 frames in this test.
         if current_frame = frame_data'high + 1 then
           exit;
         end if;

         -- Check the current frame
         check_rgmii_frame_1g(current_frame);

         -- move to the next frame
         if current_frame = frame_data'high then
           exit;
         else
           current_frame := current_frame + 1;
         end if;

       end loop;

       tx_monitor_finished_rgmii_1G <= true;
       wait for 200 ns;

     -- 100 Mb/s speed
     -------------------------------------------------------

     current_frame      := 0;

     -- Look for 100Mb/s frames.
     -- loop over all the frames in the stimulus vector
     loop

       -- There are only 4 frames in this test.
       if current_frame = frame_data'high + 1 then
         exit;
       end if;

       -- Check the current frame
       check_rgmii_frame_10_100m(current_frame);

       -- move to the next frame
       if current_frame = frame_data'high then
         exit;
       else
         current_frame := current_frame + 1;
       end if;

     end loop;
     tx_monitor_finished_rgmii_100M <= true;
     tx_monitor_finished_rgmii_1G <= false;
     wait for 200 ns;

       -- 10 Mb/s speed
       -------------------------------------------------------

       current_frame      := 0;

       -- Look for 10Mb/s frames.
       -- loop over all the frames in the stimulus vector
       loop

         -- There are only 4 frames in this test.
         if current_frame = frame_data'high + 1 then
           exit;
         end if;

         -- Check the current frame
         check_rgmii_frame_10_100m(current_frame);

         -- move to the next frame
         if current_frame = frame_data'high then
           exit;
         else
           current_frame := current_frame + 1;
         end if;

       end loop;
       tx_monitor_finished_rgmii_100M <= false;
       tx_monitor_finished_rgmii_10M <= true;
       wait for 200 ns;

       -- 1 Gb/s speed
       -------------------------------------------------------

       current_frame      := 0;

       -- Look for 1Gb/s frames.
       -- loop over all the frames in the stimulus record
       loop

         -- There are only 4 frames in this test.
         if current_frame = frame_data'high + 1 then
           exit;
         end if;

         -- Check the current frame
         check_rgmii_frame_1g(current_frame);

         -- move to the next frame
         if current_frame = frame_data'high then
           exit;
         else
           current_frame := current_frame + 1;
         end if;

       end loop;

       tx_monitor_finished_rgmii_10M <= false;
       tx_monitor_finished_rgmii_1G <= true;
       wait for 200 ns;

       assert false
        report "Simulation stopped"
        severity failure;

  end process p_rgmii_monitor;


  ------------------------------------------------------------------------------
  -- Configuration process. This process will reset the core, then write
  -- to configuration register 0 to turn off autonegotiation and take
  -- the core out of the isolate state.
  ------------------------------------------------------------------------------

   -- Main configuration process
  p_configuration : process
  begin
    assert false
      report "Timing checks are not valid" & cr
      severity note;

    mdio_o <= '1';
    enable_mdc <= '0';

    -- reset the core
    assert false
      report "Resetting core..." & cr
      severity note;
    reset <= '1';
    wait for 1000 ns;
    wait until clkin'event and clkin = '1';
    reset <= '0';

    wait for 2 us;

    -- Write to PCS Management configuration register 0.
    assert false
      report "Setting MAC speed to 1Gb/s to Control Register in PCS sublayer...." & cr
      severity note;
    wait until mdc'event and mdc = '0';  -- centre mdio around mdc rising edge

    -- transmit serial management frame
    enable_mdc <= '1';
    for i in mdio_1g_data'low to mdio_1g_data'high loop
      mdio_o <= mdio_1g_data(i);
      wait until mdc'event and mdc = '0';
    end loop; -- i
    wait until mdc'event and mdc = '0';
    enable_mdc <= '0';
    mdio_o <= 'H';  -- simulate tri-state with weak pullup

    wait until mdc'event and mdc = '0';

    -- wait for core to obtain synchronisation
    wait until mdc'event and mdc = '0';
    management_1g_config_finished <= true;
    wait until (rx_monitor_finished_gmii_1G and tx_monitor_finished_rgmii_1G);
    management_1g_config_finished <= false;

    -- reset the core
    assert false
      report "Resetting core..." & cr
      severity note;
    reset <= '1';
    wait for 1000 ns;
    wait until clkin'event and clkin = '1';
    reset <= '0';

    wait for 2 us;

    -- Write to PCS Management configuration register 0.
    assert false
      report "Setting MAC speed to 100Mb/s to Control Register in PCS sublayer...." & cr
      severity note;
    wait until mdc'event and mdc = '0';  -- centre mdio around mdc rising edge

    enable_mdc <= '1';
    -- transmit serial management frame
    for i in mdio_100m_data'low to mdio_100m_data'high loop
      mdio_o <= mdio_100m_data(i);
      wait until mdc'event and mdc = '0';
    end loop; -- i
    wait until mdc'event and mdc = '0';
    enable_mdc <= '0';
    mdio_o <= 'H';  -- simulate tri-state with weak pullup

    wait until mdc'event and mdc = '0';

    -- wait for core to obtain synchronisation
    wait until mdc'event and mdc = '0';

    management_100m_config_finished <= true;
    wait until (rx_monitor_finished_gmii_100M and tx_monitor_finished_rgmii_100M);
    management_100m_config_finished <= false;

    -- reset the core
    assert false
      report "Resetting core..." & cr
      severity note;
    reset <= '1';
    wait for 1000 ns;
    wait until clkin'event and clkin = '1';
    reset <= '0';

    wait for 2 us;
    -- Write to PCS Management configuration register 0.
    assert false
      report "Setting MAC speed to 10Mb/s to Control Register in PCS sublayer...." & cr
      severity note;
    wait until mdc'event and mdc = '0';  -- centre mdio around mdc rising edge
    enable_mdc <= '1';

    -- transmit serial management frame
    for i in mdio_10m_data'low to mdio_10m_data'high loop
      mdio_o <= mdio_10m_data(i);
      wait until mdc'event and mdc = '0';
    end loop; -- i
    wait until mdc'event and mdc = '0';
    enable_mdc <= '0';
    mdio_o <= 'H';  -- simulate tri-state with weak pullup

    wait until mdc'event and mdc = '0';

    -- wait for core to obtain synchronisation
    wait until mdc'event and mdc = '0';

    management_10m_config_finished <= true;
    wait until (rx_monitor_finished_gmii_10M and tx_monitor_finished_rgmii_10M);
    management_10m_config_finished <= false;

    -- reset the core
    assert false
      report "Resetting core..." & cr
      severity note;
    reset <= '1';
    wait for 1000 ns;
    wait until clkin'event and clkin = '1';
    reset <= '0';

    wait for 2 us;

    -- Write to PCS Management configuration register 0.
    assert false
      report "Setting MAC speed to 1Gb/s to Control Register in PCS sublayer...." & cr
      severity note;
    wait until mdc'event and mdc = '0';  -- centre mdio around mdc rising edge

    -- transmit serial management frame
    enable_mdc <= '1';
    for i in mdio_1g_data'low to mdio_1g_data'high loop
      mdio_o <= mdio_1g_data(i);
      wait until mdc'event and mdc = '0';
    end loop; -- i
    wait until mdc'event and mdc = '0';
    enable_mdc <= '0';
    mdio_o <= 'H';  -- simulate tri-state with weak pullup

    wait until mdc'event and mdc = '0';

    -- wait for core to obtain synchronisation
    wait until mdc'event and mdc = '0';

    management_1g_config_finished <= true;
    wait until (rx_monitor_finished_gmii_1G and tx_monitor_finished_rgmii_1G);
    management_1g_config_finished <= false;

    wait;
  end process p_configuration;
       
end behav;
