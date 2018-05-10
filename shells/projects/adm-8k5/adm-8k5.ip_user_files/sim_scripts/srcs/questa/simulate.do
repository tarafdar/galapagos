onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib shell_opt

do {wave.do}

view wave
view structure
view signals

do {shell.udo}

run -all

quit -force
