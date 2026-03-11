nonmatching func_800FECD4_10DC84, 0x8C

glabel func_800FECD4_10DC84
    /* 10DC84 800FECD4 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 10DC88 800FECD8 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 10DC8C 800FECDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10DC90 800FECE0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10DC94 800FECE4 AFA40018 */  sw         $a0, 0x18($sp)
    /* 10DC98 800FECE8 844E0012 */  lh         $t6, 0x12($v0)
    /* 10DC9C 800FECEC 2403000D */  addiu      $v1, $zero, 0xD
    /* 10DCA0 800FECF0 19C00003 */  blez       $t6, .L800FED00_10DCB0
    /* 10DCA4 800FECF4 00000000 */   nop
    /* 10DCA8 800FECF8 10000001 */  b          .L800FED00_10DCB0
    /* 10DCAC 800FECFC 2403FFF3 */   addiu     $v1, $zero, -0xD
  .L800FED00_10DCB0:
    /* 10DCB0 800FED00 844F0022 */  lh         $t7, 0x22($v0)
    /* 10DCB4 800FED04 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10DCB8 800FED08 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10DCBC 800FED0C 006F0019 */  multu      $v1, $t7
    /* 10DCC0 800FED10 8FA80018 */  lw         $t0, 0x18($sp)
    /* 10DCC4 800FED14 A4A00002 */  sh         $zero, 0x2($a1)
    /* 10DCC8 800FED18 3C198016 */  lui        $t9, %hi(D_801591C2)
    /* 10DCCC 800FED1C 3C0B8014 */  lui        $t3, %hi(D_8013FDA8)
    /* 10DCD0 800FED20 00084900 */  sll        $t1, $t0, 4
    /* 10DCD4 800FED24 252A0008 */  addiu      $t2, $t1, 0x8
    /* 10DCD8 800FED28 256BFDA8 */  addiu      $t3, $t3, %lo(D_8013FDA8)
    /* 10DCDC 800FED2C 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10DCE0 800FED30 014B2021 */  addu       $a0, $t2, $t3
    /* 10DCE4 800FED34 0000C012 */  mflo       $t8
    /* 10DCE8 800FED38 A4B80000 */  sh         $t8, 0x0($a1)
    /* 10DCEC 800FED3C 873991C2 */  lh         $t9, %lo(D_801591C2)($t9)
    /* 10DCF0 800FED40 00003025 */  or         $a2, $zero, $zero
    /* 10DCF4 800FED44 A4B90004 */  sh         $t9, 0x4($a1)
    /* 10DCF8 800FED48 0C000E74 */  jal        func_800039D0_45D0
    /* 10DCFC 800FED4C 8CE7BB38 */   lw        $a3, %lo(D_8005BB38)($a3)
    /* 10DD00 800FED50 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10DD04 800FED54 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10DD08 800FED58 03E00008 */  jr         $ra
    /* 10DD0C 800FED5C 00000000 */   nop
endlabel func_800FECD4_10DC84
