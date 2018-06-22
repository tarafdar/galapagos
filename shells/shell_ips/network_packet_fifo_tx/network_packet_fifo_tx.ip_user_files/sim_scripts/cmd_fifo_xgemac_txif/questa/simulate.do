onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib cmd_fifo_xgemac_txif_opt

do {wave.do}

view wave
view structure
view signals

do {cmd_fifo_xgemac_txif.udo}

run -all

quit -force
