// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Jul 19 15:06:39 2018
// Host        : LB-201803132255 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               j:/FEP/ETH1512/MZ7035/CH02_PL_AXI_ETH_RGMII/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_3/bd_4bad_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_4bad_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_4bad_c_counter_binary_0_0,c_counter_binary_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module bd_4bad_c_counter_binary_0_0
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
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
  bd_4bad_c_counter_binary_0_0_c_counter_binary_v12_0_11 U0
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
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_11" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_4bad_c_counter_binary_0_0_c_counter_binary_v12_0_11
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
  bd_4bad_c_counter_binary_0_0_c_counter_binary_v12_0_11_viv i_synth
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
iO2Bdkfy0dqqValMR4KhTWXpD0gDQF+kyoly3tZBTZTVs0CbWJ4Owhu4jxMCf8X2gbWR6iweF6Ks
B5dmLHZTDA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dbcEbgyZfx3YLmYpvjegvD9sRQCV1qBv0GqFBvCakC3SMR/H82zqo5uv5MZldBGUVmNHnxF3Vejx
zSqxUKfTNc90CS6quuoQe0eeq3T5XSdgwbNtjPZKvJuJTmQKT96yB3CfQOz13fGjaLrn/8NBUBBh
I7OEoGGg7ADph9V3vRg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bD3a4YgAnaoJx9/hljj2C1rODcUhawTVE1gtdPkNj8/YjemaFM6/sF7Q0CXbDJ7a+OBrB5pUgj3O
Vesi4yVmFp+mGmFarftWat5KmZiP3RVWrXwdzMj+f8T7p+lE3iD4njqUxIUz0TsUaNvFeW0xVNNb
OwTEX04nyt5HrU82dltJCclpFxE6yrP9YvI7l328bphwnC63xxk8T3yXwCrvj3VrIYuDT2yMRxrB
TBCv/Fe2f07JQyV73J7+DGAeJG0B1dTHeu48auQT63g1HsYaUXREihEUKgZe70QlOqlPbrr6Quhx
2LXE8LSdCA+FbJ7LlQc/Sgasj3ZYjM5lhEKleQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GCfR7acMSeEtOw1DhZKkUXjh9Uw/vUar7CGDRG9rZcB9NFDtQTltJeuKjFg8eaeKH9HFBMryuX72
/tmzhtFaiSTjr2na4ncL2XV3QRXe7nQaiHdc7cKBcZDvdSSMzOSYcIxLunwLwQTLC7sCvINmlxO1
NXnYzJVL1xb9HP8QVnSYpo1p+gCXcRBZzrOjZjCUnl7F2t3ZZStSGjBEyXVLnV+ouU3+247oJAOa
kC7v+pOtG2ho4KclIg0MGijjPs+jyOFU+b5C+ufQp/zL9GiZ5waCjb/0Y1vkBc9jZKR7YRnv+ASG
ju1uP8oqEXR9742kXRnW4HkMKkCK1MLDgWYdqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L+AGKmFZ1zoRJFd2cA+zxJhkgQ1R0aEjGQCGRFLNNhLHZXpzGDIjdSLjralBVRJ2rD6UcJutapF5
YaMoV9kphGGG2B07dxBuIimVjOxS3ZQJ7ru59ddfGBxUe9EHrv00Q5hTwoxig0lxqnmjSSnfsDeF
weTIqNnXkG5kqqezKC8a2FvUD5QWQBibhK69OAdmhhIOwZmpfvQKbEKgLX70BzcNlmLnttRL7G+q
XZ3fabZ42+JJHDLiIfveB3Gp2Lf2tzTH1u2xx5aEUr9154pnC9PWIwL3y3VBAT1oHR7ScdoGDOEy
HoYUiDibldOidIeKW0KrTeAIuBNmtM4R0R+RSA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V5ClnklUs5Wo++EDemG/KeowZlAfqB8SUrvSxPQGrdIwGfUvoCajhuABAWdS/L/pQl7Eyz51aiuw
KzPMrWtQozAEITf1xzvzgKbWZqoi4PQD3rThywFsFq60u8DdvHYM/kEvit0cZVFvG8rAbtlseHLu
0vU1kbrNgxb3bxjOovg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cRqAgScIUeXUwYGfCC0XDtpcc+mFNm3p8oTcFdtIU1nnlMagpBMqRm5ELc+m/Yw8jBwvcvt4tUFv
u/ypEEw+y12B+5Pr6SmnLJ+NVB3Q3Eyh4Q/d7p3jReIIsUxrlENpCTi4PVXMKr1B1Htzm8F8mXDq
y2UV+0SC+4yrBIntsdS0S8jPBERhfJhzNC5z38pPHANtM4wGGIUuKxIALLz1aq+2AjLbEgFHNrzw
2bJiDwRSTwrY4Yx2MSzYJk3O+cQBUe8nJDPx+aGEvDzQ4ZdJMNg2z+iaiE7OTaqK492Jb/1jvU0j
wlI+n35s2rrnc9QgfljdOJuueruPuYDi5vTTxA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qIOsxgTzyGTaoJagNZu/HDdzpL3INW2UBXfM1ViLjore/y5r0P8akMJN11ixUaIQPlzXO45ppM2k
9O6LkL/UiKxmgVTDetBh7dezcsFkx/b4znYnNHIch+fZ85/93CtJ5XKQxAobT/UigqZjRMBXr6Ea
bwjASrXTabgusXnZzNKRyPlO8UFuJnKM1vLOi9ag+KOvVkVkBMgXYr0XASboViEPS40+TkpPEp2v
2PmWrMVR4UWUbHQOJGAGPdcNt2JvYIupvFOeJ1MgOd14ENWZJGxV/2Y7i+2J4CMiydEQSfSeIhJZ
N3UKFE1ucd7s6K+gzbkqe4FpcdS0xCGc3rm57w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Sy6AGHVxKHUAq9AydLtXm/ZERRfzHjm9QJQEwMXarAe6Rs7D1Fv73jdkEP/aKykB/PKUjj3/+8RS
fUBsS3pakKTHQ0ctXBHKW1ckLtlQ54Gkb7AQAa5Pn/UnDDtufaQpWuKIuBtjmJ4xZi10DwS8f2Kj
m8fsSGwH6vVf+SSHaqo7c3dMzZ9KEQLxxl3L8lV/yS2gZ4v9TAWssTdXQM+KCfePpzxeXQKc14MD
OerMgasugfIGHhgy91HS4I+bzbyEuyFLKzN7sv0p7FiNBHQMOZdif3oNYYh/Mfig7FsU0NIwCPvs
mAUZM9sgubYFMlHQOd+0Ot8CMUFDuSk9mixcyQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12832)
`pragma protect data_block
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
c6SfZ94ZTA==
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
