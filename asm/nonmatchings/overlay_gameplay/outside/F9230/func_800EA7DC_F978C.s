nonmatching func_800EA7DC_F978C, 0x11C

glabel func_800EA7DC_F978C
    /* F978C 800EA7DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* F9790 800EA7E0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* F9794 800EA7E4 AFA40018 */  sw         $a0, 0x18($sp)
    /* F9798 800EA7E8 AFA70024 */  sw         $a3, 0x24($sp)
    /* F979C 800EA7EC C4CA0000 */  lwc1       $f10, 0x0($a2)
    /* F97A0 800EA7F0 C4A80000 */  lwc1       $f8, 0x0($a1)
    /* F97A4 800EA7F4 C4C60008 */  lwc1       $f6, 0x8($a2)
    /* F97A8 800EA7F8 C4A40008 */  lwc1       $f4, 0x8($a1)
    /* F97AC 800EA7FC 460A4381 */  sub.s      $f14, $f8, $f10
    /* F97B0 800EA800 0C000E09 */  jal        func_80003824_4424
    /* F97B4 800EA804 46062301 */   sub.s     $f12, $f4, $f6
    /* F97B8 800EA808 8FAE0024 */  lw         $t6, 0x24($sp)
    /* F97BC 800EA80C 3058FFFF */  andi       $t8, $v0, 0xFFFF
    /* F97C0 800EA810 87A5001A */  lh         $a1, 0x1A($sp)
    /* F97C4 800EA814 31CFFFFF */  andi       $t7, $t6, 0xFFFF
    /* F97C8 800EA818 01F81823 */  subu       $v1, $t7, $t8
    /* F97CC 800EA81C 04600003 */  bltz       $v1, .L800EA82C_F97DC
    /* F97D0 800EA820 00602025 */   or        $a0, $v1, $zero
    /* F97D4 800EA824 10000002 */  b          .L800EA830_F97E0
    /* F97D8 800EA828 00601025 */   or        $v0, $v1, $zero
  .L800EA82C_F97DC:
    /* F97DC 800EA82C 00031023 */  negu       $v0, $v1
  .L800EA830_F97E0:
    /* F97E0 800EA830 34018001 */  ori        $at, $zero, 0x8001
    /* F97E4 800EA834 0041082A */  slt        $at, $v0, $at
    /* F97E8 800EA838 14200007 */  bnez       $at, .L800EA858_F9808
    /* F97EC 800EA83C C7B00028 */   lwc1      $f16, 0x28($sp)
    /* F97F0 800EA840 18600004 */  blez       $v1, .L800EA854_F9804
    /* F97F4 800EA844 3C010001 */   lui       $at, (0x10000 >> 16)
    /* F97F8 800EA848 3C01FFFF */  lui        $at, (0xFFFF0000 >> 16)
    /* F97FC 800EA84C 10000002 */  b          .L800EA858_F9808
    /* F9800 800EA850 00612021 */   addu      $a0, $v1, $at
  .L800EA854_F9804:
    /* F9804 800EA854 00612021 */  addu       $a0, $v1, $at
  .L800EA858_F9808:
    /* F9808 800EA858 04800003 */  bltz       $a0, .L800EA868_F9818
    /* F980C 800EA85C 3C014000 */   lui       $at, (0x40000000 >> 16)
    /* F9810 800EA860 10000002 */  b          .L800EA86C_F981C
    /* F9814 800EA864 00801025 */   or        $v0, $a0, $zero
  .L800EA868_F9818:
    /* F9818 800EA868 00041023 */  negu       $v0, $a0
  .L800EA86C_F981C:
    /* F981C 800EA86C 44819000 */  mtc1       $at, $f18
    /* F9820 800EA870 3C014700 */  lui        $at, (0x47000000 >> 16)
    /* F9824 800EA874 44813000 */  mtc1       $at, $f6
    /* F9828 800EA878 46128103 */  div.s      $f4, $f16, $f18
    /* F982C 800EA87C 3C018014 */  lui        $at, %hi(D_801443E0)
    /* F9830 800EA880 D43043E0 */  ldc1       $f16, %lo(D_801443E0)($at)
    /* F9834 800EA884 8FBF0014 */  lw         $ra, 0x14($sp)
    /* F9838 800EA888 46062202 */  mul.s      $f8, $f4, $f6
    /* F983C 800EA88C 460042A1 */  cvt.d.s    $f10, $f8
    /* F9840 800EA890 46305483 */  div.d      $f18, $f10, $f16
    /* F9844 800EA894 4620910D */  trunc.w.d  $f4, $f18
    /* F9848 800EA898 44082000 */  mfc1       $t0, $f4
    /* F984C 800EA89C 00000000 */  nop
    /* F9850 800EA8A0 00084C00 */  sll        $t1, $t0, 16
    /* F9854 800EA8A4 00095403 */  sra        $t2, $t1, 16
    /* F9858 800EA8A8 004A082A */  slt        $at, $v0, $t2
    /* F985C 800EA8AC 10200003 */  beqz       $at, .L800EA8BC_F986C
    /* F9860 800EA8B0 00000000 */   nop
    /* F9864 800EA8B4 1000000E */  b          .L800EA8F0_F98A0
    /* F9868 800EA8B8 00001025 */   or        $v0, $zero, $zero
  .L800EA8BC_F986C:
    /* F986C 800EA8BC 04800005 */  bltz       $a0, .L800EA8D4_F9884
    /* F9870 800EA8C0 28A1FFFC */   slti      $at, $a1, -0x4
    /* F9874 800EA8C4 5420000A */  bnel       $at, $zero, .L800EA8F0_F98A0
    /* F9878 800EA8C8 00001025 */   or        $v0, $zero, $zero
    /* F987C 800EA8CC 10000008 */  b          .L800EA8F0_F98A0
    /* F9880 800EA8D0 24020002 */   addiu     $v0, $zero, 0x2
  .L800EA8D4_F9884:
    /* F9884 800EA8D4 04810005 */  bgez       $a0, .L800EA8EC_F989C
    /* F9888 800EA8D8 28A10005 */   slti      $at, $a1, 0x5
    /* F988C 800EA8DC 50200004 */  beql       $at, $zero, .L800EA8F0_F98A0
    /* F9890 800EA8E0 00001025 */   or        $v0, $zero, $zero
    /* F9894 800EA8E4 10000002 */  b          .L800EA8F0_F98A0
    /* F9898 800EA8E8 24020001 */   addiu     $v0, $zero, 0x1
  .L800EA8EC_F989C:
    /* F989C 800EA8EC 00001025 */  or         $v0, $zero, $zero
  .L800EA8F0_F98A0:
    /* F98A0 800EA8F0 03E00008 */  jr         $ra
    /* F98A4 800EA8F4 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_800EA7DC_F978C
