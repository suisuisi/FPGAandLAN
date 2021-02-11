connect -url tcp:127.0.0.1:3121
source F:/FPGA_project/vivado/miz7035/lwip_sfp/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249854643"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249854643" && level==0} -index 1
fpga -file F:/FPGA_project/vivado/miz7035/lwip_sfp/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249854643"} -index 0
loadhw F:/FPGA_project/vivado/miz7035/lwip_sfp/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249854643"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS1 210249854643"} -index 0
dow F:/FPGA_project/vivado/miz7035/lwip_sfp/Miz_sys/Miz_sys.sdk/tcp_echo_server/Debug/tcp_echo_server.elf
bpadd -addr &main
