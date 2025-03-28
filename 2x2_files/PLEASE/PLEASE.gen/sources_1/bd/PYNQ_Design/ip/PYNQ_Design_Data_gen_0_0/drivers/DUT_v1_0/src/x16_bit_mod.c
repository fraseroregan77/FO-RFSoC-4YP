#include "x16_bit_mod.h"
#ifndef __linux__
int x16_bit_mod_CfgInitialize(x16_bit_mod *InstancePtr, x16_bit_mod_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->x16_bit_mod_BaseAddress = ConfigPtr->x16_bit_mod_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void x16_bit_mod_mux_en_write(x16_bit_mod *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    x16_bit_mod_WriteReg(InstancePtr->x16_bit_mod_BaseAddress, 0, Data);
}
u32 x16_bit_mod_mux_en_read(x16_bit_mod *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = x16_bit_mod_ReadReg(InstancePtr->x16_bit_mod_BaseAddress, 0);
    return Data;
}
