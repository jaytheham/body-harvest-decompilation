nonmatching func_802E0958_2C2D88, 0x1B0

glabel func_802E0958_2C2D88
    /* 2C2D88 802E0958 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 2C2D8C 802E095C AFA40038 */  sw         $a0, 0x38($sp)
    /* 2C2D90 802E0960 93AE003B */  lbu        $t6, 0x3B($sp)
    /* 2C2D94 802E0964 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2C2D98 802E0968 AFB00020 */  sw         $s0, 0x20($sp)
    /* 2C2D9C 802E096C 000E7880 */  sll        $t7, $t6, 2
    /* 2C2DA0 802E0970 01EE7821 */  addu       $t7, $t7, $t6
    /* 2C2DA4 802E0974 000F7900 */  sll        $t7, $t7, 4
    /* 2C2DA8 802E0978 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2C2DAC 802E097C 01F88021 */  addu       $s0, $t7, $t8
    /* 2C2DB0 802E0980 8E020020 */  lw         $v0, 0x20($s0)
    /* 2C2DB4 802E0984 9219001A */  lbu        $t9, 0x1A($s0)
    /* 2C2DB8 802E0988 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 2C2DBC 802E098C 000242C0 */  sll        $t0, $v0, 11
    /* 2C2DC0 802E0990 0500001A */  bltz       $t0, .L802E09FC_2C2E2C
    /* 2C2DC4 802E0994 A3B90037 */   sb        $t9, 0x37($sp)
    /* 2C2DC8 802E0998 332C00FF */  andi       $t4, $t9, 0xFF
    /* 2C2DCC 802E099C 000C6880 */  sll        $t5, $t4, 2
    /* 2C2DD0 802E09A0 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 2C2DD4 802E09A4 01AC6823 */  subu       $t5, $t5, $t4
    /* 2C2DD8 802E09A8 00414825 */  or         $t1, $v0, $at
    /* 2C2DDC 802E09AC 000D6880 */  sll        $t5, $t5, 2
    /* 2C2DE0 802E09B0 01AC6821 */  addu       $t5, $t5, $t4
    /* 2C2DE4 802E09B4 AE090020 */  sw         $t1, 0x20($s0)
    /* 2C2DE8 802E09B8 352B4000 */  ori        $t3, $t1, 0x4000
    /* 2C2DEC 802E09BC 000D68C0 */  sll        $t5, $t5, 3
    /* 2C2DF0 802E09C0 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 2C2DF4 802E09C4 AE0B0020 */  sw         $t3, 0x20($s0)
    /* 2C2DF8 802E09C8 00ED3821 */  addu       $a3, $a3, $t5
    /* 2C2DFC 802E09CC 240E0002 */  addiu      $t6, $zero, 0x2
    /* 2C2E00 802E09D0 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2C2E04 802E09D4 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 2C2E08 802E09D8 86040000 */  lh         $a0, 0x0($s0)
    /* 2C2E0C 802E09DC 86050002 */  lh         $a1, 0x2($s0)
    /* 2C2E10 802E09E0 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2C2E14 802E09E4 86060004 */   lh        $a2, 0x4($s0)
    /* 2C2E18 802E09E8 240F0064 */  addiu      $t7, $zero, 0x64
    /* 2C2E1C 802E09EC A60F002C */  sh         $t7, 0x2C($s0)
    /* 2C2E20 802E09F0 93A4003B */  lbu        $a0, 0x3B($sp)
    /* 2C2E24 802E09F4 0C04DD1A */  jal        func_80137468_146418
    /* 2C2E28 802E09F8 24050011 */   addiu     $a1, $zero, 0x11
  .L802E09FC_2C2E2C:
    /* 2C2E2C 802E09FC 8602002C */  lh         $v0, 0x2C($s0)
    /* 2C2E30 802E0A00 28410010 */  slti       $at, $v0, 0x10
    /* 2C2E34 802E0A04 1020001C */  beqz       $at, .L802E0A78_2C2EA8
    /* 2C2E38 802E0A08 30580001 */   andi      $t8, $v0, 0x1
    /* 2C2E3C 802E0A0C 5300001B */  beql       $t8, $zero, .L802E0A7C_2C2EAC
    /* 2C2E40 802E0A10 8E0E0020 */   lw        $t6, 0x20($s0)
    /* 2C2E44 802E0A14 0C01E55B */  jal        func_8007956C_8851C
    /* 2C2E48 802E0A18 24040026 */   addiu     $a0, $zero, 0x26
    /* 2C2E4C 802E0A1C 305900FF */  andi       $t9, $v0, 0xFF
    /* 2C2E50 802E0A20 240100FF */  addiu      $at, $zero, 0xFF
    /* 2C2E54 802E0A24 13210014 */  beq        $t9, $at, .L802E0A78_2C2EA8
    /* 2C2E58 802E0A28 304400FF */   andi      $a0, $v0, 0xFF
    /* 2C2E5C 802E0A2C 00044080 */  sll        $t0, $a0, 2
    /* 2C2E60 802E0A30 860A0000 */  lh         $t2, 0x0($s0)
    /* 2C2E64 802E0A34 01044021 */  addu       $t0, $t0, $a0
    /* 2C2E68 802E0A38 3C098005 */  lui        $t1, %hi(alienInstances)
    /* 2C2E6C 802E0A3C 25298198 */  addiu      $t1, $t1, %lo(alienInstances)
    /* 2C2E70 802E0A40 00084100 */  sll        $t0, $t0, 4
    /* 2C2E74 802E0A44 01091821 */  addu       $v1, $t0, $t1
    /* 2C2E78 802E0A48 A46A0000 */  sh         $t2, 0x0($v1)
    /* 2C2E7C 802E0A4C 860B0002 */  lh         $t3, 0x2($s0)
    /* 2C2E80 802E0A50 AFA3002C */  sw         $v1, 0x2C($sp)
    /* 2C2E84 802E0A54 A46B0002 */  sh         $t3, 0x2($v1)
    /* 2C2E88 802E0A58 860C0004 */  lh         $t4, 0x4($s0)
    /* 2C2E8C 802E0A5C 0C000E38 */  jal        func_800038E0_44E0
    /* 2C2E90 802E0A60 A46C0004 */   sh        $t4, 0x4($v1)
    /* 2C2E94 802E0A64 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 2C2E98 802E0A68 3C0D8025 */  lui        $t5, %hi(D_80256AD0)
    /* 2C2E9C 802E0A6C A462000E */  sh         $v0, 0xE($v1)
    /* 2C2EA0 802E0A70 85AD6AD0 */  lh         $t5, %lo(D_80256AD0)($t5)
    /* 2C2EA4 802E0A74 A46D0012 */  sh         $t5, 0x12($v1)
  .L802E0A78_2C2EA8:
    /* 2C2EA8 802E0A78 8E0E0020 */  lw         $t6, 0x20($s0)
  .L802E0A7C_2C2EAC:
    /* 2C2EAC 802E0A7C 93B80037 */  lbu        $t8, 0x37($sp)
    /* 2C2EB0 802E0A80 3C088025 */  lui        $t0, %hi(D_8025668C)
    /* 2C2EB4 802E0A84 31CF4000 */  andi       $t7, $t6, 0x4000
    /* 2C2EB8 802E0A88 11E0001A */  beqz       $t7, .L802E0AF4_2C2F24
    /* 2C2EBC 802E0A8C 0018C880 */   sll       $t9, $t8, 2
    /* 2C2EC0 802E0A90 0338C823 */  subu       $t9, $t9, $t8
    /* 2C2EC4 802E0A94 0019C880 */  sll        $t9, $t9, 2
    /* 2C2EC8 802E0A98 0338C821 */  addu       $t9, $t9, $t8
    /* 2C2ECC 802E0A9C 0019C8C0 */  sll        $t9, $t9, 3
    /* 2C2ED0 802E0AA0 01194021 */  addu       $t0, $t0, $t9
    /* 2C2ED4 802E0AA4 8508668C */  lh         $t0, %lo(D_8025668C)($t0)
    /* 2C2ED8 802E0AA8 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
    /* 2C2EDC 802E0AAC 44814800 */  mtc1       $at, $f9
    /* 2C2EE0 802E0AB0 44882000 */  mtc1       $t0, $f4
    /* 2C2EE4 802E0AB4 44804000 */  mtc1       $zero, $f8
    /* 2C2EE8 802E0AB8 93A4003B */  lbu        $a0, 0x3B($sp)
    /* 2C2EEC 802E0ABC 468021A1 */  cvt.d.w    $f6, $f4
    /* 2C2EF0 802E0AC0 24060005 */  addiu      $a2, $zero, 0x5
    /* 2C2EF4 802E0AC4 46283282 */  mul.d      $f10, $f6, $f8
    /* 2C2EF8 802E0AC8 4620540D */  trunc.w.d  $f16, $f10
    /* 2C2EFC 802E0ACC 44058000 */  mfc1       $a1, $f16
    /* 2C2F00 802E0AD0 0C022ABF */  jal        func_8008AAFC_99AAC
    /* 2C2F04 802E0AD4 00000000 */   nop
    /* 2C2F08 802E0AD8 10400006 */  beqz       $v0, .L802E0AF4_2C2F24
    /* 2C2F0C 802E0ADC 2401BFFF */   addiu     $at, $zero, -0x4001
    /* 2C2F10 802E0AE0 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 2C2F14 802E0AE4 240C0010 */  addiu      $t4, $zero, 0x10
    /* 2C2F18 802E0AE8 A60C002C */  sh         $t4, 0x2C($s0)
    /* 2C2F1C 802E0AEC 01415824 */  and        $t3, $t2, $at
    /* 2C2F20 802E0AF0 AE0B0020 */  sw         $t3, 0x20($s0)
  .L802E0AF4_2C2F24:
    /* 2C2F24 802E0AF4 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 2C2F28 802E0AF8 8FB00020 */  lw         $s0, 0x20($sp)
    /* 2C2F2C 802E0AFC 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 2C2F30 802E0B00 03E00008 */  jr         $ra
    /* 2C2F34 802E0B04 00000000 */   nop
endlabel func_802E0958_2C2D88
