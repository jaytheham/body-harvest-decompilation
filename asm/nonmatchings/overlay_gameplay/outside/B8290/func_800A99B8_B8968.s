nonmatching func_800A99B8_B8968, 0xD8

glabel func_800A99B8_B8968
    /* B8968 800A99B8 308E00FF */  andi       $t6, $a0, 0xFF
    /* B896C 800A99BC 000E7880 */  sll        $t7, $t6, 2
    /* B8970 800A99C0 01EE7821 */  addu       $t7, $t7, $t6
    /* B8974 800A99C4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* B8978 800A99C8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* B897C 800A99CC 000F7900 */  sll        $t7, $t7, 4
    /* B8980 800A99D0 01F81821 */  addu       $v1, $t7, $t8
    /* B8984 800A99D4 9079001A */  lbu        $t9, 0x1A($v1)
    /* B8988 800A99D8 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* B898C 800A99DC 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* B8990 800A99E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* B8994 800A99E4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* B8998 800A99E8 AFA40028 */  sw         $a0, 0x28($sp)
    /* B899C 800A99EC 00194080 */  sll        $t0, $t9, 2
    /* B89A0 800A99F0 01194023 */  subu       $t0, $t0, $t9
    /* B89A4 800A99F4 846A0000 */  lh         $t2, 0x0($v1)
    /* B89A8 800A99F8 846C0004 */  lh         $t4, 0x4($v1)
    /* B89AC 800A99FC 84490000 */  lh         $t1, 0x0($v0)
    /* B89B0 800A9A00 844B0004 */  lh         $t3, 0x4($v0)
    /* B89B4 800A9A04 00084080 */  sll        $t0, $t0, 2
    /* B89B8 800A9A08 01194021 */  addu       $t0, $t0, $t9
    /* B89BC 800A9A0C 000840C0 */  sll        $t0, $t0, 3
    /* B89C0 800A9A10 3C058025 */  lui        $a1, %hi(D_802566C2)
    /* B89C4 800A9A14 00A82821 */  addu       $a1, $a1, $t0
    /* B89C8 800A9A18 012A3023 */  subu       $a2, $t1, $t2
    /* B89CC 800A9A1C 016C3823 */  subu       $a3, $t3, $t4
    /* B89D0 800A9A20 84A566C2 */  lh         $a1, %lo(D_802566C2)($a1)
    /* B89D4 800A9A24 44873000 */  mtc1       $a3, $f6
    /* B89D8 800A9A28 44862000 */  mtc1       $a2, $f4
    /* B89DC 800A9A2C AFA30018 */  sw         $v1, 0x18($sp)
    /* B89E0 800A9A30 A7A5001E */  sh         $a1, 0x1E($sp)
    /* B89E4 800A9A34 468033A0 */  cvt.s.w    $f14, $f6
    /* B89E8 800A9A38 0C000E09 */  jal        func_80003824_4424
    /* B89EC 800A9A3C 46802320 */   cvt.s.w   $f12, $f4
    /* B89F0 800A9A40 8FA30018 */  lw         $v1, 0x18($sp)
    /* B89F4 800A9A44 87A5001E */  lh         $a1, 0x1E($sp)
    /* B89F8 800A9A48 84640006 */  lh         $a0, 0x6($v1)
    /* B89FC 800A9A4C 00057823 */  negu       $t7, $a1
    /* B8A00 800A9A50 00443023 */  subu       $a2, $v0, $a0
    /* B8A04 800A9A54 00066C00 */  sll        $t5, $a2, 16
    /* B8A08 800A9A58 000D3403 */  sra        $a2, $t5, 16
    /* B8A0C 800A9A5C 01E6082A */  slt        $at, $t7, $a2
    /* B8A10 800A9A60 14200003 */  bnez       $at, .L800A9A70_B8A20
    /* B8A14 800A9A64 0085C023 */   subu      $t8, $a0, $a1
    /* B8A18 800A9A68 10000005 */  b          .L800A9A80_B8A30
    /* B8A1C 800A9A6C A4780006 */   sh        $t8, 0x6($v1)
  .L800A9A70_B8A20:
    /* B8A20 800A9A70 00A6082A */  slt        $at, $a1, $a2
    /* B8A24 800A9A74 10200002 */  beqz       $at, .L800A9A80_B8A30
    /* B8A28 800A9A78 0085C821 */   addu      $t9, $a0, $a1
    /* B8A2C 800A9A7C A4790006 */  sh         $t9, 0x6($v1)
  .L800A9A80_B8A30:
    /* B8A30 800A9A80 8FBF0014 */  lw         $ra, 0x14($sp)
    /* B8A34 800A9A84 27BD0028 */  addiu      $sp, $sp, 0x28
    /* B8A38 800A9A88 03E00008 */  jr         $ra
    /* B8A3C 800A9A8C 00000000 */   nop
endlabel func_800A99B8_B8968
