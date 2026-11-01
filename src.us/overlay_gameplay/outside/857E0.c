#include <ultra64.h>
#include "common.h"
#include "version_shift.h"

const s16 D_801416A0_150650[] = {0x0040, 0x00C0, 0x0040, 0x00C0};
const s16 D_801416A8_150658[] = {0x0040, 0x0040, 0x00C0, 0x00C0};
const s16 D_801416B0_150660[4][2] = {{0x0000, 0x0100}, {0x0100, 0x0100}, {0x0000, 0x0000}, {0x0000, 0x0100}};
const s16 D_801416C0_150670[4][2] = {{0x0000, 0x0000}, {0x0000, 0x0100}, {0x0000, 0x0100}, {0x0100, 0x0100}};
const s32 D_801416D0_150680[] = {
	0, 1, 2, 3, 4, 0, 1, 2, 3, 4, 0, 1, 2, 3, 4, 0, 1, 2, 3, 4, 0, 1, 2, 3, 4
};
const s32 D_80141734_1506E4[] = {
	0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4
};

s32 D_8013BB10_14AAC0 = 0;

s16 D_8013BB14_14AAC4[46] = {
	0x0902, (s16)0xEBD0, 0x0064, 0x0005, 0x0001, 0x0000,
	0x0902, (s16)0xF3D0, 0x0032, 0x0006, 0x0001, 0x0001,
	0x0A00, 0x2290,      0x0064, 0x0002, 0x0001, 0x0000,
	0x0A00, 0x2A90,      0x002D, 0x0002, 0x0001, 0x0000,
	0x0B03, 0x2790,      0x0064, 0x0005, 0x0001, 0x0000,
	0x0B03, 0x1F90,      0x0032, 0x0006, 0x0001, 0x0000,
	0x0C01, (s16)0xE570, 0x0064, 0x0005, 0x0001, 0x0000,
	0x0C01, (s16)0xED70, 0x0064, 0x0005
};

s32 func_80076830_857E0(void) {
	s32 index;
	u8* ptr;
	u8 value;

	index = D_8014D2E8;
	ptr = &D_8014D200[index];
	if (index == 0x96) {
		return -1;
	}

	value = *ptr;
	D_8014D2E8 = index + 1;
	return value;
}

void func_80076868_85818(s32 arg0) {
	s32 i;
	s32* ptr_count;
	s8 neg_one;

	for (i = 0; i < D_8014D2EC; i++) {
		if (arg0 == D_8014D298[i].unk0) {
			func_800769A8_85958(i);
		}
	}

	neg_one = -1;
	D_80259D90[arg0].unk2 = (u8)neg_one;
	ptr_count = &D_8014D2E8;
	*ptr_count = *ptr_count - 1;
	D_8014D200[*ptr_count] = (u8)arg0;
}

s32 func_80076918_858C8(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s32 index;
	Unk_8014D298 *entry;
	index = D_8014D2EC;
	if (index == 8)
	{
		func_800769A8_85958(0);
		index = D_8014D2EC;
	}
	index = D_8014D2EC;
	entry = &D_8014D298[index];
	entry->unk2 = 0;
	entry->unk0 = (s16) arg0;
	entry->unk8 = (s16) arg3;
	entry->unk4 = (s16) arg1;
	entry->unk6 = (s16) arg2;
	D_8014D2EC = index + 1;
	return index;
}

void func_800769A8_85958(s32 arg0) {
	s32 temp_t7;
	D_8014D298[arg0] = D_8014D298[D_8014D2EC = D_8014D2EC - 1];
}

#ifdef NON_MATCHING
// CURRENT(4003)
void func_80076A10_859C0(s16 arg0, s16 arg1, s16 arg2) {
	s32 pattern;
	s32 outer;
	Unk80052B40 spA8;
	Unk80052B40 spA0;
	Unk80052B40 sp98;
	Unk80259D90* entry;
	s32 obj;
	s16 x;
	s32 z;
	s32 inner;
	s32 type;
	s32 temp;
	OutsideTreeStyle* tempTable;
	s32 vertexX;
	s32 vertexZ;
	u32 packed;
	u8 c0;
	u8 c1;
	u8 c2;
	u16* table;
	u32 packedBackup[1];
	s32 xOff;
	s32 zOff;

	spA0 = D_8013BCCC_Vector;
	sp98 = D_8013BCD4_Vector;

	if (D_8014D2E8 == 0x96) {
		return;
	}

	arg1 += 0x20;
	arg2 += 0x20;
	if ((arg1 < 0) || (arg1 >= 0x40) || (arg2 < 0) || (arg2 >= 0x40)) {
		return;
	}

	pattern = D_80221A30[arg2][arg1];
	if (pattern == 0xFF) {
		return;
	}

	table = D_8021FA30[pattern];
	for (outer = 0; outer != 0x10; outer++, table++) {
		packed = *table;
		if (packed != 0) {
			for (inner = 0; packed != 0; inner++, packed = (u16)(packedBackup[0] >> 4)) {
				type = packed & 0xF;
				packedBackup[0] = packed;
				if (type != 0) {
					obj = func_80076830_857E0();
					if (obj == -1) {
						break;
					}

					entry = &D_80259D90[obj];
					entry->unk0 = type;
					entry->pad1 = outer;
					entry->unk2 = arg0;
					entry->pad3 = inner;

					xOff = ((arg1 << 2) + (outer & 3)) << 8;
					zOff = ((arg2 << 2) + (outer >> 2)) << 8;
					x = D_801416A0_150650[inner] + xOff - 0x8000;
					z = (s16)(D_801416A8_150658[inner] + zOff - 0x8000);
					entry->unk4 = x;
					entry->unk6 = z;

					if (type < 0xE) {
						spA8.unk0 = x;
						spA8.unk4 = z;
						spA8.unk2 = (s16) (func_800B84D0_C7480_4Args(x, z, zOff, z) >> 8);
						x = spA8.unk0;
						z = spA8.unk4;
						entry->unk8 = (void*)D_80222A30[type];

						temp = (z * x * 0x41C64E6D + 0x3039) >> 16;
						temp /= 256;
						temp = temp % 32 + 240;
						sp98.unk0 = temp;
						sp98.unk4 = temp;
						sp98.unk2 = ((((z * 0x41C64E6D + 0x3039) >> 16) / 256) % 32) + 240;

						if (((s16 (*)[16])D_8013BC0C_14ABBC)[currentLevel][type] == 2) {
							spA0.unk0 = inner << 0xE;
						}
						func_800039D0_45D0(&spA8, &spA0, &sp98, &entry->matrix);
					} else {
						spA8.unk0 = x;
						spA8.unk4 = z;
						xOff -= 0x8000;
						zOff -= 0x8000;
						if ((inner == 0) || (inner == 3)) {
							c0 = 0xFF;
							c1 = 0xFF;
							c2 = 0xFF;
						} else {
							c0 = 0xC8;
							c1 = 0xC8;
							c2 = 0xC8;
						}

						tempTable = &((OutsideTreeStyle (*)[2])D_8013BB14_14AAC4)[currentLevel - 1][type - 14];

						vertexX = D_801416B0_150660[inner][0] + xOff;
						vertexZ = D_801416C0_150670[inner][0] + zOff;
						entry->unk8 = (void*)tempTable->texture;
						temp = func_800B84D0_C7480(vertexX, vertexZ) >> 8;

						entry->vertices[0].v.ob[0] = vertexX;
						entry->vertices[0].v.ob[1] = tempTable->height + temp;
						entry->vertices[0].v.cn[3] = 0xFF;
						entry->vertices[0].v.cn[2] = c2;
						entry->vertices[0].v.cn[1] = c1;
						entry->vertices[0].v.cn[0] = c0;
						entry->vertices[0].v.tc[1] = 0;
						entry->vertices[0].v.tc[0] = 0;
						entry->vertices[0].v.flag = 0;
						entry->vertices[0].v.ob[2] = vertexZ;

						entry->vertices[1].v.ob[1] = temp;
						entry->vertices[1].v.tc[0] = 0;
						entry->vertices[1].v.flag = 0;
						entry->vertices[1].v.ob[2] = vertexZ;
						entry->vertices[1].v.ob[0] = vertexX;
						temp = tempTable->scale;
						vertexX = D_801416B0_150660[inner][1] + xOff;
						vertexZ = D_801416C0_150670[inner][1] + zOff;
						entry->vertices[1].v.tc[1] = (temp << 0xB) - 0x20;
						entry->vertices[1].v.cn[3] = 0xFF;
						entry->vertices[1].v.cn[2] = c2;
						entry->vertices[1].v.cn[1] = c1;
						entry->vertices[1].v.cn[0] = c0;

						temp = func_800B84D0_C7480(vertexX, vertexZ) >> 8;

						entry->vertices[2].v.ob[0] = vertexX;
						entry->vertices[2].v.ob[1] = tempTable->height + temp;
						entry->vertices[2].v.flag = 0;
						entry->vertices[2].v.ob[2] = vertexZ;
						entry->vertices[2].v.tc[0] = tempTable->width << 0xB;
						entry->vertices[2].v.cn[3] = 0xFF;
						entry->vertices[2].v.cn[2] = c2;
						entry->vertices[2].v.cn[1] = c1;
						entry->vertices[2].v.cn[0] = c0;
						entry->vertices[2].v.tc[1] = 0;

						entry->vertices[3].v.flag = 0;
						entry->vertices[3].v.ob[2] = vertexZ;
						entry->vertices[3].v.ob[1] = temp;
						entry->vertices[3].v.ob[0] = vertexX;
						entry->vertices[3].v.tc[0] = tempTable->width << 0xB;
						entry->vertices[3].v.tc[1] = (tempTable->scale << 0xB) - 0x20;
						entry->vertices[3].v.cn[3] = 0xFF;
						entry->vertices[3].v.cn[2] = c2;
						entry->vertices[3].v.cn[1] = c1;
						entry->vertices[3].v.cn[0] = c0;
					}
				}

			}
		}
	}
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80076A10_859C0.s")
#endif

void func_80076FCC_85F7C(s32 arg0, s32 arg1) {
	s32 i;
	s32 s3;
	s32 s4;
	s8 neg_one;

	D_8014D2E8 = 0;
	D_8014D2EC = 0;
	neg_one = -1;
	for (i = 0; i < 0x96; i++) {
		D_8014D200[i] = i;
		D_80259D90[i].unk2 = neg_one;
	}
	s3 = ((arg0 - 0x880) >> 8) >> 2;
	D_8014D2F0 = s3;
	s4 = ((arg1 - 0x880) >> 8) >> 2;
	D_8014D2F4 = s4;
	for (i = 0; i < 0x19; i++) {
		func_80076A10_859C0((s16) i, (s16) (D_801416D0_150680[i] + s3), (s16) (D_80141734_1506E4[i] + s4));
	}
}

// fell tree
void func_800770D8_86088(s32 arg0) {
	u16 treeIndex;
	u16 timer;
	Mtx* mtx;
	u32 sp8C;
	u32 sp88;
	Unk_8014D298* entry;
	u32 temp_s1;
	f32 scale[3];
	f32 value;
	Mtx sp30;

	entry = &D_8014D298[arg0];
	timer = entry->unk2;
	temp_s1 = (timer * 6) & 0xFFFF;
	treeIndex = entry->unk0;
	if ((s32)temp_s1 < (s32)entry->unk6) {

		sp8C = *(u32*)&((Unk857E0Obj*)D_80259D90)[treeIndex].unk28;
		sp88 = *(u32*)&((Unk857E0Obj*)D_80259D90)[treeIndex].unk2C;

		mtx = (Mtx*)&((Unk857E0Obj*)D_80259D90)[treeIndex].unk10;
		guRotate(mtx, (f32)(u32)temp_s1, (f32)((f64)(f32)sins(entry->unk4) / 32768.0), 0.0f, (f32)-((f64)(f32)coss(entry->unk4) / 32768.0));

		value = (f32)(s32)((((s32)((((s16)(sp8C >> 0x10) * (s16)(sp88 >> 0x10)) * 0x41C64E6D + 0x3039) >> 0x10) % 0x40) + 0xE0) / 0x100);

		scale[0] = value;
		scale[2] = value;
		scale[1] = (f32)(s32)((((s32)(((s16)(sp88 >> 0x10) * 0x41C64E6D + 0x3039) >> 0x10) % 0x40) + 0xE0) / 0x100);
		guScale(&sp30, scale[0], scale[1], scale[2]);

		mtx->m[1][2] = sp8C;
		mtx->m[1][3] = sp88;
	}
}

void func_800772EC_8629C(s32 arg0) {
	Unk_8014D298 *temp_v0;
	Unk80259D90 *temp_s0;
	s32 *temp_s1;
	OutsideTreeStyle *temp_s2;
	s32 index;

	s32 sp70;
	s32 sp6C;
	s32 sp68;
	u16 sp66;
	TreeFallDirections sp44;
	u16 angle;
	u16 timer;

	temp_v0 = &D_8014D298[arg0];
	index = temp_v0->unk0;
	temp_s0 = &D_80259D90[index];
	timer = temp_v0->unk2;
	temp_s2 = &((OutsideTreeStyle (*)[2])D_8013BB14_14AAC4)[currentLevel - 1][(s8)temp_s0->unk0 - 14];
	sp44 = *(TreeFallDirections*)D_8013BCDC_14AC8C;

	if (timer * 2000 < temp_v0->unk6) {
		sp66 = (u16)((s16)temp_v0->unk4 + 0x2000) >> 14;
		sp70 = temp_s0->unk20;
		sp6C = temp_s0->unk22;
		sp68 = temp_s0->unk24;
		angle = timer * 2000;
		temp_s1 = &((s32*)sp44.direction)[sp66 * 2];
		temp_s0->unk10 = (((temp_s1[0] * temp_s2->height) * ((f32)sins(angle) / 32768.0)) + sp70);
		temp_s0->unk14 = (((temp_s1[1] * temp_s2->height) * ((f32)sins(angle) / 32768.0)) + sp68);
		temp_s0->unk12 = ((((f32)coss(angle) / 32768.0) * temp_s2->height) + sp6C);
		sp70 = temp_s0->unk40;
		sp6C = temp_s0->unk42;
		sp68 = temp_s0->unk44;
		temp_s0->unk30 = (((temp_s1[0] * temp_s2->height) * ((f32)sins(angle) / 32768.0)) + sp70);
		temp_s0->unk34 = (((temp_s1[1] * temp_s2->height) * ((f32)sins(angle) / 32768.0)) + sp68);
		temp_s0->unk32 = ((((f32)coss(angle) / 32768.0) * temp_s2->height) + sp6C);
	}
}

#ifdef NON_MATCHING // CURRENT(1690)
// DisplayTrees
void func_8007764C_865FC(void) {
	Unk857E0Obj* end;
	s32 camX;
	s32 camZ;
	s32 cellX;
	s32 cellZ;
	s32 i;
	s32 type;
	s32 prevType;
	Unk857E0Obj* obj;

	camX = (D_80149434 - 0x880) >> 8;
	camZ = (D_80149436 - 0x880) >> 8;
	cellX = camX >> 2;
	cellZ = camZ >> 2;

	for (i = 0; i < D_8014D2EC; i++) {
		if ((u16) D_8014D298[i].unk8 == 2) {
			func_800770D8_86088(i);
		} else if ((u16) D_8014D298[i].unk8 == 3) {
			func_800772EC_8629C(i);
		}

		D_8014D298[i].unk2++;
		if ((u16) D_8014D298[i].unk2 >= 0x65) {
			func_800769A8_85958(i);
			i--;
		}
	}

	while (cellX < D_8014D2F0) {
		obj = (Unk857E0Obj*)D_80259D90;
		for (i = 0; i != 0x96; i++, obj++) {
			type = obj->unk2;
			if ((s8)type == -1) {
				continue;
			}
			if (((s8)type == 4) || ((s8)type == 9) || ((s8)type == 0xE) || ((s8)type == 0x13) || ((s8)type == 0x18)) {
				func_80076868_85818(i);
			} else {
				obj->unk2 = type + 1;
			}

		}

		D_8014D2F0--;
		func_80076A10_859C0(0, (s16) D_8014D2F0, (s16) D_8014D2F4);
		func_80076A10_859C0(5, (s16) D_8014D2F0, (s16) (D_8014D2F4 + 1));
		func_80076A10_859C0(0xA, (s16) D_8014D2F0, (s16) (D_8014D2F4 + 2));
		func_80076A10_859C0(0xF, (s16) D_8014D2F0, (s16) (D_8014D2F4 + 3));
		func_80076A10_859C0(0x14, (s16) D_8014D2F0, (s16) (D_8014D2F4 + 4));
	}

	while (D_8014D2F0 < cellX) {
		obj = (Unk857E0Obj*)D_80259D90;
		for (i = 0; i != 0x96; i++, obj++) {
			type = obj->unk2;
			if ((s8)type == -1) {
				continue;
			}
			if (((s8)type == 0) || ((s8)type == 5) || ((s8)type == 0xA) || ((s8)type == 0xF) || ((s8)type == 0x14)) {
				func_80076868_85818(i);
			} else {
				obj->unk2 = type - 1;
			}

		}

		D_8014D2F0++;
		func_80076A10_859C0(4, (s16) (D_8014D2F0 + 4), (s16) D_8014D2F4);
		func_80076A10_859C0(9, (s16) (D_8014D2F0 + 4), (s16) (D_8014D2F4 + 1));
		func_80076A10_859C0(0xE, (s16) (D_8014D2F0 + 4), (s16) (D_8014D2F4 + 2));
		func_80076A10_859C0(0x13, (s16) (D_8014D2F0 + 4), (s16) (D_8014D2F4 + 3));
		func_80076A10_859C0(0x18, (s16) (D_8014D2F0 + 4), (s16) (D_8014D2F4 + 4));
	}

	while (cellZ < D_8014D2F4) {
		obj = (Unk857E0Obj*)D_80259D90;
		for (i = 0; i != 0x96; i++, obj++) {
			type = obj->unk2;
			if ((s8)type == -1) {
				continue;
			}
			if ((s8)type >= 0x14) {
				func_80076868_85818(i);
			} else {
				obj->unk2 = type + 5;
			}

		}

		D_8014D2F4--;
		func_80076A10_859C0(0, (s16) D_8014D2F0, (s16) D_8014D2F4);
		func_80076A10_859C0(1, (s16) (D_8014D2F0 + 1), (s16) D_8014D2F4);
		func_80076A10_859C0(2, (s16) (D_8014D2F0 + 2), (s16) D_8014D2F4);
		func_80076A10_859C0(3, (s16) (D_8014D2F0 + 3), (s16) D_8014D2F4);
		func_80076A10_859C0(4, (s16) (D_8014D2F0 + 4), (s16) D_8014D2F4);
	}

	while (D_8014D2F4 < cellZ) {
		obj = (Unk857E0Obj*)D_80259D90;
		for (i = 0; i != 0x96; i++, obj++) {
			type = obj->unk2;
			if ((s8)type == -1) {
				continue;
			}
			if ((s8)type < 5) {
				func_80076868_85818(i);
			} else {
				obj->unk2 = type - 5;
			}

		}

		D_8014D2F4++;
		func_80076A10_859C0(0x14, (s16) D_8014D2F0, (s16) (D_8014D2F4 + 4));
		func_80076A10_859C0(0x15, (s16) (D_8014D2F0 + 1), (s16) (D_8014D2F4 + 4));
		func_80076A10_859C0(0x16, (s16) (D_8014D2F0 + 2), (s16) (D_8014D2F4 + 4));
		func_80076A10_859C0(0x17, (s16) (D_8014D2F0 + 3), (s16) (D_8014D2F4 + 4));
		func_80076A10_859C0(0x18, (s16) (D_8014D2F0 + 4), (s16) (D_8014D2F4 + 4));
	}

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(&D_80031160), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_PASS2);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);

	obj = (Unk857E0Obj*) D_80259D90;
	for (; obj < (Unk857E0Obj*) &D_80259D90[0x96]; obj++) {
		if (obj->unk0 >= 0xE) {
			continue;
		}
		type = obj->unk2;
		if (type == -1) {
			continue;
		}
		if (type < 5) {
			if ((obj->unk1 >> 2) < (camZ - (cellZ << 2))) {
				continue;
			}
		} else if (type >= 0x14) {
			if ((obj->unk1 >> 2) >= ((camZ - ((cellZ + 4) << 2)) + 0x10)) {
				continue;
			}
		}

		if ((type == 0) || (type == 5) || (type == 0xA) || (type == 0xF) || (type == 0x14)) {
			if ((obj->unk1 & 3) < (camX - (cellX << 2))) {
				continue;
			}
		} else if ((type == 4) || (type == 9) || (type == 0xE) || (type == 0x13) || (type == 0x18)) {
			if ((obj->unk1 & 3) >= ((camX - ((cellX + 4) << 2)) + 0x10)) {
				continue;
			}
		}

		i = (s32)&obj->matrix;
		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(&D_80031160), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(i), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		gSPDisplayList(D_8005BB2C++, obj->unk8);


	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetTextureLOD(D_8005BB2C++, G_TL_LOD);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_TRILERP, G_CC_MODULATEIDECALA);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH);

	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);

	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0x0100, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, 1, G_TX_NOMIRROR | G_TX_WRAP, 4, 1);
	gDPSetTileSize(D_8005BB2C++, 1, 0, 0, 0x3C, 0x3C);

	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 2, 0x0140, 2, 0, G_TX_NOMIRROR | G_TX_WRAP, 3, 2, G_TX_NOMIRROR | G_TX_WRAP, 3, 2);
	gDPSetTileSize(D_8005BB2C++, 2, 0, 0, 0x1C, 0x1C);

	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, 0x0150, 3, 0, G_TX_NOMIRROR | G_TX_WRAP, 2, 3, G_TX_NOMIRROR | G_TX_WRAP, 2, 3);
	gDPSetTileSize(D_8005BB2C++, 3, 0, 0, 0x0C, 0x0C);

	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, 0x0154, 4, 0, G_TX_NOMIRROR | G_TX_WRAP, 1, 4, G_TX_NOMIRROR | G_TX_WRAP, 1, 4);
	gDPSetTileSize(D_8005BB2C++, 4, 0, 0, 0x04, 0x04);

	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, 0x0156, 5, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 5, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 5);
	gDPSetTileSize(D_8005BB2C++, 5, 0, 0, 0, 0);

	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 5, G_TX_RENDERTILE, G_ON);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(&D_80031160), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	prevType = -1;
	end = (Unk857E0Obj*)&D_80259D90[150];
	obj = (Unk857E0Obj*) D_80259D90;
	for (; obj != end; obj++) {
		if (obj->unk0 < 0xE) {
			continue;
		}
		type = obj->unk2;
		if (type == -1) {
			continue;
		}
		if (type < 5) {
			if ((obj->unk1 >> 2) < (camZ - (cellZ << 2))) {
				continue;
			}
		} else if (type >= 0x14) {
			if ((obj->unk1 >> 2) >= ((camZ - ((cellZ + 4) << 2)) + 0x10)) {
				continue;
			}
		}

		if ((type == 0) || (type == 5) || (type == 0xA) || (type == 0xF) || (type == 0x14)) {
			if ((obj->unk1 & 3) < (camX - (cellX << 2))) {
				continue;
			}
		} else if ((type == 4) || (type == 9) || (type == 0xE) || (type == 0x13) || (type == 0x18)) {
			if ((obj->unk1 & 3) >= ((camX - ((cellX + 4) << 2)) + 0x10)) {
				continue;
			}
		}

		i = (s32)obj->vertices;
		if (prevType != obj->unk0) {
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, obj->unk8);

			gDPLoadSync(D_8005BB2C++);

			if (((OutsideTreeStyle (*)[2])D_8013BB14_14AAC4)[currentLevel - 1][obj->unk0 - 14].flags != 0) {
				gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1372, 0);

				gDPSetTextureLOD(D_8005BB2C++, G_TL_LOD);

				gDPSetCombineMode(D_8005BB2C++, G_CC_TRILERP, G_CC_MODULATEIDECALA);
			} else {
				gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 0);

				gDPSetTextureLOD(D_8005BB2C++, G_TL_TILE);

				gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIDECALA, G_CC_PASS2);
			}

			prevType = obj->unk0;
		}

		gSPVertex(D_8005BB2C++, K0_TO_PHYS(i), 4, 0);

		gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 1, 2, 3, 0);


	}

	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK | G_LIGHTING);
	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
	gDPPipeSync(D_8005BB2C++);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_PASS2);
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_8007764C_865FC.s")
#endif

u16 func_80078530_874E0(s16 arg0, s16 arg1) {
	u8 temp_v1;
	
	arg0 += 0x80;
	arg1 += 0x80;
	
	if (D_80221A30[arg1 >> 2][arg0 >> 2] == 0xFF) {
		return 0U;
	}

	return D_8021FA30[D_80221A30[arg1 >> 2][arg0 >> 2]][((arg1 & 3) << 2) + (arg0 & 3)];
}

u16 *func_800785B4_87564(s16 arg0, s16 arg1, s32 *arg2) {
	s16 t4;
	s16 t1;
	u8 v1;

	t1 = (s16)((arg1 + 0x8000) >> 8);
	t4 = (s16)((arg0 + 0x8000) >> 8);

	v1 = D_80221A30[t1 >> 2][t4 >> 2];
	if (v1 == 0xFF) {
		return NULL;
	}

	*arg2 = (arg0 & 0x80) ? 1 : 0;
	if (arg1 & 0x80) {
		*arg2 += 2;
	}

	return &D_8021FA30[v1][(t1 & 3) * 4 + (t4 & 3)];
}

// https://decomp.me/scratch/AHGPz
// CURRENT(5)
s16 func_80078678_87628(u16 *arg0, s32 arg1, s32 arg2)
{
  s16 temp_t7;
  arg1 = arg1 * 4;
  temp_t7 = (*arg0 >> arg1) & 0xF;
  if (((temp_t7 - 1) % 3) == 0)
  {
	*arg0 = *arg0 + (arg2 << arg1);
	return temp_t7 + arg2;
  }
  return -1;
}

void func_800786CC_8767C(u16* arg0, s32 arg1) {
	*arg0 &= ~(0xF << (arg1 * 4));
}

void func_800786EC_8769C(u16* arg0, s32 arg1) {
	s32 temp_v1;
	u16 temp_v0;

	temp_v0 = *arg0;
	temp_v1 = arg1 * 4;
	if ((((s32) temp_v0 >> temp_v1) & 0xF) >= 0xE) {
		*arg0 = temp_v0 & ~(0xF << temp_v1);
	}
}

void func_80078720_876D0(AlienInstance *alien)
{
	s32 sp44;
	s32 sp40;
	u16 *v0;
	s32 gap1;
	s32 gap2;
	s32 gap3;
	s32 gap4;
	s32 gap5;
	s32 sp1C;
	s32 sp20;

	sp44 = alien->unk10;
	sp40 = alien->unk14;
	sp1C = alien->unk30;

	if (sp44 == sp1C)
	{
		v0 = func_800785B4_87564(sp44, sp40, &sp20);
		if (v0 != NULL)
		{
			func_800786EC_8769C(v0, 2);
		}

		v0 = func_800785B4_87564((sp44 - 1), sp40, &sp20);
		if (v0 != NULL)
		{
			func_800786EC_8769C(v0, 1);
		}
	}
	else
	{
		v0 = func_800785B4_87564(sp44, sp40, &sp20);

		if (v0 != NULL)
		{
			func_800786EC_8769C(v0, 0);
		}
		v0 = func_800785B4_87564(sp44, (sp40 - 1), &sp20);
		if (v0 != NULL)
		{
			func_800786EC_8769C(v0, 3);
		}
	}
}

s32 func_80078828_877D8(s16 arg0, s16 arg1, u16 arg2, s32 arg3) {
    s32 sp3C;
    u16* sp38;
    s32 style;
    s32 sp30;
    s16 sp2E;
    s16 sine;
    s16 sp2A;
    s16 unused0;
    s16 unused1;
    s16 unused2;
    s16 unused3;
    s16 cosine;

    sp38 = func_800785B4_87564(arg0, arg1, &sp3C);
    if (sp38 == NULL) {
        return 0;
    }

    sp30 = func_80078BC8_87B78(arg0, arg1);
    if (sp30 == -1) {
        func_800786CC_8767C(sp38, sp3C);
        return 1;
    }

    style = (arg2 + 0x2000) >> 14;
    if (((arg3 != 0) && (((s16 (*)[16])D_8013BC0C_14ABBC)[currentLevel][D_80259D90[sp30].unk0] >= 0x11)) ||
        ((arg3 == 0) && (((s16 (*)[16])D_8013BC0C_14ABBC)[currentLevel][D_80259D90[sp30].unk0] >= 0x15)) || (((s16 (*)[16])D_8013BC0C_14ABBC)[currentLevel][D_80259D90[sp30].unk0] == 2)) {
        return 0;
    }

    if (D_80259D90[sp30].unk0 >= 0xE) {
        if ((((sp3C == 0) || (sp3C == 3)) &&
             ((style == 0) || (2 == style))) ||
            (((sp3C == 1) || (sp3C == 2)) &&
             ((1 == style) || (style == 3)))) {
            return 0;
        }
    }

    sp2E = (s16) (func_800B84D0_C7480(arg0, arg1) >> 8);
    cosine = coss(arg2);
    sine = sins(arg2);
    style = (s16) (func_800B84D0_C7480(
                        (s16) ((((f64) (f32) cosine / 32768.0) * 100.0) + (f64) arg0),
                        (s16) ((((f64) (f32) sine / 32768.0) * 100.0) + (f64) arg1)) >> 8);
    sp2A = (s16) (90.0 - ((((f64) (f32) func_80003824_4424(100.0f, (f32) (style - sp2E))) * 180.0) / 32768));

    if (D_80259D90[sp30].unk0 < 0xE) {
        func_80076918_858C8(sp30, arg2, sp2A, 2);
    } else {
        func_80076918_858C8(sp30, arg2, (s16) ((f64) ((f32) sp2A * 32768.0f) / 180.0), 3);
    }

    func_800786CC_8767C(sp38, sp3C);
    return 1;

}

s32 func_80078B58_87B08(s16 arg0, s16 arg1) {
	s32 sp24;
	s32 temp_t0;
	s32 value;
	u16 *ptr;

	ptr = func_800785B4_87564(arg0, arg1, &sp24);
	if (ptr == NULL) {
		return -1;
	}
	temp_t0 = sp24 * 4;
	value = (s32) (*ptr & (0xF << temp_t0)) >> temp_t0;
	if (value >= 0xE) {
		return -1;
	}
	return value;
}

s32 func_80078BC8_87B78(s16 arg0, s16 arg1) {
    s32 i;
    s32 x;
    s32 z;

    arg0 >>= 7;
    arg1 >>= 7;
    for (i = 0; i != 0x96; i++) {
        if ((s8) D_80259D90[i].unk2 != -1) {
            x = D_80259D90[i].unk4;
            z = D_80259D90[i].unk6;
            if ((arg0 == (x >> 7)) && (arg1 == (z >> 7))) {
                return i;
            }
        }
    }
    return -1;
}

s32 func_80078D64_87D14(s16 arg0, s16 arg1, s32 arg2) {
    s32 i;
    s32 x;
    s32 z;
    arg0 >>= 8;
    arg1 >>= 8;
    for (i = 0; i < 0x96; i++) {
        if (((Unk857E0Obj*) D_80259D90)[i].unk2 != -1) {
            x = ((Unk857E0Obj*) D_80259D90)[i].unk4;
            z = ((Unk857E0Obj*) D_80259D90)[i].unk6;
            if ((arg0 == (x >> 8)) && (arg1 == (z >> 8)) && (arg2 == ((Unk857E0Obj*) D_80259D90)[i].unk3)) {
                return i;
            }
        }
    }
    return -1;
}

void func_80078F5C_87F0C(s16 arg0, s16 arg1, u16 arg2) {
	u16 temp_v1;
	s32 temp_v0;

	temp_v0 = func_80078BC8_87B78(arg0, arg1);
	temp_v1 = arg2;
	if (temp_v0 != -1) {
		if (temp_v1 == 0) {
			func_80076868_85818(temp_v0);
			return;
		}
		D_80259D90[temp_v0].unk8 = (void *)D_80222A30[temp_v1];
	}
}

s32 func_80078FE0_87F90(u8 *arg0, VehicleInstance *arg1, s32 *arg2) {
	s32 ctx10;
	s32 ctx14;
	f64 direction;
	VehicleType *type;
	f32 speedFactor;
	s32 scaled;
    s32 result;
    f64 force;

	type = func_800FAFB8_109F68(arg1);
	if ((currentLevel == 3) && ((arg1->unk1A == 9) || (arg1->unk1A == 8))) {
		return 1;
	}

	if (arg1->unkD == -2) {
		speedFactor = func_800FB11C_10A0CC(arg1);
	} else {
		if ((-(s32)arg1->unk12) < arg1->unk12) {
			speedFactor = (f32)arg1->unk12;
		} else {
			speedFactor = (f32)(-arg1->unk12);
		}
	}

	scaled = (s32)((f32)type->unk32 * speedFactor);

	ctx10 = ((Unk857E0Obj*)arg0)->unk10;
	ctx14 = ((Unk857E0Obj*)arg0)->unk14;

	if ((((Unk857E0Obj*)arg0)->unk3 == 1) || (((Unk857E0Obj*)arg0)->unk3 == 2)) {
		if (((f64)(f32)coss((u16)arg1->unkE) / 32768.0) >= 0.0) {
			direction = (f64)(f32)coss((u16)arg1->unkE) / 32768.0;
		} else {
			direction = -((f64)(f32)coss((u16)arg1->unkE) / 32768.0);
		}

		if (arg1->unk0 < ctx10) {
			*arg2 = 0;
		} else {
			*arg2 = 0x8000;
		}
	} else {
		if (((f64)(f32)sins((u16)arg1->unkE) / 32768.0) >= 0.0) {
			direction = (f64)(f32)sins((u16)arg1->unkE) / 32768.0;
		} else {
			direction = -((f64)(f32)sins((u16)arg1->unkE) / 32768.0);
		}

		if (arg1->unk4 < ctx14) {
			*arg2 = 0x4000;
		} else {
			*arg2 = -0x4000;
		}
	}

	force = scaled;
    result = direction * force;
    if (((result > 30000) && (((Unk857E0Obj*)arg0)->unk0 == 15)) ||
        ((result > 150000) && (((Unk857E0Obj*)arg0)->unk0 == 14))) {
        return 1;
    }
    return 0;
}

s32 func_800792E0_88290(u8 *arg0, s32 arg1) {
	s32 sp44;
	s32 pad1;
	s32 sp3C;
	s32 pad2;
	s16 pad3;
	s16 sp34;
	u16 s1;

	s1 = (u16)arg1;
	sp44 = ((Unk80259D90*)arg0)->unk22;
	sp34 = coss(s1);
	sp3C = 0x4000 - func_80003824_4424(100.0f, (f32)((func_800B84D0_C7480((s16)(s32)((((f64)(f32)sp34 / 32768.0) * 100.0) + (f64)((Unk80259D90*)arg0)->unk20), (s16)(s32)((((f64)(f32)sins(s1) / 32768.0) * 100.0) + (f64)((Unk80259D90*)arg0)->unk24)) >> 8) - sp44));

	sp44 = ((Unk80259D90*)arg0)->unk42;
	sp34 = coss(s1);
	sp44 = 0x4000 - func_80003824_4424(100.0f, (f32)((func_800B84D0_C7480((s16)(s32)((((f64)(f32)sp34 / 32768.0) * 100.0) + (f64)((Unk80259D90*)arg0)->unk40), (s16)(s32)((((f64)(f32)sins(s1) / 32768.0) * 100.0) + (f64)((Unk80259D90*)arg0)->unk44)) >> 8) - sp44));

	if (sp3C >= sp44) {
		sp3C = sp44;
	}

	func_80076918_858C8(((Unk80259D90*)arg0) - D_80259D90, arg1, sp3C, 3);
	func_80078720_876D0((AlienInstance*)arg0);
	return 1;
}

s32 func_800794F8_884A8(s32 arg0, s32 arg1) {
	return 0;
}
