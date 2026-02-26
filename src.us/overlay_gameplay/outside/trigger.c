#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE2C0_BD270.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE300_BD2B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE3AC_BD35C.s")

// Writes data for the next trigger to be executed?
// Data waits at 0x802232C8 (Greece) until the trigger is executed
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE454_BD404.s")

// guess_initAlienWaves
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE588_BD538.s")

// guess_checkTriggers
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE6CC_BD67C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AEBC4_BDB74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AEC34_BDBE4.s")

// spawnAlienWave(short xPostion, short yPosition, ubyte waveType, ubyte orientation)
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AEE5C_BDE0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF0C0_BE070.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF1F8_BE1A8.s")

void func_800AF2BC_BE26C(void *arg0) { func_80017B08_18708(((u8 *)arg0)[8]); }

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF2DC_BE28C.s")

void func_800AF324_BE2D4(s32 arg0) { func_80088000_96FB0(-1); }

// guess_initTriggers
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF348_BE2F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF390_BE340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF3B8_BE368.s")

void func_800AF474_BE424(s32 arg0) {}
void func_800AF47C_BE42C(s32 arg0) {}
void func_800AF484_BE434(s32 arg0) {}
void func_800AF48C_BE43C(s32 arg0) {}
void func_800AF494_BE444(s32 arg0) {}
void func_800AF49C_BE44C(s32 arg0) {}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF4A4_BE454.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF52C_BE4DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF5B0_BE560.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF634_BE5E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF764_BE714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF7D4_BE784.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF870_BE820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF8C4_BE874.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF95C_BE90C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF9C0_BE970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFA98_BEA48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFB38_BEAE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFBA4_BEB54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFBF8_BEBA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFD48_BECF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFE68_BEE18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFF9C_BEF4C.s")

void func_800AFFE8_BEF98(s32 arg0) {}

void func_800AFFF0_BEFA0(s32 arg0) {
    D_801493E0 = 0;
}

#ifdef NON_MATCHING
void func_800B0000_BEFB0(s32 arg0) { D_801493E0 = 1; D_801493E2 = 1; }
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0000_BEFB0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B001C_BEFCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0068_BF018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0110_BF0C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B018C_BF13C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B01E4_BF194.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0288_BF238.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B02FC_BF2AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B034C_BF2FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0390_BF340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B03CC_BF37C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B06C4_BF674.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0710_BF6C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0830_BF7E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B08DC_BF88C.s")

s32 func_800B0A00_BF9B0(void) { return D_80047F98; }
