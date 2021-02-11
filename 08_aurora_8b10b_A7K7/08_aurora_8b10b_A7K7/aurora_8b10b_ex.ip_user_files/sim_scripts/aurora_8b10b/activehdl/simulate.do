onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+aurora_8b10b -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.aurora_8b10b xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {aurora_8b10b.udo}

run -all

endsim

quit -force
