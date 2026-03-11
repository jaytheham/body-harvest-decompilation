nonmatching func_800DDE90_ECE40, 0x50

glabel func_800DDE90_ECE40
    /* ECE40 800DDE90 308E00FF */  andi       $t6, $a0, 0xFF
    /* ECE44 800DDE94 00057E00 */  sll        $t7, $a1, 24
    /* ECE48 800DDE98 0006CE00 */  sll        $t9, $a2, 24
    /* ECE4C 800DDE9C 240100FF */  addiu      $at, $zero, 0xFF
    /* ECE50 800DDEA0 00194603 */  sra        $t0, $t9, 24
    /* ECE54 800DDEA4 000FC603 */  sra        $t8, $t7, 24
    /* ECE58 800DDEA8 AFA40000 */  sw         $a0, 0x0($sp)
    /* ECE5C 800DDEAC AFA50004 */  sw         $a1, 0x4($sp)
    /* ECE60 800DDEB0 11C10009 */  beq        $t6, $at, .L800DDED8_ECE88
    /* ECE64 800DDEB4 AFA60008 */   sw        $a2, 0x8($sp)
    /* ECE68 800DDEB8 000E4880 */  sll        $t1, $t6, 2
    /* ECE6C 800DDEBC 012E4821 */  addu       $t1, $t1, $t6
    /* ECE70 800DDEC0 3C0A8015 */  lui        $t2, %hi(D_80156EF0)
    /* ECE74 800DDEC4 254A6EF0 */  addiu      $t2, $t2, %lo(D_80156EF0)
    /* ECE78 800DDEC8 00094880 */  sll        $t1, $t1, 2
    /* ECE7C 800DDECC 012A1021 */  addu       $v0, $t1, $t2
    /* ECE80 800DDED0 A0580010 */  sb         $t8, 0x10($v0)
    /* ECE84 800DDED4 A0480011 */  sb         $t0, 0x11($v0)
  .L800DDED8_ECE88:
    /* ECE88 800DDED8 03E00008 */  jr         $ra
    /* ECE8C 800DDEDC 00000000 */   nop
endlabel func_800DDE90_ECE40
