// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Apr 11 17:21:37 2020
// Host        : LAPTOP-8E6RLG3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_4bad_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_4bad_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_4bad_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1100000000000000000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1100000000000000000000" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "24" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [23:0]L;
  output THRESH0;
  output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
fVPTYpjMQbp8Wicgrw7sJpLUiuoAX4UVdTbdo70nK9OK+7prVGMlMK3IDUPetzgVsRZ6HBRdXHnh
oqSpruFqRg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V8yBtaAUzGOHOo+H94tylzZ4Q/Q/UFBEMQcWSOAyqCqy0Vc4lefODfkAgSZ2UdqoRBNDtypBpiik
IqNewK8ouFSlJG51YJfjDF2etpg1+V5wCGPNxYwMbdVQGQ5NektteDAXv6SaYb0FgETMxey4KSPN
e8AIdUpeoUJyzPCpK50=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yCAra44GtwykZ8W5FdunQODfPnu2cH6FhpfXoxDS0CTfRbOV3ZiFFg4TUi7uj4pSLHsiZ+zreKw7
cleU27p6cHhZCdai7E0EkzGilZEiI9EKVlxKRcoYL6LdtnHVgkZl46XiCVi/Ejnkf5lpXOlBlAou
KdT8dROosAcqIRIY8AkZ3yfY5umGvDegBVzWbfXLAvMxLnLzMz8WL/gWwW0zQpnLYYg22N0TJrLt
uPGjWR0REiif6nwuaEHVIFI7JhyQpcehgDVXpKZYse3RhAvjcWNJYRpQJJoQhom1jOT9nlDb9YlQ
vHFH4T8Xfae8M7bflW4p6IObjTpukUZFbOzPpA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kF3oebiolAQ9ZPhPlcNV/+FQGMcC2d4krlmLW9050SYrgyJbYR5aONti/fUuyDWKUoAc9gtHPq87
7Ozj/6VdAIN2n/7T4Iib612UPZ/BdtTYZwq1ezOEE6spCaupdkLCPaT3GWLKzvRGbBGqTosAUZAI
XIuYBnsoc/rqyJofpzVDNRXBpAKlaeIP+mC1qpir8T7Tws8DJChXJTFqUo2rNrGBJ+c1XGt6S1x1
p8n0dy4JAv+u5CeP0E9k+PUfczmt/WFlwmSX5SBwFm8jHNigfaWT8skLkCK8gTx4Lj4LwKJq4o/0
MRVBDGzjSicMxZHKKp03CqdPoXrRwxZddRSL8w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aZoF8QXznN6G768IAoQYyEiNOBwcFDD9chuWODYE7vxynkttA34UwR1hpLIeKlc1e9TIoMsW7n7b
Y7Ff1FnHzhRxoXod6z43BHQwiRit2P81m+UJyYJMq0BPXJe4JPMss1gI/6x/nrMyZiAVkb0ohXFN
nso5TeQhw63CGa3Kr8PbeMaWWAYrUi4gOb5nlnNWYgV2cvyFfUzMsaPLXoRvMTXJ1XV20s0yAbty
2ZvE6ZHISzitkTpqNZGKVLD2gXt8O7Ymxr0uZhPv72Zp5rpSD4Ls7I35IcAXgzOF9z4KVX6GGEkD
6I2Q8VQ+uZJO9udK6+q/v/e7Q8pBqdGKbEQC2g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
E8/jGxrlfOGG9LK4wuUUu594L68yP8IPTi3ex7YqsLJiH03MgY0fiGPc18bNwR82r5Xx9uGXsOyT
5R0uz2bhIwYBMb0M+52x7RQiwsF86ZUG4kvTtCCYJVJ0aOhi5vCkZIVPDKhR0LvzqTW8ZgsC4vJf
YnmZhFrto1FTYCZdyvY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j+h+8f+ahW/WaD0+1qP7QLjYiVroG4+pqmnv+NmdKT4vctxbs9iFiYWnB254QsnlHpWsr6CmXooR
yviBFJweG5sSUzl55jvNWNMwkpXnaq2bVJiyJUhRv0BKyCTFTu/nU7lfCqejDTBeNvh9CSpqv2iY
9eyjfkk24o30JC7I8U+htXpUw/9bxkRoQMpZBQFU9OUnACY4WtImEG7joDOj4pJMizYmIIZ1uFBx
4UldwdaJVtl7zeTBxpaTozPoIdvp4es/Vzez+7/jucgFndlt6tZawXug8sxpa0dcz0NxOSsF2nkm
53pgpv1nOdSjspYCew87ICWc4Jix/rr8untHGQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FCg55wUFNLQ6yyBnKmP3/zp8dT3OxVTQ8AoXX57CEe9NmQUE72vR7kbFfz5S6/eR4HgLIw3Q5mmF
Sd/QqkXoYQS+pNeABqCCe3o+HlD4TouBL0EjLJlDM8uG+3rfw4GEW6NG7Yu5m7jL4WfKLUXYGodo
DinXT9Wb43d9ZUIJnU7xFknmqN79ovzZ+u6kXmiVnP7cypORyMbmxEgKUee8B6Lu6zsOupHecVwi
fSCnq7zz/cFmloQoImJ6moKgK8lF4862G7/28U+39moChWXkShK5/BXhWGPwkKvuI23S66l45/H5
6uZ/+uEYt6bJXon4ZuKk2XwJ38hYRhfTCwu94g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Y5mpDRv1HPqZFOTu6RriW2b+YjfXq3bGrDUL+TVKMg2DmqCicnod+0AzOpkpccxf4H10YxPKhF81
tN6zv2jx7mMRcu2vZXc1/HiXARlsHRVab5C9c5ywYXiKmw3H0PKvcp+Jv01UKnYctO/ASrlGxjd4
ElwkKnPz5ZZNyBuDPi/bN05+qwqGD/jFV6dhTy/SHjqNeXImUmPS8BqQ9bEBaoaviT6cbG14+Ajs
LHMsCl3afkcevgc7udid/q5A4Qdrr5NS1dmTAKlEaUcOyEzPINU4QgZvg+ZTcQsFEVIB9dx+vGJZ
T9EkfWbG1tlutoLoqQ1BHKrZulqvf4FcHP+28Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12448)
`pragma protect data_block
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
NvWEempLI2eDdavCuoZiXn3AMongAA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
