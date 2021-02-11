connect -url tcp:127.0.0.1:3121
source F:/FPGA_project/vivado/miz701n/7010/2016_4/PL_AXI_ETH_RGMII/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249854643"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249854643" && level==0} -index 1
fpga -file F:/FPGA_project/vivado/miz701n/7010/2016_4/PL_AXI_ETH_RGMII/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249854643"} -index 0
loadhw F:/FPGA_project/vivado/miz701n/7010/2016_4/PL_AXI_ETH_RGMII/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249854643"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS1 210249854643"} -index 0
dow F:/FPGA_project/vivado/miz701n/7010/2016_4/PL_AXI_ETH_RGMII/Miz_sys/Miz_sys.sdk/test/Debug/test.elf
bpadd -addr &main
