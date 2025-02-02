-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Feb  2 20:40:01 2025
-- Host        : EEE-R448-01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/clb20123/Documents/FO-RFSoC-4YP/2x2_files/vivado_project/vivado_project.gen/sources_1/bd/helloworld/ip/helloworld_Receiver_0_2/helloworld_Receiver_0_2_stub.vhdl
-- Design      : helloworld_Receiver_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity helloworld_Receiver_0_2 is
  Port ( 
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    gateway_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end helloworld_Receiver_0_2;

architecture stub of helloworld_Receiver_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "m_axis_tready[0:0],s_axis_tdata[0:0],s_axis_tlast[0:0],s_axis_tvalid[0:0],gateway_in[15:0],clk,m_axis_tdata[31:0],m_axis_tlast[0:0],m_axis_tvalid[0:0],s_axis_tready[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "sin_wave_demodulate,Vivado 2024.1";
begin
end;
