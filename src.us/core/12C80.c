#include <ultra64.h>
#include "common.h"

/* Audio queue, music playback, fade, and volume state. */
s32 D_80031CA0_328A0 = 0;
s8 D_80031CA4_328A4 = -1;
s16 D_80031CA8_328A8 = 0;
s16 D_80031CAC_328AC = -1;
s16 D_80031CB0_328B0 = 0;
s8 D_80031CB4_328B4 = 0;
s32 D_80031CB8_328B8 = 0;
s32 D_80031CBC_328BC = 0;
s32 D_80031CC0_328C0[] = {0, 0, 0, 0};
s8 D_80031CD0_328D0[] = {-1, -1};
s16 D_80031CD4_328D4 = -1;
s32 D_80031CD8_328D8 = 0;
s16 D_80031CDC_328DC = 0;
s32 D_80031CE0_328E0 = 0;
s32 D_80031CE4_328E4[] = {0, 0};
s32 D_80031CEC_328EC = 0;
s32 D_80031CF0_328F0 = 0;
s32 D_80031CF4_328F4 = 0;
s32 D_80031CF8_328F8 = 0;
s32 D_80031CFC_328FC = 0;
s32 D_80031D00_32900 = 0;
s32 D_80031D04_32904[] = {0, 0, 0};
s32 D_80031D10_32910 = 750000;
s16 D_80031D14_32914 = 10;
s16 D_80031D18_32918 = 20;
s8 D_80031D1C_3291C[] = {-1, -1};
s32 D_80031D20_32920[] = {0, 0};
s8 D_80031D28_32928[] = {0, 0};
f32 D_80031D2C_3292C[] = {0.0f, 0.0f};
f32 D_80031D34_32934[] = {0.0f, 0.0f};
f32 D_80031D3C_3293C[] = {0.0f, 0.0f};
f32 D_80031D44_32944[] = {0.0f, 0.0f};
s8 D_80031D4C_3294C = 0;
f32 D_80031D50_32950 = 0.0f;
f32 D_80031D54_32954 = 0.0f;
f32 D_80031D58_32958 = 0.0f;
f32 D_80031D5C_3295C = 0.0f;
f32 D_80031D60_32960 = 0.75f;
f32 D_80031D64_32964 = 1.0f;
s16 D_80031D68_32968 = -1;
s32 D_80031D6C_3296C = 0;

s16 D_80031D70_32970 = 1;

/* Music volumes. */
s32 D_80031D74_32974[] = {
	0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF,
	0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF,
	0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF,
	0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF,
	0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF,
	0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF,
	0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF,
	0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF,
	0x5FFF, 0x5FFF, 0x5FFF, 0x5FFF,
};

/* Sound volumes. */
s16 D_80031F04_32B04[] = {
	0x6FFF, 0x6FFF, 0x7FFF, 0x6FFF, 0x6FFF, 0x6FFF, 0x6FFF, 0x6FFF, 0x6FFF, 0x6FFF, 0x5FFF, 0x6FFF,
	0x7FFF, 0x6FFF, 0x7FFF, 0x6FFF, 0x6FFF, 0x7FFF, 0x6FFF, 0x6FFF, 0x7FFF, 0x6FFF, 0x7FFF, 0x6FFF,
	0x7FFF, 0x6FFF, 0x6FFF, 0x5FFF, 0x6FFF, 0x5FFF, 0x7FFF, 0x6FFF, 0x6FFF, 0x5FFF, 0x6FFF, 0x6FFF,
	0x6FFF, 0x6FFF, 0x6FFF, 0x6FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF,
	0x3FFF, 0x3FFF, 0x7FFF, 0x7FFF, 0x3AAA, 0x7FFF, 0x3FFF, 0x7FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF,
	0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x6000, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x7FFF, 0x7FFF,
	0x7FFF, 0x7FFF, 0x7FFF, 0x3FFF, 0x3FFF, 0x7FFF, 0x1FFF, 0x6FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF,
	0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x4FFF, 0x6FFF, 0x6FFF,
	0x3FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x3FFF, 0x3FFF, 0x7FFF, 0x7FFF, 0x3FFF, 0x6FFF, 0x6FFF,
	0x3FFF, 0x3FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x5000, 0x5000, 0x5000, 0x5000,
	0x3FFF, 0x3FFF, 0x7FFF, 0x3FFF, 0x6FFF, 0x6FFF, 0x4FFF, 0x4FFF, 0x3FFF, 0x3FFF, 0x6FFF, 0x6FFF,
	0x3FFF, 0x7FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF,
	0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x1FFF, 0x4FFF, 0x6FFF, 0x6FFF, 0x6FFF, 0x3FFF,
	0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x4FFF, 0x4FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF,
	0x3FFF, 0x3FFF, 0x6FFF, 0x6FFF, 0x6CCC, 0x6000, 0x5FFF, 0x7FFF, 0x7FFF, 0x6FFF, 0x6FFF, 0x6FFF,
	0x7FFF, 0x6FFF, 0x6FFF, 0x6FFF, 0x6FFF, 0x6FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF,
	0x6FFF, 0x6FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x5FFF, 0x6FFF, 0x3FFF, 0x7000, 0x7000, 0x7000, 0x7000,
	0x6FFF, 0x5FFF, 0x3FFF, 0x3FFF, 0x7FFF, 0x7FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x6FFF, 0x3FFF, 0x5FFF,
	0x3FFF, 0x5FFF, 0x5FFF, 0x6FFF, 0x4FFF, 0x3FFF, 0x3FFF, 0x5FFF, 0x5FFF, 0x6FFF, 0x3FFF, 0x5FFF,
	0x3FFF, 0x3FFF, 0x7FFF, 0x7FFF, 0x5FFF, 0x7FFF, 0x2FFF, 0x6FFF, 0x3FFF, 0x3FFF, 0x3FFF, 0x3FFF,
	0x3FFF, 0x3FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x6FFF, 0x6FFF, 0x6FFF, 0x6FFF, 0x6FFF, 0x7FFF, 0x7FFF,
	0x7FFF, 0x7FFF, 0x4FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF,
	0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF,
	0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF,
	0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF,
	0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF,
	0x7FFF, 0x7FFF, 0x7FFF, 0x4FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x6FFF, 0x7FFF,
	0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x5FFF,
	0x5FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x4FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF,
	0x7FFF, 0x7FFF, 0x6FFF, 0x3FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF,
	0x4FFF, 0x3FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x2FFF, 0x7FFF, 0x7FFF, 0x3FFF, 0x7FFF, 0x7FFF, 0x3FFF,
	0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x3FFF, 0x7FFF, 0x7FFF,
	0x7FFF, 0x7FFF, 0x2FFF, 0x7FFF, 0x6FFF, 0x7FFF, 0x7FFF, 0x5FFF, 0x2FFF, 0x7FFF, 0x7FFF, 0x5FFF,
	0x6FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF,
};

/* Sound priorities; D_80032310_32F10 aliases entry 0xE8. */
u8 D_80032228_32E28[] = {
	127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127,
	127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127,
	127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127,
	127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127,
	127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127,
	0, 0, 0, 0, 0, 127, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 127, 0, 127, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 125, 125, 125, 125, 125, 125,
	125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125,
	125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125,
	125, 125, 125, 125, 125, 125, 127, 127, 125, 125, 127, 127,
	127, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 127, 0, 127, 0, 0, 0, 0, 0, 0, 0, 127,
	0, 0, 0, 0, 127, 125, 0, 0, 0, 0, 0, 0,
	125, 0, 0, 127, 127, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 125, 125, 0, 127, 127, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 125, 125, 125, 125,
	125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 127, 127, 0, 0, 0, 0, 0, 0, 0, 127, 0,
	125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	127, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 124, 124, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 127, 0, 0, 127, 0, 0, 0,
	127, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127,
	0, 125, 127, 127, 125, 125, 0, 127, 0, 0, 0, 127,
	127, 0, 0, 0, 0, 0,
};

/* Terrain audio values. */
f32 D_800323BC_32FBC[] = {
	0.3f, 0.3f, 0.1f, 0.1f, 0.3f, 0.2f, 0.15f, 0.2f, 0.1f, 0.3f,
	0.3f, 0.2f, 0.3f, 0.1f, 0.15f, 0.3f, 0.3f, 0.3f, 0.3f, 0.3f,
	0.3f, 0.2f, 0.3f, 0.2f, 0.1f, 0.1f, 0.3f, 0.2f, 0.1f,
};

/* Sound distance limits. */
f32 D_80032430_33030[] = {
	8e+02f, 8e+02f, 8e+02f, 8e+02f, 8e+02f, 8e+02f, 8e+02f, 8e+02f,
	8e+02f, 8e+02f, 8e+02f, 8e+02f, 8e+02f, 8e+02f, 8e+02f, 8e+02f,
	4e+03f, 8e+02f, 8e+02f, 8e+02f, 8e+02f, 8e+02f, 8e+02f, 8e+02f,
	8e+02f, 8e+02f, 8e+02f, 8e+02f, 4e+03f, 4e+03f, 1e+03f, 5e+03f,
	5e+03f, 5e+03f, 5e+03f, 5e+03f, 5e+03f, 5e+03f, 5e+03f, 2e+03f,
	2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f,
	2e+03f, 2e+03f, 4e+03f, 2e+03f, 2e+03f, 1e+03f, 2e+03f, 2e+03f,
	2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f,
	2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f,
	2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 4e+03f, 2e+03f,
	2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f,
	2e+03f, 2e+03f, 4e+03f, 4e+03f, 5e+03f, 3e+03f, 3e+03f, 3e+03f,
	3.5e+03f, 4.5e+03f, 4.5e+03f, 4.5e+03f, 4e+03f, 101.0f, 102.0f, 103.0f,
	3.5e+03f, 8e+03f, 5e+03f, 4.5e+03f, 108.0f, 109.0f, 2e+03f, 4e+03f,
	5e+03f, 113.0f, 114.0f, 115.0f, 3e+03f, 3.5e+03f, 4e+03f, 4.5e+03f,
	4.5e+03f, 4.5e+03f, 8e+03f, 4.5e+03f, 5e+03f, 5e+03f, 5e+02f, 5e+02f,
	128.0f, 129.0f, 3.5e+03f, 4e+03f, 4.5e+03f, 5e+03f, 134.0f, 135.0f,
	136.0f, 137.0f, 138.0f, 139.0f, 1e+03f, 1e+03f, 4e+03f, 1e+03f,
	1e+03f, 2e+03f, 146.0f, 147.0f, 148.0f, 149.0f, 1e+03f, 1e+03f,
	2e+03f, 2e+03f, 2e+03f, 155.0f, 156.0f, 157.0f, 158.0f, 159.0f,
	2e+03f, 2e+03f, 162.0f, 163.0f, 164.0f, 165.0f, 166.0f, 167.0f,
	168.0f, 169.0f, 8e+03f, 4e+03f, 5e+02f, 5e+02f, 5e+03f, 3e+03f,
	4e+03f, 4e+03f, 4e+03f, 6e+03f, 8e+03f, 4e+03f, 4e+03f, 183.0f,
	2e+03f, 7e+03f, 186.0f, 187.0f, 188.0f, 189.0f, 1.9e+02f, 191.0f,
	2e+03f, 2e+03f, 2e+03f, 2e+03f, 4e+03f, 2e+03f, 2e+03f, 199.0f,
	2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 3e+03f, 3e+03f, 4e+03f,
	2.5e+03f, 4e+03f, 2.5e+03f, 4e+03f, 4e+03f, 2.5e+03f, 2.5e+03f, 215.0f,
	216.0f, 2.5e+03f, 2.5e+03f, 6e+03f, 1e+04f, 4e+03f, 2.5e+03f, 2.5e+03f,
	2.5e+03f, 2.5e+03f, 2.5e+03f, 2e+03f, 2e+03f, 229.0f, 6e+03f, 4e+03f,
	5.5e+03f, 5e+03f, 4.5e+03f, 8e+03f, 236.0f, 237.0f, 3e+03f, 3e+03f,
	3e+03f, 2.5e+03f, 4e+03f, 8e+03f, 8e+03f, 2e+03f, 2e+03f, 2e+03f,
	2e+03f, 249.0f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f,
	2e+03f, 2e+03f, 2e+03f, 2e+03f, 6e+03f, 6e+03f, 6e+03f, 6e+03f,
	1e+04f, 2e+03f, 2e+03f, 2e+03f, 268.0f, 269.0f, 2.7e+02f, 271.0f,
	272.0f, 273.0f, 274.0f, 275.0f, 276.0f, 2e+03f, 2e+03f, 2e+03f,
	2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 286.0f, 287.0f,
	288.0f, 289.0f, 2.9e+02f, 291.0f, 292.0f, 293.0f, 294.0f, 295.0f,
	296.0f, 297.0f, 298.0f, 299.0f, 2e+03f, 2e+03f, 2e+03f, 2e+03f,
	2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f,
	3.5e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 4e+03f,
	2e+03f, 2e+03f, 322.0f, 323.0f, 324.0f, 325.0f, 326.0f, 327.0f,
	328.0f, 329.0f, 4e+03f, 2e+03f, 4e+03f, 4e+03f, 4e+03f, 2e+03f,
	4e+03f, 4e+03f, 338.0f, 339.0f, 2e+03f, 2e+03f, 5e+03f, 343.0f,
	344.0f, 345.0f, 346.0f, 347.0f, 348.0f, 349.0f, 4e+03f, 4e+03f,
	352.0f, 353.0f, 354.0f, 355.0f, 356.0f, 357.0f, 358.0f, 359.0f,
	2e+03f, 2e+03f, 2e+03f, 6e+03f, 6e+03f, 2e+03f, 2e+03f, 2e+03f,
	2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 1e+03f, 2e+03f, 2e+03f,
	2e+03f, 2e+03f, 2e+03f, 2e+03f, 2e+03f, 5e+03f, 2e+03f, 3e+03f,
	2e+03f, 8e+03f, 6e+03f, 6e+03f, 4e+03f, 4e+03f, 8e+03f, 4e+03f,
	4e+03f, 8e+03f, 8e+03f, 3e+03f, 6e+03f, 2e+03f, 2e+03f, 2e+03f,
	4e+02f, 401.0f,
};

/* Sound pitch values. */
f32 D_80032A78_33678[] = {
	0.5f, 0.5f, 0.4375f, 0.5f, 4.0f, 5.0f, 0.5f, 7.0f,
	8.0f, 0.5f, 1.0f, 0.5f, 0.5f, 0.4375f, 0.9375f, 15.0f,
	0.5f, 0.875f, 18.0f, 0.875f, 0.5f, 21.0f, 0.4375f, 23.0f,
	0.4375f, 25.0f, 26.0f, 0.05f, 1.0f, 0.25f, 1.0f, 31.0f,
	32.0f, 0.4375f, 34.0f, 35.0f, 36.0f, 37.0f, 0.75f, 0.4375f,
	4e+01f, 41.0f, 42.0f, 43.0f, 44.0f, 45.0f, 46.0f, 47.0f,
	48.0f, 49.0f, 0.3f, 1.0f, 0.25f, 0.21875f, 0.328125f, 0.4375f,
	56.0f, 57.0f, 58.0f, 59.0f, 0.594594f, 0.4375f, 0.25f, 0.5f,
	64.0f, 65.0f, 66.0f, 67.0f, 68.0f, 69.0f, 7e+01f, 71.0f,
	72.0f, 73.0f, 74.0f, 75.0f, 76.0f, 77.0f, 78.0f, 79.0f,
	8e+01f, 81.0f, 82.0f, 83.0f, 84.0f, 85.0f, 86.0f, 87.0f,
	88.0f, 89.0f, 0.4375f, 0.3535f, 0.280594f, 1.0f, 0.5f, 0.5f,
	0.5f, 0.5f, 0.5f, 0.5f, 0.4375f, 101.0f, 102.0f, 103.0f,
	0.3f, 0.4f, 0.4375f, 0.875f, 108.0f, 109.0f, 0.5f, 0.625f,
	0.625f, 113.0f, 114.0f, 115.0f, 1.0f, 1.0f, 0.875f, 0.875f,
	0.5f, 0.5f, 0.5f, 0.5f, 0.25f, 0.4375f, 0.4375f, 0.4375f,
	128.0f, 129.0f, 1.0f, 1.0f, 1.0f, 1.0f, 134.0f, 135.0f,
	136.0f, 137.0f, 138.0f, 139.0f, 0.4375f, 0.4375f, 0.4375f, 143.0f,
	0.4375f, 0.4375f, 0.71875f, 147.0f, 148.0f, 149.0f, 1.0f, 1.0f,
	0.25f, 0.5f, 0.5f, 155.0f, 156.0f, 157.0f, 158.0f, 159.0f,
	1.0f, 1.0f, 162.0f, 163.0f, 164.0f, 165.0f, 166.0f, 167.0f,
	168.0f, 169.0f, 0.4375f, 1.0f, 1.0f, 1.0f, 0.75f, 0.375f,
	0.5f, 0.5f, 1.0f, 0.25f, 0.219969f, 1.0f, 0.4375f, 0.25f,
	1.0f, 1.0f, 186.0f, 187.0f, 188.0f, 189.0f, 0.5f, 1.0f,
	0.875f, 0.875f, 1.0f, 0.689063f, 0.689063f, 0.21875f, 0.25f, 0.5f,
	0.38275f, 0.327719f, 0.347219f, 0.875f, 1.0f, 0.25f, 206.0f, 0.5f,
	0.4375f, 0.4375f, 0.4375f, 0.5f, 0.5f, 213.0f, 0.5f, 1.0f,
	0.53125f, 0.4375f, 0.5f, 0.328125f, 2.2e+02f, 221.0f, 0.5f, 223.0f,
	224.0f, 0.4375f, 226.0f, 227.0f, 0.4375f, 229.0f, 0.3125f, 0.3125f,
	1.0f, 0.3125f, 0.4375f, 0.5f, 236.0f, 237.0f, 0.4375f, 0.4375f,
	0.4375f, 1.0f, 0.5f, 0.25f, 1.0f, 245.0f, 1.0f, 0.5f,
	248.0f, 249.0f, 1.0f, 0.5f, 0.5f, 0.328125f, 0.689063f, 255.0f,
	1.0f, 0.689063f, 258.0f, 259.0f, 0.5f, 0.5f, 0.5f, 0.5f,
	1.0f, 265.0f, 266.0f, 267.0f, 268.0f, 269.0f, 2.7e+02f, 271.0f,
	272.0f, 273.0f, 274.0f, 275.0f, 276.0f, 277.0f, 278.0f, 279.0f,
	2.8e+02f, 281.0f, 282.0f, 283.0f, 284.0f, 285.0f, 286.0f, 287.0f,
	288.0f, 289.0f, 2.9e+02f, 291.0f, 292.0f, 293.0f, 294.0f, 295.0f,
	296.0f, 297.0f, 298.0f, 299.0f, 0.5f, 0.25f, 0.5f, 0.689063f,
	304.0f, 305.0f, 0.5f, 0.5f, 308.0f, 309.0f, 3.1e+02f, 0.344531f,
	0.25f, 0.5f, 1.0f, 0.5f, 0.5f, 0.5f, 0.5f, 0.5f,
	3.2e+02f, 321.0f, 322.0f, 323.0f, 324.0f, 325.0f, 326.0f, 327.0f,
	328.0f, 329.0f, 3.3e+02f, 0.5f, 332.0f, 333.0f, 0.5f, 0.5f,
	336.0f, 0.689063f, 0.5f, 339.0f, 1.0f, 341.0f, 1.0f, 343.0f,
	344.0f, 345.0f, 346.0f, 347.0f, 348.0f, 349.0f, 0.5f, 1.0f,
	352.0f, 353.0f, 354.0f, 355.0f, 356.0f, 357.0f, 358.0f, 359.0f,
	0.25f, 361.0f, 1.0f, 363.0f, 0.689063f, 0.689063f, 0.5f, 367.0f,
	1.0f, 369.0f, 3.7e+02f, 0.5f, 0.344531f, 0.75f, 0.689063f, 0.5f,
	0.5f, 0.5f, 0.5f, 0.5f, 0.5f, 0.5f, 0.344531f, 0.5f,
	0.75f, 0.25f, 0.25f, 0.15625f, 1.0f, 0.328125f, 0.625f, 0.75f,
	0.75f, 0.25f, 0.25f, 0.53125f, 0.375f, 0.75f,
};

/* Vehicle audio settings, 21 entries per level. */
WeaponLevelSpec D_800330B0_33CB0[5][21] = {
	{
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.175f, {0, 100, 0, 50}, 3.5f},
		{19, -1, {255, 255, 0, 0}, 0.21875f, 0.875f, {0, 100, 0, 50}, 0.4375f},
		{20, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.41f},
		{20, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.41f},
		{30, -1, {255, 255, 0, 0}, 0.25f, 0.6f, {0, 100, 0, 50}, 0.6f},
		{22, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.2f},
		{24, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{22, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{22, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{17, -1, {255, 255, 0, 0}, 0.21875f, 0.75f, {0, 100, 0, 50}, 0.4f},
		{24, -1, {255, 255, 0, 0}, 0.21875f, 0.75f, {0, 100, 0, 50}, 0.31f},
		{10, 170, {255, 255, 0, 0}, 0.21875f, 1.0f, {0, 100, 0, 50}, 0.5f},
		{24, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.25f},
		{20, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.4f},
		{10, -1, {255, 255, 0, 0}, 0.21875f, 1.0f, {0, 100, 0, 50}, 0.4f},
		{24, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.30625f},
		{30, -1, {255, 255, 0, 0}, 0.2f, 0.5f, {0, 100, 0, 50}, 0.5f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{38, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
	},
	{
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.175f, {0, 100, 0, 50}, 3.5f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{33, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{24, -1, {255, 255, 0, 0}, 0.2f, 0.8f, {0, 100, 0, 50}, 0.30625f},
		{20, -1, {255, 255, 0, 0}, 0.1f, 0.4375f, {0, 100, 0, 50}, 0.5f},
		{22, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{27, -1, {255, 255, 0, 0}, 0.1f, 0.35f, {1, 194, 0, 250}, 0.875f},
		{22, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{22, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{12, -1, {255, 255, 0, 0}, 0.1f, 0.4375f, {0, 100, 0, 50}, 0.16f},
		{30, -1, {255, 255, 0, 0}, 0.21875f, 0.21875f, {0, 100, 0, 50}, 0.3785f},
		{12, -1, {255, 255, 0, 0}, 0.31875f, 0.8375f, {0, 100, 0, 50}, 0.295f},
		{30, -1, {255, 255, 0, 0}, 0.13125f, 0.675625f, {0, 100, 0, 50}, 0.5f},
		{20, -1, {255, 255, 0, 0}, 0.1f, 0.4375f, {0, 100, 0, 50}, 0.25f},
		{22, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{24, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{30, -1, {255, 255, 0, 0}, 0.0875f, 0.21484663f, {0, 100, 0, 50}, 0.4444f},
		{20, -1, {255, 255, 0, 0}, 0.1f, 0.4375f, {0, 100, 0, 50}, 0.25f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{38, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
	},
	{
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.175f, {0, 100, 0, 50}, 3.5f},
		{11, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.25f},
		{11, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{10, -1, {255, 255, 0, 0}, 0.21875f, 0.6375f, {0, 100, 0, 50}, 0.5f},
		{11, -1, {255, 255, 0, 0}, 0.21875f, 1.0f, {0, 100, 0, 50}, 0.25f},
		{12, -1, {255, 255, 0, 0}, 0.21875f, 0.6375f, {0, 100, 0, 50}, 0.21875f},
		{11, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.25f},
		{28, -1, {255, 255, 0, 0}, 0.1f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{29, -1, {255, 255, 0, 0}, 0.1f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{14, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.25f},
		{12, -1, {255, 255, 0, 0}, 0.21875f, 0.8375f, {0, 100, 0, 50}, 0.3f},
		{24, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.25f},
		{17, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.25f},
		{16, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{22, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{12, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{17, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.5f},
		{388, -1, {255, 255, 0, 0}, 0.1f, 0.18f, {0, 100, 0, 50}, 0.11875f},
		{19, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{38, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{22, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
	},
	{
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.175f, {0, 100, 0, 50}, 3.5f},
		{22, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{22, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.25f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.25f},
		{22, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{28, -1, {255, 255, 0, 0}, 0.1f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{22, -1, {255, 255, 0, 0}, 0.1378f, 0.4375f, {1, 94, 0, 250}, 0.1378f},
		{30, -1, {255, 255, 0, 0}, 0.13125f, 0.675625f, {0, 100, 0, 50}, 0.5f},
		{16, -1, {255, 255, 0, 0}, 0.1f, 0.5375f, {0, 100, 0, 50}, 0.2f},
		{29, -1, {255, 255, 0, 0}, 0.1f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{33, -1, {255, 255, 0, 0}, 0.551216f, 0.875f, {1, 214, 0, 250}, 2.5f},
		{10, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.25f},
		{24, -1, {255, 255, 0, 0}, 0.11875f, 0.5375f, {0, 100, 0, 50}, 0.325f},
		{22, -1, {255, 255, 0, 0}, 0.23179f, 0.45f, {1, 194, 0, 250}, 0.275f},
		{16, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{22, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{17, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{39, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.25f},
		{24, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{38, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.25f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.25f},
	},
	{
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 3.5f},
		{38, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{38, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{38, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{38, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{38, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{38, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{38, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
		{-1, -1, {255, 255, 0, 0}, 0.21875f, 0.4375f, {0, 100, 0, 50}, 0.21875f},
	},
};

/* Per-level sound IDs; earlier lookup bases alias the vehicle table. */
s16 D_80033A88_34688[5][16] = {
	{217, 217, 217, 217, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{217, 217, 217, 217, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{217, 217, 217, 217, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{217, 217, 217, 217, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{225, 225, 225, 225, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
};

s16 D_80033B28_34728[] = {
	140, 140, 140, -1, 141, 142, -1, -1, -1, -1, -1, -1, -1, -1, 144, 144, -1, 145,
};

s16 D_80033B4C_3474C = -1;

s32 D_80033B50_34750 = 0;

/* Synthesizer effect parameters copied into synData at audio initialization. */
BhAudioGlobals D_80033B54_34754 = {{
	0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x60,
	0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xD9, 0x9A, 0x00, 0x00, 0x0E, 0x10, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x60, 0x00, 0x00, 0x02, 0x20,
	0x00, 0x00, 0x26, 0x66, 0xFF, 0xFF, 0xD9, 0x9A, 0x00, 0x00, 0x2B, 0x84, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x16, 0x00,
	0x00, 0x00, 0x40, 0x00, 0xFF, 0xFF, 0xC0, 0x00, 0x00, 0x00, 0x11, 0xEB, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0xC0, 0x00, 0x00, 0x11, 0xC0,
	0x00, 0x00, 0x20, 0x00, 0xFF, 0xFF, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0xE0, 0x00, 0x00, 0x30, 0xA0,
	0x00, 0x00, 0x40, 0x00, 0xFF, 0xFF, 0xC0, 0x00, 0x00, 0x00, 0x11, 0xEB, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x1C, 0xA0, 0x00, 0x00, 0x29, 0x00,
	0x00, 0x00, 0x20, 0x00, 0xFF, 0xFF, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x2E, 0x20,
	0x00, 0x00, 0x20, 0x00, 0xFF, 0xFF, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x33, 0x80,
	0x00, 0x00, 0x46, 0x50, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x00,
}};

/* Sound variation cycles and their current indices. */
s8 D_80033C5C_3485C[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14};
u8 D_80033C6C_3486C = 0;
s8 D_80033C70_34870[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};
u8 D_80033C80_34880 = 0;
s8 D_80033C84_34884[] = {0, 1, 2, 3};
u8 D_80033C88_34888 = 0;
s32 D_80033C8C_3488C = 0;
s16 D_80033C90_34890 = 0;
s16 D_80033C94_34894 = -1;
s32 D_80033C98_34898 = 0;

Float4 D_80033C9C_3489C = {0.0f, 0.4f, 0.55f, 0.75f};
f32 D_80033CAC_348AC[] = {0.0f, 0.333f, 0.666f, 1.0f};
s32 D_80033CBC_348BC = 0;

/* Read-only strings, numeric constants, and switch targets. */
const char D_800381C0_38DC0[] = "Sounds playing";
const char D_800381D0_38DD0[] = " ID%d obj %lx Slot%d State%d Vol %d T %ld Ct %d\n";
const char D_80038204_38E04[] = "\nSounds pending\n";
const char D_80038218_38E18[] = " Snd ID%d obj %lx Slot%d State%d Vol %d\n";
const char D_80038244_38E44[] = "\nSounds to be deleted\n";
const char D_8003825C_38E5C[] = " Snd ID%d obj %lx Slot%d State%d Vol %d\n";
const char D_80038288_38E88[] = "\n";
const char D_8003828C_38E8C[] = "house offset %d\n";
const char D_800382A0_38EA0[] = "Error:GetFreeSeqPlayer - Tell Ciaran\n";
const char D_800382C8_38EC8[] = "Error: GetFreeSeqPlayer2 - Tell Ciaran\n";
const f32 D_800382F0_38EF0[] = {171000.0f};
const f64 D_800382F8_38EF8[] = {0.1};
const f32 D_80038300_38F00[] = {1100.0f};
const u32 jtbl_80038304_38F04[] = {
	0x8001470C, 0x80014738, 0x800147E8, 0x80014764, 0x800147E8, 0x800147BC, 0x800147E8, 0x80014790
};
const f32 D_80038324_38F24[] = {24382.0f};
const f32 D_80038328_38F28[] = {9753.0f};
const f32 D_8003832C_38F2C[] = {4500.0f};
const f64 D_80038330_38F30[] = {0.1};
const f32 D_80038338_38F38[] = {0.10000000149011612f};
const f32 D_8003833C_38F3C[] = {6000.0f};
const f32 D_80038340_38F40[] = {3000.0f};
const f64 D_80038348_38F48[] = {0.8};
const f32 D_80038350_38F50[] = {6000.0f};
const f64 D_80038358_38F58[] = {0.1};
const u32 jtbl_80038360_38F60[] = {
	0x80015CFC, 0x80015D88, 0x80015E18, 0x80016058, 0x800160DC, 0x80016010, 0x80016160, 0x800164B4, 0x800161A8, 0x80016238, 0x800162C8, 0x80015F80, 0x80016358, 0x800163A0, 0x800164B4, 0x80016430, 0x80016478
};

void func_80012080_12C80(s32 arg0)
{
	s32 *v0;
	s32 *v1;
	if (D_8006AB88 == 0)
	{
		return;
	}
	if (arg0 == -1)
	{
		v0 = D_8006AAD0; v1 = D_8006ABB8;
		for (arg0 = 0; arg0 != 0x10; arg0++)
		{
			v0[arg0] = arg0;
			v1[arg0] = 0;
		}

		D_80031CA0_328A0 = 0;
		return;
	}
	D_8006AAD0[arg0] = arg0;
	D_80031CA0_328A0 -= 1;
}

Unk8006AA80Node *func_80012128_12D28() {
	s32 i;
	s32 j;
	s32 *slot;
	Unk8006AA80Node **entry;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	i = 0;
	j = 0;
	if (D_80031CA0_328A0 >= 0x11) {
		return NULL;
	}
	slot = D_8006AAD0;
	do {
		if (*slot != -1) {
			*slot = -1;
			break;
		}
		i++;
		j += 4;
		slot++;
	} while (i != 0x10);
	entry = (Unk8006AA80Node **)((char *)D_8006AA88 + j);
	(*entry)->unk4 = i;
	return *entry;
}

// https://decomp.me/scratch/XY5gv
// CURRENT(420)
#ifdef NON_MATCHING
s32 func_800121B4_12DB4(Unk8006AA80Node arg0, Unk8006AA80Node **arg1, Unk8006AA84Node **arg2)
{
	Unk8006AA80Node *node;
	Unk8006AA80Node *src;
	Unk8006AA80Node *prev;
	s16 *counter;
	s16 savedIndex;
	s32 diff;

	if (D_8006AB88 == 0)
	{
		return -1;
	}
	src = *arg1;
	D_80031CA0_328A0 += 1;
	if (D_80031CA0_328A0 >= 0x11)
	{
		D_80031CA0_328A0 -= 1;
		return -1;
	}
	node = func_80012128_12D28();
	if (node == NULL)
	{
		return -1;
	}
	savedIndex = node->unk4;
	*node = arg0;
	counter = &D_80033B4C_3474C;
	node->unk4 = savedIndex;
	if (*arg2 == NULL)
	{
		s16 id;

		id = *counter + 1;
		/* Temporary codegen probe: retains the saved index through this expression. */
		if (savedIndex)
		{
		}
		node->unk34 = NULL;
		node->unk30 = NULL;
		node->unk10 = id;
		*arg2 = (Unk8006AA84Node *)node;
		*arg1 = node;
		*counter = id;
		return id;
	}
	prev = NULL;
	while (src != NULL)
	{
		diff = src->unk2 - node->unk2;
		if (diff < 0)
		{
			prev = src;
			src = src->unk34;
		}
		else
		{
			if (src->unk30 != NULL)
			{
				s16 id;

				id = *counter + 1;
				src->unk30->unk34 = node;
				node->unk34 = src;
				node->unk30 = src->unk30;
				src->unk30 = node;
				node->unk10 = id;
				*counter = id;
				return id;
			}
			else
			{
				s16 id;

				id = *counter + 1;
				node->unk34 = src;
				node->unk30 = NULL;
				src->unk30 = node;
				node->unk10 = id;
				*arg1 = node;
				*counter = id;
				return id;
			}
		}
	}
	{
		s16 id;

		id = *counter + 1;
		prev->unk34 = node;
		node->unk34 = NULL;
		node->unk30 = prev;
		node->unk10 = id;
		*arg2 = (Unk8006AA84Node *)node;
		*counter = id;
		return id;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800121B4_12DB4.s")
#endif

void func_800123A4_12FA4(Unk8006AA80Node *arg0, Unk8006AA80Node **arg1, Unk8006AA80Node **arg2) {
	if (D_8006AB88 != 0 && arg0 != NULL) {
		func_80012080_12C80(arg0->unk4);
		if (arg0 == *arg1) {
			*arg1 = arg0->unk34;
			if (*arg1 != NULL) {
				(*arg1)->unk30 = NULL;
				return;
			}
			*arg2 = NULL;
			return;
		}
		arg0->unk30->unk34 = arg0->unk34;
		if (arg0 != *arg2) {
			arg0->unk34->unk30 = arg0->unk30;
			return;
		}
		*arg2 = arg0->unk30;
	}
}

Unk8006AA80Node *func_8001244C_1304C(s16 arg0) {
	Unk8006AA80Node *var_v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	var_v1 = D_8006AA80;
	while (var_v1 != NULL) {
		if (arg0 == var_v1->unk6) {
			return var_v1;
		}
		var_v1 = var_v1->unk34;
	}
	return NULL;
}

Unk8006AA84Node *func_800124A8_130A8(u16 arg0) {
	Unk8006AA84Node *var_v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	var_v1 = D_8006AA84;
	while (var_v1 != NULL) {
		if (arg0 == var_v1->unk0) {
			return var_v1;
		}
		var_v1 = var_v1->unk30;
	}
	return NULL;
}

Unk8006AA84Node *func_80012508_13108(u16 arg0) {
	Unk8006AA84Node *var_v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	var_v1 = D_8006AA84;
	while (var_v1 != NULL) {
		if (arg0 == var_v1->unk10) {
			return var_v1;
		}
		var_v1 = var_v1->unk30;
	}
	return NULL;
}

Unk8006AA80Node *func_80012568_13168(void) {
	Unk8006AA80Node *var_v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	var_v1 = D_8006AA80;
	while (var_v1 != NULL) {
		if (var_v1->unk0 >= 0x82 && var_v1->unk0 < 0x86 && var_v1->unk6 != -1) {
			return var_v1;
		}
		var_v1 = var_v1->unk34;
	}
	return NULL;
}

Unk8006AA80Node *func_800125D8_131D8(void) {
	Unk8006AA80Node *var_v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	var_v1 = D_8006AA80;
	while (var_v1 != NULL) {
		if (var_v1->unk0 >= 0xA && var_v1->unk0 < 0x33) {
			return var_v1;
		}
		var_v1 = var_v1->unk34;
	}
	return NULL;
}

Unk8006AA80Node *func_80012638_13238(u16 arg0, s32 arg1) {
	Unk8006AA80Node *var_v1;
	s32 temp;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	var_v1 = D_8006AA80;
	if (var_v1 != NULL) {
		do {
			if (arg0 == var_v1->unk0) {
				temp = arg1 - var_v1->unk28;
				if (temp < 0x30D40) {
					return var_v1;
				}
			}
			var_v1 = var_v1->unk34;
		} while (var_v1 != NULL);
	}
	return NULL;
}

s32 func_800126B0_132B0(void) {
	Unk8006AA80Node *var_v0;

	if (D_8006AB88 == 0) {
		return 0;
	}
	var_v0 = D_8006AA80;
	while (var_v0 != NULL) {
		if (var_v0->unk0 >= 0xFA && var_v0->unk0 < 0x109 && var_v0->unk6 != -1) {
			return 1;
		}
		var_v0 = var_v0->unk34;
	}
	return 0;
}

Unk8006AA80Node *func_80012720_13320(void) {
	Unk8006AA80Node *v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	v1 = D_8006AA80;
	while (v1 != NULL) {
		if (v1->unk6 == -1) {
			return v1;
		}
		v1 = v1->unk34;
	}
	return NULL;
}

Unk8006AA80Node *func_80012778_13378(s32 arg0) {
	Unk8006AA80Node *v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	v1 = D_8006AA80;
	while (v1 != NULL) {
		if (arg0 == v1->unk2C) {
			return v1;
		}
		v1 = v1->unk34;
	}
	return NULL;
}

Unk8006AA80Node *func_800127CC_133CC(s32 arg0, s16 arg1) {
	Unk8006AA80Node *v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	v1 = D_8006AA80;
	while (v1 != NULL) {
		if (arg0 == v1->unk2C && arg1 == v1->unk0) {
			return v1;
		}
		v1 = v1->unk34;
	}
	return NULL;
}

void *func_80012834_13434(void *arg0) {
	void *v1;
	if (D_8006AB88 == 0) {
		return 0;
	}
	v1 = *(void **)((char *)arg0 + 0x30);
	if (*(u16 *)v1 == *(u16 *)arg0) {
		return v1;
	}
}

void func_8001286C_1346C(void) {
	Unk8006AA80Node *node;

	osSyncPrintf(D_800381C0_38DC0); // Sounds playing
	node = D_8006AA80;
	if (node != NULL) {
		do {
			if (node->unk6 >= 0) {
				alSndpSetSound(D_8006AB10, node->unk6);
				osSyncPrintf(D_800381D0_38DD0, node->unk0, node->unk2C, node->unk6, alSndpGetState(D_8006AB10), (s32) node->unk20, node->unk28, (s32) node->unk0E);
				//  ID%d obj %lx Slot%d State%d Vol %d T %ld Ct %d
			}
			node = node->unk34;
		} while (node != NULL);
		node = D_8006AA80;
	}
	osSyncPrintf(D_80038204_38E04);
	if (node != NULL) {
		do {
			if (node->unk6 == -1) {
				osSyncPrintf(D_80038218_38E18, node->unk0, node->unk2C, node->unk6, alSndpGetState(D_8006AB10), (s32) node->unk20);
				//  Snd ID%d obj %lx Slot%d State%d Vol %d
			}
			node = node->unk34;
		} while (node != NULL);
	}
	node = D_8006AA80;
	osSyncPrintf(D_80038244_38E44);
	if (node != NULL) {
		do {
			if (node->unk6 == -2) {
				osSyncPrintf(D_8003825C_38E5C, node->unk0, node->unk2C, node->unk6, alSndpGetState(D_8006AB10), (s32) node->unk20);
				//  Snd ID%d obj %lx Slot%d State%d Vol %d
			}
			node = node->unk34;
		} while (node != NULL);
	}
	osSyncPrintf(D_80038288_38E88); // .
}

void func_800129FC_135FC(s8 arg0, s8 arg1) {
	s32 devAddr;
	s16 var_a2;

	if (D_8006AB88 != 0) {
		devAddr = D_8006AB44->seqArray[arg0].offset;
		var_a2 = D_8006AB44->seqArray[arg0].len;
		if (var_a2 & 1) {
			var_a2 += 1;
		}
		func_8000F5A8_101A8(devAddr, D_8006AB30[arg1], var_a2);
	}
}

void func_80012A74_13674(void)
{
	s32 i;
	ALSynConfig synConfig;
	ALSndpConfig sndpConfig;
	s16 maxSeqLen;
	u8 *seqRom;
	s32 j;
	BhAudioGlobals synData;
	s16 seqFileSize;

	synData = D_80033B54_34754;
	D_8006AB88 = 1;

	for (i = 0; i < ARRAY_COUNT(D_80165710); i++)
	{
		D_80165710[i] = 0;
	}

	alHeapInit(&D_8006AB98, D_80165710, sizeof(D_80165710));
	D_8006AB4C = D_8006AB48 = alHeapDBAlloc(0, 0, &D_8006AB98, 1, (D_963A70 - D_955300));
	func_8000F5A8_101A8(D_955300, D_8006AB48, (D_963A70 - D_955300));
	alBnkfNew(D_8006AB48, D_963A70_2);
	D_8006AB8C = D_8006AB48->bankArray[0];
	D_8006AB90 = D_8006AB48->bankArray[1];
	synConfig.maxVVoices = 0x50;
	synConfig.maxPVoices = 0x18;
	synConfig.maxUpdates = 0x200;
	synConfig.dmaproc = 0;
	synConfig.fxType = 6;
	synConfig.outputRate = osAiSetFrequency(0x7D00);
	synConfig.heap = &D_8006AB98;
	synConfig.params = (s32 *)(&synData);
	func_80000450_1050(&synConfig, 0xA);
	for (i = 0; i < ARRAY_COUNT(D_8006AB50); i++)
	{
		D_8006AB50[i].maxVoices = 0x40;
		D_8006AB50[i].maxEvents = 0x80;
		D_8006AB50[i].maxChannels = 0x10;
		D_8006AB50[i].heap = &D_8006AB98;
		D_8006AB50[i].initOsc = 0;
		D_8006AB50[i].updateOsc = 0;
		D_8006AB50[i].stopOsc = 0;
		D_8006AB50[i].debugFlags = 7;
		D_8006AB18[i] = alHeapDBAlloc(0, 0, &D_8006AB98, 1, 0x7C);
		alCSPNew((ALCSPlayer *)D_8006AB18[i], &D_8006AB50[i]);
		(D_8006AB18[i])->unk2C = 0;
		D_8006AB20[i] = alHeapDBAlloc(0, 0, &D_8006AB98, 1, 0xF8);
	}
	sndpConfig.maxSounds = 0x10;
	sndpConfig.maxEvents = 0x80;
	sndpConfig.heap = &D_8006AB98;
	D_8006AB10 = (s32)alHeapDBAlloc(0, 0, &D_8006AB98, 1, 0x54);
	alSndpNew((ALSndPlayer *)D_8006AB10, &sndpConfig);
	for (i = 0; i < ARRAY_COUNT(D_8006AA88); i++)
	{
		D_8006AA88[i] = alHeapDBAlloc(0, 0, &D_8006AB98, 1, 0x38);
	}
	D_8006AA80 = D_8006AA84 = 0;
	func_80012080_12C80(-1);

	seqRom = D_BBB9B0;
	D_8006AB3C = alHeapDBAlloc(0, 0, &D_8006AB98, 1, 4);
	func_8000F5A8_101A8(seqRom, D_8006AB3C, 8);
	{

		seqFileSize = (D_8006AB3C->seqCount * 8) + 4;

		D_8006AB44 = alHeapDBAlloc(0, 0, &D_8006AB98, 1, (D_8006AB3C->seqCount * 8) + 4);
		func_8000F5A8_101A8(seqRom, D_8006AB44, seqFileSize);
		alSeqFileNew((ALSeqFile *)D_8006AB44, seqRom);

		{
			maxSeqLen = 0;

			for (j = 0; j < ((s32)((ALSeqFile *)D_8006AB44)->seqCount); j++)
			{
				if (maxSeqLen < ((ALSeqFile *)D_8006AB44)->seqArray[j].len)
				{
					maxSeqLen = ((ALSeqFile *)D_8006AB44)->seqArray[j].len;
				}
			}
			if (maxSeqLen & 1)
			{
				maxSeqLen++;
			}
			for (j = 0; j < ARRAY_COUNT(D_8006AB30); j++)
			{
				D_8006AB30[j] = (s32)alHeapDBAlloc(0, 0, &D_8006AB98, 1, (s32)maxSeqLen);
			}
		}
	}
	*((s32 *)(&D_8004801C)) = 6;
	D_80048020 = 8;
}


s32 func_80012E88_13A88(s8 arg0) {
	if (D_8006AB88 == 0) {
		return 0;
	}
	return D_8006AB18[arg0]->unk2C;
}

void func_80012EC4_13AC4(s8 arg0, s8 arg1)
{
	s16 var_a1;
	if ((D_8006AB88 != 0) && (func_80012E88_13A88(arg1) == 0))
	{
		if (!arg0)
		{
		}
		func_800129FC_135FC(arg0, arg1);
		alSeqpSetBank((ALSeqPlayer *) D_8006AB18[arg1], D_8006AB90);
		alCSeqNew(D_8006AB20[arg1], (u8 *) D_8006AB30[arg1]);
		alSeqpSetSeq((ALSeqPlayer *) D_8006AB18[arg1], (ALSeq *) D_8006AB20[arg1]);
		if (D_80031D28_32928[arg1] == 0)
		{
			if (D_80031CA4_328A4 != 5)
			{
				var_a1 = D_80031D74_32974[arg0] * D_80031D64_32964;
			}
			else
			{
				var_a1 = D_80031D74_32974[arg0] * D_80031D60_32960;
			}
		}
		else if (D_80031CA4_328A4 != 5)
		{
			var_a1 = ((((D_80031D3C_3293C[arg1] * D_80031D74_32974[arg0]) + ((D_80031D44_32944[arg1] * (D_80031D74_32974[arg0] * D_80031D2C_3292C[arg1])) / D_80031D34_32934[arg1])) * D_80031D64_32964));
		}
		else
		{
			var_a1 = ((D_80031D3C_3293C[arg1] * D_80031D74_32974[arg0]) + ((D_80031D44_32944[arg1] * (D_80031D74_32974[arg0] * D_80031D2C_3292C[arg1])) / D_80031D34_32934[arg1])) * D_80031D60_32960;
		}
		D_80031D1C_3291C[arg1] = arg0;
		alSeqpSetVol((ALSeqPlayer *) D_8006AB18[arg1], var_a1);
		alSeqpPlay((ALSeqPlayer *) D_8006AB18[arg1]);
		D_80031CE4_328E4[arg1] = 1;
	}
}

void func_80013178_13D78(s8 arg0) {
	func_80015C94_16894(arg0, 0x2);
}

void func_800131A4_13DA4(s16 arg0) {
	if (D_80031B58_32758 == 1) {
		if (arg0 == 0) {
			func_80015C94_16894((s8)(arg0 + 0x3C), 2);
		}
		if (arg0 == 3) {
			func_80015C94_16894(0x3D, 2);
		}
	} else {
		func_80015C94_16894((s8)(arg0 + 0x46), 2);
	}
}

void func_8001322C_13E2C(s16 arg0) {
	if (D_80031B58_32758 == 1) {
		if (arg0 == 0) {
			func_80015C94_16894((s8)(arg0 + 0x3B), 2);
			func_80015C94_16894(0x3B, 2);
		}
	} else {
		func_80015C94_16894((s8)(arg0 + 0x3B), 2);
		if (arg0 + 0x3B == 0x3B) {
			func_80015C94_16894((s8)(arg0 + 0x3B), 2);
		}
	}
}

void func_800132CC_13ECC(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x3E, 0xB);
		return;
	}
	func_80015C94_16894(0x4E, 0xB);
}

void func_80013314_13F14(void) {
	D_80031CA4_328A4 = -1;
}

// https://decomp.me/scratch/ZleAv
void func_80013324_13F24(void)
{
	s8 arr_val;
	if (D_8006AB88 == 0)
	{
		return;
	}
	if (D_80031CA4_328A4 != 3)
	{
		arr_val = D_80033C6C_3486C % 15;
		arr_val = D_80033C5C_3485C[arr_val];
		D_80033C6C_3486C_W = D_80033C6C_3486C + 1;
		func_80015C94_16894(arr_val, 3);
	}
}

void func_80013398_13F98(void)
{
  s8 arr_val;
  s8 idx;
  u8 newVal;
  if (D_80031CA4_328A4 != 4)
  {
	arr_val = D_80033C80_34880 % 16;
	idx = (s8) arr_val;
	newVal = D_80033C80_34880 + 1;
	arr_val = D_80033C70_34870[idx] + 0xF;
	D_80033C80_34880_W = newVal;
	func_80015C94_16894(arr_val, 4);
  }
}

void func_80013410_14010(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x46, 4);
		return;
	}
	func_80015C94_16894(0x56, 4);
}

void __dummy(void) {
}

void func_80013460(void) {
}

void func_80013468_14068(s16 arg0) {
	if (arg0 == 0) {
		func_80015C94_16894((s8)(currentLevel + 0x24), 5);
		return;
	}
	func_80015C94_16894((s8)(arg0 + 0x29), 5);
}

void func_800134CC_140CC(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x3F, 0xC);
		return;
	}
	func_80015C94_16894(0x4F, 0xC);
}

void func_80013514_14114(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x40, 1);
		return;
	}
	func_80015C94_16894(0x50, 1);
}

void func_8001355C_1415C(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x41, 0);
		return;
	}
	func_80015C94_16894(0x51, 0);
}

static void func_800135A4_stub(void) {
}

void playMapMusic(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x42, 8);
		return;
	}
	func_80015C94_16894(0x52, 8);
}

void playInventoryMusic(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x43, 0x9);
		return;
	}
	func_80015C94_16894(0x53, 0x9);
}

void func_8001363C_1423C(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x44, 0xA);
		return;
	}
	func_80015C94_16894(0x54, 0xA);
}

void func_80013684_14284(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x45, 0xD);
		return;
	}
	func_80015C94_16894(0x55, 0xD);
}

void func_800136CC_142CC(void) {
	func_80015C94_16894(0x23, 0x10);
}

void func_800136F0_142F0(void) {
	if (D_8006AB88 != 0) {
		func_80013324_13F24();
	}
}

// CURRENT(20)
#ifdef NON_MATCHING
void func_80013720_14320(void)
{
  s8 sp1F;
  if (D_8006AB88 != 0)
  {
	sp1F = D_80033C88_34888 % 4;
	D_80033C88_34888_W = D_80033C88_34888 + 1;
	osSyncPrintf(D_8003828C_38E8C, sp1F);
	sp1F = D_80033C84_34884[sp1F] + 0x1F;
	func_80015C94_16894(sp1F, 6);
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80013720_14320.s")
#endif

void func_800137AC_143AC(void) {
	func_80015C94_16894(0x24, 0xF);
}

static void func_800137D0_stub(void) {
}

void func_800137D8(void) {
}

void func_800137E0(void) {
}

void n_alSynFreeFX(s32 arg0) {
}

void func_800137F0_143F0(s32 arg0) {
	if (D_8006AB88 != 0) {
		D_8006ABA8 = arg0;
	}
}

void func_80013810_14410(s8 arg0) {
}

// https://decomp.me/scratch/6mw74
// CURRENT(0) Needs bss?
#ifdef NON_MATCHING
void func_80013818_14418(void)
{
	static s16 D_8006AB14;
  s16 var_s0;
  f32 sp28;
  f32 temp_f0;
  f32 temp_f14;
  f32 temp_f2;
  if (D_8006AB88 == 0)
  {
	  return;
  }
	func_80017224_17E24();
	for (var_s0 = 0; var_s0 < 2; var_s0++)
	{
	  if (D_80031D28_32928[var_s0] != 0)
	  {
		func_80016CD8_178D8((s8) var_s0);
	  }
	}

	if (D_80031D4C_3294C != 0)
	{
	  func_80016E54_17A54();
	}
	if (D_80031CD4_328D4 != -1)
	{
	  D_80031CD4_328D4 -= 1;
	  if (D_80031CD4_328D4 == -1)
	  {
		func_80013324_13F24();
	  }
	}
	if ((((D_80052ACA == 0) || (D_80052ACA == 1)) || (D_80052ACA == 2)) && (gameplayMode == 1))
	{
	  {
		if (D_80033C94_34894 > 0)
		{
		  D_80033C94_34894--;
		}

		if (D_80033C94_34894 == 0)
		{
		  D_80033C94_34894 = -1;
		  sp28 = D_800323BC_32FBC[func_800056D0_62D0(D_80052B34->unk0, D_80052B34->unk4)];
		  temp_f0 = (((f32) D_80052B34->unk0) / 4) - D_80047954;
		  temp_f2 = (((f32) D_80052B34->unk2) / 4) - D_80047958;
		  temp_f14 = (((f32) D_80052B34->unk4) / 4) - D_8004795C;
		  func_80014A3C_1563C((s32) D_80052B34, 0x97, sqrtf(((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) + (temp_f14 * temp_f14)), 0, sp28);
		}
	  }
	  if (((((currentLevel == 3) && (gameplayMode == 1)) && (D_80052ACA != 3)) && (D_80052B34->unk1A == 3)) && (currentControllerStates[0].button & 0x2000))
	  {
		func_80014A3C_1563C((s32) D_80052B34, 0x35, 0.0f, 0, -1.0f);
	  }
	}
	if (D_80031CD4_328D4 != -1)
	{
	  D_80031CD4_328D4 -= 1;
	  if (D_80031CD4_328D4 == -1)
	  {
		func_80013324_13F24();
	  }
	}
	func_80013FC4_14BC4(D_8006AB10);
	D_8006AB14 = func_80013F64_14B64();

	if (D_8006AB14 > 0)
	{
	  Unk8006AA80Node *ptr;
	  for (var_s0 = 0; var_s0 < D_8006AB14; var_s0++)
	  {
		ptr = func_80012720_13320();
		if (ptr == NULL)
		{
		  break;
		}
		if ((func_80013B48_14748(ptr, D_80033C90_34890) != (-1)) && (ptr->unk0 == 0x96))
		{
		  D_80033C94_34894 = 1;
		}
	  }

	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80013818_14418.s")
#endif

s16 func_80013B48_14748(Unk8006AA80Node *arg0, s16 arg1)
{
  s32 phantom1;
  f32 var_f2;
  s32 phantom2;
  s16 sp22;
  s32 temp_rand;
  sp22 = 0;
  if (D_8006AB88 == 0)
  {
	return 0;
  }
  if (arg0->unk0C >= 0)
  {
	arg0->unk0C = arg0->unk0C - 1;
  }
  {
	s16 id;
	id = alSndpAllocate(D_8006AB10, D_8006AB8C->instArray[arg0->unk0]->soundArray[0]);
	if (id >= 0)
	{
	  s16 var_a1;
	  arg0->unk6 = id;
	  D_8006ABB8[arg0->unk6] = 1;
	  alSndpSetPriority(D_8006AB10, arg0->unk6, D_80032228_32E28[arg0->unk0]);
	  alSndpSetSound(D_8006AB10, arg0->unk6);
	  var_f2 = arg0->unk24;
	  if (arg0->unk0 == 0xD3)
	  {
		var_f2 += ((f32) func_800038E0_44E0()) / D_800382F0_38EF0_R;
	  }
	  if (arg0->unk0 == 0x97)
	  {
		temp_rand = func_800038E0_44E0();
		sp22 = temp_rand / ((f32) D_80031D14_32914);
		var_f2 += ((f32) temp_rand) / ((f32) D_80031D10_32910);
		sp22 = temp_rand / ((f32) D_80031D14_32914);
	  }
	  if (arg0->unk0 == 0x96)
	  {
		sp22 = (s16) ((s32) (((f32) func_800038E0_44E0()) / ((f32) D_80031D18_32918)));
	  }
	  if (arg0->unk0 == 0xEB)
	  {
		alSndpSetFXMix(D_8006AB10, 0x50);
	  }
	  if (D_800382F8_38EF8_R < ((f64) var_f2))
	  {
		alSndpSetPitch(D_8006AB10, var_f2);
	  }
	  if (D_80031D4C_3294C == 1)
	  {
		var_a1 = ((((arg0->unk20 * D_80031D58_32958) + ((D_80031D5C_3295C * (arg0->unk20 * D_80031D50_32950)) / D_80031D54_32954)) * D_80031D60_32960));
	  }
	  else
	  {
		var_a1 = (s16) ((s32) (((f32) arg0->unk20) * D_80031D60_32960));
	  }
	  if (sp22 < var_a1)
	  {
		var_a1 -= sp22;
	  }
	  alSndpSetVol(D_8006AB10, var_a1);
	  alSndpSetPan(D_8006AB10, arg0->unk22);
	  alSndpPlay(D_8006AB10);
	  arg0->unk8 = 9;
	  return arg0->unk6;
	}
	return -1;
  }
}

void func_80013E44_14A44(void *arg0) {
	if (D_8006AB88 != 0) {
		((struct Unk80013E44_arg0 *)arg0)->unk8 = 1;
	}
}

void func_80013E64_14A64(s8 arg0) {
	if (D_8006AB88 != 0) {
		if (arg0 < 0 || arg0 >= 4) {
			func_8001599C_1659C();
			return;
		}
		if (D_8006AB18[arg0]->unk2C == 0) {
			func_80016ABC_176BC(arg0);
			return;
		}
		alSeqpStop(D_8006AB18[arg0]);
		D_80031CD0_328D0[arg0] = -1;
		D_80031CE4_328E4[arg0] = 0;
		D_80031D1C_3291C[arg0] = -1;
		D_80031D28_32928[arg0] = 0;
		D_80031D2C_3292C[arg0] = 0.0f;
		D_80031D34_32934[arg0] = 0.0f;
		D_80031D3C_3293C[arg0] = 0.0f;
		D_80031D44_32944[arg0] = 0.0f;
	}
}

s16 func_80013F64_14B64(void) {
	s16 var_v1;
	Unk8006AA80Node *var_v0;

	var_v1 = 0;
	if (D_8006AB88 == 0) {
		return -1;
	}
	var_v0 = D_8006AA80;
	if (var_v0 != NULL) {
		do {
			if (var_v0->unk6 == -1) {
				var_v1 += 1;
			}
			var_v0 = var_v0->unk34;
		} while (var_v0 != NULL);
	}
	return var_v1;
}

void func_80013FC4_14BC4(s32 arg0) {
	Unk8006AA80Node *node;
	s16 unk6;
	s16 neg2;

	if (D_8006AB88 != 0) {
		node = D_8006AA80;
		if (node != NULL) {
			neg2 = -2;
			do {
				unk6 = node->unk6;
				if (unk6 < 0) {
					if (neg2 == unk6) {
						func_800123A4_12FA4(node, &D_8006AA80, (Unk8006AA80Node **)&D_8006AA84);
					} else {
						if (node->unk0C++ >= 0x10) {
							func_800123A4_12FA4(node, &D_8006AA80, (Unk8006AA80Node **)&D_8006AA84);
						}
					}
				} else {
					alSndpSetSound(arg0, unk6);
					if (alSndpGetState(arg0) != 0) {
						if (node->unk2C != 0) {
							if (node->unk0E >= 0) {
								node->unk0E = node->unk0E - 1;
							}
							if (node->unk0E == 0) {
								func_800157D4_163D4(node->unk6);
							}
						}
						if (node->unk8 == 9) {
							func_80013E44_14A44(node);
						}
						D_8006ABB8[node->unk6] = 0;
					} else if (D_8006ABB8[node->unk6] == 0 && alSndpGetState(arg0) == 0) {
						alSndpDeallocate(arg0, node->unk6);
						if (node->unk8 == 9) {
							node->unk6 = -1;
							node->unk8 = 0;
							node->unk0C = 0;
						} else {
							func_800123A4_12FA4(node, &D_8006AA80, (Unk8006AA80Node **)&D_8006AA84);
						}
					}
				}
				node = node->unk34;
			} while (node != NULL);
		}
	}
}

void func_80014180_14D80(s8 arg0)
{
	if (D_8006AB88) {
		arg0 /= 3.0f;
		func_800153D8_15FD8(D_80033A68_34668[currentLevel][arg0]);
	}
}

s32 osBbUsbDevGetHandle(void) {
	return -1;
}

void func_80014208_14E08(s32 arg0, s16 arg1, s32 arg2) {
	s32 pad1;
	s32 pad2;
	f32 sp24;

	if (D_8006AB88 != 0) {
		func_80014A3C_1563C((s32) &sp24, 0xC4, 0, 0,
			sp24 = (f32)D_80032D88_33988 + ((f32) arg1 / D_80038300_38F00_R));
	}
}

s32 func_80014278_14E78(void)
{
	Unk8006AA80Node sp50;
	s16 soundId;
	u16 soundIdU;

	if (D_8006AB88 == 0)
	{
		return -1;
	}
	soundId = D_80032EB8_33AB8[currentLevel][D_80052B34->unk1A].unk2;
	if (soundId == -1)
	{
		return -1;
	}
	soundIdU = (sp50.unk0 = soundId);
	sp50.unk2 = D_80032228_32E28[soundIdU];
	sp50.unk24 = D_80032A78_33678[soundIdU];
	sp50.unk6 = -1;
	sp50.unk20 = D_80031F04_32B04[soundId];
	sp50.unk0C = 0;
	sp50.unk8 = 0;
	sp50.unk0E = -1;
	sp50.unk22 = 0x40;
	sp50.unk0F = -1;
	return func_800121B4_12DB4(sp50, &D_8006AA80, &D_8006AA84);
}

s32 func_800143C4_14FC4(s16 arg0)
{
	Unk8006AA80Node sp58;
	s32 sp54;
	s16 soundId;
	u16 soundIdU;

	if (D_8006AB88 == 0)
	{
	return -1;
	}
	if (func_80012638_13238(arg0, D_8006AB18[0]->unk1C) != NULL)
	{
	return -1;
	}
	soundId = arg0;
	soundIdU = (sp58.unk0 = soundId);
	sp58.unk2 = D_80032228_32E28[soundIdU];
	sp58.unk24 = D_80032A78_33678[soundIdU];
	sp58.unk6 = -1;
	sp58.unk20 = D_80031F04_32B04[soundId];
	sp58.unk0C = 0;
	sp58.unk8 = 0;
	sp58.unk0E = -1;
	sp58.unk28 = D_8006AB18[0]->unk1C;
	sp58.unk22 = 0x40;
	sp58.unk0F = -1;
	return func_800121B4_12DB4(sp58, &D_8006AA80, &D_8006AA84);
}

// https://decomp.me/scratch/qeywv
// Matching, but rodata
#ifdef NON_MATCHING
void func_80014508_15108(VehicleInstance *arg0, s16 arg1, s16 arg2)
{
  f32 temp_f14;
  VehicleType *type;
  WeaponLevelSpec *levelSpec;
  f32 temp_f12;
  f32 temp_f2;
  type = &vehicleTypes[arg0->unk1A];
  if (!D_8006AB88)
  {
	return;
  }
  if (arg0->unk3C <= 0)
  {
	return;
  }
  if (D_80032EB8_33AB8[currentLevel][arg0->unk1A].unk0 == (-1))
  {
	return;
  }
  if (D_80032EB8_33AB8[currentLevel][arg0->unk1A].unk0 == 0x27)
  {
	if (arg0->unk12 < 0x14)
	{
	  f32 dist = func_8001D940(((((((f32) arg0->unk0) / 4) - D_80047954) * ((((f32) arg0->unk0) / 4) - D_80047954)) + (((((f32) arg0->unk2) / 4) - D_80047958) * ((((f32) arg0->unk2) / 4) - D_80047958))) + (((((f32) arg0->unk4) / 4) - D_8004795C) * ((((f32) arg0->unk4) / 4) - D_8004795C)));
	  s16 temp_v0 = arg0->unk12;
	  s32 temp_v1;
	  if (temp_v0 >= 0)
	  {
		temp_v1 = temp_v0;
	  }
	  else
	  {
		temp_v1 = -temp_v0;
	  }
	  func_80014A3C_1563C((s32) D_80052B34, 0x170, ((f32) (temp_v1 * 100)) + dist, 0, -1.0f);
	  if (arg0->unk12 == 0)
	  {
		return;
	  }
	}
  }
  if (arg1 != 0)
  {
	  // Need to figure out how to use D_800330B0_33CB0[currentLevel - 1][arg0->unk1A] instead
	// levelSpec = &D_800330B0_33CB0[currentLevel - 1][arg0->unk1A];
	  
	levelSpec = &D_800330B0_33CB0[currentLevel][arg0->unk1A];
	switch (type->unk58)
	{
	  case 0:
		temp_f14 = (levelSpec - 21)->unk14 * (((f32) arg2) / ((f32) 1));
		temp_f2 = (levelSpec - 21)->unkC;
		temp_f12 = (levelSpec - 21)->unk8;
		break;

	  case 1:
		temp_f14 = (levelSpec - 21)->unk14 * (((f32) arg2) / D_80038324_38F24_R);
		temp_f2 = (levelSpec - 21)->unkC;
		temp_f12 = (levelSpec - 21)->unk8;
		break;

	  case 3:
		temp_f2 = (levelSpec - 21)->unkC;
		temp_f12 = (levelSpec - 21)->unk8;
		temp_f14 = ((temp_f2 - temp_f12) * (((f32) arg2) / D_80038328_38F28_R));
		temp_f14 += temp_f12;
		break;

	  case 7:
		temp_f2 = (levelSpec - 21)->unkC;
		temp_f12 = (levelSpec - 21)->unk8;
		temp_f14 = ((temp_f2 - temp_f12) * (((f32) arg2) / D_8003832C_38F2C_R));
		temp_f14 += temp_f12;
		break;

	  case 5:
		temp_f14 = (levelSpec - 21)->unk14 * (((f32) arg2) / 25.0f);
		temp_f2 = (levelSpec - 21)->unkC;
		temp_f12 = (levelSpec - 21)->unk8;
		break;

	  default:
		temp_f14 = (levelSpec - 21)->unk14 * (((f32) arg2) / ((f32) 1));
		temp_f2 = (levelSpec - 21)->unkC;
		temp_f12 = (levelSpec - 21)->unk8;
		break;

	}

  }
  else
  {
	if (((s32) (type->unk4C << 9)) >= 0)
	{
	  levelSpec = &D_800330B0_33CB0[currentLevel][arg0->unk1A];
	  if ((type->unk58 == 3) || (type->unk58 == 7))
	  {
		temp_f2 = (levelSpec - 21)->unkC;
		temp_f14 = temp_f2;
	  }
	  else
	  {
		temp_f14 = (levelSpec - 21)->unk14 * D_8004DCC0;
		temp_f2 = (levelSpec - 21)->unkC;
	  }
	  temp_f12 = (levelSpec - 21)->unk8;
	}
	else
	{
	  f32 spd = func_8001D940((arg0->unk30 * arg0->unk30) + (arg0->unk38 * arg0->unk38));
	  temp_f14 = (f32) (((f64) spd) / 60.0);
	  temp_f2 = D_800330B0_33CB0[currentLevel - 1][arg0->unk1A].unkC;
	  temp_f12 = D_800330B0_33CB0[currentLevel - 1][arg0->unk1A].unk8;
	}
  }
  if (temp_f2 < temp_f14)
  {
	temp_f14 = temp_f2;
  }
  if (temp_f14 < temp_f12)
  {
	temp_f14 = temp_f12;
  }
  if (((f64) temp_f14) < D_80038330_38F30_R)
  {
	temp_f14 = D_80038338_38F38_R;
  }
  {
	f32 dist = func_8001D940(((((((f32) arg0->unk0) / 4) - D_80047954) * ((((f32) arg0->unk0) / 4) - D_80047954)) + (((((f32) arg0->unk2) / 4) - D_80047958) * ((((f32) arg0->unk2) / 4) - D_80047958))) + (((((f32) arg0->unk4) / 4) - D_8004795C) * ((((f32) arg0->unk4) / 4) - D_8004795C)));
	func_80014A3C_1563C((s32) (&vehicleTypes[arg0->unk1A]), D_80032EB8_33AB8[currentLevel][arg0->unk1A].unk0, dist, 0, temp_f14);
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80014508_15108.s")
#endif

void func_80014A3C_1563C(s32 arg0, s16 arg1, f32 arg2, s16 arg3, f32 arg4)
{
	Unk8006AA80Node *node;
	Unk8006AA80Node sp6C;
	s16 vol;
	u8 pan;
	u32 pan_u32;
	s16 soundIdx;
	if (((D_8006AB88 != 0) && (arg1 != -1)) && (arg1 != -1))
	{
		if (arg1 == 0x3E7)
		{
			if (gameplayMode != 6)
			{
				func_800056D0_62D0(D_80052B34->unk0, D_80052B34->unk4);
			}
			arg1 = 0x96;
			if (((f64)D_80052B34->unk12) < 26.0)
			{
				D_8006AB8C->instArray[0x96]->soundArray[0]->envelope->decayTime = 0x81A57 - (D_80052B34->unk12 * 0x4E20);
			}
		}
		if ((((gameplayMode == 1) && (D_80052B34->unk1A == 3)) && (currentLevel == 3)) && (arg1 == 0x5E))
		{
			return;
		}
		if (arg1 == 0xB3)
		{
			if ((D_80052ACA == 2) || (currentLevel == 5))
			{
				D_80032430_33030[0xB3] = D_8003833C_38F3C_R;
				D_80031F04_32B04[0xB3] = 0x7FFF;
			}
			else
			{
				D_80032430_33030[0xB3] = D_80038340_38F40_R;
				D_80031F04_32B04[0xB3] = 0x5FFF;
			}
		}
		if ((arg1 == 0xE8) && (((f64)arg4) <= D_80038348_38F48_R))
		{
			D_80032310_32F10 = 0x7D;
			D_80031F04_32B04[0xE8] = 0x7FFF;
		}
		else
		{
			D_80031F04_32B04[0xE8] = 0x3FFF;
			D_80032310_32F10 = 0;
		}
		if (arg1 == 0x17F)
		{
			if (currentLevel == 5)
			{
				D_80032430_33030[0x17F] = 1000.0f;
			}
			else
			{
				D_80032430_33030[0x17F] = D_80038350_38F50_R;
			}
		}
		if (arg2 < D_80032430_33030[arg1])
		{

			vol = (s32)(D_80031F04_32B04[arg1] * ((D_80032430_33030[arg1] - arg2) / D_80032430_33030[arg1]));
			if (arg3 < -0x4000)
			{
				arg3 = -0x8000 - arg3;
			}
			else if (arg3 >= 0x4001)
			{
				arg3 = 0x8000 - arg3;
			}

			pan = pan_u32 = ((((f32)arg3 + 16384.0) / 16384.0) * 64.0);
			if (arg4 < 0.0)
			{
				if (arg4 == -1.0)
				{
					arg4 = D_80032A78_33678[arg1];
				}
				else if (arg4 < -1.0)
				{
					arg4 = D_80032A78_33678[arg1] + arg4 + 1.0;
				}
			}
			if (arg0 != 0)
			{
				node = func_800127CC_133CC(arg0, arg1);
				if (node != NULL)
				{
					node->unk0F++;
					if (node->unk6 >= 0)
					{
						alSndpSetSound(D_8006AB10, node->unk6);
						if (alSndpGetState(D_8006AB10) == 1)
						{
							if (((u8)pan_u32) != ((u8)node->unk22))
							{
								if (((u8)pan_u32) > 0)
								{
									if (((u8)pan_u32) < 0x7F)
									{
										if (((s16)(pan - ((u8)node->unk22))) >= 0xB)
										{
											pan = ((u8)node->unk22) + 0xA;
										}
										else if (((s16)(pan - ((u8)node->unk22))) < (-0xA))
										{
											pan = ((u8)node->unk22) - 0xA;
										}
										alSndpSetPan(D_8006AB10, pan);
										node->unk22 = pan;
									}
								}
							}
							if (arg4 != node->unk24)
							{
								if ((((f64)D_80038358_38F58_R) < ((f64)arg4)) && (((f64)arg4) < 2.0))
								{
									alSndpSetPitch(D_8006AB10, arg4);
									node->unk24 = arg4;
								}
							}
							if ((vol != node->unk20) && (vol > 0))
							{
								if (vol < 0x7FFF)
								{
									if (((s16)(vol - node->unk20)) >= 0x101)
									{
										vol = node->unk20 + 0x100;
									}
									else if (((s16)(vol - node->unk20)) < (-0x100))
									{
										vol = node->unk20 - 0x100;
									}
									node->unk20 = vol;
									if (D_80031D4C_3294C == 1)
									{
										vol = (s16)((s32)(((((f32)vol) * D_80031D58_32958) + ((D_80031D5C_3295C * (((f32)vol) * D_80031D50_32950)) / D_80031D54_32954)) * D_80031D60_32960));
									}
									else
									{
										vol = (s16)((s32)(((f32)vol) * D_80031D60_32960));
									}
									alSndpSetVol(D_8006AB10, vol);
								}
							}
							node->unk0E = 0xF;
							return;
						}
						if (node->unk8 != 1)
						{
							return;
						}
						func_800157D4_163D4(node->unk6);
					}
				}
			}
			else
			{
				arg1 = arg1;
			}
			{
				soundIdx = arg1;
				if (func_80012638_13238(soundIdx, D_8006AB18[0]->unk1C) == 0)
				{
					sp6C.unk0 = soundIdx;
					sp6C.unk20 = vol;
					sp6C.unk1C = arg2;
					sp6C.unk2 = D_80032228_32E28[arg1];
					sp6C.unk18 = arg3;
					sp6C.unk22 = (s8)pan_u32;
					sp6C.unk24 = arg4;
					sp6C.unk2C = arg0;
					sp6C.unk28 = D_8006AB18[0]->unk1C;
					sp6C.unk0F = 0;
					sp6C.unk0E = (arg0 != 0) ? (0xF) : (-1);
					sp6C.unk6 = -1;
					sp6C.unk0C = 0;
					func_800121B4_12DB4(sp6C, &D_8006AA80, &D_8006AA84);
				}
			}
		}
	}
}

void func_80015210_15E10(s16 arg0, s32 arg1, s32 arg2, s32 arg3, u16 arg4)
{
	Unk8006AA80Node sp50;
	if (D_8006AB88 != 0)
	{
		sp50.unk2 = D_80032228_32E28[arg0 & 0xFFFF];
		sp50.unk24 = D_80032A78_33678[arg0 & 0xFFFF];
		sp50.unk6 = -1;
		sp50.unk0C = 0;
		sp50.unk8 = 0;
		sp50.unk20 = D_80031F04_32B04[arg0] * (arg4 / 200.0f);

		sp50.unk0 = arg0 & 0xFFFF;
		sp50.unk20 = sp50.unk20 < 0x2FFF ? sp50.unk20 + 0x2FFF : 0x7FFF;
		sp50.unk0E = -1;
		sp50.unk22 = 0x40;
		func_800121B4_12DB4(sp50, &D_8006AA80, &D_8006AA84);
	}
}

void func_80015380_15F80(u8 arg0) {
}

void func_80015388_15F88(s16 arg0) {
	void *sp24;
	sp24 = (void **)&sp24 + arg0;
	func_80014A3C_1563C((s32)sp24, arg0, 0, 0, -1.0f);
}

// Play sound effect
void func_800153D8_15FD8(s16 arg0)
{
	Unk8006AA80Node sp60;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	if (D_8006AB88 != 0 && arg0 != -1 && arg0 != -1)
	{
		if (arg0 == 0xC6)
		{
			arg0 = 0xCD;
		}
		sp60.unk0 = arg0;
		sp60.unk2 = D_80032228_32E28[arg0];
		sp60.unk24 = D_80032A78_33678[arg0 & 0xFFFF];
		sp60.unk6 = -1;
		sp60.unk0C = 0;
		sp60.unk8 = 0;
		sp60.unk20 = D_80031F04_32B04[arg0];
		sp60.unk22 = 0x40;
		sp60.unk0E = -1;
		sp60.unk2C = 0;
		func_800121B4_12DB4(sp60, &D_8006AA80, &D_8006AA84);
	}
}

void func_80015500_16100(s16 arg0, s16 arg1) {
	s16 sp1E;

	if ((D_8006AB88 != 0) && (arg0 >= 0) && (D_80031D4C_3294C == 0)) {
		sp1E = (s16) ((f32) arg1 * D_80031D60_32960);
		alSndpSetSound(D_8006AB10, arg0);
		if (alSndpGetState(D_8006AB10) == 1) {
			alSndpSetVol(D_8006AB10, sp1E);
		}
	}
}

void func_800155B0_161B0(s16 arg0, f32 arg1) {
	if ((D_8006AB88 != 0) && (arg0 >= 0)) {
		alSndpSetSound(D_8006AB10, arg0);
		alSndpSetPitch(D_8006AB10, arg1);
	}
}

void func_80015600_16200(s16 arg0, u8 arg1) {
	if ((D_8006AB88 != 0) && (arg0 >= 0)) {
		alSndpSetSound(D_8006AB10, arg0);
		if (alSndpGetState(D_8006AB10) == 1) {
			alSndpSetPan(D_8006AB10, arg1);
		}
	}
}

void func_80015674_16274(s16 arg0) {
	if ((D_8006AB88 != 0) && (arg0 != -1) && (arg0 < 0x74)) {
		func_800153D8_15FD8(D_80033A74_34674[arg0]);
	}
}

void func_800156C8_162C8(u8 arg0) {
	Unk8006AA84Node *node;
	Unk8006AA84Node *node2;

	if ((D_8006AB88 != 0) && ((node = func_800124A8_130A8(arg0)) != NULL)) {
		if (node->unk6 >= 0) {
			if (node->unk8 == 1) {
				if (D_8006ABB8[node->unk6] != 1) {
					alSndpSetSound(D_8006AB10, node->unk6);
					alSndpStop(D_8006AB10);
				}
			} else {
				node2 = func_80012834_13434(node);
				if ((node2 != NULL) && (node2->unk6 >= 0)) {
					if (node2->unk8 == 1) {
						if (D_8006ABB8[node2->unk6] != 1) {
							alSndpSetSound(D_8006AB10, node2->unk6);
							alSndpStop(D_8006AB10);
						}
					} else {
						node2->unk6 = -2;
					}
				}
			}
		} else {
			node->unk6 = -2;
		}
	}
}

void func_800157D4_163D4(s16 arg0) {
	Unk8006AA80Node *node;

	if ((D_8006AB88 != 0) && (arg0 >= 0)) {
		node = func_8001244C_1304C(arg0);
		if (node != NULL) {
			node->unk8 = 0;
			node->unk2C = 0;
		}
		alSndpSetSound(D_8006AB10, arg0);
		if (arg0 == D_80031CAC_328AC) {
			D_80031CAC_328AC = -1;
		}
		alSndpStop(D_8006AB10);
	}
}

void func_80015860_16460(s16 arg0) {
	Unk8006AA84Node *node;

	if (D_8006AB88 != 0 && (node = func_80012508_13108((u16)arg0)) != NULL) {
		if (node->unk6 != -1) {
			func_800157D4_163D4(node->unk6);
			return;
		}
		node->unk6 = -2;
	}
}

void func_800158C8_164C8(s16 arg0) {
	Unk8006AA84Node *node;

	if (D_8006AB88 != 0 && arg0 != -1 && (node = func_80012508_13108((u16)arg0)) != NULL) {
		if (node->unk6 != -1) {
			func_800157D4_163D4(node->unk6);
			return;
		}
		node->unk6 = -2;
	}
}

void func_8001593C_1653C(void *arg0) {
}

void func_80015944_16544(s8 arg0, s16 arg1) {
	if ((D_8006AB88 != 0) && (func_80012E88_13A88(arg0) == 1)) {
		alSeqpSetVol((ALSeqPlayer *)D_8006AB18[arg0], arg1);
	}
}

void func_8001599C_1659C(void)
{
	Unk8006AA80Node *temp_v0;
	u8 var_s0;
	Unk8006AA80Node sp70;

	if (D_8006AB88 != 0)
	{
		D_80031CA8_328A8 = 0;
		D_80031CB4_328B4 = 0;
		D_80031CB8_328B8 = 0;
		D_80031CBC_328BC = 0;
		D_80031CD8_328D8 = 0;
		D_80031CDC_328DC = 0;
		D_80031CE0_328E0 = 0;
		D_80031CFC_328FC = 0;
		D_80031CF8_328F8 = 0;
		D_80031D00_32900 = 0;
		D_80031CEC_328EC = 0;
		D_800314C8_320C8 = 0;
		D_80031CF0_328F0 = 0;
		D_80031CAC_328AC = -1;
		D_80031CB0_328B0 = 0;
		D_80031CA4_328A4 = -1;
		for (var_s0 = 0; var_s0<0x10; var_s0++)
		{
			alSndpSetSound(D_8006AB10, var_s0);
			if (alSndpGetState(D_8006AB10) != 0)
			{
				temp_v0 = func_8001244C_1304C(var_s0);
				if (temp_v0 == NULL)
				{
					sp70.unk6 = var_s0;
					func_800121B4_12DB4(sp70, &D_8006AA80, &D_8006AA84);
				}
				else
				{
					temp_v0->unk8 = 0;
				}
				alSndpStop(D_8006AB10);
			}
		}

		for (var_s0 = 0;var_s0 < 2; var_s0++)
		{
			D_80031CE4_328E4[var_s0] = 1;
			func_80013E64_14A64(var_s0);
			D_80031CD0_328D0[var_s0] = -1;
			D_80031CD4_328D4 = -1;
		}
	}
}

void func_80015BCC_167CC(s32 arg0) {
	if ((D_8006AB88 != 0) && (gameplayMode == 1)) {
		if (D_80031CA4_328A4 != 4) {
			if (D_80052ACA == 2) {
				func_80013410_14010();
				return;
			}
			func_80013398_13F98();
			return;
		}
		D_80031CD4_328D4 = 0xFA;
	}
}

void func_80015C58_16858(u8 arg0) {
	if (D_8006AB88 != 0) {
		alSeqpSetChlVol((ALSeqPlayer *)D_8006AB18[0], arg0, 0);
	}
}

// Matching - but needs the jump table rodata linked first
#ifdef NON_MATCHING
void func_80015C94_16894(s8 arg0, s8 arg1) {
	s8 sp1F;

	if (D_8006AB88 == 0) {
		return;
	}
	if (arg1 != 0x10 && D_80031CA4_328A4 == 0x10) {
		return;
	}
	switch (arg1) {
	case 0:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4_328A4 == 0) {
			return;
		}
		D_80031CA4_328A4 = 0;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 1:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4_328A4 == 1) {
			return;
		}
		D_80031CA4_328A4 = 1;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 2:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4_328A4 != 2) {
			D_80031CA4_328A4 = 2;
			if (func_800164C4_170C4() == 1) {
				sp1F = func_800165EC_171EC();
				func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
				func_80016B38_17738(arg0, sp1F);
			} else {
				func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
			}
		} else {
			if (D_80031B58_32758 == 1) {
				if (arg0 >= 0x3C && arg0 < 0x3E) {
					func_80016B74_17774(0x3C, 0x3E);
					D_80031CD0_328D0[func_800165EC_171EC()] = arg0;
					return;
				}
				func_80016B74_17774(0x3B, 0x3C);
				D_80031CD0_328D0[func_800165EC_171EC()] = arg0;
				return;
			}
			if (arg0 >= 0x46 && arg0 < 0x4E) {
				func_80016B74_17774(0x46, 0x4E);
				D_80031CD0_328D0[func_800165EC_171EC()] = arg0;
				return;
			}
			func_80016B74_17774(0x3B, 0x46);
			D_80031CD0_328D0[func_800165EC_171EC()] = arg0;
			return;
		}
		break;
	case 11:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4_328A4 == 11) {
			return;
		}
		D_80031CA4_328A4 = 11;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 5:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4_328A4 == 5) {
			return;
		}
		D_80031CA4_328A4 = 5;
		func_800164C4_170C4();
		func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		break;
	case 3:
		if (D_80031CA4_328A4 == 3) {
			return;
		}
		D_80031CA4_328A4 = 3;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 4:
		if (D_80031CA4_328A4 == 4) {
			return;
		}
		D_80031CA4_328A4 = 4;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 6:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4_328A4 == 6) {
			return;
		}
		D_80031CA4_328A4 = 6;
		func_800164C4_170C4();
		func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		break;
	case 8:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4_328A4 == 8) {
			return;
		}
		D_80031CA4_328A4 = 8;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 9:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4_328A4 == 9) {
			return;
		}
		D_80031CA4_328A4 = 9;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 10:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4_328A4 == 10) {
			return;
		}
		D_80031CA4_328A4 = 10;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 12:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4_328A4 == 12) {
			return;
		}
		D_80031CA4_328A4 = 12;
		func_800164C4_170C4();
		func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		break;
	case 13:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4_328A4 == 13) {
			return;
		}
		D_80031CA4_328A4 = 13;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 15:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4_328A4 == 15) {
			return;
		}
		D_80031CA4_328A4 = 15;
		func_800164C4_170C4();
		func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		break;
	case 16:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4_328A4 == 16) {
			return;
		}
		D_80031CA4_328A4 = 16;
		func_800164C4_170C4();
		func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		break;
	case 7:
	case 14:
		break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80015C94_16894.s")
#endif

s32 func_800164C4_170C4(void) {
	s32 var_s1;
	s8 var_s0;

	var_s1 = 0;
	for (var_s0 = 0; var_s0 < 2; var_s0++) {
		if (D_80031CE4_328E4[var_s0] == 1) {
			if ((f64)D_80031D44_32944[var_s0] > 0.0 && D_80031D28_32928[var_s0] >= 2) {
				return 1;
			}
			func_80016C14_17814(var_s0, 60.0f, 20.0f, 0.0f), var_s1 = 1;
		}
	}
	return var_s1;
}

// https://decomp.me/scratch/CQbLj
// CURRENT(30)
#ifdef NON_MATCHING
s8 func_800165EC_171EC(void)
{
	int new_var;
	s32 sp48;
	s32 sp44;
	s8 var_s3;
	s8 var_s6;
	s16 var_s5;
	s8 i;
	var_s6 = -1;
	var_s3 = 0;
	var_s5 = 0x7FFF;
	if (D_80031CA4_328A4 != 2)
	{
		for (i = 0; i < 2; i++)
		{
			if ((D_80031CD0_328D0[i] != (-1)) && (D_80031CE4_328E4[i] == 0))
			{
				func_80016ABC_176BC(i);
			}
			if ((D_80031CE4_328E4[i] == 1) && (func_80012E88_13A88(i) == 0))
			{
				func_80013E64_14A64(i);
			}
		}
	}
	for (i = 0; i < 2; i++)
	{
		if ((D_80031CD0_328D0[i] != (-1)) && (D_80031CA4_328A4 != 2))
		{
			func_80016ABC_176BC(i);
			return i;
		}
		if (((func_80012E88_13A88(i) == 0) && (D_80031CE4_328E4[i] == 0)) && (D_80031CD0_328D0[i] == (-1)))
		{
			func_80016ABC_176BC(i);
			return i;
		}
		var_s3++;
	}

	if (var_s3 == 2)
	{
		for (i = 0; i < 2; i++)
		{
			if ((D_80031CE4_328E4[i] == 1) && (func_80012E88_13A88(i) == 0))
			{
				func_80013E64_14A64(i);
				return i;
			}
		}

		for (i = 0; i < 2; i++)
		{
			if ((D_80031CE4_328E4[i] == 0) && (func_80012E88_13A88(i) != 0))
			{
				func_80016ABC_176BC(i);
				return i;
			}
		}

		new_var = 0x7FFFFFFF;
		for (i = 0; i < 2; i++)
		{
			s16 score;
			if ((D_80031CE4_328E4[i] == 1) && (func_80012E88_13A88(i) == 1U))
			{
				if (D_80031D28_32928[i] == 1)
				{
					score = (s16)(((D_80031D3C_3293C[i] * ((f32)D_80031D74_32974[D_80031D1C_3291C[i]])) + ((D_80031D44_32944[i] * (((f32)D_80031D74_32974[D_80031D1C_3291C[i]]) * D_80031D2C_3292C[i])) / D_80031D34_32934[i])) * D_80031D64_32964);
				}
				else
				{
					score = (s16)(((f32)D_80031D74_32974[D_80031D1C_3291C[i]]) * D_80031D64_32964);
				}
				if (score < var_s5)
				{
					var_s5 = score;
					var_s6 = i;
				}
			}
		}

		if (var_s6 != (-1))
		{
			func_80013E64_14A64(var_s6);
			return var_s6;
		}
		for (i = 0; i < 2; i++)
		{
			if (D_8006AB18[0]->unk1C >= D_80031D20_32920[i])
			{
				sp48 = D_8006AB18[0]->unk1C - D_80031D20_32920[i];
			}
			else if (D_8006AB18[0]->unk1C >= 0)
			{
				sp48 = (D_8006AB18[0]->unk1C + new_var) - D_80031D20_32920[i];
			}
			else
			{
				sp48 = (new_var - D_80031D20_32920[i]) - D_8006AB18[0]->unk1C;
			}
			while (sp44 < sp48)
			{
				sp44 = sp48;
				var_s6 = i;
			}
		}

		if (var_s6 != (-1))
		{
			func_80013E64_14A64(var_s6);
			return var_s6;
		}
		osSyncPrintf(D_800382A0_38EA0);
	}
	else
	{
		osSyncPrintf(D_800382C8_38EC8);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800165EC_171EC.s")
#endif

void func_80016ABC_176BC(s8 arg0) {
	D_80031CD0_328D0[arg0] = -1;
	D_80031CE4_328E4[arg0] = 0;
	D_80031D1C_3291C[arg0] = -1;
	D_80031D28_32928[arg0] = 0;
	D_80031D2C_3292C[arg0] = 0.0f;
	D_80031D34_32934[arg0] = 0.0f;
	D_80031D3C_3293C[arg0] = 0.0f;
	D_80031D44_32944[arg0] = 0.0f;
}

void func_80016B38_17738(s8 arg0, s8 arg1) {
	D_80031D20_32920[arg1] = D_8006AB18[0]->unk1C;
	D_80031CD0_328D0[arg1] = arg0;
}

void func_80016B74_17774(s8 arg0, s8 arg1) {
	s8 i;

	for (i = 0; i < 2; i++) {
		if (D_80031D1C_3291C[i] >= arg0 && D_80031D1C_3291C[i] < arg1) {
			func_80013E64_14A64(i);
		}
	}
}

void func_80016C14_17814(s8 arg0, f32 arg1, f32 arg2, f32 arg3) {
	D_80031D2C_3292C[arg0] = arg1;
	D_80031D34_32934[arg0] = arg1;
	D_80031D3C_3293C[arg0] = arg3 / 20.0f;
	D_80031D44_32944[arg0] = (arg2 - arg3) / 20.0f;
	D_80031D28_32928[arg0] = 1;
}

void func_80016C8C_1788C(f32 arg0, f32 arg1, f32 arg2) {
	D_80031D50_32950 = arg0;
	D_80031D54_32954 = arg0;
	D_80031D58_32958 = arg2 / 20.0f;
	D_80031D5C_3295C = (arg1 - arg2) / 20.0f;
	D_80031D4C_3294C = 1;
}

void func_80016CD8_178D8(s8 arg0) {
	f32 temp_f0;

	if (D_80031CE4_328E4[arg0] == 1 && D_80031D28_32928[arg0] == 1) {
		temp_f0 = (f32)D_80031D74_32974[D_80031D1C_3291C[arg0]];
		alSeqpSetVol((ALSeqPlayer *)D_8006AB18[arg0],
			(s16)(s32)((D_80031D3C_3293C[arg0] * temp_f0 + D_80031D44_32944[arg0] * (temp_f0 * D_80031D2C_3292C[arg0]) / D_80031D34_32934[arg0]) * D_80031D64_32964));
	}
	D_80031D2C_3292C[arg0] = D_80031D2C_3292C[arg0] - 1.0f;
	if (D_80031D2C_3292C[arg0] == 0.0f) {
		if ((f64)D_80031D44_32944[arg0] > 0.0) {
			func_80013E64_14A64(arg0);
			return;
		}
		D_80031D28_32928[arg0] = 0;
	}
}

void func_80016E54_17A54(void) {
	Unk8006AA80Node *node;
	f32 temp_f0;
	s16 temp_vol;

	if (D_8006AB88 != 0) {
		node = D_8006AA80;
		if (node != NULL) {
			do {
				if (node->unk6 >= 0 && D_80031D4C_3294C == 1) {
					temp_f0 = (f32) node->unk20;
					temp_vol = (s16)(s32)((temp_f0 * D_80031D58_32958 + D_80031D5C_3295C * (temp_f0 * D_80031D50_32950) / D_80031D54_32954) * D_80031D60_32960);
					alSndpSetSound(D_8006AB10, node->unk6);
					alSndpSetVol(D_8006AB10, temp_vol);
				}
				node = node->unk34;
			} while (node != NULL);
		}
		if (D_80031D50_32950 == 0.0f) {
			D_80031D4C_3294C = 0;
			return;
		}
		D_80031D50_32950 -= 1.0f;
	}
}

void func_80016FD0_17BD0(s16 arg0) {
	Unk8006AA80Node *node;
	s16 temp_vol;
	Float4 sp38;

	sp38 = D_80033C9C_3489C;

	if (D_8006AB88 == 0) {
		return;
	}

	D_80031D60_32960 = ((f32 *)&sp38)[arg0];
	node = D_8006AA80;
	if (node != NULL) {
		do {
			if (node->unk6 >= 0 && D_80031D4C_3294C == 0) {
				temp_vol = (s16) ((f32) node->unk20 * D_80031D60_32960);
				alSndpSetSound(D_8006AB10, node->unk6);
				alSndpSetVol(D_8006AB10, temp_vol);
			}
			node = node->unk34;
		} while (node != NULL);
	}
}

void func_800170F4_17CF4(s16 arg0) {
	s16 var_s0;
	s16 temp_vol;

	D_80031D64_32964 = D_80033CAC_348AC[arg0];
	for (var_s0 = 0; var_s0 < 2; var_s0++) {
		if (D_80031CE4_328E4[var_s0] == 1 && D_80031D28_32928[var_s0] == 0) {
			temp_vol = (s16)(s32)((f32)D_80031D74_32974[D_80031D1C_3291C[var_s0]] * D_80031D64_32964);
			alSeqpSetVol((ALSeqPlayer *)D_8006AB18[var_s0], temp_vol);
		}
	}
}

void func_80017224_17E24(void) {
	s8 i;

	for (i = 0; i < 2; i++) {
		if (D_80031CD0_328D0[i] != -1 && D_80031CE4_328E4[i] == 0 && func_80012E88_13A88(i) == 0) {
			func_80012EC4_13AC4(D_80031CD0_328D0[i], i);
			D_80031CD0_328D0[i] = -1;
		}
	}
}
