nonmatching func_800C1A4C_D09FC, 0x2F4

glabel func_800C1A4C_D09FC
    /* D09FC 800C1A4C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* D0A00 800C1A50 AFA40028 */  sw         $a0, 0x28($sp)
    /* D0A04 800C1A54 87AE002A */  lh         $t6, 0x2A($sp)
    /* D0A08 800C1A58 AFBF0014 */  sw         $ra, 0x14($sp)
    /* D0A0C 800C1A5C AFA5002C */  sw         $a1, 0x2C($sp)
    /* D0A10 800C1A60 AFA60030 */  sw         $a2, 0x30($sp)
    /* D0A14 800C1A64 05C00004 */  bltz       $t6, .L800C1A78_D0A28
    /* D0A18 800C1A68 30A700FF */   andi      $a3, $a1, 0xFF
    /* D0A1C 800C1A6C 29C10190 */  slti       $at, $t6, 0x190
    /* D0A20 800C1A70 14200011 */  bnez       $at, .L800C1AB8_D0A68
    /* D0A24 800C1A74 87B8002A */   lh        $t8, 0x2A($sp)
  .L800C1A78_D0A28:
    /* D0A28 800C1A78 8FAF0030 */  lw         $t7, 0x30($sp)
    /* D0A2C 800C1A7C 3C048014 */  lui        $a0, %hi(D_80143170)
    /* D0A30 800C1A80 24843170 */  addiu      $a0, $a0, %lo(D_80143170)
    /* D0A34 800C1A84 11E00008 */  beqz       $t7, .L800C1AA8_D0A58
    /* D0A38 800C1A88 87A5002A */   lh        $a1, 0x2A($sp)
    /* D0A3C 800C1A8C 3C048014 */  lui        $a0, %hi(D_80143128)
    /* D0A40 800C1A90 24843128 */  addiu      $a0, $a0, %lo(D_80143128)
    /* D0A44 800C1A94 87A5002A */  lh         $a1, 0x2A($sp)
    /* D0A48 800C1A98 0C00731B */  jal        osSyncPrintf
    /* D0A4C 800C1A9C 00E03025 */   or        $a2, $a3, $zero
    /* D0A50 800C1AA0 100000A4 */  b          .L800C1D34_D0CE4
    /* D0A54 800C1AA4 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800C1AA8_D0A58:
    /* D0A58 800C1AA8 0C00731B */  jal        osSyncPrintf
    /* D0A5C 800C1AAC 00E03025 */   or        $a2, $a3, $zero
    /* D0A60 800C1AB0 100000A0 */  b          .L800C1D34_D0CE4
    /* D0A64 800C1AB4 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800C1AB8_D0A68:
    /* D0A68 800C1AB8 2406001C */  addiu      $a2, $zero, 0x1C
    /* D0A6C 800C1ABC 03060019 */  multu      $t8, $a2
    /* D0A70 800C1AC0 3C048015 */  lui        $a0, %hi(D_80154318)
    /* D0A74 800C1AC4 24844318 */  addiu      $a0, $a0, %lo(D_80154318)
    /* D0A78 800C1AC8 8FAB0030 */  lw         $t3, 0x30($sp)
    /* D0A7C 800C1ACC 8FAC0030 */  lw         $t4, 0x30($sp)
    /* D0A80 800C1AD0 0000C812 */  mflo       $t9
    /* D0A84 800C1AD4 00992821 */  addu       $a1, $a0, $t9
    /* D0A88 800C1AD8 90A90000 */  lbu        $t1, 0x0($a1)
    /* D0A8C 800C1ADC 312A0001 */  andi       $t2, $t1, 0x1
    /* D0A90 800C1AE0 15400010 */  bnez       $t2, .L800C1B24_D0AD4
    /* D0A94 800C1AE4 00000000 */   nop
    /* D0A98 800C1AE8 11600008 */  beqz       $t3, .L800C1B0C_D0ABC
    /* D0A9C 800C1AEC 3C048014 */   lui       $a0, %hi(D_80143200)
    /* D0AA0 800C1AF0 3C048014 */  lui        $a0, %hi(D_801431AC)
    /* D0AA4 800C1AF4 248431AC */  addiu      $a0, $a0, %lo(D_801431AC)
    /* D0AA8 800C1AF8 03002825 */  or         $a1, $t8, $zero
    /* D0AAC 800C1AFC 0C00731B */  jal        osSyncPrintf
    /* D0AB0 800C1B00 00E03025 */   or        $a2, $a3, $zero
    /* D0AB4 800C1B04 1000008B */  b          .L800C1D34_D0CE4
    /* D0AB8 800C1B08 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800C1B0C_D0ABC:
    /* D0ABC 800C1B0C 24843200 */  addiu      $a0, $a0, %lo(D_80143200)
    /* D0AC0 800C1B10 87A5002A */  lh         $a1, 0x2A($sp)
    /* D0AC4 800C1B14 0C00731B */  jal        osSyncPrintf
    /* D0AC8 800C1B18 00E03025 */   or        $a2, $a3, $zero
    /* D0ACC 800C1B1C 10000085 */  b          .L800C1D34_D0CE4
    /* D0AD0 800C1B20 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800C1B24_D0AD4:
    /* D0AD4 800C1B24 11800008 */  beqz       $t4, .L800C1B48_D0AF8
    /* D0AD8 800C1B28 00077880 */   sll       $t7, $a3, 2
    /* D0ADC 800C1B2C 00076880 */  sll        $t5, $a3, 2
    /* D0AE0 800C1B30 01A76823 */  subu       $t5, $t5, $a3
    /* D0AE4 800C1B34 3C0E8015 */  lui        $t6, %hi(D_801541F8)
    /* D0AE8 800C1B38 25CE41F8 */  addiu      $t6, $t6, %lo(D_801541F8)
    /* D0AEC 800C1B3C 000D6880 */  sll        $t5, $t5, 2
    /* D0AF0 800C1B40 10000006 */  b          .L800C1B5C_D0B0C
    /* D0AF4 800C1B44 01AE1021 */   addu      $v0, $t5, $t6
  .L800C1B48_D0AF8:
    /* D0AF8 800C1B48 01E77823 */  subu       $t7, $t7, $a3
    /* D0AFC 800C1B4C 3C198015 */  lui        $t9, %hi(D_80154088)
    /* D0B00 800C1B50 27394088 */  addiu      $t9, $t9, %lo(D_80154088)
    /* D0B04 800C1B54 000F7880 */  sll        $t7, $t7, 2
    /* D0B08 800C1B58 01F91021 */  addu       $v0, $t7, $t9
  .L800C1B5C_D0B0C:
    /* D0B0C 800C1B5C 90430004 */  lbu        $v1, 0x4($v0)
    /* D0B10 800C1B60 24010001 */  addiu      $at, $zero, 0x1
    /* D0B14 800C1B64 10600007 */  beqz       $v1, .L800C1B84_D0B34
    /* D0B18 800C1B68 00000000 */   nop
    /* D0B1C 800C1B6C 1061000E */  beq        $v1, $at, .L800C1BA8_D0B58
    /* D0B20 800C1B70 24010002 */   addiu     $at, $zero, 0x2
    /* D0B24 800C1B74 50610011 */  beql       $v1, $at, .L800C1BBC_D0B6C
    /* D0B28 800C1B78 84A30006 */   lh        $v1, 0x6($a1)
    /* D0B2C 800C1B7C 10000039 */  b          .L800C1C64_D0C14
    /* D0B30 800C1B80 84A30006 */   lh        $v1, 0x6($a1)
  .L800C1B84_D0B34:
    /* D0B34 800C1B84 3C048014 */  lui        $a0, %hi(D_80143248)
    /* D0B38 800C1B88 24843248 */  addiu      $a0, $a0, %lo(D_80143248)
    /* D0B3C 800C1B8C 0C00731B */  jal        osSyncPrintf
    /* D0B40 800C1B90 AFA20020 */   sw        $v0, 0x20($sp)
    /* D0B44 800C1B94 8FA20020 */  lw         $v0, 0x20($sp)
    /* D0B48 800C1B98 2403FFFA */  addiu      $v1, $zero, -0x6
    /* D0B4C 800C1B9C A4430006 */  sh         $v1, 0x6($v0)
    /* D0B50 800C1BA0 10000063 */  b          .L800C1D30_D0CE0
    /* D0B54 800C1BA4 A4430008 */   sh        $v1, 0x8($v0)
  .L800C1BA8_D0B58:
    /* D0B58 800C1BA8 2403FFFA */  addiu      $v1, $zero, -0x6
    /* D0B5C 800C1BAC A4430006 */  sh         $v1, 0x6($v0)
    /* D0B60 800C1BB0 1000004C */  b          .L800C1CE4_D0C94
    /* D0B64 800C1BB4 A4430008 */   sh        $v1, 0x8($v0)
    /* D0B68 800C1BB8 84A30006 */  lh         $v1, 0x6($a1)
  .L800C1BBC_D0B6C:
    /* D0B6C 800C1BBC 2407FFFC */  addiu      $a3, $zero, -0x4
    /* D0B70 800C1BC0 54E30010 */  bnel       $a3, $v1, .L800C1C04_D0BB4
    /* D0B74 800C1BC4 84AF0004 */   lh        $t7, 0x4($a1)
    /* D0B78 800C1BC8 84A90004 */  lh         $t1, 0x4($a1)
    /* D0B7C 800C1BCC 2408FFFB */  addiu      $t0, $zero, -0x5
    /* D0B80 800C1BD0 A4490006 */  sh         $t1, 0x6($v0)
    /* D0B84 800C1BD4 844A0006 */  lh         $t2, 0x6($v0)
    /* D0B88 800C1BD8 01460019 */  multu      $t2, $a2
    /* D0B8C 800C1BDC 00005812 */  mflo       $t3
    /* D0B90 800C1BE0 008BC021 */  addu       $t8, $a0, $t3
    /* D0B94 800C1BE4 A7070006 */  sh         $a3, 0x6($t8)
    /* D0B98 800C1BE8 844C0006 */  lh         $t4, 0x6($v0)
    /* D0B9C 800C1BEC 01860019 */  multu      $t4, $a2
    /* D0BA0 800C1BF0 00006812 */  mflo       $t5
    /* D0BA4 800C1BF4 008D7021 */  addu       $t6, $a0, $t5
    /* D0BA8 800C1BF8 1000003A */  b          .L800C1CE4_D0C94
    /* D0BAC 800C1BFC A5C80004 */   sh        $t0, 0x4($t6)
    /* D0BB0 800C1C00 84AF0004 */  lh         $t7, 0x4($a1)
  .L800C1C04_D0BB4:
    /* D0BB4 800C1C04 2408FFFB */  addiu      $t0, $zero, -0x5
    /* D0BB8 800C1C08 150F000D */  bne        $t0, $t7, .L800C1C40_D0BF0
    /* D0BBC 800C1C0C 00000000 */   nop
    /* D0BC0 800C1C10 84590006 */  lh         $t9, 0x6($v0)
    /* D0BC4 800C1C14 A4430008 */  sh         $v1, 0x8($v0)
    /* D0BC8 800C1C18 03260019 */  multu      $t9, $a2
    /* D0BCC 800C1C1C 00004812 */  mflo       $t1
    /* D0BD0 800C1C20 00895021 */  addu       $t2, $a0, $t1
    /* D0BD4 800C1C24 A5470006 */  sh         $a3, 0x6($t2)
    /* D0BD8 800C1C28 844B0006 */  lh         $t3, 0x6($v0)
    /* D0BDC 800C1C2C 01660019 */  multu      $t3, $a2
    /* D0BE0 800C1C30 0000C012 */  mflo       $t8
    /* D0BE4 800C1C34 00986021 */  addu       $t4, $a0, $t8
    /* D0BE8 800C1C38 1000002A */  b          .L800C1CE4_D0C94
    /* D0BEC 800C1C3C A5880004 */   sh        $t0, 0x4($t4)
  .L800C1C40_D0BF0:
    /* D0BF0 800C1C40 3C048014 */  lui        $a0, %hi(D_80143284)
    /* D0BF4 800C1C44 24843284 */  addiu      $a0, $a0, %lo(D_80143284)
    /* D0BF8 800C1C48 AFA20020 */  sw         $v0, 0x20($sp)
    /* D0BFC 800C1C4C 0C00731B */  jal        osSyncPrintf
    /* D0C00 800C1C50 AFA50018 */   sw        $a1, 0x18($sp)
    /* D0C04 800C1C54 8FA20020 */  lw         $v0, 0x20($sp)
    /* D0C08 800C1C58 10000022 */  b          .L800C1CE4_D0C94
    /* D0C0C 800C1C5C 8FA50018 */   lw        $a1, 0x18($sp)
    /* D0C10 800C1C60 84A30006 */  lh         $v1, 0x6($a1)
  .L800C1C64_D0C14:
    /* D0C14 800C1C64 2407FFFC */  addiu      $a3, $zero, -0x4
    /* D0C18 800C1C68 54E3000A */  bnel       $a3, $v1, .L800C1C94_D0C44
    /* D0C1C 800C1C6C 84A70004 */   lh        $a3, 0x4($a1)
    /* D0C20 800C1C70 84AD0004 */  lh         $t5, 0x4($a1)
    /* D0C24 800C1C74 A44D0006 */  sh         $t5, 0x6($v0)
    /* D0C28 800C1C78 84AE0004 */  lh         $t6, 0x4($a1)
    /* D0C2C 800C1C7C 01C60019 */  multu      $t6, $a2
    /* D0C30 800C1C80 00007812 */  mflo       $t7
    /* D0C34 800C1C84 008FC821 */  addu       $t9, $a0, $t7
    /* D0C38 800C1C88 10000016 */  b          .L800C1CE4_D0C94
    /* D0C3C 800C1C8C A7270006 */   sh        $a3, 0x6($t9)
    /* D0C40 800C1C90 84A70004 */  lh         $a3, 0x4($a1)
  .L800C1C94_D0C44:
    /* D0C44 800C1C94 2408FFFB */  addiu      $t0, $zero, -0x5
    /* D0C48 800C1C98 15070008 */  bne        $t0, $a3, .L800C1CBC_D0C6C
    /* D0C4C 800C1C9C 00000000 */   nop
    /* D0C50 800C1CA0 A4430008 */  sh         $v1, 0x8($v0)
    /* D0C54 800C1CA4 84A90006 */  lh         $t1, 0x6($a1)
    /* D0C58 800C1CA8 01260019 */  multu      $t1, $a2
    /* D0C5C 800C1CAC 00005012 */  mflo       $t2
    /* D0C60 800C1CB0 008A5821 */  addu       $t3, $a0, $t2
    /* D0C64 800C1CB4 1000000B */  b          .L800C1CE4_D0C94
    /* D0C68 800C1CB8 A5680004 */   sh        $t0, 0x4($t3)
  .L800C1CBC_D0C6C:
    /* D0C6C 800C1CBC 00E60019 */  multu      $a3, $a2
    /* D0C70 800C1CC0 0000C012 */  mflo       $t8
    /* D0C74 800C1CC4 00986021 */  addu       $t4, $a0, $t8
    /* D0C78 800C1CC8 A5830006 */  sh         $v1, 0x6($t4)
    /* D0C7C 800C1CCC 84AE0006 */  lh         $t6, 0x6($a1)
    /* D0C80 800C1CD0 84AD0004 */  lh         $t5, 0x4($a1)
    /* D0C84 800C1CD4 01C60019 */  multu      $t6, $a2
    /* D0C88 800C1CD8 00007812 */  mflo       $t7
    /* D0C8C 800C1CDC 008FC821 */  addu       $t9, $a0, $t7
    /* D0C90 800C1CE0 A72D0004 */  sh         $t5, 0x4($t9)
  .L800C1CE4_D0C94:
    /* D0C94 800C1CE4 240900FF */  addiu      $t1, $zero, 0xFF
    /* D0C98 800C1CE8 A0A00000 */  sb         $zero, 0x0($a1)
    /* D0C9C 800C1CEC A0A90001 */  sb         $t1, 0x1($a1)
    /* D0CA0 800C1CF0 904A0004 */  lbu        $t2, 0x4($v0)
    /* D0CA4 800C1CF4 3C038015 */  lui        $v1, %hi(D_8015430E)
    /* D0CA8 800C1CF8 3C048015 */  lui        $a0, %hi(D_80154310)
    /* D0CAC 800C1CFC 254BFFFF */  addiu      $t3, $t2, -0x1
    /* D0CB0 800C1D00 A04B0004 */  sb         $t3, 0x4($v0)
    /* D0CB4 800C1D04 24844310 */  addiu      $a0, $a0, %lo(D_80154310)
    /* D0CB8 800C1D08 2463430E */  addiu      $v1, $v1, %lo(D_8015430E)
    /* D0CBC 800C1D0C 84780000 */  lh         $t8, 0x0($v1)
    /* D0CC0 800C1D10 848F0000 */  lh         $t7, 0x0($a0)
    /* D0CC4 800C1D14 87AE002A */  lh         $t6, 0x2A($sp)
    /* D0CC8 800C1D18 270CFFFF */  addiu      $t4, $t8, -0x1
    /* D0CCC 800C1D1C A46C0000 */  sh         $t4, 0x0($v1)
    /* D0CD0 800C1D20 01CF082A */  slt        $at, $t6, $t7
    /* D0CD4 800C1D24 50200003 */  beql       $at, $zero, .L800C1D34_D0CE4
    /* D0CD8 800C1D28 8FBF0014 */   lw        $ra, 0x14($sp)
    /* D0CDC 800C1D2C A48E0000 */  sh         $t6, 0x0($a0)
  .L800C1D30_D0CE0:
    /* D0CE0 800C1D30 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800C1D34_D0CE4:
    /* D0CE4 800C1D34 27BD0028 */  addiu      $sp, $sp, 0x28
    /* D0CE8 800C1D38 03E00008 */  jr         $ra
    /* D0CEC 800C1D3C 00000000 */   nop
endlabel func_800C1A4C_D09FC
