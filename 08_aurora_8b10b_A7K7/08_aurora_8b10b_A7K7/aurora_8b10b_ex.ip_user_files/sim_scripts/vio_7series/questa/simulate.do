onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib vio_7series_opt

do {wave.do}

view wave
view structure
view signals

do {vio_7series.udo}

run -all

quit -force
