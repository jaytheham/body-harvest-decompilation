nonmatching func_8000DC30_E830, 0x6C

glabel func_8000DC30_E830
    /* E830 8000DC30 00801025 */  or         $v0, $a0, $zero
    /* E834 8000DC34 00A01825 */  or         $v1, $a1, $zero
    /* E838 8000DC38 24060006 */  addiu      $a2, $zero, 0x6
  .L8000DC3C_E83C:
    /* E83C 8000DC3C 24050009 */  addiu      $a1, $zero, 0x9
  .L8000DC40_E840:
    /* E840 8000DC40 2407001F */  addiu      $a3, $zero, 0x1F
  .L8000DC44_E844:
    /* E844 8000DC44 2408001F */  addiu      $t0, $zero, 0x1F
  .L8000DC48_E848:
    /* E848 8000DC48 844E0000 */  lh         $t6, 0x0($v0)
    /* E84C 8000DC4C 01002025 */  or         $a0, $t0, $zero
    /* E850 8000DC50 24630002 */  addiu      $v1, $v1, 0x2
    /* E854 8000DC54 24420002 */  addiu      $v0, $v0, 0x2
    /* E858 8000DC58 A46EFFFE */  sh         $t6, -0x2($v1)
    /* E85C 8000DC5C 1500FFFA */  bnez       $t0, .L8000DC48_E848
    /* E860 8000DC60 2508FFFF */   addiu     $t0, $t0, -0x1
    /* E864 8000DC64 00E02025 */  or         $a0, $a3, $zero
    /* E868 8000DC68 24420240 */  addiu      $v0, $v0, 0x240
    /* E86C 8000DC6C 14E0FFF5 */  bnez       $a3, .L8000DC44_E844
    /* E870 8000DC70 24E7FFFF */   addiu     $a3, $a3, -0x1
    /* E874 8000DC74 00A02025 */  or         $a0, $a1, $zero
    /* E878 8000DC78 2442B040 */  addiu      $v0, $v0, -0x4FC0
    /* E87C 8000DC7C 14A0FFF0 */  bnez       $a1, .L8000DC40_E840
    /* E880 8000DC80 24A5FFFF */   addiu     $a1, $a1, -0x1
    /* E884 8000DC84 00C02025 */  or         $a0, $a2, $zero
    /* E888 8000DC88 24424D80 */  addiu      $v0, $v0, 0x4D80
    /* E88C 8000DC8C 14C0FFEB */  bnez       $a2, .L8000DC3C_E83C
    /* E890 8000DC90 24C6FFFF */   addiu     $a2, $a2, -0x1
    /* E894 8000DC94 03E00008 */  jr         $ra
    /* E898 8000DC98 00000000 */   nop
endlabel func_8000DC30_E830
