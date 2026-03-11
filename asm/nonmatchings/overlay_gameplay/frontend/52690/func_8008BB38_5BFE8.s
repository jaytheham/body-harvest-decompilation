nonmatching func_8008BB38_5BFE8, 0xC8

glabel func_8008BB38_5BFE8
    /* 5BFE8 8008BB38 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 5BFEC 8008BB3C AFA40018 */  sw         $a0, 0x18($sp)
    /* 5BFF0 8008BB40 93AE001B */  lbu        $t6, 0x1B($sp)
    /* 5BFF4 8008BB44 3C03800E */  lui        $v1, %hi(D_800DE136)
    /* 5BFF8 8008BB48 2406FFFB */  addiu      $a2, $zero, -0x5
    /* 5BFFC 8008BB4C 000E7880 */  sll        $t7, $t6, 2
    /* 5C000 8008BB50 01EE7823 */  subu       $t7, $t7, $t6
    /* 5C004 8008BB54 000F7880 */  sll        $t7, $t7, 2
    /* 5C008 8008BB58 006F1821 */  addu       $v1, $v1, $t7
    /* 5C00C 8008BB5C 8463E136 */  lh         $v1, %lo(D_800DE136)($v1)
    /* 5C010 8008BB60 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 5C014 8008BB64 2407FFFA */  addiu      $a3, $zero, -0x6
    /* 5C018 8008BB68 50660022 */  beql       $v1, $a2, .L8008BBF4_5C0A4
    /* 5C01C 8008BB6C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 5C020 8008BB70 1067001F */  beq        $v1, $a3, .L8008BBF0_5C0A0
    /* 5C024 8008BB74 240AFFFF */   addiu     $t2, $zero, -0x1
    /* 5C028 8008BB78 3C08800E */  lui        $t0, %hi(D_800DE840)
    /* 5C02C 8008BB7C 2508E840 */  addiu      $t0, $t0, %lo(D_800DE840)
    /* 5C030 8008BB80 2409001C */  addiu      $t1, $zero, 0x1C
  .L8008BB84_5C034:
    /* 5C034 8008BB84 00690019 */  multu      $v1, $t1
    /* 5C038 8008BB88 0000C012 */  mflo       $t8
    /* 5C03C 8008BB8C 01181021 */  addu       $v0, $t0, $t8
    /* 5C040 8008BB90 8459000E */  lh         $t9, 0xE($v0)
    /* 5C044 8008BB94 24450008 */  addiu      $a1, $v0, 0x8
    /* 5C048 8008BB98 00A02025 */  or         $a0, $a1, $zero
    /* 5C04C 8008BB9C 55590004 */  bnel       $t2, $t9, .L8008BBB0_5C060
    /* 5C050 8008BBA0 84AB0006 */   lh        $t3, 0x6($a1)
    /* 5C054 8008BBA4 1000000E */  b          .L8008BBE0_5C090
    /* 5C058 8008BBA8 84430004 */   lh        $v1, 0x4($v0)
    /* 5C05C 8008BBAC 84AB0006 */  lh         $t3, 0x6($a1)
  .L8008BBB0_5C060:
    /* 5C060 8008BBB0 55600008 */  bnel       $t3, $zero, .L8008BBD4_5C084
    /* 5C064 8008BBB4 848C0006 */   lh        $t4, 0x6($a0)
    /* 5C068 8008BBB8 0C021031 */  jal        func_800840C4_54574
    /* 5C06C 8008BBBC 93A4001B */   lbu       $a0, 0x1B($sp)
    /* 5C070 8008BBC0 0C020EC5 */  jal        func_80083B14_53FC4
    /* 5C074 8008BBC4 93A4001B */   lbu       $a0, 0x1B($sp)
    /* 5C078 8008BBC8 1000000A */  b          .L8008BBF4_5C0A4
    /* 5C07C 8008BBCC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 5C080 8008BBD0 848C0006 */  lh         $t4, 0x6($a0)
  .L8008BBD4_5C084:
    /* 5C084 8008BBD4 258DFFFF */  addiu      $t5, $t4, -0x1
    /* 5C088 8008BBD8 A48D0006 */  sh         $t5, 0x6($a0)
    /* 5C08C 8008BBDC 84430004 */  lh         $v1, 0x4($v0)
  .L8008BBE0_5C090:
    /* 5C090 8008BBE0 50660004 */  beql       $v1, $a2, .L8008BBF4_5C0A4
    /* 5C094 8008BBE4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 5C098 8008BBE8 1467FFE6 */  bne        $v1, $a3, .L8008BB84_5C034
    /* 5C09C 8008BBEC 00000000 */   nop
  .L8008BBF0_5C0A0:
    /* 5C0A0 8008BBF0 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8008BBF4_5C0A4:
    /* 5C0A4 8008BBF4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 5C0A8 8008BBF8 03E00008 */  jr         $ra
    /* 5C0AC 8008BBFC 00000000 */   nop
endlabel func_8008BB38_5BFE8
