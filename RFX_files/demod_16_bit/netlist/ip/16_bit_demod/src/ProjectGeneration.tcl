# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set VHDL2008Support 1
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xczu43dr}
	set DSPFamily {zynquplus}
	set DSPPackage {fsve1156}
	set DSPSpeed {-2-e}
	set FPGAClockPeriod 3.003
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {C:/Users/clb20123/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {Vitis Model Composer}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {VMC}
	set IP_LifeCycle_Menu {1}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {DUT}
	set IP_Revision {374022412}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {x16_bit_demod}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{vivado_ip.tcl}}
		{{xpm_7255ef_vivado.mem}}
		{{x16_bit_demod_step_size_axi_lite_interface_verilog.v}}
		{{conv_pkg.v}}
		{{synth_reg.v}}
		{{synth_reg_w_init.v}}
		{{convert_type.v}}
		{{x16_bit_demod.mdd}}
		{{x16_bit_demod_hw.h}}
		{{x16_bit_demod.h}}
		{{x16_bit_demod_sinit.c}}
		{{x16_bit_demod.c}}
		{{x16_bit_demod_linux.c}}
		{{x16_bit_demod.mtcl}}
		{{Makefile.mak}}
		{{index.html}}
		{{x16_bit_demod_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{x16_bit_demod.vhd} -lib {xil_defaultlib}}
		{{x16_bit_demod_clock.xdc}}
		{{x16_bit_demod.xdc}}
	}
	set SimPeriod 3.003e-09
	set SimTime 3.003e-05
	set SimulationTime {30233.00300000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Users/clb20123/Documents/FO-RFSoC-4YP/RFX_files/demod_16_bit/netlist/ip/16_bit_demod/src}
	set TopLevelModule {x16_bit_demod}
	set TopLevelSimulinkHandle 2.00024
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface m_axis_tready Name {m_axis_tready}
	dict set TopLevelPortInterface m_axis_tready Type Bool
	dict set TopLevelPortInterface m_axis_tready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tready BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tready Width 1
	dict set TopLevelPortInterface m_axis_tready DatFile {demodulate_16_bit1_m_axis_tready.dat}
	dict set TopLevelPortInterface m_axis_tready IconText {m_axis_tready}
	dict set TopLevelPortInterface m_axis_tready Direction in
	dict set TopLevelPortInterface m_axis_tready Period 1
	dict set TopLevelPortInterface m_axis_tready Interface 0
	dict set TopLevelPortInterface m_axis_tready InterfaceName {}
	dict set TopLevelPortInterface m_axis_tready InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tready ClockDomain {x16_bit_demod}
	dict set TopLevelPortInterface m_axis_tready Locs {}
	dict set TopLevelPortInterface m_axis_tready IOStandard {}
	dict set TopLevelPortInterface s_axis_tlast Name {s_axis_tlast}
	dict set TopLevelPortInterface s_axis_tlast Type Bool
	dict set TopLevelPortInterface s_axis_tlast ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tlast BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tlast Width 1
	dict set TopLevelPortInterface s_axis_tlast DatFile {demodulate_16_bit1_s_axis_tlast.dat}
	dict set TopLevelPortInterface s_axis_tlast IconText {s_axis_tlast}
	dict set TopLevelPortInterface s_axis_tlast Direction in
	dict set TopLevelPortInterface s_axis_tlast Period 1
	dict set TopLevelPortInterface s_axis_tlast Interface 0
	dict set TopLevelPortInterface s_axis_tlast InterfaceName {}
	dict set TopLevelPortInterface s_axis_tlast InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tlast ClockDomain {x16_bit_demod}
	dict set TopLevelPortInterface s_axis_tlast Locs {}
	dict set TopLevelPortInterface s_axis_tlast IOStandard {}
	dict set TopLevelPortInterface s_axis_tdata Name {s_axis_tdata}
	dict set TopLevelPortInterface s_axis_tdata Type UFix_16_0
	dict set TopLevelPortInterface s_axis_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tdata BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tdata Width 16
	dict set TopLevelPortInterface s_axis_tdata DatFile {demodulate_16_bit1_s_axis_tdata.dat}
	dict set TopLevelPortInterface s_axis_tdata IconText {s_axis_tdata}
	dict set TopLevelPortInterface s_axis_tdata Direction in
	dict set TopLevelPortInterface s_axis_tdata Period 1
	dict set TopLevelPortInterface s_axis_tdata Interface 0
	dict set TopLevelPortInterface s_axis_tdata InterfaceName {}
	dict set TopLevelPortInterface s_axis_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tdata ClockDomain {x16_bit_demod}
	dict set TopLevelPortInterface s_axis_tdata Locs {}
	dict set TopLevelPortInterface s_axis_tdata IOStandard {}
	dict set TopLevelPortInterface s_axis_tvalid Name {s_axis_tvalid}
	dict set TopLevelPortInterface s_axis_tvalid Type Bool
	dict set TopLevelPortInterface s_axis_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tvalid BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tvalid Width 1
	dict set TopLevelPortInterface s_axis_tvalid DatFile {demodulate_16_bit1_s_axis_tvalid.dat}
	dict set TopLevelPortInterface s_axis_tvalid IconText {s_axis_tvalid}
	dict set TopLevelPortInterface s_axis_tvalid Direction in
	dict set TopLevelPortInterface s_axis_tvalid Period 1
	dict set TopLevelPortInterface s_axis_tvalid Interface 0
	dict set TopLevelPortInterface s_axis_tvalid InterfaceName {}
	dict set TopLevelPortInterface s_axis_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tvalid ClockDomain {x16_bit_demod}
	dict set TopLevelPortInterface s_axis_tvalid Locs {}
	dict set TopLevelPortInterface s_axis_tvalid IOStandard {}
	dict set TopLevelPortInterface m_axis_tvalid Name {m_axis_tvalid}
	dict set TopLevelPortInterface m_axis_tvalid Type Bool
	dict set TopLevelPortInterface m_axis_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tvalid BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tvalid Width 1
	dict set TopLevelPortInterface m_axis_tvalid DatFile {}
	dict set TopLevelPortInterface m_axis_tvalid IconText {Inverter4}
	dict set TopLevelPortInterface m_axis_tvalid Direction out
	dict set TopLevelPortInterface m_axis_tvalid Period 1
	dict set TopLevelPortInterface m_axis_tvalid Interface 0
	dict set TopLevelPortInterface m_axis_tvalid InterfaceName {}
	dict set TopLevelPortInterface m_axis_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tvalid ClockDomain {x16_bit_demod}
	dict set TopLevelPortInterface m_axis_tvalid Locs {}
	dict set TopLevelPortInterface m_axis_tvalid IOStandard {}
	dict set TopLevelPortInterface m_axis_tdata Name {m_axis_tdata}
	dict set TopLevelPortInterface m_axis_tdata Type UFix_32_0
	dict set TopLevelPortInterface m_axis_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tdata BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tdata Width 32
	dict set TopLevelPortInterface m_axis_tdata DatFile {}
	dict set TopLevelPortInterface m_axis_tdata IconText {tdata_slice}
	dict set TopLevelPortInterface m_axis_tdata Direction out
	dict set TopLevelPortInterface m_axis_tdata Period 1
	dict set TopLevelPortInterface m_axis_tdata Interface 0
	dict set TopLevelPortInterface m_axis_tdata InterfaceName {}
	dict set TopLevelPortInterface m_axis_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tdata ClockDomain {x16_bit_demod}
	dict set TopLevelPortInterface m_axis_tdata Locs {}
	dict set TopLevelPortInterface m_axis_tdata IOStandard {}
	dict set TopLevelPortInterface m_axis_tlast Name {m_axis_tlast}
	dict set TopLevelPortInterface m_axis_tlast Type Bool
	dict set TopLevelPortInterface m_axis_tlast ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tlast BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tlast Width 1
	dict set TopLevelPortInterface m_axis_tlast DatFile {}
	dict set TopLevelPortInterface m_axis_tlast IconText {tlast_slice}
	dict set TopLevelPortInterface m_axis_tlast Direction out
	dict set TopLevelPortInterface m_axis_tlast Period 1
	dict set TopLevelPortInterface m_axis_tlast Interface 0
	dict set TopLevelPortInterface m_axis_tlast InterfaceName {}
	dict set TopLevelPortInterface m_axis_tlast InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tlast ClockDomain {x16_bit_demod}
	dict set TopLevelPortInterface m_axis_tlast Locs {}
	dict set TopLevelPortInterface m_axis_tlast IOStandard {}
	dict set TopLevelPortInterface s_axis_tready Name {s_axis_tready}
	dict set TopLevelPortInterface s_axis_tready Type Bool
	dict set TopLevelPortInterface s_axis_tready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tready BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tready Width 1
	dict set TopLevelPortInterface s_axis_tready DatFile {}
	dict set TopLevelPortInterface s_axis_tready IconText {Inverter1}
	dict set TopLevelPortInterface s_axis_tready Direction out
	dict set TopLevelPortInterface s_axis_tready Period 1
	dict set TopLevelPortInterface s_axis_tready Interface 0
	dict set TopLevelPortInterface s_axis_tready InterfaceName {}
	dict set TopLevelPortInterface s_axis_tready InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tready ClockDomain {x16_bit_demod}
	dict set TopLevelPortInterface s_axis_tready Locs {}
	dict set TopLevelPortInterface s_axis_tready IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_aresetn Name {x16_bit_demod_aresetn}
	dict set TopLevelPortInterface x16_bit_demod_aresetn Type -
	dict set TopLevelPortInterface x16_bit_demod_aresetn ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_aresetn BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_aresetn Width 1
	dict set TopLevelPortInterface x16_bit_demod_aresetn DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_aresetn IconText {x16_bit_demod_aresetn}
	dict set TopLevelPortInterface x16_bit_demod_aresetn Direction in
	dict set TopLevelPortInterface x16_bit_demod_aresetn Period 1
	dict set TopLevelPortInterface x16_bit_demod_aresetn Interface 8
	dict set TopLevelPortInterface x16_bit_demod_aresetn InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_aresetn InterfaceString {ARESETN}
	dict set TopLevelPortInterface x16_bit_demod_aresetn ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_aresetn Locs {}
	dict set TopLevelPortInterface x16_bit_demod_aresetn IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr Name {x16_bit_demod_step_size_s_axi_awaddr}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr Width 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr IconText {x16_bit_demod_step_size_s_axi_awaddr}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr Direction in
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awaddr IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid Name {x16_bit_demod_step_size_s_axi_awvalid}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid Width 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid IconText {x16_bit_demod_step_size_s_axi_awvalid}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid Direction in
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awvalid IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready Name {x16_bit_demod_step_size_s_axi_awready}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready Width 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready IconText {x16_bit_demod_step_size_s_axi_awready}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready Direction out
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_awready IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata Name {x16_bit_demod_step_size_s_axi_wdata}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata Width 32
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata IconText {x16_bit_demod_step_size_s_axi_wdata}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata Direction in
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wdata IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb Name {x16_bit_demod_step_size_s_axi_wstrb}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb Width 4
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb IconText {x16_bit_demod_step_size_s_axi_wstrb}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb Direction in
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wstrb IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid Name {x16_bit_demod_step_size_s_axi_wvalid}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid Width 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid IconText {x16_bit_demod_step_size_s_axi_wvalid}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid Direction in
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wvalid IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready Name {x16_bit_demod_step_size_s_axi_wready}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready Width 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready IconText {x16_bit_demod_step_size_s_axi_wready}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready Direction out
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_wready IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp Name {x16_bit_demod_step_size_s_axi_bresp}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp Width 2
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp IconText {x16_bit_demod_step_size_s_axi_bresp}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp Direction out
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bresp IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid Name {x16_bit_demod_step_size_s_axi_bvalid}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid Width 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid IconText {x16_bit_demod_step_size_s_axi_bvalid}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid Direction out
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bvalid IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready Name {x16_bit_demod_step_size_s_axi_bready}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready Width 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready IconText {x16_bit_demod_step_size_s_axi_bready}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready Direction in
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_bready IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr Name {x16_bit_demod_step_size_s_axi_araddr}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr Width 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr IconText {x16_bit_demod_step_size_s_axi_araddr}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr Direction in
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_araddr IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid Name {x16_bit_demod_step_size_s_axi_arvalid}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid Width 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid IconText {x16_bit_demod_step_size_s_axi_arvalid}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid Direction in
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arvalid IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready Name {x16_bit_demod_step_size_s_axi_arready}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready Width 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready IconText {x16_bit_demod_step_size_s_axi_arready}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready Direction out
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_arready IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata Name {x16_bit_demod_step_size_s_axi_rdata}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata Width 32
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata IconText {x16_bit_demod_step_size_s_axi_rdata}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata Direction out
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rdata IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp Name {x16_bit_demod_step_size_s_axi_rresp}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp Width 2
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp IconText {x16_bit_demod_step_size_s_axi_rresp}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp Direction out
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rresp IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid Name {x16_bit_demod_step_size_s_axi_rvalid}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid Width 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid IconText {x16_bit_demod_step_size_s_axi_rvalid}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid Direction out
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rvalid IOStandard {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready Name {x16_bit_demod_step_size_s_axi_rready}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready Type -
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready BinaryPoint 0
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready Width 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready DatFile {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready IconText {x16_bit_demod_step_size_s_axi_rready}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready Direction in
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready Period 1
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready Interface 5
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready InterfaceName {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready ClockDomain {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready Locs {}
	dict set TopLevelPortInterface x16_bit_demod_step_size_s_axi_rready IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {x16_bit_demod}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {x16_bit_demod_step_size_s_axi }
	dict set TopLevelPortInterface clk AssociatedResets {x16_bit_demod_aresetn }
	set MemoryMappedPort {}
	dict set MemoryMappedPort step_size Name {step_size}
	dict set MemoryMappedPort step_size Type Fix_16_8
	dict set MemoryMappedPort step_size ArithmeticType xlSigned
	dict set MemoryMappedPort step_size BinaryPoint 8
	dict set MemoryMappedPort step_size Width 16
	dict set MemoryMappedPort step_size DatFile {demodulate_16_bit1_16_bit_demod_algorithm_step_size.dat}
	dict set MemoryMappedPort step_size AddressOffset 0
	dict set MemoryMappedPort step_size IconText {step_size}
	dict set MemoryMappedPort step_size Direction in
	dict set MemoryMappedPort step_size Period 1
	dict set MemoryMappedPort step_size Interface 2
	dict set MemoryMappedPort step_size InterfaceName {step_size}
	dict set MemoryMappedPort step_size InterfaceString {CONTROL}
	dict set MemoryMappedPort step_size ClockDomain {x16_bit_demod}
	dict set MemoryMappedPort step_size Locs {}
	dict set MemoryMappedPort step_size IOStandard {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project