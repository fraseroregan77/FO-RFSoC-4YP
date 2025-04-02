onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xilinx_vip -L xpm -L fifo_generator_v13_2_10 -L xil_defaultlib -L xbip_utils_v3_0_13 -L axi_utils_v2_0_9 -L fir_compiler_v7_2_22 -L xbip_pipe_v3_0_9 -L xbip_bram18k_v3_0_9 -L mult_gen_v12_0_21 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.DUT_rec_0 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {DUT_rec_0.udo}

run 1000ns

quit -force
