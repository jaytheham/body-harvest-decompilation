nonmatching func_800E0134_EF0E4, 0x2C8

glabel func_800E0134_EF0E4
    /* EF0E4 800E0134 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* EF0E8 800E0138 AFBF0014 */  sw         $ra, 0x14($sp)
    /* EF0EC 800E013C 3C048014 */  lui        $a0, %hi(D_80143EB4)
    /* EF0F0 800E0140 0C00731B */  jal        osSyncPrintf
    /* EF0F4 800E0144 24843EB4 */   addiu     $a0, $a0, %lo(D_80143EB4)
    /* EF0F8 800E0148 3C018015 */  lui        $at, %hi(D_80153AB0)
    /* EF0FC 800E014C A0203AB0 */  sb         $zero, %lo(D_80153AB0)($at)
    /* EF100 800E0150 3C018015 */  lui        $at, %hi(D_80153B87)
    /* EF104 800E0154 A0203B87 */  sb         $zero, %lo(D_80153B87)($at)
    /* EF108 800E0158 3C018015 */  lui        $at, %hi(D_80156ED9)
    /* EF10C 800E015C A0206ED9 */  sb         $zero, %lo(D_80156ED9)($at)
    /* EF110 800E0160 3C028015 */  lui        $v0, %hi(D_80153B80)
    /* EF114 800E0164 3C038015 */  lui        $v1, %hi(D_80153B84)
    /* EF118 800E0168 24633B84 */  addiu      $v1, $v1, %lo(D_80153B84)
    /* EF11C 800E016C 24423B80 */  addiu      $v0, $v0, %lo(D_80153B80)
    /* EF120 800E0170 24040028 */  addiu      $a0, $zero, 0x28
    /* EF124 800E0174 240700FF */  addiu      $a3, $zero, 0xFF
    /* EF128 800E0178 A0470000 */  sb         $a3, 0x0($v0)
    /* EF12C 800E017C A0470001 */  sb         $a3, 0x1($v0)
    /* EF130 800E0180 A0470002 */  sb         $a3, 0x2($v0)
    /* EF134 800E0184 A0640000 */  sb         $a0, 0x0($v1)
    /* EF138 800E0188 A0640001 */  sb         $a0, 0x1($v1)
    /* EF13C 800E018C 0C0285D9 */  jal        func_800A1764_B0714
    /* EF140 800E0190 A0640002 */   sb        $a0, 0x2($v1)
    /* EF144 800E0194 0C03899A */  jal        func_800E2668_F1618
    /* EF148 800E0198 00000000 */   nop
    /* EF14C 800E019C 0C0376C6 */  jal        func_800DDB18_ECAC8
    /* EF150 800E01A0 00000000 */   nop
    /* EF154 800E01A4 3C048015 */  lui        $a0, %hi(D_80154088)
    /* EF158 800E01A8 240700FF */  addiu      $a3, $zero, 0xFF
    /* EF15C 800E01AC 24844088 */  addiu      $a0, $a0, %lo(D_80154088)
    /* EF160 800E01B0 00001025 */  or         $v0, $zero, $zero
    /* EF164 800E01B4 240600FA */  addiu      $a2, $zero, 0xFA
    /* EF168 800E01B8 2405000C */  addiu      $a1, $zero, 0xC
  .L800E01BC_EF16C:
    /* EF16C 800E01BC 00450019 */  multu      $v0, $a1
    /* EF170 800E01C0 24420001 */  addiu      $v0, $v0, 0x1
    /* EF174 800E01C4 304F00FF */  andi       $t7, $v0, 0xFF
    /* EF178 800E01C8 29E1001E */  slti       $at, $t7, 0x1E
    /* EF17C 800E01CC 01E01025 */  or         $v0, $t7, $zero
    /* EF180 800E01D0 00007012 */  mflo       $t6
    /* EF184 800E01D4 008E1821 */  addu       $v1, $a0, $t6
    /* EF188 800E01D8 A0660000 */  sb         $a2, 0x0($v1)
    /* EF18C 800E01DC 1420FFF7 */  bnez       $at, .L800E01BC_EF16C
    /* EF190 800E01E0 A0600004 */   sb        $zero, 0x4($v1)
    /* EF194 800E01E4 3C048015 */  lui        $a0, %hi(D_801541F8)
    /* EF198 800E01E8 248441F8 */  addiu      $a0, $a0, %lo(D_801541F8)
    /* EF19C 800E01EC 00001025 */  or         $v0, $zero, $zero
  .L800E01F0_EF1A0:
    /* EF1A0 800E01F0 00450019 */  multu      $v0, $a1
    /* EF1A4 800E01F4 24420001 */  addiu      $v0, $v0, 0x1
    /* EF1A8 800E01F8 305900FF */  andi       $t9, $v0, 0xFF
    /* EF1AC 800E01FC 2B210016 */  slti       $at, $t9, 0x16
    /* EF1B0 800E0200 03201025 */  or         $v0, $t9, $zero
    /* EF1B4 800E0204 0000C012 */  mflo       $t8
    /* EF1B8 800E0208 00981821 */  addu       $v1, $a0, $t8
    /* EF1BC 800E020C A0660000 */  sb         $a2, 0x0($v1)
    /* EF1C0 800E0210 1420FFF7 */  bnez       $at, .L800E01F0_EF1A0
    /* EF1C4 800E0214 A0600004 */   sb        $zero, 0x4($v1)
    /* EF1C8 800E0218 3C048015 */  lui        $a0, %hi(D_80154318)
    /* EF1CC 800E021C 24844318 */  addiu      $a0, $a0, %lo(D_80154318)
    /* EF1D0 800E0220 00001825 */  or         $v1, $zero, $zero
    /* EF1D4 800E0224 2405001C */  addiu      $a1, $zero, 0x1C
  .L800E0228_EF1D8:
    /* EF1D8 800E0228 00650019 */  multu      $v1, $a1
    /* EF1DC 800E022C 24630001 */  addiu      $v1, $v1, 0x1
    /* EF1E0 800E0230 3069FFFF */  andi       $t1, $v1, 0xFFFF
    /* EF1E4 800E0234 29210190 */  slti       $at, $t1, 0x190
    /* EF1E8 800E0238 01201825 */  or         $v1, $t1, $zero
    /* EF1EC 800E023C 00004012 */  mflo       $t0
    /* EF1F0 800E0240 00881021 */  addu       $v0, $a0, $t0
    /* EF1F4 800E0244 A0400000 */  sb         $zero, 0x0($v0)
    /* EF1F8 800E0248 1420FFF7 */  bnez       $at, .L800E0228_EF1D8
    /* EF1FC 800E024C A0470001 */   sb        $a3, 0x1($v0)
    /* EF200 800E0250 3C038015 */  lui        $v1, %hi(D_80152D00)
    /* EF204 800E0254 24632D00 */  addiu      $v1, $v1, %lo(D_80152D00)
    /* EF208 800E0258 00001025 */  or         $v0, $zero, $zero
    /* EF20C 800E025C 24040018 */  addiu      $a0, $zero, 0x18
  .L800E0260_EF210:
    /* EF210 800E0260 00440019 */  multu      $v0, $a0
    /* EF214 800E0264 24420001 */  addiu      $v0, $v0, 0x1
    /* EF218 800E0268 304CFFFF */  andi       $t4, $v0, 0xFFFF
    /* EF21C 800E026C 29810040 */  slti       $at, $t4, 0x40
    /* EF220 800E0270 01801025 */  or         $v0, $t4, $zero
    /* EF224 800E0274 00005012 */  mflo       $t2
    /* EF228 800E0278 006A5821 */  addu       $t3, $v1, $t2
    /* EF22C 800E027C 1420FFF8 */  bnez       $at, .L800E0260_EF210
    /* EF230 800E0280 A5600000 */   sh        $zero, 0x0($t3)
    /* EF234 800E0284 3C018015 */  lui        $at, %hi(D_80154310)
    /* EF238 800E0288 A4204310 */  sh         $zero, %lo(D_80154310)($at)
    /* EF23C 800E028C 3C018015 */  lui        $at, %hi(D_8015430E)
    /* EF240 800E0290 A420430E */  sh         $zero, %lo(D_8015430E)($at)
    /* EF244 800E0294 3C018015 */  lui        $at, %hi(D_80154304)
    /* EF248 800E0298 A0204304 */  sb         $zero, %lo(D_80154304)($at)
    /* EF24C 800E029C 2404000A */  addiu      $a0, $zero, 0xA
    /* EF250 800E02A0 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF254 800E02A4 00002825 */   or        $a1, $zero, $zero
    /* EF258 800E02A8 2404000B */  addiu      $a0, $zero, 0xB
    /* EF25C 800E02AC 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF260 800E02B0 24050001 */   addiu     $a1, $zero, 0x1
    /* EF264 800E02B4 2404000C */  addiu      $a0, $zero, 0xC
    /* EF268 800E02B8 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF26C 800E02BC 24050002 */   addiu     $a1, $zero, 0x2
    /* EF270 800E02C0 2404000D */  addiu      $a0, $zero, 0xD
    /* EF274 800E02C4 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF278 800E02C8 24050003 */   addiu     $a1, $zero, 0x3
    /* EF27C 800E02CC 2404000E */  addiu      $a0, $zero, 0xE
    /* EF280 800E02D0 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF284 800E02D4 24050004 */   addiu     $a1, $zero, 0x4
    /* EF288 800E02D8 2404000F */  addiu      $a0, $zero, 0xF
    /* EF28C 800E02DC 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF290 800E02E0 24050005 */   addiu     $a1, $zero, 0x5
    /* EF294 800E02E4 24040010 */  addiu      $a0, $zero, 0x10
    /* EF298 800E02E8 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF29C 800E02EC 24050006 */   addiu     $a1, $zero, 0x6
    /* EF2A0 800E02F0 24040013 */  addiu      $a0, $zero, 0x13
    /* EF2A4 800E02F4 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF2A8 800E02F8 24050009 */   addiu     $a1, $zero, 0x9
    /* EF2AC 800E02FC 24040012 */  addiu      $a0, $zero, 0x12
    /* EF2B0 800E0300 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF2B4 800E0304 24050008 */   addiu     $a1, $zero, 0x8
    /* EF2B8 800E0308 24040014 */  addiu      $a0, $zero, 0x14
    /* EF2BC 800E030C 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF2C0 800E0310 2405000A */   addiu     $a1, $zero, 0xA
    /* EF2C4 800E0314 24040011 */  addiu      $a0, $zero, 0x11
    /* EF2C8 800E0318 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF2CC 800E031C 24050007 */   addiu     $a1, $zero, 0x7
    /* EF2D0 800E0320 24040015 */  addiu      $a0, $zero, 0x15
    /* EF2D4 800E0324 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF2D8 800E0328 2405000B */   addiu     $a1, $zero, 0xB
    /* EF2DC 800E032C 24040016 */  addiu      $a0, $zero, 0x16
    /* EF2E0 800E0330 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF2E4 800E0334 2405000C */   addiu     $a1, $zero, 0xC
    /* EF2E8 800E0338 24040017 */  addiu      $a0, $zero, 0x17
    /* EF2EC 800E033C 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF2F0 800E0340 2405000D */   addiu     $a1, $zero, 0xD
    /* EF2F4 800E0344 24040018 */  addiu      $a0, $zero, 0x18
    /* EF2F8 800E0348 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF2FC 800E034C 2405000E */   addiu     $a1, $zero, 0xE
    /* EF300 800E0350 24040019 */  addiu      $a0, $zero, 0x19
    /* EF304 800E0354 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF308 800E0358 2405000F */   addiu     $a1, $zero, 0xF
    /* EF30C 800E035C 2404001A */  addiu      $a0, $zero, 0x1A
    /* EF310 800E0360 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF314 800E0364 24050010 */   addiu     $a1, $zero, 0x10
    /* EF318 800E0368 2404001B */  addiu      $a0, $zero, 0x1B
    /* EF31C 800E036C 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF320 800E0370 24050011 */   addiu     $a1, $zero, 0x11
    /* EF324 800E0374 2404001C */  addiu      $a0, $zero, 0x1C
    /* EF328 800E0378 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF32C 800E037C 24050012 */   addiu     $a1, $zero, 0x12
    /* EF330 800E0380 2404001D */  addiu      $a0, $zero, 0x1D
    /* EF334 800E0384 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF338 800E0388 24050013 */   addiu     $a1, $zero, 0x13
    /* EF33C 800E038C 2404001E */  addiu      $a0, $zero, 0x1E
    /* EF340 800E0390 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF344 800E0394 24050014 */   addiu     $a1, $zero, 0x14
    /* EF348 800E0398 2404001F */  addiu      $a0, $zero, 0x1F
    /* EF34C 800E039C 0C03803D */  jal        func_800E00F4_EF0A4
    /* EF350 800E03A0 24050015 */   addiu     $a1, $zero, 0x15
    /* EF354 800E03A4 3C028004 */  lui        $v0, %hi(currentLevel)
    /* EF358 800E03A8 8C427F90 */  lw         $v0, %lo(currentLevel)($v0)
    /* EF35C 800E03AC 3C018015 */  lui        $at, %hi(D_8015430C)
    /* EF360 800E03B0 A020430C */  sb         $zero, %lo(D_8015430C)($at)
    /* EF364 800E03B4 24010001 */  addiu      $at, $zero, 0x1
    /* EF368 800E03B8 54410006 */  bnel       $v0, $at, .L800E03D4_EF384
    /* EF36C 800E03BC 24010002 */   addiu     $at, $zero, 0x2
    /* EF370 800E03C0 0C046139 */  jal        func_801184E4_127494
    /* EF374 800E03C4 00002025 */   or        $a0, $zero, $zero
    /* EF378 800E03C8 10000006 */  b          .L800E03E4_EF394
    /* EF37C 800E03CC 00000000 */   nop
    /* EF380 800E03D0 24010002 */  addiu      $at, $zero, 0x2
  .L800E03D4_EF384:
    /* EF384 800E03D4 14410003 */  bne        $v0, $at, .L800E03E4_EF394
    /* EF388 800E03D8 00000000 */   nop
    /* EF38C 800E03DC 0C046139 */  jal        func_801184E4_127494
    /* EF390 800E03E0 24040001 */   addiu     $a0, $zero, 0x1
  .L800E03E4_EF394:
    /* EF394 800E03E4 0C03954B */  jal        func_800E552C_F44DC
    /* EF398 800E03E8 00000000 */   nop
    /* EF39C 800E03EC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* EF3A0 800E03F0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* EF3A4 800E03F4 03E00008 */  jr         $ra
    /* EF3A8 800E03F8 00000000 */   nop
endlabel func_800E0134_EF0E4
