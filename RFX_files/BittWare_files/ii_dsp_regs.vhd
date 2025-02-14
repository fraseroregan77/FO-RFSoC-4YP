-- Copyright 2021 by ISI LLC, All Rights Reserved.
--******************************************************************************
--* Design Name: ii_dsp_regs
--*
--* @li Target Device: any
--* @li Tool versions: any
--*
--*     @short AXI-Lite Slave
--*
--* Description:
--*
--*   AXI-Lite slave bridge to application logic
--*
--*   @generic ADDR_BITS     : bits to decode from address in this slave
--*
--*   -- User registers
--*   @port ...              : input, read user register
--*   @port ...              :output, write user register
--*
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

entity ii_dsp_regs is
  generic (
    ADDR_BITS            : integer := 2;
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
end ii_dsp_regs;

architecture arch of ii_dsp_regs is

  constant ADDR_RANGE         : integer := 2**ADDR_BITS;

  subtype reg_width is std_logic_vector(31 downto 0);
  type reg_t is array (ADDR_RANGE-1 downto 0) of reg_width;
  constant REG_ZEROS          : reg_width := (others => '0');

  signal wr_stb               : std_logic_vector(ADDR_RANGE-1 downto 0);
  signal rd_stb               : std_logic_vector(ADDR_RANGE-1 downto 0);
  signal reg_init             : reg_t := (others => REG_ZEROS);
  signal reg_i                : reg_t := (others => REG_ZEROS);
  signal reg_o                : reg_t;
  signal reg_i_slv            : std_logic_vector((ADDR_RANGE*32)-1 downto 0);
  signal reg_o_slv            : std_logic_vector((ADDR_RANGE*32)-1 downto 0);
  signal reg_init_slv         : std_logic_vector((ADDR_RANGE*32)-1 downto 0);

begin

  -- Form incoming and outgoing data array
  process (reg_i, reg_i_slv, reg_init)
  begin
    for i in 1 to ADDR_RANGE loop
      reg_o_slv((i*32)-1 downto (i-1)*32) <= reg_i(i-1);
      reg_init_slv((i*32)-1 downto (i-1)*32) <= reg_init(i-1);
      reg_o(i-1) <= reg_i_slv((i*32)-1 downto (i-1)*32);
    end loop;
  end process;

  inst_regs_core_async : ii_regs_core_async
  generic map (
    ADDR_BITS            => ADDR_BITS,
    AXI_ADDR_WIDTH       => AXI_ADDR_WIDTH
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

    -- Register interface ports
    sys_clk              => axis_clk,
    wr_stb               => wr_stb,
    rd_stb               => rd_stb,
    reg_init_core        => reg_init_slv,
    reg_i_core           => reg_o_slv,
    reg_o_core           => reg_i_slv
  );

  -- ************************************************************************
  -- All the assignments below this line can be modified according to the
  -- required register map.

  reg_i(0)(15 downto 0)      <= std_logic_vector(to_unsigned(NUM_RX_CHANNELS, 16));
  reg_i(0)(31 downto 16)     <= std_logic_vector(to_unsigned(NUM_TX_CHANNELS, 16));

  dsp_rst                    <= reg_o(1)(0);
  reg_init(1)(0)             <= '1';             -- default dsp_rst value
  reg_i(1)                   <= reg_o(1);
  
  nco_driver                 <= reg_o(2)(0);
  reg_init(2)(0)             <= '1';             -- default dsp_rst value (Setting this to 0 starts the NCO output)
  reg_i(2)                   <= reg_o(2);

end arch;

