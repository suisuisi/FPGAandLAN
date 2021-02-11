vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/ila_7series/hdl/verilog" "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/ila_7series/hdl/verilog" \
"D:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/ila_7series/hdl/verilog" "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/ila_7series/hdl/verilog" \
"../../../../aurora_8b10b_ex.srcs/sources_1/ip/ila_7series/sim/ila_7series.v" \


vlog -work xil_defaultlib "glbl.v"

