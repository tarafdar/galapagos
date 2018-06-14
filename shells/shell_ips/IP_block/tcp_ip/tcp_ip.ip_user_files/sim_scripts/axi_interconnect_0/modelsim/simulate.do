onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L fifo_generator_v13_1_4 -L axi_interconnect_v1_7_13 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.axi_interconnect_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {axi_interconnect_0.udo}

run -all

quit -force
