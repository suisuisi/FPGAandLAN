vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/vio_7series/hdl/verilog" "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/vio_7series/hdl" "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/vio_7series/hdl/verilog" "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/vio_7series/hdl" \
"D:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/vio_7series/hdl/verilog" "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/vio_7series/hdl" "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/vio_7series/hdl/verilog" "+incdir+../../../../aurora_8b10b_ex.srcs/sources_1/ip/vio_7series/hdl" \
"../../../../aurora_8b10b_ex.srcs/sources_1/ip/vio_7series/sim/vio_7series.v" \


vlog -work xil_defaultlib "glbl.v"

