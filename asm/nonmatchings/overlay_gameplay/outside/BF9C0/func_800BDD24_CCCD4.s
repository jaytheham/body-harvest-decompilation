nonmatching func_800BDD24_CCCD4, 0x7C

glabel func_800BDD24_CCCD4
    /* CCCD4 800BDD24 3C0F8004 */  lui        $t7, %hi(currentLevel)
    /* CCCD8 800BDD28 8DEF7F90 */  lw         $t7, %lo(currentLevel)($t7)
    /* CCCDC 800BDD2C 308E00FF */  andi       $t6, $a0, 0xFF
    /* CCCE0 800BDD30 000EC880 */  sll        $t9, $t6, 2
    /* CCCE4 800BDD34 000FC080 */  sll        $t8, $t7, 2
    /* CCCE8 800BDD38 032EC821 */  addu       $t9, $t9, $t6
    /* CCCEC 800BDD3C 030FC021 */  addu       $t8, $t8, $t7
    /* CCCF0 800BDD40 0018C100 */  sll        $t8, $t8, 4
    /* CCCF4 800BDD44 0019C840 */  sll        $t9, $t9, 1
    /* CCCF8 800BDD48 3C098004 */  lui        $t1, %hi(D_8003E0FC)
    /* CCCFC 800BDD4C 2529E0FC */  addiu      $t1, $t1, %lo(D_8003E0FC)
    /* CCD00 800BDD50 03194021 */  addu       $t0, $t8, $t9
    /* CCD04 800BDD54 01091021 */  addu       $v0, $t0, $t1
    /* CCD08 800BDD58 8043FFB6 */  lb         $v1, -0x4A($v0)
    /* CCD0C 800BDD5C AFA40000 */  sw         $a0, 0x0($sp)
    /* CCD10 800BDD60 3C0A8005 */  lui        $t2, %hi(D_80048188)
    /* CCD14 800BDD64 1860000C */  blez       $v1, .L800BDD98_CCD48
    /* CCD18 800BDD68 00000000 */   nop
    /* CCD1C 800BDD6C 8D4A8188 */  lw         $t2, %lo(D_80048188)($t2)
    /* CCD20 800BDD70 00032023 */  negu       $a0, $v1
    /* CCD24 800BDD74 0083082A */  slt        $at, $a0, $v1
    /* CCD28 800BDD78 15400007 */  bnez       $t2, .L800BDD98_CCD48
    /* CCD2C 800BDD7C 00000000 */   nop
    /* CCD30 800BDD80 10200003 */  beqz       $at, .L800BDD90_CCD40
    /* CCD34 800BDD84 00802825 */   or        $a1, $a0, $zero
    /* CCD38 800BDD88 10000001 */  b          .L800BDD90_CCD40
    /* CCD3C 800BDD8C 00602825 */   or        $a1, $v1, $zero
  .L800BDD90_CCD40:
    /* CCD40 800BDD90 00055823 */  negu       $t3, $a1
    /* CCD44 800BDD94 A04BFFB6 */  sb         $t3, -0x4A($v0)
  .L800BDD98_CCD48:
    /* CCD48 800BDD98 03E00008 */  jr         $ra
    /* CCD4C 800BDD9C 00000000 */   nop
endlabel func_800BDD24_CCCD4
