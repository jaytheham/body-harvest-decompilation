nonmatching func_800F026C_FF21C, 0x78

glabel func_800F026C_FF21C
    /* FF21C 800F026C 00047400 */  sll        $t6, $a0, 16
    /* FF220 800F0270 00064400 */  sll        $t0, $a2, 16
    /* FF224 800F0274 00084C03 */  sra        $t1, $t0, 16
    /* FF228 800F0278 000E7C03 */  sra        $t7, $t6, 16
    /* FF22C 800F027C 01E91023 */  subu       $v0, $t7, $t1
    /* FF230 800F0280 00420019 */  multu      $v0, $v0
    /* FF234 800F0284 0005C400 */  sll        $t8, $a1, 16
    /* FF238 800F0288 00075400 */  sll        $t2, $a3, 16
    /* FF23C 800F028C 000A5C03 */  sra        $t3, $t2, 16
    /* FF240 800F0290 0018CC03 */  sra        $t9, $t8, 16
    /* FF244 800F0294 032B1823 */  subu       $v1, $t9, $t3
    /* FF248 800F0298 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* FF24C 800F029C AFBF0014 */  sw         $ra, 0x14($sp)
    /* FF250 800F02A0 AFA40018 */  sw         $a0, 0x18($sp)
    /* FF254 800F02A4 AFA5001C */  sw         $a1, 0x1C($sp)
    /* FF258 800F02A8 00006012 */  mflo       $t4
    /* FF25C 800F02AC AFA60020 */  sw         $a2, 0x20($sp)
    /* FF260 800F02B0 AFA70024 */  sw         $a3, 0x24($sp)
    /* FF264 800F02B4 00630019 */  multu      $v1, $v1
    /* FF268 800F02B8 00006812 */  mflo       $t5
    /* FF26C 800F02BC 018D7021 */  addu       $t6, $t4, $t5
    /* FF270 800F02C0 448E2000 */  mtc1       $t6, $f4
    /* FF274 800F02C4 0C007650 */  jal        sqrtf
    /* FF278 800F02C8 46802320 */   cvt.s.w   $f12, $f4
    /* FF27C 800F02CC 4600018D */  trunc.w.s  $f6, $f0
    /* FF280 800F02D0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* FF284 800F02D4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* FF288 800F02D8 44023000 */  mfc1       $v0, $f6
    /* FF28C 800F02DC 03E00008 */  jr         $ra
    /* FF290 800F02E0 00000000 */   nop
endlabel func_800F026C_FF21C
