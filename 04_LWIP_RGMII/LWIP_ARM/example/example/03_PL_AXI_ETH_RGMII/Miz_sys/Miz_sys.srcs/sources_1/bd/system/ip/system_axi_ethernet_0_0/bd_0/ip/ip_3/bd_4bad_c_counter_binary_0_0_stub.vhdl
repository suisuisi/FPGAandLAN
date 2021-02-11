-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Thu Jul 19 15:06:39 2018
-- Host        : LB-201803132255 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               j:/FEP/ETH1512/MZ7035/CH02_PL_AXI_ETH_RGMII/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_3/bd_4bad_c_counter_binary_0_0_stub.vhdl
-- Design      : bd_4bad_c_counter_binary_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z035ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_4bad_c_counter_binary_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end bd_4bad_c_counter_binary_0_0;

architecture stub of bd_4bad_c_counter_binary_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,SCLR,THRESH0,Q[23:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_counter_binary_v12_0_11,Vivado 2017.4";
begin
end;
