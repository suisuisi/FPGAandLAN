onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib charLib_opt

do {wave.do}

view wave
view structure
view signals

do {charLib.udo}

run -all

quit -force
