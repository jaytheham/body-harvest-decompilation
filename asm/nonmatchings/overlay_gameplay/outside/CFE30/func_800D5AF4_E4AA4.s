nonmatching func_800D5AF4_E4AA4, 0x4E0

glabel func_800D5AF4_E4AA4
    /* E4AA4 800D5AF4 24020020 */  addiu      $v0, $zero, 0x20
    /* E4AA8 800D5AF8 3C018015 */  lui        $at, %hi(D_80153BCD)
    /* E4AAC 800D5AFC A0223BCD */  sb         $v0, %lo(D_80153BCD)($at)
    /* E4AB0 800D5B00 3C018015 */  lui        $at, %hi(D_80153BCE)
    /* E4AB4 800D5B04 A0223BCE */  sb         $v0, %lo(D_80153BCE)($at)
    /* E4AB8 800D5B08 3C0E8015 */  lui        $t6, %hi(D_80153B80)
    /* E4ABC 800D5B0C 25CE3B80 */  addiu      $t6, $t6, %lo(D_80153B80)
    /* E4AC0 800D5B10 3C018015 */  lui        $at, %hi(D_80153BC4)
    /* E4AC4 800D5B14 AC2E3BC4 */  sw         $t6, %lo(D_80153BC4)($at)
    /* E4AC8 800D5B18 3C01425C */  lui        $at, (0x425C0000 >> 16)
    /* E4ACC 800D5B1C 44812000 */  mtc1       $at, $f4
    /* E4AD0 800D5B20 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* E4AD4 800D5B24 3C018015 */  lui        $at, %hi(D_80153BC8)
    /* E4AD8 800D5B28 AFB10024 */  sw         $s1, 0x24($sp)
    /* E4ADC 800D5B2C E4243BC8 */  swc1       $f4, %lo(D_80153BC8)($at)
    /* E4AE0 800D5B30 3C118006 */  lui        $s1, %hi(D_8005BB2C)
    /* E4AE4 800D5B34 3C018015 */  lui        $at, %hi(D_80153BCC)
    /* E4AE8 800D5B38 240F00FF */  addiu      $t7, $zero, 0xFF
    /* E4AEC 800D5B3C 2631BB2C */  addiu      $s1, $s1, %lo(D_8005BB2C)
    /* E4AF0 800D5B40 AFB3002C */  sw         $s3, 0x2C($sp)
    /* E4AF4 800D5B44 A02F3BCC */  sb         $t7, %lo(D_80153BCC)($at)
    /* E4AF8 800D5B48 8E330000 */  lw         $s3, 0x0($s1)
    /* E4AFC 800D5B4C AFB20028 */  sw         $s2, 0x28($sp)
    /* E4B00 800D5B50 3C128015 */  lui        $s2, %hi(D_801542BE)
    /* E4B04 800D5B54 865242BE */  lh         $s2, %lo(D_801542BE)($s2)
    /* E4B08 800D5B58 26780008 */  addiu      $t8, $s3, 0x8
    /* E4B0C 800D5B5C AFBF0044 */  sw         $ra, 0x44($sp)
    /* E4B10 800D5B60 AFBE0040 */  sw         $fp, 0x40($sp)
    /* E4B14 800D5B64 AFB7003C */  sw         $s7, 0x3C($sp)
    /* E4B18 800D5B68 AFB60038 */  sw         $s6, 0x38($sp)
    /* E4B1C 800D5B6C AFB50034 */  sw         $s5, 0x34($sp)
    /* E4B20 800D5B70 AFB40030 */  sw         $s4, 0x30($sp)
    /* E4B24 800D5B74 AFB00020 */  sw         $s0, 0x20($sp)
    /* E4B28 800D5B78 AE380000 */  sw         $t8, 0x0($s1)
    /* E4B2C 800D5B7C 3C19FD90 */  lui        $t9, (0xFD900000 >> 16)
    /* E4B30 800D5B80 0C000E38 */  jal        func_800038E0_44E0
    /* E4B34 800D5B84 AE790000 */   sw        $t9, 0x0($s3)
    /* E4B38 800D5B88 04410004 */  bgez       $v0, .L800D5B9C_E4B4C
    /* E4B3C 800D5B8C 30490007 */   andi      $t1, $v0, 0x7
    /* E4B40 800D5B90 11200002 */  beqz       $t1, .L800D5B9C_E4B4C
    /* E4B44 800D5B94 00000000 */   nop
    /* E4B48 800D5B98 2529FFF8 */  addiu      $t1, $t1, -0x8
  .L800D5B9C_E4B4C:
    /* E4B4C 800D5B9C 3C0B0101 */  lui        $t3, %hi(D_100C700)
    /* E4B50 800D5BA0 256BC700 */  addiu      $t3, $t3, %lo(D_100C700)
    /* E4B54 800D5BA4 00095240 */  sll        $t2, $t1, 9
    /* E4B58 800D5BA8 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* E4B5C 800D5BAC 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* E4B60 800D5BB0 014B6021 */  addu       $t4, $t2, $t3
    /* E4B64 800D5BB4 01816824 */  and        $t5, $t4, $at
    /* E4B68 800D5BB8 AE6D0004 */  sw         $t5, 0x4($s3)
    /* E4B6C 800D5BBC 8E300000 */  lw         $s0, 0x0($s1)
    /* E4B70 800D5BC0 3C180708 */  lui        $t8, (0x7080200 >> 16)
    /* E4B74 800D5BC4 37180200 */  ori        $t8, $t8, (0x7080200 & 0xFFFF)
    /* E4B78 800D5BC8 260E0008 */  addiu      $t6, $s0, 0x8
    /* E4B7C 800D5BCC AE2E0000 */  sw         $t6, 0x0($s1)
    /* E4B80 800D5BD0 3C0FF590 */  lui        $t7, (0xF5900000 >> 16)
    /* E4B84 800D5BD4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* E4B88 800D5BD8 AE180004 */  sw         $t8, 0x4($s0)
    /* E4B8C 800D5BDC 8E300000 */  lw         $s0, 0x0($s1)
    /* E4B90 800D5BE0 3C09E600 */  lui        $t1, (0xE6000000 >> 16)
    /* E4B94 800D5BE4 3C0C070F */  lui        $t4, (0x70FF400 >> 16)
    /* E4B98 800D5BE8 26190008 */  addiu      $t9, $s0, 0x8
    /* E4B9C 800D5BEC AE390000 */  sw         $t9, 0x0($s1)
    /* E4BA0 800D5BF0 AE000004 */  sw         $zero, 0x4($s0)
    /* E4BA4 800D5BF4 AE090000 */  sw         $t1, 0x0($s0)
    /* E4BA8 800D5BF8 8E300000 */  lw         $s0, 0x0($s1)
    /* E4BAC 800D5BFC 358CF400 */  ori        $t4, $t4, (0x70FF400 & 0xFFFF)
    /* E4BB0 800D5C00 3C0BF300 */  lui        $t3, (0xF3000000 >> 16)
    /* E4BB4 800D5C04 260A0008 */  addiu      $t2, $s0, 0x8
    /* E4BB8 800D5C08 AE2A0000 */  sw         $t2, 0x0($s1)
    /* E4BBC 800D5C0C AE0C0004 */  sw         $t4, 0x4($s0)
    /* E4BC0 800D5C10 AE0B0000 */  sw         $t3, 0x0($s0)
    /* E4BC4 800D5C14 8E300000 */  lw         $s0, 0x0($s1)
    /* E4BC8 800D5C18 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* E4BCC 800D5C1C 3C190008 */  lui        $t9, (0x80200 >> 16)
    /* E4BD0 800D5C20 260D0008 */  addiu      $t5, $s0, 0x8
    /* E4BD4 800D5C24 AE2D0000 */  sw         $t5, 0x0($s1)
    /* E4BD8 800D5C28 AE000004 */  sw         $zero, 0x4($s0)
    /* E4BDC 800D5C2C AE0E0000 */  sw         $t6, 0x0($s0)
    /* E4BE0 800D5C30 02003025 */  or         $a2, $s0, $zero
    /* E4BE4 800D5C34 8E300000 */  lw         $s0, 0x0($s1)
    /* E4BE8 800D5C38 3C18F580 */  lui        $t8, (0xF5800400 >> 16)
    /* E4BEC 800D5C3C 37180400 */  ori        $t8, $t8, (0xF5800400 & 0xFFFF)
    /* E4BF0 800D5C40 260F0008 */  addiu      $t7, $s0, 0x8
    /* E4BF4 800D5C44 AE2F0000 */  sw         $t7, 0x0($s1)
    /* E4BF8 800D5C48 37390200 */  ori        $t9, $t9, (0x80200 & 0xFFFF)
    /* E4BFC 800D5C4C AE190004 */  sw         $t9, 0x4($s0)
    /* E4C00 800D5C50 AE180000 */  sw         $t8, 0x0($s0)
    /* E4C04 800D5C54 02003825 */  or         $a3, $s0, $zero
    /* E4C08 800D5C58 8E300000 */  lw         $s0, 0x0($s1)
    /* E4C0C 800D5C5C 3C0B0007 */  lui        $t3, (0x7C07C >> 16)
    /* E4C10 800D5C60 356BC07C */  ori        $t3, $t3, (0x7C07C & 0xFFFF)
    /* E4C14 800D5C64 26090008 */  addiu      $t1, $s0, 0x8
    /* E4C18 800D5C68 AE290000 */  sw         $t1, 0x0($s1)
    /* E4C1C 800D5C6C 3C0AF200 */  lui        $t2, (0xF2000000 >> 16)
    /* E4C20 800D5C70 2401FFFB */  addiu      $at, $zero, -0x5
    /* E4C24 800D5C74 AE0A0000 */  sw         $t2, 0x0($s0)
    /* E4C28 800D5C78 AE0B0004 */  sw         $t3, 0x4($s0)
    /* E4C2C 800D5C7C 124100C9 */  beq        $s2, $at, .L800D5FA4_E4F54
    /* E4C30 800D5C80 02004025 */   or        $t0, $s0, $zero
    /* E4C34 800D5C84 241EFFFA */  addiu      $fp, $zero, -0x6
    /* E4C38 800D5C88 125E00C6 */  beq        $s2, $fp, .L800D5FA4_E4F54
    /* E4C3C 800D5C8C 34178000 */   ori       $s7, $zero, 0x8000
    /* E4C40 800D5C90 3C158015 */  lui        $s5, %hi(D_80154318)
    /* E4C44 800D5C94 26B54318 */  addiu      $s5, $s5, %lo(D_80154318)
    /* E4C48 800D5C98 2416001C */  addiu      $s6, $zero, 0x1C
  .L800D5C9C_E4C4C:
    /* E4C4C 800D5C9C 02560019 */  multu      $s2, $s6
    /* E4C50 800D5CA0 00006012 */  mflo       $t4
    /* E4C54 800D5CA4 02AC2821 */  addu       $a1, $s5, $t4
    /* E4C58 800D5CA8 84A20004 */  lh         $v0, 0x4($a1)
    /* E4C5C 800D5CAC 24A30008 */  addiu      $v1, $a1, 0x8
    /* E4C60 800D5CB0 00560019 */  multu      $v0, $s6
    /* E4C64 800D5CB4 00006812 */  mflo       $t5
    /* E4C68 800D5CB8 02ADA021 */  addu       $s4, $s5, $t5
    /* E4C6C 800D5CBC 96910008 */  lhu        $s1, 0x8($s4)
    /* E4C70 800D5CC0 00117080 */  sll        $t6, $s1, 2
    /* E4C74 800D5CC4 31CFFFFF */  andi       $t7, $t6, 0xFFFF
    /* E4C78 800D5CC8 29E10029 */  slti       $at, $t7, 0x29
    /* E4C7C 800D5CCC 14200002 */  bnez       $at, .L800D5CD8_E4C88
    /* E4C80 800D5CD0 01E08825 */   or        $s1, $t7, $zero
    /* E4C84 800D5CD4 24110028 */  addiu      $s1, $zero, 0x28
  .L800D5CD8_E4C88:
    /* E4C88 800D5CD8 96930008 */  lhu        $s3, 0x8($s4)
    /* E4C8C 800D5CDC 24010168 */  addiu      $at, $zero, 0x168
    /* E4C90 800D5CE0 80640006 */  lb         $a0, 0x6($v1)
    /* E4C94 800D5CE4 0013C100 */  sll        $t8, $s3, 4
    /* E4C98 800D5CE8 0313C023 */  subu       $t8, $t8, $s3
    /* E4C9C 800D5CEC 0301001A */  div        $zero, $t8, $at
    /* E4CA0 800D5CF0 0000C810 */  mfhi       $t9
    /* E4CA4 800D5CF4 00194C00 */  sll        $t1, $t9, 16
    /* E4CA8 800D5CF8 00095403 */  sra        $t2, $t1, 16
    /* E4CAC 800D5CFC 18800035 */  blez       $a0, .L800D5DD4_E4D84
    /* E4CB0 800D5D00 01409825 */   or        $s3, $t2, $zero
    /* E4CB4 800D5D04 80620008 */  lb         $v0, 0x8($v1)
    /* E4CB8 800D5D08 18400017 */  blez       $v0, .L800D5D68_E4D18
    /* E4CBC 800D5D0C 00000000 */   nop
    /* E4CC0 800D5D10 0082001A */  div        $zero, $a0, $v0
    /* E4CC4 800D5D14 00005812 */  mflo       $t3
    /* E4CC8 800D5D18 448B3000 */  mtc1       $t3, $f6
    /* E4CCC 800D5D1C 14400002 */  bnez       $v0, .L800D5D28_E4CD8
    /* E4CD0 800D5D20 00000000 */   nop
    /* E4CD4 800D5D24 0007000D */  break      7
  .L800D5D28_E4CD8:
    /* E4CD8 800D5D28 2401FFFF */  addiu      $at, $zero, -0x1
    /* E4CDC 800D5D2C 14410004 */  bne        $v0, $at, .L800D5D40_E4CF0
    /* E4CE0 800D5D30 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E4CE4 800D5D34 14810002 */  bne        $a0, $at, .L800D5D40_E4CF0
    /* E4CE8 800D5D38 00000000 */   nop
    /* E4CEC 800D5D3C 0006000D */  break      6
  .L800D5D40_E4CF0:
    /* E4CF0 800D5D40 46803320 */  cvt.s.w    $f12, $f6
    /* E4CF4 800D5D44 0C000DD0 */  jal        func_80003740_4340
    /* E4CF8 800D5D48 00000000 */   nop
    /* E4CFC 800D5D4C 3C0C0001 */  lui        $t4, (0x10000 >> 16)
    /* E4D00 800D5D50 01828023 */  subu       $s0, $t4, $v0
    /* E4D04 800D5D54 00106C00 */  sll        $t5, $s0, 16
    /* E4D08 800D5D58 3C038005 */  lui        $v1, %hi(gameplayMode)
    /* E4D0C 800D5D5C 8C632ADC */  lw         $v1, %lo(gameplayMode)($v1)
    /* E4D10 800D5D60 10000062 */  b          .L800D5EEC_E4E9C
    /* E4D14 800D5D64 000D8403 */   sra       $s0, $t5, 16
  .L800D5D68_E4D18:
    /* E4D18 800D5D68 04410016 */  bgez       $v0, .L800D5DC4_E4D74
    /* E4D1C 800D5D6C 00000000 */   nop
    /* E4D20 800D5D70 0082001A */  div        $zero, $a0, $v0
    /* E4D24 800D5D74 00007812 */  mflo       $t7
    /* E4D28 800D5D78 448F4000 */  mtc1       $t7, $f8
    /* E4D2C 800D5D7C 14400002 */  bnez       $v0, .L800D5D88_E4D38
    /* E4D30 800D5D80 00000000 */   nop
    /* E4D34 800D5D84 0007000D */  break      7
  .L800D5D88_E4D38:
    /* E4D38 800D5D88 2401FFFF */  addiu      $at, $zero, -0x1
    /* E4D3C 800D5D8C 14410004 */  bne        $v0, $at, .L800D5DA0_E4D50
    /* E4D40 800D5D90 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E4D44 800D5D94 14810002 */  bne        $a0, $at, .L800D5DA0_E4D50
    /* E4D48 800D5D98 00000000 */   nop
    /* E4D4C 800D5D9C 0006000D */  break      6
  .L800D5DA0_E4D50:
    /* E4D50 800D5DA0 46804320 */  cvt.s.w    $f12, $f8
    /* E4D54 800D5DA4 0C000DD0 */  jal        func_80003740_4340
    /* E4D58 800D5DA8 00000000 */   nop
    /* E4D5C 800D5DAC 00578021 */  addu       $s0, $v0, $s7
    /* E4D60 800D5DB0 0010C400 */  sll        $t8, $s0, 16
    /* E4D64 800D5DB4 3C038005 */  lui        $v1, %hi(gameplayMode)
    /* E4D68 800D5DB8 8C632ADC */  lw         $v1, %lo(gameplayMode)($v1)
    /* E4D6C 800D5DBC 1000004B */  b          .L800D5EEC_E4E9C
    /* E4D70 800D5DC0 00188403 */   sra       $s0, $t8, 16
  .L800D5DC4_E4D74:
    /* E4D74 800D5DC4 3C038005 */  lui        $v1, %hi(gameplayMode)
    /* E4D78 800D5DC8 8C632ADC */  lw         $v1, %lo(gameplayMode)($v1)
    /* E4D7C 800D5DCC 10000047 */  b          .L800D5EEC_E4E9C
    /* E4D80 800D5DD0 2410C000 */   addiu     $s0, $zero, -0x4000
  .L800D5DD4_E4D84:
    /* E4D84 800D5DD4 04830035 */  bgezl      $a0, .L800D5EAC_E4E5C
    /* E4D88 800D5DD8 80620008 */   lb        $v0, 0x8($v1)
    /* E4D8C 800D5DDC 80620008 */  lb         $v0, 0x8($v1)
    /* E4D90 800D5DE0 18400016 */  blez       $v0, .L800D5E3C_E4DEC
    /* E4D94 800D5DE4 00000000 */   nop
    /* E4D98 800D5DE8 0082001A */  div        $zero, $a0, $v0
    /* E4D9C 800D5DEC 00004812 */  mflo       $t1
    /* E4DA0 800D5DF0 44895000 */  mtc1       $t1, $f10
    /* E4DA4 800D5DF4 14400002 */  bnez       $v0, .L800D5E00_E4DB0
    /* E4DA8 800D5DF8 00000000 */   nop
    /* E4DAC 800D5DFC 0007000D */  break      7
  .L800D5E00_E4DB0:
    /* E4DB0 800D5E00 2401FFFF */  addiu      $at, $zero, -0x1
    /* E4DB4 800D5E04 14410004 */  bne        $v0, $at, .L800D5E18_E4DC8
    /* E4DB8 800D5E08 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E4DBC 800D5E0C 14810002 */  bne        $a0, $at, .L800D5E18_E4DC8
    /* E4DC0 800D5E10 00000000 */   nop
    /* E4DC4 800D5E14 0006000D */  break      6
  .L800D5E18_E4DC8:
    /* E4DC8 800D5E18 46805320 */  cvt.s.w    $f12, $f10
    /* E4DCC 800D5E1C 0C000DD0 */  jal        func_80003740_4340
    /* E4DD0 800D5E20 00000000 */   nop
    /* E4DD4 800D5E24 00028400 */  sll        $s0, $v0, 16
    /* E4DD8 800D5E28 00105403 */  sra        $t2, $s0, 16
    /* E4DDC 800D5E2C 3C038005 */  lui        $v1, %hi(gameplayMode)
    /* E4DE0 800D5E30 8C632ADC */  lw         $v1, %lo(gameplayMode)($v1)
    /* E4DE4 800D5E34 1000002D */  b          .L800D5EEC_E4E9C
    /* E4DE8 800D5E38 01408025 */   or        $s0, $t2, $zero
  .L800D5E3C_E4DEC:
    /* E4DEC 800D5E3C 04410016 */  bgez       $v0, .L800D5E98_E4E48
    /* E4DF0 800D5E40 00000000 */   nop
    /* E4DF4 800D5E44 0082001A */  div        $zero, $a0, $v0
    /* E4DF8 800D5E48 00005812 */  mflo       $t3
    /* E4DFC 800D5E4C 448B8000 */  mtc1       $t3, $f16
    /* E4E00 800D5E50 14400002 */  bnez       $v0, .L800D5E5C_E4E0C
    /* E4E04 800D5E54 00000000 */   nop
    /* E4E08 800D5E58 0007000D */  break      7
  .L800D5E5C_E4E0C:
    /* E4E0C 800D5E5C 2401FFFF */  addiu      $at, $zero, -0x1
    /* E4E10 800D5E60 14410004 */  bne        $v0, $at, .L800D5E74_E4E24
    /* E4E14 800D5E64 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E4E18 800D5E68 14810002 */  bne        $a0, $at, .L800D5E74_E4E24
    /* E4E1C 800D5E6C 00000000 */   nop
    /* E4E20 800D5E70 0006000D */  break      6
  .L800D5E74_E4E24:
    /* E4E24 800D5E74 46808320 */  cvt.s.w    $f12, $f16
    /* E4E28 800D5E78 0C000DD0 */  jal        func_80003740_4340
    /* E4E2C 800D5E7C 00000000 */   nop
    /* E4E30 800D5E80 02E28023 */  subu       $s0, $s7, $v0
    /* E4E34 800D5E84 00106400 */  sll        $t4, $s0, 16
    /* E4E38 800D5E88 3C038005 */  lui        $v1, %hi(gameplayMode)
    /* E4E3C 800D5E8C 8C632ADC */  lw         $v1, %lo(gameplayMode)($v1)
    /* E4E40 800D5E90 10000016 */  b          .L800D5EEC_E4E9C
    /* E4E44 800D5E94 000C8403 */   sra       $s0, $t4, 16
  .L800D5E98_E4E48:
    /* E4E48 800D5E98 3C038005 */  lui        $v1, %hi(gameplayMode)
    /* E4E4C 800D5E9C 8C632ADC */  lw         $v1, %lo(gameplayMode)($v1)
    /* E4E50 800D5EA0 10000012 */  b          .L800D5EEC_E4E9C
    /* E4E54 800D5EA4 24104000 */   addiu     $s0, $zero, 0x4000
    /* E4E58 800D5EA8 80620008 */  lb         $v0, 0x8($v1)
  .L800D5EAC_E4E5C:
    /* E4E5C 800D5EAC 3C038005 */  lui        $v1, %hi(gameplayMode)
    /* E4E60 800D5EB0 00008025 */  or         $s0, $zero, $zero
    /* E4E64 800D5EB4 18400003 */  blez       $v0, .L800D5EC4_E4E74
    /* E4E68 800D5EB8 00000000 */   nop
    /* E4E6C 800D5EBC 1000000B */  b          .L800D5EEC_E4E9C
    /* E4E70 800D5EC0 8C632ADC */   lw        $v1, %lo(gameplayMode)($v1)
  .L800D5EC4_E4E74:
    /* E4E74 800D5EC4 04410004 */  bgez       $v0, .L800D5ED8_E4E88
    /* E4E78 800D5EC8 24108000 */   addiu     $s0, $zero, -0x8000
    /* E4E7C 800D5ECC 3C038005 */  lui        $v1, %hi(gameplayMode)
    /* E4E80 800D5ED0 10000006 */  b          .L800D5EEC_E4E9C
    /* E4E84 800D5ED4 8C632ADC */   lw        $v1, %lo(gameplayMode)($v1)
  .L800D5ED8_E4E88:
    /* E4E88 800D5ED8 3C048014 */  lui        $a0, %hi(D_801438A8)
    /* E4E8C 800D5EDC 0C00731B */  jal        osSyncPrintf
    /* E4E90 800D5EE0 248438A8 */   addiu     $a0, $a0, %lo(D_801438A8)
    /* E4E94 800D5EE4 10000030 */  b          .L800D5FA8_E4F58
    /* E4E98 800D5EE8 8FBF0044 */   lw        $ra, 0x44($sp)
  .L800D5EEC_E4E9C:
    /* E4E9C 800D5EEC 24010001 */  addiu      $at, $zero, 0x1
    /* E4EA0 800D5EF0 14610026 */  bne        $v1, $at, .L800D5F8C_E4F3C
    /* E4EA4 800D5EF4 00122400 */   sll       $a0, $s2, 16
    /* E4EA8 800D5EF8 00133400 */  sll        $a2, $s3, 16
    /* E4EAC 800D5EFC 00103C00 */  sll        $a3, $s0, 16
    /* E4EB0 800D5F00 0007C403 */  sra        $t8, $a3, 16
    /* E4EB4 800D5F04 00067C03 */  sra        $t7, $a2, 16
    /* E4EB8 800D5F08 00047403 */  sra        $t6, $a0, 16
    /* E4EBC 800D5F0C 01C02025 */  or         $a0, $t6, $zero
    /* E4EC0 800D5F10 01E03025 */  or         $a2, $t7, $zero
    /* E4EC4 800D5F14 03003825 */  or         $a3, $t8, $zero
    /* E4EC8 800D5F18 3225FFFF */  andi       $a1, $s1, 0xFFFF
    /* E4ECC 800D5F1C 0C0355D8 */  jal        func_800D5760_E4710
    /* E4ED0 800D5F20 AFA00010 */   sw        $zero, 0x10($sp)
    /* E4ED4 800D5F24 00122400 */  sll        $a0, $s2, 16
    /* E4ED8 800D5F28 00133400 */  sll        $a2, $s3, 16
    /* E4EDC 800D5F2C 00103C00 */  sll        $a3, $s0, 16
    /* E4EE0 800D5F30 00075403 */  sra        $t2, $a3, 16
    /* E4EE4 800D5F34 00064C03 */  sra        $t1, $a2, 16
    /* E4EE8 800D5F38 0004CC03 */  sra        $t9, $a0, 16
    /* E4EEC 800D5F3C 240B0001 */  addiu      $t3, $zero, 0x1
    /* E4EF0 800D5F40 AFAB0010 */  sw         $t3, 0x10($sp)
    /* E4EF4 800D5F44 03202025 */  or         $a0, $t9, $zero
    /* E4EF8 800D5F48 01203025 */  or         $a2, $t1, $zero
    /* E4EFC 800D5F4C 01403825 */  or         $a3, $t2, $zero
    /* E4F00 800D5F50 0C0355D8 */  jal        func_800D5760_E4710
    /* E4F04 800D5F54 3225FFFF */   andi      $a1, $s1, 0xFFFF
    /* E4F08 800D5F58 00122400 */  sll        $a0, $s2, 16
    /* E4F0C 800D5F5C 00133400 */  sll        $a2, $s3, 16
    /* E4F10 800D5F60 00103C00 */  sll        $a3, $s0, 16
    /* E4F14 800D5F64 00077403 */  sra        $t6, $a3, 16
    /* E4F18 800D5F68 00066C03 */  sra        $t5, $a2, 16
    /* E4F1C 800D5F6C 00046403 */  sra        $t4, $a0, 16
    /* E4F20 800D5F70 240F0002 */  addiu      $t7, $zero, 0x2
    /* E4F24 800D5F74 AFAF0010 */  sw         $t7, 0x10($sp)
    /* E4F28 800D5F78 01802025 */  or         $a0, $t4, $zero
    /* E4F2C 800D5F7C 01A03025 */  or         $a2, $t5, $zero
    /* E4F30 800D5F80 01C03825 */  or         $a3, $t6, $zero
    /* E4F34 800D5F84 0C0355D8 */  jal        func_800D5760_E4710
    /* E4F38 800D5F88 3225FFFF */   andi      $a1, $s1, 0xFFFF
  .L800D5F8C_E4F3C:
    /* E4F3C 800D5F8C 86920004 */  lh         $s2, 0x4($s4)
    /* E4F40 800D5F90 2401FFFB */  addiu      $at, $zero, -0x5
    /* E4F44 800D5F94 52410004 */  beql       $s2, $at, .L800D5FA8_E4F58
    /* E4F48 800D5F98 8FBF0044 */   lw        $ra, 0x44($sp)
    /* E4F4C 800D5F9C 165EFF3F */  bne        $s2, $fp, .L800D5C9C_E4C4C
    /* E4F50 800D5FA0 00000000 */   nop
  .L800D5FA4_E4F54:
    /* E4F54 800D5FA4 8FBF0044 */  lw         $ra, 0x44($sp)
  .L800D5FA8_E4F58:
    /* E4F58 800D5FA8 8FB00020 */  lw         $s0, 0x20($sp)
    /* E4F5C 800D5FAC 8FB10024 */  lw         $s1, 0x24($sp)
    /* E4F60 800D5FB0 8FB20028 */  lw         $s2, 0x28($sp)
    /* E4F64 800D5FB4 8FB3002C */  lw         $s3, 0x2C($sp)
    /* E4F68 800D5FB8 8FB40030 */  lw         $s4, 0x30($sp)
    /* E4F6C 800D5FBC 8FB50034 */  lw         $s5, 0x34($sp)
    /* E4F70 800D5FC0 8FB60038 */  lw         $s6, 0x38($sp)
    /* E4F74 800D5FC4 8FB7003C */  lw         $s7, 0x3C($sp)
    /* E4F78 800D5FC8 8FBE0040 */  lw         $fp, 0x40($sp)
    /* E4F7C 800D5FCC 03E00008 */  jr         $ra
    /* E4F80 800D5FD0 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_800D5AF4_E4AA4
