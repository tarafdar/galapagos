onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+axis_interconnect_2to1 -L xil_defaultlib -L xpm -L fifo_generator_v13_1_4 -L axis_interconnect_v1_1_14 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axis_interconnect_2to1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {axis_interconnect_2to1.udo}

run -all

endsim

quit -force
