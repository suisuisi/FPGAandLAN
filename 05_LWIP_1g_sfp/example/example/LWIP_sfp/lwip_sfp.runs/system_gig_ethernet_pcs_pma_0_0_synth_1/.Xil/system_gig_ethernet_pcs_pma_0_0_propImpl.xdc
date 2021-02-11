set_property SRC_FILE_INFO {cfile:f:/FILE/FPGA/ZYNQ/08_LAN/05_LWIP_1g_sfp/example/LWIP_sfp/lwip_sfp/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_gig_ethernet_pcs_pma_0_0/synth/system_gig_ethernet_pcs_pma_0_0.xdc rfile:../../../Miz_sys.srcs/sources_1/bd/system/ip/system_gig_ethernet_pcs_pma_0_0/synth/system_gig_ethernet_pcs_pma_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 10.000 -datapath_only -from [get_pins -of [get_cells -hierarchical -filter {NAME =~ */*MDIO_INTERFACE_*/MDIO_OUT_reg}] -filter {REF_PIN_NAME =~ C}]
set_property src_info {type:SCOPED_XDC file:1 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 10.000 -datapath_only -from [get_pins -of [get_cells -hierarchical -filter {NAME =~ */*MDIO_INTERFACE_*/MDIO_TRI_reg}] -filter {REF_PIN_NAME =~ C}]
