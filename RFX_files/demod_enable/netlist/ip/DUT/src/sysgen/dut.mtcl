proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "dut" "NUM_INSTANCES" "DEVICE_ID" "C_DUT_S_AXI_BASEADDR" "C_DUT_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "dut_g.c" "dut" "DEVICE_ID" "C_DUT_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "dut" "DEVICE_ID" "C_DUT_S_AXI_BASEADDR" "C_DUT_S_AXI_HIGHADDR" 

}