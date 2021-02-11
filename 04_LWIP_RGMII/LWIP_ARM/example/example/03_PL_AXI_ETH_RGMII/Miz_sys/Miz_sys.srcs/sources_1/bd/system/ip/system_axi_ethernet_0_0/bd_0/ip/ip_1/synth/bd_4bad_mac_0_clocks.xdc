
############################################################
# RX Clock period Constraints (per instance)               #
############################################################
# Receiver clock period constraints: please do not relax
set rx_clk [get_clocks -of [get_ports rgmii_rxc]]

############################################################
# Obtain input clocks from top level XDC                         #
############################################################
set ip_gtx_clk     [get_clocks -of [get_pins tri_mode_ethernet_mac_support_clocking_i/mmcm_adv_inst/CLKOUT0]]


#
####
#######
##########
#############
#################
#BLOCK CONSTRAINTS


############################################################
# For Setup and Hold time analysis on RGMII inputs         #
############################################################

 
# define a virtual clock to simplify the timing constraints
create_clock -name [current_instance .]_rgmii_rx_clk -period 8
set rgmii_rx_clk [current_instance .]_rgmii_rx_clk 

# Identify RGMII Rx Pads only.  
# This prevents setup/hold analysis being performed on false inputs,
# eg, the configuration_vector inputs.

set_input_delay -clock [get_clocks $rgmii_rx_clk] -max -1.5 [get_ports {rgmii_rxd[*] rgmii_rx_ctl}]
set_input_delay -clock [get_clocks $rgmii_rx_clk] -min -2.8 [get_ports {rgmii_rxd[*] rgmii_rx_ctl}]
set_input_delay -clock [get_clocks $rgmii_rx_clk] -clock_fall -max -1.5 -add_delay [get_ports {rgmii_rxd[*] rgmii_rx_ctl}]
set_input_delay -clock [get_clocks $rgmii_rx_clk] -clock_fall -min -2.8 -add_delay [get_ports {rgmii_rxd[*] rgmii_rx_ctl}]

set_false_path -rise_from [get_clocks $rgmii_rx_clk] -fall_to $rx_clk -setup
set_false_path -fall_from [get_clocks $rgmii_rx_clk] -rise_to $rx_clk -setup
set_false_path -rise_from [get_clocks $rgmii_rx_clk] -rise_to $rx_clk -hold
set_false_path -fall_from [get_clocks $rgmii_rx_clk] -fall_to $rx_clk -hold

set_multicycle_path -from [get_clocks $rgmii_rx_clk] -to $rx_clk -setup 0
set_multicycle_path -from [get_clocks $rgmii_rx_clk] -to $rx_clk -hold -1

############################################################
# For Setup and Hold time analysis on RGMII outputs        #
############################################################

create_generated_clock -name [current_instance .]_rgmii_tx_clk -divide_by 1 -source [get_pins {tri_mode_ethernet_mac_i/rgmii_interface/rgmii_txc_ddr/C}] [get_ports rgmii_txc]
set rgmii_tx_clk [current_instance .]_rgmii_tx_clk 

set_false_path -rise_from $ip_gtx_clk -fall_to [get_clocks $rgmii_tx_clk] -setup
set_false_path -fall_from $ip_gtx_clk -rise_to [get_clocks $rgmii_tx_clk] -setup
set_false_path -rise_from $ip_gtx_clk -rise_to [get_clocks $rgmii_tx_clk] -hold
set_false_path -fall_from $ip_gtx_clk -fall_to [get_clocks $rgmii_tx_clk] -hold

set_output_delay 0.75 -max -clock [get_clocks $rgmii_tx_clk] [get_ports {rgmii_txd[*] rgmii_tx_ctl}]
set_output_delay -0.7 -min -clock [get_clocks $rgmii_tx_clk] [get_ports {rgmii_txd[*] rgmii_tx_ctl}]
set_output_delay 0.75 -max -clock [get_clocks $rgmii_tx_clk] [get_ports {rgmii_txd[*] rgmii_tx_ctl}] -clock_fall -add_delay 
set_output_delay -0.7 -min -clock [get_clocks $rgmii_tx_clk] [get_ports {rgmii_txd[*] rgmii_tx_ctl}] -clock_fall -add_delay 

############################################################
# Crossing of Clock Domain Constraints: please do not edit #
############################################################

# CDC from the Rx statistics to the statistic counter logic
set_max_delay -from $rx_clk -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*statistics_counters/general_statisic_control[*].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from $rx_clk -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*statistics_counters/frame_size_bin_control1[*].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from $rx_clk -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*statistics_counters/frame_size_bin_control2[*].frame_size_stats2/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from $rx_clk -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*statistics_counters/*/accum_gray_resync[*].sync_accum_gray_i/data_sync_reg0}] 6 -datapath_only

# set a false path for the IPIF
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/axi4_lite_ipif/axi4_lite_ipif_top_wrapper/axi_lite_top/*/bus2ip_addr_i_reg[*]}] -to $ip_gtx_clk 6 -datapath_only

# set a false path for the static config registers
set_false_path -from [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*managen/conf/int_*reg[*]}] -to $ip_gtx_clk
set_false_path -from [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*managen/conf/int_*reg[*]}] -to $rx_clk
set_false_path -from [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*managen/conf/int_*reg}] -to $ip_gtx_clk
set_false_path -from [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*managen/conf/int_*reg}] -to $rx_clk

