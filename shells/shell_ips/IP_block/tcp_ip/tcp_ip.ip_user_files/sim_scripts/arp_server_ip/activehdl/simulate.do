onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+arp_server_ip -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.arp_server_ip xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {arp_server_ip.udo}

run -all

endsim

quit -force
