nonmatching func_800DEE5C_EDE0C, 0x74

glabel func_800DEE5C_EDE0C
    /* EDE0C 800DEE5C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* EDE10 800DEE60 AFBF001C */  sw         $ra, 0x1C($sp)
    /* EDE14 800DEE64 AFA40028 */  sw         $a0, 0x28($sp)
    /* EDE18 800DEE68 AFA5002C */  sw         $a1, 0x2C($sp)
    /* EDE1C 800DEE6C AFA60030 */  sw         $a2, 0x30($sp)
    /* EDE20 800DEE70 AFA70034 */  sw         $a3, 0x34($sp)
    /* EDE24 800DEE74 00047400 */  sll        $t6, $a0, 16
    /* EDE28 800DEE78 0005C400 */  sll        $t8, $a1, 16
    /* EDE2C 800DEE7C 00064400 */  sll        $t0, $a2, 16
    /* EDE30 800DEE80 240A000A */  addiu      $t2, $zero, 0xA
    /* EDE34 800DEE84 00083403 */  sra        $a2, $t0, 16
    /* EDE38 800DEE88 00182C03 */  sra        $a1, $t8, 16
    /* EDE3C 800DEE8C 000E2403 */  sra        $a0, $t6, 16
    /* EDE40 800DEE90 AFAA0010 */  sw         $t2, 0x10($sp)
    /* EDE44 800DEE94 0C0376D8 */  jal        func_800DDB60_ECB10
    /* EDE48 800DEE98 24070006 */   addiu     $a3, $zero, 0x6
    /* EDE4C 800DEE9C A3A20027 */  sb         $v0, 0x27($sp)
    /* EDE50 800DEEA0 304400FF */  andi       $a0, $v0, 0xFF
    /* EDE54 800DEEA4 0C037795 */  jal        func_800DDE54_ECE04
    /* EDE58 800DEEA8 83A5003B */   lb        $a1, 0x3B($sp)
    /* EDE5C 800DEEAC 93A40027 */  lbu        $a0, 0x27($sp)
    /* EDE60 800DEEB0 83A50037 */  lb         $a1, 0x37($sp)
    /* EDE64 800DEEB4 0C0377A4 */  jal        func_800DDE90_ECE40
    /* EDE68 800DEEB8 00003025 */   or        $a2, $zero, $zero
    /* EDE6C 800DEEBC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* EDE70 800DEEC0 93A20027 */  lbu        $v0, 0x27($sp)
    /* EDE74 800DEEC4 27BD0028 */  addiu      $sp, $sp, 0x28
    /* EDE78 800DEEC8 03E00008 */  jr         $ra
    /* EDE7C 800DEECC 00000000 */   nop
endlabel func_800DEE5C_EDE0C
