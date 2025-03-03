vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/fifo_generator_v13_2_10
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xbip_utils_v3_0_13
vlib questa_lib/msim/xbip_pipe_v3_0_9
vlib questa_lib/msim/xbip_bram18k_v3_0_9
vlib questa_lib/msim/mult_gen_v12_0_21
vlib questa_lib/msim/axi_utils_v2_0_9
vlib questa_lib/msim/fir_compiler_v7_2_22
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_17
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_17
vlib questa_lib/msim/lib_pkg_v1_0_4
vlib questa_lib/msim/lib_fifo_v1_0_19
vlib questa_lib/msim/lib_srl_fifo_v1_0_4
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/axi_datamover_v5_1_33
vlib questa_lib/msim/axi_sg_v4_1_18
vlib questa_lib/msim/axi_dma_v7_1_32
vlib questa_lib/msim/xlconstant_v1_1_9
vlib questa_lib/msim/proc_sys_reset_v5_0_15
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_31
vlib questa_lib/msim/generic_baseblocks_v2_1_2
vlib questa_lib/msim/axi_data_fifo_v2_1_30
vlib questa_lib/msim/axi_crossbar_v2_1_32
vlib questa_lib/msim/axi_protocol_converter_v2_1_31

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap fifo_generator_v13_2_10 questa_lib/msim/fifo_generator_v13_2_10
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xbip_utils_v3_0_13 questa_lib/msim/xbip_utils_v3_0_13
vmap xbip_pipe_v3_0_9 questa_lib/msim/xbip_pipe_v3_0_9
vmap xbip_bram18k_v3_0_9 questa_lib/msim/xbip_bram18k_v3_0_9
vmap mult_gen_v12_0_21 questa_lib/msim/mult_gen_v12_0_21
vmap axi_utils_v2_0_9 questa_lib/msim/axi_utils_v2_0_9
vmap fir_compiler_v7_2_22 questa_lib/msim/fir_compiler_v7_2_22
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 questa_lib/msim/axi_vip_v1_1_17
vmap zynq_ultra_ps_e_vip_v1_0_17 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_17
vmap lib_pkg_v1_0_4 questa_lib/msim/lib_pkg_v1_0_4
vmap lib_fifo_v1_0_19 questa_lib/msim/lib_fifo_v1_0_19
vmap lib_srl_fifo_v1_0_4 questa_lib/msim/lib_srl_fifo_v1_0_4
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap axi_datamover_v5_1_33 questa_lib/msim/axi_datamover_v5_1_33
vmap axi_sg_v4_1_18 questa_lib/msim/axi_sg_v4_1_18
vmap axi_dma_v7_1_32 questa_lib/msim/axi_dma_v7_1_32
vmap xlconstant_v1_1_9 questa_lib/msim/xlconstant_v1_1_9
vmap proc_sys_reset_v5_0_15 questa_lib/msim/proc_sys_reset_v5_0_15
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_31 questa_lib/msim/axi_register_slice_v2_1_31
vmap generic_baseblocks_v2_1_2 questa_lib/msim/generic_baseblocks_v2_1_2
vmap axi_data_fifo_v2_1_30 questa_lib/msim/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 questa_lib/msim/axi_crossbar_v2_1_32
vmap axi_protocol_converter_v2_1_31 questa_lib/msim/axi_protocol_converter_v2_1_31

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ip/PYNQ_Design_DUT_data_in_0_0/dut_fifo_generator_i0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ip/PYNQ_Design_DUT_data_in_0_0/dut_fifo_generator_i0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ip/PYNQ_Design_DUT_data_in_0_0/dut_fifo_generator_i0/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_DUT_data_in_0_0/dut_fifo_generator_i0/sim/dut_fifo_generator_i0.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_DUT_data_in_0_0/dut_fifo_generator_i1/sim/dut_fifo_generator_i1.v" \

vcom -work xbip_utils_v3_0_13  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ip/PYNQ_Design_DUT_data_in_0_0/dut_mult_gen_v12_0_i0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_9  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ip/PYNQ_Design_DUT_data_in_0_0/dut_mult_gen_v12_0_i0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_9  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ip/PYNQ_Design_DUT_data_in_0_0/dut_mult_gen_v12_0_i0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_21  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ip/PYNQ_Design_DUT_data_in_0_0/dut_mult_gen_v12_0_i0/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_DUT_data_in_0_0/dut_mult_gen_v12_0_i0/sim/dut_mult_gen_v12_0_i0.vhd" \

vcom -work xil_defaultlib  -2008  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ebcd/hdl/conv_pkg.vhd" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ebcd/hdl/synth_reg.vhd" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ebcd/hdl/synth_reg_w_init.vhd" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ebcd/hdl/srl17e.vhd" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ebcd/hdl/srl33e.vhd" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ebcd/hdl/synth_reg_reg.vhd" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ebcd/hdl/single_reg_w_init.vhd" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ebcd/hdl/xlclockdriver_rd.vhd" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ebcd/hdl/dut_entity_declarations.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ebcd/hdl/dut.vhd" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_DUT_data_in_0_0/sim/PYNQ_Design_DUT_data_in_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_DUT_rec_0_0/dut_fifo_generator_i1/sim/dut_fifo_generator_i1.v" \

vcom -work axi_utils_v2_0_9  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ip/PYNQ_Design_DUT_rec_0_0/dut_fir_compiler_v7_2_i0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_22  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ip/PYNQ_Design_DUT_rec_0_0/dut_fir_compiler_v7_2_i0/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_DUT_rec_0_0/dut_fir_compiler_v7_2_i0/sim/dut_fir_compiler_v7_2_i0.vhd" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_DUT_rec_0_0/dut_mult_gen_v12_0_i0/sim/dut_mult_gen_v12_0_i0.vhd" \

vcom -work xil_defaultlib  -2008  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/9398/hdl/dut_entity_declarations.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/9398/hdl/dut.vhd" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_DUT_rec_0_0/sim/PYNQ_Design_DUT_rec_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_17  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_zynq_ultra_ps_e_0_0/sim/PYNQ_Design_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_block.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_por_fsm_top.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_bgt_fsm.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_device_rom.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_por_fsm.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_por_fsm_disabled.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_tile_config.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_constants_config.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_drp_arbiter.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_drp_arbiter_adc.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_register_decode.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_address_decoder.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_axi_lite_ipif.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_counter_f.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_pselect_f.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_slave_attachment.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_rf_wrapper.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_drp_control_top.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_drp_control.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_drp_access_ctrl.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_irq_req_ack.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_irq_sync.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0bufg_gt_ctrl.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_overvol_irq.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_powerup_state_irq.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0_rst_cnt.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_usp_rf_data_converter_0_0/synth/PYNQ_Design_usp_rf_data_converter_0_0.v" \

vcom -work lib_pkg_v1_0_4  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_19  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_33  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/bf20/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_18  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/6f54/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_32  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/8830/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_dma_0/sim/PYNQ_Design_axi_dma_0.vhd" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_0/sim/bd_8d08_one_0.v" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_1/sim/bd_8d08_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_2/sim/bd_8d08_arsw_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_3/sim/bd_8d08_rsw_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_4/sim/bd_8d08_awsw_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_5/sim/bd_8d08_wsw_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_6/sim/bd_8d08_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/98d8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_7/sim/bd_8d08_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_8/sim/bd_8d08_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a950/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_9/sim/bd_8d08_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_10/sim/bd_8d08_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_11/sim/bd_8d08_sawn_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_12/sim/bd_8d08_swn_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_13/sim/bd_8d08_sbn_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_14/sim/bd_8d08_s01mmu_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_15/sim/bd_8d08_s01tr_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_16/sim/bd_8d08_s01sic_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_17/sim/bd_8d08_s01a2s_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_18/sim/bd_8d08_sarn_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_19/sim/bd_8d08_srn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_20/sim/bd_8d08_m00s2a_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_21/sim/bd_8d08_m00arn_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_22/sim/bd_8d08_m00rn_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_23/sim/bd_8d08_m00awn_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_24/sim/bd_8d08_m00wn_0.sv" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_25/sim/bd_8d08_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/1f04/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/ip/ip_26/sim/bd_8d08_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/bd_0/sim/bd_8d08.v" \

vlog -work axi_register_slice_v2_1_31  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_axi_smc_0/sim/PYNQ_Design_axi_smc_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_rst_ps8_0_96M_0/sim/PYNQ_Design_rst_ps8_0_96M_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_xbar_0/sim/PYNQ_Design_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_31  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/ec67/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/a317/hdl" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PLEASE.gen/sources_1/bd/PYNQ_Design/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_auto_pc_0/sim/PYNQ_Design_auto_pc_0.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_xlconstant_0_0/sim/PYNQ_Design_xlconstant_0_0.v" \
"../../../bd/PYNQ_Design/ip/PYNQ_Design_xlconstant_0_1/sim/PYNQ_Design_xlconstant_0_1.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/PYNQ_Design/sim/PYNQ_Design.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

