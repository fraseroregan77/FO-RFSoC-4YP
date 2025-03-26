--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Wed Mar 26 09:38:52 2025
--Host        : EEE-R343-01 running 64-bit major release  (build 9200)
--Command     : generate_target PYNQ_Design.bd
--Design      : PYNQ_Design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RX_imp_1G0MUP is
  port (
    M00_AXI_araddr : out STD_LOGIC;
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC;
    M00_AXI_arlock : out STD_LOGIC;
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 48 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC;
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    SLOT_1_AXIS_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_1_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S_AXI_LITE_arready : out STD_LOGIC;
    S_AXI_LITE_arvalid : in STD_LOGIC;
    S_AXI_LITE_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S_AXI_LITE_awready : out STD_LOGIC;
    S_AXI_LITE_awvalid : in STD_LOGIC;
    S_AXI_LITE_bready : in STD_LOGIC;
    S_AXI_LITE_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_bvalid : out STD_LOGIC;
    S_AXI_LITE_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_rready : in STD_LOGIC;
    S_AXI_LITE_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_rvalid : out STD_LOGIC;
    S_AXI_LITE_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_wready : out STD_LOGIC;
    S_AXI_LITE_wvalid : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC
  );
end RX_imp_1G0MUP;

architecture STRUCTURE of RX_imp_1G0MUP is
  component PYNQ_Design_axi_smc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 48 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC
  );
  end component PYNQ_Design_axi_smc_2;
  component PYNQ_Design_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component PYNQ_Design_proc_sys_reset_0_0;
  component PYNQ_Design_system_ila_1_0 is
  port (
    clk : in STD_LOGIC;
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_1_AXIS_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_1_AXIS_tlast : in STD_LOGIC;
    SLOT_1_AXIS_tvalid : in STD_LOGIC;
    SLOT_1_AXIS_tready : in STD_LOGIC;
    SLOT_2_AXI_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    SLOT_2_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awvalid : in STD_LOGIC;
    SLOT_2_AXI_awready : in STD_LOGIC;
    SLOT_2_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_2_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_2_AXI_wlast : in STD_LOGIC;
    SLOT_2_AXI_wvalid : in STD_LOGIC;
    SLOT_2_AXI_wready : in STD_LOGIC;
    SLOT_2_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_bvalid : in STD_LOGIC;
    SLOT_2_AXI_bready : in STD_LOGIC;
    SLOT_2_AXI_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    SLOT_2_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arvalid : in STD_LOGIC;
    SLOT_2_AXI_arready : in STD_LOGIC;
    SLOT_2_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_2_AXI_rlast : in STD_LOGIC;
    SLOT_2_AXI_rvalid : in STD_LOGIC;
    SLOT_2_AXI_rready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component PYNQ_Design_system_ila_1_0;
  component PYNQ_Design_axi_dma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component PYNQ_Design_axi_dma_0_0;
  component PYNQ_Design_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component PYNQ_Design_clk_wiz_0_0;
  component PYNQ_Design_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component PYNQ_Design_xlconstant_0_1;
  component PYNQ_Design_Receiver_0_0 is
  port (
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    step_size : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component PYNQ_Design_Receiver_0_0;
  signal DUT_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO : string;
  attribute CONN_BUS_INFO of DUT_0_m_axis_TDATA : signal is "DUT_0_m_axis xilinx.com:interface:axis:1.0 None TDATA";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of DUT_0_m_axis_TDATA : signal is std.standard.true;
  signal DUT_0_m_axis_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of DUT_0_m_axis_TLAST : signal is "DUT_0_m_axis xilinx.com:interface:axis:1.0 None TLAST";
  attribute DONT_TOUCH of DUT_0_m_axis_TLAST : signal is std.standard.true;
  signal DUT_0_m_axis_TREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of DUT_0_m_axis_TREADY : signal is "DUT_0_m_axis xilinx.com:interface:axis:1.0 None TREADY";
  attribute DONT_TOUCH of DUT_0_m_axis_TREADY : signal is std.standard.true;
  signal DUT_0_m_axis_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of DUT_0_m_axis_TVALID : signal is "DUT_0_m_axis xilinx.com:interface:axis:1.0 None TVALID";
  attribute DONT_TOUCH of DUT_0_m_axis_TVALID : signal is std.standard.true;
  signal axi_dma_rx_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_dma_rx_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_rx_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_rx_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_rx_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_rx_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_dma_rx_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_rx_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_rx_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_rx_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_rx_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_dma_rx_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_dma_rx_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_rx_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_dma_rx_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_dma_rx_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_ARADDR : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARADDR : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR";
  attribute DEBUG : string;
  attribute DEBUG of axi_smc_M00_AXI_ARADDR : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARADDR : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARBURST : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST";
  attribute DEBUG of axi_smc_M00_AXI_ARBURST : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARBURST : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARCACHE : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE";
  attribute DEBUG of axi_smc_M00_AXI_ARCACHE : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARCACHE : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARLEN : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARLEN : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN";
  attribute DEBUG of axi_smc_M00_AXI_ARLEN : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARLEN : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARLOCK : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARLOCK : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK";
  attribute DEBUG of axi_smc_M00_AXI_ARLOCK : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARLOCK : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARPROT : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT";
  attribute DEBUG of axi_smc_M00_AXI_ARPROT : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARPROT : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARQOS : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS";
  attribute DEBUG of axi_smc_M00_AXI_ARQOS : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARQOS : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARSIZE : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE";
  attribute DEBUG of axi_smc_M00_AXI_ARSIZE : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARSIZE : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARVALID : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID";
  attribute DEBUG of axi_smc_M00_AXI_ARVALID : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARVALID : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 48 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWADDR : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR";
  attribute DEBUG of axi_smc_M00_AXI_AWADDR : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWADDR : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWBURST : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST";
  attribute DEBUG of axi_smc_M00_AXI_AWBURST : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWBURST : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWCACHE : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE";
  attribute DEBUG of axi_smc_M00_AXI_AWCACHE : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWCACHE : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWLEN : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN";
  attribute DEBUG of axi_smc_M00_AXI_AWLEN : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWLEN : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWLOCK : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK";
  attribute DEBUG of axi_smc_M00_AXI_AWLOCK : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWLOCK : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWPROT : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT";
  attribute DEBUG of axi_smc_M00_AXI_AWPROT : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWPROT : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWQOS : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS";
  attribute DEBUG of axi_smc_M00_AXI_AWQOS : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWQOS : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWREADY : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY";
  attribute DEBUG of axi_smc_M00_AXI_AWREADY : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWREADY : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWSIZE : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE";
  attribute DEBUG of axi_smc_M00_AXI_AWSIZE : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWSIZE : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWVALID : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID";
  attribute DEBUG of axi_smc_M00_AXI_AWVALID : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWVALID : signal is std.standard.true;
  signal axi_smc_M00_AXI_BREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_BREADY : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY";
  attribute DEBUG of axi_smc_M00_AXI_BREADY : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_BREADY : signal is std.standard.true;
  signal axi_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_BRESP : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP";
  attribute DEBUG of axi_smc_M00_AXI_BRESP : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_BRESP : signal is std.standard.true;
  signal axi_smc_M00_AXI_BVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_BVALID : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID";
  attribute DEBUG of axi_smc_M00_AXI_BVALID : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_BVALID : signal is std.standard.true;
  signal axi_smc_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_RREADY : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY";
  attribute DEBUG of axi_smc_M00_AXI_RREADY : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_RREADY : signal is std.standard.true;
  signal axi_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WDATA : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA";
  attribute DEBUG of axi_smc_M00_AXI_WDATA : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_WDATA : signal is std.standard.true;
  signal axi_smc_M00_AXI_WLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WLAST : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST";
  attribute DEBUG of axi_smc_M00_AXI_WLAST : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_WLAST : signal is std.standard.true;
  signal axi_smc_M00_AXI_WREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WREADY : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY";
  attribute DEBUG of axi_smc_M00_AXI_WREADY : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_WREADY : signal is std.standard.true;
  signal axi_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WSTRB : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB";
  attribute DEBUG of axi_smc_M00_AXI_WSTRB : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_WSTRB : signal is std.standard.true;
  signal axi_smc_M00_AXI_WVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WVALID : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID";
  attribute DEBUG of axi_smc_M00_AXI_WVALID : signal is "true";
  attribute DONT_TOUCH of axi_smc_M00_AXI_WVALID : signal is std.standard.true;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal rst_ps8_0_96M_peripheral_aresetn : STD_LOGIC;
  signal usp_rf_data_converter_0_clk_adc0 : STD_LOGIC;
  signal usp_rf_data_converter_0_m00_axis_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute CONN_BUS_INFO of usp_rf_data_converter_0_m00_axis_TDATA : signal is "usp_rf_data_converter_0_m00_axis xilinx.com:interface:axis:1.0 None TDATA";
  attribute DEBUG of usp_rf_data_converter_0_m00_axis_TDATA : signal is "true";
  attribute DONT_TOUCH of usp_rf_data_converter_0_m00_axis_TDATA : signal is std.standard.true;
  signal usp_rf_data_converter_0_m00_axis_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of usp_rf_data_converter_0_m00_axis_TREADY : signal is "usp_rf_data_converter_0_m00_axis xilinx.com:interface:axis:1.0 None TREADY";
  attribute DEBUG of usp_rf_data_converter_0_m00_axis_TREADY : signal is "true";
  attribute DONT_TOUCH of usp_rf_data_converter_0_m00_axis_TREADY : signal is std.standard.true;
  signal usp_rf_data_converter_0_m00_axis_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of usp_rf_data_converter_0_m00_axis_TVALID : signal is "usp_rf_data_converter_0_m00_axis xilinx.com:interface:axis:1.0 None TVALID";
  attribute DEBUG of usp_rf_data_converter_0_m00_axis_TVALID : signal is "true";
  attribute DONT_TOUCH of usp_rf_data_converter_0_m00_axis_TVALID : signal is std.standard.true;
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_axi_dma_rx_s2mm_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_rx_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M00_AXI_araddr <= axi_smc_M00_AXI_ARADDR;
  M00_AXI_arburst(1 downto 0) <= axi_smc_M00_AXI_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= axi_smc_M00_AXI_ARCACHE(3 downto 0);
  M00_AXI_arlen <= axi_smc_M00_AXI_ARLEN;
  M00_AXI_arlock <= axi_smc_M00_AXI_ARLOCK;
  M00_AXI_arprot(2 downto 0) <= axi_smc_M00_AXI_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= axi_smc_M00_AXI_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= axi_smc_M00_AXI_ARSIZE(2 downto 0);
  M00_AXI_arvalid(0) <= axi_smc_M00_AXI_ARVALID(0);
  M00_AXI_awaddr(48 downto 0) <= axi_smc_M00_AXI_AWADDR(48 downto 0);
  M00_AXI_awburst(1 downto 0) <= axi_smc_M00_AXI_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= axi_smc_M00_AXI_AWCACHE(3 downto 0);
  M00_AXI_awlen(7 downto 0) <= axi_smc_M00_AXI_AWLEN(7 downto 0);
  M00_AXI_awlock <= axi_smc_M00_AXI_AWLOCK(0);
  M00_AXI_awprot(2 downto 0) <= axi_smc_M00_AXI_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= axi_smc_M00_AXI_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= axi_smc_M00_AXI_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= axi_smc_M00_AXI_AWVALID;
  M00_AXI_bready <= axi_smc_M00_AXI_BREADY;
  M00_AXI_rready(0) <= axi_smc_M00_AXI_RREADY(0);
  M00_AXI_wdata(127 downto 0) <= axi_smc_M00_AXI_WDATA(127 downto 0);
  M00_AXI_wlast <= axi_smc_M00_AXI_WLAST;
  M00_AXI_wstrb(15 downto 0) <= axi_smc_M00_AXI_WSTRB(15 downto 0);
  M00_AXI_wvalid <= axi_smc_M00_AXI_WVALID;
  SLOT_1_AXIS_tready(0) <= usp_rf_data_converter_0_m00_axis_TREADY(0);
  S_AXI_LITE_arready <= ps8_0_axi_periph_M01_AXI_ARREADY;
  S_AXI_LITE_awready <= ps8_0_axi_periph_M01_AXI_AWREADY;
  S_AXI_LITE_bresp(1 downto 0) <= ps8_0_axi_periph_M01_AXI_BRESP(1 downto 0);
  S_AXI_LITE_bvalid <= ps8_0_axi_periph_M01_AXI_BVALID;
  S_AXI_LITE_rdata(31 downto 0) <= ps8_0_axi_periph_M01_AXI_RDATA(31 downto 0);
  S_AXI_LITE_rresp(1 downto 0) <= ps8_0_axi_periph_M01_AXI_RRESP(1 downto 0);
  S_AXI_LITE_rvalid <= ps8_0_axi_periph_M01_AXI_RVALID;
  S_AXI_LITE_wready <= ps8_0_axi_periph_M01_AXI_WREADY;
  axi_smc_M00_AXI_AWREADY <= M00_AXI_awready;
  axi_smc_M00_AXI_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  axi_smc_M00_AXI_BVALID <= M00_AXI_bvalid;
  axi_smc_M00_AXI_WREADY <= M00_AXI_wready;
  clk_out1 <= clk_wiz_0_clk_out1;
  peripheral_aresetn(0) <= proc_sys_reset_0_peripheral_aresetn(0);
  ps8_0_axi_periph_M01_AXI_ARADDR(9 downto 0) <= S_AXI_LITE_araddr(9 downto 0);
  ps8_0_axi_periph_M01_AXI_ARVALID <= S_AXI_LITE_arvalid;
  ps8_0_axi_periph_M01_AXI_AWADDR(9 downto 0) <= S_AXI_LITE_awaddr(9 downto 0);
  ps8_0_axi_periph_M01_AXI_AWVALID <= S_AXI_LITE_awvalid;
  ps8_0_axi_periph_M01_AXI_BREADY <= S_AXI_LITE_bready;
  ps8_0_axi_periph_M01_AXI_RREADY <= S_AXI_LITE_rready;
  ps8_0_axi_periph_M01_AXI_WDATA(31 downto 0) <= S_AXI_LITE_wdata(31 downto 0);
  ps8_0_axi_periph_M01_AXI_WVALID <= S_AXI_LITE_wvalid;
  rst_ps8_0_96M_peripheral_aresetn <= resetn;
  usp_rf_data_converter_0_clk_adc0 <= clk_in1;
  usp_rf_data_converter_0_m00_axis_TDATA(15 downto 0) <= SLOT_1_AXIS_tdata(15 downto 0);
  usp_rf_data_converter_0_m00_axis_TVALID(0) <= SLOT_1_AXIS_tvalid(0);
  axi_smc_M00_AXI_ARCACHE(0) <= 'Z';
  axi_smc_M00_AXI_ARCACHE(1) <= 'Z';
  axi_smc_M00_AXI_ARCACHE(2) <= 'Z';
  axi_smc_M00_AXI_ARCACHE(3) <= 'Z';
  axi_smc_M00_AXI_RREADY(0) <= 'Z';
  axi_smc_M00_AXI_ARLOCK <= 'Z';
  axi_smc_M00_AXI_ARVALID(0) <= 'Z';
  axi_smc_M00_AXI_ARPROT(0) <= 'Z';
  axi_smc_M00_AXI_ARPROT(1) <= 'Z';
  axi_smc_M00_AXI_ARPROT(2) <= 'Z';
  axi_smc_M00_AXI_ARADDR <= 'Z';
  axi_smc_M00_AXI_ARLEN <= 'Z';
  axi_smc_M00_AXI_ARSIZE(0) <= 'Z';
  axi_smc_M00_AXI_ARSIZE(1) <= 'Z';
  axi_smc_M00_AXI_ARSIZE(2) <= 'Z';
  axi_smc_M00_AXI_ARBURST(0) <= 'Z';
  axi_smc_M00_AXI_ARBURST(1) <= 'Z';
  axi_smc_M00_AXI_ARQOS(0) <= 'Z';
  axi_smc_M00_AXI_ARQOS(1) <= 'Z';
  axi_smc_M00_AXI_ARQOS(2) <= 'Z';
  axi_smc_M00_AXI_ARQOS(3) <= 'Z';
RX_ILA: component PYNQ_Design_system_ila_1_0
     port map (
      SLOT_0_AXIS_tdata(31 downto 0) => DUT_0_m_axis_TDATA(31 downto 0),
      SLOT_0_AXIS_tlast => DUT_0_m_axis_TLAST(0),
      SLOT_0_AXIS_tready => DUT_0_m_axis_TREADY,
      SLOT_0_AXIS_tvalid => DUT_0_m_axis_TVALID(0),
      SLOT_1_AXIS_tdata(15 downto 0) => usp_rf_data_converter_0_m00_axis_TDATA(15 downto 0),
      SLOT_1_AXIS_tlast => '0',
      SLOT_1_AXIS_tready => usp_rf_data_converter_0_m00_axis_TREADY(0),
      SLOT_1_AXIS_tvalid => usp_rf_data_converter_0_m00_axis_TVALID(0),
      SLOT_2_AXI_araddr(48) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(47) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(46) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(45) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(44) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(43) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(42) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(41) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(40) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(39) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(38) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(37) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(36) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(35) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(34) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(33) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(32) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(31) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(30) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(29) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(28) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(27) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(26) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(25) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(24) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(23) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(22) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(21) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(20) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(19) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(18) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(17) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(16) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(15) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(14) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(13) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(12) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(11) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(10) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(9) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(8) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(7) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(6) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(5) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(4) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(3) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(2) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(1) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(0) => axi_smc_M00_AXI_ARADDR,
      SLOT_2_AXI_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      SLOT_2_AXI_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      SLOT_2_AXI_arlen(7) => axi_smc_M00_AXI_ARLEN,
      SLOT_2_AXI_arlen(6) => axi_smc_M00_AXI_ARLEN,
      SLOT_2_AXI_arlen(5) => axi_smc_M00_AXI_ARLEN,
      SLOT_2_AXI_arlen(4) => axi_smc_M00_AXI_ARLEN,
      SLOT_2_AXI_arlen(3) => axi_smc_M00_AXI_ARLEN,
      SLOT_2_AXI_arlen(2) => axi_smc_M00_AXI_ARLEN,
      SLOT_2_AXI_arlen(1) => axi_smc_M00_AXI_ARLEN,
      SLOT_2_AXI_arlen(0) => axi_smc_M00_AXI_ARLEN,
      SLOT_2_AXI_arlock(0) => axi_smc_M00_AXI_ARLOCK,
      SLOT_2_AXI_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      SLOT_2_AXI_arqos(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      SLOT_2_AXI_arready => '0',
      SLOT_2_AXI_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      SLOT_2_AXI_arvalid => axi_smc_M00_AXI_ARVALID(0),
      SLOT_2_AXI_awaddr(48 downto 0) => axi_smc_M00_AXI_AWADDR(48 downto 0),
      SLOT_2_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      SLOT_2_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      SLOT_2_AXI_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      SLOT_2_AXI_awlock(0) => axi_smc_M00_AXI_AWLOCK(0),
      SLOT_2_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      SLOT_2_AXI_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      SLOT_2_AXI_awready => axi_smc_M00_AXI_AWREADY,
      SLOT_2_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      SLOT_2_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      SLOT_2_AXI_bready => axi_smc_M00_AXI_BREADY,
      SLOT_2_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      SLOT_2_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      SLOT_2_AXI_rdata(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      SLOT_2_AXI_rlast => '0',
      SLOT_2_AXI_rready => axi_smc_M00_AXI_RREADY(0),
      SLOT_2_AXI_rvalid => '0',
      SLOT_2_AXI_wdata(127 downto 0) => axi_smc_M00_AXI_WDATA(127 downto 0),
      SLOT_2_AXI_wlast => axi_smc_M00_AXI_WLAST,
      SLOT_2_AXI_wready => axi_smc_M00_AXI_WREADY,
      SLOT_2_AXI_wstrb(15 downto 0) => axi_smc_M00_AXI_WSTRB(15 downto 0),
      SLOT_2_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      clk => clk_wiz_0_clk_out1,
      resetn => proc_sys_reset_0_peripheral_aresetn(0)
    );
Receiver_0: component PYNQ_Design_Receiver_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      m_axis_tdata(31 downto 0) => DUT_0_m_axis_TDATA(31 downto 0),
      m_axis_tlast(0) => DUT_0_m_axis_TLAST(0),
      m_axis_tready(0) => DUT_0_m_axis_TREADY,
      m_axis_tvalid(0) => DUT_0_m_axis_TVALID(0),
      s_axis_tdata(15 downto 0) => usp_rf_data_converter_0_m00_axis_TDATA(15 downto 0),
      s_axis_tlast(0) => '0',
      s_axis_tready(0) => usp_rf_data_converter_0_m00_axis_TREADY(0),
      s_axis_tvalid(0) => usp_rf_data_converter_0_m00_axis_TVALID(0),
      step_size(15 downto 0) => xlconstant_1_dout(15 downto 0)
    );
axi_dma_rx: component PYNQ_Design_axi_dma_0_0
     port map (
      axi_resetn => proc_sys_reset_0_peripheral_aresetn(0),
      m_axi_s2mm_aclk => clk_wiz_0_clk_out1,
      m_axi_s2mm_awaddr(63 downto 0) => axi_dma_rx_M_AXI_S2MM_AWADDR(63 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_rx_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_rx_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_rx_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_rx_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_rx_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_rx_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_rx_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_rx_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_rx_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_rx_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(127 downto 0) => axi_dma_rx_M_AXI_S2MM_WDATA(127 downto 0),
      m_axi_s2mm_wlast => axi_dma_rx_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_rx_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(15 downto 0) => axi_dma_rx_M_AXI_S2MM_WSTRB(15 downto 0),
      m_axi_s2mm_wvalid => axi_dma_rx_M_AXI_S2MM_WVALID,
      s2mm_introut => NLW_axi_dma_rx_s2mm_introut_UNCONNECTED,
      s2mm_prmry_reset_out_n => NLW_axi_dma_rx_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => clk_wiz_0_clk_out1,
      s_axi_lite_araddr(9 downto 0) => ps8_0_axi_periph_M01_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => ps8_0_axi_periph_M01_AXI_ARREADY,
      s_axi_lite_arvalid => ps8_0_axi_periph_M01_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => ps8_0_axi_periph_M01_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => ps8_0_axi_periph_M01_AXI_AWREADY,
      s_axi_lite_awvalid => ps8_0_axi_periph_M01_AXI_AWVALID,
      s_axi_lite_bready => ps8_0_axi_periph_M01_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => ps8_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => ps8_0_axi_periph_M01_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => ps8_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => ps8_0_axi_periph_M01_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => ps8_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => ps8_0_axi_periph_M01_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => ps8_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => ps8_0_axi_periph_M01_AXI_WREADY,
      s_axi_lite_wvalid => ps8_0_axi_periph_M01_AXI_WVALID,
      s_axis_s2mm_tdata(15 downto 0) => DUT_0_m_axis_TDATA(15 downto 0),
      s_axis_s2mm_tkeep(1 downto 0) => B"11",
      s_axis_s2mm_tlast => DUT_0_m_axis_TLAST(0),
      s_axis_s2mm_tready => DUT_0_m_axis_TREADY,
      s_axis_s2mm_tvalid => DUT_0_m_axis_TVALID(0)
    );
axi_smc: component PYNQ_Design_axi_smc_2
     port map (
      M00_AXI_awaddr(48 downto 0) => axi_smc_M00_AXI_AWADDR(48 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_smc_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_smc_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      M00_AXI_wdata(127 downto 0) => axi_smc_M00_AXI_WDATA(127 downto 0),
      M00_AXI_wlast => axi_smc_M00_AXI_WLAST,
      M00_AXI_wready => axi_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(15 downto 0) => axi_smc_M00_AXI_WSTRB(15 downto 0),
      M00_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      S00_AXI_awaddr(63 downto 0) => axi_dma_rx_M_AXI_S2MM_AWADDR(63 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_dma_rx_M_AXI_S2MM_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_dma_rx_M_AXI_S2MM_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_dma_rx_M_AXI_S2MM_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => '0',
      S00_AXI_awprot(2 downto 0) => axi_dma_rx_M_AXI_S2MM_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => B"0000",
      S00_AXI_awready => axi_dma_rx_M_AXI_S2MM_AWREADY,
      S00_AXI_awsize(2 downto 0) => axi_dma_rx_M_AXI_S2MM_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_dma_rx_M_AXI_S2MM_AWVALID,
      S00_AXI_bready => axi_dma_rx_M_AXI_S2MM_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_dma_rx_M_AXI_S2MM_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_dma_rx_M_AXI_S2MM_BVALID,
      S00_AXI_wdata(127 downto 0) => axi_dma_rx_M_AXI_S2MM_WDATA(127 downto 0),
      S00_AXI_wlast => axi_dma_rx_M_AXI_S2MM_WLAST,
      S00_AXI_wready => axi_dma_rx_M_AXI_S2MM_WREADY,
      S00_AXI_wstrb(15 downto 0) => axi_dma_rx_M_AXI_S2MM_WSTRB(15 downto 0),
      S00_AXI_wvalid => axi_dma_rx_M_AXI_S2MM_WVALID,
      aclk => clk_wiz_0_clk_out1,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0)
    );
clk_wiz_0: component PYNQ_Design_clk_wiz_0_0
     port map (
      clk_in1 => usp_rf_data_converter_0_clk_adc0,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => clk_wiz_0_locked,
      resetn => rst_ps8_0_96M_peripheral_aresetn
    );
proc_sys_reset_0: component PYNQ_Design_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => rst_ps8_0_96M_peripheral_aresetn,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
xlconstant_1: component PYNQ_Design_xlconstant_0_1
     port map (
      dout(15 downto 0) => xlconstant_1_dout(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TX_imp_1A0AJCC is
  port (
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 48 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC;
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    SLOT_1_AXIS_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_1_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXIS_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S_AXI_LITE_arready : out STD_LOGIC;
    S_AXI_LITE_arvalid : in STD_LOGIC;
    S_AXI_LITE_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S_AXI_LITE_awready : out STD_LOGIC;
    S_AXI_LITE_awvalid : in STD_LOGIC;
    S_AXI_LITE_bready : in STD_LOGIC;
    S_AXI_LITE_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_bvalid : out STD_LOGIC;
    S_AXI_LITE_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_rready : in STD_LOGIC;
    S_AXI_LITE_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_rvalid : out STD_LOGIC;
    S_AXI_LITE_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_wready : out STD_LOGIC;
    S_AXI_LITE_wvalid : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end TX_imp_1A0AJCC;

architecture STRUCTURE of TX_imp_1A0AJCC is
  component PYNQ_Design_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component PYNQ_Design_xlconstant_0_0;
  component PYNQ_Design_axi_dma_1 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    mm2s_introut : out STD_LOGIC
  );
  end component PYNQ_Design_axi_dma_1;
  component PYNQ_Design_proc_sys_reset_1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component PYNQ_Design_proc_sys_reset_1_0;
  component PYNQ_Design_axi_smc_1_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 48 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component PYNQ_Design_axi_smc_1_0;
  component PYNQ_Design_system_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_1_AXIS_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_1_AXIS_tlast : in STD_LOGIC;
    SLOT_1_AXIS_tvalid : in STD_LOGIC;
    SLOT_1_AXIS_tready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component PYNQ_Design_system_ila_0_0;
  component PYNQ_Design_Data_generation_0_0 is
  port (
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    mux_en : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component PYNQ_Design_Data_generation_0_0;
  signal DUT_data_in_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute CONN_BUS_INFO : string;
  attribute CONN_BUS_INFO of DUT_data_in_0_m_axis_TDATA : signal is "DUT_data_in_0_m_axis xilinx.com:interface:axis:1.0 None TDATA";
  attribute DEBUG : string;
  attribute DEBUG of DUT_data_in_0_m_axis_TDATA : signal is "true";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of DUT_data_in_0_m_axis_TDATA : signal is std.standard.true;
  signal DUT_data_in_0_m_axis_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of DUT_data_in_0_m_axis_TLAST : signal is "DUT_data_in_0_m_axis xilinx.com:interface:axis:1.0 None TLAST";
  attribute DEBUG of DUT_data_in_0_m_axis_TLAST : signal is "true";
  attribute DONT_TOUCH of DUT_data_in_0_m_axis_TLAST : signal is std.standard.true;
  signal DUT_data_in_0_m_axis_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of DUT_data_in_0_m_axis_TREADY : signal is "DUT_data_in_0_m_axis xilinx.com:interface:axis:1.0 None TREADY";
  attribute DEBUG of DUT_data_in_0_m_axis_TREADY : signal is "true";
  attribute DONT_TOUCH of DUT_data_in_0_m_axis_TREADY : signal is std.standard.true;
  signal DUT_data_in_0_m_axis_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of DUT_data_in_0_m_axis_TVALID : signal is "DUT_data_in_0_m_axis xilinx.com:interface:axis:1.0 None TVALID";
  attribute DEBUG of DUT_data_in_0_m_axis_TVALID : signal is "true";
  attribute DONT_TOUCH of DUT_data_in_0_m_axis_TVALID : signal is std.standard.true;
  signal axi_dma_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of axi_dma_M_AXIS_MM2S_TDATA : signal is "axi_dma_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TDATA";
  attribute DEBUG of axi_dma_M_AXIS_MM2S_TDATA : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of axi_dma_M_AXIS_MM2S_TDATA : signal is std.standard.true;
  signal axi_dma_M_AXIS_MM2S_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_dma_M_AXIS_MM2S_TKEEP : signal is "axi_dma_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TKEEP";
  attribute DEBUG of axi_dma_M_AXIS_MM2S_TKEEP : signal is "true";
  attribute MARK_DEBUG of axi_dma_M_AXIS_MM2S_TKEEP : signal is std.standard.true;
  signal axi_dma_M_AXIS_MM2S_TLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_dma_M_AXIS_MM2S_TLAST : signal is "axi_dma_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TLAST";
  attribute DEBUG of axi_dma_M_AXIS_MM2S_TLAST : signal is "true";
  attribute MARK_DEBUG of axi_dma_M_AXIS_MM2S_TLAST : signal is std.standard.true;
  signal axi_dma_M_AXIS_MM2S_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of axi_dma_M_AXIS_MM2S_TREADY : signal is "axi_dma_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TREADY";
  attribute DEBUG of axi_dma_M_AXIS_MM2S_TREADY : signal is "true";
  attribute MARK_DEBUG of axi_dma_M_AXIS_MM2S_TREADY : signal is std.standard.true;
  signal axi_dma_M_AXIS_MM2S_TVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_dma_M_AXIS_MM2S_TVALID : signal is "axi_dma_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TVALID";
  attribute DEBUG of axi_dma_M_AXIS_MM2S_TVALID : signal is "true";
  attribute MARK_DEBUG of axi_dma_M_AXIS_MM2S_TVALID : signal is std.standard.true;
  signal axi_dma_tx_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_tx_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_tx_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_tx_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_tx_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_tx_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_dma_tx_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_tx_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_tx_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_dma_tx_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_dma_tx_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_tx_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_tx_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_smc_1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 48 downto 0 );
  signal axi_smc_1_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_1_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_1_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_1_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_smc_1_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_1_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_1_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_1_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_1_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_smc_1_M00_AXI_RLAST : STD_LOGIC;
  signal axi_smc_1_M00_AXI_RREADY : STD_LOGIC;
  signal axi_smc_1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_1_M00_AXI_RVALID : STD_LOGIC;
  signal proc_sys_reset_1_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal usp_rf_data_converter_0_clk_dac0 : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_0_pl_resetn0 : STD_LOGIC;
  signal NLW_axi_dma_tx_mm2s_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_tx_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  DUT_data_in_0_m_axis_TREADY(0) <= SLOT_1_AXIS_tready(0);
  M00_AXI_araddr(48 downto 0) <= axi_smc_1_M00_AXI_ARADDR(48 downto 0);
  M00_AXI_arburst(1 downto 0) <= axi_smc_1_M00_AXI_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= axi_smc_1_M00_AXI_ARCACHE(3 downto 0);
  M00_AXI_arlen(7 downto 0) <= axi_smc_1_M00_AXI_ARLEN(7 downto 0);
  M00_AXI_arlock <= axi_smc_1_M00_AXI_ARLOCK(0);
  M00_AXI_arprot(2 downto 0) <= axi_smc_1_M00_AXI_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= axi_smc_1_M00_AXI_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= axi_smc_1_M00_AXI_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= axi_smc_1_M00_AXI_ARVALID;
  M00_AXI_rready <= axi_smc_1_M00_AXI_RREADY;
  SLOT_1_AXIS_tdata(15 downto 0) <= DUT_data_in_0_m_axis_TDATA(15 downto 0);
  SLOT_1_AXIS_tlast(0) <= DUT_data_in_0_m_axis_TLAST(0);
  SLOT_1_AXIS_tvalid(0) <= DUT_data_in_0_m_axis_TVALID(0);
  S_AXI_LITE_arready <= ps8_0_axi_periph_M00_AXI_ARREADY;
  S_AXI_LITE_awready <= ps8_0_axi_periph_M00_AXI_AWREADY;
  S_AXI_LITE_bresp(1 downto 0) <= ps8_0_axi_periph_M00_AXI_BRESP(1 downto 0);
  S_AXI_LITE_bvalid <= ps8_0_axi_periph_M00_AXI_BVALID;
  S_AXI_LITE_rdata(31 downto 0) <= ps8_0_axi_periph_M00_AXI_RDATA(31 downto 0);
  S_AXI_LITE_rresp(1 downto 0) <= ps8_0_axi_periph_M00_AXI_RRESP(1 downto 0);
  S_AXI_LITE_rvalid <= ps8_0_axi_periph_M00_AXI_RVALID;
  S_AXI_LITE_wready <= ps8_0_axi_periph_M00_AXI_WREADY;
  axi_smc_1_M00_AXI_ARREADY <= M00_AXI_arready;
  axi_smc_1_M00_AXI_RDATA(127 downto 0) <= M00_AXI_rdata(127 downto 0);
  axi_smc_1_M00_AXI_RLAST <= M00_AXI_rlast;
  axi_smc_1_M00_AXI_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  axi_smc_1_M00_AXI_RVALID <= M00_AXI_rvalid;
  peripheral_aresetn(0) <= proc_sys_reset_1_peripheral_aresetn(0);
  ps8_0_axi_periph_M00_AXI_ARADDR(9 downto 0) <= S_AXI_LITE_araddr(9 downto 0);
  ps8_0_axi_periph_M00_AXI_ARVALID <= S_AXI_LITE_arvalid;
  ps8_0_axi_periph_M00_AXI_AWADDR(9 downto 0) <= S_AXI_LITE_awaddr(9 downto 0);
  ps8_0_axi_periph_M00_AXI_AWVALID <= S_AXI_LITE_awvalid;
  ps8_0_axi_periph_M00_AXI_BREADY <= S_AXI_LITE_bready;
  ps8_0_axi_periph_M00_AXI_RREADY <= S_AXI_LITE_rready;
  ps8_0_axi_periph_M00_AXI_WDATA(31 downto 0) <= S_AXI_LITE_wdata(31 downto 0);
  ps8_0_axi_periph_M00_AXI_WVALID <= S_AXI_LITE_wvalid;
  usp_rf_data_converter_0_clk_dac0 <= m_axi_mm2s_aclk;
  zynq_ultra_ps_e_0_pl_resetn0 <= ext_reset_in;
Data_generation_0: component PYNQ_Design_Data_generation_0_0
     port map (
      clk => usp_rf_data_converter_0_clk_dac0,
      m_axis_tdata(15 downto 0) => DUT_data_in_0_m_axis_TDATA(15 downto 0),
      m_axis_tlast(0) => DUT_data_in_0_m_axis_TLAST(0),
      m_axis_tready(0) => DUT_data_in_0_m_axis_TREADY(0),
      m_axis_tvalid(0) => DUT_data_in_0_m_axis_TVALID(0),
      mux_en(0) => xlconstant_0_dout(0),
      s_axis_tdata(0) => axi_dma_M_AXIS_MM2S_TDATA(0),
      s_axis_tlast(0) => axi_dma_M_AXIS_MM2S_TLAST,
      s_axis_tready(0) => axi_dma_M_AXIS_MM2S_TREADY(0),
      s_axis_tvalid(0) => axi_dma_M_AXIS_MM2S_TVALID
    );
TX_ILA: component PYNQ_Design_system_ila_0_0
     port map (
      SLOT_0_AXIS_tdata(31 downto 0) => axi_dma_M_AXIS_MM2S_TDATA(31 downto 0),
      SLOT_0_AXIS_tkeep(3 downto 0) => axi_dma_M_AXIS_MM2S_TKEEP(3 downto 0),
      SLOT_0_AXIS_tlast => axi_dma_M_AXIS_MM2S_TLAST,
      SLOT_0_AXIS_tready => axi_dma_M_AXIS_MM2S_TREADY(0),
      SLOT_0_AXIS_tvalid => axi_dma_M_AXIS_MM2S_TVALID,
      SLOT_1_AXIS_tdata(15 downto 0) => DUT_data_in_0_m_axis_TDATA(15 downto 0),
      SLOT_1_AXIS_tlast => DUT_data_in_0_m_axis_TLAST(0),
      SLOT_1_AXIS_tready => DUT_data_in_0_m_axis_TREADY(0),
      SLOT_1_AXIS_tvalid => DUT_data_in_0_m_axis_TVALID(0),
      clk => usp_rf_data_converter_0_clk_dac0,
      resetn => proc_sys_reset_1_peripheral_aresetn(0)
    );
axi_dma_tx: component PYNQ_Design_axi_dma_1
     port map (
      axi_resetn => proc_sys_reset_1_peripheral_aresetn(0),
      m_axi_mm2s_aclk => usp_rf_data_converter_0_clk_dac0,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_tx_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_tx_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_tx_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_tx_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_tx_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_tx_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_tx_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_tx_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(127 downto 0) => axi_dma_tx_M_AXI_MM2S_RDATA(127 downto 0),
      m_axi_mm2s_rlast => axi_dma_tx_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_dma_tx_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_tx_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_tx_M_AXI_MM2S_RVALID,
      m_axis_mm2s_tdata(31 downto 0) => axi_dma_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => axi_dma_M_AXIS_MM2S_TKEEP(3 downto 0),
      m_axis_mm2s_tlast => axi_dma_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_dma_M_AXIS_MM2S_TREADY(0),
      m_axis_mm2s_tvalid => axi_dma_M_AXIS_MM2S_TVALID,
      mm2s_introut => NLW_axi_dma_tx_mm2s_introut_UNCONNECTED,
      mm2s_prmry_reset_out_n => NLW_axi_dma_tx_mm2s_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => usp_rf_data_converter_0_clk_dac0,
      s_axi_lite_araddr(9 downto 0) => ps8_0_axi_periph_M00_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => ps8_0_axi_periph_M00_AXI_ARREADY,
      s_axi_lite_arvalid => ps8_0_axi_periph_M00_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => ps8_0_axi_periph_M00_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => ps8_0_axi_periph_M00_AXI_AWREADY,
      s_axi_lite_awvalid => ps8_0_axi_periph_M00_AXI_AWVALID,
      s_axi_lite_bready => ps8_0_axi_periph_M00_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => ps8_0_axi_periph_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => ps8_0_axi_periph_M00_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => ps8_0_axi_periph_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => ps8_0_axi_periph_M00_AXI_WREADY,
      s_axi_lite_wvalid => ps8_0_axi_periph_M00_AXI_WVALID
    );
axi_smc_1: component PYNQ_Design_axi_smc_1_0
     port map (
      M00_AXI_araddr(48 downto 0) => axi_smc_1_M00_AXI_ARADDR(48 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_smc_1_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_smc_1_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_smc_1_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_smc_1_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => axi_smc_1_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_smc_1_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_smc_1_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_smc_1_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_smc_1_M00_AXI_ARVALID,
      M00_AXI_rdata(127 downto 0) => axi_smc_1_M00_AXI_RDATA(127 downto 0),
      M00_AXI_rlast => axi_smc_1_M00_AXI_RLAST,
      M00_AXI_rready => axi_smc_1_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_smc_1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_smc_1_M00_AXI_RVALID,
      S00_AXI_araddr(31 downto 0) => axi_dma_tx_M_AXI_MM2S_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_dma_tx_M_AXI_MM2S_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_dma_tx_M_AXI_MM2S_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_dma_tx_M_AXI_MM2S_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => '0',
      S00_AXI_arprot(2 downto 0) => axi_dma_tx_M_AXI_MM2S_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => B"0000",
      S00_AXI_arready => axi_dma_tx_M_AXI_MM2S_ARREADY,
      S00_AXI_arsize(2 downto 0) => axi_dma_tx_M_AXI_MM2S_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_dma_tx_M_AXI_MM2S_ARVALID,
      S00_AXI_rdata(127 downto 0) => axi_dma_tx_M_AXI_MM2S_RDATA(127 downto 0),
      S00_AXI_rlast => axi_dma_tx_M_AXI_MM2S_RLAST,
      S00_AXI_rready => axi_dma_tx_M_AXI_MM2S_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_dma_tx_M_AXI_MM2S_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_dma_tx_M_AXI_MM2S_RVALID,
      aclk => usp_rf_data_converter_0_clk_dac0,
      aresetn => proc_sys_reset_1_peripheral_aresetn(0)
    );
proc_sys_reset_1: component PYNQ_Design_proc_sys_reset_1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => zynq_ultra_ps_e_0_pl_resetn0,
      interconnect_aresetn(0) => NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_1_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => usp_rf_data_converter_0_clk_dac0
    );
xlconstant_0: component PYNQ_Design_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1Y83KYE is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1Y83KYE;

architecture STRUCTURE of m00_couplers_imp_1Y83KYE is
  component PYNQ_Design_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component PYNQ_Design_auto_cc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal auto_cc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal auto_cc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(9 downto 0) <= auto_cc_to_m00_couplers_ARADDR(9 downto 0);
  M_AXI_arvalid <= auto_cc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(9 downto 0) <= auto_cc_to_m00_couplers_AWADDR(9 downto 0);
  M_AXI_awvalid <= auto_cc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_cc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= auto_cc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_cc_WREADY;
  auto_cc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_cc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m00_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_cc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m00_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component PYNQ_Design_auto_cc_0
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(9 downto 0) => auto_cc_to_m00_couplers_ARADDR(9 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_cc_to_m00_couplers_ARREADY,
      m_axi_arvalid => auto_cc_to_m00_couplers_ARVALID,
      m_axi_awaddr(9 downto 0) => auto_cc_to_m00_couplers_AWADDR(9 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_cc_to_m00_couplers_AWREADY,
      m_axi_awvalid => auto_cc_to_m00_couplers_AWVALID,
      m_axi_bready => auto_cc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => NLW_auto_cc_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => auto_cc_to_m00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(9 downto 0) => m00_couplers_to_auto_cc_ARADDR(9 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m00_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m00_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(9 downto 0) => m00_couplers_to_auto_cc_AWADDR(9 downto 0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m00_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m00_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m00_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m00_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m00_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_REI0Y0 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_REI0Y0;

architecture STRUCTURE of m01_couplers_imp_REI0Y0 is
  component PYNQ_Design_auto_cc_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component PYNQ_Design_auto_cc_1;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal auto_cc_to_m01_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_m01_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal auto_cc_to_m01_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_m01_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_m01_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m01_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m01_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m01_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m01_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_m01_couplers_WVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(9 downto 0) <= auto_cc_to_m01_couplers_ARADDR(9 downto 0);
  M_AXI_arvalid <= auto_cc_to_m01_couplers_ARVALID;
  M_AXI_awaddr(9 downto 0) <= auto_cc_to_m01_couplers_AWADDR(9 downto 0);
  M_AXI_awvalid <= auto_cc_to_m01_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_m01_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_cc_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= auto_cc_to_m01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m01_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m01_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m01_couplers_to_auto_cc_WREADY;
  auto_cc_to_m01_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_m01_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_m01_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_m01_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_auto_cc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m01_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_auto_cc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m01_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m01_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m01_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component PYNQ_Design_auto_cc_1
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(9 downto 0) => auto_cc_to_m01_couplers_ARADDR(9 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_cc_to_m01_couplers_ARREADY,
      m_axi_arvalid => auto_cc_to_m01_couplers_ARVALID,
      m_axi_awaddr(9 downto 0) => auto_cc_to_m01_couplers_AWADDR(9 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_cc_to_m01_couplers_AWREADY,
      m_axi_awvalid => auto_cc_to_m01_couplers_AWVALID,
      m_axi_bready => auto_cc_to_m01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m01_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m01_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m01_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m01_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => NLW_auto_cc_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => auto_cc_to_m01_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(9 downto 0) => m01_couplers_to_auto_cc_ARADDR(9 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arprot(2 downto 0) => m01_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m01_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m01_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(9 downto 0) => m01_couplers_to_auto_cc_AWADDR(9 downto 0),
      s_axi_awprot(2 downto 0) => m01_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m01_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m01_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m01_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m01_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m01_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m01_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m01_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m01_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m01_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m01_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m01_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m01_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m01_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_76BH63 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_76BH63;

architecture STRUCTURE of m02_couplers_imp_76BH63 is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(39 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(39 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_4QTF46 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_4QTF46;

architecture STRUCTURE of s00_couplers_imp_4QTF46 is
  component PYNQ_Design_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component PYNQ_Design_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= auto_pc_to_s00_couplers_ARADDR(39 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= auto_pc_to_s00_couplers_AWADDR(39 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(15 downto 0) <= s00_couplers_to_auto_pc_BID(15 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(15 downto 0) <= s00_couplers_to_auto_pc_RID(15 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(15 downto 0) <= S_AXI_arid(15 downto 0);
  s00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(15 downto 0) <= S_AXI_awid(15 downto 0);
  s00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component PYNQ_Design_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(39 downto 0) => auto_pc_to_s00_couplers_ARADDR(39 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_pc_to_s00_couplers_AWADDR(39 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(39 downto 0) => s00_couplers_to_auto_pc_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(15 downto 0) => s00_couplers_to_auto_pc_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_auto_pc_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => s00_couplers_to_auto_pc_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(15 downto 0) => s00_couplers_to_auto_pc_BID(15 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(15 downto 0) => s00_couplers_to_auto_pc_RID(15 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PYNQ_Design_ps8_0_axi_periph_2 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end PYNQ_Design_ps8_0_axi_periph_2;

architecture STRUCTURE of PYNQ_Design_ps8_0_axi_periph_2 is
  component PYNQ_Design_xbar_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component PYNQ_Design_xbar_2;
  component PYNQ_Design_s00_mmu_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component PYNQ_Design_s00_mmu_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S00_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S00_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_ARLOCK : STD_LOGIC;
  signal S00_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARREADY : STD_LOGIC;
  signal S00_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_1_ARVALID : STD_LOGIC;
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S00_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_AWLOCK : STD_LOGIC;
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC;
  signal S00_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC;
  signal S00_AXI_1_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_1_BREADY : STD_LOGIC;
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC;
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_1_RLAST : STD_LOGIC;
  signal S00_AXI_1_RREADY : STD_LOGIC;
  signal S00_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_RVALID : STD_LOGIC;
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_WLAST : STD_LOGIC;
  signal S00_AXI_1_WREADY : STD_LOGIC;
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC;
  signal m00_couplers_to_ps8_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m00_couplers_to_ps8_0_axi_periph_ARREADY : STD_LOGIC;
  signal m00_couplers_to_ps8_0_axi_periph_ARVALID : STD_LOGIC;
  signal m00_couplers_to_ps8_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m00_couplers_to_ps8_0_axi_periph_AWREADY : STD_LOGIC;
  signal m00_couplers_to_ps8_0_axi_periph_AWVALID : STD_LOGIC;
  signal m00_couplers_to_ps8_0_axi_periph_BREADY : STD_LOGIC;
  signal m00_couplers_to_ps8_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps8_0_axi_periph_BVALID : STD_LOGIC;
  signal m00_couplers_to_ps8_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps8_0_axi_periph_RREADY : STD_LOGIC;
  signal m00_couplers_to_ps8_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps8_0_axi_periph_RVALID : STD_LOGIC;
  signal m00_couplers_to_ps8_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps8_0_axi_periph_WREADY : STD_LOGIC;
  signal m00_couplers_to_ps8_0_axi_periph_WVALID : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_ARREADY : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_ARVALID : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_AWREADY : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_AWVALID : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_BREADY : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_BVALID : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_RREADY : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_RVALID : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_WREADY : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_WVALID : STD_LOGIC;
  signal m02_couplers_to_ps8_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_ps8_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps8_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps8_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_ps8_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps8_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps8_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps8_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps8_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps8_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps8_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps8_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps8_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps8_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps8_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps8_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps8_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_ACLK_net : STD_LOGIC;
  signal ps8_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_mmu_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_mmu_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_mmu_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_mmu_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_ARREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_ARVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_mmu_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_mmu_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_mmu_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_mmu_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_AWREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_AWVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_mmu_M_AXI_BREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_BVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_mmu_M_AXI_RLAST : STD_LOGIC;
  signal s00_mmu_M_AXI_RREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_RVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_WLAST : STD_LOGIC;
  signal s00_mmu_M_AXI_WREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 119 downto 80 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 119 downto 80 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_s00_mmu_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_s00_mmu_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 6 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(9 downto 0) <= m00_couplers_to_ps8_0_axi_periph_ARADDR(9 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_ps8_0_axi_periph_ARVALID;
  M00_AXI_awaddr(9 downto 0) <= m00_couplers_to_ps8_0_axi_periph_AWADDR(9 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_ps8_0_axi_periph_AWVALID;
  M00_AXI_bready <= m00_couplers_to_ps8_0_axi_periph_BREADY;
  M00_AXI_rready <= m00_couplers_to_ps8_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps8_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_ps8_0_axi_periph_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(9 downto 0) <= m01_couplers_to_ps8_0_axi_periph_ARADDR(9 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_ps8_0_axi_periph_ARVALID;
  M01_AXI_awaddr(9 downto 0) <= m01_couplers_to_ps8_0_axi_periph_AWADDR(9 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_ps8_0_axi_periph_AWVALID;
  M01_AXI_bready <= m01_couplers_to_ps8_0_axi_periph_BREADY;
  M01_AXI_rready <= m01_couplers_to_ps8_0_axi_periph_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps8_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_ps8_0_axi_periph_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(39 downto 0) <= m02_couplers_to_ps8_0_axi_periph_ARADDR(39 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_ps8_0_axi_periph_ARVALID(0);
  M02_AXI_awaddr(39 downto 0) <= m02_couplers_to_ps8_0_axi_periph_AWADDR(39 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_ps8_0_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_ps8_0_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_ps8_0_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_ps8_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_ps8_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_ps8_0_axi_periph_WVALID(0);
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_1_ARADDR(39 downto 0) <= S00_AXI_araddr(39 downto 0);
  S00_AXI_1_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  S00_AXI_1_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  S00_AXI_1_ARID(15 downto 0) <= S00_AXI_arid(15 downto 0);
  S00_AXI_1_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  S00_AXI_1_ARLOCK <= S00_AXI_arlock;
  S00_AXI_1_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  S00_AXI_1_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  S00_AXI_1_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  S00_AXI_1_ARUSER(15 downto 0) <= S00_AXI_aruser(15 downto 0);
  S00_AXI_1_ARVALID <= S00_AXI_arvalid;
  S00_AXI_1_AWADDR(39 downto 0) <= S00_AXI_awaddr(39 downto 0);
  S00_AXI_1_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  S00_AXI_1_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  S00_AXI_1_AWID(15 downto 0) <= S00_AXI_awid(15 downto 0);
  S00_AXI_1_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  S00_AXI_1_AWLOCK <= S00_AXI_awlock;
  S00_AXI_1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  S00_AXI_1_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  S00_AXI_1_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  S00_AXI_1_AWUSER(15 downto 0) <= S00_AXI_awuser(15 downto 0);
  S00_AXI_1_AWVALID <= S00_AXI_awvalid;
  S00_AXI_1_BREADY <= S00_AXI_bready;
  S00_AXI_1_RREADY <= S00_AXI_rready;
  S00_AXI_1_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  S00_AXI_1_WLAST <= S00_AXI_wlast;
  S00_AXI_1_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  S00_AXI_1_WVALID <= S00_AXI_wvalid;
  S00_AXI_arready <= S00_AXI_1_ARREADY;
  S00_AXI_awready <= S00_AXI_1_AWREADY;
  S00_AXI_bid(15 downto 0) <= S00_AXI_1_BID(15 downto 0);
  S00_AXI_bresp(1 downto 0) <= S00_AXI_1_BRESP(1 downto 0);
  S00_AXI_bvalid <= S00_AXI_1_BVALID;
  S00_AXI_rdata(31 downto 0) <= S00_AXI_1_RDATA(31 downto 0);
  S00_AXI_rid(15 downto 0) <= S00_AXI_1_RID(15 downto 0);
  S00_AXI_rlast <= S00_AXI_1_RLAST;
  S00_AXI_rresp(1 downto 0) <= S00_AXI_1_RRESP(1 downto 0);
  S00_AXI_rvalid <= S00_AXI_1_RVALID;
  S00_AXI_wready <= S00_AXI_1_WREADY;
  m00_couplers_to_ps8_0_axi_periph_ARREADY <= M00_AXI_arready;
  m00_couplers_to_ps8_0_axi_periph_AWREADY <= M00_AXI_awready;
  m00_couplers_to_ps8_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps8_0_axi_periph_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_ps8_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps8_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps8_0_axi_periph_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_ps8_0_axi_periph_WREADY <= M00_AXI_wready;
  m01_couplers_to_ps8_0_axi_periph_ARREADY <= M01_AXI_arready;
  m01_couplers_to_ps8_0_axi_periph_AWREADY <= M01_AXI_awready;
  m01_couplers_to_ps8_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps8_0_axi_periph_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_ps8_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps8_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps8_0_axi_periph_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_ps8_0_axi_periph_WREADY <= M01_AXI_wready;
  m02_couplers_to_ps8_0_axi_periph_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_ps8_0_axi_periph_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_ps8_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_ps8_0_axi_periph_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_ps8_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_ps8_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_ps8_0_axi_periph_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_ps8_0_axi_periph_WREADY(0) <= M02_AXI_wready(0);
  ps8_0_axi_periph_ACLK_net <= ACLK;
  ps8_0_axi_periph_ARESETN_net <= ARESETN;
m00_couplers: entity work.m00_couplers_imp_1Y83KYE
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(9 downto 0) => m00_couplers_to_ps8_0_axi_periph_ARADDR(9 downto 0),
      M_AXI_arready => m00_couplers_to_ps8_0_axi_periph_ARREADY,
      M_AXI_arvalid => m00_couplers_to_ps8_0_axi_periph_ARVALID,
      M_AXI_awaddr(9 downto 0) => m00_couplers_to_ps8_0_axi_periph_AWADDR(9 downto 0),
      M_AXI_awready => m00_couplers_to_ps8_0_axi_periph_AWREADY,
      M_AXI_awvalid => m00_couplers_to_ps8_0_axi_periph_AWVALID,
      M_AXI_bready => m00_couplers_to_ps8_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps8_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_ps8_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps8_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_ps8_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps8_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_ps8_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps8_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_ps8_0_axi_periph_WREADY,
      M_AXI_wvalid => m00_couplers_to_ps8_0_axi_periph_WVALID,
      S_ACLK => ps8_0_axi_periph_ACLK_net,
      S_ARESETN => ps8_0_axi_periph_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_REI0Y0
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(9 downto 0) => m01_couplers_to_ps8_0_axi_periph_ARADDR(9 downto 0),
      M_AXI_arready => m01_couplers_to_ps8_0_axi_periph_ARREADY,
      M_AXI_arvalid => m01_couplers_to_ps8_0_axi_periph_ARVALID,
      M_AXI_awaddr(9 downto 0) => m01_couplers_to_ps8_0_axi_periph_AWADDR(9 downto 0),
      M_AXI_awready => m01_couplers_to_ps8_0_axi_periph_AWREADY,
      M_AXI_awvalid => m01_couplers_to_ps8_0_axi_periph_AWVALID,
      M_AXI_bready => m01_couplers_to_ps8_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps8_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_ps8_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps8_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_ps8_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps8_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_ps8_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps8_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_ps8_0_axi_periph_WREADY,
      M_AXI_wvalid => m01_couplers_to_ps8_0_axi_periph_WVALID,
      S_ACLK => ps8_0_axi_periph_ACLK_net,
      S_ARESETN => ps8_0_axi_periph_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m01_couplers_ARADDR(79 downto 40),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(39 downto 0) => xbar_to_m01_couplers_AWADDR(79 downto 40),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_76BH63
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(39 downto 0) => m02_couplers_to_ps8_0_axi_periph_ARADDR(39 downto 0),
      M_AXI_arready(0) => m02_couplers_to_ps8_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_ps8_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(39 downto 0) => m02_couplers_to_ps8_0_axi_periph_AWADDR(39 downto 0),
      M_AXI_awready(0) => m02_couplers_to_ps8_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_ps8_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_ps8_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_ps8_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_ps8_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_ps8_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_ps8_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_ps8_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_ps8_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_ps8_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_ps8_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_ps8_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_ps8_0_axi_periph_WVALID(0),
      S_ACLK => ps8_0_axi_periph_ACLK_net,
      S_ARESETN => ps8_0_axi_periph_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m02_couplers_ARADDR(119 downto 80),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(39 downto 0) => xbar_to_m02_couplers_AWADDR(119 downto 80),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
s00_couplers: entity work.s00_couplers_imp_4QTF46
     port map (
      M_ACLK => ps8_0_axi_periph_ACLK_net,
      M_ARESETN => ps8_0_axi_periph_ARESETN_net,
      M_AXI_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(39 downto 0) => s00_mmu_M_AXI_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => s00_mmu_M_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => s00_mmu_M_AXI_ARCACHE(3 downto 0),
      S_AXI_arid(15 downto 0) => s00_mmu_M_AXI_ARID(15 downto 0),
      S_AXI_arlen(7 downto 0) => s00_mmu_M_AXI_ARLEN(7 downto 0),
      S_AXI_arlock(0) => s00_mmu_M_AXI_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => s00_mmu_M_AXI_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => s00_mmu_M_AXI_ARQOS(3 downto 0),
      S_AXI_arready => s00_mmu_M_AXI_ARREADY,
      S_AXI_arsize(2 downto 0) => s00_mmu_M_AXI_ARSIZE(2 downto 0),
      S_AXI_arvalid => s00_mmu_M_AXI_ARVALID,
      S_AXI_awaddr(39 downto 0) => s00_mmu_M_AXI_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => s00_mmu_M_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => s00_mmu_M_AXI_AWCACHE(3 downto 0),
      S_AXI_awid(15 downto 0) => s00_mmu_M_AXI_AWID(15 downto 0),
      S_AXI_awlen(7 downto 0) => s00_mmu_M_AXI_AWLEN(7 downto 0),
      S_AXI_awlock(0) => s00_mmu_M_AXI_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => s00_mmu_M_AXI_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => s00_mmu_M_AXI_AWQOS(3 downto 0),
      S_AXI_awready => s00_mmu_M_AXI_AWREADY,
      S_AXI_awsize(2 downto 0) => s00_mmu_M_AXI_AWSIZE(2 downto 0),
      S_AXI_awvalid => s00_mmu_M_AXI_AWVALID,
      S_AXI_bid(15 downto 0) => s00_mmu_M_AXI_BID(15 downto 0),
      S_AXI_bready => s00_mmu_M_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => s00_mmu_M_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => s00_mmu_M_AXI_BVALID,
      S_AXI_rdata(31 downto 0) => s00_mmu_M_AXI_RDATA(31 downto 0),
      S_AXI_rid(15 downto 0) => s00_mmu_M_AXI_RID(15 downto 0),
      S_AXI_rlast => s00_mmu_M_AXI_RLAST,
      S_AXI_rready => s00_mmu_M_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => s00_mmu_M_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => s00_mmu_M_AXI_RVALID,
      S_AXI_wdata(31 downto 0) => s00_mmu_M_AXI_WDATA(31 downto 0),
      S_AXI_wlast => s00_mmu_M_AXI_WLAST,
      S_AXI_wready => s00_mmu_M_AXI_WREADY,
      S_AXI_wstrb(3 downto 0) => s00_mmu_M_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid => s00_mmu_M_AXI_WVALID
    );
s00_mmu: component PYNQ_Design_s00_mmu_0
     port map (
      aclk => S00_ACLK_1,
      aresetn => S00_ARESETN_1,
      m_axi_araddr(39 downto 0) => s00_mmu_M_AXI_ARADDR(39 downto 0),
      m_axi_arburst(1 downto 0) => s00_mmu_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_mmu_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(15 downto 0) => s00_mmu_M_AXI_ARID(15 downto 0),
      m_axi_arlen(7 downto 0) => s00_mmu_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_mmu_M_AXI_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s00_mmu_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_mmu_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => s00_mmu_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => s00_mmu_M_AXI_ARSIZE(2 downto 0),
      m_axi_aruser(15 downto 0) => NLW_s00_mmu_m_axi_aruser_UNCONNECTED(15 downto 0),
      m_axi_arvalid => s00_mmu_M_AXI_ARVALID,
      m_axi_awaddr(39 downto 0) => s00_mmu_M_AXI_AWADDR(39 downto 0),
      m_axi_awburst(1 downto 0) => s00_mmu_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_mmu_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(15 downto 0) => s00_mmu_M_AXI_AWID(15 downto 0),
      m_axi_awlen(7 downto 0) => s00_mmu_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_mmu_M_AXI_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s00_mmu_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_mmu_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => s00_mmu_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => s00_mmu_M_AXI_AWSIZE(2 downto 0),
      m_axi_awuser(15 downto 0) => NLW_s00_mmu_m_axi_awuser_UNCONNECTED(15 downto 0),
      m_axi_awvalid => s00_mmu_M_AXI_AWVALID,
      m_axi_bid(15 downto 0) => s00_mmu_M_AXI_BID(15 downto 0),
      m_axi_bready => s00_mmu_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => s00_mmu_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => s00_mmu_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => s00_mmu_M_AXI_RDATA(31 downto 0),
      m_axi_rid(15 downto 0) => s00_mmu_M_AXI_RID(15 downto 0),
      m_axi_rlast => s00_mmu_M_AXI_RLAST,
      m_axi_rready => s00_mmu_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => s00_mmu_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => s00_mmu_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => s00_mmu_M_AXI_WDATA(31 downto 0),
      m_axi_wlast => s00_mmu_M_AXI_WLAST,
      m_axi_wready => s00_mmu_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => s00_mmu_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => s00_mmu_M_AXI_WVALID,
      s_axi_araddr(39 downto 0) => S00_AXI_1_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_1_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_1_ARCACHE(3 downto 0),
      s_axi_arid(15 downto 0) => S00_AXI_1_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => S00_AXI_1_ARLEN(7 downto 0),
      s_axi_arlock(0) => S00_AXI_1_ARLOCK,
      s_axi_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => S00_AXI_1_ARQOS(3 downto 0),
      s_axi_arready => S00_AXI_1_ARREADY,
      s_axi_arsize(2 downto 0) => S00_AXI_1_ARSIZE(2 downto 0),
      s_axi_aruser(15 downto 0) => S00_AXI_1_ARUSER(15 downto 0),
      s_axi_arvalid => S00_AXI_1_ARVALID,
      s_axi_awaddr(39 downto 0) => S00_AXI_1_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => S00_AXI_1_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => S00_AXI_1_AWLEN(7 downto 0),
      s_axi_awlock(0) => S00_AXI_1_AWLOCK,
      s_axi_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_1_AWQOS(3 downto 0),
      s_axi_awready => S00_AXI_1_AWREADY,
      s_axi_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      s_axi_awuser(15 downto 0) => S00_AXI_1_AWUSER(15 downto 0),
      s_axi_awvalid => S00_AXI_1_AWVALID,
      s_axi_bid(15 downto 0) => S00_AXI_1_BID(15 downto 0),
      s_axi_bready => S00_AXI_1_BREADY,
      s_axi_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S00_AXI_1_BVALID,
      s_axi_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      s_axi_rid(15 downto 0) => S00_AXI_1_RID(15 downto 0),
      s_axi_rlast => S00_AXI_1_RLAST,
      s_axi_rready => S00_AXI_1_RREADY,
      s_axi_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      s_axi_rvalid => S00_AXI_1_RVALID,
      s_axi_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      s_axi_wlast => S00_AXI_1_WLAST,
      s_axi_wready => S00_AXI_1_WREADY,
      s_axi_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      s_axi_wvalid => S00_AXI_1_WVALID
    );
xbar: component PYNQ_Design_xbar_2
     port map (
      aclk => ps8_0_axi_periph_ACLK_net,
      aresetn => ps8_0_axi_periph_ARESETN_net,
      m_axi_araddr(119 downto 80) => xbar_to_m02_couplers_ARADDR(119 downto 80),
      m_axi_araddr(79 downto 40) => xbar_to_m01_couplers_ARADDR(79 downto 40),
      m_axi_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      m_axi_arprot(8 downto 6) => NLW_xbar_m_axi_arprot_UNCONNECTED(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(119 downto 80) => xbar_to_m02_couplers_AWADDR(119 downto 80),
      m_axi_awaddr(79 downto 40) => xbar_to_m01_couplers_AWADDR(79 downto 40),
      m_axi_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      m_axi_awprot(8 downto 6) => NLW_xbar_m_axi_awprot_UNCONNECTED(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PYNQ_Design is
  port (
    adc0_clk_clk_n : in STD_LOGIC;
    adc0_clk_clk_p : in STD_LOGIC;
    dac0_clk_clk_n : in STD_LOGIC;
    dac0_clk_clk_p : in STD_LOGIC;
    lmk_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    sysref_in_diff_n : in STD_LOGIC;
    sysref_in_diff_p : in STD_LOGIC;
    vin0_01_v_n : in STD_LOGIC;
    vin0_01_v_p : in STD_LOGIC;
    vout00_v_n : out STD_LOGIC;
    vout00_v_p : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of PYNQ_Design : entity is "PYNQ_Design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PYNQ_Design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=29,numReposBlks=22,numNonXlnxBlks=2,numHierBlks=7,maxHierDepth=0,numSysgenBlks=2,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=16,da_axi4_s2mm_cnt=2,da_board_cnt=1,da_clkrst_cnt=16,da_rf_converter_usp_cnt=3,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of PYNQ_Design : entity is "PYNQ_Design.hwdef";
end PYNQ_Design;

architecture STRUCTURE of PYNQ_Design is
  component PYNQ_Design_usp_rf_data_converter_0_0 is
  port (
    adc0_clk_p : in STD_LOGIC;
    adc0_clk_n : in STD_LOGIC;
    clk_adc0 : out STD_LOGIC;
    dac0_clk_p : in STD_LOGIC;
    dac0_clk_n : in STD_LOGIC;
    clk_dac0 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
    sysref_in_p : in STD_LOGIC;
    sysref_in_n : in STD_LOGIC;
    vin0_01_p : in STD_LOGIC;
    vin0_01_n : in STD_LOGIC;
    vout00_p : out STD_LOGIC;
    vout00_n : out STD_LOGIC;
    m0_axis_aresetn : in STD_LOGIC;
    m0_axis_aclk : in STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s0_axis_aresetn : in STD_LOGIC;
    s0_axis_aclk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC
  );
  end component PYNQ_Design_usp_rf_data_converter_0_0;
  component PYNQ_Design_rst_ps8_0_96M_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component PYNQ_Design_rst_ps8_0_96M_1;
  component PYNQ_Design_xlconstant_0_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component PYNQ_Design_xlconstant_0_2;
  component PYNQ_Design_zynq_ultra_ps_e_0_1 is
  port (
    maxihpm0_lpd_aclk : in STD_LOGIC;
    maxigp2_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_awlock : out STD_LOGIC;
    maxigp2_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awvalid : out STD_LOGIC;
    maxigp2_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awready : in STD_LOGIC;
    maxigp2_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_wlast : out STD_LOGIC;
    maxigp2_wvalid : out STD_LOGIC;
    maxigp2_wready : in STD_LOGIC;
    maxigp2_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_bvalid : in STD_LOGIC;
    maxigp2_bready : out STD_LOGIC;
    maxigp2_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_arlock : out STD_LOGIC;
    maxigp2_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arvalid : out STD_LOGIC;
    maxigp2_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_arready : in STD_LOGIC;
    maxigp2_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_rlast : in STD_LOGIC;
    maxigp2_rvalid : in STD_LOGIC;
    maxigp2_rready : out STD_LOGIC;
    maxigp2_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    saxihp0_fpd_aclk : in STD_LOGIC;
    saxigp2_aruser : in STD_LOGIC;
    saxigp2_awuser : in STD_LOGIC;
    saxigp2_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp2_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp2_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_awlock : in STD_LOGIC;
    saxigp2_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_awvalid : in STD_LOGIC;
    saxigp2_awready : out STD_LOGIC;
    saxigp2_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp2_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    saxigp2_wlast : in STD_LOGIC;
    saxigp2_wvalid : in STD_LOGIC;
    saxigp2_wready : out STD_LOGIC;
    saxigp2_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_bvalid : out STD_LOGIC;
    saxigp2_bready : in STD_LOGIC;
    saxigp2_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp2_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp2_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_arlock : in STD_LOGIC;
    saxigp2_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_arvalid : in STD_LOGIC;
    saxigp2_arready : out STD_LOGIC;
    saxigp2_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp2_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_rlast : out STD_LOGIC;
    saxigp2_rvalid : out STD_LOGIC;
    saxigp2_rready : in STD_LOGIC;
    saxigp2_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxihp1_fpd_aclk : in STD_LOGIC;
    saxigp3_aruser : in STD_LOGIC;
    saxigp3_awuser : in STD_LOGIC;
    saxigp3_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp3_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp3_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp3_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp3_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp3_awlock : in STD_LOGIC;
    saxigp3_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp3_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp3_awvalid : in STD_LOGIC;
    saxigp3_awready : out STD_LOGIC;
    saxigp3_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp3_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    saxigp3_wlast : in STD_LOGIC;
    saxigp3_wvalid : in STD_LOGIC;
    saxigp3_wready : out STD_LOGIC;
    saxigp3_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp3_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp3_bvalid : out STD_LOGIC;
    saxigp3_bready : in STD_LOGIC;
    saxigp3_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp3_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp3_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp3_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp3_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp3_arlock : in STD_LOGIC;
    saxigp3_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp3_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp3_arvalid : in STD_LOGIC;
    saxigp3_arready : out STD_LOGIC;
    saxigp3_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp3_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp3_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp3_rlast : out STD_LOGIC;
    saxigp3_rvalid : out STD_LOGIC;
    saxigp3_rready : in STD_LOGIC;
    saxigp3_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp3_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC
  );
  end component PYNQ_Design_zynq_ultra_ps_e_0_1;
  signal DUT_data_in_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG : string;
  attribute DEBUG of DUT_data_in_0_m_axis_TDATA : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of DUT_data_in_0_m_axis_TDATA : signal is std.standard.true;
  signal DUT_data_in_0_m_axis_TREADY : STD_LOGIC;
  attribute DEBUG of DUT_data_in_0_m_axis_TREADY : signal is "true";
  attribute MARK_DEBUG of DUT_data_in_0_m_axis_TREADY : signal is std.standard.true;
  signal DUT_data_in_0_m_axis_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of DUT_data_in_0_m_axis_TVALID : signal is "true";
  attribute MARK_DEBUG of DUT_data_in_0_m_axis_TVALID : signal is std.standard.true;
  signal RX_M00_AXI_ARADDR : STD_LOGIC;
  attribute DEBUG of RX_M00_AXI_ARADDR : signal is "true";
  signal RX_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DEBUG of RX_M00_AXI_ARBURST : signal is "true";
  signal RX_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DEBUG of RX_M00_AXI_ARCACHE : signal is "true";
  signal RX_M00_AXI_ARLEN : STD_LOGIC;
  attribute DEBUG of RX_M00_AXI_ARLEN : signal is "true";
  signal RX_M00_AXI_ARLOCK : STD_LOGIC;
  attribute DEBUG of RX_M00_AXI_ARLOCK : signal is "true";
  signal RX_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DEBUG of RX_M00_AXI_ARPROT : signal is "true";
  signal RX_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DEBUG of RX_M00_AXI_ARQOS : signal is "true";
  signal RX_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DEBUG of RX_M00_AXI_ARSIZE : signal is "true";
  signal RX_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of RX_M00_AXI_ARVALID : signal is "true";
  signal RX_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 48 downto 0 );
  attribute DEBUG of RX_M00_AXI_AWADDR : signal is "true";
  signal RX_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DEBUG of RX_M00_AXI_AWBURST : signal is "true";
  signal RX_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DEBUG of RX_M00_AXI_AWCACHE : signal is "true";
  signal RX_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEBUG of RX_M00_AXI_AWLEN : signal is "true";
  signal RX_M00_AXI_AWLOCK : STD_LOGIC;
  attribute DEBUG of RX_M00_AXI_AWLOCK : signal is "true";
  signal RX_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DEBUG of RX_M00_AXI_AWPROT : signal is "true";
  signal RX_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DEBUG of RX_M00_AXI_AWQOS : signal is "true";
  signal RX_M00_AXI_AWREADY : STD_LOGIC;
  attribute DEBUG of RX_M00_AXI_AWREADY : signal is "true";
  signal RX_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DEBUG of RX_M00_AXI_AWSIZE : signal is "true";
  signal RX_M00_AXI_AWVALID : STD_LOGIC;
  attribute DEBUG of RX_M00_AXI_AWVALID : signal is "true";
  signal RX_M00_AXI_BREADY : STD_LOGIC;
  attribute DEBUG of RX_M00_AXI_BREADY : signal is "true";
  signal RX_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DEBUG of RX_M00_AXI_BRESP : signal is "true";
  signal RX_M00_AXI_BVALID : STD_LOGIC;
  attribute DEBUG of RX_M00_AXI_BVALID : signal is "true";
  signal RX_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of RX_M00_AXI_RREADY : signal is "true";
  signal RX_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute DEBUG of RX_M00_AXI_WDATA : signal is "true";
  signal RX_M00_AXI_WLAST : STD_LOGIC;
  attribute DEBUG of RX_M00_AXI_WLAST : signal is "true";
  signal RX_M00_AXI_WREADY : STD_LOGIC;
  attribute DEBUG of RX_M00_AXI_WREADY : signal is "true";
  signal RX_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG of RX_M00_AXI_WSTRB : signal is "true";
  signal RX_M00_AXI_WVALID : STD_LOGIC;
  attribute DEBUG of RX_M00_AXI_WVALID : signal is "true";
  signal TX_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 48 downto 0 );
  signal TX_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TX_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TX_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TX_M00_AXI_ARLOCK : STD_LOGIC;
  signal TX_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal TX_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TX_M00_AXI_ARREADY : STD_LOGIC;
  signal TX_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal TX_M00_AXI_ARVALID : STD_LOGIC;
  signal TX_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal TX_M00_AXI_RLAST : STD_LOGIC;
  signal TX_M00_AXI_RREADY : STD_LOGIC;
  signal TX_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TX_M00_AXI_RVALID : STD_LOGIC;
  signal adc0_clk_1_CLK_N : STD_LOGIC;
  signal adc0_clk_1_CLK_P : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal dac0_clk_1_CLK_N : STD_LOGIC;
  signal dac0_clk_1_CLK_P : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_1_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps8_0_96M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sysref_in_1_diff_n : STD_LOGIC;
  signal sysref_in_1_diff_p : STD_LOGIC;
  signal usp_rf_data_converter_0_clk_adc0 : STD_LOGIC;
  signal usp_rf_data_converter_0_clk_dac0 : STD_LOGIC;
  signal usp_rf_data_converter_0_m00_axis_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG of usp_rf_data_converter_0_m00_axis_TDATA : signal is "true";
  attribute MARK_DEBUG of usp_rf_data_converter_0_m00_axis_TDATA : signal is std.standard.true;
  signal usp_rf_data_converter_0_m00_axis_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of usp_rf_data_converter_0_m00_axis_TREADY : signal is "true";
  attribute MARK_DEBUG of usp_rf_data_converter_0_m00_axis_TREADY : signal is std.standard.true;
  signal usp_rf_data_converter_0_m00_axis_TVALID : STD_LOGIC;
  attribute DEBUG of usp_rf_data_converter_0_m00_axis_TVALID : signal is "true";
  attribute MARK_DEBUG of usp_rf_data_converter_0_m00_axis_TVALID : signal is std.standard.true;
  signal usp_rf_data_converter_0_vout00_V_N : STD_LOGIC;
  signal usp_rf_data_converter_0_vout00_V_P : STD_LOGIC;
  signal vin0_01_1_V_N : STD_LOGIC;
  signal vin0_01_1_V_P : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_clk0 : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_resetn0 : STD_LOGIC;
  signal NLW_PS_saxigp2_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_PS_saxigp2_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_PS_saxigp2_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_PS_saxigp3_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_PS_saxigp3_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_PS_saxigp3_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_PS_saxigp2_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS_saxigp2_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_PS_saxigp2_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS_saxigp2_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS_saxigp3_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS_saxigp3_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS_saxigp3_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_RFDC_irq_UNCONNECTED : STD_LOGIC;
  signal NLW_TX_SLOT_1_AXIS_tlast_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps8_0_96M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps8_0_96M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps8_0_96M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps8_0_96M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of adc0_clk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 adc0_clk CLK_N";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of adc0_clk_clk_n : signal is "XIL_INTERFACENAME adc0_clk, CAN_DEBUG false, FREQ_HZ 204800000.0";
  attribute X_INTERFACE_INFO of adc0_clk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 adc0_clk CLK_P";
  attribute X_INTERFACE_INFO of dac0_clk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 dac0_clk CLK_N";
  attribute X_INTERFACE_PARAMETER of dac0_clk_clk_n : signal is "XIL_INTERFACENAME dac0_clk, CAN_DEBUG false, FREQ_HZ 204800000.0";
  attribute X_INTERFACE_INFO of dac0_clk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 dac0_clk CLK_P";
  attribute X_INTERFACE_INFO of sysref_in_diff_n : signal is "xilinx.com:display_usp_rf_data_converter:diff_pins:1.0 sysref_in diff_n";
  attribute X_INTERFACE_INFO of sysref_in_diff_p : signal is "xilinx.com:display_usp_rf_data_converter:diff_pins:1.0 sysref_in diff_p";
  attribute X_INTERFACE_INFO of vin0_01_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vin0_01 V_N";
  attribute X_INTERFACE_INFO of vin0_01_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vin0_01 V_P";
  attribute X_INTERFACE_INFO of vout00_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vout00 V_N";
  attribute X_INTERFACE_INFO of vout00_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vout00 V_P";
begin
  adc0_clk_1_CLK_N <= adc0_clk_clk_n;
  adc0_clk_1_CLK_P <= adc0_clk_clk_p;
  dac0_clk_1_CLK_N <= dac0_clk_clk_n;
  dac0_clk_1_CLK_P <= dac0_clk_clk_p;
  lmk_reset(0) <= xlconstant_0_dout(0);
  sysref_in_1_diff_n <= sysref_in_diff_n;
  sysref_in_1_diff_p <= sysref_in_diff_p;
  vin0_01_1_V_N <= vin0_01_v_n;
  vin0_01_1_V_P <= vin0_01_v_p;
  vout00_v_n <= usp_rf_data_converter_0_vout00_V_N;
  vout00_v_p <= usp_rf_data_converter_0_vout00_V_P;
lmk_reset_RnM: component PYNQ_Design_xlconstant_0_2
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
PS: component PYNQ_Design_zynq_ultra_ps_e_0_1
     port map (
      maxigp2_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR(39 downto 0),
      maxigp2_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST(1 downto 0),
      maxigp2_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE(3 downto 0),
      maxigp2_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID(15 downto 0),
      maxigp2_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN(7 downto 0),
      maxigp2_arlock => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK,
      maxigp2_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT(2 downto 0),
      maxigp2_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS(3 downto 0),
      maxigp2_arready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY,
      maxigp2_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE(2 downto 0),
      maxigp2_aruser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER(15 downto 0),
      maxigp2_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID,
      maxigp2_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR(39 downto 0),
      maxigp2_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST(1 downto 0),
      maxigp2_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE(3 downto 0),
      maxigp2_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID(15 downto 0),
      maxigp2_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN(7 downto 0),
      maxigp2_awlock => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK,
      maxigp2_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT(2 downto 0),
      maxigp2_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS(3 downto 0),
      maxigp2_awready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY,
      maxigp2_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE(2 downto 0),
      maxigp2_awuser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER(15 downto 0),
      maxigp2_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID,
      maxigp2_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID(15 downto 0),
      maxigp2_bready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY,
      maxigp2_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP(1 downto 0),
      maxigp2_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID,
      maxigp2_rdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA(31 downto 0),
      maxigp2_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID(15 downto 0),
      maxigp2_rlast => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST,
      maxigp2_rready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY,
      maxigp2_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP(1 downto 0),
      maxigp2_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID,
      maxigp2_wdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA(31 downto 0),
      maxigp2_wlast => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST,
      maxigp2_wready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY,
      maxigp2_wstrb(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB(3 downto 0),
      maxigp2_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID,
      maxihpm0_lpd_aclk => zynq_ultra_ps_e_0_pl_clk0,
      pl_clk0 => zynq_ultra_ps_e_0_pl_clk0,
      pl_resetn0 => zynq_ultra_ps_e_0_pl_resetn0,
      saxigp2_araddr(48) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(47) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(46) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(45) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(44) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(43) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(42) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(41) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(40) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(39) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(38) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(37) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(36) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(35) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(34) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(33) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(32) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(31) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(30) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(29) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(28) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(27) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(26) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(25) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(24) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(23) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(22) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(21) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(20) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(19) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(18) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(17) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(16) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(15) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(14) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(13) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(12) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(11) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(10) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(9) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(8) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(7) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(6) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(5) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(4) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(3) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(2) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(1) => RX_M00_AXI_ARADDR,
      saxigp2_araddr(0) => RX_M00_AXI_ARADDR,
      saxigp2_arburst(1 downto 0) => RX_M00_AXI_ARBURST(1 downto 0),
      saxigp2_arcache(3 downto 0) => RX_M00_AXI_ARCACHE(3 downto 0),
      saxigp2_arid(5 downto 0) => B"000000",
      saxigp2_arlen(7) => RX_M00_AXI_ARLEN,
      saxigp2_arlen(6) => RX_M00_AXI_ARLEN,
      saxigp2_arlen(5) => RX_M00_AXI_ARLEN,
      saxigp2_arlen(4) => RX_M00_AXI_ARLEN,
      saxigp2_arlen(3) => RX_M00_AXI_ARLEN,
      saxigp2_arlen(2) => RX_M00_AXI_ARLEN,
      saxigp2_arlen(1) => RX_M00_AXI_ARLEN,
      saxigp2_arlen(0) => RX_M00_AXI_ARLEN,
      saxigp2_arlock => RX_M00_AXI_ARLOCK,
      saxigp2_arprot(2 downto 0) => RX_M00_AXI_ARPROT(2 downto 0),
      saxigp2_arqos(3 downto 0) => RX_M00_AXI_ARQOS(3 downto 0),
      saxigp2_arready => NLW_PS_saxigp2_arready_UNCONNECTED,
      saxigp2_arsize(2 downto 0) => RX_M00_AXI_ARSIZE(2 downto 0),
      saxigp2_aruser => '0',
      saxigp2_arvalid => RX_M00_AXI_ARVALID(0),
      saxigp2_awaddr(48 downto 0) => RX_M00_AXI_AWADDR(48 downto 0),
      saxigp2_awburst(1 downto 0) => RX_M00_AXI_AWBURST(1 downto 0),
      saxigp2_awcache(3 downto 0) => RX_M00_AXI_AWCACHE(3 downto 0),
      saxigp2_awid(5 downto 0) => B"000000",
      saxigp2_awlen(7 downto 0) => RX_M00_AXI_AWLEN(7 downto 0),
      saxigp2_awlock => RX_M00_AXI_AWLOCK,
      saxigp2_awprot(2 downto 0) => RX_M00_AXI_AWPROT(2 downto 0),
      saxigp2_awqos(3 downto 0) => RX_M00_AXI_AWQOS(3 downto 0),
      saxigp2_awready => RX_M00_AXI_AWREADY,
      saxigp2_awsize(2 downto 0) => RX_M00_AXI_AWSIZE(2 downto 0),
      saxigp2_awuser => '0',
      saxigp2_awvalid => RX_M00_AXI_AWVALID,
      saxigp2_bid(5 downto 0) => NLW_PS_saxigp2_bid_UNCONNECTED(5 downto 0),
      saxigp2_bready => RX_M00_AXI_BREADY,
      saxigp2_bresp(1 downto 0) => RX_M00_AXI_BRESP(1 downto 0),
      saxigp2_bvalid => RX_M00_AXI_BVALID,
      saxigp2_rdata(127 downto 0) => NLW_PS_saxigp2_rdata_UNCONNECTED(127 downto 0),
      saxigp2_rid(5 downto 0) => NLW_PS_saxigp2_rid_UNCONNECTED(5 downto 0),
      saxigp2_rlast => NLW_PS_saxigp2_rlast_UNCONNECTED,
      saxigp2_rready => RX_M00_AXI_RREADY(0),
      saxigp2_rresp(1 downto 0) => NLW_PS_saxigp2_rresp_UNCONNECTED(1 downto 0),
      saxigp2_rvalid => NLW_PS_saxigp2_rvalid_UNCONNECTED,
      saxigp2_wdata(127 downto 0) => RX_M00_AXI_WDATA(127 downto 0),
      saxigp2_wlast => RX_M00_AXI_WLAST,
      saxigp2_wready => RX_M00_AXI_WREADY,
      saxigp2_wstrb(15 downto 0) => RX_M00_AXI_WSTRB(15 downto 0),
      saxigp2_wvalid => RX_M00_AXI_WVALID,
      saxigp3_araddr(48 downto 0) => TX_M00_AXI_ARADDR(48 downto 0),
      saxigp3_arburst(1 downto 0) => TX_M00_AXI_ARBURST(1 downto 0),
      saxigp3_arcache(3 downto 0) => TX_M00_AXI_ARCACHE(3 downto 0),
      saxigp3_arid(5 downto 0) => B"000000",
      saxigp3_arlen(7 downto 0) => TX_M00_AXI_ARLEN(7 downto 0),
      saxigp3_arlock => TX_M00_AXI_ARLOCK,
      saxigp3_arprot(2 downto 0) => TX_M00_AXI_ARPROT(2 downto 0),
      saxigp3_arqos(3 downto 0) => TX_M00_AXI_ARQOS(3 downto 0),
      saxigp3_arready => TX_M00_AXI_ARREADY,
      saxigp3_arsize(2 downto 0) => TX_M00_AXI_ARSIZE(2 downto 0),
      saxigp3_aruser => '0',
      saxigp3_arvalid => TX_M00_AXI_ARVALID,
      saxigp3_awaddr(48 downto 0) => B"0000000000000000000000000000000000000000000000000",
      saxigp3_awburst(1 downto 0) => B"01",
      saxigp3_awcache(3 downto 0) => B"0011",
      saxigp3_awid(5 downto 0) => B"000000",
      saxigp3_awlen(7 downto 0) => B"00000000",
      saxigp3_awlock => '0',
      saxigp3_awprot(2 downto 0) => B"000",
      saxigp3_awqos(3 downto 0) => B"0000",
      saxigp3_awready => NLW_PS_saxigp3_awready_UNCONNECTED,
      saxigp3_awsize(2 downto 0) => B"100",
      saxigp3_awuser => '0',
      saxigp3_awvalid => '0',
      saxigp3_bid(5 downto 0) => NLW_PS_saxigp3_bid_UNCONNECTED(5 downto 0),
      saxigp3_bready => '0',
      saxigp3_bresp(1 downto 0) => NLW_PS_saxigp3_bresp_UNCONNECTED(1 downto 0),
      saxigp3_bvalid => NLW_PS_saxigp3_bvalid_UNCONNECTED,
      saxigp3_rdata(127 downto 0) => TX_M00_AXI_RDATA(127 downto 0),
      saxigp3_rid(5 downto 0) => NLW_PS_saxigp3_rid_UNCONNECTED(5 downto 0),
      saxigp3_rlast => TX_M00_AXI_RLAST,
      saxigp3_rready => TX_M00_AXI_RREADY,
      saxigp3_rresp(1 downto 0) => TX_M00_AXI_RRESP(1 downto 0),
      saxigp3_rvalid => TX_M00_AXI_RVALID,
      saxigp3_wdata(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      saxigp3_wlast => '0',
      saxigp3_wready => NLW_PS_saxigp3_wready_UNCONNECTED,
      saxigp3_wstrb(15 downto 0) => B"1111111111111111",
      saxigp3_wvalid => '0',
      saxihp0_fpd_aclk => clk_wiz_0_clk_out1,
      saxihp1_fpd_aclk => usp_rf_data_converter_0_clk_dac0
    );
RFDC: component PYNQ_Design_usp_rf_data_converter_0_0
     port map (
      adc0_clk_n => adc0_clk_1_CLK_N,
      adc0_clk_p => adc0_clk_1_CLK_P,
      clk_adc0 => usp_rf_data_converter_0_clk_adc0,
      clk_dac0 => usp_rf_data_converter_0_clk_dac0,
      dac0_clk_n => dac0_clk_1_CLK_N,
      dac0_clk_p => dac0_clk_1_CLK_P,
      irq => NLW_RFDC_irq_UNCONNECTED,
      m00_axis_tdata(15 downto 0) => usp_rf_data_converter_0_m00_axis_TDATA(15 downto 0),
      m00_axis_tready => usp_rf_data_converter_0_m00_axis_TREADY(0),
      m00_axis_tvalid => usp_rf_data_converter_0_m00_axis_TVALID,
      m0_axis_aclk => clk_wiz_0_clk_out1,
      m0_axis_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s00_axis_tdata(15 downto 0) => DUT_data_in_0_m_axis_TDATA(15 downto 0),
      s00_axis_tready => DUT_data_in_0_m_axis_TREADY,
      s00_axis_tvalid => DUT_data_in_0_m_axis_TVALID(0),
      s0_axis_aclk => usp_rf_data_converter_0_clk_dac0,
      s0_axis_aresetn => proc_sys_reset_1_peripheral_aresetn(0),
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_araddr(17 downto 0) => ps8_0_axi_periph_M02_AXI_ARADDR(17 downto 0),
      s_axi_aresetn => rst_ps8_0_96M_peripheral_aresetn(0),
      s_axi_arready => ps8_0_axi_periph_M02_AXI_ARREADY,
      s_axi_arvalid => ps8_0_axi_periph_M02_AXI_ARVALID(0),
      s_axi_awaddr(17 downto 0) => ps8_0_axi_periph_M02_AXI_AWADDR(17 downto 0),
      s_axi_awready => ps8_0_axi_periph_M02_AXI_AWREADY,
      s_axi_awvalid => ps8_0_axi_periph_M02_AXI_AWVALID(0),
      s_axi_bready => ps8_0_axi_periph_M02_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps8_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps8_0_axi_periph_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps8_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => ps8_0_axi_periph_M02_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps8_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps8_0_axi_periph_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps8_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => ps8_0_axi_periph_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps8_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps8_0_axi_periph_M02_AXI_WVALID(0),
      sysref_in_n => sysref_in_1_diff_n,
      sysref_in_p => sysref_in_1_diff_p,
      vin0_01_n => vin0_01_1_V_N,
      vin0_01_p => vin0_01_1_V_P,
      vout00_n => usp_rf_data_converter_0_vout00_V_N,
      vout00_p => usp_rf_data_converter_0_vout00_V_P
    );
RX: entity work.RX_imp_1G0MUP
     port map (
      M00_AXI_araddr => RX_M00_AXI_ARADDR,
      M00_AXI_arburst(1 downto 0) => RX_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => RX_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen => RX_M00_AXI_ARLEN,
      M00_AXI_arlock => RX_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => RX_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => RX_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arsize(2 downto 0) => RX_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid(0) => RX_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(48 downto 0) => RX_M00_AXI_AWADDR(48 downto 0),
      M00_AXI_awburst(1 downto 0) => RX_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => RX_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => RX_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock => RX_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => RX_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => RX_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => RX_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => RX_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => RX_M00_AXI_AWVALID,
      M00_AXI_bready => RX_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => RX_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => RX_M00_AXI_BVALID,
      M00_AXI_rready(0) => RX_M00_AXI_RREADY(0),
      M00_AXI_wdata(127 downto 0) => RX_M00_AXI_WDATA(127 downto 0),
      M00_AXI_wlast => RX_M00_AXI_WLAST,
      M00_AXI_wready => RX_M00_AXI_WREADY,
      M00_AXI_wstrb(15 downto 0) => RX_M00_AXI_WSTRB(15 downto 0),
      M00_AXI_wvalid => RX_M00_AXI_WVALID,
      SLOT_1_AXIS_tdata(15 downto 0) => usp_rf_data_converter_0_m00_axis_TDATA(15 downto 0),
      SLOT_1_AXIS_tready(0) => usp_rf_data_converter_0_m00_axis_TREADY(0),
      SLOT_1_AXIS_tvalid(0) => usp_rf_data_converter_0_m00_axis_TVALID,
      S_AXI_LITE_araddr(9 downto 0) => ps8_0_axi_periph_M01_AXI_ARADDR(9 downto 0),
      S_AXI_LITE_arready => ps8_0_axi_periph_M01_AXI_ARREADY,
      S_AXI_LITE_arvalid => ps8_0_axi_periph_M01_AXI_ARVALID,
      S_AXI_LITE_awaddr(9 downto 0) => ps8_0_axi_periph_M01_AXI_AWADDR(9 downto 0),
      S_AXI_LITE_awready => ps8_0_axi_periph_M01_AXI_AWREADY,
      S_AXI_LITE_awvalid => ps8_0_axi_periph_M01_AXI_AWVALID,
      S_AXI_LITE_bready => ps8_0_axi_periph_M01_AXI_BREADY,
      S_AXI_LITE_bresp(1 downto 0) => ps8_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      S_AXI_LITE_bvalid => ps8_0_axi_periph_M01_AXI_BVALID,
      S_AXI_LITE_rdata(31 downto 0) => ps8_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      S_AXI_LITE_rready => ps8_0_axi_periph_M01_AXI_RREADY,
      S_AXI_LITE_rresp(1 downto 0) => ps8_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      S_AXI_LITE_rvalid => ps8_0_axi_periph_M01_AXI_RVALID,
      S_AXI_LITE_wdata(31 downto 0) => ps8_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      S_AXI_LITE_wready => ps8_0_axi_periph_M01_AXI_WREADY,
      S_AXI_LITE_wvalid => ps8_0_axi_periph_M01_AXI_WVALID,
      clk_in1 => usp_rf_data_converter_0_clk_adc0,
      clk_out1 => clk_wiz_0_clk_out1,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      resetn => rst_ps8_0_96M_peripheral_aresetn(0)
    );
TX: entity work.TX_imp_1A0AJCC
     port map (
      M00_AXI_araddr(48 downto 0) => TX_M00_AXI_ARADDR(48 downto 0),
      M00_AXI_arburst(1 downto 0) => TX_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => TX_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => TX_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock => TX_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => TX_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => TX_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => TX_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => TX_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => TX_M00_AXI_ARVALID,
      M00_AXI_rdata(127 downto 0) => TX_M00_AXI_RDATA(127 downto 0),
      M00_AXI_rlast => TX_M00_AXI_RLAST,
      M00_AXI_rready => TX_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => TX_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => TX_M00_AXI_RVALID,
      SLOT_1_AXIS_tdata(15 downto 0) => DUT_data_in_0_m_axis_TDATA(15 downto 0),
      SLOT_1_AXIS_tlast(0) => NLW_TX_SLOT_1_AXIS_tlast_UNCONNECTED(0),
      SLOT_1_AXIS_tready(0) => DUT_data_in_0_m_axis_TREADY,
      SLOT_1_AXIS_tvalid(0) => DUT_data_in_0_m_axis_TVALID(0),
      S_AXI_LITE_araddr(9 downto 0) => ps8_0_axi_periph_M00_AXI_ARADDR(9 downto 0),
      S_AXI_LITE_arready => ps8_0_axi_periph_M00_AXI_ARREADY,
      S_AXI_LITE_arvalid => ps8_0_axi_periph_M00_AXI_ARVALID,
      S_AXI_LITE_awaddr(9 downto 0) => ps8_0_axi_periph_M00_AXI_AWADDR(9 downto 0),
      S_AXI_LITE_awready => ps8_0_axi_periph_M00_AXI_AWREADY,
      S_AXI_LITE_awvalid => ps8_0_axi_periph_M00_AXI_AWVALID,
      S_AXI_LITE_bready => ps8_0_axi_periph_M00_AXI_BREADY,
      S_AXI_LITE_bresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      S_AXI_LITE_bvalid => ps8_0_axi_periph_M00_AXI_BVALID,
      S_AXI_LITE_rdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      S_AXI_LITE_rready => ps8_0_axi_periph_M00_AXI_RREADY,
      S_AXI_LITE_rresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      S_AXI_LITE_rvalid => ps8_0_axi_periph_M00_AXI_RVALID,
      S_AXI_LITE_wdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      S_AXI_LITE_wready => ps8_0_axi_periph_M00_AXI_WREADY,
      S_AXI_LITE_wvalid => ps8_0_axi_periph_M00_AXI_WVALID,
      ext_reset_in => zynq_ultra_ps_e_0_pl_resetn0,
      m_axi_mm2s_aclk => usp_rf_data_converter_0_clk_dac0,
      peripheral_aresetn(0) => proc_sys_reset_1_peripheral_aresetn(0)
    );
ps8_0_axi_periph: entity work.PYNQ_Design_ps8_0_axi_periph_2
     port map (
      ACLK => zynq_ultra_ps_e_0_pl_clk0,
      ARESETN => rst_ps8_0_96M_peripheral_aresetn(0),
      M00_ACLK => usp_rf_data_converter_0_clk_dac0,
      M00_ARESETN => proc_sys_reset_1_peripheral_aresetn(0),
      M00_AXI_araddr(9 downto 0) => ps8_0_axi_periph_M00_AXI_ARADDR(9 downto 0),
      M00_AXI_arready => ps8_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => ps8_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(9 downto 0) => ps8_0_axi_periph_M00_AXI_AWADDR(9 downto 0),
      M00_AXI_awready => ps8_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => ps8_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => ps8_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => ps8_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => ps8_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => ps8_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => ps8_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wvalid => ps8_0_axi_periph_M00_AXI_WVALID,
      M01_ACLK => clk_wiz_0_clk_out1,
      M01_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M01_AXI_araddr(9 downto 0) => ps8_0_axi_periph_M01_AXI_ARADDR(9 downto 0),
      M01_AXI_arready => ps8_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid => ps8_0_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(9 downto 0) => ps8_0_axi_periph_M01_AXI_AWADDR(9 downto 0),
      M01_AXI_awready => ps8_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid => ps8_0_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bready => ps8_0_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => ps8_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => ps8_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps8_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => ps8_0_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => ps8_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => ps8_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps8_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => ps8_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wvalid => ps8_0_axi_periph_M01_AXI_WVALID,
      M02_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M02_ARESETN => rst_ps8_0_96M_peripheral_aresetn(0),
      M02_AXI_araddr(39 downto 0) => ps8_0_axi_periph_M02_AXI_ARADDR(39 downto 0),
      M02_AXI_arready(0) => ps8_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid(0) => ps8_0_axi_periph_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(39 downto 0) => ps8_0_axi_periph_M02_AXI_AWADDR(39 downto 0),
      M02_AXI_awready(0) => ps8_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid(0) => ps8_0_axi_periph_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => ps8_0_axi_periph_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => ps8_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => ps8_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => ps8_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready(0) => ps8_0_axi_periph_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => ps8_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => ps8_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => ps8_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => ps8_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => ps8_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => ps8_0_axi_periph_M02_AXI_WVALID(0),
      S00_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      S00_ARESETN => rst_ps8_0_96M_peripheral_aresetn(0),
      S00_AXI_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN(7 downto 0),
      S00_AXI_arlock => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK,
      S00_AXI_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS(3 downto 0),
      S00_AXI_arready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY,
      S00_AXI_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE(2 downto 0),
      S00_AXI_aruser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER(15 downto 0),
      S00_AXI_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID,
      S00_AXI_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN(7 downto 0),
      S00_AXI_awlock => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK,
      S00_AXI_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS(3 downto 0),
      S00_AXI_awready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY,
      S00_AXI_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE(2 downto 0),
      S00_AXI_awuser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER(15 downto 0),
      S00_AXI_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID,
      S00_AXI_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID(15 downto 0),
      S00_AXI_bready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY,
      S00_AXI_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP(1 downto 0),
      S00_AXI_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID,
      S00_AXI_rdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA(31 downto 0),
      S00_AXI_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID(15 downto 0),
      S00_AXI_rlast => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST,
      S00_AXI_rready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY,
      S00_AXI_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP(1 downto 0),
      S00_AXI_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID,
      S00_AXI_wdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA(31 downto 0),
      S00_AXI_wlast => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST,
      S00_AXI_wready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY,
      S00_AXI_wstrb(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB(3 downto 0),
      S00_AXI_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID
    );
rst_ps8_0_96M: component PYNQ_Design_rst_ps8_0_96M_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps8_0_96M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => zynq_ultra_ps_e_0_pl_resetn0,
      interconnect_aresetn(0) => NLW_rst_ps8_0_96M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps8_0_96M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps8_0_96M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps8_0_96M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => zynq_ultra_ps_e_0_pl_clk0
    );
end STRUCTURE;
