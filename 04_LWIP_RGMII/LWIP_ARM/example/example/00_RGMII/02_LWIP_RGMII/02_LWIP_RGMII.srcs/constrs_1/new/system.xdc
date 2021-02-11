### -----------------SFP------------------###
set_property PACKAGE_PIN AE10 [get_ports sfp_tx_disable]
set_property PACKAGE_PIN AB11 [get_ports sfp_rate_sel]

set_property IOSTANDARD LVCMOS33 [get_ports sfp_tx_disable]
set_property IOSTANDARD LVCMOS33 [get_ports sfp_rate_sel]
### -----------------RX------------------###
set_property PACKAGE_PIN AC14   [get_ports rgmii_rxc]
set_property PACKAGE_PIN W16    [get_ports rgmii_rx_ctl]
set_property PACKAGE_PIN W15    [get_ports {rgmii_rd[0]}]
set_property PACKAGE_PIN Y17    [get_ports {rgmii_rd[1]}]
set_property PACKAGE_PIN AD15   [get_ports {rgmii_rd[2]}]
set_property PACKAGE_PIN AB12   [get_ports {rgmii_rd[3]}]
### -----------------TX------------------###
set_property PACKAGE_PIN Y12   [get_ports rgmii_txc]
set_property PACKAGE_PIN Y13   [get_ports rgmii_tx_ctl]
set_property PACKAGE_PIN AE16  [get_ports {rgmii_td[0]}]
set_property PACKAGE_PIN AE15  [get_ports {rgmii_td[1]}]
set_property PACKAGE_PIN Y11   [get_ports {rgmii_td[2]}]
set_property PACKAGE_PIN W13   [get_ports {rgmii_td[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports rgmii_rxc]
set_property IOSTANDARD LVCMOS33 [get_ports rgmii_rx_ctl]
set_property IOSTANDARD LVCMOS33 [get_ports {rgmii_rd[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports rgmii_txc]
set_property IOSTANDARD LVCMOS33 [get_ports rgmii_tx_ctl]
set_property IOSTANDARD LVCMOS33 [get_ports {rgmii_td[*]}]

set_property PACKAGE_PIN AF13 [get_ports mdio_mdc]
set_property PACKAGE_PIN AE13 [get_ports mdio_mdio_io]

set_property IOSTANDARD LVCMOS33 [get_ports mdio_mdc]
set_property IOSTANDARD LVCMOS33 [get_ports mdio_mdio_io]

set_property PACKAGE_PIN AA12 [get_ports phy_reset_n]
set_property IOSTANDARD LVCMOS33 [get_ports phy_reset_n]
#-----------------------------------------------------------
# Fast Skew maximises output setup and hold timing         -
#-----------------------------------------------------------
set_property SLEW FAST [get_ports rgmii_txc]
set_property SLEW FAST [get_ports rgmii_tx_ctl]
set_property SLEW FAST [get_ports {rgmii_td[*]}]

#-------------------------------------------------------------------
# To Adjust GMII Rx Input Setup/Hold Timing                        -
# Please verify whether the IDELAY Tap values suit your design     -
#-------------------------------------------------------------------
#set_property IDELAY_VALUE  "0"    [get_cells -hierarchical "*delay_rgmii_rx_ctl*" ]
#set_property IDELAY_VALUE  "0"    [get_cells -hierarchical "*delay_rgmii_rxd*"    ]
#set_property IODELAY_GROUP "gpr1" [get_cells -hierarchical "*delay_rgmii_rx_ctl*" ]
#set_property IODELAY_GROUP "gpr1" [get_cells -hierarchical "*delay_rgmii_rxd*"    ]
#set_property IODELAY_GROUP "gpr1" [get_cells -hierarchical "*idelayctrl*"]

#set_property IDELAY_VALUE  "14"   [get_cells -hier -filter {name =~ *system_gmii_to_rgmii_0_0_core/*delay_rgmii_rx_ctl          }]
#set_property IDELAY_VALUE  "14"   [get_cells -hier -filter {name =~ *system_gmii_to_rgmii_0_0_core/*delay_rgmii_rxd*            }]
#set_property IODELAY_GROUP "gpr1" [get_cells -hier -filter {name =~ *system_gmii_to_rgmii_0_0_core/*delay_rgmii_rx_ctl          }]
#set_property IODELAY_GROUP "gpr1" [get_cells -hier -filter {name =~ *system_gmii_to_rgmii_0_0_core/*delay_rgmii_rxd*            }]
#set_property IODELAY_GROUP "gpr1" [get_cells -hier -filter {name =~ *i_system_gmii_to_rgmii_0_0_idelayctrl}]

#create_clock -period 8.000 -name rgmii_rx_clk [get_ports rgmii_rxc]

#set_input_delay -clock [get_clocks rgmii_rx_clk] -max 2.800 [get_ports {{rgmii_rd[*]} rgmii_rx_ctl}]
#set_input_delay -clock [get_clocks rgmii_rx_clk] -min 1.200 [get_ports {{rgmii_rd[*]} rgmii_rx_ctl}]
#set_input_delay -clock [get_clocks rgmii_rx_clk] -clock_fall -max -add_delay 2.800 [get_ports {{rgmii_rd[*]} rgmii_rx_ctl}]
#set_input_delay -clock [get_clocks rgmii_rx_clk] -clock_fall -min -add_delay 1.200 [get_ports {{rgmii_rd[*]} rgmii_rx_ctl}]

#create_generated_clock -name rgmii_tx_clk -source [get_pins clk_wiz_0/inst/mmcm_adv_inst/CLKOUT1] -multiply_by 1 [get_ports rgmii_txc]
#create_generated_clock -add -name rgmii_tx_clk -divide_by 1 -source [get_pins -of [get_cells -hier -filter {name =~ *rgmii_txc_out}] -filter {name =~ *C}] -master_clock [get_clocks gmii_clk_125m*] [get_ports rgmii_txc]

#set ip_gtx_clk     [get_clocks -include_generated_clocks -of_objects [get_pins -of [get_cells -hier -filter {name =~ *i_bufgmux_gmii_clk}] -filter {name =~ *O}]]

#set_false_path -fall_from $ip_gtx_clk -rise_to [get_clocks rgmii_tx_clk] -setup
#set_false_path -rise_from $ip_gtx_clk -fall_to [get_clocks rgmii_tx_clk] -setup
#set_false_path -fall_from $ip_gtx_clk -fall_to [get_clocks rgmii_tx_clk] -hold
#set_false_path -rise_from $ip_gtx_clk -rise_to [get_clocks rgmii_tx_clk] -hold

#set_output_delay -clock [get_clocks rgmii_tx_clk] -max -0.900 [get_ports {rgmii_tx_ctl {rgmii_td[*]}}]
#set_output_delay -clock [get_clocks rgmii_tx_clk] -min -2.700 [get_ports {rgmii_tx_ctl {rgmii_td[*]}}]
#set_output_delay -clock [get_clocks rgmii_tx_clk] -max -0.900 [get_ports {rgmii_tx_ctl {rgmii_td[*]}}] -clock_fall  -add_delay
#set_output_delay -clock [get_clocks rgmii_tx_clk] -min -2.700 [get_ports {rgmii_tx_ctl {rgmii_td[*]}}] -clock_fall  -add_delay

#set_multicycle_path 0 -setup -end -rise_from $ip_gtx_clk -rise_to [get_clocks rgmii_tx_clk]
#set_multicycle_path 0 -setup -end -fall_from $ip_gtx_clk -fall_to [get_clocks rgmii_tx_clk]






