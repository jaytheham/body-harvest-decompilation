nonmatching func_8007B900_4BDB0, 0x20C

glabel func_8007B900_4BDB0
    /* 4BDB0 8007B900 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 4BDB4 8007B904 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 4BDB8 8007B908 AFB10024 */  sw         $s1, 0x24($sp)
    /* 4BDBC 8007B90C AFBE0040 */  sw         $fp, 0x40($sp)
    /* 4BDC0 8007B910 AFB7003C */  sw         $s7, 0x3C($sp)
    /* 4BDC4 8007B914 AFB60038 */  sw         $s6, 0x38($sp)
    /* 4BDC8 8007B918 AFB50034 */  sw         $s5, 0x34($sp)
    /* 4BDCC 8007B91C AFB40030 */  sw         $s4, 0x30($sp)
    /* 4BDD0 8007B920 AFB3002C */  sw         $s3, 0x2C($sp)
    /* 4BDD4 8007B924 AFB20028 */  sw         $s2, 0x28($sp)
    /* 4BDD8 8007B928 AFB00020 */  sw         $s0, 0x20($sp)
    /* 4BDDC 8007B92C 24110078 */  addiu      $s1, $zero, 0x78
    /* 4BDE0 8007B930 0C01E468 */  jal        func_800791A0_49650
    /* 4BDE4 8007B934 24040001 */   addiu     $a0, $zero, 0x1
    /* 4BDE8 8007B938 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* 4BDEC 8007B93C 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* 4BDF0 8007B940 8E020000 */  lw         $v0, 0x0($s0)
    /* 4BDF4 8007B944 3C12E900 */  lui        $s2, (0xE9000000 >> 16)
    /* 4BDF8 8007B948 3C13B800 */  lui        $s3, (0xB8000000 >> 16)
    /* 4BDFC 8007B94C 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4BE00 8007B950 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4BE04 8007B954 AC400004 */  sw         $zero, 0x4($v0)
    /* 4BE08 8007B958 AC520000 */  sw         $s2, 0x0($v0)
    /* 4BE0C 8007B95C 8E020000 */  lw         $v0, 0x0($s0)
    /* 4BE10 8007B960 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4BE14 8007B964 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4BE18 8007B968 AC400004 */  sw         $zero, 0x4($v0)
    /* 4BE1C 8007B96C 0C001417 */  jal        func_8000505C_5C5C
    /* 4BE20 8007B970 AC530000 */   sw        $s3, 0x0($v0)
    /* 4BE24 8007B974 3C1E800B */  lui        $fp, %hi(D_800ADF1C)
    /* 4BE28 8007B978 3C17800B */  lui        $s7, %hi(D_800ADF04)
    /* 4BE2C 8007B97C 3C16800B */  lui        $s6, %hi(D_800ADEE8)
    /* 4BE30 8007B980 3C15800B */  lui        $s5, %hi(D_800ADEC8)
    /* 4BE34 8007B984 3C14800B */  lui        $s4, %hi(D_800ADEC4)
    /* 4BE38 8007B988 2694DEC4 */  addiu      $s4, $s4, %lo(D_800ADEC4)
    /* 4BE3C 8007B98C 26B5DEC8 */  addiu      $s5, $s5, %lo(D_800ADEC8)
    /* 4BE40 8007B990 26D6DEE8 */  addiu      $s6, $s6, %lo(D_800ADEE8)
    /* 4BE44 8007B994 26F7DF04 */  addiu      $s7, $s7, %lo(D_800ADF04)
    /* 4BE48 8007B998 27DEDF1C */  addiu      $fp, $fp, %lo(D_800ADF1C)
  .L8007B99C_4BE4C:
    /* 4BE4C 8007B99C 0C01E468 */  jal        func_800791A0_49650
    /* 4BE50 8007B9A0 24040001 */   addiu     $a0, $zero, 0x1
    /* 4BE54 8007B9A4 02802025 */  or         $a0, $s4, $zero
    /* 4BE58 8007B9A8 240500F0 */  addiu      $a1, $zero, 0xF0
    /* 4BE5C 8007B9AC 240600F0 */  addiu      $a2, $zero, 0xF0
    /* 4BE60 8007B9B0 0C002929 */  jal        drawText
    /* 4BE64 8007B9B4 240700F0 */   addiu     $a3, $zero, 0xF0
    /* 4BE68 8007B9B8 2418005B */  addiu      $t8, $zero, 0x5B
    /* 4BE6C 8007B9BC AFB80010 */  sw         $t8, 0x10($sp)
    /* 4BE70 8007B9C0 02A02025 */  or         $a0, $s5, $zero
    /* 4BE74 8007B9C4 24050080 */  addiu      $a1, $zero, 0x80
    /* 4BE78 8007B9C8 00003025 */  or         $a2, $zero, $zero
    /* 4BE7C 8007B9CC 0C002929 */  jal        drawText
    /* 4BE80 8007B9D0 2407005C */   addiu     $a3, $zero, 0x5C
    /* 4BE84 8007B9D4 02C02025 */  or         $a0, $s6, $zero
    /* 4BE88 8007B9D8 24050080 */  addiu      $a1, $zero, 0x80
    /* 4BE8C 8007B9DC 0C002929 */  jal        drawText
    /* 4BE90 8007B9E0 24060001 */   addiu     $a2, $zero, 0x1
    /* 4BE94 8007B9E4 02E02025 */  or         $a0, $s7, $zero
    /* 4BE98 8007B9E8 24050080 */  addiu      $a1, $zero, 0x80
    /* 4BE9C 8007B9EC 0C002929 */  jal        drawText
    /* 4BEA0 8007B9F0 24060002 */   addiu     $a2, $zero, 0x2
    /* 4BEA4 8007B9F4 03C02025 */  or         $a0, $fp, $zero
    /* 4BEA8 8007B9F8 24050080 */  addiu      $a1, $zero, 0x80
    /* 4BEAC 8007B9FC 0C002929 */  jal        drawText
    /* 4BEB0 8007BA00 24060003 */   addiu     $a2, $zero, 0x3
    /* 4BEB4 8007BA04 3C04800B */  lui        $a0, %hi(D_800ADF3C)
    /* 4BEB8 8007BA08 2484DF3C */  addiu      $a0, $a0, %lo(D_800ADF3C)
    /* 4BEBC 8007BA0C 24050030 */  addiu      $a1, $zero, 0x30
    /* 4BEC0 8007BA10 24060080 */  addiu      $a2, $zero, 0x80
    /* 4BEC4 8007BA14 0C002929 */  jal        drawText
    /* 4BEC8 8007BA18 24070004 */   addiu     $a3, $zero, 0x4
    /* 4BECC 8007BA1C 3C04800B */  lui        $a0, %hi(D_800ADF58)
    /* 4BED0 8007BA20 2484DF58 */  addiu      $a0, $a0, %lo(D_800ADF58)
    /* 4BED4 8007BA24 24050080 */  addiu      $a1, $zero, 0x80
    /* 4BED8 8007BA28 0C002929 */  jal        drawText
    /* 4BEDC 8007BA2C 24060005 */   addiu     $a2, $zero, 0x5
    /* 4BEE0 8007BA30 3C04800B */  lui        $a0, %hi(D_800ADF7C)
    /* 4BEE4 8007BA34 2484DF7C */  addiu      $a0, $a0, %lo(D_800ADF7C)
    /* 4BEE8 8007BA38 24050080 */  addiu      $a1, $zero, 0x80
    /* 4BEEC 8007BA3C 0C002929 */  jal        drawText
    /* 4BEF0 8007BA40 24060006 */   addiu     $a2, $zero, 0x6
    /* 4BEF4 8007BA44 3C04800B */  lui        $a0, %hi(D_800ADF9C)
    /* 4BEF8 8007BA48 2484DF9C */  addiu      $a0, $a0, %lo(D_800ADF9C)
    /* 4BEFC 8007BA4C 24050080 */  addiu      $a1, $zero, 0x80
    /* 4BF00 8007BA50 0C002929 */  jal        drawText
    /* 4BF04 8007BA54 24060007 */   addiu     $a2, $zero, 0x7
    /* 4BF08 8007BA58 3C04800B */  lui        $a0, %hi(D_800ADFC0)
    /* 4BF0C 8007BA5C 2484DFC0 */  addiu      $a0, $a0, %lo(D_800ADFC0)
    /* 4BF10 8007BA60 00002825 */  or         $a1, $zero, $zero
    /* 4BF14 8007BA64 24060080 */  addiu      $a2, $zero, 0x80
    /* 4BF18 8007BA68 0C002929 */  jal        drawText
    /* 4BF1C 8007BA6C 24070009 */   addiu     $a3, $zero, 0x9
    /* 4BF20 8007BA70 16200005 */  bnez       $s1, .L8007BA88_4BF38
    /* 4BF24 8007BA74 00002025 */   or        $a0, $zero, $zero
    /* 4BF28 8007BA78 00002825 */  or         $a1, $zero, $zero
    /* 4BF2C 8007BA7C 00003025 */  or         $a2, $zero, $zero
    /* 4BF30 8007BA80 0C0016BB */  jal        func_80005AEC_66EC
    /* 4BF34 8007BA84 24070040 */   addiu     $a3, $zero, 0x40
  .L8007BA88_4BF38:
    /* 4BF38 8007BA88 2631FFFF */  addiu      $s1, $s1, -0x1
    /* 4BF3C 8007BA8C 3239FFFF */  andi       $t9, $s1, 0xFFFF
    /* 4BF40 8007BA90 0C002C11 */  jal        func_8000B044_BC44
    /* 4BF44 8007BA94 03208825 */   or        $s1, $t9, $zero
    /* 4BF48 8007BA98 0C0016E1 */  jal        func_80005B84_6784
    /* 4BF4C 8007BA9C 00000000 */   nop
    /* 4BF50 8007BAA0 8E020000 */  lw         $v0, 0x0($s0)
    /* 4BF54 8007BAA4 24480008 */  addiu      $t0, $v0, 0x8
    /* 4BF58 8007BAA8 AE080000 */  sw         $t0, 0x0($s0)
    /* 4BF5C 8007BAAC AC400004 */  sw         $zero, 0x4($v0)
    /* 4BF60 8007BAB0 AC520000 */  sw         $s2, 0x0($v0)
    /* 4BF64 8007BAB4 8E020000 */  lw         $v0, 0x0($s0)
    /* 4BF68 8007BAB8 24490008 */  addiu      $t1, $v0, 0x8
    /* 4BF6C 8007BABC AE090000 */  sw         $t1, 0x0($s0)
    /* 4BF70 8007BAC0 AC400004 */  sw         $zero, 0x4($v0)
    /* 4BF74 8007BAC4 0C001417 */  jal        func_8000505C_5C5C
    /* 4BF78 8007BAC8 AC530000 */   sw        $s3, 0x0($v0)
    /* 4BF7C 8007BACC 0C0016CC */  jal        func_80005B30_6730
    /* 4BF80 8007BAD0 00000000 */   nop
    /* 4BF84 8007BAD4 1040FFB1 */  beqz       $v0, .L8007B99C_4BE4C
    /* 4BF88 8007BAD8 00000000 */   nop
    /* 4BF8C 8007BADC 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 4BF90 8007BAE0 8FB00020 */  lw         $s0, 0x20($sp)
    /* 4BF94 8007BAE4 8FB10024 */  lw         $s1, 0x24($sp)
    /* 4BF98 8007BAE8 8FB20028 */  lw         $s2, 0x28($sp)
    /* 4BF9C 8007BAEC 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 4BFA0 8007BAF0 8FB40030 */  lw         $s4, 0x30($sp)
    /* 4BFA4 8007BAF4 8FB50034 */  lw         $s5, 0x34($sp)
    /* 4BFA8 8007BAF8 8FB60038 */  lw         $s6, 0x38($sp)
    /* 4BFAC 8007BAFC 8FB7003C */  lw         $s7, 0x3C($sp)
    /* 4BFB0 8007BB00 8FBE0040 */  lw         $fp, 0x40($sp)
    /* 4BFB4 8007BB04 03E00008 */  jr         $ra
    /* 4BFB8 8007BB08 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_8007B900_4BDB0
