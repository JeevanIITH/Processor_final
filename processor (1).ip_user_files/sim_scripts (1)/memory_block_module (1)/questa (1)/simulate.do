onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib memory_block_module_opt

do {wave.do}

view wave
view structure
view signals

do {memory_block_module.udo}

run -all

quit -force
