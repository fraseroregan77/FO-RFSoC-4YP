--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Thu Feb 27 17:51:02 2025
--Host        : EEE-R446-29 running 64-bit major release  (build 9200)
--Command     : generate_target sin_wave_demodulate_2021b_bd.bd
--Design      : sin_wave_demodulate_2021b_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sin_wave_demodulate_2021b_bd is
  port (
    clk : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    step_size : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of sin_wave_demodulate_2021b_bd : entity is "sin_wave_demodulate_2021b_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=sin_wave_demodulate_2021b_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of sin_wave_demodulate_2021b_bd : entity is "sin_wave_demodulate_2021b_bd.hwdef";
end sin_wave_demodulate_2021b_bd;

architecture STRUCTURE of sin_wave_demodulate_2021b_bd is
  component sin_wave_demodulate_2021b_bd_sin_wave_demodulate_2021b_1_0 is
  port (
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    step_size : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC
  );
  end component sin_wave_demodulate_2021b_bd_sin_wave_demodulate_2021b_1_0;
  signal clk_1 : STD_LOGIC;
  signal s_axis_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axis_1_TLAST : STD_LOGIC;
  signal s_axis_1_TREADY : STD_LOGIC;
  signal s_axis_1_TVALID : STD_LOGIC;
  signal sin_wave_demodulate_2021b_1_m_axis_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sin_wave_demodulate_2021b_1_m_axis_TLAST : STD_LOGIC;
  signal sin_wave_demodulate_2021b_1_m_axis_TREADY : STD_LOGIC;
  signal sin_wave_demodulate_2021b_1_m_axis_TVALID : STD_LOGIC;
  signal step_size_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF m_axis:s_axis, CLK_DOMAIN sin_wave_demodulate_2021b_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, CLK_DOMAIN sin_wave_demodulate_2021b_bd_clk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, CLK_DOMAIN sin_wave_demodulate_2021b_bd_clk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of step_size : signal is "xilinx.com:signal:data:1.0 DATA.STEP_SIZE DATA";
  attribute X_INTERFACE_PARAMETER of step_size : signal is "XIL_INTERFACENAME DATA.STEP_SIZE, LAYERED_METADATA undef";
begin
  clk_1 <= clk;
  m_axis_tdata(31 downto 0) <= sin_wave_demodulate_2021b_1_m_axis_TDATA(31 downto 0);
  m_axis_tlast <= sin_wave_demodulate_2021b_1_m_axis_TLAST;
  m_axis_tvalid <= sin_wave_demodulate_2021b_1_m_axis_TVALID;
  s_axis_1_TDATA(31 downto 0) <= s_axis_tdata(31 downto 0);
  s_axis_1_TLAST <= s_axis_tlast;
  s_axis_1_TVALID <= s_axis_tvalid;
  s_axis_tready <= s_axis_1_TREADY;
  sin_wave_demodulate_2021b_1_m_axis_TREADY <= m_axis_tready;
  step_size_1(15 downto 0) <= step_size(15 downto 0);
sin_wave_demodulate_2021b_1: component sin_wave_demodulate_2021b_bd_sin_wave_demodulate_2021b_1_0
     port map (
      clk => clk_1,
      m_axis_tdata(31 downto 0) => sin_wave_demodulate_2021b_1_m_axis_TDATA(31 downto 0),
      m_axis_tlast => sin_wave_demodulate_2021b_1_m_axis_TLAST,
      m_axis_tready => sin_wave_demodulate_2021b_1_m_axis_TREADY,
      m_axis_tvalid => sin_wave_demodulate_2021b_1_m_axis_TVALID,
      s_axis_tdata(31 downto 0) => s_axis_1_TDATA(31 downto 0),
      s_axis_tlast => s_axis_1_TLAST,
      s_axis_tready => s_axis_1_TREADY,
      s_axis_tvalid => s_axis_1_TVALID,
      step_size(15 downto 0) => step_size_1(15 downto 0)
    );
end STRUCTURE;
