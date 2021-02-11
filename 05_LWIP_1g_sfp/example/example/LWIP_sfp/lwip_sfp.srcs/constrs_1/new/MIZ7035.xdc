########## LED CONSTRAINTS FOR the MIZ7035 BOARD ##########
set_property PACKAGE_PIN G9  [get_ports {led[0]}]
set_property PACKAGE_PIN H11 [get_ports {led[1]}]
set_property PACKAGE_PIN K10 [get_ports {led[2]}]
set_property PACKAGE_PIN B9  [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {led[*]}]

########## GTP CONSTRAINTS FOR the MIZ7035 BOARD ##########
set_property PACKAGE_PIN U6 [get_ports gtrefclk_in_clk_p]
set_property PACKAGE_PIN U5 [get_ports gtrefclk_in_clk_n]

create_clock -period 8.000 -name gtrefclk -add [get_ports gtrefclk_in_clk_p]

########## --------- SFPA ------------##########
set_property PACKAGE_PIN G10 [get_ports sfp_tx_disable]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable]

set_property LOC GTXE2_CHANNEL_X0Y15 [get_cells */*/*/*/transceiver_inst/gtwizard_inst/*/gtwizard_i/gt0_GTWIZARD_i/gtxe2_i]



