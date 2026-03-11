nonmatching func_80090A6C_9FA1C, 0x1A8

glabel func_80090A6C_9FA1C
    /* 9FA1C 80090A6C 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 9FA20 80090A70 3C188014 */  lui        $t8, %hi(D_8013C9EC)
    /* 9FA24 80090A74 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 9FA28 80090A78 AFA40038 */  sw         $a0, 0x38($sp)
    /* 9FA2C 80090A7C AFA5003C */  sw         $a1, 0x3C($sp)
    /* 9FA30 80090A80 AFA60040 */  sw         $a2, 0x40($sp)
    /* 9FA34 80090A84 2718C9EC */  addiu      $t8, $t8, %lo(D_8013C9EC)
    /* 9FA38 80090A88 8F010000 */  lw         $at, 0x0($t8)
    /* 9FA3C 80090A8C 8F0A0004 */  lw         $t2, 0x4($t8)
    /* 9FA40 80090A90 27AF0028 */  addiu      $t7, $sp, 0x28
    /* 9FA44 80090A94 308E00FF */  andi       $t6, $a0, 0xFF
    /* 9FA48 80090A98 ADE10000 */  sw         $at, 0x0($t7)
    /* 9FA4C 80090A9C ADEA0004 */  sw         $t2, 0x4($t7)
    /* 9FA50 80090AA0 8F0A000C */  lw         $t2, 0xC($t8)
    /* 9FA54 80090AA4 8F010008 */  lw         $at, 0x8($t8)
    /* 9FA58 80090AA8 000E5880 */  sll        $t3, $t6, 2
    /* 9FA5C 80090AAC 016E5821 */  addu       $t3, $t3, $t6
    /* 9FA60 80090AB0 3C0C8005 */  lui        $t4, %hi(alienInstances)
    /* 9FA64 80090AB4 258C8198 */  addiu      $t4, $t4, %lo(alienInstances)
    /* 9FA68 80090AB8 000B5900 */  sll        $t3, $t3, 4
    /* 9FA6C 80090ABC 016C3821 */  addu       $a3, $t3, $t4
    /* 9FA70 80090AC0 ADEA000C */  sw         $t2, 0xC($t7)
    /* 9FA74 80090AC4 ADE10008 */  sw         $at, 0x8($t7)
    /* 9FA78 80090AC8 84E2002A */  lh         $v0, 0x2A($a3)
    /* 9FA7C 80090ACC 34088001 */  ori        $t0, $zero, 0x8001
    /* 9FA80 80090AD0 84E3000E */  lh         $v1, 0xE($a3)
    /* 9FA84 80090AD4 0048082A */  slt        $at, $v0, $t0
    /* 9FA88 80090AD8 14200002 */  bnez       $at, .L80090AE4_9FA94
    /* 9FA8C 80090ADC 340DFFFF */   ori       $t5, $zero, 0xFFFF
    /* 9FA90 80090AE0 01A21023 */  subu       $v0, $t5, $v0
  .L80090AE4_9FA94:
    /* 9FA94 80090AE4 0068082A */  slt        $at, $v1, $t0
    /* 9FA98 80090AE8 14200002 */  bnez       $at, .L80090AF4_9FAA4
    /* 9FA9C 80090AEC 340EFFFF */   ori       $t6, $zero, 0xFFFF
    /* 9FAA0 80090AF0 01C31823 */  subu       $v1, $t6, $v1
  .L80090AF4_9FAA4:
    /* 9FAA4 80090AF4 84E90012 */  lh         $t1, 0x12($a3)
    /* 9FAA8 80090AF8 247903E8 */  addiu      $t9, $v1, 0x3E8
    /* 9FAAC 80090AFC 0059082A */  slt        $at, $v0, $t9
    /* 9FAB0 80090B00 5D200007 */  bgtzl      $t1, .L80090B20_9FAD0
    /* 9FAB4 80090B04 8CF80020 */   lw        $t8, 0x20($a3)
    /* 9FAB8 80090B08 10200004 */  beqz       $at, .L80090B1C_9FACC
    /* 9FABC 80090B0C 246FFC18 */   addiu     $t7, $v1, -0x3E8
    /* 9FAC0 80090B10 01E2082A */  slt        $at, $t7, $v0
    /* 9FAC4 80090B14 5420003C */  bnel       $at, $zero, .L80090C08_9FBB8
    /* 9FAC8 80090B18 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80090B1C_9FACC:
    /* 9FACC 80090B1C 8CF80020 */  lw         $t8, 0x20($a3)
  .L80090B20_9FAD0:
    /* 9FAD0 80090B20 330A01A0 */  andi       $t2, $t8, 0x1A0
    /* 9FAD4 80090B24 51400038 */  beql       $t2, $zero, .L80090C08_9FBB8
    /* 9FAD8 80090B28 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 9FADC 80090B2C 0C020797 */  jal        func_80081E5C_90E0C
    /* 9FAE0 80090B30 87A4003E */   lh        $a0, 0x3E($sp)
    /* 9FAE4 80090B34 87AB003E */  lh         $t3, 0x3E($sp)
    /* 9FAE8 80090B38 3C0D8015 */  lui        $t5, %hi(D_8014DD5E)
    /* 9FAEC 80090B3C 000B6100 */  sll        $t4, $t3, 4
    /* 9FAF0 80090B40 01AC6821 */  addu       $t5, $t5, $t4
    /* 9FAF4 80090B44 85ADDD5E */  lh         $t5, %lo(D_8014DD5E)($t5)
    /* 9FAF8 80090B48 55A0002F */  bnel       $t5, $zero, .L80090C08_9FBB8
    /* 9FAFC 80090B4C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 9FB00 80090B50 0C000E38 */  jal        func_800038E0_44E0
    /* 9FB04 80090B54 00000000 */   nop
    /* 9FB08 80090B58 97A30042 */  lhu        $v1, 0x42($sp)
    /* 9FB0C 80090B5C 00430019 */  multu      $v0, $v1
    /* 9FB10 80090B60 AFA3001C */  sw         $v1, 0x1C($sp)
    /* 9FB14 80090B64 04610003 */  bgez       $v1, .L80090B74_9FB24
    /* 9FB18 80090B68 00032043 */   sra       $a0, $v1, 1
    /* 9FB1C 80090B6C 24610001 */  addiu      $at, $v1, 0x1
    /* 9FB20 80090B70 00012043 */  sra        $a0, $at, 1
  .L80090B74_9FB24:
    /* 9FB24 80090B74 AFA40018 */  sw         $a0, 0x18($sp)
    /* 9FB28 80090B78 00007012 */  mflo       $t6
    /* 9FB2C 80090B7C 05C10004 */  bgez       $t6, .L80090B90_9FB40
    /* 9FB30 80090B80 000E4C03 */   sra       $t1, $t6, 16
    /* 9FB34 80090B84 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* 9FB38 80090B88 002E0821 */  addu       $at, $at, $t6
    /* 9FB3C 80090B8C 00014C03 */  sra        $t1, $at, 16
  .L80090B90_9FB40:
    /* 9FB40 80090B90 0124C023 */  subu       $t8, $t1, $a0
    /* 9FB44 80090B94 0C000E38 */  jal        func_800038E0_44E0
    /* 9FB48 80090B98 A7B8002E */   sh        $t8, 0x2E($sp)
    /* 9FB4C 80090B9C 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 9FB50 80090BA0 8FAE0018 */  lw         $t6, 0x18($sp)
    /* 9FB54 80090BA4 00430019 */  multu      $v0, $v1
    /* 9FB58 80090BA8 00005012 */  mflo       $t2
    /* 9FB5C 80090BAC 05410004 */  bgez       $t2, .L80090BC0_9FB70
    /* 9FB60 80090BB0 000A5C03 */   sra       $t3, $t2, 16
    /* 9FB64 80090BB4 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* 9FB68 80090BB8 002A0821 */  addu       $at, $at, $t2
    /* 9FB6C 80090BBC 00015C03 */  sra        $t3, $at, 16
  .L80090BC0_9FB70:
    /* 9FB70 80090BC0 016E4823 */  subu       $t1, $t3, $t6
    /* 9FB74 80090BC4 0C000E38 */  jal        func_800038E0_44E0
    /* 9FB78 80090BC8 A7A90030 */   sh        $t1, 0x30($sp)
    /* 9FB7C 80090BCC 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 9FB80 80090BD0 8FAB0018 */  lw         $t3, 0x18($sp)
    /* 9FB84 80090BD4 93A4003F */  lbu        $a0, 0x3F($sp)
    /* 9FB88 80090BD8 00430019 */  multu      $v0, $v1
    /* 9FB8C 80090BDC 27A50028 */  addiu      $a1, $sp, 0x28
    /* 9FB90 80090BE0 0000C812 */  mflo       $t9
    /* 9FB94 80090BE4 07210004 */  bgez       $t9, .L80090BF8_9FBA8
    /* 9FB98 80090BE8 00197C03 */   sra       $t7, $t9, 16
    /* 9FB9C 80090BEC 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* 9FBA0 80090BF0 00390821 */  addu       $at, $at, $t9
    /* 9FBA4 80090BF4 00017C03 */  sra        $t7, $at, 16
  .L80090BF8_9FBA8:
    /* 9FBA8 80090BF8 01EB6023 */  subu       $t4, $t7, $t3
    /* 9FBAC 80090BFC 0C020721 */  jal        func_80081C84_90C34
    /* 9FBB0 80090C00 A7AC0032 */   sh        $t4, 0x32($sp)
    /* 9FBB4 80090C04 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80090C08_9FBB8:
    /* 9FBB8 80090C08 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 9FBBC 80090C0C 03E00008 */  jr         $ra
    /* 9FBC0 80090C10 00000000 */   nop
endlabel func_80090A6C_9FA1C
