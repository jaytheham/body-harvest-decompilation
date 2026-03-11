nonmatching func_802DBE28_2BE258, 0x12C

glabel func_802DBE28_2BE258
    /* 2BE258 802DBE28 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BE25C 802DBE2C 000E7880 */  sll        $t7, $t6, 2
    /* 2BE260 802DBE30 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BE264 802DBE34 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BE268 802DBE38 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BE26C 802DBE3C 000F7900 */  sll        $t7, $t7, 4
    /* 2BE270 802DBE40 01F81821 */  addu       $v1, $t7, $t8
    /* 2BE274 802DBE44 8C620020 */  lw         $v0, 0x20($v1)
    /* 2BE278 802DBE48 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 2BE27C 802DBE4C AFA40030 */  sw         $a0, 0x30($sp)
    /* 2BE280 802DBE50 30591000 */  andi       $t9, $v0, 0x1000
    /* 2BE284 802DBE54 01C02025 */  or         $a0, $t6, $zero
    /* 2BE288 802DBE58 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2BE28C 802DBE5C AFA50034 */  sw         $a1, 0x34($sp)
    /* 2BE290 802DBE60 AFA60038 */  sw         $a2, 0x38($sp)
    /* 2BE294 802DBE64 13200023 */  beqz       $t9, .L802DBEF4_2BE324
    /* 2BE298 802DBE68 AFA7003C */   sw        $a3, 0x3C($sp)
    /* 2BE29C 802DBE6C 00024140 */  sll        $t0, $v0, 5
    /* 2BE2A0 802DBE70 0501000D */  bgez       $t0, .L802DBEA8_2BE2D8
    /* 2BE2A4 802DBE74 87AB003E */   lh        $t3, 0x3E($sp)
    /* 2BE2A8 802DBE78 87A9003A */  lh         $t1, 0x3A($sp)
    /* 2BE2AC 802DBE7C 3C0A802E */  lui        $t2, %hi(D_802E225C)
    /* 2BE2B0 802DBE80 254A225C */  addiu      $t2, $t2, %lo(D_802E225C)
    /* 2BE2B4 802DBE84 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 2BE2B8 802DBE88 24050001 */  addiu      $a1, $zero, 0x1
    /* 2BE2BC 802DBE8C 24060002 */  addiu      $a2, $zero, 0x2
    /* 2BE2C0 802DBE90 27A7002C */  addiu      $a3, $sp, 0x2C
    /* 2BE2C4 802DBE94 AFA30024 */  sw         $v1, 0x24($sp)
    /* 2BE2C8 802DBE98 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BE2CC 802DBE9C A7A9002C */   sh        $t1, 0x2C($sp)
    /* 2BE2D0 802DBEA0 1000000B */  b          .L802DBED0_2BE300
    /* 2BE2D4 802DBEA4 8FA30024 */   lw        $v1, 0x24($sp)
  .L802DBEA8_2BE2D8:
    /* 2BE2D8 802DBEA8 3C0C802E */  lui        $t4, %hi(D_802E2280)
    /* 2BE2DC 802DBEAC 258C2280 */  addiu      $t4, $t4, %lo(D_802E2280)
    /* 2BE2E0 802DBEB0 A7AB002C */  sh         $t3, 0x2C($sp)
    /* 2BE2E4 802DBEB4 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 2BE2E8 802DBEB8 24050001 */  addiu      $a1, $zero, 0x1
    /* 2BE2EC 802DBEBC 24060002 */  addiu      $a2, $zero, 0x2
    /* 2BE2F0 802DBEC0 27A7002C */  addiu      $a3, $sp, 0x2C
    /* 2BE2F4 802DBEC4 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BE2F8 802DBEC8 AFA30024 */   sw        $v1, 0x24($sp)
    /* 2BE2FC 802DBECC 8FA30024 */  lw         $v1, 0x24($sp)
  .L802DBED0_2BE300:
    /* 2BE300 802DBED0 304D00FF */  andi       $t5, $v0, 0xFF
    /* 2BE304 802DBED4 24010002 */  addiu      $at, $zero, 0x2
    /* 2BE308 802DBED8 55A1001B */  bnel       $t5, $at, .L802DBF48_2BE378
    /* 2BE30C 802DBEDC 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 2BE310 802DBEE0 8C6E0020 */  lw         $t6, 0x20($v1)
    /* 2BE314 802DBEE4 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 2BE318 802DBEE8 01C17824 */  and        $t7, $t6, $at
    /* 2BE31C 802DBEEC 10000015 */  b          .L802DBF44_2BE374
    /* 2BE320 802DBEF0 AC6F0020 */   sw        $t7, 0x20($v1)
  .L802DBEF4_2BE324:
    /* 2BE324 802DBEF4 30582000 */  andi       $t8, $v0, 0x2000
    /* 2BE328 802DBEF8 13000012 */  beqz       $t8, .L802DBF44_2BE374
    /* 2BE32C 802DBEFC 87B90036 */   lh        $t9, 0x36($sp)
    /* 2BE330 802DBF00 3C08802E */  lui        $t0, %hi(D_802E22A4)
    /* 2BE334 802DBF04 250822A4 */  addiu      $t0, $t0, %lo(D_802E22A4)
    /* 2BE338 802DBF08 A7B9002C */  sh         $t9, 0x2C($sp)
    /* 2BE33C 802DBF0C AFA80010 */  sw         $t0, 0x10($sp)
    /* 2BE340 802DBF10 24050001 */  addiu      $a1, $zero, 0x1
    /* 2BE344 802DBF14 24060002 */  addiu      $a2, $zero, 0x2
    /* 2BE348 802DBF18 27A7002C */  addiu      $a3, $sp, 0x2C
    /* 2BE34C 802DBF1C 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BE350 802DBF20 AFA30024 */   sw        $v1, 0x24($sp)
    /* 2BE354 802DBF24 304900FF */  andi       $t1, $v0, 0xFF
    /* 2BE358 802DBF28 24010002 */  addiu      $at, $zero, 0x2
    /* 2BE35C 802DBF2C 15210005 */  bne        $t1, $at, .L802DBF44_2BE374
    /* 2BE360 802DBF30 8FA30024 */   lw        $v1, 0x24($sp)
    /* 2BE364 802DBF34 8C6A0020 */  lw         $t2, 0x20($v1)
    /* 2BE368 802DBF38 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 2BE36C 802DBF3C 01415824 */  and        $t3, $t2, $at
    /* 2BE370 802DBF40 AC6B0020 */  sw         $t3, 0x20($v1)
  .L802DBF44_2BE374:
    /* 2BE374 802DBF44 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802DBF48_2BE378:
    /* 2BE378 802DBF48 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 2BE37C 802DBF4C 03E00008 */  jr         $ra
    /* 2BE380 802DBF50 00000000 */   nop
endlabel func_802DBE28_2BE258
