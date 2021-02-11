connect -url tcp:127.0.0.1:3121
source J:/FEP/ETH1512/MZ7035/CH01_EMIO_ETH_RGMII/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855490"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249855490" && level==0} -index 1
fpga -file J:/FEP/ETH1512/MZ7035/CH01_EMIO_ETH_RGMII/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855490"} -index 0
loadhw -hw J:/FEP/ETH1512/MZ7035/CH01_EMIO_ETH_RGMII/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855490"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855490"} -index 0
dow J:/FEP/ETH1512/MZ7035/CH01_EMIO_ETH_RGMII/Miz_sys/Miz_sys.sdk/echo_server_lwip/Debug/echo_server_lwip.elf
configparams force-mem-access 0
bpadd -addr &main
