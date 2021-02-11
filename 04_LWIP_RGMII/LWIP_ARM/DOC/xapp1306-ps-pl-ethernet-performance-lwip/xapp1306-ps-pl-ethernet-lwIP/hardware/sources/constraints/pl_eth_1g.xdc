set_property PACKAGE_PIN A12 [get_ports sfp_tx_dis]
set_property IOSTANDARD LVCMOS25 [get_ports sfp_tx_dis]
set_property PACKAGE_PIN E4 [get_ports sfp_txp]
set_property PACKAGE_PIN D2 [get_ports sfp_rxp]

#USER_MGT_SI570_CLOCK2_C_P 
set_property PACKAGE_PIN C8      [get_ports mgt_clk_clk_p]
create_clock -name gt_ref_clk -period 8.0 [get_ports mgt_clk_clk_p]

set_property IOSTANDARD LVCMOS25 [get_ports *led]
set_property PACKAGE_PIN    ae13  [get_ports rx_clk_led]
set_property PACKAGE_PIN    aj15  [get_ports axi_lite_clk_led]
set_property PACKAGE_PIN    ah13  [get_ports axil_reset_led]
set_property PACKAGE_PIN    ah14  [get_ports mgt_clk_led]

#
create_clock -period 16.000 [get_pins -hier -filter { name =~ */transceiver_inst/bd_00d8_pcs_pma_0_gt_i/inst/rxoutclk_out* }]
