// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Mon Apr  6 18:29:06 2020
// Host        : LAPTOP-8E6RLG3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/FILE/FPGA/ZYNQ/08_LAN/05_MB_DDR3_LWIP_RGMII/02_PL_AXI_LWIP_RGMII/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_3/bd_4bad_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_4bad_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_4bad_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module bd_4bad_c_counter_binary_0_0
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
  bd_4bad_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_4bad_c_counter_binary_0_0_c_counter_binary_v12_0_12
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
  bd_4bad_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
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
JVSqrR/FFl4QHZQ5IvS55UJchLJU4GlxpkREqxLv5H/MDzOvs0kt94PTt5sxbXPh8Z/roIZDUXOz
9SNGNsHEtjt4iJNs0zBvea7fneucgMu7FZ2xVDlit7kOOnOxgm8f0NYq3mdRU8VQY0+uvVWGpwHM
qiVJ9Zj2A/iSS3bPDJz7nFkW8VL/XTrW7/N9QoH2nbAX3gZAbumWJ8u7Z6zQYk3WnuiHw0aX+BEz
NkQvrJYRUr2skZ6BCIpz3L/xT6wLF0ynBTAFCjcX/bSC9kxctCZsQNCHiKUnWfwVXrwDG7PedTuB
i6ylpPKlCphaljxB2nUErIG5RR+laGPN/NaoQg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
orlQ08aB5pt5/dsgwrU6cCf4plUfQEu88oQu+Ezv38jN2IV3xavGUyYDXGzmyi0OoiqMGftgmJ1T
kONJDkhihaPLPYYLilsfXINedrGSG7MaPAWeLZ83tH/s13F9BLcFz07DYWWG8X1lbAy3MbTSEqMP
rtWXIfa5lhoXUy0k8PpUKe5/MfV1Fi8lCKerMSmTCdEgDGZ9MgYYHaPTsIgXVgVqIBp5vW4zwJ9G
7ClYZ7YRKWG+gyrn1k0JJI4CRjAjLSVl5sYd+lrHKDHbRzsdVK/r35HrqU9AaUoVru8zekMmj15U
jRXmw2lMc65/rM0F8VlhYksvHkyd9scZ24q5RA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12624)
`pragma protect data_block
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
FzkLHJ2LpySMXeAzdp+Ifq1rCRBZKrcdvXR7
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
