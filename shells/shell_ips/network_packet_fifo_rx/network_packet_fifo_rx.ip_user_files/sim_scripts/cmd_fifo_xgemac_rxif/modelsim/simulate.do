onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L fifo_generator_v13_2_1 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.cmd_fifo_xgemac_rxif xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {cmd_fifo_xgemac_rxif.udo}

run -all

quit -force
