// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
// Date        : Tue Sep 19 13:39:17 2017
// Host        : LB-201708231104 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/DS_SRC/MIA701/aurora_test/aurora_8b10b_ex/aurora_8b10b_ex.srcs/sources_1/ip/ila_7series/ila_7series_stub.v
// Design      : ila_7series
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2016.4" *)
module ila_7series(clk, probe0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[63:0]" */;
  input clk;
  input [63:0]probe0;
endmodule
