nonmatching func_8007F9C8_8E978, 0x140

glabel func_8007F9C8_8E978
    /* 8E978 8007F9C8 30AE00FF */  andi       $t6, $a1, 0xFF
    /* 8E97C 8007F9CC 000E7880 */  sll        $t7, $t6, 2
    /* 8E980 8007F9D0 01EE7823 */  subu       $t7, $t7, $t6
    /* 8E984 8007F9D4 000F7880 */  sll        $t7, $t7, 2
    /* 8E988 8007F9D8 01EE7821 */  addu       $t7, $t7, $t6
    /* 8E98C 8007F9DC 3C188025 */  lui        $t8, %hi(alienSpecs)
    /* 8E990 8007F9E0 27186680 */  addiu      $t8, $t8, %lo(alienSpecs)
    /* 8E994 8007F9E4 000F78C0 */  sll        $t7, $t7, 3
    /* 8E998 8007F9E8 01F83021 */  addu       $a2, $t7, $t8
    /* 8E99C 8007F9EC 8CC20054 */  lw         $v0, 0x54($a2)
    /* 8E9A0 8007F9F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 8E9A4 8007F9F4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 8E9A8 8007F9F8 30590001 */  andi       $t9, $v0, 0x1
    /* 8E9AC 8007F9FC AFA40020 */  sw         $a0, 0x20($sp)
    /* 8E9B0 8007FA00 AFA50024 */  sw         $a1, 0x24($sp)
    /* 8E9B4 8007FA04 13200003 */  beqz       $t9, .L8007FA14_8E9C4
    /* 8E9B8 8007FA08 2403FFFF */   addiu     $v1, $zero, -0x1
    /* 8E9BC 8007FA0C 1000003A */  b          .L8007FAF8_8EAA8
    /* 8E9C0 8007FA10 00001025 */   or        $v0, $zero, $zero
  .L8007FA14_8E9C4:
    /* 8E9C4 8007FA14 30480002 */  andi       $t0, $v0, 0x2
    /* 8E9C8 8007FA18 11000009 */  beqz       $t0, .L8007FA40_8E9F0
    /* 8E9CC 8007FA1C 3C011000 */   lui       $at, (0x10000080 >> 16)
    /* 8E9D0 8007FA20 93A40023 */  lbu        $a0, 0x23($sp)
    /* 8E9D4 8007FA24 0C020AA6 */  jal        func_80082A98_91A48
    /* 8E9D8 8007FA28 AFA60018 */   sw        $a2, 0x18($sp)
    /* 8E9DC 8007FA2C 00021C00 */  sll        $v1, $v0, 16
    /* 8E9E0 8007FA30 00034C03 */  sra        $t1, $v1, 16
    /* 8E9E4 8007FA34 01201825 */  or         $v1, $t1, $zero
    /* 8E9E8 8007FA38 1000000B */  b          .L8007FA68_8EA18
    /* 8E9EC 8007FA3C 8FA60018 */   lw        $a2, 0x18($sp)
  .L8007FA40_8E9F0:
    /* 8E9F0 8007FA40 34210080 */  ori        $at, $at, (0x10000080 & 0xFFFF)
    /* 8E9F4 8007FA44 00415024 */  and        $t2, $v0, $at
    /* 8E9F8 8007FA48 11400007 */  beqz       $t2, .L8007FA68_8EA18
    /* 8E9FC 8007FA4C 93A40023 */   lbu       $a0, 0x23($sp)
    /* 8EA00 8007FA50 0C020B28 */  jal        func_80082CA0_91C50
    /* 8EA04 8007FA54 AFA60018 */   sw        $a2, 0x18($sp)
    /* 8EA08 8007FA58 00021C00 */  sll        $v1, $v0, 16
    /* 8EA0C 8007FA5C 00035C03 */  sra        $t3, $v1, 16
    /* 8EA10 8007FA60 01601825 */  or         $v1, $t3, $zero
    /* 8EA14 8007FA64 8FA60018 */  lw         $a2, 0x18($sp)
  .L8007FA68_8EA18:
    /* 8EA18 8007FA68 2401FFFF */  addiu      $at, $zero, -0x1
    /* 8EA1C 8007FA6C 50610004 */  beql       $v1, $at, .L8007FA80_8EA30
    /* 8EA20 8007FA70 8CCC0054 */   lw        $t4, 0x54($a2)
    /* 8EA24 8007FA74 10000020 */  b          .L8007FAF8_8EAA8
    /* 8EA28 8007FA78 24020001 */   addiu     $v0, $zero, 0x1
    /* 8EA2C 8007FA7C 8CCC0054 */  lw         $t4, 0x54($a2)
  .L8007FA80_8EA30:
    /* 8EA30 8007FA80 3C010018 */  lui        $at, (0x180000 >> 16)
    /* 8EA34 8007FA84 93A40023 */  lbu        $a0, 0x23($sp)
    /* 8EA38 8007FA88 01816824 */  and        $t5, $t4, $at
    /* 8EA3C 8007FA8C 000D74C2 */  srl        $t6, $t5, 19
    /* 8EA40 8007FA90 2DC10003 */  sltiu      $at, $t6, 0x3
    /* 8EA44 8007FA94 50200008 */  beql       $at, $zero, .L8007FAB8_8EA68
    /* 8EA48 8007FA98 2401FFFF */   addiu     $at, $zero, -0x1
    /* 8EA4C 8007FA9C 0C020ACC */  jal        func_80082B30_91AE0
    /* 8EA50 8007FAA0 AFA60018 */   sw        $a2, 0x18($sp)
    /* 8EA54 8007FAA4 00021C00 */  sll        $v1, $v0, 16
    /* 8EA58 8007FAA8 00037C03 */  sra        $t7, $v1, 16
    /* 8EA5C 8007FAAC 01E01825 */  or         $v1, $t7, $zero
    /* 8EA60 8007FAB0 8FA60018 */  lw         $a2, 0x18($sp)
    /* 8EA64 8007FAB4 2401FFFF */  addiu      $at, $zero, -0x1
  .L8007FAB8_8EA68:
    /* 8EA68 8007FAB8 5461000B */  bnel       $v1, $at, .L8007FAE8_8EA98
    /* 8EA6C 8007FABC 2401FFFF */   addiu     $at, $zero, -0x1
    /* 8EA70 8007FAC0 8CD80054 */  lw         $t8, 0x54($a2)
    /* 8EA74 8007FAC4 0018C880 */  sll        $t9, $t8, 2
    /* 8EA78 8007FAC8 07220007 */  bltzl      $t9, .L8007FAE8_8EA98
    /* 8EA7C 8007FACC 2401FFFF */   addiu     $at, $zero, -0x1
    /* 8EA80 8007FAD0 0C020B01 */  jal        func_80082C04_91BB4
    /* 8EA84 8007FAD4 93A40023 */   lbu       $a0, 0x23($sp)
    /* 8EA88 8007FAD8 00021C00 */  sll        $v1, $v0, 16
    /* 8EA8C 8007FADC 00034403 */  sra        $t0, $v1, 16
    /* 8EA90 8007FAE0 01001825 */  or         $v1, $t0, $zero
    /* 8EA94 8007FAE4 2401FFFF */  addiu      $at, $zero, -0x1
  .L8007FAE8_8EA98:
    /* 8EA98 8007FAE8 10610003 */  beq        $v1, $at, .L8007FAF8_8EAA8
    /* 8EA9C 8007FAEC 00001025 */   or        $v0, $zero, $zero
    /* 8EAA0 8007FAF0 10000001 */  b          .L8007FAF8_8EAA8
    /* 8EAA4 8007FAF4 24020001 */   addiu     $v0, $zero, 0x1
  .L8007FAF8_8EAA8:
    /* 8EAA8 8007FAF8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 8EAAC 8007FAFC 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 8EAB0 8007FB00 03E00008 */  jr         $ra
    /* 8EAB4 8007FB04 00000000 */   nop
endlabel func_8007F9C8_8E978
