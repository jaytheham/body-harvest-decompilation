nonmatching func_800CBD1C_DACCC, 0xC4

glabel func_800CBD1C_DACCC
    /* DACCC 800CBD1C 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* DACD0 800CBD20 AFA40040 */  sw         $a0, 0x40($sp)
    /* DACD4 800CBD24 87AE0042 */  lh         $t6, 0x42($sp)
    /* DACD8 800CBD28 AFBF003C */  sw         $ra, 0x3C($sp)
    /* DACDC 800CBD2C 29C10190 */  slti       $at, $t6, 0x190
    /* DACE0 800CBD30 10200027 */  beqz       $at, .L800CBDD0_DAD80
    /* DACE4 800CBD34 2401FFFD */   addiu     $at, $zero, -0x3
    /* DACE8 800CBD38 11C10025 */  beq        $t6, $at, .L800CBDD0_DAD80
    /* DACEC 800CBD3C 000E78C0 */   sll       $t7, $t6, 3
    /* DACF0 800CBD40 01EE7823 */  subu       $t7, $t7, $t6
    /* DACF4 800CBD44 3C188015 */  lui        $t8, %hi(D_80154318)
    /* DACF8 800CBD48 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* DACFC 800CBD4C 000F7880 */  sll        $t7, $t7, 2
    /* DAD00 800CBD50 01F81021 */  addu       $v0, $t7, $t8
    /* DAD04 800CBD54 84590008 */  lh         $t9, 0x8($v0)
    /* DAD08 800CBD58 8445000A */  lh         $a1, 0xA($v0)
    /* DAD0C 800CBD5C 844D000C */  lh         $t5, 0xC($v0)
    /* DAD10 800CBD60 00194480 */  sll        $t0, $t9, 18
    /* DAD14 800CBD64 00055080 */  sll        $t2, $a1, 2
    /* DAD18 800CBD68 2545000F */  addiu      $a1, $t2, 0xF
    /* DAD1C 800CBD6C 00082403 */  sra        $a0, $t0, 16
    /* DAD20 800CBD70 240800FE */  addiu      $t0, $zero, 0xFE
    /* DAD24 800CBD74 00055C00 */  sll        $t3, $a1, 16
    /* DAD28 800CBD78 240A000F */  addiu      $t2, $zero, 0xF
    /* DAD2C 800CBD7C 24190041 */  addiu      $t9, $zero, 0x41
    /* DAD30 800CBD80 2418007F */  addiu      $t8, $zero, 0x7F
    /* DAD34 800CBD84 24090019 */  addiu      $t1, $zero, 0x19
    /* DAD38 800CBD88 000D7480 */  sll        $t6, $t5, 18
    /* DAD3C 800CBD8C 000E3403 */  sra        $a2, $t6, 16
    /* DAD40 800CBD90 AFA90020 */  sw         $t1, 0x20($sp)
    /* DAD44 800CBD94 AFB80010 */  sw         $t8, 0x10($sp)
    /* DAD48 800CBD98 AFB90018 */  sw         $t9, 0x18($sp)
    /* DAD4C 800CBD9C AFAA0024 */  sw         $t2, 0x24($sp)
    /* DAD50 800CBDA0 000B2C03 */  sra        $a1, $t3, 16
    /* DAD54 800CBDA4 AFA8001C */  sw         $t0, 0x1C($sp)
    /* DAD58 800CBDA8 00003825 */  or         $a3, $zero, $zero
    /* DAD5C 800CBDAC AFA00014 */  sw         $zero, 0x14($sp)
    /* DAD60 800CBDB0 AFA00028 */  sw         $zero, 0x28($sp)
    /* DAD64 800CBDB4 AFA0002C */  sw         $zero, 0x2C($sp)
    /* DAD68 800CBDB8 0C031507 */  jal        func_800C541C_D43CC
    /* DAD6C 800CBDBC AFA00030 */   sw        $zero, 0x30($sp)
    /* DAD70 800CBDC0 87A40042 */  lh         $a0, 0x42($sp)
    /* DAD74 800CBDC4 24050004 */  addiu      $a1, $zero, 0x4
    /* DAD78 800CBDC8 0C030693 */  jal        func_800C1A4C_D09FC
    /* DAD7C 800CBDCC 24060001 */   addiu     $a2, $zero, 0x1
  .L800CBDD0_DAD80:
    /* DAD80 800CBDD0 8FBF003C */  lw         $ra, 0x3C($sp)
    /* DAD84 800CBDD4 27BD0040 */  addiu      $sp, $sp, 0x40
    /* DAD88 800CBDD8 03E00008 */  jr         $ra
    /* DAD8C 800CBDDC 00000000 */   nop
endlabel func_800CBD1C_DACCC
