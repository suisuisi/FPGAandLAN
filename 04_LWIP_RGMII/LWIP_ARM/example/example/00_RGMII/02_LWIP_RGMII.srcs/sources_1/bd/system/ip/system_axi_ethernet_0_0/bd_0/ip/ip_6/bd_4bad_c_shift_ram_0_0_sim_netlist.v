// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Apr 11 17:21:39 2020
// Host        : LAPTOP-8E6RLG3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/FILE/FPGA/ZYNQ/08_LAN/02_LWIP_RGMII/02_LWIP_RGMII.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_6/bd_4bad_c_shift_ram_0_0_sim_netlist.v
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
qsvhH+FjSLUrKnTJRQRAQPXf3qKg9uUn4alv1Yr3xydwdU3pw3+95Dy9puWzKOgeVI1clP6KIovw
L7rgpqa/60+fUPqPXgIiSMCXTCy+VCb4Hd0YCW/qZeXTcc+LqUF+BtenEfq2O6NVuXfiMD01904o
FlWFbEVhaFgADDAebGfNiohNMpL2Q6PTSz/oTsgpoKKTWGBqP5E85s/yShbFpV7SOtB1LQp10AU0
agViZhxSiUSkVp95pp1QBgMrGiCjNWaJ2oFUlsWDO7513bAQakX/PxXV33fK5HpYevYGzC0VUqkh
4RyR3auKNvoJL4319ZgtAlaGWaMj0lrx8hXaqw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iUPUyB+fOG0WEIGXkj5kaKC0N3jLW5Q0iEqM3ZcUq8m5fwrNnjFdDOPDEzOWTZGYu3sLY8MhtzWj
snYa45veE6fb52uWYxJXbmWZhD+f3akleem9h4fXfolb62Xd1w2j4I1D8fmpLBHEYJX96X/6qKTY
MiP7/ZR0jEPr9oEB2H6axriLeMmVGL5AaLxt2LEY65OUEHS6y3jCqaSTAUyM8FbA7OtwGqWdLLSk
agpgHeH0iCGSyMAyBuj7vxH3xvss69UdVs4LRD+R9DOV/4UKPa5zDLt2amLd4NSJBM7o2kgVi6kN
vJ6giNtLql+nHqdyMhMAB0BPhV1DWF4ARZeEaA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4640)
`pragma protect data_block
6DPHPEUnjZPl4HBvYjzQUeF41oz4CQgq1INzEfMRl9ICXjbAxklvAxxBEIY4arDn0bIpQtr1fr9/
P7Pc8Hgrj6XkU/X8V8Kp9yIaSiwZ9Ob0JCGrv/EDa/67vFm2UaHZuDh+lq0xUfboAdyr15GD9PXq
tgrFzXfmmoECVBc87VnEz09AsJa4ZCBQftoeid1PpaNG/n+ww45xOKMqC8i5VCNckbwnQT0Xu5gN
kVTyXaV/58Kx1sDK1dfCKZ6JDf/0Icran3tQavzGHrh27t1CK9RgHqxasZdP7PTLMClT4b/BKv6E
Gl2siD5ADZ5pK06jQpzQpsKaqAJGU42NCuJnXGlp7hDs6PJ8vh3SHk912TFRghhI3200CtdcxYN6
Ik9ERvm0OjY73qo5Xp/+sz5mVyABY/AA1SFxqC3y5qYIltnLDQEoVyDWQzw9yLpR3Q1Zhvf51JC3
LtSiiYAL+m+C7KbVsPhL/yjpeyIf8apfJSOLJLmRLmGC9i13Ec/6IgqqHNLJqBwlprYIeHxFmsLB
TIZog+WL2Pm2TtKFkJ/OqRPDJ2pieHu4sSmeM0bu/P5zAA2eXpFx/fjvVdEstvqKjUfUdDPsoX2L
p3+79uMkkmBhO26KDW4LeAkZvIpogvU0FQGjxQKNRTJqIFAhaQvZqDVot2PWGz5CZ1ClgJua9aWj
2e/MS+/oJqGOHcUJdUSks6CgheYh/7H2WLDTQvT16vJo3VmHii2W480e1lYo/URlJGSn6bUjTKUS
dqahLnHykDmQMyC8u4EIbdCEuvWZVUuv9BoDTWDKzIKOQXsrK5oIUSbEwmEKlRZs2ik2pE+AmtB+
X2EWZ6dKtXIx2/Cd0ecBPhIbynsoV42C9BYe+IuWiyFzEhd7bFeqXdS5qAgtJflQpn2+LGM3NKAM
OEmu5neht340eCs3D3Vseitb6ApxHCHkaaR8v0E7tQEunRIr8doXanNhbNbymV4Zg/73KMykx8H5
ywZYNq0Z1fdN5p0Rx54TbJ/IXGIwS/iLVUxd8Xz2TxF89aBBOXfhGVYcPoFm54HgTzp3FcMbZ3ZG
C9JvEVqpvkn0XGZXoBRloMApQ1ahdzFozdJRhHEBjQi7a5TFdpJGpJ0+uwWVrvIicj8UMlv2HmLp
mX3fxW3YqEmEoRvTZLcqTyBcKzRTytS+vNIA4+SJ3cdWCoRW/qWHY8WNIHe5MlC3wDIRDCcgy68o
cRCqQEJgBXsUde9AOHICoygMn8jV+CWj4TP5AkOoK3xPsSX/3KC2ZlztO5pvrmNEe8kth+fSe1Tw
bwUEj03iX6iDd/aQpBHaMyLuHICK17+QCnXXheseZeN1jaBaAUkyMfRGxlxDTEC2ekyGzFPcSR6v
RNFTLLSa1VfQDB4wTE+8P5MnghmBnkW6YVMwHrVaeSPOJPZl8//Pc118pQ2qUiiEsBXiaHS1gz4F
5ViRPDkcaHQ0oPHoQpVLfqc5zp/k+9hwJmX1CXsgNnfrbD7gXIM3TpIAbW7ZrupeP9fS2npBX0Cc
WeTysrX3YUXcxeQjZL1CbRa1zQiVoR4/Kn/8M3oAPdF6Ow8q6gz/CnRTH4iK05+zQBsfETrjG/cz
CAseJ7ccWfL9r6Ql5rE0FPqPUgp0ciSohy1m6Uebr9eptPs+JCZquoO7CbgMN5urcYOlHwl7Y5X8
68nku+H6dLD0REc4MJa71c8lF+nLds/0Gak0l/W2SFmEmM5/1XPkpWMBy2qOMbv0SbGHo7NFL+IC
/DuNKj630WETbhhjqs62VJ/ca0wFSWB2vGHrHRgx5gvb2gLyNdUh4J4VxOYuK0s8tUERoSUhkchC
rOKrTHjyPUbspb5Sqs45n81rb+ooQa6VPVdCJHJIMeCQYoWikezY5x4EQJf0e08TftgaQtx/ecF9
Qz3vNTM3G5WJWsPo0pHWDzwAp4BGLXRSYPi1S50QWJ9Ey/7FOppcrM8xDnu+eOheUNh16XzNY7cW
wOaYy6n/Hp0tNvhofaEuTpwTGeybUET+QkMeLRvufhEGSPx5QEqxm8c/sYt0BM0+QCTKhZ0scr+e
afkWX/Tf+iCMgwMQDCtp7b4mrV0NV8uRb2sX3SI5vb0yDeVOPQgtEdhatShu1vqpl9mMi+XJ1rgQ
NhGw5z/c2NEGf9ndpxAqjxWQYpg4HGrdh7nbsDd172lKsmNTwjFa4GkWYD6C5sh/ekOiozau9awo
nDSy5tCJDgB+n2yItuRvwFMB9cXN5D0UZaa6BwBW4/Uq3FXkthot42rhWeJYFsdTttU3sYVf51wy
GPpTIBduwvt8nxoscGEytb1I2BpNnE+akSvXOpT3l+W1lg8D8hNTKKyI2YJg/gB0MF+KxjkHTp8X
BaRH4wdtbbCse7xFMSv6z75sXHU3tfQ0SdPk97tNphqJ+nskTzJLpVdBZRP8lAKUVZSIyfGfNtTE
G8SXMzEDg0adBF1POG0wwUrSqI/yWizeohGaPWzu9cdslWUGGtWnlM9OM2g5petE64cuHBJm7i3s
k2khuVXGWYlURAhkx+dtkkwn+fG3bTJkeny4CP13lwC5F+PoK+d7+407bJWcGIFGD4k34Zn9ajXo
/gYzgO4YNDnjhM1fsVwal0KXiIVDm+4itJ+gH7NpQK+kmGAXLiSqRh2ZurXNYfUKgPRFHG4Sxwp2
OLbj1BNSdEQh3tULFI+J+ayOz3tH2E6TnLU1GdFQ/NXS7H3sIKfVAe+K74222OA3WEZhgxShdxS/
T9Wjo8wTlNanzc3a+5jvl4t263StiZHSlvItS/bIjCPGkZl13zVwl7O1PwKHLmCFxExxNYHacch5
S3PBLHu8n4ZrJKxVRvyH5OvyqR9CxQRTFcj/Xj+dGpQjHTfW9WzZZ+syRNp3GShMLGE/8KsZ7GND
rc6NkhH+rZaCHBTVUQ5iA5XPv8hJssQVAb820HW5NdBHBOc9fs5+SXF+r6MIm3M/NDfkbSpiI6h6
d9NX9wW/apdsNJLh5vcbWXc2V9H3ZOvdTRgQU5LoS+dgEt6GIdmh4z3PVE7FQHFAWbf4FyhUax2w
i8jrCR8v/Al9AUUmFlY6kDv1oXFSLEIuwCkCGuOjLkSqu0rWBY5pBJUpwKu7aJ2dTfc8S1JQ3Z1W
KL28rkuT5k+MGJLzIbLWWJlMyYZgusV7iZrjZlRgkpXhZJsY5UX/lfU1jOG9lMDzxeqbXXPa22FK
tYevHk9OPcidG6kTfTE3y/YeEv9Wfp6NHxJhNeko7YBQoLDaCXH90JsE2VFH5GH0wqLAcnk7fPTc
6dApBwOyvbOqqBfVc4Dlku8u74Is7hVLqUIKXwy/b+JqOz7nXeHKjK1wT8CKBqNl2phEJAsBXjBk
yPqE14rnX+ngoeBS9eVuO8YIV6WxJL0+5GANNiFh3vRcCz3L6ljhlCwRYtMqOx36GkMbUtV82ZWK
af9Ydek318Ej3PBQ38UAv3ul6w79audryInT/bp6BvkMx6QQqUm6FGqeACTiLeaDCzLr2rBzr0Un
MQDHGdYU6zOKGz3xb2ccqfk47c6EwZwF5meBCbm1MJTRs5d83IfJHjQ5aBtYPZaSp5gy3FssPdMO
DADKE3VHthXa6n7mVaI50TPaJxaW+ZApBuMdCA67u2P49llVpdF/j1cqIvMsp6TPq6cjvh1Wn5o+
OqkEZVjEicfheNjQe0Vj5BgeoeFY/tEhMRk0C1GICf7Bskojpdp/EY3uMJrQOHiSEpmPxEaVjF5t
B1o43I43q5WTi49aAzo4eQOPLn0FJAKkrepNp0DtYBgcwW3L+y6cIPXCdg9hGfD2mC4jOOTe1FXL
K68o8wKUBqVgWZGH8jwM3JQ4xqrm6B0FVb1Gce2hxBHdF0hhd0tw5nxV5XkKzUFbDfrKLIrQ0MWM
0pa8dDkWDSeAG6zfmtJKES6ZRlEFDJfOMzbGgtbVwHxrwY9lKQB+fILE+xG2LThbGFmx5UhWV26w
QVCNyYnhgcamlurK8hqOB5bsqfPW1Dx9tWGefQEHZfpzLe0OtNUtIqziMQC7yqYwhnxYdWhOk9bM
LfOuo9xwDF8ksroYYBM612pr9Lknw/BXAS9LxkfQfnJdbPsTMD6d82Uvwn7EzEl1Te7D0+LHE5ha
MU39OTYUrycaAiH0xzZLxrSIu0fmyjdyXmu3IDVKQFPFe04lfyQDu+GQ/dNgAz5G1NyGgkixSike
SF503noFtprAz7kS1YCqOjuY+E1z8J4dE1CSVrUlSjaQmwTpCxmy6URux721J2vduy9fT/iS+dg4
x/SG0iNyYXQKckMKq3jXlhpnG9BFkdb53hoWQUHkEUFEUBTJ2SpJl5ujwUMLiD+tku9gYRMs/Rnf
RUwzwUm8WPujTanUVod28z674aCE9zTt5tFoEg/hBiGX++Q4Srsc7pwGUzjqtd8maW0sa4H5iK0t
oWq44eKBeZ55/N5L1b1/iRZtR+JNZK8ZEa9ZJVRO8E+IchW2Ucro1xCACcTpD8lxCgFn657EDlV6
6yLmmuNaSlL2UPTl8TkZAEF+kTIkftT8N43nmpY3PnX0q4hkZaPe5pxVu0Onm7vDpkEeRGtq6l56
cZA8VvT39uEyCSEisedRQpwSG6EeQNJ1zOo8lHo6K1WKTUiIPJGXhgujFJ0KILICFbQUedw1Kp7x
LRQeMlkoIoQP6c2Za3c+T05ToXXQJw6C8GY9AnfAZW3Wu+qJT1GFF4gQ4P0UAdgznpnuHXz4VTkk
tt7VFOx7KOCi6UuvTwlrylC9aHx3iDSm6l4C+Nu/GN5oZr7S/6s1FLGkfpEfqL2yu3SxxFzhI2MC
38SX/dp0VLCA7A3poPe9oNFpQYlB/nVCKjf9HXeTVK4gxu14WPK+IA5U8UVwLSOVBWduFJrYrxvT
Gu4rGxsCUPIVLihL8NlJw+6PSOvwRntW8kPZCPj4QL9R27UJcea9Qr7Ig681jQN4eNR/WhmPfn7X
83j/Vbds6H2cJ/hcA+kgv+fbOVmSMTjT/MW6o/AHZ+7PS+I+nclAxCD3H9dcc1EpX4Nh/8xArOJu
fO+sZ5W06HzQEsp66erg77k3sWgr+wuxPYXVUhdU9iYhnI8Zca/pSl965ddzHRRjbR8XtiNeolbc
mTc31sJF439Lq3VaqxvW/23lB4rMNsoGkeJqtvI/TCJJSAYLHq65MD1YXG0DUdH+OEHa8qb/1lG2
HDnRlABowGQz6n/S7dP6qNc/iOh3FNABSqwtseHX9/L220H8berYILmKcfNMQx8GrGchreYTmt3i
76REgoOsqXnxFN9YqRnAR2KTMJl0i2h2J+7VG1+HaD8NjcSFowEy2JqgA6me8FA7ZveUmZ3PHQQ4
uBERLqHeEHJxYzmuI34UFDFjtIXDn192pBstgSQqb9460A/cg2a/+BU0OdQFBxMkGPuh5e2qIs7M
2TSHRZfpQzzgjUELm11fvfEQTnTyh5lBvlxh02JH5JwWWqPH12+X9Tkx3lyMGiyzCV8P1BKO3BDN
FKOHgjdgHo1rgP3UW4TN3FK872WWH9JoyS2NU+xMJdVDh6GIvEWzS9S56yoC/coAPoywIQREMPOa
4cWn4MOXcwBXpnvBo1RGUWmSZdd0IkiEB0xp98ZmMVLtvDtP4u3C0mkdv3EMx3Bx6Nenthch4tsk
YDR0PN0gPeVJIKYWgTRj9aJRplXwvfphiIjtQrb76fd7+ErT0vcOOkQTJP5rUvbpYv+rqGN1JGCo
WXQgcAy7hSf7bpkXiMDBchdg8SOakQr33qBfHtEIsYco/R/k1HDarXj/wO5kVJHOZo5sVITFSYAo
AR+Dew6yfcQmBFC1Jx7wISN05FZtRXIYmlY1+42yuUYO0o+5CSO37RCrAejAbxP5ywdDJLY0i8DA
7SEofgNgB2wU2qAayo9jofeyLKMA61UHrexOSJHPGyrCLVh4vc+y+3ECy/KKtiTOQAkPAfKyG9XG
EUDSxfrtLXrVsbOenvVL+m2xMJvjKzOhTv+aW/zWGTG/Sx/Lvptx4UjRI1FGyv1XEpux0wU2TmpS
iLy3pNcsdV/EYYaEcbjGnS7fjO8HSw5uwwqUnKK0wm0tstAqQnlzcZpZcK+wWS+WxmVMQXU0MWzk
sYPdzIWxVaPgc/iJUKNhUf0EX+hE/0kkFt2EmGJIXeSODk5ytTQVP2G4Lx+8ndGJBbmNofcFKEO6
gazpijsXWTphB6jVGZBa9XRBDZF11aQ=
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
