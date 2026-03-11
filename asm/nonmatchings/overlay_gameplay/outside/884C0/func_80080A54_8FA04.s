nonmatching func_80080A54_8FA04, 0xF0

glabel func_80080A54_8FA04
    /* 8FA04 80080A54 308E00FF */  andi       $t6, $a0, 0xFF
    /* 8FA08 80080A58 000E5880 */  sll        $t3, $t6, 2
    /* 8FA0C 80080A5C 016E5821 */  addu       $t3, $t3, $t6
    /* 8FA10 80080A60 3C0C8005 */  lui        $t4, %hi(alienInstances)
    /* 8FA14 80080A64 000B5900 */  sll        $t3, $t3, 4
    /* 8FA18 80080A68 258C8198 */  addiu      $t4, $t4, %lo(alienInstances)
    /* 8FA1C 80080A6C 016C1821 */  addu       $v1, $t3, $t4
    /* 8FA20 80080A70 9062001A */  lbu        $v0, 0x1A($v1)
    /* 8FA24 80080A74 846E0000 */  lh         $t6, 0x0($v1)
    /* 8FA28 80080A78 00057C00 */  sll        $t7, $a1, 16
    /* 8FA2C 80080A7C 000FC403 */  sra        $t8, $t7, 16
    /* 8FA30 80080A80 846F0004 */  lh         $t7, 0x4($v1)
    /* 8FA34 80080A84 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 8FA38 80080A88 00026880 */  sll        $t5, $v0, 2
    /* 8FA3C 80080A8C 0006CC00 */  sll        $t9, $a2, 16
    /* 8FA40 80080A90 01A26823 */  subu       $t5, $t5, $v0
    /* 8FA44 80080A94 00195403 */  sra        $t2, $t9, 16
    /* 8FA48 80080A98 000D6880 */  sll        $t5, $t5, 2
    /* 8FA4C 80080A9C 01A26821 */  addu       $t5, $t5, $v0
    /* 8FA50 80080AA0 000D68C0 */  sll        $t5, $t5, 3
    /* 8FA54 80080AA4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 8FA58 80080AA8 3C078025 */  lui        $a3, %hi(D_802566C2)
    /* 8FA5C 80080AAC 00ED3821 */  addu       $a3, $a3, $t5
    /* 8FA60 80080AB0 84E766C2 */  lh         $a3, %lo(D_802566C2)($a3)
    /* 8FA64 80080AB4 030E4023 */  subu       $t0, $t8, $t6
    /* 8FA68 80080AB8 44889000 */  mtc1       $t0, $f18
    /* 8FA6C 80080ABC 014F4823 */  subu       $t1, $t2, $t7
    /* 8FA70 80080AC0 44898000 */  mtc1       $t1, $f16
    /* 8FA74 80080AC4 46809320 */  cvt.s.w    $f12, $f18
    /* 8FA78 80080AC8 AFA40030 */  sw         $a0, 0x30($sp)
    /* 8FA7C 80080ACC AFA50034 */  sw         $a1, 0x34($sp)
    /* 8FA80 80080AD0 AFA60038 */  sw         $a2, 0x38($sp)
    /* 8FA84 80080AD4 AFA3001C */  sw         $v1, 0x1C($sp)
    /* 8FA88 80080AD8 468083A0 */  cvt.s.w    $f14, $f16
    /* 8FA8C 80080ADC 0C000E09 */  jal        func_80003824_4424
    /* 8FA90 80080AE0 A7A70022 */   sh        $a3, 0x22($sp)
    /* 8FA94 80080AE4 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 8FA98 80080AE8 87A70022 */  lh         $a3, 0x22($sp)
    /* 8FA9C 80080AEC 84640006 */  lh         $a0, 0x6($v1)
    /* 8FAA0 80080AF0 00075023 */  negu       $t2, $a3
    /* 8FAA4 80080AF4 00442823 */  subu       $a1, $v0, $a0
    /* 8FAA8 80080AF8 0005C400 */  sll        $t8, $a1, 16
    /* 8FAAC 80080AFC 00182C03 */  sra        $a1, $t8, 16
    /* 8FAB0 80080B00 0145082A */  slt        $at, $t2, $a1
    /* 8FAB4 80080B04 14200004 */  bnez       $at, .L80080B18_8FAC8
    /* 8FAB8 80080B08 24020001 */   addiu     $v0, $zero, 0x1
    /* 8FABC 80080B0C 00875823 */  subu       $t3, $a0, $a3
    /* 8FAC0 80080B10 10000008 */  b          .L80080B34_8FAE4
    /* 8FAC4 80080B14 A46B0006 */   sh        $t3, 0x6($v1)
  .L80080B18_8FAC8:
    /* 8FAC8 80080B18 00E5082A */  slt        $at, $a3, $a1
    /* 8FACC 80080B1C 10200003 */  beqz       $at, .L80080B2C_8FADC
    /* 8FAD0 80080B20 00876021 */   addu      $t4, $a0, $a3
    /* 8FAD4 80080B24 10000003 */  b          .L80080B34_8FAE4
    /* 8FAD8 80080B28 A46C0006 */   sh        $t4, 0x6($v1)
  .L80080B2C_8FADC:
    /* 8FADC 80080B2C 10000001 */  b          .L80080B34_8FAE4
    /* 8FAE0 80080B30 00001025 */   or        $v0, $zero, $zero
  .L80080B34_8FAE4:
    /* 8FAE4 80080B34 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 8FAE8 80080B38 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 8FAEC 80080B3C 03E00008 */  jr         $ra
    /* 8FAF0 80080B40 00000000 */   nop
endlabel func_80080A54_8FA04
