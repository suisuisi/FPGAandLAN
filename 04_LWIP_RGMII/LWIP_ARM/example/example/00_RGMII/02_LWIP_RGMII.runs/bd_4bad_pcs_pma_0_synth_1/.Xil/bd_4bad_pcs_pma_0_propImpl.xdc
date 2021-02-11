set_property SRC_FILE_INFO {cfile:f:/FILE/FPGA/ZYNQ/08_LAN/02_LWIP_RGMII/02_LWIP_RGMII.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_2/synth/bd_4bad_pcs_pma_0.xdc rfile:../../../02_LWIP_RGMII.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_2/synth/bd_4bad_pcs_pma_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 6.000 -datapath_only -from [get_pins -of [get_cells -hierarchical -filter {NAME =~ */*MDIO_INTERFACE_*/MDIO_OUT_reg}] -filter {REF_PIN_NAME =~ C}]
set_property src_info {type:SCOPED_XDC file:1 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 6.000 -datapath_only -from [get_pins -of [get_cells -hierarchical -filter {NAME =~ */*MDIO_INTERFACE_*/MDIO_TRI_reg}] -filter {REF_PIN_NAME =~ C}]
