// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Feb 25 12:21:43 2025
// Host        : EEE-R446-25 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top work_pls_Receiver_0_0 -prefix
//               work_pls_Receiver_0_0_ Receiver_block_design_Receiver_0_1_stub.v
// Design      : Receiver_block_design_Receiver_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "sin_wave_demodulate,Vivado 2024.1" *)
module work_pls_Receiver_0_0(m_axis_tready, s_axis_tdata, s_axis_tlast, 
  s_axis_tvalid, gateway_in, clk, m_axis_tdata, m_axis_tlast, m_axis_tvalid, s_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="m_axis_tready[0:0],s_axis_tdata[31:0],s_axis_tlast[0:0],s_axis_tvalid[0:0],gateway_in[15:0],m_axis_tdata[31:0],m_axis_tlast[0:0],m_axis_tvalid[0:0],s_axis_tready[0:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input [0:0]m_axis_tready;
  input [31:0]s_axis_tdata;
  input [0:0]s_axis_tlast;
  input [0:0]s_axis_tvalid;
  input [15:0]gateway_in;
  input clk /* synthesis syn_isclock = 1 */;
  output [31:0]m_axis_tdata;
  output [0:0]m_axis_tlast;
  output [0:0]m_axis_tvalid;
  output [0:0]s_axis_tready;
endmodule
