vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_17
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_17
vlib questa_lib/msim/fifo_generator_v13_2_10
vlib questa_lib/msim/xbip_utils_v3_0_13
vlib questa_lib/msim/axi_utils_v2_0_9
vlib questa_lib/msim/fir_compiler_v7_2_22
vlib questa_lib/msim/xbip_pipe_v3_0_9
vlib questa_lib/msim/xbip_bram18k_v3_0_9
vlib questa_lib/msim/mult_gen_v12_0_21
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_pkg_v1_0_4
vlib questa_lib/msim/lib_fifo_v1_0_19
vlib questa_lib/msim/axi_fifo_mm_s_v4_3_3
vlib questa_lib/msim/axis_infrastructure_v1_1_1
vlib questa_lib/msim/axis_register_slice_v1_1_31
vlib questa_lib/msim/axis_subset_converter_v1_1_31
vlib questa_lib/msim/generic_baseblocks_v2_1_2
vlib questa_lib/msim/axi_register_slice_v2_1_31
vlib questa_lib/msim/axi_data_fifo_v2_1_30
vlib questa_lib/msim/axi_crossbar_v2_1_32
vlib questa_lib/msim/axi_protocol_converter_v2_1_31
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/proc_sys_reset_v5_0_15
vlib questa_lib/msim/lib_srl_fifo_v1_0_4
vlib questa_lib/msim/axi_datamover_v5_1_33
vlib questa_lib/msim/axi_sg_v4_1_18
vlib questa_lib/msim/axi_dma_v7_1_32
vlib questa_lib/msim/xlconstant_v1_1_9
vlib questa_lib/msim/smartconnect_v1_0

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 questa_lib/msim/axi_vip_v1_1_17
vmap zynq_ultra_ps_e_vip_v1_0_17 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_17
vmap fifo_generator_v13_2_10 questa_lib/msim/fifo_generator_v13_2_10
vmap xbip_utils_v3_0_13 questa_lib/msim/xbip_utils_v3_0_13
vmap axi_utils_v2_0_9 questa_lib/msim/axi_utils_v2_0_9
vmap fir_compiler_v7_2_22 questa_lib/msim/fir_compiler_v7_2_22
vmap xbip_pipe_v3_0_9 questa_lib/msim/xbip_pipe_v3_0_9
vmap xbip_bram18k_v3_0_9 questa_lib/msim/xbip_bram18k_v3_0_9
vmap mult_gen_v12_0_21 questa_lib/msim/mult_gen_v12_0_21
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_4 questa_lib/msim/lib_pkg_v1_0_4
vmap lib_fifo_v1_0_19 questa_lib/msim/lib_fifo_v1_0_19
vmap axi_fifo_mm_s_v4_3_3 questa_lib/msim/axi_fifo_mm_s_v4_3_3
vmap axis_infrastructure_v1_1_1 questa_lib/msim/axis_infrastructure_v1_1_1
vmap axis_register_slice_v1_1_31 questa_lib/msim/axis_register_slice_v1_1_31
vmap axis_subset_converter_v1_1_31 questa_lib/msim/axis_subset_converter_v1_1_31
vmap generic_baseblocks_v2_1_2 questa_lib/msim/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_31 questa_lib/msim/axi_register_slice_v2_1_31
vmap axi_data_fifo_v2_1_30 questa_lib/msim/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 questa_lib/msim/axi_crossbar_v2_1_32
vmap axi_protocol_converter_v2_1_31 questa_lib/msim/axi_protocol_converter_v2_1_31
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 questa_lib/msim/proc_sys_reset_v5_0_15
vmap lib_srl_fifo_v1_0_4 questa_lib/msim/lib_srl_fifo_v1_0_4
vmap axi_datamover_v5_1_33 questa_lib/msim/axi_datamover_v5_1_33
vmap axi_sg_v4_1_18 questa_lib/msim/axi_sg_v4_1_18
vmap axi_dma_v7_1_32 questa_lib/msim/axi_dma_v7_1_32
vmap xlconstant_v1_1_9 questa_lib/msim/xlconstant_v1_1_9
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0

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

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_block.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_por_fsm_top.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_bgt_fsm.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_device_rom.sv" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_por_fsm.sv" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_por_fsm_disabled.sv" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_tile_config.sv" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_constants_config.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_drp_arbiter.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_drp_arbiter_adc.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_register_decode.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_address_decoder.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_axi_lite_ipif.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_counter_f.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_pselect_f.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_slave_attachment.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_rf_wrapper.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_drp_control_top.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_drp_control.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_drp_access_ctrl.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_irq_req_ack.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_irq_sync.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0bufg_gt_ctrl.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_overvol_irq.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_powerup_state_irq.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_rst_cnt.v" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_17  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_zynq_ultra_ps_e_0_0/sim/work_pls_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fifo_generator_i0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fifo_generator_i0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fifo_generator_i0/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fifo_generator_i0/sim/sin_wave_demodulate_fifo_generator_i0.v" \
"../../../bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fifo_generator_i1/sim/sin_wave_demodulate_fifo_generator_i1.v" \

vcom -work xbip_utils_v3_0_13  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fir_compiler_v7_2_i0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_9  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fir_compiler_v7_2_i0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_22  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fir_compiler_v7_2_i0/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fir_compiler_v7_2_i0/sim/sin_wave_demodulate_fir_compiler_v7_2_i0.vhd" \

vcom -work xbip_pipe_v3_0_9  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_mult_gen_v12_0_i0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_9  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_mult_gen_v12_0_i0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_21  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_mult_gen_v12_0_i0/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_mult_gen_v12_0_i0/sim/sin_wave_demodulate_mult_gen_v12_0_i0.vhd" \

vcom -work xil_defaultlib  -2008  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/conv_pkg.vhd" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/synth_reg.vhd" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/synth_reg_w_init.vhd" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/srl17e.vhd" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/srl33e.vhd" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/synth_reg_reg.vhd" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/single_reg_w_init.vhd" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/xlclockdriver_rd.vhd" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/sin_wave_demodulate_entity_declarations.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/sin_wave_demodulate.vhd" \
"../../../bd/work_pls/ip/work_pls_Receiver_0_0/sim/work_pls_Receiver_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_4  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_19  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_fifo_mm_s_v4_3_3  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/999f/hdl/axi_fifo_mm_s_v4_3_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/work_pls/ip/work_pls_axi_fifo_mm_s_0/sim/work_pls_axi_fifo_mm_s_0.vhd" \

vlog -work axis_infrastructure_v1_1_1  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_31  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ca8d/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/tdata_work_pls_axis_subset_converter_0.v" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/tuser_work_pls_axis_subset_converter_0.v" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/tstrb_work_pls_axis_subset_converter_0.v" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/tkeep_work_pls_axis_subset_converter_0.v" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/tid_work_pls_axis_subset_converter_0.v" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/tdest_work_pls_axis_subset_converter_0.v" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/tlast_work_pls_axis_subset_converter_0.v" \

vlog -work axis_subset_converter_v1_1_31  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/4bab/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/top_work_pls_axis_subset_converter_0.v" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/sim/work_pls_axis_subset_converter_0.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_xbar_0/sim/work_pls_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_31  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_auto_pc_0/sim/work_pls_auto_pc_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/work_pls/ip/work_pls_rst_ps8_0_96M_0/sim/work_pls_rst_ps8_0_96M_0.vhd" \

vcom -work lib_srl_fifo_v1_0_4  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_33  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/bf20/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_18  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/6f54/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_32  -93  \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/8830/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/work_pls/ip/work_pls_axi_dma_0/sim/work_pls_axi_dma_0.vhd" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_0/sim/bd_c659_one_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_1/sim/bd_c659_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/98d8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_2/sim/bd_c659_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_3/sim/bd_c659_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a950/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_4/sim/bd_c659_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_5/sim/bd_c659_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_6/sim/bd_c659_sawn_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_7/sim/bd_c659_swn_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_8/sim/bd_c659_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_9/sim/bd_c659_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/1f04/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_10/sim/bd_c659_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/sim/bd_c659.v" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/a317/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/434f/hdl" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver.gen/sources_1/bd/work_pls/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/sim/work_pls_axi_smc_0.v" \
"../../../bd/work_pls/ip/work_pls_xlconstant_0_0/sim/work_pls_xlconstant_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/work_pls/sim/work_pls.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

