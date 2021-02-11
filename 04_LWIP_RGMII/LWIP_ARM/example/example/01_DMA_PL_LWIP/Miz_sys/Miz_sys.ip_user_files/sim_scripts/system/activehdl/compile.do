vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/processing_system7_bfm_v2_0_5
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_10
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_1_3
vlib activehdl/lib_fifo_v1_0_7
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_datamover_v5_1_13
vlib activehdl/axi_sg_v4_1_5
vlib activehdl/axi_dma_v7_1_12
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_data_fifo_v1_1_12
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_11
vlib activehdl/axi_data_fifo_v2_1_10
vlib activehdl/axi_crossbar_v2_1_12
vlib activehdl/axi_protocol_converter_v2_1_11
vlib activehdl/axi_clock_converter_v2_1_10
vlib activehdl/blk_mem_gen_v8_3_5
vlib activehdl/axi_dwidth_converter_v2_1_11

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap processing_system7_bfm_v2_0_5 activehdl/processing_system7_bfm_v2_0_5
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 activehdl/proc_sys_reset_v5_0_10
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_1_3 activehdl/fifo_generator_v13_1_3
vmap lib_fifo_v1_0_7 activehdl/lib_fifo_v1_0_7
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_13 activehdl/axi_datamover_v5_1_13
vmap axi_sg_v4_1_5 activehdl/axi_sg_v4_1_5
vmap axi_dma_v7_1_12 activehdl/axi_dma_v7_1_12
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v1_1_12 activehdl/axis_data_fifo_v1_1_12
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_13 activehdl/axi_gpio_v2_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 activehdl/axi_register_slice_v2_1_11
vmap axi_data_fifo_v2_1_10 activehdl/axi_data_fifo_v2_1_10
vmap axi_crossbar_v2_1_12 activehdl/axi_crossbar_v2_1_12
vmap axi_protocol_converter_v2_1_11 activehdl/axi_protocol_converter_v2_1_11
vmap axi_clock_converter_v2_1_10 activehdl/axi_clock_converter_v2_1_10
vmap blk_mem_gen_v8_3_5 activehdl/blk_mem_gen_v8_3_5
vmap axi_dwidth_converter_v2_1_11 activehdl/axi_dwidth_converter_v2_1_11

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"D:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work processing_system7_bfm_v2_0_5  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_processing_system7_0_50M_0/sim/system_rst_processing_system7_0_50M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_1_3  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vcom -work lib_fifo_v1_0_7 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/5ab6/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_13 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/bf41/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_5 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/11c7/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_12 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46c7/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_dma_0_0/sim/system_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../bd/system/ipshared/2e37/xlconcat.v" \
"../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \
"../../../bd/system/ip/system_ila_0_0/sim/system_ila_0_0.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v1_1_12  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fcef/hdl/axis_data_fifo_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../bd/system/ip/system_axis_data_fifo_0_1/sim/system_axis_data_fifo_0_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_13 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/4f16/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_10  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_12  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
"../../../bd/system/hdl/system.v" \

vlog -work axi_protocol_converter_v2_1_11  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_10  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/8479/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_3_5  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \

vlog -work axi_dwidth_converter_v2_1_11  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/a4c8/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/fe67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/0cab/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/f9cc/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/469d/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/48e6/hdl/verilog" \
"../../../bd/system/ip/system_auto_us_0/sim/system_auto_us_0.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \

vlog -work xil_defaultlib "glbl.v"

