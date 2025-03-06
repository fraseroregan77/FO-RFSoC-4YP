-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:system_ila:1.1
-- IP Revision: 17

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY PYNQ_Design_system_ila_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    SLOT_0_AXIS_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_0_AXIS_tlast : IN STD_LOGIC;
    SLOT_0_AXIS_tvalid : IN STD_LOGIC;
    SLOT_0_AXIS_tready : IN STD_LOGIC;
    SLOT_1_AXIS_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_1_AXIS_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_1_AXIS_tlast : IN STD_LOGIC;
    SLOT_1_AXIS_tvalid : IN STD_LOGIC;
    SLOT_1_AXIS_tready : IN STD_LOGIC;
    SLOT_2_AXIS_tdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    SLOT_2_AXIS_tlast : IN STD_LOGIC;
    SLOT_2_AXIS_tvalid : IN STD_LOGIC;
    SLOT_2_AXIS_tready : IN STD_LOGIC;
    resetn : IN STD_LOGIC
  );
END PYNQ_Design_system_ila_0_0;

ARCHITECTURE PYNQ_Design_system_ila_0_0_arch OF PYNQ_Design_system_ila_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF PYNQ_Design_system_ila_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_5ea3 IS
    PORT (
      clk : IN STD_LOGIC;
      SLOT_0_AXIS_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_0_AXIS_tlast : IN STD_LOGIC;
      SLOT_0_AXIS_tvalid : IN STD_LOGIC;
      SLOT_0_AXIS_tready : IN STD_LOGIC;
      SLOT_1_AXIS_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_1_AXIS_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_1_AXIS_tlast : IN STD_LOGIC;
      SLOT_1_AXIS_tvalid : IN STD_LOGIC;
      SLOT_1_AXIS_tready : IN STD_LOGIC;
      SLOT_2_AXIS_tdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      SLOT_2_AXIS_tlast : IN STD_LOGIC;
      SLOT_2_AXIS_tvalid : IN STD_LOGIC;
      SLOT_2_AXIS_tready : IN STD_LOGIC;
      resetn : IN STD_LOGIC
    );
  END COMPONENT bd_5ea3;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_0_AXIS_tdata: SIGNAL IS "XIL_INTERFACENAME SLOT_0_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN PYNQ_Design_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bit" & 
"offset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_1_AXIS_tdata: SIGNAL IS "XIL_INTERFACENAME SLOT_1_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN PYNQ_Design_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXIS_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXIS_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXIS_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXIS_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXIS_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_2_AXIS_tdata: SIGNAL IS "XIL_INTERFACENAME SLOT_2_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN PYNQ_Design_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXIS_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXIS_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXIS_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXIS_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME CLK.clk, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN PYNQ_Design_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF SLOT_0_AXIS:SLOT_1_AXIS:SLOT_2_AXIS, ASSOCIATED_RESET resetn, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.resetn RST";
BEGIN
  U0 : bd_5ea3
    PORT MAP (
      clk => clk,
      SLOT_0_AXIS_tdata => SLOT_0_AXIS_tdata,
      SLOT_0_AXIS_tlast => SLOT_0_AXIS_tlast,
      SLOT_0_AXIS_tvalid => SLOT_0_AXIS_tvalid,
      SLOT_0_AXIS_tready => SLOT_0_AXIS_tready,
      SLOT_1_AXIS_tdata => SLOT_1_AXIS_tdata,
      SLOT_1_AXIS_tkeep => SLOT_1_AXIS_tkeep,
      SLOT_1_AXIS_tlast => SLOT_1_AXIS_tlast,
      SLOT_1_AXIS_tvalid => SLOT_1_AXIS_tvalid,
      SLOT_1_AXIS_tready => SLOT_1_AXIS_tready,
      SLOT_2_AXIS_tdata => SLOT_2_AXIS_tdata,
      SLOT_2_AXIS_tlast => SLOT_2_AXIS_tlast,
      SLOT_2_AXIS_tvalid => SLOT_2_AXIS_tvalid,
      SLOT_2_AXIS_tready => SLOT_2_AXIS_tready,
      resetn => resetn
    );
END PYNQ_Design_system_ila_0_0_arch;
