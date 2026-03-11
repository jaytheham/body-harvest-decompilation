nonmatching func_802D7EBC_1909CC, 0x104

glabel func_802D7EBC_1909CC
    /* 1909CC 802D7EBC 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 1909D0 802D7EC0 AFA40028 */  sw         $a0, 0x28($sp)
    /* 1909D4 802D7EC4 93AE002B */  lbu        $t6, 0x2B($sp)
    /* 1909D8 802D7EC8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1909DC 802D7ECC AFB00018 */  sw         $s0, 0x18($sp)
    /* 1909E0 802D7ED0 000E7880 */  sll        $t7, $t6, 2
    /* 1909E4 802D7ED4 01EE7821 */  addu       $t7, $t7, $t6
    /* 1909E8 802D7ED8 000F7900 */  sll        $t7, $t7, 4
    /* 1909EC 802D7EDC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1909F0 802D7EE0 01F88021 */  addu       $s0, $t7, $t8
    /* 1909F4 802D7EE4 8E190020 */  lw         $t9, 0x20($s0)
    /* 1909F8 802D7EE8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1909FC 802D7EEC 33282000 */  andi       $t0, $t9, 0x2000
    /* 190A00 802D7EF0 51000008 */  beql       $t0, $zero, .L802D7F14_190A24
    /* 190A04 802D7EF4 860A002C */   lh        $t2, 0x2C($s0)
    /* 190A08 802D7EF8 8609002C */  lh         $t1, 0x2C($s0)
    /* 190A0C 802D7EFC 2921000F */  slti       $at, $t1, 0xF
    /* 190A10 802D7F00 54200004 */  bnel       $at, $zero, .L802D7F14_190A24
    /* 190A14 802D7F04 860A002C */   lh        $t2, 0x2C($s0)
    /* 190A18 802D7F08 0C0221D8 */  jal        func_80088760_97710
    /* 190A1C 802D7F0C 02002025 */   or        $a0, $s0, $zero
    /* 190A20 802D7F10 860A002C */  lh         $t2, 0x2C($s0)
  .L802D7F14_190A24:
    /* 190A24 802D7F14 2401000E */  addiu      $at, $zero, 0xE
    /* 190A28 802D7F18 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 190A2C 802D7F1C 15410023 */  bne        $t2, $at, .L802D7FAC_190ABC
    /* 190A30 802D7F20 02002825 */   or        $a1, $s0, $zero
    /* 190A34 802D7F24 0C0213C0 */  jal        func_80084F00_93EB0
    /* 190A38 802D7F28 8C842B34 */   lw        $a0, %lo(D_80052B34)($a0)
    /* 190A3C 802D7F2C 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 190A40 802D7F30 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 190A44 802D7F34 9218001A */  lbu        $t8, 0x1A($s0)
    /* 190A48 802D7F38 3C0E8025 */  lui        $t6, %hi(D_80257A0C)
    /* 190A4C 802D7F3C 916C001A */  lbu        $t4, 0x1A($t3)
    /* 190A50 802D7F40 0018C880 */  sll        $t9, $t8, 2
    /* 190A54 802D7F44 0338C823 */  subu       $t9, $t9, $t8
    /* 190A58 802D7F48 000C68C0 */  sll        $t5, $t4, 3
    /* 190A5C 802D7F4C 0019C880 */  sll        $t9, $t9, 2
    /* 190A60 802D7F50 01AC6823 */  subu       $t5, $t5, $t4
    /* 190A64 802D7F54 000D6900 */  sll        $t5, $t5, 4
    /* 190A68 802D7F58 0338C821 */  addu       $t9, $t9, $t8
    /* 190A6C 802D7F5C 0019C8C0 */  sll        $t9, $t9, 3
    /* 190A70 802D7F60 01CD7021 */  addu       $t6, $t6, $t5
    /* 190A74 802D7F64 3C088025 */  lui        $t0, %hi(D_8025668C)
    /* 190A78 802D7F68 85CE7A0C */  lh         $t6, %lo(D_80257A0C)($t6)
    /* 190A7C 802D7F6C 01194021 */  addu       $t0, $t0, $t9
    /* 190A80 802D7F70 8508668C */  lh         $t0, %lo(D_8025668C)($t0)
    /* 190A84 802D7F74 004E7823 */  subu       $t7, $v0, $t6
    /* 190A88 802D7F78 93A4002B */  lbu        $a0, 0x2B($sp)
    /* 190A8C 802D7F7C 01E84823 */  subu       $t1, $t7, $t0
    /* 190A90 802D7F80 AFA90024 */  sw         $t1, 0x24($sp)
    /* 190A94 802D7F84 0C0213FA */  jal        func_80084FE8_93F98
    /* 190A98 802D7F88 24050800 */   addiu     $a1, $zero, 0x800
    /* 190A9C 802D7F8C 10400007 */  beqz       $v0, .L802D7FAC_190ABC
    /* 190AA0 802D7F90 8FAA0024 */   lw        $t2, 0x24($sp)
    /* 190AA4 802D7F94 2941008C */  slti       $at, $t2, 0x8C
    /* 190AA8 802D7F98 50200005 */  beql       $at, $zero, .L802D7FB0_190AC0
    /* 190AAC 802D7F9C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 190AB0 802D7FA0 8E0B0020 */  lw         $t3, 0x20($s0)
    /* 190AB4 802D7FA4 356C2000 */  ori        $t4, $t3, 0x2000
    /* 190AB8 802D7FA8 AE0C0020 */  sw         $t4, 0x20($s0)
  .L802D7FAC_190ABC:
    /* 190ABC 802D7FAC 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802D7FB0_190AC0:
    /* 190AC0 802D7FB0 8FB00018 */  lw         $s0, 0x18($sp)
    /* 190AC4 802D7FB4 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 190AC8 802D7FB8 03E00008 */  jr         $ra
    /* 190ACC 802D7FBC 00000000 */   nop
endlabel func_802D7EBC_1909CC
