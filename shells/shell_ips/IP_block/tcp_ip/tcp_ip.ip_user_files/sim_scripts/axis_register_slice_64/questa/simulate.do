onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib axis_register_slice_64_opt

do {wave.do}

view wave
view structure
view signals

do {axis_register_slice_64.udo}

run -all

quit -force
