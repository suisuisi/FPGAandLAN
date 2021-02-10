onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L xbip_utils_v3_0_10 -L xbip_pipe_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L axi_lite_ipif_v3_0_4 -L tri_mode_ethernet_mac_v9_0_15 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.tri_mode_ethernet_mac_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {tri_mode_ethernet_mac_0.udo}

run -all

quit -force
