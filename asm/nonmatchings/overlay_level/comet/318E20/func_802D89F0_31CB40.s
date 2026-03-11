nonmatching func_802D89F0_31CB40, 0x128

glabel func_802D89F0_31CB40
    /* 31CB40 802D89F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 31CB44 802D89F4 AFA40028 */  sw         $a0, 0x28($sp)
    /* 31CB48 802D89F8 93AE002B */  lbu        $t6, 0x2B($sp)
    /* 31CB4C 802D89FC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 31CB50 802D8A00 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 31CB54 802D8A04 000E7880 */  sll        $t7, $t6, 2
    /* 31CB58 802D8A08 01EE7821 */  addu       $t7, $t7, $t6
    /* 31CB5C 802D8A0C 000F7900 */  sll        $t7, $t7, 4
    /* 31CB60 802D8A10 01F81021 */  addu       $v0, $t7, $t8
    /* 31CB64 802D8A14 9059001A */  lbu        $t9, 0x1A($v0)
    /* 31CB68 802D8A18 3C098025 */  lui        $t1, %hi(D_8025668C)
    /* 31CB6C 802D8A1C 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
    /* 31CB70 802D8A20 00194080 */  sll        $t0, $t9, 2
    /* 31CB74 802D8A24 01194023 */  subu       $t0, $t0, $t9
    /* 31CB78 802D8A28 00084080 */  sll        $t0, $t0, 2
    /* 31CB7C 802D8A2C 01194021 */  addu       $t0, $t0, $t9
    /* 31CB80 802D8A30 000840C0 */  sll        $t0, $t0, 3
    /* 31CB84 802D8A34 01284821 */  addu       $t1, $t1, $t0
    /* 31CB88 802D8A38 8529668C */  lh         $t1, %lo(D_8025668C)($t1)
    /* 31CB8C 802D8A3C 44814800 */  mtc1       $at, $f9
    /* 31CB90 802D8A40 44804000 */  mtc1       $zero, $f8
    /* 31CB94 802D8A44 44892000 */  mtc1       $t1, $f4
    /* 31CB98 802D8A48 24070001 */  addiu      $a3, $zero, 0x1
    /* 31CB9C 802D8A4C AFBF001C */  sw         $ra, 0x1C($sp)
    /* 31CBA0 802D8A50 468021A1 */  cvt.d.w    $f6, $f4
    /* 31CBA4 802D8A54 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* 31CBA8 802D8A58 84440000 */  lh         $a0, 0x0($v0)
    /* 31CBAC 802D8A5C 84450002 */  lh         $a1, 0x2($v0)
    /* 31CBB0 802D8A60 84460004 */  lh         $a2, 0x4($v0)
    /* 31CBB4 802D8A64 46283282 */  mul.d      $f10, $f6, $f8
    /* 31CBB8 802D8A68 240C0006 */  addiu      $t4, $zero, 0x6
    /* 31CBBC 802D8A6C 444AF800 */  cfc1       $t2, $31
    /* 31CBC0 802D8A70 44C7F800 */  ctc1       $a3, $31
    /* 31CBC4 802D8A74 00000000 */  nop
    /* 31CBC8 802D8A78 46205424 */  cvt.w.d    $f16, $f10
    /* 31CBCC 802D8A7C 4447F800 */  cfc1       $a3, $31
    /* 31CBD0 802D8A80 00000000 */  nop
    /* 31CBD4 802D8A84 30E70078 */  andi       $a3, $a3, 0x78
    /* 31CBD8 802D8A88 50E00014 */  beql       $a3, $zero, .L802D8ADC_31CC2C
    /* 31CBDC 802D8A8C 44078000 */   mfc1      $a3, $f16
    /* 31CBE0 802D8A90 44818800 */  mtc1       $at, $f17
    /* 31CBE4 802D8A94 44808000 */  mtc1       $zero, $f16
    /* 31CBE8 802D8A98 24070001 */  addiu      $a3, $zero, 0x1
    /* 31CBEC 802D8A9C 46305401 */  sub.d      $f16, $f10, $f16
    /* 31CBF0 802D8AA0 44C7F800 */  ctc1       $a3, $31
    /* 31CBF4 802D8AA4 00000000 */  nop
    /* 31CBF8 802D8AA8 46208424 */  cvt.w.d    $f16, $f16
    /* 31CBFC 802D8AAC 4447F800 */  cfc1       $a3, $31
    /* 31CC00 802D8AB0 00000000 */  nop
    /* 31CC04 802D8AB4 30E70078 */  andi       $a3, $a3, 0x78
    /* 31CC08 802D8AB8 14E00005 */  bnez       $a3, .L802D8AD0_31CC20
    /* 31CC0C 802D8ABC 00000000 */   nop
    /* 31CC10 802D8AC0 44078000 */  mfc1       $a3, $f16
    /* 31CC14 802D8AC4 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 31CC18 802D8AC8 10000007 */  b          .L802D8AE8_31CC38
    /* 31CC1C 802D8ACC 00E13825 */   or        $a3, $a3, $at
  .L802D8AD0_31CC20:
    /* 31CC20 802D8AD0 10000005 */  b          .L802D8AE8_31CC38
    /* 31CC24 802D8AD4 2407FFFF */   addiu     $a3, $zero, -0x1
    /* 31CC28 802D8AD8 44078000 */  mfc1       $a3, $f16
  .L802D8ADC_31CC2C:
    /* 31CC2C 802D8ADC 00000000 */  nop
    /* 31CC30 802D8AE0 04E0FFFB */  bltz       $a3, .L802D8AD0_31CC20
    /* 31CC34 802D8AE4 00000000 */   nop
  .L802D8AE8_31CC38:
    /* 31CC38 802D8AE8 44CAF800 */  ctc1       $t2, $31
    /* 31CC3C 802D8AEC 30EBFFFF */  andi       $t3, $a3, 0xFFFF
    /* 31CC40 802D8AF0 01603825 */  or         $a3, $t3, $zero
    /* 31CC44 802D8AF4 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 31CC48 802D8AF8 AFA00014 */  sw         $zero, 0x14($sp)
    /* 31CC4C 802D8AFC 0C037C0E */  jal        func_800DF038_EDFE8
    /* 31CC50 802D8B00 AFA20024 */   sw        $v0, 0x24($sp)
    /* 31CC54 802D8B04 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 31CC58 802D8B08 8FA20024 */  lw         $v0, 0x24($sp)
    /* 31CC5C 802D8B0C 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 31CC60 802D8B10 03E00008 */  jr         $ra
    /* 31CC64 802D8B14 A440002C */   sh        $zero, 0x2C($v0)
endlabel func_802D89F0_31CB40
