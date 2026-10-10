#include <ultra64.h>
#include "common.h"

/* Localized fallback dialogue buffers. */
u8 D_80033CC0_348C0[6][250] = {
	" ;No new info.",
	"No new info.;Previous message;follows....",
	" ;Rien de neuf.",
	"Rien de neuf.;Ancien message....",
	" ;Keine neuen Infos.",
	"Keine neuen Infos..;Letzte Nachricht folgt....",
};

/* Portrait bounds, followed by the per-level portrait offsets. */
Unk800190D4 D_8003429C_34E9C[] = {
	{22, 22, 26, 36},
	{17, 19, 24, 39},
	{6, 19, 21, 44},
	{15, 13, 23, 32},
	{23, 21, 32, 37},
	{14, 4, 21, 26},
	{6, 14, 13, 34},
	{10, 15, 20, 39},
	{19, 9, 29, 29},
	{15, 8, 24, 32},
	{13, 4, 21, 27},
	{12, 12, 25, 29},
	{8, 18, 16, 40},
	{11, 6, 19, 26},
	{11, 22, 20, 41},
	{13, 8, 21, 34},
	{9, 17, 18, 36},
	{11, 8, 23, 35},
	{16, 22, 24, 42},
	{6, 20, 12, 41},
	{13, 26, 19, 44},
	{4, 16, 10, 34},
	{6, 17, 10, 39},
	{15, 19, 25, 39},
	{0, 0, 0, 0},
	{16, 23, 29, 46},
	{13, 4, 21, 25},
	{12, 4, 19, 26},
	{12, 6, 20, 29},
	{12, 11, 22, 33},
	{23, 11, 33, 30},
	{7, 19, 15, 40},
	{17, 23, 28, 40},
	{10, 6, 16, 30},
	{14, 12, 25, 34},
	{11, 16, 20, 37},
	{12, 7, 21, 27},
	{16, 8, 24, 28},
	{17, 26, 20, 45},
	{15, 16, 26, 35},
	{16, 8, 25, 29},
	{14, 4, 23, 24},
	{9, 10, 25, 31},
	{14, 8, 24, 29},
	{15, 13, 23, 30},
	{14, 14, 24, 34},
	{13, 14, 21, 33},
	{0, 0, 0, 0},
	{12, 8, 19, 28},
	{15, 34, 23, 34},
	{15, 20, 19, 39},
	{11, 14, 21, 48},
	{12, 16, 0, 0},
	{15, 20, 19, 39},
	{12, 12, 25, 29},
};
u8 D_80034454_35054[] = {1, 13, 25, 37, 49};

s32 D_8003445C_3505C = 0;
u8 *D_80034460_35060 = NULL;
u8 *D_80034464_35064 = NULL;
s32 D_80034468_35068 = 0;
s32 D_8003446C_3506C = 0;
s32 D_80034470_35070 = 0;
s32 D_80034474_35074 = 0;
s32 D_80034478_35078 = 0;
s32 D_8003447C_3507C = 0;
u16 D_80034480_35080 = 0xFFFF;
s32 D_80034484_35084 = 0;
s32 D_80034488_35088 = 0;
s32 gzip_data_0000 = 0;
s32 D_80034490_35090 = 0;
s32 D_80034494_35094 = 0;
s32 D_80034498_35098 = 0;
s32 D_8003449C_3509C = 0;
s32 D_800344A0_350A0 = 0;
s32 D_800344A4_350A4 = 0;
u8 D_800344A8_350A8 = 0;

const char D_800383B0_38FB0[] = "%i%@%X%Y";
const char D_800383BC_38FBC[] = "%i%@%X%Y";
const char D_800383C8_38FC8[] = "%X";
const char D_800383CC_38FCC[] = " %r%s";
const char D_800383D4_38FD4[] = " %r%s";
const char D_800383DC_38FDC[] = "%@";
const char D_800383E0_38FE0[] = "%X";
const char D_800383E4_38FE4[] = " %r%s";
const char D_800383EC_38FEC[] = "%i%@%X%Y";
const char D_800383F8_38FF8[] = "%i%@%X%Y";
const char D_80038404_39004[] = " %r%s";
const char D_8003840C_3900C[] = "%i%@%X%Y";
const char D_80038418_39018[] = "%i%@%X%Y";
const char D_80038424_39024[] = "--------talkyIndex=%d\n";
const char D_8003843C_3903C[] = "Playing dialogue for testing\n";
const char D_8003845C_3905C[] = "PlayDialogue: %d\n";
const char D_80038470_39070[] = "----\n%c,%c,%c\n";
const char D_80038480_39080[] = "\n";
const char D_80038484_39084[] = "wayPoint x: %d z: %d\n";
const char D_8003849C_3909C[] = "Index:%d\n";
const char D_800384A8_390A8[] = "Offset:%d\n";
const char D_800384B4_390B4[] = "keyNumber =%d\n";
const char D_800384C4_390C4[] = "\n";
const char D_800384C8_390C8[] = "wayPoint x: %d z: %d\n";
const char D_800384E0_390E0[] = "3)Changing mailMessageIndex=%d\n";
const char D_80038500_39100[] = "INSIDE InitCommsMessages,  dialogue_offsets=%d\n";
const char D_80038530_39130[] = "\n";
const char D_80038534_39134[] = "%X%Y";
const char D_8003853C_3913C[] = "%@";
const char D_80038540_39140[] = "       Yes      ";
const char D_80038554_39154[] = "%CNo\n";
const char D_8003855C_3915C[] = "       Ja      ";
const char D_8003856C_3916C[] = "%CNein\n";
const char D_80038574_39174[] = "       Oui      ";
const char D_80038588_39188[] = "%CNon\n";
const char D_80038590_39190[] = "       %CYes      ";
const char D_800385A4_391A4[] = "No\n";
const char D_800385A8_391A8[] = "       %CJa      ";
const char D_800385BC_391BC[] = "Nein\n";
const char D_800385C4_391C4[] = "       %COui      ";
const char D_800385D8_391D8[] = "Non\n";
const char D_800385E0_391E0[] = "%c\n";
const char D_800385E4_391E4[] = "Character read as key number was not a digit\n";
const char D_80038614_39214[] = "%c\n";
const char D_80038618_39218[] = "Character read as key number was not a digit\n";
const u32 jtbl_80038648_39248[] = {
	0x80017708, 0x8001794C, 0x8001794C, 0x8001794C, 0x80017884, 0x80017878, 0x80017878, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001773C, 0x8001794C, 0x8001794C, 0x8001794C, 0x8001794C, 0x80017898
};


s16 func_800172E0_17EE0(u8 *arg0)
{
	s32 count = 0;
	u8 *ptr = arg0;

	if (*arg0 != 0xa && *arg0 != 0 && *arg0 != 0x40) {
		do {
			// is 0x3B and not one of the first 4 iterations
			if (*ptr == 0x3B && arg0 != ptr && arg0 + 1 != ptr && arg0 + 2 != ptr && arg0 + 3 != ptr) {
				count++;
			}
			ptr++;
		} while (*ptr != 0xa && *ptr != 0 && *ptr != 0x40);
	}

	if (D_80034494_35094 != 0 && D_8006C566 == 0xFFFF && count == 1) {
		count = 2;
	}

	return count;
}

s16 func_80017394_17F94(u8 *arg0, s16 arg1)
{
	s32 width;
	u8 *ptr;

	width = 0;
	ptr = arg0;
	while (*ptr != 0xA && *ptr != 0 && *ptr != 0x40 && *ptr != 0x3B && --arg1)
	{
		if (*ptr >= 0x20 && *ptr < 0x80)
		{
			if (*ptr == 0x5E)
			{
				ptr = &ptr[2];
				arg1 -= 2;
			}
			if (width != 0 || *ptr != 0x20 || *ptr != 0x26 || *ptr != 0x25)
			{
				width += D_80031720_32320[*ptr * 2 + 0x261];
			}
		}
		ptr++;
	}
	return width;
}

// CURRENT(27406)
#ifdef NON_MATCHING
void func_80017490_18090(u8 *arg0) {
	u8 buf[32];
	s32 s5;
	s32 s4;
	s32 s3;
	u8 *s2;
	s32 s1;
	s32 sp68;
	u8 s0;
	s16 *pD558;
	u8 *bufp;

	s5 = 0;
	if (D_800313D0_31FD0 != 0) {
		sp68 = 0;
	}

	D_8006C55A = 0;

	pD558 = &D_8006C558;

	if (D_8003447C_3507C != 0) {
		s4 = (u16)D_8006C564;
	} else {
		s4 = D_8006C550[*pD558] + (u16)D_8006C564;
	}

	s2 = arg0 + s4;

	if (D_8003447C_3507C != 0) {
		s3 = func_80017394_17F94(s2, 0);
	} else {
		s3 = func_80017394_17F94(s2, (s16)(D_8006C550[(*pD558) + 1] - s4));
	}

	s0 = *s2;

	if (func_800172E0_17EE0(s2) == 1) {
		drawText(D_800383B0_38FB0, 0, 7, 0, D_80068088 * 4 - 0x3DC), s1 = 8;
	} else {
		drawText(D_800383BC_38FBC, 0, 7, 0, D_80068088 * 4 - 0x40C), s1 = 8;
	}

	if (D_80034488_35088 != 0 || ((u8 *)D_80034468_35068)[*pD558] == 0xFF || D_8003447C_3507C == 1) {
		drawText(D_800383C8_38FC8, (s16)(-(s3 >= 0 ? s3 >> 1 : (s3 + 1) >> 1) * 4 + 0x1C8));
	} else {
		drawText(D_800383C8_38FC8, (s16)(-(s3 >= 0 ? s3 >> 1 : (s3 + 1) >> 1) * 4 + 0x154));
	}

	bufp = buf;

	while (1) {
		if (s0 >= 0x41) {
			if (s0 == 0x5E) {
				s4 += 2;
				s2 += 2;
			} else {
				bufp[s5++] = s0;
			}
		} else {
			switch (s0) {
			case 0:
			case 0x40:
				bufp[s5] = 0;
				D_8006C55A++;
				sp68 = 1;
				s5 = 0;
				drawText(D_800383E4_38FE4, bufp);
				if (func_800172E0_17EE0(s2) == 1) {
					drawText(D_800383EC_38FEC, 0, s1, 0, D_80068088 * 4 - 0x3DC);
				} else {
					drawText(D_800383F8_38FF8, 0, s1, 0, D_80068088 * 4 - 0x40C);
				}
				s1++;
				s4--;
				s2--;
				break;
			case 0x20:
				bufp[s5] = 0;
				D_8006C55A++;
				s5 = 0;
				drawText(D_800383CC_38FCC, bufp);
				break;
			case 0x24:
				s4 += 2;
				s2 += 2;
				break;
			case 0x25:
			case 0x26:
				break;
			case 0x3B: {
				s16 lw;
				bufp[s5] = 0;
				D_8006C55A++;
				s5 = 0;
				drawText(D_800383D4_38FD4, bufp);
				drawText(D_800383DC_38FDC, 0, s1);
				s1++;
				if (D_8003447C_3507C != 0) {
					lw = func_80017394_17F94(s2 + 1, 0);
				} else {
					lw = func_80017394_17F94(s2 + 1, (s16)(D_8006C550[(*pD558) + 1] - s4));
				}
				if (D_80034488_35088 != 0 || ((u8 *)D_80034468_35068)[*pD558] == 0xFF || D_8003447C_3507C == 1) {
					drawText(D_800383E0_38FE0, (s16)(-(lw >= 0 ? lw >> 1 : (lw + 1) >> 1) * 4 + 0x1C8));
				} else {
					drawText(D_800383E0_38FE0, (s16)(-(lw >= 0 ? lw >> 1 : (lw + 1) >> 1) * 4 + 0x154));
				}
				break;
			}
			default:
				bufp[s5++] = s0;
				break;
			}
		}

		s4++;
		s2++;

		if (D_8003447C_3507C != 0) {
			s0 = *s2;
		} else {
			s0 = *s2;
			if (s4 >= D_8006C550[(*pD558) + 1]) {
				bufp[s5] = 0;
				D_8006C55A++;
				sp68 = 1;
				s5 = 0;
				drawText(D_80038404_39004, bufp);
				if (func_800172E0_17EE0(s2) == 1) {
					drawText(D_8003840C_3900C, 0, s1, 0, D_80068088 * 4 - 0x3DC);
				} else {
					drawText(D_80038418_39018, 0, s1, 0, D_80068088 * 4 - 0x40C);
				}
				s1++;
			}
		}

		if (sp68 != 0) {
			break;
		}
	}

	if (s0 == 0x40) {
		D_8006C566 = s4 - D_8006C550[*pD558] + 1;
	} else {
		D_8006C566 = 0xFFFF;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/17EE0/func_80017490_18090.s")
#endif

void func_80017AAC_186AC(void) {
	D_8006C55C = 0;
	D_8006C558 = -1;
	D_8006C55E = 0xFFFF;
	D_8006C568 = 0;
	D_8006C56A = 0;
}

void func_80017AE0_186E0(void) {
	D_80034478_35078 = 0;
	D_80034480_35080 = 0xFFFF;
	D_8003447C_3507C = 0;
	D_80034484_35084 = 0;
}

void func_80017B08_18708(s32 arg0) {
	D_8006C55C = 0;
	D_8006C558 = arg0;
	osSyncPrintf(D_80038424_39024, D_8006C558);
	// --------talkyIndex=%d
	D_8006C55E = 1;
	D_8006C564 = 0;
	D_8006C566 = 0;
	D_8006C568 = 0;
	D_8006C56A = 0;
	func_8000C6B8_D2B8(0);
}

u16 func_80017B78_18778(void) {
	if (D_80052AD0 != 0) {
		if ((D_8006C55E != 0xFFFF) && ((gameplayMode == 1) || (gameplayMode == 9) || (gameplayMode == 0) || (gameplayMode == 9) || (gameplayMode == 6) || (gameplayMode == 0xC))) {
			return D_8006C55E;
		}
		return 0xFFFF;
	}
	return 0xFFFF;
}

void func_80017BF8_187F8(short arg0)
{
	s32 offset = (arg0 * 0x1600) & 0xFFFF;
	func_800101F0_10DF0(&D_80265A80, ((((s32) (&D_3059BA0)) & 0xFFFFFF) + offset) + D_8F4960, 0x1400);
	func_800101F0_10DF0(&D_80266E80, ((((s32) (&D_305AFA0)) & 0xFFFFFF) + offset) + D_8F4960, 0x200);
}

// CURRENT(20481)
#ifdef NON_MATCHING
s16 func_80017CA4_188A4(void) {
	s32 sp20;
	s32 var_t4;
	s16 temp_t7;
	u32 var_v1;
	u8 var_a2;

	if (D_8006C558 == -1) {
		return -1;
	}

	{
		Gfx **dl;

		dl = &D_8005BB2C;
		gDPSetRenderMode((*dl)++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
		gDPSetCombineMode((*dl)++, G_CC_DECALRGBA, G_CC_DECALRGBA);
		gDPSetTextureLUT((*dl)++, G_TT_RGBA16);
		gDPSetTexturePersp((*dl)++, G_TP_NONE);
	}

	if (D_8003447C_3507C != 0) {
		var_a2 = 0xFF;
	} else if (D_80034488_35088 != 0) {
		var_a2 = 0xFF;
	} else {
		var_a2 = *(u8 *)((s32)D_8006C558 + D_80034468_35068);
	}
	sp20 = (s32)var_a2;

	if (var_a2 != 0xFF) {
		func_800190D4_19CD4(D_80068084 - 0x5B, D_80068088 - 0x60, (u16)var_a2, (u16)D_8006C568, (u16)D_8006C56A);
	}

	if (D_8006C55C == 0) {
		D_80053C8C = D_80052AD8;
		D_8006C576 = 0;
	}

	if (D_8006C564 == 0xFFFF) {
		D_8006C558 = -1;
		D_8006C55E = 0xFFFF;
		if (D_80034488_35088 != 0) {
			D_80034488_35088 = 0;
			func_8001A024_1AC24();
		}
		if (D_8003447C_3507C != 0) {
			D_8003447C_3507C = 0;
			if (D_8004771C == -1) {
				osSyncPrintf(D_8003843C_3903C);
				func_80018D7C_1997C(D_8004771A);
				D_80034480_35080 = 0xFFFF;
			} else if (D_80034480_35080 != 0xFFFF) {
				func_80018D7C_1997C(D_80034480_35080);
			} else {
				func_8001A024_1AC24();
				D_80034484_35084 = 0;
			}
		} else if (D_80034484_35084 != 0) {
			func_8001A024_1AC24();
			D_80034484_35084 = 0;
		}
	} else if (D_8003447C_3507C != 0) {
		if (D_80034480_35080 == 0xFFFF) {
			switch (D_800313D0_31FD0) {
			default:
			case 0:
				func_80017490_18090(D_80033CC0_348C0[0]);
				break;
			case 2:
				func_80017490_18090(D_800340A8_34CA8);
				break;
			case 1:
				func_80017490_18090(D_80033EB4_34AB4);
				break;
			}
		} else {
			switch (D_800313D0_31FD0) {
			default:
			case 0:
				func_80017490_18090(D_80033DBA_349BA);
				break;
			case 2:
				func_80017490_18090(D_800341A2_34DA2);
				break;
			case 1:
				func_80017490_18090(D_80033FAE_34BAE);
				break;
			}
		}
	} else {
		func_80017490_18090(D_80034460_35060);
	}

	if (D_8006C55E == 1) {
		if ((D_80034494_35094 != 0) && ((func_8000C670_D270(D_8006C55A) != 0) || (func_8000C6C4_D2C4() != 0)) && (D_8006C566 == 0xFFFF)) {
			if (D_80034498_35098 != 0) {
				if (D_80034490_35090 != 0) {
					if ((currentLevel == 3) && (D_8006C570 == 2)) {
						func_800072CC_7ECC(0x3F);
					} else {
						func_800072CC_7ECC((s64)D_8006C570);
					}
				} else if ((currentLevel == 3) && (D_8006C570 == 2)) {
					func_800073B8_7FB8(0x3F);
				} else {
					func_800073B8_7FB8((s64)D_8006C570);
				}
				D_80034494_35094 = 0;
				func_8000C6B8_D2B8(0);
				D_8006C564 = D_8006C566;
				D_80053C8C = D_80052AD8;
				D_8006C576 = 0;
			} else {
				func_8001A160_1AD60();
			}
		} else if ((isButtonNewlyPressed(0, 0xC000) != 0) && (D_8003449C_3509C == 0x18)) {
			if ((func_8000C670_D270(D_8006C55A) != 0) || (func_8000C6C4_D2C4() != 0)) {
				func_8000C6B8_D2B8(0);
				D_8006C564 = D_8006C566;
				D_80053C8C = D_80052AD8;
				D_8006C576 = 0;
			} else {
				func_8000C6B8_D2B8(1);
			}
		}
		if ((D_80034484_35084 != 0) && (isButtonNewlyPressed(0, 0x20) != 0) && (D_8003449C_3509C == 0x18)) {
			D_80034484_35084 = 0;
			D_8003447C_3507C = 0;
			D_8006C558 = -1;
			D_8006C55E = 0xFFFF;
			func_8001A024_1AC24();
		}
	} else if (((s32)D_8006C55C % 150) == 0x81) {
		D_8006C564 = D_8006C566;
		D_80053C8C = D_80052AD8;
		D_8006C576 = 0;
	}

	var_v1 = ((u16)D_8006C55A * 3) + 0xF;
	D_8006C568 = 0;
	D_8006C56A = 0;
	if ((var_v1 % 10U) != 0) {
		var_v1 = ((var_v1 / 10U) * 0xA) + 0xA;
	}
	if (func_8000C6C4_D2C4() != 0) {
		D_8006C576 = (u16)var_v1;
	}
	if ((u16)D_8006C576 < var_v1) {
		s32 temp_hi = (s32)D_8006C576 % 10;
		if (temp_hi < 5) {
			if (temp_hi == 0) {
				u32 temp_v0 = (D_8006C578 * 0x41C64E6D) + 0x3039;
				D_8006C574 = (u16)((u32)((temp_v0 >> 0x10) & 0xFFFF) % 10U);
				D_8006C578 = temp_v0;
			}
			if ((s32)D_8006C574 < 5) {
				D_8006C56A = 1;
			} else {
				D_8006C56A = 2;
			}
		}
		D_8006C576 += 1;
	} else {
		s32 temp_hi_2 = (s32)D_8006C55C % 90;
		if ((temp_hi_2 >= 0x15) && (temp_hi_2 < 0x19)) {
			D_8006C568 = 1;
		}
	}

	func_8000B044_BC44();

	if ((D_8006C566 != 0xFFFF) && ((func_8000C670_D270(D_8006C55A) != 0) || (func_8000C6C4_D2C4() != 0))) {
		Gfx **dl;

		dl = &D_8005BB2C;
		gSPClearGeometryMode((*dl)++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
		gDPPipeSync((*dl)++);
		gDPSetRenderMode((*dl)++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
		gDPSetTextureFilter((*dl)++, G_TF_BILERP);
		gDPSetTexturePersp((*dl)++, G_TP_NONE);
		gDPSetPrimColor((*dl)++, 0, 0, D_80053BF8, D_80053BFA & 0xFF, D_80053BFC & 0xFF, (u8)(128.0 - (((f64)(f32)coss(D_800344A2_350A2) / 32768.0) * 128.0)));
		gSPTexture((*dl)++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
		gDPSetCombineMode((*dl)++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
		gDPSetTextureLUT((*dl)++, G_TT_IA16);
		gDPSetTextureImage((*dl)++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_801FEA10);
		gDPTileSync((*dl)++);
		gDPSetTile((*dl)++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync((*dl)++);
		gDPLoadTLUTCmd((*dl)++, G_TX_LOADTILE, 15);
		gDPPipeSync((*dl)++);
		gDPTileSync((*dl)++);
		gDPSetTextureImage((*dl)++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, D_801FE810);
		gDPSetTile((*dl)++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync((*dl)++);
		gDPLoadBlock((*dl)++, G_TX_LOADTILE, 0, 0, 63, 2048);
		gDPPipeSync((*dl)++);
		gDPSetTile((*dl)++, G_IM_FMT_CI, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize((*dl)++, G_TX_RENDERTILE, 0, 0, 15 << 2, 15 << 2);
		if (sp20 == 0xFF) {
			var_t4 = (D_80068084 - 0x2D) * 4;
		} else {
			var_t4 = (D_80068084 - 0x6F) * 4;
		}
		temp_t7 = (D_80068088 - 0x2A) * 4;
		gSPTextureRectangle((*dl)++, var_t4, temp_t7, var_t4 + 0x40, temp_t7 + 0x40, G_TX_RENDERTILE, 0x0200, 0, -1024, 1024);
		gDPPipeSync((*dl)++);
		gDPSetTextureLUT((*dl)++, G_TT_NONE);
		gSPTexture((*dl)++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
		gDPSetRenderMode((*dl)++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);
		gDPSetCombineMode((*dl)++, G_CC_SHADE, G_CC_SHADE);
		gDPPipeSync((*dl)++);
	} else {
		D_800344A0_350A0 = 0;
	}

	D_8006C55C += 1;
	D_800344A0_350A0 += 0xFA0;
	return (s16)D_8006C55E;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/17EE0/func_80017CA4_188A4.s")
#endif

s32 func_80018A58_19658(void) {
	if ((D_8003449C_3509C == 0) && (func_80017B78_18778() != 1)) {
		return 0;
	}
	return 1;
}

s32 func_80018AA0_196A0(void) {
	if (D_8003449C_3509C == 0x18) {
		return 1;
	}
	return 0;
}

s32 func_80018AC8_196C8(void) {
	if (D_8003449C_3509C != 0) {
		return 1;
	}
	return 0;
}

s32 func_80018AEC_196EC(s32 arg0, s32 arg1, s32 arg2) {
	s32 result;
	s32 value;
	s32 clampedValue;
	s32 *counter;

	result = 0;
	if (func_80017B78_18778() == 1) {
		counter = &D_800344A4_350A4;
		value = *counter;
		clampedValue = (value + 1 >= 0xB) ? 0xA : value + 1;
		if ((D_8006C6C6 > 0) && (D_8004802C == 0)) {
			clampedValue = 0;
		}
		*counter = clampedValue;
		if (clampedValue >= 0xA) {
			value = D_8003449C_3509C;
			if ((value == 0) && (gameplayMode != 0)) {
				D_8006C560 = gameplayMode;
				gameplayMode = 9;
				if ((D_80034484_35084 != 0) && (D_8003447C_3507C == 0) && (D_80034488_35088 == 0)) {
					func_800153D8_15FD8(0x156);
				}
			}
			result = 1;
			D_8003449C_3509C = (D_8003449C_3509C + 4 >= 0x19) ? 0x18 : D_8003449C_3509C + 4;
		} else {
			D_8003449C_3509C = 0;
		}
	} else {
		clampedValue = D_8003449C_3509C - 4;
		if (D_8003449C_3509C == 0x18) {
			gameplayMode = D_8006C560;
		}
		D_8003449C_3509C = (clampedValue < 0) ? 0 : clampedValue;
		D_800344A4_350A4 = 0;
	}
	if (D_8003449C_3509C > 0) {
		gDPSetPrimColor(D_8005BB2C++, 0, 0, arg0, arg1, arg2, 0xFF);
		func_800092B8_9EB8(0x3C, ((D_80068088 - (D_8003449C_3509C * 2)) - 0x40) << 2, (D_80068084 - 0xF) << 2, (((s32)D_80068088 + (D_8003449C_3509C * 2)) - 0x40) << 2, 0);
	}
	return result;
}

void func_80018D14_19914(void) {
	D_80034484_35084 = 0;
	D_8003447C_3507C = 0;
	D_8006C558 = -1;
	D_8006C55E = 0xFFFF;
	func_8001A024_1AC24();
}

void func_80018D58_19958(void) {
	func_80018D14_19914();
	D_8003449C_3509C = 0;
}

// Play dialogue with index arg0
void func_80018D7C_1997C(u16 arg0) {
	u8 dialogueIndex;
	s32 character;

	D_80034494_35094 = 0;
	osSyncPrintf(D_8003845C_3905C, arg0); // PlayDialogue: %d
	if (!(D_800313C8 & 8) && !(D_80052ACD & 0x10)) {
		if (arg0 >= 0xCD) {
			func_80019F80_1AB80();
			dialogueIndex = arg0 - 0xCD;
			character = D_80034460_35060[D_8006C550[dialogueIndex]];
			switch (character) {
			case 0x26:
				D_80034484_35084 = 1;
				D_8003447C_3507C = 0;
				func_80017B08_18708(dialogueIndex);
				func_80015380_15F80(dialogueIndex);
				if (dialogueIndex < 0x26) {
					D_80034480_35080 = dialogueIndex;
				}
				D_80034478_35078 = 0;
				break;
			case 0x25:
				func_80019EA8_1AAA8(dialogueIndex);
				func_8001A024_1AC24();
				return;
			}

			if (D_80034460_35060[D_8006C550[dialogueIndex]] == 0x5E) {
				// ----%c,%c,%c
				osSyncPrintf(D_80038470_39070,
					D_80034460_35060[D_8006C550[dialogueIndex]],
					D_80034460_35060[D_8006C550[dialogueIndex] + 1],
					D_80034460_35060[D_8006C550[dialogueIndex] + 2]);
				D_8006C570 = func_8001A37C_1AF7C(&D_80034460_35060[D_8006C550[dialogueIndex]]);
				D_80034494_35094 = 1;
				D_80034490_35090 = 1;
				D_80034498_35098 = 0;
				func_80017B08_18708(dialogueIndex);
				return;
			}
			if (D_80034460_35060[D_8006C550[dialogueIndex] + 1] == 0x24) {
				gzip_data_0000 = 1;
				D_8006C56D = D_80034460_35060[D_8006C550[dialogueIndex] + 2];
				D_8006C56E = D_80034460_35060[D_8006C550[dialogueIndex] + 3];
				osSyncPrintf(D_80038480_39080); // \n
				osSyncPrintf(D_80038484_39084, D_8006C56D, D_8006C56E); // wayPoint x: %d z: %d
			}
		} else {
			osSyncPrintf(D_8003849C_3909C, arg0); // Index:%d
			osSyncPrintf(D_800384A8_390A8, D_8006C550[arg0]); // Offset:%d
			if (D_80034460_35060[D_8006C550[arg0]] == 0x5E) {
				D_8006C570 = func_8001A37C_1AF7C(&D_80034460_35060[D_8006C550[arg0]]);
				osSyncPrintf(D_800384B4_390B4, D_8006C570, &D_8006C570); // keyNumber =%d
				D_80034498_35098 = 0;
				D_80034494_35094 = 1;
				D_80034490_35090 = 1;
			} else if (D_80034460_35060[D_8006C550[arg0]] == 0x24) {
				gzip_data_0000 = 1;
				D_8006C56D = D_80034460_35060[D_8006C550[arg0] + 1];
				D_8006C56E = D_80034460_35060[D_8006C550[arg0] + 2];
				osSyncPrintf(D_800384C4_390C4); // \n
				osSyncPrintf(D_800384C8_390C8, D_8006C56D, D_8006C56E); // wayPoint x: %d z: %d
			}
			func_80017B08_18708(arg0);
		}
	}
}

// CURRENT(5760)
#ifdef NON_MATCHING
void func_800190D4_19CD4(s32 arg0, s32 arg1, u16 arg2, u16 arg3, u16 arg4) {
	Unk800190D4 *entry;
	u8 *texture;
	s32 sp12C;
	s32 sp128;
	s32 pad0;
	s32 pad1;
	u16 sp2C;
	u16 sp28;
	u16 portraitIndex;

	portraitIndex = arg2;
	switch (portraitIndex) {
	case 0:
		func_80017BF8_187F8(0);
		entry = &D_8003429C_34E9C[portraitIndex];
		texture = D_80265A80;
		break;
	case 0x33:
		func_80017BF8_187F8(1);
		entry = &D_8003429C_34E9C[portraitIndex];
		texture = D_80265A80;
		break;
	case 0x34:
		func_80017BF8_187F8(2);
		entry = &D_8003429C_34E9C[portraitIndex];
		texture = D_80265A80;
		break;
	case 0x35:
		func_80017BF8_187F8(3);
		entry = &D_8003429C_34E9C[portraitIndex];
		texture = D_80265A80;
		break;
	case 0x36:
		func_80017BF8_187F8(4);
		entry = &D_8003429C_34E9C[portraitIndex];
		texture = D_80265A80;
		break;
	default:
		entry = &D_8003429C_34E9C[D_80034453_35053[currentLevel] + portraitIndex - 1];
		texture = (u8 *)((portraitIndex * 0x1600) + D_80034470_35070 - 0x1600);
		break;
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, texture + 0x1400);
	gDPTileSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 255);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, texture);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 63 << 2, 31 << 2);
	gSPTextureRectangle(D_8005BB2C++, arg0 << 2, arg1 << 2, (arg0 + 0x40) << 2, (arg1 + 0x20) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, texture + 0x800);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 63 << 2, 31 << 2);
	gSPTextureRectangle(D_8005BB2C++, arg0 << 2, (arg1 + 0x20) << 2, (arg0 + 0x40) << 2, (arg1 + 0x40) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

	if ((entry->unk0 != 0) && (entry->unk2 != 0) && (arg3 != 0)) {
		sp12C = entry->unk0 + arg0;
		sp128 = entry->unk2 + arg1;
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 64, texture);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 5, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadTile(D_8005BB2C++, G_TX_LOADTILE, 0, 64 << 2, 32 << 2, 80 << 2);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 64 << 2, 32 << 2, 80 << 2);
		gSPTextureRectangle(D_8005BB2C++, sp12C << 2, sp128 << 2, (sp12C + 0x20) << 2, (sp128 + 0x10) << 2, G_TX_RENDERTILE, 0, 64 << 5, 1 << 10, 1 << 10);
	}

	sp2C = entry->unk4;
	if ((sp2C != 0) && (sp28 = entry->unk6, sp28 != 0)) {
		if (arg4 == 1) {
			sp12C = sp2C + arg0;
			sp128 = sp28 + arg1;
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 64, texture);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadTile(D_8005BB2C++, G_TX_LOADTILE, 32 << 2, 64 << 2, 48 << 2, 80 << 2);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 32 << 2, 64 << 2, 48 << 2, 80 << 2);
			gSPTextureRectangle(D_8005BB2C++, sp12C << 2, sp128 << 2, (sp12C + 0x10) << 2, (sp128 + 0x10) << 2, G_TX_RENDERTILE, 32 << 5, 64 << 5, 1 << 10, 1 << 10);
			return;
		}
		if (arg4 == 2) {
			sp12C = sp2C + arg0;
			sp128 = sp28 + arg1;
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 64, texture);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadTile(D_8005BB2C++, G_TX_LOADTILE, 48 << 2, 64 << 2, 64 << 2, 80 << 2);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 48 << 2, 64 << 2, 64 << 2, 80 << 2);
			gSPTextureRectangle(D_8005BB2C++, sp12C << 2, sp128 << 2, (sp12C + 0x10) << 2, (sp128 + 0x10) << 2, G_TX_RENDERTILE, 48 << 5, 64 << 5, 1 << 10, 1 << 10);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/17EE0/func_800190D4_19CD4.s")
#endif

// CURRENT(969)
#ifdef NON_MATCHING
void func_80019ABC_1A6BC(arg0, arg1)
s32 arg0;
s32 arg1;
{
	u8 cnt;
	
	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_80265880));
	gDPTileSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 255);
	gDPPipeSync(D_8005BB2C++);
	if (D_8003445C_3505C != 0) {
		func_800153D8_15FD8(0x156);
		D_8003445C_3505C = 0;
		D_800344A8_350A8 = 0;
	}
	cnt = D_800344A8_350A8;
	if ((cnt % 3) != 2) {
	} else {
		D_8006C56C = (D_8006C56C + 1) % 6;
	}
	cnt += 1;
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, K0_TO_PHYS(&D_80264B00[D_8006C56C * 0x240]));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 287, 683);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_RENDERTILE, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x5C, 0x5C);
	gSPTextureRectangle(D_8005BB2C++, arg0 * 4, arg1 * 4, (arg0 + 0x12) << 2, (arg1 + 0x12) << 2, G_TX_RENDERTILE, 0, 0, 0x0555, 0x0555);
	D_800344A8_350A8 = cnt;
	gDPPipeSync(D_8005BB2C++);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/17EE0/func_80019ABC_1A6BC.s")
#endif

void func_80019EA8_1AAA8(u8 arg0) {
	D_80034478_35078 = 1;
	D_80034480_35080 = arg0;
	osSyncPrintf(D_800384E0_390E0, D_80034480_35080, arg0);
	// 3)Changing mailMessageIndex=%d
	D_8003447C_3507C = 0;
	D_8006C56C = 0;
	D_8003445C_3505C = 1;
}

void func_80019F08_1AB08(void) {
	func_80019F80_1AB80();
	D_80034484_35084 = 1;
	D_8003447C_3507C = 1;
	D_8006C55C = 0;
	D_8006C558 = 0;
	D_8006C55E = 1;
	D_8006C564 = 0;
	D_8006C566 = 0;
	D_8006C568 = 0;
	D_8006C56A = 0;
	func_8000C6B8_D2B8(0);
}

void func_80019F80_1AB80(void) {
	D_80034464_35064 = D_80034460_35060;
	D_8003446C_3506C = D_80034468_35068;
	D_80034474_35074 = D_80034470_35070;
	D_8006C554 = D_8006C550;
	D_80034460_35060 = &D_8006AC10;
	D_80034468_35068 = (s32)&D_8006C410;
	D_80034470_35070 = (s32)&D_3059BA0;
	D_8006C550 = &D_8006C450;
	osSyncPrintf(D_80038500_39100, D_8006C550, &D_80034468_35068, &D_80034470_35070);
	// INSIDE InitCommsMessages,  dialogue_offsets=%d
}

void func_8001A024_1AC24(void) {
	D_80034460_35060 = D_80034464_35064;
	D_80034468_35068 = D_8003446C_3506C;
	D_80034470_35070 = D_80034474_35074;
	D_8006C550 = D_8006C554;
}

void func_8001A068_1AC68(void) {
	if ((func_80017B78_18778() == 0xFFFF) && ((gameplayMode == GAMEPLAY_MODE_UNK1) || (gameplayMode == GAMEPLAY_MODE_UNK6)) && (func_80017B78_18778() != 1)) {
		if (D_80034478_35078 != 0) {
			func_80019F80_1AB80();
			D_80034484_35084 = 1;
			func_80018D7C_1997C(D_80034480_35080);
			D_80034478_35078 = 0;
			return;
		}
		if (D_8006C55E == 0xFFFF) {
			func_80019F08_1AB08();
		}
	}
}

u8 func_8001A114_1AD14(void) {
	return *(u8 *)(D_80034468_35068 + D_8006C558);
}

void func_8001A130_1AD30() {
	if (D_80034478_35078 != 0) {
		func_80019ABC_1A6BC();
	}
}

void func_8001A160_1AD60(void) {
	drawText(D_80038530_39130);
	D_80034498_35098 = 0;
	if (currentControllerStates[CONTROLLER_ONE].stick_x >= 0x1F) {
		D_80034490_35090 = 0;
	}
	if (currentControllerStates[CONTROLLER_ONE].stick_x < -0x1E) {
		D_80034490_35090 = 1;
	}
	drawText(D_80038534_39134, 0, 0);
	drawText(D_8003853C_3913C, 0, 8);
	if (D_80034490_35090 != 0) {
		switch (D_800313D0_31FD0) {
		default:
		case 0:
			func_8000577C_637C();
			drawText(D_80038540_39140);
			drawText(D_80038554_39154, 0x32, 0x5A, 0x32);
			break;
		case 2:
			func_8000577C_637C();
			drawText(D_8003855C_3915C);
			drawText(D_8003856C_3916C, 0x32, 0x5A, 0x32);
			break;
		case 1:
			func_8000577C_637C();
			drawText(D_80038574_39174);
			drawText(D_80038588_39188, 0x32, 0x5A, 0x32);
			break;
		}
	} else {
		switch (D_800313D0_31FD0) {
		default:
		case 0:
			drawText(D_80038590_39190, 0x32, 0x5A, 0x32);
			func_8000577C_637C();
			drawText(D_800385A4_391A4);
			break;
		case 2:
			drawText(D_800385A8_391A8, 0x32, 0x5A, 0x32);
			func_8000577C_637C();
			drawText(D_800385BC_391BC);
			break;
		case 1:
			drawText(D_800385C4_391C4, 0x32, 0x5A, 0x32);
			func_8000577C_637C();
			drawText(D_800385D8_391D8);
			break;
		}
	}
	if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A) != 0) {
		D_80034498_35098 = 1;
	}
}

s32 func_8001A37C_1AF7C(char *arg0) {
	s32 var_s0;
	s32 sp20;

	sp20 = (u8) arg0[1];
	var_s0 = 0;
	osSyncPrintf(D_800385E0_391E0, sp20); // %c
	if (sp20 >= 0x30 && sp20 < 0x3A) {
		var_s0 = (sp20 * 0xA - 0x1E0) & 0xFF;
	} else {
		osSyncPrintf(D_800385E4_391E4, sp20); // Character read as key number was not a digit
	}
	sp20 = (u8) arg0[2];
	osSyncPrintf(D_80038614_39214, sp20); // %c
	if (sp20 >= 0x30 && sp20 < 0x3A) {
		var_s0 = (var_s0 + sp20 - 0x30) & 0xFF;
	} else {
		osSyncPrintf(D_80038618_39218, sp20); // Character read as key number was not a digit
	}
	return var_s0;
}

void myfree(void) {
	gzip_data_0000 = 0;
}
