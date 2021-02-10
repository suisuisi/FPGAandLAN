########## CLOCK CONSTRAINTS FOR the MIZ7035 BOARD ##########
set_property PACKAGE_PIN C8 [get_ports clk_100]
set_property IOSTANDARD LVCMOS15 [get_ports clk_100]

########## CLOCK CONSTRAINTS FOR the MIZ7035 BOARD ##########
#SW1
set_property PACKAGE_PIN A8 [get_ports rst_key]    
set_property IOSTANDARD LVCMOS15 [get_ports rst_key]
set_false_path -from [get_ports rst_key]

########## LED CONSTRAINTS FOR the MIZ7035 BOARD ##########
#LD4
set_property PACKAGE_PIN B9 [get_ports {led[0]}] 
#LD3  
set_property PACKAGE_PIN K10 [get_ports {led[1]}] 
#LD2  
set_property PACKAGE_PIN H11 [get_ports {led[2]}]
#LD1
set_property PACKAGE_PIN G9 [get_ports {led[3]}]   
set_property IOSTANDARD LVCMOS15 [get_ports {led[*]}]

########## GTX CONSTRAINTS FOR the MIZ7035 BOARD ##########
set_property PACKAGE_PIN U6 [get_ports gtrefclk1_p]
set_property PACKAGE_PIN U5 [get_ports gtrefclk1_n]

########## --------- SFPA ------------##########
set_property PACKAGE_PIN G10 [get_ports sfp_tx_disable]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable]

#set_property PACKAGE_PIN G10 [get_ports sfp_tx_p]
#set_property PACKAGE_PIN G10 [get_ports sfp_tx_n]
#set_property PACKAGE_PIN G10 [get_ports sfp_rx_p]
#set_property PACKAGE_PIN G10 [get_ports sfp_rx_n]
set_property LOC GTXE2_CHANNEL_X0Y15 [get_cells */*/*/transceiver_inst/gtwizard_inst/*/gtwizard_i/gt0_GTWIZARD_i/gtxe2_i]

# Transmitter clock period constraints: please do not relax
create_clock -period 8.000 -name gtrefclk -add [get_ports gtrefclk1_p]

set_false_path -from [get_clocks [get_clocks -of_objects [get_pins gig_ethernet_pcs_pma_i/inst/core_clocking_i/mmcm_adv_inst/CLKOUT0]]] -to [get_clocks [get_clocks -of_objects [get_pins clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0]]]
