nonmatching func_8008B534_5B9E4, 0x288

glabel func_8008B534_5B9E4
    /* 5B9E4 8008B534 308E00FF */  andi       $t6, $a0, 0xFF
    /* 5B9E8 8008B538 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 5B9EC 8008B53C 000E7880 */  sll        $t7, $t6, 2
    /* 5B9F0 8008B540 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 5B9F4 8008B544 01EE7823 */  subu       $t7, $t7, $t6
    /* 5B9F8 8008B548 000F7880 */  sll        $t7, $t7, 2
    /* 5B9FC 8008B54C 3C11800E */  lui        $s1, %hi(D_800DE136)
    /* 5BA00 8008B550 022F8821 */  addu       $s1, $s1, $t7
    /* 5BA04 8008B554 8631E136 */  lh         $s1, %lo(D_800DE136)($s1)
    /* 5BA08 8008B558 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 5BA0C 8008B55C 241E001C */  addiu      $fp, $zero, 0x1C
    /* 5BA10 8008B560 023E0019 */  multu      $s1, $fp
    /* 5BA14 8008B564 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 5BA18 8008B568 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 5BA1C 8008B56C AFB70034 */  sw         $s7, 0x34($sp)
    /* 5BA20 8008B570 8C620000 */  lw         $v0, 0x0($v1)
    /* 5BA24 8008B574 3C17800E */  lui        $s7, %hi(D_800DE840)
    /* 5BA28 8008B578 26F7E840 */  addiu      $s7, $s7, %lo(D_800DE840)
    /* 5BA2C 8008B57C AFBF003C */  sw         $ra, 0x3C($sp)
    /* 5BA30 8008B580 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5BA34 8008B584 AFB60030 */  sw         $s6, 0x30($sp)
    /* 5BA38 8008B588 0000C012 */  mflo       $t8
    /* 5BA3C 8008B58C 02F8C821 */  addu       $t9, $s7, $t8
    /* 5BA40 8008B590 87310004 */  lh         $s1, 0x4($t9)
    /* 5BA44 8008B594 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 5BA48 8008B598 AFB40028 */  sw         $s4, 0x28($sp)
    /* 5BA4C 8008B59C AFB30024 */  sw         $s3, 0x24($sp)
    /* 5BA50 8008B5A0 AFB20020 */  sw         $s2, 0x20($sp)
    /* 5BA54 8008B5A4 AFB00018 */  sw         $s0, 0x18($sp)
    /* 5BA58 8008B5A8 AFA40040 */  sw         $a0, 0x40($sp)
    /* 5BA5C 8008B5AC AC6E0000 */  sw         $t6, 0x0($v1)
    /* 5BA60 8008B5B0 3C1FE700 */  lui        $ra, (0xE7000000 >> 16)
    /* 5BA64 8008B5B4 AC5F0000 */  sw         $ra, 0x0($v0)
    /* 5BA68 8008B5B8 AC400004 */  sw         $zero, 0x4($v0)
    /* 5BA6C 8008B5BC 8C620000 */  lw         $v0, 0x0($v1)
    /* 5BA70 8008B5C0 3C19FF33 */  lui        $t9, (0xFF33FFFF >> 16)
    /* 5BA74 8008B5C4 3C18FC62 */  lui        $t8, (0xFC6218C4 >> 16)
    /* 5BA78 8008B5C8 244F0008 */  addiu      $t7, $v0, 0x8
    /* 5BA7C 8008B5CC AC6F0000 */  sw         $t7, 0x0($v1)
    /* 5BA80 8008B5D0 371818C4 */  ori        $t8, $t8, (0xFC6218C4 & 0xFFFF)
    /* 5BA84 8008B5D4 3739FFFF */  ori        $t9, $t9, (0xFF33FFFF & 0xFFFF)
    /* 5BA88 8008B5D8 AC590004 */  sw         $t9, 0x4($v0)
    /* 5BA8C 8008B5DC AC580000 */  sw         $t8, 0x0($v0)
    /* 5BA90 8008B5E0 8C620000 */  lw         $v0, 0x0($v1)
    /* 5BA94 8008B5E4 3C190101 */  lui        $t9, %hi(D_100E080)
    /* 5BA98 8008B5E8 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 5BA9C 8008B5EC 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5BAA0 8008B5F0 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 5BAA4 8008B5F4 AC400004 */  sw         $zero, 0x4($v0)
    /* 5BAA8 8008B5F8 AC5F0000 */  sw         $ra, 0x0($v0)
    /* 5BAAC 8008B5FC 8C620000 */  lw         $v0, 0x0($v1)
    /* 5BAB0 8008B600 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 5BAB4 8008B604 2739E080 */  addiu      $t9, $t9, %lo(D_100E080)
    /* 5BAB8 8008B608 244F0008 */  addiu      $t7, $v0, 0x8
    /* 5BABC 8008B60C AC6F0000 */  sw         $t7, 0x0($v1)
    /* 5BAC0 8008B610 03217024 */  and        $t6, $t9, $at
    /* 5BAC4 8008B614 3C18FD90 */  lui        $t8, (0xFD900000 >> 16)
    /* 5BAC8 8008B618 AC580000 */  sw         $t8, 0x0($v0)
    /* 5BACC 8008B61C AC4E0004 */  sw         $t6, 0x4($v0)
    /* 5BAD0 8008B620 8C620000 */  lw         $v0, 0x0($v1)
    /* 5BAD4 8008B624 3C190708 */  lui        $t9, (0x7080200 >> 16)
    /* 5BAD8 8008B628 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
    /* 5BADC 8008B62C 244F0008 */  addiu      $t7, $v0, 0x8
    /* 5BAE0 8008B630 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 5BAE4 8008B634 3C18F590 */  lui        $t8, (0xF5900000 >> 16)
    /* 5BAE8 8008B638 AC580000 */  sw         $t8, 0x0($v0)
    /* 5BAEC 8008B63C AC590004 */  sw         $t9, 0x4($v0)
    /* 5BAF0 8008B640 8C620000 */  lw         $v0, 0x0($v1)
    /* 5BAF4 8008B644 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
    /* 5BAF8 8008B648 3C19F300 */  lui        $t9, (0xF3000000 >> 16)
    /* 5BAFC 8008B64C 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5BB00 8008B650 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 5BB04 8008B654 AC400004 */  sw         $zero, 0x4($v0)
    /* 5BB08 8008B658 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 5BB0C 8008B65C 8C620000 */  lw         $v0, 0x0($v1)
    /* 5BB10 8008B660 3C0E070F */  lui        $t6, (0x70FF400 >> 16)
    /* 5BB14 8008B664 35CEF400 */  ori        $t6, $t6, (0x70FF400 & 0xFFFF)
    /* 5BB18 8008B668 24580008 */  addiu      $t8, $v0, 0x8
    /* 5BB1C 8008B66C AC780000 */  sw         $t8, 0x0($v1)
    /* 5BB20 8008B670 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 5BB24 8008B674 AC590000 */  sw         $t9, 0x0($v0)
    /* 5BB28 8008B678 8C620000 */  lw         $v0, 0x0($v1)
    /* 5BB2C 8008B67C 3C19F580 */  lui        $t9, (0xF5800400 >> 16)
    /* 5BB30 8008B680 3C0E0008 */  lui        $t6, (0x80200 >> 16)
    /* 5BB34 8008B684 244F0008 */  addiu      $t7, $v0, 0x8
    /* 5BB38 8008B688 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 5BB3C 8008B68C AC400004 */  sw         $zero, 0x4($v0)
    /* 5BB40 8008B690 AC5F0000 */  sw         $ra, 0x0($v0)
    /* 5BB44 8008B694 8C620000 */  lw         $v0, 0x0($v1)
    /* 5BB48 8008B698 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
    /* 5BB4C 8008B69C 37390400 */  ori        $t9, $t9, (0xF5800400 & 0xFFFF)
    /* 5BB50 8008B6A0 24580008 */  addiu      $t8, $v0, 0x8
    /* 5BB54 8008B6A4 AC780000 */  sw         $t8, 0x0($v1)
    /* 5BB58 8008B6A8 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 5BB5C 8008B6AC AC590000 */  sw         $t9, 0x0($v0)
    /* 5BB60 8008B6B0 8C620000 */  lw         $v0, 0x0($v1)
    /* 5BB64 8008B6B4 3C190007 */  lui        $t9, (0x7C07C >> 16)
    /* 5BB68 8008B6B8 3739C07C */  ori        $t9, $t9, (0x7C07C & 0xFFFF)
    /* 5BB6C 8008B6BC 244F0008 */  addiu      $t7, $v0, 0x8
    /* 5BB70 8008B6C0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 5BB74 8008B6C4 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* 5BB78 8008B6C8 24050020 */  addiu      $a1, $zero, 0x20
    /* 5BB7C 8008B6CC 3C01800E */  lui        $at, %hi(D_800DE12D)
    /* 5BB80 8008B6D0 AC580000 */  sw         $t8, 0x0($v0)
    /* 5BB84 8008B6D4 AC590004 */  sw         $t9, 0x4($v0)
    /* 5BB88 8008B6D8 A025E12D */  sb         $a1, %lo(D_800DE12D)($at)
    /* 5BB8C 8008B6DC 3C01800E */  lui        $at, %hi(D_800DE12E)
    /* 5BB90 8008B6E0 A025E12E */  sb         $a1, %lo(D_800DE12E)($at)
    /* 5BB94 8008B6E4 2401FFFB */  addiu      $at, $zero, -0x5
    /* 5BB98 8008B6E8 12210028 */  beq        $s1, $at, .L8008B78C_5BC3C
    /* 5BB9C 8008B6EC 2413FFFA */   addiu     $s3, $zero, -0x6
    /* 5BBA0 8008B6F0 12330026 */  beq        $s1, $s3, .L8008B78C_5BC3C
    /* 5BBA4 8008B6F4 3C16800E */   lui       $s6, %hi(D_800DE12C)
    /* 5BBA8 8008B6F8 3C15800E */  lui        $s5, %hi(D_800DE128)
    /* 5BBAC 8008B6FC 3C14800E */  lui        $s4, %hi(D_800DE124)
    /* 5BBB0 8008B700 3C12800E */  lui        $s2, %hi(D_800DE118)
    /* 5BBB4 8008B704 2652E118 */  addiu      $s2, $s2, %lo(D_800DE118)
    /* 5BBB8 8008B708 2694E124 */  addiu      $s4, $s4, %lo(D_800DE124)
    /* 5BBBC 8008B70C 26B5E128 */  addiu      $s5, $s5, %lo(D_800DE128)
    /* 5BBC0 8008B710 26D6E12C */  addiu      $s6, $s6, %lo(D_800DE12C)
  .L8008B714_5BBC4:
    /* 5BBC4 8008B714 023E0019 */  multu      $s1, $fp
    /* 5BBC8 8008B718 00007012 */  mflo       $t6
    /* 5BBCC 8008B71C 02EE8021 */  addu       $s0, $s7, $t6
    /* 5BBD0 8008B720 860F0008 */  lh         $t7, 0x8($s0)
    /* 5BBD4 8008B724 8618000A */  lh         $t8, 0xA($s0)
    /* 5BBD8 8008B728 8619000C */  lh         $t9, 0xC($s0)
    /* 5BBDC 8008B72C 448F2000 */  mtc1       $t7, $f4
    /* 5BBE0 8008B730 860F0002 */  lh         $t7, 0x2($s0)
    /* 5BBE4 8008B734 44984000 */  mtc1       $t8, $f8
    /* 5BBE8 8008B738 468021A0 */  cvt.s.w    $f6, $f4
    /* 5BBEC 8008B73C 44998000 */  mtc1       $t9, $f16
    /* 5BBF0 8008B740 448F2000 */  mtc1       $t7, $f4
    /* 5BBF4 8008B744 92180011 */  lbu        $t8, 0x11($s0)
    /* 5BBF8 8008B748 260E000E */  addiu      $t6, $s0, 0xE
    /* 5BBFC 8008B74C 468042A0 */  cvt.s.w    $f10, $f8
    /* 5BC00 8008B750 E6460000 */  swc1       $f6, 0x0($s2)
    /* 5BC04 8008B754 AE8E0000 */  sw         $t6, 0x0($s4)
    /* 5BC08 8008B758 A2D80000 */  sb         $t8, 0x0($s6)
    /* 5BC0C 8008B75C 468084A0 */  cvt.s.w    $f18, $f16
    /* 5BC10 8008B760 E64A0004 */  swc1       $f10, 0x4($s2)
    /* 5BC14 8008B764 468021A0 */  cvt.s.w    $f6, $f4
    /* 5BC18 8008B768 E6520008 */  swc1       $f18, 0x8($s2)
    /* 5BC1C 8008B76C 0C023453 */  jal        func_8008D14C_5D5FC
    /* 5BC20 8008B770 E6A60000 */   swc1      $f6, 0x0($s5)
    /* 5BC24 8008B774 86110004 */  lh         $s1, 0x4($s0)
    /* 5BC28 8008B778 2401FFFB */  addiu      $at, $zero, -0x5
    /* 5BC2C 8008B77C 52210004 */  beql       $s1, $at, .L8008B790_5BC40
    /* 5BC30 8008B780 8FBF003C */   lw        $ra, 0x3C($sp)
    /* 5BC34 8008B784 1633FFE3 */  bne        $s1, $s3, .L8008B714_5BBC4
    /* 5BC38 8008B788 00000000 */   nop
  .L8008B78C_5BC3C:
    /* 5BC3C 8008B78C 8FBF003C */  lw         $ra, 0x3C($sp)
  .L8008B790_5BC40:
    /* 5BC40 8008B790 8FB00018 */  lw         $s0, 0x18($sp)
    /* 5BC44 8008B794 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 5BC48 8008B798 8FB20020 */  lw         $s2, 0x20($sp)
    /* 5BC4C 8008B79C 8FB30024 */  lw         $s3, 0x24($sp)
    /* 5BC50 8008B7A0 8FB40028 */  lw         $s4, 0x28($sp)
    /* 5BC54 8008B7A4 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 5BC58 8008B7A8 8FB60030 */  lw         $s6, 0x30($sp)
    /* 5BC5C 8008B7AC 8FB70034 */  lw         $s7, 0x34($sp)
    /* 5BC60 8008B7B0 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 5BC64 8008B7B4 03E00008 */  jr         $ra
    /* 5BC68 8008B7B8 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_8008B534_5B9E4
