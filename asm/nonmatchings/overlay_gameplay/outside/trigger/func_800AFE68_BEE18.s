nonmatching func_800AFE68_BEE18, 0x134

glabel func_800AFE68_BEE18
    /* BEE18 800AFE68 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* BEE1C 800AFE6C AFBF001C */  sw         $ra, 0x1C($sp)
    /* BEE20 800AFE70 AFA40038 */  sw         $a0, 0x38($sp)
    /* BEE24 800AFE74 908F0008 */  lbu        $t7, 0x8($a0)
    /* BEE28 800AFE78 3C198005 */  lui        $t9, %hi(alienInstances)
    /* BEE2C 800AFE7C 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* BEE30 800AFE80 000FC080 */  sll        $t8, $t7, 2
    /* BEE34 800AFE84 030FC021 */  addu       $t8, $t8, $t7
    /* BEE38 800AFE88 0018C100 */  sll        $t8, $t8, 4
    /* BEE3C 800AFE8C 03191021 */  addu       $v0, $t8, $t9
    /* BEE40 800AFE90 9049001A */  lbu        $t1, 0x1A($v0)
    /* BEE44 800AFE94 24010019 */  addiu      $at, $zero, 0x19
    /* BEE48 800AFE98 5521003D */  bnel       $t1, $at, .L800AFF90_BEF40
    /* BEE4C 800AFE9C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* BEE50 800AFEA0 844A0000 */  lh         $t2, 0x0($v0)
    /* BEE54 800AFEA4 84430004 */  lh         $v1, 0x4($v0)
    /* BEE58 800AFEA8 9444000E */  lhu        $a0, 0xE($v0)
    /* BEE5C 800AFEAC AFAA0024 */  sw         $t2, 0x24($sp)
    /* BEE60 800AFEB0 0C007654 */  jal        coss
    /* BEE64 800AFEB4 AFA30020 */   sw        $v1, 0x20($sp)
    /* BEE68 800AFEB8 44822000 */  mtc1       $v0, $f4
    /* BEE6C 800AFEBC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* BEE70 800AFEC0 44815800 */  mtc1       $at, $f11
    /* BEE74 800AFEC4 468021A0 */  cvt.s.w    $f6, $f4
    /* BEE78 800AFEC8 44805000 */  mtc1       $zero, $f10
    /* BEE7C 800AFECC 3C014079 */  lui        $at, (0x40790000 >> 16)
    /* BEE80 800AFED0 44819800 */  mtc1       $at, $f19
    /* BEE84 800AFED4 44809000 */  mtc1       $zero, $f18
    /* BEE88 800AFED8 8FAB0024 */  lw         $t3, 0x24($sp)
    /* BEE8C 800AFEDC 46003221 */  cvt.d.s    $f8, $f6
    /* BEE90 800AFEE0 8FAD0038 */  lw         $t5, 0x38($sp)
    /* BEE94 800AFEE4 462A4403 */  div.d      $f16, $f8, $f10
    /* BEE98 800AFEE8 448B3000 */  mtc1       $t3, $f6
    /* BEE9C 800AFEEC 3C048005 */  lui        $a0, %hi(D_800481A6)
    /* BEEA0 800AFEF0 46803221 */  cvt.d.w    $f8, $f6
    /* BEEA4 800AFEF4 46309102 */  mul.d      $f4, $f18, $f16
    /* BEEA8 800AFEF8 46244281 */  sub.d      $f10, $f8, $f4
    /* BEEAC 800AFEFC 4620548D */  trunc.w.d  $f18, $f10
    /* BEEB0 800AFF00 E7B20024 */  swc1       $f18, 0x24($sp)
    /* BEEB4 800AFF04 91AE0008 */  lbu        $t6, 0x8($t5)
    /* BEEB8 800AFF08 000E7880 */  sll        $t7, $t6, 2
    /* BEEBC 800AFF0C 01EE7821 */  addu       $t7, $t7, $t6
    /* BEEC0 800AFF10 000F7900 */  sll        $t7, $t7, 4
    /* BEEC4 800AFF14 008F2021 */  addu       $a0, $a0, $t7
    /* BEEC8 800AFF18 0C007660 */  jal        sins
    /* BEECC 800AFF1C 948481A6 */   lhu       $a0, %lo(D_800481A6)($a0)
    /* BEED0 800AFF20 44828000 */  mtc1       $v0, $f16
    /* BEED4 800AFF24 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* BEED8 800AFF28 44812800 */  mtc1       $at, $f5
    /* BEEDC 800AFF2C 468081A0 */  cvt.s.w    $f6, $f16
    /* BEEE0 800AFF30 44802000 */  mtc1       $zero, $f4
    /* BEEE4 800AFF34 3C014079 */  lui        $at, (0x40790000 >> 16)
    /* BEEE8 800AFF38 44819800 */  mtc1       $at, $f19
    /* BEEEC 800AFF3C 8FA30020 */  lw         $v1, 0x20($sp)
    /* BEEF0 800AFF40 44809000 */  mtc1       $zero, $f18
    /* BEEF4 800AFF44 46003221 */  cvt.d.s    $f8, $f6
    /* BEEF8 800AFF48 44833000 */  mtc1       $v1, $f6
    /* BEEFC 800AFF4C 46244283 */  div.d      $f10, $f8, $f4
    /* BEF00 800AFF50 8FA80038 */  lw         $t0, 0x38($sp)
    /* BEF04 800AFF54 87A40026 */  lh         $a0, 0x26($sp)
    /* BEF08 800AFF58 46803221 */  cvt.d.w    $f8, $f6
    /* BEF0C 800AFF5C 91060009 */  lbu        $a2, 0x9($t0)
    /* BEF10 800AFF60 91070008 */  lbu        $a3, 0x8($t0)
    /* BEF14 800AFF64 AFA00010 */  sw         $zero, 0x10($sp)
    /* BEF18 800AFF68 462A9402 */  mul.d      $f16, $f18, $f10
    /* BEF1C 800AFF6C 46304101 */  sub.d      $f4, $f8, $f16
    /* BEF20 800AFF70 4620248D */  trunc.w.d  $f18, $f4
    /* BEF24 800AFF74 44039000 */  mfc1       $v1, $f18
    /* BEF28 800AFF78 00000000 */  nop
    /* BEF2C 800AFF7C 00032C00 */  sll        $a1, $v1, 16
    /* BEF30 800AFF80 0005CC03 */  sra        $t9, $a1, 16
    /* BEF34 800AFF84 0C02BECE */  jal        func_800AFB38_BEAE8
    /* BEF38 800AFF88 03202825 */   or        $a1, $t9, $zero
    /* BEF3C 800AFF8C 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800AFF90_BEF40:
    /* BEF40 800AFF90 27BD0038 */  addiu      $sp, $sp, 0x38
    /* BEF44 800AFF94 03E00008 */  jr         $ra
    /* BEF48 800AFF98 00000000 */   nop
endlabel func_800AFE68_BEE18
