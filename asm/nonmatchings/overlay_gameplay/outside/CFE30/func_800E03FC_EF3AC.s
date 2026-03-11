nonmatching func_800E03FC_EF3AC, 0xA0

glabel func_800E03FC_EF3AC
    /* EF3AC 800E03FC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* EF3B0 800E0400 AFBF002C */  sw         $ra, 0x2C($sp)
    /* EF3B4 800E0404 3C048014 */  lui        $a0, %hi(D_80143ED0)
    /* EF3B8 800E0408 AFB40028 */  sw         $s4, 0x28($sp)
    /* EF3BC 800E040C AFB30024 */  sw         $s3, 0x24($sp)
    /* EF3C0 800E0410 AFB20020 */  sw         $s2, 0x20($sp)
    /* EF3C4 800E0414 AFB1001C */  sw         $s1, 0x1C($sp)
    /* EF3C8 800E0418 AFB00018 */  sw         $s0, 0x18($sp)
    /* EF3CC 800E041C 0C00731B */  jal        osSyncPrintf
    /* EF3D0 800E0420 24843ED0 */   addiu     $a0, $a0, %lo(D_80143ED0)
    /* EF3D4 800E0424 3C148014 */  lui        $s4, %hi(D_80143EF0)
    /* EF3D8 800E0428 3C128015 */  lui        $s2, %hi(D_80154088)
    /* EF3DC 800E042C 26524088 */  addiu      $s2, $s2, %lo(D_80154088)
    /* EF3E0 800E0430 26943EF0 */  addiu      $s4, $s4, %lo(D_80143EF0)
    /* EF3E4 800E0434 00008025 */  or         $s0, $zero, $zero
    /* EF3E8 800E0438 2413000C */  addiu      $s3, $zero, 0xC
    /* EF3EC 800E043C 241100FA */  addiu      $s1, $zero, 0xFA
  .L800E0440_EF3F0:
    /* EF3F0 800E0440 02130019 */  multu      $s0, $s3
    /* EF3F4 800E0444 02802025 */  or         $a0, $s4, $zero
    /* EF3F8 800E0448 02002825 */  or         $a1, $s0, $zero
    /* EF3FC 800E044C 00007012 */  mflo       $t6
    /* EF400 800E0450 024E1021 */  addu       $v0, $s2, $t6
    /* EF404 800E0454 90460000 */  lbu        $a2, 0x0($v0)
    /* EF408 800E0458 52260004 */  beql       $s1, $a2, .L800E046C_EF41C
    /* EF40C 800E045C 26100001 */   addiu     $s0, $s0, 0x1
    /* EF410 800E0460 0C00731B */  jal        osSyncPrintf
    /* EF414 800E0464 90470004 */   lbu       $a3, 0x4($v0)
    /* EF418 800E0468 26100001 */  addiu      $s0, $s0, 0x1
  .L800E046C_EF41C:
    /* EF41C 800E046C 320F00FF */  andi       $t7, $s0, 0xFF
    /* EF420 800E0470 29E1001E */  slti       $at, $t7, 0x1E
    /* EF424 800E0474 1420FFF2 */  bnez       $at, .L800E0440_EF3F0
    /* EF428 800E0478 01E08025 */   or        $s0, $t7, $zero
    /* EF42C 800E047C 8FBF002C */  lw         $ra, 0x2C($sp)
    /* EF430 800E0480 8FB00018 */  lw         $s0, 0x18($sp)
    /* EF434 800E0484 8FB1001C */  lw         $s1, 0x1C($sp)
    /* EF438 800E0488 8FB20020 */  lw         $s2, 0x20($sp)
    /* EF43C 800E048C 8FB30024 */  lw         $s3, 0x24($sp)
    /* EF440 800E0490 8FB40028 */  lw         $s4, 0x28($sp)
    /* EF444 800E0494 03E00008 */  jr         $ra
    /* EF448 800E0498 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_800E03FC_EF3AC
