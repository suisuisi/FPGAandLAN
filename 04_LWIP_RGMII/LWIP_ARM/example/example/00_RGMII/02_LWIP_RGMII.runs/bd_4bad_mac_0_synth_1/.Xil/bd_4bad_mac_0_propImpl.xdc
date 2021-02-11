set_property SRC_FILE_INFO {cfile:f:/FILE/FPGA/ZYNQ/08_LAN/02_LWIP_RGMII/02_LWIP_RGMII.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_4bad_mac_0.xdc rfile:../../../02_LWIP_RGMII.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_4bad_mac_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property SRC_FILE_INFO {cfile:f:/FILE/FPGA/ZYNQ/08_LAN/02_LWIP_RGMII/02_LWIP_RGMII.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_4bad_mac_0_clocks.xdc rfile:../../../02_LWIP_RGMII.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_4bad_mac_0_clocks.xdc id:2 order:LATE scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {bd_4bad_mac_0_core/flow/rx_pause/pause*to_tx_reg[*]}] -to [get_cells {bd_4bad_mac_0_core/flow/tx_pause/count_set*reg}] 32 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {bd_4bad_mac_0_core/flow/rx_pause/pause*to_tx_reg[*]}] -to [get_cells {bd_4bad_mac_0_core/flow/tx_pause/pause_count*reg[*]}] 32 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {bd_4bad_mac_0_core/flow/rx_pause/pause_req_to_tx_int_reg}] -to [get_cells {bd_4bad_mac_0_core/flow/tx_pause/sync_good_rx/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {bd_4bad_mac_0_core/*statistics_counters/rd_data_ref_reg[*]}] -to [get_cells {bd_4bad_mac_0_core/*statistics_counters/ip2bus_data_reg[*]}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {bd_4bad_mac_0_core/*statistics_counters/response_toggle_reg}] -to [get_cells {bd_4bad_mac_0_core/*statistics_counters/sync_response/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {bd_4bad_mac_0_core/*statistics_counters/request_toggle_reg}] -to [get_cells {bd_4bad_mac_0_core/*statistics_counters/sync_request/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {bd_4bad_mac_0_core/addr_filter_top/addr_regs.promiscuous_mode_reg_reg}] -to [get_cells {bd_4bad_mac_0_core/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {bd_4bad_mac_0_core/addr_filter_top/addr_regs.filter_enable_reg_reg[*]}] -to [get_cells {bd_4bad_mac_0_core/addr_filter_top/address_filter_inst/address_filters[*].sync_enable/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {bd_4bad_mac_0_core/*managen/conf/update_pause_ad_int_reg}] -to [get_cells {bd_4bad_mac_0_core/addr_filter_top/address_filter_inst/sync_update/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 9 -hold -from   [get_cells {bd_4bad_mac_0_core/*managen/mdio_enabled.miim_clk_int_reg}  ] -throu [get_ports mdc]
set_property src_info {type:SCOPED_XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 9 -hold -from   [get_cells {bd_4bad_mac_0_core/*managen/mdio_enabled.phy/enable_reg_reg}] -throu [get_ports mdc]
set_property src_info {type:SCOPED_XDC file:1 line:69 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 9 -hold -from   [get_cells {bd_4bad_mac_0_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio_o ]
set_property src_info {type:SCOPED_XDC file:1 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 9 -hold -from   [get_cells {bd_4bad_mac_0_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio_t ]
set_property src_info {type:SCOPED_XDC file:2 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {axi4_lite_ipif/axi4_lite_ipif_top_wrapper/axi_lite_top/*/bus2ip_addr_i_reg[*]}] -to [get_clocks -of_objects [get_ports gtx_clk]] 6 -datapath_only
