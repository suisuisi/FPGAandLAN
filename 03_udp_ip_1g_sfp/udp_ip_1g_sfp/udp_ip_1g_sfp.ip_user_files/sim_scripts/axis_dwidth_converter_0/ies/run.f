-makelib ies_lib/xpm -sv \
  "F:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "F:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "F:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "F:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axis_infrastructure_v1_1_0 \
  "../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_register_slice_v1_1_20 \
  "../../../ipstatic/hdl/axis_register_slice_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_dwidth_converter_v1_1_19 \
  "../../../ipstatic/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../udp_ip_1g_sfp.srcs/sources_1/ip/axis_dwidth_converter_0/sim/axis_dwidth_converter_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

