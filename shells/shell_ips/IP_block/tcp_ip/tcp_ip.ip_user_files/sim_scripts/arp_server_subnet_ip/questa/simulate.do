onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib arp_server_subnet_ip_opt

do {wave.do}

view wave
view structure
view signals

do {arp_server_subnet_ip.udo}

run -all

quit -force
