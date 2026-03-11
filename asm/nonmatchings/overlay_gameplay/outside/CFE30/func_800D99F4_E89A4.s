nonmatching func_800D99F4_E89A4, 0x98

glabel func_800D99F4_E89A4
    /* E89A4 800D99F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* E89A8 800D99F8 AFA40018 */  sw         $a0, 0x18($sp)
    /* E89AC 800D99FC AFBF0014 */  sw         $ra, 0x14($sp)
    /* E89B0 800D9A00 3C048014 */  lui        $a0, %hi(D_80143A38)
    /* E89B4 800D9A04 AFA5001C */  sw         $a1, 0x1C($sp)
    /* E89B8 800D9A08 AFA60020 */  sw         $a2, 0x20($sp)
    /* E89BC 800D9A0C AFA70024 */  sw         $a3, 0x24($sp)
    /* E89C0 800D9A10 0C00731B */  jal        osSyncPrintf
    /* E89C4 800D9A14 24843A38 */   addiu     $a0, $a0, %lo(D_80143A38)
    /* E89C8 800D9A18 24040015 */  addiu      $a0, $zero, 0x15
    /* E89CC 800D9A1C 0C030675 */  jal        func_800C19D4_D0984
    /* E89D0 800D9A20 24050001 */   addiu     $a1, $zero, 0x1
    /* E89D4 800D9A24 00022400 */  sll        $a0, $v0, 16
    /* E89D8 800D9A28 00047403 */  sra        $t6, $a0, 16
    /* E89DC 800D9A2C 2401FFFD */  addiu      $at, $zero, -0x3
    /* E89E0 800D9A30 10410011 */  beq        $v0, $at, .L800D9A78_E8A28
    /* E89E4 800D9A34 01C02025 */   or        $a0, $t6, $zero
    /* E89E8 800D9A38 000278C0 */  sll        $t7, $v0, 3
    /* E89EC 800D9A3C 01E27823 */  subu       $t7, $t7, $v0
    /* E89F0 800D9A40 3C188015 */  lui        $t8, %hi(D_80154318)
    /* E89F4 800D9A44 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* E89F8 800D9A48 000F7880 */  sll        $t7, $t7, 2
    /* E89FC 800D9A4C 01F81821 */  addu       $v1, $t7, $t8
    /* E8A00 800D9A50 8FB90018 */  lw         $t9, 0x18($sp)
    /* E8A04 800D9A54 87A8001E */  lh         $t0, 0x1E($sp)
    /* E8A08 800D9A58 87A90022 */  lh         $t1, 0x22($sp)
    /* E8A0C 800D9A5C 87AA0026 */  lh         $t2, 0x26($sp)
    /* E8A10 800D9A60 87AB002A */  lh         $t3, 0x2A($sp)
    /* E8A14 800D9A64 AC790008 */  sw         $t9, 0x8($v1)
    /* E8A18 800D9A68 A468000C */  sh         $t0, 0xC($v1)
    /* E8A1C 800D9A6C A469000E */  sh         $t1, 0xE($v1)
    /* E8A20 800D9A70 A46A0010 */  sh         $t2, 0x10($v1)
    /* E8A24 800D9A74 A46B0012 */  sh         $t3, 0x12($v1)
  .L800D9A78_E8A28:
    /* E8A28 800D9A78 8FBF0014 */  lw         $ra, 0x14($sp)
    /* E8A2C 800D9A7C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* E8A30 800D9A80 00801025 */  or         $v0, $a0, $zero
    /* E8A34 800D9A84 03E00008 */  jr         $ra
    /* E8A38 800D9A88 00000000 */   nop
endlabel func_800D99F4_E89A4
