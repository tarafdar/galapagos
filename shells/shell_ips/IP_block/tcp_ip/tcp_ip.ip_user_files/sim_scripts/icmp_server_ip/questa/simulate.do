onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib icmp_server_ip_opt

do {wave.do}

view wave
view structure
view signals

do {icmp_server_ip.udo}

run -all

quit -force
