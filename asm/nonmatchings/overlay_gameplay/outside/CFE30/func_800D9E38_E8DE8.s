nonmatching func_800D9E38_E8DE8, 0x128

glabel func_800D9E38_E8DE8
    /* E8DE8 800D9E38 0005C400 */  sll        $t8, $a1, 16
    /* E8DEC 800D9E3C 0018CC03 */  sra        $t9, $t8, 16
    /* E8DF0 800D9E40 2407001C */  addiu      $a3, $zero, 0x1C
    /* E8DF4 800D9E44 03270019 */  multu      $t9, $a3
    /* E8DF8 800D9E48 00047400 */  sll        $t6, $a0, 16
    /* E8DFC 800D9E4C 000E7C03 */  sra        $t7, $t6, 16
    /* E8E00 800D9E50 3C068015 */  lui        $a2, %hi(D_80154318)
    /* E8E04 800D9E54 24C64318 */  addiu      $a2, $a2, %lo(D_80154318)
    /* E8E08 800D9E58 24010003 */  addiu      $at, $zero, 0x3
    /* E8E0C 800D9E5C 3C0D8005 */  lui        $t5, %hi(vehicleInstances)
    /* E8E10 800D9E60 25ADDCD0 */  addiu      $t5, $t5, %lo(vehicleInstances)
    /* E8E14 800D9E64 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* E8E18 800D9E68 AFBF001C */  sw         $ra, 0x1C($sp)
    /* E8E1C 800D9E6C 00004812 */  mflo       $t1
    /* E8E20 800D9E70 00C95021 */  addu       $t2, $a2, $t1
    /* E8E24 800D9E74 85430008 */  lh         $v1, 0x8($t2)
    /* E8E28 800D9E78 01E70019 */  multu      $t7, $a3
    /* E8E2C 800D9E7C AFA40038 */  sw         $a0, 0x38($sp)
    /* E8E30 800D9E80 00036080 */  sll        $t4, $v1, 2
    /* E8E34 800D9E84 01836023 */  subu       $t4, $t4, $v1
    /* E8E38 800D9E88 000C60C0 */  sll        $t4, $t4, 3
    /* E8E3C 800D9E8C 01836023 */  subu       $t4, $t4, $v1
    /* E8E40 800D9E90 000C6080 */  sll        $t4, $t4, 2
    /* E8E44 800D9E94 018D1021 */  addu       $v0, $t4, $t5
    /* E8E48 800D9E98 844F0002 */  lh         $t7, 0x2($v0)
    /* E8E4C 800D9E9C 844E0000 */  lh         $t6, 0x0($v0)
    /* E8E50 800D9EA0 00005812 */  mflo       $t3
    /* E8E54 800D9EA4 00CB4021 */  addu       $t0, $a2, $t3
    /* E8E58 800D9EA8 8509000C */  lh         $t1, 0xC($t0)
    /* E8E5C 800D9EAC 84590004 */  lh         $t9, 0x4($v0)
    /* E8E60 800D9EB0 25F8003C */  addiu      $t8, $t7, 0x3C
    /* E8E64 800D9EB4 0121001A */  div        $zero, $t1, $at
    /* E8E68 800D9EB8 00005010 */  mfhi       $t2
    /* E8E6C 800D9EBC AFA5003C */  sw         $a1, 0x3C($sp)
    /* E8E70 800D9EC0 A5180010 */  sh         $t8, 0x10($t0)
    /* E8E74 800D9EC4 A50E000E */  sh         $t6, 0xE($t0)
    /* E8E78 800D9EC8 15400021 */  bnez       $t2, .L800D9F50_E8F00
    /* E8E7C 800D9ECC A5190012 */   sh        $t9, 0x12($t0)
    /* E8E80 800D9ED0 25030008 */  addiu      $v1, $t0, 0x8
    /* E8E84 800D9ED4 846B0004 */  lh         $t3, 0x4($v1)
    /* E8E88 800D9ED8 240C0018 */  addiu      $t4, $zero, 0x18
    /* E8E8C 800D9EDC 84640006 */  lh         $a0, 0x6($v1)
    /* E8E90 800D9EE0 84650008 */  lh         $a1, 0x8($v1)
    /* E8E94 800D9EE4 8466000A */  lh         $a2, 0xA($v1)
    /* E8E98 800D9EE8 018B6823 */  subu       $t5, $t4, $t3
    /* E8E9C 800D9EEC AFAD0010 */  sw         $t5, 0x10($sp)
    /* E8EA0 800D9EF0 AFA30020 */  sw         $v1, 0x20($sp)
    /* E8EA4 800D9EF4 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* E8EA8 800D9EF8 24070032 */   addiu     $a3, $zero, 0x32
    /* E8EAC 800D9EFC 0C000E38 */  jal        func_800038E0_44E0
    /* E8EB0 800D9F00 A7A2002E */   sh        $v0, 0x2E($sp)
    /* E8EB4 800D9F04 3045007F */  andi       $a1, $v0, 0x7F
    /* E8EB8 800D9F08 24A50080 */  addiu      $a1, $a1, 0x80
    /* E8EBC 800D9F0C 30AE00FF */  andi       $t6, $a1, 0xFF
    /* E8EC0 800D9F10 01C02825 */  or         $a1, $t6, $zero
    /* E8EC4 800D9F14 93A4002F */  lbu        $a0, 0x2F($sp)
    /* E8EC8 800D9F18 00003025 */  or         $a2, $zero, $zero
    /* E8ECC 800D9F1C 0C037764 */  jal        func_800DDD90_ECD40
    /* E8ED0 800D9F20 240700FF */   addiu     $a3, $zero, 0xFF
    /* E8ED4 800D9F24 8FA30020 */  lw         $v1, 0x20($sp)
    /* E8ED8 800D9F28 846F0004 */  lh         $t7, 0x4($v1)
    /* E8EDC 800D9F2C 84640006 */  lh         $a0, 0x6($v1)
    /* E8EE0 800D9F30 84650008 */  lh         $a1, 0x8($v1)
    /* E8EE4 800D9F34 000FC043 */  sra        $t8, $t7, 1
    /* E8EE8 800D9F38 44982000 */  mtc1       $t8, $f4
    /* E8EEC 800D9F3C 8466000A */  lh         $a2, 0xA($v1)
    /* E8EF0 800D9F40 46802120 */  cvt.s.w    $f4, $f4
    /* E8EF4 800D9F44 44072000 */  mfc1       $a3, $f4
    /* E8EF8 800D9F48 0C04D751 */  jal        func_80135D44_144CF4
    /* E8EFC 800D9F4C 00000000 */   nop
  .L800D9F50_E8F00:
    /* E8F00 800D9F50 8FBF001C */  lw         $ra, 0x1C($sp)
    /* E8F04 800D9F54 27BD0038 */  addiu      $sp, $sp, 0x38
    /* E8F08 800D9F58 03E00008 */  jr         $ra
    /* E8F0C 800D9F5C 00000000 */   nop
endlabel func_800D9E38_E8DE8
