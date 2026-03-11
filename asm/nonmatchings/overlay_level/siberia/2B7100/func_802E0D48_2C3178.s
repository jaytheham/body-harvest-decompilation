nonmatching func_802E0D48_2C3178, 0x9C

glabel func_802E0D48_2C3178
    /* 2C3178 802E0D48 308600FF */  andi       $a2, $a0, 0xFF
    /* 2C317C 802E0D4C 24070050 */  addiu      $a3, $zero, 0x50
    /* 2C3180 802E0D50 00C70019 */  multu      $a2, $a3
    /* 2C3184 802E0D54 3C058005 */  lui        $a1, %hi(alienInstances)
    /* 2C3188 802E0D58 24A58198 */  addiu      $a1, $a1, %lo(alienInstances)
    /* 2C318C 802E0D5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2C3190 802E0D60 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2C3194 802E0D64 AFA40018 */  sw         $a0, 0x18($sp)
    /* 2C3198 802E0D68 00007012 */  mflo       $t6
    /* 2C319C 802E0D6C 00AE1021 */  addu       $v0, $a1, $t6
    /* 2C31A0 802E0D70 8C430020 */  lw         $v1, 0x20($v0)
    /* 2C31A4 802E0D74 00037AC0 */  sll        $t7, $v1, 11
    /* 2C31A8 802E0D78 05E00014 */  bltz       $t7, .L802E0DCC_2C31FC
    /* 2C31AC 802E0D7C 00000000 */   nop
    /* 2C31B0 802E0D80 90580025 */  lbu        $t8, 0x25($v0)
    /* 2C31B4 802E0D84 2401001B */  addiu      $at, $zero, 0x1B
    /* 2C31B8 802E0D88 03070019 */  multu      $t8, $a3
    /* 2C31BC 802E0D8C 0000C812 */  mflo       $t9
    /* 2C31C0 802E0D90 00B92021 */  addu       $a0, $a1, $t9
    /* 2C31C4 802E0D94 9088001A */  lbu        $t0, 0x1A($a0)
    /* 2C31C8 802E0D98 24050002 */  addiu      $a1, $zero, 0x2
    /* 2C31CC 802E0D9C 55010006 */  bnel       $t0, $at, .L802E0DB8_2C31E8
    /* 2C31D0 802E0DA0 00035840 */   sll       $t3, $v1, 1
    /* 2C31D4 802E0DA4 8089003C */  lb         $t1, 0x3C($a0)
    /* 2C31D8 802E0DA8 252AFFFF */  addiu      $t2, $t1, -0x1
    /* 2C31DC 802E0DAC A08A003C */  sb         $t2, 0x3C($a0)
    /* 2C31E0 802E0DB0 8C430020 */  lw         $v1, 0x20($v0)
    /* 2C31E4 802E0DB4 00035840 */  sll        $t3, $v1, 1
  .L802E0DB8_2C31E8:
    /* 2C31E8 802E0DB8 05610004 */  bgez       $t3, .L802E0DCC_2C31FC
    /* 2C31EC 802E0DBC 00C02025 */   or        $a0, $a2, $zero
    /* 2C31F0 802E0DC0 0C01E5E9 */  jal        func_800797A4_88754
    /* 2C31F4 802E0DC4 A3A6001B */   sb        $a2, 0x1B($sp)
    /* 2C31F8 802E0DC8 93A6001B */  lbu        $a2, 0x1B($sp)
  .L802E0DCC_2C31FC:
    /* 2C31FC 802E0DCC 0C022C42 */  jal        func_8008B108_9A0B8
    /* 2C3200 802E0DD0 30C400FF */   andi      $a0, $a2, 0xFF
    /* 2C3204 802E0DD4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2C3208 802E0DD8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2C320C 802E0DDC 03E00008 */  jr         $ra
    /* 2C3210 802E0DE0 00000000 */   nop
endlabel func_802E0D48_2C3178
    /* 2C3214 802E0DE4 00000000 */  nop
    /* 2C3218 802E0DE8 00000000 */  nop
    /* 2C321C 802E0DEC 00000000 */  nop
