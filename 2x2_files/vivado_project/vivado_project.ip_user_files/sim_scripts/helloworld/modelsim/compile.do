vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_17
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_17
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/fifo_generator_v13_2_10
vlib modelsim_lib/msim/xbip_utils_v3_0_13
vlib modelsim_lib/msim/xbip_pipe_v3_0_9
vlib modelsim_lib/msim/xbip_bram18k_v3_0_9
vlib modelsim_lib/msim/mult_gen_v12_0_21
vlib modelsim_lib/msim/axi_utils_v2_0_9
vlib modelsim_lib/msim/fir_compiler_v7_2_22
vlib modelsim_lib/msim/lib_pkg_v1_0_4
vlib modelsim_lib/msim/lib_fifo_v1_0_19
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/axi_datamover_v5_1_33
vlib modelsim_lib/msim/axi_sg_v4_1_18
vlib modelsim_lib/msim/axi_dma_v7_1_32
vlib modelsim_lib/msim/proc_sys_reset_v5_0_15
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_31
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/axi_fifo_mm_s_v4_3_3
vlib modelsim_lib/msim/generic_baseblocks_v2_1_2
vlib modelsim_lib/msim/axi_data_fifo_v2_1_30
vlib modelsim_lib/msim/axi_crossbar_v2_1_32
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_31
vlib modelsim_lib/msim/axi_clock_converter_v2_1_30
vlib modelsim_lib/msim/blk_mem_gen_v8_4_8
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_31

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 modelsim_lib/msim/axi_vip_v1_1_17
vmap zynq_ultra_ps_e_vip_v1_0_17 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_17
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap fifo_generator_v13_2_10 modelsim_lib/msim/fifo_generator_v13_2_10
vmap xbip_utils_v3_0_13 modelsim_lib/msim/xbip_utils_v3_0_13
vmap xbip_pipe_v3_0_9 modelsim_lib/msim/xbip_pipe_v3_0_9
vmap xbip_bram18k_v3_0_9 modelsim_lib/msim/xbip_bram18k_v3_0_9
vmap mult_gen_v12_0_21 modelsim_lib/msim/mult_gen_v12_0_21
vmap axi_utils_v2_0_9 modelsim_lib/msim/axi_utils_v2_0_9
vmap fir_compiler_v7_2_22 modelsim_lib/msim/fir_compiler_v7_2_22
vmap lib_pkg_v1_0_4 modelsim_lib/msim/lib_pkg_v1_0_4
vmap lib_fifo_v1_0_19 modelsim_lib/msim/lib_fifo_v1_0_19
vmap lib_srl_fifo_v1_0_4 modelsim_lib/msim/lib_srl_fifo_v1_0_4
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap axi_datamover_v5_1_33 modelsim_lib/msim/axi_datamover_v5_1_33
vmap axi_sg_v4_1_18 modelsim_lib/msim/axi_sg_v4_1_18
vmap axi_dma_v7_1_32 modelsim_lib/msim/axi_dma_v7_1_32
vmap proc_sys_reset_v5_0_15 modelsim_lib/msim/proc_sys_reset_v5_0_15
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_31 modelsim_lib/msim/axi_register_slice_v2_1_31
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_fifo_mm_s_v4_3_3 modelsim_lib/msim/axi_fifo_mm_s_v4_3_3
vmap generic_baseblocks_v2_1_2 modelsim_lib/msim/generic_baseblocks_v2_1_2
vmap axi_data_fifo_v2_1_30 modelsim_lib/msim/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 modelsim_lib/msim/axi_crossbar_v2_1_32
vmap axi_protocol_converter_v2_1_31 modelsim_lib/msim/axi_protocol_converter_v2_1_31
vmap axi_clock_converter_v2_1_30 modelsim_lib/msim/axi_clock_converter_v2_1_30
vmap blk_mem_gen_v8_4_8 modelsim_lib/msim/blk_mem_gen_v8_4_8
vmap axi_dwidth_converter_v2_1_31 modelsim_lib/msim/axi_dwidth_converter_v2_1_31

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

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_17  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_zynq_ultra_ps_e_0_2/sim/helloworld_zynq_ultra_ps_e_0_2_vip_wrapper.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_block.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_por_fsm_top.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_bgt_fsm.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_device_rom.sv" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_por_fsm.sv" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_por_fsm_disabled.sv" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_tile_config.sv" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_constants_config.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_drp_arbiter.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_drp_arbiter_adc.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_register_decode.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_address_decoder.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_axi_lite_ipif.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_counter_f.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_pselect_f.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_slave_attachment.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_rf_wrapper.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_drp_control_top.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_drp_control.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_drp_access_ctrl.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_irq_req_ack.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_irq_sync.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2bufg_gt_ctrl.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_overvol_irq.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_powerup_state_irq.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2_rst_cnt.v" \
"../../../bd/helloworld/ip/helloworld_usp_rf_data_converter_0_2/synth/helloworld_usp_rf_data_converter_0_2.v" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_xlconstant_0_0/sim/helloworld_xlconstant_0_0.v" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ip/helloworld_Data_generation_0_0/sin_wave_modulate_fifo_generator_i0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ip/helloworld_Data_generation_0_0/sin_wave_modulate_fifo_generator_i0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ip/helloworld_Data_generation_0_0/sin_wave_modulate_fifo_generator_i0/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_Data_generation_0_0/sin_wave_modulate_fifo_generator_i0/sim/sin_wave_modulate_fifo_generator_i0.v" \
"../../../bd/helloworld/ip/helloworld_Data_generation_0_0/sin_wave_modulate_fifo_generator_i1/sim/sin_wave_modulate_fifo_generator_i1.v" \

vcom -work xbip_utils_v3_0_13  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ip/helloworld_Data_generation_0_0/sin_wave_modulate_mult_gen_v12_0_i0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_9  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ip/helloworld_Data_generation_0_0/sin_wave_modulate_mult_gen_v12_0_i0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_9  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ip/helloworld_Data_generation_0_0/sin_wave_modulate_mult_gen_v12_0_i0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_21  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ip/helloworld_Data_generation_0_0/sin_wave_modulate_mult_gen_v12_0_i0/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/helloworld/ip/helloworld_Data_generation_0_0/sin_wave_modulate_mult_gen_v12_0_i0/sim/sin_wave_modulate_mult_gen_v12_0_i0.vhd" \

vcom -work xil_defaultlib  -2008  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/6ad6/hdl/conv_pkg.vhd" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/6ad6/hdl/synth_reg.vhd" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/6ad6/hdl/synth_reg_w_init.vhd" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/6ad6/hdl/srl17e.vhd" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/6ad6/hdl/srl33e.vhd" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/6ad6/hdl/synth_reg_reg.vhd" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/6ad6/hdl/single_reg_w_init.vhd" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/6ad6/hdl/xlclockdriver_rd.vhd" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/6ad6/hdl/sin_wave_modulate_entity_declarations.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/6ad6/hdl/sin_wave_modulate.vhd" \
"../../../bd/helloworld/ip/helloworld_Data_generation_0_0/sim/helloworld_Data_generation_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_Receiver_0_2/sin_wave_demodulate_fifo_generator_i0/sim/sin_wave_demodulate_fifo_generator_i0.v" \
"../../../bd/helloworld/ip/helloworld_Receiver_0_2/sin_wave_demodulate_fifo_generator_i1/sim/sin_wave_demodulate_fifo_generator_i1.v" \

vcom -work axi_utils_v2_0_9  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ip/helloworld_Receiver_0_2/sin_wave_demodulate_fir_compiler_v7_2_i0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_22  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ip/helloworld_Receiver_0_2/sin_wave_demodulate_fir_compiler_v7_2_i0/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/helloworld/ip/helloworld_Receiver_0_2/sin_wave_demodulate_fir_compiler_v7_2_i0/sim/sin_wave_demodulate_fir_compiler_v7_2_i0.vhd" \
"../../../bd/helloworld/ip/helloworld_Receiver_0_2/sin_wave_demodulate_mult_gen_v12_0_i0/sim/sin_wave_demodulate_mult_gen_v12_0_i0.vhd" \

vcom -work xil_defaultlib  -2008  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/190d/hdl/sin_wave_demodulate_entity_declarations.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/190d/hdl/sin_wave_demodulate.vhd" \
"../../../bd/helloworld/ip/helloworld_Receiver_0_2/sim/helloworld_Receiver_0_2.vhd" \

vcom -work lib_pkg_v1_0_4  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_19  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_33  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/bf20/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_18  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/6f54/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_32  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/8830/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/helloworld/ip/helloworld_axi_dma_5/sim/helloworld_axi_dma_5.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_axi_smc_5/bd_0/sim/bd_6589.v" \
"../../../bd/helloworld/ip/helloworld_axi_smc_5/bd_0/ip/ip_0/sim/bd_6589_one_0.v" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/helloworld/ip/helloworld_axi_smc_5/bd_0/ip/ip_1/sim/bd_6589_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/98d8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_axi_smc_5/bd_0/ip/ip_2/sim/bd_6589_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_axi_smc_5/bd_0/ip/ip_3/sim/bd_6589_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a950/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_axi_smc_5/bd_0/ip/ip_4/sim/bd_6589_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_axi_smc_5/bd_0/ip/ip_5/sim/bd_6589_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_axi_smc_5/bd_0/ip/ip_6/sim/bd_6589_sarn_0.sv" \
"../../../bd/helloworld/ip/helloworld_axi_smc_5/bd_0/ip/ip_7/sim/bd_6589_srn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_axi_smc_5/bd_0/ip/ip_8/sim/bd_6589_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/1f04/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_axi_smc_5/bd_0/ip/ip_9/sim/bd_6589_m00e_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_31  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_axi_smc_5/sim/helloworld_axi_smc_5.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/helloworld/ip/helloworld_rst_ps8_0_96M_4/sim/helloworld_rst_ps8_0_96M_4.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_fifo_mm_s_v4_3_3  -93  \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/999f/hdl/axi_fifo_mm_s_v4_3_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/helloworld/ip/helloworld_axi_fifo_mm_s_5/sim/helloworld_axi_fifo_mm_s_5.vhd" \

vlog -work generic_baseblocks_v2_1_2  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_xbar_2/sim/helloworld_xbar_2.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/helloworld/sim/helloworld.vhd" \

vlog -work axi_protocol_converter_v2_1_31  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_30  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/80bf/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_31  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/14b9/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/ec67/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/a317/hdl" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado_project.gen/sources_1/bd/helloworld/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/helloworld/ip/helloworld_auto_ds_0/sim/helloworld_auto_ds_0.v" \
"../../../bd/helloworld/ip/helloworld_auto_pc_0/sim/helloworld_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

