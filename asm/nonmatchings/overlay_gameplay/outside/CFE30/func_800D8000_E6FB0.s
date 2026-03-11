nonmatching func_800D8000_E6FB0, 0xB4

glabel func_800D8000_E6FB0
    /* E6FB0 800D8000 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* E6FB4 800D8004 00074400 */  sll        $t0, $a3, 16
    /* E6FB8 800D8008 00084C03 */  sra        $t1, $t0, 16
    /* E6FBC 800D800C AFA5001C */  sw         $a1, 0x1C($sp)
    /* E6FC0 800D8010 AFA60020 */  sw         $a2, 0x20($sp)
    /* E6FC4 800D8014 00057400 */  sll        $t6, $a1, 16
    /* E6FC8 800D8018 0006C400 */  sll        $t8, $a2, 16
    /* E6FCC 800D801C 2401FFFD */  addiu      $at, $zero, -0x3
    /* E6FD0 800D8020 00183403 */  sra        $a2, $t8, 16
    /* E6FD4 800D8024 000E2C03 */  sra        $a1, $t6, 16
    /* E6FD8 800D8028 AFBF0014 */  sw         $ra, 0x14($sp)
    /* E6FDC 800D802C AFA40018 */  sw         $a0, 0x18($sp)
    /* E6FE0 800D8030 1121000C */  beq        $t1, $at, .L800D8064_E7014
    /* E6FE4 800D8034 AFA70024 */   sw        $a3, 0x24($sp)
    /* E6FE8 800D8038 000950C0 */  sll        $t2, $t1, 3
    /* E6FEC 800D803C 01495023 */  subu       $t2, $t2, $t1
    /* E6FF0 800D8040 3C0B8015 */  lui        $t3, %hi(D_80154318)
    /* E6FF4 800D8044 256B4318 */  addiu      $t3, $t3, %lo(D_80154318)
    /* E6FF8 800D8048 000A5080 */  sll        $t2, $t2, 2
    /* E6FFC 800D804C 014B2021 */  addu       $a0, $t2, $t3
    /* E7000 800D8050 908C0000 */  lbu        $t4, 0x0($a0)
    /* E7004 800D8054 24820008 */  addiu      $v0, $a0, 0x8
    /* E7008 800D8058 318D0001 */  andi       $t5, $t4, 0x1
    /* E700C 800D805C 55A00007 */  bnel       $t5, $zero, .L800D807C_E702C
    /* E7010 800D8060 844E0000 */   lh        $t6, 0x0($v0)
  .L800D8064_E7014:
    /* E7014 800D8064 3C048014 */  lui        $a0, %hi(D_801439EC)
    /* E7018 800D8068 0C00731B */  jal        osSyncPrintf
    /* E701C 800D806C 248439EC */   addiu     $a0, $a0, %lo(D_801439EC)
    /* E7020 800D8070 1000000D */  b          .L800D80A8_E7058
    /* E7024 800D8074 8FBF0014 */   lw        $ra, 0x14($sp)
    /* E7028 800D8078 844E0000 */  lh         $t6, 0x0($v0)
  .L800D807C_E702C:
    /* E702C 800D807C 2483000E */  addiu      $v1, $a0, 0xE
    /* E7030 800D8080 A46E0000 */  sh         $t6, 0x0($v1)
    /* E7034 800D8084 844F0002 */  lh         $t7, 0x2($v0)
    /* E7038 800D8088 A46F0002 */  sh         $t7, 0x2($v1)
    /* E703C 800D808C 84580004 */  lh         $t8, 0x4($v0)
    /* E7040 800D8090 A4780004 */  sh         $t8, 0x4($v1)
    /* E7044 800D8094 87B9001A */  lh         $t9, 0x1A($sp)
    /* E7048 800D8098 A4450002 */  sh         $a1, 0x2($v0)
    /* E704C 800D809C A4460004 */  sh         $a2, 0x4($v0)
    /* E7050 800D80A0 A4590000 */  sh         $t9, 0x0($v0)
    /* E7054 800D80A4 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800D80A8_E7058:
    /* E7058 800D80A8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* E705C 800D80AC 03E00008 */  jr         $ra
    /* E7060 800D80B0 00000000 */   nop
endlabel func_800D8000_E6FB0
