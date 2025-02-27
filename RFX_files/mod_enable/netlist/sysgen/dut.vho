  sysgen_dut : entity xil_defaultlib.dut 
  port map (
    s_axis_tvalid => s_axis_tvalid,
    s_axis_tdata => s_axis_tdata,
    s_axis_tlast => s_axis_tlast,
    m_axis_tready => m_axis_tready,
    mux_en => mux_en,
    clk => clk,
    m_axis_tvalid => m_axis_tvalid,
    m_axis_tdata => m_axis_tdata,
    m_axis_tlast => m_axis_tlast,
    s_axis_tready => s_axis_tready
  );
