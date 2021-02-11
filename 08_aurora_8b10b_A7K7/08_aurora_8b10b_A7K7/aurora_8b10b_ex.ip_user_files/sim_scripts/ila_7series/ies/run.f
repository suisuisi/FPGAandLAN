-makelib ies/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "D:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../aurora_8b10b_ex.srcs/sources_1/ip/ila_7series/sim/ila_7series.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

