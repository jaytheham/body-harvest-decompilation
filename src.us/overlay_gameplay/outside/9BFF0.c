#include <ultra64.h>
#include "common.h"
#include "884C0.h"

const char D_80141E80_150E30[] = "%s says I'm busy\n";						   // "%s says I'm busy\n"
const char D_80141E94_150E44[] = "nearest human %d @ %d,%d\n";				   // "nearest human %d @ %d,%d\n"
const char D_80141EB0_150E60[] = "Drone Hunter stops targeting building %d\n"; // "Drone Hunter stops targeting building %d\n"
const f64 D_80141EE0_150E90[] = {0.9};
const f64 D_80141EE8_150E98[] = {0.9};
const f64 D_80141EF0_150EA0[] = {0.9};
const f64 D_80141EF8_150EA8[] = {65.0};
const f64 D_80141F00_150EB0[] = {65.0};
const f32 D_80141F08_150EB8[] = {12000.0f};
const f64 D_80141F10_150EC0[] = {1000.0};
const f64 D_80141F18_150EC8[] = {1500.0};
const f64 D_80141F20_150ED0[] = {9.424777962};
const f64 D_80141F28_150ED8[] = {0.0};

Unk8014DD50 *D_8013C610_14B5C0[] = {(Unk8014DD50 *)0x8013C5E0, (Unk8014DD50 *)0x8013C5B0};

u8 D_8013C618_14B5C8[] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

u8 D_8013C620_14B5D0[0x18] = {
	0xA2,
	0x40,
	0x00,
	0x00,
	0x00,
	0x01,
	0x00,
	0x03,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x01,
	0x00,
	0x04,
};

u8 D_8013C638_14B5E8[0x20] = {
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x5D,
	0xC0,
	0x00,
	0x00,
	0x00,
	0x01,
	0x00,
	0x03,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x01,
	0x00,
	0x04,
};

u8 D_8013C658_14B608[0x20] = {
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0xE4,
	0xA8,
	0x00,
	0x00,
	0x00,
	0x01,
	0x00,
	0x03,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x36,
	0xB0,
	0x00,
	0x00,
	0x00,
	0x01,
	0x00,
	0x03,
};

u8 D_8013C678_14B628[0x20] = {
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x1B,
	0x58,
	0x00,
	0x00,
	0x00,
	0x01,
	0x00,
	0x03,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0xE4,
	0xA8,
	0x00,
	0x00,
	0x00,
	0x01,
	0x00,
	0x03,
};

u8 D_8013C698_14B648[0x20] = {
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x1F,
	0x40,
	0x00,
	0x00,
	0x00,
	0x01,
	0x00,
	0x03,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0xCD,
	0x38,
	0x00,
	0x00,
	0x00,
	0x01,
	0x00,
	0x03,
};

u8 D_8013C6B8_14B668[0x20] = {
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0xE6,
	0x9C,
	0x00,
	0x00,
	0x00,
	0x01,
	0x00,
	0x03,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x1D,
	0x4C,
	0x00,
	0x00,
	0x00,
	0x01,
	0x00,
	0x03,
};

u8 D_8013C6D8_14B688[8] = {0};

u32 D_8013C6E0_14B690[] = {
	0x00000BB8,
	0x00010005,
	0x00000000,
	0x00000000,
	0x0000E4A8,
	0x00010003,
	0x00000000,
	0x00000000,
	0x00000000,
	0x0001000A,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000005,
	0x00000000,
	0x00000000,
	0x0000F060,
	0x00010003,
	0x00000000,
	0x00000000,
	0x00000000,
	0x0001000A,
};

Unk8014DD50 *D_8013C738_14B6E8 = (Unk8014DD50 *)0x8013C6D8;

u32 D_8013C73C_14B6EC[] = {
	0x8013C708,
	0x0000FFE2,
	0x00000000,
	0x0000F060,
	0x0101000A,
	0x00000000,
	0x00000000,
	0x00000000,
	0x0000000F,
	0x00000000,
	0x00000000,
	0x00000000,
	0x01010008,
	0x00000000,
	0x00000000,
	0x00000FA0,
	0x0001000A,
	0x00000000,
	0x00000000,
	0x00000000,
	0x0000000F,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00010008,
};

u32 D_8013C7A0_14B750[] = {
	0x8013C740,
	0x8013C770,
	0x0000001E,
	0x00000000,
	0x00000FA0,
	0x01010012,
	0x0000001E,
	0x00000000,
	0x00000FA0,
	0x0000000C,
	0x00000000,
	0x00000000,
	0x00000000,
	0x0000000F,
	0x00000000,
	0x00000000,
	0x00000000,
	0x01010008,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000008,
	0x00000000,
	0x00000000,
	0x0000F830,
	0x00010012,
	0x00000000,
	0x00000000,
	0x0000F830,
	0x0000000C,
	0x00000000,
	0x00000000,
	0x00000000,
	0x0000000F,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00010008,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000008,
};

u32 D_8013C848_14B7F8[] = {
	0x8013C7A8,
	0x8013C7F8,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00010005,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00010003,
	0x00000000,
	0x00000000,
	0x0000FA24,
	0x00010004,
	0x00000000,
	0x00000000,
	0x0000F380,
	0x00010004,
	0x00000000,
	0x00000000,
	0x0000E764,
	0x00010005,
	0x00000000,
	0x00000000,
	0x0000DECC,
	0x00010003,
	0x00000000,
	0x00000000,
	0x0000DCD8,
	0x00010004,
	0x00000000,
	0x00000000,
	0x00000000,
	0x0001000C,
	0x00000000,
	0x0000F5D8,
	0x00000000,
	0x00010005,
	0x00000000,
	0x0000FC18,
	0x00000000,
	0x00010003,
	0x00000000,
	0x0000F63C,
	0x00000000,
	0x00010004,
	0x00000000,
	0x0000FC18,
	0x00000000,
	0x00010004,
	0x00000000,
	0x0000F5D8,
	0x00000000,
	0x00010005,
	0x00000000,
	0x0000FC18,
	0x00000000,
	0x00010003,
	0x00000000,
	0x0000F448,
	0x00000000,
	0x00010004,
	0x00000000,
	0x00000000,
	0x00000000,
	0x0001000C,
	0x00000000,
	0x00000A28,
	0x00000000,
	0x00010005,
	0x00000000,
	0x000003E8,
	0x00000000,
	0x00010003,
	0x00000000,
	0x000009C4,
	0x00000000,
	0x00010004,
	0x00000000,
	0x000003E8,
	0x00000000,
	0x00010004,
	0x00000000,
	0x00000A28,
	0x00000000,
	0x00010005,
	0x00000000,
	0x000003E8,
	0x00000000,
	0x00010003,
	0x00000000,
	0x00000BB8,
	0x00000000,
	0x00010004,
	0x00000000,
	0x00000000,
	0x00000000,
	0x0001000C,
};

u32 D_8013C9D0_14B980[3] = {0x8013C850, 0x8013C950, 0x8013C8D0};

Unk8014DD50 D_8013C9DC_14B98C = {0, 0, 0, 0, 0, 0, 0, 1, 7};
Unk8014DD50 D_8013C9EC_14B99C = {0, 0, 0, 0, 0, 0, 0, 1, 6};
u32 D_8013C9FC_14B9AC = 0;

typedef struct
{
	s8 unk0;
	s8 unk1;
} UnkD_8013CA00_14B9B0;

UnkD_8013CA00_14B9B0 D_8013CA00_14B9B0[0x6] = {
	{0x69, 0x09},
	{0x68, 0x08},
	{0x67, 0x07},
	{0x66, 0x06},
	{0x65, 0x07},
	{0x00, 0x00},
};

s8 D_8013CA0C_14B9BC[] = {
	0x66,
	(s8)0xFD,
	0x69,
	(s8)0xEF,
	0x62,
	(s8)0xDB,
	0x67,
	(s8)0xCF,
	0x61,
	(s8)0xC1,
	0x63,
	(s8)0xB8,
	0x5B,
	(s8)0xAF,
	0x4E,
	(s8)0xAB,
	0x45,
	(s8)0xAD,
	0x34,
	(s8)0xB7,
	0x2A,
	(s8)0xBF,
	0x00,
	0x00,
};

u32 D_8013CA24_14B9D4[] = {
	0x00000000,
	0x00000000,
	0x0000E890,
	0x00010001,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00010006,
	0x00000000,
	0xFFEC0000,
	0x00000000,
	0x01000001,
	0x00000000,
	0x00000000,
	0x00000000,
	0x01000006,
	0x00000000,
	0xFFCE0000,
	0x00000000,
	0x01000001,
	0x00000000,
	0x00000000,
	0x00000000,
	0x01000004,
	0x00000000,
	0xFFCE0000,
	0x00000000,
	0x01000001,
	0x00000000,
	0x00000000,
	0x00000000,
	0x01000002,
	0x00000000,
	0xFFB50000,
	0x00000000,
	0x01000001,
	0x00000000,
	0x00000000,
	0x00000000,
	0x01000006,
	0x00000000,
	0xFFEC0000,
	0x00000000,
	0x01000001,
	0x00000000,
	0x00000000,
	0x00000000,
	0x01000006,
};

u32 D_8013CAE4_14BA94[2] = {0x8013CA44, 0x8013CAC4};
u32 D_8013CAEC_14BA9C = 0x8013CA64;
u32 D_8013CAF0_14BAA0[3] = {0x8013CA84, 0x8013CAA4, 0x8013CAC4};

Unk80154082 D_8013CAFC_14BAAC = {0x00, 0x00, 0x00};
u32 D_8013CB00_14BAB0[] = {
	0x00000000,
	0x00000000,
	0x0000DCD8,
	0x00010002,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00010007,
};
u32 D_8013CB20_14BAD0[] = {
	0x00000000,
	0x00000000,
	0x00001F40,
	0x00010002,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00010007,
};

Unk8014DD50 *D_8013CB40_14BAF0 = (Unk8014DD50 *)0x8013CB00;
u32 D_8013CB44_14BAF4 = 0x8013CB20;
Unk80154082 D_8013CB48_14BAF8 = {0xFF, 0xFF, 0xFF};
u32 D_8013CB4C_14BAFC = 0x00000000;
u32 D_8013CB50_14BB00[] = {
	0xFFD80000,
	0x00000000,
	0x01000001,
	0x00000000,
	0x00000000,
	0x00000000,
};
u32 D_8013CB68_14BB18[2] = {0x01000003, 0x00000034};

// AI - Busy-state handler for parent-child flag handshake
void func_8008D040_9BFF0(u8 arg0)
{
	u8 new_var;
	s32 parentUnk20;
	register AlienInstance *parent;
	register AlienInstance *inst;
	arg0 = arg0;
	inst = &alienInstances[arg0];
	new_var = inst->unk25;
	parent = &alienInstances[new_var];
	parentUnk20 = parent->unk20;
	if ((parentUnk20 & 0x1000) && (inst->unk20 & (ALIEN_FLAG_UNKG | ALIEN_FLAG_UNKF | ALIEN_FLAG_UNKE | ALIEN_FLAG_UNKD)))
	{
		parent->unk20 = parentUnk20 & (~ALIEN_FLAG_UNKD);
		do
		{
		} while (0);
		do
		{
			osSyncPrintf(&D_80141E80_150E30, *((s32 *)(&alienTypes[inst->typeIndex].unk18)), parent, parentUnk20);
		} while (0);
	}
}

// Free Adam from HCU if stick is wiggled
s32 func_8008D0E0_9C090(u8 arg0)
{
	s8 tempVar;
	u16 randVal;
	const s8 *tempPtr;
	AlienInstance *inst;

	inst = &alienInstances[arg0];
	func_800FB44C_10A3FC(D_80052B34, inst->unk0);
	func_800FB468_10A418(D_80052B34, inst->unk2 + 0xA);
	func_800FB484_10A434(D_80052B34, inst->unk4);
	func_800FB430_10A3E0(D_80052B34, 0.0f);
	tempPtr = &D_8014ECE4;
	if ((((*tempPtr) < 0) && (currentControllerStates[0].stick_x > 0)) || (((*tempPtr) > 0) && (currentControllerStates[0].stick_x < 0)))
	{
		D_8014ECE0++;
		if (D_80031420 & 3)
		{
			randVal = func_800038E0_44E0();
			func_800CA5EC_D959C(inst->unk0, inst->unk2, inst->unk4, (s8)((randVal % 120) - 0x3C), 0x7F, (s8)((func_800038E0_44E0() % 120) - 0x3C), 0x32, 4, 3, 0x28, 0, 0xDC, 0x1E, 0xFF);
		}
		if (D_8014ECE0 >= 3)
		{
			func_80088760_97710(inst);
			return 1;
		}
		D_80157A28 |= PLAYER_STATE_FLAG_STRUGGLING;
	}
	else
	{
		D_80157A28 &= ~PLAYER_STATE_FLAG_STRUGGLING;
	}
	if (D_80052A8C & 1)
	{
		D_80052B34->unk1C--;
		if (D_80052B34->unk1C <= 0)
		{
			func_80006DAC_79AC(0x3C, 0);
		}
	}
	if (((tempVar = currentControllerStates[0].stick_x) ^ 0) != D_8014ECE4)
	{
		inst->unkE += tempVar << 6;
	}
	D_8014ECE4 = tempVar;
	return 0;
}

// AI - Set targeting mode to parent
void func_8008D3B0_9C360(u8 arg0)
{
	alienInstances[arg0].unk20 &= ~ALIEN_FLAG_TARGET_OBJ;
	alienInstances[arg0].unk20 |= ALIEN_FLAG_TARGET_PT | ALIEN_FLAG_UNKD;
	alienInstances[arg0].unk38 = alienInstances[arg0].unk25;
}

// AI - Re-acquire target after cooldown
void func_8008D3F4_9C3A4(u8 arg0)
{
	AlienInstance *inst = &alienInstances[arg0];
	u8 unk25 = inst->unk25;
	inst->unk2C = 0x4B0 - alienTypes[inst->typeIndex].unk51 * 5;
	alienInstances[unk25].unk20 |= ALIEN_FLAG_UNKD;
	if (alienInstances[unk25].unk2C < 4)
	{
		alienInstances[unk25].unk2C = 4;
	}
	func_8008D3B0_9C360(arg0);
}

// AI - Target selection logic (buildings, aliens, zones)
void func_8008D4A0_9C450(unsigned int arg0)
{
	s32 dummy;
	s16 target;
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKF)
		return;
	target = func_80082394_91344(alienInstances[arg0].unk0, alienInstances[arg0].unk4, ((s32)alienTypes[alienInstances[arg0].typeIndex].unk51) / 20);
	if ((target == 0x100) ||
		((target != 0xFF) && ((!(alienInstances[target].unk20 & ALIEN_FLAG_FALL)) || (!(alienInstances[target].unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB))))))
	{
		alienInstances[arg0].unk20 |= ALIEN_FLAG_TARGET_OBJ;
		alienInstances[arg0].unk38 = target;
		alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKD;
		alienInstances[arg0].unk48 = 0xE0;
		return;
	}
	target = alienInstances[arg0].unk25;
	if (alienInstances[target].unk20 & ALIEN_FLAG_UNKF)
	{
		func_80080B44_8FAF4(arg0, alienInstances[target].unk38);
		alienInstances[arg0].unk16 = alienInstances[arg0].unk16 + 0x64;
		alienInstances[arg0].unk20 = alienInstances[arg0].unk20 & ~(ALIEN_FLAG_UNKD | ALIEN_FLAG_TARGET_OBJ);
		alienInstances[arg0].unk48 = 0xE0;
		return;
	}
	{
		s8 unk3D = alienInstances[arg0].unk3D;
		if ((unk3D == -1) || (*(s16 *)((u8 *)D_80146492_155442 + (currentLevel << 9) + (unk3D << 4)) == 0))
		{
			func_8008D3B0_9C360(arg0);
		}
	}
}

// AI - Start interaction sequence with player
void func_8008D634_9C5E4(u8 arg0)
{
	if (!(D_8004DCA8 & 2) && !(D_80052B34->unk20 & VEHICLE_FLAG_UNK8) && (D_80052B34->unk1A == 0) && (D_80159300 == 0))
	{
		if (D_80048180 == 1)
		{
			func_8008D4A0_9C450(arg0);
			return;
		}
		D_80048180 = 1;
		D_80048184 = arg0;
		D_8014ECE0 = 0;
		D_80052B34->unk20 |= 0x1000;
		func_8008D3B0_9C360(arg0);
		alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKE;
		alienInstances[arg0].unk48 = 0x60;
	}
}

// https://decomp.me/scratch/HCQa2
// AI - Human capture/processing logic
void func_8008D71C_9C6CC(u32 arg0)
{
	s16 target;
	AlienInstance *parent;
	s32 has100000;

	target = alienInstances[arg0].unk38;
	alienInstances[arg0].unk2C = 0x4B0 - (alienTypes[alienInstances[arg0].typeIndex].unk51 * 5);
	if (target == 0x100)
	{
		func_8008D634_9C5E4(arg0);
		return;
	}

	if (alienInstances[target].typeIndex == 1)
	{
		if (!(alienInstances[target].unk20 & ALIEN_FLAG_FALL))
		{
			if (alienInstances[target].unk24 != 3 && alienInstances[target].unk24 != 0x1D && alienInstances[target].unk24 != 4)
			{
				has100000 = alienInstances[target].unk20 & ALIEN_FLAG_UNKL;
				if (!has100000 && alienInstances[target].unk24 >= 5 && alienInstances[target].unk24 < 0xF)
				{
					D_80048190 -= 1;
				}
				if (alienInstances[target].unk24 == 1)
				{
					func_80137468_146418(target, 0x194);
					alienInstances[target].unk24 = 0x1D;
				}
				else if (((alienInstances[target].unk24 == 0x14) || (alienInstances[target].unk24 == 0xC)) || (alienInstances[target].unk24 == 0xB))
				{
					if (!has100000)
					{
						func_80137468_146418(target, 0x274);
					}
					alienInstances[target].unk24 = 4;
				}
				else
				{
					if (!has100000)
					{
						func_80137468_146418(target, 0x263);
					}
					alienInstances[target].unk24 = 3;
				}
				alienInstances[target].unk25 = arg0;
				alienInstances[target].unk48 = 0;
				alienInstances[target].unk20 &= ~ALIEN_FLAG_UNKF;
				alienInstances[arg0].unk24 = target;
				if (0)
				{
				}
				func_8008D3B0_9C360(arg0);

				alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKE;
				alienInstances[arg0].unk48 = 0x60;
			}
		}
	}
	else if ((alienInstances[target].typeIndex == 0x19) && (!(alienInstances[target].unk20 & (ALIEN_FLAG_UNKM | ALIEN_FLAG_UNKL | ALIEN_FLAG_UNKG))))
	{
		alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKF;
		alienInstances[target].unk20 |= ALIEN_FLAG_UNKG;
		alienInstances[arg0].unk48 = 0;
		alienInstances[arg0].unk2C = 0;
		parent = &alienInstances[alienInstances[target].unk25];
		*((s8 *)&parent->unk1E) = arg0;
	}
}

// https://decomp.me/scratch/lrRls
// AI - Detach alien from parent
s32 func_8008D978_9C928(u8 arg0)
{
	AlienInstance *inst = &alienInstances[arg0];
	u8 unk25 = inst->unk25;
	if (unk25 != 0xFF)
	{
		if (alienInstances[unk25].unk20 & (ALIEN_FLAG_UNKL | ALIEN_FLAG_UNKM))
		{
			if ((*(inst = &alienInstances[alienInstances[unk25].unk25])).unk20 & ALIEN_FLAG_UNKE)
			{
				func_80087AAC_96A5C(arg0);
			}
			alienInstances[arg0].unk25 = 0xFF;
			return 1;
		}
	}
	return 0;
}

// AI - following logic for carried humans
void func_8008DA24_9C9D4(u8 arg0)
{
	AlienInstance *target;
	u8 idx;
	AlienInstance *other;
	s32 x;
	s32 y;
	s32 z;
	u8 humanType;

	idx = alienInstances[arg0].unk25;
	if (alienInstances[arg0].unk48 != 0)
	{
		func_80128428_1373D8(&alienInstances[idx], 0, 0, -0x32, &x, &y, &z);
		alienInstances[arg0].unk2C -= 1;
		if (alienInstances[arg0].unk2C == 0)
		{
			alienInstances[arg0].unk2C = 0x4B0 - (alienTypes[2].unk51 * 5);
			alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKF;
		}
	}
	else
	{
		func_80128504_1374B4(&alienInstances[idx], 0, &x, &y, &z);
		alienInstances[arg0].unk2C += 1;
		other = (AlienInstance *)D_80048180;
		if ((other != 0) && (D_80048184 == arg0))
		{
			D_80157A3C = ((0xF - alienInstances[arg0].unk2C) << 6) / 15;
		}
		if ((alienInstances[arg0].unk2C >= 0x10) || (!(alienInstances[arg0].unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB))))
		{
			target = &alienInstances[alienInstances[idx].unk25];
			alienInstances[idx].unk26 += 1;
			if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE)
			{
				humanType = alienInstances[arg0].unk24;
				if ((other != 0) && (D_80048184 == arg0))
				{
					D_80157A3C = 0;
					func_80006DAC_79AC(0x3C, 0);
					other = &alienInstances[humanType];
					D_80048184 = idx;
				}
				else
				{
					other = &alienInstances[humanType];
					if (other->unk20 & ALIEN_FLAG_UNKL)
					{
						alienInstances[idx].unk20 &= ~ALIEN_FLAG_UNKG;
						func_80079910_888C0(humanType);
						if (alienInstances[idx].unk24 >= ((u8)D_80048168))
						{
							target->unk20 |= ALIEN_FLAG_UNKG;
							target->unk20 |= ALIEN_FLAG_UNKF | ALIEN_FLAG_UNKE;
							func_80087AAC_96A5C(idx);
							alienInstances[idx].unk26 = 4;
						}
						if ((other->unk24 == 1) || (other->unk24 == 0x1D))
						{
							u16 random[2];
							random[0] = func_800038E0_44E0();
							random[1] = func_800038E0_44E0();
							func_800CA5EC_D959C(other->unk0, other->unk2, other->unk4, (s8)((random[0] % 120) - 0x3C), 0x7F, (s8)((random[1] % 120) - 0x3C), 0x1E, 4, 0x14, (func_800038E0_44E0() % 90) + 0x28, 0, 0xFF, 0, 0xFF);
						}
						else
						{
							func_800E05B4_EF564(other->unk0, other->unk2, other->unk4, 0xC8);
						}
					}
					else
					{
						target->unk1B = humanType;
						alienInstances[idx].unk36 = 0;
						other->unk25 = idx;
						other->unk2C = 0x1E;
						func_80137468_146418(idx, 2);
						if ((other->unk24 == 0x14) || (other->unk24 == 4))
						{
							func_80137468_146418(humanType, 0x274);
						}
						else
						{
							func_80137468_146418(humanType, 0x263);
						}
					}
				}
				alienInstances[idx].unk3A = 0;
				alienInstances[idx].unk24 += 1;
				if (!(other->unk20 & ALIEN_FLAG_UNKL))
				{
					if (other->unk24 == 4)
					{
						D_8004816C -= 1;
					}
					func_800AE1C0_BD170();
				}
			}
			else
			{
				alienInstances[idx].unk20 &= ~ALIEN_FLAG_UNKG;
			}
			target->unk1EByte = 0xFF;
			target->unk20 &= ~ALIEN_FLAG_UNKD;
			alienInstances[idx].unk2C = 0x32;
			func_80079910_888C0(arg0);
		}
	}
	alienInstances[arg0].unk0 = x;
	alienInstances[arg0].unk4 = z;
}

// AI - General update tick with cooldown and collision
void func_8008DEF4_9CEA4(u8 arg0)
{
	s32 var_t0;
	s32 sp48;
	s32 sp44;
	s32 sp40;
	s32 pad;
	s32 temp_v0;
	var_t0 = 1;
	alienInstances[arg0].unk12 = alienInstances[arg0].unk48;

	if (!(alienInstances[arg0].unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB)))
	{
		var_t0 = 4;
	}
	if (alienInstances[arg0].unk25 == 0xFF || (alienInstances[arg0].unk25 != 0xFF && alienInstances[alienInstances[arg0].unk25].unk20 & (ALIEN_FLAG_UNKM | ALIEN_FLAG_UNKL)))
	{
		func_80088760_97710(&alienInstances[arg0]);
	}
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKF)
	{
		func_8008DA24_9C9D4(arg0);
		return;
	}
	if (!(alienInstances[arg0].unk20 & (ALIEN_FLAG_UNKG | ALIEN_FLAG_UNKF | ALIEN_FLAG_UNKE | ALIEN_FLAG_UNKD)))
	{
		if (alienInstances[arg0].unk2C != 0)
		{
			alienInstances[arg0].unk2C -= var_t0;
			if (alienInstances[arg0].unk2C <= 0)
			{
				func_8008D3F4_9C3A4(arg0);
			}
		}
	}
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKD)
	{
		func_80128504_1374B4(&alienInstances[alienInstances[arg0].unk25], 0, &sp48, &sp44, &sp40);
		alienInstances[arg0].unk14 = sp48;
		alienInstances[arg0].unk18 = sp40;
	}
	if (func_80080840_8F7F0(arg0, var_t0 * 0x10) != 0)
	{
		func_8008D71C_9C6CC(arg0);
		if ((alienInstances[arg0].unk20 & ALIEN_FLAG_TARGET_PT) && (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKD)))
		{
			temp_v0 = func_8011D260_12C210((s8)(alienInstances[arg0].unk0 >> 8), (s8)(alienInstances[arg0].unk4 >> 8));
			if ((temp_v0 != 0xFF) && (!((buildingInstances[temp_v0].unk8 >> 12) & 1)))
			{
				func_8008D3F4_9C3A4(arg0);
			}
		}
	}
}

// AI - Wrapper update with target selection
void func_8008E0D8_9D088(u8 arg0)
{
	func_8008DEF4_9CEA4(arg0);
	if ((arg0 & 0x1C) == (D_80052A8C & 0x1C) && !(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE))
	{
		func_8008D4A0_9C450(arg0);
	}
	func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
}

// AI - Update with player interaction check
void func_8008E16C_9D11C(u8 arg0)
{
	s32 result;
	func_8008DEF4_9CEA4(arg0);
	func_80137468_146418(arg0, 0xB);
	if (D_80048184 == arg0)
	{
		result = func_8008D0E0_9C090(arg0);
		if (result)
		{
			return;
		}
	}
	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_FALL))
	{
		func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
	}
	if (((arg0 & 0x1F) == (D_80052A8C & 0x1F)) && (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE)))
	{
		func_8008D4A0_9C450(arg0);
	}
}

// AI - Fall/dying update
void func_8008E23C_9D1EC(u8 arg0)
{
	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_FALL))
	{
		alienInstances[arg0].unk12 = 0xE0;
		func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
	}
	if (alienInstances[arg0].unk47 & 8)
	{
		func_80088760_97710(&alienInstances[arg0]);
	}
}

// AI - Pathfinding movement via 2 nodes
s32 func_8008E2B4_9D264(u8 arg0, s16 arg1, s16 arg2)
{
	s16 arr[2];
	arr[0] = arg1;
	arr[1] = arg2;
	return func_80081F18_90EC8(arg0, 2, 3, arr, &D_8013C610_14B5C0);
}

// AI - Check parent flag for player targeting
s32 func_8008E30C_9D2BC(u8 arg0, s32 arg1)
{
	u8 unk25 = alienInstances[arg0].unk25;

	if (alienInstances[unk25].unk20 & arg1)
	{
		func_80081BB0_90B60(arg0);
		alienInstances[arg0].unk20 |= ALIEN_FLAG_TARGET_PT | ALIEN_FLAG_PLAYER;
		alienInstances[arg0].unk3A = 0xC8;
		return 1;
	}
	if (alienInstances[arg0].unk3A != 0 && (alienInstances[arg0].unk20 & ALIEN_FLAG_PLAYER))
	{
		alienInstances[arg0].unk3A = alienInstances[arg0].unk3A - 1;
		if (alienInstances[arg0].unk3A <= 0)
		{
			alienInstances[arg0].unk20 &= ~(ALIEN_FLAG_TARGET_PT | ALIEN_FLAG_PLAYER);
		}
		return 1;
	}
	return 0;
}

// AI - Check own UNKP flag for player targeting
s32 func_8008E3E8_9D398(u8 arg0)
{
	AlienInstance *inst = &alienInstances[arg0];
	s32 unk20 = inst->unk20;
	if (unk20 & ALIEN_FLAG_UNKP)
	{
		inst->unk20 = unk20 | (ALIEN_FLAG_PLAYER | ALIEN_FLAG_TARGET_PT);
		inst->unk3A = 0xC8;
		return 1;
	}
	if (inst->unk3A != 0)
	{
		inst->unk3A -= 1;
		if (inst->unk3A <= 0)
		{
			inst->unk20 &= ~ALIEN_FLAG_PLAYER;
		}
		return 1;
	}
	return 0;
}

// AI - Detach from non-harvester parent and re-target
s32 func_8008E478_9D428(u8 arg0)
{
	u8 new_var;
	new_var = alienInstances[arg0].unk25;
	if (((alienInstances[arg0].unk25 == 0xFF) ||
		 (alienInstances[new_var].typeIndex != 0x19)) ||
		func_8008D978_9C928(arg0))
	{
		func_80081BB0_90B60(arg0);
		alienInstances[arg0].unk20 |= ALIEN_FLAG_PLAYER | ALIEN_FLAG_TARGET_PT;
		return 1;
	}
	return 0;
}

// CURRENT(2352)
#ifdef NON_MATCHING
// AI - Height-adjustment calculation for slopes
s32 func_8008E524_9D4D4(u8 arg0, s32 arg1, u8 arg2)
{
	AlienInstance *inst;
	s16 sp8E;
	s16 sp8C;
	s16 sp8A;
	f32 f24;
	f32 f26;
	s16 sp78;
	s16 sp76;
	s16 i;
	u8 typeIndex;
	s32 found;

	inst = &alienInstances[arg0];
	found = 0;
	typeIndex = inst->typeIndex;

	if (inst->unk12 == 0)
	{
		return arg1;
	}

	f26 = (f32)(((f32)sins((u16)(inst->unk6 - 0x4000)) / 32768.0) * 256.0);
	f24 = (f32)(((f32)coss((u16)(inst->unk6 - 0x4000)) / 32768.0) * -256.0);

	if (inst->unk12 < 0)
	{
		f26 = -f26;
		f24 = -f24;
	}

	switch ((s16)(D_80052A8C % 3U))
	{
	case 0:
		sp78 = (s16)(s32)(alienTypes[typeIndex].unk34 *
							  ((f32)sins((u16)inst->unk6) / 32768.0) * 2 +
						  inst->unk0);
		sp76 = (s16)(s32)(inst->unk4 - (alienTypes[typeIndex].unk34 *
										((f32)coss((u16)inst->unk6) / 32768.0) * 2));
		break;

	case 1:
		sp78 = inst->unk0;
		sp76 = inst->unk4;
		break;

	case 2:
		sp78 = (s16)(s32)(inst->unk0 - (alienTypes[typeIndex].unk34 *
										((f32)sins((u16)inst->unk6) / 32768.0) * 2));
		sp76 = (s16)(s32)(alienTypes[typeIndex].unk34 *
							  ((f32)coss((u16)inst->unk6) / 32768.0) * 2 +
						  inst->unk4);
		break;
	}

	for (i = (s16)arg2; i >= 0; i--)
	{
		func_8011E6FC_12D6AC((s16)(s32)(sp78 - (f26 * i)), (s16)(s32)(sp76 - (f24 * i)), &sp8C);
		if (sp8C < D_80222A70)
		{
			sp8C = (s16)D_80222A70;
		}

		if (i == 0)
		{
			sp8E = sp8C;
		}

		if (sp8C < D_80052B34->unk2)
		{
			sp8C = D_80052B34->unk2;
		}

		if (inst->unk2 < (sp8C + arg1))
		{
			found = 1;
			sp8A = sp8C;
		}
	}

	if (found)
	{
		return (sp8A - sp8E) + arg1;
	}

	return (sp8C - sp8E) + arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_8008E524_9D4D4.s")
#endif

// https://decomp.me/scratch/V6LCq
// CURRENT(821)
#ifdef NON_MATCHING
// AI - Vertical velocity/gravity update
void func_8008E978_9D928(u8 arg0, s32 arg1)
{
	s32 sp2C;
	s16 sp2A;
	s32 sp24;
	sp2C = arg1;
	sp24 = 0;
	func_8011E6FC_12D6AC(alienInstances[arg0].unk0, alienInstances[arg0].unk4, &sp2A);

	if (sp2A < D_80222A70)
	{
		sp2A = (s16)D_80222A70;
	}
	sp2C += sp2A;
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_PLAYER)
	{
		sp24 = D_80052B34->unk20 & VEHICLE_FLAG_AIRBORNE;
		if (sp24 && (D_80222A70 >= D_80052B34->unk2))
		{
			sp24 = 0;
		}
	}
	if (sp24 != 0)
	{
		sp2C = D_80052B34->unk2;
	}
	if (alienInstances[arg0].unk2 < sp2C)
	{
		alienInstances[arg0].unkA -= 0x1F4;
	}
	if (sp2C < alienInstances[arg0].unk2)
	{
		alienInstances[arg0].unkA += 0x1F4;
	}
	alienInstances[arg0].unkA = alienInstances[arg0].unkA * D_80141EE0_150E90[0];
	sp2C = -((s16)alienInstances[arg0].unk12);
	if (sp2C < alienInstances[arg0].unk12)
	{
		sp2C = alienInstances[arg0].unk12;
	}
	else if (sp2C < 0x301)
	{
		sp2C = 0x300;
	}
	alienInstances[arg0].unk10 = -((s32)(((f32)sins(alienInstances[arg0].unkA) / 32768.0) * sp2C));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_8008E978_9D928.s")
#endif

// CURRENT(1824)
#ifdef NON_MATCHING
// AI - Gravity with type-driven height offset
void func_8008EB20_9DAD0(u8 arg0, s32 arg1, s32 arg2)
{
	AlienInstance *inst = &alienInstances[arg0];
	s16 sp46;
	s32 sp24;
	s16 typeIndex;
	s32 sp2C;
	s32 temp;

	sp24 = 0;
	typeIndex = inst->typeIndex;
	func_8011E6FC_12D6AC(inst->unk0, inst->unk4, &sp46);

	if (inst->unk20 & ALIEN_FLAG_PLAYER)
	{
		sp24 = D_80052B34->unk20 & VEHICLE_FLAG_AIRBORNE;
		if (sp24 && D_80222A70 >= D_80052B34->unk2)
		{
			sp24 = 0;
		}
	}

	if (alienTypes[typeIndex].unk54 & 0x10000000)
	{
		if (sp46 >= D_80222A70)
		{
			sp46 = D_80222A70 - 0x64;
		}
	}
	else if (sp46 < D_80222A70)
	{
		sp46 = D_80222A70;
	}

	if (sp24)
	{
		sp2C = D_80052B34->unk2 + 0xC8;
	}
	else
	{
		sp2C = (s32)sp46 + arg1;
	}

	if (inst->unk2 < sp2C)
	{
		inst->unkA = (s16)((s32)(inst->unkA - arg2 * (((sp2C - inst->unk2) / 160) > 1.0 ? 1.0 : (f64)((sp2C - inst->unk2) / 160))));
	}
	if (sp2C < inst->unk2)
	{
		inst->unkA = (s16)((s32)(inst->unkA + arg2 * (((inst->unk2 - sp2C) / 160) > 1.0 ? 1.0 : (f64)((inst->unk2 - sp2C) / 160))));
	}

	inst->unkA = (s16)((s32)(inst->unkA * D_80141EE8_150E98[0]));
	temp = -inst->unk12;
	if (temp < inst->unk12)
	{
		temp = inst->unk12;
	}
	if (temp < 0x101)
	{
		temp = 0x100;
	}
	inst->unk10 = (s16)(-((s32)(((f32)sins(inst->unkA) / 32768.0) * temp)));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_8008EB20_9DAD0.s")
#endif

// AI - Apply gravity using type height offset
void func_8008EDFC_9DDAC(u8 arg0)
{
	func_8008E978_9D928(arg0, alienTypes[alienInstances[arg0].typeIndex].unk58);
}

// AI - Attach decals to alien path nodes
void func_8008EE5C_9DE0C(u8 arg0, s16 arg1, s16 arg2)
{
	func_80081E5C_90E0C(arg1);
	func_80081E5C_90E0C(arg2);
	if (D_8014DD50[arg1].unkE == 0)
	{
		func_80081C84_90C34(arg1, (Unk8014DD50 *)&D_8013C618_14B5C8[alienInstances[arg0].unk4B * 0x10]);
		func_80081C84_90C34(arg2, (Unk8014DD50 *)&D_8013C638_14B5E8[alienInstances[arg0].unk4B * 0x10]);
		alienInstances[arg0].unk4B++;
		alienInstances[arg0].unk4B &= 1;
	}
}

// AI - Create single decal at first path node
void func_8008EF1C_9DECC(u8 arg0)
{
	s8 tmp = D_8014DD50[alienInstances[arg0].unkC].unkC;
	func_8008EE5C_9DE0C(arg0, tmp, D_8014DD50[tmp].unkD);
}

// AI - Create chain of 4 decals on path nodes
void func_8008EF7C_9DF2C(u8 arg0)
{
	s16 sp2E;
	s16 sp2C;
	s16 sp2A;
	s16 sp28;

	sp2E = D_8014DD50[alienInstances[arg0].unkC].unkC;
	sp2C = D_8014DD50[sp2E].unkD;
	sp2A = D_8014DD50[sp2C].unkD;
	sp28 = D_8014DD50[sp2A].unkD;
	func_80081E5C_90E0C(sp2E);
	func_80081E5C_90E0C(sp2C);
	func_80081E5C_90E0C(sp2A);
	func_80081E5C_90E0C(sp28);
	if (D_8014DD50[sp2E].unkE == 0)
	{
		func_80081C84_90C34((u8)sp2E, (Unk8014DD50 *)&D_8013C658_14B608[alienInstances[arg0].unk4B * 0x10]);
		func_80081C84_90C34((u8)sp2C, (Unk8014DD50 *)&D_8013C678_14B628[alienInstances[arg0].unk4B * 0x10]);
		func_80081C84_90C34((u8)sp2A, (Unk8014DD50 *)&D_8013C698_14B648[alienInstances[arg0].unk4B * 0x10]);
		func_80081C84_90C34((u8)sp28, (Unk8014DD50 *)&D_8013C6B8_14B668[alienInstances[arg0].unk4B * 0x10]);
		alienInstances[arg0].unk4B++;
		alienInstances[arg0].unk4B &= 1;
	}
}

// CURRENT(9972)
#ifdef NON_MATCHING
// AI - Complex AI movement/state machine
void func_8008F0BC_9E06C(u8 arg0, s32 arg1)
{
	u8 sp5F;
	u8 sp5E;
	s16 sp5A;
	s32 sp48;
	AlienInstance *sp30;
	AlienType *sp2C;
	AlienInstance *sp20;
	s32 var_t1;
	s16 var_t3;
	s8 otherType;
	s32 distX;
	s32 distZ;
	s32 negX;
	s32 negZ;
	s32 absX;
	s32 absZ;
	s32 maxDist;
	Unk80146688 *zone;

	sp30 = &alienInstances[arg0];
	sp2C = &alienTypes[sp30->typeIndex];
	sp48 = 1;
	sp5A = sp2C->unk40;

	func_80137468_146418(arg0, 7);

	if (!(sp30->unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB)))
	{
		sp48 = 4;
	}

	if (sp30->unk2C > 0)
	{
		sp30->unk2C = (s16)(sp30->unk2C - sp48);
	}

	if ((func_8008E478_9D428(arg0) == 0) && (func_8008E30C_9D2BC(arg0, 0x80000000) == 0) && !(sp30->unk20 & (ALIEN_FLAG_TARGET_PT | ALIEN_FLAG_TARGET_OBJ)))
	{
		if (arg1 != 0)
		{
			sp5F = (u8)func_8011B6C0_12A670(sp30->unk0, sp30->unk4, (s16)(sp2C->unk51 / 15), 1, 0x100C);
			if (sp5F != 0xFF)
			{
				sp5E = sp30->unk25;
				sp20 = &alienInstances[sp5E];
				otherType = sp20->unk3D;
				if ((otherType == -1) || (otherType == (s8)buildingInstances[sp5F].unk11))
				{
					if (sp5F != sp30->unk38)
					{
						func_800ACF9C_BBF4C(sp5F);
					}

					func_80080B44_8FAF4(arg0, sp5F);
					sp30->unk16 += buildingTypes[buildingInstances[sp5F].buildingType].unk14 + 0x64;
					sp30->unk20 &= ~(ALIEN_FLAG_UNKH | ALIEN_FLAG_UNKC);

					func_80080B44_8FAF4(sp5E, sp5F);
					sp20->unk3A = 0;
					sp20->unk16 += 0xC8;
					sp20->unk20 |= ALIEN_FLAG_UNKE;
				}
			}
		}

		var_t1 = sp30->unk20;
		var_t3 = sp5A;
	}
	else
	{
		if ((sp30->unk20 & (ALIEN_FLAG_PLAYER | ALIEN_FLAG_UNKF)) && (sp30->unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB)))
		{
			distX = sp30->unk0 - sp30->unk14;
			negX = -distX;
			distZ = sp30->unk4 - sp30->unk18;

			if (negX < distX)
			{
				absX = distX;
			}
			else
			{
				absX = negX;
			}

			negZ = -distZ;
			absZ = negZ;
			if (negZ < distZ)
			{
				absZ = distZ;
			}

			if (absZ < absX)
			{
				maxDist = negX;
				if (negX < distX)
				{
					maxDist = distX;
				}
			}
			else
			{
				maxDist = negZ;
				if (negZ < distZ)
				{
					maxDist = distZ;
				}
			}

			if (maxDist < 0x23A)
			{
				sp5A = -0x180;
			}
			else if (maxDist >= 0x259)
			{
				sp5A = 0x180;
			}
			else
			{
				sp5A = 0;
			}

			func_80087720_966D0(arg0, maxDist);
			var_t3 = sp5A;
		}
		else
		{
			func_8009170C_A06BC(arg0);
			var_t3 = 0x180;
		}

		var_t1 = sp30->unk20;
	}

	if ((var_t1 & 0x800) && (arg1 != 0) && (sp30->unk3D != -1))
	{
		zone = &D_80146688_155638[currentLevel - 1][sp30->unk3D];

		distX = (sp30->unk0 >> 8) - zone->unk0;
		negX = -distX;
		distZ = (sp30->unk4 >> 8) - zone->unk1;

		if (negX < distX)
		{
			absX = distX;
		}
		else
		{
			absX = negX;
		}

		negZ = -distZ;
		absZ = negZ;
		if (negZ < distZ)
		{
			absZ = distZ;
		}

		if (absZ < absX)
		{
			maxDist = negX;
			if (negX < distX)
			{
				maxDist = distX;
			}
		}
		else
		{
			maxDist = negZ;
			if (negZ < distZ)
			{
				maxDist = distZ;
			}
		}

		if ((zone->unk2 + 6) < maxDist)
		{
			sp30->unk20 = var_t1 | (ALIEN_FLAG_UNKE | ALIEN_FLAG_TARGET_OBJ);
			var_t1 = sp30->unk20 & ~ALIEN_FLAG_UNKC;
			sp30->unk20 = var_t1;
			sp30->unk38 = sp30->unk25;
		}
	}
	else if ((var_t1 & 0x2000) && (arg1 != 0))
	{
		sp5E = sp30->unk25;
		sp20 = &alienInstances[sp5E];

		distX = (sp30->unk0 - sp20->unk0) >> 8;
		negX = -distX;
		distZ = (sp30->unk4 - sp20->unk4) >> 8;

		if (negX < distX)
		{
			absX = distX;
		}
		else
		{
			absX = negX;
		}

		negZ = -distZ;
		absZ = negZ;
		if (negZ < distZ)
		{
			absZ = distZ;
		}

		if (absZ < absX)
		{
			maxDist = negX;
			if (negX < distX)
			{
				maxDist = distX;
			}
		}
		else
		{
			maxDist = negZ;
			if (negZ < distZ)
			{
				maxDist = distZ;
			}
		}

		if (maxDist < 2)
		{
			var_t1 &= ~0x2020;
			sp30->unk20 = var_t1;
			sp30->unk38 = sp5E;
		}
	}

	if (var_t1 & 0x4000)
	{
		if (var_t1 & 0x08000000)
		{
			sp30->unk20 = var_t1 & ~ALIEN_FLAG_UNKF;
		}

		sp30->unk3A--;
		if (sp30->unk3A <= 0)
		{
			sp30->unk20 &= ~(ALIEN_FLAG_UNKF | ALIEN_FLAG_TARGET_OBJ);
		}
	}

	if (var_t3 >= sp30->unk12)
	{
		sp30->unk12 += (s16)(sp2C->unk3E * sp48);
	}

	if (var_t3 < sp30->unk12)
	{
		sp30->unk12 -= (s16)(sp2C->unk3E * sp48);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_8008F0BC_9E06C.s")
#endif

// AI - Set follow-target for companion aliens
void func_8008F6C0_9E670(u8 arg0)
{
	u8 temp_a0;
	u8 temp_a1;
	s16 temp_v0;
	if (!(alienInstances[alienInstances[arg0].unk25].unk20 & (ALIEN_FLAG_UNKE | ALIEN_FLAG_UNKF)))
	{
		alienInstances[arg0].unk20 = alienInstances[arg0].unk20 & (~ALIEN_FLAG_TARGET_PT);
		alienInstances[arg0].unk20 = ((0, alienInstances[arg0].unk20)) | ALIEN_FLAG_UNKC;
		alienInstances[arg0].unk14 = alienInstances[alienInstances[arg0].unk25].unk0;
		alienInstances[arg0].unk18 = alienInstances[alienInstances[arg0].unk25].unk4;
		alienInstances[arg0].unk16 = alienInstances[alienInstances[arg0].unk25].unk2 + 0x12C;
		return;
	}
	if (!alienInstances[arg0].unk25)
	{
	}
	temp_v0 = func_80082394_91344(alienInstances[arg0].unk0, alienInstances[arg0].unk4, 3);
	if ((temp_v0 < 0xFF) && (!(alienInstances[temp_v0].unk20 & ALIEN_FLAG_UNKF)))
	{
		alienInstances[arg0].unk38 = temp_v0;
		alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKF | ALIEN_FLAG_TARGET_OBJ;
		alienInstances[arg0].unk3A = 0xC8;
	}
	temp_a1 = (u8)alienInstances[alienInstances[arg0].unk25].unk38;
	func_80080B44_8FAF4(arg0, temp_a1);
	alienInstances[arg0].unk16 = buildingTypes[buildingInstances[temp_a1].buildingType].unk14 + alienInstances[arg0].unk16 + 0x64;
}

// AI - Movement update with follow-target refresh
void func_8008F818_9E7C8(u8 arg0)
{
	AlienInstance *ai = &alienInstances[arg0];
	s32 moved = 0;
	if (ai->unk2E >> 8 != ai->unk0 >> 8 || ai->unk32 >> 8 != ai->unk4 >> 8)
	{
		moved = 1;
	}
	func_8008F0BC_9E06C(arg0, moved);
	func_800808F0_8F8A0(arg0, &ai->unkE);
	if (moved && !(ai->unk20 & (ALIEN_FLAG_UNKE | ALIEN_FLAG_UNKC)))
	{
		func_8008F6C0_9E670(arg0);
	}
}

// https://decomp.me/scratch/zzVqU
// AI - Pathfinding to parent/owner
void func_8008F8D4_9E884(u8 arg0, s16 arg1)
{
	s16 sp2C[2];
	s8 var_a3;
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKG)
	{
		sp2C[0] = arg1;
		sp2C[1] = D_8014DD50[arg1].unkC;
		var_a3 = func_80081F18_90EC8(arg0, 2, 3, sp2C, &D_8013C738_14B6E8);
		if ((u32)var_a3 == 2)
		{
			alienInstances[arg0].unk1E = 0;
			if (func_80087188_96138(arg0, 0, 0x22) != 0)
			{
				if (currentLevel == 1)
				{
					alienInstances[arg0].unk1E = 0xF;
				}
				else
				{
					alienInstances[arg0].unk1E = 5;
				}
			}
		}
		if (var_a3 == 3)
		{
			alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKG;
		}
	}
}

// CURRENT(2158)
#ifdef NON_MATCHING
// AI - Harvester/drone AI update
void func_8008F9E4_9E994(u8 arg0)
{
	s16 sp36;
	s32 moved;
	s32 sp24;
	AlienInstance *ai;

	ai = &alienInstances[arg0];

	moved = 0;
	if (((ai->unk0 >> 8) != (ai->unk2E >> 8)) || ((ai->unk4 >> 8) != (ai->unk32 >> 8)))
	{
		moved = 1;
	}

	func_8008F0BC_9E06C(arg0, moved);

	if (ai->unk20 & ALIEN_FLAG_UNKD)
	{
		s32 tmpA;
		s32 t;

		t = D_8014DD50[ai->unkC].unkC;
		tmpA = ai->unkA;
		t = D_8014DD50[t].unkD;
		t = D_8014DD50[t].unkD;
		t = D_8014DD50[t].unkD;
		sp36 = D_8014DD50[t].unkD;

		if (ai->unk20 & ALIEN_FLAG_PLAYER)
		{
			sp24 = 0x12C;
		}
		else
		{
			sp24 = alienTypes[ai->typeIndex].unk58;
		}

		if (((s16)tmpA < ai->unkA) || (ai->unk47 & 1))
		{
			if (!(ai->unk20 & ALIEN_FLAG_UNKG))
			{
				ai->unk20 |= ALIEN_FLAG_UNKG;
				ai->unk20 &= ~ALIEN_FLAG_UNKD;
				ai->unk36 = 0;
			}
		}

		func_8008F8D4_9E884(arg0, sp36);
	}
	else
	{
		sp24 = alienTypes[ai->typeIndex].unk58;
		if (ai->unk20 & (ALIEN_FLAG_PLAYER | ALIEN_FLAG_UNKF))
		{
			if (ai->unk1E != 0)
			{
				ai->unk1E -= 1;
			}
			else if (func_800850DC_9408C(arg0, 0x400) != 0)
			{
				ai->unk20 |= ALIEN_FLAG_UNKD;
			}
		}
		else if (moved && !(ai->unk20 & (ALIEN_FLAG_UNKE | ALIEN_FLAG_UNKC)))
		{
			func_8008F6C0_9E670(arg0);
		}
	}

	func_800808F0_8F8A0(arg0, &ai->unk8);
	ai->unk8 = (s16)(s32)(ai->unk8 * D_80141EF0_150EA0[0]);
	ai->unkE += ai->unk8 / 8;
	func_8008E978_9D928(arg0, func_8008E524_9D4D4(arg0, sp24, 2));
	func_8008EF1C_9DECC(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_8008F9E4_9E994.s")
#endif

// AI - Spawn a new alien instance from pool
u8 func_8008FC78_9EC28(u8 arg0)
{
	u8 result = func_8007956C_8851C(0x20) & 0xFF;
	if (result != 0xFF)
	{
		AlienInstance *newInst = &alienInstances[result];
		AlienInstance *srcInst = &alienInstances[arg0];
		newInst->unk12 = 0xE0;
		newInst->unk0 = srcInst->unk0;
		newInst->unk4 = srcInst->unk4;
		if (currentLevel < 3)
		{
			newInst->unk26 = 1;
		}
	}
	return result;
}

// AI - Spawn two aliens in opposite directions
void func_8008FD0C_9ECBC(u8 arg0)
{
	u8 sp1F;
	u8 temp_v0;
	AlienInstance *v1;

	sp1F = func_8008FC78_9EC28(arg0);
	temp_v0 = func_8008FC78_9EC28(arg0);

	if (sp1F != 0xFF)
	{
		v1 = &alienInstances[sp1F];
		v1->unk12 = 0x380;
		v1->unk26 = alienInstances[arg0].unk26 + 1;
		v1->unk20 |= ALIEN_FLAG_FALL;
		v1->unk10 = 0x320;
		v1->unk6 = alienInstances[arg0].unk6;
		v1->unkE = alienInstances[arg0].unk6 + 0x4000;
	}
	if (temp_v0 != 0xFF)
	{
		v1 = &alienInstances[temp_v0];
		v1->unk12 = 0x380;
		v1->unk26 = alienInstances[arg0].unk26 + 1;
		v1->unk20 |= ALIEN_FLAG_FALL;
		v1->unk10 = 0x320;
		v1->unk6 = alienInstances[arg0].unk6;
		v1->unkE = alienInstances[arg0].unk6 - 0x4000;
	}
}

// AI - Spawn projectile/child alien
s32 func_8008FE18_9EDC8(u8 arg0)
{
	u8 sp4F;
	s32 res;
	s32 sp44;
	s32 sp40;
	s32 sp3C;

	sp4F = func_8007956C_8851C(2);
	if (sp4F != 0xFF)
	{
		func_80128428_1373D8(&alienInstances[arg0], 0, 0, -0x32, &sp44, &sp40, &sp3C);
		alienInstances[sp4F].unk0 = sp44;
		alienInstances[sp4F].unk4 = sp3C;
		alienInstances[sp4F].unk48 = 0xE0;
		alienInstances[sp4F].unk38 = arg0;
		alienInstances[sp4F].unk25 = arg0;
		alienInstances[sp4F].unk3D = alienInstances[arg0].unk3D;
		alienInstances[sp4F].unk20 |= ALIEN_FLAG_UNKF;
		alienInstances[sp4F].unk2C = 0x10;
		if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKF))
		{
			res = func_80082394_91344(alienInstances[arg0].unk0, alienInstances[arg0].unk4, 8);
			if (res != 0xFF)
			{
				alienInstances[sp4F].unk38 = res;
				alienInstances[sp4F].unk20 |= ALIEN_FLAG_TARGET_OBJ;
				alienInstances[sp4F].unk48 = 0xE0;
			}
		}
		return 1;
	}
	return 0;
}

// CURRENT(1442)
#ifdef NON_MATCHING
// AI - Calculate spawn offset from path node
s32 func_8008FF54_9EF04(u8 arg0, s32 *arg1, s32 *arg2, s32 *arg3)
{
	AlienInstance *inst;
	Unk8014DD50 *nodeA;
	s32 x;
	s32 y;
	s32 z;
	s16 angle;
	s16 trig;

	inst = &alienInstances[arg0];
	nodeA = &D_8014DD50[inst->unkC];

	x = D_8014DD50[nodeA->unkC].unk0 + nodeA->unk0;
	y = D_8014DD50[nodeA->unkC].unk2 + nodeA->unk2;
	z = nodeA->unk4 + D_8014DD50[nodeA->unkC].unk4;

	angle = (u16)D_8014DD50[nodeA->unkC].unkA;

	trig = sins(angle);
	y = (s32)(y + ((-50.0 * ((f32)coss(angle) / 32768.0)) - (D_80141EF8_150EA8[0] * ((f32)trig / 32768.0))));

	trig = coss(angle);
	z = (s32)(z + ((D_80141F00_150EB0[0] * ((f32)trig / 32768.0)) + (-50.0 * ((f32)sins(angle) / 32768.0))));

	func_80128428_1373D8(inst, (s16)x, (s16)y, (s16)z, arg1, arg2, arg3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_8008FF54_9EF04.s")
#endif

// CURRENT(11639)
#ifdef NON_MATCHING
// AI - AI state machine for carried humans/companions
void func_8009012C_9F0DC(u8 arg0)
{
	AlienInstance *inst;
	AlienInstance *parent;
	AlienInstance *targetInst;
	Unk8014DD50 *node;
	u8 typeIdx;
	s32 parentFlags;
	s32 step;
	s16 parentNode;
	s16 targetSpeed;
	s16 pathNodes[3];
	s8 pathResult;
	s16 target;
	s32 dx;
	s32 dz;
	s32 radius;
	s32 i;

	inst = &alienInstances[arg0];
	parentFlags = inst->unk20;
	parentNode = inst->unkC;
	typeIdx = inst->typeIndex;
	targetSpeed = 0;
	step = 1;
	if (!(parentFlags & 0x600))
	{
		step = 4;
	}

	parent = &alienInstances[inst->unk25];

	if ((inst->unk3A >= 0xBB9) && !(parentFlags & 0x8000))
	{
		parent->unk20 |= ALIEN_FLAG_UNKE;
		func_80087AAC_96A5C(arg0);
	}

	inst->unk3A += step;
	if (!(inst->unk20 & ALIEN_FLAG_UNKG))
	{
		if (func_800808F0_8F8A0(arg0, &inst->unkE) != 0)
		{
			return;
		}
	}

	if (inst->unk2C > 0)
	{
		inst->unk2C -= step;
	}

	if ((parentFlags & 0x100) && !(parentFlags & 0x4000))
	{
		dx = inst->unk0 - inst->unk14;
		dz = inst->unk4 - inst->unk18;
		targetSpeed = alienTypes[typeIdx].unk40;

		if (parentFlags & 0x2000)
		{
			radius = (((0xC8 - alienTypes[typeIdx].unk51) / 30) + 3) << 8;
		}
		else
		{
			radius = 0x300;
		}

		if (!(inst->unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB)) || (((dx * dx) + (dz * dz)) < (radius * radius)) || (inst->unk47 & 1))
		{
			inst->unk20 &= ~ALIEN_FLAG_TARGET_PT;
			if (parentFlags & 0x2000)
			{
				inst->unk20 |= ALIEN_FLAG_UNKF;
			}
			else
			{
				parent->unk20 |= ALIEN_FLAG_UNKD;
			}
			inst->unk3A = 0;
		}
	}
	else
	{
		if (inst->unk47 & 1)
		{
			targetSpeed = alienTypes[typeIdx].unk40;
		}
		else if (!(inst->unk20 & (ALIEN_FLAG_UNKF | ALIEN_FLAG_TARGET_PT)) && !(parent->unk20 & ALIEN_FLAG_UNKD) && (inst->unk26 > 0))
		{
			target = func_80082394_91344(inst->unk0, inst->unk4, 8);
			if (target < 0xFF)
			{
				targetInst = &alienInstances[(u8)target];
				osSyncPrintf(&D_80141E94_150E44, target, targetInst->unk0, targetInst->unk4);
				inst->unk14 = targetInst->unk0;
				inst->unk16 = targetInst->unk2;
				inst->unk18 = targetInst->unk4;
				inst->unk20 |= ALIEN_FLAG_TARGET_PT;
				targetSpeed = alienTypes[typeIdx].unk40;
			}
		}
	}

	if (!(inst->unk20 & ALIEN_FLAG_UNKG) && (inst->unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB)))
	{
		if (inst->unk12 < targetSpeed)
		{
			inst->unk12 += alienTypes[typeIdx].unk3E * step;
		}
		else if (targetSpeed < inst->unk12)
		{
			inst->unk12 -= alienTypes[typeIdx].unk3E * step;
		}
	}

	if (((parentFlags & 0x4000) || (parent->unk20 & ALIEN_FLAG_UNKD)) && (inst->unk26 > 0) && (inst->unk2C <= 0))
	{
		if (!(inst->unk20 & ALIEN_FLAG_UNKG) && ((inst->unk12 >> 5) == 0))
		{
			inst->unk2C = 0x32;
			if (inst->unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB))
			{
				inst->unk20 |= ALIEN_FLAG_UNKG;
				inst->unk36 = 0;
			}
			else if (func_8008FE18_9EDC8(arg0) != 0)
			{
				inst->unk26 -= 1;
			}
		}
	}

	if (inst->unk20 & ALIEN_FLAG_UNKG)
	{
		if (parent->unk1B != 0xFF)
		{
			if (inst->unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB))
			{
				node = &D_8014DD50[parentNode];
				pathNodes[0] = node->unkC;
				node = &D_8014DD50[pathNodes[0]];
				pathNodes[1] = node->unkC;
				node = &D_8014DD50[pathNodes[1]];
				pathNodes[2] = node->unkD;
				pathResult = func_80081F18_90EC8(arg0, 3, 8, pathNodes, &D_8013C9D0_14B980);
				if (pathResult != 8)
				{
					goto skip_parent_cleanup;
				}
			}

			inst->unk20 &= ~ALIEN_FLAG_UNKG;
			func_80079910_888C0(parent->unk1B);
			parent->unk1B = 0xFF;
			if (inst->unk24 >= D_80048168)
			{
				parent->unk20 |= ALIEN_FLAG_UNKG;
				parent->unk20 |= (ALIEN_FLAG_UNKF | ALIEN_FLAG_UNKE);
				func_80087AAC_96A5C(arg0);
				inst->unk26 = 4;
			}
		}
		else if (parent->unk1E == 0xFF)
		{
			if (inst->unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB))
			{
				pathNodes[0] = parentNode;
				pathNodes[1] = D_8014DD50[parentNode].unkC;
				pathResult = func_80081F18_90EC8(arg0, 2, 3, pathNodes, &D_8013C7A0_14B750);
				if (pathResult == 1)
				{
					func_80137468_146418(arg0, 1);
					if (func_8008FE18_9EDC8(arg0) != 0)
					{
						inst->unk26 -= 1;
					}
				}
				if (pathResult == 3)
				{
					inst->unk20 &= ~ALIEN_FLAG_UNKG;
				}
			}
			else
			{
				inst->unk20 &= ~ALIEN_FLAG_UNKG;
				if (func_8008FE18_9EDC8(arg0) != 0)
				{
					inst->unk26 -= 1;
				}
			}
		}
	}
	else if ((parentFlags & 0x1000) && (inst->unk2C <= 0))
	{
		inst->unk20 &= ~(ALIEN_FLAG_UNKG | ALIEN_FLAG_UNKF | ALIEN_FLAG_UNKE | ALIEN_FLAG_UNKD);
	}

skip_parent_cleanup:
	if ((parentFlags & 0x2000) && (((buildingInstances[inst->unk38].unk8 >> 12) & 4) != 0))
	{
		inst->unk20 &= ~(ALIEN_FLAG_UNKF | ALIEN_FLAG_UNKE);
		return;
	}

	i = (buildingInstances[inst->unk38].unk8 >> 12) & 1;
	if (i == 0)
	{
		inst->unk20 &= ~(ALIEN_FLAG_UNKF | ALIEN_FLAG_UNKE);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_8009012C_9F0DC.s")
#endif

// AI - Decrement parent death timer or run standard AI
void func_800908C4_9F874(u8 arg0)
{
	AlienInstance *inst = &alienInstances[alienInstances[arg0].unk25];
	s32 unk10 = *(s32 *)&inst->unk10;
	if (unk10 <= 0)
	{
		func_8009012C_9F0DC(arg0);
		return;
	}
	inst->unk20 &= ~(ALIEN_FLAG_UNKH | ALIEN_FLAG_UNKI);
	*(s32 *)&inst->unk10 = unk10 - 1;
}

// AI - Spawn spark/particle at a path node
void func_80090948_9F8F8(s16 arg0, u16 arg1)
{
	Unk8014DD50 sp20 = D_8013C9DC_14B98C;
	func_80081E5C_90E0C(arg0);
	if (D_8014DD50[arg0].unkE == 0)
	{
		sp20.unk6 = (s16)((func_800038E0_44E0() * arg1) / 0x10000) - (arg1 / 2);
		sp20.unk8 = (s16)((func_800038E0_44E0() * arg1) / 0x10000) - (arg1 / 2);
		sp20.unkA = (s16)((func_800038E0_44E0() * arg1) / 0x10000) - (arg1 / 2);
		func_80081C84_90C34(arg0, &sp20);
	}
}

// AI - Conditional spark effect based on speed
void func_80090A6C_9FA1C(u8 arg0, s16 arg1, u16 arg2)
{
	Unk8014DD50 sp28;
	s32 var_v0;
	s32 var_v1;
	sp28 = D_8013C9EC_14B99C;
	var_v0 = alienInstances[arg0].unk2A;
	var_v1 = alienInstances[arg0].unkE;
	if (var_v0 >= 0x8001)
	{
		var_v0 = 0xFFFF - var_v0;
	}
	if (var_v1 >= 0x8001)
	{
		var_v1 = 0xFFFF - var_v1;
	}
	if ((((alienInstances[arg0].unk12 > 0) || (var_v0 >= (var_v1 + 0x3E8))) || ((var_v1 - 0x3E8) >= var_v0)) && (alienInstances[arg0].unk20 & (ALIEN_FLAG_TARGET_PT | ALIEN_FLAG_TARGET_VEHICLE | ALIEN_FLAG_TARGET_OBJ)))
	{
		func_80081E5C_90E0C(arg1);
		if (D_8014DD50[arg1].unkE == 0)
		{
			sp28.unk6 = (s16)((func_800038E0_44E0() * arg2) / 0x10000) - (arg2 / 2);
			sp28.unk8 = (s16)((func_800038E0_44E0() * arg2) / 0x10000) - (arg2 / 2);
			sp28.unkA = (s16)((func_800038E0_44E0() * arg2) / 0x10000) - (arg2 / 2);
			func_80081C84_90C34((u8)arg1, &sp28);
		}
	}
}

// https://decomp.me/scratch/qLxSW
// CURRENT(15)
#ifdef NON_MATCHING
// AI - Face toward the player
void func_80090C14_9FBC4(u8 arg0)
{
	s16 sp2C2;
	s16 sp2C;
	s32 diffX;
	s32 diffZ;

	diffX = alienInstances[arg0].unk14 - alienInstances[arg0].unk0;
	diffZ = alienInstances[arg0].unk18 - alienInstances[arg0].unk4;
	sp2C = func_80003824_4424((f32)-diffZ, (f32)diffX);
	diffX = D_80052B34->unk0 - alienInstances[arg0].unk0;
	diffZ = D_80052B34->unk4 - alienInstances[arg0].unk4;
	diffX = sp2C - func_80003824_4424((f32)diffX, (f32)diffZ);
	if (((-diffX < diffX) ? diffX : -diffX) < 0x4000)
	{
		sp2C += 0x8000;
	}
	alienInstances[arg0].unk34 = 0x78;
	alienInstances[arg0].unk47 |= 1;
	alienInstances[arg0].unk2A = sp2C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_80090C14_9FBC4.s")
#endif

// CURRENT(2109)
#ifdef NON_MATCHING
// AI - Boss/Drone King AI state machine
void func_80090D0C_9FCBC(u8 arg0)
{
	AlienInstance *inst;
	u8 typeIdx;
	s16 pathNodes[2];
	s16 typeSlot;
	s8 pathResult;
	s32 pos2;
	s32 pos1;
	s32 pos0;
	s32 pad1;
	AlienInstance *parent;
	Unk8014DD50 *route;
	s32 parentFlags;
	s32 parentTimer;
	s32 tmp;

	inst = &alienInstances[arg0];
	typeIdx = inst->typeIndex;
	typeSlot = D_8014DD50[inst->unkC].unkC;
	func_80086230_951E0(arg0, typeSlot, 0x17E8);

	parent = &alienInstances[inst->unk25];
	inst->unk20 |= (ALIEN_FLAG_PLAYER | ALIEN_FLAG_UNKG | ALIEN_FLAG_TARGET_PT);
	parentTimer = *(s32 *)&parent->unk10;
	parentFlags = parent->unk20;
	parentTimer--;
	*(s32 *)&parent->unk10 = parentTimer;

	if ((parentFlags << 0xF) < 0)
	{
		if (parentTimer == 0)
		{
			*(s32 *)&parent->unk10 = 1;
		}
		tmp = inst->unkC;
		pathNodes[1] = D_8014DD50[tmp].unkC;
		pathNodes[0] = tmp;
		pathResult = func_80081F18_90EC8(arg0, 2, 5, pathNodes, &D_8013C848_14B7F8);
		if ((inst->unk36 == 2) || (pathResult == 1))
		{
			if (func_80086A34_959E4(arg0, 1, (s16)(func_800870D8_96088(0x40, 0x1F) + 0x8000)))
			{
				func_80137468_146418(arg0, 0xA);
				inst->unk1E = 8;
			}
			inst->unk1E--;
		}
		if (pathResult == 5)
		{
			parent->unk20 &= ~ALIEN_FLAG_UNKH;
		}
		return;
	}

	if ((parentFlags << 0xE) < 0)
	{
		if (*(s32 *)&parent->unk10 == 0)
		{
			*(s32 *)&parent->unk10 = 1;
		}
		if (inst->unk1E > 0)
		{
			inst->unk1E--;
		}
		else
		{
			parent->unk20 &= ~ALIEN_FLAG_UNKI;
			func_800871CC_9617C(arg0, 0, 0x2D - (currentLevel * 5));
		}

		route = &D_8014DD50[typeSlot];
		func_80128428_1373D8(inst, route->unk0, route->unk2 + 0xA, route->unk4 + 0x37, &pos2, &pos1, &pos0);
		func_800C56A4_D4654((s16)pos2, (s16)pos1, (s16)pos0, 0x8C, 0xA, 0x10, 0x28);
		return;
	}

	func_8008751C_964CC(arg0, 0x15E, 0x1F4);
	if (func_80084FE8_93F98(arg0, 0x4000))
	{
		u32 divisor;

		inst->unk20 &= ~ALIEN_FLAG_AWAY;
		divisor = (func_800038E0_44E0() % 5) + 4;
		if (((u32)D_80052A8C % divisor) == 0)
		{
			route = &D_8014DD50[typeSlot];
			func_80128428_1373D8(inst, route->unk0, route->unk2 + 0xA, route->unk4 + 0x14, &pos2, &pos1, &pos0);
			func_800CC7B0_DB760(0x28, 0x32, (u8)((func_800038E0_44E0() % 6) + 6), (s16)pos2, pos1, pos0);
			func_801371B8_146168((s32)inst, 0x13F, inst->unk0, inst->unk2, inst->unk4, -1.0f);
		}
	}
	else
	{
		inst->unk20 |= ALIEN_FLAG_AWAY;
	}

	if ((*(s32 *)&parent->unk10 <= 0) || (inst->unk47 & 1))
	{
		inst->unk20 &= ~(ALIEN_FLAG_PLAYER | ALIEN_FLAG_UNKG | ALIEN_FLAG_TARGET_PT | ALIEN_FLAG_AWAY);
		*(s32 *)&parent->unk10 = 0;
		D_8014DD50[D_8014DD50[D_8014DD50[D_8014DD50[typeSlot].unkC].unkD].unkD].unk2 = -4;
		return;
	}

	if (func_80084E54_93E04((VehicleInstance *)inst, (AlienInstance *)D_80052B34) < 0x2EE)
	{
		tmp = (s16)(inst->unkE - inst->unk2A);
		if (tmp < 0)
		{
			pad0 = -tmp;
		}
		else
		{
			pad0 = tmp;
		}
		if (pad0 < alienTypes[typeIdx].unk42)
		{
			if (inst->unk20 & ALIEN_FLAG_AWAY)
			{
				parent->unk20 |= ALIEN_FLAG_UNKH;
				inst->unk36 = 0;
				inst->unk1E = 0;
			}
			else
			{
				parent->unk20 |= ALIEN_FLAG_UNKI;
				inst->unk1E = 0x28;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_80090D0C_9FCBC.s")
#endif

// CURRENT(956)
#ifdef NON_MATCHING
// AI - Hybrid boss/companion AI update
void func_80091220_A01D0(u8 arg0)
{
	AlienInstance *instance = &alienInstances[arg0];
	AlienInstance *parent = &alienInstances[instance->unk25];
	s16 sp50;
	s16 sp54;
	s16 sp58;
	s16 instanceValue;
	s32 randomValue;
	u32 divisor;

	instanceValue = instance->unkC;
	if (*(s32 *)&parent->unk10 != 0)
	{
		func_80090D0C_9FCBC(arg0);
	}
	else
	{
		func_8009012C_9F0DC(arg0);
		if (instance->unk20 & ALIEN_FLAG_UNKP)
		{
			if ((instance->unk20 & ALIEN_FLAG_UNKG) == 0)
			{
				s8 nodeIdx;

				*(s32 *)&parent->unk10 = 0x190;
				instance->unk20 |= ALIEN_FLAG_UNKG;
				instance->unk34 = 1;
				nodeIdx = D_8014DD50[instance->unkC].unkC;
				nodeIdx = D_8014DD50[nodeIdx].unkC;
				nodeIdx = D_8014DD50[nodeIdx].unkD;
				D_8014DD50[D_8014DD50[nodeIdx].unkD].unk2 = -0x7D00;
			}
			else if ((instance->unk47 & 1) == 0)
			{
				func_80090C14_9FBC4(arg0);
			}
		}
	}

	if ((instance->unk24 != 0) && ((D_80031420 & 3) == 3))
	{
		randomValue = func_800038E0_44E0();
		divisor = (randomValue % 0x28) + 0x14;
		if (((u32)D_80052A8C % divisor) == 0)
		{
			func_80128428_1373D8(
				instance,
				D_8014DD50[D_8014DD50[instanceValue].unkC].unk0,
				D_8014DD50[D_8014DD50[instanceValue].unkC].unk2 - 0x14,
				D_8014DD50[D_8014DD50[instanceValue].unkC].unk4 + 0x38,
				&sp58,
				&sp54,
				&sp50);

			if ((currentLevel != LEVEL_SIBERIA) || (D_80047F94 != 0))
			{
				func_800CA5EC_D959C(sp58, sp54, sp50, 0, 0, 0, 0xA, 3, 4, 0xFF, 0xFF, 0, 0, 0xFF);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_80091220_A01D0.s")
#endif

// CURRENT(5477)
#ifdef NON_MATCHING
// AI - Building targeting / Drone Hunter AI
void func_80091470_A0420(u8 arg0)
{
	AlienInstance *inst = &alienInstances[arg0];
	u8 parentIdx = inst->unk25;

	inst->unk3A = 0xFF;
	if (!(inst->unk20 & ALIEN_FLAG_TARGET_PT))
	{
		if (inst->unk20 & ALIEN_FLAG_UNKF)
		{
			u8 buildingIdx = ((u8 *)&inst->unk38)[1];
			u8 buildingType = buildingInstances[buildingIdx].unk11;
			u8 target = func_8011C338_12B2E8((s8 *)(&D_80146688_155638[currentLevel - 1][buildingType]), 0);
			func_80080B44_8FAF4(arg0, target);
			return;
		}

		if (alienInstances[parentIdx].unk20 & ALIEN_FLAG_UNKF)
		{
			BuildingInstance *building;
			u8 buildingIdx;
			u8 found;

			func_80081BB0_90B60(arg0);
			buildingIdx = ((u8 *)&alienInstances[parentIdx].unk38)[1];
			building = &buildingInstances[buildingIdx];
			if ((s8)building->hitPoints < (buildingTypes[building->buildingType].unk19 / 2))
			{
				osSyncPrintf(&D_80141EB0_150E60, buildingIdx);
				found = func_8011B6C0_12A670(inst->unk0, inst->unk4, alienTypes[inst->typeIndex].unk51 / 20, 1, 0x100C);
				if (found != 0xFF)
				{
					func_80080B44_8FAF4(arg0, found);
					inst->unk16 += buildingTypes[buildingInstances[found].buildingType].unk14 + 0xC8;
					return;
				}
				alienInstances[parentIdx].unk20 |= ALIEN_FLAG_UNKD;
				if (alienInstances[parentIdx].unk2C < 4)
				{
					alienInstances[parentIdx].unk2C = 4;
				}
				func_80081AD4_90A84(arg0, parentIdx);
				return;
			}
			func_80080B44_8FAF4(arg0, buildingIdx);
			inst->unk16 += buildingTypes[building->buildingType].unk14 + 0xC8;
			return;
		}

		func_80081AD4_90A84(arg0, parentIdx);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_80091470_A0420.s")
#endif

// AI - Parent targeting helper
void func_8009170C_A06BC(u8 arg0)
{
	u8 unk25;
	unk25 = alienInstances[arg0].unk25;
	if ((&alienInstances[unk25])->unk20 & ALIEN_FLAG_UNKD)
	{
		if (alienInstances[arg0].unk20 & ALIEN_FLAG_TARGET_PT)
		{
			(&alienInstances[unk25])->unk20 &= ~ALIEN_FLAG_UNKD;
			func_80080B44_8FAF4(unk25, (u8)alienInstances[arg0].unk38);
			(&alienInstances[unk25])->unk20 |= ALIEN_FLAG_UNKE;
		}
	}
}

// AI - Player proximity check
s32 func_8009179C_A074C(u8 arg0, s32 arg1)
{
	if (((-(alienInstances[arg0].unk0 - D_80052B34->unk0) <
				  (alienInstances[arg0].unk0 - D_80052B34->unk0)
			  ? (alienInstances[arg0].unk0 - D_80052B34->unk0)
			  : -(alienInstances[arg0].unk0 - D_80052B34->unk0)) > (-(alienInstances[arg0].unk4 - D_80052B34->unk4) <
																			(alienInstances[arg0].unk4 - D_80052B34->unk4)
																		? (alienInstances[arg0].unk4 - D_80052B34->unk4)
																		: -(alienInstances[arg0].unk4 - D_80052B34->unk4))
			 ? (-(alienInstances[arg0].unk0 - D_80052B34->unk0) <
						(alienInstances[arg0].unk0 - D_80052B34->unk0)
					? (alienInstances[arg0].unk0 - D_80052B34->unk0)
					: -(alienInstances[arg0].unk0 - D_80052B34->unk0))
			 : (-(alienInstances[arg0].unk4 - D_80052B34->unk4) <
						(alienInstances[arg0].unk4 - D_80052B34->unk4)
					? (alienInstances[arg0].unk4 - D_80052B34->unk4)
					: -(alienInstances[arg0].unk4 - D_80052B34->unk4))) < (arg1 << 8))
	{
		if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_PLAYER))
		{
			func_80081BB0_90B60(arg0);
			alienInstances[arg0].unk20 |= ALIEN_FLAG_PLAYER | ALIEN_FLAG_TARGET_PT;
			alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKE;
		}
		return 1;
	}
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_PLAYER)
	{
		alienInstances[arg0].unk20 &= ~(ALIEN_FLAG_PLAYER | ALIEN_FLAG_TARGET_PT);
	}
	return 0;
}

// AI - Set target-distance flag
void func_800918E0_A0890(u8 arg0)
{
	AlienInstance *alien;
	s32 flags;
	s32 dx, neg_dx, abs_dx;
	s32 dy, neg_dy, abs_dy;

		alien = &alienInstances[arg0];
	flags = alien->unk20;
	if (flags & ALIEN_FLAG_TARGET_PT)
	{
		dx = alien->unk0 - alien->unk14;
		neg_dx = -dx;
		if (neg_dx < dx)
		{
			abs_dx = dx;
		}
		else
		{
			abs_dx = neg_dx;
		}
		dy = alien->unk4 - alien->unk18;
		neg_dy = -dy;
		if (neg_dy < dy)
		{
			abs_dy = dy;
		}
		else
		{
			abs_dy = neg_dy;
		}
		if (abs_dy < abs_dx)
		{
			if (neg_dx < dx)
			{
				abs_dx = dx;
			}
			else
			{
				abs_dx = neg_dx;
			}
			dx = abs_dx;
		}
		else
		{
			if (neg_dy < dy)
			{
				neg_dx = dy;
			}
			else
			{
				neg_dx = neg_dy;
			}
			dx = neg_dx;
		}
		if (dx < 0x400)
		{
			alien->unk20 = flags | ALIEN_FLAG_UNKD;
			return;
		}
	}
	alien->unk20 = flags & ~ALIEN_FLAG_UNKD;
}

// AI - General AI step (detach, player check, target update)
s32 func_800919C0_A0970(u8 arg0, u8 arg1)
{
	AlienInstance *alien;

	if (func_8008E478_9D428(arg0) == 0)
	{
		if (func_8009179C_A074C(arg0, 1) == 0)
		{
			func_8009170C_A06BC(arg0);
			func_80091470_A0420(arg0);
		}
	}

	alien = &alienInstances[arg0];

	if (!(alien->unk20 & ALIEN_FLAG_UNKD))
	{
		if (func_800808F0_8F8A0(arg0, &alien->unkE) != 0)
		{
			return 1;
		}
	}

	if (arg1)
	{
		func_800918E0_A0890(arg0);
	}

	return 0;
}

// AI - Stun/reset alien
void func_80091A78_A0A28(u8 arg0)
{
	alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKD;
	alienInstances[arg0].unk12 = 0;
	alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKE;
	alienInstances[arg0].unk2C = 0x64;
}

// CURRENT(2930)
#ifdef NON_MATCHING
// AI - Building attack/destruction
s32 func_80091AC0_A0A70(u8 arg0, s8 arg1, s8 arg2)
{
	AlienInstance *temp_s0;
	s32 var_a1;
	u8 sp7B;
	s16 sp6C[6];
	f32 sp60;
	f32 sp5C;
	s16 sp5A;

	temp_s0 = &alienInstances[arg0];
	sp5A = D_8014DD50[temp_s0->unkC].unkC;
	sp7B = func_8011D260_12C210(arg1, arg2) & 0xFF;
	if (sp7B == 0xFF)
	{
		return 0;
	}

	var_a1 = -temp_s0->unk12;
	if (var_a1 < temp_s0->unk12)
	{
		var_a1 = temp_s0->unk12;
	}

	var_a1 = (alienTypes[temp_s0->typeIndex].unk52 * var_a1) / 0xC8 >> 5;
	if ((temp_s0->unk20 << 4) >= 0)
	{
		func_8011BEA0_12AE50(sp7B & 0xFF, var_a1);
		if (temp_s0->unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB))
		{
			func_80137468_146418(arg0, 8);
		}

		if (temp_s0->unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB))
		{
			sp60 = (f32)sins((temp_s0->unk6 - 0x4000) & 0xFFFF) / 32768.0;
			sp5C = -((f32)coss((temp_s0->unk6 - 0x4000) & 0xFFFF) / 32768.0);
			func_80128428_1373D8(temp_s0, D_8014DD50[sp5A].unk0, D_8014DD50[sp5A].unk2, D_8014DD50[sp5A].unk4 + 0x1E,
								 (s32 *)&sp6C[4], (s32 *)&sp6C[2], (s32 *)&sp6C[0]);
			func_800DE9B8_ED968(sp6C[5], sp6C[3], sp6C[1], 0xFF);
			func_800DEE5C_EDE0C(sp6C[5], (func_800B84D0_C7480(sp6C[5], sp6C[1]) >> 8) + 5, sp6C[1], 0x78, 0x10);
			func_800C541C_D43CC(sp6C[5], sp6C[3], sp6C[1], (s8)(s32)(sp60 * 127.0f), 0x50,
								(s32)(sp5C * 127.0f), 0x3C, 0xFF, 0x50, 0x28, 0xFF, 0xFF, 0x80);
			func_800DEA08_ED9B8(sp6C[5], sp6C[3], sp6C[1], 0x96, 8, 6, 0x28, 0xC8, 0x1E, 0x1E, 0x1E);
			func_80135D44_144CF4(*(s32 *)&sp6C[4], *(s32 *)&sp6C[2], *(s32 *)&sp6C[0], 3.0f);
		}
	}

	temp_s0->unk20 = temp_s0->unk20 & ~ALIEN_FLAG_UNKD;
	if ((temp_s0->unk20 << 4) >= 0)
	{
		if (!((buildingInstances[sp7B].unk8 >> 12) & 0x100C))
		{
			alienInstances[temp_s0->unk25].unk38 = (s16)sp7B;
		}
		temp_s0->unk20 = temp_s0->unk20 & ~ALIEN_FLAG_TARGET_PT;
	}

	func_80091A78_A0A28(arg0);
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_80091AC0_A0A70.s")
#endif

// https://decomp.me/scratch/TAjH8
// CURRENT(38)
#ifdef NON_MATCHING
// AI - Movement AI with building attack
void func_80091E70_A0E20(u8 arg0)
{

	u8 useAttack = 0;
	s16 targetSpeed;
	u8 typeIndex = alienInstances[arg0].typeIndex;

	s32 x;
	s32 z;

	targetSpeed = alienTypes[typeIndex].unk40;
	x = alienInstances[arg0].unk0 >> 8;
	z = alienInstances[arg0].unk4 >> 8;
	if ((x != (alienInstances[arg0].unk2E >> 8)) || (z != (alienInstances[arg0].unk32 >> 8)))
	{
		useAttack = 1;
	}
	func_800919C0_A0970(arg0, useAttack);
	if (useAttack != 0)
	{
		if (func_800B325C_C220C((s8)x, (s8)z, 0x800) != 0)
		{
			func_80091AC0_A0A70(arg0, (s8)x, (s8)z);
		}
	}
	if ((alienInstances[arg0].unk20 & ALIEN_FLAG_PLAYER) == 0)
	{
		if (((alienInstances[arg0].unk20 & ALIEN_FLAG_UNKD) != 0) && ((alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE) == 0))
		{
			targetSpeed = 0x1000;
			if ((D_80052A8C & 0x1C) == (arg0 & 0x1C))
			{
				if (func_800B325C_C220C((s8)(alienInstances[arg0].unk14 >> 8), (s8)(alienInstances[arg0].unk18 >> 8), 0x800) == 0)
				{
					alienInstances[arg0].unk20 &= ~(ALIEN_FLAG_UNKD | ALIEN_FLAG_TARGET_PT);
				}
			}
		}
		else if ((alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE) != 0)
		{
			targetSpeed = -0x80;
			alienInstances[arg0].unk2C -= 4;
			if (alienInstances[arg0].unk2C <= 0)
			{
				alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKE;
			}
		}
	}
	if (alienInstances[arg0].unk12 < targetSpeed)
	{
		alienInstances[arg0].unk12 += alienTypes[typeIndex].unk3E * 4;
	}
	else if (alienInstances[arg0].unk12 > targetSpeed)
	{
		alienInstances[arg0].unk12 -= alienTypes[typeIndex].unk3E * 4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_80091E70_A0E20.s")
#endif

// CURRENT(18369)
#ifdef NON_MATCHING
// AI - Drone/Boss attack AI with melee patterns
void func_800920C0_A1070(u8 arg0)
{
	u8 useAttack;
	u8 id;
	s16 targetSpeed;
	s16 sp86;
	s16 sp80;
	s16 sp7E;
	s32 sp78;
	s32 sp74;
	s32 sp70;
	f32 sp6C;
	f32 scale;
	s32 moveBlocked;
	AlienType *type;
	Unk8014DD50 *entry2;
	Unk8014DD50 *entry3;
	Unk8014DD50 *entry;
	AlienInstance *alien;

	alien = &alienInstances[arg0];
	id = alien->typeIndex;
	type = &alienTypes[id];
	targetSpeed = type->unk40;
	entry2 = &D_8014DD50[alien->unkC];
	sp86 = entry2->unkC;
	entry3 = &D_8014DD50[sp86];
	sp80 = D_8014DD50[entry3->unkD].unkD;
	entry = entry3;
	useAttack = 0;

	func_80128428_1373D8(alien, entry3->unk0, (s16)((entry->unk2 + entry3->unk2) - 0x16), (s16)(entry->unk4 + entry3->unk4 + 0x32), &sp78, &sp74, &sp70);
	if (sp80 != -1)
	{
		sp7E = D_8014DD50[sp80].unkD;
		func_80090948_9F8F8(sp80, 0x5DC);
		func_80090948_9F8F8(sp7E, 0x5DC);
	}

	func_80090948_9F8F8(sp86, 0x7D0);
	if (((alien->unk2E >> 8) != (alien->unk0 >> 8)) || ((alien->unk32 >> 8) != (alien->unk4 >> 8)))
	{
		useAttack = 1;
	}

	moveBlocked = func_800919C0_A0970(arg0, useAttack);

	if (!(alien->unk20 & ALIEN_FLAG_UNKE))
	{
		if ((alien->unk47 & 4) && (func_80091AC0_A0A70(arg0, alien->unk28, alien->unk29) != 0))
		{
			targetSpeed = 0;
			alien->unk47 &= (u8)0xFA;
		}

		if (alien->unk47 & 8)
		{
			s32 capped;
			s16 fx;

			alien->unk47 &= (u8)0xF6;
			targetSpeed = 0;

			if ((D_80052B34->unk1A != 0) && (alien->unk12 > 0))
			{
				func_80137468_146418(arg0, 0x135);

				capped = vehicleTypes[D_80052B34->unk1A].unk32;
				if (capped >= 0x2711)
				{
					capped = 0x2710;
				}

				scale = (f32)(1.0 - ((f64)(f32)capped / 10000.0)) * ((f32)alien->unk12 / 512.0f);
				fx = (s16)(s32)((f32)D_80145BE0_154B90[*(s32 *)alienTypes[id].pad1C].unk2 * scale);
				func_80122524_1314D4(D_80052B34, fx, alien->unk0, alien->unk4);

				func_80128288_137238(D_80052B34, alien->unk6, (s16)(s32)((f64)scale * 120.0), (s16)(s32)((f64)scale * 180.0));

				sp6C = (f32)((f64)(f32)sins((u16)(alien->unk6 + 0x4000)) / 32768.0);
				func_800C541C_D43CC(
					D_80052B34->unk0,
					D_80052B34->unk2,
					D_80052B34->unk4,
					(s8)(s32)(sp6C * 127.0f),
					0x50,
					(s8)(s32)(-((f64)(f32)coss((u16)(alien->unk6 + 0x4000)) / 32768.0) * 127.0),
					0x3C,
					0x80,
					0x14,
					0x14,
					0xFF,
					0xFF,
					0xC8);
			}

			func_80091A78_A0A28(arg0);
			if (alien->unk1E != 0)
			{
				alien->unk1E--;
			}
		}

		if (alien->unk20 & ALIEN_FLAG_UNKD)
		{
			targetSpeed = 0x200;

			if (!(alien->unk20 & ALIEN_FLAG_PLAYER) && ((arg0 & 0xF) == (D_80052A8C & 0xF)))
			{
				if (func_800B325C_C220C((s8)(alien->unk14 >> 8), (s8)(alien->unk18 >> 8), 0x800) == 0)
				{
					alien->unk20 &= ~(ALIEN_FLAG_UNKD | ALIEN_FLAG_TARGET_PT);
				}
			}

			if (alien->unk47 & 1)
			{
				alien->unk20 &= ~(ALIEN_FLAG_UNKD | ALIEN_FLAG_TARGET_PT);
			}
		}
	}
	else
	{
		s16 timer;
		s8 arm;

		alien->unk2C--;
		if (entry3->unkC != -1)
		{
			entry = &D_8014DD50[(s16)entry3->unkC];
		}

		timer = alien->unk2C;
		arm = entry->unkD;

		if (timer < 0x46)
		{
			targetSpeed = -0x80;
			if ((timer <= 0) || (alien->unk47 & 1))
			{
			alien->unk20 &= ~ALIEN_FLAG_UNKE;

			entry3->unk6 = (s16)(s32)(((f32)sins((u16)((alien->unk2C * 0x17E8) & 0xFFFF)) / 32768.0) * 50.0);
			}
		}
		else
		{
			targetSpeed = 0;
			if ((D_80052B34->unk1A == 0) && (alien->unk20 & ALIEN_FLAG_PLAYER))
			{
				s16 swing;
				s16 negSwing;
				s16 absSwing;
				u8 savedArg0;

				swing = (s16)(s32)(sinf((f32)((((timer - 0x46) * 6.0) / 30.0))) * (f32)(timer * 0x32));
				negSwing = -swing;
				absSwing = swing;
				if (negSwing >= swing)
				{
					absSwing = negSwing;
					negSwing = -negSwing;
				}

				entry->unk6 = negSwing;
				D_8014DD50[arm].unk6 = absSwing;

				if ((negSwing == 0) && (timer != 0x63))
				{
					savedArg0 = arg0;
					func_80137468_146418(arg0, 0x22);
					if ((func_80084F00_93EB0(D_80052B34, alien) < 0xC8) && (func_80084FE8_93F98(arg0, 0x400) != 0))
					{
						alien->unk1E = 0;
						func_80122524_1314D4(D_80052B34, 0x64, alien->unk0, alien->unk4);
						func_80137468_146418(savedArg0, 2);
					}
				}

				if (((alien->unk2C + 5) % 10) == 0)
				{
					sp6C = (f32)((f64)(f32)sins((u16)(alien->unk6 + 0x4000)) / 32768.0);
					func_800CA5EC_D959C(
						(s16)sp78,
						(s16)sp74,
						(s16)sp70,
						(s8)(s32)(sp6C * 127.0f),
						0,
						(s8)(s32)(-((f64)(f32)coss((u16)(alien->unk6 + 0x4000)) / 32768.0) * 127.0),
						0x28,
						3,
						0xC,
						0xFF,
						0xAA,
						0xFF,
						0,
						0x8C);
				}
			}
		}
	}

	if ((D_80052A8C % ((func_800038E0_44E0() % 20) + 0xA)) == 0)
	{
		func_800CA5EC_D959C((s16)sp78, (s16)sp74, (s16)sp70, 0, 0, 0, 0xA, 3, 6, 0xFF, 0xAA, 0xFF, 0, 0x8C);
	}

	if ((moveBlocked != 0) && (targetSpeed > 0))
	{
		targetSpeed = 0;
	}

	if (alien->unk12 < targetSpeed)
	{
		alien->unk12 += type->unk3E;
		if (targetSpeed < alien->unk12)
		{
			alien->unk12 = targetSpeed;
		}
	}
	else if (targetSpeed < alien->unk12)
	{
		alien->unk12 -= type->unk3E;
		if (alien->unk12 < targetSpeed)
		{
			alien->unk12 = targetSpeed;
		}
	}

	if (alien->unk1E != 0)
	{
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_800920C0_A1070.s")
#endif

// AI - Spawn a decoy/statue alien
s32 func_80092A50_A1A00(s16 arg0, s16 arg1, s32 arg2)
{
	u8 result;
	AlienInstance *ptr;
	result = func_8007956C_8851C(0xA);
	if (result != 0xFF)
	{
		ptr = &alienInstances[result];
		ptr->unk0 = arg0;
		ptr->unk4 = arg1;
		ptr->unk20 &= ~ALIEN_FLAG_PLAYER;
		ptr->unk20 |= ALIEN_FLAG_UNKE;
		ptr->unk3F = arg2;
	}
	return result;
}

// https://decomp.me/scratch/Eb0Us
// AI - Spawn 6 statue/decoration aliens
void func_80092ADC_A1A8C(void)
{
	s32 i;
	u8 result;
	for (i = 0; i < 5; i++)
	{
		result = func_80092A50_A1A00(D_8013CA00_14B9B0[i].unk0 << 8, D_8013CA00_14B9B0[i].unk1 << 8, 0x10);
		if (result == 0xFF)
			continue;
		alienInstances[result].unk26 = 0;
		alienInstances[result].unk38 = 0x2F;
		alienInstances[result].unk20 |= ALIEN_FLAG_UNKF;
		D_8004817C++;
		func_80092BBC_A1B6C(result);
	}
}

// AI - Advance patrol waypoint
void func_80092BBC_A1B6C(u8 arg0)
{
	s8 x = 0;
	AlienInstance *inst;
	s8 *entry = &D_8013CA0C_14B9BC[((0, alienInstances[arg0].unk26)) * 2];
	x = entry[0];
	if ((!x) && (!entry[1]))
	{
		alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKF;
	}

	alienInstances[arg0].unk14 = (x << 8) + 0x80;
	alienInstances[arg0].unk18 = (entry[1] << 8) + 0x80;
	alienInstances[arg0].unk26++;
}

// AI - Patrol distance check and state transitions
void func_80092C40_A1BF0(u8 arg0)
{
	s32 dz;
	s32 dx;
	s32 abs_dx;
	s32 abs_dz;
	dx = alienInstances[arg0].unk0 - alienInstances[arg0].unk14;
	dz = alienInstances[arg0].unk4 - alienInstances[arg0].unk18;
	abs_dx = -dx < dx ? dx : -dx;
	abs_dz = -dz < dz ? dz : -dz;
	dz = (0, abs_dz < abs_dx
				 ? -dx < dx ? dx : -dx
			 : -dz < dz ? dz
						: -dz);
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKF)
	{
		if (dz < 0x100)
		{
			func_80092BBC_A1B6C(arg0);
			if ((!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKF)) && (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE))
			{
				func_80080B44_8FAF4(arg0, (u8)alienInstances[arg0].unk38);
			}
		}
	}
	else
	{
		if ((alienInstances[arg0].unk20 & ALIEN_FLAG_TARGET_PT) && (dz < 0x1F4))
		{
			alienInstances[arg0].unk20 &= ~ALIEN_FLAG_TARGET_PT;
			alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKH | ALIEN_FLAG_UNKC;
			return;
		}
		if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKC)
		{
			if (dz >= 0x321)
			{
				alienInstances[arg0].unk20 &= ~(ALIEN_FLAG_UNKH | ALIEN_FLAG_UNKC);
				alienInstances[arg0].unk20 |= ALIEN_FLAG_TARGET_PT;
				return;
			}
			if (dz < 0xC8)
			{
				if (alienInstances[arg0].unk3A == 0)
				{
					alienInstances[arg0].unk20 &= ~(ALIEN_FLAG_UNKH | ALIEN_FLAG_UNKC);
					alienInstances[arg0].unk20 |= ALIEN_FLAG_FALL | ALIEN_FLAG_UNKD | ALIEN_FLAG_TARGET_PT;
					alienInstances[arg0].unk2C = 0x14;
					alienInstances[arg0].unk10 = 0xA0;
					if (alienInstances[arg0].unk20 & (ALIEN_FLAG_UNKB | ALIEN_FLAG_UNKA))
					{
						func_80137468_146418(arg0, 0x13);
					}
				}
			}
		}
	}
}

// AI - Explosion/kill handling
void func_80092DFC_A1DAC(u8 arg0)
{
	AlienInstance *alien = &alienInstances[arg0];

	if (alien->unk20 & ALIEN_FLAG_UNKC)
	{
		func_8008064C_8F5FC(arg0);
	}
	else
	{
		func_8008076C_8F71C(arg0);
	}

	if (alien->unk20 & (ALIEN_FLAG_UNKE | ALIEN_FLAG_UNKF))
	{
		if (alien->unk20 & ALIEN_FLAG_UNKD)
		{
			if (alien->unk2C > 0)
			{
				alien->unk2C -= 4;
				return;
			}
			if (alien->unk3F != 0xFF)
			{
				func_800765C4_85574(alien->unk3F);
			}
			func_80129354_138304((s32)alien, 0, 0, 0, 0);
			func_80088760_97710(alien);
			func_80124B5C_133B0C(alien->unk0, alien->unk2, alien->unk4, 0x12C, 0x100);
			return;
		}
		func_80092C40_A1BF0(arg0);
	}
}

// https://decomp.me/scratch/NgKhQ
// CURRENT(136)
#ifdef NON_MATCHING
// AI - Patrol alien update with rotation sync
void func_80092EF4_A1EA4(u8 arg0)
{
	u8 sp3F;
	u8 new_var;
	s16 sp38;
	Unk8014DD50 *temp_v1;
	u16 temp_a0;
	s8 temp_a1;
	sp3F = alienInstances[arg0].typeIndex;
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKC)
	{
		func_8008064C_8F5FC(arg0);
	}
	else
	{
		func_8008076C_8F71C(arg0);
	}
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKD)
	{
		func_80137468_146418(arg0, 0x25);
		temp_v1 = &D_8014DD50[D_8014DD50[alienInstances[arg0].unkC].unkC];
		temp_a0 = temp_v1->unk8;
		temp_a1 = temp_v1->unkD;
		alienInstances[arg0].unk6 = alienInstances[arg0].unkE;
		if ((s32)temp_a0 >= 0x7D1)
		{
			temp_v1->unk8 = temp_a0 - 0x7D0;
			D_8014DD50[temp_a1].unk8 = (s16)(((u16)D_8014DD50[temp_a1].unk8) + 0x7D0);
		}

		func_8011E6FC_12D6AC(alienInstances[arg0].unk0, alienInstances[arg0].unk4, &sp38);
		new_var = alienInstances[arg0].unk47;
		if ((new_var & 0xE) || ((alienInstances[arg0].unk2 - alienTypes[sp3F].unkC) < sp38))
		{
			if (alienInstances[arg0].unk3F != 0xFF)
			{
				func_800765C4_85574(alienInstances[arg0].unk3F);
			}
			alienInstances[arg0].unk20 &= ~ALIEN_FLAG_FALL;
			func_80088760_97710(&alienInstances[arg0]);
			if (currentLevel == 1)
			{
				func_80124B5C_133B0C(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0x50, 0x100);
			}
			else
			{
				func_80124B5C_133B0C(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0x320, 0x100);
				func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16)(alienTypes[sp3F].unkC * 4), 0);
			}
		}
	}
	else
	{
		if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKC)
		{
			sp38 = func_8008E524_9D4D4(arg0, 0x2EE, 4);
			func_8008E978_9D928(arg0, sp38);
		}
		else
		{
			func_8008EDFC_9DDAC(arg0);
		}
		func_8008EF1C_9DECC(arg0);
		func_80092C40_A1BF0(arg0);
	}
	if (alienInstances[arg0].unk3A != 0)
	{
		alienInstances[arg0].unk3A--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_80092EF4_A1EA4.s")
#endif

// AI - Support alien update
void func_80093164_A2114(u8 arg0)
{
	func_8008076C_8F71C(arg0);
	if (((func_8008E478_9D428(arg0) == 0) && (func_8008E30C_9D2BC(arg0, 0x80000000) == 0)) && (func_8008E3E8_9D398(arg0) == 0))
	{
		func_8009170C_A06BC(arg0);
		func_80091470_A0420(arg0);
		if (!(D_80052A8C & 0x3F))
		{
			s16 targetIdx = func_80082394_91344(alienInstances[arg0].unk0, alienInstances[arg0].unk4, 3);
			if ((targetIdx < 0xFF) && (!(alienInstances[targetIdx].unk20 & ALIEN_FLAG_UNKF)))
			{
				func_800E52E8_F4298(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, alienInstances[targetIdx].unk0, alienInstances[targetIdx].unk2, alienInstances[targetIdx].unk4, 0);
				alienInstances[targetIdx].unk20 |= ALIEN_FLAG_UNKD | ALIEN_FLAG_UNKF;
				alienInstances[targetIdx].unk12 = 0;
				alienInstances[targetIdx].unk2C = 0xC8;
			}
		}
	}
}

// AI - Support + patrol hybrid update
void func_800932A8_A2258(u8 arg0)
{
	func_8008EDFC_9DDAC(arg0);
	func_8008EF1C_9DECC(arg0);
	func_80093164_A2114(arg0);
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_PLAYER)
	{
		if (func_80084FE8_93F98(arg0, 0x1000) != 0)
		{
			if (func_80087188_96138(arg0, 0, 0x10) != 0)
			{
				alienInstances[arg0].unk1E = 0x32;
			}
		}
	}
	if (alienInstances[arg0].unk1E != 0)
	{
		alienInstances[arg0].unk1E = alienInstances[arg0].unk1E - 1;
	}
}

// AI - Stop alien speed near player
void func_8009335C_A230C(u8 arg0)
{
	s32 dz;
	s32 dx;
	s32 abs_dx;
	s32 abs_dz;
	func_800873A8_96358(arg0);
	dz = alienInstances[arg0].unk0 - D_80052B34->unk0;
	dx = alienInstances[arg0].unk4 - D_80052B34->unk4;

	abs_dz = -dz < dz ? dz : -dz;
	abs_dx = -dx < dx ? dx : -dx;

	dz = abs_dx < abs_dz
			 ? (-dz < dz ? dz : -dz)
			 : (-dx < dx ? dx : -dx);
	if (dz < 0xC00)
	{
		alienInstances[arg0].unk12 = 0;
	}
}

// CURRENT(2444)
// AI - Guard/aggressive alien AI
void func_80093438_A23E8(u8 arg0)
{
	struct
	{
		s8 path;
		s16 pad2;
		s16 pad3;
		s16 node;
	} nodeLocal;
	s32 dx;
	s32 dz;
	s32 dist;
	s32 absDx;
	s32 absDz;

	nodeLocal.node = D_8014DD50[alienInstances[arg0].unkC].unkC;
	func_80090948_9F8F8(nodeLocal.node, 0x7D0);

	dz = alienInstances[arg0].unk0 - D_80052B34->unk0;
	dx = alienInstances[arg0].unk4 - D_80052B34->unk4;
	absDz = (-dz < dz) ? dz : -dz;
	absDx = (-dx < dx) ? dx : -dx;
	dist = absDx < absDz
			   ? ((-dz < dz) ? dz : -dz)
			   : ((-dx < dx) ? dx : -dx);

	if (D_80052B34->unk1A == 0)
	{
		if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKF)
		{
			alienInstances[arg0].unk12 = 0;
			if (alienInstances[arg0].unk47 == 0)
			{
				alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKF;
			}
		}
		else
		{
			func_8008735C_9630C(arg0);
		}

		if (alienInstances[arg0].unk47 & 8)
		{
			alienInstances[arg0].unk12 = 0;
			alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKF;
			if ((D_80052B34->unk1A == 0) && !(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKG))
			{
				alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKG;
				alienInstances[arg0].unk36 = 0;
			}
		}
		else if ((dist < 0x1F4) && (alienInstances[arg0].unk1E == 0) && (alienInstances[arg0].unk47 == 0))
		{
			alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKG;
			alienInstances[arg0].unk36 = 0;
			alienInstances[arg0].unk1E = 0x20;
		}
	}
	else
	{
		func_8008751C_964CC(arg0, 0xFA, 0x190);
		if ((dist < 0x1F4) && (alienInstances[arg0].unk1E == 0) && !(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKG))
		{
			alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKG;
			alienInstances[arg0].unk36 = 0;
		}
	}

	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKG)
	{
		if ((nodeLocal.path = func_8008E2B4_9D264(arg0, D_8014DD50[nodeLocal.node].unkC, D_8014DD50[D_8014DD50[nodeLocal.node].unkC].unkD)) == 2)
		{
			if ((D_80052B34->unk1A == 0) && (dist < 0x64) && (func_80084FE8_93F98(arg0, 0x400) != 0))
			{
				alienInstances[arg0].unk1E = 0;
				func_80085690_94640(arg0, 0x400);
				func_80137468_146418(arg0, 9);
				func_80137468_146418(arg0, 2);
			}
		}
		else
		{
			func_80087188_96138(arg0, 1, 0x14);
			alienInstances[arg0].unk1E = 0x2D - (currentLevel * 5);
		}

		if (nodeLocal.path == 3)
		{
			alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKG;
		}
	}

	if (alienInstances[arg0].unk1E != 0)
	{
		alienInstances[arg0].unk1E--;
	}
}

// AI - Turret/sentry AI
void func_8009377C_A272C(u8 arg0)
{
	s16 dx;
	s16 nextNode;
	s16 dist;
	s16 dz;
	s32 abs_dx;
	s32 abs_dz;
	s8 temp_a1;

	temp_a1 = D_8014DD50[alienInstances[arg0].unkC].unkC;
	nextNode = D_8014DD50[temp_a1].unkD;
	func_80086230_951E0(arg0, temp_a1, 0x4000);
	func_800877E8_96798(arg0, 0x12C, 0x190);

	dx = alienInstances[arg0].unk0 - alienInstances[arg0].unk14;
	dz = alienInstances[arg0].unk4 - alienInstances[arg0].unk18;
	abs_dx = -dx < dx ? dx : -dx;
	abs_dz = -dz < dz ? dz : -dz;
	dist = (abs_dz < abs_dx
				? -dx < dx
					? dx
					: -dx
				: -dz < dz
					? dz
					: -dz);

	if (alienInstances[arg0].unk4E != 0)
	{
		if ((func_80084FE8_93F98(arg0, 0x800) != 0) && (dist < 0x3E8) && !(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKG))
		{
			if (func_800871CC_9617C(arg0, 0, 0x28) != 0)
			{
				alienInstances[arg0].unk4B = 0;
				alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKG;
				if (1)
				{
				}
				alienInstances[arg0].unk1E = 0x14;
			}
		}
	}

	func_800A3D00_B2CB0(arg0, nextNode, 2, &D_8013CA24_14B9D4);

	if (alienInstances[arg0].unk1E != 0)
	{
		alienInstances[arg0].unk1E--;
	}
}

// AI - Calculate heading from terrain samples
s16 func_8009395C_A290C(u8 arg0, s16 arg1)
{
	f32 sp24;
	f32 sp20;
	s16 sp1E;
	s16 sp1F;
	sp24 = ((f32)coss(arg1) / 32768.0) * 30.0;
	sp20 = ((f32)sins(arg1) / 32768.0) * 30.0;
	sp1E = func_800B84D0_C7480((alienInstances[arg0].unk0 - sp24),
							   (alienInstances[arg0].unk4 - sp20)) >>
		   8;
	sp1F = func_800B84D0_C7480(
			   (alienInstances[arg0].unk0 + sp24),
			   (alienInstances[arg0].unk4 + sp20)) >>
		   8;
	return func_80003824_4424(100.0f, (sp1E - sp1F));
}

// AI - Speed control from distance parameter
void func_80093AE4_A2A94(u8 arg0, s32 arg1)
{
	u8 typeIdx;
	s16 type_val;

	typeIdx = alienInstances[arg0].typeIndex;
	type_val = alienTypes[typeIdx].unk40;
	if ((type_val >> 5) + 0xFA < arg1)
	{
		arg1 = (type_val >> 5) + 0xFA;
	}
	if (alienInstances[arg0].unk47 & 1)
	{
		alienInstances[arg0].unk12 = 0;
	}
	else if (arg1 >= 0xFB)
	{
		if (func_80084FE8_93F98(arg0, 0x800) != 0)
		{
			alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKF;
		}
		else
		{
			alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKF;
		}
		if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKF))
		{
			type_val = (s16)(type_val >> 1);
		}
		alienInstances[arg0].unk12 = (s16)(((arg1 - 0xFA) >> 1) << 5);
		if (type_val < alienInstances[arg0].unk12)
		{
			alienInstances[arg0].unk12 = type_val;
		}
	}
	else
	{
		alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKF;
		alienInstances[arg0].unk12 = (s16)(((arg1 - 0xFA) >> 2) << 5);
		if (alienInstances[arg0].unk12 < type_val >> 1)
		{
			alienInstances[arg0].unk12 = (s16)(-(type_val >> 1));
		}
	}
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKF)
	{
		alienInstances[arg0].unk10 = type_val;
	}
	else
	{
		alienInstances[arg0].unk10 = (s16)(type_val >> 1);
	}
	if (alienInstances[arg0].unk10 >= 0x401)
	{
		alienInstances[arg0].unk10 = 0x400;
	}
	alienInstances[arg0].unk20 |= ALIEN_FLAG_FALL;
}

// CURRENT(13145)
// AI - Major pathfinding/movement AI
#ifdef NON_MATCHING
void func_80093C7C_A2C2C(u8 arg0)
{
   register s32 typeIndex;
   s16 yawTarget;
   s16 pathNode;
   s16 tempS16;
   s16 pathNext;
   s32 dist;
   s16 sp9E;
   s16 spB0;
   s16 spB2;
   Unk8014DD50 *path1;
   Unk8014DD50 *path2;
   AlienInstance *alien;
   AlienType *type;
   s32 deltaX;
   s32 deltaZ;
   s32 absVal;
   s32 sign;
   Unk80154082 sp84;
   s32 x;
   s32 z;
   s32 xBack;
   s32 zBack;
   f32 vecX;
   f32 vecY;
   f32 vecZ;
   s32 heading;
   s8 pathResult;
   u16 pathAngle;

	 alien = &alienInstances[arg0];
	typeIndex = alien->typeIndex;
	type = &alienTypes[typeIndex];
	sp84 = D_8013CAFC_14BAAC;
	pathNode = D_8014DD50[alien->unkC].unkC;
	path1 = &D_8014DD50[pathNode];
	path2 = &D_8014DD50[path1->unkD];
	pathNext = (s16)path2->unkD;

		if ((alien->hitPoints < (type->unk3A / 4)) && (D_80222A70 < alien->unk2))
	{
		func_80089200_981B0(arg0, 4, 0x5A);
	}

	if ((D_80052B34->unk1A == 0) && (D_80222A70 >= D_80052B34->unk2))
	{
		func_800877E8_96798(arg0, 0x1F4, 0x320);
	}
	else if (func_800B325C_C220C((s8)(alien->unk0 >> 8), (s8)(alien->unk4 >> 8), 0x1000) != 0)
	{
		func_8008735C_9630C(arg0);
		alien->unk4E = 1;
	}
	else
	{
		func_80087720_966D0(arg0, dist);
	}

	deltaX = (s32)(alien->unk0 - D_80052B34->unk0) >> 2;
	deltaZ = (s32)(alien->unk4 - D_80052B34->unk4) >> 2;
	dist = (s32)sqrtf((f32)((deltaX * deltaX) + (deltaZ * deltaZ))) * 4;

	if (!(alien->unk20 & ALIEN_FLAG_FALL))
	{
		alien->unk30 = alien->unk2;
		if ((alien->unk3C != 0) && (D_80222A70 < alien->unk2))
		{
			x = alien->unk0;
			z = alien->unk4;
			vecY = 0.0f;
			vecX = (f32)(x >> 2) - D_80047954;
			vecZ = (f32)(z >> 2) - D_8004795C;
			guNormalize(&vecX, &vecY, &vecZ);
			vecX *= 120.0f;
			vecZ *= 120.0f;
			xBack = (s32)((f32)x - vecX);
			zBack = (s32)((f32)z - vecZ);

			if (alien->unk20 & ALIEN_FLAG_UNKF)
			{
				heading = (func_800B84D0_C7480(xBack, zBack) >> 8) + 0x32;
				func_800DEA08_ED9B8(xBack, heading, zBack, 0xC8, 0x14, 0, 0x32, 0xC8, 0x88, 0x67, 0x11);
				func_800DEE5C_EDE0C(xBack, (s16)(heading - 0x28), zBack, 0x50, 0x14);
				func_80135D44_144CF4(alien->unk0, alien->unk2, alien->unk4, 3.0f);
			}
			else
			{
				heading = (func_800B84D0_C7480(xBack, zBack) >> 8) + 0x14;
				func_800DEA08_ED9B8(xBack, heading, zBack, 0x64, 0xA, 0, 0x1E, 0xC8, 0x88, 0x67, 0x11);
				func_80135D44_144CF4(alien->unk0, alien->unk2, alien->unk4, 2.0f);
			}

			func_80137468_146418(arg0, 0xC);
			alien->unk3C = 0;
		}

		alien->unk12 = 0;
		if (alien->unk20 & ALIEN_FLAG_UNKD)
		{
			if (alien->unk2C != 0)
			{
				alien->unk2C--;
			}
			else
			{
				alien->unk20 &= ~ALIEN_FLAG_UNKD;
				func_80093AE4_A2A94(arg0, dist);
			}
		}
		else
		{
			tempS16 = path1->unk6;
			absVal = (-tempS16 < tempS16) ? tempS16 : -tempS16;
			if ((absVal >= (0x2000 - type->unk42)) || (dist >= 0xFB) || (dist < 0xFA))
			{
				alien->unk2C = 8;
				alien->unk20 |= ALIEN_FLAG_UNKD;
			}
		}

		type = (AlienType *)&D_8014DD50[pathNext];
		((Unk8014DD50 *)type)->unkA = func_8009395C_A290C(arg0, alien->unk6);
		((Unk8014DD50 *)type)->unk8 = func_8009395C_A290C(arg0, (s16)(alien->unk6 + 0x4000));

		if (alien->unk47 & 1)
		{
			alien->unk34++;
		}
	}
	else
		{
			   if (alien->unk10 > 0)
			   {
				type = (AlienType *)&D_8014DD50[pathNext];
				   tempS16 = ((Unk8014DD50 *)type)->unkA;
				   if (tempS16 < 0x1000)
				   {
					   ((Unk8014DD50 *)type)->unkA += 0x320;
				   }

				 yawTarget = ((Unk8014DD50 *)type)->unk8;
			absVal = (-yawTarget < yawTarget) ? yawTarget : -yawTarget;
			if (absVal >= 0x321)
			{
				if (yawTarget > 0)
				{
					sign = 1;
				}
				else if (yawTarget < 0)
				{
					sign = -1;
				}
				else
				{
					sign = 0;
				}
				((Unk8014DD50 *)type)->unk8 = (s16)(yawTarget - (sign * 0x320));
						}
						alien->unk3C = 1;
				}
				else
				{
						sp9E = func_8009395C_A290C(arg0, alien->unk6);
			yawTarget = func_8009395C_A290C(arg0, (s16)(alien->unk6 + 0x4000));


			type = (AlienType *)&D_8014DD50[pathNext];
				   tempS16 = ((Unk8014DD50 *)type)->unkA;
				   if (sp9E < tempS16)
				   {
					   ((Unk8014DD50 *)type)->unkA -= 0x320;
				   }
				   else
				   {
					   ((Unk8014DD50 *)type)->unkA = sp9E;
				   }

				 heading = ((Unk8014DD50 *)type)->unk8;
			tempS16 = (s16)(heading - yawTarget);
			absVal = (-tempS16 < tempS16) ? tempS16 : -tempS16;
			if (absVal >= 0x321)
			{
				if (yawTarget > 0)
				{
					sign = 1;
				}
				else if (yawTarget < 0)
				{
					sign = -1;
				}
				else
				{
					sign = 0;
				}
				((Unk8014DD50 *)type)->unk8 = (s16)(heading + (sign * 0x320));
			}
						else
						{
				((Unk8014DD50 *)type)->unk8 = yawTarget;
						}

						if (alien->unk47 & 0xE)
			{
				alien->unk3C = 0;
				alien->unk20 &= ~(ALIEN_FLAG_FALL | ALIEN_FLAG_UNKD);
				func_80093AE4_A2A94(arg0, dist);
			}
		}

		if (alien->unk47 & 8)
		{
			if (alien->unk20 & ALIEN_FLAG_UNKF)
			{
				func_80123AC4_132A74(D_80052B34);
			}
			else
			{
				func_80123E90_132E40(D_80052B34, 0x1F4);
			}

			if (D_80052AD0 == 0)
			{
				D_80157A38 = 0;
			}

			func_80137130_1460E0(D_80052B34, 2, D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4);
		}

		alien->unk10 += 0x40;
		func_800808F0_8F8A0(arg0, &alien->unkE);
		alien->unk6 = alien->unkE;
		if (alien->unk47 & 4)
		{
			alien->unk12 = 0;
		}
	}

	pathAngle = (u16)path1->unk6;
	if ((s16)pathAngle >= 0x2001)
	{
		path1->unk6 = 0x2000;
		pathAngle = 0x2000;
	}
	else if ((s16)pathAngle < -0x2000)
	{
		path1->unk6 = -0x2000;
		pathAngle = 0xE000;
	}

	path2->unk6 = pathAngle;

	if ((func_80086230_951E0(arg0, pathNode, 0x8000) == 0) && (dist < 0x5DC) && (dist >= 0xC9) && (alien->unk4E != 0) && !(alien->unk20 & ALIEN_FLAG_UNKE))
	{
		alien->unk6 = (s16)(alien->unk6 - path2->unk6);
		if (func_800871CC_9617C(arg0, 0, 0x14) != 0)
		{
			alien->unk36 = 0;
			alien->unk20 |= ALIEN_FLAG_UNKE;
			switch (currentLevel)
			{
			case 1:
				alien->unk1E = 0xC;
				break;
			case 2:
				alien->unk1E = 8;
				break;
			case 3:
				alien->unk1E = 6;
				break;
			}
		}
		alien->unk6 = (s16)(alien->unk6 + path2->unk6);
	}

		if (alien->unk20 & ALIEN_FLAG_UNKE)
		{
		spB0 = (s16)path2->unkC;
		type = (AlienType *)&D_8014DD50[spB0];
		spB2 = (s16)((Unk8014DD50 *)type)->unkC;

		if (currentLevel == 1)
		{
			pathResult = func_80081F18_90EC8(arg0, 2, 2, &spB0, (Unk8014DD50 **)&D_8013CAE4_14BA94);
		}
		else
		{
			if (alien->unk20 & ALIEN_FLAG_Z)
			{
				spB0 = spB2;
			}
			else
						{
				spB0 = D_8014DD50[((Unk8014DD50 *)type)->unkD].unkC;
						}

						if (currentLevel == 2)
			{
			pathResult = func_80081F18_90EC8(arg0, 1, 2, &spB0, (Unk8014DD50 **)&D_8013CAEC_14BA9C);
			}
			else
			{
				pathResult = func_80081F18_90EC8(arg0, 1, 2, &spB0, (Unk8014DD50 **)&D_8013CAF0_14BAA0);
			}
		}

		if (pathResult == 2)
		{
			alien->unk20 &= ~ALIEN_FLAG_UNKE;
		}
	}

	if (alien->unk1E != 0)
	{
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_80093C7C_A2C2C.s")
#endif

// AI - Simple collision update
void func_800946A4_A3654(u8 arg0)
{
	func_8008735C_9630C(arg0);
}

// AI - Fall/jump state control
s32 func_800946CC_A367C(u8 arg0, s32 arg1, s32 arg2)
{
	s32 result;

	result = 0;
	alienInstances[arg0].unkA = func_8009395C_A290C(arg0, alienInstances[arg0].unk6);
	alienInstances[arg0].unk8 = func_8009395C_A290C(arg0, (s16)(alienInstances[arg0].unk6 + 0x4000));
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_FALL)
	{
		alienInstances[arg0].unk6 = alienInstances[arg0].unkE;
		if (D_80222A70 < alienInstances[arg0].unk2)
		{
			alienInstances[arg0].unk10 += 0x30;
		}
		if (alienInstances[arg0].unk47 & 4)
		{
			alienInstances[arg0].unk12 = 0;
		}
	}
	else
	{
		alienInstances[arg0].unk12 = 0;
		if (alienInstances[arg0].unk2C != 0)
		{
			alienInstances[arg0].unk2C--;
		}
		else
		{
			alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKD | ALIEN_FLAG_FALL;
			alienInstances[arg0].unk36 = 0;
			alienInstances[arg0].unk10 = (s16)arg2;
			alienInstances[arg0].unk2C = (s16)arg1;
			result = 1;
		}
		if (alienInstances[arg0].unk47 & 1)
		{
			alienInstances[arg0].unk34++;
		}
	}
	return result;
}

// AI - Vehicle collision check
void func_80094808_A37B8(u8 arg0)
{
	s32 sp24;
	AlienInstance *alien;

	alien = &alienInstances[arg0];
	if ((alien->unk20 & ALIEN_FLAG_UNKE) && (alien->unk2C >= 0xF))
	{
		func_80088760_97710(alien);
	}
	if (alien->unk2C == 0xE)
	{
		sp24 = func_80084F00_93EB0(D_80052B34, alien) - vehicleTypes[D_80052B34->unk1A].unkC - alienTypes[alien->typeIndex].unkC;
		if ((func_80084FE8_93F98(arg0, 0x800) != 0) && (sp24 < 0x8C))
		{
			alien->unk20 |= ALIEN_FLAG_UNKE;
		}
	}
}

// AI - Fall/vehicle eject handling
void func_8009490C_A38BC(u8 arg0)
{
	s16 sp3C[2];
	AlienInstance *alien;
	s32 sp34;
	s16 tempc;

	alien = &alienInstances[arg0];
	if (alien->unk48 != 0)
	{
		alien->unk2 = alien->unk48;
		alien->unk48 = 0;
	}
	sp34 = func_800946CC_A367C(arg0, 0x14, 0x180);
	if (alien->unk47 & 8)
	{
		func_80088760_97710(alien);
	}
	if (alien->unk20 & ALIEN_FLAG_FALL)
	{
		if (sp34 != 0 && !(alien->unk47 & 1))
		{
			alien->unk12 = alienTypes[alien->typeIndex].unk40;
		}
		func_800808F0_8F8A0(arg0, &alien->unkE);
		if (alien->unk20 & ALIEN_FLAG_UNKD)
		{
			tempc = D_8014DD50[alien->unkC].unkC;
			sp3C[0] = tempc;
			sp3C[1] = D_8014DD50[tempc].unkD;
			if (func_80081F18_90EC8(arg0, 2, 2, sp3C, &D_8013CB40_14BAF0) == 2)
			{
				alien->unk20 &= ~ALIEN_FLAG_UNKD;
			}
		}
	}
	else
	{
		func_80094808_A37B8(arg0);
	}
	if ((alien->unk20 & ALIEN_FLAG_UNKE) && (D_80052A8C & 1))
	{
		alien->unk20 |= ALIEN_FLAG_UNKP;
	}
}

// AI - Cooldown/phase management
void func_80094AA0_A3A50(u8 arg0, s32 arg1)
{
	s32 pad1;
	Unk80154082 sp8;
	sp8 = D_8013CB48_14BAF8;
	alienInstances[arg0].unk2C -= arg1;
	if (alienInstances[arg0].unk2C < 0)
	{
		alienInstances[arg0].unk2C = 0x19;
	}
	if (alienInstances[arg0].unk3D == -1)
	{
		alienInstances[arg0].unk26 = 4;
		alienInstances[arg0].unk20 |= ALIEN_FLAG_INVINCIBLE;
		alienInstances[arg0].unk3D = 0;
	}
	if (alienInstances[arg0].unk26 == 0)
	{
		alienInstances[arg0].unk20 &= ~ALIEN_FLAG_INVINCIBLE;
	}
}

// AI - Phase transition wrapper
void func_80094B4C_A3AFC(u8 arg0)
{
	func_80137468_146418(arg0, 0x1B);
	func_80094AA0_A3A50(arg0, 1);
}

// AI - Parent check for despawn
void func_80094B80_A3B30(u8 arg0)
{
	AlienInstance *inst = &alienInstances[arg0];
	if (alienInstances[inst->unk25].unk20 & ALIEN_FLAG_UNKL)
	{
		func_80088760_97710(inst);
	}
}

// https://decomp.me/scratch/psru3
// AI - Rotation/position sync with parent
void func_80094BE0_A3B90(u8 arg0)
{
	u8 sp37;
	u8 typeIndex;
	sp37 = D_8014DD50[alienInstances[arg0].unkC].unkC;
	func_80094B80_A3B30(arg0);
	alienInstances[arg0].unk2 = alienInstances[alienInstances[arg0].unk25].unk2;
	if ((func_80085E2C_94DDC(arg0, sp37, 0x4000) == 0) && (alienInstances[arg0].unk1E == 0))
	{
		typeIndex = alienInstances[arg0].typeIndex;
		alienTypes[typeIndex].unk20 = ((((f32)sins(D_8014DD50[sp37].unk6))) / 32768.0) * 50.0;
		alienTypes[typeIndex].unk24 = ((((f32)coss(D_8014DD50[sp37].unk6))) / 32768.0) * 50.0;
		func_80086A34_959E4(arg0, 0, (func_800870D8_96088(0x80, 0x18) - (u16)D_8014DD50[sp37].unk6));
		alienInstances[arg0].unk24++;
		if (alienInstances[arg0].unk24 == 3)
		{
			alienInstances[arg0].unk24 = 0;
			alienInstances[arg0].unk1E = 0x6E - (currentLevel * 10);
		}
		else
		{
			alienInstances[arg0].unk1E = 0x14;
		}
	}
	if (alienInstances[arg0].unk1E != 0)
	{
		alienInstances[arg0].unk1E--;
	}
}

// CURRENT(609)
// AI - Boss/mech animation sync
#ifdef NON_MATCHING
void func_80094DE0_A3D90(u8 arg0)
{
	s16 sp5E;
	s16 sp5C;
	s16 sp5A;
	s16 sp58;
	s16 sp56;
	s16 sp50[3];
	s32 sp44[3];
	s32 sp40;
	 s16 sp3E;
	s16 sp38[2];
	s16 sp34;
	sp3E = alienInstances[arg0].typeIndex;
	sp5E = alienInstances[arg0].unkC;
	sp5C = (s8)D_8014DD50[sp5E].unkC;
	sp58 = (s8)D_8014DD50[sp5C].unkC;
	sp5A = (s8)D_8014DD50[sp58].unkD;
	sp56 = (s8)D_8014DD50[sp5A].unkD;
	func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
	D_8014DD50[sp5C].unk6 = -(D_8014DD50[sp5E].unk6 = alienInstances[arg0].unk6);
	func_80086164_95114(arg0, sp5C);
	sp50[0] = 0x3C;
	sp50[1] = -8;
	sp50[2] = 0x70;
	func_800A931C_B82CC((s8)sp5C, sp50, sp44);
	sp50[0] = (s16)sp44[0];
	sp50[1] = (s16)sp44[1];
	sp50[2] = (s16)sp44[2];
	func_800A931C_B82CC((s8)sp5E, sp50, sp44);
	alienTypes[sp3E].unk20 = (s16)sp44[0];
	alienTypes[sp3E].unk22 = (s16)sp44[1];
	alienTypes[sp3E].unk24 = (s16)sp44[2];
	sp40 = func_80084E54_93E04(D_80052B34, &alienInstances[arg0]);
	if (currentLevel == 1)
	{
		sp34 = 0x3C;
	}
	else
	{
		sp34 = 0x1E;
	}
	if (func_80084FE8_93F98(arg0, 0x1000) != 0 && sp40 < 0x7D0)
	{
		alienInstances[arg0].unk26++;
		if ((sp34 + 0x28) < alienInstances[arg0].unk26)
		{
			alienInstances[arg0].unk1E = 0x28;
			alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKE;
			alienInstances[arg0].unk26 = 0;
		}
		if (func_80087188_96138(arg0, 0, 0x28) != 0)
		{
			alienInstances[arg0].unk36 = 0;
			alienInstances[arg0].unk1E = 6;
			alienInstances[arg0].unk20 |= (ALIEN_FLAG_UNKG | ALIEN_FLAG_UNKE);
			alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKD;
		}
	}
	else
	{
		if (alienInstances[arg0].unk1E < 0x28)
		{
			alienInstances[arg0].unk1E = 0x28;
		}
		alienInstances[arg0].unk26 = 0x28;
	}
	if (alienInstances[arg0].unk20 & (ALIEN_FLAG_UNKG | ALIEN_FLAG_UNKD))
	{
		if (alienInstances[arg0].unk20 & ALIEN_FLAG_Z)
		{
			sp38[0] = sp58;
		}
		else
		{
			sp38[0] = sp5A;
		}
		sp38[1] = sp56;
		if (func_80081F18_90EC8(arg0, 2, 2, sp38, &D_8013CB8C_14BB3C) == 2)
		{
			alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKG;
		}
	}
	if (alienInstances[arg0].unk1E != 0)
	{
		alienInstances[arg0].unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/9BFF0/func_80094DE0_A3D90.s")
#endif

// AI - Standard update wrapper
void func_800950A8_A4058(u8 arg0)
{
	func_8008E0D8_9D088(arg0);
}

// AI - Interaction update wrapper
void func_800950D0_A4080(u8 arg0)
{
	func_8008E16C_9D11C(arg0);
}
