#include <ultra64.h>
#include "common.h"


/* Out-of-line epilogue of func_8000EFB8_FBB8.
 * That function saves ra with a 0x20-byte frame, then ends in an
 * infinite loop (osSetThreadPri + b self). The compiler placed the
 * matching frame restore here at the start of the next linker segment
 * (FD80). There is no caller: the function is physically unreachable
 * via jal. It cannot be reproduced as a standalone C function without
 * a prologue appearing before the restores. */
#ifdef NON_MATCHING
void func_8000F180_FD80(void) {
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/FD80/func_8000F180_FD80.s")
#endif

void func_8000F190_FD90(void (*arg0)(void *)) {
	D_80067A48.next = NULL;
	D_80067A48.queue = NULL;
	osCreateThread(&D_80067A48, 8, arg0, NULL, &D_80067388, 3);
	osStartThread(&D_80067A48);
}

void func_8000F1E8_FDE8(void) {
	osStopThread(&D_80067A48);
	osDestroyThread(&D_80067A48);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/FD80/func_8000F218_FE18.s")

void func_8000F368_FF68(void) {
    D_8005BB20 = (u8 *)&D_801CE710 - D_80031B84 * 0x22B00;
    D_8005BB28 = (s32)D_8005BB20;
    D_8005BB3C = (s32)(D_8005BB20 + 0x180);
    D_8005BB40 = (s32)(D_8005BB20 + 0x200);
    D_8005BB2C = (Gfx *)(D_8005BB20 + 0x280);
    D_8005BB30 = (Gfx *)(D_8005BB20 + 0xE380);
    D_8005BB34 = (Vtx *)(D_8005BB20 + 0xF500);
    D_8005BB38 = (s32)(D_8005BB20 + 0x1E280);

    D_8005BB24 = (s32)&D_80031B60_32760[D_80031B84];
    ((Vp *)D_8005BB24)->vp.vscale[0] = D_80068084 * 2;
    ((Vp *)D_8005BB24)->vp.vscale[1] = (s16)(D_80068088 * 2);
    ((Vp *)D_8005BB24)->vp.vtrans[0] = (s16)(D_80068084 * 2);
    ((Vp *)D_8005BB24)->vp.vtrans[1] = (s16)(D_80068088 * 2);
}

#ifdef NON_MATCHING
void func_8000F478_10078(BhGfxTask *arg0) {
    osWritebackDCacheAll();
    arg0->list.t.data_ptr = (u64 *)(D_8005BB20 + 0x280);
    arg0->list.t.data_size = (((u8 *)D_8005BB2C - D_8005BB20) - 0x280) >> 3 << 3;
    arg0->list.t.ucode_boot_size = (u32)((u8 *)D_8002DEE0_2EAE0 - (u8 *)rspbootTextStart);
    arg0->list.t.type = 1;
    arg0->list.t.flags = 6;
    arg0->list.t.ucode_data = (u64 *)D_8003E860_3F460;
    arg0->list.t.ucode_data_size = 0x800;
    arg0->list.t.ucode = (u64 *)D_8002DEE0_2EAE0;
    arg0->list.t.ucode_size = 0x1000;
    arg0->list.t.ucode_boot = (u64 *)rspbootTextStart;
    arg0->list.t.dram_stack = (u64 *)D_80160300;
    arg0->list.t.dram_stack_size = 0x400;
    arg0->list.t.output_buff = (u64 *)D_80161700;
    arg0->list.t.output_buff_size = (u64 *)D_80165700;
    arg0->list.t.yield_data_ptr = (u64 *)D_80160B00;
    arg0->list.t.yield_data_size = 0xC00;
    arg0->next = NULL;
    arg0->flags = 0x63;
    arg0->msgQ = &D_8006A908;
    arg0->msg = (OSMesg)((u8 *)arg0 + 0x68);
    arg0->framebuffer = arg0->unk88;
    osSendMesg(osScGetCmdQ(&D_800680A0), (OSMesg)arg0, OS_MESG_BLOCK);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/FD80/func_8000F478_10078.s")
#endif

void func_8000F5A8_101A8(s32 arg0, s32 arg1, s32 arg2) {
	OSIoMesg sp28;

	osWritebackDCacheAll();
	osPiStartDma(&sp28, 0, 0, arg0, (void *)arg1, arg2, &D_80067FD0);
	osRecvMesg(&D_80067FD0, &D_80068038, 1);
}

void func_8000F618_10218()
{
	func_8000A160();
	osViSetSpecialFeatures(OS_VI_GAMMA_OFF);
	osViSetSpecialFeatures(OS_VI_DITHER_FILTER_ON);
}

void setVideoInterfaceXSize(s32 arg0) {
	D_80068084 = arg0;
	D_8006808C = (f32) arg0 / 320.0f;
	D_8006809C = 2;
}

void setVideoInterfaceYSize(s32 arg0) {
	D_80068088 = arg0;
	D_80068090 = (f32) arg0 / 240.0f;
	D_8006809C = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/FD80/func_8000F6B0_102B0.s")
