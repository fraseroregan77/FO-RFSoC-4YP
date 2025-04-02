#include "x16_bit_demod.h"
#ifndef __linux__
int x16_bit_demod_CfgInitialize(x16_bit_demod *InstancePtr, x16_bit_demod_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->x16_bit_demod_step_size_BaseAddress = ConfigPtr->x16_bit_demod_step_size_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void x16_bit_demod_step_size_write(x16_bit_demod *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    x16_bit_demod_WriteReg(InstancePtr->x16_bit_demod_step_size_BaseAddress, 0, Data);
}
int x16_bit_demod_step_size_read(x16_bit_demod *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = x16_bit_demod_ReadReg(InstancePtr->x16_bit_demod_step_size_BaseAddress, 0);
    return Data;
}
