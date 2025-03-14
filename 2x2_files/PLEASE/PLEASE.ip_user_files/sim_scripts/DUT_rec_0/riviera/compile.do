transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/fifo_generator_v13_2_10
vlib riviera/xil_defaultlib
vlib riviera/xbip_utils_v3_0_13
vlib riviera/axi_utils_v2_0_9
vlib riviera/fir_compiler_v7_2_22
vlib riviera/xbip_pipe_v3_0_9
vlib riviera/xbip_bram18k_v3_0_9
vlib riviera/mult_gen_v12_0_21

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap fifo_generator_v13_2_10 riviera/fifo_generator_v13_2_10
vmap xil_defaultlib riviera/xil_defaultlib
vmap xbip_utils_v3_0_13 riviera/xbip_utils_v3_0_13
vmap axi_utils_v2_0_9 riviera/axi_utils_v2_0_9
vmap fir_compiler_v7_2_22 riviera/fir_compiler_v7_2_22
vmap xbip_pipe_v3_0_9 riviera/xbip_pipe_v3_0_9
vmap xbip_bram18k_v3_0_9 riviera/xbip_bram18k_v3_0_9
vmap mult_gen_v12_0_21 riviera/mult_gen_v12_0_21

vlog -work xilinx_vip  -incr -l axi_vip_v1_1_17 -l smartconnect_v1_0 -l zynq_ultra_ps_e_vip_v1_0_17 "+incdir+D:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l fifo_generator_v13_2_10 -l xil_defaultlib -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l fir_compiler_v7_2_22 -l xbip_pipe_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 \
"D:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l axi_vip_v1_1_17 -l smartconnect_v1_0 -l zynq_ultra_ps_e_vip_v1_0_17 "+incdir+D:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l fifo_generator_v13_2_10 -l xil_defaultlib -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l fir_compiler_v7_2_22 -l xbip_pipe_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 \
"D:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+D:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l fifo_generator_v13_2_10 -l xil_defaultlib -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l fir_compiler_v7_2_22 -l xbip_pipe_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 \
"../../../ipstatic/ip/DUT_rec_0/x16_bit_demod_fifo_generator_i0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  -incr \
"../../../ipstatic/ip/DUT_rec_0/x16_bit_demod_fifo_generator_i0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+D:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l fifo_generator_v13_2_10 -l xil_defaultlib -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l fir_compiler_v7_2_22 -l xbip_pipe_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 \
"../../../ipstatic/ip/DUT_rec_0/x16_bit_demod_fifo_generator_i0/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+D:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l fifo_generator_v13_2_10 -l xil_defaultlib -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l fir_compiler_v7_2_22 -l xbip_pipe_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 \
"../../../../PLEASE.gen/sources_1/ip/DUT_rec_0/x16_bit_demod_fifo_generator_i0/sim/x16_bit_demod_fifo_generator_i0.v" \
"../../../../PLEASE.gen/sources_1/ip/DUT_rec_0/x16_bit_demod_fifo_generator_i1/sim/x16_bit_demod_fifo_generator_i1.v" \

vcom -work xbip_utils_v3_0_13 -93  -incr \
"../../../ipstatic/ip/DUT_rec_0/x16_bit_demod_fir_compiler_v7_2_i0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_9 -93  -incr \
"../../../ipstatic/ip/DUT_rec_0/x16_bit_demod_fir_compiler_v7_2_i0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_22 -93  -incr \
"../../../ipstatic/ip/DUT_rec_0/x16_bit_demod_fir_compiler_v7_2_i0/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../PLEASE.gen/sources_1/ip/DUT_rec_0/x16_bit_demod_fir_compiler_v7_2_i0/sim/x16_bit_demod_fir_compiler_v7_2_i0.vhd" \

vcom -work xbip_pipe_v3_0_9 -93  -incr \
"../../../ipstatic/ip/DUT_rec_0/x16_bit_demod_mult_gen_v12_0_i0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_9 -93  -incr \
"../../../ipstatic/ip/DUT_rec_0/x16_bit_demod_mult_gen_v12_0_i0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_21 -93  -incr \
"../../../ipstatic/ip/DUT_rec_0/x16_bit_demod_mult_gen_v12_0_i0/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../PLEASE.gen/sources_1/ip/DUT_rec_0/x16_bit_demod_mult_gen_v12_0_i0/sim/x16_bit_demod_mult_gen_v12_0_i0.vhd" \

vcom -work xil_defaultlib -2008  -incr \
"../../../ipstatic/xil_defaultlib/hdl/conv_pkg.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/synth_reg.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/synth_reg_w_init.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/srl17e.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/srl33e.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/synth_reg_reg.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/single_reg_w_init.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/xlclockdriver_rd.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/x16_bit_demod_entity_declarations.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../ipstatic/xil_defaultlib/hdl/x16_bit_demod.vhd" \
"../../../../PLEASE.gen/sources_1/ip/DUT_rec_0/sim/DUT_rec_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

