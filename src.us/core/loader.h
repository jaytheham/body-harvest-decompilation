#ifndef CORE_LOADER_H
#define CORE_LOADER_H

/* Functions defined in loader.c. */
void __osInitialize_emu(void);
s32 debug_printModelSegmentEnd(void *arg0);
s32 destroyThreadIfMessageInQueue(void);
s32 func_8000FFC0_10BC0(s32 arg0, s32 arg1, s32 arg2, s32 arg3);
s32 func_800101F0_10DF0(s32 arg0, s32 arg1, s32 arg2);
s32 func_80010290_10E90(s32 arg0);
s32 func_8001032C_10F2C();
s32 func_800104AC_110AC(u8 arg0);
s32 func_800105F0_111F0(void *arg0, s32 *arg1, s32 *arg2, s32 arg3, u8 arg4, s32 *arg5);
void func_80011674_12274(void);
void func_800117D8_123D8(void);
void func_800118F8_124F8(void);
s32 func_800119A8_125A8();
s32 func_800119F4_125F4();
s32 func_80011A40_12640(u8 arg0, s32 arg1);
s32 func_80011AC8_126C8();
s32 func_80011B14_12714();
s32 func_80011B60_12760(u8 arg0, s32 arg1);
s32 func_80011BE8_127E8();
void func_80011D24_12924(void);
s32 func_80011D6C_1296C(s32 arg0);
s32 func_80011DBC_129BC();
void func_80011E14_12A14(u8 arg0);
s32 func_80011F90_12B90(void *arg0);
s32 func_80011FAC_12BAC(void *arg0);
s32 func_80012000_12C00(s32 arg0);
void loadFrontendData(void);
void loadLevel(s32 arg0);
void loadLevelCode(u8 arg0);
void loadLevelData(u8 arg0);

#endif
