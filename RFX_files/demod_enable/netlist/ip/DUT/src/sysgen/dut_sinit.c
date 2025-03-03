/**
* @file dut_sinit.c
*
* The implementation of the dut driver's static initialzation
* functionality.
*
* @note
*
* None
*
*/
#ifndef __linux__
#include "xstatus.h"
#include "xparameters.h"
#include "dut.h"
extern dut_Config dut_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type dut_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
dut_Config *dut_LookupConfig(u16 DeviceId) {
    dut_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_DUT_NUM_INSTANCES; Index++) {
        if (dut_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &dut_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int dut_Initialize(dut *InstancePtr, u16 DeviceId) {
    dut_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = dut_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return dut_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
