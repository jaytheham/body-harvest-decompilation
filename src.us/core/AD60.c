#include <ultra64.h>
#include <stdarg.h>
#include "common.h"

s32 leomecha_bss_0004 = 0;
f32 D_80031404 = 1.0f;
s32 D_80031408 = 0;
f32 D_8003140C = 0.0f;
s32 D_80031410 = 0;
s32 D_80031414 = 0;
f32 D_80031418 = 1.8f;
f32 D_8003141C = 0.6f;
s32 D_80031420 = 0x7B;
u32 D_80031424[2] = {0, 0};
s32 D_8003142C = 1;
s32 D_80031430[7] = {2, 3, 4, 0x29, 0x4B, 0x4F, 0x14};
s32 D_8003144C = 0;

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

#ifdef NON_MATCHING
s32 func_8000A2B8_AEB8(u8 *arg0, s16 arg1) {
	u8 *ptr;
	s32 result;

	ptr = arg0 + arg1;
	result = 0;

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
					result += D_80031720_32320[(((*ptr & 0x7F) << 8) + ptr[1]) * 2 + 1];
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000A2B8_AEB8.s")
#endif

#ifdef NON_MATCHING
void func_8000A3DC_AFDC(s16 arg0, s8 *arg1) {
	s16 temp_v1;
	s32 temp_a3;
	s32 temp_t0;
	s8 var_a2;
	u8 var_v0;

	temp_v1 = arg0 * 2;
	temp_a3 = temp_v1 >> 8;
	temp_t0 = temp_v1 & 0xFF;
	var_v0 = temp_v1 & 0xFF;
	var_a2 = (s8)temp_a3;
	if (temp_t0 >= 0) {
		var_v0 = (temp_t0 + 1) & 0xFF;
	}
	if ((s8)temp_a3 >= 0) {
		var_a2 = (s8)temp_a3 + 1;
	}
	*arg1 = var_a2;
	arg1++;
	*(u8 *)arg1 = var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000A3DC_AFDC.s")
#endif

#ifdef NON_MATCHING
s16 func_8000A43C_B03C(s8 *arg0) {
	s8 var_v1;
	s32 temp_v0;
	s32 var_a0;

	var_v1 = *arg0;
	arg0++;
	temp_v0 = *(u8 *)arg0;
	if (var_v1 > 0) {
		var_v1 -= 1;
	}
	var_a0 = temp_v0;
	if (temp_v0 > 0) {
		temp_v0--;
		var_a0 = temp_v0 & 0xFF;
	}
	return (s16)((s16)((s16)(var_v1 << 8) + var_a0) / 2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000A43C_B03C.s")
#endif

#ifdef NON_MATCHING
void drawText(void *arg0, ...) {
	u8 *s3;
	s8 *s0;
	char *s2;
	s32 v0;
	s32 s1;
	s32 s4;
	s32 s5;
	s32 v1;
	s32 a0;
	s32 sp78;
	s32 sp64;
	s32 sp60;
	s32 sp5C;
	s32 sp58;

	s3 = (u8 *)arg0;
	v0 = *s3;
	s0 = (s8 *)D_80052BE0 + (u16)D_80053BE0;
	s2 = (char *)(&arg0 + 1);

	if (v0 != 0) {
		v0 &= 0xFF;
		while (1) {
			if (v0 == '%') {
				s3++;
				switch ((u8)(*s3 - '0')) {
				case 0:
					s3[-1] = '\0';
					*s3 = 1;
					s3++;
					break;
				case 1:
					s3[-1] = '\0';
					*s3 = 2;
					s3++;
					break;
				case 2:
					s3[-1] = '\0';
					*s3 = 3;
					s3++;
					break;
				case 3:
					s3[-1] = '\0';
					*s3 = 4;
					s3++;
					break;
				case 4:
					s3[-1] = '\0';
					*s3 = 5;
					s3++;
					break;
				case 5:
					s3[-1] = '\0';
					*s3 = 6;
					s3++;
					break;
				}
			} else {
				s3++;
			}
			v0 = *s3;
			if (v0 == 0) {
				break;
			}
		}
		s3 = (u8 *)arg0;
		v0 = *s3;
	}

	s1 = 10;
	s4 = -4;
	s5 = 10;
	if (v0 != 0) {
		v0 = *s3;
		while (1) {
			s32 a1;

			a1 = 6;

			if (v0 != '%') {
				*s0++ = (s8)v0;
				s3++;
				v0 = *s3;
			} else {
				v0 = s3[1];
				s3++;

				if (v0 >= '0' && v0 < ':') {
					v1 = v0;
					v0 = s3[1];
					a1 = v1 - '0';
					s3++;
					v1 = v0;
				} else {
					v1 = v0;
				}
				a0 = v1;

				if (a0 <= 0) {
					if (a0 == 0) {
						s3++;
						v0 = *s3;
						continue;
					}
					*s0++ = (s8)v0;
					v0 = *s3;
					continue;
				}

				if ((u32)(v1 - 0x40) >= 0x34) {
					*s0 = (s8)v0;
					s0++;
					s3++;
					v0 = *s3;
					continue;
				}

				switch (v1) {
		case 'c': {
			s2 = (char *)(((s32)s2 + 3) & s4);
			a0 = *(s32 *)s2;
			s2 += 4;
			*s0++ = (s8)a0;
			break;
		}
		case 'd': {
			s2 = (char *)(((s32)s2 + 3) & s4);
			v1 = *(s32 *)s2;
			s2 += 4;
			a0 = 1000000;
			if (v1 < 0) {
				*s0++ = '-';
				v1 = -v1;
			}
			v0 = v1 / a0;
			while (v0 % s1 == 0) {
				sp60 = a0 / s1;
				if (sp60 >= 2 && v1 / sp60 % s1 == 0) {
					a0 = sp60;
					v0 = v1 / a0;
				} else {
					break;
				}
			}
			if (v0 != 0) {
				while (1) {
					s0++;
					*(s0 - 1) = (s8)(((v1 / a0) % s1) + '0');
					a0 /= s1;
					if (a0 == 0) break;
				}
			}
			break;
		}
		case 'f': {
			sp78 = 1000000;
			v1 = 1;
			if ((s32)s2 & 1) {
				s2 += 7;
				a0 = (s32)s2 - 0x16;
			} else if ((s32)s2 & 2) {
				s2 += 0xA;
				a0 = (s32)s2 - 0x28;
			} else {
				s2 += 7;
				s2 = (char *)(((s32)s2 & -8) + 8);
				a0 = (s32)s2;
			}
			sp5C = a1;
			sp58 = v1;
			sp64 = 0;
			sp60 = 0;
			func_80004254_4E54((f32)*(double *)(a0 - 8), a1, &sp64, &sp60);
			a0 = sp64;
			v0 = sp78;
			v1 = sp58;
			a1 = sp5C;
			if (a0 < 0) {
				*s0++ = '-';
				a0 = -a0;
				sp64 = a0;
			}
			sp58 = a0 / v0;
			while (sp58 % s1 == 0) {
				sp60 = v0 / s1;
				if (sp60 >= 2 && a0 / sp60 % s1 == 0) {
					v0 = sp60;
					sp58 = a0 / v0;
				} else {
					break;
				}
			}
			if (sp58 != 0) {
				while (1) {
					s0++;
					*(s0 - 1) = (s8)(((a0 / v0) % s1) + '0');
					v0 /= s1;
					if (v0 == 0) break;
				}
			}
			*s0++ = '.';
			v0 = 1;
			if (a1 >= 2) {
				a0 = a1 - 1;
				sp58 = a0 & 3;
				if (sp58 != 0) {
					a0 = sp58 + 1;
					while (++v1 != a0) {
						v0 *= s1;
					}
					if (v1 != a1) {
						do {
							v0 *= s1;
							v1 += 4;
							v0 *= s1;
							v0 *= s1;
							v0 *= s1;
						} while (v1 != a1);
					}
				} else {
					do {
						v0 *= s1;
						v1 += 4;
						v0 *= s1;
						v0 *= s1;
						v0 *= s1;
					} while (v1 != a1);
				}
			}
			if (v0 != 0) {
				while (1) {
					s0++;
					*(s0 - 1) = (s8)(((sp60 / v0) % s5) + '0');
					v0 /= s1;
					if (v0 == 0) break;
				}
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
			s2 = (char *)(((s32)s2 + 3) & s4);
			v1 = *(s32 *)s2;
			s2 += 4;
			v0 = *(u8 *)v1;
			if (v0 == 0) {
				s3++;
				v0 = *s3;
				continue;
			}
			do {
				if (v0 != '%') {
					*s0++ = (s8)v0;
				} else {
					v1++;
					a0 = *(u8 *)v1;
					if ((u8)(a0 - '0') < 6) {
						switch ((u8)(a0 - '0')) {
						case 0: *s0++ = 1; break;
						case 1: *s0++ = 2; break;
						case 2: *s0++ = 3; break;
						case 3: *s0++ = 4; break;
						case 4: *s0++ = 5; break;
						case 5: *s0++ = 6; break;
						}
					} else {
						*s0++ = '%';
						v1--;
					}
				}
				v0 = *(u8 *)++v1;
			} while (v0 != 0);
			s3++;
			v0 = *s3;
			continue;
		}
		case '@': {
			s2 = (char *)(((s32)s2 + 3) & s4);
			a0 = *(s32 *)s2;
			s2 = (char *)(((s32)s2 + 7) & s4);
			v1 = *(s32 *)s2;
			s2 += 4;
			D_80053C80 = (s16)a0;
			D_80053C92 = (s16)((v1 * 20 + 24) >> 2);
			a0 = D_80053C80;
			if (a0 == 0x80) {
				*s0++ = (s8)s5;
				*s0++ = 0x1A;
				*s0++ = (s8)(s16)D_80053C92;
			} else if (a0 == 0x81) {
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
			break;
		}
		case 'C': {
			*s0++ = 0x15;
			s2 = (char *)(((s32)s2 + 3) & s4);
			a0 = *(s32 *)s2;
			s2 = (char *)(((s32)s2 + 7) & s4);
			*s0++ = (s8)a0;
			v1 = *(s32 *)s2;
			s2 = (char *)(((s32)s2 + 7) & s4);
			*s0++ = (s8)v1;
			a0 = *(s32 *)s2;
			s2 += 4;
			*s0++ = (s8)a0;
			break;
		}
		case 'a': {
			*s0++ = 0x16;
			s2 = (char *)(((s32)s2 + 3) & s4);
			a0 = *(s32 *)s2;
			s2 += 4;
			*s0++ = (s8)a0;
			break;
		}
		case 'W': {
			*s0++ = 0x18;
			s2 = (char *)(((s32)s2 + 3) & s4);
			a0 = *(s32 *)s2;
			s2 = (char *)(((s32)s2 + 7) & s4);
			*s0++ = (s8)(a0 >> 2);
			v1 = *(s32 *)s2;
			s2 = (char *)(((s32)s2 + 7) & s4);
			*s0++ = (s8)(v1 >> 2);
			a0 = *(s32 *)s2;
			s2 = (char *)(((s32)s2 + 7) & s4);
			*s0++ = (s8)(a0 >> 2);
			v1 = *(s32 *)s2;
			s2 += 4;
			*s0++ = (s8)(v1 >> 2);
			break;
		}
		case 'X': {
			*s0++ = 0x19;
			s2 = (char *)(((s32)s2 + 3) & s4);
			a0 = *(s32 *)s2;
			s2 += 4;
			func_8000A3DC_AFDC((s16)(a0 >> 2), s0);
			s0 += 2;
			break;
		}
		case 'Y': {
			*s0++ = 0x17;
			s2 = (char *)(((s32)s2 + 3) & s4);
			a0 = *(s32 *)s2;
			s2 += 4;
			func_8000A3DC_AFDC((s16)(a0 >> 2), s0);
			s0 += 2;
			break;
		}
		case 'H': {
			*s0++ = 0x1B;
			s2 = (char *)(((s32)s2 + 3) & s4) + 4;
			func_8000A3DC_AFDC(*(s16 *)(s2 - 2), s0);
			s0 += 2;
			break;
		}
		case 'V': {
			*s0++ = 0x1C;
			s2 = (char *)(((s32)s2 + 3) & s4) + 4;
			func_8000A3DC_AFDC(*(s16 *)(s2 - 2), s0);
			s0 += 2;
			break;
		}
		default:
			*s0 = (s8)v0;
			s0++;
			break;
		}

				s3++;
				v0 = *s3;
			}

			if (v0 == 0) {
				break;
			}
		}
	}

	*s0 = '\0';
	D_80053BE0 = (s16)((s8 *)s0 - (s8 *)D_80052BE0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/drawText.s")
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
    s16 clip_y_min, clip_x_min, clip_y_max, clip_x_max;
    s32 flag_78, flag_74;
    u8 alpha;
    s16 i;
    s16 x_cursor, y_cursor;
    s32 r, g, b;
    u8 *text_ptr;
    s32 char_raw;
    s16 char_idx;
    s16 x_pos, y_pos;
    s16 glyph_y_off;
    s8 *glyph_data;
    s16 glyph_advance;
    Gfx *dl;
    s16 tmp16;
	f32 xh_f, yh_f, xl_f, yl_f;
    s32 xh_i, yh_i, xl_i, yl_i;
    s32 dsdx, dtdy;

    alpha = 0xFF;

	D_80053C94 = 0x1E;
	D_80053C96 = (s16)(D_80068084 - 0x1E);

    x_cursor = 0;
    y_cursor = 0;
    r = 0xFF; g = 0xFF; b = 0xFF;
    clip_x_min = 0; clip_y_min = 0;
    flag_78 = 0; flag_74 = 0;

    if (gameplayMode == 0) {
        clip_x_max = 0x280; clip_y_max = 0x1E0;
    } else {
        clip_x_max = 0x140; clip_y_max = 0xF0;
    }

    /* Setup display list */
    gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
    gDPPipeSync(D_8005BB2C++);
    gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
    gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
    gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
    gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
    gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetTextureLUT(D_8005BB2C++, G_TT_IA16);

    /* Load shared TLUT palette */
    gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_801FEA10);
    gDPTileSync(D_8005BB2C++);
    gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x100, G_TX_LOADTILE, 0,
               G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
               G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(D_8005BB2C++);
    gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 15);
    gDPPipeSync(D_8005BB2C++);
    gDPTileSync(D_8005BB2C++);

    text_ptr = (u8 *)D_80052BE0;
    i = 0;

    if (D_80053BE0 <= 0) {
        goto epilogue;
    }

    do {
        s16 a3 = D_80053BE0;
        char_raw = (u8)text_ptr[i];
        if (char_raw & 0x80) {
            char_idx = (s16)((s16)char_raw + 0x130);
        } else {
            char_idx = (s16)((s16)char_raw + 0x130);
        }

        /* Space character */
        if (char_idx == 0x150) {
            x_cursor = (s16)(x_cursor + D_800319C1_325C1);
            i = (s16)(i + 1);
            continue;
        }

        /* Control codes */
        if (char_raw < 0x20) {
            s16 b0, b1, b2, b3;
            switch (char_raw) {
            case 1: /* gray */
                dl = D_8005BB2C; D_8005BB2C = dl + 1;
                dl->words.w0 = 0xFA000000; dl->words.w1 = 0x969696FF;
                r = 0x96; g = 0x96; b = 0x96;
                break;
            case 2: /* light gray */
                dl = D_8005BB2C; D_8005BB2C = dl + 1;
                dl->words.w0 = 0xFA000000; dl->words.w1 = 0xE6E6E6FF;
                r = 0xE6; g = 0xE6; b = 0xE6;
                break;
            case 3: /* green */
                dl = D_8005BB2C; D_8005BB2C = dl + 1;
                dl->words.w0 = 0xFA000000; dl->words.w1 = 0x00E600FF;
                r = 0; g = 0xE6; b = 0;
                break;
            case 4: /* red */
                dl = D_8005BB2C; D_8005BB2C = dl + 1;
                dl->words.w0 = 0xFA000000; dl->words.w1 = 0xE60000FF;
                r = 0xE6; g = 0; b = 0;
                break;
            case 5: /* yellow */
                dl = D_8005BB2C; D_8005BB2C = dl + 1;
                dl->words.w0 = 0xFA000000; dl->words.w1 = 0xDCDC00FF;
                r = 0xDC; g = 0xDC; b = 0;
                break;
            case 6: /* blue */
                dl = D_8005BB2C; D_8005BB2C = dl + 1;
                dl->words.w0 = 0xFA000000; dl->words.w1 = 0x0000DCFF;
                r = 0; g = 0; b = 0xDC;
                break;
            case 7: case 8: case 9:
            case 11: case 12: case 13: case 14: case 15:
            case 16: case 17:
                break; /* no-op */
            case 10: { /* newline + alignment */
                s16 width;
                s16 a1_idx;
                if (flag_78 != 0 || flag_74 != 0) {
                    a1_idx = (s16)(i + 1);
                    width = func_8000A2B8_AEB8(text_ptr, a1_idx);
                    if (flag_78 != 0) {
                        /* center */
                        s16 span = (s16)(D_80053C96 - D_80053C94);
                        s16 diff = (s16)(span - (s16)width);
                        if (diff < 0) {
                            tmp16 = (s16)((diff + 1) >> 1);
                        } else {
                            tmp16 = (s16)(diff >> 1);
                        }
                        x_cursor = (s16)(D_80053C94 + tmp16);
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
            case 18: /* reset scroll counter */
                D_80053C88 = 0;
                break;
            case 19: { /* color fade based on timer */
                s32 counter;
                gDPPipeSync(D_8005BB2C++);
                gDPTileSync(D_8005BB2C++);
                gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
                gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
                if (D_80053C98 != 0) {
                    counter = 0x10;
                } else {
                    counter = (D_80052AD8 - D_80053C8C) - D_80053C88;
                }
                if (counter < 0) {
                    r = D_80053BF1; g = D_80053BF3; b = D_80053BF5;
                    alpha = (u8)D_80053BF6;
                } else if (counter < 0x10) {
                    r = D_80053BF9; g = D_80053BFB; b = D_80053BFD;
                    alpha = (u8)D_80053BFE;
                } else {
                    /* interpolated fade */
                    f32 t;
                    s32 fade_alpha;
                    s32 r0, g0, b0, a0_val;
                    s32 r1, g1, b1, a1_val;
                    t = ((f32)(0xFF - (counter << 4)) / 255.0f) * D_80037600_38200;
                    r0 = D_80053BF9; g0 = D_80053BFB; b0 = D_80053BFD; a0_val = (s32)(u8)D_80053BFE;
                    r1 = D_80053BF1; g1 = D_80053BF3; b1 = D_80053BF5; a1_val = (s32)(u8)D_80053BF6;
                    r = (s32)((r0 - (s16)D_80053BF2) * t + r0) & 0xFF;
                    g = (s32)((g0 - (s16)D_80053BF2) * t + g0) & 0xFF;
                    b = (s32)((b0 - (s16)D_80053BF2) * t + b0) & 0xFF;
                    alpha = (u8)a0_val;
                }
                dl = D_8005BB2C; D_8005BB2C = dl + 1;
                dl->words.w0 = 0xFA000000;
                dl->words.w1 = ((r & 0xFF) << 24) | ((g & 0xFF) << 16) | ((b & 0xFF) << 8) | alpha;
                D_80053C88 = (s16)(D_80053C88 + 4);
                break;
            }
            case 20: { /* set x_cursor and y_cursor from next 2 bytes */
                b0 = (s16)(s8)(u8)text_ptr[i + 1];
                if ((u8)text_ptr[i + 1] & 0x80) {
                    flag_78 = 0;
                }
                x_cursor = (s16)(b0 * 4);
                b1 = (s16)(s8)(u8)text_ptr[i + 2];
                y_cursor = (s16)(b1 * 4);
                i = (s16)(i + 2);
                break;
            }
            case 21: { /* set RGB from next 3 bytes */
                r = (u8)text_ptr[i + 1];
                g = (u8)text_ptr[i + 2];
                b = (u8)text_ptr[i + 3];
                gDPPipeSync(D_8005BB2C++);
                dl = D_8005BB2C; D_8005BB2C = dl + 1;
                dl->words.w0 = 0xFA000000;
                dl->words.w1 = ((r & 0xFF) << 24) | ((g & 0xFF) << 16) | ((b & 0xFF) << 8) | alpha;
                i = (s16)(i + 3);
                break;
            }
            case 22: { /* set alpha from next 1 byte */
                alpha = (u8)text_ptr[i + 1];
                gDPPipeSync(D_8005BB2C++);
                dl = D_8005BB2C; D_8005BB2C = dl + 1;
                dl->words.w0 = 0xFA000000;
                dl->words.w1 = ((r & 0xFF) << 24) | ((g & 0xFF) << 16) | ((b & 0xFF) << 8) | alpha;
                i = (s16)(i + 1);
                break;
            }
            case 23: { /* call func, store in D_80053BE4 */
                D_80053BE4 = func_8000A43C_B03C((s8 *)text_ptr + (s16)(i + 1));
                i = (s16)(i + 1);
                break;
            }
            case 24: { /* set scissor rect from next 4 bytes */
                s32 sx0, sy0, sx1, sy1;
                s32 sxh_i, syh_i, sxl_i, syl_i;
                sx0 = (u8)text_ptr[i + 1];
                sy0 = (u8)text_ptr[i + 2];
                sx1 = (u8)text_ptr[i + 3];
                sy1 = (u8)text_ptr[i + 4];
                sxh_i = sx0 << 2;
                syh_i = sy0 << 2;
                sxl_i = sx1 << 2;
                syl_i = sy1 << 2;
                dl = D_8005BB2C; D_8005BB2C = dl + 1;
                dl->words.w0 = 0xED000000 | ((sxh_i & 0xFFF) << 12) | (syh_i & 0xFFF);
                dl->words.w1 = ((sxl_i & 0xFFF) << 12) | (syl_i & 0xFFF);
                clip_x_min = (s16)(sx0 * 4);
                clip_y_min = (s16)(sy0 * 4);
                clip_x_max = (s16)(sx1 * 4);
                clip_y_max = (s16)(sy1 * 4);
                i = (s16)(i + 4);
                break;
            }
            case 25: { /* call func, store in D_80053BE2 */
                D_80053BE2 = func_8000A43C_B03C((s8 *)text_ptr + (s16)(i + 1));
                i = (s16)(i + 1);
                break;
            }
			case 26: { /* newline y-scroll + center-align */
				s16 width;
				s16 span;
				s16 diff;

				y_cursor = (s16)((s8)(u8)text_ptr[i + 1] * 4);
				flag_78 = 1;
                i = (s16)(i + 1);

				width = func_8000A2B8_AEB8(text_ptr, (s16)(i + 1));
				span = (s16)(D_80053C96 - D_80053C94);
				diff = (s16)(span - width);
				if (diff < 0) {
					tmp16 = (s16)((diff + 1) >> 1);
				} else {
					tmp16 = (s16)(diff >> 1);
				}
				x_cursor = (s16)(D_80053C94 + tmp16);
                break;
            }
            case 27: { /* call func, scale x */
                s32 val;
                val = func_8000A43C_B03C((s8 *)text_ptr + (s16)(i + 1));
                D_80053BE8 = (f32)((f64)val * (1.0 / 32.0));
                if ((f64)D_80053BE8 < D_80037580_38180) {
                    D_80053BE8 = D_80037578_38178;
                }
                i = (s16)(i + 1);
                break;
            }
            case 28: { /* call func, scale y */
                s32 val;
                val = func_8000A43C_B03C((s8 *)text_ptr + (s16)(i + 1));
                D_80053BEC = (f32)((f64)val * (1.0 / 32.0));
                if ((f64)D_80053BEC < D_80037580_38180) {
                    D_80053BEC = D_80037578_38178;
                }
                i = (s16)(i + 1);
                break;
            }
            case 29: { /* newline y-scroll + right-align */
                s16 width;
                y_cursor = (s16)((s8)(u8)text_ptr[i + 1] * 4);
                flag_74 = 1;
                i = (s16)(i + 1);
                width = func_8000A2B8_AEB8(text_ptr, (s16)(i + 1));
                x_cursor = (s16)(D_80053C96 - (s16)width - D_800319C1_325C1);
                break;
            }
            }
            i = (s16)(i + 1);
            continue;
        }

        /* Printable character */
        if (char_raw >= 0xC0) {
            char_idx = (s16)(D_800314D0_320D0[char_raw] + 0x110);
        }

        glyph_data = (s8 *)&D_80031720_32320[char_idx * 2];
        glyph_y_off = glyph_data[0];
        glyph_advance = glyph_data[1];

        x_pos = (s16)(x_cursor + D_80053BE2);
        y_pos = (s16)(y_cursor + glyph_y_off + D_80053BE4);

        /* Bounds check */
        if ((s16)(x_pos + 16) < clip_x_min || clip_x_max < x_pos ||
            (s16)(y_pos + 16) < clip_y_min || clip_y_max < y_pos) {
            x_cursor = (s16)(x_cursor + glyph_advance);
            i = (s16)(i + 1);
            continue;
        }

        /* Render character */
        gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1,
                           D_801F1210 + char_idx * 128);
        gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0,
                   G_TX_LOADTILE, 0,
                   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
                   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(D_8005BB2C++);
        gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
        gDPPipeSync(D_8005BB2C++);
        gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_4b, 1, 0,
                   G_TX_RENDERTILE, 0,
                   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
                   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 60, 60);

        /* Compute texture rectangle coordinates (10.2 fixed point) */
        xh_f = ((f32)(x_cursor + 16) * D_80053BE8 + (f32)D_80053BE2) * 4.0f;
        yh_f = ((f32)(y_pos + 16)) * D_80053BEC * 4.0f;
        xl_f = ((f32)x_cursor * D_80053BE8 + (f32)D_80053BE2) * 4.0f;
        yl_f = (f32)y_pos * D_80053BEC * 4.0f;
        xh_i = (s32)xh_f;
        yh_i = (s32)yh_f;
        xl_i = (s32)xl_f;
        yl_i = (s32)yl_f;
        dsdx = (s32)(1024.0f / D_80053BE8);
        dtdy = (s32)(1024.0f / D_80053BEC);

        dl = D_8005BB2C; D_8005BB2C = dl + 1;
        dl->words.w0 = 0xE4000000 | ((xh_i & 0xFFF) << 12) | (yh_i & 0xFFF);
        dl->words.w1 = (0 << 24) | ((xl_i & 0xFFF) << 12) | (yl_i & 0xFFF);

        dl = D_8005BB2C; D_8005BB2C = dl + 1;
        dl->words.w0 = 0xB4000000; /* gsDPHalf1(s=0, t=0) */
        dl->words.w1 = 0;

        dl = D_8005BB2C; D_8005BB2C = dl + 1;
        dl->words.w0 = 0xB3000000; /* gsDPHalf2 */
        dl->words.w1 = ((dsdx & 0xFFFF) << 16) | (dtdy & 0xFFFF);

        gDPPipeSync(D_8005BB2C++);
        gDPTileSync(D_8005BB2C++);

        gDPSetTextureLUT(D_8005BB2C++, G_TT_IA16);
        gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);

        dl = D_8005BB2C; D_8005BB2C = dl + 1;
        dl->words.w0 = 0xFA000000;
        dl->words.w1 = ((r & 0xFF) << 24) | ((g & 0xFF) << 16) | ((b & 0xFF) << 8) | alpha;

        x_cursor = (s16)(x_cursor + glyph_advance);
        i = (s16)(i + 1);
        a3 = D_80053BE0;
        continue;
    } while (i < D_80053BE0);

epilogue:
    /* Restore render state */
    {
        Gfx *v0;
        v0 = D_8005BB2C; D_8005BB2C = v0 + 1;
        v0->words.w0 = 0xBA000E02; v0->words.w1 = 0x0000C000; /* gDPSetTextureLUT(G_TT_IA16) */
        v0 = D_8005BB2C; D_8005BB2C = v0 + 1;
        v0->words.w0 = 0xBB000001; v0->words.w1 = 0x80008000; /* gSPTexture ON */
        v0 = D_8005BB2C; D_8005BB2C = v0 + 1;
        v0->words.w0 = 0xB9000031 + (0xD << 4); /* placeholder for othermode_l restore */
        v0->words.w1 = 0x00552048; /* gDPSetRenderMode(G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2) */
        v0 = D_8005BB2C; D_8005BB2C = v0 + 1;
        v0->words.w0 = 0xFCFFFFFF; v0->words.w1 = 0xFFFE793C; /* gDPSetCombineMode(G_CC_SHADE) */
        v0 = D_8005BB2C; D_8005BB2C = v0 + 1;
        v0->words.w0 = 0xE7000000; v0->words.w1 = 0; /* gDPPipeSync */
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

/* busy-wait loop: counts 0..0x10 with 8-bit masking */
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

#ifdef NON_MATCHING
void func_8000C81C_D41C(s32 *arg0, s16 *arg1, s16 *arg2, s32 *arg3) {
	extern s32 D_80059C90[16];
	s32 sp3C, sp38, sp34, sp30, sp2C;
	s32 temp1, temp2;
	s32 i;
	s32 *src;
	s32 *dst;

	D_80059C90[3] = 0;
	D_80059C90[7] = 0;
	D_80059C90[11] = 0;
	D_80059C90[15] = 0x10000;

	if (arg0 != NULL) {
		D_80059C90[12] = arg0[0];
		D_80059C90[13] = arg0[1];
		D_80059C90[14] = arg0[2];
	} else {
		D_80059C90[12] = 0;
		D_80059C90[13] = 0;
		D_80059C90[14] = 0;
	}

	if (arg1 != NULL) {
		sp3C = coss(arg1[0]);
		sp38 = sins(arg1[0]);
		sp34 = coss(arg1[2]);
		sp30 = sins(arg1[2]);
		sp2C = coss(arg1[1]);
		temp1 = sins(arg1[1]);

		D_80059C90[2] = -sp38 * 2;
		D_80059C90[0] = ((sp3C * sp2C) >> 15) * 2;
		D_80059C90[1] = ((sp3C * temp1) >> 15) * 2;

		temp2 = (sp38 * sp30) >> 15;
		D_80059C90[4] = (((-sp34 * temp1) >> 15) + ((temp2 * sp2C) >> 15)) * 2;
		D_80059C90[5] = (((sp34 * sp2C) >> 15) + ((temp2 * temp1) >> 15)) * 2;
		D_80059C90[6] = ((sp30 * sp3C) >> 15) * 2;

		temp2 = (sp38 * sp34) >> 15;
		D_80059C90[8] = (((sp30 * temp1) >> 15) + ((temp2 * sp2C) >> 15)) * 2;
		D_80059C90[9] = (((-sp30 * sp2C) >> 15) + ((temp2 * temp1) >> 15)) * 2;
		D_80059C90[10] = ((sp3C * sp34) >> 15) * 2;
	} else {
		D_80059C90[0] = 0x10000;
		D_80059C90[4] = 0;
		D_80059C90[8] = 0;
		D_80059C90[1] = 0;
		D_80059C90[5] = 0x10000;
		D_80059C90[9] = 0;
		D_80059C90[2] = 0;
		D_80059C90[6] = 0;
		D_80059C90[10] = 0x10000;
	}

	if (arg2 != NULL) {
		D_80059C90[0] = (D_80059C90[0] * arg2[0]) >> 8;
		D_80059C90[1] = (D_80059C90[1] * arg2[0]) >> 8;
		D_80059C90[2] = (D_80059C90[2] * arg2[0]) >> 8;
		D_80059C90[4] = (D_80059C90[4] * arg2[1]) >> 8;
		D_80059C90[5] = (D_80059C90[5] * arg2[1]) >> 8;
		D_80059C90[6] = (D_80059C90[6] * arg2[1]) >> 8;
		D_80059C90[8] = (D_80059C90[8] * arg2[2]) >> 8;
		D_80059C90[9] = (D_80059C90[9] * arg2[2]) >> 8;
		D_80059C90[10] = (D_80059C90[10] * arg2[2]) >> 8;
	}

	src = D_80059C90;
	dst = arg3;
	do {
		dst[0] = ((src[1] & 0xFFFF0000) >> 16) + (src[0] & 0xFFFF0000);
		dst[4] = (src[0] << 16) + (src[1] & 0xFFFF);
		dst[1] = ((src[3] & 0xFFFF0000) >> 16) + (src[2] & 0xFFFF0000);
		dst[5] = (src[2] << 16) + (src[3] & 0xFFFF);
		dst[2] = ((src[5] & 0xFFFF0000) >> 16) + (src[4] & 0xFFFF0000);
		dst[6] = (src[4] << 16) + (src[5] & 0xFFFF);
		dst[3] = ((src[7] & 0xFFFF0000) >> 16) + (src[6] & 0xFFFF0000);
		dst[7] = (src[6] << 16) + (src[7] & 0xFFFF);
		src += 8;
		dst += 8;
	} while (src != (s32*)&D_80059CD0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000C81C_D41C.s")
#endif

void func_8000CC3C_D83C(AnimChannelState *arg0, s32 arg1)
{
  u8 var_s0;
  s16 sp48[3];
  s32 sp3C[3];
  s32 val;

  for (var_s0 = 1; arg1 != var_s0; var_s0++)
	{
	  sp3C[0] = (arg0 + var_s0)->unk8 * 65536.0f;
	  sp3C[1] = (arg0 + var_s0)->unkC * 65536.0f;
	  sp3C[2] = (arg0 + var_s0)->unk10 * 65536.0f;
	  sp48[0] = (arg0 + var_s0)->unk2 * 8;
	  sp48[1] = (arg0 + var_s0)->unk4 * 8;
	  sp48[2] = (arg0 + var_s0)->unk0 * 8;
		val = D_8005BB38;
		D_8005BB38 += 0x40;
	  func_8000C81C_D41C(sp3C, sp48, 0, val);
  }
}

#ifdef NON_MATCHING
void func_8000CD54_D954(void *arg0, AnimChannelState *arg1, u8 arg2) {
	typedef struct { s16 a; s16 b; s16 c; s16 d; s16 e; s16 f; } AnimFrame12;
	s32 temp_v0;
	u16 temp_at;
	s32 base;

	temp_v0 = arg1->unk18;
	if (arg1->unk14 > temp_v0) {
		{
			u16 start_frame = *(u16 *)((s32)arg0 + arg2 * 4 + 0xC);
			base = (s32)arg0 + (((start_frame + temp_v0) & 0xFFFF) * 0xE);
		}
		*(AnimFrame12 *)&arg1->unk24 = *(AnimFrame12 *)((char *)base + 0x50);
		temp_at = *(u16 *)((char *)base + 0x5C);
		arg1->unk1C = 0.0f;
		arg1->unk30 = temp_at;
		arg1->unk20 = (f32)(u32)(temp_at & 0xFFFF);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000CD54_D954.s")
#endif

#ifdef NON_MATCHING
s32 func_8000CDFC_D9FC(Unk8007F878_404 *arg0, AnimChannelState *arg1, s32 arg2, s32 arg3, s32 arg4)
{
  AnimChannelState *ch;
  s32 s1;
  arg0->unkE50 = arg3;
  func_800101F0_10DF0(((s32) arg0) + 8, (s32) (D_8F4960 + (arg3 & 0xFFFFFF)), 0x48);
  func_800101F0_10DF0(((s32) arg0) + 0x50, ((s32) (D_8F4960 + (arg3 & 0xFFFFFF))) + 0x48, arg0->unk8 * 0xE);
  s1 = 0;
  if (arg2 != 0)
  {
	do
	{
	  ch = &arg1[s1];
	  ch->unk18 = 0;
	  ch->unk14 = *((u16 *) ((((s32) arg0) + (s1 * 4)) + 0xE));
	  func_8000CD54_D954(arg0, ch, s1 ^ 0);
	  if (arg4 != 0)
	  {
		ch->unk8 = (f32) ch->unk24;
		ch->unk18 = ch->unk18 + 1;
		ch->unkC = (f32) ch->unk26;
		ch->unk0 = ch->unk2A;
		ch->unk2 = ch->unk2C;
		ch->unk4 = ch->unk2E;
		ch->unk10 = (f32) ch->unk28;
		func_8000CD54_D954(arg0, ch, s1);
	  }
	  s1 = (s1 + 1) & 0xFF;
	}
	while (arg2 != s1);
  }
  return arg3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000CDFC_D9FC.s")
#endif

#ifdef NON_MATCHING
// Score: ~16442. Issue: arg3 spills to stack instead of staying in $f26.
// Current uses 6 double FP regs (f20,f22,f24,f26,f28,f30) vs target's 4 (f20,f22,f24,f26).
// All intermediate temp_f* variables seem necessary for matching instruction order.
void func_8000CF4C_DB4C(Unk8007F878_404 *arg0, AnimChannelState *arg1, s32 arg2, f32 arg3) {
	f32 sp70;
	f32 sp6C;
	f32 sp68;
	f32 sp64;
	f32 sp60;
	f32 sp5C;
	f32 sp50;
	f32 sp4C;
	f32 sp48;
	f32 temp_f0;
	f32 temp_f10;
	f32 temp_f10_2;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f18;
	f32 temp_f2;
	f32 temp_f2_2;
	f32 temp_f4;
	f32 temp_f6;
	f32 temp_f6_2;
	f32 temp_f8;
	f32 temp_f8_2;
	f64 temp_f20;
	s32 temp_t6;
	s32 var_s0;
	AnimChannelState *temp_a1;

	var_s0 = 0;
	if (arg2 != 0) {
		temp_f20 = D_80037610_38210;
		do {
			temp_a1 = &arg1[var_s0];
			if (temp_a1->unk14 != 0) {
				temp_f14 = temp_a1->unk1C;
				temp_f18 = arg3 / (temp_a1->unk20 - temp_f14);
				temp_f10 = (f32)(((f64)(f32)temp_a1->unk2A * temp_f20) / 4096.0);
				sp68 = temp_f10;
				temp_f6 = (f32)(((f64)(f32)temp_a1->unk2C * temp_f20) / 4096.0);
				sp6C = temp_f6;
				temp_f8 = (f32)(((f64)(f32)temp_a1->unk2E * temp_f20) / 4096.0);
				sp70 = temp_f8;
				temp_f4 = (f32)(((f64)(f32)temp_a1->unk0 * temp_f20) / 4096.0);
				sp5C = temp_f4;
				sp48 = temp_f10;
				temp_f10_2 = (f32)(((f64)(f32)temp_a1->unk2 * temp_f20) / 4096.0);
				sp60 = temp_f10_2;
				sp4C = temp_f6;
				sp50 = temp_f8;
				temp_f8_2 = ((sp48 - temp_f4) * temp_f18) + temp_f4;
				sp5C = temp_f8_2;
				temp_f6_2 = (f32)(((f64)(f32)temp_a1->unk4 * temp_f20) / 4096.0);
				sp60 = ((sp4C - temp_f10_2) * temp_f18) + temp_f10_2;
				sp64 = temp_f6_2;
				sp64 = ((sp50 - temp_f6_2) * temp_f18) + temp_f6_2;
				temp_f2 = temp_a1->unk8;
				temp_f12 = temp_a1->unkC;
				temp_f0 = temp_a1->unk10;
				temp_a1->unk0 = (s16)(s32)((f64)(temp_f8_2 * 4096.0f) / temp_f20);
				temp_a1->unk2 = (s16)(s32)((f64)(sp60 * 4096.0f) / temp_f20);
				temp_a1->unk4 = (s16)(s32)((f64)(sp64 * 4096.0f) / temp_f20);
				temp_a1->unk8 = (((f32)temp_a1->unk24 - temp_f2) * temp_f18) + temp_f2;
				temp_f2_2 = (f32)temp_a1->unk28;
				temp_a1->unkC = (((f32)temp_a1->unk26 - temp_f12) * temp_f18) + temp_f12;
				temp_a1->unk1C = temp_a1->unk1C + arg3;
				temp_a1->unk10 = ((temp_f2_2 - temp_f0) * temp_f18) + temp_f0;
				if (temp_a1->unk20 <= temp_a1->unk1C) {
					temp_t6 = temp_a1->unk18 + 1;
					temp_a1->unk8 = (f32)temp_a1->unk24;
					temp_a1->unk10 = temp_f2_2;
					temp_a1->unk18 = temp_t6;
					temp_a1->unk0 = (s16)temp_a1->unk2A;
					temp_a1->unk2 = (s16)temp_a1->unk2C;
					temp_a1->unkC = (f32)temp_a1->unk26;
					temp_a1->unk4 = (s16)temp_a1->unk2E;
					if (temp_t6 == temp_a1->unk14) {
						temp_a1->unk14 = 0;
						temp_a1->unk18 = 0;
						if (var_s0 == 0) {
							arg0->unkE50 = 0;
						}
					} else {
						func_8000CD54_D954(arg0, temp_a1, var_s0 & 0xFF);
					}
				}
			}
			var_s0 = (var_s0 + 1) & 0xFF;
		} while (arg2 != var_s0);
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

#ifdef NON_MATCHING
void func_8000D588_E188(Unk8007F878_404 *arg0, Unk8007F878_404 *arg1, AnimChannelState *arg2, u8 arg3, f32 arg4) {
	typedef struct { s16 a; s16 b; s16 c; s16 d; s16 e; s16 f; } AnimFrame12;
	s32 base;
	AnimFrameData sp44;
	AnimFrameData sp34;
	AnimFrameData sp24;

	base = (s32)arg0 + (((*(u16 *)((s32)arg0 + arg3 * 4 + 0xC) + arg2->unk18) & 0xFFFF) * 0xE);
	*(AnimFrame12 *)&sp44 = *(AnimFrame12 *)((char *)base + 0x50);
	sp44.unkC = *(u16 *)((char *)base + 0x5C);

	base = (s32)arg1 + (((*(u16 *)((s32)arg1 + arg3 * 4 + 0xC) + arg2->unk18) & 0xFFFF) * 0xE);
	*(AnimFrame12 *)&sp34 = *(AnimFrame12 *)((char *)base + 0x50);
	sp34.unkC = *(u16 *)((char *)base + 0x5C);

	func_8000D384_DF84(&sp44, &sp34, *(s32 *)&arg4, &sp24);

	*(AnimFrame12 *)&arg2->unk24 = *(AnimFrame12 *)&sp24;
	arg2->unk1C = 0.0f;
	arg2->unk30 = sp24.unkC;

	arg2->unk20 = (f32)(u32)sp24.unkC;

	arg2->unk32 = arg2->unk0;
	arg2->unk34 = arg2->unk2;
	arg2->unk36 = arg2->unk4;
	arg2->unk38 = (s16)arg2->unk8;
	arg2->unk3A = (s16)arg2->unkC;
	arg2->unk3C = (s16)arg2->unk10;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000D588_E188.s")
#endif

#ifdef NON_MATCHING
s32 func_8000D71C_E31C(Unk8007F878_404 *arg0, Unk8007F878_404 *arg1, AnimChannelState *arg2, s32 arg3, s32 arg4, s32 arg5, f32 arg6, s32 arg7) {
	AnimChannelState *ch;
	s32 var_s1;

	arg0->unkE50 = arg4;
	func_800101F0_10DF0(((s32)arg0) + 8, (s32)(void *)((arg4 & 0xFFFFFF) + (s32)&D_8F4960), 0x48);
	func_800101F0_10DF0(((s32)arg0) + 0x50, (s32)(void *)((arg4 & 0xFFFFFF) + (s32)&D_8F4960 + 0x48), arg0->unk8 * 0xE);

	arg1->unkE50 = arg5;
	func_800101F0_10DF0(((s32)arg1) + 8, (s32)(void *)((arg5 & 0xFFFFFF) + (s32)&D_8F4960), 0x48);
	func_800101F0_10DF0(((s32)arg1) + 0x50, (s32)(void *)((arg5 & 0xFFFFFF) + (s32)&D_8F4960 + 0x48), arg1->unk8 * 0xE);

	var_s1 = 0;
	if (arg3 != 0) {
		do {
			ch = &arg2[var_s1];
			ch->unk18 = 0;
			ch->unk14 = *((u16 *)(((s32)arg0) + (var_s1 * 4) + 0xE));
			func_8000D588_E188(arg0, arg1, ch, var_s1, arg6);
			if (arg7 != 0) {
				ch->unk8 = (f32)ch->unk24;
				ch->unk18 = ch->unk18 + 1;
				ch->unk0 = ch->unk2A;
				ch->unkC = (f32)ch->unk26;
				ch->unk2 = ch->unk2C;
				ch->unk4 = ch->unk2E;
				ch->unk10 = (f32)ch->unk28;
				func_8000D588_E188(arg0, arg1, ch, var_s1, arg6);
			}
			var_s1 = (var_s1 + 1) & 0xFF;
		} while (arg3 != var_s1);
	}
	return arg4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000D71C_E31C.s")
#endif

#ifdef NON_MATCHING
void func_8000D8DC_E4DC(Unk8007F878_404 *arg0, Unk8007F878_404 *arg1, AnimChannelState *arg2, s32 arg3, f32 arg4, f32 arg5) {
	s32 var_s0;
	AnimChannelState *ch;
	f32 t;

	var_s0 = 0;
	if (arg3 != 0) {
		do {
			ch = &arg2[var_s0];
			if (ch->unk14 != 0) {
				t = arg5 / (ch->unk20 - ch->unk1C);

				ch->unk0 = (s16)(s32)(((f32)(ch->unk2A - ch->unk0)) * t + (f32)ch->unk0);
				ch->unk2 = (s16)(s32)(((f32)(ch->unk2C - ch->unk2)) * t + (f32)ch->unk2);
				ch->unk4 = (s16)(s32)(((f32)(ch->unk2E - ch->unk4)) * t + (f32)ch->unk4);
				ch->unk8 = ((f32)ch->unk24 - ch->unk8) * t + ch->unk8;
				ch->unkC = ((f32)ch->unk26 - ch->unkC) * t + ch->unkC;
				ch->unk10 = ((f32)ch->unk28 - ch->unk10) * t + ch->unk10;
				ch->unk1C = ch->unk1C + arg5;

				if (ch->unk20 <= ch->unk1C) {
					ch->unkC = (f32)ch->unk26;
					ch->unk10 = (f32)ch->unk28;
					ch->unk18++;
					ch->unk8 = (f32)ch->unk24;
					ch->unk0 = (s16)ch->unk2A;
					ch->unk2 = (s16)ch->unk2C;
					ch->unk4 = (s16)ch->unk2E;
					if (ch->unk18 == ch->unk14) {
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
			var_s0 = (var_s0 + 1) & 0xFF;
		} while (arg3 != var_s0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000D8DC_E4DC.s")
#endif

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
