#ifndef CORE_1050_H
#define CORE_1050_H

/* Functions defined in 1050.c. */
OSThread *__osGetActiveQueue(void);
void checkForRumblePak(void);
void func_80000450_1050(ALSynConfig *arg0, s32 arg1);
void func_80000730_1330(s32 arg0);
s32 func_8000091C_151C(BhAudioTask *arg0, BhAudioBuf *arg1);
void func_80000AD4_16D4(BhAudioBuf *arg0);
s32 func_80000B14_1714(s32 addr, s32 len, void *state);
void* (*func_80000CD4_18D4(Unk80042DA8** arg0))(void);
void func_80000D0C_190C(void);
void func_80000ED4_1AD4(void);
void func_80001050_1C50(s32);
void func_8000108C_1C8C(s32);
void func_800010C4_1CC4(s32);
void func_80001108_1D08(void);
void func_80001144_1D44(u8 arg0, u8 arg1, u8 arg2);
void func_80001190_1D90(void);
void func_8000140C_200C(OSThread *arg0);
void func_80001424_2024(void);
void func_800015B4_21B4(s32 arg0, s32 arg1);
void func_800016D8_22D8(void);
void func_80001830_2430(void);
void func_80001984_2584(void);
void func_800020E0_2CE0(s32 arg0, s32 arg1);
void func_800021CC_2DCC(s32 arg0);
s32 func_80002A88_3688(s32 arg0);
s32 func_80002B20_3720(s32 arg0);
void func_80002EF8_3AF8(void *);
void func_80003064_3C64(void);
void func_800033D4_3FD4(u16 arg0, s32 arg1);
void func_8000345C_405C(u16 arg0);
void func_800035D8_41D8(s16 arg0);
s16 func_80003680_4280(f32 arg0);
s16 func_80003740_4340(f32 arg0);
s16 func_80003824_4424(f32, f32);
s32 func_800038E0_44E0();
f32 func_80003910_4510(f32 arg0, s32 arg1);
f32 func_8000393C_453C(f32 arg0, s32 arg1);
void func_800039D0_45D0(Unk80052B40 *, Unk80052B40 *, Unk80052B40 *, Mtx *);
void func_80003DE8_49E8(TransformRow *, s16 *, s16 *, Mtx *);
void func_80004214_4E14(s16 arg0, s32 arg1);
s32 func_80004254_4E54(f32 arg0, s32 arg1, s32 *arg2, s32 *arg3);
extern s32 func_80004498_5098(f32 arg0);
void func_800044D4_50D4(s16 *arg0, s32 *arg1, s16 *arg2);
void getSaveFileName(s32, u8*);
void guess_deleteSavedData(void);
void guess_loadSavedGame(s32 arg0);
void guess_prepareToSaveGame(s32 arg0);
void guess_restoreSavedData(void);
s32 isButtonNewlyPressed(s32 controllerNum, u16 buttonMask);
void osViExtendVStart(s32 arg0);
void setRandomSeed(s32 arg0);
s32 validateSaveVersionAndChecksum(s32 arg0, s32 arg1);

#endif
