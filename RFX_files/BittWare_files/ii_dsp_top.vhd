-- Copyright 2021 by ISI LLC, All Rights Reserved.
--******************************************************************************
--* Design Name: ii_dsp_top
--*
--* @li Target Device: generic
--* @li Tool versions: any
--*
--*     @short DSP top level
--*
--* Description:
--*
--*   This component is the top level digital signal processing (DSP) wrapper.
--*
--*     @author ISI LLC
--*     @version 1.0
--*     @date Created 04/15/2021
--*
--******************************************************************************
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.lib_pkg.all;

entity ii_dsp_top is
  generic (
    AXI_ADDR_WIDTH       : integer := 32;
    NUM_RX_CHANNELS      : integer := 8;
    NUM_TX_CHANNELS      : integer := 16
  );
  port (
    -- AXI slave ports
    s_axi_aclk           : in  std_logic;
    s_axi_aresetn        : in  std_logic;
    s_axi_awaddr         : in  std_logic_vector(AXI_ADDR_WIDTH-1 downto 0);
    s_axi_awprot         : in  std_logic_vector(2 downto 0);
    s_axi_awvalid        : in  std_logic_vector(0 to 0);
    s_axi_awready        : out std_logic_vector(0 to 0);
    s_axi_wdata          : in  std_logic_vector(31 downto 0);
    s_axi_wstrb          : in  std_logic_vector(3 downto 0);
    s_axi_wvalid         : in  std_logic_vector(0 to 0);
    s_axi_wready         : out std_logic_vector(0 to 0);
    s_axi_bresp          : out std_logic_vector(1 downto 0);
    s_axi_bvalid         : out std_logic_vector(0 to 0);
    s_axi_bready         : in  std_logic_vector(0 to 0);
    s_axi_araddr         : in  std_logic_vector(AXI_ADDR_WIDTH-1 downto 0);
    s_axi_arprot         : in  std_logic_vector(2 downto 0);
    s_axi_arvalid        : in  std_logic_vector(0 to 0);
    s_axi_arready        : out std_logic_vector(0 to 0);
    s_axi_rdata          : out std_logic_vector(31 downto 0);
    s_axi_rresp          : out std_logic_vector(1 downto 0);
    s_axi_rvalid         : out std_logic_vector(0 to 0);
    s_axi_rready         : in  std_logic_vector(0 to 0);

    -- System interface
    srst                 : in  std_logic;
    axis_clk             : in  std_logic;
    rx_run               : in  std_logic;
    tx_run               : in  std_logic;

    -- ADC user interface (VITA-49 descriptor and payload)
    s_axis_rx_desc_tdata : in  slv32_array(NUM_RX_CHANNELS-1 downto 0);
    s_axis_rx_desc_tdest : in  slv4_array(NUM_RX_CHANNELS-1 downto 0);
    s_axis_rx_desc_tid   : in  slv4_array(NUM_RX_CHANNELS-1 downto 0);
    s_axis_rx_desc_tlast : in  std_logic_vector(NUM_RX_CHANNELS-1 downto 0);
    s_axis_rx_desc_tready: out std_logic_vector(NUM_RX_CHANNELS-1 downto 0);
    s_axis_rx_desc_tvalid: in  std_logic_vector(NUM_RX_CHANNELS-1 downto 0);
    s_axis_rx_pyld_tdata : in  slv512_array(NUM_RX_CHANNELS-1 downto 0);
    s_axis_rx_pyld_tdest : in  slv4_array(NUM_RX_CHANNELS-1 downto 0);
    s_axis_rx_pyld_tid   : in  slv4_array(NUM_RX_CHANNELS-1 downto 0);
    s_axis_rx_pyld_tlast : in  std_logic_vector(NUM_RX_CHANNELS-1 downto 0);
    s_axis_rx_pyld_tready: out std_logic_vector(NUM_RX_CHANNELS-1 downto 0);
    s_axis_rx_pyld_tuser : in  std_logic_vector(NUM_RX_CHANNELS-1 downto 0);
    s_axis_rx_pyld_tvalid: in  std_logic_vector(NUM_RX_CHANNELS-1 downto 0);

    -- RX interface (VITA-49 descriptor and payload)
    m_axis_rx_desc_tdata : out slv32_array(NUM_RX_CHANNELS-1 downto 0);
    m_axis_rx_desc_tdest : out slv4_array(NUM_RX_CHANNELS-1 downto 0);
    m_axis_rx_desc_tid   : out slv4_array(NUM_RX_CHANNELS-1 downto 0);
    m_axis_rx_desc_tlast : out std_logic_vector(NUM_RX_CHANNELS-1 downto 0);
    m_axis_rx_desc_tready: in  std_logic_vector(NUM_RX_CHANNELS-1 downto 0);
    m_axis_rx_desc_tvalid: out std_logic_vector(NUM_RX_CHANNELS-1 downto 0);
    m_axis_rx_pyld_tdata : out slv512_array(NUM_RX_CHANNELS-1 downto 0);
    m_axis_rx_pyld_tdest : out slv4_array(NUM_RX_CHANNELS-1 downto 0);
    m_axis_rx_pyld_tid   : out slv4_array(NUM_RX_CHANNELS-1 downto 0);
    m_axis_rx_pyld_tlast : out std_logic_vector(NUM_RX_CHANNELS-1 downto 0);
    m_axis_rx_pyld_tready: in  std_logic_vector(NUM_RX_CHANNELS-1 downto 0);
    m_axis_rx_pyld_tuser : out std_logic_vector(NUM_RX_CHANNELS-1 downto 0);
    m_axis_rx_pyld_tvalid: out std_logic_vector(NUM_RX_CHANNELS-1 downto 0);

    -- TX interface
    s_axis_tx_tdata      : in  slv512_array(NUM_TX_CHANNELS-1 downto 0);
    s_axis_tx_tlast      : in  std_logic_vector(NUM_TX_CHANNELS-1 downto 0);
    s_axis_tx_tready     : out std_logic_vector(NUM_TX_CHANNELS-1 downto 0);
    s_axis_tx_tvalid     : in  std_logic_vector(NUM_TX_CHANNELS-1 downto 0);

    -- DAC user interface
    m_axis_tx_tdata      : out slv512_array(NUM_TX_CHANNELS-1 downto 0);
    m_axis_tx_tlast      : out std_logic_vector(NUM_TX_CHANNELS-1 downto 0);
    m_axis_tx_tready     : in  std_logic_vector(NUM_TX_CHANNELS-1 downto 0);
    m_axis_tx_tvalid     : out std_logic_vector(NUM_TX_CHANNELS-1 downto 0)
  );
end ii_dsp_top;

architecture arch of ii_dsp_top is

  component ii_dsp_regs
    generic (
      AXI_ADDR_WIDTH       : integer := 32;
      NUM_RX_CHANNELS      : integer := 8;
      NUM_TX_CHANNELS      : integer := 16
    );
    port (
      -- AXI slave ports
      s_axi_aclk           : in  std_logic;
      s_axi_aresetn        : in  std_logic;
      s_axi_awaddr         : in  std_logic_vector(AXI_ADDR_WIDTH-1 downto 0);
      s_axi_awprot         : in  std_logic_vector(2 downto 0);
      s_axi_awvalid        : in  std_logic_vector(0 to 0);
      s_axi_awready        : out std_logic_vector(0 to 0);
      s_axi_wdata          : in  std_logic_vector(31 downto 0);
      s_axi_wstrb          : in  std_logic_vector(3 downto 0);
      s_axi_wvalid         : in  std_logic_vector(0 to 0);
      s_axi_wready         : out std_logic_vector(0 to 0);
      s_axi_bresp          : out std_logic_vector(1 downto 0);
      s_axi_bvalid         : out std_logic_vector(0 to 0);
      s_axi_bready         : in  std_logic_vector(0 to 0);
      s_axi_araddr         : in  std_logic_vector(AXI_ADDR_WIDTH-1 downto 0);
      s_axi_arprot         : in  std_logic_vector(2 downto 0);
      s_axi_arvalid        : in  std_logic_vector(0 to 0);
      s_axi_arready        : out std_logic_vector(0 to 0);
      s_axi_rdata          : out std_logic_vector(31 downto 0);
      s_axi_rresp          : out std_logic_vector(1 downto 0);
      s_axi_rvalid         : out std_logic_vector(0 to 0);
      s_axi_rready         : in  std_logic_vector(0 to 0);

      -- Clock
      axis_clk             : in  std_logic;

      -- User registers
      dsp_rst              : out std_logic;
      nco_driver           : out std_logic
    );
  end component;
  
  component sin_wave_modulate
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 1-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
  end component;
  

  signal dsp_rst              : std_logic;
  signal nco_driver           : std_logic;
  
  --user signals`
  
  signal m_axis_tready      : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tdata       : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tlast       : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tvalid      : std_logic_vector( 1-1 downto 0 );
  signal clk                : std_logic;
  signal m_axis_tdata       : std_logic_vector( 32-1 downto 0 );
  signal m_axis_tlast       : std_logic_vector( 1-1 downto 0 );
  signal m_axis_tvalid      : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tready      : std_logic_vector( 1-1 downto 0 );
  

  --attribute MARK_DEBUG : string;
  --attribute MARK_DEBUG of user_code_output : signal is "True";
  
begin

--------------------------------------------------------------------------------
-- Instantiate the registers
--------------------------------------------------------------------------------
  inst_dsp_regs : ii_dsp_regs
  generic map (
    AXI_ADDR_WIDTH       => AXI_ADDR_WIDTH,
    NUM_RX_CHANNELS      => NUM_RX_CHANNELS,
    NUM_TX_CHANNELS      => NUM_TX_CHANNELS
  )
  port map (
    -- AXI slave ports
    s_axi_aclk           => s_axi_aclk,
    s_axi_aresetn        => s_axi_aresetn,
    s_axi_awaddr         => s_axi_awaddr,
    s_axi_awprot         => s_axi_awprot,
    s_axi_awvalid        => s_axi_awvalid,
    s_axi_awready        => s_axi_awready,
    s_axi_wdata          => s_axi_wdata,
    s_axi_wstrb          => s_axi_wstrb,
    s_axi_wvalid         => s_axi_wvalid,
    s_axi_wready         => s_axi_wready,
    s_axi_bresp          => s_axi_bresp,
    s_axi_bvalid         => s_axi_bvalid,
    s_axi_bready         => s_axi_bready,
    s_axi_araddr         => s_axi_araddr,
    s_axi_arprot         => s_axi_arprot,
    s_axi_arvalid        => s_axi_arvalid,
    s_axi_arready        => s_axi_arready,
    s_axi_rdata          => s_axi_rdata,
    s_axi_rresp          => s_axi_rresp,
    s_axi_rvalid         => s_axi_rvalid,
    s_axi_rready         => s_axi_rready,

    -- Clock
    axis_clk             => axis_clk,

    -- User registers
    dsp_rst              => dsp_rst,
    nco_driver           => nco_driver
  );
  
 -- user_code_input <= s_axis_rx_desc_tdata(0)(15 downto 0);
  
  
  user_code : sin_wave_modulate
  port map (
    m_axis_tready => m_axis_tx_tready,
    s_axis_tdata => s_axis_tx_tdata,
    s_axis_tlast => s_axis_tx_tlast,
    s_axis_tvalid => s_axis_tx_tvalid,
    clk => axis_clk,
    m_axis_tdata => m_axis_tx_tdata,
    m_axis_tlast => m_axis_tx_tlast,
    m_axis_tvalid => m_axis_tx_tvalid,
    s_axis_tready => s_axis_tx_tready
  );
  
  
  s_axis_tx_tdata(0) <= nco_driver;
  -- m_axis_tready <= 
  -- m_axis_tdata <= s_axis_tx_tdata(0)(31 downto 0);  
  
--------------------------------------------------------------------------------
-- Pass-through the ADC user interface and RX interface signals
--------------------------------------------------------------------------------
  m_axis_rx_desc_tdata  <= s_axis_rx_desc_tdata;
  m_axis_rx_desc_tdest  <= s_axis_rx_desc_tdest;
  m_axis_rx_desc_tid    <= s_axis_rx_desc_tid;
  m_axis_rx_desc_tlast  <= s_axis_rx_desc_tlast;
  s_axis_rx_desc_tready <= m_axis_rx_desc_tready;
  m_axis_rx_desc_tvalid <= s_axis_rx_desc_tvalid;
  m_axis_rx_pyld_tdata  <= s_axis_rx_pyld_tdata;
  m_axis_rx_pyld_tdest  <= s_axis_rx_pyld_tdest;
  m_axis_rx_pyld_tid    <= s_axis_rx_pyld_tid;
  m_axis_rx_pyld_tlast  <= s_axis_rx_pyld_tlast;
  s_axis_rx_pyld_tready <= m_axis_rx_pyld_tready;
  m_axis_rx_pyld_tuser  <= s_axis_rx_pyld_tuser;
  m_axis_rx_pyld_tvalid <= s_axis_rx_pyld_tvalid;

--------------------------------------------------------------------------------
-- Pass-through the DAC user interface and TX interface signals
--------------------------------------------------------------------------------
  m_axis_tx_tdata  <= s_axis_tx_tdata;
  m_axis_tx_tlast  <= s_axis_tx_tlast;
  s_axis_tx_tready <= m_axis_tx_tready;
  m_axis_tx_tvalid <= s_axis_tx_tvalid;

end arch;

