onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mac_ip_encode_ip_opt

do {wave.do}

view wave
view structure
view signals

do {mac_ip_encode_ip.udo}

run -all

quit -force
