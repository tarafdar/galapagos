onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ip_handler_ip_opt

do {wave.do}

view wave
view structure
view signals

do {ip_handler_ip.udo}

run -all

quit -force
