onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ila_7series_opt

do {wave.do}

view wave
view structure
view signals

do {ila_7series.udo}

run -all

quit -force
