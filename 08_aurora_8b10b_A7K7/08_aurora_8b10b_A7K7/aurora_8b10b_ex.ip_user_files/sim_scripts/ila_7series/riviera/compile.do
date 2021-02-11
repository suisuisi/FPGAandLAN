vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/ila_7series/hdl/verilog" "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/ila_7series/hdl/verilog" \
"D:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/ila_7series/hdl/verilog" "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/ila_7series/hdl/verilog" \
"../../../../aurora_8b10b_ex.srcs/sources_1/ip/ila_7series/sim/ila_7series.v" \


vlog -work xil_defaultlib "glbl.v"

