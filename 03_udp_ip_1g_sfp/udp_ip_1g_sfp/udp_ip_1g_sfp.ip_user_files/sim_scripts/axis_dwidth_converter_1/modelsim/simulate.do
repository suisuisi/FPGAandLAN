onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_20 -L axis_dwidth_converter_v1_1_19 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.axis_dwidth_converter_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {axis_dwidth_converter_1.udo}

run -all

quit -force
