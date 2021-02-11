
# Identify RGMII Rx Pads only.  
# Receiver clock period constraints: please do not relax
set rx_clk [get_clocks -include_generated_clocks -of [get_ports rgmii_rxc]]

# define a virtual clock to simplify the timing constraints
create_clock -name system_gmii_to_rgmii_0_0_rgmii_rx_clk -period 8

# Identify RGMII Rx Pads only.  
# This prevents setup/hold analysis being performed on false inputs,
# eg, the configuration_vector inputs.

set_input_delay -clock [get_clocks system_gmii_to_rgmii_0_0_rgmii_rx_clk] -max -1.5 [get_ports {rgmii_rxd[*] rgmii_rx_ctl}]
set_input_delay -clock [get_clocks system_gmii_to_rgmii_0_0_rgmii_rx_clk] -min -2.8 [get_ports {rgmii_rxd[*] rgmii_rx_ctl}]
set_input_delay -clock [get_clocks system_gmii_to_rgmii_0_0_rgmii_rx_clk] -clock_fall -max -1.5 -add_delay [get_ports {rgmii_rxd[*] rgmii_rx_ctl}]
set_input_delay -clock [get_clocks system_gmii_to_rgmii_0_0_rgmii_rx_clk] -clock_fall -min -2.8 -add_delay [get_ports {rgmii_rxd[*] rgmii_rx_ctl}]

set_false_path -rise_from [get_clocks system_gmii_to_rgmii_0_0_rgmii_rx_clk] -fall_to $rx_clk -setup
set_false_path -fall_from [get_clocks system_gmii_to_rgmii_0_0_rgmii_rx_clk] -rise_to $rx_clk -setup
set_false_path -rise_from [get_clocks system_gmii_to_rgmii_0_0_rgmii_rx_clk] -rise_to [get_clocks $rx_clk] -hold
set_false_path -fall_from [get_clocks system_gmii_to_rgmii_0_0_rgmii_rx_clk] -fall_to $rx_clk -hold

set_multicycle_path -from [get_clocks system_gmii_to_rgmii_0_0_rgmii_rx_clk] -to $rx_clk -setup 0
set_multicycle_path -from [get_clocks system_gmii_to_rgmii_0_0_rgmii_rx_clk] -to $rx_clk -hold -1

set ip_gtx_clk     [get_clocks -include_generated_clocks -of_objects [get_pins -of [get_cells -hier -filter {name =~ *i_bufgmux_gmii_clk}] -filter {name =~ *O}]]
create_generated_clock -add -name system_gmii_to_rgmii_0_0_rgmii_tx_clk -divide_by 1 -source [get_pins -of [get_cells -hier -filter {name =~ *rgmii_txc_out}] -filter {name =~ *C}] -master_clock [get_clocks -of [get_ports gmii_clk_125m*]] [get_ports rgmii_txc]


set_false_path -fall_from $ip_gtx_clk -rise_to [get_clocks system_gmii_to_rgmii_0_0_rgmii_tx_clk] -setup
set_false_path -rise_from $ip_gtx_clk -fall_to [get_clocks system_gmii_to_rgmii_0_0_rgmii_tx_clk] -setup
set_false_path -fall_from $ip_gtx_clk -fall_to [get_clocks system_gmii_to_rgmii_0_0_rgmii_tx_clk] -hold
set_false_path -rise_from $ip_gtx_clk -rise_to [get_clocks system_gmii_to_rgmii_0_0_rgmii_tx_clk] -hold

set_output_delay -clock [get_clocks system_gmii_to_rgmii_0_0_rgmii_tx_clk] -max -1.0 [get_ports {rgmii_txd[*] rgmii_tx_ctl}]
set_output_delay -clock [get_clocks system_gmii_to_rgmii_0_0_rgmii_tx_clk] -min -2.6 [get_ports {rgmii_txd[*] rgmii_tx_ctl}] -add_delay
set_output_delay -clock [get_clocks system_gmii_to_rgmii_0_0_rgmii_tx_clk] -clock_fall -max -1.0 [get_ports {rgmii_txd[*] rgmii_tx_ctl}] 
set_output_delay -clock [get_clocks system_gmii_to_rgmii_0_0_rgmii_tx_clk] -clock_fall -min -2.6 [get_ports {rgmii_txd[*] rgmii_tx_ctl}] 

set_multicycle_path 0 -setup -end -rise_from $ip_gtx_clk -rise_to [get_clocks system_gmii_to_rgmii_0_0_rgmii_tx_clk]
set_multicycle_path 0 -setup -end -fall_from $ip_gtx_clk -fall_to [get_clocks system_gmii_to_rgmii_0_0_rgmii_tx_clk]

