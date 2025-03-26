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
if {[lsearch $existingipslist x16_bit_demod_fir_compiler_v7_2_i0] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name x16_bit_demod_fir_compiler_v7_2_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {x16_bit_demod_fir_compiler_v7_2_i0}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:0CD7A3703D0A3FBC1C37422071B3BC3E09E73EB649BC283CE0622C09FA88BE3E6838402B720E00BC4FFA174B8699C03E16CDEF6A026755BCDB727D1CF964C23E464336329A5D61BC86E5FD5328B4C43EBAC8E9E284C40CBCD0515AE8BB95C73E12F1F6BF174A663CAF9B7858DE19CB3E4F7374DCDD21723C238A7CC77152CF3EF39FB19EA54363BC4DF8DA24A729D23E23B655740F0F83BC03C4279D4519D53EA75B2A8F864C8B3C06642CEF6A84D83EEBE69586521288BC20A8A011EC78DC3E6F96EB5CC8FE6B3C35814CBD2C83E03E68449F58E9CF6A3C27AA2322241FE33E910D0DC31491783C18122304551AE63E6E79ADEEC61944BC638BD7731B80E93EF4C7830B027E74BC30C5DD13775DED3ECF7BBA99529B5FBC9D66E4C1ACE0F03E73572F0E942C52BCD670BB45835EF33EDE48F142CFDE613CD70CF6604532F63E682E6EFEC0904B3CD27F2771A767F93E785A1B95A64973BCBED98DFF670CFD3E7A564C72DE7F573C21FB64DF6198003F8902434488DE773CDBC4636204F4023F97EA3D7708B5683CABFC767EA9A4053FB4CDF9320B69443C839403C63FB8083FB6CFDDBE8F1675BCCA52231EB53F0C3F84728BDF3704103C5F2DFBF4E327103F3B0BA31B3B3B6A3CF30880EE0E81123F1D56AD73B7EC54BC5A8BD7225E3B153F47C19931895542BCFB29FE63056B183F419E050C42DB61BC32DF8FF8CE291C3F1105E9438C6B66BC811644DF894C203F068434959F66603CF35F6EB347F2223F371EBBFC30AB753CE47F55EE4223263FB7AB9E875F6047BC2ECE69F7FC062A3F33A7A9201EB26CBC2C114DE81CD42E3FE6889915A4B872BC30A8C11AFE6B323F34C3625EAAEB18BCDFB57D037E41363FD66CA4C2B04F803C59C8BDD5B83E3B3F0DE7CF68E9636ABC9BD9E10930F3403FEC3101EE3DA473BC5CDB7DBC2A86453F15802DD3D5D2633C2AED6CD8550D4C3F18D79A9392F261BC3A30BF528CE9523F0B8BBC0FD04F743CD39401B2E5B35A3FE200CD49FD7B673C39900B120C20643FC655515000B070BCE5E8E9FA10C1703F7F7645565A0A833C7D64C272FB81803F55B93F50CC558DBC28C445DD8002973F85686E73E010793CE2D709DFB2EEC93F000000000000E03FF4D709DFB2EEC93FFABF42D00F6E6FBC1FC445DD8002973FB693069D8E9A8C3C5564C272FB81803F053B94BE602D83BC56E9E9FA10C1703FDAB67A8456246C3CCF900B120C20643F8FA4235E8F2668BCC89201B2E5B35A3FDFCBED326E9771BCE22FBF528CE9523FB65A14329A4F5A3C01EE6CD8550D4C3F2562EB0286D27FBC58DB7DBC2A86453F218FAE52E2B4763CAFDAE10930F3403F652E3452668A5D3CB3C6BDD5B83E3B3F73E59239CF4D81BC7AB47D037E41363F1DD029E6D8584FBC0AA8C11AFE6B323F736F7E13CC41703CCC104DE81CD42E3FCB6A06675F07703C1ED469F7FC062A3F6DBEF44A4AFB2B3CCE8355EE4223263FAE50FF01F80860BCDF596EB347F2223F24CBB04A0C4563BC811244DF894C203FF8219419F0CD5E3C9DE48FF8CE291C3F50E9CFA4E36B533C4B30FE63056B183F2650E9AC5D0B4D3C828FD7225E3B153FDB64916B8515593C190680EE0E81123FF3F29FE4443266BC7A2AFBF4E327103FCB6D521391DE423C1161231EB53F0C3F3E4CBE091679763C899303C63FB8083F053ED3F11CB70B3C84F6767EA9A4053F68566061825A63BC0DC3636204F4023F0F84562063A276BCD0E864DF6198003FC95FA25E7182F53B6DD48DFF670CFD3EFD6249351537733C0D8A2771A767F93E8D3D0DD662A952BC6B09F6604532F63E93E072B8586860BC1B80BB45835EF33E02D248A2CF84603C9165E4C1ACE0F03ECDD9A32DD1CB643C9B03DE13775DED3E0627BF00FD4D733C16E8D7731B80E93ED084413B8DF6473C58A42204551AE63EF781C4AE9EA07ABC3BFA2222241FE33E67C56DB90AF26ABC8C754CBD2C83E03E69716E8C00676ABC2594A111EC78DC3E83F6B4E5B628883CD29D2CEF6A84D83EC58F7FF79FCA8BBC212B289D4519D53EDCDC21286E57833C5777DB24A729D23EBDA5EDB60B5E623C7E947BC77152CF3EA4E269D249E971BC3AD27758DE19CB3E3E900B40644863BCE3F859E8BB95C73E85112B6BFC53213CC7F8FD5328B4C43E9B6447560130613C88007E1CF964C23EDA2C9DE5C0FE543C4342184B8699C03EC4AB3043777546BC4B1F2C09FA88BE3E86C927C67C162BBCE4F2412071B3BC3E7849B2BC4BB4403C}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {0}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {1}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {101}
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
lappend params_list CONFIG.Data_Width {24}
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
lappend params_list CONFIG.Output_Width {39}
lappend params_list CONFIG.Passband_Max {0.50000000}
lappend params_list CONFIG.Passband_Min {0.00000000}
lappend params_list CONFIG.Pattern_List {P4-0,P4-1,P4-2,P4-3,P4-4}
lappend params_list CONFIG.Pre_Adder_Pipeline {false}
lappend params_list CONFIG.Preference_For_Other_Storage {Automatic}
lappend params_list CONFIG.Quantization {Normalize_to_Centre_Coefficient}
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

set_property -dict $params_list [get_ips x16_bit_demod_fir_compiler_v7_2_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist x16_bit_demod_mult_gen_v12_0_i0] < 0} {
create_ip -name mult_gen -version 12.0 -vendor xilinx.com -library ip -module_name x16_bit_demod_mult_gen_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {x16_bit_demod_mult_gen_v12_0_i0}
lappend params_list CONFIG.clockenable {true}
lappend params_list CONFIG.multiplier_construction {Use_Mults}
lappend params_list CONFIG.optgoal {Speed}
lappend params_list CONFIG.outputwidthhigh {23}
lappend params_list CONFIG.pipestages {3}
lappend params_list CONFIG.portatype {Unsigned}
lappend params_list CONFIG.portawidth {16}
lappend params_list CONFIG.portbtype {Signed}
lappend params_list CONFIG.portbwidth {8}
lappend params_list CONFIG.sclrcepriority {CE_Overrides_SCLR}
lappend params_list CONFIG.syncclear {true}
lappend params_list CONFIG.use_custom_output_width {true}

set_property -dict $params_list [get_ips x16_bit_demod_mult_gen_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist x16_bit_demod_fifo_generator_i0] < 0} {
create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name x16_bit_demod_fifo_generator_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {x16_bit_demod_fifo_generator_i0}
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

set_property -dict $params_list [get_ips x16_bit_demod_fifo_generator_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist x16_bit_demod_fifo_generator_i1] < 0} {
create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name x16_bit_demod_fifo_generator_i1
set params_list [list]
lappend params_list CONFIG.Component_Name {x16_bit_demod_fifo_generator_i1}
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
lappend params_list CONFIG.input_data_width {17}
lappend params_list CONFIG.input_depth {1024}
lappend params_list CONFIG.output_data_width {17}
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

set_property -dict $params_list [get_ips x16_bit_demod_fifo_generator_i1]
}


validate_ip [get_ips]
