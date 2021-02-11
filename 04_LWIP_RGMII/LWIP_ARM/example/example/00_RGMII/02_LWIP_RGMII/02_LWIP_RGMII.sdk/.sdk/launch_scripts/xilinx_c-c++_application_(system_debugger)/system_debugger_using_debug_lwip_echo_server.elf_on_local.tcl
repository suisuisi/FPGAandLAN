connect -url tcp:127.0.0.1:3121
source J:/FEP/ETH1512/MZ702AB/CH02_PL_AXI_ETH_RGMII/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855041"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249855041" && level==0} -index 1
fpga -file J:/FEP/ETH1512/MZ702AB/CH02_PL_AXI_ETH_RGMII/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855041"} -index 0
loadhw J:/FEP/ETH1512/MZ702AB/CH02_PL_AXI_ETH_RGMII/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855041"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855041"} -index 0
dow J:/FEP/ETH1512/MZ702AB/CH02_PL_AXI_ETH_RGMII/Miz_sys/Miz_sys.sdk/lwip_echo_server/Debug/lwip_echo_server.elf
bpadd -addr &main
