proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "x16_bit_mod" "NUM_INSTANCES" "DEVICE_ID" "C_X16_BIT_MOD_S_AXI_BASEADDR" "C_X16_BIT_MOD_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "x16_bit_mod_g.c" "x16_bit_mod" "DEVICE_ID" "C_X16_BIT_MOD_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "x16_bit_mod" "DEVICE_ID" "C_X16_BIT_MOD_S_AXI_BASEADDR" "C_X16_BIT_MOD_S_AXI_HIGHADDR" 

}