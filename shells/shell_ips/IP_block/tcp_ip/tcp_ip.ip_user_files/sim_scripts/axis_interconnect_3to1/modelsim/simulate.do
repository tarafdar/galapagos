onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L fifo_generator_v13_1_4 -L axis_interconnect_v1_1_14 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.axis_interconnect_3to1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {axis_interconnect_3to1.udo}

run -all

quit -force
