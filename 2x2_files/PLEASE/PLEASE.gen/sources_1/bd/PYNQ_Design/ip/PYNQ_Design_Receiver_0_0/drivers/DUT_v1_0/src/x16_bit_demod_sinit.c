/**
* @file x16_bit_demod_sinit.c
*
* The implementation of the x16_bit_demod driver's static initialzation
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
#include "x16_bit_demod.h"
extern x16_bit_demod_Config x16_bit_demod_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type x16_bit_demod_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
x16_bit_demod_Config *x16_bit_demod_LookupConfig(u16 DeviceId) {
    x16_bit_demod_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_X16_BIT_DEMOD_NUM_INSTANCES; Index++) {
        if (x16_bit_demod_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &x16_bit_demod_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int x16_bit_demod_Initialize(x16_bit_demod *InstancePtr, u16 DeviceId) {
    x16_bit_demod_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = x16_bit_demod_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return x16_bit_demod_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
