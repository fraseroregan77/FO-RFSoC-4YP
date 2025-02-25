// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Feb 25 12:36:26 2025
// Host        : EEE-R446-25 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/clb20123/Documents/FO-RFSoC-4YP/2x2_files/PYNQ_Receiver/PYNQ_Receiver.gen/sources_1/bd/work_pls/ip/work_pls_axis_subset_converter_0/work_pls_axis_subset_converter_0_sim_netlist.v
// Design      : work_pls_axis_subset_converter_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "work_pls_axis_subset_converter_0,top_work_pls_axis_subset_converter_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "top_work_pls_axis_subset_converter_0,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module work_pls_axis_subset_converter_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN work_pls_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN work_pls_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [255:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN work_pls_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

  wire \<const0> ;
  wire [31:0]\^m_axis_tdata ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire NLW_inst_sparse_tkeep_removed_UNCONNECTED;
  wire NLW_inst_transfer_dropped_UNCONNECTED;
  wire [255:32]NLW_inst_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [31:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [31:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  assign m_axis_tdata[255] = \<const0> ;
  assign m_axis_tdata[254] = \<const0> ;
  assign m_axis_tdata[253] = \<const0> ;
  assign m_axis_tdata[252] = \<const0> ;
  assign m_axis_tdata[251] = \<const0> ;
  assign m_axis_tdata[250] = \<const0> ;
  assign m_axis_tdata[249] = \<const0> ;
  assign m_axis_tdata[248] = \<const0> ;
  assign m_axis_tdata[247] = \<const0> ;
  assign m_axis_tdata[246] = \<const0> ;
  assign m_axis_tdata[245] = \<const0> ;
  assign m_axis_tdata[244] = \<const0> ;
  assign m_axis_tdata[243] = \<const0> ;
  assign m_axis_tdata[242] = \<const0> ;
  assign m_axis_tdata[241] = \<const0> ;
  assign m_axis_tdata[240] = \<const0> ;
  assign m_axis_tdata[239] = \<const0> ;
  assign m_axis_tdata[238] = \<const0> ;
  assign m_axis_tdata[237] = \<const0> ;
  assign m_axis_tdata[236] = \<const0> ;
  assign m_axis_tdata[235] = \<const0> ;
  assign m_axis_tdata[234] = \<const0> ;
  assign m_axis_tdata[233] = \<const0> ;
  assign m_axis_tdata[232] = \<const0> ;
  assign m_axis_tdata[231] = \<const0> ;
  assign m_axis_tdata[230] = \<const0> ;
  assign m_axis_tdata[229] = \<const0> ;
  assign m_axis_tdata[228] = \<const0> ;
  assign m_axis_tdata[227] = \<const0> ;
  assign m_axis_tdata[226] = \<const0> ;
  assign m_axis_tdata[225] = \<const0> ;
  assign m_axis_tdata[224] = \<const0> ;
  assign m_axis_tdata[223] = \<const0> ;
  assign m_axis_tdata[222] = \<const0> ;
  assign m_axis_tdata[221] = \<const0> ;
  assign m_axis_tdata[220] = \<const0> ;
  assign m_axis_tdata[219] = \<const0> ;
  assign m_axis_tdata[218] = \<const0> ;
  assign m_axis_tdata[217] = \<const0> ;
  assign m_axis_tdata[216] = \<const0> ;
  assign m_axis_tdata[215] = \<const0> ;
  assign m_axis_tdata[214] = \<const0> ;
  assign m_axis_tdata[213] = \<const0> ;
  assign m_axis_tdata[212] = \<const0> ;
  assign m_axis_tdata[211] = \<const0> ;
  assign m_axis_tdata[210] = \<const0> ;
  assign m_axis_tdata[209] = \<const0> ;
  assign m_axis_tdata[208] = \<const0> ;
  assign m_axis_tdata[207] = \<const0> ;
  assign m_axis_tdata[206] = \<const0> ;
  assign m_axis_tdata[205] = \<const0> ;
  assign m_axis_tdata[204] = \<const0> ;
  assign m_axis_tdata[203] = \<const0> ;
  assign m_axis_tdata[202] = \<const0> ;
  assign m_axis_tdata[201] = \<const0> ;
  assign m_axis_tdata[200] = \<const0> ;
  assign m_axis_tdata[199] = \<const0> ;
  assign m_axis_tdata[198] = \<const0> ;
  assign m_axis_tdata[197] = \<const0> ;
  assign m_axis_tdata[196] = \<const0> ;
  assign m_axis_tdata[195] = \<const0> ;
  assign m_axis_tdata[194] = \<const0> ;
  assign m_axis_tdata[193] = \<const0> ;
  assign m_axis_tdata[192] = \<const0> ;
  assign m_axis_tdata[191] = \<const0> ;
  assign m_axis_tdata[190] = \<const0> ;
  assign m_axis_tdata[189] = \<const0> ;
  assign m_axis_tdata[188] = \<const0> ;
  assign m_axis_tdata[187] = \<const0> ;
  assign m_axis_tdata[186] = \<const0> ;
  assign m_axis_tdata[185] = \<const0> ;
  assign m_axis_tdata[184] = \<const0> ;
  assign m_axis_tdata[183] = \<const0> ;
  assign m_axis_tdata[182] = \<const0> ;
  assign m_axis_tdata[181] = \<const0> ;
  assign m_axis_tdata[180] = \<const0> ;
  assign m_axis_tdata[179] = \<const0> ;
  assign m_axis_tdata[178] = \<const0> ;
  assign m_axis_tdata[177] = \<const0> ;
  assign m_axis_tdata[176] = \<const0> ;
  assign m_axis_tdata[175] = \<const0> ;
  assign m_axis_tdata[174] = \<const0> ;
  assign m_axis_tdata[173] = \<const0> ;
  assign m_axis_tdata[172] = \<const0> ;
  assign m_axis_tdata[171] = \<const0> ;
  assign m_axis_tdata[170] = \<const0> ;
  assign m_axis_tdata[169] = \<const0> ;
  assign m_axis_tdata[168] = \<const0> ;
  assign m_axis_tdata[167] = \<const0> ;
  assign m_axis_tdata[166] = \<const0> ;
  assign m_axis_tdata[165] = \<const0> ;
  assign m_axis_tdata[164] = \<const0> ;
  assign m_axis_tdata[163] = \<const0> ;
  assign m_axis_tdata[162] = \<const0> ;
  assign m_axis_tdata[161] = \<const0> ;
  assign m_axis_tdata[160] = \<const0> ;
  assign m_axis_tdata[159] = \<const0> ;
  assign m_axis_tdata[158] = \<const0> ;
  assign m_axis_tdata[157] = \<const0> ;
  assign m_axis_tdata[156] = \<const0> ;
  assign m_axis_tdata[155] = \<const0> ;
  assign m_axis_tdata[154] = \<const0> ;
  assign m_axis_tdata[153] = \<const0> ;
  assign m_axis_tdata[152] = \<const0> ;
  assign m_axis_tdata[151] = \<const0> ;
  assign m_axis_tdata[150] = \<const0> ;
  assign m_axis_tdata[149] = \<const0> ;
  assign m_axis_tdata[148] = \<const0> ;
  assign m_axis_tdata[147] = \<const0> ;
  assign m_axis_tdata[146] = \<const0> ;
  assign m_axis_tdata[145] = \<const0> ;
  assign m_axis_tdata[144] = \<const0> ;
  assign m_axis_tdata[143] = \<const0> ;
  assign m_axis_tdata[142] = \<const0> ;
  assign m_axis_tdata[141] = \<const0> ;
  assign m_axis_tdata[140] = \<const0> ;
  assign m_axis_tdata[139] = \<const0> ;
  assign m_axis_tdata[138] = \<const0> ;
  assign m_axis_tdata[137] = \<const0> ;
  assign m_axis_tdata[136] = \<const0> ;
  assign m_axis_tdata[135] = \<const0> ;
  assign m_axis_tdata[134] = \<const0> ;
  assign m_axis_tdata[133] = \<const0> ;
  assign m_axis_tdata[132] = \<const0> ;
  assign m_axis_tdata[131] = \<const0> ;
  assign m_axis_tdata[130] = \<const0> ;
  assign m_axis_tdata[129] = \<const0> ;
  assign m_axis_tdata[128] = \<const0> ;
  assign m_axis_tdata[127] = \<const0> ;
  assign m_axis_tdata[126] = \<const0> ;
  assign m_axis_tdata[125] = \<const0> ;
  assign m_axis_tdata[124] = \<const0> ;
  assign m_axis_tdata[123] = \<const0> ;
  assign m_axis_tdata[122] = \<const0> ;
  assign m_axis_tdata[121] = \<const0> ;
  assign m_axis_tdata[120] = \<const0> ;
  assign m_axis_tdata[119] = \<const0> ;
  assign m_axis_tdata[118] = \<const0> ;
  assign m_axis_tdata[117] = \<const0> ;
  assign m_axis_tdata[116] = \<const0> ;
  assign m_axis_tdata[115] = \<const0> ;
  assign m_axis_tdata[114] = \<const0> ;
  assign m_axis_tdata[113] = \<const0> ;
  assign m_axis_tdata[112] = \<const0> ;
  assign m_axis_tdata[111] = \<const0> ;
  assign m_axis_tdata[110] = \<const0> ;
  assign m_axis_tdata[109] = \<const0> ;
  assign m_axis_tdata[108] = \<const0> ;
  assign m_axis_tdata[107] = \<const0> ;
  assign m_axis_tdata[106] = \<const0> ;
  assign m_axis_tdata[105] = \<const0> ;
  assign m_axis_tdata[104] = \<const0> ;
  assign m_axis_tdata[103] = \<const0> ;
  assign m_axis_tdata[102] = \<const0> ;
  assign m_axis_tdata[101] = \<const0> ;
  assign m_axis_tdata[100] = \<const0> ;
  assign m_axis_tdata[99] = \<const0> ;
  assign m_axis_tdata[98] = \<const0> ;
  assign m_axis_tdata[97] = \<const0> ;
  assign m_axis_tdata[96] = \<const0> ;
  assign m_axis_tdata[95] = \<const0> ;
  assign m_axis_tdata[94] = \<const0> ;
  assign m_axis_tdata[93] = \<const0> ;
  assign m_axis_tdata[92] = \<const0> ;
  assign m_axis_tdata[91] = \<const0> ;
  assign m_axis_tdata[90] = \<const0> ;
  assign m_axis_tdata[89] = \<const0> ;
  assign m_axis_tdata[88] = \<const0> ;
  assign m_axis_tdata[87] = \<const0> ;
  assign m_axis_tdata[86] = \<const0> ;
  assign m_axis_tdata[85] = \<const0> ;
  assign m_axis_tdata[84] = \<const0> ;
  assign m_axis_tdata[83] = \<const0> ;
  assign m_axis_tdata[82] = \<const0> ;
  assign m_axis_tdata[81] = \<const0> ;
  assign m_axis_tdata[80] = \<const0> ;
  assign m_axis_tdata[79] = \<const0> ;
  assign m_axis_tdata[78] = \<const0> ;
  assign m_axis_tdata[77] = \<const0> ;
  assign m_axis_tdata[76] = \<const0> ;
  assign m_axis_tdata[75] = \<const0> ;
  assign m_axis_tdata[74] = \<const0> ;
  assign m_axis_tdata[73] = \<const0> ;
  assign m_axis_tdata[72] = \<const0> ;
  assign m_axis_tdata[71] = \<const0> ;
  assign m_axis_tdata[70] = \<const0> ;
  assign m_axis_tdata[69] = \<const0> ;
  assign m_axis_tdata[68] = \<const0> ;
  assign m_axis_tdata[67] = \<const0> ;
  assign m_axis_tdata[66] = \<const0> ;
  assign m_axis_tdata[65] = \<const0> ;
  assign m_axis_tdata[64] = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31:0] = \^m_axis_tdata [31:0];
  GND GND
       (.G(\<const0> ));
  (* C_DEFAULT_TLAST = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_M_AXIS_SIGNAL_SET = "19" *) 
  (* C_M_AXIS_TDATA_WIDTH = "256" *) 
  (* C_M_AXIS_TDEST_WIDTH = "1" *) 
  (* C_M_AXIS_TID_WIDTH = "1" *) 
  (* C_M_AXIS_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_SIGNAL_SET = "19" *) 
  (* C_S_AXIS_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_TDEST_WIDTH = "1" *) 
  (* C_S_AXIS_TID_WIDTH = "1" *) 
  (* C_S_AXIS_TUSER_WIDTH = "1" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  work_pls_axis_subset_converter_0_top_work_pls_axis_subset_converter_0 inst
       (.aclk(1'b0),
        .aclken(1'b1),
        .aresetn(1'b0),
        .m_axis_tdata({NLW_inst_m_axis_tdata_UNCONNECTED[255:32],\^m_axis_tdata }),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[31:0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[31:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sparse_tkeep_removed(NLW_inst_sparse_tkeep_removed_UNCONNECTED),
        .transfer_dropped(NLW_inst_transfer_dropped_UNCONNECTED));
endmodule

(* C_DEFAULT_TLAST = "0" *) (* C_FAMILY = "zynquplus" *) (* C_M_AXIS_SIGNAL_SET = "19" *) 
(* C_M_AXIS_TDATA_WIDTH = "256" *) (* C_M_AXIS_TDEST_WIDTH = "1" *) (* C_M_AXIS_TID_WIDTH = "1" *) 
(* C_M_AXIS_TUSER_WIDTH = "1" *) (* C_S_AXIS_SIGNAL_SET = "19" *) (* C_S_AXIS_TDATA_WIDTH = "32" *) 
(* C_S_AXIS_TDEST_WIDTH = "1" *) (* C_S_AXIS_TID_WIDTH = "1" *) (* C_S_AXIS_TUSER_WIDTH = "1" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* ORIG_REF_NAME = "top_work_pls_axis_subset_converter_0" *) 
module work_pls_axis_subset_converter_0_top_work_pls_axis_subset_converter_0
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    transfer_dropped,
    sparse_tkeep_removed);
  input aclk;
  input aresetn;
  input aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [255:0]m_axis_tdata;
  output [31:0]m_axis_tstrb;
  output [31:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output transfer_dropped;
  output sparse_tkeep_removed;

  wire \<const0> ;
  wire m_axis_tready;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign m_axis_tdata[255] = \<const0> ;
  assign m_axis_tdata[254] = \<const0> ;
  assign m_axis_tdata[253] = \<const0> ;
  assign m_axis_tdata[252] = \<const0> ;
  assign m_axis_tdata[251] = \<const0> ;
  assign m_axis_tdata[250] = \<const0> ;
  assign m_axis_tdata[249] = \<const0> ;
  assign m_axis_tdata[248] = \<const0> ;
  assign m_axis_tdata[247] = \<const0> ;
  assign m_axis_tdata[246] = \<const0> ;
  assign m_axis_tdata[245] = \<const0> ;
  assign m_axis_tdata[244] = \<const0> ;
  assign m_axis_tdata[243] = \<const0> ;
  assign m_axis_tdata[242] = \<const0> ;
  assign m_axis_tdata[241] = \<const0> ;
  assign m_axis_tdata[240] = \<const0> ;
  assign m_axis_tdata[239] = \<const0> ;
  assign m_axis_tdata[238] = \<const0> ;
  assign m_axis_tdata[237] = \<const0> ;
  assign m_axis_tdata[236] = \<const0> ;
  assign m_axis_tdata[235] = \<const0> ;
  assign m_axis_tdata[234] = \<const0> ;
  assign m_axis_tdata[233] = \<const0> ;
  assign m_axis_tdata[232] = \<const0> ;
  assign m_axis_tdata[231] = \<const0> ;
  assign m_axis_tdata[230] = \<const0> ;
  assign m_axis_tdata[229] = \<const0> ;
  assign m_axis_tdata[228] = \<const0> ;
  assign m_axis_tdata[227] = \<const0> ;
  assign m_axis_tdata[226] = \<const0> ;
  assign m_axis_tdata[225] = \<const0> ;
  assign m_axis_tdata[224] = \<const0> ;
  assign m_axis_tdata[223] = \<const0> ;
  assign m_axis_tdata[222] = \<const0> ;
  assign m_axis_tdata[221] = \<const0> ;
  assign m_axis_tdata[220] = \<const0> ;
  assign m_axis_tdata[219] = \<const0> ;
  assign m_axis_tdata[218] = \<const0> ;
  assign m_axis_tdata[217] = \<const0> ;
  assign m_axis_tdata[216] = \<const0> ;
  assign m_axis_tdata[215] = \<const0> ;
  assign m_axis_tdata[214] = \<const0> ;
  assign m_axis_tdata[213] = \<const0> ;
  assign m_axis_tdata[212] = \<const0> ;
  assign m_axis_tdata[211] = \<const0> ;
  assign m_axis_tdata[210] = \<const0> ;
  assign m_axis_tdata[209] = \<const0> ;
  assign m_axis_tdata[208] = \<const0> ;
  assign m_axis_tdata[207] = \<const0> ;
  assign m_axis_tdata[206] = \<const0> ;
  assign m_axis_tdata[205] = \<const0> ;
  assign m_axis_tdata[204] = \<const0> ;
  assign m_axis_tdata[203] = \<const0> ;
  assign m_axis_tdata[202] = \<const0> ;
  assign m_axis_tdata[201] = \<const0> ;
  assign m_axis_tdata[200] = \<const0> ;
  assign m_axis_tdata[199] = \<const0> ;
  assign m_axis_tdata[198] = \<const0> ;
  assign m_axis_tdata[197] = \<const0> ;
  assign m_axis_tdata[196] = \<const0> ;
  assign m_axis_tdata[195] = \<const0> ;
  assign m_axis_tdata[194] = \<const0> ;
  assign m_axis_tdata[193] = \<const0> ;
  assign m_axis_tdata[192] = \<const0> ;
  assign m_axis_tdata[191] = \<const0> ;
  assign m_axis_tdata[190] = \<const0> ;
  assign m_axis_tdata[189] = \<const0> ;
  assign m_axis_tdata[188] = \<const0> ;
  assign m_axis_tdata[187] = \<const0> ;
  assign m_axis_tdata[186] = \<const0> ;
  assign m_axis_tdata[185] = \<const0> ;
  assign m_axis_tdata[184] = \<const0> ;
  assign m_axis_tdata[183] = \<const0> ;
  assign m_axis_tdata[182] = \<const0> ;
  assign m_axis_tdata[181] = \<const0> ;
  assign m_axis_tdata[180] = \<const0> ;
  assign m_axis_tdata[179] = \<const0> ;
  assign m_axis_tdata[178] = \<const0> ;
  assign m_axis_tdata[177] = \<const0> ;
  assign m_axis_tdata[176] = \<const0> ;
  assign m_axis_tdata[175] = \<const0> ;
  assign m_axis_tdata[174] = \<const0> ;
  assign m_axis_tdata[173] = \<const0> ;
  assign m_axis_tdata[172] = \<const0> ;
  assign m_axis_tdata[171] = \<const0> ;
  assign m_axis_tdata[170] = \<const0> ;
  assign m_axis_tdata[169] = \<const0> ;
  assign m_axis_tdata[168] = \<const0> ;
  assign m_axis_tdata[167] = \<const0> ;
  assign m_axis_tdata[166] = \<const0> ;
  assign m_axis_tdata[165] = \<const0> ;
  assign m_axis_tdata[164] = \<const0> ;
  assign m_axis_tdata[163] = \<const0> ;
  assign m_axis_tdata[162] = \<const0> ;
  assign m_axis_tdata[161] = \<const0> ;
  assign m_axis_tdata[160] = \<const0> ;
  assign m_axis_tdata[159] = \<const0> ;
  assign m_axis_tdata[158] = \<const0> ;
  assign m_axis_tdata[157] = \<const0> ;
  assign m_axis_tdata[156] = \<const0> ;
  assign m_axis_tdata[155] = \<const0> ;
  assign m_axis_tdata[154] = \<const0> ;
  assign m_axis_tdata[153] = \<const0> ;
  assign m_axis_tdata[152] = \<const0> ;
  assign m_axis_tdata[151] = \<const0> ;
  assign m_axis_tdata[150] = \<const0> ;
  assign m_axis_tdata[149] = \<const0> ;
  assign m_axis_tdata[148] = \<const0> ;
  assign m_axis_tdata[147] = \<const0> ;
  assign m_axis_tdata[146] = \<const0> ;
  assign m_axis_tdata[145] = \<const0> ;
  assign m_axis_tdata[144] = \<const0> ;
  assign m_axis_tdata[143] = \<const0> ;
  assign m_axis_tdata[142] = \<const0> ;
  assign m_axis_tdata[141] = \<const0> ;
  assign m_axis_tdata[140] = \<const0> ;
  assign m_axis_tdata[139] = \<const0> ;
  assign m_axis_tdata[138] = \<const0> ;
  assign m_axis_tdata[137] = \<const0> ;
  assign m_axis_tdata[136] = \<const0> ;
  assign m_axis_tdata[135] = \<const0> ;
  assign m_axis_tdata[134] = \<const0> ;
  assign m_axis_tdata[133] = \<const0> ;
  assign m_axis_tdata[132] = \<const0> ;
  assign m_axis_tdata[131] = \<const0> ;
  assign m_axis_tdata[130] = \<const0> ;
  assign m_axis_tdata[129] = \<const0> ;
  assign m_axis_tdata[128] = \<const0> ;
  assign m_axis_tdata[127] = \<const0> ;
  assign m_axis_tdata[126] = \<const0> ;
  assign m_axis_tdata[125] = \<const0> ;
  assign m_axis_tdata[124] = \<const0> ;
  assign m_axis_tdata[123] = \<const0> ;
  assign m_axis_tdata[122] = \<const0> ;
  assign m_axis_tdata[121] = \<const0> ;
  assign m_axis_tdata[120] = \<const0> ;
  assign m_axis_tdata[119] = \<const0> ;
  assign m_axis_tdata[118] = \<const0> ;
  assign m_axis_tdata[117] = \<const0> ;
  assign m_axis_tdata[116] = \<const0> ;
  assign m_axis_tdata[115] = \<const0> ;
  assign m_axis_tdata[114] = \<const0> ;
  assign m_axis_tdata[113] = \<const0> ;
  assign m_axis_tdata[112] = \<const0> ;
  assign m_axis_tdata[111] = \<const0> ;
  assign m_axis_tdata[110] = \<const0> ;
  assign m_axis_tdata[109] = \<const0> ;
  assign m_axis_tdata[108] = \<const0> ;
  assign m_axis_tdata[107] = \<const0> ;
  assign m_axis_tdata[106] = \<const0> ;
  assign m_axis_tdata[105] = \<const0> ;
  assign m_axis_tdata[104] = \<const0> ;
  assign m_axis_tdata[103] = \<const0> ;
  assign m_axis_tdata[102] = \<const0> ;
  assign m_axis_tdata[101] = \<const0> ;
  assign m_axis_tdata[100] = \<const0> ;
  assign m_axis_tdata[99] = \<const0> ;
  assign m_axis_tdata[98] = \<const0> ;
  assign m_axis_tdata[97] = \<const0> ;
  assign m_axis_tdata[96] = \<const0> ;
  assign m_axis_tdata[95] = \<const0> ;
  assign m_axis_tdata[94] = \<const0> ;
  assign m_axis_tdata[93] = \<const0> ;
  assign m_axis_tdata[92] = \<const0> ;
  assign m_axis_tdata[91] = \<const0> ;
  assign m_axis_tdata[90] = \<const0> ;
  assign m_axis_tdata[89] = \<const0> ;
  assign m_axis_tdata[88] = \<const0> ;
  assign m_axis_tdata[87] = \<const0> ;
  assign m_axis_tdata[86] = \<const0> ;
  assign m_axis_tdata[85] = \<const0> ;
  assign m_axis_tdata[84] = \<const0> ;
  assign m_axis_tdata[83] = \<const0> ;
  assign m_axis_tdata[82] = \<const0> ;
  assign m_axis_tdata[81] = \<const0> ;
  assign m_axis_tdata[80] = \<const0> ;
  assign m_axis_tdata[79] = \<const0> ;
  assign m_axis_tdata[78] = \<const0> ;
  assign m_axis_tdata[77] = \<const0> ;
  assign m_axis_tdata[76] = \<const0> ;
  assign m_axis_tdata[75] = \<const0> ;
  assign m_axis_tdata[74] = \<const0> ;
  assign m_axis_tdata[73] = \<const0> ;
  assign m_axis_tdata[72] = \<const0> ;
  assign m_axis_tdata[71] = \<const0> ;
  assign m_axis_tdata[70] = \<const0> ;
  assign m_axis_tdata[69] = \<const0> ;
  assign m_axis_tdata[68] = \<const0> ;
  assign m_axis_tdata[67] = \<const0> ;
  assign m_axis_tdata[66] = \<const0> ;
  assign m_axis_tdata[65] = \<const0> ;
  assign m_axis_tdata[64] = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31:0] = s_axis_tdata;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[31] = \<const0> ;
  assign m_axis_tkeep[30] = \<const0> ;
  assign m_axis_tkeep[29] = \<const0> ;
  assign m_axis_tkeep[28] = \<const0> ;
  assign m_axis_tkeep[27] = \<const0> ;
  assign m_axis_tkeep[26] = \<const0> ;
  assign m_axis_tkeep[25] = \<const0> ;
  assign m_axis_tkeep[24] = \<const0> ;
  assign m_axis_tkeep[23] = \<const0> ;
  assign m_axis_tkeep[22] = \<const0> ;
  assign m_axis_tkeep[21] = \<const0> ;
  assign m_axis_tkeep[20] = \<const0> ;
  assign m_axis_tkeep[19] = \<const0> ;
  assign m_axis_tkeep[18] = \<const0> ;
  assign m_axis_tkeep[17] = \<const0> ;
  assign m_axis_tkeep[16] = \<const0> ;
  assign m_axis_tkeep[15] = \<const0> ;
  assign m_axis_tkeep[14] = \<const0> ;
  assign m_axis_tkeep[13] = \<const0> ;
  assign m_axis_tkeep[12] = \<const0> ;
  assign m_axis_tkeep[11] = \<const0> ;
  assign m_axis_tkeep[10] = \<const0> ;
  assign m_axis_tkeep[9] = \<const0> ;
  assign m_axis_tkeep[8] = \<const0> ;
  assign m_axis_tkeep[7] = \<const0> ;
  assign m_axis_tkeep[6] = \<const0> ;
  assign m_axis_tkeep[5] = \<const0> ;
  assign m_axis_tkeep[4] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = s_axis_tlast;
  assign m_axis_tstrb[31] = \<const0> ;
  assign m_axis_tstrb[30] = \<const0> ;
  assign m_axis_tstrb[29] = \<const0> ;
  assign m_axis_tstrb[28] = \<const0> ;
  assign m_axis_tstrb[27] = \<const0> ;
  assign m_axis_tstrb[26] = \<const0> ;
  assign m_axis_tstrb[25] = \<const0> ;
  assign m_axis_tstrb[24] = \<const0> ;
  assign m_axis_tstrb[23] = \<const0> ;
  assign m_axis_tstrb[22] = \<const0> ;
  assign m_axis_tstrb[21] = \<const0> ;
  assign m_axis_tstrb[20] = \<const0> ;
  assign m_axis_tstrb[19] = \<const0> ;
  assign m_axis_tstrb[18] = \<const0> ;
  assign m_axis_tstrb[17] = \<const0> ;
  assign m_axis_tstrb[16] = \<const0> ;
  assign m_axis_tstrb[15] = \<const0> ;
  assign m_axis_tstrb[14] = \<const0> ;
  assign m_axis_tstrb[13] = \<const0> ;
  assign m_axis_tstrb[12] = \<const0> ;
  assign m_axis_tstrb[11] = \<const0> ;
  assign m_axis_tstrb[10] = \<const0> ;
  assign m_axis_tstrb[9] = \<const0> ;
  assign m_axis_tstrb[8] = \<const0> ;
  assign m_axis_tstrb[7] = \<const0> ;
  assign m_axis_tstrb[6] = \<const0> ;
  assign m_axis_tstrb[5] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  assign sparse_tkeep_removed = \<const0> ;
  assign transfer_dropped = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
