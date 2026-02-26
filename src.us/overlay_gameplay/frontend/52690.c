#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800821E0_52690.s")

/* Empty stub - stores three arguments and returns */
void func_800823C8_52878(s32 arg0, s32 arg1, s32 arg2) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800823D8_52888.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80082868_52D18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800829E4_52E94.s")

// transitionToNextLevel
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80082CBC_5316C.s")

/* 3x3 matrix-vector multiply: out = mat^T * vec */
void func_80083610_53AC0(f32 *mat, f32 *vec, f32 *out) {
	out[0] = vec[0] * mat[0] + vec[1] * mat[3] + vec[2] * mat[6];
	out[1] = vec[0] * mat[1] + vec[1] * mat[4] + vec[2] * mat[7];
	out[2] = vec[0] * mat[2] + vec[1] * mat[5] + vec[2] * mat[8];
}

/* 3D vector cross product: arg2 = arg0 x arg1 */
void func_800836A4_53B54(f32 *arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg0[1] * arg1[2] - arg1[1] * arg0[2];
	arg2[1] = arg0[2] * arg1[0] - arg1[2] * arg0[0];
	arg2[2] = arg0[0] * arg1[1] - arg1[0] * arg0[1];
}

/* Divides a 3D vector by a scalar: arg2 = arg1 / arg0 */
void func_80083714_53BC4(f32 arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg1[0] / arg0;
	arg2[1] = arg1[1] / arg0;
	arg2[2] = arg1[2] / arg0;
}

/* Returns the squared magnitude of a 3D vector */
f32 func_8008373C_53BEC(f32 *arg0) {
	f32 x = arg0[0];
	f32 y = arg0[1];
	f32 z = arg0[2];
	return (x * x) + (y * y) + (z * z);
}

/* Computes the magnitude (length) of a 3D vector */
f32 func_80083764_53C14(f32 *arg0) {
	f32 sqMag = func_8008373C_53BEC(arg0);
	if (sqMag != 0.0) {
		sqMag = sqrtf(sqMag);
	}
	return sqMag;
}

/* Normalizes vector arg0 into arg1; if magnitude is 0, copies arg0 to arg1 */
void func_800837B4_53C64(f32 *arg0, f32 *arg1) {
	f32 mag;

	mag = func_80083764_53C14(arg0);
	if (mag == 0.0) {
		*(Vec3f*)arg1 = *(Vec3f*)arg0;
	} else {
		func_80083714_53BC4(mag, arg0, arg1);
	}
}

/* Computes the dot product of two 3D vectors */
#ifdef NON_MATCHING
f32 func_80083820_53CD0(f32 *arg0, f32 *arg1) {
	return (arg0[0] * arg1[0]) + (arg0[1] * arg1[1]) + (arg1[2] * arg0[2]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083820_53CD0.s")
#endif

/* Subtracts two 3D vectors: arg2 = arg0 - arg1 */
void func_80083850_53D00(f32 *arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg0[0] - arg1[0];
	arg2[1] = arg0[1] - arg1[1];
	arg2[2] = arg0[2] - arg1[2];
}

/* Adds two 3D vectors: arg2 = arg0 + arg1 */
void func_80083884_53D34(f32 *arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg1[0] + arg0[0];
	arg2[1] = arg1[1] + arg0[1];
	arg2[2] = arg1[2] + arg0[2];
}

/* Multiplies a 3D vector by a scalar: arg2 = arg1 * arg0 */
void func_800838B8_53D68(f32 arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg1[0] * arg0;
	arg2[1] = arg1[1] * arg0;
	arg2[2] = arg1[2] * arg0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800838E0_53D90.s")

/* Copies a 3D float vector to D_800DE100 and truncates another to s16 shorts */
void func_800839F0_53EA0(f32 *arg0, f32 *arg1) {
	D_800DE100[0] = arg0[0];
	D_800DE100[1] = arg0[1];
	D_800DE100[2] = arg0[2];
	D_800DE10C = (s16)arg1[0];
	D_800DE10E = (s16)arg1[1];
	D_800DE110 = (s16)arg1[2];
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083A58_53F08.s")

/* Marks a D_800DE130 entry as freed (0xFA), decrements count, updates min index */
void func_80083B14_53FC4(u8 arg0) {
	if (D_800DE130[arg0].unk0 != 0xFA) {
		D_800DE130[arg0].unk0 = 0xFA;
		D_800DE838--;
		if (arg0 < D_800DE839) {
			D_800DE839 = arg0;
		}
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083B7C_5402C.s")

/* Allocate 3 linked entries for arg0; free on failure, return first idx or -3 */
s16 func_80083C98_54148(u8 arg0) {
	s16 result, idx2;

	result = func_80083B7C_5402C(arg0);
	if (result != -3) {
		idx2 = func_80083B7C_5402C(arg0);
		if (idx2 == -3) {
			func_80083DBC_5426C(result, arg0);
			result = -3;
		} else if (func_80083B7C_5402C(arg0) == -3) {
			func_80083DBC_5426C(result, arg0);
			func_80083DBC_5426C(idx2, arg0);
			result = -3;
		}
	}
	return result;
}

/* Calls func_80083B7C twice; if second call returns -3, calls func_80083DBC */
s16 func_80083D50_54200(u8 arg0) {
	s16 result;

	result = func_80083B7C_5402C(arg0);
	if (result != -3) {
		if (func_80083B7C_5402C(arg0) == -3) {
			func_80083DBC_5426C(result, arg0);
			result = -3;
		}
	}
	return result;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083DBC_5426C.s")

#ifdef NON_MATCHING
/* Free 3 linked entries from D_800DE840 chain starting at arg0 */
void func_80083F8C_5443C(s16 arg0, u8 arg1) {
	s16 next1, next2;

	if (arg0 >= 0 && arg0 < 450 && arg1 < 150) {
		next1 = D_800DE840[arg0].unk4;
		func_80083DBC_5426C(arg0, arg1);
		next2 = D_800DE840[next1].unk4;
		func_80083DBC_5426C(next1, arg1);
		func_80083DBC_5426C(next2, arg1);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083F8C_5443C.s")
#endif

/* Calls func_80083DBC twice if arg0 and arg1 are in range */
void func_8008404C_544FC(s16 arg0, u8 arg1) {
	if (arg0 >= 0 && arg0 < 0x1C2 && arg1 < 0x96) {
		s16 val = D_800DE840[arg0].unk4;
		func_80083DBC_5426C(arg0, arg1);
		func_80083DBC_5426C(val, arg1);
	}
}

/* Calls func_80083DBC for each active unk4 iteration of a D_800DE130 entry */
void func_800840C4_54574(u8 arg0) {
	if (D_800DE130[arg0].unk4 > 0) {
		do {
			func_80083DBC_5426C(D_800DE130[arg0].unk6, arg0);
		} while (D_800DE130[arg0].unk4 > 0);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008412C_545DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80084324_547D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80084508_549B8.s")

/* Decrement timer and update positions or free entry */
void func_8008472C_54BDC(u8 arg0) {
	s16 *ptr;

	ptr = (s16 *)((u8 *)&D_800DE840[D_800DE130[arg0].unkA] + 8);
	ptr[6]--;
	if (ptr[6] == 0) {
		func_800840C4_54574(arg0);
		func_80083B14_53FC4(arg0);
	} else {
		ptr[0] += ptr[3];
		ptr[1] += ptr[4];
		ptr[2] += ptr[5];
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800847E4_54C94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800853A8_55858.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800857D4_55C84.s")

/* Clamps a value to the range [1, 80] */
#ifdef NON_MATCHING
s32 func_80085CB8_56168(s16 arg0) {
	if (arg0 >= 0x51) {
		return 0x50;
	}
	if (arg0 == 0) {
		arg0 = 1;
	}
	return arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80085CB8_56168.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80085CEC_5619C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80085EA8_56358.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80085FF0_564A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80086528_569D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80086C58_57108.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800870AC_5755C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800878A4_57D54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800885A0_58A50.s")

/* Stores high bytes of 3 u16 args at triple-indirect D_800DE840 chain offset +8 */
void func_80088A38_58EE8(u16 arg0, u16 arg1, u16 arg2, s16 arg3) {
	u8 *ptr;

	if (arg3 != -3) {
		ptr = (u8 *)&D_800DE840[D_800DE840[D_800DE840[arg3].unk4].unk4] + 8;
		ptr[3] = arg0 >> 8;
		ptr[4] = arg1 >> 8;
		ptr[5] = arg2 >> 8;
	}
}

/* Sets 3 bytes at struct offset 8 via triple-indirect D_800DE840 chain */
void func_80088ACC_58F7C(s8 arg0, s8 arg1, s8 arg2, s16 arg3) {
	s8 *dst;

	if (arg3 != -3) {
		dst = (s8*)&D_800DE840[D_800DE840[D_800DE840[arg3].unk4].unk4] + 8;
		dst[0] = arg0;
		dst[1] = arg1;
		dst[2] = arg2;
	}
}

/* Sets 3 bytes at struct offset 14 via triple-indirect D_800DE840 chain */
void func_80088B54_59004(s8 arg0, s8 arg1, s8 arg2, s16 arg3) {
	s8 *dst;

	if (arg3 != -3) {
		dst = (s8*)&D_800DE840[D_800DE840[D_800DE840[arg3].unk4].unk4] + 8;
		dst[6] = arg0;
		dst[7] = arg1;
		dst[8] = arg2;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80088BDC_5908C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80088E18_592C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800891F8_596A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80089388_59838.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800894A0_59950.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80089764_59C14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800899F0_59EA0.s")

/* Traverses D_800DE840 linked list, incrementing unk11 and updating unk2 */
void func_80089AB4_59F64(void) {
	s16 idx;
	u8 *ptr;

	idx = D_800DE81A;
	while (idx != -5 && idx != -6) {
		ptr = (u8 *)&D_800DE840[idx] + 8;
		if (D_800DE840[idx].unk11 < 4) {
			D_800DE840[idx].unk2 += (u8)ptr[0xB];
		}
		ptr[9]++;
		idx = D_800DE840[idx].unk4;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80089B38_59FE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008A094_5A544.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008A460_5A910.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008A5F8_5AAA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008A928_5ADD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008AEC8_5B378.s")

/* Allocate entry with given params; returns allocId or 0xFB on failure */
/* NON_MATCHING: stack frame 0x20 instead of 0x28 (8 byte difference), all instructions match */
#ifdef NON_MATCHING
u8 func_8008B08C_5B53C(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6) {
	s16 idx;
	u8 allocId;

	allocId = func_80083A58_53F08(7);
	if (allocId != 0xFB) {
		idx = func_80083B7C_5402C(allocId);
		if (idx == -3) {
			func_80083B14_53FC4(allocId);
			return 0xFB;
		}
		D_800DE840[idx].unk8 = arg0;
		D_800DE840[idx].unkA = arg1;
		D_800DE840[idx].unkC = arg2;
		D_800DE840[idx].unkE = arg3;
		D_800DE840[idx].unkF = arg4;
		D_800DE840[idx].unk10 = arg5;
		D_800DE840[idx].unk11 = 1;
		*(u8 *)&D_800DE840[idx].unk12 = arg6;
	}
	return allocId;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008B08C_5B53C.s")
#endif

/* Sets 3D position (s16 x,y,z) in D_800DE840 entry indexed via D_800DE130 */
void func_8008B148_5B5F8(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	s16 idx = D_800DE130[arg3].unk6;
	D_800DE840[idx].unk8 = arg0;
	D_800DE840[idx].unkA = arg1;
	D_800DE840[idx].unkC = arg2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008B19C_5B64C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008B264_5B714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008B534_5B9E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008B7BC_5BC6C.s")

/* Calls func_800840C4 and func_80083B14 if D_800DE130[arg0].unk0 == 9 */
void func_8008BAD8_5BF88(u8 arg0) {
	if (arg0 != 0xFB && D_800DE130[arg0].unk0 == 9) {
		func_800840C4_54574(arg0);
		func_80083B14_53FC4(arg0);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008BB38_5BFE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008BC00_5C0B0.s")

/* Allocate D_800DE840 entry and fill all fields from params */
void func_8008C73C_5CBEC(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4, u8 arg5, s16 arg6, s16 arg7, s16 arg8, u8 arg9) {
	s32 idx;

	idx = func_80083B7C_5402C(0x92);
	if (idx != -3) {
		D_800DE840[idx].unk8 = arg0;
		D_800DE840[idx].unkA = arg1;
		D_800DE840[idx].unkC = arg2;
		D_800DE840[idx].unk12 = arg6;
		D_800DE840[idx].unk14 = arg7;
		D_800DE840[idx].unk16 = arg8;
		D_800DE840[idx].unk2 = 0xF;
		D_800DE840[idx].unkE = arg3;
		D_800DE840[idx].unkF = arg4;
		D_800DE840[idx].unk10 = arg5;
		D_800DE840[idx].unk18 = arg9;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008C7E4_5CC94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008C8E0_5CD90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008CC3C_5D0EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008CDC8_5D278.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008D14C_5D5FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008D510_5D9C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008D98C_5DE3C.s")

/* Clears unkA field in all 50 D_800E1980 entries and resets globals */
void func_8008DBEC_5E09C(void) {
	u8 i;

	for (i = 0; i < 50; i++) {
		D_800E1980[i].unkA = 0;
	}
	D_800E1D68 = 0;
	D_800E1D69 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008DC34_5E0E4.s")

/* Sets three byte fields (offsets 6,7,8) in a D_800E1980 entry */
void func_8008DDF0_5E2A0(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
	if (arg0 != 0xFF) {
		D_800E1980[arg0].unk6 = arg1;
		D_800E1980[arg0].unk7 = arg2;
		D_800E1980[arg0].unk8 = arg3;
	}
}

/* Sets a byte field at offset 0xD in a 20-byte struct array entry */
void func_8008DE44_5E2F4(u8 arg0, u8 arg1) {
	if (arg0 != 0xFF) {
		(&D_800E198D)[(s32)arg0 * 20] = arg1;
	}
}

/* Sets a signed byte field at offset 0x12 in a 20-byte struct array entry */
void func_8008DE7C_5E32C(u8 arg0, s8 arg1) {
	if (arg0 != 0xFF) {
		(&D_800E1992)[(s32)arg0 * 20] = arg1;
	}
}

/* Sets two signed byte fields (unk10, unk11) in a D_800E1980 struct entry */
void func_8008DEB8_5E368(u8 arg0, s8 arg1, s8 arg2) {
	if (arg0 != 0xFF) {
		D_800E1980[arg0].unk10 = arg1;
		D_800E1980[arg0].unk11 = arg2;
	}
}

/* Sets a byte field at offset 0xF in a 20-byte struct array entry */
void func_8008DF08_5E3B8(u8 arg0, u8 arg1) {
	if (arg0 != 0xFF) {
		(&D_800E198F)[(s32)arg0 * 20] = arg1;
	}
}

/* Clears unkA for a slot, updates min index D_800E1D69, decrements D_800E1D68 */
void func_8008DF40_5E3F0(u8 arg0) {
	if (arg0 != 0xFF) {
		D_800E1980[arg0].unkA = 0;
		if (arg0 < D_800E1D69) {
			D_800E1D69 = arg0;
		}
		D_800E1D68--;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008DFA0_5E450.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008E158_5E608.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008E9DC_5EE8C.s")

/* Allocates an entry and sets DE7C/DEB8 fields */
void func_8008EAB0_5EF60(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4) {
	u8 slot;

	slot = func_8008DC34_5E0E4(arg0, arg1, arg2, 5, 10);
	func_8008DE7C_5E32C(slot, arg4);
	func_8008DEB8_5E368(slot, arg3, 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008EB20_5EFD0.s")

/* Sets D_800DE0EB flag around a call to func_8008EB20 */
void func_8008ED44_5F1F4(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, s32 arg5) {
	D_800DE0EB = 1;
	func_8008EB20_5EFD0(arg0, arg1, arg2, arg3, arg4, arg5, 0);
	D_800DE0EB = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008EDB4_5F264.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008EEC4_5F374.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008F1E0_5F690.s")

/* Initializes a 12-byte struct entry at D_800DE130[arg1] */
void func_8008F534_5F9E4(u8 arg0, u8 arg1) {
	D_800DE130[arg1].unk0 = arg0;
	D_800DE130[arg1].unk1 = 0;
	D_800DE130[arg1].unk4 = 0;
	D_800DE130[arg1].unk6 = -6;
	D_800DE130[arg1].unk8 = -6;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008F574_5FA24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008F704_5FBB4.s")

/* Calls func_8008F704 for each active slot in D_800DE0BE/BF */
void func_8008FA60_5FF10(void) {
	if (D_800DE0BE != 0xFF) {
		func_8008F704_5FBB4(D_800DE0BE);
	}
	if (D_800DE0BF != 0xFF) {
		func_8008F704_5FBB4(D_800DE0BF);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008FAAC_5FF5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008FBD4_60084.s")

/* Appends a display list command and calls func_8008D98C */
#ifdef NON_MATCHING
s32 func_8008FD9C_6024C(void) {
	Gfx *dl;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w1 = (s32)&D_80031160 & 0x1FFFFFFF;
	dl->words.w0 = 0x01020040;
	return func_8008D98C_5DE3C(&D_8005BB2C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008FD9C_6024C.s")
#endif

/* Compute delta positions and call update chain */
void func_8008FDF0_602A0(void) {
	D_800DE0F0[0] = (f32)D_800DE10C - D_800DE100[0];
	D_800DE0F0[1] = (f32)D_800DE10E - D_800DE100[1];
	D_800DE0F0[2] = (f32)D_800DE110 - D_800DE100[2];
	func_8008CC3C_5D0EC();
	func_8008DFA0_5E450();
	func_8008EEC4_5F374();
	func_8008F1E0_5F690();
	func_8008FAAC_5FF5C();
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008FE98_60348.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80090648_60AF8.s")
