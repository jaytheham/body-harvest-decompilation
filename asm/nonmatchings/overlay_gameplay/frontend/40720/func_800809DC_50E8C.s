nonmatching func_800809DC_50E8C, 0xA8

glabel func_800809DC_50E8C
    /* 50E8C 800809DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 50E90 800809E0 3C02800E */  lui        $v0, %hi(D_800D8550)
    /* 50E94 800809E4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 50E98 800809E8 AFA40018 */  sw         $a0, 0x18($sp)
    /* 50E9C 800809EC 24428550 */  addiu      $v0, $v0, %lo(D_800D8550)
    /* 50EA0 800809F0 00001825 */  or         $v1, $zero, $zero
    /* 50EA4 800809F4 2405000A */  addiu      $a1, $zero, 0xA
  .L800809F8_50EA8:
    /* 50EA8 800809F8 00037080 */  sll        $t6, $v1, 2
    /* 50EAC 800809FC 004E2021 */  addu       $a0, $v0, $t6
    /* 50EB0 80080A00 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 50EB4 80080A04 15E00014 */  bnez       $t7, .L80080A58_50F08
    /* 50EB8 80080A08 0003C080 */   sll       $t8, $v1, 2
    /* 50EBC 80080A0C 0303C023 */  subu       $t8, $t8, $v1
    /* 50EC0 80080A10 3C07800E */  lui        $a3, %hi(D_800DE068)
    /* 50EC4 80080A14 0018C080 */  sll        $t8, $t8, 2
    /* 50EC8 80080A18 24E7E068 */  addiu      $a3, $a3, %lo(D_800DE068)
    /* 50ECC 80080A1C 0303C023 */  subu       $t8, $t8, $v1
    /* 50ED0 80080A20 3C19800E */  lui        $t9, %hi(D_800D8578)
    /* 50ED4 80080A24 8CE60000 */  lw         $a2, 0x0($a3)
    /* 50ED8 80080A28 27398578 */  addiu      $t9, $t9, %lo(D_800D8578)
    /* 50EDC 80080A2C 0018C0C0 */  sll        $t8, $t8, 3
    /* 50EE0 80080A30 03191021 */  addu       $v0, $t8, $t9
    /* 50EE4 80080A34 AC820000 */  sw         $v0, 0x0($a0)
    /* 50EE8 80080A38 AC460050 */  sw         $a2, 0x50($v0)
    /* 50EEC 80080A3C 8FA80018 */  lw         $t0, 0x18($sp)
    /* 50EF0 80080A40 000848C0 */  sll        $t1, $t0, 3
    /* 50EF4 80080A44 01284823 */  subu       $t1, $t1, $t0
    /* 50EF8 80080A48 00094840 */  sll        $t1, $t1, 1
    /* 50EFC 80080A4C 00C95021 */  addu       $t2, $a2, $t1
    /* 50F00 80080A50 10000008 */  b          .L80080A74_50F24
    /* 50F04 80080A54 ACEA0000 */   sw        $t2, 0x0($a3)
  .L80080A58_50F08:
    /* 50F08 80080A58 24630001 */  addiu      $v1, $v1, 0x1
    /* 50F0C 80080A5C 306B00FF */  andi       $t3, $v1, 0xFF
    /* 50F10 80080A60 14ABFFE5 */  bne        $a1, $t3, .L800809F8_50EA8
    /* 50F14 80080A64 01601825 */   or        $v1, $t3, $zero
    /* 50F18 80080A68 3C04800B */  lui        $a0, %hi(D_800AE97C)
    /* 50F1C 80080A6C 0C00731B */  jal        osSyncPrintf
    /* 50F20 80080A70 2484E97C */   addiu     $a0, $a0, %lo(D_800AE97C)
  .L80080A74_50F24:
    /* 50F24 80080A74 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 50F28 80080A78 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 50F2C 80080A7C 03E00008 */  jr         $ra
    /* 50F30 80080A80 00000000 */   nop
endlabel func_800809DC_50E8C
