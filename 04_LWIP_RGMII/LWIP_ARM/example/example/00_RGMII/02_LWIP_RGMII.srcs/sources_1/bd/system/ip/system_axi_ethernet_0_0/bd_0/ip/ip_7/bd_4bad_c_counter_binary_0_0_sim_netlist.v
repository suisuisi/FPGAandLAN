// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Apr 11 17:21:39 2020
// Host        : LAPTOP-8E6RLG3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/FILE/FPGA/ZYNQ/08_LAN/02_LWIP_RGMII/02_LWIP_RGMII.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_7/bd_4bad_c_counter_binary_0_0_sim_netlist.v
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
F1HfY4VltZJnC6BywTDbjQZtSQwDr1cSlQ7tjxgwa2SswCHIC0nAKElibHNi2A2snnF50viHJRZv
FATWmUQ3X9UCivVcSVCECMTOaUSJdfx/HITlH4IkBlhchf40OvESOb5el2sqMMVZXGY+zVorhWgD
GsuNCG/xejEWp4tLIww6gHUlOlbvQOlN4xfCCmeblQaAvTY2sNLzTktvH8CVYJuokDH4mTshqxS/
MEu7mOp2WOtXIlb9hgU94vsFLuUDb1aETWD6oTZqYY2JWZ+dnm89JWquZetI3ahh3qS9YnTIMaDg
iRpw77K7TGBYaLpxf+3oZwjeIXUbkBghn7dtGw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ll77kVKfGNaJ/3Ku5E9PMhuM7oxSiHAYwKj9ICcn1Zl0TgQC6k8Cb6k+KSbru37SskllumSlstii
34gm/TgLn2ykqFAxz6CrymvWkllkKJWSyVXDmt3hYVnIRZJ+Y6Ax2Zt/f2J8Y+T3dJtW+ct2y0gt
Grbll05r/kix7SsfQjEGzec8p7xsG51AiOR9BWzcqgC6lMzXXp/Qfc8SiA1xEiTBPIFP4MH+oOu3
6i+kYmNiWHoHevMV5JOsMpqUwaYegfU5Zcv/FNRN2A7QcM2KCG9refLOrp1GUgaG5sbnpPFvrYCc
V0yGb7xib1dmPUZAXbuMs6pYD4G1YsKZ1792hA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12624)
`pragma protect data_block
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
HRcIIzdbys0K1r/WPvb/eLdmf9vgC8XByJLH
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
