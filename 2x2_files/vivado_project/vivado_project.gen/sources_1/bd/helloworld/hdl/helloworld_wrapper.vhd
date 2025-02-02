--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Sun Feb  2 20:31:21 2025
--Host        : EEE-R448-01 running 64-bit major release  (build 9200)
--Command     : generate_target helloworld_wrapper.bd
--Design      : helloworld_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity helloworld_wrapper is
  port (
    adc0_clk_clk_n : in STD_LOGIC;
    adc0_clk_clk_p : in STD_LOGIC;
    dac0_clk_clk_n : in STD_LOGIC;
    dac0_clk_clk_p : in STD_LOGIC;
    sysref_in_diff_n : in STD_LOGIC;
    sysref_in_diff_p : in STD_LOGIC;
    vin0_01_v_n : in STD_LOGIC;
    vin0_01_v_p : in STD_LOGIC;
    vout00_v_n : out STD_LOGIC;
    vout00_v_p : out STD_LOGIC
  );
end helloworld_wrapper;

architecture STRUCTURE of helloworld_wrapper is
  component helloworld is
  port (
    sysref_in_diff_n : in STD_LOGIC;
    sysref_in_diff_p : in STD_LOGIC;
    adc0_clk_clk_n : in STD_LOGIC;
    adc0_clk_clk_p : in STD_LOGIC;
    vin0_01_v_n : in STD_LOGIC;
    vin0_01_v_p : in STD_LOGIC;
    dac0_clk_clk_n : in STD_LOGIC;
    dac0_clk_clk_p : in STD_LOGIC;
    vout00_v_n : out STD_LOGIC;
    vout00_v_p : out STD_LOGIC
  );
  end component helloworld;
begin
helloworld_i: component helloworld
     port map (
      adc0_clk_clk_n => adc0_clk_clk_n,
      adc0_clk_clk_p => adc0_clk_clk_p,
      dac0_clk_clk_n => dac0_clk_clk_n,
      dac0_clk_clk_p => dac0_clk_clk_p,
      sysref_in_diff_n => sysref_in_diff_n,
      sysref_in_diff_p => sysref_in_diff_p,
      vin0_01_v_n => vin0_01_v_n,
      vin0_01_v_p => vin0_01_v_p,
      vout00_v_n => vout00_v_n,
      vout00_v_p => vout00_v_p
    );
end STRUCTURE;
