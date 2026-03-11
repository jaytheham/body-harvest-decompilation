nonmatching func_8001A37C_1AF7C, 0xCC

glabel func_8001A37C_1AF7C
    /* 1AF7C 8001A37C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 1AF80 8001A380 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1AF84 8001A384 AFB00018 */  sw         $s0, 0x18($sp)
    /* 1AF88 8001A388 AFA40028 */  sw         $a0, 0x28($sp)
    /* 1AF8C 8001A38C 90850001 */  lbu        $a1, 0x1($a0)
    /* 1AF90 8001A390 3C048004 */  lui        $a0, %hi(D_800385E0)
    /* 1AF94 8001A394 00008025 */  or         $s0, $zero, $zero
    /* 1AF98 8001A398 248485E0 */  addiu      $a0, $a0, %lo(D_800385E0)
    /* 1AF9C 8001A39C 0C00731B */  jal        osSyncPrintf
    /* 1AFA0 8001A3A0 AFA50020 */   sw        $a1, 0x20($sp)
    /* 1AFA4 8001A3A4 8FA50020 */  lw         $a1, 0x20($sp)
    /* 1AFA8 8001A3A8 3C048004 */  lui        $a0, %hi(D_800385E4)
    /* 1AFAC 8001A3AC 28A10030 */  slti       $at, $a1, 0x30
    /* 1AFB0 8001A3B0 1420000A */  bnez       $at, .L8001A3DC_1AFDC
    /* 1AFB4 8001A3B4 28A1003A */   slti      $at, $a1, 0x3A
    /* 1AFB8 8001A3B8 10200008 */  beqz       $at, .L8001A3DC_1AFDC
    /* 1AFBC 8001A3BC 00000000 */   nop
    /* 1AFC0 8001A3C0 00058080 */  sll        $s0, $a1, 2
    /* 1AFC4 8001A3C4 02058021 */  addu       $s0, $s0, $a1
    /* 1AFC8 8001A3C8 00108040 */  sll        $s0, $s0, 1
    /* 1AFCC 8001A3CC 2610FE20 */  addiu      $s0, $s0, -0x1E0
    /* 1AFD0 8001A3D0 320F00FF */  andi       $t7, $s0, 0xFF
    /* 1AFD4 8001A3D4 10000003 */  b          .L8001A3E4_1AFE4
    /* 1AFD8 8001A3D8 01E08025 */   or        $s0, $t7, $zero
  .L8001A3DC_1AFDC:
    /* 1AFDC 8001A3DC 0C00731B */  jal        osSyncPrintf
    /* 1AFE0 8001A3E0 248485E4 */   addiu     $a0, $a0, %lo(D_800385E4)
  .L8001A3E4_1AFE4:
    /* 1AFE4 8001A3E4 8FB80028 */  lw         $t8, 0x28($sp)
    /* 1AFE8 8001A3E8 3C048004 */  lui        $a0, %hi(D_80038614)
    /* 1AFEC 8001A3EC 24848614 */  addiu      $a0, $a0, %lo(D_80038614)
    /* 1AFF0 8001A3F0 93050002 */  lbu        $a1, 0x2($t8)
    /* 1AFF4 8001A3F4 0C00731B */  jal        osSyncPrintf
    /* 1AFF8 8001A3F8 AFA50020 */   sw        $a1, 0x20($sp)
    /* 1AFFC 8001A3FC 8FA50020 */  lw         $a1, 0x20($sp)
    /* 1B000 8001A400 3C048004 */  lui        $a0, %hi(D_80038618)
    /* 1B004 8001A404 28A10030 */  slti       $at, $a1, 0x30
    /* 1B008 8001A408 14200008 */  bnez       $at, .L8001A42C_1B02C
    /* 1B00C 8001A40C 28A1003A */   slti      $at, $a1, 0x3A
    /* 1B010 8001A410 10200006 */  beqz       $at, .L8001A42C_1B02C
    /* 1B014 8001A414 00000000 */   nop
    /* 1B018 8001A418 02058021 */  addu       $s0, $s0, $a1
    /* 1B01C 8001A41C 2610FFD0 */  addiu      $s0, $s0, -0x30
    /* 1B020 8001A420 321900FF */  andi       $t9, $s0, 0xFF
    /* 1B024 8001A424 10000003 */  b          .L8001A434_1B034
    /* 1B028 8001A428 03208025 */   or        $s0, $t9, $zero
  .L8001A42C_1B02C:
    /* 1B02C 8001A42C 0C00731B */  jal        osSyncPrintf
    /* 1B030 8001A430 24848618 */   addiu     $a0, $a0, %lo(D_80038618)
  .L8001A434_1B034:
    /* 1B034 8001A434 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1B038 8001A438 02001025 */  or         $v0, $s0, $zero
    /* 1B03C 8001A43C 8FB00018 */  lw         $s0, 0x18($sp)
    /* 1B040 8001A440 03E00008 */  jr         $ra
    /* 1B044 8001A444 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_8001A37C_1AF7C
