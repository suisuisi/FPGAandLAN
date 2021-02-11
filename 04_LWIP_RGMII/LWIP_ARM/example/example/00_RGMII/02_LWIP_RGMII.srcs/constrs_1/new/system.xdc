########## CLOCK CONSTRAINTS FOR the MIZ7035 BOARD ##########
set_property PACKAGE_PIN C8 [get_ports clk_100]
set_property IOSTANDARD LVCMOS15 [get_ports clk_100]

########## CLOCK CONSTRAINTS FOR the MIZ7035 BOARD ##########
#SW1
set_property PACKAGE_PIN A8 [get_ports rst_key]    
set_property IOSTANDARD LVCMOS15 [get_ports rst_key]
set_false_path -from [get_ports rst_key]

########## GTX CONSTRAINTS FOR the MIZ7035 BOARD ##########
set_property PACKAGE_PIN U6 [get_ports mgt_clk_clk_p]
set_property PACKAGE_PIN U5 [get_ports mgt_clk_clk_n]

########## --------- SFPA ------------##########
set_property PACKAGE_PIN G10 [get_ports sfp_tx_disable]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable]

#set_property PACKAGE_PIN G10 [get_ports sfp_tx_p]
#set_property PACKAGE_PIN G10 [get_ports sfp_tx_n]
#set_property PACKAGE_PIN G10 [get_ports sfp_rx_p]
#set_property PACKAGE_PIN G10 [get_ports sfp_rx_n]
set_property LOC GTXE2_CHANNEL_X0Y15 [get_cells */*/*/transceiver_inst/gtwizard_inst/*/gtwizard_i/gt0_GTWIZARD_i/gtxe2_i]

# Transmitter clock period constraints: please do not relax
#create_clock -period 8.000 -name gtrefclk -add [get_ports gtrefclk1_p]