onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib axis_sync_fifo_opt

do {wave.do}

view wave
view structure
view signals

do {axis_sync_fifo.udo}

run -all

quit -force
