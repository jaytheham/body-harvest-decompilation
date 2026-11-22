#include <ultra64.h>
#include <stdarg.h>
#include "common.h"
#include "core/loader.h"
#include "core/1050.h"

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

/* Glyph vertical offsets and advances. */
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

void drawText(char *arg0, ...) {
	char *text;
	s8 *out;
	f64 number;
	va_list args;
	u32 value;
	s32 base;
	u32 isDigit;
	u32 unsignedBase;
	s32 specifier;
	s32 integerPart;
	s32 fractionalPart;
	u32 precision;

	va_start(args, arg0);
	out = &D_80052BE0[(u16)D_80053BE0];
	text = arg0;
	value = (u8)*text;

	if (value != 0) {
		do {
			if ((u8)*text++ == 0x25U) {
				switch ((u8)*text - '0') {
				case 0:
					text[-1] = '\0';
					*text = 1U;
					text++;
					break;
				case 1:
					text[-1] = '\0';
					*text = 2U;
					text++;
					break;
				case 2:
					text[-1] = '\0';
					*text = 3U;
					text++;
					break;
				case 3:
					text[-1] = '\0';
					*text = 4U;
					text++;
					break;
				case 4:
					text[-1] = '\0';
					*text = 5U;
					text++;
					break;
				case 5:
					text[-1] = '\0';
					*text = 6U;
					text++;
					break;
				}
			}
		} while ((u8)*text != 0);
		text = arg0;
		value = (u8)*arg0;
	}

	base = 10;
	unsignedBase = 10;
	while ((value = (u8)*text) != 0) {
		value = (u8)*text;
			precision = 6;
			if ((value ^ 0) != 0x25U) {
				*out++ = (s8)value;
				text++;
			} else {
				value = ((u8 *)text)[1];
				specifier = (u8)text[1];
				text++;
				if ((s32)value < '0' || specifier >= ':') {
					isDigit = 0;
				} else {
					isDigit = 1;
				}
				if (isDigit != 0) {
					value = ((u8 *)text)[1];
					precision = specifier - '0';
					specifier = (u8)text[1];
					text++;
				}
				switch (specifier ^ 0) {
		case 0:
			break;
		case 'c':
			*out++ = va_arg(args, s32);
			break;
		case 'd':
			value = 1000000;
			specifier = va_arg(args, s32);
			if (specifier < 0) {
				*out++ = '-';
				specifier = -specifier;
			}
			if ((specifier / (s32)value) % base == 0) {
				do {
					value = (s32)value / base;
				} while ((specifier / (s32)value) % base == 0 && (s32)value >= 2);
			}
			if (value != 0) {
				do {
					*out++ = ((specifier / (s32)value) % base) + '0';
					value = (s32)value / base;
				} while (value != 0);
			}
			break;
		case 'f': {
			u32 index;
			value = 1000000;
			index = 1;
			number = va_arg(args, double);
			func_80004254_4E54(number, precision, &integerPart, &fractionalPart);
			if (integerPart < 0) {
				*out++ = '-';
				integerPart = -integerPart;
			}
			if ((integerPart / (s32)value) % base == 0) {
				do {
					value = (s32)value / base;
				} while ((integerPart / (s32)value) % base == 0 && (s32)value >= 2);
			}
			if (value != 0) {
				do {
					*out++ = ((integerPart / (s32)value) % base) + '0';
					value = (s32)value / base;
				} while (value != 0);
			}
			*out++ = '.';
			value = 1;
			if ((s32)precision >= 2) {
				do {
					value *= base;
					index++;
				} while (index != precision);
			}
			if (value != 0) {
				do {
					*out++ = (((u32)fractionalPart / value) % unsignedBase) + '0';
					value = (s32)value / base;
				} while (value != 0);
			}
			break;
		}
		case 'i':
			*out++ = 0x12;
			break;
		case 'r':
			*out++ = 0x13;
			break;
		case 's': {
			char *str;
			str = va_arg(args, char *);
			value = (u8)*str;
			if (value != 0) {
			do {
				if ((value ^ 0) == 0x25U) {
					str++;
					switch ((u8)*str - '0') {
					case 0: *out++ = 1U; break;
					case 1: *out++ = 2U; break;
					case 2: *out++ = 3U; break;
					case 3: *out++ = 4U; break;
					case 4: *out++ = 5U; break;
					case 5: *out++ = 6U; break;
					default:
						*out++ = 0x25U;
						str--;
						break;
					}
				} else {
					*out++ = value;
				}
				value = (u8)str[1];
				str++;
			} while (value != 0);
			}
			break;
		}
		case '@': {
			D_80053C80 = va_arg(args, s32);
			D_80053C92 = (s16)((va_arg(args, s32) * 20 + 24) >> 2);
			if (D_80053C80 != 0x80) {
				if (D_80053C80 == 0x81) {
				*out++ = (s8)unsignedBase;
				*out++ = 0x1D;
				*out++ = (s8)(s16)D_80053C92;
				} else {
				D_80053C90 = (s16)(D_80031720_32320[0x2A1] * D_80053C80 + D_80053C94);
				*out++ = (s8)unsignedBase;
				*out++ = 0x14;
				*out++ = (s8)(D_80053C90 >> 2);
				*out++ = (s8)(s16)D_80053C92;
				}
			} else {
				*out++ = (s8)unsignedBase;
				*out++ = 0x1A;
				*out++ = (s8)(s16)D_80053C92;
			}
			break;
		}
		case 'C': {
			*out++ = 0x15;
			*out++ = va_arg(args, s32);
			*out++ = va_arg(args, s32);
			*out++ = va_arg(args, s32);
			break;
		}
		case 'a': {
			*out++ = 0x16;
			*out++ = va_arg(args, s32);
			break;
		}
		case 'W': {
			*out++ = 0x18;
			*out++ = va_arg(args, s32) >> 2;
			*out++ = va_arg(args, s32) >> 2;
			*out++ = va_arg(args, s32) >> 2;
			*out++ = va_arg(args, s32) >> 2;
			break;
		}
		case 'X': {
			*out++ = 0x19;
			func_8000A3DC_AFDC((s16)(va_arg(args, s32) >> 2), out);
			out += 2;
			break;
		}
		case 'Y': {
			*out++ = 0x17;
			func_8000A3DC_AFDC((s16)(va_arg(args, s32) >> 2), out);
			out += 2;
			break;
		}
		case 'H': {
			*out++ = 0x1B;
			func_8000A3DC_AFDC(va_arg(args, s32), out);
			out += 2;
			break;
		}
		case 'V': {
			*out++ = 0x1C;
			func_8000A3DC_AFDC(va_arg(args, s32), out);
			out += 2;
			break;
		}
		default:
			*out = value;
			out++;
			break;
				}
				text++;
			}

	}

	*out = '\0';
	D_80053BE0 = out - D_80052BE0;
}


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
    s32 vertical_offset;
    s32 more_text;

	alpha = 0xFF;

	D_80053C94 = 0x1E;

	x_cursor = 0;
	y_cursor = 0;
	r = 0xFF; g = 0xFF; b = 0xFF;
	clip_x_min = 0; clip_y_min = 0;
	flag_78 = 0; flag_74 = 0;
	D_80053C96 = (s16)(D_80068084 - 0x1E);

	if (gameplayMode == 0) {
		clip_x_max = 0x280;
		clip_y_max = 0x1E0;
	} else {
		clip_x_max = 0x140;
		clip_y_max = 0xF0;
	}

	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, r, g, b, 0xFF);
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
		minimum = 0.01f; if (minimum) { }
		do { } while (0);
		/* Retain the target constant candidate priorities without emitted work. */
		if (minimum < D_80053BE8 * 1024 + D_80053BEC / 1024 +
		              D_80053BE8 / 1024 + 1024) { }
		for (more_text = 1; more_text || i < (u16)D_80053BE0; i++, more_text = 0) {
        glyph_code = ((u8 *)D_80052BE0)[i];
        char_value = glyph_code;
        if (minimum * (f32)(x_cursor + 1) < 1024 + (f32)(x_cursor + 2)) { }
		if (glyph_code & 0x80) {
            glyph_code = (u32)glyph_code + 0x130U;
			char_idx = (s16)glyph_code;
		} else {
            glyph_code = char_value + 0x130;
            if (r == 0) { }
            if (r == 0) { }
            if (r == 0) { }
            if (r == 0) { }
            char_idx = (s16)(char_value + 0x130);
		}

        if (char_value == 0) { }
        if (char_value == 0) { }
        if (char_value == 0) { }
        if (char_value == 0) { }

		/* Space character */
		if ((s16)glyph_code == 0x150) {
			x_cursor += D_80031720_32320[0x2A1];
			continue;
		}

		/* Control codes */
		else if (char_value >= 0x20) {

		/* Printable character */
		if (char_value >= 0xC0) {
			char_idx = (s16)(D_80031650_32250[char_value - 0xC0] + 0x110);
		}

		glyph_data = &D_80031720_32320[char_idx * 2];
		vertical_offset = glyph_data[0];

		x_pos = (s16)(x_cursor + D_80053BE2);
		glyph_y = y_cursor + vertical_offset;
		y_pos = (s16)(y_cursor + vertical_offset + D_80053BE4);

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
						x_cursor = (s16)(D_80053C96 - (s16)width - D_80031720_32320[0x2A1]);
					}
				} else {
					/* left-align */
					x_cursor = (s16)(D_80031720_32320[0x2A1] + D_80053C94);
				}
				y_cursor = (s16)(y_cursor + 0x14);
				break;
			}
			case 26: { /* newline y-scroll + center-align */
				s16 width;


				glyph_y_off = i++ + 1; y_cursor = ((u8 *)D_80052BE0)[glyph_y_off] * 4;

				width = func_8000A2B8_AEB8(text_ptr, (s16)(i + 1));
				flag_78 = 1;
				x_cursor = D_80053C94 + (D_80053C96 - D_80053C94 - width) / 2;
				break;
			}
			case 29: { /* newline y-scroll + right-align */
				s16 width;
				glyph_y_off = i++ + 1; y_cursor = ((u8 *)D_80052BE0)[glyph_y_off] * 4;
				width = func_8000A2B8_AEB8(text_ptr, (s16)(i + 1));
				flag_74 = 1;
				x_cursor = (s16)(D_80053C96 - (s16)width - D_80031720_32320[0x2A1]);
				break;
			}
						case 20:
                glyph_y_off = i++ + 1; x_cursor = ((u8 *)D_80052BE0)[glyph_y_off];
                flag_78 = 0;
                if (x_cursor & 0x80) { x_cursor -= 0x100; }
                x_cursor *= 4;
                glyph_y_off = i++ + 1; y_cursor = ((u8 *)D_80052BE0)[glyph_y_off];
                if (y_cursor & 0x80) { y_cursor -= 0x100; }
                y_cursor *= 4;
                break;
			case 18: /* reset scroll counter */
				D_80053C88 = 0;
				break;
			case 1: /* gray */
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x96, 0x96, 0x96, 0xFF);
				b = 0x96; g = 0x96; r = 0x96;
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
					r = (u8)D_80053BF0;
                    g = (u8)D_80053BF2;
                    b = (u8)D_80053BF4;
					alpha = (u8)D_80053BF6;
				} else if (counter >= 0x10) {
					r = (u8)D_80053BF8;
                    g = (u8)D_80053BFA;
                    b = (u8)D_80053BFC;
					alpha = (u8)D_80053BFE;
				} else {
					f64 fraction;
					s16 endpoint_r, endpoint_g, endpoint_b, endpoint_a;
					endpoint_r = D_80053BF8;
					fraction = (f32)(u32)(u8)(0xFF - (counter << 4)) / 255.0;
					r = (u32)(endpoint_r - (f32)(endpoint_r - D_80053BF0) * fraction) & 0xFF;
					endpoint_g = D_80053BFA; g = (u32)(endpoint_g - (f32)(endpoint_g - D_80053BF2) * fraction) & 0xFF;
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
                glyph_y_off = i++ + 1; r = ((u8 *)D_80052BE0)[glyph_y_off];
                glyph_y_off = i++ + 1; g = ((u8 *)D_80052BE0)[glyph_y_off];
                glyph_y_off = i++ + 1; b = ((u8 *)D_80052BE0)[glyph_y_off];
				gDPPipeSync(D_8005BB2C++);
				gDPSetPrimColor(D_8005BB2C++, 0, 0, r, g, b, alpha);
				break;
			}
			case 22: { /* set alpha from next 1 byte */
				glyph_y_off = i++ + 1; alpha = ((u8 *)D_80052BE0)[glyph_y_off];
				gDPPipeSync(D_8005BB2C++);
				gDPSetPrimColor(D_8005BB2C++, 0, 0, r, g, b, alpha);
				break;
			}
			case 24:
                glyph_y_off = i++ + 1; clip_x_min = ((u8 *)D_80052BE0)[glyph_y_off] * 4;
                glyph_y_off = i++ + 1; clip_y_min = ((u8 *)D_80052BE0)[glyph_y_off] * 4;
                glyph_y_off = i++ + 1; clip_x_max = ((u8 *)D_80052BE0)[glyph_y_off] * 4;
                glyph_y_off = i++ + 1; clip_y_max = ((u8 *)D_80052BE0)[glyph_y_off] * 4;
                gDPSetScissor(D_8005BB2C++, G_SC_NON_INTERLACE, clip_x_min, clip_y_min, clip_x_max, clip_y_max);
                break;
			case 25: { /* call func, store in D_80053BE2 */
				glyph_y_off = i++ + 1; D_80053BE2 = func_8000A43C_B03C((s8 *)&((u8 *)D_80052BE0)[glyph_y_off]);
				i = (s16)(i + 1);
				break;
			}
			case 23: { /* call func, store in D_80053BE4 */
				glyph_y_off = i++ + 1; D_80053BE4 = func_8000A43C_B03C((s8 *)&((u8 *)D_80052BE0)[glyph_y_off]);
				i = (s16)(i + 1);
				break;
			}
			case 27: { /* call func, scale x */
				s32 val;
				glyph_y_off = i++ + 1; val = func_8000A43C_B03C((s8 *)&((u8 *)D_80052BE0)[glyph_y_off]);
				D_80053BE8 = (f32)((f64)val * (1.0 / 1024.0));
				if ((f64)D_80053BE8 < 0.01) {
					D_80053BE8 = minimum;
				}
				i = (s16)(i + 1);
				break;
			}
			case 28: { /* call func, scale y */
				s32 val;
				glyph_y_off = i++ + 1; val = func_8000A43C_B03C((s8 *)&((u8 *)D_80052BE0)[glyph_y_off]);
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

		}
		}
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
