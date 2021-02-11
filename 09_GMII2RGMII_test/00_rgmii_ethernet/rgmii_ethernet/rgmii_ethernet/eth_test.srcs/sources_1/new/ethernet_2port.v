`timescale 1ns / 1ps  
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ethernet_test 
//////////////////////////////////////////////////////////////////////////////////
module ethernet_port(
input sys_clk_p,      // 开发板上差分输入时钟200Mhz， 正极
input sys_clk_n,      // 开发板上差分输入时钟200Mhz， 负极  
input key,
output [3:0] led,
input rst_n,
output e_reset,
output e_mdc,
inout  e_mdio,
output[3:0] rgmii_txd,
output rgmii_txctl,
output rgmii_txc,
input[3:0] rgmii_rxd,
input rgmii_rxctl,
input rgmii_rxc
); 
 
  wire sys_clk_200m;
  wire sys_clk;
  //clock generate 200M and 50M
clk_ref refclk
(
// Clock out ports
.clk_out1(sys_clk_200m),     // output clk_out1
.clk_out2(sys_clk),     // output clk_out2
// Status and control signals
.reset(1'b0), // input reset
.locked(),       // output locked
// Clock in ports
.clk_in1_p(sys_clk_p),    // input clk_in1_p
.clk_in1_n(sys_clk_n));    // input clk_in1_n   
          
ethernet_test u1(
.sys_clk_50m(sys_clk),
.sys_clk(sys_clk_200m),
.key_in(key),
.rst_n(rst_n),
.led(led),
.e_reset(e_reset),          
.e_mdc(e_mdc),
.e_mdio(e_mdio),               

.rgmii_txd(rgmii_txd),
.rgmii_txctl(rgmii_txctl),     
.rgmii_txc(rgmii_txc),
.rgmii_rxd(rgmii_rxd),     
.rgmii_rxctl(rgmii_rxctl),
.rgmii_rxc(rgmii_rxc)     
);     
endmodule                      
