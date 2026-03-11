nonmatching func_800ACC5C_BBC0C, 0x1E4

glabel func_800ACC5C_BBC0C
    /* BBC0C 800ACC5C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* BBC10 800ACC60 AFB00018 */  sw         $s0, 0x18($sp)
    /* BBC14 800ACC64 309000FF */  andi       $s0, $a0, 0xFF
    /* BBC18 800ACC68 00107080 */  sll        $t6, $s0, 2
    /* BBC1C 800ACC6C 01D07021 */  addu       $t6, $t6, $s0
    /* BBC20 800ACC70 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* BBC24 800ACC74 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* BBC28 800ACC78 000E7100 */  sll        $t6, $t6, 4
    /* BBC2C 800ACC7C 01CF3021 */  addu       $a2, $t6, $t7
    /* BBC30 800ACC80 84D90000 */  lh         $t9, 0x0($a2)
    /* BBC34 800ACC84 84C9002E */  lh         $t1, 0x2E($a2)
    /* BBC38 800ACC88 84D80048 */  lh         $t8, 0x48($a2)
    /* BBC3C 800ACC8C 00194203 */  sra        $t0, $t9, 8
    /* BBC40 800ACC90 00095203 */  sra        $t2, $t1, 8
    /* BBC44 800ACC94 AFBF001C */  sw         $ra, 0x1C($sp)
    /* BBC48 800ACC98 AFA40028 */  sw         $a0, 0x28($sp)
    /* BBC4C 800ACC9C 150A0006 */  bne        $t0, $t2, .L800ACCB8_BBC68
    /* BBC50 800ACCA0 A4D80012 */   sh        $t8, 0x12($a2)
    /* BBC54 800ACCA4 84CB0004 */  lh         $t3, 0x4($a2)
    /* BBC58 800ACCA8 84CD0032 */  lh         $t5, 0x32($a2)
    /* BBC5C 800ACCAC 000B6203 */  sra        $t4, $t3, 8
    /* BBC60 800ACCB0 000D7203 */  sra        $t6, $t5, 8
    /* BBC64 800ACCB4 118E0002 */  beq        $t4, $t6, .L800ACCC0_BBC70
  .L800ACCB8_BBC68:
    /* BBC68 800ACCB8 240F0001 */   addiu     $t7, $zero, 0x1
    /* BBC6C 800ACCBC AFAF0024 */  sw         $t7, 0x24($sp)
  .L800ACCC0_BBC70:
    /* BBC70 800ACCC0 90D80024 */  lbu        $t8, 0x24($a2)
    /* BBC74 800ACCC4 320400FF */  andi       $a0, $s0, 0xFF
    /* BBC78 800ACCC8 53000008 */  beql       $t8, $zero, .L800ACCEC_BBC9C
    /* BBC7C 800ACCCC 8CC20020 */   lw        $v0, 0x20($a2)
    /* BBC80 800ACCD0 0C02AF32 */  jal        func_800ABCC8_BAC78
    /* BBC84 800ACCD4 AFA60020 */   sw        $a2, 0x20($sp)
    /* BBC88 800ACCD8 1040002A */  beqz       $v0, .L800ACD84_BBD34
    /* BBC8C 800ACCDC 8FA60020 */   lw        $a2, 0x20($sp)
    /* BBC90 800ACCE0 10000053 */  b          .L800ACE30_BBDE0
    /* BBC94 800ACCE4 8FBF001C */   lw        $ra, 0x1C($sp)
    /* BBC98 800ACCE8 8CC20020 */  lw         $v0, 0x20($a2)
  .L800ACCEC_BBC9C:
    /* BBC9C 800ACCEC 30591000 */  andi       $t9, $v0, 0x1000
    /* BBCA0 800ACCF0 17200024 */  bnez       $t9, .L800ACD84_BBD34
    /* BBCA4 800ACCF4 30492000 */   andi      $t1, $v0, 0x2000
    /* BBCA8 800ACCF8 5120001B */  beql       $t1, $zero, .L800ACD68_BBD18
    /* BBCAC 800ACCFC 8FB80024 */   lw        $t8, 0x24($sp)
    /* BBCB0 800ACD00 90C40046 */  lbu        $a0, 0x46($a2)
    /* BBCB4 800ACD04 0C045D19 */  jal        func_80117464_126414
    /* BBCB8 800ACD08 AFA60020 */   sw        $a2, 0x20($sp)
    /* BBCBC 800ACD0C 14400015 */  bnez       $v0, .L800ACD64_BBD14
    /* BBCC0 800ACD10 8FA60020 */   lw        $a2, 0x20($sp)
    /* BBCC4 800ACD14 90C40046 */  lbu        $a0, 0x46($a2)
    /* BBCC8 800ACD18 02002825 */  or         $a1, $s0, $zero
    /* BBCCC 800ACD1C AFA60020 */  sw         $a2, 0x20($sp)
    /* BBCD0 800ACD20 0C046D61 */  jal        func_8011B584_12A534
    /* BBCD4 800ACD24 A4C40038 */   sh        $a0, 0x38($a2)
    /* BBCD8 800ACD28 8FA60020 */  lw         $a2, 0x20($sp)
    /* BBCDC 800ACD2C 3C0B8005 */  lui        $t3, %hi(buildingInstances)
    /* BBCE0 800ACD30 256B0AD8 */  addiu      $t3, $t3, %lo(buildingInstances)
    /* BBCE4 800ACD34 90C80046 */  lbu        $t0, 0x46($a2)
    /* BBCE8 800ACD38 00085080 */  sll        $t2, $t0, 2
    /* BBCEC 800ACD3C 01485023 */  subu       $t2, $t2, $t0
    /* BBCF0 800ACD40 000A50C0 */  sll        $t2, $t2, 3
    /* BBCF4 800ACD44 014B1821 */  addu       $v1, $t2, $t3
    /* BBCF8 800ACD48 8C640008 */  lw         $a0, 0x8($v1)
    /* BBCFC 800ACD4C 00042B02 */  srl        $a1, $a0, 12
    /* BBD00 800ACD50 34AD8000 */  ori        $t5, $a1, 0x8000
    /* BBD04 800ACD54 01A56026 */  xor        $t4, $t5, $a1
    /* BBD08 800ACD58 000C7300 */  sll        $t6, $t4, 12
    /* BBD0C 800ACD5C 01C47826 */  xor        $t7, $t6, $a0
    /* BBD10 800ACD60 AC6F0008 */  sw         $t7, 0x8($v1)
  .L800ACD64_BBD14:
    /* BBD14 800ACD64 8FB80024 */  lw         $t8, 0x24($sp)
  .L800ACD68_BBD18:
    /* BBD18 800ACD68 A4C00012 */  sh         $zero, 0x12($a2)
    /* BBD1C 800ACD6C 53000030 */  beql       $t8, $zero, .L800ACE30_BBDE0
    /* BBD20 800ACD70 8FBF001C */   lw        $ra, 0x1C($sp)
    /* BBD24 800ACD74 0C02B066 */  jal        func_800AC198_BB148
    /* BBD28 800ACD78 320400FF */   andi      $a0, $s0, 0xFF
    /* BBD2C 800ACD7C 1000002C */  b          .L800ACE30_BBDE0
    /* BBD30 800ACD80 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800ACD84_BBD34:
    /* BBD34 800ACD84 320400FF */  andi       $a0, $s0, 0xFF
    /* BBD38 800ACD88 0C02B28F */  jal        func_800ACA3C_BB9EC
    /* BBD3C 800ACD8C AFA60020 */   sw        $a2, 0x20($sp)
    /* BBD40 800ACD90 10400026 */  beqz       $v0, .L800ACE2C_BBDDC
    /* BBD44 800ACD94 8FA60020 */   lw        $a2, 0x20($sp)
    /* BBD48 800ACD98 8CD90020 */  lw         $t9, 0x20($a2)
    /* BBD4C 800ACD9C 320400FF */  andi       $a0, $s0, 0xFF
    /* BBD50 800ACDA0 24050050 */  addiu      $a1, $zero, 0x50
    /* BBD54 800ACDA4 33290100 */  andi       $t1, $t9, 0x100
    /* BBD58 800ACDA8 51200015 */  beql       $t1, $zero, .L800ACE00_BBDB0
    /* BBD5C 800ACDAC 320400FF */   andi      $a0, $s0, 0xFF
    /* BBD60 800ACDB0 0C020210 */  jal        func_80080840_8F7F0
    /* BBD64 800ACDB4 AFA60020 */   sw        $a2, 0x20($sp)
    /* BBD68 800ACDB8 10400010 */  beqz       $v0, .L800ACDFC_BBDAC
    /* BBD6C 800ACDBC 8FA60020 */   lw        $a2, 0x20($sp)
    /* BBD70 800ACDC0 8CC80020 */  lw         $t0, 0x20($a2)
    /* BBD74 800ACDC4 3C010800 */  lui        $at, (0x80000A0 >> 16)
    /* BBD78 800ACDC8 342100A0 */  ori        $at, $at, (0x80000A0 & 0xFFFF)
    /* BBD7C 800ACDCC 01015024 */  and        $t2, $t0, $at
    /* BBD80 800ACDD0 1540000A */  bnez       $t2, .L800ACDFC_BBDAC
    /* BBD84 800ACDD4 02002825 */   or        $a1, $s0, $zero
    /* BBD88 800ACDD8 84C40038 */  lh         $a0, 0x38($a2)
    /* BBD8C 800ACDDC 0C046D61 */  jal        func_8011B584_12A534
    /* BBD90 800ACDE0 AFA60020 */   sw        $a2, 0x20($sp)
    /* BBD94 800ACDE4 14400005 */  bnez       $v0, .L800ACDFC_BBDAC
    /* BBD98 800ACDE8 8FA60020 */   lw        $a2, 0x20($sp)
    /* BBD9C 800ACDEC 8CCB0020 */  lw         $t3, 0x20($a2)
    /* BBDA0 800ACDF0 2401FE5F */  addiu      $at, $zero, -0x1A1
    /* BBDA4 800ACDF4 01616824 */  and        $t5, $t3, $at
    /* BBDA8 800ACDF8 ACCD0020 */  sw         $t5, 0x20($a2)
  .L800ACDFC_BBDAC:
    /* BBDAC 800ACDFC 320400FF */  andi       $a0, $s0, 0xFF
  .L800ACE00_BBDB0:
    /* BBDB0 800ACE00 0C02023C */  jal        func_800808F0_8F8A0
    /* BBDB4 800ACE04 24C5000E */   addiu     $a1, $a2, 0xE
    /* BBDB8 800ACE08 8FAC0024 */  lw         $t4, 0x24($sp)
    /* BBDBC 800ACE0C 51800008 */  beql       $t4, $zero, .L800ACE30_BBDE0
    /* BBDC0 800ACE10 8FBF001C */   lw        $ra, 0x1C($sp)
    /* BBDC4 800ACE14 0C02B0BF */  jal        func_800AC2FC_BB2AC
    /* BBDC8 800ACE18 320400FF */   andi      $a0, $s0, 0xFF
    /* BBDCC 800ACE1C 50400004 */  beql       $v0, $zero, .L800ACE30_BBDE0
    /* BBDD0 800ACE20 8FBF001C */   lw        $ra, 0x1C($sp)
    /* BBDD4 800ACE24 0C02B2CF */  jal        func_800ACB3C_BBAEC
    /* BBDD8 800ACE28 320400FF */   andi      $a0, $s0, 0xFF
  .L800ACE2C_BBDDC:
    /* BBDDC 800ACE2C 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800ACE30_BBDE0:
    /* BBDE0 800ACE30 8FB00018 */  lw         $s0, 0x18($sp)
    /* BBDE4 800ACE34 27BD0028 */  addiu      $sp, $sp, 0x28
    /* BBDE8 800ACE38 03E00008 */  jr         $ra
    /* BBDEC 800ACE3C 00000000 */   nop
endlabel func_800ACC5C_BBC0C
