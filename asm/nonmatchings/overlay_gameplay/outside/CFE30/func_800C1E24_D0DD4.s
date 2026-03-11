nonmatching func_800C1E24_D0DD4, 0xA8

glabel func_800C1E24_D0DD4
    /* D0DD4 800C1E24 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* D0DD8 800C1E28 00047400 */  sll        $t6, $a0, 16
    /* D0DDC 800C1E2C 000E7C03 */  sra        $t7, $t6, 16
    /* D0DE0 800C1E30 AFA40020 */  sw         $a0, 0x20($sp)
    /* D0DE4 800C1E34 AFA50024 */  sw         $a1, 0x24($sp)
    /* D0DE8 800C1E38 30B800FF */  andi       $t8, $a1, 0xFF
    /* D0DEC 800C1E3C 03002825 */  or         $a1, $t8, $zero
    /* D0DF0 800C1E40 01E02025 */  or         $a0, $t7, $zero
    /* D0DF4 800C1E44 AFBF0014 */  sw         $ra, 0x14($sp)
    /* D0DF8 800C1E48 05E00019 */  bltz       $t7, .L800C1EB0_D0E60
    /* D0DFC 800C1E4C AFA60028 */   sw        $a2, 0x28($sp)
    /* D0E00 800C1E50 29E10190 */  slti       $at, $t7, 0x190
    /* D0E04 800C1E54 10200016 */  beqz       $at, .L800C1EB0_D0E60
    /* D0E08 800C1E58 2B01001E */   slti      $at, $t8, 0x1E
    /* D0E0C 800C1E5C 10200014 */  beqz       $at, .L800C1EB0_D0E60
    /* D0E10 800C1E60 000FC8C0 */   sll       $t9, $t7, 3
    /* D0E14 800C1E64 032FC823 */  subu       $t9, $t9, $t7
    /* D0E18 800C1E68 3C088015 */  lui        $t0, %hi(D_80154318)
    /* D0E1C 800C1E6C 25084318 */  addiu      $t0, $t0, %lo(D_80154318)
    /* D0E20 800C1E70 0019C880 */  sll        $t9, $t9, 2
    /* D0E24 800C1E74 03281021 */  addu       $v0, $t9, $t0
    /* D0E28 800C1E78 90490000 */  lbu        $t1, 0x0($v0)
    /* D0E2C 800C1E7C 312A0001 */  andi       $t2, $t1, 0x1
    /* D0E30 800C1E80 1140000B */  beqz       $t2, .L800C1EB0_D0E60
    /* D0E34 800C1E84 00000000 */   nop
    /* D0E38 800C1E88 844B0004 */  lh         $t3, 0x4($v0)
    /* D0E3C 800C1E8C A3B80027 */  sb         $t8, 0x27($sp)
    /* D0E40 800C1E90 0C030693 */  jal        func_800C1A4C_D09FC
    /* D0E44 800C1E94 A7AB001E */   sh        $t3, 0x1E($sp)
    /* D0E48 800C1E98 93A50027 */  lbu        $a1, 0x27($sp)
    /* D0E4C 800C1E9C 87A4001E */  lh         $a0, 0x1E($sp)
    /* D0E50 800C1EA0 0C030693 */  jal        func_800C1A4C_D09FC
    /* D0E54 800C1EA4 8FA60028 */   lw        $a2, 0x28($sp)
    /* D0E58 800C1EA8 10000005 */  b          .L800C1EC0_D0E70
    /* D0E5C 800C1EAC 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800C1EB0_D0E60:
    /* D0E60 800C1EB0 3C048014 */  lui        $a0, %hi(D_80143304)
    /* D0E64 800C1EB4 0C00731B */  jal        osSyncPrintf
    /* D0E68 800C1EB8 24843304 */   addiu     $a0, $a0, %lo(D_80143304)
    /* D0E6C 800C1EBC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800C1EC0_D0E70:
    /* D0E70 800C1EC0 27BD0020 */  addiu      $sp, $sp, 0x20
    /* D0E74 800C1EC4 03E00008 */  jr         $ra
    /* D0E78 800C1EC8 00000000 */   nop
endlabel func_800C1E24_D0DD4
