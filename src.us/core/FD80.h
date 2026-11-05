#ifndef CORE_FD80_H
#define CORE_FD80_H

/* Functions defined in FD80.c. */
void func_8000EFB8_FBB8(void *);
void func_8000F190_FD90(void (*arg0)(void *));
void func_8000F1E8_FDE8(void);
void func_8000F218_FE18(void);
void func_8000F478_10078(BhGfxTask *arg0);
void func_8000F5A8_101A8(s32 arg0, void *arg1, s32 arg2);
void func_8000F618_10218(void);
void func_8000F6B0_102B0(void *);
void setVideoInterfaceXSize(s32 width);
void setVideoInterfaceYSize(s32 height);
void sourceTaggedPrintF(char *arg0, char *arg1, s32 arg2);

#endif
