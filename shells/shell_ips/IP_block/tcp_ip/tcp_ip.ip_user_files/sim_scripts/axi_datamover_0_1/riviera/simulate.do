onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+axi_datamover_0 -L xil_defaultlib -L xpm -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_1 -L lib_fifo_v1_0_10 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_datamover_v5_1_17 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axi_datamover_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {axi_datamover_0.udo}

run -all

endsim

quit -force
