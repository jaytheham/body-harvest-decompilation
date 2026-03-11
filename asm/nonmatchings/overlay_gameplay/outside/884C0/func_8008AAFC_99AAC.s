nonmatching func_8008AAFC_99AAC, 0x160

glabel func_8008AAFC_99AAC
    /* 99AAC 8008AAFC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 99AB0 8008AB00 000E7880 */  sll        $t7, $t6, 2
    /* 99AB4 8008AB04 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 99AB8 8008AB08 01EE7821 */  addu       $t7, $t7, $t6
    /* 99ABC 8008AB0C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 99AC0 8008AB10 AFB00020 */  sw         $s0, 0x20($sp)
    /* 99AC4 8008AB14 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 99AC8 8008AB18 000F7900 */  sll        $t7, $t7, 4
    /* 99ACC 8008AB1C 01F88021 */  addu       $s0, $t7, $t8
    /* 99AD0 8008AB20 9203001A */  lbu        $v1, 0x1A($s0)
    /* 99AD4 8008AB24 2407000A */  addiu      $a3, $zero, 0xA
    /* 99AD8 8008AB28 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 99ADC 8008AB2C AFA40028 */  sw         $a0, 0x28($sp)
    /* 99AE0 8008AB30 AFA5002C */  sw         $a1, 0x2C($sp)
    /* 99AE4 8008AB34 14E30002 */  bne        $a3, $v1, .L8008AB40_99AF0
    /* 99AE8 8008AB38 AFA60030 */   sw        $a2, 0x30($sp)
    /* 99AEC 8008AB3C AFA00030 */  sw         $zero, 0x30($sp)
  .L8008AB40_99AF0:
    /* 99AF0 8008AB40 8E020020 */  lw         $v0, 0x20($s0)
    /* 99AF4 8008AB44 0002C840 */  sll        $t9, $v0, 1
    /* 99AF8 8008AB48 0723000C */  bgezl      $t9, .L8008AB7C_99B2C
    /* 99AFC 8008AB4C 860C002C */   lh        $t4, 0x2C($s0)
    /* 99B00 8008AB50 92080047 */  lbu        $t0, 0x47($s0)
    /* 99B04 8008AB54 3C0B8022 */  lui        $t3, %hi(D_80222A70)
    /* 99B08 8008AB58 31090001 */  andi       $t1, $t0, 0x1
    /* 99B0C 8008AB5C 55200007 */  bnel       $t1, $zero, .L8008AB7C_99B2C
    /* 99B10 8008AB60 860C002C */   lh        $t4, 0x2C($s0)
    /* 99B14 8008AB64 860A0002 */  lh         $t2, 0x2($s0)
    /* 99B18 8008AB68 8D6B2A70 */  lw         $t3, %lo(D_80222A70)($t3)
    /* 99B1C 8008AB6C 014B082A */  slt        $at, $t2, $t3
    /* 99B20 8008AB70 50200035 */  beql       $at, $zero, .L8008AC48_99BF8
    /* 99B24 8008AB74 00001025 */   or        $v0, $zero, $zero
    /* 99B28 8008AB78 860C002C */  lh         $t4, 0x2C($s0)
  .L8008AB7C_99B2C:
    /* 99B2C 8008AB7C 304D0600 */  andi       $t5, $v0, 0x600
    /* 99B30 8008AB80 29810002 */  slti       $at, $t4, 0x2
    /* 99B34 8008AB84 54200030 */  bnel       $at, $zero, .L8008AC48_99BF8
    /* 99B38 8008AB88 00001025 */   or        $v0, $zero, $zero
    /* 99B3C 8008AB8C 11A0002B */  beqz       $t5, .L8008AC3C_99BEC
    /* 99B40 8008AB90 3C0E8022 */   lui       $t6, %hi(D_80222A70)
    /* 99B44 8008AB94 86050002 */  lh         $a1, 0x2($s0)
    /* 99B48 8008AB98 8DCE2A70 */  lw         $t6, %lo(D_80222A70)($t6)
    /* 99B4C 8008AB9C 3C088014 */  lui        $t0, %hi(D_8013C16C)
    /* 99B50 8008ABA0 2508C16C */  addiu      $t0, $t0, %lo(D_8013C16C)
    /* 99B54 8008ABA4 00AE082A */  slt        $at, $a1, $t6
    /* 99B58 8008ABA8 10200013 */  beqz       $at, .L8008ABF8_99BA8
    /* 99B5C 8008ABAC 8FB90030 */   lw        $t9, 0x30($sp)
    /* 99B60 8008ABB0 8FA7002C */  lw         $a3, 0x2C($sp)
    /* 99B64 8008ABB4 86040000 */  lh         $a0, 0x0($s0)
    /* 99B68 8008ABB8 86060004 */  lh         $a2, 0x4($s0)
    /* 99B6C 8008ABBC 00077880 */  sll        $t7, $a3, 2
    /* 99B70 8008ABC0 01E77823 */  subu       $t7, $t7, $a3
    /* 99B74 8008ABC4 31E7FFFF */  andi       $a3, $t7, 0xFFFF
    /* 99B78 8008ABC8 AFB90010 */  sw         $t9, 0x10($sp)
    /* 99B7C 8008ABCC 0C037C0E */  jal        func_800DF038_EDFE8
    /* 99B80 8008ABD0 AFA80014 */   sw        $t0, 0x14($sp)
    /* 99B84 8008ABD4 24090002 */  addiu      $t1, $zero, 0x2
    /* 99B88 8008ABD8 AFA90010 */  sw         $t1, 0x10($sp)
    /* 99B8C 8008ABDC 86040000 */  lh         $a0, 0x0($s0)
    /* 99B90 8008ABE0 86050002 */  lh         $a1, 0x2($s0)
    /* 99B94 8008ABE4 86060004 */  lh         $a2, 0x4($s0)
    /* 99B98 8008ABE8 0C037BCB */  jal        func_800DEF2C_EDEDC
    /* 99B9C 8008ABEC 240700FF */   addiu     $a3, $zero, 0xFF
    /* 99BA0 8008ABF0 10000011 */  b          .L8008AC38_99BE8
    /* 99BA4 8008ABF4 240C0001 */   addiu     $t4, $zero, 0x1
  .L8008ABF8_99BA8:
    /* 99BA8 8008ABF8 14E30009 */  bne        $a3, $v1, .L8008AC20_99BD0
    /* 99BAC 8008ABFC 8FAB0030 */   lw        $t3, 0x30($sp)
    /* 99BB0 8008AC00 8FAA0030 */  lw         $t2, 0x30($sp)
    /* 99BB4 8008AC04 86040000 */  lh         $a0, 0x0($s0)
    /* 99BB8 8008AC08 86060004 */  lh         $a2, 0x4($s0)
    /* 99BBC 8008AC0C 97A7002E */  lhu        $a3, 0x2E($sp)
    /* 99BC0 8008AC10 0C037E8D */  jal        func_800DFA34_EE9E4
    /* 99BC4 8008AC14 AFAA0010 */   sw        $t2, 0x10($sp)
    /* 99BC8 8008AC18 10000007 */  b          .L8008AC38_99BE8
    /* 99BCC 8008AC1C 240C0001 */   addiu     $t4, $zero, 0x1
  .L8008AC20_99BD0:
    /* 99BD0 8008AC20 86040000 */  lh         $a0, 0x0($s0)
    /* 99BD4 8008AC24 86060004 */  lh         $a2, 0x4($s0)
    /* 99BD8 8008AC28 97A7002E */  lhu        $a3, 0x2E($sp)
    /* 99BDC 8008AC2C 0C037E12 */  jal        func_800DF848_EE7F8
    /* 99BE0 8008AC30 AFAB0010 */   sw        $t3, 0x10($sp)
    /* 99BE4 8008AC34 240C0001 */  addiu      $t4, $zero, 0x1
  .L8008AC38_99BE8:
    /* 99BE8 8008AC38 A60C002C */  sh         $t4, 0x2C($s0)
  .L8008AC3C_99BEC:
    /* 99BEC 8008AC3C 10000002 */  b          .L8008AC48_99BF8
    /* 99BF0 8008AC40 24020001 */   addiu     $v0, $zero, 0x1
    /* 99BF4 8008AC44 00001025 */  or         $v0, $zero, $zero
  .L8008AC48_99BF8:
    /* 99BF8 8008AC48 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 99BFC 8008AC4C 8FB00020 */  lw         $s0, 0x20($sp)
    /* 99C00 8008AC50 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 99C04 8008AC54 03E00008 */  jr         $ra
    /* 99C08 8008AC58 00000000 */   nop
endlabel func_8008AAFC_99AAC
