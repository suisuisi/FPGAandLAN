connect -url tcp:127.0.0.1:3121
source F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.sdk/dma_system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855396"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249855396" && level==0} -index 1
fpga -file F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.sdk/dma_system_wrapper_hw_platform_0/dma_system_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855396"} -index 0
loadhw F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.sdk/dma_system_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855396"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855396"} -index 0
dow F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.sdk/AXI_DMA_PL_PS_Test/Debug/AXI_DMA_PL_PS_Test.elf
bpadd -addr &main
