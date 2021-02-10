onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L fifo_generator_v13_2_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.MAC_send_fifo xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {MAC_send_fifo.udo}

run -all

quit -force
