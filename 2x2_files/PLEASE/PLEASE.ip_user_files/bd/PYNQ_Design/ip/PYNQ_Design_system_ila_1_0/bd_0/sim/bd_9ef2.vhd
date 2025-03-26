--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_9ef2.bd
--Design : bd_9ef2
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_9ef2 is
  port (
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_1_AXIS_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_1_AXIS_tlast : in STD_LOGIC;
    SLOT_1_AXIS_tready : in STD_LOGIC;
    SLOT_1_AXIS_tvalid : in STD_LOGIC;
    SLOT_2_AXI_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    SLOT_2_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arready : in STD_LOGIC;
    SLOT_2_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arvalid : in STD_LOGIC;
    SLOT_2_AXI_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    SLOT_2_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awready : in STD_LOGIC;
    SLOT_2_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awvalid : in STD_LOGIC;
    SLOT_2_AXI_bready : in STD_LOGIC;
    SLOT_2_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_bvalid : in STD_LOGIC;
    SLOT_2_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_2_AXI_rlast : in STD_LOGIC;
    SLOT_2_AXI_rready : in STD_LOGIC;
    SLOT_2_AXI_rvalid : in STD_LOGIC;
    SLOT_2_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_2_AXI_wlast : in STD_LOGIC;
    SLOT_2_AXI_wready : in STD_LOGIC;
    SLOT_2_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_2_AXI_wvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_9ef2 : entity is "bd_9ef2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_9ef2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_9ef2 : entity is "PYNQ_Design_system_ila_1_0.hwdef";
end bd_9ef2;

architecture STRUCTURE of bd_9ef2 is
  component bd_9ef2_ila_lib_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 48 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 48 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe33 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_9ef2_ila_lib_0;
  component bd_9ef2_g_inst_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_slot_2_axi_b_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_r_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_aw_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_ar_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axis_tvalid : in STD_LOGIC;
    slot_0_axis_tready : in STD_LOGIC;
    slot_0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axis_tlast : in STD_LOGIC;
    slot_1_axis_tvalid : in STD_LOGIC;
    slot_1_axis_tready : in STD_LOGIC;
    slot_1_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    slot_1_axis_tlast : in STD_LOGIC;
    slot_2_axi_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    slot_2_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_2_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axi_awvalid : in STD_LOGIC;
    slot_2_axi_awready : in STD_LOGIC;
    slot_2_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    slot_2_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    slot_2_axi_wlast : in STD_LOGIC;
    slot_2_axi_wvalid : in STD_LOGIC;
    slot_2_axi_wready : in STD_LOGIC;
    slot_2_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_bvalid : in STD_LOGIC;
    slot_2_axi_bready : in STD_LOGIC;
    slot_2_axi_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    slot_2_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_2_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axi_arvalid : in STD_LOGIC;
    slot_2_axi_arready : in STD_LOGIC;
    slot_2_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    slot_2_axi_rlast : in STD_LOGIC;
    slot_2_axi_rvalid : in STD_LOGIC;
    slot_2_axi_rready : in STD_LOGIC;
    m_slot_0_axis_tvalid : out STD_LOGIC;
    m_slot_0_axis_tready : out STD_LOGIC;
    m_slot_0_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_0_axis_tlast : out STD_LOGIC;
    m_slot_1_axis_tvalid : out STD_LOGIC;
    m_slot_1_axis_tready : out STD_LOGIC;
    m_slot_1_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_slot_1_axis_tlast : out STD_LOGIC;
    m_slot_2_axi_awaddr : out STD_LOGIC_VECTOR ( 48 downto 0 );
    m_slot_2_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_2_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_2_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_2_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_slot_2_axi_awvalid : out STD_LOGIC;
    m_slot_2_axi_awready : out STD_LOGIC;
    m_slot_2_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_slot_2_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_slot_2_axi_wlast : out STD_LOGIC;
    m_slot_2_axi_wvalid : out STD_LOGIC;
    m_slot_2_axi_wready : out STD_LOGIC;
    m_slot_2_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_bvalid : out STD_LOGIC;
    m_slot_2_axi_bready : out STD_LOGIC;
    m_slot_2_axi_araddr : out STD_LOGIC_VECTOR ( 48 downto 0 );
    m_slot_2_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_2_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_2_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_2_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_slot_2_axi_arvalid : out STD_LOGIC;
    m_slot_2_axi_arready : out STD_LOGIC;
    m_slot_2_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_slot_2_axi_rlast : out STD_LOGIC;
    m_slot_2_axi_rvalid : out STD_LOGIC;
    m_slot_2_axi_rready : out STD_LOGIC;
    slot_2_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component bd_9ef2_g_inst_0;
  component bd_9ef2_slot_2_aw_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_9ef2_slot_2_aw_0;
  component bd_9ef2_slot_2_w_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_9ef2_slot_2_w_0;
  component bd_9ef2_slot_2_b_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_9ef2_slot_2_b_0;
  component bd_9ef2_slot_2_ar_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_9ef2_slot_2_ar_0;
  component bd_9ef2_slot_2_r_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_9ef2_slot_2_r_0;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Conn1_TLAST : STD_LOGIC;
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 48 downto 0 );
  signal Conn2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn2_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARVALID : STD_LOGIC;
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 48 downto 0 );
  signal Conn2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn2_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWVALID : STD_LOGIC;
  signal Conn2_BREADY : STD_LOGIC;
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Conn2_RLAST : STD_LOGIC;
  signal Conn2_RREADY : STD_LOGIC;
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Conn2_WLAST : STD_LOGIC;
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Conn2_WVALID : STD_LOGIC;
  signal Conn_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn_TLAST : STD_LOGIC;
  signal Conn_TREADY : STD_LOGIC;
  signal Conn_TVALID : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal net_slot_0_axis_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_0_axis_tlast : STD_LOGIC;
  signal net_slot_0_axis_tready : STD_LOGIC;
  signal net_slot_0_axis_tvalid : STD_LOGIC;
  signal net_slot_1_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal net_slot_1_axis_tlast : STD_LOGIC;
  signal net_slot_1_axis_tready : STD_LOGIC;
  signal net_slot_1_axis_tvalid : STD_LOGIC;
  signal net_slot_2_axi_ar_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_ar_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_araddr : STD_LOGIC_VECTOR ( 48 downto 0 );
  signal net_slot_2_axi_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_arcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_arlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_2_axi_arlock : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_slot_2_axi_arprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_arqos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_arready : STD_LOGIC;
  signal net_slot_2_axi_arsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_arvalid : STD_LOGIC;
  signal net_slot_2_axi_aw_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_aw_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_awaddr : STD_LOGIC_VECTOR ( 48 downto 0 );
  signal net_slot_2_axi_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_awcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_2_axi_awlock : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_slot_2_axi_awprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_awqos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_awready : STD_LOGIC;
  signal net_slot_2_axi_awsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_awvalid : STD_LOGIC;
  signal net_slot_2_axi_b_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_b_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_bready : STD_LOGIC;
  signal net_slot_2_axi_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_bvalid : STD_LOGIC;
  signal net_slot_2_axi_r_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_r_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_rdata : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal net_slot_2_axi_rlast : STD_LOGIC;
  signal net_slot_2_axi_rready : STD_LOGIC;
  signal net_slot_2_axi_rvalid : STD_LOGIC;
  signal net_slot_2_axi_w_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_wdata : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal net_slot_2_axi_wlast : STD_LOGIC;
  signal net_slot_2_axi_wready : STD_LOGIC;
  signal net_slot_2_axi_wstrb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal net_slot_2_axi_wvalid : STD_LOGIC;
  signal resetn_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SLOT_0_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST";
  attribute X_INTERFACE_INFO of SLOT_0_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXIS:SLOT_1_AXIS:SLOT_2_AXI, ASSOCIATED_RESET resetn, CLK_DOMAIN PYNQ_Design_clk_wiz_0_0_clk_out1, FREQ_HZ 128000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of SLOT_0_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of SLOT_0_AXIS_tdata : signal is "XIL_INTERFACENAME SLOT_0_AXIS, CLK_DOMAIN PYNQ_Design_clk_wiz_0_0_clk_out1, FREQ_HZ 128000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of SLOT_1_AXIS_tdata : signal is "XIL_INTERFACENAME SLOT_1_AXIS, CLK_DOMAIN PYNQ_Design_clk_wiz_0_0_clk_out1, FREQ_HZ 128000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of SLOT_2_AXI_araddr : signal is "XIL_INTERFACENAME SLOT_2_AXI, ADDR_WIDTH 49, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PYNQ_Design_clk_wiz_0_0_clk_out1, DATA_WIDTH 128, FREQ_HZ 128000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLOCK";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARQOS";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLOCK";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWQOS";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WSTRB";
begin
  Conn1_TDATA(15 downto 0) <= SLOT_1_AXIS_tdata(15 downto 0);
  Conn1_TLAST <= SLOT_1_AXIS_tlast;
  Conn1_TREADY <= SLOT_1_AXIS_tready;
  Conn1_TVALID <= SLOT_1_AXIS_tvalid;
  Conn2_ARADDR(48 downto 0) <= SLOT_2_AXI_araddr(48 downto 0);
  Conn2_ARBURST(1 downto 0) <= SLOT_2_AXI_arburst(1 downto 0);
  Conn2_ARCACHE(3 downto 0) <= SLOT_2_AXI_arcache(3 downto 0);
  Conn2_ARLEN(7 downto 0) <= SLOT_2_AXI_arlen(7 downto 0);
  Conn2_ARLOCK(0) <= SLOT_2_AXI_arlock(0);
  Conn2_ARPROT(2 downto 0) <= SLOT_2_AXI_arprot(2 downto 0);
  Conn2_ARQOS(3 downto 0) <= SLOT_2_AXI_arqos(3 downto 0);
  Conn2_ARREADY <= SLOT_2_AXI_arready;
  Conn2_ARSIZE(2 downto 0) <= SLOT_2_AXI_arsize(2 downto 0);
  Conn2_ARVALID <= SLOT_2_AXI_arvalid;
  Conn2_AWADDR(48 downto 0) <= SLOT_2_AXI_awaddr(48 downto 0);
  Conn2_AWBURST(1 downto 0) <= SLOT_2_AXI_awburst(1 downto 0);
  Conn2_AWCACHE(3 downto 0) <= SLOT_2_AXI_awcache(3 downto 0);
  Conn2_AWLEN(7 downto 0) <= SLOT_2_AXI_awlen(7 downto 0);
  Conn2_AWLOCK(0) <= SLOT_2_AXI_awlock(0);
  Conn2_AWPROT(2 downto 0) <= SLOT_2_AXI_awprot(2 downto 0);
  Conn2_AWQOS(3 downto 0) <= SLOT_2_AXI_awqos(3 downto 0);
  Conn2_AWREADY <= SLOT_2_AXI_awready;
  Conn2_AWSIZE(2 downto 0) <= SLOT_2_AXI_awsize(2 downto 0);
  Conn2_AWVALID <= SLOT_2_AXI_awvalid;
  Conn2_BREADY <= SLOT_2_AXI_bready;
  Conn2_BRESP(1 downto 0) <= SLOT_2_AXI_bresp(1 downto 0);
  Conn2_BVALID <= SLOT_2_AXI_bvalid;
  Conn2_RDATA(127 downto 0) <= SLOT_2_AXI_rdata(127 downto 0);
  Conn2_RLAST <= SLOT_2_AXI_rlast;
  Conn2_RREADY <= SLOT_2_AXI_rready;
  Conn2_RVALID <= SLOT_2_AXI_rvalid;
  Conn2_WDATA(127 downto 0) <= SLOT_2_AXI_wdata(127 downto 0);
  Conn2_WLAST <= SLOT_2_AXI_wlast;
  Conn2_WREADY <= SLOT_2_AXI_wready;
  Conn2_WSTRB(15 downto 0) <= SLOT_2_AXI_wstrb(15 downto 0);
  Conn2_WVALID <= SLOT_2_AXI_wvalid;
  Conn_TDATA(31 downto 0) <= SLOT_0_AXIS_tdata(31 downto 0);
  Conn_TLAST <= SLOT_0_AXIS_tlast;
  Conn_TREADY <= SLOT_0_AXIS_tready;
  Conn_TVALID <= SLOT_0_AXIS_tvalid;
  clk_1 <= clk;
  resetn_1 <= resetn;
g_inst: component bd_9ef2_g_inst_0
     port map (
      aclk => clk_1,
      aresetn => resetn_1,
      m_slot_0_axis_tdata(31 downto 0) => net_slot_0_axis_tdata(31 downto 0),
      m_slot_0_axis_tlast => net_slot_0_axis_tlast,
      m_slot_0_axis_tready => net_slot_0_axis_tready,
      m_slot_0_axis_tvalid => net_slot_0_axis_tvalid,
      m_slot_1_axis_tdata(15 downto 0) => net_slot_1_axis_tdata(15 downto 0),
      m_slot_1_axis_tlast => net_slot_1_axis_tlast,
      m_slot_1_axis_tready => net_slot_1_axis_tready,
      m_slot_1_axis_tvalid => net_slot_1_axis_tvalid,
      m_slot_2_axi_ar_cnt(1 downto 0) => net_slot_2_axi_ar_cnt(1 downto 0),
      m_slot_2_axi_araddr(48 downto 0) => net_slot_2_axi_araddr(48 downto 0),
      m_slot_2_axi_arburst(1 downto 0) => net_slot_2_axi_arburst(1 downto 0),
      m_slot_2_axi_arcache(3 downto 0) => net_slot_2_axi_arcache(3 downto 0),
      m_slot_2_axi_arlen(7 downto 0) => net_slot_2_axi_arlen(7 downto 0),
      m_slot_2_axi_arlock(0) => net_slot_2_axi_arlock(0),
      m_slot_2_axi_arprot(2 downto 0) => net_slot_2_axi_arprot(2 downto 0),
      m_slot_2_axi_arqos(3 downto 0) => net_slot_2_axi_arqos(3 downto 0),
      m_slot_2_axi_arready => net_slot_2_axi_arready,
      m_slot_2_axi_arsize(2 downto 0) => net_slot_2_axi_arsize(2 downto 0),
      m_slot_2_axi_arvalid => net_slot_2_axi_arvalid,
      m_slot_2_axi_aw_cnt(1 downto 0) => net_slot_2_axi_aw_cnt(1 downto 0),
      m_slot_2_axi_awaddr(48 downto 0) => net_slot_2_axi_awaddr(48 downto 0),
      m_slot_2_axi_awburst(1 downto 0) => net_slot_2_axi_awburst(1 downto 0),
      m_slot_2_axi_awcache(3 downto 0) => net_slot_2_axi_awcache(3 downto 0),
      m_slot_2_axi_awlen(7 downto 0) => net_slot_2_axi_awlen(7 downto 0),
      m_slot_2_axi_awlock(0) => net_slot_2_axi_awlock(0),
      m_slot_2_axi_awprot(2 downto 0) => net_slot_2_axi_awprot(2 downto 0),
      m_slot_2_axi_awqos(3 downto 0) => net_slot_2_axi_awqos(3 downto 0),
      m_slot_2_axi_awready => net_slot_2_axi_awready,
      m_slot_2_axi_awsize(2 downto 0) => net_slot_2_axi_awsize(2 downto 0),
      m_slot_2_axi_awvalid => net_slot_2_axi_awvalid,
      m_slot_2_axi_b_cnt(1 downto 0) => net_slot_2_axi_b_cnt(1 downto 0),
      m_slot_2_axi_bready => net_slot_2_axi_bready,
      m_slot_2_axi_bresp(1 downto 0) => net_slot_2_axi_bresp(1 downto 0),
      m_slot_2_axi_bvalid => net_slot_2_axi_bvalid,
      m_slot_2_axi_r_cnt(1 downto 0) => net_slot_2_axi_r_cnt(1 downto 0),
      m_slot_2_axi_rdata(127 downto 0) => net_slot_2_axi_rdata(127 downto 0),
      m_slot_2_axi_rlast => net_slot_2_axi_rlast,
      m_slot_2_axi_rready => net_slot_2_axi_rready,
      m_slot_2_axi_rvalid => net_slot_2_axi_rvalid,
      m_slot_2_axi_wdata(127 downto 0) => net_slot_2_axi_wdata(127 downto 0),
      m_slot_2_axi_wlast => net_slot_2_axi_wlast,
      m_slot_2_axi_wready => net_slot_2_axi_wready,
      m_slot_2_axi_wstrb(15 downto 0) => net_slot_2_axi_wstrb(15 downto 0),
      m_slot_2_axi_wvalid => net_slot_2_axi_wvalid,
      slot_0_axis_tdata(31 downto 0) => Conn_TDATA(31 downto 0),
      slot_0_axis_tlast => Conn_TLAST,
      slot_0_axis_tready => Conn_TREADY,
      slot_0_axis_tvalid => Conn_TVALID,
      slot_1_axis_tdata(15 downto 0) => Conn1_TDATA(15 downto 0),
      slot_1_axis_tlast => Conn1_TLAST,
      slot_1_axis_tready => Conn1_TREADY,
      slot_1_axis_tvalid => Conn1_TVALID,
      slot_2_axi_araddr(48 downto 0) => Conn2_ARADDR(48 downto 0),
      slot_2_axi_arburst(1 downto 0) => Conn2_ARBURST(1 downto 0),
      slot_2_axi_arcache(3 downto 0) => Conn2_ARCACHE(3 downto 0),
      slot_2_axi_arlen(7 downto 0) => Conn2_ARLEN(7 downto 0),
      slot_2_axi_arlock(0) => Conn2_ARLOCK(0),
      slot_2_axi_arprot(2 downto 0) => Conn2_ARPROT(2 downto 0),
      slot_2_axi_arqos(3 downto 0) => Conn2_ARQOS(3 downto 0),
      slot_2_axi_arready => Conn2_ARREADY,
      slot_2_axi_arsize(2 downto 0) => Conn2_ARSIZE(2 downto 0),
      slot_2_axi_arvalid => Conn2_ARVALID,
      slot_2_axi_awaddr(48 downto 0) => Conn2_AWADDR(48 downto 0),
      slot_2_axi_awburst(1 downto 0) => Conn2_AWBURST(1 downto 0),
      slot_2_axi_awcache(3 downto 0) => Conn2_AWCACHE(3 downto 0),
      slot_2_axi_awlen(7 downto 0) => Conn2_AWLEN(7 downto 0),
      slot_2_axi_awlock(0) => Conn2_AWLOCK(0),
      slot_2_axi_awprot(2 downto 0) => Conn2_AWPROT(2 downto 0),
      slot_2_axi_awqos(3 downto 0) => Conn2_AWQOS(3 downto 0),
      slot_2_axi_awready => Conn2_AWREADY,
      slot_2_axi_awsize(2 downto 0) => Conn2_AWSIZE(2 downto 0),
      slot_2_axi_awvalid => Conn2_AWVALID,
      slot_2_axi_bready => Conn2_BREADY,
      slot_2_axi_bresp(1 downto 0) => Conn2_BRESP(1 downto 0),
      slot_2_axi_bvalid => Conn2_BVALID,
      slot_2_axi_rdata(127 downto 0) => Conn2_RDATA(127 downto 0),
      slot_2_axi_rlast => Conn2_RLAST,
      slot_2_axi_rready => Conn2_RREADY,
      slot_2_axi_rvalid => Conn2_RVALID,
      slot_2_axi_wdata(127 downto 0) => Conn2_WDATA(127 downto 0),
      slot_2_axi_wlast => Conn2_WLAST,
      slot_2_axi_wready => Conn2_WREADY,
      slot_2_axi_wstrb(15 downto 0) => Conn2_WSTRB(15 downto 0),
      slot_2_axi_wvalid => Conn2_WVALID
    );
ila_lib: component bd_9ef2_ila_lib_0
     port map (
      clk => clk_1,
      probe0(31 downto 0) => net_slot_0_axis_tdata(31 downto 0),
      probe1(0) => net_slot_0_axis_tvalid,
      probe10(1 downto 0) => net_slot_2_axi_arburst(1 downto 0),
      probe11(3 downto 0) => net_slot_2_axi_arcache(3 downto 0),
      probe12(7 downto 0) => net_slot_2_axi_arlen(7 downto 0),
      probe13(0) => net_slot_2_axi_arlock(0),
      probe14(2 downto 0) => net_slot_2_axi_arprot(2 downto 0),
      probe15(3 downto 0) => net_slot_2_axi_arqos(3 downto 0),
      probe16(2 downto 0) => net_slot_2_axi_arsize(2 downto 0),
      probe17(1 downto 0) => net_slot_2_axi_aw_cnt(1 downto 0),
      probe18(48 downto 0) => net_slot_2_axi_awaddr(48 downto 0),
      probe19(1 downto 0) => net_slot_2_axi_awburst(1 downto 0),
      probe2(0) => net_slot_0_axis_tready,
      probe20(3 downto 0) => net_slot_2_axi_awcache(3 downto 0),
      probe21(7 downto 0) => net_slot_2_axi_awlen(7 downto 0),
      probe22(0) => net_slot_2_axi_awlock(0),
      probe23(2 downto 0) => net_slot_2_axi_awprot(2 downto 0),
      probe24(3 downto 0) => net_slot_2_axi_awqos(3 downto 0),
      probe25(2 downto 0) => net_slot_2_axi_awsize(2 downto 0),
      probe26(1 downto 0) => net_slot_2_axi_b_cnt(1 downto 0),
      probe27(1 downto 0) => net_slot_2_axi_bresp(1 downto 0),
      probe28(1 downto 0) => net_slot_2_axi_r_cnt(1 downto 0),
      probe29(127 downto 0) => net_slot_2_axi_rdata(127 downto 0),
      probe3(0) => net_slot_0_axis_tlast,
      probe30(127 downto 0) => net_slot_2_axi_wdata(127 downto 0),
      probe31(15 downto 0) => net_slot_2_axi_wstrb(15 downto 0),
      probe32(1 downto 0) => net_slot_2_axi_aw_ctrl(1 downto 0),
      probe33(2 downto 0) => net_slot_2_axi_w_ctrl(2 downto 0),
      probe34(1 downto 0) => net_slot_2_axi_b_ctrl(1 downto 0),
      probe35(1 downto 0) => net_slot_2_axi_ar_ctrl(1 downto 0),
      probe36(2 downto 0) => net_slot_2_axi_r_ctrl(2 downto 0),
      probe4(15 downto 0) => net_slot_1_axis_tdata(15 downto 0),
      probe5(0) => net_slot_1_axis_tvalid,
      probe6(0) => net_slot_1_axis_tready,
      probe7(0) => net_slot_1_axis_tlast,
      probe8(1 downto 0) => net_slot_2_axi_ar_cnt(1 downto 0),
      probe9(48 downto 0) => net_slot_2_axi_araddr(48 downto 0)
    );
slot_2_ar: component bd_9ef2_slot_2_ar_0
     port map (
      In0(0) => net_slot_2_axi_arvalid,
      In1(0) => net_slot_2_axi_arready,
      dout(1 downto 0) => net_slot_2_axi_ar_ctrl(1 downto 0)
    );
slot_2_aw: component bd_9ef2_slot_2_aw_0
     port map (
      In0(0) => net_slot_2_axi_awvalid,
      In1(0) => net_slot_2_axi_awready,
      dout(1 downto 0) => net_slot_2_axi_aw_ctrl(1 downto 0)
    );
slot_2_b: component bd_9ef2_slot_2_b_0
     port map (
      In0(0) => net_slot_2_axi_bvalid,
      In1(0) => net_slot_2_axi_bready,
      dout(1 downto 0) => net_slot_2_axi_b_ctrl(1 downto 0)
    );
slot_2_r: component bd_9ef2_slot_2_r_0
     port map (
      In0(0) => net_slot_2_axi_rvalid,
      In1(0) => net_slot_2_axi_rready,
      In2(0) => net_slot_2_axi_rlast,
      dout(2 downto 0) => net_slot_2_axi_r_ctrl(2 downto 0)
    );
slot_2_w: component bd_9ef2_slot_2_w_0
     port map (
      In0(0) => net_slot_2_axi_wvalid,
      In1(0) => net_slot_2_axi_wready,
      In2(0) => net_slot_2_axi_wlast,
      dout(2 downto 0) => net_slot_2_axi_w_ctrl(2 downto 0)
    );
end STRUCTURE;
