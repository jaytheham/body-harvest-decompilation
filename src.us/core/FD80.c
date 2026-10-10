#define CORE_FD80_BSS
#include <ultra64.h>
#include "common.h"


Vp D_80031B60_32760[] = {
	{ {{640, 480, 511, 0}, {640, 480, 511, 0}} },
	{ {{640, 480, 511, 0}, {640, 480, 511, 0}} },
};
s32 D_80031B80_32780 = 0;
s32 D_80031B84_32784 = 0;

/* E830's remaining assembly constants follow its generated double literals.
   Keep the final zero so the stack-overflow strings retain their addresses. */
const f32 D_80037650_38250[] = {6000.0f};
const f32 D_80037654_38254[] = {0.2617993950843811f};
const f32 D_80037658_38258[] = {0.2617993950843811f, 0.0f};

/* Read-only strings, numeric constants, and switch targets. */
const char D_80037660_38260[] = "Schedule Stack Overflow\n";
const char D_8003767C_3827C[] = "Boot Stack Overflow\n";
const char D_80037694_38294[] = "Idle Stack Overflow\n";
const char D_800376AC_382AC[] = "IO Stack Overflow\n";
const char D_800376C0_382C0[] = "Main Stack Overflow\n";
const char D_800376D8_382D8[] = "Rmon Stack Overflow\n";
const char D_800376F0_382F0[] = "Controller Stack Overflow\n";
const char D_8003770C_3830C[] = "Load Level Stack Overflow\n";
const char D_80037728_38328[] = "RCP hang detected\n";
const char D_8003773C_3833C[] = "black screen off\n";
const char D_80037750_38350[] = "black screen on\n";
const char D_80037764_38364[] = "level data %x\n";

void sourceTaggedPrintF(char *arg0, char *arg1, s32 arg2) {
}

void func_8000EF10_FB10(s32 arg0) {
	D_80068078 = 0;
	bzero(&D_8003FB20, 0x803FFFFF - (s32)(&D_8003FB20));
	osInitialize();
	D_80067388.next = NULL;
	D_80067388.queue = NULL;
	osCreateThread(&D_80067388, 1, func_8000EFB8_FBB8, NULL, &D_8005C760, 0xA);
	osStartThread(&D_80067388);
}

void func_8000EF98_FB98(void) {
	osViModeTable[16].fldRegs[0].vStart = 0x330251;
	osViModeTable[16].fldRegs[0].yScale = 0x36D;
}

void func_8000EFB8_FBB8(void *arg0) {
	s16 *ptr;

	ptr = D_80267080; do {
		ptr += 4;
		ptr[-3] = 0;
		ptr[-2] = 0;
		ptr[-1] = 0;
		ptr[-4] = 0;
		continue;
	} while (ptr != (s16 *)&D_802B2080);
	osCreateViManager(0xFE);
	if (osTvType == 0) {
		func_8000EF98_FB98();
		osViSetMode(&D_80035B30_36730);
	} else if (osTvType == 2) {
		osViSetMode(&D_80035F90_36B90);
	} else {
		osViSetMode(&D_800356D0_362D0);
	}
	osViSwapBuffer(D_80267080);
	D_80067538.next = NULL;
	D_80067538.queue = NULL;
	osCreateThread(&D_80067538, 6, func_8000F6B0_102B0, arg0, &D_8005CF68, 8);
	D_800676E8.next = NULL;
	D_800676E8.queue = NULL;
	osCreateThread(&D_800676E8, 3, func_8000FE50_10A50, arg0, &D_80064F70, 4);
	D_80067898.next = NULL;
	D_80067898.queue = NULL;
	osCreateThread(&D_80067898, 7, func_80002EF8_3AF8, arg0, &D_80066780, 5);
	func_8000F218_FE18();
	osCreatePiManager(0x96, &D_80068060, D_80068040, 8);
	func_800047D0_53D0(9, 5);
	osStartThread(&D_80067538);
	osStartThread(&D_80067898);
	osStartThread(&D_800676E8);
	osSetThreadPri(0, 0);
	for (;;);
}

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
	D_8005BB20 = (u8 *)&D_801CE710 - D_80031B84_32784 * 0x22B00;
	D_8005BB28 = (s32)D_8005BB20;
	D_8005BB3C = (s32)(D_8005BB20 + 0x180);
	D_8005BB40 = (s32)(D_8005BB20 + 0x200);
	D_8005BB2C = (Gfx *)(D_8005BB20 + 0x280);
	D_8005BB30 = (Gfx *)(D_8005BB20 + 0xE380);
	D_8005BB34 = (Vtx *)(D_8005BB20 + 0xF500);
	D_8005BB38 = (s32)(D_8005BB20 + 0x1E280);

	D_8005BB24 = (s32)&D_80031B60_32760[D_80031B84_32784];
	((Vp *)D_8005BB24)->vp.vscale[0] = D_80068084 * 2;
	((Vp *)D_8005BB24)->vp.vscale[1] = (s16)(D_80068088 * 2);
	((Vp *)D_8005BB24)->vp.vtrans[0] = (s16)(D_80068084 * 2);
	((Vp *)D_8005BB24)->vp.vtrans[1] = (s16)(D_80068088 * 2);
}

void func_8000F478_10078(BhGfxTask *arg0) {
	BhGfxTask *task;

	osWritebackDCacheAll();
	arg0->list.t.data_ptr = (u64 *)&D_8005BB20[0x280];
	task = arg0;
	task->list.t.data_size = (u32)(((s32)D_8005BB2C - (s32)D_8005BB20 - 0x280) >> 3) * 8;
	task->list.t.type = 1;
	task->list.t.flags = 6;
	task->list.t.ucode_boot_size = (u32)((u8 *)rspbootTextEnd - (u8 *)rspbootTextStart);
	task->list.t.ucode = D_8002DEE0_2EAE0;
	task->list.t.ucode_data = (u64 *)D_8003E860_3F460;
	task->list.t.ucode_size = 0x1000;
	task->list.t.ucode_data_size = 0x800;
	task->list.t.ucode_boot = (u64 *)rspbootTextStart;
	task->list.t.dram_stack = (u64 *)D_80160300;
	task->list.t.dram_stack_size = 0x400;
	task->list.t.output_buff = (u64 *)D_80161700;
	task->list.t.output_buff_size = (u64 *)D_80165700;
	task->list.t.yield_data_ptr = (u64 *)D_80160B00;
	task->list.t.yield_data_size = 0xC00;
	task->next = NULL;
	task->flags = 0x63;
	task->msgQ = &D_8006A908;
	task->msg = &task->unk68;
	task->framebuffer = task->unk88;
	osSendMesg(osScGetCmdQ(&D_800680A0), (OSMesg)task, 1);
}

void func_8000F5A8_101A8(s32 arg0, void *arg1, s32 arg2) {
	OSIoMesg sp28;

	osWritebackDCacheAll();
	osPiStartDma(&sp28, 0, 0, arg0, arg1, arg2, &D_80067FD0);
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

void func_8000F6B0_102B0(void *arg0) {
	/* Unused locals retain the original IDO stack layout. */
	s32 unused9C[4];
	s32 taskIndex;
	s32 pendingTasks;
	OSScClient client;
	s32 completedTaskIndex;
	s32 unused78;
	s32 unused74;
	OSScMsg *message;
	s32 unused6C;
	s32 hangCount;
	s32 unused64;
	s32 taskStartCounts[2];
	s32 frameStartCount;
	s16 retraceCount;
	s16 retraceInterval;

	completedTaskIndex = 0;
	taskIndex = 0;
	pendingTasks = 0;
	retraceCount = 0;

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
	D_80031B84_32784 = 0;
	osScAddClient(&D_800680A0, &client, &D_8006A908);

	func_80012A74_13674();

	osSendMesg(&D_8006A8D0, D_80068038, 1);

	D_80068328 = 0xCEC;
	D_8005BB50 = 0xCEC;
	D_8005BF58 = 0xCEC;
	D_8005C760 = 0xCEC;
	D_8005CF68 = 0xCEC;
	D_80064F70 = 0xCEC;
	D_80065F78 = 0xCEC;
	D_80066780 = 0xCEC;
	D_80068080 = 0;
	D_8006807C = 0;
	D_8006809C = 0;
	D_80068094 = 1.0f;
	D_80068098 = 1.0f;
	setVideoInterfaceXSize(0x140);
	setVideoInterfaceYSize(0xF0);
	D_80035B5C_3675C = 0x400;
	osViBlack(1);
	D_80068080 = 4;

	for (;;) {
		if (D_80068328 != 0xCEC) {
			osSyncPrintf(D_80037660_38260);
		}
		if (D_8005BB50 != 0xCEC) {
			osSyncPrintf(D_8003767C_3827C);
		}
		if (D_8005BF58 != 0xCEC) {
			osSyncPrintf(D_80037694_38294);
		}
		if (D_8005C760 != 0xCEC) {
			osSyncPrintf(D_800376AC_382AC);
		}
		if (D_8005CF68 != 0xCEC) {
			osSyncPrintf(D_800376C0_382C0);
		}
		if (D_80064F70 != 0xCEC) {
			osSyncPrintf(D_800376D8_382D8);
		}
		if (D_80065F78 != 0xCEC) {
			osSyncPrintf(D_800376F0_382F0);
		}
		if (D_80066780 != 0xCEC) {
			osSyncPrintf(D_8003770C_3830C);
		}

		osRecvMesg(&D_8006A908, (OSMesg *)&message, 1);

		switch (message->type) {
		case 1:
			D_800313D4_31FD4++;
			retraceCount++;
			if (pendingTasks >= 2) {
				hangCount++;
			}
			if (hangCount >= 0xB) {
				osSyncPrintf(D_80037728_38328);
				hangCount = 0;
			}
			func_80013818_14418();
			func_80004C34_5834();
			if (D_80052ACA == 0 || D_80052ACA == 2 || D_80052ACA == 5 || D_80052ACA == 4) {
				if (gameplayMode == 6) {
					retraceInterval = 2;
				} else {
					retraceInterval = 3;
				}
			} else {
				retraceInterval = 1;
			}
			if (gameplayMode == 0 || gameplayMode == 0xE || gameplayMode == 7 || gameplayMode == 4 || gameplayMode == 0x10) {
				retraceInterval = 1;
			}
			if (D_80052ACC != 0) {
				retraceInterval = 2;
			}
			if (pendingTasks < 2 && retraceCount >= retraceInterval) {
				retraceCount = 0;
				func_8000F368_FF68();
				func_80003064_3C64();
				frameStartCount = osGetCount();
				if (D_80068080 != 0) {
					D_8006807C = 1;
					D_80068080--;
				}
				if (D_8006807C != 0) {
					if (D_80068080 == 0) {
						osSyncPrintf(D_8003773C_3833C);
						osViBlack(0);
						D_80035B5C_3675C = 0x36D;
						osViSetYScale(D_80068090);
						D_8006807C = 0;
					} else {
						osSyncPrintf(D_80037750_38350);
						D_80035B5C_3675C = 0x400;
						osViSetYScale(1.0f);
						osViBlack(1);
					}
				}
				osSendMesg(&D_8006A8D0, D_80068038, 1);
				if (D_8006809C == 2) {
					D_8006809C--;
				}
				osRecvMesg(&D_8006A8B0, &D_80068038, 1);
				D_80052B38 = osGetCount() - frameStartCount;
				gSPEndDisplayList(&((BhGfxBuffer *)D_8005BB20)->displayList[0x1C1F]);
				func_8000F478_10078(&D_8006A940[taskIndex]);
				taskStartCounts[taskIndex] = osGetCount();
				D_80031B84_32784 = 1U - D_80031B84_32784;
				taskIndex ^= 1;
				pendingTasks++;
			}
			break;

		case 2:
			hangCount = 0;
			D_80052B3C = osGetCount() - taskStartCounts[completedTaskIndex];
			pendingTasks--;
			completedTaskIndex ^= 1;
			if (D_8006809C == 1 && D_8006807C == 0) {
				osViSetXScale(D_8006808C);
				osViSetYScale(D_80068090);
				D_8006809C--;
			}
			break;

		case 4:
			D_80068078 = 1;
			taskIndex = 0;
			pendingTasks = 0;
			retraceCount = 0;
			hangCount = 0;
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
			for (;;);
			break;
		}
	}
}
