set_property SRC_FILE_INFO {cfile:f:/FILE/FPGA/ZYNQ/08_LAN/05_MB_DDR3_LWIP_RGMII/02_LWIP_RGMII/02_LWIP_RGMII.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_4bad_mac_0.xdc rfile:../../../02_LWIP_RGMII.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_4bad_mac_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property SRC_FILE_INFO {cfile:f:/FILE/FPGA/ZYNQ/08_LAN/05_MB_DDR3_LWIP_RGMII/02_LWIP_RGMII/02_LWIP_RGMII.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_4bad_mac_0_clocks.xdc rfile:../../../02_LWIP_RGMII.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_4bad_mac_0_clocks.xdc id:2 order:LATE scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/flow/rx_pause/pause*to_tx_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/flow/tx_pause/count_set*reg}] 32 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/flow/rx_pause/pause*to_tx_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/flow/tx_pause/pause_count*reg[*]}] 32 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/flow/rx_pause/pause_req_to_tx_int_reg}] -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/flow/tx_pause/sync_good_rx/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:84 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*statistics_counters/rd_data_ref_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*statistics_counters/ip2bus_data_reg[*]}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*statistics_counters/response_toggle_reg}] -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*statistics_counters/sync_response/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:86 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*statistics_counters/request_toggle_reg}] -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*statistics_counters/sync_request/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:96 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/addr_filter_top/addr_regs.promiscuous_mode_reg_reg}] -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:97 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/addr_filter_top/addr_regs.filter_enable_reg_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/addr_filter_top/address_filter_inst/address_filters[*].sync_enable/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:98 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*managen/conf/update_pause_ad_int_reg}] -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/addr_filter_top/address_filter_inst/sync_update/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:104 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*managen/mdio_enabled.miim_clk_int_reg}  ] -throu [get_ports mdc]
set_property src_info {type:SCOPED_XDC file:1 line:106 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*managen/mdio_enabled.phy/enable_reg_reg}] -throu [get_ports mdc]
set_property src_info {type:SCOPED_XDC file:1 line:108 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio_o ]
set_property src_info {type:SCOPED_XDC file:1 line:110 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio_t ]
set_property src_info {type:SCOPED_XDC file:1 line:114 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/sync_int_tx_rst_mgmt_tx_clk/sync_rst1_reg}] -to [get_cells {tri_mode_ethernet_mac_i/enable_gen/reset90gen/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:2 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks inst_rgmii_rx_clk] -rise_to [get_clocks -of_objects [get_ports rgmii_rxc]] -hold
set_property src_info {type:SCOPED_XDC file:2 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks inst_rgmii_rx_clk] -fall_to [get_clocks -of_objects [get_ports rgmii_rxc]] -hold
set_property src_info {type:SCOPED_XDC file:2 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_clocks inst_rgmii_rx_clk] -to [get_clocks -of_objects [get_ports rgmii_rxc]] -hold -1
set_property src_info {type:SCOPED_XDC file:2 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks -of_objects [get_pins inst/tri_mode_ethernet_mac_support_clocking_i/mmcm_adv_inst/CLKOUT0]] -rise_to [get_clocks inst_rgmii_tx_clk] -hold
set_property src_info {type:SCOPED_XDC file:2 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks -of_objects [get_pins inst/tri_mode_ethernet_mac_support_clocking_i/mmcm_adv_inst/CLKOUT0]] -fall_to [get_clocks inst_rgmii_tx_clk] -hold
set_property src_info {type:SCOPED_XDC file:2 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_ports rgmii_rxc]] -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*statistics_counters/general_statisic_control[*].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:2 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_ports rgmii_rxc]] -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*statistics_counters/frame_size_bin_control1[*].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:2 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_ports rgmii_rxc]] -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*statistics_counters/frame_size_bin_control2[*].frame_size_stats2/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:2 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_ports rgmii_rxc]] -to [get_cells {tri_mode_ethernet_mac_i/bd_4bad_mac_0_core/*statistics_counters/*/accum_gray_resync[*].sync_accum_gray_i/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:2 line:77 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/axi4_lite_ipif/axi4_lite_ipif_top_wrapper/axi_lite_top/*/bus2ip_addr_i_reg[*]}] -to [get_clocks -of_objects [get_pins inst/tri_mode_ethernet_mac_support_clocking_i/mmcm_adv_inst/CLKOUT0]] 6 -datapath_only
