onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib gig_ethernet_pcs_pma_0_opt

do {wave.do}

view wave
view structure
view signals

do {gig_ethernet_pcs_pma_0.udo}

run -all

quit -force
