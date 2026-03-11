nonmatching func_80076A58_15EB18, 0x1B0

glabel func_80076A58_15EB18
    /* 15EB18 80076A58 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 15EB1C 80076A5C AFB60030 */  sw         $s6, 0x30($sp)
    /* 15EB20 80076A60 3C168006 */  lui        $s6, %hi(D_8005BB2C)
    /* 15EB24 80076A64 26D6BB2C */  addiu      $s6, $s6, %lo(D_8005BB2C)
    /* 15EB28 80076A68 8EC20000 */  lw         $v0, 0x0($s6)
    /* 15EB2C 80076A6C AFB40028 */  sw         $s4, 0x28($sp)
    /* 15EB30 80076A70 AFB20020 */  sw         $s2, 0x20($sp)
    /* 15EB34 80076A74 3C0FBC00 */  lui        $t7, (0xBC001C06 >> 16)
    /* 15EB38 80076A78 244E0008 */  addiu      $t6, $v0, 0x8
    /* 15EB3C 80076A7C 309200FF */  andi       $s2, $a0, 0xFF
    /* 15EB40 80076A80 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 15EB44 80076A84 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 15EB48 80076A88 AFB30024 */  sw         $s3, 0x24($sp)
    /* 15EB4C 80076A8C AFB1001C */  sw         $s1, 0x1C($sp)
    /* 15EB50 80076A90 AFB00018 */  sw         $s0, 0x18($sp)
    /* 15EB54 80076A94 AFA40060 */  sw         $a0, 0x60($sp)
    /* 15EB58 80076A98 AFA50064 */  sw         $a1, 0x64($sp)
    /* 15EB5C 80076A9C AFA60068 */  sw         $a2, 0x68($sp)
    /* 15EB60 80076AA0 AFA7006C */  sw         $a3, 0x6C($sp)
    /* 15EB64 80076AA4 AECE0000 */  sw         $t6, 0x0($s6)
    /* 15EB68 80076AA8 35EF1C06 */  ori        $t7, $t7, (0xBC001C06 & 0xFFFF)
    /* 15EB6C 80076AAC 24540010 */  addiu      $s4, $v0, 0x10
    /* 15EB70 80076AB0 02802025 */  or         $a0, $s4, $zero
    /* 15EB74 80076AB4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 15EB78 80076AB8 0C006EEC */  jal        osVirtualToPhysical
    /* 15EB7C 80076ABC 00408025 */   or        $s0, $v0, $zero
    /* 15EB80 80076AC0 AE020004 */  sw         $v0, 0x4($s0)
    /* 15EB84 80076AC4 00121980 */  sll        $v1, $s2, 6
    /* 15EB88 80076AC8 8EC80000 */  lw         $t0, 0x0($s6)
    /* 15EB8C 80076ACC 24630005 */  addiu      $v1, $v1, 0x5
    /* 15EB90 80076AD0 2401FFFA */  addiu      $at, $zero, -0x6
    /* 15EB94 80076AD4 0061C824 */  and        $t9, $v1, $at
    /* 15EB98 80076AD8 3C010700 */  lui        $at, (0x7000000 >> 16)
    /* 15EB9C 80076ADC 03215021 */  addu       $t2, $t9, $at
    /* 15EBA0 80076AE0 3C180601 */  lui        $t8, (0x6010000 >> 16)
    /* 15EBA4 80076AE4 AD180000 */  sw         $t8, 0x0($t0)
    /* 15EBA8 80076AE8 AD0A0004 */  sw         $t2, 0x4($t0)
    /* 15EBAC 80076AEC 3C118006 */  lui        $s1, %hi(D_8005BB38)
    /* 15EBB0 80076AF0 2631BB38 */  addiu      $s1, $s1, %lo(D_8005BB38)
    /* 15EBB4 80076AF4 02995821 */  addu       $t3, $s4, $t9
    /* 15EBB8 80076AF8 AECB0000 */  sw         $t3, 0x0($s6)
    /* 15EBBC 80076AFC 8E270000 */  lw         $a3, 0x0($s1)
    /* 15EBC0 80076B00 AFB2003C */  sw         $s2, 0x3C($sp)
    /* 15EBC4 80076B04 8FA6006C */  lw         $a2, 0x6C($sp)
    /* 15EBC8 80076B08 8FA50064 */  lw         $a1, 0x64($sp)
    /* 15EBCC 80076B0C 0C01DB02 */  jal        func_80076C08_15ECC8
    /* 15EBD0 80076B10 8FA40068 */   lw        $a0, 0x68($sp)
    /* 15EBD4 80076B14 8EC20000 */  lw         $v0, 0x0($s6)
    /* 15EBD8 80076B18 3C0D0106 */  lui        $t5, (0x1060040 >> 16)
    /* 15EBDC 80076B1C 8FA9003C */  lw         $t1, 0x3C($sp)
    /* 15EBE0 80076B20 244C0008 */  addiu      $t4, $v0, 0x8
    /* 15EBE4 80076B24 AECC0000 */  sw         $t4, 0x0($s6)
    /* 15EBE8 80076B28 35AD0040 */  ori        $t5, $t5, (0x1060040 & 0xFFFF)
    /* 15EBEC 80076B2C AC4D0000 */  sw         $t5, 0x0($v0)
    /* 15EBF0 80076B30 8E2E0000 */  lw         $t6, 0x0($s1)
    /* 15EBF4 80076B34 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 15EBF8 80076B38 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 15EBFC 80076B3C 01C17824 */  and        $t7, $t6, $at
    /* 15EC00 80076B40 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 15EC04 80076B44 8E380000 */  lw         $t8, 0x0($s1)
    /* 15EC08 80076B48 0009A880 */  sll        $s5, $t1, 2
    /* 15EC0C 80076B4C 02A9A823 */  subu       $s5, $s5, $t1
    /* 15EC10 80076B50 27190040 */  addiu      $t9, $t8, 0x40
    /* 15EC14 80076B54 19200015 */  blez       $t1, .L80076BAC_15EC6C
    /* 15EC18 80076B58 AE390000 */   sw        $t9, 0x0($s1)
    /* 15EC1C 80076B5C 8FB00068 */  lw         $s0, 0x68($sp)
    /* 15EC20 80076B60 8FB20064 */  lw         $s2, 0x64($sp)
    /* 15EC24 80076B64 8FB3006C */  lw         $s3, 0x6C($sp)
    /* 15EC28 80076B68 24110006 */  addiu      $s1, $zero, 0x6
    /* 15EC2C 80076B6C 0015A840 */  sll        $s5, $s5, 1
    /* 15EC30 80076B70 2610000C */  addiu      $s0, $s0, 0xC
    /* 15EC34 80076B74 26520006 */  addiu      $s2, $s2, 0x6
    /* 15EC38 80076B78 26730006 */  addiu      $s3, $s3, 0x6
  .L80076B7C_15EC3C:
    /* 15EC3C 80076B7C 02002025 */  or         $a0, $s0, $zero
    /* 15EC40 80076B80 02402825 */  or         $a1, $s2, $zero
    /* 15EC44 80076B84 02603025 */  or         $a2, $s3, $zero
    /* 15EC48 80076B88 0C01DC04 */  jal        func_80077010_15F0D0
    /* 15EC4C 80076B8C 02803825 */   or        $a3, $s4, $zero
    /* 15EC50 80076B90 26310006 */  addiu      $s1, $s1, 0x6
    /* 15EC54 80076B94 02B1082A */  slt        $at, $s5, $s1
    /* 15EC58 80076B98 2610000C */  addiu      $s0, $s0, 0xC
    /* 15EC5C 80076B9C 26520006 */  addiu      $s2, $s2, 0x6
    /* 15EC60 80076BA0 26730006 */  addiu      $s3, $s3, 0x6
    /* 15EC64 80076BA4 1020FFF5 */  beqz       $at, .L80076B7C_15EC3C
    /* 15EC68 80076BA8 26940040 */   addiu     $s4, $s4, 0x40
  .L80076BAC_15EC6C:
    /* 15EC6C 80076BAC 8EC20000 */  lw         $v0, 0x0($s6)
    /* 15EC70 80076BB0 3C0B0600 */  lui        $t3, (0x6000000 >> 16)
    /* 15EC74 80076BB4 3C0EBD00 */  lui        $t6, (0xBD000000 >> 16)
    /* 15EC78 80076BB8 244A0008 */  addiu      $t2, $v0, 0x8
    /* 15EC7C 80076BBC AECA0000 */  sw         $t2, 0x0($s6)
    /* 15EC80 80076BC0 AC4B0000 */  sw         $t3, 0x0($v0)
    /* 15EC84 80076BC4 8FAC0070 */  lw         $t4, 0x70($sp)
    /* 15EC88 80076BC8 AC4C0004 */  sw         $t4, 0x4($v0)
    /* 15EC8C 80076BCC 8EC20000 */  lw         $v0, 0x0($s6)
    /* 15EC90 80076BD0 244D0008 */  addiu      $t5, $v0, 0x8
    /* 15EC94 80076BD4 AECD0000 */  sw         $t5, 0x0($s6)
    /* 15EC98 80076BD8 AC400004 */  sw         $zero, 0x4($v0)
    /* 15EC9C 80076BDC AC4E0000 */  sw         $t6, 0x0($v0)
    /* 15ECA0 80076BE0 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 15ECA4 80076BE4 8FB60030 */  lw         $s6, 0x30($sp)
    /* 15ECA8 80076BE8 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 15ECAC 80076BEC 8FB40028 */  lw         $s4, 0x28($sp)
    /* 15ECB0 80076BF0 8FB30024 */  lw         $s3, 0x24($sp)
    /* 15ECB4 80076BF4 8FB20020 */  lw         $s2, 0x20($sp)
    /* 15ECB8 80076BF8 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 15ECBC 80076BFC 8FB00018 */  lw         $s0, 0x18($sp)
    /* 15ECC0 80076C00 03E00008 */  jr         $ra
    /* 15ECC4 80076C04 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_80076A58_15EB18
