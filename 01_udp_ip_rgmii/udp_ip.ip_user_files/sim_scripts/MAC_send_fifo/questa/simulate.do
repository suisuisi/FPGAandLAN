onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib MAC_send_fifo_opt

do {wave.do}

view wave
view structure
view signals

do {MAC_send_fifo.udo}

run -all

quit -force
