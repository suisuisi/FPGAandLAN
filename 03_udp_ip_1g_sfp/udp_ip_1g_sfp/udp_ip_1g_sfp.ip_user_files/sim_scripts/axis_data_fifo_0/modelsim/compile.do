vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/axis_infrastructure_v1_1_0
vlib msim/fifo_generator_v13_1_3
vlib msim/axis_data_fifo_v1_1_12

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap axis_infrastructure_v1_1_0 msim/axis_infrastructure_v1_1_0
vmap fifo_generator_v13_1_3 msim/fifo_generator_v13_1_3
vmap axis_data_fifo_v1_1_12 msim/axis_data_fifo_v1_1_12

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 -incr "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -64 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axis_data_fifo_v1_1_12 -64 -incr "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_data_fifo_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../../udp_ip_1g_sfp.srcs/sources_1/ip/axis_data_fifo_0/sim/axis_data_fifo_0.v" \

vlog -work xil_defaultlib "glbl.v"

