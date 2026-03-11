nonmatching func_800F1004_FFFB4, 0x130

glabel func_800F1004_FFFB4
    /* FFFB4 800F1004 3C038015 */  lui        $v1, %hi(D_80157FD0)
    /* FFFB8 800F1008 24637FD0 */  addiu      $v1, $v1, %lo(D_80157FD0)
    /* FFFBC 800F100C 846E0000 */  lh         $t6, 0x0($v1)
    /* FFFC0 800F1010 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* FFFC4 800F1014 24010032 */  addiu      $at, $zero, 0x32
    /* FFFC8 800F1018 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* FFFCC 800F101C A46F0000 */  sh         $t7, 0x0($v1)
    /* FFFD0 800F1020 84620000 */  lh         $v0, 0x0($v1)
    /* FFFD4 800F1024 AFBF001C */  sw         $ra, 0x1C($sp)
    /* FFFD8 800F1028 3C188004 */  lui        $t8, %hi(D_80047F9C)
    /* FFFDC 800F102C 1441002B */  bne        $v0, $at, .L800F10DC_10008C
    /* FFFE0 800F1030 3C198004 */   lui       $t9, %hi(currentLevel)
    /* FFFE4 800F1034 8F187F9C */  lw         $t8, %lo(D_80047F9C)($t8)
    /* FFFE8 800F1038 24010005 */  addiu      $at, $zero, 0x5
    /* FFFEC 800F103C 13010027 */  beq        $t8, $at, .L800F10DC_10008C
    /* FFFF0 800F1040 00000000 */   nop
    /* FFFF4 800F1044 8F397F90 */  lw         $t9, %lo(currentLevel)($t9)
    /* FFFF8 800F1048 2728FFFF */  addiu      $t0, $t9, -0x1
    /* FFFFC 800F104C 2D010005 */  sltiu      $at, $t0, 0x5
    /* 100000 800F1050 10200018 */  beqz       $at, .L800F10B4_100064
    /* 100004 800F1054 00084080 */   sll       $t0, $t0, 2
    /* 100008 800F1058 3C018014 */  lui        $at, %hi(jtbl_80144618_overlay_gameplay_outside)
    /* 10000C 800F105C 00280821 */  addu       $at, $at, $t0
    /* 100010 800F1060 8C284618 */  lw         $t0, %lo(jtbl_80144618_overlay_gameplay_outside)($at)
    /* 100014 800F1064 01000008 */  jr         $t0
    /* 100018 800F1068 00000000 */   nop
    /* 10001C 800F106C 0C00635F */  jal        func_80018D7C_1997C
    /* 100020 800F1070 240400FF */   addiu     $a0, $zero, 0xFF
    /* 100024 800F1074 1000000F */  b          .L800F10B4_100064
    /* 100028 800F1078 00000000 */   nop
    /* 10002C 800F107C 0C00635F */  jal        func_80018D7C_1997C
    /* 100030 800F1080 240400E2 */   addiu     $a0, $zero, 0xE2
    /* 100034 800F1084 1000000B */  b          .L800F10B4_100064
    /* 100038 800F1088 00000000 */   nop
    /* 10003C 800F108C 0C00635F */  jal        func_80018D7C_1997C
    /* 100040 800F1090 240400FA */   addiu     $a0, $zero, 0xFA
    /* 100044 800F1094 10000007 */  b          .L800F10B4_100064
    /* 100048 800F1098 00000000 */   nop
    /* 10004C 800F109C 0C00635F */  jal        func_80018D7C_1997C
    /* 100050 800F10A0 240400E6 */   addiu     $a0, $zero, 0xE6
    /* 100054 800F10A4 10000003 */  b          .L800F10B4_100064
    /* 100058 800F10A8 00000000 */   nop
    /* 10005C 800F10AC 0C00635F */  jal        func_80018D7C_1997C
    /* 100060 800F10B0 240400FA */   addiu     $a0, $zero, 0xFA
  .L800F10B4_100064:
    /* 100064 800F10B4 3C018014 */  lui        $at, %hi(D_8014462C)
    /* 100068 800F10B8 C424462C */  lwc1       $f4, %lo(D_8014462C)($at)
    /* 10006C 800F10BC 00002025 */  or         $a0, $zero, $zero
    /* 100070 800F10C0 2405017B */  addiu      $a1, $zero, 0x17B
    /* 100074 800F10C4 24060000 */  addiu      $a2, $zero, 0x0
    /* 100078 800F10C8 00003825 */  or         $a3, $zero, $zero
    /* 10007C 800F10CC 0C00528F */  jal        func_80014A3C_1563C
    /* 100080 800F10D0 E7A40010 */   swc1      $f4, 0x10($sp)
    /* 100084 800F10D4 3C028015 */  lui        $v0, %hi(D_80157FD0)
    /* 100088 800F10D8 84427FD0 */  lh         $v0, %lo(D_80157FD0)($v0)
  .L800F10DC_10008C:
    /* 10008C 800F10DC 1C400011 */  bgtz       $v0, .L800F1124_1000D4
    /* 100090 800F10E0 3C098015 */   lui       $t1, %hi(D_80157F94)
    /* 100094 800F10E4 85297F94 */  lh         $t1, %lo(D_80157F94)($t1)
    /* 100098 800F10E8 3C0B8005 */  lui        $t3, %hi(alienInstances)
    /* 10009C 800F10EC 256B8198 */  addiu      $t3, $t3, %lo(alienInstances)
    /* 1000A0 800F10F0 00095080 */  sll        $t2, $t1, 2
    /* 1000A4 800F10F4 01495021 */  addu       $t2, $t2, $t1
    /* 1000A8 800F10F8 000A5100 */  sll        $t2, $t2, 4
    /* 1000AC 800F10FC 014B1021 */  addu       $v0, $t2, $t3
    /* 1000B0 800F1100 84450004 */  lh         $a1, 0x4($v0)
    /* 1000B4 800F1104 84440000 */  lh         $a0, 0x0($v0)
    /* 1000B8 800F1108 24A5FC18 */  addiu      $a1, $a1, -0x3E8
    /* 1000BC 800F110C 00056400 */  sll        $t4, $a1, 16
    /* 1000C0 800F1110 0C02C1C4 */  jal        func_800B0710_BF6C0
    /* 1000C4 800F1114 000C2C03 */   sra       $a1, $t4, 16
    /* 1000C8 800F1118 3C04800F */  lui        $a0, %hi(func_800F1004_FFFB4)
    /* 1000CC 800F111C 0C001D2F */  jal        func_800074BC_80BC
    /* 1000D0 800F1120 24841004 */   addiu     $a0, $a0, %lo(func_800F1004_FFFB4)
  .L800F1124_1000D4:
    /* 1000D4 800F1124 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1000D8 800F1128 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1000DC 800F112C 03E00008 */  jr         $ra
    /* 1000E0 800F1130 00000000 */   nop
endlabel func_800F1004_FFFB4
