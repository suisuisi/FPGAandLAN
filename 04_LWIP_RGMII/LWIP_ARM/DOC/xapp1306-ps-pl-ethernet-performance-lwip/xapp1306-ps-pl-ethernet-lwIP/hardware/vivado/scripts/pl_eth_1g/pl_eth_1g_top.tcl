
set impl_const ../../../sources/constraints/pl_eth_1g.xdc
set ui_name bd_bce4905f.ui
set device xczu9eg-ffvb1156-2-i
set proj_dir runs_pl_eth_1g
set design_top pl_eth_1g


create_project -name ${design_top} -force -dir "../../${proj_dir}" -part ${device}
set_property BOARD_PART xilinx.com:zcu102:part0:3.0 [current_project]

source pl_eth_1g_bd.tcl

add_files -fileset constrs_1 -norecurse ./${impl_const}
set_property used_in_synthesis true [get_files ./${impl_const}]

make_wrapper -files [get_files ../../runs_pl_eth_1g/pl_eth_1g.srcs/sources_1/bd/pl_eth_1g/pl_eth_1g.bd] -top

add_files -norecurse ../../runs_pl_eth_1g/pl_eth_1g.srcs/sources_1/bd/pl_eth_1g/hdl/pl_eth_1g_wrapper.v
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

validate_bd_design
save_bd_design
close_bd_design pl_eth_1g
file mkdir ../../runs_pl_eth_1g/pl_eth_1g.srcs/sources_1/bd/pl_eth_1g/ui
#Apply UI
file copy -force ${ui_name} ../../runs_pl_eth_1g/pl_eth_1g.srcs/sources_1/bd/pl_eth_1g/ui/${ui_name}

open_bd_design ../../runs_pl_eth_1g/pl_eth_1g.srcs/sources_1/bd/pl_eth_1g/pl_eth_1g.bd
set_property synth_checkpoint_mode None [get_files ../../runs_pl_eth_1g/pl_eth_1g.srcs/sources_1/bd/pl_eth_1g/pl_eth_1g.bd]

# generate_target all [get_files  ../../runs_pl_eth_1g/pl_eth_1g.srcs/sources_1/bd/pl_eth_1g/pl_eth_1g.bd]
# set_property is_enabled false [get_files  ../../runs_pl_eth_1g/pl_eth_1g.srcs/sources_1/bd/pl_eth_1g/ip/pl_eth_1g_axi_eth_0_0/bd_0/ip/ip_2/synth/bd_00d8_pcs_pma_0_clocks.xdc]


