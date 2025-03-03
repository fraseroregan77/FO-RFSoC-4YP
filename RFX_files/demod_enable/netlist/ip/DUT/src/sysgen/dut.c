#include "dut.h"
#ifndef __linux__
int dut_CfgInitialize(dut *InstancePtr, dut_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->dut_BaseAddress = ConfigPtr->dut_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
u32 dut_fir_data_tready_read(dut *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = dut_ReadReg(InstancePtr->dut_BaseAddress, 0);
    return Data;
}
u32 dut_fir_data_tvalid_read(dut *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = dut_ReadReg(InstancePtr->dut_BaseAddress, 4);
    return Data;
}
