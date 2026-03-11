nonmatching func_8007F580_4FA30, 0x2B0

glabel func_8007F580_4FA30
    /* 4FA30 8007F580 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 4FA34 8007F584 3C03800D */  lui        $v1, %hi(D_800D7A8D)
    /* 4FA38 8007F588 90637A8D */  lbu        $v1, %lo(D_800D7A8D)($v1)
    /* 4FA3C 8007F58C AFBE0038 */  sw         $fp, 0x38($sp)
    /* 4FA40 8007F590 AFB40028 */  sw         $s4, 0x28($sp)
    /* 4FA44 8007F594 AFB30024 */  sw         $s3, 0x24($sp)
    /* 4FA48 8007F598 0080F025 */  or         $fp, $a0, $zero
    /* 4FA4C 8007F59C AFBF003C */  sw         $ra, 0x3C($sp)
    /* 4FA50 8007F5A0 AFB70034 */  sw         $s7, 0x34($sp)
    /* 4FA54 8007F5A4 AFB60030 */  sw         $s6, 0x30($sp)
    /* 4FA58 8007F5A8 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 4FA5C 8007F5AC AFB20020 */  sw         $s2, 0x20($sp)
    /* 4FA60 8007F5B0 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 4FA64 8007F5B4 AFB00018 */  sw         $s0, 0x18($sp)
    /* 4FA68 8007F5B8 0000A025 */  or         $s4, $zero, $zero
    /* 4FA6C 8007F5BC 18600031 */  blez       $v1, .L8007F684_4FB34
    /* 4FA70 8007F5C0 00009825 */   or        $s3, $zero, $zero
    /* 4FA74 8007F5C4 3C11800D */  lui        $s1, %hi(D_800D7A34)
    /* 4FA78 8007F5C8 3C17800D */  lui        $s7, %hi(D_800D7A34)
    /* 4FA7C 8007F5CC 3C15800D */  lui        $s5, %hi(D_800D7A90)
    /* 4FA80 8007F5D0 26B57A90 */  addiu      $s5, $s5, %lo(D_800D7A90)
    /* 4FA84 8007F5D4 26F77A34 */  addiu      $s7, $s7, %lo(D_800D7A34)
    /* 4FA88 8007F5D8 8E317A34 */  lw         $s1, %lo(D_800D7A34)($s1)
    /* 4FA8C 8007F5DC 2416001C */  addiu      $s6, $zero, 0x1C
  .L8007F5E0_4FA90:
    /* 4FA90 8007F5E0 02760019 */  multu      $s3, $s6
    /* 4FA94 8007F5E4 00009012 */  mflo       $s2
    /* 4FA98 8007F5E8 02327021 */  addu       $t6, $s1, $s2
    /* 4FA9C 8007F5EC 8DCF0018 */  lw         $t7, 0x18($t6)
    /* 4FAA0 8007F5F0 51E0001F */  beql       $t7, $zero, .L8007F670_4FB20
    /* 4FAA4 8007F5F4 26730001 */   addiu     $s3, $s3, 0x1
    /* 4FAA8 8007F5F8 53C00005 */  beql       $fp, $zero, .L8007F610_4FAC0
    /* 4FAAC 8007F5FC 0014C100 */   sll       $t8, $s4, 4
    /* 4FAB0 8007F600 0C01FE0C */  jal        func_8007F830_4FCE0
    /* 4FAB4 8007F604 02512021 */   addu      $a0, $s2, $s1
    /* 4FAB8 8007F608 8EF10000 */  lw         $s1, 0x0($s7)
    /* 4FABC 8007F60C 0014C100 */  sll        $t8, $s4, 4
  .L8007F610_4FAC0:
    /* 4FAC0 8007F610 02B88021 */  addu       $s0, $s5, $t8
    /* 4FAC4 8007F614 26050008 */  addiu      $a1, $s0, 0x8
    /* 4FAC8 8007F618 0C01FCFE */  jal        func_8007F3F8_4F8A8
    /* 4FACC 8007F61C 02512021 */   addu      $a0, $s2, $s1
    /* 4FAD0 8007F620 8EF10000 */  lw         $s1, 0x0($s7)
    /* 4FAD4 8007F624 26940001 */  addiu      $s4, $s4, 0x1
    /* 4FAD8 8007F628 328D00FF */  andi       $t5, $s4, 0xFF
    /* 4FADC 8007F62C 02321021 */  addu       $v0, $s1, $s2
    /* 4FAE0 8007F630 90590014 */  lbu        $t9, 0x14($v0)
    /* 4FAE4 8007F634 3C03800D */  lui        $v1, %hi(D_800D7A8D)
    /* 4FAE8 8007F638 01A0A025 */  or         $s4, $t5, $zero
    /* 4FAEC 8007F63C A2190008 */  sb         $t9, 0x8($s0)
    /* 4FAF0 8007F640 90480014 */  lbu        $t0, 0x14($v0)
    /* 4FAF4 8007F644 A208000C */  sb         $t0, 0xC($s0)
    /* 4FAF8 8007F648 90490015 */  lbu        $t1, 0x15($v0)
    /* 4FAFC 8007F64C A2090009 */  sb         $t1, 0x9($s0)
    /* 4FB00 8007F650 904A0015 */  lbu        $t2, 0x15($v0)
    /* 4FB04 8007F654 A20A000D */  sb         $t2, 0xD($s0)
    /* 4FB08 8007F658 904B0016 */  lbu        $t3, 0x16($v0)
    /* 4FB0C 8007F65C A20B000A */  sb         $t3, 0xA($s0)
    /* 4FB10 8007F660 904C0016 */  lbu        $t4, 0x16($v0)
    /* 4FB14 8007F664 A20C000E */  sb         $t4, 0xE($s0)
    /* 4FB18 8007F668 90637A8D */  lbu        $v1, %lo(D_800D7A8D)($v1)
    /* 4FB1C 8007F66C 26730001 */  addiu      $s3, $s3, 0x1
  .L8007F670_4FB20:
    /* 4FB20 8007F670 326E00FF */  andi       $t6, $s3, 0xFF
    /* 4FB24 8007F674 01C3082A */  slt        $at, $t6, $v1
    /* 4FB28 8007F678 1420FFD9 */  bnez       $at, .L8007F5E0_4FA90
    /* 4FB2C 8007F67C 01C09825 */   or        $s3, $t6, $zero
    /* 4FB30 8007F680 00009825 */  or         $s3, $zero, $zero
  .L8007F684_4FB34:
    /* 4FB34 8007F684 3C15800D */  lui        $s5, %hi(D_800D7A90)
    /* 4FB38 8007F688 13C0000D */  beqz       $fp, .L8007F6C0_4FB70
    /* 4FB3C 8007F68C 26B57A90 */   addiu     $s5, $s5, %lo(D_800D7A90)
    /* 4FB40 8007F690 3C10800E */  lui        $s0, %hi(D_800D8530)
    /* 4FB44 8007F694 26108530 */  addiu      $s0, $s0, %lo(D_800D8530)
    /* 4FB48 8007F698 0C01FE0C */  jal        func_8007F830_4FCE0
    /* 4FB4C 8007F69C 02002025 */   or        $a0, $s0, $zero
    /* 4FB50 8007F6A0 3C05800D */  lui        $a1, %hi(D_800D7A86)
    /* 4FB54 8007F6A4 920F0014 */  lbu        $t7, 0x14($s0)
    /* 4FB58 8007F6A8 92180015 */  lbu        $t8, 0x15($s0)
    /* 4FB5C 8007F6AC 92190016 */  lbu        $t9, 0x16($s0)
    /* 4FB60 8007F6B0 24A57A86 */  addiu      $a1, $a1, %lo(D_800D7A86)
    /* 4FB64 8007F6B4 A0AF0000 */  sb         $t7, 0x0($a1)
    /* 4FB68 8007F6B8 A0B80001 */  sb         $t8, 0x1($a1)
    /* 4FB6C 8007F6BC A0B90002 */  sb         $t9, 0x2($a1)
  .L8007F6C0_4FB70:
    /* 4FB70 8007F6C0 3C05800D */  lui        $a1, %hi(D_800D7A86)
    /* 4FB74 8007F6C4 24A57A86 */  addiu      $a1, $a1, %lo(D_800D7A86)
    /* 4FB78 8007F6C8 90A20000 */  lbu        $v0, 0x0($a1)
    /* 4FB7C 8007F6CC 90A30001 */  lbu        $v1, 0x1($a1)
    /* 4FB80 8007F6D0 90A40002 */  lbu        $a0, 0x2($a1)
    /* 4FB84 8007F6D4 02803025 */  or         $a2, $s4, $zero
    /* 4FB88 8007F6D8 A2A20000 */  sb         $v0, 0x0($s5)
    /* 4FB8C 8007F6DC A2A20004 */  sb         $v0, 0x4($s5)
    /* 4FB90 8007F6E0 A2A30001 */  sb         $v1, 0x1($s5)
    /* 4FB94 8007F6E4 A2A30005 */  sb         $v1, 0x5($s5)
    /* 4FB98 8007F6E8 A2A40002 */  sb         $a0, 0x2($s5)
    /* 4FB9C 8007F6EC 1680000F */  bnez       $s4, .L8007F72C_4FBDC
    /* 4FBA0 8007F6F0 A2A40006 */   sb        $a0, 0x6($s5)
    /* 4FBA4 8007F6F4 00144100 */  sll        $t0, $s4, 4
    /* 4FBA8 8007F6F8 02A88021 */  addu       $s0, $s5, $t0
    /* 4FBAC 8007F6FC 26940001 */  addiu      $s4, $s4, 0x1
    /* 4FBB0 8007F700 328600FF */  andi       $a2, $s4, 0xFF
    /* 4FBB4 8007F704 A2000008 */  sb         $zero, 0x8($s0)
    /* 4FBB8 8007F708 A200000C */  sb         $zero, 0xC($s0)
    /* 4FBBC 8007F70C A2000009 */  sb         $zero, 0x9($s0)
    /* 4FBC0 8007F710 A200000D */  sb         $zero, 0xD($s0)
    /* 4FBC4 8007F714 A200000A */  sb         $zero, 0xA($s0)
    /* 4FBC8 8007F718 A200000E */  sb         $zero, 0xE($s0)
    /* 4FBCC 8007F71C A2000010 */  sb         $zero, 0x10($s0)
    /* 4FBD0 8007F720 A2000011 */  sb         $zero, 0x11($s0)
    /* 4FBD4 8007F724 A2000012 */  sb         $zero, 0x12($s0)
    /* 4FBD8 8007F728 00C0A025 */  or         $s4, $a2, $zero
  .L8007F72C_4FBDC:
    /* 4FBDC 8007F72C 18C00017 */  blez       $a2, .L8007F78C_4FC3C
    /* 4FBE0 8007F730 00002025 */   or        $a0, $zero, $zero
    /* 4FBE4 8007F734 3C058006 */  lui        $a1, %hi(D_8005BB2C)
    /* 4FBE8 8007F738 24A5BB2C */  addiu      $a1, $a1, %lo(D_8005BB2C)
    /* 4FBEC 8007F73C 3C070300 */  lui        $a3, (0x3000010 >> 16)
  .L8007F740_4FBF0:
    /* 4FBF0 8007F740 00045840 */  sll        $t3, $a0, 1
    /* 4FBF4 8007F744 8CA30000 */  lw         $v1, 0x0($a1)
    /* 4FBF8 8007F748 256C0086 */  addiu      $t4, $t3, 0x86
    /* 4FBFC 8007F74C 318D00FF */  andi       $t5, $t4, 0xFF
    /* 4FC00 8007F750 0013C900 */  sll        $t9, $s3, 4
    /* 4FC04 8007F754 26730001 */  addiu      $s3, $s3, 0x1
    /* 4FC08 8007F758 000D7400 */  sll        $t6, $t5, 16
    /* 4FC0C 8007F75C 326400FF */  andi       $a0, $s3, 0xFF
    /* 4FC10 8007F760 01C77825 */  or         $t7, $t6, $a3
    /* 4FC14 8007F764 02B94021 */  addu       $t0, $s5, $t9
    /* 4FC18 8007F768 246A0008 */  addiu      $t2, $v1, 0x8
    /* 4FC1C 8007F76C 0086082A */  slt        $at, $a0, $a2
    /* 4FC20 8007F770 ACAA0000 */  sw         $t2, 0x0($a1)
    /* 4FC24 8007F774 25090008 */  addiu      $t1, $t0, 0x8
    /* 4FC28 8007F778 35F80010 */  ori        $t8, $t7, (0x3000010 & 0xFFFF)
    /* 4FC2C 8007F77C 00809825 */  or         $s3, $a0, $zero
    /* 4FC30 8007F780 AC780000 */  sw         $t8, 0x0($v1)
    /* 4FC34 8007F784 1420FFEE */  bnez       $at, .L8007F740_4FBF0
    /* 4FC38 8007F788 AC690004 */   sw        $t1, 0x4($v1)
  .L8007F78C_4FC3C:
    /* 4FC3C 8007F78C 3C058006 */  lui        $a1, %hi(D_8005BB2C)
    /* 4FC40 8007F790 24A5BB2C */  addiu      $a1, $a1, %lo(D_8005BB2C)
    /* 4FC44 8007F794 8CA30000 */  lw         $v1, 0x0($a1)
    /* 4FC48 8007F798 00066040 */  sll        $t4, $a2, 1
    /* 4FC4C 8007F79C 258D0086 */  addiu      $t5, $t4, 0x86
    /* 4FC50 8007F7A0 31AE00FF */  andi       $t6, $t5, 0xFF
    /* 4FC54 8007F7A4 3C070300 */  lui        $a3, (0x3000010 >> 16)
    /* 4FC58 8007F7A8 000E7C00 */  sll        $t7, $t6, 16
    /* 4FC5C 8007F7AC 246B0008 */  addiu      $t3, $v1, 0x8
    /* 4FC60 8007F7B0 ACAB0000 */  sw         $t3, 0x0($a1)
    /* 4FC64 8007F7B4 01E7C025 */  or         $t8, $t7, $a3
    /* 4FC68 8007F7B8 37190010 */  ori        $t9, $t8, (0x3000010 & 0xFFFF)
    /* 4FC6C 8007F7BC AC790000 */  sw         $t9, 0x0($v1)
    /* 4FC70 8007F7C0 AC750004 */  sw         $s5, 0x4($v1)
    /* 4FC74 8007F7C4 8CA30000 */  lw         $v1, 0x0($a1)
    /* 4FC78 8007F7C8 3C09BC00 */  lui        $t1, (0xBC000002 >> 16)
    /* 4FC7C 8007F7CC 35290002 */  ori        $t1, $t1, (0xBC000002 & 0xFFFF)
    /* 4FC80 8007F7D0 24680008 */  addiu      $t0, $v1, 0x8
    /* 4FC84 8007F7D4 ACA80000 */  sw         $t0, 0x0($a1)
    /* 4FC88 8007F7D8 3C0B8009 */  lui        $t3, %hi(D_80094910)
    /* 4FC8C 8007F7DC 00145080 */  sll        $t2, $s4, 2
    /* 4FC90 8007F7E0 016A5821 */  addu       $t3, $t3, $t2
    /* 4FC94 8007F7E4 AC690000 */  sw         $t1, 0x0($v1)
    /* 4FC98 8007F7E8 8D6B4910 */  lw         $t3, %lo(D_80094910)($t3)
    /* 4FC9C 8007F7EC 3C018000 */  lui        $at, (0x80000020 >> 16)
    /* 4FCA0 8007F7F0 34210020 */  ori        $at, $at, (0x80000020 & 0xFFFF)
    /* 4FCA4 8007F7F4 000B6140 */  sll        $t4, $t3, 5
    /* 4FCA8 8007F7F8 01816821 */  addu       $t5, $t4, $at
    /* 4FCAC 8007F7FC AC6D0004 */  sw         $t5, 0x4($v1)
    /* 4FCB0 8007F800 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 4FCB4 8007F804 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 4FCB8 8007F808 8FB70034 */  lw         $s7, 0x34($sp)
    /* 4FCBC 8007F80C 8FB60030 */  lw         $s6, 0x30($sp)
    /* 4FCC0 8007F810 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 4FCC4 8007F814 8FB40028 */  lw         $s4, 0x28($sp)
    /* 4FCC8 8007F818 8FB30024 */  lw         $s3, 0x24($sp)
    /* 4FCCC 8007F81C 8FB20020 */  lw         $s2, 0x20($sp)
    /* 4FCD0 8007F820 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 4FCD4 8007F824 8FB00018 */  lw         $s0, 0x18($sp)
    /* 4FCD8 8007F828 03E00008 */  jr         $ra
    /* 4FCDC 8007F82C 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_8007F580_4FA30
