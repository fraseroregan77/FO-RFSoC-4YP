-- Generated from Simulink block modulate_16_bit/16_bit_mod/Algorithm/Carrier NCO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity x16_bit_mod_carrier_nco is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 8-1 downto 0 )
  );
end x16_bit_mod_carrier_nco;
architecture structural of x16_bit_mod_carrier_nco is 
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal lfsr_dout_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal rom_data_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
begin
  out1 <= rom_data_net;
  mux1_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.sysgen_addsub_b29d68c0a9 
  port map (
    clr => '0',
    a => register_q_net,
    b => mux1_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.sysgen_addsub_3677896902 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => lfsr_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  convert : entity xil_defaultlib.x16_bit_mod_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 16,
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
  lfsr : entity xil_defaultlib.sysgen_lfsr_2b8781bda4 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    dout => lfsr_dout_net
  );
  rom : entity xil_defaultlib.x16_bit_mod_xlsprom 
  generic map (
    c_address_width => 8,
    c_width => 8,
    latency => 1,
    mem_init_file => "xpm_56aca2_vivado.mem",
    mem_size => 2048,
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
  register_x0 : entity xil_defaultlib.x16_bit_mod_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
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
-- Generated from Simulink block modulate_16_bit/16_bit_mod/Algorithm/Data NCO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity x16_bit_mod_data_nco is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 8-1 downto 0 )
  );
end x16_bit_mod_data_nco;
architecture structural of x16_bit_mod_data_nco is 
  signal rom_data_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal register_q_net : std_logic_vector( 14-1 downto 0 );
  signal ce_net : std_logic;
  signal convert_dout_net : std_logic_vector( 8-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 12-1 downto 0 );
  signal lfsr_dout_net : std_logic_vector( 16-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 14-1 downto 0 );
begin
  out1 <= rom_data_net;
  mux_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.sysgen_addsub_0b9f66b77d 
  port map (
    clr => '0',
    a => register_q_net,
    b => mux_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.sysgen_addsub_32d3163444 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => lfsr_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  convert : entity xil_defaultlib.x16_bit_mod_xlconvert 
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
  lfsr : entity xil_defaultlib.sysgen_lfsr_2b8781bda4 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    dout => lfsr_dout_net
  );
  rom : entity xil_defaultlib.x16_bit_mod_xlsprom 
  generic map (
    c_address_width => 8,
    c_width => 8,
    latency => 1,
    mem_init_file => "xpm_56aca2_vivado.mem",
    mem_size => 2048,
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
  register_x0 : entity xil_defaultlib.x16_bit_mod_xlregister 
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
-- Generated from Simulink block modulate_16_bit/16_bit_mod/Algorithm
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity x16_bit_mod_algorithm is
  port (
    tvalid_in : in std_logic_vector( 1-1 downto 0 );
    tdata_in : in std_logic_vector( 1-1 downto 0 );
    tlast_in : in std_logic_vector( 1-1 downto 0 );
    mux_en : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tvalid_out : out std_logic_vector( 1-1 downto 0 );
    tdata_out : out std_logic_vector( 16-1 downto 0 );
    tlast_out : out std_logic_vector( 1-1 downto 0 )
  );
end x16_bit_mod_algorithm;
architecture structural of x16_bit_mod_algorithm is 
  signal tdata_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal tlast_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal mux_y_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal rom_data_net : std_logic_vector( 8-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal rom_data_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal mux_en_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult_p_net : std_logic_vector( 16-1 downto 0 );
  signal shift_op_net : std_logic_vector( 16-1 downto 0 );
begin
  tvalid_out <= delay3_q_net;
  tdata_out <= reinterpret_output_port_net;
  tlast_out <= delay1_q_net;
  logical_y_net <= tvalid_in;
  tdata_slice_y_net <= tdata_in;
  tlast_slice_y_net <= tlast_in;
  mux_en_net <= mux_en;
  clk_net <= clk_1;
  ce_net <= ce_1;
  carrier_nco : entity xil_defaultlib.x16_bit_mod_carrier_nco 
  port map (
    in1 => mux1_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => rom_data_net
  );
  data_nco : entity xil_defaultlib.x16_bit_mod_data_nco 
  port map (
    in1 => mux_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => rom_data_net_x0
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_6b3c427840 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_e5166e32d5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_3866d711a4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_3866d711a4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  delay1 : entity xil_defaultlib.x16_bit_mod_xldelay 
  generic map (
    latency => 10,
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
  delay3 : entity xil_defaultlib.x16_bit_mod_xldelay 
  generic map (
    latency => 10,
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
  mult : entity xil_defaultlib.x16_bit_mod_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 4,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 4,
    b_width => 8,
    c_a_type => 0,
    c_a_width => 8,
    c_b_type => 0,
    c_b_width => 8,
    c_baat => 8,
    c_output_width => 16,
    c_type => 0,
    core_name0 => "x16_bit_mod_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 8,
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
  mux : entity xil_defaultlib.sysgen_mux_f8a96ce5a9 
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
  mux1 : entity xil_defaultlib.sysgen_mux_66868b7705 
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
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_ec012024da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => shift_op_net,
    output_port => reinterpret_output_port_net
  );
  shift : entity xil_defaultlib.sysgen_shift_d7d841523c 
  port map (
    clr => '0',
    ip => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
end structural;
-- Generated from Simulink block modulate_16_bit/16_bit_mod/Master FIFO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity x16_bit_mod_master_fifo is
  port (
    tvalid_out : in std_logic_vector( 1-1 downto 0 );
    tdata_out : in std_logic_vector( 16-1 downto 0 );
    tlast_out : in std_logic_vector( 1-1 downto 0 );
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    tready_out : out std_logic_vector( 1-1 downto 0 )
  );
end x16_bit_mod_master_fifo;
architecture structural of x16_bit_mod_master_fifo is 
  signal m_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal tdata_slice_y_net : std_logic_vector( 16-1 downto 0 );
  signal fifo_af_net : std_logic;
  signal ce_net : std_logic;
  signal tlast_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_dout_net : std_logic_vector( 17-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal fifo_empty_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 17-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
begin
  m_axis_tvalid <= inverter4_op_net;
  m_axis_tdata <= tdata_slice_y_net;
  m_axis_tlast <= tlast_slice_y_net;
  tready_out <= inverter2_op_net;
  delay3_q_net <= tvalid_out;
  reinterpret_output_port_net <= tdata_out;
  delay1_q_net <= tlast_out;
  m_axis_tready_net <= m_axis_tready;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat1 : entity xil_defaultlib.sysgen_concat_b5e02fc7d0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret_output_port_net,
    in1 => delay1_q_net,
    y => concat1_y_net
  );
  fifo : entity xil_defaultlib.x16_bit_mod_xlfifogen_u 
  generic map (
    core_name0 => "x16_bit_mod_fifo_generator_i0",
    data_count_width => 11,
    data_width => 17,
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
  inverter2 : entity xil_defaultlib.sysgen_inverter_4d5d2236ab 
  port map (
    clr => '0',
    ip(0) => fifo_af_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  inverter4 : entity xil_defaultlib.sysgen_inverter_4d5d2236ab 
  port map (
    clr => '0',
    ip(0) => fifo_empty_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter4_op_net
  );
  tdata_slice : entity xil_defaultlib.x16_bit_mod_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 16,
    x_width => 17,
    y_width => 16
  )
  port map (
    x => fifo_dout_net,
    y => tdata_slice_y_net
  );
  tlast_slice : entity xil_defaultlib.x16_bit_mod_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 17,
    y_width => 1
  )
  port map (
    x => fifo_dout_net,
    y => tlast_slice_y_net
  );
end structural;
-- Generated from Simulink block modulate_16_bit/16_bit_mod/Slave FIFO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity x16_bit_mod_slave_fifo is
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
end x16_bit_mod_slave_fifo;
architecture structural of x16_bit_mod_slave_fifo is 
  signal tdata_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter2_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal fifo_dout_net : std_logic_vector( 2-1 downto 0 );
  signal s_axis_tdata_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 2-1 downto 0 );
  signal fifo_empty_net : std_logic;
  signal fifo_full_net : std_logic;
  signal tlast_slice_y_net : std_logic_vector( 1-1 downto 0 );
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
  concat : entity xil_defaultlib.sysgen_concat_630c103ce0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => s_axis_tdata_net,
    in1 => s_axis_tlast_net,
    y => concat_y_net
  );
  fifo : entity xil_defaultlib.x16_bit_mod_xlfifogen_u 
  generic map (
    core_name0 => "x16_bit_mod_fifo_generator_i1",
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
  inverter1 : entity xil_defaultlib.sysgen_inverter_4d5d2236ab 
  port map (
    clr => '0',
    ip(0) => fifo_full_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter2 : entity xil_defaultlib.sysgen_inverter_4d5d2236ab 
  port map (
    clr => '0',
    ip(0) => fifo_empty_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_daab7364f9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter2_op_net,
    d1 => inverter2_op_net_x0,
    y => logical_y_net
  );
  tdata_slice : entity xil_defaultlib.x16_bit_mod_xlslice 
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
  tlast_slice : entity xil_defaultlib.x16_bit_mod_xlslice 
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
-- Generated from Simulink block modulate_16_bit/16_bit_mod_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity x16_bit_mod_struct is
  port (
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 1-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    mux_en : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end x16_bit_mod_struct;
architecture structural of x16_bit_mod_struct is 
  signal s_axis_tdata_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal mux_en_net : std_logic_vector( 1-1 downto 0 );
  signal tdata_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal tlast_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal tdata_slice_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal tlast_slice_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal m_axis_tready_net : std_logic_vector( 1-1 downto 0 );
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
  algorithm : entity xil_defaultlib.x16_bit_mod_algorithm 
  port map (
    tvalid_in => logical_y_net,
    tdata_in => tdata_slice_y_net,
    tlast_in => tlast_slice_y_net,
    mux_en => mux_en_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tvalid_out => delay3_q_net,
    tdata_out => reinterpret_output_port_net,
    tlast_out => delay1_q_net
  );
  master_fifo : entity xil_defaultlib.x16_bit_mod_master_fifo 
  port map (
    tvalid_out => delay3_q_net,
    tdata_out => reinterpret_output_port_net,
    tlast_out => delay1_q_net,
    m_axis_tready => m_axis_tready_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    m_axis_tvalid => inverter4_op_net,
    m_axis_tdata => tdata_slice_y_net_x0,
    m_axis_tlast => tlast_slice_y_net_x0,
    tready_out => inverter2_op_net
  );
  slave_fifo : entity xil_defaultlib.x16_bit_mod_slave_fifo 
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
entity x16_bit_mod_default_clock_driver is
  port (
    x16_bit_mod_sysclk : in std_logic;
    x16_bit_mod_sysce : in std_logic;
    x16_bit_mod_sysclr : in std_logic;
    x16_bit_mod_clk1 : out std_logic;
    x16_bit_mod_ce1 : out std_logic
  );
end x16_bit_mod_default_clock_driver;
architecture structural of x16_bit_mod_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => x16_bit_mod_sysclk,
    sysce => x16_bit_mod_sysce,
    sysclr => x16_bit_mod_sysclr,
    clk => x16_bit_mod_clk1,
    ce => x16_bit_mod_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity x16_bit_mod is
  port (
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 1-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    x16_bit_mod_aresetn : in std_logic;
    x16_bit_mod_s_axi_awaddr : in std_logic;
    x16_bit_mod_s_axi_awvalid : in std_logic;
    x16_bit_mod_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    x16_bit_mod_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    x16_bit_mod_s_axi_wvalid : in std_logic;
    x16_bit_mod_s_axi_bready : in std_logic;
    x16_bit_mod_s_axi_araddr : in std_logic;
    x16_bit_mod_s_axi_arvalid : in std_logic;
    x16_bit_mod_s_axi_rready : in std_logic;
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 );
    x16_bit_mod_s_axi_awready : out std_logic;
    x16_bit_mod_s_axi_wready : out std_logic;
    x16_bit_mod_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    x16_bit_mod_s_axi_bvalid : out std_logic;
    x16_bit_mod_s_axi_arready : out std_logic;
    x16_bit_mod_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    x16_bit_mod_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    x16_bit_mod_s_axi_rvalid : out std_logic
  );
end x16_bit_mod;
architecture structural of x16_bit_mod is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "x16_bit_mod,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu43dr,speed=-2-e,package=ffve1156,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=3.003,system_simulink_period=3.003e-09,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=3.003e-05,addsub=4,concat=2,constant=4,convert=2,delay=2,fifo=2,inv=4,lfsr=2,logical=1,mult=1,mux=2,register=2,reinterpret=1,shift=1,slice=4,sprom=2,}";
  signal mux_en : std_logic_vector( 1-1 downto 0 );
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
  signal clk_net : std_logic;
begin
  x16_bit_mod_axi_lite_interface : entity xil_defaultlib.x16_bit_mod_axi_lite_interface 
  port map (
    x16_bit_mod_s_axi_awaddr => x16_bit_mod_s_axi_awaddr,
    x16_bit_mod_s_axi_awvalid => x16_bit_mod_s_axi_awvalid,
    x16_bit_mod_s_axi_wdata => x16_bit_mod_s_axi_wdata,
    x16_bit_mod_s_axi_wstrb => x16_bit_mod_s_axi_wstrb,
    x16_bit_mod_s_axi_wvalid => x16_bit_mod_s_axi_wvalid,
    x16_bit_mod_s_axi_bready => x16_bit_mod_s_axi_bready,
    x16_bit_mod_s_axi_araddr => x16_bit_mod_s_axi_araddr,
    x16_bit_mod_s_axi_arvalid => x16_bit_mod_s_axi_arvalid,
    x16_bit_mod_s_axi_rready => x16_bit_mod_s_axi_rready,
    x16_bit_mod_aresetn => x16_bit_mod_aresetn,
    x16_bit_mod_aclk => clk,
    mux_en => mux_en,
    x16_bit_mod_s_axi_awready => x16_bit_mod_s_axi_awready,
    x16_bit_mod_s_axi_wready => x16_bit_mod_s_axi_wready,
    x16_bit_mod_s_axi_bresp => x16_bit_mod_s_axi_bresp,
    x16_bit_mod_s_axi_bvalid => x16_bit_mod_s_axi_bvalid,
    x16_bit_mod_s_axi_arready => x16_bit_mod_s_axi_arready,
    x16_bit_mod_s_axi_rdata => x16_bit_mod_s_axi_rdata,
    x16_bit_mod_s_axi_rresp => x16_bit_mod_s_axi_rresp,
    x16_bit_mod_s_axi_rvalid => x16_bit_mod_s_axi_rvalid,
    clk => clk_net
  );
  x16_bit_mod_default_clock_driver : entity xil_defaultlib.x16_bit_mod_default_clock_driver 
  port map (
    x16_bit_mod_sysclk => clk_net,
    x16_bit_mod_sysce => '1',
    x16_bit_mod_sysclr => '0',
    x16_bit_mod_clk1 => clk_1_net,
    x16_bit_mod_ce1 => ce_1_net
  );
  x16_bit_mod_struct : entity xil_defaultlib.x16_bit_mod_struct 
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
