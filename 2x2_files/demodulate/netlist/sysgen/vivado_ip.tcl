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
if {[lsearch $existingipslist sin_wave_demodulate_fir_compiler_v7_2_i0] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name sin_wave_demodulate_fir_compiler_v7_2_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {sin_wave_demodulate_fir_compiler_v7_2_i0}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:0000000000001840000000000000000000000000000010C000000000000008C00000000000001440000000000000184000000000000018C00000000000002AC00000000000001C400000000000004640000000000000504000000000000046400000000000001C400000000000002AC000000000000018C00000000000001840000000000000144000000000000008C000000000000010C000000000000000000000000000001840}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {0}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {1}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {11}
lappend params_list CONFIG.Control_Broadcast_Fanout {false}
lappend params_list CONFIG.Control_Column_Fanout {false}
lappend params_list CONFIG.Control_LUT_Pipeline {false}
lappend params_list CONFIG.Control_Path_Fanout {false}
lappend params_list CONFIG.DATA_Has_TLAST {Not_Required}
lappend params_list CONFIG.DATA_TUSER_Width {1}
lappend params_list CONFIG.Data_Buffer_Type {Automatic}
lappend params_list CONFIG.Data_Fractional_Bits {0}
lappend params_list CONFIG.Data_Path_Broadcast {false}
lappend params_list CONFIG.Data_Path_Fanout {false}
lappend params_list CONFIG.Data_Sign {Signed}
lappend params_list CONFIG.Data_Width {32}
lappend params_list CONFIG.Decimation_Rate {1}
lappend params_list CONFIG.Disable_Half_Band_Centre_Tap {false}
lappend params_list CONFIG.DisplayReloadOrder {false}
lappend params_list CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate}
lappend params_list CONFIG.Filter_Selection {1}
lappend params_list CONFIG.Filter_Type {Single_Rate}
lappend params_list CONFIG.GUI_Behaviour {Sysgen_uUPP}
lappend params_list CONFIG.Gen_MIF_Files {false}
lappend params_list CONFIG.Gen_MIF_from_COE {false}
lappend params_list CONFIG.Gen_MIF_from_Spec {false}
lappend params_list CONFIG.HardwareOversamplingRate {1}
lappend params_list CONFIG.Has_ACLKEN {true}
lappend params_list CONFIG.Has_ARESETn {false}
lappend params_list CONFIG.Input_Buffer_Type {Automatic}
lappend params_list CONFIG.Inter_Column_Pipe_Length {4}
lappend params_list CONFIG.Interpolation_Rate {1}
lappend params_list CONFIG.M_DATA_Has_TREADY {false}
lappend params_list CONFIG.M_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.Multi_Column_Support {Automatic}
lappend params_list CONFIG.No_BRAM_Read_First_Mode {false}
lappend params_list CONFIG.No_SRL_Attributes {false}
lappend params_list CONFIG.Num_Reload_Slots {1}
lappend params_list CONFIG.Number_Channels {1}
lappend params_list CONFIG.Number_Paths {1}
lappend params_list CONFIG.Optimal_Column_Lengths {false}
lappend params_list CONFIG.Optimization_Goal {Area}
lappend params_list CONFIG.Optimization_List {None}
lappend params_list CONFIG.Optimization_Selection {None}
lappend params_list CONFIG.Other {false}
lappend params_list CONFIG.Output_Buffer_Type {Automatic}
lappend params_list CONFIG.Output_Rounding_Mode {Full_Precision}
lappend params_list CONFIG.Output_Width {40}
lappend params_list CONFIG.Passband_Max {0.50000000}
lappend params_list CONFIG.Passband_Min {0.00000000}
lappend params_list CONFIG.Pattern_List {P4-0,P4-1,P4-2,P4-3,P4-4}
lappend params_list CONFIG.Pre_Adder_Pipeline {false}
lappend params_list CONFIG.Preference_For_Other_Storage {Automatic}
lappend params_list CONFIG.Quantization {Integer_Coefficients}
lappend params_list CONFIG.RateSpecification {Maximum_Possible}
lappend params_list CONFIG.Rate_Change_Type {Integer}
lappend params_list CONFIG.Reload_File {no_coe_file_loaded}
lappend params_list CONFIG.Reset_Data_Vector {true}
lappend params_list CONFIG.S_CONFIG_Method {Single}
lappend params_list CONFIG.S_CONFIG_Sync_Mode {On_Vector}
lappend params_list CONFIG.S_DATA_Has_FIFO {false}
lappend params_list CONFIG.S_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.SamplePeriod {1}
lappend params_list CONFIG.Sample_Frequency {0.001}
lappend params_list CONFIG.Select_Pattern {All}
lappend params_list CONFIG.Stopband_Max {1.00000000}
lappend params_list CONFIG.Stopband_Min {0.50000000}
lappend params_list CONFIG.Zero_Pack_Factor {1}

set_property -dict $params_list [get_ips sin_wave_demodulate_fir_compiler_v7_2_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist sin_wave_demodulate_mult_gen_v12_0_i0] < 0} {
create_ip -name mult_gen -version 12.0 -vendor xilinx.com -library ip -module_name sin_wave_demodulate_mult_gen_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {sin_wave_demodulate_mult_gen_v12_0_i0}
lappend params_list CONFIG.clockenable {true}
lappend params_list CONFIG.multiplier_construction {Use_Mults}
lappend params_list CONFIG.optgoal {Speed}
lappend params_list CONFIG.outputwidthhigh {16}
lappend params_list CONFIG.pipestages {3}
lappend params_list CONFIG.portatype {Unsigned}
lappend params_list CONFIG.portawidth {1}
lappend params_list CONFIG.portbtype {Signed}
lappend params_list CONFIG.portbwidth {16}
lappend params_list CONFIG.sclrcepriority {CE_Overrides_SCLR}
lappend params_list CONFIG.syncclear {true}
lappend params_list CONFIG.use_custom_output_width {true}

set_property -dict $params_list [get_ips sin_wave_demodulate_mult_gen_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist sin_wave_demodulate_fifo_generator_i0] < 0} {
create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name sin_wave_demodulate_fifo_generator_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {sin_wave_demodulate_fifo_generator_i0}
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

set_property -dict $params_list [get_ips sin_wave_demodulate_fifo_generator_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist sin_wave_demodulate_fifo_generator_i1] < 0} {
create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name sin_wave_demodulate_fifo_generator_i1
set params_list [list]
lappend params_list CONFIG.Component_Name {sin_wave_demodulate_fifo_generator_i1}
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

set_property -dict $params_list [get_ips sin_wave_demodulate_fifo_generator_i1]
}


validate_ip [get_ips]
