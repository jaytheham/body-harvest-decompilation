#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007C7E0_1648A0.s")

#ifdef NON_MATCHING
void func_8007C8BC_16497C(void) {
	volatile Unk80157600 *ptr;

	func_8000C764_D364(D_800E7304);
	ptr = (volatile Unk80157600 *) D_800E6F00;
	func_8000C764_D364((s32) ptr->unk408);
	ptr = (volatile Unk80157600 *) D_800E6F00;
	ptr->unk408 = NULL;
	ptr->unk404 = NULL;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007C8BC_16497C.s")
#endif

void func_8007C8FC_1649BC(void) {
	func_8007DDA0_165E60(D_800E6A78, currentControllerStates);
	func_8007CAA8_164B68(D_800E6A78, currentControllerStates);
}

void func_8007C93C_1649FC(void) {
	func_8007EB1C_166BDC(D_800E6A78);
	func_8007EFD4_167094(D_800E6A78);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007C96C_164A2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007CAA8_164B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007D37C_16543C.s")

void func_8007D52C_1655EC(void) {
	D_800E6A68 &= ~0x200;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007D548_165608.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007DAA8_165B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007DB98_165C58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007DC80_165D40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007DDA0_165E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007EB1C_166BDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007EFD4_167094.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007F668_167728.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/1648A0/func_8007F778_167838.s")

#ifdef NON_MATCHING
void func_8007F878_167938(void) {
	Unk8007F878_D6AD8 *ptr;
	Unk8007F878_404 *temp;

	ptr = (Unk8007F878_D6AD8 *) D_800E6AD8;
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
