#-----------------------------------------------------------------
# Vitis Model Composer version 2024.1 IP Tcl source file.
#
# Copyright(C) 1995-2022 by Xilinx, Inc. All rights reserved.
# Copyright(C) 2022-2024 by Advanced Micro Devices, Inc. All rights reserved.
#
# This text/file contains proprietary, confidential information of Xilinx,
# Inc., is distributed under license from Xilinx, Inc., and may be used,
# copied and/or disclosed only pursuant to the terms of a valid license
# agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
# this text/file solely for design, simulation, implementation and
# creation of design files limited to Xilinx devices or technologies.
# Use with non-Xilinx devices or technologies is expressly prohibited
# and immediately terminates your license unless covered by a separate
# agreement.
#
# Xilinx is providing this design, code, or information "as is" solely
# for use in developing programs and solutions for Xilinx devices.  By
# providing this design, code, or information as one possible
# implementation of this feature, application or standard, Xilinx is
# making no representation that this implementation is free from any
# claims of infringement.  You are responsible for obtaining any rights
# you may require for your implementation.  Xilinx expressly disclaims
# any warranty whatsoever with respect to the adequacy of the
# implementation, including but not limited to warranties of
# merchantability or fitness for a particular purpose.
#
# Xilinx products are not intended for use in life support appliances,
# devices, or systems.  Use in such applications is expressly prohibited.
#
# Any modifications that are made to the source code are done at the user's
# sole risk and will be unsupported.
#
# This copyright and support notice must be retained as part of this
# text at all times.
#-----------------------------------------------------------------

set existingipslist [get_ips]
if {[lsearch $existingipslist sin_wave_modulate_mult_gen_v12_0_i0] < 0} {
create_ip -name mult_gen -version 12.0 -vendor xilinx.com -library ip -module_name sin_wave_modulate_mult_gen_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {sin_wave_modulate_mult_gen_v12_0_i0}
lappend params_list CONFIG.clockenable {true}
lappend params_list CONFIG.multiplier_construction {Use_Mults}
lappend params_list CONFIG.optgoal {Speed}
lappend params_list CONFIG.outputwidthhigh {31}
lappend params_list CONFIG.pipestages {3}
lappend params_list CONFIG.portatype {Signed}
lappend params_list CONFIG.portawidth {16}
lappend params_list CONFIG.portbtype {Signed}
lappend params_list CONFIG.portbwidth {16}
lappend params_list CONFIG.sclrcepriority {CE_Overrides_SCLR}
lappend params_list CONFIG.syncclear {true}
lappend params_list CONFIG.use_custom_output_width {true}

set_property -dict $params_list [get_ips sin_wave_modulate_mult_gen_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist sin_wave_modulate_fifo_generator_i0] < 0} {
create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name sin_wave_modulate_fifo_generator_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {sin_wave_modulate_fifo_generator_i0}
lappend params_list CONFIG.almost_empty_flag {false}
lappend params_list CONFIG.almost_full_flag {false}
lappend params_list CONFIG.data_count {false}
lappend params_list CONFIG.data_count_width {11}
lappend params_list CONFIG.disable_timing_violations {false}
lappend params_list CONFIG.dout_reset_value {0}
lappend params_list CONFIG.enable_ecc {false}
lappend params_list CONFIG.enable_reset_synchronization {true}
lappend params_list CONFIG.enable_safety_circuit {false}
lappend params_list CONFIG.fifo_implementation {Common_Clock_Block_RAM}
lappend params_list CONFIG.full_flags_reset_value {0}
lappend params_list CONFIG.full_threshold_assert_value {1000}
lappend params_list CONFIG.full_threshold_negate_value {999}
lappend params_list CONFIG.inject_dbit_error {false}
lappend params_list CONFIG.inject_sbit_error {false}
lappend params_list CONFIG.input_data_width {33}
lappend params_list CONFIG.input_depth {1024}
lappend params_list CONFIG.output_data_width {33}
lappend params_list CONFIG.output_depth {1024}
lappend params_list CONFIG.overflow_flag {false}
lappend params_list CONFIG.overflow_sense {Active_High}
lappend params_list CONFIG.performance_options {First_Word_Fall_Through}
lappend params_list CONFIG.programmable_empty_type {No_Programmable_Empty_Threshold}
lappend params_list CONFIG.programmable_full_type {Single_Programmable_Full_Threshold_Constant}
lappend params_list CONFIG.reset_pin {false}
lappend params_list CONFIG.underflow_flag {false}
lappend params_list CONFIG.underflow_sense {Active_High}
lappend params_list CONFIG.use_dout_reset {true}
lappend params_list CONFIG.use_embedded_registers {false}
lappend params_list CONFIG.use_extra_logic {false}
lappend params_list CONFIG.valid_flag {false}
lappend params_list CONFIG.valid_sense {Active_High}
lappend params_list CONFIG.write_acknowledge_flag {false}
lappend params_list CONFIG.write_acknowledge_sense {Active_High}

set_property -dict $params_list [get_ips sin_wave_modulate_fifo_generator_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist sin_wave_modulate_fifo_generator_i1] < 0} {
create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name sin_wave_modulate_fifo_generator_i1
set params_list [list]
lappend params_list CONFIG.Component_Name {sin_wave_modulate_fifo_generator_i1}
lappend params_list CONFIG.almost_empty_flag {false}
lappend params_list CONFIG.almost_full_flag {false}
lappend params_list CONFIG.data_count {false}
lappend params_list CONFIG.data_count_width {11}
lappend params_list CONFIG.disable_timing_violations {false}
lappend params_list CONFIG.dout_reset_value {0}
lappend params_list CONFIG.enable_ecc {false}
lappend params_list CONFIG.enable_reset_synchronization {true}
lappend params_list CONFIG.enable_safety_circuit {false}
lappend params_list CONFIG.fifo_implementation {Common_Clock_Block_RAM}
lappend params_list CONFIG.full_flags_reset_value {0}
lappend params_list CONFIG.inject_dbit_error {false}
lappend params_list CONFIG.inject_sbit_error {false}
lappend params_list CONFIG.input_data_width {2}
lappend params_list CONFIG.input_depth {1024}
lappend params_list CONFIG.output_data_width {2}
lappend params_list CONFIG.output_depth {1024}
lappend params_list CONFIG.overflow_flag {false}
lappend params_list CONFIG.overflow_sense {Active_High}
lappend params_list CONFIG.performance_options {First_Word_Fall_Through}
lappend params_list CONFIG.programmable_empty_type {No_Programmable_Empty_Threshold}
lappend params_list CONFIG.programmable_full_type {No_Programmable_Full_Threshold}
lappend params_list CONFIG.reset_pin {false}
lappend params_list CONFIG.underflow_flag {false}
lappend params_list CONFIG.underflow_sense {Active_High}
lappend params_list CONFIG.use_dout_reset {true}
lappend params_list CONFIG.use_embedded_registers {false}
lappend params_list CONFIG.use_extra_logic {false}
lappend params_list CONFIG.valid_flag {false}
lappend params_list CONFIG.valid_sense {Active_High}
lappend params_list CONFIG.write_acknowledge_flag {false}
lappend params_list CONFIG.write_acknowledge_sense {Active_High}

set_property -dict $params_list [get_ips sin_wave_modulate_fifo_generator_i1]
}


validate_ip [get_ips]
