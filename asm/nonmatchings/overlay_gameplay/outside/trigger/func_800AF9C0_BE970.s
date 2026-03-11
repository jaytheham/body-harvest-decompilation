nonmatching func_800AF9C0_BE970, 0xD8

glabel func_800AF9C0_BE970
    /* BE970 800AF9C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* BE974 800AF9C4 AFB00018 */  sw         $s0, 0x18($sp)
    /* BE978 800AF9C8 00808025 */  or         $s0, $a0, $zero
    /* BE97C 800AF9CC AFBF001C */  sw         $ra, 0x1C($sp)
    /* BE980 800AF9D0 0C01E55B */  jal        func_8007956C_8851C
    /* BE984 800AF9D4 90840009 */   lbu       $a0, 0x9($a0)
    /* BE988 800AF9D8 304E00FF */  andi       $t6, $v0, 0xFF
    /* BE98C 800AF9DC 240100FF */  addiu      $at, $zero, 0xFF
    /* BE990 800AF9E0 11C10028 */  beq        $t6, $at, .L800AFA84_BEA34
    /* BE994 800AF9E4 304600FF */   andi      $a2, $v0, 0xFF
    /* BE998 800AF9E8 00067880 */  sll        $t7, $a2, 2
    /* BE99C 800AF9EC 92190008 */  lbu        $t9, 0x8($s0)
    /* BE9A0 800AF9F0 01E67821 */  addu       $t7, $t7, $a2
    /* BE9A4 800AF9F4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* BE9A8 800AF9F8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* BE9AC 800AF9FC 000F7900 */  sll        $t7, $t7, 4
    /* BE9B0 800AFA00 01F81821 */  addu       $v1, $t7, $t8
    /* BE9B4 800AFA04 A0790025 */  sb         $t9, 0x25($v1)
    /* BE9B8 800AFA08 82080001 */  lb         $t0, 0x1($s0)
    /* BE9BC 800AFA0C 00084A00 */  sll        $t1, $t0, 8
    /* BE9C0 800AFA10 252A0080 */  addiu      $t2, $t1, 0x80
    /* BE9C4 800AFA14 A46A0000 */  sh         $t2, 0x0($v1)
    /* BE9C8 800AFA18 820B0002 */  lb         $t3, 0x2($s0)
    /* BE9CC 800AFA1C 84640000 */  lh         $a0, 0x0($v1)
    /* BE9D0 800AFA20 AFA30020 */  sw         $v1, 0x20($sp)
    /* BE9D4 800AFA24 000B6200 */  sll        $t4, $t3, 8
    /* BE9D8 800AFA28 258D0080 */  addiu      $t5, $t4, 0x80
    /* BE9DC 800AFA2C A46D0004 */  sh         $t5, 0x4($v1)
    /* BE9E0 800AFA30 84650004 */  lh         $a1, 0x4($v1)
    /* BE9E4 800AFA34 A464002E */  sh         $a0, 0x2E($v1)
    /* BE9E8 800AFA38 0C02C3C8 */  jal        func_800B0F20_BFED0
    /* BE9EC 800AFA3C A4650032 */   sh        $a1, 0x32($v1)
    /* BE9F0 800AFA40 8FA30020 */  lw         $v1, 0x20($sp)
    /* BE9F4 800AFA44 A062001B */  sb         $v0, 0x1B($v1)
    /* BE9F8 800AFA48 84640000 */  lh         $a0, 0x0($v1)
    /* BE9FC 800AFA4C 84650004 */  lh         $a1, 0x4($v1)
    /* BEA00 800AFA50 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* BEA04 800AFA54 24660002 */   addiu     $a2, $v1, 0x2
    /* BEA08 800AFA58 92040008 */  lbu        $a0, 0x8($s0)
    /* BEA0C 800AFA5C 240100FF */  addiu      $at, $zero, 0xFF
    /* BEA10 800AFA60 8FA30020 */  lw         $v1, 0x20($sp)
    /* BEA14 800AFA64 10810007 */  beq        $a0, $at, .L800AFA84_BEA34
    /* BEA18 800AFA68 00047080 */   sll       $t6, $a0, 2
    /* BEA1C 800AFA6C 01C47021 */  addu       $t6, $t6, $a0
    /* BEA20 800AFA70 000E7100 */  sll        $t6, $t6, 4
    /* BEA24 800AFA74 3C0F8005 */  lui        $t7, %hi(D_800481A6)
    /* BEA28 800AFA78 01EE7821 */  addu       $t7, $t7, $t6
    /* BEA2C 800AFA7C 85EF81A6 */  lh         $t7, %lo(D_800481A6)($t7)
    /* BEA30 800AFA80 A46F000E */  sh         $t7, 0xE($v1)
  .L800AFA84_BEA34:
    /* BEA34 800AFA84 8FBF001C */  lw         $ra, 0x1C($sp)
    /* BEA38 800AFA88 8FB00018 */  lw         $s0, 0x18($sp)
    /* BEA3C 800AFA8C 27BD0028 */  addiu      $sp, $sp, 0x28
    /* BEA40 800AFA90 03E00008 */  jr         $ra
    /* BEA44 800AFA94 00000000 */   nop
endlabel func_800AF9C0_BE970
