-- Generated from Simulink block sin_wave_modulate_2021b/DUT/Algorithm/125kHz
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dut_125khz is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 16-1 downto 0 )
  );
end dut_125khz;
architecture structural of dut_125khz is 
  signal addsub1_s_net : std_logic_vector( 12-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal register_q_net : std_logic_vector( 14-1 downto 0 );
  signal lfsr_dout_net : std_logic_vector( 16-1 downto 0 );
  signal mux_y_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal rom_data_net : std_logic_vector( 16-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 14-1 downto 0 );
begin
  out1 <= rom_data_net;
  mux_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.sysgen_addsub_565019b77f 
  port map (
    clr => '0',
    a => register_q_net,
    b => mux_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.sysgen_addsub_b02f9379f4 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => lfsr_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  convert : entity xil_defaultlib.dut_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 3,
    din_width => 12,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 8,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRound
  )
  port map (
    clr => '0',
    en => "1",
    din => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  lfsr : entity xil_defaultlib.sysgen_lfsr_1251147d97 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    dout => lfsr_dout_net
  );
  rom : entity xil_defaultlib.dut_xlsprom 
  generic map (
    c_address_width => 8,
    c_width => 16,
    latency => 1,
    mem_init_file => "xpm_288367_vivado.mem",
    mem_size => 4096,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    data => rom_data_net
  );
  register_x0 : entity xil_defaultlib.dut_xlregister 
  generic map (
    d_width => 14,
    init_value => b"00000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
end structural;
-- Generated from Simulink block sin_wave_modulate_2021b/DUT/Algorithm/500MHz
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dut_500mhz is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 16-1 downto 0 )
  );
end dut_500mhz;
architecture structural of dut_500mhz is 
  signal convert_dout_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 14-1 downto 0 );
  signal rom_data_net : std_logic_vector( 16-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 14-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 12-1 downto 0 );
  signal lfsr_dout_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  out1 <= rom_data_net;
  mux1_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.sysgen_addsub_bcc1692478 
  port map (
    clr => '0',
    a => register_q_net,
    b => mux1_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.sysgen_addsub_b02f9379f4 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => lfsr_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  convert : entity xil_defaultlib.dut_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 3,
    din_width => 12,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 8,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRound
  )
  port map (
    clr => '0',
    en => "1",
    din => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  lfsr : entity xil_defaultlib.sysgen_lfsr_1251147d97 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    dout => lfsr_dout_net
  );
  rom : entity xil_defaultlib.dut_xlsprom 
  generic map (
    c_address_width => 8,
    c_width => 16,
    latency => 1,
    mem_init_file => "xpm_288367_vivado.mem",
    mem_size => 4096,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    data => rom_data_net
  );
  register_x0 : entity xil_defaultlib.dut_xlregister 
  generic map (
    d_width => 14,
    init_value => b"00000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
end structural;
-- Generated from Simulink block sin_wave_modulate_2021b/DUT/Algorithm
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dut_algorithm is
  port (
    tvalid_in : in std_logic_vector( 1-1 downto 0 );
    tdata_in : in std_logic_vector( 1-1 downto 0 );
    tlast_in : in std_logic_vector( 1-1 downto 0 );
    mux_en : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tvalid_out : out std_logic_vector( 1-1 downto 0 );
    tdata_out : out std_logic_vector( 32-1 downto 0 );
    tlast_out : out std_logic_vector( 1-1 downto 0 )
  );
end dut_algorithm;
architecture structural of dut_algorithm is 
  signal tdata_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal rom_data_net : std_logic_vector( 16-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal mux_en_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal shift_op_net : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal tlast_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal rom_data_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal mux_y_net : std_logic_vector( 16-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal mult_p_net : std_logic_vector( 16-1 downto 0 );
begin
  tvalid_out <= delay3_q_net;
  tdata_out <= convert_dout_net;
  tlast_out <= delay1_q_net;
  logical_y_net <= tvalid_in;
  tdata_slice_y_net <= tdata_in;
  tlast_slice_y_net <= tlast_in;
  mux_en_net <= mux_en;
  clk_net <= clk_1;
  ce_net <= ce_1;
  x125khz : entity xil_defaultlib.dut_125khz 
  port map (
    in1 => mux_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => rom_data_net_x0
  );
  x500mhz : entity xil_defaultlib.dut_500mhz 
  port map (
    in1 => mux1_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => rom_data_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_32e1ff98a7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_be5b182d15 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_c8d0ccb625 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_c8d0ccb625 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  convert : entity xil_defaultlib.dut_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRound
  )
  port map (
    clr => '0',
    en => "1",
    din => shift_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  delay1 : entity xil_defaultlib.dut_xldelay 
  generic map (
    latency => 13,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => tlast_slice_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay3 : entity xil_defaultlib.dut_xldelay 
  generic map (
    latency => 13,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  mult : entity xil_defaultlib.dut_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "dut_mult_gen_v12_0_i0",
    extra_registers => 1,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 14,
    p_width => 16,
    quantization => 2
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => rom_data_net_x0,
    b => rom_data_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mux : entity xil_defaultlib.sysgen_mux_f1fbc7253b 
  port map (
    clr => '0',
    sel => tdata_slice_y_net,
    d0 => constant_op_net,
    d1 => constant1_op_net,
    en => mux_en_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_eb310c37ea 
  port map (
    clr => '0',
    sel => tdata_slice_y_net,
    d0 => constant5_op_net,
    d1 => constant2_op_net,
    en => mux_en_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  shift : entity xil_defaultlib.sysgen_shift_eadec3aee3 
  port map (
    clr => '0',
    ip => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
end structural;
-- Generated from Simulink block sin_wave_modulate_2021b/DUT/Master FIFO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dut_master_fifo is
  port (
    tvalid_out : in std_logic_vector( 1-1 downto 0 );
    tdata_out : in std_logic_vector( 32-1 downto 0 );
    tlast_out : in std_logic_vector( 1-1 downto 0 );
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    tready_out : out std_logic_vector( 1-1 downto 0 )
  );
end dut_master_fifo;
architecture structural of dut_master_fifo is 
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal tlast_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal m_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal tdata_slice_y_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal fifo_dout_net : std_logic_vector( 33-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal fifo_af_net : std_logic;
  signal concat1_y_net : std_logic_vector( 33-1 downto 0 );
  signal fifo_empty_net : std_logic;
begin
  m_axis_tvalid <= inverter4_op_net;
  m_axis_tdata <= tdata_slice_y_net;
  m_axis_tlast <= tlast_slice_y_net;
  tready_out <= inverter2_op_net;
  delay3_q_net <= tvalid_out;
  convert_dout_net <= tdata_out;
  delay1_q_net <= tlast_out;
  m_axis_tready_net <= m_axis_tready;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat1 : entity xil_defaultlib.sysgen_concat_656c6a69b2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => convert_dout_net,
    in1 => delay1_q_net,
    y => concat1_y_net
  );
  fifo : entity xil_defaultlib.dut_xlfifogen_u 
  generic map (
    core_name0 => "dut_fifo_generator_i0",
    data_count_width => 11,
    data_width => 33,
    extra_registers => 1,
    has_ae => 0,
    has_af => 1,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => concat1_y_net,
    we => delay3_q_net(0),
    re => m_axis_tready_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo_dout_net,
    empty => fifo_empty_net,
    full => fifo_full_net,
    af => fifo_af_net
  );
  inverter2 : entity xil_defaultlib.sysgen_inverter_3e146501b0 
  port map (
    clr => '0',
    ip(0) => fifo_af_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  inverter4 : entity xil_defaultlib.sysgen_inverter_3e146501b0 
  port map (
    clr => '0',
    ip(0) => fifo_empty_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter4_op_net
  );
  tdata_slice : entity xil_defaultlib.dut_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 32,
    x_width => 33,
    y_width => 32
  )
  port map (
    x => fifo_dout_net,
    y => tdata_slice_y_net
  );
  tlast_slice : entity xil_defaultlib.dut_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 33,
    y_width => 1
  )
  port map (
    x => fifo_dout_net,
    y => tlast_slice_y_net
  );
end structural;
-- Generated from Simulink block sin_wave_modulate_2021b/DUT/Slave FIFO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dut_slave_fifo is
  port (
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 1-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    tready_in : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tvalid_in : out std_logic_vector( 1-1 downto 0 );
    tdata_in : out std_logic_vector( 1-1 downto 0 );
    tlast_in : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end dut_slave_fifo;
architecture structural of dut_slave_fifo is 
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 2-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal fifo_empty_net : std_logic;
  signal fifo_dout_net : std_logic_vector( 2-1 downto 0 );
  signal ce_net : std_logic;
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal tlast_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal tdata_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tdata_net : std_logic_vector( 1-1 downto 0 );
  signal inverter2_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
begin
  tvalid_in <= logical_y_net;
  tdata_in <= tdata_slice_y_net;
  tlast_in <= tlast_slice_y_net;
  s_axis_tready <= inverter1_op_net;
  s_axis_tvalid_net <= s_axis_tvalid;
  s_axis_tdata_net <= s_axis_tdata;
  s_axis_tlast_net <= s_axis_tlast;
  inverter2_op_net_x0 <= tready_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_5fc70abe75 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => s_axis_tdata_net,
    in1 => s_axis_tlast_net,
    y => concat_y_net
  );
  fifo : entity xil_defaultlib.dut_xlfifogen_u 
  generic map (
    core_name0 => "dut_fifo_generator_i1",
    data_count_width => 11,
    data_width => 2,
    extra_registers => 1,
    has_ae => 0,
    has_af => 0,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => concat_y_net,
    we => s_axis_tvalid_net(0),
    re => inverter2_op_net_x0(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo_dout_net,
    empty => fifo_empty_net,
    full => fifo_full_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_3e146501b0 
  port map (
    clr => '0',
    ip(0) => fifo_full_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter2 : entity xil_defaultlib.sysgen_inverter_3e146501b0 
  port map (
    clr => '0',
    ip(0) => fifo_empty_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_3b9556f8d9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter2_op_net,
    d1 => inverter2_op_net_x0,
    y => logical_y_net
  );
  tdata_slice : entity xil_defaultlib.dut_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 1,
    x_width => 2,
    y_width => 1
  )
  port map (
    x => fifo_dout_net,
    y => tdata_slice_y_net
  );
  tlast_slice : entity xil_defaultlib.dut_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 2,
    y_width => 1
  )
  port map (
    x => fifo_dout_net,
    y => tlast_slice_y_net
  );
end structural;
-- Generated from Simulink block sin_wave_modulate_2021b/DUT_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dut_struct is
  port (
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 1-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    mux_en : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end dut_struct;
architecture structural of dut_struct is 
  signal s_axis_tdata_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal m_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal mux_en_net : std_logic_vector( 1-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
  signal tdata_slice_y_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal tlast_slice_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal tdata_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal tlast_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
begin
  m_axis_tvalid <= inverter4_op_net;
  m_axis_tdata <= tdata_slice_y_net_x0;
  m_axis_tlast <= tlast_slice_y_net_x0;
  s_axis_tready <= inverter1_op_net;
  s_axis_tvalid_net <= s_axis_tvalid;
  s_axis_tdata_net <= s_axis_tdata;
  s_axis_tlast_net <= s_axis_tlast;
  m_axis_tready_net <= m_axis_tready;
  mux_en_net <= mux_en;
  clk_net <= clk_1;
  ce_net <= ce_1;
  algorithm : entity xil_defaultlib.dut_algorithm 
  port map (
    tvalid_in => logical_y_net,
    tdata_in => tdata_slice_y_net,
    tlast_in => tlast_slice_y_net,
    mux_en => mux_en_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tvalid_out => delay3_q_net,
    tdata_out => convert_dout_net,
    tlast_out => delay1_q_net
  );
  master_fifo : entity xil_defaultlib.dut_master_fifo 
  port map (
    tvalid_out => delay3_q_net,
    tdata_out => convert_dout_net,
    tlast_out => delay1_q_net,
    m_axis_tready => m_axis_tready_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    m_axis_tvalid => inverter4_op_net,
    m_axis_tdata => tdata_slice_y_net_x0,
    m_axis_tlast => tlast_slice_y_net_x0,
    tready_out => inverter2_op_net
  );
  slave_fifo : entity xil_defaultlib.dut_slave_fifo 
  port map (
    s_axis_tvalid => s_axis_tvalid_net,
    s_axis_tdata => s_axis_tdata_net,
    s_axis_tlast => s_axis_tlast_net,
    tready_in => inverter2_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tvalid_in => logical_y_net,
    tdata_in => tdata_slice_y_net,
    tlast_in => tlast_slice_y_net,
    s_axis_tready => inverter1_op_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dut_default_clock_driver is
  port (
    dut_sysclk : in std_logic;
    dut_sysce : in std_logic;
    dut_sysclr : in std_logic;
    dut_clk1 : out std_logic;
    dut_ce1 : out std_logic
  );
end dut_default_clock_driver;
architecture structural of dut_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => dut_sysclk,
    sysce => dut_sysce,
    sysclr => dut_sysclr,
    clk => dut_clk1,
    ce => dut_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dut is
  port (
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 1-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    mux_en : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end dut;
architecture structural of dut is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "dut,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu43dr,speed=-2-e,package=ffve1156,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=4.88281e-10,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=4.88281e-05,addsub=4,concat=2,constant=4,convert=3,delay=2,fifo=2,inv=4,lfsr=2,logical=1,mult=1,mux=2,register=2,shift=1,slice=4,sprom=2,}";
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
begin
  dut_default_clock_driver : entity xil_defaultlib.dut_default_clock_driver 
  port map (
    dut_sysclk => clk,
    dut_sysce => '1',
    dut_sysclr => '0',
    dut_clk1 => clk_1_net,
    dut_ce1 => ce_1_net
  );
  dut_struct : entity xil_defaultlib.dut_struct 
  port map (
    s_axis_tvalid => s_axis_tvalid,
    s_axis_tdata => s_axis_tdata,
    s_axis_tlast => s_axis_tlast,
    m_axis_tready => m_axis_tready,
    mux_en => mux_en,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    m_axis_tvalid => m_axis_tvalid,
    m_axis_tdata => m_axis_tdata,
    m_axis_tlast => m_axis_tlast,
    s_axis_tready => s_axis_tready
  );
end structural;
