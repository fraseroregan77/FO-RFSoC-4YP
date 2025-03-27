#ifndef X16_BIT_DEMOD__H
#define X16_BIT_DEMOD__H
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
#include "x16_bit_demod_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 x16_bit_demod_BaseAddress;
} x16_bit_demod_Config;
#endif
/**
* The x16_bit_demod driver instance data. The user is required to
* allocate a variable of this type for every x16_bit_demod device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 x16_bit_demod_BaseAddress;
    u32 IsReady;
} x16_bit_demod;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define x16_bit_demod_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define x16_bit_demod_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define x16_bit_demod_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define x16_bit_demod_ReadReg(BaseAddress, RegOffset) \
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
int x16_bit_demod_Initialize(x16_bit_demod *InstancePtr, u16 DeviceId);
x16_bit_demod_Config* x16_bit_demod_LookupConfig(u16 DeviceId);
int x16_bit_demod_CfgInitialize(x16_bit_demod *InstancePtr, x16_bit_demod_Config *ConfigPtr);
#else
int x16_bit_demod_Initialize(x16_bit_demod *InstancePtr, const char* InstanceName);
int x16_bit_demod_Release(x16_bit_demod *InstancePtr);
#endif
/**
* Write to step_size gateway of x16_bit_demod. Assignments are LSB-justified.
*
* @param	InstancePtr is the step_size instance to operate on.
* @param	Data is value to be written to gateway step_size.
*
* @return	None.
*
* @note    .
*
*/
void x16_bit_demod_step_size_write(x16_bit_demod *InstancePtr, int Data);
/**
* Read from step_size gateway of x16_bit_demod. Assignments are LSB-justified.
*
* @param	InstancePtr is the step_size instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int x16_bit_demod_step_size_read(x16_bit_demod *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
