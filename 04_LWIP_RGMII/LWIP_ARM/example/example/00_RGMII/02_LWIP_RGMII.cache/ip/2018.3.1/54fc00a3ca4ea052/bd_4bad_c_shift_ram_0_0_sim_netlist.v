// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Apr 11 17:21:37 2020
// Host        : LAPTOP-8E6RLG3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_4bad_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_4bad_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_4bad_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_12
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_12_viv i_synth
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
b6YtbXIQU2oR6MQfm6G7rqNhvRtwunsPgN/G9d3cDmHsUuAFqjqI+vZmJogRTvDRIMR+Fcv7NocO
02XiVkZJapsW+0il7ulvwMZolb1um2h17O1DGMLLG3vabYDhGbTTst2h9LoiGFVIqzzbMqGGLr8z
dcnLQOgvdCJxMjK1/ysAfX0PrlSlBPzZW5r3oZmvdx4plfSXzr+D3Khlts42UpYM3nGj8YUYu0qW
tjdkok5/1487RrMY/CCMey8Y4xC0x/2PzNuU3UFX7uWssnzkgCOD5fn6yGqBj5i5bEwFanL2i/cM
a0B5wtL3+fDo6wdRNeVSI6tXdLPwX6E2OJVToA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
usFp09Dh0xkpNZYoK7fKXhAHpFetdGt/xgpZHmxL2phH5a0zQkoMAoR52BTY2ykatV0ysu6W8MBm
srFU7OyV2F8r2Ng3cNGSbC7eJiUjmjPJdVFwycOPGdL6dVxgOcayidq/UDdXjA1+F8m/jPGqjifx
haOgmSuZK5Bb16NwWsn7rBICcGtbZKpL75d+2lCO5ArlM40jNVBVABR8faU9nOSUaWYQMJB6a4aH
v8S2pdSGediMJHhDChZw9kfHvfmIb7XSzj0sfg8om6mgk/zFl/Yr/ooREug6LEwcgHFn/fp9D0ZV
5cs+5glP1D2IEF5xtEFhdzmmVs+8MYsjQ2A07Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4576)
`pragma protect data_block
IIwg7zHrufoVsvGWNr6SlZsyCgAzk3m7UWr74+O3hf/lxix51eb89vl3n143nujHAL/Zc/vxjaa8
aB4RLgv/mgXdEdBUEiUcEbcrMZzK+EyTRiuH57sEpaAqnULXQr7ctPcBY/HhS5J6PSZ3UlN7elHZ
sEEMKT/PHs1m3frgOWRsGER3svZuuvKghbUoFInN7pUYwMyUGpAh+Qr1JrCPnkn/Q0XGFY+flVcG
r7phE4dmD5c+BSoHG43nJ8/hYUNcH6P8ZpWAuYwEMLgaivPVSuheHvxkklUHe+XHfO+/10q6dE/Q
UDHNDBHy7TIl4lij7iftdjQTQaPYv2s+VZXIdiFg/Arnbbn0r5q+XV1aq0OUPA+WF/uESqUuOJvR
Fd9bm/f6m0t+AHBiGDKdPuC6ks3vHo/mA3Jp0JqFCZ/6L5SDu5krvyXh2K6k/vJp8BrVN7U56dRn
xBmtUL4ifOiT9ThxTecG4WiNuAoElmTW2AZUW99iJGbCijyxzFmpwFjttUAgzq7wpdBEbd9p3adz
4Dwu/Qemsmf8+LpIQtDOHbUQhEoKUybwG5aamq+LkZy66XVGdOHYCUuV5ocV3Lm2717nOP1MWhXm
3+xTyWKIO9CNGkzrwXPoRHE8+fgRfWirVlJkFLouO2N3Su33EZklTBvkhbp3GRlTpwLLA4z5J5/6
ztywei8K0Sn9df543Ft+JpqFhDKKeFVtbfEzXHiFtyw/Ixu4qrkT0OJLsrKKMFqSbg3d70/lR2F/
AAxfllM9FFR/sirkPM7wf9awUdbgt7E3vgs+AKkW3cdXKaR5EU8zUXTRK7VdqCoCJVEQbEdwdRZI
PVzUJbDFyMF6a5L43pAEqW3V0sytcU1EnK7vt7M8HJapUYkmINE4xmHQucFf4jsJX5nE4GjfDXD5
rsqCMzQWBadUFJOjq9auCk0Ekvy/9uKXnQ17jEqwT5BunYO12TMtHgB83pK9vm6QabjcWtel8229
69fjk0aNeoT63BsuiE96ia09W6aTVJ8rkItE7n2lq8Ts3gsRxGA7c9KhWBKnAKDLZqvjbd30gmuv
rSXE7CxQfRIWgoFqUh6uqcnfNBBS3ekaVhLLN/qz42owCinApeizhJkVkRpYEperc5BqJduEZpVx
fg+f4Q+iI5WQHlVFfP3W1hFhsSYE+ZY7nNL90JT6AindfveswjR7Ate8K6CsrKgJtp9kLh9DSFfe
IHq+73gMGlPgAy6kKZ1vVppF5g7Md2PT+eteT/tQTgrHsWWFxAeTYtf3XxRScraUtVS2axwlrlw8
N4SEfIQO/ldC1yOAD1TCZnoRXTVhqNM8hp1lkUL4CcAa/oOtFNTC5y0+F0whuML66XIYr3QRrneO
3CyvLlyKWBd420vjiL9hylBRo6QZeHcLvcI//CNGi1udcjmcl+f8tbsBu0D6yGWJ0efnbzX4JcTl
zc75HLhfheeCmE6AZc7zPwZi/Mh3fDgbOnScnO3iNkWw1kNxp4neDVXFn4rBsfn2aTQ2wNKJk3sN
ye80GSgkgsgaDzAyysJAm0aNDsGTli1n2qDRiozQmSb9p6eU+YyLMipMN//WXIJK9ZM//44hM1Br
RtVs5HUJ/9jc29a9QfH/fEwsoNZ1Cz6cjH/vfvAnMYPfUlZ1ID961rJ9XL/klzO+dSHqso6Yjb+O
Ie7Ky42vDLT3+aRIYbU7r+1IAdXO5HO7WvKEzy406BFzpa1bwFlJGWzVwvNp82B9WLONYlqT2GWr
TeWTEvn0756D+W1lUB1v5RhhSUk1SneXksHeCHrQ09TUA+ammvxpgDDfAN0/+ROc1BUHiEjuL4Ef
/o9XB2CnulUAk6EXqDY4O5beROkOCoCrW0NyY2o03Fh9xZopQpXFJdUn5BIjS9cd2TmGk0Co7LKy
pIg48A3oS+3PnhBbsHOzPpGr9/2tC4RGEhqJYP+J/Vg7J0E4dEtgkn2VqkXBrFEdeccDqID/sPx2
9lPvRXGXxvSI4pnC+4flfENDMBQf2HdcViqjooZLCPg3BcY4upRDyg3INRhAaTX3NZ1UObJ6eTza
4EwTHoGfSsjYgjg4PWKidS6tvu2suHsxSRHf84EYHJE0MPoQ+BbIodbdLss/XxqBxN7THvWT3H/I
OrOq8TiY5OouDjY65IZHr6c4cHZ41PjQv1H0870h7qT3Rgc7oQJp8Ah0wuoEgERcFNOVipVSz7tJ
szozCZcBZJi5vmDrndc+2CIaZF5pezNClL990NpEFWSGSXB1rp1XWYD6XbPf5amaFgUJWiw94+9M
1eX28PYVfavLnqVvJquJhQ91A4Z9Wkqw6f6PaxBotEh7VcEaTBh8UnP3odosPnrZTQ++xa6H3a/i
E48EXP33yacrHGQDTRFbHQPVaM9cfaox8XkrRMEbasp2x3oqhq7CcCVU3fYkJM6FfN/Rx0iKgMRd
xucIR3ggkbMSgDhEdEAbdynHjqE0JuZi3B1/v+aT8s9kZkL4KrV7x3GB+EoawF/WNuUQC4bl2b4U
PbI0y8e1ocO/Wzmuhyzoxx30PrKA+wHPZ6T+Fqi36VgjZ57Fvd1Amx8xVLX82MGcNajppFEh7tZX
i/0lMYFtRK+CFPouCiCHZXpKlSjXtrdgntBkkOBEx+KIjmG/TmN2j6k4tNk291k/oPcIj+SPOk7i
tZpG9RaZFYRObozCy0pNiv19pM3U/CUJQDHQ0fWIoojO+UcrW9bSGrZwvyFhlJvOGOG4hgcaWo6i
YJiGMb5DtYPDeG3HsmwwOiKY5nOjOdXPr4JDpe0VHAymHQ+HVpNm4XYN2wfbBOAXJ00+exsR5IQX
uBXkZ7eUB0IAkz8scCEmQAvW32BL0pJdKF3qVDzadU0rjmXALwUB2oC3i/Hz88fQ1oXsLpzXnKte
6SOPioS3++2+eDMt1mULU4DrdtT6HZfSp1V4E6BlmtDVNROPkBoPaqOSzS5P1jj8NkkXjYdaH3qJ
EQhQZiB5jPAeDaXMv2hsrGbGJm+6KxZjKnN40zaZAXTiqCp98pG3XuQ7wytNvauWwZb8LNnMbrlp
jBoQlHCGNh1grBHxFf6kkbBkorHV33ai8APyZGgiHxOEeEp4EOc1ZkGpCwD3FuhyTJCmCWcp6cnH
xN7u9ysLDfHy53HT16B07uBj6p+BWWjjsXWh86t23U5v95KRiSfEMUg/opae5IlaVeiawLiAqv8F
XbrVJ41QexZkdvDohwBwId2JSRrmnlRat5tWfr5jVkjbtfCP+Lejrf4FdzVleeRpklKqVOrZOQpL
ygWm5aJe6Q0FMR/dB9oDC5k6S9BsczzjbrMlUJfQMIvv0kMIbWz006BGcMWoA/pjb7HUgr8afvwh
bTZ4uV3o7IVl/y7k8QgkYHweZACrSJpTSSGvz1foABsA+e63fHyqQhsgc7ZD27UMxRcynDZ5CwaY
4b0zCxKJ7uQk/t04cVbrCcbo2On7Fv9ta1CmPj/diDSbEg9tpVT7p8ffXFmeyTMdqK4GuIaUSngg
4U7kYjZjcISBQwDqnoieWesIJFrFXHvjqvJH5bIo7u53yOdthwha4Q1f2kJl/FJ1J3qJmAp0i8L6
br6q/wTdRGhAUlKIzV8LGvd/xHR/JwMnUe8XMrZdlJBRoBciX9AWyx47tXccZ5OFKYWyGPB4vQEV
EnYaPVgpAfDTDgb5sKkQUlfjCJTl6woywivn05/yLUejvGKcsS/0Nwo2CTMfG/gTPvinZUF5A31L
XYN3vYEmgQc+dyLDoh6sg9LkzTl9K0NOWuit7hX0ESD8vFsy7M5UeROC2RuipifctPDk0YByXe5b
web4c3mfXr0TGD1q3GQLIK82yGvIr7IoFguEQ4oWpEgiSwUd4zPcZwcOx6D/ZwS31nqEcTj7Qgaz
AjngYYYxvbmserFdZ3e4ZmOjD9vEAEmmtWAT5lv4uyvACZG4hFzFUaAG1mV/jv7GzrgJOTdOCxQ5
fKcZ/O0JxoovF6xPDerq0Nyqj6gcoP+hb2VpV4Wny2Zo3cBo8PEEif5KliHBcQfaactMSwSjOkuX
gq+f3U6ErJpDFnRBuCE0DTVG6lbdbQ0f6dUDV9nx1r8+ejd6epeQ/I7K/KM7wtWtm9+J7diYaI4k
KME4V+OruHSgdAJ4A3meKzMm/mgydCy+AYOQu2V2uuC7XCLszMxyCavg4mHTUZeg+CBYHSktf3wQ
7KVJYNwNVR8xiRep3ma9ML++PHKRvHXvca/V5/sg5VlymfLjaMZ1089KnrfxrIce4VRHaNDCLrII
NAsUhkwD/FXtLBpp4NKkOxNbTSj6hVbEsb+ycoiYo8EHYyCuHvp+PCo3QlPtwA/Zu84FMbJYLVQl
nc2BcBEyJOBfc+2W5yPVSimTDzNOexnQwz3CJ96964vw+Jdl3t6uzUnAh4yMoIqXhvz3bxl0n2TW
/1Tr955duDHMkajEtN1DcMp7onlAuKeQXfVRPUJniHcZJEV/9X925Q4+GxeORDeZQPZyG6bGF0y8
TYXhoLsYGCirNKYWwqCccPE3Kipa93rq/JZ81uozLhQl5vLjGz3Bpz7OjlD82aabSzDUDMUoVDnW
jIgwD6RUTRxp4uds9thYrVPG0oxqx05M/zYNrYPvyN4JwbL1NPesOUFSiaZ4IsJ5268aR6UdkVu/
/C4H0r6M1wVQfqhbVPVMpUjLOhAga//FuWf+cI0kka3IsGXHejqmRtfpypw6+AqTW6JSSDB6E/RN
JbsTlt9q1Qei2oaVGR0ZwHW8pmB57DXg/aOz9xa4qiS+sOPvg6Roa+GLyPHEA7rruxUs5s6SSWmA
rh4+KXu4QCV9TCgEbQ2vBPCifj123IXKJz5yxm/eoHtSdgLq9txpRLsugmyXrNWx7PEix47eImec
U8Ik4wYiie7N0cguTQ9WAGiOvyMR8GaqJiblLXYgwEEIvNuH0elKF4h95BRyqiI5T63tl5nRiyTO
x5wucbuM2YB2KN+sQTDpO+DHWVnRp83nwVaRe97aKvc1lJmpu4ZPTwFuRo6HHctMjVLKO2LxHJf6
bX0j18mvQdcM2mrXiDJ7YDMjCJ01oFX9dxYHg/cNov629ISjiSgtOhOKs5KhKV8bsDffBoZVv/rq
DDXylgz6EkkyQzR2bov69THJNosTa0o02MoL7XF7SgJbqwj5LZcZQ8kmOXUS3ZvpJYZ6Ua86zvUi
c+g9wPU/2u6glz89Czrv2ocGHG5iqHjD0aNn9cZt4om+zF6Mc0EHIWHpj4FSzVAGFMF+cvkx37b2
tydVmQGJ/Dvo7ttedx49wxcBbhenowHh6LkIrIyC4mw7mg6TlNt7KhPJLXA1qZtaQJFCwnPw1M7p
pHEKiap65HuZwXeLHHULHVfkzXDDGZ7rBwelseWd7hZqSXgcfLz6CTrgNhHXKvQ3HCnFOMaC0wn8
6nrg6676tzUoU3+fKXg2PlDUqAEw6heZu4bseaE+Z+EyIzcdkvla9swhzOeS2eFd/Su/T/otURFk
2Vjdws0dIIPhzXrDQ+rfs1SknKXJP2WKgdEYZbeXmVuclylFMvuJUrlq1xkO531q87Xjle2i8o+Z
LGPW4DKDe9LBCDEwInbktwr5gTwE2B6ewAIt3IXJz+j/9rmgqXYfG1Q1Wn1MldCRzGENrnrl1tow
jLIW4Rrf1jgpYmoNYtAiB9gSLKaswspnQ8uNPexGeOW6zqzA7XlmElX4MPPS/Dfwb6I+XHqBH9k3
zYmCGmCZ7kXyaUiZ2yXA5nQxTq2CGOyK0K2UclYlAL8bWbZTxdHpz8wGspzx+jPydcN5TWlejZ1W
T675BFfqDPcKghhTw7iotaImeCqT9MICtk4Hw/IaY8Oqow/W/iWfyErlzjdicGDnBdFwbM0gnGhL
+vThV2FNSWrNWTRtnRYpnEtGIbrsXJFc4e+PKnVcWwuvodiEpKXCRw8B3urCdxXbcCaksNqpm8/L
XbBA9Sx/uLizmoVjTge0PbvqkNZ6pVN2TTwwMIQwlOhRoXyKsx8D248ME2YPPJGYaU34ojgyKHT2
ziJH1Y587MGoLYgqXcC2n4dDyo2QDtQpNt25CNqA5SZUTdZ1we+e1Q0vvtnE2CBvM1UvlXhqeXQi
BT+pPxqtNRv2C5xU2SwjWg==
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
