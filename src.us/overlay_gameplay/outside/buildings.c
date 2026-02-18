#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80115F20_124ED0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011619C_12514C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011629C_12524C.s")

// Failed - gpt 5.3 codex
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801164C4_125474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80116554_125504.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801165FC_1255AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80116724_1256D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80116784_125734.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801168E8_125898.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011694C_1258FC.s")

s32 func_80117464_126414(u8 arg0) {
    s16 minX;
    s16 minZ;

    minX = (s16) ((D_80149434 - 0x780) >> 8);
    minZ = (s16) ((D_80149436 - 0x780) >> 8);

    if (((buildingInstances[arg0].xCoord >> 8) >= minX) && ((buildingInstances[arg0].xCoord >> 8) < (minX + 0x10))) {
        if (((buildingInstances[arg0].zCoord >> 8) >= minZ) && ((buildingInstances[arg0].zCoord >> 8) < (minZ + 0x10))) {
            return 1;
        }
    }

    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80117508_1264B8.s")

// Failed - gpt 5.3 codex
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801176B0_126660.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801176F4_1266A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80117A4C_1269FC.s")

void func_80117F10_126EC0(void) {
    D_8015EA30 = D_80144F30;
    D_8015EA2C = D_80144F34;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80117F34_126EE4.s")

s32 func_80118114_1270C4(s16 arg0) {
    s32 i;
    i = 0xF;
    while (i--) {
        if (arg0 == D_80148620[i].unk0) {
            return 1;
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011815C_12710C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801183EC_12739C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80118418_1273C8.s")

void func_80118454_127404(s32 arg0, s32 arg1) {

}

// Failed - gpt 5.3 codex
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80118460_127410.s")

void func_801184E4_127494(s8 arg0) {
    D_80159DDE = arg0;
}

// Failed - gpt 5.3 codex
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801184F4_1274A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011853C_1274EC.s")

s32 func_801185F8_1275A8(BuildingInstance *arg0, s16 arg1) {
    s32 buildingIndex;
    s32 maxY;
    s32 maxYClamped;

    buildingIndex = arg0 - buildingInstances;
    if (buildingIndex >= 0xFF) {
        return 0;
    }

    maxY = arg1 + 0x15B0;
    if (arg0 != NULL) {
        if (maxY >= 0x8001) {
            maxYClamped = 0x8000;
        } else {
            maxYClamped = maxY;
        }

        if (arg0->zCoord < maxYClamped) {
            return 1;
        }
    }

    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80118670_127620.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80118774_127724.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011A2A0_129250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011A604_1295B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011B3F0_12A3A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011B454_12A404.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011B584_12A534.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011B6C0_12A670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011BA80_12AA30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011BB94_12AB44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011BEA0_12AE50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011BF7C_12AF2C.s")

void func_8011C080_12B030(u8 arg0)
{
    buildingInstances[arg0].hitPoints = 0;
    buildingInstances[arg0].unk10 = 0;
    func_8011BB94_12AB44(arg0, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C0CC_12B07C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C25C_12B20C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C338_12B2E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C42C_12B3DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C4D4_12B484.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C594_12B544.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C680_12B630.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C6A8_12B658.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C770_12B720.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C8E8_12B898.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C9D8_12B988.s")

s32 func_8011CBD8_12BB88(u8 arg0, u8 arg1) {
    return (s32) ((arg0 * 0x4BAD) + (arg1 * 0xD)) % 6500;
}

s32 func_8011CC20_12BBD0(u16 arg0, u8 arg1) {
    return ((arg0 << 8) + arg1) & 0xFFFF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011CC40_12BBF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011CDA4_12BD54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011D030_12BFE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011D19C_12C14C.s")

s32 func_8011D260_12C210(s8 arg0, s8 arg1) {
    s32 temp_v0;

    temp_v0 = func_8011D19C_12C14C(arg0, arg1);
    if (temp_v0 == -1) {
        return -1;
    }

    if ((((*(u32 *)(D_80050AE0 + (temp_v0 * 0x18))) >> 12) & 1) == 0) {
        return -1;
    }

    return temp_v0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011D2DC_12C28C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011D438_12C3E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011D4FC_12C4AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011DBA0_12CB50.s")

void func_8011DE60_12CE10(s32 arg0) {
    D_8015EB80 = arg0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011DE6C_12CE1C.s")

s32 func_8011E6FC_12D6AC(s16 arg0, s16 arg1, s16 *arg2) {
    s32 temp_v0;

    temp_v0 = func_8011D260_12C210((s8)(arg0 >> 8), (s8)(arg1 >> 8));
    if (temp_v0 == -1) {
        *arg2 = (s16)(func_800B84D0_C7480(arg0, arg1) >> 8);
        return -1;
    }

    return func_8011DE6C_12CE1C(arg0, arg1, arg2, (s16)temp_v0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011E788_12D738.s")

void func_8011E9F4_12D9A4(s32 arg0, s16 arg1) {
    if (D_8015FAF0[arg1].unkC == 6) {
        D_80159320 |= 0x1000000;
    }
}

void func_8011EA44_12D9F4(s16 *arg0) {
    if (gameplayMode == GAMEPLAY_MODE_UNK1) {
        func_800E0D28_EFCD8(arg0[0] + D_80159DC8, arg0[1] + D_80159DCA, arg0[2] + D_80159DCC);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011EABC_12DA6C.s")

void func_8011EAF8_12DAA8(s32 arg0, s32 arg1) {
    if (D_8015EA4A == 1) {
        func_800072CC_7ECC(0x13);
        D_8015EA4A = 3;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011EB40_12DAF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011EFBC_12DF6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011F094_12E044.s")

void func_8011F22C_12E1DC(s32 arg0, s32 arg1) {
    D_8015EA52 = 0x78;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011F244_12E1F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011F818_12E7C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011F9A0_12E950.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011FA90_12EA40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011FB98_12EB48.s")

void func_8011FC64_12EC14(BuildingInstance *arg0) {
    func_8011FA90_12EA40(arg0, 5, 0xCF, 0x99, -0x92, 0x2F, 0x1D, 0xF, 0xF);
    func_8011FA90_12EA40(arg0, 5, 0xF7, 0x99, -0x44, 0xC, 0x1D, 0x6A, 0xE);
}

void func_8011FCF4_12ECA4(BuildingInstance *arg0) {
    func_8011FA90_12EA40(arg0, 5, 0, 0xBE, 0, 0xAA, 0xC8, 0x95, 0xF);
}

void func_8011FD40_12ECF0(BuildingInstance *arg0) {
    func_8011FA90_12EA40(arg0, 6, 0, 0x76, 0x62, 0x4B, 0xA, 0x28, 0xF);
}

void func_8011FD90_12ED40(BuildingInstance *arg0) {
    func_8011FA90_12EA40(arg0, 6, 0, 0xA8, 0x90, 0x4B, 0xA, 0x2D, 0xF);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011FDE0_12ED90.s")

void func_8011FEA8_12EE58(BuildingInstance *arg0) {
    func_8011FA90_12EA40(arg0, 5, 0x78, 0, 0, 0x16, 0xB6, 0x1CF, 0xF);
    func_8011FA90_12EA40(arg0, 5, -0x78, 0, 0, 0x16, 0xB6, 0x1CF, 0xE);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011FF30_12EEE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011FFF8_12EFA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801200B8_12F068.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801201C0_12F170.s")

void func_8012028C_12F23C(BuildingInstance *arg0) {
    func_8011FA90_12EA40(arg0, 5, -0x180, 0, 0x216, 0x54, 0x80, 0x57, 0xF);
}

// setUnluckyAndrewFlag
// Doesn't work to name this and set it in symbol_addrs.us
// because the function is never actually called?
void func_801202DC_12F28C(s32 arg0, s32 arg1) {
    u8 saveFileName[7];
    s32 prefixASJI = 0x41534A49;

    getSaveFileName(currentSaveFileIndex, saveFileName);

    if (*(s32*)saveFileName == prefixASJI) {
        D_80159320 |= 0x08000000;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80120334_12F2E4.s")

void func_80120414_12F3C4(BuildingInstance *arg0) {
    func_8011FA90_12EA40(arg0, 5, -0x2CD, 0, 0x35C, 0x218, 0x2C8, 0x164, 0xF);
    func_8011FA90_12EA40(arg0, 5, 0x3FD, 0, 0xE9, 0xFE, 0x2C8, 0x30B, 0xE);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801204A4_12F454.s")

void func_801205AC_12F55C(BuildingInstance *arg0) {
    func_8011FA90_12EA40(arg0, 5, -0xD1, 0x3C, 0, 0x4B, 0x3C, 0x596, 0xF);
    func_8011FA90_12EA40(arg0, 5, 0xD1, 0x3C, 0, 0x4B, 0x3C, 0x596, 0xE);
}

#ifdef NON_MATCHING
s32 func_80120634_12F5E4() {
    s32 i = 0;
    
    while (1) {
        if (D_8015EA29 == buildingInstances[i].buildingType) {
            return i;
        }
        if (D_8015EA29 == buildingInstances[i + 1].buildingType) {
            return i + 1;
        }
        if (D_8015EA29 == buildingInstances[i + 2].buildingType) {
            return i + 2;
        }
        if (D_8015EA29 == buildingInstances[i + 3].buildingType) {
            return i + 3;
        }
        i += 4;
        if (i == 0x100) {
            break;
        }
    }

    return D_8015EA29;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80120634_12F5E4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801206B0_12F660.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80120BC4_12FB74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80120D6C_12FD1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012101C_12FFCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80121128_1300D8.s")

void func_801219A4_130954(Unk80052B34 *arg0, s16 arg1) {
    func_8011D260_12C210(0x45, 0x12);
    func_80102D00_111CB0(arg0, -50.0f, 30.0f, 0.0f);
    func_8012D808_13C7B8(arg1);
    D_80048178 = -10;
}

void func_801219F4_1309A4(void* arg0, s16 arg1) {
    func_8011D260_12C210(0x45, 0x12);
    if (arg0 == (D_80145BE0 + 0x1E0)) {
        D_80048178 = 0x14;
        func_8012D84C_13C7FC();
        func_800072CC_7ECC(0xF);
        D_80052558 |= 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80121A64_130A14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80121EB4_130E64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80122244_1311F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80122320_1312D0.s")

#ifdef NON_MATCHING
s32 func_8012235C_13130C(Unk8004D0F8* arg0) {
    return (arg0->unk1A != 0) &&
       ((arg0->unk20 & 0x100000) == 0) &&
       ((arg0->unk1B == 0xFF) || (D_80047F94 == arg0->unk1B));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012235C_13130C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801223B0_131360.s")

// Failed - gpt 5.3 codex
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80122524_1314D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801225C4_131574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801226F8_1316A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801236F0_1326A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801238DC_13288C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80123AC4_132A74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80123E90_132E40.s")

void func_80124118_1330C8(Unk80052B34 *arg0, s16 arg1) {
    if ((arg0->unk20 & 0x80) == 0) {
        if ((arg0 != D_80052B34) || (D_801493E0 != 0)) {
            func_80123E90_132E40(arg0, arg1);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80124170_133120.s")

void func_80124B5C_133B0C(s16 arg0, s16 arg1, s16 arg2, s32 arg3, s32 arg4) {
    func_80124170_133120(arg0, arg1, arg2, arg3, arg4, 0);
}

// Failed - gpt 5.3 codex
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80124BA8_133B58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80124C40_133BF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80124D60_133D10.s")

void func_80125C48_134BF8(s16 arg0, s16 arg1, s16 arg2) {
    s32 index;

    index = D_80140AC8;
    D_8015F9F8[index][0] = arg0;
    D_8015F9F8[index][1] = arg1;
    D_8015F9F8[index][2] = arg2;
    D_8015F9F8[index][3] = 4;
    D_80140AC8 = index + 1;
    if (D_80140AC8 == 8) {
        D_80140AC8 = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80125CA0_134C50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80125D70_134D20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80126268_135218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80126990_135940.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801269BC_13596C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80126B80_135B30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80127C08_136BB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80127D88_136D38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80127F9C_136F4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80128288_137238.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80128428_1373D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80128504_1374B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80128650_137600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80128E48_137DF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80129354_138304.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80129864_138814.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012B110_13A0C0.s")

void func_8012B150_13A100(s32 arg0, s32 arg1, InputStruct_8012B150 *arg2, s32 arg3) {
    OutputStruct_8012B150 *result;

    result = func_80129354_138304(arg0, arg1, arg2->unk0, arg2->unk2, arg2->unk4);
    if (result != NULL) {
        result->unk18 = arg3;
    }
}

void func_8012B194_13A144(s32 arg0, s32 arg1, u8 arg2) {
    s16 index;
    InputStruct_8012B150 *input;
    OutputStruct_8012B150 *result;

    index = D_8015904C - arg2;
    if (index < 0) {
        index += 50;
    }

    input = &D_80159050[index];
    result = func_80129354_138304(arg0, arg1, input->unk0, input->unk2, input->unk4);
    if (result != NULL) {
        result->unk18 = (s32) D_80052B2C->unk38;
    }
}

void func_8012B21C_13A1CC(void) {
    s32 i;

    i = D_8015F9E4;
    while (i--) {
        func_801238DC_13288C((s16)i);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012B26C_13A21C.s")

#ifdef NON_MATCHING
s32 func_8012D600_13C5B0(void) {
    u32 minTime;
    s32 minIdx;
    s32 i;

    minIdx = -1;
    minTime = (u32)-1;
    i = 0x18;
    do {
        if ((u32)D_8015FAD0[i].unk28 < minTime) {
            minTime = (u32)D_8015FAD0[i].unk28;
            minIdx = i;
        }
        if (D_8015FAD0[i].unk2C == 0) {
            D_8015FAD0[i].unk28 = (u32)D_80052A8C;
            return i;
        }
    } while (i--);
    D_8015FAD0[minIdx].unk28 = (u32)D_80052A8C;
    return minIdx;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012D600_13C5B0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012D684_13C634.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012D6A4_13C654.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012D700_13C6B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012D808_13C7B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012D824_13C7D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012D84C_13C7FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012D884_13C834.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012DDA8_13CD58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012DF90_13CF40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012E03C_13CFEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012E114_13D0C4.s")

void func_8012E1F8_13D1A8(s32 arg0, s32 arg1) {

}

void func_8012E204_13D1B4(s16 arg0, s32 arg1) {
    void (*callback)(s32, s16);
    callback = D_8015FAF0[arg0].callback;
    if (callback == NULL) {
        return;
    }

    callback(arg1, arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012E258_13D208.s")
