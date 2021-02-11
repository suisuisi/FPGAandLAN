################################################################

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
############## clock define##################
create_clock -period 5.000 [get_ports sys_clk_p]
set_property PACKAGE_PIN R4 [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_clk_p]
##############reset key define##################
set_property PACKAGE_PIN F15 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
##############reset key define##################
set_property PACKAGE_PIN L20 [get_ports key]
set_property IOSTANDARD LVCMOS33 [get_ports key]
#########################ethernet######################
create_clock -period 8.000 [get_ports rgmii_rxc]
set_property IOSTANDARD LVCMOS33 [get_ports {rgmii_rxd[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgmii_txd[*]}]
set_property SLEW FAST [get_ports {rgmii_txd[*]}]

set_property IOSTANDARD LVCMOS33 [get_ports e_mdc]
set_property IOSTANDARD LVCMOS33 [get_ports e_mdio]
set_property IOSTANDARD LVCMOS33 [get_ports e_reset]
set_property IOSTANDARD LVCMOS33 [get_ports rgmii_rxc]
set_property IOSTANDARD LVCMOS33 [get_ports rgmii_rxctl]
set_property IOSTANDARD LVCMOS33 [get_ports rgmii_txc]
set_property IOSTANDARD LVCMOS33 [get_ports rgmii_txctl]
set_property SLEW FAST [get_ports rgmii_txc]
set_property SLEW FAST [get_ports rgmii_txctl]

set_property PACKAGE_PIN P17 [get_ports {rgmii_rxd[3]}]
set_property PACKAGE_PIN U17 [get_ports {rgmii_rxd[2]}]
set_property PACKAGE_PIN U18 [get_ports {rgmii_rxd[1]}]
set_property PACKAGE_PIN P19 [get_ports {rgmii_rxd[0]}]
set_property PACKAGE_PIN R16 [get_ports {rgmii_txd[3]}]
set_property PACKAGE_PIN R17 [get_ports {rgmii_txd[2]}]
set_property PACKAGE_PIN P16 [get_ports {rgmii_txd[1]}]
set_property PACKAGE_PIN N14 [get_ports {rgmii_txd[0]}]
set_property PACKAGE_PIN N13 [get_ports e_mdc]
set_property PACKAGE_PIN P14 [get_ports e_mdio]
set_property PACKAGE_PIN R14 [get_ports e_reset]
set_property PACKAGE_PIN V18 [get_ports rgmii_rxc]
set_property PACKAGE_PIN R19 [get_ports rgmii_rxctl]
set_property PACKAGE_PIN P15 [get_ports rgmii_txc]
set_property PACKAGE_PIN N17 [get_ports rgmii_txctl]
##############LED define##################
set_property PACKAGE_PIN L13 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

set_property PACKAGE_PIN M13 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

set_property PACKAGE_PIN K14 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

set_property PACKAGE_PIN K13 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]



set_false_path -reset_path -from [get_clocks -of_objects [get_pins refclk/inst/mmcm_adv_inst/CLKOUT1]] -to [get_clocks rgmii1_rxc]
set_false_path -reset_path -from [get_clocks -of_objects [get_pins refclk/inst/mmcm_adv_inst/CLKOUT1]] -to [get_clocks rgmii2_rxc]
