set_property SRC_FILE_INFO {cfile:j:/FEP/ETH1512/MZ7035/CH02_PL_AXI_ETH_RGMII/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_0/synth/bd_4bad_eth_buf_0.xdc rfile:../../../Miz_sys.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_0/synth/bd_4bad_eth_buf_0.xdc id:1 order:LATE scoped_inst:U0} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay  -from [get_cells {*TX_PAUSE_FRAME_CROSS_I/clk_a2b_bus_reg[*]}]   -to [get_cells  -hier -regexp {.*TX_PAUSE_FRAME_CROSS_I.*ClkBAxiEthBaEClkCrsBusOut_reg.*} -filter {IS_SEQUENTIAL=="1"}] 8 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -of [all_fanin -flat [get_pins -hier -regexp {.*/ClkBAxiEthBClkCrsBusOut_reg.*D}]] -filter {IS_SEQUENTIAL=="1" && NAME !~ "*ClkBAxiEthBClkCrsBusOut*"}] -to [get_pins -hier -regexp {.*/ClkBAxiEthBClkCrsBusOut_reg.*D}] 8 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:92 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {*RCV_INTFCE_I/RX_AXISTREAM_IF_I/rxs_mem_last_read_out_ptr_gray_d1_reg[*]}] -to [get_cells {*RCV_INTFCE_I/NO_INCLUDE_RX_VLAN.RX_EMAC_IF_I/SYNC_RXS_LAST_READ_GRAY_PROCESS[*].SYNC_RXS_LAST_READ_GRAY/data_sync0_i}]  8 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:93 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {*RCV_INTFCE_I/RX_AXISTREAM_IF_I/rxd_mem_last_read_out_ptr_gray_d1_reg[*]}] -to [get_cells {*RCV_INTFCE_I/NO_INCLUDE_RX_VLAN.RX_EMAC_IF_I/SYNC_RXD_LAST_READ_GRAY_PROCESS[*].SYNC_RXD_LAST_READ_GRAY/data_sync0_i}]  8 -datapath_only
