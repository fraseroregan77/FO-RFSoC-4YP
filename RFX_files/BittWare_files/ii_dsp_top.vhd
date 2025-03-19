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
      nco_driver           : out std_logic_vector(0 downto 0);
      mux_en               : out std_logic_vector(0 downto 0)      
    );
  end component;
  
--  component sin_wave_modulate
--  port (
--    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
--    s_axis_tdata : in std_logic_vector( 1-1 downto 0 );
--    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
--    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
--    clk : in std_logic;
--    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
--    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
--    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
--    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
--  );
--  end component;

-- User Component instantiation
-- COMPONENT Data_generation_clean
--  PORT (
--    m_axis_tready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    s_axis_tdata : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    s_axis_tlast : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    s_axis_tvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    clk : IN STD_LOGIC;
--    m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
--    m_axis_tlast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--    m_axis_tvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--    s_axis_tready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0) 
--  );
--END COMPONENT;


--COMPONENT DUT_data_in_0
--  PORT (
--    s_axis_tvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    s_axis_tdata : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    s_axis_tlast : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    m_axis_tready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    mux_en : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    clk : IN STD_LOGIC;
--    m_axis_tvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--    m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
--    m_axis_tlast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--    s_axis_tready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0) 
--  );
--END COMPONENT;

COMPONENT DUT_data_in_16bit
  PORT (
    s_axis_tvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axis_tdata : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axis_tlast : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_tready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    mux_en : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    clk : IN STD_LOGIC;
    m_axis_tvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_tlast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axis_tready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0) 
  );
END COMPONENT;  

  signal dsp_rst              : std_logic;
  signal nco_driver           : std_logic_vector(0 downto 0);
  signal nco_mux_en           : std_logic_vector(0 downto 0);
  
  
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
  
  
  signal m_axis_tdata_temp       : std_logic_vector( 15 downto 0 );

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
    nco_driver           => nco_driver,
    mux_en               => nco_mux_en
  );
  
 -- user_code_input <= s_axis_rx_desc_tdata(0)(15 downto 0);
  
  
--  user_code : Data_generation_1
 -- port map (
 --   m_axis_tready => m_axis_tx_tready(0 downto 0),
 --   s_axis_tdata => nco_driver,
 --   s_axis_tlast => s_axis_tx_tlast(0 downto 0),
 --   s_axis_tvalid => s_axis_tx_tvalid(0 downto 0),
 --   clk => axis_clk,
 --   m_axis_tdata => m_axis_tx_tdata(0)(32-1 downto 0),
  --  m_axis_tlast => m_axis_tx_tlast(0 downto 0),
 --   m_axis_tvalid => m_axis_tx_tvalid(0 downto 0),
 --   s_axis_tready => s_axis_tx_tready(0 downto 0)
 -- );

--fraser_user_code : Data_generation_clean
--  PORT MAP (
--    m_axis_tready => m_axis_tx_tready(0 downto 0),
--    s_axis_tdata => nco_driver,
--    s_axis_tlast => "1",
--    s_axis_tvalid => "1",
--    clk => axis_clk,
--    m_axis_tdata => m_axis_tx_tdata(0)(31 downto 0),
--    m_axis_tlast => m_axis_tx_tlast(0 downto 0),
--    m_axis_tvalid => m_axis_tx_tvalid(0 downto 0),
--    s_axis_tready => open
--  );  

--fraser_user_code : DUT_data_in_0
--  PORT MAP (
--    s_axis_tvalid => "1",
--    s_axis_tdata => nco_driver,
--    s_axis_tlast => "1",
--    m_axis_tready => m_axis_tx_tready(0 downto 0),
--    mux_en => nco_mux_en,
--    clk => axis_clk,
--    m_axis_tvalid => m_axis_tx_tvalid(0 downto 0),
--    m_axis_tdata => m_axis_tx_tdata(0)(31 downto 0),
--    m_axis_tlast => m_axis_tx_tlast(0 downto 0),
--    s_axis_tready => open
--  );


--fraser_user_code : DUT_data_in_0
--  PORT MAP (
--    s_axis_tvalid => "1",
--    s_axis_tdata => nco_driver,
--    s_axis_tlast => "1",
--    m_axis_tready => m_axis_tx_tready(0 downto 0),
--    mux_en => nco_mux_en,
--    clk => axis_clk,
--    m_axis_tvalid => m_axis_tx_tvalid(0 downto 0),
--    m_axis_tdata => m_axis_tdata_temp,
--    m_axis_tlast => m_axis_tx_tlast(0 downto 0),
--    s_axis_tready => open
--  );
  
  fraser_user_code : DUT_data_in_16bit
  PORT MAP (
    s_axis_tvalid => "1",
    s_axis_tdata => nco_driver,
    s_axis_tlast => "1",
    m_axis_tready => m_axis_tx_tready(0 downto 0),
    mux_en => nco_mux_en,
    clk => axis_clk,
    m_axis_tvalid => m_axis_tx_tvalid(0 downto 0),
    m_axis_tdata => m_axis_tdata_temp,
    m_axis_tlast => m_axis_tx_tlast(0 downto 0),
    s_axis_tready => open
  );
  
  
  -- s_axis_tx_tdata(0)(0 downto 0) <= nco_driver;
  
  --m_axis_tready <= 
  --m_axis_tdata <= s_axis_tx_tdata(0)(31 downto 0);
  
  
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
 -- m_axis_tx_tdata  <= s_axis_tx_tdata;
 -- m_axis_tx_tlast  <= s_axis_tx_tlast;
 -- s_axis_tx_tready <= m_axis_tx_tready;
 -- m_axis_tx_tvalid <= s_axis_tx_tvalid;

   m_axis_tx_tdata(0) <= m_axis_tdata_temp(15 downto 0) &  m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) &
                         m_axis_tdata_temp(15 downto 0) &  m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) &
                         m_axis_tdata_temp(15 downto 0) &  m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) &
                         m_axis_tdata_temp(15 downto 0) &  m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0) & m_axis_tdata_temp(15 downto 0);


--  m_axis_tx_tdata(0) <= m_axis_tdata_temp(31 downto 16) &  m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) &  m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) &
--                         m_axis_tdata_temp(31 downto 16) &  m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) &  m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) &
--                         m_axis_tdata_temp(31 downto 16) &  m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) &  m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) &
--                         m_axis_tdata_temp(31 downto 16) &  m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) &  m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16) & m_axis_tdata_temp(31 downto 16);
                         
  m_axis_tx_tdata(15 downto 1)  <= s_axis_tx_tdata(15 downto 1);
  m_axis_tx_tlast(15 downto 1)  <= s_axis_tx_tlast(15 downto 1);
  s_axis_tx_tready(15 downto 1) <= m_axis_tx_tready(15 downto 1);
  m_axis_tx_tvalid(15 downto 1) <= s_axis_tx_tvalid(15 downto 1);


end arch;

