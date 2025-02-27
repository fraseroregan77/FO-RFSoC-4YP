vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_14
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_14
vlib questa_lib/msim/fifo_generator_v13_2_8
vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/axi_utils_v2_0_6
vlib questa_lib/msim/fir_compiler_v7_2_19
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_bram18k_v3_0_6
vlib questa_lib/msim/mult_gen_v12_0_18
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_fifo_v1_0_17
vlib questa_lib/msim/axi_fifo_mm_s_v4_3_0
vlib questa_lib/msim/axis_infrastructure_v1_1_0
vlib questa_lib/msim/axis_register_slice_v1_1_28
vlib questa_lib/msim/axis_subset_converter_v1_1_28
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_30
vlib questa_lib/msim/axi_sg_v4_1_16
vlib questa_lib/msim/axi_dma_v7_1_29
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_28
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_data_fifo_v2_1_27
vlib questa_lib/msim/axi_crossbar_v2_1_29
vlib questa_lib/msim/axi_protocol_converter_v2_1_28

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_14 questa_lib/msim/axi_vip_v1_1_14
vmap zynq_ultra_ps_e_vip_v1_0_14 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_14
vmap fifo_generator_v13_2_8 questa_lib/msim/fifo_generator_v13_2_8
vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 questa_lib/msim/axi_utils_v2_0_6
vmap fir_compiler_v7_2_19 questa_lib/msim/fir_compiler_v7_2_19
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 questa_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 questa_lib/msim/mult_gen_v12_0_18
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_17 questa_lib/msim/lib_fifo_v1_0_17
vmap axi_fifo_mm_s_v4_3_0 questa_lib/msim/axi_fifo_mm_s_v4_3_0
vmap axis_infrastructure_v1_1_0 questa_lib/msim/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_28 questa_lib/msim/axis_register_slice_v1_1_28
vmap axis_subset_converter_v1_1_28 questa_lib/msim/axis_subset_converter_v1_1_28
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_30 questa_lib/msim/axi_datamover_v5_1_30
vmap axi_sg_v4_1_16 questa_lib/msim/axi_sg_v4_1_16
vmap axi_dma_v7_1_29 questa_lib/msim/axi_dma_v7_1_29
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_28 questa_lib/msim/axi_register_slice_v2_1_28
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_27 questa_lib/msim/axi_data_fifo_v2_1_27
vmap axi_crossbar_v2_1_29 questa_lib/msim/axi_crossbar_v2_1_29
vmap axi_protocol_converter_v2_1_28 questa_lib/msim/axi_protocol_converter_v2_1_28

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_block.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_por_fsm_top.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_bgt_fsm.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_device_rom.sv" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_por_fsm.sv" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_por_fsm_disabled.sv" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_tile_config.sv" \
"../../../bd/work_pls/ip/work_pls_usp_rf_data_converter_0_0/synth/work_pls_usp_rf_data_converter_0_0_constants_config.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
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

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_14  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_zynq_ultra_ps_e_0_0/sim/work_pls_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work fifo_generator_v13_2_8  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fifo_generator_i0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fifo_generator_i0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fifo_generator_i0/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fifo_generator_i0/sim/sin_wave_demodulate_fifo_generator_i0.v" \
"../../../bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fifo_generator_i1/sim/sin_wave_demodulate_fifo_generator_i1.v" \

vcom -work xbip_utils_v3_0_10  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fir_compiler_v7_2_i0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fir_compiler_v7_2_i0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_19  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fir_compiler_v7_2_i0/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_fir_compiler_v7_2_i0/sim/sin_wave_demodulate_fir_compiler_v7_2_i0.vhd" \

vcom -work xbip_pipe_v3_0_6  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_mult_gen_v12_0_i0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_mult_gen_v12_0_i0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_mult_gen_v12_0_i0/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/work_pls/ip/work_pls_Receiver_0_0/sin_wave_demodulate_mult_gen_v12_0_i0/sim/sin_wave_demodulate_mult_gen_v12_0_i0.vhd" \

vcom -work xil_defaultlib  -2008  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/conv_pkg.vhd" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/synth_reg.vhd" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/synth_reg_w_init.vhd" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/srl17e.vhd" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/srl33e.vhd" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/synth_reg_reg.vhd" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/single_reg_w_init.vhd" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/xlclockdriver_rd.vhd" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/sin_wave_demodulate_entity_declarations.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/0f0d/hdl/sin_wave_demodulate.vhd" \
"../../../bd/work_pls/ip/work_pls_Receiver_0_0/sim/work_pls_Receiver_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_17  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/3d41/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_fifo_mm_s_v4_3_0  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0c7/hdl/axi_fifo_mm_s_v4_3_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/work_pls/ip/work_pls_axi_fifo_mm_s_0/sim/work_pls_axi_fifo_mm_s_0.vhd" \

vlog -work axis_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_28  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/eb9f/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/tdata_work_pls_axis_subset_converter_0.v" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/tuser_work_pls_axis_subset_converter_0.v" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/tstrb_work_pls_axis_subset_converter_0.v" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/tkeep_work_pls_axis_subset_converter_0.v" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/tid_work_pls_axis_subset_converter_0.v" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/tdest_work_pls_axis_subset_converter_0.v" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/tlast_work_pls_axis_subset_converter_0.v" \

vlog -work axis_subset_converter_v1_1_28  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/d78a/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/hdl/top_work_pls_axis_subset_converter_0.v" \
"../../../bd/work_pls/ip/work_pls_axis_subset_converter_0/sim/work_pls_axis_subset_converter_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/work_pls/ip/work_pls_rst_ps8_0_96M_0/sim/work_pls_rst_ps8_0_96M_0.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_30  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/e959/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_16  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/85d0/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_29  -93  \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/50c3/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/work_pls/ip/work_pls_axi_dma_0/sim/work_pls_axi_dma_0.vhd" \

vlog -work xlconstant_v1_1_7  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_0/sim/bd_c659_one_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_1/sim/bd_c659_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_2/sim/bd_c659_arsw_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_3/sim/bd_c659_rsw_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_4/sim/bd_c659_awsw_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_5/sim/bd_c659_wsw_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_6/sim/bd_c659_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_7/sim/bd_c659_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_8/sim/bd_c659_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_9/sim/bd_c659_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_10/sim/bd_c659_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_11/sim/bd_c659_sawn_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_12/sim/bd_c659_swn_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_13/sim/bd_c659_sbn_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_14/sim/bd_c659_s01mmu_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_15/sim/bd_c659_s01tr_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_16/sim/bd_c659_s01sic_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_17/sim/bd_c659_s01a2s_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_18/sim/bd_c659_sarn_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_19/sim/bd_c659_srn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_20/sim/bd_c659_m00s2a_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_21/sim/bd_c659_m00arn_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_22/sim/bd_c659_m00rn_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_23/sim/bd_c659_m00awn_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_24/sim/bd_c659_m00wn_0.sv" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_25/sim/bd_c659_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/ip/ip_26/sim/bd_c659_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/bd_0/sim/bd_c659.v" \

vlog -work axi_register_slice_v2_1_28  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_axi_smc_0/sim/work_pls_axi_smc_0.v" \
"../../../bd/work_pls/ip/work_pls_xlconstant_0_0/sim/work_pls_xlconstant_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_27  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/fab7/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_29  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_xbar_0/sim/work_pls_xbar_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/work_pls/sim/work_pls.vhd" \

vlog -work axi_protocol_converter_v2_1_28  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8c02/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f805/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/8713/hdl" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PYNQ_Receiver_2023.gen/sources_1/bd/work_pls/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/work_pls/ip/work_pls_auto_pc_0/sim/work_pls_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

