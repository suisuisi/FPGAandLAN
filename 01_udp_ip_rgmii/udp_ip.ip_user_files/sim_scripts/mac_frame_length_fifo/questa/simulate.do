onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mac_frame_length_fifo_opt

do {wave.do}

view wave
view structure
view signals

do {mac_frame_length_fifo.udo}

run -all

quit -force
