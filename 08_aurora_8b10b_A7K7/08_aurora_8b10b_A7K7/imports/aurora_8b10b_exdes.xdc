
################################################################################
##
## (c) Copyright 2010-2014 Xilinx, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
##
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.
##
##
################################################################################
## XDC generated for xc7a100t-fgg484-2 device
# 125.0MHz GT Reference clock constraint
create_clock -period 8.000 -name GT_REFCLK1 [get_ports GTPQ2_P]
####################### GT reference clock LOC #######################

############################### GT LOC ###################################

########## --------- SFP1 ------------##########
set_property PACKAGE_PIN T16 [get_ports sfp1_tx_disable]

set_property IOSTANDARD LVCMOS33 [get_ports sfp1_tx_disable]
\
set_property PACKAGE_PIN E10 [get_ports GTPQ2_N]
set_property PACKAGE_PIN F10 [get_ports GTPQ2_P]

set_property PACKAGE_PIN B4 [get_ports TXP]

create_clock -period 20.000 -name INIT_CLK_IN -waveform {0.000 10.000} [get_ports INIT_CLK_IN]
set_property PACKAGE_PIN L19 [get_ports INIT_CLK_IN]
set_property IOSTANDARD LVCMOS33 [get_ports INIT_CLK_IN]
set_property PACKAGE_PIN F21 [get_ports sys_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports sys_rst_n]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]

 set_property CFGBVS VCCO [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE 3.3 [current_design]
 #where value2 is the voltage provided to configuration bank 0
