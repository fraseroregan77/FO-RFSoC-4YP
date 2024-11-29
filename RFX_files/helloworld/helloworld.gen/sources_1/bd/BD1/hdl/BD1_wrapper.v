//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1.2 (lin64) Build 5164865 Thu Sep  5 14:36:28 MDT 2024
//Date        : Fri Nov 29 14:05:07 2024
//Host        : zbook14ds running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target BD1_wrapper.bd
//Design      : BD1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BD1_wrapper
   (adc0_clk_clk_n,
    adc0_clk_clk_p,
    dac0_clk_clk_n,
    dac0_clk_clk_p,
    sysref_in_diff_n,
    sysref_in_diff_p,
    vin0_01_v_n,
    vin0_01_v_p,
    vout00_v_n,
    vout00_v_p);
  input adc0_clk_clk_n;
  input adc0_clk_clk_p;
  input dac0_clk_clk_n;
  input dac0_clk_clk_p;
  input sysref_in_diff_n;
  input sysref_in_diff_p;
  input vin0_01_v_n;
  input vin0_01_v_p;
  output vout00_v_n;
  output vout00_v_p;

  wire adc0_clk_clk_n;
  wire adc0_clk_clk_p;
  wire dac0_clk_clk_n;
  wire dac0_clk_clk_p;
  wire sysref_in_diff_n;
  wire sysref_in_diff_p;
  wire vin0_01_v_n;
  wire vin0_01_v_p;
  wire vout00_v_n;
  wire vout00_v_p;

  BD1 BD1_i
       (.adc0_clk_clk_n(adc0_clk_clk_n),
        .adc0_clk_clk_p(adc0_clk_clk_p),
        .dac0_clk_clk_n(dac0_clk_clk_n),
        .dac0_clk_clk_p(dac0_clk_clk_p),
        .sysref_in_diff_n(sysref_in_diff_n),
        .sysref_in_diff_p(sysref_in_diff_p),
        .vin0_01_v_n(vin0_01_v_n),
        .vin0_01_v_p(vin0_01_v_p),
        .vout00_v_n(vout00_v_n),
        .vout00_v_p(vout00_v_p));
endmodule
