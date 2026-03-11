nonmatching func_802E4918_328A68, 0x1B4

glabel func_802E4918_328A68
    /* 328A68 802E4918 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 328A6C 802E491C AFA40048 */  sw         $a0, 0x48($sp)
    /* 328A70 802E4920 93AE004B */  lbu        $t6, 0x4B($sp)
    /* 328A74 802E4924 24050050 */  addiu      $a1, $zero, 0x50
    /* 328A78 802E4928 3C038005 */  lui        $v1, %hi(alienInstances)
    /* 328A7C 802E492C 01C50019 */  multu      $t6, $a1
    /* 328A80 802E4930 24638198 */  addiu      $v1, $v1, %lo(alienInstances)
    /* 328A84 802E4934 AFB00028 */  sw         $s0, 0x28($sp)
    /* 328A88 802E4938 3C08802E */  lui        $t0, %hi(D_802E7A10)
    /* 328A8C 802E493C AFBF002C */  sw         $ra, 0x2C($sp)
    /* 328A90 802E4940 25087A10 */  addiu      $t0, $t0, %lo(D_802E7A10)
    /* 328A94 802E4944 27B90038 */  addiu      $t9, $sp, 0x38
    /* 328A98 802E4948 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 328A9C 802E494C 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 328AA0 802E4950 00007812 */  mflo       $t7
    /* 328AA4 802E4954 006F8021 */  addu       $s0, $v1, $t7
    /* 328AA8 802E4958 92180025 */  lbu        $t8, 0x25($s0)
    /* 328AAC 802E495C A3B80047 */  sb         $t8, 0x47($sp)
    /* 328AB0 802E4960 8D010000 */  lw         $at, 0x0($t0)
    /* 328AB4 802E4964 AF210000 */  sw         $at, 0x0($t9)
    /* 328AB8 802E4968 95010004 */  lhu        $at, 0x4($t0)
    /* 328ABC 802E496C A7210004 */  sh         $at, 0x4($t9)
    /* 328AC0 802E4970 93AC0047 */  lbu        $t4, 0x47($sp)
    /* 328AC4 802E4974 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 328AC8 802E4978 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 328ACC 802E497C 01850019 */  multu      $t4, $a1
    /* 328AD0 802E4980 000A4AC0 */  sll        $t1, $t2, 11
    /* 328AD4 802E4984 340CFFFF */  ori        $t4, $zero, 0xFFFF
    /* 328AD8 802E4988 00006812 */  mflo       $t5
    /* 328ADC 802E498C 006D7021 */  addu       $t6, $v1, $t5
    /* 328AE0 802E4990 91CF0025 */  lbu        $t7, 0x25($t6)
    /* 328AE4 802E4994 240D00F0 */  addiu      $t5, $zero, 0xF0
    /* 328AE8 802E4998 01E50019 */  multu      $t7, $a1
    /* 328AEC 802E499C 0000C012 */  mflo       $t8
    /* 328AF0 802E49A0 00781021 */  addu       $v0, $v1, $t8
    /* 328AF4 802E49A4 0520000F */  bltz       $t1, .L802E49E4_328B34
    /* 328AF8 802E49A8 00000000 */   nop
    /* 328AFC 802E49AC 8C590020 */  lw         $t9, 0x20($v0)
    /* 328B00 802E49B0 A04B0001 */  sb         $t3, 0x1($v0)
    /* 328B04 802E49B4 240E0078 */  addiu      $t6, $zero, 0x78
    /* 328B08 802E49B8 03214024 */  and        $t0, $t9, $at
    /* 328B0C 802E49BC AC480020 */  sw         $t0, 0x20($v0)
    /* 328B10 802E49C0 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 328B14 802E49C4 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 328B18 802E49C8 AFAD0014 */  sw         $t5, 0x14($sp)
    /* 328B1C 802E49CC AFAC0010 */  sw         $t4, 0x10($sp)
    /* 328B20 802E49D0 86060004 */  lh         $a2, 0x4($s0)
    /* 328B24 802E49D4 86050002 */  lh         $a1, 0x2($s0)
    /* 328B28 802E49D8 0C030EF6 */  jal        func_800C3BD8_D2B88
    /* 328B2C 802E49DC 86040000 */   lh        $a0, 0x0($s0)
    /* 328B30 802E49E0 A6020038 */  sh         $v0, 0x38($s0)
  .L802E49E4_328B34:
    /* 328B34 802E49E4 0C0B7FC1 */  jal        func_802DFF04_324054
    /* 328B38 802E49E8 93A40047 */   lbu       $a0, 0x47($sp)
    /* 328B3C 802E49EC 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 328B40 802E49F0 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 328B44 802E49F4 0002C100 */  sll        $t8, $v0, 4
    /* 328B48 802E49F8 00785021 */  addu       $t2, $v1, $t8
    /* 328B4C 802E49FC 8146000C */  lb         $a2, 0xC($t2)
    /* 328B50 802E4A00 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 328B54 802E4A04 00022C00 */  sll        $a1, $v0, 16
    /* 328B58 802E4A08 00064900 */  sll        $t1, $a2, 4
    /* 328B5C 802E4A0C 0069C821 */  addu       $t9, $v1, $t1
    /* 328B60 802E4A10 8326000D */  lb         $a2, 0xD($t9)
    /* 328B64 802E4A14 00057C03 */  sra        $t7, $a1, 16
    /* 328B68 802E4A18 318D2000 */  andi       $t5, $t4, 0x2000
    /* 328B6C 802E4A1C 00064100 */  sll        $t0, $a2, 4
    /* 328B70 802E4A20 00685821 */  addu       $t3, $v1, $t0
    /* 328B74 802E4A24 01E02825 */  or         $a1, $t7, $zero
    /* 328B78 802E4A28 15A0000A */  bnez       $t5, .L802E4A54_328BA4
    /* 328B7C 802E4A2C 8166000D */   lb        $a2, 0xD($t3)
    /* 328B80 802E4A30 860E002C */  lh         $t6, 0x2C($s0)
    /* 328B84 802E4A34 93A4004B */  lbu        $a0, 0x4B($sp)
    /* 328B88 802E4A38 27A70038 */  addiu      $a3, $sp, 0x38
    /* 328B8C 802E4A3C 29C10003 */  slti       $at, $t6, 0x3
    /* 328B90 802E4A40 54200005 */  bnel       $at, $zero, .L802E4A58_328BA8
    /* 328B94 802E4A44 00062C00 */   sll       $a1, $a2, 16
    /* 328B98 802E4A48 0C0B8D61 */  jal        func_802E3584_3276D4
    /* 328B9C 802E4A4C A7A60034 */   sh        $a2, 0x34($sp)
    /* 328BA0 802E4A50 87A60034 */  lh         $a2, 0x34($sp)
  .L802E4A54_328BA4:
    /* 328BA4 802E4A54 00062C00 */  sll        $a1, $a2, 16
  .L802E4A58_328BA8:
    /* 328BA8 802E4A58 00057C03 */  sra        $t7, $a1, 16
    /* 328BAC 802E4A5C 01E02825 */  or         $a1, $t7, $zero
    /* 328BB0 802E4A60 0C0B90FF */  jal        func_802E43FC_32854C
    /* 328BB4 802E4A64 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 328BB8 802E4A68 8E180020 */  lw         $t8, 0x20($s0)
    /* 328BBC 802E4A6C 3C01802E */  lui        $at, %hi(D_802E7C50)
    /* 328BC0 802E4A70 2406001F */  addiu      $a2, $zero, 0x1F
    /* 328BC4 802E4A74 330A2000 */  andi       $t2, $t8, 0x2000
    /* 328BC8 802E4A78 51400008 */  beql       $t2, $zero, .L802E4A9C_328BEC
    /* 328BCC 802E4A7C 860C002C */   lh        $t4, 0x2C($s0)
    /* 328BD0 802E4A80 8609000A */  lh         $t1, 0xA($s0)
    /* 328BD4 802E4A84 86080008 */  lh         $t0, 0x8($s0)
    /* 328BD8 802E4A88 25390BB8 */  addiu      $t9, $t1, 0xBB8
    /* 328BDC 802E4A8C 250B03E8 */  addiu      $t3, $t0, 0x3E8
    /* 328BE0 802E4A90 A619000A */  sh         $t9, 0xA($s0)
    /* 328BE4 802E4A94 A60B0008 */  sh         $t3, 0x8($s0)
    /* 328BE8 802E4A98 860C002C */  lh         $t4, 0x2C($s0)
  .L802E4A9C_328BEC:
    /* 328BEC 802E4A9C 24020002 */  addiu      $v0, $zero, 0x2
    /* 328BF0 802E4AA0 00402825 */  or         $a1, $v0, $zero
    /* 328BF4 802E4AA4 544C0005 */  bnel       $v0, $t4, .L802E4ABC_328C0C
    /* 328BF8 802E4AA8 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 328BFC 802E4AAC AC227C50 */  sw         $v0, %lo(D_802E7C50)($at)
    /* 328C00 802E4AB0 0C0B91AE */  jal        func_802E46B8_328808
    /* 328C04 802E4AB4 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 328C08 802E4AB8 8FBF002C */  lw         $ra, 0x2C($sp)
  .L802E4ABC_328C0C:
    /* 328C0C 802E4ABC 8FB00028 */  lw         $s0, 0x28($sp)
    /* 328C10 802E4AC0 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 328C14 802E4AC4 03E00008 */  jr         $ra
    /* 328C18 802E4AC8 00000000 */   nop
endlabel func_802E4918_328A68
