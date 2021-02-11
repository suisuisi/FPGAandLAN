// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Mon Apr  6 18:29:06 2020
// Host        : LAPTOP-8E6RLG3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/FILE/FPGA/ZYNQ/08_LAN/05_MB_DDR3_LWIP_RGMII/02_PL_AXI_LWIP_RGMII/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_2/bd_4bad_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_4bad_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_4bad_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module bd_4bad_c_shift_ram_0_0
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_4bad_c_shift_ram_0_0_c_shift_ram_v12_0_12 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_4bad_c_shift_ram_0_0_c_shift_ram_v12_0_12
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_4bad_c_shift_ram_0_0_c_shift_ram_v12_0_12_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dOi6VY5D1/sdj+MA23a00mQh3ZKf0dcEKM2Zy2FinLlOm2+KQ1uADaoo3k3nb8kUQ7wpkF3beqRE
8PfeHcn0wA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
feHNIgRfdDisHsZ68q5ITWd2OfvIf5ylsDTxdimXVYA7ebQ0q+hcSksNa+/hhRPhoFzXqwHM/Qpl
3brbV2RxuJuc38roZSqT2WTxhiHrmEAgLixS4Tk4nkCMYvpY8HowH0qXwfE+ztSCmBm+JiY20ZuO
Md/an1vbqEVFR96fBG4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wJpgv0YPxM9rcnJb88eNF1QlcCuz2BOE1JQfGGNUR/f6/JjbwpxciLu4BO00dTnvjZlYvJdVTxV4
1cV1ZBBQbO3GttRjvxR97uX0cQ1iCapk+YqYWMT0vAiiisAQkTRO1eChUiEpCOsFeO7Lb9D61/P2
A0O+XvjfusaZoQkoWDPS15DQFJEBzXZ2UFXApA3+xA0xxLcAmHyFHYnL4HuAT+5Q9hIWuSAz0eLV
UZOtvE9s9NwWE+YgJ5/zXkWDdA/Y/gSTE67gu//AIaGWHyGobsWaepQLxcNdBjcJQoZzIh3TYHtM
XSQ6YgefDmtIgM47FNHkoT8CVv2JoJjNac9qCg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BWeyWLqYO0Np2IT8iE7DNPkHCfdCxzCoFH9NjxT/ntsBAyo/xbbPQoB84T5CnZk8z+DSHA5VK0zH
gGd7/oCb8EL5pIP4suuMFBAbVROrV+d4gZvKNxvNj6PXX2JYi/QPt8qTrfEAb/gPScN/qS0GefEX
Qfjg5dXB8/G+UnqjZxTiAzaZLNTRfsah4cMbebxyzQ0pHD9pVwaR/ZDiWjdjPBKqvDjm4CYcmQRS
fpmR3LcHtqk78Sy+kHWS8LDS0qs9ofOXw5oK27eNoR/Ua9EXuYckLmG6sgLcMpwepo7n9noSV/wc
VXs3lLhoO9y1uyzp1sfWv8vFAJCzs6Yt/4mjmg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VR99LzRdFWVcAq630Y7EFJRWQc95NvBiiG4gSJwhRmT1/xIsUwXsB0IgETo3hhtRpmONs4u/A9gr
WUtUyhABXvsexa+/srZm3hPY1uk51B2PSh4KTLi7YgfRMSetR8td/41CO+rhn2THz5HXx9R3iYw/
COHnLU9IDyPyiphL2Y0nHqiJgtzVG30bir5mRljyoNSwht5DgRVHlUMTItehc7+72q2PBiUJudXg
QnLZ6HVdzvBeXUYnQLHYHMXehifbIgWDqN8XMtE5N6tyjgaffHNm9GmwT6YOiZ0bdkq3hFfgPv4g
FvSi7q8lqRsQf/1LAWxd1cS2Z4PRo5HGI3lFxA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
d2CGkFfJikZgaCIdQX2KTqCfSnK+q/1odHeipUFKo3oDNQyUCy5NY/8q11fk0pyKvgOxqJM/2iKh
CkHahNFXhVGHrpWD8YZ8fMQG7y/xxyU0LmBUOR2Nxhg8KLbVsGwzhzKY9/LpAOij485oex2Im7dQ
LJ06qfjOhjOy408hjUI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mBm7GXflll37i5i8mo/ka1qz/dYi5x27FmlBQUUsnGJTLO6X55r12lwvWQf+mOfIvw5S9RWAJ3MG
t7y/ZEt7r2gmOAn19Ah6TUgQ+f74R7tzqLGdrLliQ4woWO6i7YqKU8XnZYQxB4RN2cxUgJ7oqw46
0zTi2oVE351BkvXzA0RFyv17rvaoWTbAb+Z+lm3pNJmWqpAbvUyAYDbyT0IgRPf0k8MPH0Rs6W2+
+Iws7a5f0qZBiOvgftuu5ooUbW9UGZjixdKdQ218xDqXiIZLWBRJ1hx8DxMZyVCjeK/FaXbc0VaT
7QJwubx75RPO2g0KC3Yj5ngfsXxgheoucI52hw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Sr48ugQic854j+SNW5NKpbS70Nt51xU15aVOQBu6DWZr8Un1YS+OY35SL5zvN48gT53s0YVPjqlc
etPXLVYOam0X3Rc98M+HFW4gHtoz/uZ2JbN3IvESmI7uSHgFBgRCgxzuCatQinEWSrZ8mzTzpbVm
+4I7SasH29AgyRr7kOZUD5VCX3K/OFqjuupcf64PRA/+ifUbGn9fFfYTpxwsDq/LSRR7VIRFJyuS
rJ0gGQizQ5i9S0uFnwxoS5ZmP+bL0MKUhdp+n/Ec13ykLQaMhteBL1Rwtv9WoZdu9jA5RS3nHad+
iDknbo3VxhUfN862z6HlTGEtQCCYHT77+f9oJw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nl1AhMQ4njsE70IdCUFOc3ZG+yO/7CkYlfWxIq2Q2QJPCH+7fipYCLKzNfuaIl8gwkSdoQSHv6cg
UXmNaj85SpFVLfk3hoYbLmbW2hQJO090kQr0Cyu1r1QQhFWpWDqPQAJ9ExPqLeGYOOHf71Isph/U
GLl3ZW4mPU+7Xq9kLVdYW8XKgBZ3V95JGsDONpYos1RP2X/BILmO2ayxTMPqbk8HjKnrrpnMC6jz
bSNYqASrjC7IYoIYhePcz4i/GDzg2Fbnz8MDDNND6VDCVSAGvzcksyi8PNiYxZG2jm6ch5TQRIH+
4bBtx3jkI9LsfTxYtRYHaMBRwInd4mWZuS0Mpw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4640)
`pragma protect data_block
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
PPE+rmt9BKTcB1mjxVIQAFA/BDScNSU=
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
