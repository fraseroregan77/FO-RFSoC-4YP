proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "x16_bit_demod" "NUM_INSTANCES" "DEVICE_ID" "C_X16_BIT_DEMOD_STEP_SIZE_S_AXI_BASEADDR" "C_X16_BIT_DEMOD_STEP_SIZE_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "x16_bit_demod_g.c" "x16_bit_demod" "DEVICE_ID" "C_X16_BIT_DEMOD_STEP_SIZE_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "x16_bit_demod" "DEVICE_ID" "C_X16_BIT_DEMOD_STEP_SIZE_S_AXI_BASEADDR" "C_X16_BIT_DEMOD_STEP_SIZE_S_AXI_HIGHADDR" 

}