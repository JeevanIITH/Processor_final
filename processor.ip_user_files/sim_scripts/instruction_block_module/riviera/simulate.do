onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+instruction_block_module -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.instruction_block_module xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {instruction_block_module.udo}

run -all

endsim

quit -force
