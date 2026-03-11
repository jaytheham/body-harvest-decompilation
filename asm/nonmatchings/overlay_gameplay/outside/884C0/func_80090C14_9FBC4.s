nonmatching func_80090C14_9FBC4, 0xF8

glabel func_80090C14_9FBC4
    /* 9FBC4 80090C14 308E00FF */  andi       $t6, $a0, 0xFF
    /* 9FBC8 80090C18 000E7880 */  sll        $t7, $t6, 2
    /* 9FBCC 80090C1C 01EE7821 */  addu       $t7, $t7, $t6
    /* 9FBD0 80090C20 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 9FBD4 80090C24 000F7900 */  sll        $t7, $t7, 4
    /* 9FBD8 80090C28 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 9FBDC 80090C2C 01F81821 */  addu       $v1, $t7, $t8
    /* 9FBE0 80090C30 84690018 */  lh         $t1, 0x18($v1)
    /* 9FBE4 80090C34 84790014 */  lh         $t9, 0x14($v1)
    /* 9FBE8 80090C38 846A0004 */  lh         $t2, 0x4($v1)
    /* 9FBEC 80090C3C 84680000 */  lh         $t0, 0x0($v1)
    /* 9FBF0 80090C40 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 9FBF4 80090C44 012A3023 */  subu       $a2, $t1, $t2
    /* 9FBF8 80090C48 03282823 */  subu       $a1, $t9, $t0
    /* 9FBFC 80090C4C 44859000 */  mtc1       $a1, $f18
    /* 9FC00 80090C50 00065823 */  negu       $t3, $a2
    /* 9FC04 80090C54 448B8000 */  mtc1       $t3, $f16
    /* 9FC08 80090C58 468093A0 */  cvt.s.w    $f14, $f18
    /* 9FC0C 80090C5C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 9FC10 80090C60 AFA40030 */  sw         $a0, 0x30($sp)
    /* 9FC14 80090C64 AFA3001C */  sw         $v1, 0x1C($sp)
    /* 9FC18 80090C68 0C000E09 */  jal        func_80003824_4424
    /* 9FC1C 80090C6C 46808320 */   cvt.s.w   $f12, $f16
    /* 9FC20 80090C70 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 9FC24 80090C74 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 9FC28 80090C78 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 9FC2C 80090C7C 846E0000 */  lh         $t6, 0x0($v1)
    /* 9FC30 80090C80 84780004 */  lh         $t8, 0x4($v1)
    /* 9FC34 80090C84 848D0000 */  lh         $t5, 0x0($a0)
    /* 9FC38 80090C88 848F0004 */  lh         $t7, 0x4($a0)
    /* 9FC3C 80090C8C A7A2002C */  sh         $v0, 0x2C($sp)
    /* 9FC40 80090C90 01AE2823 */  subu       $a1, $t5, $t6
    /* 9FC44 80090C94 01F83023 */  subu       $a2, $t7, $t8
    /* 9FC48 80090C98 44865000 */  mtc1       $a2, $f10
    /* 9FC4C 80090C9C 44854000 */  mtc1       $a1, $f8
    /* 9FC50 80090CA0 468053A0 */  cvt.s.w    $f14, $f10
    /* 9FC54 80090CA4 0C000E09 */  jal        func_80003824_4424
    /* 9FC58 80090CA8 46804320 */   cvt.s.w   $f12, $f8
    /* 9FC5C 80090CAC 87A7002C */  lh         $a3, 0x2C($sp)
    /* 9FC60 80090CB0 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 9FC64 80090CB4 24090078 */  addiu      $t1, $zero, 0x78
    /* 9FC68 80090CB8 00E22023 */  subu       $a0, $a3, $v0
    /* 9FC6C 80090CBC 00042823 */  negu       $a1, $a0
    /* 9FC70 80090CC0 00A4082A */  slt        $at, $a1, $a0
    /* 9FC74 80090CC4 10200003 */  beqz       $at, .L80090CD4_9FC84
    /* 9FC78 80090CC8 00A03025 */   or        $a2, $a1, $zero
    /* 9FC7C 80090CCC 10000001 */  b          .L80090CD4_9FC84
    /* 9FC80 80090CD0 00803025 */   or        $a2, $a0, $zero
  .L80090CD4_9FC84:
    /* 9FC84 80090CD4 28C14000 */  slti       $at, $a2, 0x4000
    /* 9FC88 80090CD8 10200004 */  beqz       $at, .L80090CEC_9FC9C
    /* 9FC8C 80090CDC 34018000 */   ori       $at, $zero, 0x8000
    /* 9FC90 80090CE0 00E13821 */  addu       $a3, $a3, $at
    /* 9FC94 80090CE4 0007CC00 */  sll        $t9, $a3, 16
    /* 9FC98 80090CE8 00193C03 */  sra        $a3, $t9, 16
  .L80090CEC_9FC9C:
    /* 9FC9C 80090CEC 906A0047 */  lbu        $t2, 0x47($v1)
    /* 9FCA0 80090CF0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 9FCA4 80090CF4 A4690034 */  sh         $t1, 0x34($v1)
    /* 9FCA8 80090CF8 354B0001 */  ori        $t3, $t2, 0x1
    /* 9FCAC 80090CFC A06B0047 */  sb         $t3, 0x47($v1)
    /* 9FCB0 80090D00 A467002A */  sh         $a3, 0x2A($v1)
    /* 9FCB4 80090D04 03E00008 */  jr         $ra
    /* 9FCB8 80090D08 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_80090C14_9FBC4
