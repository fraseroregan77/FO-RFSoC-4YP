#ifndef DUT__H
#define DUT__H
#ifdef __cplusplus
extern "C" {
#endif
/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "dut_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 dut_BaseAddress;
} dut_Config;
#endif
/**
* The dut driver instance data. The user is required to
* allocate a variable of this type for every dut device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 dut_BaseAddress;
    u32 IsReady;
} dut;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define dut_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define dut_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define dut_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define dut_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif
/************************** Function Prototypes *****************************/
#ifndef __linux__
int dut_Initialize(dut *InstancePtr, u16 DeviceId);
dut_Config* dut_LookupConfig(u16 DeviceId);
int dut_CfgInitialize(dut *InstancePtr, dut_Config *ConfigPtr);
#else
int dut_Initialize(dut *InstancePtr, const char* InstanceName);
int dut_Release(dut *InstancePtr);
#endif
/**
* Read from fir_data_tready gateway of dut. Assignments are LSB-justified.
*
* @param	InstancePtr is the fir_data_tready instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 dut_fir_data_tready_read(dut *InstancePtr);
/**
* Read from fir_data_tvalid gateway of dut. Assignments are LSB-justified.
*
* @param	InstancePtr is the fir_data_tvalid instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 dut_fir_data_tvalid_read(dut *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
