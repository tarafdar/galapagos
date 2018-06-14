onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+axis_register_slice_64 -L xil_defaultlib -L xpm -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_15 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axis_register_slice_64 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {axis_register_slice_64.udo}

run -all

endsim

quit -force
