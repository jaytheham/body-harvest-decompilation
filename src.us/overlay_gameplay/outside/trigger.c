#include <ultra64.h>
#include "common.h"


void func_800AE2C0_BD270(void) {
    u8 i;
    for (i = 0; i < 0xD0; i++) {
        D_80222A78[i].unk0 = 0;
    }
    D_8014F820 = 0;
    D_80223778 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE300_BD2B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE3AC_BD35C.s")

// Writes data for the next trigger to be executed?
// Data waits at 0x802232C8 (Greece) until the trigger is executed
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE454_BD404.s")

// guess_initAlienWaves
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE588_BD538.s")

// guess_checkTriggers
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE6CC_BD67C.s")

void func_800AEBC4_BDB74(s32 arg0) {
    if (currentLevel == 4 && D_80047F94 == 3) {
        func_80013314_13F14();
        D_80052AE0 = gameplayMode;
        gameplayMode = 0xA;
        return;
    }
    func_800A6FD4_B5F84();
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AEC34_BDBE4.s")

// spawnAlienWave(short xPostion, short yPosition, ubyte waveType, ubyte orientation)
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AEE5C_BDE0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF0C0_BE070.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF1F8_BE1A8.s")

void func_800AF2BC_BE26C(void *arg0) { func_80017B08_18708(((u8 *)arg0)[8]); }

void func_800AF2DC_BE28C(s32 arg0, s32 arg1) {
    Unk80222A78 tmp;
    tmp.unk8 = arg0;
    tmp.unk0 = 2;
    tmp.unk4 = arg1 + D_8014F820;
    tmp.unkC = func_800AF2BC_BE26C;
    func_800AE454_BD404(&tmp);
}

void func_800AF324_BE2D4(s32 arg0) { func_80088000_96FB0(-1); }

// guess_initTriggers
void func_800AF348_BE2F8(s32 arg0) {
    Unk80222A78 tmp;
    tmp.unk8 = 0;
    tmp.unk0 = 2;
    tmp.unk4 = arg0 + D_8014F820;
    tmp.unkC = func_800AF324_BE2D4;
    func_800AE454_BD404(&tmp);
}

void func_800AF390_BE340(Unk80222A78 *arg0) {
    arg0->unk0 = 1;
    arg0->unkC = 0;
    func_800AE454_BD404(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF3B8_BE368.s")

void func_800AF474_BE424(s32 arg0) {}
void func_800AF47C_BE42C(s32 arg0) {}
void func_800AF484_BE434(s32 arg0) {}
void func_800AF48C_BE43C(s32 arg0) {}
void func_800AF494_BE444(s32 arg0) {}
void func_800AF49C_BE44C(s32 arg0) {}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF4A4_BE454.s")

#ifdef NON_MATCHING
void func_800AF52C_BE4DC(s32 arg0) {
    u8 *ptr;
    u8 val;
    ptr = D_80048038 + arg0;
    val = *ptr;
    if (val == 1 || val == 0) {
        osSyncPrintf(&D_80142BDC, arg0);
        *ptr = 3;
        if (D_8014CFF0[arg0 * 2] != 0x93) {
            func_800AF764_BE714((s16)D_8014CFF0[arg0 * 2]);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF52C_BE4DC.s")
#endif

#ifdef NON_MATCHING
void func_800AF5B0_BE560(s32 arg0) {
    u8 *ptr;
    u8 val;
    ptr = D_80048038 + arg0;
    val = *ptr;
    if (val == 1 || val == 0) {
        osSyncPrintf(&D_80142BEC, arg0);
        *ptr = 2;
        if (D_8014CFF1[arg0 * 2] != 0x93) {
            func_800AF764_BE714((s16)D_8014CFF1[arg0 * 2]);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF5B0_BE560.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF634_BE5E4.s")

#ifdef NON_MATCHING
void func_800AF764_BE714(s16 arg0) {
    s32 sp18;
    s32 sp1C;
    Unk80222A78 tmp;
    sp18 = D_80223788[arg0 * 5];
    sp1C = D_8014F820;
    tmp.pad9[0] = arg0;
    tmp.unk4 = sp18 + sp1C + 0xA;
    tmp.unk0 = 2;
    tmp.unkC = func_800AFD48_BECF8;
    func_800AE454_BD404(&tmp);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF764_BE714.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF7D4_BE784.s")

void func_800AF870_BE820(Unk80222A78 *arg0) {
    func_800AEE5C_BDE0C((s16)((arg0->unk1 << 8) + 0x80), (s16)((arg0->unk2 << 8) + 0x80), arg0->pad9[0], 0xFF);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF8C4_BE874.s")

void func_800AF95C_BE90C(s16 arg0, s16 arg1, s32 arg2, s32 arg3) {
    Unk80222A78 tmp;
    tmp.unk1 = arg0 >> 8;
    tmp.unk2 = arg1 >> 8;
    tmp.pad9[0] = arg2;
    tmp.unk4 = arg3 + D_8014F820;
    tmp.unk0 = 2;
    tmp.unkC = func_800AF8C4_BE874;
    func_800AE454_BD404(&tmp);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF9C0_BE970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFA98_BEA48.s")

void func_800AFB38_BEAE8(s16 arg0, s16 arg1, s32 arg2, s32 arg3, s32 arg4) {
    Unk80222A78 tmp;
    tmp.unk1 = arg0 >> 8;
    tmp.unk2 = arg1 >> 8;
    tmp.pad9[0] = arg2;
    tmp.unk8 = arg3;
    tmp.unk4 = arg4 + D_8014F820;
    tmp.unk0 = 2;
    tmp.unkC = func_800AFA98_BEA48;
    func_800AE454_BD404(&tmp);
}

void func_800AFBA4_BEB54(s16 arg0, s16 arg1) {
    func_800AFB38_BEAE8(arg0, arg1, 0x16, 0xFF, 0x96);
    func_8001A650_1B250(0x18);
    D_80031410 = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFBF8_BEBA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFD48_BECF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFE68_BEE18.s")

void func_800AFF9C_BEF4C(s32 arg0, s32 arg1, s32 arg2) {
    Unk80222A78 tmp;
    tmp.unk0 = 2;
    tmp.unk8 = arg0;
    tmp.pad9[0] = arg1;
    tmp.unk4 = arg2 + D_8014F820;
    tmp.unkC = func_800AFE68_BEE18;
    func_800AE454_BD404(&tmp);
}

void func_800AFFE8_BEF98(s32 arg0) {}

void func_800AFFF0_BEFA0(s32 arg0) {
	D_801493E0 = 0;
}

#ifdef NON_MATCHING
void func_800B0000_BEFB0(s32 arg0) { D_801493E0 = 1; D_801493E2 = 1; }
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0000_BEFB0.s")
#endif

void func_800B001C_BEFCC(u16 arg0) {
    Unk80222A78 tmp;
    tmp.unk0 = 2;
    tmp.unk4 = arg0 + D_8014F820;
    tmp.unkC = func_800B0068_BF018;
    func_800AE454_BD404(&tmp);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0068_BF018.s")

void func_800B0110_BF0C0(s32 arg0) {
    Unk80222A78 tmp;
    tmp.unk0 = 2;
    tmp.unk4 = D_8014F820 + 0x23;
    tmp.unkC = func_800B0000_BEFB0;
    func_800CF80C_DE7BC(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, -0x64, 0xA0, 0xFF, 0, 0);
    func_800AE454_BD404(&tmp);
}

void func_800B018C_BF13C(s32 arg0) {
    Unk80222A78 tmp;
    func_80013314_13F14();
    gameplayMode = 0xA;
    tmp.unk0 = 2;
    tmp.unk4 = D_8014F820 + 0xC8;
    tmp.unkC = func_800B0068_BF018;
    func_800AE454_BD404(&tmp);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B01E4_BF194.s")

void func_800B0288_BF238(s32 arg0) {
    Unk80222A78 tmp;
    tmp.unk0 = 2;
    if (currentLevel != 1) {
        if (currentLevel == 5) {
            return;
        }
        tmp.unk4 = D_8014F820 + 0x10E;
    } else {
        tmp.unk4 = D_8014F820 + 0x172;
    }
    tmp.unkC = func_800B01E4_BF194;
    func_800AE454_BD404(&tmp);
}

void func_800B02FC_BF2AC(Unk80222A78 *arg0) {
    u8 idx = arg0->unk2;
    D_8014F828 += 1;
    alienInstances[idx].unk20 |= (1 << (arg0->unk1 + 0xB));
}

void func_800B034C_BF2FC(void) {
    Unk80222A78 tmp;
    tmp.unk0 = 2;
    tmp.unk4 = D_8014F820 + 0x50;
    tmp.unkC = func_800B01E4_BF194;
    func_800AE454_BD404(&tmp);
}

void func_800B0390_BF340(Unk80222A78 *arg0) {
    func_800AE2C0_BD270();
    D_80157F94 = arg0->unk8;
    func_802D4CD0_18D7E0(0x14, 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B03CC_BF37C.s")

void func_800B06C4_BF674(Unk80222A78 *arg0) {
    func_800B03CC_BF37C(arg0->unk8, (s16)((arg0->unk1 << 8) + 0x80), (s16)((arg0->unk2 << 8) + 0x80), arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0710_BF6C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0830_BF7E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B08DC_BF88C.s")

s32 func_800B0A00_BF9B0(void) { return D_80047F98; }
