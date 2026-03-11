nonmatching func_800CCAD4_DBA84, 0x8C

glabel func_800CCAD4_DBA84
    /* DBA84 800CCAD4 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* DBA88 800CCAD8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* DBA8C 800CCADC AFA40020 */  sw         $a0, 0x20($sp)
    /* DBA90 800CCAE0 AFA50024 */  sw         $a1, 0x24($sp)
    /* DBA94 800CCAE4 0C000E38 */  jal        func_800038E0_44E0
    /* DBA98 800CCAE8 AFA60028 */   sw        $a2, 0x28($sp)
    /* DBA9C 800CCAEC 24010005 */  addiu      $at, $zero, 0x5
    /* DBAA0 800CCAF0 0041001A */  div        $zero, $v0, $at
    /* DBAA4 800CCAF4 00003010 */  mfhi       $a2
    /* DBAA8 800CCAF8 87AF0026 */  lh         $t7, 0x26($sp)
    /* DBAAC 800CCAFC 87B8002A */  lh         $t8, 0x2A($sp)
    /* DBAB0 800CCB00 24C60005 */  addiu      $a2, $a2, 0x5
    /* DBAB4 800CCB04 30CE00FF */  andi       $t6, $a2, 0xFF
    /* DBAB8 800CCB08 01C03025 */  or         $a2, $t6, $zero
    /* DBABC 800CCB0C 2404000F */  addiu      $a0, $zero, 0xF
    /* DBAC0 800CCB10 24050014 */  addiu      $a1, $zero, 0x14
    /* DBAC4 800CCB14 87A70022 */  lh         $a3, 0x22($sp)
    /* DBAC8 800CCB18 AFAF0010 */  sw         $t7, 0x10($sp)
    /* DBACC 800CCB1C 0C0331EC */  jal        func_800CC7B0_DB760
    /* DBAD0 800CCB20 AFB80014 */   sw        $t8, 0x14($sp)
    /* DBAD4 800CCB24 2401FFFD */  addiu      $at, $zero, -0x3
    /* DBAD8 800CCB28 10410009 */  beq        $v0, $at, .L800CCB50_DBB00
    /* DBADC 800CCB2C 0002C8C0 */   sll       $t9, $v0, 3
    /* DBAE0 800CCB30 0322C823 */  subu       $t9, $t9, $v0
    /* DBAE4 800CCB34 3C088015 */  lui        $t0, %hi(D_80154318)
    /* DBAE8 800CCB38 25084318 */  addiu      $t0, $t0, %lo(D_80154318)
    /* DBAEC 800CCB3C 0019C880 */  sll        $t9, $t9, 2
    /* DBAF0 800CCB40 03281821 */  addu       $v1, $t9, $t0
    /* DBAF4 800CCB44 84690012 */  lh         $t1, 0x12($v1)
    /* DBAF8 800CCB48 352A0080 */  ori        $t2, $t1, 0x80
    /* DBAFC 800CCB4C A46A0012 */  sh         $t2, 0x12($v1)
  .L800CCB50_DBB00:
    /* DBB00 800CCB50 8FBF001C */  lw         $ra, 0x1C($sp)
    /* DBB04 800CCB54 27BD0020 */  addiu      $sp, $sp, 0x20
    /* DBB08 800CCB58 03E00008 */  jr         $ra
    /* DBB0C 800CCB5C 00000000 */   nop
endlabel func_800CCAD4_DBA84
