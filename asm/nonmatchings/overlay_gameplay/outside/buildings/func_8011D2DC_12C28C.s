nonmatching func_8011D2DC_12C28C, 0x15C

glabel func_8011D2DC_12C28C
    /* 12C28C 8011D2DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 12C290 8011D2E0 AFB00018 */  sw         $s0, 0x18($sp)
    /* 12C294 8011D2E4 00058400 */  sll        $s0, $a1, 16
    /* 12C298 8011D2E8 00107C03 */  sra        $t7, $s0, 16
    /* 12C29C 8011D2EC AFA40020 */  sw         $a0, 0x20($sp)
    /* 12C2A0 8011D2F0 AFA50024 */  sw         $a1, 0x24($sp)
    /* 12C2A4 8011D2F4 00807025 */  or         $t6, $a0, $zero
    /* 12C2A8 8011D2F8 000E2203 */  sra        $a0, $t6, 8
    /* 12C2AC 8011D2FC 000F2A03 */  sra        $a1, $t7, 8
    /* 12C2B0 8011D300 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 12C2B4 8011D304 00054E00 */  sll        $t1, $a1, 24
    /* 12C2B8 8011D308 0004C600 */  sll        $t8, $a0, 24
    /* 12C2BC 8011D30C 01E08025 */  or         $s0, $t7, $zero
    /* 12C2C0 8011D310 00182603 */  sra        $a0, $t8, 24
    /* 12C2C4 8011D314 00092E03 */  sra        $a1, $t1, 24
    /* 12C2C8 8011D318 0C047498 */  jal        func_8011D260_12C210
    /* 12C2CC 8011D31C A7AE0022 */   sh        $t6, 0x22($sp)
    /* 12C2D0 8011D320 2401FFFF */  addiu      $at, $zero, -0x1
    /* 12C2D4 8011D324 87A60022 */  lh         $a2, 0x22($sp)
    /* 12C2D8 8011D328 14410003 */  bne        $v0, $at, .L8011D338_12C2E8
    /* 12C2DC 8011D32C 00404025 */   or        $t0, $v0, $zero
    /* 12C2E0 8011D330 1000003C */  b          .L8011D424_12C3D4
    /* 12C2E4 8011D334 2402FFFF */   addiu     $v0, $zero, -0x1
  .L8011D338_12C2E8:
    /* 12C2E8 8011D338 00025880 */  sll        $t3, $v0, 2
    /* 12C2EC 8011D33C 01625823 */  subu       $t3, $t3, $v0
    /* 12C2F0 8011D340 3C0C8005 */  lui        $t4, %hi(buildingInstances)
    /* 12C2F4 8011D344 258C0AD8 */  addiu      $t4, $t4, %lo(buildingInstances)
    /* 12C2F8 8011D348 000B58C0 */  sll        $t3, $t3, 3
    /* 12C2FC 8011D34C 016C2821 */  addu       $a1, $t3, $t4
    /* 12C300 8011D350 90A30006 */  lbu        $v1, 0x6($a1)
    /* 12C304 8011D354 2401001F */  addiu      $at, $zero, 0x1F
    /* 12C308 8011D358 14610003 */  bne        $v1, $at, .L8011D368_12C318
    /* 12C30C 8011D35C 00036940 */   sll       $t5, $v1, 5
    /* 12C310 8011D360 10000030 */  b          .L8011D424_12C3D4
    /* 12C314 8011D364 01001025 */   or        $v0, $t0, $zero
  .L8011D368_12C318:
    /* 12C318 8011D368 8CB80008 */  lw         $t8, 0x8($a1)
    /* 12C31C 8011D36C 3C0E8026 */  lui        $t6, %hi(buildingSpecs)
    /* 12C320 8011D370 25CE9090 */  addiu      $t6, $t6, %lo(buildingSpecs)
    /* 12C324 8011D374 33190001 */  andi       $t9, $t8, 0x1
    /* 12C328 8011D378 13200015 */  beqz       $t9, .L8011D3D0_12C380
    /* 12C32C 8011D37C 01AE3821 */   addu      $a3, $t5, $t6
    /* 12C330 8011D380 84A40000 */  lh         $a0, 0x0($a1)
    /* 12C334 8011D384 84E30012 */  lh         $v1, 0x12($a3)
    /* 12C338 8011D388 00834823 */  subu       $t1, $a0, $v1
    /* 12C33C 8011D38C 00C9082A */  slt        $at, $a2, $t1
    /* 12C340 8011D390 14200023 */  bnez       $at, .L8011D420_12C3D0
    /* 12C344 8011D394 00835021 */   addu      $t2, $a0, $v1
    /* 12C348 8011D398 0146082A */  slt        $at, $t2, $a2
    /* 12C34C 8011D39C 54200021 */  bnel       $at, $zero, .L8011D424_12C3D4
    /* 12C350 8011D3A0 2402FFFF */   addiu     $v0, $zero, -0x1
    /* 12C354 8011D3A4 84A40004 */  lh         $a0, 0x4($a1)
    /* 12C358 8011D3A8 84E30010 */  lh         $v1, 0x10($a3)
    /* 12C35C 8011D3AC 00835823 */  subu       $t3, $a0, $v1
    /* 12C360 8011D3B0 020B082A */  slt        $at, $s0, $t3
    /* 12C364 8011D3B4 1420001A */  bnez       $at, .L8011D420_12C3D0
    /* 12C368 8011D3B8 00836021 */   addu      $t4, $a0, $v1
    /* 12C36C 8011D3BC 0190082A */  slt        $at, $t4, $s0
    /* 12C370 8011D3C0 54200018 */  bnel       $at, $zero, .L8011D424_12C3D4
    /* 12C374 8011D3C4 2402FFFF */   addiu     $v0, $zero, -0x1
    /* 12C378 8011D3C8 10000016 */  b          .L8011D424_12C3D4
    /* 12C37C 8011D3CC 01001025 */   or        $v0, $t0, $zero
  .L8011D3D0_12C380:
    /* 12C380 8011D3D0 84A40000 */  lh         $a0, 0x0($a1)
    /* 12C384 8011D3D4 84E30010 */  lh         $v1, 0x10($a3)
    /* 12C388 8011D3D8 00836823 */  subu       $t5, $a0, $v1
    /* 12C38C 8011D3DC 00CD082A */  slt        $at, $a2, $t5
    /* 12C390 8011D3E0 1420000F */  bnez       $at, .L8011D420_12C3D0
    /* 12C394 8011D3E4 00837021 */   addu      $t6, $a0, $v1
    /* 12C398 8011D3E8 01C6082A */  slt        $at, $t6, $a2
    /* 12C39C 8011D3EC 5420000D */  bnel       $at, $zero, .L8011D424_12C3D4
    /* 12C3A0 8011D3F0 2402FFFF */   addiu     $v0, $zero, -0x1
    /* 12C3A4 8011D3F4 84A40004 */  lh         $a0, 0x4($a1)
    /* 12C3A8 8011D3F8 84E30012 */  lh         $v1, 0x12($a3)
    /* 12C3AC 8011D3FC 00837823 */  subu       $t7, $a0, $v1
    /* 12C3B0 8011D400 020F082A */  slt        $at, $s0, $t7
    /* 12C3B4 8011D404 14200006 */  bnez       $at, .L8011D420_12C3D0
    /* 12C3B8 8011D408 0083C021 */   addu      $t8, $a0, $v1
    /* 12C3BC 8011D40C 0310082A */  slt        $at, $t8, $s0
    /* 12C3C0 8011D410 54200004 */  bnel       $at, $zero, .L8011D424_12C3D4
    /* 12C3C4 8011D414 2402FFFF */   addiu     $v0, $zero, -0x1
    /* 12C3C8 8011D418 10000002 */  b          .L8011D424_12C3D4
    /* 12C3CC 8011D41C 01001025 */   or        $v0, $t0, $zero
  .L8011D420_12C3D0:
    /* 12C3D0 8011D420 2402FFFF */  addiu      $v0, $zero, -0x1
  .L8011D424_12C3D4:
    /* 12C3D4 8011D424 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 12C3D8 8011D428 8FB00018 */  lw         $s0, 0x18($sp)
    /* 12C3DC 8011D42C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 12C3E0 8011D430 03E00008 */  jr         $ra
    /* 12C3E4 8011D434 00000000 */   nop
endlabel func_8011D2DC_12C28C
