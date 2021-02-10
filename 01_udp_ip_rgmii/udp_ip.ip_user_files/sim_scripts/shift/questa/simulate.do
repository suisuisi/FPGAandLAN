onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib shift_opt

do {wave.do}

view wave
view structure
view signals

do {shift.udo}

run -all

quit -force
