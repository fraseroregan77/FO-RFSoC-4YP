-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity x16_bit_demod_stub is
  port (
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    x16_bit_demod_aresetn : in std_logic;
    x16_bit_demod_step_size_s_axi_awaddr : in std_logic;
    x16_bit_demod_step_size_s_axi_awvalid : in std_logic;
    x16_bit_demod_step_size_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    x16_bit_demod_step_size_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    x16_bit_demod_step_size_s_axi_wvalid : in std_logic;
    x16_bit_demod_step_size_s_axi_bready : in std_logic;
    x16_bit_demod_step_size_s_axi_araddr : in std_logic;
    x16_bit_demod_step_size_s_axi_arvalid : in std_logic;
    x16_bit_demod_step_size_s_axi_rready : in std_logic;
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 );
    x16_bit_demod_step_size_s_axi_awready : out std_logic;
    x16_bit_demod_step_size_s_axi_wready : out std_logic;
    x16_bit_demod_step_size_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    x16_bit_demod_step_size_s_axi_bvalid : out std_logic;
    x16_bit_demod_step_size_s_axi_arready : out std_logic;
    x16_bit_demod_step_size_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    x16_bit_demod_step_size_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    x16_bit_demod_step_size_s_axi_rvalid : out std_logic
  );
end x16_bit_demod_stub;
architecture structural of x16_bit_demod_stub is 
begin
  sysgen_dut : entity xil_defaultlib.DUT_0 
  port map (
    s_axis_tvalid => s_axis_tvalid,
    s_axis_tdata => s_axis_tdata,
    s_axis_tlast => s_axis_tlast,
    m_axis_tready => m_axis_tready,
    clk => clk,
    x16_bit_demod_aresetn => x16_bit_demod_aresetn,
    x16_bit_demod_step_size_s_axi_awaddr => x16_bit_demod_step_size_s_axi_awaddr,
    x16_bit_demod_step_size_s_axi_awvalid => x16_bit_demod_step_size_s_axi_awvalid,
    x16_bit_demod_step_size_s_axi_wdata => x16_bit_demod_step_size_s_axi_wdata,
    x16_bit_demod_step_size_s_axi_wstrb => x16_bit_demod_step_size_s_axi_wstrb,
    x16_bit_demod_step_size_s_axi_wvalid => x16_bit_demod_step_size_s_axi_wvalid,
    x16_bit_demod_step_size_s_axi_bready => x16_bit_demod_step_size_s_axi_bready,
    x16_bit_demod_step_size_s_axi_araddr => x16_bit_demod_step_size_s_axi_araddr,
    x16_bit_demod_step_size_s_axi_arvalid => x16_bit_demod_step_size_s_axi_arvalid,
    x16_bit_demod_step_size_s_axi_rready => x16_bit_demod_step_size_s_axi_rready,
    m_axis_tvalid => m_axis_tvalid,
    m_axis_tdata => m_axis_tdata,
    m_axis_tlast => m_axis_tlast,
    s_axis_tready => s_axis_tready,
    x16_bit_demod_step_size_s_axi_awready => x16_bit_demod_step_size_s_axi_awready,
    x16_bit_demod_step_size_s_axi_wready => x16_bit_demod_step_size_s_axi_wready,
    x16_bit_demod_step_size_s_axi_bresp => x16_bit_demod_step_size_s_axi_bresp,
    x16_bit_demod_step_size_s_axi_bvalid => x16_bit_demod_step_size_s_axi_bvalid,
    x16_bit_demod_step_size_s_axi_arready => x16_bit_demod_step_size_s_axi_arready,
    x16_bit_demod_step_size_s_axi_rdata => x16_bit_demod_step_size_s_axi_rdata,
    x16_bit_demod_step_size_s_axi_rresp => x16_bit_demod_step_size_s_axi_rresp,
    x16_bit_demod_step_size_s_axi_rvalid => x16_bit_demod_step_size_s_axi_rvalid
  );
end structural;
