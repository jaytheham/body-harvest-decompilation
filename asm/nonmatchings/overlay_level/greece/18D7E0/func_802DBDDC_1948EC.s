nonmatching func_802DBDDC_1948EC, 0x188

glabel func_802DBDDC_1948EC
    /* 1948EC 802DBDDC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1948F0 802DBDE0 000E7880 */  sll        $t7, $t6, 2
    /* 1948F4 802DBDE4 01EE7821 */  addu       $t7, $t7, $t6
    /* 1948F8 802DBDE8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1948FC 802DBDEC 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 194900 802DBDF0 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 194904 802DBDF4 000F7900 */  sll        $t7, $t7, 4
    /* 194908 802DBDF8 01F84021 */  addu       $t0, $t7, $t8
    /* 19490C 802DBDFC 91190025 */  lbu        $t9, 0x25($t0)
    /* 194910 802DBE00 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 194914 802DBE04 AFA40038 */  sw         $a0, 0x38($sp)
    /* 194918 802DBE08 01C02025 */  or         $a0, $t6, $zero
    /* 19491C 802DBE0C A3AE003B */  sb         $t6, 0x3B($sp)
    /* 194920 802DBE10 AFA80018 */  sw         $t0, 0x18($sp)
    /* 194924 802DBE14 240500BB */  addiu      $a1, $zero, 0xBB
    /* 194928 802DBE18 24060024 */  addiu      $a2, $zero, 0x24
    /* 19492C 802DBE1C 24070145 */  addiu      $a3, $zero, 0x145
    /* 194930 802DBE20 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 194934 802DBE24 A3B90037 */   sb        $t9, 0x37($sp)
    /* 194938 802DBE28 8FA80018 */  lw         $t0, 0x18($sp)
    /* 19493C 802DBE2C 3C018015 */  lui        $at, %hi(D_8014DD54)
    /* 194940 802DBE30 2409FF6A */  addiu      $t1, $zero, -0x96
    /* 194944 802DBE34 850A000C */  lh         $t2, 0xC($t0)
    /* 194948 802DBE38 3C05802E */  lui        $a1, %hi(D_802DDF00)
    /* 19494C 802DBE3C 3C06802E */  lui        $a2, %hi(D_802DDF0C)
    /* 194950 802DBE40 000A5900 */  sll        $t3, $t2, 4
    /* 194954 802DBE44 002B0821 */  addu       $at, $at, $t3
    /* 194958 802DBE48 93A4003B */  lbu        $a0, 0x3B($sp)
    /* 19495C 802DBE4C A429DD54 */  sh         $t1, %lo(D_8014DD54)($at)
    /* 194960 802DBE50 24C6DF0C */  addiu      $a2, $a2, %lo(D_802DDF0C)
    /* 194964 802DBE54 0C0B6C5B */  jal        func_802DB16C_193C7C
    /* 194968 802DBE58 24A5DF00 */   addiu     $a1, $a1, %lo(D_802DDF00)
    /* 19496C 802DBE5C 1440003D */  bnez       $v0, .L802DBF54_194A64
    /* 194970 802DBE60 8FA80018 */   lw        $t0, 0x18($sp)
    /* 194974 802DBE64 0C000E38 */  jal        func_800038E0_44E0
    /* 194978 802DBE68 AFA80018 */   sw        $t0, 0x18($sp)
    /* 19497C 802DBE6C 24010064 */  addiu      $at, $zero, 0x64
    /* 194980 802DBE70 0041001A */  div        $zero, $v0, $at
    /* 194984 802DBE74 00006010 */  mfhi       $t4
    /* 194988 802DBE78 8FA80018 */  lw         $t0, 0x18($sp)
    /* 19498C 802DBE7C 15800035 */  bnez       $t4, .L802DBF54_194A64
    /* 194990 802DBE80 3C068005 */   lui       $a2, %hi(D_80052B34)
    /* 194994 802DBE84 8CC62B34 */  lw         $a2, %lo(D_80052B34)($a2)
    /* 194998 802DBE88 850E0000 */  lh         $t6, 0x0($t0)
    /* 19499C 802DBE8C 93B90037 */  lbu        $t9, 0x37($sp)
    /* 1949A0 802DBE90 84CD0000 */  lh         $t5, 0x0($a2)
    /* 1949A4 802DBE94 00195080 */  sll        $t2, $t9, 2
    /* 1949A8 802DBE98 01AE1023 */  subu       $v0, $t5, $t6
    /* 1949AC 802DBE9C 00022023 */  negu       $a0, $v0
    /* 1949B0 802DBEA0 0082082A */  slt        $at, $a0, $v0
    /* 1949B4 802DBEA4 10200003 */  beqz       $at, .L802DBEB4_1949C4
    /* 1949B8 802DBEA8 00803825 */   or        $a3, $a0, $zero
    /* 1949BC 802DBEAC 10000001 */  b          .L802DBEB4_1949C4
    /* 1949C0 802DBEB0 00403825 */   or        $a3, $v0, $zero
  .L802DBEB4_1949C4:
    /* 1949C4 802DBEB4 84CF0004 */  lh         $t7, 0x4($a2)
    /* 1949C8 802DBEB8 85180004 */  lh         $t8, 0x4($t0)
    /* 1949CC 802DBEBC 01595021 */  addu       $t2, $t2, $t9
    /* 1949D0 802DBEC0 000A5100 */  sll        $t2, $t2, 4
    /* 1949D4 802DBEC4 01F81823 */  subu       $v1, $t7, $t8
    /* 1949D8 802DBEC8 00032823 */  negu       $a1, $v1
    /* 1949DC 802DBECC 00A3082A */  slt        $at, $a1, $v1
    /* 1949E0 802DBED0 10200003 */  beqz       $at, .L802DBEE0_1949F0
    /* 1949E4 802DBED4 00A03025 */   or        $a2, $a1, $zero
    /* 1949E8 802DBED8 10000001 */  b          .L802DBEE0_1949F0
    /* 1949EC 802DBEDC 00603025 */   or        $a2, $v1, $zero
  .L802DBEE0_1949F0:
    /* 1949F0 802DBEE0 00C7082A */  slt        $at, $a2, $a3
    /* 1949F4 802DBEE4 10200007 */  beqz       $at, .L802DBF04_194A14
    /* 1949F8 802DBEE8 0082082A */   slt       $at, $a0, $v0
    /* 1949FC 802DBEEC 10200003 */  beqz       $at, .L802DBEFC_194A0C
    /* 194A00 802DBEF0 00801825 */   or        $v1, $a0, $zero
    /* 194A04 802DBEF4 1000000A */  b          .L802DBF20_194A30
    /* 194A08 802DBEF8 28410320 */   slti      $at, $v0, 0x320
  .L802DBEFC_194A0C:
    /* 194A0C 802DBEFC 10000007 */  b          .L802DBF1C_194A2C
    /* 194A10 802DBF00 00601025 */   or        $v0, $v1, $zero
  .L802DBF04_194A14:
    /* 194A14 802DBF04 00A3082A */  slt        $at, $a1, $v1
    /* 194A18 802DBF08 10200003 */  beqz       $at, .L802DBF18_194A28
    /* 194A1C 802DBF0C 00A02025 */   or        $a0, $a1, $zero
    /* 194A20 802DBF10 10000001 */  b          .L802DBF18_194A28
    /* 194A24 802DBF14 00602025 */   or        $a0, $v1, $zero
  .L802DBF18_194A28:
    /* 194A28 802DBF18 00801025 */  or         $v0, $a0, $zero
  .L802DBF1C_194A2C:
    /* 194A2C 802DBF1C 28410320 */  slti       $at, $v0, 0x320
  .L802DBF20_194A30:
    /* 194A30 802DBF20 1020000C */  beqz       $at, .L802DBF54_194A64
    /* 194A34 802DBF24 3C018005 */   lui       $at, %hi(D_800481DD)
    /* 194A38 802DBF28 002A0821 */  addu       $at, $at, $t2
    /* 194A3C 802DBF2C 242181DD */  addiu      $at, $at, %lo(D_800481DD)
    /* 194A40 802DBF30 88290000 */  lwl        $t1, 0x0($at)
    /* 194A44 802DBF34 98290003 */  lwr        $t1, 0x3($at)
    /* 194A48 802DBF38 312B8000 */  andi       $t3, $t1, 0x8000
    /* 194A4C 802DBF3C 55600006 */  bnel       $t3, $zero, .L802DBF58_194A68
    /* 194A50 802DBF40 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 194A54 802DBF44 8D0C0020 */  lw         $t4, 0x20($t0)
    /* 194A58 802DBF48 A1000036 */  sb         $zero, 0x36($t0)
    /* 194A5C 802DBF4C 358D1000 */  ori        $t5, $t4, 0x1000
    /* 194A60 802DBF50 AD0D0020 */  sw         $t5, 0x20($t0)
  .L802DBF54_194A64:
    /* 194A64 802DBF54 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802DBF58_194A68:
    /* 194A68 802DBF58 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 194A6C 802DBF5C 03E00008 */  jr         $ra
    /* 194A70 802DBF60 00000000 */   nop
endlabel func_802DBDDC_1948EC
