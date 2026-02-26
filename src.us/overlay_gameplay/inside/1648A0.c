#include <ultra64.h>
#include "common.h"

#ifdef NON_MATCHING
void func_8007C7E0_1648A0(void) {
    Unk80052B34 *v0 = &D_800E6A78;

    v0->unk12 = 0;
    v0->unkE = 0x4000;
    v0->unk4C = 200.0f;
    v0->unk50 = 0.0f;
    v0->unk54 = 116.0f;
    osSyncPrintf(D_800A4BB0);
    D_800E7304 = (s32)func_8000C6F4_D2F4();
    ((Unk80157600 *)D_800E6F00)->unk408 = func_8000C6F4_D2F4();
    ((Unk80157600 *)D_800E6F00)->unk410 = 1.0f;
    func_8000C790_D390(D_800E6F00, &D_8003BAE0, 0x10);
    func_8007DAA8_165B68(D_800E6F00, 0x11, (void *)7, 0.0f, 0x10);
    D_800E7328 = 0;
    if (!(D_800E65A8 & 0x200)) {
        D_800E6A70 = D_80047948;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007C7E0_1648A0.s")
#endif

#ifdef NON_MATCHING
void func_8007C8BC_16497C(void) {
	volatile Unk80157600 *ptr;

	func_8000C764_D364(D_800E7304);
	ptr = (volatile Unk80157600 *) &D_800E6AD8;
	func_8000C764_D364((s32) ptr->unk408);
	ptr = (volatile Unk80157600 *) &D_800E6AD8;
	ptr->unk408 = NULL;
	ptr->unk404 = NULL;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007C8BC_16497C.s")
#endif

void func_8007C8FC_1649BC(void) {
	func_8007DDA0_165E60(&D_800E6A78, currentControllerStates);
	func_8007CAA8_164B68(&D_800E6A78, currentControllerStates);
}

void func_8007C93C_1649FC(void) {
	func_8007EB1C_166BDC(&D_800E6A78);
	func_8007EFD4_167094(&D_800E6A78);
}

#ifdef NON_MATCHING
f32 func_8007C96C_164A2C(Unk80047588 *arg0) {
    f32 temp_f0;
    f32 var_f12;
    f32 var_f2;
    f64 temp_f0_2;
    s16 temp_v0;
    s16 temp_v1;

    temp_v0 = (s16) (s32) ((f64) arg0->stick_x / 5.0);
    temp_v1 = (s16) (s32) -((f64) arg0->stick_y / 5.0);
    temp_f0 = sqrtf((f32) ((temp_v0 * temp_v0) + (temp_v1 * temp_v1)));
    if (temp_f0 <= 0.0f) {
        var_f12 = 0.0f;
    } else {
        if (8.0f <= temp_f0) {
            var_f12 = 8.0f;
        } else {
            var_f12 = temp_f0;
        }
    }
    temp_f0_2 = (f64) var_f12 / 13.0;
    if (temp_f0_2 >= 0.0) {
        var_f2 = (f32) temp_f0_2;
    } else {
        var_f2 = (f32) -temp_f0_2;
    }
    if ((f64) var_f2 > 1.0) {
        var_f2 = 1.0f;
    }
    return var_f2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007C96C_164A2C.s")
#endif

#ifdef NON_MATCHING
void func_8007CAA8_164B68(Unk80052B34 *arg0, Unk80047588 *arg1) {
    s16 sp4E;
    s16 sp4C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    s32 var_v0;
    s32 temp_t1;
    s32 temp_t8;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f16;
    f32 var_f2;

    if (((s16)D_80052B34->unk1C <= 0) && (D_80052AD0 != 0)) {
        D_800E65A8 |= 0x4000;
        func_80006DAC_79AC(0x96, 0);
    }

    temp_t1 = D_800E6A68 & 0x200;
    if (temp_t1 != 0x200) {
        var_v0 = D_8009E8E0[((Unk80157600 *)D_800E6F00)->unk40C].unk0;
        if (!(var_v0 & 0x40) && (temp_t1 != 0x200)) {
            arg0->unk22 = 0;
            sp4E = (s16) ((f64) arg1->stick_x / 5.0);
            sp4C = (s16) ((f64) -arg1->stick_y / 5.0);
            temp_f0 = sqrtf((f32) ((sp4E * sp4E) + (sp4C * sp4C)));
            if (temp_f0 <= 0.0f) {
                D_800A08F8 = 0.0f;
            } else {
                if (temp_f0 >= 8.0f) {
                    var_f2 = 8.0f;
                } else {
                    var_f2 = temp_f0;
                }
                D_800A08F8 = var_f2;
            }
            if (D_8009E8E0[D_800E730C].unk0 & 0x10) {
                D_800A08F8 = 0.0f;
            }
            temp_f12 = (f32) (((f64) ((arg0->unk6 - D_800E6A74) + 0x4000) * D_800A4D08) / 32768.0);
            sp20 = temp_f12;
            sp24 = __cosf(temp_f12);
            sp2C = (s32) (((f32) arg1->stick_x * sp24) - (sinf(temp_f12) * (f32) arg1->stick_y));
            sp24 = sinf(temp_f12);
            D_800E6A64 = func_80003824_4424((f32) -sp2C, (f32) (s32) ((__cosf(temp_f12) * (f32) arg1->stick_y) + ((f32) arg1->stick_x * sp24)));
            if (D_800A08F8 > 0.0f) {
                func_8007D37C_16543C(arg0, D_800E6A66, 0);
            }
            var_v0 = D_8009E8E0[D_800E730C].unk0;
            if (var_v0 & 0x100) {
                D_800A08F8 = 0.0f;
            }
            D_800E733C = (s16) (s32) D_800A08F8;
        }

        if (!(var_v0 & 0x10)) {
            if ((var_v0 & 0x800) && (D_8009E8D8 == 0)) {
                temp_t8 = ((s32) (((Unk80157600 *)D_800E6F00)->unk8 - ((Unk80157600 *)D_800E6F00)->unk414)) / 4;
                sp34 = ((s32) (((Unk80157600 *)D_800E6F00)->unk10 - ((Unk80157600 *)D_800E6F00)->unk418)) / 4;
                sp38 = temp_t8;
                sp24 = __cosf((f32) (((f64) (f32) arg0->unkE * D_800A4D10) / 32768.0));
                temp_f14 = (f32) sp34;
                temp_f16 = (f32) temp_t8;
                D_800E7340.x = (f32) ((sp24 * temp_f14) - (sinf((f32) (((f64) (f32) arg0->unkE * D_800A4D18) / 32768.0)) * temp_f16));
                sp1C = temp_f16;
                sp20 = temp_f14;
                sp24 = sinf((f32) (((f64) (f32) arg0->unkE * D_800A4D20) / 32768.0));
                D_800E7340.z = (f32) ((__cosf((f32) (((f64) (f32) arg0->unkE * D_800A4D28) / 32768.0)) * sp1C) + (sp24 * sp20));
            } else if (D_8009E8D8 != 0) {
                sp30 = (s32) (s16) (s32) ((f64) (D_8008DDF0 * 32768.0f) / D_800A4D30);
                D_800A08F8 = sqrtf((f32) ((sp4E * sp4E) + (sp4C * sp4C)));
                temp_f12_2 = (f32) (((f64) (f32) sp30 * D_800A4D38) / 32768.0);
                sp20 = temp_f12_2;
                D_800E7340.z = (f32) (sinf(temp_f12_2) * D_800A08F8);
                D_800E7340.x = (f32) (__cosf(temp_f12_2) * D_800A08F8);
            } else {
                D_800E7340.z = (f32) (sinf((f32) (((f64) (f32) D_800E6A78.unkE * D_800A4D40) / 32768.0)) * D_800A08F8);
                D_800E7340.x = (f32) (__cosf((f32) (((f64) (f32) D_800E6A78.unkE * D_800A4D48) / 32768.0)) * D_800A08F8);
            }
            D_800E7314 = ((Unk80157600 *)D_800E6F00)->unk8;
            D_800E7318 = ((Unk80157600 *)D_800E6F00)->unk10;
            if ((D_800E730C == 8) || (D_800E730C == 0x2D) || (D_800E730C == 0x2E)) {
                D_800E6A78.unk4C += D_800E7340.x;
                D_800E6A78.unk54 += D_800E7340.z;
            } else {
                D_800E6A10.x = D_800E6A78.unk4C;
                D_800E6A10.y = D_800E6A78.unk50;
                D_800E6A10.z = D_800E6A78.unk54;
                func_8007B65C_16371C(&D_800E6A10, &D_800E7340, 15.0f, &D_800E6A40);
                func_80070294_158354(&D_800E6A40);
                if ((D_800E6A40.unk10 == 0.0f) && (D_800E6A40.unkE != 0)) {
                    if ((D_800E6A40.unkE == 1) || (D_800E6A40.unkE == 2)) {
                        D_800E7340.x = 0.0f;
                        D_800E7340.z = (f32) (D_800E7340.z / 2.0f);
                    } else {
                        D_800E7340.z = 0.0f;
                        D_800E7340.x = (f32) (D_800E7340.x / 2.0f);
                    }
                    func_8007B65C_16371C(&D_800E6A10, &D_800E7340, 15.0f, &D_800E6A40);
                }
                if (D_800E6A40.unkE != 0) {
                    D_800E6A78.unk4C = D_800E6A40.unk0;
                    D_800E6A78.unk54 = D_800E6A40.unk8;
                } else {
                    D_800E6A78.unk4C += D_800E7340.x;
                    D_800E6A78.unk54 += D_800E7340.z;
                }
            }
        }

        if ((isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_L) != 0) && (func_80018A58_19658() == 0) && (D_800E65A8 == 1)) {
            D_800E65A8 |= 0x40000;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007CAA8_164B68.s")
#endif

#ifdef NON_MATCHING
void func_8007D37C_16543C(Unk80052B34 *arg0, s16 arg1, s32 arg2) {
    s32 var_v0;
    s32 var_v1;

    var_v0 = arg0->unkE;
    var_v1 = var_v0 - arg1;
    var_v1 = (var_v1 << 16) >> 16;
    if (var_v1 < -0x4000) {
        if (((Unk80157600 *)D_800E6F00)->unk40C != 0xA) {
            func_8007DAA8_165B68((Unk80157600 *)D_800E6F00, 0xA, NULL, 0.0f, 0x10);
            var_v0 = arg0->unkE;
        }
        D_800E732C = (s16)(arg1 - var_v0) / 10;
        var_v0 = arg0->unkE;
        var_v1 = var_v0 - arg1;
        var_v1 = (var_v1 << 16) >> 16;
    } else if (var_v1 >= 0x4001) {
        if (((Unk80157600 *)D_800E6F00)->unk40C != 0xB) {
            func_8007DAA8_165B68((Unk80157600 *)D_800E6F00, 0xB, NULL, 0.0f, 0x10);
            var_v1 = arg0->unkE - arg1;
            var_v1 = (var_v1 << 16) >> 16;
        }
        D_800E732C = var_v1 / 10;
        var_v0 = arg0->unkE;
        var_v1 = var_v0 - arg1;
        var_v1 = (var_v1 << 16) >> 16;
    } else if (!(D_8009E8E0[((Unk80157600 *)D_800E6F00)->unk40C].unk0 & 0x100)) {
        D_800E732C = 0x5DC;
        var_v0 = arg0->unkE;
        var_v1 = var_v0 - arg1;
        var_v1 = (var_v1 << 16) >> 16;
    }
    if (-D_800E732C >= var_v1) {
        arg0->unkE = (s16)(var_v0 + D_800E732C);
        return;
    }
    if (var_v1 >= D_800E732C) {
        arg0->unkE = (s16)(var_v0 - D_800E732C);
        return;
    }
    arg0->unkE = arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007D37C_16543C.s")
#endif

void func_8007D52C_1655EC(void) {
	D_800E6A68 &= ~0x200;
}

#ifdef NON_MATCHING
void func_8007D548_165608(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    func_8007DAA8_165B68(D_800E6F00, 0x11, NULL, 0.0f, 0x10);
    D_800E6A1C = arg0;
    D_800E6A20 = arg1;
    D_800E6A24 = arg2;
    D_800E6A28 = arg3;
    D_800E6A2C = arg4;
    D_800E6A30 = (func_80003824_4424(D_800E6A78.unk4C - (f32) D_800E6A20, D_800E6A78.unk54 - (f32) D_800E6A24) + 0x8000) & 0xFFFF;
    D_800E6A68 |= 0x80;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007D548_165608.s")
#endif

s32 func_8007D62C_1656EC(Unk8007D62C_Entry *arg0, s32 arg1) {
	s32 result;
	s32 found;

	found = 0;
	while (arg0->unk0 != 0xFF) {
		if (arg1 == arg0->unk0) {
			found = 1;
			result = arg0->unk1;
			break;
		}
		arg0++;
	}

	if (found == 0) {
        // ERROR: could not find search animation for object %d. Using SEARCH_MED.
		osSyncPrintf(D_800A4BCC, arg1);
		result = 0x1A;
	}

	return result;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007D69C_16575C.s")

void func_8007DAA8_165B68(void *arg0, s32 arg1, void *arg2, f32 arg3, s32 arg4) {
    s32 temp_v0;
    s32 var_v1;

    temp_v0 = ((Unk80157600 *)arg0)->unk40C;
    var_v1 = 0;
    if (temp_v0 == 0x12 || temp_v0 == 5) {
        var_v1 = 1;
    }
    if (arg2 != 0) {
        var_v1 = 1;
    }
    ((Unk80157600 *)arg0)->unk40C = arg1;
    if (D_8009E8DC[arg1].unk4 & 4) {
        func_8000D71C_E31C(((Unk80157600 *)arg0)->unk404, ((Unk80157600 *)arg0)->unk408, arg0, arg4, D_8009E8DC[arg1].unk0, D_8009E8DC[D_8009E8DC[arg1].unkC].unk0, arg3, var_v1);
    } else {
        func_8000CDFC_D9FC(((Unk80157600 *)arg0)->unk404, arg0, arg4, D_8009E8DC[arg1].unk0, var_v1);
    }
    ((Unk80157600 *)arg0)->unk414 = 0.0f;
    ((Unk80157600 *)arg0)->unk418 = 0.0f;
    ((Unk80157600 *)arg0)->unk8 = 0.0f;
    ((Unk80157600 *)arg0)->unk10 = 0.0f;
}

void func_8007DB98_165C58(void *arg0, s32 arg1, s32 arg2, f32 arg3) {
    if (!(D_8009E8E0[((Unk80157600 *)arg0)->unk40C].unk0 & 8)) {
        if (arg3 > 0.0f) {
            if (arg2 != ((Unk80157600 *)arg0)->unk40C) {
                func_8007DAA8_165B68(arg0, arg2, NULL, arg3, 0x10);
            }
        } else if (((Unk80157600 *)arg0)->unk40C < 0x12) {
            if ((arg1 == 0x11) && ((s32)D_80257A3A[D_8004DCD0[0].unk1A].unk0 >> 2) >= (s32)D_8004DCD0[0].unk1C) {
                arg1 = 2;
            }
            func_8007DAA8_165B68(arg0, arg1, NULL, 0.0f, 0x10);
        }
    }
}

#ifdef NON_MATCHING
void func_8007DC80_165D40(Unk80052B34 *arg0, Unk80157600 *arg1, s32 arg2) {
    if (((Unk8007F878_404 *)arg1->unk404)->unkE50 == 0) {
        arg0->unkE += (s32)((f32)D_8009E8DC[arg1->unk40C].unk10 * 32768.0f / D_800A4D90);
        arg1->unk2 = 0;
        if (D_8009E8DC[arg1->unk40C].unk4 & 1) {
            func_8007DAA8_165B68(arg1, arg1->unk40C, (void *)D_8009E8DC[arg1->unk40C].unk8, *(f32*)&arg2, 0x10);
        }
        if (D_8009E8DC[arg1->unk40C].unk4 & 2) {
            func_8007DAA8_165B68(arg1, D_8009E8DC[arg1->unk40C].unk8, NULL, *(f32*)&arg2, 0x10);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007DC80_165D40.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007DDA0_165E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007EB1C_166BDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007EFD4_167094.s")

#ifdef NON_MATCHING
void func_8007F668_167728(u8 arg0, u8 arg1) {
    s32 sp24;

    sp24 = arg0;
    D_800E6AD8.unk426 = sp24 - 1;
    D_800E6AD8.unk425 = arg1;
    osSyncPrintf(D_800A4CE8, sp24);
    D_800E6AD8.unk404 = func_8000C6F4_D2F4();
    D_800E6AD8.unk408 = func_8000C6F4_D2F4();
    D_800E6AD8.unk410 = 1.0f;
    func_8000C790_D390(&D_800E6AD8,
        *(s32 *)(D_8009E4C8 + sp24 * 0xD0 + arg1 * 0x10 - 0xCC),
        *(D_8009E4C8 + sp24 * 0xD0 + arg1 * 0x10 - 0xC4));
    ((Unk8007F878_404 *)D_800E6AD8.unk404)->unkE50 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007F668_167728.s")
#endif

#ifdef NON_MATCHING
void func_8007F724_1677E4(void) {
	Unk80157600 *ptr;

	ptr = (Unk80157600 *) D_800E6AD8;
	if (ptr->unk404 != NULL) {
		func_8000C764_D364((s32) ptr->unk404);
		ptr = (Unk80157600 *) D_800E6AD8;
		func_8000C764_D364((s32) ptr->unk408);
		ptr = (Unk80157600 *) D_800E6AD8;
		ptr->unk408 = NULL;
		ptr->unk404 = NULL;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007F724_1677E4.s")
#endif

void func_8007F778_167838(void) {
    u8 temp_v1;
    u8 temp_t0;
    u8 *temp_v0;

    if ((Unk8007F878_404 *)D_800E6AD8.unk404 != NULL) {
        temp_v1 = D_800E6AD8.unk426;
        temp_t0 = D_800E6AD8.unk425;
        if (((Unk8007F878_404 *)D_800E6AD8.unk404)->unkE50 == 0) {
            if (!((currentLevel == 5) && (temp_v1 == 4) && (temp_t0 == 0) && (D_800E65A8 & 0x100))) {
                temp_v0 = &D_8009E4C8[temp_v1 * 0xD0 + temp_t0 * 0x10];
                func_8007DAA8_165B68(&D_800E6AD8, *(s32*)(temp_v0 + 8), NULL, 0.0f, temp_v0[0xC]);
            }
        }
        func_8000CF4C_DB4C((Unk8007F878_404 *)D_800E6AD8.unk404, &D_800E6AD8,
            D_8009E4D4[temp_v1 * 0xD0 + temp_t0 * 0x10],
            *(s32*)&D_800E6AD8.unk410);
    }
}

#ifdef NON_MATCHING
void func_8007F878_167938(void) {
	Unk8007F878_D6AD8 *ptr;
	Unk8007F878_404 *temp;

	ptr = &D_800E6AD8;
	if (ptr->unk404 == NULL) {
		return;
	}

	temp = (Unk8007F878_404 *) ptr->unk404;
	if ((temp->unkE50 == 0) || (ptr->unk18 == 0)) {
		return;
	}

	func_8000CF4C_DB4C(ptr->unk404, ptr, D_8009E4D4[ptr->unk426 * 0xD0 + ptr->unk425 * 0x10], ptr->unk410);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007F878_167938.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007F8F4_1679B4.s")
