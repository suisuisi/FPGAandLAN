// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Jul 19 15:06:24 2018
// Host        : LB-201803132255 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               j:/FEP/ETH1512/MZ7035/CH02_PL_AXI_ETH_RGMII/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_2/bd_4bad_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_4bad_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_4bad_c_shift_ram_0_0,c_shift_ram_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module bd_4bad_c_shift_ram_0_0
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
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
  bd_4bad_c_shift_ram_0_0_c_shift_ram_v12_0_11 U0
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
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_11" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_4bad_c_shift_ram_0_0_c_shift_ram_v12_0_11
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
  bd_4bad_c_shift_ram_0_0_c_shift_ram_v12_0_11_viv i_synth
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
AEKVEpuJ/c1+hRr53PizYwDoBvUy58TPDx++lq7a62K2FevIv5kMJIDZBatRLoqy9PCWzft7UfT1
1fTtvJDDfA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qAJxqfXhhM7M/8Y/a9dLg0bEcc1hCZzJ/f7iwWh6GX7ejtBeW/TVJe2lCoJ6nK0Uw4IPDtskMILl
k9jf8mC8SHSy5C6RXscD6b1NTvJ+ayNXanuVuvwVTzvkbwf9vFrICQ7V02Jk65fSD4AsMCfXd8qB
H7yCN+E+PgNRt8bdc50=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uqgf6uS5F2yMyJ7vS282rogvBKT5aAWL6rjc7Lp7rNeGHieRJy8Om+lc8TpVQtwh4VQ+uCTE1hg3
C8p89jaY+awmHViwBjUcMWIhWtYlCVSSYuVvUQs9MxgS1CmMSRa+2oR8CyNVaIOl0nmnlQAxAqfq
UWbsxJJThLpjKmvsug9pfX/zxaGRWcAYennBedlgUetAfiYjueZlEDtbNgx7rLciLiLU4dBAqzBq
ohaZjukX6teqYZ35vEXuQmK9KxeZ+cfxTuBqZWmYUtFy5AWjlw8y8S+oEWxJvvw7W3AJMtEwn+xp
OJNoWKmyiJ93VJDXw7K9ZW7jAVrl2Oe//4tm+w==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hSGDkzMxoTAR80Xd+7Y+YAYXOIJDEyrLQjWXXQHSi6wdjrdxwj0s9nHzr4dzFo5lsSnvPipPqrq0
lc3RCPrk8A9VHhnU14lyNnSGrvhWf4EzFsWxqqjYxUBQ8GG5mhwyyF58+J5Q9HKXi2/XLzxwimqW
scUhjg4Wgmqer516sn/xWJHN8IyEgMTOcMGAcYljPh7cBXB5+Ts3ZvQaR2AGwitwm4HE0cQw1ELX
xo6zfFmD6HyBdb0AyGDrnCWHECWoGHTdNhnMozqOijGpQMZllpqNpq5CMl0uiHCDhRA36yoIkKiu
GN4dElvu553VWHEJN2oU2H8FqUg4UrBZEbXtcw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ih0F2aw8WNHRaBla5DZJIZrq4f8X+PePq/9TRrpHpQemeXd1MRlq8oiv2rmuTCuShVqEb/PtCdLn
RdLguGwwq4RVoLHETPLXdeKvthF/uboAF/yr9iIhnd/R0OkZ99ohOQhz1vKE9XhA1JfXzfU6pFF5
yKSSJ7dgNyTAnfZt1Z/Oqi9rMQs5XH/BnBjYaA1YB76q3DEZQwwR2RcNuuNOrbcrYyuBCJzD3vf/
9zvtSj3tDmpK58Kp8guVqfjsSJs/+sKrnO/ffETgMZi0CF/VEzhCP71f7hbA126QJ2WwD0ld09Bn
FWvbmV+pRNujnD7gyO+mHROkK9Y1b4Hw9K93vA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XAzZYq11tJZ0y8d1f99qokqtJm67MTEZ34t8cXcIHyZCjHNveB9CJj6bUwLBMIF0gIosSHNJVxhq
G1Fb2Mge8YEChnstYLQz3Ytih1UDb+9/YW1b0jcVh3oOWhTfDf1YtSWdnssj8kcdTVNVgVQRfeix
2P1NLM8j8PxAa/3T/UE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uxgy3Jw6viJrQLUPubHImcyEnCcjMj6KctHy2rgYQyXaf40ZfCAf6F2juUdiJpGCNjJBWfOwKe7r
g/S+X8TMSSku6lxjHMOFP4PVGREdQHuzXDmxpgxxo66X8OPgUzqmVGBKFmB9THAPOw8h6WHZWQf3
Asa7Elo2gYrhcTXINAEMJ9z/JFOkfcBusiKbHhrLBa2MaUqp/plpXo8OePsHKhaHDp+lyKTjuji6
s3GUqF3LR/MmBC7sfhkLK5JyMAb237nnwOWDDvMT7LZ6EykWiqwGifLcxXRdPNgAC4Iinkz9pOxy
bTr4Iej2RTk5GyeQb6AJx1kqMnMsI0aFQ7JQ+Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CRGCIYYImWVqR+dCTFcyUcvaroMT1GBpYOFudqigMizkMaAk+OpZUUniataUyOu9v6sPWPjGartE
flPPfL1Oa9ganfBXQ/donztZC+X1pFSQh7dqUL1WoYrqjy8QdxoVrVDHd/sfZVV05cnPjlsQgAks
dq08Ff5ij6U6MVBMDKTyMxUJsLWEEVZfHbeqrMgVspS4ExP9r3UP2ZIvKnE7h7EDbrBqhM9F1aVH
iX3slrC6AY6gTw8dn2cq6YcCrhX72fy6LTmMsLow0C7XUUfyhBMROV2JIkU4+j+oXD1eKo3aGKM8
CiDArFJEHTZ+Oehs9TUQwOJYs2jIETauvgfCkw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BZfFeno02pRmTWT/6uvnUgyIVRKXsRT9fe0EJTmpa4CXkrpd2z0uZEbfIDNzdBX7+mdqClEMEzNr
B6r1SD4W4y/W3RBPVhLNkJdVhxpGlJhomhuivFJFP9npc3JwMQmFzAuf8j3yx/JDUG/kS/lVAjYk
GbiehGIbYWDMGU1bS49EU86FvaxMY+Xv0KggeXXwJwFtRwKfouYaHfkNIOPjHZjx/CqW3zAhDlkh
h3QFuKwH6XcHmB41UAY4Dw+ojl8YXRz8b2Pyvi7ZgEMRbUwFWjZLXfjvqhLWWC5RPEHCYB89Kj9j
CLzWrST75kvIHKVX6w/wVUCpSeB5voABWLRoag==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4640)
`pragma protect data_block
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
r3uBNBWn2aA1VN2JhH57mGWXlowpe3o=
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
