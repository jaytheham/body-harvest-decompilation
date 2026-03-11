nonmatching func_8008DEF4_9CEA4, 0x1E4

glabel func_8008DEF4_9CEA4
    /* 9CEA4 8008DEF4 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 9CEA8 8008DEF8 AFA40050 */  sw         $a0, 0x50($sp)
    /* 9CEAC 8008DEFC 93AE0053 */  lbu        $t6, 0x53($sp)
    /* 9CEB0 8008DF00 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 9CEB4 8008DF04 AFB00020 */  sw         $s0, 0x20($sp)
    /* 9CEB8 8008DF08 000E7880 */  sll        $t7, $t6, 2
    /* 9CEBC 8008DF0C 01EE7821 */  addu       $t7, $t7, $t6
    /* 9CEC0 8008DF10 000F7900 */  sll        $t7, $t7, 4
    /* 9CEC4 8008DF14 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 9CEC8 8008DF18 01F88021 */  addu       $s0, $t7, $t8
    /* 9CECC 8008DF1C 8E020020 */  lw         $v0, 0x20($s0)
    /* 9CED0 8008DF20 86190048 */  lh         $t9, 0x48($s0)
    /* 9CED4 8008DF24 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 9CED8 8008DF28 30490600 */  andi       $t1, $v0, 0x600
    /* 9CEDC 8008DF2C 24080001 */  addiu      $t0, $zero, 0x1
    /* 9CEE0 8008DF30 15200002 */  bnez       $t1, .L8008DF3C_9CEEC
    /* 9CEE4 8008DF34 A6190012 */   sh        $t9, 0x12($s0)
    /* 9CEE8 8008DF38 24080004 */  addiu      $t0, $zero, 0x4
  .L8008DF3C_9CEEC:
    /* 9CEEC 8008DF3C 92030025 */  lbu        $v1, 0x25($s0)
    /* 9CEF0 8008DF40 240100FF */  addiu      $at, $zero, 0xFF
    /* 9CEF4 8008DF44 02002025 */  or         $a0, $s0, $zero
    /* 9CEF8 8008DF48 1061000C */  beq        $v1, $at, .L8008DF7C_9CF2C
    /* 9CEFC 8008DF4C 240100FF */   addiu     $at, $zero, 0xFF
    /* 9CF00 8008DF50 1061000E */  beq        $v1, $at, .L8008DF8C_9CF3C
    /* 9CF04 8008DF54 00035080 */   sll       $t2, $v1, 2
    /* 9CF08 8008DF58 01435021 */  addu       $t2, $t2, $v1
    /* 9CF0C 8008DF5C 000A5100 */  sll        $t2, $t2, 4
    /* 9CF10 8008DF60 3C0B8005 */  lui        $t3, %hi(D_800481B8)
    /* 9CF14 8008DF64 016A5821 */  addu       $t3, $t3, $t2
    /* 9CF18 8008DF68 8D6B81B8 */  lw         $t3, %lo(D_800481B8)($t3)
    /* 9CF1C 8008DF6C 3C010030 */  lui        $at, (0x300000 >> 16)
    /* 9CF20 8008DF70 01616024 */  and        $t4, $t3, $at
    /* 9CF24 8008DF74 51800006 */  beql       $t4, $zero, .L8008DF90_9CF40
    /* 9CF28 8008DF78 304D4000 */   andi      $t5, $v0, 0x4000
  .L8008DF7C_9CF2C:
    /* 9CF2C 8008DF7C 0C0221D8 */  jal        func_80088760_97710
    /* 9CF30 8008DF80 AFA8004C */   sw        $t0, 0x4C($sp)
    /* 9CF34 8008DF84 8FA8004C */  lw         $t0, 0x4C($sp)
    /* 9CF38 8008DF88 8E020020 */  lw         $v0, 0x20($s0)
  .L8008DF8C_9CF3C:
    /* 9CF3C 8008DF8C 304D4000 */  andi       $t5, $v0, 0x4000
  .L8008DF90_9CF40:
    /* 9CF40 8008DF90 11A00005 */  beqz       $t5, .L8008DFA8_9CF58
    /* 9CF44 8008DF94 304EF000 */   andi      $t6, $v0, 0xF000
    /* 9CF48 8008DF98 0C023689 */  jal        func_8008DA24_9C9D4
    /* 9CF4C 8008DF9C 93A40053 */   lbu       $a0, 0x53($sp)
    /* 9CF50 8008DFA0 10000049 */  b          .L8008E0C8_9D078
    /* 9CF54 8008DFA4 8FBF0024 */   lw        $ra, 0x24($sp)
  .L8008DFA8_9CF58:
    /* 9CF58 8008DFA8 55C0000D */  bnel       $t6, $zero, .L8008DFE0_9CF90
    /* 9CF5C 8008DFAC 8E190020 */   lw        $t9, 0x20($s0)
    /* 9CF60 8008DFB0 8602002C */  lh         $v0, 0x2C($s0)
    /* 9CF64 8008DFB4 10400009 */  beqz       $v0, .L8008DFDC_9CF8C
    /* 9CF68 8008DFB8 00487823 */   subu      $t7, $v0, $t0
    /* 9CF6C 8008DFBC A60F002C */  sh         $t7, 0x2C($s0)
    /* 9CF70 8008DFC0 8618002C */  lh         $t8, 0x2C($s0)
    /* 9CF74 8008DFC4 93A40053 */  lbu        $a0, 0x53($sp)
    /* 9CF78 8008DFC8 5F000005 */  bgtzl      $t8, .L8008DFE0_9CF90
    /* 9CF7C 8008DFCC 8E190020 */   lw        $t9, 0x20($s0)
    /* 9CF80 8008DFD0 0C0234FD */  jal        func_8008D3F4_9C3A4
    /* 9CF84 8008DFD4 AFA8004C */   sw        $t0, 0x4C($sp)
    /* 9CF88 8008DFD8 8FA8004C */  lw         $t0, 0x4C($sp)
  .L8008DFDC_9CF8C:
    /* 9CF8C 8008DFDC 8E190020 */  lw         $t9, 0x20($s0)
  .L8008DFE0_9CF90:
    /* 9CF90 8008DFE0 3C0C8005 */  lui        $t4, %hi(alienInstances)
    /* 9CF94 8008DFE4 258C8198 */  addiu      $t4, $t4, %lo(alienInstances)
    /* 9CF98 8008DFE8 33291000 */  andi       $t1, $t9, 0x1000
    /* 9CF9C 8008DFEC 11200011 */  beqz       $t1, .L8008E034_9CFE4
    /* 9CFA0 8008DFF0 00002825 */   or        $a1, $zero, $zero
    /* 9CFA4 8008DFF4 920A0025 */  lbu        $t2, 0x25($s0)
    /* 9CFA8 8008DFF8 27AD0040 */  addiu      $t5, $sp, 0x40
    /* 9CFAC 8008DFFC AFAD0010 */  sw         $t5, 0x10($sp)
    /* 9CFB0 8008E000 000A5880 */  sll        $t3, $t2, 2
    /* 9CFB4 8008E004 016A5821 */  addu       $t3, $t3, $t2
    /* 9CFB8 8008E008 000B5900 */  sll        $t3, $t3, 4
    /* 9CFBC 8008E00C 016C2021 */  addu       $a0, $t3, $t4
    /* 9CFC0 8008E010 27A60048 */  addiu      $a2, $sp, 0x48
    /* 9CFC4 8008E014 27A70044 */  addiu      $a3, $sp, 0x44
    /* 9CFC8 8008E018 0C04A141 */  jal        func_80128504_1374B4
    /* 9CFCC 8008E01C AFA8004C */   sw        $t0, 0x4C($sp)
    /* 9CFD0 8008E020 8FAE0048 */  lw         $t6, 0x48($sp)
    /* 9CFD4 8008E024 8FAF0040 */  lw         $t7, 0x40($sp)
    /* 9CFD8 8008E028 8FA8004C */  lw         $t0, 0x4C($sp)
    /* 9CFDC 8008E02C A60E0014 */  sh         $t6, 0x14($s0)
    /* 9CFE0 8008E030 A60F0018 */  sh         $t7, 0x18($s0)
  .L8008E034_9CFE4:
    /* 9CFE4 8008E034 93A40053 */  lbu        $a0, 0x53($sp)
    /* 9CFE8 8008E038 0C020210 */  jal        func_80080840_8F7F0
    /* 9CFEC 8008E03C 00082900 */   sll       $a1, $t0, 4
    /* 9CFF0 8008E040 50400021 */  beql       $v0, $zero, .L8008E0C8_9D078
    /* 9CFF4 8008E044 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 9CFF8 8008E048 0C0235C7 */  jal        func_8008D71C_9C6CC
    /* 9CFFC 8008E04C 93A40053 */   lbu       $a0, 0x53($sp)
    /* 9D000 8008E050 8E020020 */  lw         $v0, 0x20($s0)
    /* 9D004 8008E054 30580100 */  andi       $t8, $v0, 0x100
    /* 9D008 8008E058 1300001A */  beqz       $t8, .L8008E0C4_9D074
    /* 9D00C 8008E05C 30591000 */   andi      $t9, $v0, 0x1000
    /* 9D010 8008E060 57200019 */  bnel       $t9, $zero, .L8008E0C8_9D078
    /* 9D014 8008E064 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 9D018 8008E068 86040000 */  lh         $a0, 0x0($s0)
    /* 9D01C 8008E06C 86050004 */  lh         $a1, 0x4($s0)
    /* 9D020 8008E070 00044A03 */  sra        $t1, $a0, 8
    /* 9D024 8008E074 00056203 */  sra        $t4, $a1, 8
    /* 9D028 8008E078 000C6E00 */  sll        $t5, $t4, 24
    /* 9D02C 8008E07C 00095600 */  sll        $t2, $t1, 24
    /* 9D030 8008E080 000A2603 */  sra        $a0, $t2, 24
    /* 9D034 8008E084 0C047498 */  jal        func_8011D260_12C210
    /* 9D038 8008E088 000D2E03 */   sra       $a1, $t5, 24
    /* 9D03C 8008E08C 240100FF */  addiu      $at, $zero, 0xFF
    /* 9D040 8008E090 1041000C */  beq        $v0, $at, .L8008E0C4_9D074
    /* 9D044 8008E094 00027880 */   sll       $t7, $v0, 2
    /* 9D048 8008E098 01E27823 */  subu       $t7, $t7, $v0
    /* 9D04C 8008E09C 000F78C0 */  sll        $t7, $t7, 3
    /* 9D050 8008E0A0 3C188005 */  lui        $t8, %hi(D_80050AE0)
    /* 9D054 8008E0A4 030FC021 */  addu       $t8, $t8, $t7
    /* 9D058 8008E0A8 8F180AE0 */  lw         $t8, %lo(D_80050AE0)($t8)
    /* 9D05C 8008E0AC 0018CB02 */  srl        $t9, $t8, 12
    /* 9D060 8008E0B0 33290001 */  andi       $t1, $t9, 0x1
    /* 9D064 8008E0B4 55200004 */  bnel       $t1, $zero, .L8008E0C8_9D078
    /* 9D068 8008E0B8 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 9D06C 8008E0BC 0C0234FD */  jal        func_8008D3F4_9C3A4
    /* 9D070 8008E0C0 93A40053 */   lbu       $a0, 0x53($sp)
  .L8008E0C4_9D074:
    /* 9D074 8008E0C4 8FBF0024 */  lw         $ra, 0x24($sp)
  .L8008E0C8_9D078:
    /* 9D078 8008E0C8 8FB00020 */  lw         $s0, 0x20($sp)
    /* 9D07C 8008E0CC 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 9D080 8008E0D0 03E00008 */  jr         $ra
    /* 9D084 8008E0D4 00000000 */   nop
endlabel func_8008DEF4_9CEA4
