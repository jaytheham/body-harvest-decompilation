#include <ultra64.h>
#include <stdarg.h>
#include "common.h"

/* Extended character indices. */
s16 D_80031650_32250[] = {
	0, -1, 1, -1, 32, -1, 12, 2, 4, 3,
	5, -1, -1, -1, 7, 6, -1, -1, -1, -1,
	8, -1, 33, -1, -1, 13, 11, 9, 10, -1,
	-1, 50, 16, -1, 17, -1, 48, -1, 28, 18,
	20, 19, 21, -1, -1, -1, 23, 22, -1, -1,
	-1, -1, 24, -1, 49, -1, -1, 29, 27, 25,
	26, -1, -1, -1, -1, -1, -1, -1, -1, -1,
};

/* Textured glyph quad. */
Vtx D_800316E0_322E0[] = {
	{ {{ 0, 8, 0 }, 0, { 0, 1024 }, { 230, 230, 230, 255 }} },
	{ {{ 16, 8, 0 }, 0, { 1024, 1024 }, { 230, 230, 230, 255 }} },
	{ {{ 0, -8, 0 }, 0, { 0, 0 }, { 230, 230, 230, 255 }} },
	{ {{ 16, -8, 0 }, 0, { 1024, 0 }, { 230, 230, 230, 255 }} },
};

/* Glyph vertical offsets and advances; D_800319C1_325C1 aliases the space advance. */
s8 D_80031720_32320[] = {
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 10, 0, 10, 3, 9, 0, 9, 0, 9, 0, 9, 0, 8, 0, 8,
	0, 11, 0, 9, 0, 9, 0, 9, 0, 15, 0, 14, 0, 14, 0, 14,
	0, 9, 0, 9, 3, 9, 0, 8, 0, 8, 0, 8, 0, 8, 0, 7,
	0, 9, 0, 9, 0, 9, 0, 9, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 10, 0, 11, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 13, 0, 13, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 9, 0, 9, 0, 9, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14, 0, 14,
	0, 7, 0, 6, -2, 9, -2, 10, -2, 9, -2, 9, 0, 8, -3, 5,
	-1, 9, -1, 8, 0, 8, -2, 11, 1, 5, -3, 8, 2, 6, 0, 7,
	0, 8, 0, 6, 0, 8, 0, 8, 0, 8, 0, 8, 0, 8, 0, 9,
	0, 8, 0, 8, 0, 5, 0, 5, 0, 14, 0, 6, 0, 14, 0, 8,
	0, 7, 0, 9, 0, 9, 0, 9, 0, 9, 0, 8, 0, 8, 0, 9,
	0, 9, 0, 5, 0, 10, 0, 9, 0, 10, 0, 13, 0, 9, 0, 10,
	0, 9, 0, 10, 0, 9, 0, 9, 0, 9, 0, 8, 0, 9, 0, 13,
	0, 10, 0, 9, 0, 12, 0, 14, 0, 14, 1, 8, 0, 8, 0, 8,
	0, 8, 0, 8, 0, 8, 0, 8, 0, 8, 0, 8, 4, 7, 4, 8,
	0, 8, 0, 3, 3, 7, 0, 8, 0, 3, 0, 13, 0, 8, 0, 8,
	4, 8, 4, 8, 0, 7, 0, 8, 0, 9, 0, 8, 0, 8, 0, 13,
	0, 10, 4, 8, 0, 10, -2, 14, -2, 12, -1, 16, -1, 16, -1, 16,
};

void func_8000A160_AD60(void) {
	D_80053C98 = 0;
	guOrtho(&D_80052B60, 0.0f, 320.0f, 240.0f, 0.0f, 0.0f, 1000.0f, 1.0f);
	guLookAt(&D_80052BA0, (f32)D_80053C84, (f32)D_80053C86, 1.0f, (f32)D_80053C84, (f32)D_80053C86, 0.0f, 0.0f, 1.0f, 0.0f);
	D_80053C88 = 0;
	D_80053BF0 = 0;
	D_80053BF2 = 0xFF;
	D_80053BF4 = 0;
	D_80053BF6 = 0;
	D_80053BF8 = 0;
	D_80053BFA = 0;
	D_80053BFC = 0;
	D_80053BFE = 0;
	D_80053BE2 = 0;
	D_80053BE4 = 0;
	D_80053BE8 = 1.0f;
	D_80053BEC = 1.0f;
	D_80053C84 = 0;
	D_80053C86 = 0;
	D_80053C94 = 0x1E;
	D_80053C96 = 0x122;
	func_8000AFDC_BBDC();
}

s32 func_8000A2B8_AEB8(u8 *arg0, s16 arg1) {
	s32 result;
	u8 *ptr;

	result = 0;
	ptr = arg0 + arg1;

	if (*ptr != 0xA && *ptr != 0) {
		do {
			if (*ptr >= 0x20) {
				if (*ptr < 0xFD) {
					if (result != 0 || *ptr != 0x20) {
						if (*ptr >= 0xC1) {
							result += D_80031720_32320[D_80031650_32250[*ptr - 0xC0] * 2 + 0x221];
						} else {
							result += D_80031720_32320[*ptr * 2 + 0x261];
						}
					}
				} else {
					{
						s32 jidx = (*ptr & 0x7F) << 8;
						jidx += ptr[1];
						result += D_80031720_32320[jidx * 2 + 1];
					}
					ptr++;
				}
			} else {
				switch (*ptr) {
				case 0x16:
					ptr += 1; break;
				case 0x14:
				case 0x17:
				case 0x19:
					ptr += 2; break;
				case 0x15:
					ptr += 3; break;
				case 0x18:
					ptr += 4; break;
				}
			}
			ptr++;
			if (*ptr == 0xA) {
				break;
			}
		} while (*ptr != 0);
	}

	return result;
}

void func_8000A3DC_AFDC(s16 arg0, s8 *arg1)
{
	u8 low;
	s8 high;
	arg0 *= 2;
	low = arg0 & 0xFF;
	high = arg0 >> 8;
	if (low >= 0)
	{
		low++;
	}
	if (high >= 0)
	{
		high++;
	}
	*arg1 = high;
	arg1++;
	*arg1 = low;
}

s16 func_8000A43C_B03C(s8 *arg0)
{
	s8 var_v1;
	u8 temp_v0;
	s32 var_a0;
	var_v1 = *arg0;
	arg0++;
	temp_v0 = *((u8 *) arg0);
	if (var_v1 > 0)
	{
		var_v1 -= 1;
	}
	var_a0 = temp_v0;
	if (temp_v0 > 0)
	{
		temp_v0--;
		var_a0 = temp_v0;
	}
	return (((s16) (((s16) (var_v1 << 8)) + var_a0)) / 2);
}

#ifdef NON_MATCHING
void drawText(char *arg0, ...) {
	char *s3;
	s8 *s0;
	va_list s2;
	u32 v0;
	s32 s1;
	s32 s4;
	u32 s5;
	s32 v1;
	s32 a0;
	u32 isDigit;
	u32 a1;
	s32 sp64;
	s32 sp60;

	va_start(s2, arg0);
	v0 = (u8)*arg0;
	s0 = &D_80052BE0[(u16)D_80053BE0];
	s3 = arg0;

	if (v0 != 0) {
		v0 = (u8)v0;
		a0 = (0x25U == v0);
		while (1) {
			s3++;
			if (a0 != 0) {
				switch ((u8)*s3 - '0') {
				case 0:
					s3[-1] = '\0';
					*s3 = 1U;
					s3++;
					break;
				case 1:
					s3[-1] = '\0';
					*s3 = 2U;
					s3++;
					break;
				case 2:
					s3[-1] = '\0';
					*s3 = 3U;
					s3++;
					break;
				case 3:
					s3[-1] = '\0';
					*s3 = 4U;
					s3++;
					break;
				case 4:
					s3[-1] = '\0';
					*s3 = 5U;
					s3++;
					break;
				case 5:
					s3[-1] = '\0';
					*s3 = 6U;
					s3++;
					break;
				}
			}
			v0 = (u8)*s3;
			if (v0 != 0) {
				a0 = (0x25U == v0);
				continue;
			}
			break;
		}
		s3 = arg0;
		v0 = (u8)*s3;
	}

	s1 = 10;
	s4 = -4;
	s5 = 10;
	if (v0 != 0) {
		v0 = (u8)*s3;
		do {
			a1 = 6;
			if (0x25U != v0) {
				*s0++ = (s8)v0;
				s3++;
			} else {
				v0 = ((u8 *)s3)[1];
				v1 = (u8)s3[1];
				s3++;
				if ((s32)v0 < '0' || v1 >= ':') {
					isDigit = 0;
				} else {
					isDigit = 1;
				}
				if (isDigit != 0) {
					v0 = ((u8 *)s3)[1];
					a1 = v1 - '0';
					v1 = (u8)s3[1];
					s3++;
				}
				switch (v1 ^ 0) {
		case 0:
			break;
		case 'c':
			*s0++ = va_arg(s2, s32);
			break;
		case 'd':
			v1 = va_arg(s2, s32);
			v0 = 1000000;
			if (v1 < 0) {
				*s0++ = '-';
				v1 = -v1;
			}
			if ((v1 / (s32)v0) % s1 == 0) {
				do {
					v0 = (s32)v0 / s1;
				} while ((v1 / (s32)v0) % s1 == 0 && (s32)v0 >= 2);
			}
			if (v0 != 0) {
				do {
					*s0++ = ((v1 / (s32)v0) % s1) + '0';
					v0 = (s32)v0 / s1;
				} while (v0 != 0);
			}
			break;
		case 'f': {
			u32 index;
			v0 = 1000000;
			index = 1;
			func_80004254_4E54(va_arg(s2, double), a1, &sp64, &sp60);
			if (sp64 < 0) {
				*s0++ = '-';
				sp64 = -sp64;
			}
			if ((sp64 / (s32)v0) % s1 == 0) {
				do {
					v0 = (s32)v0 / s1;
				} while ((sp64 / (s32)v0) % s1 == 0 && (s32)v0 >= 2);
			}
			if (v0 != 0) {
				do {
					*s0++ = ((sp64 / (s32)v0) % s1) + '0';
					v0 = (s32)v0 / s1;
				} while (v0 != 0);
			}
			*s0++ = '.';
			v0 = 1;
			if ((s32)a1 >= 2) {
				do {
					v0 *= s1;
					index++;
				} while (index != a1);
			}
			if (v0 != 0) {
				do {
					*s0++ = (((u32)sp60 / v0) % s5) + '0';
					v0 = (s32)v0 / s1;
				} while (v0 != 0);
			}
			break;
		}
		case 'i':
			*s0++ = 0x12;
			break;
		case 'r':
			*s0++ = 0x13;
			break;
		case 's': {
			char *str;
			str = va_arg(s2, char *);
			v0 = (u8)*str;
			if (v0 != 0) {
			do {
				if (0x25U == v0) {
					str++;
					switch ((u8)*str - '0') {
					case 0: *s0++ = 1U; break;
					case 1: *s0++ = 2U; break;
					case 2: *s0++ = 3U; break;
					case 3: *s0++ = 4U; break;
					case 4: *s0++ = 5U; break;
					case 5: *s0++ = 6U; break;
					default:
						*s0++ = 0x25U;
						str--;
						break;
					}
				} else {
					*s0++ = v0;
				}
				v0 = (u8)str[1];
				str++;
			} while (v0 != 0);
			}
			break;
		}
		case '@': {
			D_80053C80 = va_arg(s2, s32);
			v1 = va_arg(s2, s32);
			D_80053C92 = (s16)((v1 * 20 + 24) >> 2);
			a0 = D_80053C80;
			if (a0 != 0x80) {
				if (a0 == 0x81) {
				*s0++ = (s8)s5;
				*s0++ = 0x1D;
				*s0++ = (s8)(s16)D_80053C92;
				} else {
				D_80053C90 = (s16)(D_800319C1_325C1 * a0 + D_80053C94);
				*s0++ = (s8)s5;
				*s0++ = 0x14;
				*s0++ = (s8)(D_80053C90 >> 2);
				*s0++ = (s8)(s16)D_80053C92;
				}
			} else {
				*s0++ = (s8)s5;
				*s0++ = 0x1A;
				*s0++ = (s8)(s16)D_80053C92;
			}
			break;
		}
		case 'C': {
			*s0++ = 0x15;
			a0 = va_arg(s2, s32);
			*s0++ = (s8)a0;
			v1 = va_arg(s2, s32);
			*s0++ = (s8)v1;
			a0 = va_arg(s2, s32);
			*s0++ = (s8)a0;
			break;
		}
		case 'a': {
			*s0++ = 0x16;
			a0 = va_arg(s2, s32);
			*s0++ = (s8)a0;
			break;
		}
		case 'W': {
			*s0++ = 0x18;
			a0 = va_arg(s2, s32);
			*s0++ = (s8)(a0 >> 2);
			v1 = va_arg(s2, s32);
			*s0++ = (s8)(v1 >> 2);
			a0 = va_arg(s2, s32);
			*s0++ = (s8)(a0 >> 2);
			v1 = va_arg(s2, s32);
			*s0++ = (s8)(v1 >> 2);
			break;
		}
		case 'X': {
			*s0++ = 0x19;
			func_8000A3DC_AFDC((s16)(va_arg(s2, s32) >> 2), s0);
			s0 += 2;
			break;
		}
		case 'Y': {
			*s0++ = 0x17;
			func_8000A3DC_AFDC((s16)(va_arg(s2, s32) >> 2), s0);
			s0 += 2;
			break;
		}
		case 'H': {
			*s0++ = 0x1B;
			func_8000A3DC_AFDC(va_arg(s2, s32), s0);
			s0 += 2;
			break;
		}
		case 'V': {
			*s0++ = 0x1C;
			func_8000A3DC_AFDC(va_arg(s2, s32), s0);
			s0 += 2;
			break;
		}
		default:
			*s0 = v0;
			s0++;
			break;
				}
				s3++;
			}

		} while ((v0 = (u8)*s3) != 0);
	}

	*s0 = '\0';
	D_80053BE0 = s0 - D_80052BE0;
}
#else
#ifdef VERSION_US
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/drawText.s", "src.us/core/AD60_text_late_rodata.us.s")
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/drawText.s", "src.us/core/AD60_text_late_rodata.eu.s")
#endif
#endif


void func_8000AFDC_BBDC(void)
{
	s32 i;
	D_80053BE2 = 0;
	D_80053BE4 = 0;
	D_80053BE0 = 0;
	D_80053C80 = 0;
	D_80053C82 = 0;
	D_80053C90 = 0x28;
	D_80053C92 = 0x18;
	i = ARRAY_COUNT(D_80052BE0);
	while (i--) {
		D_80052BE0[i] = 0;
	}
}

#ifdef NON_MATCHING
void func_8000B044_BC44(void) {
    s16 i;
    u32 r, g, b;
    s16 x_cursor, y_cursor;
    s16 char_idx;
    u8 char_raw;
    u8 alpha;
    s16 clip_x_max, clip_y_max, clip_x_min, clip_y_min;
    s32 glyph_y;
    s32 flag_78, flag_74;
    u8 *text_ptr;
    s32 glyph_code;
    s32 char_value;
    s16 x_pos, y_pos;
    s16 glyph_y_off;
    s8 *glyph_data;
    f32 minimum;

	alpha = 0xFF;

	D_80053C94 = 0x1E;

	x_cursor = 0;
	y_cursor = 0;
	r = 0xFF; g = 0xFF; b = 0xFF;
	clip_x_min = 0; clip_y_min = 0;
	flag_78 = 0; flag_74 = 0;
	D_80053C96 = (s16)(D_80068084 - 0x1E);

	if (gameplayMode == 0) {
		clip_x_max = 0x280; clip_y_max = 0x1E0;
	} else {
		clip_x_max = 0x140; clip_y_max = 0xF0;
	}

	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_IA16);

	gDPLoadTLUT_pal16(D_8005BB2C++, 0, D_801FEA10);
	gDPTileSync(D_8005BB2C++);

	text_ptr = (u8 *)D_80052BE0;
	i = 0;

	if ((u16)D_80053BE0 > 0) {
		minimum = D_80037578_38178_R;
		do { } while (0);
		/* Retain the target constant candidate priorities without emitted work. */
		if (minimum < D_80053BE8 * 1024 + D_80053BEC / 1024 +
		              D_80053BE8 / 1024 + 1024) { }
		do {
        glyph_code = text_ptr[i];
        char_value = glyph_code;
        if (minimum * (f32)(x_cursor + 1) < 1024 + (f32)(x_cursor + 2)) { }
		if (glyph_code & 0x80) {
            glyph_code = (u32)glyph_code + 0x130U;
			char_idx = (s16)glyph_code;
		} else {
            glyph_code = char_value + 0x130;
			char_idx = (s16)glyph_code;
		}

		/* Space character */
		if ((s16)glyph_code == 0x150) {
			x_cursor = (s16)(x_cursor + D_800319C1_325C1);
		}

		/* Control codes */
		else if (char_value >= 0x20) {

		/* Printable character */
		if (char_value >= 0xC0) {
			char_idx = (s16)(D_80031650_32250[char_value - 0xC0] + 0x110);
		}

		glyph_data = &D_80031720_32320[char_idx * 2];
		glyph_y_off = glyph_data[0];

		x_pos = (s16)(x_cursor + D_80053BE2);
		glyph_y = y_cursor + glyph_y_off;
		y_pos = (s16)(glyph_y + D_80053BE4);

		/* Bounds check */
		if ((x_pos + 16) < clip_x_min || clip_x_max < x_pos ||
			(y_pos + 16) < clip_y_min || clip_y_max < y_pos) {
			x_cursor += glyph_data[1];
			continue;
		}

		/* Render character */
		gDPLoadTextureBlock_4b(D_8005BB2C++, &D_801F1210[char_idx * 128], G_IM_FMT_CI, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

		/* Compute texture rectangle coordinates (10.2 fixed point) */
		gSPTextureRectangle(D_8005BB2C++,
            (x_cursor * D_80053BE8 + D_80053BE2) * 4,
            ((s16)glyph_y * D_80053BEC + D_80053BE4) * 4,
            ((x_cursor + 16) * D_80053BE8 + D_80053BE2) * 4,
            (((s16)glyph_y + 16) * D_80053BEC + D_80053BE4) * 4,
            G_TX_RENDERTILE, 0, 0, 1024 / D_80053BE8, 1024 / D_80053BEC);

		gDPPipeSync(D_8005BB2C++);

		x_cursor += glyph_data[1];
		} else {
			switch (char_value) {
			case 10: { /* newline + alignment */
				s16 width;
				s16 a1_idx;
				if (flag_78 != 0 || flag_74 != 0) {
					a1_idx = (s16)(i + 1);
					width = func_8000A2B8_AEB8(text_ptr, a1_idx);
					if (flag_78 != 0) {
						/* center */
						x_cursor = D_80053C94 + (D_80053C96 - D_80053C94 - width) / 2;
					} else {
						/* right-align */
						x_cursor = (s16)(D_80053C96 - (s16)width - D_800319C1_325C1);
					}
				} else {
					/* left-align */
					x_cursor = (s16)(D_800319C1_325C1 + D_80053C94);
				}
				y_cursor = (s16)(y_cursor + 0x14);
				break;
			}
			case 26: { /* newline y-scroll + center-align */
				s16 width;


				y_cursor = text_ptr[(s16)(i++ + 1)] * 4;
				flag_78 = 1;

				width = func_8000A2B8_AEB8(text_ptr, (s16)(i + 1));
				x_cursor = D_80053C94 + (D_80053C96 - D_80053C94 - width) / 2;
				break;
			}
			case 29: { /* newline y-scroll + right-align */
				s16 width;
				y_cursor = text_ptr[(s16)(i++ + 1)] * 4;
				flag_74 = 1;
				width = func_8000A2B8_AEB8(text_ptr, (s16)(i + 1));
				x_cursor = (s16)(D_80053C96 - (s16)width - D_800319C1_325C1);
				break;
			}
						case 20:
                x_cursor = text_ptr[(s16)(i++ + 1)];
                flag_78 = 0;
                if (x_cursor & 0x80) { x_cursor -= 0x100; }
                x_cursor *= 4;
                y_cursor = text_ptr[(s16)(i++ + 1)];
                if (y_cursor & 0x80) { y_cursor -= 0x100; }
                y_cursor *= 4;
                break;
			case 18: /* reset scroll counter */
				D_80053C88 = 0;
				break;
			case 1: /* gray */
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x96, 0x96, 0x96, 0xFF);
				r = 0x96; g = 0x96; b = 0x96;
				break;
			case 2: /* light gray */
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xE6, 0xE6, 0xE6, 0xFF);
				r = 0xE6; g = 0xE6; b = 0xE6;
				break;
			case 3: /* green */
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0, 0xE6, 0, 0xFF);
				r = 0; g = 0xE6; b = 0;
				break;
			case 4: /* red */
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xE6, 0, 0, 0xFF);
				r = 0xE6; g = 0; b = 0;
				break;
			case 5: /* yellow */
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xDC, 0xDC, 0, 0xFF);
				r = 0xDC; g = 0xDC; b = 0;
				break;
			case 6: /* blue */
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0, 0, 0xDC, 0xFF);
				r = 0; g = 0; b = 0xDC;
				break;
			case 19: { /* color fade based on timer */
				s32 counter;
				gDPPipeSync(D_8005BB2C++);
				if (D_80053C98 != 0) {
					counter = 0x10;
				} else {
					counter = (D_80052AD8 - D_80053C8C) - D_80053C88;
				}
				if (counter < 0) {
					r = D_80053BF1; g = D_80053BF3; b = D_80053BF5;
					alpha = (u8)D_80053BF6;
				} else if (counter >= 0x10) {
					r = D_80053BF9; g = D_80053BFB; b = D_80053BFD;
					alpha = (u8)D_80053BFE;
				} else {
					f64 fraction;
					s16 endpoint_r, endpoint_g, endpoint_b, endpoint_a;
					endpoint_r = D_80053BF8;
					fraction = (f32)(u32)(u8)(0xFF - (counter << 4)) / D_80037600_38200_R;
					r = (u32)(endpoint_r - (f32)(endpoint_r - D_80053BF0) * fraction) & 0xFF;
					endpoint_g = D_80053BFA;
					g = (u32)(endpoint_g - (f32)(endpoint_g - D_80053BF2) * fraction) & 0xFF;
					endpoint_b = D_80053BFC;
					b = (u32)(endpoint_b - (f32)(endpoint_b - D_80053BF4) * fraction) & 0xFF;
					endpoint_a = D_80053BFE;
					alpha = (u32)(endpoint_a - (f32)(endpoint_a - D_80053BF6) * fraction);

				}
				gDPSetPrimColor(D_8005BB2C++, 0, 0, r, g, b, alpha);
				D_80053C88 = (s16)(D_80053C88 + 4);
				break;
			}
			case 21: { /* set RGB from next 3 bytes */
                s32 first_index;
                u32 second_index;
                s32 third_index;
                first_index = i + 1;
                r = text_ptr[(s16)first_index];
                second_index = first_index + 1U;
                g = text_ptr[(s16)second_index];
                third_index = (s32)second_index + 1;
                b = text_ptr[(s16)third_index];
                i = third_index;
				gDPPipeSync(D_8005BB2C++);
				gDPSetPrimColor(D_8005BB2C++, 0, 0, r, g, b, alpha);
				break;
			}
			case 22: { /* set alpha from next 1 byte */
				alpha = text_ptr[(s16)(i++ + 1)];
				gDPPipeSync(D_8005BB2C++);
				gDPSetPrimColor(D_8005BB2C++, 0, 0, r, g, b, alpha);
				break;
			}
			case 24:
                clip_x_min = text_ptr[(s16)(i++ + 1)] * 4;
                clip_y_min = text_ptr[(s16)(i++ + 1)] * 4;
                clip_x_max = text_ptr[(s16)(i++ + 1)] * 4;
                clip_y_max = text_ptr[(s16)(i++ + 1)] * 4;
                gDPSetScissor(D_8005BB2C++, G_SC_NON_INTERLACE, clip_x_min, clip_y_min, clip_x_max, clip_y_max);
                break;
			case 25: { /* call func, store in D_80053BE2 */
				D_80053BE2 = func_8000A43C_B03C((s8 *)&text_ptr[(s16)(i++ + 1)]);
				i = (s16)(i + 1);
				break;
			}
			case 23: { /* call func, store in D_80053BE4 */
				D_80053BE4 = func_8000A43C_B03C((s8 *)&text_ptr[(s16)(i++ + 1)]);
				i = (s16)(i + 1);
				break;
			}
			case 27: { /* call func, scale x */
				s32 val;
				val = func_8000A43C_B03C((s8 *)&text_ptr[(s16)(i++ + 1)]);
				D_80053BE8 = (f32)((f64)val * (1.0 / 1024.0));
				if ((f64)D_80053BE8 < 0.01) {
					D_80053BE8 = minimum;
				}
				i = (s16)(i + 1);
				break;
			}
			case 28: { /* call func, scale y */
				s32 val;
				val = func_8000A43C_B03C((s8 *)&text_ptr[(s16)(i++ + 1)]);
				D_80053BEC = (f32)((f64)val * (1.0 / 1024.0));
				if ((f64)D_80053BEC < 0.01) {
					D_80053BEC = minimum;
				}
				i = (s16)(i + 1);
				break;
			}
			case 7: case 8: case 9:
			case 11: case 12: case 13: case 14: case 15:
			case 16: case 17:
				break;
}
			continue;

		}
		} while (++i < (u16)D_80053BE0);
	}

	/* Restore render state */
	{
		gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);
		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
		gDPPipeSync(D_8005BB2C++);
	}

	D_80053BE0 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000B044_BC44.s")
#endif

s32 func_8000C670_D270(s16 arg0) {
	s32 temp;
	temp = (D_80052AD8 - D_80053C8C) - (arg0 * 4) + 8;
	if (temp >= 0x10) {
		return 1;
	}
	return 0;
}

void func_8000C6B8_D2B8(s32 arg0) {
	D_80053C98 = arg0;
}

s32 func_8000C6C4_D2C4(void) {
	return D_80053C98;
}

void func_8000C6D0_D2D0(s32 arg0) {
	s32 var_v0 = 0;
	s32 temp_t6;

	do {
		do {
			temp_t6 = (var_v0 = (var_v0 + 1) & 0xFF) ^ 0;
		} while (temp_t6 != 0x10);
	} while (0);
}

void *func_8000C6F4_D2F4(void)
{
	s32 i;
	void *ptr;
	for (i = 0; (i ^ 0) != 6; i = (i + 1) & 0xFF)
	{
		if (D_80054668[i] == 0)
		{
			ptr = (void *) (((char *) (&D_80054680)) + (i * 0xE58));
			D_80054668[i] = ptr;
			return ptr;
		}
	}
}

void func_8000C764_D364(s32 arg0) {
	D_80054668[(arg0 - (s32)&D_80054680) / 0xE58] = 0;
}

void func_8000C790_D390(Unk80157600 *arg0, s16 *arg1, s32 arg2) {
	s32 var_v0;
	Unk80157600 *elem;

	arg0->unk0 = 0;
	arg0->unk2 = 0;
	arg0->unk4 = 0;
	var_v0 = 1;
	arg0->unk8 = 0.0f;
	arg0->unkC = 0.0f;
	arg0->unk10 = 0.0f;
	if (arg2 != 1) {
		do {
			elem = (Unk80157600 *)((var_v0 << 6) + (s32)arg0);
			elem->unk8 = (f32)arg1[0];
			elem->unkC = (f32)arg1[1];
			elem->unk10 = (f32)arg1[2];
			elem->unk0 = 0;
			elem->unk2 = 0;
			elem->unk4 = 0;
			var_v0 = (var_v0 + 1) & 0xFF;
			arg1 += 8;
		} while (arg2 != var_v0);
	}
}

void func_8000C81C_D41C(s32 *arg0, s16 *arg1, s16 *arg2, Mtx *arg3) {
	union { s32 value; s32 words[1]; } cosX;
	union { s32 value; s32 words[1]; } sinX;
	s32 cosZ;
	s32 sinZ;
	s32 cosY;
	s32 sinY;
	u32 mask;
	s32 *src;

	D_80059C90[0].unkC = 0;
	D_80059C90[0].unk1C = 0;
	D_80059C90[1].unkC = 0;
	D_80059C90[1].unk1C = 0x10000;

	if (arg0 != NULL) {
		D_80059C90[1].unk10 = arg0[0];
		D_80059C90[1].unk14 = arg0[1];
		D_80059C90[1].unk18 = arg0[2];
	} else {
		D_80059C90[1].unk10 = 0;
		D_80059C90[1].unk14 = 0;
		D_80059C90[1].unk18 = 0;
	}

	if (arg1 != NULL) {
		cosX.words[0] = coss(arg1[0]);
		sinX.words[0] = sins(arg1[0]);
		cosZ = coss(arg1[2]);
		sinZ = sins(arg1[2]);
		cosY = coss(arg1[1]);
		sinY = sins(arg1[1]);

		D_80059C90[0].unk0 = ((cosX.value * cosY) >> 0xF) * 2;
		D_80059C90[0].unk4 = ((cosX.value * sinY) >> 0xF) * 2;
		D_80059C90[0].unk8 = -sinX.value * 2;

		D_80059C90[0].unk10 = (((-cosZ * sinY) >> 0xF) + ((((sinX.value * sinZ) >> 0xF) * cosY) >> 0xF)) * 2;
		D_80059C90[0].unk14 = (((cosZ * cosY) >> 0xF) + ((((sinX.value * sinZ) >> 0xF) * sinY) >> 0xF)) * 2;
		D_80059C90[0].unk18 = ((sinZ * cosX.value) >> 0xF) * 2;

		D_80059C90[1].unk0 = (((sinZ * sinY) >> 0xF) + ((((sinX.value * cosZ) >> 0xF) * cosY) >> 0xF)) * 2;
		D_80059C90[1].unk4 = (((-sinZ * cosY) >> 0xF) + ((((sinX.value * cosZ) >> 0xF) * sinY) >> 0xF)) * 2;
		D_80059C90[1].unk8 = ((cosX.value * cosZ) >> 0xF) * 2;
	} else {
		D_80059C90[0].unk0 = 0x10000;
		D_80059C90[0].unk10 = 0;
		D_80059C90[1].unk0 = 0;
		D_80059C90[0].unk4 = 0;
		D_80059C90[0].unk14 = 0x10000;
		D_80059C90[1].unk4 = 0;
		D_80059C90[0].unk8 = 0;
		D_80059C90[0].unk18 = 0;
		D_80059C90[1].unk8 = 0x10000;
	}

	if (arg2 != NULL) {
		D_80059C90[0].unk0 *= arg2[0];
		D_80059C90[0].unk4 *= arg2[0];
		D_80059C90[0].unk8 *= arg2[0];
		D_80059C90[0].unk0 >>= 8;
		D_80059C90[0].unk4 >>= 8;
		D_80059C90[0].unk8 >>= 8;
		D_80059C90[0].unk10 *= arg2[1];
		D_80059C90[0].unk14 *= arg2[1];
		D_80059C90[0].unk18 *= arg2[1];
		D_80059C90[0].unk10 >>= 8;
		D_80059C90[0].unk14 >>= 8;
		D_80059C90[0].unk18 >>= 8;
		D_80059C90[1].unk0 *= arg2[2];
		D_80059C90[1].unk4 *= arg2[2];
		D_80059C90[1].unk8 *= arg2[2];
		D_80059C90[1].unk0 >>= 8;
		D_80059C90[1].unk4 >>= 8;
		D_80059C90[1].unk8 >>= 8;
	}
	mask = 0xFFFF0000; arg0 = arg3->m[0]; src = D_80059C90_words; do { arg0[0] = (src[0] & mask) + ((src[1] & mask) >> 16);
		arg0 = &arg0[4];
		arg0[4] = (src[0] << 8 << 8) + (src[1] & 0xFFFFU);
		arg0[-3] = (src[2] & mask) + ((src[3] & mask) >> 16);
		arg0[5] = (src[2] << 8 << 8) + (src[3] & 0xFFFFU);
		arg0[-2] = (src[4] & mask) + ((src[5] & mask) >> 16);
		arg0[6] = (src[4] << 8 << 8) + (src[5] & 0xFFFFU);
		arg0[-1] = (src[6] & mask) + ((src[7] & mask) >> 16);
		arg0[7] = (src[6] << 8 << 8) + (src[7] & 0xFFFFU);
		src = &src[8];
	} while ((void *)src != &D_80059CD0);
}
void func_8000CC3C_D83C(AnimChannelState *arg0, s32 arg1)
{
	u8 var_s0;
	s16 sp48[3];
	s32 sp3C[3];
	Mtx *val;

	for (var_s0 = 1; arg1 != var_s0; var_s0++)
	{
		sp3C[0] = (arg0 + var_s0)->unk8 * 65536.0f;
		sp3C[1] = (arg0 + var_s0)->unkC * 65536.0f;
		sp3C[2] = (arg0 + var_s0)->unk10 * 65536.0f;
		sp48[0] = (arg0 + var_s0)->unk2 * 8;
		sp48[1] = (arg0 + var_s0)->unk4 * 8;
		sp48[2] = (arg0 + var_s0)->unk0 * 8;
		val = D_8005BB38;
		D_8005BB38 += 1;
		func_8000C81C_D41C(sp3C, sp48, 0, val);
	}
}

void func_8000CD54_D954(Unk8007F878_404 *arg0, AnimChannelState *arg1, u8 arg2) {
	typedef struct { s16 a; s16 b; s16 c; s16 d; s16 e; s16 f; } AnimFrame12;
	s32 temp_v0;

	if (arg1->unk14 > (temp_v0 = arg1->unk18)) {
		s32 start_frame = *(u16 *)((s32)arg0 + arg2 * 4 + 0xC);

		start_frame += temp_v0;
		*(AnimFrameData14 *)&arg1->unk24 = *(AnimFrameData14 *)((s32)arg0 + (start_frame & 0xFFFF) * 0xE + 0x50);
		arg1->unk1C = 0.0f;
		arg1->unk20 = (f32)(u32)arg1->unk30;
	}
}

s32 func_8000CDFC_D9FC(Unk8007F878_404 *arg0, AnimChannelState *arg1, s32 arg2, s32 arg3, s32 arg4)
{
	AnimChannelState *ch;
	s32 s1;
	arg0->unkE50 = arg3;
	func_800101F0_10DF0(((s32)arg0) + 8, (s32)(D_8F4960 + (arg3 & 0xFFFFFF)), 0x48);
	func_800101F0_10DF0(((s32)arg0) + 0x50, ((s32)(D_8F4960 + (arg3 & 0xFFFFFF))) + 0x48, arg0->unk8 * 0xE);
	s1 = 0;
	if (arg2 != 0)
	{
		do
		{
			ch = &arg1[s1];
			ch->unk18 = 0;
			ch->unk14 = *((u16 *)((((s32)arg0) + (s1 * 4)) + 0xE));
			func_8000CD54_D954(arg0, ch, s1 ^ 0);
			if (arg4 != 0)
			{
				ch->unk0 = ch->unk2A;
				ch->unk2 = ch->unk2C;
				ch->unk4 = ch->unk2E;
				ch->unk8 = ch->unk24;
				ch->unkC = ch->unk26;
				ch->unk10 = ch->unk28;
				ch->unk18 = ch->unk18 + 1;
				func_8000CD54_D954(arg0, ch, s1);
			}
			s1 = (s1 + 1) & 0xFF;
		} while (arg2 != s1);
	}
	return arg3;
}

#ifdef NON_MATCHING
void func_8000CF4C_DB4C(Unk8007F878_404 *arg0, AnimChannelState *arg1, s32 arg2, f32 arg3) {
    f32 targetRotation[3];
    f32 rotation[3];
    f32 rotationCopy[3];
    f32 z, x, y;
    f32 elapsed, duration, fraction;
    f32 scale;
    f64 units, degrees;
    s32 i;
    AnimChannelState *channel;

    i = 0;
    if (arg2 != 0) {
        scale = 4096.0f;
        units = 4096.0;
        if (scale) { }
        if (units) { }
        degrees = D_80037610_38210_R;
        do {
            channel = &arg1[i];
            if (channel->unk14 != 0) {
                elapsed = channel->unk1C;
                duration = channel->unk20;
                fraction = arg3 / (duration - elapsed);
                targetRotation[0] = ((f32)channel->unk2A * degrees) / units;
                targetRotation[1] = ((f32)channel->unk2C * degrees) / units;
                targetRotation[2] = ((f32)channel->unk2E * degrees) / units;
                rotation[0] = ((f32)channel->unk0 * degrees) / units;
                rotationCopy[0] = targetRotation[0];
                rotation[1] = ((f32)channel->unk2 * degrees) / units;
                rotationCopy[1] = targetRotation[1];
                rotationCopy[2] = targetRotation[2];
                rotation[2] = ((f32)channel->unk4 * degrees) / units;
                rotation[0] = ((rotationCopy[0] - rotation[0]) * fraction) + rotation[0];
                rotation[1] = ((rotationCopy[1] - rotation[1]) * fraction) + rotation[1];
                rotation[2] = ((rotationCopy[2] - rotation[2]) * fraction) + rotation[2];
                x = channel->unk8;
                y = channel->unkC;
                z = channel->unk10;
                channel->unk0 = (rotation[0] * scale) / degrees;
                channel->unk2 = (rotation[1] * scale) / degrees;
                channel->unk4 = (rotation[2] * scale) / degrees;
                channel->unk8 = (((f32)channel->unk24 - x) * fraction) + x;
                channel->unkC = (((f32)channel->unk26 - y) * fraction) + y;
                x = channel->unk28;
                channel->unk10 = ((x - z) * fraction) + z;
                channel->unk1C += arg3;
                if (channel->unk20 <= channel->unk1C) {
                    channel->unk8 = channel->unk24;
                    channel->unk10 = x;
                    channel->unk18++;
                    channel->unk0 = channel->unk2A;
                    channel->unk2 = channel->unk2C;
                    channel->unkC = channel->unk26;
                    channel->unk4 = channel->unk2E;
                    if (channel->unk14 == channel->unk18) {
                        channel->unk14 = 0;
                        channel->unk18 = 0;
                        if (i == 0) {
                            arg0->unkE50 = 0;
                        }
                    } else {
                        func_8000CD54_D954(arg0, channel, i);
                    }
                }
            }
            i = (i + 1) & 0xFF;
        } while (arg2 != i);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000CF4C_DB4C.s")
#endif

void func_8000D26C_DE6C(Unk8007F878_404 *arg0, void *arg1) {
	arg0->unkE50 = 0;
}

void func_8000D278_DE78(Unk8007F878_404 *arg0, AnimChannelState *arg1, s32 arg2, s32 arg3)
{
	int new_var;
	s32 var_s1;
	s32 var_s3;
	AnimChannelState *temp_s0;
	var_s3 = 0;
	if (arg2 != 0)
	{
		do
		{
			var_s1 = arg3;
			new_var = 0;
			if (arg3 != 0)
			{
				temp_s0 = &arg1[var_s3];
				if (arg0->unkE50 != 0)
				{
					loop_3:
					if (((f32) var_s1) < temp_s0->unk20)
					{
						temp_s0->unk20 = temp_s0->unk20 - ((f32) var_s1);
						var_s1 = 0;
					}
					else
					{
						var_s1 = (s32) (((f32) var_s1) - temp_s0->unk20);
						temp_s0->unk18 = temp_s0->unk18 + 1;
						if (temp_s0->unk18 == ((0, temp_s0))->unk14)
						{
							arg0->unkE50 = 0;
						}
						else
						{
							func_8000CD54_D954(arg0, temp_s0, var_s3);
						}
					}

					if ((var_s1 != new_var) && (arg0->unkE50 != 0))
					{
						goto loop_3;
					}
				}
			}
			var_s3 = (var_s3 + 1) & 0xFF;
		}
		while (arg2 != var_s3);
	}
}

void func_8000D384_DF84(AnimFrameData *arg0, AnimFrameData *arg1, f32 arg2, AnimFrameData *arg3) {
	s16 tmp;

	tmp = ((AnimFrameData14 *)arg0)->d;
	((AnimFrameData14 *)arg3)->d = (s16)(s32)((f32)tmp + (f32)(((AnimFrameData14 *)arg1)->d - tmp) * arg2);
	((AnimFrameData14 *)arg3)->e = (s16)(s32)((f32)((AnimFrameData14 *)arg0)->e + (f32)(((AnimFrameData14 *)arg1)->e - ((AnimFrameData14 *)arg0)->e) * arg2);
	((AnimFrameData14 *)arg3)->f = (s16)(s32)((f32)((AnimFrameData14 *)arg0)->f + (f32)(((AnimFrameData14 *)arg1)->f - ((AnimFrameData14 *)arg0)->f) * arg2);
	((AnimFrameData14 *)arg3)->a = (s16)(s32)((f32)((AnimFrameData14 *)arg0)->a + (f32)(((AnimFrameData14 *)arg1)->a - ((AnimFrameData14 *)arg0)->a) * arg2);
	((AnimFrameData14 *)arg3)->b = (s16)(s32)((f32)((AnimFrameData14 *)arg0)->b + (f32)(((AnimFrameData14 *)arg1)->b - ((AnimFrameData14 *)arg0)->b) * arg2);
	((AnimFrameData14 *)arg3)->c = (s16)(s32)((f32)((AnimFrameData14 *)arg0)->c + (f32)(((AnimFrameData14 *)arg1)->c - ((AnimFrameData14 *)arg0)->c) * arg2);
	((AnimFrameData14 *)arg3)->g = (u16)((f32)(u32)((AnimFrameData14 *)arg0)->g + (f32)(((AnimFrameData14 *)arg1)->g - ((AnimFrameData14 *)arg0)->g) * arg2);
}

void func_8000D588_E188(Unk8007F878_404 *arg0, Unk8007F878_404 *arg1, AnimChannelState *arg2, u8 arg3, f32 arg4)
{
	u16 frame0;
	u16 frame1;
	AnimFrameData14 sp44;
	AnimFrameData14 sp34;
	AnimFrameData14 sp24;

	frame0 = arg0->channels[arg3].frameOffset;
	frame0 += arg2->unk18;
	sp44 = arg0->frames[frame0];
	frame1 = arg1->channels[arg3].frameOffset;
	frame1 += arg2->unk18;
	sp34 = arg1->frames[frame1];

	func_8000D384_DF84((AnimFrameData *)&sp44, (AnimFrameData *)&sp34, arg4, (AnimFrameData *)&sp24);

	arg2->frame = sp24;
	arg2->unk1C = 0.0f;

	arg2->unk20 = (u32)sp24.g;

	arg2->unk32 = arg2->unk0;
	arg2->unk34 = arg2->unk2;
	arg2->unk36 = arg2->unk4;
	arg2->unk38 = arg2->unk8;
	arg2->unk3A = arg2->unkC;
	arg2->unk3C = arg2->unk10;
}

s32 func_8000D71C_E31C(Unk8007F878_404 *arg0, Unk8007F878_404 *arg1, AnimChannelState *arg2, s32 arg3, s32 arg4, s32 arg5, f32 arg6, s32 arg7)
{
	s32 var_s1;
	u8(*new_var2)[];
	s32 base;
	AnimChannelState *ch;
	int new_var;
	arg0->unkE50 = arg4;
	base = (arg4 & 0xFFFFFF) + ((s32)(&D_8F4960));
	func_800101F0_10DF0(((s32)arg0) + 8, base, 0x48);
	new_var2 = &D_8F4960;
	func_800101F0_10DF0(((s32)arg0) + 0x50, base + 0x48, arg0->unk8 * 0xE);
	arg1->unkE50 = arg5;
	base = (arg5 & 0xFFFFFF) + ((s32)new_var2);
	func_800101F0_10DF0(((s32)arg1) + 8, base, 0x48);
	func_800101F0_10DF0(((s32)arg1) + 0x50, base + 0x48, arg1->unk8 * 0xE);
	var_s1 = 0;
	if (arg3 != 0)
	{
		do
		{
			ch = &arg2[var_s1];
			ch->unk18 = 0;
			new_var = var_s1 ^ 0;
			ch->unk14 = *((u16 *)((((s32)arg0) + (var_s1 * 4)) + 0xE));
			func_8000D588_E188(arg0, arg1, ch, new_var, arg6);
			if (arg7 != 0)
			{
				ch->unk0 = ch->unk2A;
				ch->unk2 = ch->unk2C;
				ch->unk4 = ch->unk2E;
				ch->unk8 = (f32)ch->unk24;
				ch->unkC = (f32)ch->unk26;
				ch->unk10 = (f32)ch->unk28;
				ch->unk18 = ch->unk18 + 1;

				func_8000D588_E188(arg0, arg1, ch, var_s1, arg6);
			}
			var_s1 = (var_s1 + 1) & 0xFF;
		} while (arg3 != var_s1);
	}
	return arg4;
}

void func_8000D8DC_E4DC(Unk8007F878_404 *arg0, Unk8007F878_404 *arg1, AnimChannelState *arg2, s32 arg3, f32 arg4, f32 arg5) {
	s32 var_s0;
	AnimChannelState *ch;
	f32 duration;
	f32 elapsed;
	f32 t;

	var_s0 = 0;
	if (arg3 != 0) {
		do {
			ch = &arg2[var_s0];
			if (ch->unk14 != 0) {
				elapsed = ch->unk1C;
				duration = ch->unk20;
				t = arg5 / (duration - elapsed);

				ch->unk0 = (s16)(s32)(((f32)(ch->unk2A - ch->unk0)) * t + (f32)ch->unk0);
				ch->unk2 = (s16)(s32)(((f32)(ch->unk2C - ch->unk2)) * t + (f32)ch->unk2);
				ch->unk4 = (s16)(s32)(((f32)(ch->unk2E - ch->unk4)) * t + (f32)ch->unk4);
				ch->unk8 = ((f32)ch->unk24 - ch->unk8) * t + ch->unk8;
				ch->unkC = ((f32)ch->unk26 - ch->unkC) * t + ch->unkC;
				ch->unk10 = ((f32)ch->unk28 - ch->unk10) * t + ch->unk10;
				ch->unk1C += arg5;

				if (ch->unk20 <= ch->unk1C) {
					ch->unk8 = (f32)ch->unk24;
					ch->unkC = (f32)ch->unk26;
					ch->unk10 = (f32)ch->unk28;
					ch->unk0 = (s16)ch->unk2A;
					ch->unk2 = (s16)ch->unk2C;
					ch->unk4 = (s16)ch->unk2E;
					ch->unk18 = ch->unk18 + 1;
					if (ch->unk14 == ch->unk18) {
						ch->unk14 = 0;
						ch->unk18 = 0;
						if (var_s0 == 0) {
							arg1->unkE50 = 0;
							arg0->unkE50 = 0;
						}
					} else {
						func_8000D588_E188(arg0, arg1, ch, (u8)var_s0, arg4);
					}
				}
			}
			var_s0++;
			var_s0 &= 0xFF;
		} while (arg3 != var_s0);
	}
}

void func_8000DAFC_E6FC(Unk8007F878_404 *arg0, Unk8007F878_404 *arg1, AnimChannelState *arg2, s32 arg3, s32 arg4, f32 arg5)
{
	s32 var_s1;
	s32 var_s4;
	AnimChannelState *temp_s0;
	var_s4 = 0;
	if (arg3 != 0)
	{
		do
		{
			var_s1 = arg4;
			if (arg4 != 0)
			{
				temp_s0 = arg2 + var_s4;
				if (arg0->unkE50 != 0)
				{
					loop_4:
					if (((f32) var_s1) < temp_s0->unk20)
					{
						temp_s0->unk20 = temp_s0->unk20 - ((f32) var_s1);
						var_s1 = 0;
					}
					else
					{
						var_s1 = (s32) (((f32) var_s1) - temp_s0->unk20), temp_s0->unk18 = temp_s0->unk18 + 1;
						if (temp_s0->unk14 == temp_s0->unk18)
						{
							arg1->unkE50 = 0;
							arg0->unkE50 = 0;
						}
						else
						{
							func_8000D588_E188(arg0, arg1, temp_s0, var_s4, arg5);
						}
					}

					if ((var_s1 != 0) && (arg0->unkE50 != 0))
					{
						goto loop_4;
					}
				}
			}
			var_s4 = (var_s4 + 1) & 0xFF;
		}
		while (arg3 != var_s4);
	}
}
