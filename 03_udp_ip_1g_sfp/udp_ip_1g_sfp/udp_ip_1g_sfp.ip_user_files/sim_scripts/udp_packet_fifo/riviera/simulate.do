onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+udp_packet_fifo -L xpm -L fifo_generator_v13_2_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.udp_packet_fifo xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {udp_packet_fifo.udo}

run -all

endsim

quit -force
