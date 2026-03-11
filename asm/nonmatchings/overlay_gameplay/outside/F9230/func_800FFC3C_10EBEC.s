nonmatching func_800FFC3C_10EBEC, 0x7C

glabel func_800FFC3C_10EBEC
    /* 10EBEC 800FFC3C 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10EBF0 800FFC40 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10EBF4 800FFC44 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10EBF8 800FFC48 308F0001 */  andi       $t7, $a0, 0x1
    /* 10EBFC 800FFC4C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10EC00 800FFC50 AFA40018 */  sw         $a0, 0x18($sp)
    /* 10EC04 800FFC54 11E00005 */  beqz       $t7, .L800FFC6C_10EC1C
    /* 10EC08 800FFC58 A4A00000 */   sh        $zero, 0x0($a1)
    /* 10EC0C 800FFC5C 3C188016 */  lui        $t8, %hi(D_801591CA)
    /* 10EC10 800FFC60 871891CA */  lh         $t8, %lo(D_801591CA)($t8)
    /* 10EC14 800FFC64 10000005 */  b          .L800FFC7C_10EC2C
    /* 10EC18 800FFC68 A4B80002 */   sh        $t8, 0x2($a1)
  .L800FFC6C_10EC1C:
    /* 10EC1C 800FFC6C 3C198016 */  lui        $t9, %hi(D_801591CA)
    /* 10EC20 800FFC70 873991CA */  lh         $t9, %lo(D_801591CA)($t9)
    /* 10EC24 800FFC74 00194023 */  negu       $t0, $t9
    /* 10EC28 800FFC78 A4A80002 */  sh         $t0, 0x2($a1)
  .L800FFC7C_10EC2C:
    /* 10EC2C 800FFC7C 8FA90018 */  lw         $t1, 0x18($sp)
    /* 10EC30 800FFC80 3C0C8014 */  lui        $t4, %hi(D_8013FDA8)
    /* 10EC34 800FFC84 A4A00004 */  sh         $zero, 0x4($a1)
    /* 10EC38 800FFC88 00095100 */  sll        $t2, $t1, 4
    /* 10EC3C 800FFC8C 254B0008 */  addiu      $t3, $t2, 0x8
    /* 10EC40 800FFC90 258CFDA8 */  addiu      $t4, $t4, %lo(D_8013FDA8)
    /* 10EC44 800FFC94 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10EC48 800FFC98 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10EC4C 800FFC9C 016C2021 */  addu       $a0, $t3, $t4
    /* 10EC50 800FFCA0 0C000E74 */  jal        func_800039D0_45D0
    /* 10EC54 800FFCA4 00003025 */   or        $a2, $zero, $zero
    /* 10EC58 800FFCA8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10EC5C 800FFCAC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10EC60 800FFCB0 03E00008 */  jr         $ra
    /* 10EC64 800FFCB4 00000000 */   nop
endlabel func_800FFC3C_10EBEC
