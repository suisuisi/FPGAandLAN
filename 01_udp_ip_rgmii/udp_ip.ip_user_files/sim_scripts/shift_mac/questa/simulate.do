onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib shift_mac_opt

do {wave.do}

view wave
view structure
view signals

do {shift_mac.udo}

run -all

quit -force
