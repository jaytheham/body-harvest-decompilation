#include <ultra64.h>
#include "common.h"


/* The FD80 restore stub is emitted out-of-line by func_8000EFB8_FBB8 when
 * that function is compiled from C, so no standalone definition is kept here. */

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

void func_8000F218_FE18(void) {
    osCreateMesgQueue(&D_80067F58, D_8006A7E0, 0x32);
    osCreateMesgQueue(&D_80067F70, D_80067FF0, 0x10);
    osCreateMesgQueue(&D_80067F88, &D_80068030, 1);
    osCreateMesgQueue(&D_80067FA0, &D_80067FE8, 1);
    osSetEventMesg(4, &D_80067FA0, D_80068038);
    osCreateMesgQueue(&D_80067FB8, &D_80067FEC, 1);
    osViSetEvent(&D_80067FB8, D_80068038, 1);
    osCreateMesgQueue(&D_8006A8D0, &D_8006A8C8, 1);
    osCreateMesgQueue(&D_8006A8B0, &D_8006A8A8, 1);
    osCreateMesgQueue(&D_8006A8F0, &D_8006A8E8, 1);
    osCreateMesgQueue(&D_8006A908, D_8006A920, 8);
    osCreateMesgQueue(&D_80067FD0, &D_80068034, 1);
    osCreateMesgQueue(&D_80068060, D_80068040, 8);
}

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

#ifdef NON_MATCHING
void func_8000F6B0_102B0(s32 arg0) {
    OSScClient sp80;
    s32 sp7C;
    s32 sp78;
    s32 sp74;
    OSScMsg *sp70;
    s32 sp68;
    s32 sp64;
    s32 sp60;
    s32 sp5C[2];
    s32 sp58;
    s32 var_s4;
    s32 var_s0;
    s16 var_s5;
    s16 var_v1;

    sp7C = 0;
    var_s4 = 0;
    var_s0 = 0;
    var_s5 = 0;

    if (osTvType == 0) {
        osCreateScheduler(&D_800680A0, &D_8006A330, 0xC, 0x10, 1);
    } else if (osTvType == 2) {
        osCreateScheduler(&D_800680A0, &D_8006A330, 0xC, 0x1E, 1);
    } else {
        osCreateScheduler(&D_800680A0, &D_8006A330, 0xC, 2, 1);
    }

    D_8006A940[0].unk68 = 2;
    D_8006A940[1].unk68 = 2;
    D_8006A940[0].unk88 = D_80267080;
    D_8006A940[1].unk88 = FrameBufferB;
    D_8005BB48[0] = (s32)D_80267080;
    D_8005BB48[1] = (s32)FrameBufferB;
    D_80031B84 = 0;
    osScAddClient(&D_800680A0, &sp80, &D_8006A908);

    func_80012A74_13674();

    osSendMesg(&D_8006A8D0, D_80068038, 1);

    D_8006832C = 0xCEC;
    D_80068328 = 0;
    D_8005BB54 = 0xCEC;
    D_8005BB50 = 0;
    D_8005BF5C = 0xCEC;
    D_8005BF58 = 0;
    D_8005C764 = 0xCEC;
    D_8005C760 = (void *)0;
    *(s32 *)D_8005CF68 = 0;
    D_8005CF6C = 0xCEC;
    *(s32 *)D_80064F70 = 0;
    D_80064F74 = 0xCEC;
    D_80065F78 = 0;
    D_80065F7C = 0xCEC;
    *(s32 *)D_80066780 = 0;
    D_80066784 = 0xCEC;
    D_80068080 = 0;
    D_8006807C = 0;
    D_8006809C = 0;
    D_80068094 = 1.0f;
    D_80068098 = 1.0f;
    setVideoInterfaceXSize(0x140);
    setVideoInterfaceYSize(0xF0);
    D_80035B5C = 0x400;
    osViBlack(1);
    D_80068080 = 4;

    for (;;) {
        if (D_80068328 != 0 || D_8006832C != 0xCEC) {
            osSyncPrintf(&D_80037660_38260);
        }
        if (D_8005BB50 != 0 || D_8005BB54 != 0xCEC) {
            osSyncPrintf(&D_8003767C_3827C);
        }
        if (D_8005BF58 != 0 || D_8005BF5C != 0xCEC) {
            osSyncPrintf(&D_80037694_38294);
        }
        if (D_8005C760 != 0 || D_8005C764 != 0xCEC) {
            osSyncPrintf(&D_800376AC_382AC);
        }
        if (*(s32 *)D_8005CF68 != 0 || D_8005CF6C != 0xCEC) {
            osSyncPrintf(&D_800376C0_382C0);
        }
        if (*(s32 *)D_80064F70 != 0 || D_80064F74 != 0xCEC) {
            osSyncPrintf(&D_800376D8_382D8);
        }
        if (D_80065F78 != 0 || D_80065F7C != 0xCEC) {
            osSyncPrintf(&D_800376F0_382F0);
        }
        if (*(s32 *)D_80066780 != 0 || D_80066784 != 0xCEC) {
            osSyncPrintf(&D_8003770C_3830C);
        }

        osRecvMesg(&D_8006A908, (OSMesg *)&sp70, 1);

        switch (sp70->type) {
        case 1:
            D_800313D4++;
            var_s5++;
            if (var_s0 >= 2) {
                sp64++;
            }
            if (sp64 >= 0xB) {
                osSyncPrintf(&D_80037728_38328);
                sp64 = 0;
            }
            func_80013818_14418();
            func_80004C34_5834();
            if (D_80052ACA == 0 || D_80052ACA == 2 || D_80052ACA == 5 || D_80052ACA == 4) {
                if (gameplayMode == 6) {
                    var_v1 = 2;
                } else {
                    var_v1 = 3;
                }
            } else {
                var_v1 = 1;
            }
            if (gameplayMode == 0 || gameplayMode == 0xE || gameplayMode == 7 || gameplayMode == 4 || gameplayMode == 0x10) {
                var_v1 = 1;
            }
            if (D_80052ACC != 0) {
                var_v1 = 2;
            }
            if (var_s0 < 2 && var_s5 >= var_v1) {
                var_s5 = 0;
                func_8000F368_FF68();
                func_80003064_3C64();
                sp58 = osGetCount();
                if (D_80068080 != 0) {
                    D_8006807C = 1;
                    D_80068080--;
                }
                if (D_8006807C != 0) {
                    if (D_80068080 == 0) {
                        osSyncPrintf(&D_8003773C_3833C);
                        osViBlack(0);
                        D_80035B5C = 0x36D;
                        osViSetYScale(D_80068090);
                        D_8006807C = 0;
                    } else {
                        osSyncPrintf(&D_80037750_38350);
                        D_80035B5C = 0x400;
                        osViSetYScale(1.0f);
                        osViBlack(1);
                    }
                }
                osSendMesg(&D_8006A8D0, D_80068038, 1);
                if (D_8006809C == 2) {
                    D_8006809C--;
                }
                osRecvMesg(&D_8006A8B0, &D_80068038, 1);
                D_80052B38 = osGetCount() - sp58;
                gSPEndDisplayList((Gfx *)(D_8005BB20 + 0xe378));
                func_8000F478_10078(&D_8006A940[var_s4]);
                sp5C[var_s4] = osGetCount();
                D_80031B84 = 1 - D_80031B84;
                var_s4 ^= 1;
                var_s0++;
            }
            break;

        case 2:
            sp64 = 0;
            var_s0--;
            D_80052B3C = osGetCount() - sp5C[sp7C];
            sp7C ^= 1;
            if (D_8006809C == 1 && D_8006807C == 0) {
                osViSetXScale(D_8006808C);
                osViSetYScale(D_80068090);
                D_8006809C--;
            }
            break;

        case 4:
            D_80068078 = 1;
            var_s4 = 0;
            var_s0 = 0;
            var_s5 = 0;
            sp64 = 0;
            func_8001599C_1659C();
            func_80001108_1D08();
            osViModeTable[16].fldRegs[0].yScale = 0x400;
            osViModeTable[16].fldRegs[0].vStart = 0x5F0239;
            osViSetXScale(1.0f);
            osViSetYScale(1.0f);
            osViBlack(1);
            osDestroyThread(&D_80067DA8);
            osDestroyThread(&D_80067898);
            osDestroyThread(&D_800676E8);
            for (;;) {}
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/FD80/func_8000F6B0_102B0.s")
#endif
