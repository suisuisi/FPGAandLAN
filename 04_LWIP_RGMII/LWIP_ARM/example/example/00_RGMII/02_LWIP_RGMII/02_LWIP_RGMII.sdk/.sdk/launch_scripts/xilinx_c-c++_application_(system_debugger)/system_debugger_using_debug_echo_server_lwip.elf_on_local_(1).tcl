connect -url tcp:127.0.0.1:3121
source F:/FILE/TEST/02_LWIP_RGMII/02_LWIP_RGMII.sdk/system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249856074"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249856074" && level==0} -index 1
fpga -file F:/FILE/TEST/02_LWIP_RGMII/02_LWIP_RGMII.sdk/system_wrapper_hw_platform_0/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249856074"} -index 0
loadhw -hw F:/FILE/TEST/02_LWIP_RGMII/02_LWIP_RGMII.sdk/system_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249856074"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS1 210249856074"} -index 0
dow F:/FILE/TEST/02_LWIP_RGMII/02_LWIP_RGMII.sdk/echo_server_lwip/Debug/echo_server_lwip.elf
configparams force-mem-access 0
bpadd -addr &main
