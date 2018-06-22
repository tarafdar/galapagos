// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XCONV_LAYER_H
#define XCONV_LAYER_H

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
#include "xconv_layer_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
} XConv_layer_Config;
#endif

typedef struct {
    u32 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XConv_layer;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XConv_layer_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XConv_layer_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XConv_layer_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XConv_layer_ReadReg(BaseAddress, RegOffset) \
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
int XConv_layer_Initialize(XConv_layer *InstancePtr, u16 DeviceId);
XConv_layer_Config* XConv_layer_LookupConfig(u16 DeviceId);
int XConv_layer_CfgInitialize(XConv_layer *InstancePtr, XConv_layer_Config *ConfigPtr);
#else
int XConv_layer_Initialize(XConv_layer *InstancePtr, const char* InstanceName);
int XConv_layer_Release(XConv_layer *InstancePtr);
#endif

void XConv_layer_Start(XConv_layer *InstancePtr);
u32 XConv_layer_IsDone(XConv_layer *InstancePtr);
u32 XConv_layer_IsIdle(XConv_layer *InstancePtr);
u32 XConv_layer_IsReady(XConv_layer *InstancePtr);
void XConv_layer_EnableAutoRestart(XConv_layer *InstancePtr);
void XConv_layer_DisableAutoRestart(XConv_layer *InstancePtr);

void XConv_layer_Set_input_offset(XConv_layer *InstancePtr, u32 Data);
u32 XConv_layer_Get_input_offset(XConv_layer *InstancePtr);
void XConv_layer_Set_output_offset(XConv_layer *InstancePtr, u32 Data);
u32 XConv_layer_Get_output_offset(XConv_layer *InstancePtr);
void XConv_layer_Set_b(XConv_layer *InstancePtr, u32 Data);
u32 XConv_layer_Get_b(XConv_layer *InstancePtr);
void XConv_layer_Set_od(XConv_layer *InstancePtr, u32 Data);
u32 XConv_layer_Get_od(XConv_layer *InstancePtr);
void XConv_layer_Set_ox(XConv_layer *InstancePtr, u32 Data);
u32 XConv_layer_Get_ox(XConv_layer *InstancePtr);
void XConv_layer_Set_oy(XConv_layer *InstancePtr, u32 Data);
u32 XConv_layer_Get_oy(XConv_layer *InstancePtr);
void XConv_layer_Set_id(XConv_layer *InstancePtr, u32 Data);
u32 XConv_layer_Get_id(XConv_layer *InstancePtr);
void XConv_layer_Set_ix(XConv_layer *InstancePtr, u32 Data);
u32 XConv_layer_Get_ix(XConv_layer *InstancePtr);
void XConv_layer_Set_iy(XConv_layer *InstancePtr, u32 Data);
u32 XConv_layer_Get_iy(XConv_layer *InstancePtr);
void XConv_layer_Set_s(XConv_layer *InstancePtr, u32 Data);
u32 XConv_layer_Get_s(XConv_layer *InstancePtr);
void XConv_layer_Set_k(XConv_layer *InstancePtr, u32 Data);
u32 XConv_layer_Get_k(XConv_layer *InstancePtr);

void XConv_layer_InterruptGlobalEnable(XConv_layer *InstancePtr);
void XConv_layer_InterruptGlobalDisable(XConv_layer *InstancePtr);
void XConv_layer_InterruptEnable(XConv_layer *InstancePtr, u32 Mask);
void XConv_layer_InterruptDisable(XConv_layer *InstancePtr, u32 Mask);
void XConv_layer_InterruptClear(XConv_layer *InstancePtr, u32 Mask);
u32 XConv_layer_InterruptGetEnabled(XConv_layer *InstancePtr);
u32 XConv_layer_InterruptGetStatus(XConv_layer *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
