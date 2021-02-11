// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Jul 19 15:06:33 2018
// Host        : LB-201803132255 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               j:/FEP/ETH1512/MZ7035/CH02_PL_AXI_ETH_RGMII/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_5/bd_4bad_util_vector_logic_0_0_stub.v
// Design      : bd_4bad_util_vector_logic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2017.4" *)
module bd_4bad_util_vector_logic_0_0(Op1, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[0:0],Res[0:0]" */;
  input [0:0]Op1;
  output [0:0]Res;
endmodule
