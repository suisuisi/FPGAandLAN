########## CLOCK CONSTRAINTS FOR the MIA701 BOARD ##########
set_property PACKAGE_PIN C8 [get_ports clk_50]
#set_property IOSTANDARD LVCMOS33 [get_ports clk_50]
set_property IOSTANDARD LVCMOS15 [get_ports clk_50]
#set_property PACKAGE_PIN V13 [get_ports clk_74]
#set_property IOSTANDARD LVCMOS33 [get_ports clk_74]

########## CLOCK CONSTRAINTS FOR the MIA701 BOARD ##########
set_property PACKAGE_PIN A8 [get_ports key1]
set_property IOSTANDARD LVCMOS15 [get_ports key1]

########## RGMII SPECIFIC IO CONSTRAINTS FOR the MIA701 BOARD ##########
### These PIN constraints use the on-board PHY which requires 3.3V ###
###############-----ETH1~ETH4 COMMON---#################
set_property PACKAGE_PIN AA12 [get_ports phy_reset]
#set_property PACKAGE_PIN P16 [get_ports phy_mdio]
#set_property PACKAGE_PIN R16 [get_ports phy_mdc]

set_property IOSTANDARD LVCMOS33 [get_ports phy_reset]
#set_property IOSTANDARD LVCMOS33 [get_ports phy_mdio]
#set_property IOSTANDARD LVCMOS33 [get_ports phy_mdc]
###############-----ETH1----#################
### -----------------RX------------------###
set_property PACKAGE_PIN AC14  [get_ports phy1_rgmii_rx_clk]
set_property PACKAGE_PIN W16 [get_ports phy1_rgmii_rx_ctl]
set_property PACKAGE_PIN W15  [get_ports {phy1_rgmii_rx_data[0]}]
set_property PACKAGE_PIN Y17  [get_ports {phy1_rgmii_rx_data[1]}]
set_property PACKAGE_PIN Ad15  [get_ports {phy1_rgmii_rx_data[2]}]
set_property PACKAGE_PIN AB12  [get_ports {phy1_rgmii_rx_data[3]}]
### -----------------TX------------------###
set_property PACKAGE_PIN Y12  [get_ports phy1_rgmii_tx_clk]
set_property PACKAGE_PIN Y13  [get_ports phy1_rgmii_tx_ctl]
set_property PACKAGE_PIN AE16 [get_ports {phy1_rgmii_tx_data[0]}]
set_property PACKAGE_PIN AE15 [get_ports {phy1_rgmii_tx_data[1]}]
set_property PACKAGE_PIN Y11  [get_ports {phy1_rgmii_tx_data[2]}]
set_property PACKAGE_PIN W13  [get_ports {phy1_rgmii_tx_data[3]}]

set_property SLEW FAST [get_ports phy1_rgmii_tx_clk]
set_property SLEW FAST [get_ports phy1_rgmii_tx_ctl]
set_property SLEW FAST [get_ports {phy1_rgmii_tx_data[*]}]

set_property IOSTANDARD LVCMOS33 [get_ports phy1_rgmii_rx_clk]
set_property IOSTANDARD LVCMOS33 [get_ports phy1_rgmii_rx_ctl]
set_property IOSTANDARD LVCMOS33 [get_ports {phy1_rgmii_rx_data[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports phy1_rgmii_tx_clk]
set_property IOSTANDARD LVCMOS33 [get_ports phy1_rgmii_tx_ctl]
set_property IOSTANDARD LVCMOS33 [get_ports {phy1_rgmii_tx_data[*]}]
############################################################
# Associate the IDELAYCTRL in the support level to the I/Os
# in the core using IODELAYs
############################################################
set_property IODELAY_GROUP iodelay_grp [get_cells {idelayctrl_inst rgmii_receive_module/delay_rgmii_rx_ctl {rgmii_receive_module/RGMII_RX_DATA_BUS[*].delay_rgmii_rxd}}]

# the following properties can be adjusted if required to adjust the IO timing
# the value shown is the default used by the IP - the maximum available value is 31
# increasing this value will improve the hold timing but will also add jitter.
set_property IDELAY_VALUE 14 [get_cells rgmii_receive_module/delay_rgmii_rx_ctl]
set_property IDELAY_VALUE 14 [get_cells {rgmii_receive_module/RGMII_RX_DATA_BUS[*].delay_rgmii_rxd}]

# Transmitter clock period constraints: please do not relax
#create_clock -period 20.000 -name clk_50 [get_ports clk_50]
#set_input_jitter refclk_p 0.050

#set rx_clk [get_clocks -include_generated_clocks -of [get_ports phy1_rgmii_rx_clk]]
create_clock -period 8.000 -name phy1_rx_clk [get_ports phy1_rgmii_rx_clk]

set_input_delay -clock [get_clocks phy1_rx_clk] -max 2.800 [get_ports {{phy1_rgmii_rx_data[*]} phy1_rgmii_rx_ctl}]
set_input_delay -clock [get_clocks phy1_rx_clk] -min 1.200 [get_ports {{phy1_rgmii_rx_data[*]} phy1_rgmii_rx_ctl}]
set_input_delay -clock [get_clocks phy1_rx_clk] -clock_fall -max -add_delay 2.800 [get_ports {{phy1_rgmii_rx_data[*]} phy1_rgmii_rx_ctl}]
set_input_delay -clock [get_clocks phy1_rx_clk] -clock_fall -min -add_delay 1.200 [get_ports {{phy1_rgmii_rx_data[*]} phy1_rgmii_rx_ctl}]

#set_false_path -rise_from [get_clocks phy1_rx_clk] -fall_to [get_clocks phy1_rx_clk] -setup
#set_false_path -fall_from [get_clocks phy1_rx_clk] -rise_to [get_clocks phy1_rx_clk] -setup
#set_false_path -rise_from [get_clocks phy1_rx_clk] -rise_to [get_clocks phy1_rx_clk] -hold
#set_false_path -fall_from [get_clocks phy1_rx_clk] -fall_to [get_clocks phy1_rx_clk] -hold

set_clock_groups -name async_clock -asynchronous -group [get_clocks phy1_rx_clk] -group [get_clocks [list [get_clocks -of_objects [get_pins clk_wiz_0/inst/mmcm_adv_inst/CLKOUT1]]]]

set tx_clk     [get_clocks -include_generated_clocks -of [get_pins clk_wiz_0/inst/mmcm_adv_inst/CLKOUT1]]
create_generated_clock -name phy_tx_clk -source [get_pins clk_wiz_0/inst/mmcm_adv_inst/CLKOUT1] -multiply_by 1 [get_ports phy1_rgmii_tx_clk]

set_output_delay -clock [get_clocks phy_tx_clk] -max -0.900 [get_ports {phy1_rgmii_tx_ctl {phy1_rgmii_tx_data[*]}}]
set_output_delay -clock [get_clocks phy_tx_clk] -min -2.900 [get_ports {phy1_rgmii_tx_ctl {phy1_rgmii_tx_data[*]}}]
set_output_delay -clock [get_clocks phy_tx_clk] -max -0.900 [get_ports {phy1_rgmii_tx_ctl {phy1_rgmii_tx_data[*]}}] -clock_fall  -add_delay
set_output_delay -clock [get_clocks phy_tx_clk] -min -2.900 [get_ports {phy1_rgmii_tx_ctl {phy1_rgmii_tx_data[*]}}] -clock_fall  -add_delay


set_false_path -fall_from $tx_clk -rise_to [get_clocks phy_tx_clk] -setup
set_false_path -rise_from $tx_clk -fall_to [get_clocks phy_tx_clk] -setup
set_false_path -fall_from $tx_clk -fall_to [get_clocks phy_tx_clk] -hold
set_false_path -rise_from $tx_clk -rise_to [get_clocks phy_tx_clk] -hold

set_multicycle_path 0 -setup -end -rise_from $tx_clk -rise_to [get_clocks phy_tx_clk]
set_multicycle_path 0 -setup -end -fall_from $tx_clk -fall_to [get_clocks phy_tx_clk]




