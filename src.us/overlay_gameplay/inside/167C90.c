#include <ultra64.h>
#include "common.h"


#ifdef NON_MATCHING
// AI - Reset all camera/view state variables to default values
void func_8007FBD0_167C90(void) {
	D_800E747C = 0;
	D_800E73AC = 1;
	D_800E73B0 = 1.0f;
	D_800E73D4 = 0;
	D_800E7398 = 0;
	D_800E73DE = D_800E73DF = 1;
	D_80047F80 = 0;
	func_800808D0_168990();
	D_800E742C = 0;
	D_800E7480 = 0;
	D_800E7390 = 0;
	D_800E739C = 0;
	D_800E73A4 = 0;
	D_800E73A0 = 0;
	D_800E73A8 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_8007FBD0_167C90.s")
#endif

// https://decomp.me/scratch/2g3yf
// CURRENT(1920) 
#ifdef NON_MATCHING
// AI - Main camera update dispatch: select view mode, set up projection and look-at matrices
void func_8007FC74_167D34(void) {
	u16 sp56;
	f32 sp50;
	f32 sp4C;
	f32 temp_f0;

	D_80047F80 = 4;
	if ((D_800E65A8 & 0x80) || (D_800E65A8 & 0x40)) {
		if (func_800703EC_1584AC() != 4) {
			D_800E73DF = 1;
		}
	} else if ((D_800E7398 != 0) && (D_80034484 == 0) && (func_8001A114_1AD14() != 0xFF)) {
		D_800E73DF = 3;
	} else if ((u8)D_800E73DF != 2 && (u8)D_800E73DF != 5 && (u8)D_800E73DF != 6) {
		D_800E73DF = D_80047F80;
	}

	if (((u8)D_800E73DE == 1) && ((u8)D_800E73DF == 4)) {
		func_800808D0_168990();
	}

	switch ((u8)D_800E73DF - 1) {
		case 2: // Talking to NPC view
			func_800804E0_1685A0();
			break;

		case 0: // Entering/Exiting view
			func_800806F8_1687B8();
			break;

		case 3: // Normal view
			if (!(D_800E65A8 & 2)) {
				func_80080A38_168AF8();
			}
			break;

		case 1:
			func_80080770_168830();
		case 4: // Debug camera
			func_80081764_169824();
			break;

		case 5:
		func_80081B58_169C18();
			break;
		default:
			break;
	}

	D_800A096C_188A2C = D_800A0968_188A28;
	D_800E73DE = (u8)D_800E73DF;

	if ((D_800E659C == D_8008DDF4_175EB4) && (D_800E65A4 == D_8008DDFC_175EBC)) {
		D_8008DDF4_175EB4 -= 10.0f;
		D_8008DDFC_175EBC -= 10.0f;
	}

	sp50 = D_800E659C - D_8008DDF4_175EB4;
	sp4C = D_800E65A4 - D_8008DDFC_175EBC;
	temp_f0 = sqrtf((sp50 * sp50) + (sp4C * sp4C));

	if ((D_800E7398 == 0) && ((u8)D_800E73DF != 4) && ((u8)D_800E73DF != 5)) {
		D_800E65A0 = 50.0f - (temp_f0 / 6.0f);
	}

	D_8008DDF0_175EB0 = ((((f32)func_80003824_4424(sp4C, sp50)) * D_800A4F20_18CFE0) / 32768.0);
	if (D_8008DDF0_175EB0 < 0.0f) {
		D_8008DDF0_175EB0 += 360.0f;
	}
	if (D_8008DDF0_175EB0 > 360.0f) {
		D_8008DDF0_175EB0 = ((s32)D_8008DDF0_175EB0 % 360);
	}

	D_800E6A74 = 0x4000 - D_800E73E0;
	func_80073A50_15BB10();

	guPerspective((Mtx *)D_8005BB38, &sp56, 40.0f, 1.3333334f, D_800A097C_188A3C, D_800A0978_188A38, 1.0f);
	gSPPerspNormalize(D_8005BB2C++, &sp56);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	D_8005BB38 += 0x40;

	guLookAt((Mtx *)D_8005BB38, D_8008DDF4_175EB4, D_8008DDF8_175EB8, D_8008DDFC_175EBC, D_800E659C, D_800E65A0,
			 D_800E65A4, 0.0f, 1.0f, 0.0f);
	guMtxL2F(D_800E7350, (Mtx *)D_8005BB38);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
	D_8005BB38 += 0x40;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_8007FC74_167D34.s")
#endif

// AI - Store three view-related values (NPC target coordinates)
void func_80080168_168228(u16 arg0, u16 arg1, u16 arg2) {
	D_800E73D8 = arg0;
	D_800E73DA = arg1;
	D_800E73DC = arg2;
}

// CURRENT(8197)
#ifdef NON_MATCHING
// AI - Compute camera position from spherical coords (yaw/pitch/distance) with collision smoothing
void func_80080190_168250(Vec3f *arg0, Vec3f *arg1, s16 arg2, s16 arg3, f32 arg4) {
	volatile f32 sp74;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s32 pad6;
	s32 pad7;
	s32 pad8;
	s32 pad9;
	volatile f32 sp70;
	volatile f32 sp68;
	volatile f32 sp64;
	f32 temp_f0;
	f32 temp_f0_2;
	f32 temp_f2;
	f32 temp_f16;
	f32 var_f0;
	f32 var_f14;
	f32 var_f16;
	f32 var_f2;
	u16 temp_a0;

	temp_f16 = arg0->x;
	temp_a0 = (u16) arg2;
	sp74 = temp_f16;
	sp68 = (f32) ((f64) (f32) sins(temp_a0) / 32768.0);
	sp64 = (f32) ((f64) (f32) coss(temp_a0) / 32768.0);
	sp70 = (f32) ((f64) (f32) sins((u16) arg3) / 32768.0);
	var_f2 = arg4;
	var_f16 = temp_f16;
	temp_f0 = (f32) ((f64) (f32) coss((u16) arg3) / 32768.0);
	arg0->x = temp_f0 * sp68;
	arg0->y = -sp70;
	arg0->z = temp_f0 * sp64;
	if (var_f2 == 0.0f) {
		var_f2 = 0.5f;
	}
	temp_f0_2 = -var_f2;
	arg0->x *= temp_f0_2;
	arg0->y *= temp_f0_2;
	arg0->z *= temp_f0_2;
	arg0->x += arg1->x;
	arg0->y += arg1->y;
	arg0->z += arg1->z;

	if (D_800A0964_188A24 != 0) {
		if (var_f16 < arg0->x) {
			sp74 = var_f16;
			if (func_8007C698_164758((s32) (D_800E6A78.unk4C + 96.0f), (s32) D_800E6A78.unk54) != 0) {
				if (D_800E7390 == 0) {
					D_800E7430.x = D_800E73F0.x;
				} else {
					D_800E73F0.x = D_800E7430.x;
				}
				D_800E7390 = 1;
				var_f16 = sp74;
				arg0->x = var_f16;
				return;
			}
		}

		if (arg0->x < var_f16) {
			sp74 = var_f16;
			if (func_8007C698_164758((s32) (D_800E6A78.unk4C - 96.0f), (s32) D_800E6A78.unk54) != 0) {
				if (D_800E7390 == 0) {
					D_800E7430.x = D_800E73F0.x;
				} else {
					D_800E73F0.x = D_800E7430.x;
				}
				D_800E7390 = 1;
				var_f16 = sp74;
				arg0->x = var_f16;
				return;
			}
		}

		if (D_800E7390 != 0) {
			D_800E7430.x += (D_800E73F0.x - D_800E7430.x) / 8.0f;
			temp_f2 = arg0->x;
			var_f16 += (temp_f2 - var_f16) / 8.0f;
			if (D_800E7430.x <= D_800E73F0.x) {
				var_f14 = D_800E73F0.x - D_800E7430.x;
			} else {
				var_f14 = -(D_800E73F0.x - D_800E7430.x);
			}
			if (var_f14 < 1.0f) {
				if (temp_f2 <= var_f16) {
					var_f0 = var_f16 - temp_f2;
				} else {
					var_f0 = -(var_f16 - temp_f2);
				}
				if (var_f0 < 1.0f) {
					D_800E7390 = 0;
				}
			}
			D_800E73F0.x = D_800E7430.x;
			arg0->x = var_f16;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80080190_168250.s")
#endif

// CURRENT(9407)
#ifdef NON_MATCHING
// AI - Talking-to-NPC camera: smoothly interpolate view toward the NPC's position
void func_800804E0_1685A0(void) {
	f32 sp0;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f2;
	f32 temp_f4;
	f64 temp_f10;
	f64 temp_f6;
	s32 temp_t1;
	s32 temp_t6;
	u16 temp_t2;
	u16 temp_t3;
	u8 *temp_v0;

	temp_t6 = D_800E7394[0x28];
	temp_v0 = &D_800E7394[0x28];
	temp_f6 = (f64) temp_t6;
	if (temp_t6 < 0) {
		temp_f6 += 4294967296.0;
	}
	temp_t1 = temp_v0[1];
	temp_f12 = ((temp_v0[6] >> 1) & 0x7F) + 50;
	temp_f2 = (f32) ((temp_f6 - 0.5) * 96.0);
	temp_f10 = (f64) temp_t1;
	if (temp_t1 < 0) {
		temp_f10 += 4294967296.0;
	}
	temp_f14 = (f32) ((temp_f10 - 0.5) * 96.0);

	if ((f64) D_800E73B0 < 1.0) {
		D_8008DDF4_175EB4 = ((temp_f2 - D_800E73B8.x) * D_800E73B0) + D_800E73B8.x;
		sp0 = D_800E73B8.y;
		D_8008DDF8_175EB8 = ((temp_f12 - sp0) * D_800E73B0) + sp0;
		sp0 = D_800E73B8.z;
		D_8008DDFC_175EBC = ((temp_f14 - sp0) * D_800E73B0) + sp0;
		D_800E73B0 += D_800A0974_188A34;
	} else {
		D_8008DDF4_175EB4 = temp_f2;
		D_8008DDF8_175EB8 = temp_f12;
		D_8008DDFC_175EBC = temp_f14;
		D_800E73B0 = 1.0f;
	}

	temp_t2 = (u16) D_800E73D8;
	temp_t3 = (u16) D_800E73DA;
	temp_f4 = (f32) temp_t3;
	D_800E659C = (f32) ((((f64) ((f32) temp_t2 + D_800E6A78.unk4C)) * 0.5) - 96.0);
	D_800E65A0 = 50.0f;
	if (temp_t3 < 0) {
		temp_f4 += 4294967296.0f;
	}
	D_800E65A4 = (f32) ((((f64) (temp_f4 + D_800E6A78.unk54)) * 0.5) - 96.0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_800804E0_1685A0.s")
#endif

// AI - Entering/exiting view: set a fixed camera position relative to the player
void func_800806F8_1687B8(void) {
	f32 temp_f0;

	temp_f0 = D_800E6A78.unk4C - 96.0f;
	D_8008DDF4_175EB4 = temp_f0 - 96.0f;
	D_8008DDF8_175EB8 = 75.0f;
	D_8008DDFC_175EBC = (D_800E6A78.unk54 + 48.0f) - 96.0f;
	D_800E659C = temp_f0;
	D_800E65A0 = 50.0f;
	D_800E65A4 = D_800E6A78.unk54 - 96.0f;
}

// AI - Normal chase-cam: position camera behind the player based on yaw
void func_80080770_168830(void) {
	D_800E659C = D_800E6A78.unk4C - 96.0f;
	D_800E65A0 = 50.0f;
	D_800E65A4 = D_800E6A78.unk54 - 96.0f;
	D_8008DDF4_175EB4 = (f32) (((f64) D_800E6A78.unk4C - (((f64) (f32) coss((u16) (D_800E6A78.unkE + 0x2000)) / 32768.0) * D_800A4F28_18CFE8)) - 96.0);
	D_8008DDF8_175EB8 = 75.0f;
	D_8008DDFC_175EBC = (f32) (((f64) D_800E6A78.unk54 - (((f64) (f32) sins((u16) (D_800E6A78.unkE + 0x2000)) / 32768.0) * D_800A4F30_18CFF0)) - 96.0);
}

// AI - Set view mode to talking-to-NPC
void func_800808AC_16896C(void) { D_800E73DF = 2; }

// AI - Reset view mode to default
void func_800808BC_16897C(void) { D_800E73DF = D_80047F80; }

// AI - Initialize camera orbit parameters (yaw, pitch, distance) and position
void func_800808D0_168990(void) {
	D_800E73E0 = 0xC000 - D_800E6A86;
	D_800E73E8 = 144.0f;
	D_800E73E4 = 0xB60;
	D_800E73E4 = func_80003680_4280(D_800A0980_188A40 / D_800E73E8);
	D_800E73F0.x = D_800E6A78.unk4C - 96.0f;
	D_800E73F0.y = 40.0f;
	D_800E73F0.z = D_800E6A78.unk54 - 96.0f;
	osSyncPrintf(&D_800A4DC0_18CE80, &D_800E73F0, (f64) D_800E6A78.unk4C);
	D_800E7400.x = 0.0f;
	D_800E7400.y = 0.0f;
	D_800E7400.z = 0.0f;
	if (D_800A0964_188A24 != 0) {
		D_800A0964_188A24 = 0;
		func_80080190_168250(&D_800E7410, &D_800E73F0, D_800E73E0, D_800E73E4, D_800E73E8);
		D_800A0964_188A24 = 1;
	} else {
		func_80080190_168250(&D_800E7410, &D_800E73F0, D_800E73E0, D_800E73E4, D_800E73E8);
	}
	D_800E6A74 = 0x4000 - D_800E73E0;
}

#ifdef NON_MATCHING
// AI - Normal view loop: handle first-person/third-person toggle and smooth camera tracking
void func_80080A38_168AF8(void) {
	f32 temp_f0;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s32 pad6;
	s32 pad7;
	s32 pad8;
	s32 pad9;
	f32 temp_f2;
	f32 temp_f14;
	f32 temp_f12;

	if (D_800E7390 == 0) {
		D_800E73F0.x = D_800E6AC4 - 96.0f;
	}

	D_800E73F0.y = 40.0f;
	D_800E73F0.z = D_800E6ACC - 96.0f;
	temp_f14 = D_800E73F0.x - D_800E7410.x;
	temp_f0 = D_800E73F0.y - D_800E7410.y;
	temp_f2 = D_800E73F0.z - D_800E7410.z;
	temp_f0 = sqrtf((temp_f14 * temp_f14) + (temp_f0 * temp_f0) + (temp_f2 * temp_f2));

	if (D_800A0964_188A24 != 0) {
		D_800A0980_188A40 = 192.0f;
	} else {
		D_800A0980_188A40 = 40.0f;
	}

	if (D_800E73E8 <= temp_f0) {
		temp_f12 = temp_f0 - D_800E73E8;
	} else {
		temp_f12 = -(temp_f0 - D_800E73E8);
	}

	if ((f64) temp_f12 > 0.5) {
		D_800E73E8 = temp_f0;
	}

	if (D_800E73E8 > 192.0f) {
		D_800E73E8 = 192.0f;
	} else if (D_800E73E8 < 96.0f) {
		D_800E73E8 = 96.0f;
	}

	if ((isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_C_UP) != 0) && !(D_800E65A8 & 2)) {
		if (D_800A0964_188A24 != 0) {
			D_800A0964_188A24 = 0;
		} else {
			D_800A0964_188A24 = 1;
		}
	}

	if (D_800A0964_188A24 != 0) {
		if (D_800E739C == D_800E73A0) {
			D_800E73A4 = D_800E739C;
		}
	} else {
		D_800E73A8 = 0;
	}

	if (D_800A0964_188A24 != 0) {
		D_800E73E0 = D_800E739C;
	} else {
		D_800E73E0 = func_80003824_4424(temp_f2, temp_f14);
	}

	D_800E73E4 = func_80003680_4280(D_800A0980_188A40 / D_800E73E8);

	if (D_800E7480 == 0) {
		func_80080E28_168EE8();
	}

	if (((D_800A0964_188A24 == 0) && (currentControllerStates[CONTROLLER_ONE].stick_y < 0)) || (D_800E7480 != 0)) {
		func_8008247C_16A53C();
	}

	D_800E73F0.x = D_800E6AC4 - 96.0f;
	func_80080190_168250(&D_800E7410, &D_800E73F0, D_800E73E0, D_800E73E4, D_800E73E8);

	if (D_800A0964_188A24 == 0) {
		func_80080FD8_169098();
	}

	D_800E7410.y = D_800E73F0.y + D_800A0980_188A40;
	D_8008DDF4_175EB4 = D_800E7410.x;
	D_8008DDF8_175EB8 = D_800E7410.y;
	D_8008DDFC_175EBC = D_800E7410.z;
	D_800E659C = D_800E73F0.x;
	D_800E65A0 = D_800E73F0.y;
	D_800E65A4 = D_800E73F0.z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80080A38_168AF8.s")
#endif

// AI - Compute shortest signed angle difference between two 16-bit angles with wrapping
s32 func_80080DA8_168E68(s32 arg0, s32 arg1) {
	s32 v1;

	if (arg0 < 0) arg0 += 0x10000;
	if (arg1 < 0) arg1 += 0x10000;
	if (arg0 >= 0x8000) arg0 += 0xFFFF0000;
	if (arg1 >= 0x8000) arg1 += 0xFFFF0000;
	v1 = arg1 - arg0;
	while (v1 < -0x8000) v1 += 0x10000;
	while (v1 >= 0x8000) v1 += 0xFFFF0000;
	return v1;
}

#ifdef NON_MATCHING
// AI - Auto-center camera yaw toward player's facing direction when idle
void func_80080E28_168EE8(void) {
	s16 sp1E;
	s32 delta;
	s32 var_v1;

	D_800E7486 = 1;
	if (D_800A0964_188A24 == 0 && currentControllerStates[0].stick_x == 0 && currentControllerStates[0].stick_y == 0) {
		sp1E = 0x4000 - D_800E6A86;
		D_800E7486 = func_800813B4_169474(D_800E73E0, sp1E, *(s32 *) &D_800E73E8);
		if (D_800E7486 & 0xFF) {
			delta = func_80080DA8_168E68(sp1E, D_800E73E0);
			if (delta < 0) {
				var_v1 = -delta;
			} else {
				var_v1 = delta;
			}
			if (D_800A4F38 < (f64) var_v1) {
				if (D_800E7486 == 1) {
					if (delta < 0) {
						var_v1 = -delta;
					} else {
						var_v1 = delta;
					}
					sp1E = (s16) (s32) ((f64) var_v1 / 24.0 + (f64) D_800E73E0);
				} else {
					if (delta < 0) {
						var_v1 = -delta;
					} else {
						var_v1 = delta;
					}
					sp1E = (s16) (s32) ((f64) D_800E73E0 - (f64) var_v1 / 24.0);
				}
			}
			D_800E73E0 = sp1E;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80080E28_168EE8.s")
#endif

#ifdef NON_MATCHING
// AI - Camera-wall collision check: prevent camera from clipping through walls
s16 func_80080FD8_169098(void) {
	f32 sp84;
	f32 sp80;
	f32 sp7C;
	f32 sp78;
	f32 sp74;
	f32 sp70;
	f32 sp6C;
	f32 sp68;
	f32 sp64;
	f32 sp60;
	f32 sp5C;
	f32 sp58;
	f32 sp54;
	f32 sp50;
	f32 sp4C;
	f32 sp48;
	s32 sp28[8];
	s32 sp24;

	if ((currentControllerStates[0].stick_x == 0 && currentControllerStates[0].stick_y == 0 &&
		 D_800E7480 == 0 && D_800E7486 != 0 && (s16) (0x4000 - D_800E6A86) == D_800E73E0) ||
		D_800E73E8 < 100.0f) {
		sp84 = D_800E73F0.x - D_800E7410.x;
		sp7C = D_800E73F0.z - D_800E7410.z;
		sp78 = sqrtf((sp84 * sp84) + ((D_800E73F0.y - D_800E7410.y) * (D_800E73F0.y - D_800E7410.y)) + (sp7C * sp7C));
		sp24 = (u16) func_80003824_4424(sp7C, sp84);
		if (sp78 < 192.0f) {
			sp68 = (f32) ((f64) D_800E7410.x - (f64) (f32) sins(sp24) / 32768.0);
			sp70 = (f32) ((f64) D_800E7410.z - (f64) (f32) coss(sp24) / 32768.0);
			sp48 = D_800E6A78.unk4C;
			sp54 = (sp68 + 96.0f) - D_800E6A78.unk4C;
			sp50 = D_800E6A78.unk54;
			sp5C = (sp70 + 96.0f) - D_800E6A78.unk54;
			func_8007B65C_16371C((Vec3f *) &sp48, (Vec3f *) &sp54, 10.0f, (Unk8007CAA8_6A40 *) sp28);
			if (sp28[7] == 0) {
				D_800E7410.x = sp68;
				D_800E7410.z = sp70;
			}
		}
	}
	return (s16) (0x4000 - D_800E6A86);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80080FD8_169098.s")
#endif

// CURRENT(1620)
#ifdef NON_MATCHING
// AI - Map yaw angle to a compass-direction marker index for the debug map
s32 func_800811DC_16929C(s16 arg0, s32 arg1) {
	f32 temp_f2;
	s32 var_v1;

	temp_f2 = (f32) ((f64) arg0 / D_800A4F40_18D000);
	if (arg1 != 0) {
		temp_f2 += 15.0f;
		if (temp_f2 < 0.0f) {
			temp_f2 += 360.0f;
		}
		var_v1 = (u32) (temp_f2 / 30.0f);
		var_v1 &= 0xFF;
		return var_v1;
	}

	temp_f2 = (f32) ((f64) temp_f2 + D_800A4F48_18D008);
	if (temp_f2 < 0.0f) {
		temp_f2 += 360.0f;
	}
	var_v1 = (u32) (temp_f2 / 45.0f);
	var_v1 &= 0xFF;
	return var_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_800811DC_16929C.s")
#endif

#ifdef NON_MATCHING
// AI - Check if camera yaw direction is clear by scanning collision-map markers
s32 func_800813B4_169474(s16 arg0, s16 arg1, f32 arg2) {
	s32 var_s0;
	s32 var_s1;
	UnkS8Pair *var_s2;
	s32 sp50;
	s32 sp2C;
	u8 sp5F;
	s32 sp58;
	s32 sp54;
	s8 var_a3;
	u8 temp_v0;
	s16 temp_x;
	s16 temp_y;
	s32 count;
	s32 done;
	s16 x;
	s16 y;

	if (arg2 > 155.0f) {
		var_s0 = 1;
		var_s1 = 0xC;
		var_s2 = D_800A09A4_188A64;
	} else {
		var_s0 = 0;
		var_s1 = 8;
		var_s2 = D_800A09BC_188A7C;
	}

	if (func_80080DA8_168E68(arg1, arg0) < 0) {
		sp50 = 1;
	} else {
		sp50 = 0;
	}

	sp5F = func_800811DC_16929C(arg0, var_s0);
	temp_v0 = func_800811DC_16929C(arg1, var_s0);

	sp58 = 1;
	temp_x = (s16)(D_800E6A78.unk4C / 96.0f);
	temp_y = (s16)(D_800E6A78.unk54 / 96.0f);

	sp2C = sp5F;
	var_a3 = (s8) sp2C;

	count = 0;
	done = 0;
	do {
		count = (count + 1) & 0xFF;
		x = (s16)(var_s2[var_a3].unk0 + temp_x);
		if (x <= 0 || D_800E6460 < x) {
			sp58 = 0;
			break;
		}
		y = (s16)(var_s2[var_a3].unk1 + temp_y);
		if (y <= 0 || D_800E6464 < y) {
			sp58 = 0;
			break;
		}
		if (D_800E6468[(D_800E6460 + 2) * y + x] != 0xFF) {
			sp58 = 0;
			break;
		}
		if (var_a3 == (s8)(temp_v0 & 0xFF)) {
			done = 0;
			break;
		}
		var_a3 = (s8)((var_a3 + 1) % var_s1);
	} while (!done);

	var_a3 = (s8) sp2C;
	sp54 = 1;
	count = 0;
	do {
		count = (count + 1) & 0xFF;
		x = (s16)(var_s2[var_a3].unk0 + temp_x);
		if (x <= 0 || D_800E6460 < x) {
			sp54 = 0;
			break;
		}
		y = (s16)(var_s2[var_a3].unk1 + temp_y);
		if (y <= 0 || D_800E6464 < y) {
			sp54 = 0;
			break;
		}
		if (D_800E6468[(D_800E6460 + 2) * y + x] != 0xFF) {
			sp54 = 0;
			break;
		}
		if (var_a3 == (s8)(temp_v0 & 0xFF)) {
			break;
		}
		if (var_a3 == 0) {
			var_a3 = (s8) var_s1;
		}
		var_a3 = (s8)((var_a3 - 1) % var_s1);
	} while (!done);

	if ((sp54 != 0) && (sp58 != 0)) {
		if (sp50 != 0) {
			return 1;
		} else {
			return 2;
		}
	} else if (sp58 != 0) {
		return 1;
	} else if (sp54 != 0) {
		return 2;
	} else {
		return 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_800813B4_169474.s")
#endif

// CURRENT(2495)
#ifdef NON_MATCHING
// AI - Debug/free camera: controller 2 manually controls camera position and rotation
void func_80081764_169824(void) {
	u16 buttons;
	f32 one;

	buttons = currentControllerStates[CONTROLLER_TWO].button;
	one = 1.0f;

	if (buttons & 0x2000) {
		if (buttons & 0x800) {
			D_800E73F0.z += one;
		}
		if (buttons & 0x400) {
			D_800E73F0.z -= one;
		}
	} else {
		if (buttons & 0x800) {
			D_800E73F0.y += one;
		}
		if (buttons & 0x400) {
			D_800E73F0.y -= one;
		}
	}

	if (buttons & 0x200) {
		D_800E73F0.x += one;
	}
	if (buttons & 0x100) {
		D_800E73F0.x -= one;
	}

	if (buttons & 2) {
		D_800E73E0 -= 0xB6;
	}
	if (buttons & 1) {
		D_800E73E0 += 0xB6;
	}

	if (buttons & 8) {
		D_800E73E4 += 0xB6;
	}
	if (buttons & 4) {
		D_800E73E4 -= 0xB6;
	}

	if (buttons & 0x8000) {
		D_800E73E8 += one;
	}
	if (buttons & 0x4000) {
		D_800E73E8 -= one;
	}

	func_800033D4_3FD4(0x20, 1);

	buttons = currentControllerStates[CONTROLLER_TWO].button;
	if (buttons & 0x20) {
		osSyncPrintf(&D_800A4DDC_18CE9C);
		osSyncPrintf(&D_800A4DE0_18CEA0);
		osSyncPrintf(&D_800A4E14_18CED4, (f64) D_800E73F0.x, (f64) D_800E73F0.y, (f64) D_800E73F0.z, D_800E73E0, D_800E73E4, (f64) D_800E73E8);
		osSyncPrintf(&D_800A4E30_18CEF0);
	}

	func_80080190_168250(&D_800E7410, &D_800E73F0, D_800E73E0, D_800E73E4, D_800E73E8);
	D_8008DDF4_175EB4 = D_800E7410.x;
	D_8008DDF8_175EB8 = D_800E7410.y * 2.0f;
	D_8008DDFC_175EBC = D_800E7410.z;

	D_800E659C = D_800E73F0.x;
	D_800E65A0 = D_800E73F0.y;
	D_800E65A4 = D_800E73F0.z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80081764_169824.s")
#endif

// AI - Store pointer to camera waypoint table
void func_80081A18_169AD8(s32 arg0) {
	D_800E7488 = (Unk169EC8Entry *) arg0;
}

// AI - Save current camera state for cutscene/transition
void func_80081A24_169AE4(void) {
	D_800E73DF = 6;
	D_800E7430 = D_800E73F0;
	D_800E744C = D_800E73E0;
	D_800E744E = D_800E73E4;
	D_800E7450 = (s16) D_800E73E8;
	D_800E7474 = 1.0f;
}

// AI - Restore saved camera state after cutscene/transition
void func_80081AA8_169B68(void) {
	D_800E73DF = D_80047F80;
	D_800E73F0 = D_800E7430;
	D_800E73E0 = D_800E744C;
	D_800E73E4 = D_800E744E;
	D_800E73E8 = (f32) D_800E7450;
	func_80080190_168250(&D_800E7410, &D_800E73F0, D_800E73E0, D_800E73E4, D_800E73E8);
}

#ifdef NON_MATCHING
// AI - Smoothly interpolate camera between two saved states (cutscene transition)
void func_80081B58_169C18(void) {
	s32 temp;

	if ((f64) D_800E7474 < 1.0) {
		D_800E73F0.x = ((D_800E7458.x - D_800E73C8.x) * D_800E7474) + D_800E73C8.x;
		D_800E73F0.y = ((D_800E7458.y - D_800E73C8.y) * D_800E7474) + D_800E73C8.y;
		D_800E73F0.z = ((D_800E7458.z - D_800E73C8.z) * D_800E7474) + D_800E73C8.z;

		temp = (s32) ((f32) D_800E746C + ((f32) (D_800E7464 - D_800E746C) * D_800E7474));
		if (temp >= 0x8001) {
			D_800E73E0 = temp + 0xFFFF0000;
		} else if (temp < -0x8000) {
			D_800E73E0 = temp + 0x10000;
		} else {
			D_800E73E0 = temp;
		}

		D_800E73E4 = (s16) (s32) ((f32) D_800E7470 + ((f32) (D_800E7468 - D_800E7470) * D_800E7474));
		D_800E73E8 = (f32) D_800E7472 + ((f32) (D_800E746A - D_800E7472) * D_800E7474);
		D_800E7474 += D_800E7478;
	} else if ((f64) D_800E7478 == 0.0) {
		D_800E73F0 = D_800E7458;
		D_800E73E0 = (s16) D_800E7464;
		D_800E73E4 = D_800E7468;
		D_800E73E8 = (f32) D_800E746A;
		D_800E7478 = 0.0f;
	}

	func_80080190_168250(&D_800E7410, &D_800E73F0, D_800E73E0, D_800E73E4, D_800E73E8);
	D_8008DDF4_175EB4 = D_800E7410.x;
	D_8008DDF8_175EB8 = D_800E7410.y;
	D_8008DDFC_175EBC = D_800E7410.z;
	D_800E659C = D_800E73F0.x;
	D_800E65A0 = D_800E73F0.y;
	D_800E65A4 = D_800E73F0.z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80081B58_169C18.s")
#endif

// AI - Load a camera waypoint entry from the waypoint table
void func_80081E08_169EC8(s16 arg0) {
	Unk169EC8Entry *entry = &D_800E7488[arg0];

	D_800E73F0.x = entry->unk0;
	D_800E73F0.y = entry->unk4;
	D_800E73F0.z = entry->unk8;
	D_800E73E0 = (s16) entry->unkC;
	D_800E73E4 = entry->unk10;
	D_800E73E8 = (f32) entry->unk12;
	D_800E7474 = 1.0f;
}

// AI - Set up smooth camera interpolation between two waypoints over a given duration
void func_80081E90_169F50(s16 arg0, s16 arg1, s16 arg2) {
	Unk169EC8Entry *v0;
	Unk169EC8Entry *a3;

	D_800E7474 = 0.0f;
	v0 = &D_800E7488[arg0];
	a3 = &D_800E7488[arg1];
	D_800E7478 = (f32) (1.0 / (f64) (f32) arg2);
	D_800E73C8.x = v0->unk0;
	D_800E73C8.y = v0->unk4;
	D_800E73C8.z = v0->unk8;
	D_800E746C = v0->unkC;
	D_800E7470 = v0->unk10;
	D_800E7472 = v0->unk12;
	D_800E7458.x = a3->unk0;
	D_800E7458.y = a3->unk4;
	D_800E7458.z = a3->unk8;
	D_800E7464 = a3->unkC;
	D_800E7468 = a3->unk10;
	D_800E746A = a3->unk12;
}

#ifdef NON_MATCHING
// AI - Render an ASCII debug map showing collision grid, player position, and camera markers
void func_80081F98_16A058(void) {
	u8 sp58[0x9C50];
	u8 temp;
	u8 firstMarker;
	u8 secondMarker;
	s16 playerX;
	s16 playerY;
	s16 markerYaw;
	s16 row;
	s16 x;
	s16 y;
	s32 col;
	s32 width;
	s32 height;
	UnkS8Pair *markerOffsets;

	height = D_800E6464 + 2;
	if (height > 0) {
		width = D_800E6460 + 2;
		for (row = 0; row < height; row++) {
			if (width > 0) {
				for (col = 0; col < width; col++) {
					temp = D_800E6468[(row * width) + col];
					if (temp == 0xFF) {
						sp58[(row * 0xC8) + col] = 0x5F;
					} else if (temp == 1) {
						sp58[(row * 0xC8) + col] = 0x31;
					} else {
						sp58[(row * 0xC8) + col] = 0x2E;
					}
				}
			}
		}
	}

	playerX = (s16) (D_800E6A78.unk4C / 96.0f);
	playerY = (s16) (D_800E6A78.unk54 / 96.0f);
	sp58[(playerY * 0xC8) + playerX] = 0x50;
	markerYaw = 0x4000 - D_800E6A78.unkE;

	if (D_800E73E8 > 155.0f) {
		markerOffsets = D_800A09A4_188A64;
		for (col = 0; col < 0x18; col += 2) {
			x = markerOffsets[col / 2].unk0 + playerX;
			y = markerOffsets[col / 2].unk1 + playerY;
			if ((x >= 0) && (y >= 0)) {
				sp58[(y * 0xC8) + x] = 0x4F;
			}
		}

		firstMarker = func_800811DC_16929C(D_800E73E0, 1);
		secondMarker = func_800811DC_16929C(markerYaw, 1);

		x = markerOffsets[firstMarker].unk0 + playerX;
		y = markerOffsets[firstMarker].unk1 + playerY;
		if ((x >= 0) && (y >= 0)) {
			sp58[(y * 0xC8) + x] = 0x5E;
		}

		x = markerOffsets[secondMarker].unk0 + playerX;
		y = markerOffsets[secondMarker].unk1 + playerY;
		if ((x >= 0) && (y >= 0)) {
			sp58[(y * 0xC8) + x] = 0x21;
		}
	} else {
		markerOffsets = D_800A09BC_188A7C;
		for (col = 0; col < 0x10; col += 2) {
			x = markerOffsets[col / 2].unk0 + playerX;
			y = markerOffsets[col / 2].unk1 + playerY;
			sp58[(y * 0xC8) + x] = 0x2A;
		}

		firstMarker = func_800811DC_16929C(D_800E73E0, 0);
		secondMarker = func_800811DC_16929C(markerYaw, 0);

		x = markerOffsets[firstMarker].unk0 + playerX;
		y = markerOffsets[firstMarker].unk1 + playerY;
		if ((x >= 0) && (y >= 0)) {
			sp58[(y * 0xC8) + x] = 0x5E;
		}

		x = markerOffsets[secondMarker].unk0 + playerX;
		y = markerOffsets[secondMarker].unk1 + playerY;
		if ((x >= 0) && (y >= 0)) {
			sp58[(y * 0xC8) + x] = 0x21;
		}
	}

	osSyncPrintf("\n");
	if (height > 0) {
		for (row = 0; row < height; row++) {
			width = D_800E6460 + 2;
			if (width > 0) {
				for (col = 0; col < width; col++) {
					osSyncPrintf("%c", D_800E6468[(row * D_800E6464) + col]);
				}
			}
			osSyncPrintf("\n");
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80081F98_16A058.s")
#endif

#ifdef NON_MATCHING
// AI - Camera wall avoidance: detect collisions and rotate camera to prevent clipping
void func_8008247C_16A53C(void) {
	s32 delta;
	s32 pad0;
	s32 pad1;
	s32 magnitude;
	Vec3f sp5C;
	Vec3f sp50;
	Unk8007CAA8_6A40 sp2C;
	s16 width;
	s16 tempA0;
	s16 tempA1;
	u8 sp6A;
	u8 sp6B;

	if (D_800E7480 != 0) {
		delta = func_80080DA8_168E68(D_800E7484, D_800E73E0);
		if (delta >= 0) {
			magnitude = delta;
		} else {
			magnitude = -delta;
		}

		if (magnitude < 0xB6) {
			D_800E7480 = 0;
			if (D_800A0964_188A24 == 0) {
				D_800E73E0 = D_800E7484;
			} else {
				D_800E73E0 = D_800E739C;
			}
		} else if (D_800A0964_188A24 == 0) {
			D_800E73E0 -= delta / 8;
		} else {
			D_800E73E0 = D_800E739C;
		}
		return;
	}

	sp5C.x = D_800E6A78.unk4C;
	sp5C.z = D_800E6A78.unk54;
	sp50.x = (D_800E7410.x + 96.0f) - D_800E6A78.unk4C;
	sp50.z = (D_800E7410.z + 96.0f) - D_800E6A78.unk54;
	func_8007B65C_16371C(&sp5C, &sp50, 10.0f, &sp2C);

	if (sp2C.unk1C != 0) {
		sp6B = sp2C.unkC;
		sp6A = sp2C.unkD;
		osSyncPrintf(&D_800A4E44_18CF04);

		if (sp2C.unkE < 5U) {
			switch (sp2C.unkE) {
				case 0:
					D_800E7480 = 1;
					width = D_800E6460 + 2;
					tempA0 = (s16) (sp6B + 1);
					if (D_800E6468[(width * (s16) (sp6A + 1)) + tempA0] != 0xFF) {
						D_800E7484 = 0;
					} else if (D_800E6468[(width * (s16) (sp6A - 1)) + tempA0] != 0xFF) {
						D_800E7484 = 0x7FFF;
					} else if (D_800E73F0.z < D_800E7410.z) {
						D_800E7484 = 0;
					} else {
						D_800E7484 = 0x7FFF;
					}
					osSyncPrintf(&D_800A4E6C_18CF2C);
					return;

				case 1:
					D_800E7480 = 1;
					width = D_800E6460 + 2;
					tempA0 = (s16) (sp6B - 1);
					if (D_800E6468[(width * (s16) (sp6A + 1)) + tempA0] != 0xFF) {
						D_800E7484 = 0;
					} else if (D_800E6468[(width * (s16) (sp6A - 1)) + tempA0] != 0xFF) {
						D_800E7484 = 0x7FFF;
					} else if (D_800E73F0.z < D_800E7410.z) {
						D_800E7484 = 0x7FFF;
					} else {
						D_800E7484 = 0;
					}
					osSyncPrintf(&D_800A4E7C_18CF3C);
					return;

				case 2:
					D_800E7480 = 1;
					width = D_800E6460 + 2;
					tempA0 = (s16) (sp6A - 1);
					tempA1 = tempA0;
					if (D_800E6468[(width * tempA0) + (s16) (sp6B - 1)] != 0xFF) {
						D_800E7484 = -0x4000;
					} else if (D_800E6468[(width * tempA1) + (s16) (sp6B + 1)] != 0xFF) {
						D_800E7484 = 0x4000;
					} else if (D_800E73F0.x < D_800E7410.x) {
						D_800E7484 = 0x4000;
					} else {
						D_800E7484 = -0x4000;
					}
					osSyncPrintf(&D_800A4E8C_18CF4C);
					return;

				case 3:
					D_800E7480 = 1;
					width = D_800E6460 + 2;
					tempA0 = (s16) (sp6A + 1);
					tempA1 = tempA0;
					if (D_800E6468[(width * tempA0) + (s16) (sp6B - 1)] != 0xFF) {
						D_800E7484 = -0x4000;
					} else if (D_800E6468[(width * tempA1) + (s16) (sp6B + 1)] != 0xFF) {
						D_800E7484 = 0x4000;
					} else if (D_800E73F0.x < D_800E7410.x) {
						D_800E7484 = -0x4000;
					} else {
						D_800E7484 = 0x4000;
					}
					osSyncPrintf(&D_800A4E9C_18CF5C);
					return;

				case 4:
					osSyncPrintf(&D_800A4EAC_18CF6C);
					return;
			}
		}
	} else if (D_800E7484 == D_800E73E0) {
		if (func_8007C698_164758((s32) D_800E7410.x, (s32) D_800E7410.z) != 0) {
			D_800E7480 = 1;
			D_800E7484 = (s16) (D_800E73E0 + 0x4000);
			osSyncPrintf(&D_800A4EC4_18CF84, D_800E7484);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_8008247C_16A53C.s")
#endif

// AI - Set up interior gameplay pointer tables (initialisation)
void func_80082AA0_16AB60(void) {
	func_80017AAC_186AC();
	D_80034460 = &D_800E7490;
	D_80034468 = (s32) &D_800EAD90;
	D_80034470 = (s32) &D_800EAE98;
	D_8006C550 = &D_800EAC90;
	D_80052AD8 = 0;
}

// AI - Set up interior gameplay pointer tables (re-entry)
void func_80082B04_16ABC4(void) {
	D_80034460 = &D_800E7490;
	D_80034468 = (s32) &D_800EAD90;
	D_80034470 = (s32) &D_800EAE98;
	D_8006C550 = &D_800EAC90;
	D_80034484 = 0;
}

// CURRENT(3045)
#ifdef NON_MATCHING
// AI - Handle interior gameplay: screen fade colors and entering/exiting state transitions
void func_80082B50_16AC10(void) {
	s32 temp_v0;

	if (D_800E65A8 & 1) {
		if (func_80017B78_18778() == 1) {
			D_800A0A1C_188ADC = D_80034484;
			D_800E7398 = 1;
			if (!(D_800E65A8 & 0x408)) {
				D_800E65A8 |= 2;
			}
		}

		if (func_80018A58_19658() != 0) {
			if (D_800A0A1C_188ADC != 0) {
				func_80018AEC_196EC(0x32, 0x32, 0x78);
			} else {
				func_80018AEC_196EC(0x78, 0x32, 0x78);
			}

			if (func_80018AA0_196A0() != 0) {
				D_80053BF4 = 0xFF;
				D_80053BF2 = D_80053BF4;
				D_80053BF0 = D_80053BF2;
				if (D_800A0A1C_188ADC != 0) {
					D_80053BF8 = 0x7F;
					D_80053BFA = 0xC8;
					D_80053BFC = 0xDC;
					D_80053BF6 = 0;
				} else {
					D_80053BF8 = 0xDC;
					D_80053BFA = 0xC8;
					D_80053BFC = 0x7F;
					D_80053BF6 = 0;
				}
				D_80053BFE = 0xFF;

				gDPPipeSync(D_8005BB2C++);
				func_80017CA4_188A4(0xFF, &D_80053BF4, &D_80053BF2);

				if (D_800A0A1C_188ADC != 0) {
					D_80053BF0 = 0x7F;
					D_80053BF2 = 0xC8;
					D_80053BF4 = 0xDC;
					D_80053BF6 = 0;
				} else {
					D_80053BF0 = 0xDC;
					D_80053BF2 = 0xC8;
					D_80053BF4 = 0x7F;
					D_80053BF6 = 0;
				}
				D_80053BFE = 0xFF;
				D_80053BFC = 0xFF;
				D_80053BFA = D_80053BFC;
				D_80053BF8 = D_80053BFA;

				if (func_80017B78_18778() == -1) {
					D_800E7398 = 0;
					temp_v0 = D_800E65A8 & ~2;
					D_800E65A8 = temp_v0;
					if (temp_v0 & 8) {
						func_8007AE40_162F00();
						temp_v0 = D_800E65A8 & ~8;
						D_800E65A8 = temp_v0;
					}
					if (temp_v0 & 0x1000) {
						temp_v0 &= ~0x1000;
						D_800E65A8 = temp_v0;
					}
					if (temp_v0 & 0x400) {
						D_800E65A8 = temp_v0 & ~0x400;
					}
				}

				gDPPipeSync(D_8005BB2C++);
				gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_MODULATEIA);
			}
		}
	}

	D_80052AD8 += 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80082B50_16AC10.s")
#endif
