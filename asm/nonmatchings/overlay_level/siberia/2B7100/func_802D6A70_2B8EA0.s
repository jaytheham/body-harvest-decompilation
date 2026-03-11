nonmatching func_802D6A70_2B8EA0, 0x230

glabel func_802D6A70_2B8EA0
    /* 2B8EA0 802D6A70 3C0E8005 */  lui        $t6, %hi(D_80052A8C)
    /* 2B8EA4 802D6A74 8DCE2A8C */  lw         $t6, %lo(D_80052A8C)($t6)
    /* 2B8EA8 802D6A78 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 2B8EAC 802D6A7C AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2B8EB0 802D6A80 31CF001F */  andi       $t7, $t6, 0x1F
    /* 2B8EB4 802D6A84 15E00081 */  bnez       $t7, .L802D6C8C_2B90BC
    /* 2B8EB8 802D6A88 AFB00018 */   sw        $s0, 0x18($sp)
    /* 2B8EBC 802D6A8C 3C04802E */  lui        $a0, %hi(D_802E30FB)
    /* 2B8EC0 802D6A90 0C02B4EF */  jal        func_800AD3BC_BC36C
    /* 2B8EC4 802D6A94 908430FB */   lbu       $a0, %lo(D_802E30FB)($a0)
    /* 2B8EC8 802D6A98 240100FF */  addiu      $at, $zero, 0xFF
    /* 2B8ECC 802D6A9C 1041007B */  beq        $v0, $at, .L802D6C8C_2B90BC
    /* 2B8ED0 802D6AA0 304300FF */   andi      $v1, $v0, 0xFF
    /* 2B8ED4 802D6AA4 3C06802E */  lui        $a2, %hi(D_802E30FC)
    /* 2B8ED8 802D6AA8 8CC630FC */  lw         $a2, %lo(D_802E30FC)($a2)
    /* 2B8EDC 802D6AAC 00602025 */  or         $a0, $v1, $zero
    /* 2B8EE0 802D6AB0 2405001B */  addiu      $a1, $zero, 0x1B
    /* 2B8EE4 802D6AB4 00003825 */  or         $a3, $zero, $zero
    /* 2B8EE8 802D6AB8 0C02B605 */  jal        func_800AD814_BC7C4
    /* 2B8EEC 802D6ABC A3A3003F */   sb        $v1, 0x3F($sp)
    /* 2B8EF0 802D6AC0 3C18802E */  lui        $t8, %hi(D_802E30F8)
    /* 2B8EF4 802D6AC4 8F1830F8 */  lw         $t8, %lo(D_802E30F8)($t8)
    /* 2B8EF8 802D6AC8 3C028005 */  lui        $v0, %hi(D_80050AE0)
    /* 2B8EFC 802D6ACC 0018C880 */  sll        $t9, $t8, 2
    /* 2B8F00 802D6AD0 0338C823 */  subu       $t9, $t9, $t8
    /* 2B8F04 802D6AD4 0019C8C0 */  sll        $t9, $t9, 3
    /* 2B8F08 802D6AD8 00591021 */  addu       $v0, $v0, $t9
    /* 2B8F0C 802D6ADC 8C490AE0 */  lw         $t1, %lo(D_80050AE0)($v0)
    /* 2B8F10 802D6AE0 00095380 */  sll        $t2, $t1, 14
    /* 2B8F14 802D6AE4 3150FFFF */  andi       $s0, $t2, 0xFFFF
    /* 2B8F18 802D6AE8 0C007654 */  jal        coss
    /* 2B8F1C 802D6AEC 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* 2B8F20 802D6AF0 A7A20026 */  sh         $v0, 0x26($sp)
    /* 2B8F24 802D6AF4 0C007660 */  jal        sins
    /* 2B8F28 802D6AF8 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* 2B8F2C 802D6AFC 44822000 */  mtc1       $v0, $f4
    /* 2B8F30 802D6B00 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2B8F34 802D6B04 44810800 */  mtc1       $at, $f1
    /* 2B8F38 802D6B08 468021A0 */  cvt.s.w    $f6, $f4
    /* 2B8F3C 802D6B0C 44800000 */  mtc1       $zero, $f0
    /* 2B8F40 802D6B10 87AB0026 */  lh         $t3, 0x26($sp)
    /* 2B8F44 802D6B14 3C01802E */  lui        $at, %hi(D_802E2FD8)
    /* 2B8F48 802D6B18 D4302FD8 */  ldc1       $f16, %lo(D_802E2FD8)($at)
    /* 2B8F4C 802D6B1C 3C01802E */  lui        $at, %hi(D_802E2FE0)
    /* 2B8F50 802D6B20 46003221 */  cvt.d.s    $f8, $f6
    /* 2B8F54 802D6B24 448B3000 */  mtc1       $t3, $f6
    /* 2B8F58 802D6B28 46204283 */  div.d      $f10, $f8, $f0
    /* 2B8F5C 802D6B2C D4242FE0 */  ldc1       $f4, %lo(D_802E2FE0)($at)
    /* 2B8F60 802D6B30 3204FFFF */  andi       $a0, $s0, 0xFFFF
    /* 2B8F64 802D6B34 46803220 */  cvt.s.w    $f8, $f6
    /* 2B8F68 802D6B38 46305482 */  mul.d      $f18, $f10, $f16
    /* 2B8F6C 802D6B3C 460042A1 */  cvt.d.s    $f10, $f8
    /* 2B8F70 802D6B40 46205403 */  div.d      $f16, $f10, $f0
    /* 2B8F74 802D6B44 46302182 */  mul.d      $f6, $f4, $f16
    /* 2B8F78 802D6B48 46269200 */  add.d      $f8, $f18, $f6
    /* 2B8F7C 802D6B4C 4620428D */  trunc.w.d  $f10, $f8
    /* 2B8F80 802D6B50 0C007660 */  jal        sins
    /* 2B8F84 802D6B54 E7AA0038 */   swc1      $f10, 0x38($sp)
    /* 2B8F88 802D6B58 A7A20026 */  sh         $v0, 0x26($sp)
    /* 2B8F8C 802D6B5C 0C007654 */  jal        coss
    /* 2B8F90 802D6B60 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* 2B8F94 802D6B64 44822000 */  mtc1       $v0, $f4
    /* 2B8F98 802D6B68 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2B8F9C 802D6B6C 44810800 */  mtc1       $at, $f1
    /* 2B8FA0 802D6B70 46802420 */  cvt.s.w    $f16, $f4
    /* 2B8FA4 802D6B74 44800000 */  mtc1       $zero, $f0
    /* 2B8FA8 802D6B78 3C0F802E */  lui        $t7, %hi(D_802E30F8)
    /* 2B8FAC 802D6B7C 8DEF30F8 */  lw         $t7, %lo(D_802E30F8)($t7)
    /* 2B8FB0 802D6B80 93A4003F */  lbu        $a0, 0x3F($sp)
    /* 2B8FB4 802D6B84 87AC0026 */  lh         $t4, 0x26($sp)
    /* 2B8FB8 802D6B88 460084A1 */  cvt.d.s    $f18, $f16
    /* 2B8FBC 802D6B8C 000FC080 */  sll        $t8, $t7, 2
    /* 2B8FC0 802D6B90 46209183 */  div.d      $f6, $f18, $f0
    /* 2B8FC4 802D6B94 3C198005 */  lui        $t9, %hi(buildingInstances)
    /* 2B8FC8 802D6B98 030FC023 */  subu       $t8, $t8, $t7
    /* 2B8FCC 802D6B9C 0018C0C0 */  sll        $t8, $t8, 3
    /* 2B8FD0 802D6BA0 27390AD8 */  addiu      $t9, $t9, %lo(buildingInstances)
    /* 2B8FD4 802D6BA4 03191821 */  addu       $v1, $t8, $t9
    /* 2B8FD8 802D6BA8 84690000 */  lh         $t1, 0x0($v1)
    /* 2B8FDC 802D6BAC 8FAA0038 */  lw         $t2, 0x38($sp)
    /* 2B8FE0 802D6BB0 448C8000 */  mtc1       $t4, $f16
    /* 2B8FE4 802D6BB4 00046880 */  sll        $t5, $a0, 2
    /* 2B8FE8 802D6BB8 3C0E8005 */  lui        $t6, %hi(alienInstances)
    /* 2B8FEC 802D6BBC 01A46821 */  addu       $t5, $t5, $a0
    /* 2B8FF0 802D6BC0 000D6900 */  sll        $t5, $t5, 4
    /* 2B8FF4 802D6BC4 25CE8198 */  addiu      $t6, $t6, %lo(alienInstances)
    /* 2B8FF8 802D6BC8 468084A0 */  cvt.s.w    $f18, $f16
    /* 2B8FFC 802D6BCC 01AE4021 */  addu       $t0, $t5, $t6
    /* 2B9000 802D6BD0 012A5821 */  addu       $t3, $t1, $t2
    /* 2B9004 802D6BD4 A50B0014 */  sh         $t3, 0x14($t0)
    /* 2B9008 802D6BD8 3C01802E */  lui        $at, %hi(D_802E2FE8)
    /* 2B900C 802D6BDC D4282FE8 */  ldc1       $f8, %lo(D_802E2FE8)($at)
    /* 2B9010 802D6BE0 3C01802E */  lui        $at, %hi(D_802E2FF0)
    /* 2B9014 802D6BE4 D4242FF0 */  ldc1       $f4, %lo(D_802E2FF0)($at)
    /* 2B9018 802D6BE8 846F0004 */  lh         $t7, 0x4($v1)
    /* 2B901C 802D6BEC AFA80020 */  sw         $t0, 0x20($sp)
    /* 2B9020 802D6BF0 46283282 */  mul.d      $f10, $f6, $f8
    /* 2B9024 802D6BF4 460091A1 */  cvt.d.s    $f6, $f18
    /* 2B9028 802D6BF8 46203203 */  div.d      $f8, $f6, $f0
    /* 2B902C 802D6BFC 46282402 */  mul.d      $f16, $f4, $f8
    /* 2B9030 802D6C00 46305480 */  add.d      $f18, $f10, $f16
    /* 2B9034 802D6C04 4620918D */  trunc.w.d  $f6, $f18
    /* 2B9038 802D6C08 440E3000 */  mfc1       $t6, $f6
    /* 2B903C 802D6C0C 00000000 */  nop
    /* 2B9040 802D6C10 01EEC021 */  addu       $t8, $t7, $t6
    /* 2B9044 802D6C14 0C020144 */  jal        func_80080510_8F4C0
    /* 2B9048 802D6C18 A5180018 */   sh        $t8, 0x18($t0)
    /* 2B904C 802D6C1C 8FA80020 */  lw         $t0, 0x20($sp)
    /* 2B9050 802D6C20 3C04802E */  lui        $a0, %hi(D_802E2F14)
    /* 2B9054 802D6C24 24842F14 */  addiu      $a0, $a0, %lo(D_802E2F14)
    /* 2B9058 802D6C28 85050000 */  lh         $a1, 0x0($t0)
    /* 2B905C 802D6C2C 85060002 */  lh         $a2, 0x2($t0)
    /* 2B9060 802D6C30 0C00731B */  jal        osSyncPrintf
    /* 2B9064 802D6C34 85070004 */   lh        $a3, 0x4($t0)
    /* 2B9068 802D6C38 3C19802E */  lui        $t9, %hi(D_802E30F8)
    /* 2B906C 802D6C3C 8F3930F8 */  lw         $t9, %lo(D_802E30F8)($t9)
    /* 2B9070 802D6C40 3C0A8005 */  lui        $t2, %hi(D_80050ADF)
    /* 2B9074 802D6C44 3C04802D */  lui        $a0, %hi(func_802D6A70_2B8EA0)
    /* 2B9078 802D6C48 00194880 */  sll        $t1, $t9, 2
    /* 2B907C 802D6C4C 01394823 */  subu       $t1, $t1, $t9
    /* 2B9080 802D6C50 000948C0 */  sll        $t1, $t1, 3
    /* 2B9084 802D6C54 01495021 */  addu       $t2, $t2, $t1
    /* 2B9088 802D6C58 914A0ADF */  lbu        $t2, %lo(D_80050ADF)($t2)
    /* 2B908C 802D6C5C 5540000C */  bnel       $t2, $zero, .L802D6C90_2B90C0
    /* 2B9090 802D6C60 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 2B9094 802D6C64 0C001D2F */  jal        func_800074BC_80BC
    /* 2B9098 802D6C68 24846A70 */   addiu     $a0, $a0, %lo(func_802D6A70_2B8EA0)
    /* 2B909C 802D6C6C 3C028015 */  lui        $v0, %hi(D_8014D17E)
    /* 2B90A0 802D6C70 2442D17E */  addiu      $v0, $v0, %lo(D_8014D17E)
    /* 2B90A4 802D6C74 844B0000 */  lh         $t3, 0x0($v0)
    /* 2B90A8 802D6C78 240D0001 */  addiu      $t5, $zero, 0x1
    /* 2B90AC 802D6C7C 3C018004 */  lui        $at, %hi(D_800476A2)
    /* 2B90B0 802D6C80 256C0001 */  addiu      $t4, $t3, 0x1
    /* 2B90B4 802D6C84 A44C0000 */  sh         $t4, 0x0($v0)
    /* 2B90B8 802D6C88 A42D76A2 */  sh         $t5, %lo(D_800476A2)($at)
  .L802D6C8C_2B90BC:
    /* 2B90BC 802D6C8C 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802D6C90_2B90C0:
    /* 2B90C0 802D6C90 8FB00018 */  lw         $s0, 0x18($sp)
    /* 2B90C4 802D6C94 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 2B90C8 802D6C98 03E00008 */  jr         $ra
    /* 2B90CC 802D6C9C 00000000 */   nop
endlabel func_802D6A70_2B8EA0
