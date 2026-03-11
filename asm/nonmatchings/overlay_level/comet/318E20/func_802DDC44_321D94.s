nonmatching func_802DDC44_321D94, 0x3B8

glabel func_802DDC44_321D94
    /* 321D94 802DDC44 27BDFF68 */  addiu      $sp, $sp, -0x98
    /* 321D98 802DDC48 AFB2002C */  sw         $s2, 0x2C($sp)
    /* 321D9C 802DDC4C 309200FF */  andi       $s2, $a0, 0xFF
    /* 321DA0 802DDC50 AFB00024 */  sw         $s0, 0x24($sp)
    /* 321DA4 802DDC54 0012C080 */  sll        $t8, $s2, 2
    /* 321DA8 802DDC58 00058400 */  sll        $s0, $a1, 16
    /* 321DAC 802DDC5C 0312C021 */  addu       $t8, $t8, $s2
    /* 321DB0 802DDC60 3C198005 */  lui        $t9, %hi(alienInstances)
    /* 321DB4 802DDC64 00107403 */  sra        $t6, $s0, 16
    /* 321DB8 802DDC68 AFB30030 */  sw         $s3, 0x30($sp)
    /* 321DBC 802DDC6C 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* 321DC0 802DDC70 0018C100 */  sll        $t8, $t8, 4
    /* 321DC4 802DDC74 01C08025 */  or         $s0, $t6, $zero
    /* 321DC8 802DDC78 AFB10028 */  sw         $s1, 0x28($sp)
    /* 321DCC 802DDC7C 03199821 */  addu       $s3, $t8, $t9
    /* 321DD0 802DDC80 8E6E0020 */  lw         $t6, 0x20($s3)
    /* 321DD4 802DDC84 00068C00 */  sll        $s1, $a2, 16
    /* 321DD8 802DDC88 00117C03 */  sra        $t7, $s1, 16
    /* 321DDC 802DDC8C 01E08825 */  or         $s1, $t7, $zero
    /* 321DE0 802DDC90 31CF4000 */  andi       $t7, $t6, 0x4000
    /* 321DE4 802DDC94 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 321DE8 802DDC98 AFA40098 */  sw         $a0, 0x98($sp)
    /* 321DEC 802DDC9C AFA5009C */  sw         $a1, 0x9C($sp)
    /* 321DF0 802DDCA0 AFA600A0 */  sw         $a2, 0xA0($sp)
    /* 321DF4 802DDCA4 11E000CE */  beqz       $t7, .L802DDFE0_322130
    /* 321DF8 802DDCA8 AFA700A4 */   sw        $a3, 0xA4($sp)
    /* 321DFC 802DDCAC 87BF00A6 */  lh         $ra, 0xA6($sp)
    /* 321E00 802DDCB0 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 321E04 802DDCB4 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 321E08 802DDCB8 001FC100 */  sll        $t8, $ra, 4
    /* 321E0C 802DDCBC 00581821 */  addu       $v1, $v0, $t8
    /* 321E10 802DDCC0 806A000C */  lb         $t2, 0xC($v1)
    /* 321E14 802DDCC4 8078000D */  lb         $t8, 0xD($v1)
    /* 321E18 802DDCC8 A7B0007C */  sh         $s0, 0x7C($sp)
    /* 321E1C 802DDCCC 000AC900 */  sll        $t9, $t2, 4
    /* 321E20 802DDCD0 00597021 */  addu       $t6, $v0, $t9
    /* 321E24 802DDCD4 81CF000C */  lb         $t7, 0xC($t6)
    /* 321E28 802DDCD8 A7B80086 */  sh         $t8, 0x86($sp)
    /* 321E2C 802DDCDC 87B90086 */  lh         $t9, 0x86($sp)
    /* 321E30 802DDCE0 A7AF0084 */  sh         $t7, 0x84($sp)
    /* 321E34 802DDCE4 A7B1007E */  sh         $s1, 0x7E($sp)
    /* 321E38 802DDCE8 00197100 */  sll        $t6, $t9, 4
    /* 321E3C 802DDCEC 004E4021 */  addu       $t0, $v0, $t6
    /* 321E40 802DDCF0 810B000C */  lb         $t3, 0xC($t0)
    /* 321E44 802DDCF4 810E000D */  lb         $t6, 0xD($t0)
    /* 321E48 802DDCF8 324400FF */  andi       $a0, $s2, 0xFF
    /* 321E4C 802DDCFC 000B7900 */  sll        $t7, $t3, 4
    /* 321E50 802DDD00 004FC021 */  addu       $t8, $v0, $t7
    /* 321E54 802DDD04 8319000C */  lb         $t9, 0xC($t8)
    /* 321E58 802DDD08 A7AE008C */  sh         $t6, 0x8C($sp)
    /* 321E5C 802DDD0C 87AF008C */  lh         $t7, 0x8C($sp)
    /* 321E60 802DDD10 A7B9008A */  sh         $t9, 0x8A($sp)
    /* 321E64 802DDD14 2405000E */  addiu      $a1, $zero, 0xE
    /* 321E68 802DDD18 000FC100 */  sll        $t8, $t7, 4
    /* 321E6C 802DDD1C 00584821 */  addu       $t1, $v0, $t8
    /* 321E70 802DDD20 812C000C */  lb         $t4, 0xC($t1)
    /* 321E74 802DDD24 8138000D */  lb         $t8, 0xD($t1)
    /* 321E78 802DDD28 24060005 */  addiu      $a2, $zero, 0x5
    /* 321E7C 802DDD2C 000CC900 */  sll        $t9, $t4, 4
    /* 321E80 802DDD30 00597021 */  addu       $t6, $v0, $t9
    /* 321E84 802DDD34 81CF000C */  lb         $t7, 0xC($t6)
    /* 321E88 802DDD38 A7B80092 */  sh         $t8, 0x92($sp)
    /* 321E8C 802DDD3C 87B90092 */  lh         $t9, 0x92($sp)
    /* 321E90 802DDD40 A7AF0090 */  sh         $t7, 0x90($sp)
    /* 321E94 802DDD44 27A7007C */  addiu      $a3, $sp, 0x7C
    /* 321E98 802DDD48 00197100 */  sll        $t6, $t9, 4
    /* 321E9C 802DDD4C 004E7821 */  addu       $t7, $v0, $t6
    /* 321EA0 802DDD50 81ED000C */  lb         $t5, 0xC($t7)
    /* 321EA4 802DDD54 3C0F802E */  lui        $t7, %hi(D_802E5DB8)
    /* 321EA8 802DDD58 25EF5DB8 */  addiu      $t7, $t7, %lo(D_802E5DB8)
    /* 321EAC 802DDD5C 000DC100 */  sll        $t8, $t5, 4
    /* 321EB0 802DDD60 0058C821 */  addu       $t9, $v0, $t8
    /* 321EB4 802DDD64 832E000C */  lb         $t6, 0xC($t9)
    /* 321EB8 802DDD68 A7BF0080 */  sh         $ra, 0x80($sp)
    /* 321EBC 802DDD6C AFAF0010 */  sw         $t7, 0x10($sp)
    /* 321EC0 802DDD70 A7AA0082 */  sh         $t2, 0x82($sp)
    /* 321EC4 802DDD74 A7AB0088 */  sh         $t3, 0x88($sp)
    /* 321EC8 802DDD78 A7AC008E */  sh         $t4, 0x8E($sp)
    /* 321ECC 802DDD7C A7AD0094 */  sh         $t5, 0x94($sp)
    /* 321ED0 802DDD80 0C0207C6 */  jal        func_80081F18_90EC8
    /* 321ED4 802DDD84 A7AE0096 */   sh        $t6, 0x96($sp)
    /* 321ED8 802DDD88 92780036 */  lbu        $t8, 0x36($s3)
    /* 321EDC 802DDD8C 24010003 */  addiu      $at, $zero, 0x3
    /* 321EE0 802DDD90 A3A2007B */  sb         $v0, 0x7B($sp)
    /* 321EE4 802DDD94 1701005B */  bne        $t8, $at, .L802DDF04_322054
    /* 321EE8 802DDD98 240E0200 */   addiu     $t6, $zero, 0x200
    /* 321EEC 802DDD9C 324400FF */  andi       $a0, $s2, 0xFF
    /* 321EF0 802DDDA0 00002825 */  or         $a1, $zero, $zero
    /* 321EF4 802DDDA4 87A60080 */  lh         $a2, 0x80($sp)
    /* 321EF8 802DDDA8 0C0B76C2 */  jal        func_802DDB08_321C58
    /* 321EFC 802DDDAC 27A70054 */   addiu     $a3, $sp, 0x54
    /* 321F00 802DDDB0 87B000AA */  lh         $s0, 0xAA($sp)
    /* 321F04 802DDDB4 87B100AE */  lh         $s1, 0xAE($sp)
    /* 321F08 802DDDB8 87A600B2 */  lh         $a2, 0xB2($sp)
    /* 321F0C 802DDDBC 00102400 */  sll        $a0, $s0, 16
    /* 321F10 802DDDC0 0004CC03 */  sra        $t9, $a0, 16
    /* 321F14 802DDDC4 8FAF0058 */  lw         $t7, 0x58($sp)
    /* 321F18 802DDDC8 8FB8005C */  lw         $t8, 0x5C($sp)
    /* 321F1C 802DDDCC 03202025 */  or         $a0, $t9, $zero
    /* 321F20 802DDDD0 00112C00 */  sll        $a1, $s1, 16
    /* 321F24 802DDDD4 00057403 */  sra        $t6, $a1, 16
    /* 321F28 802DDDD8 24190001 */  addiu      $t9, $zero, 0x1
    /* 321F2C 802DDDDC AFB90018 */  sw         $t9, 0x18($sp)
    /* 321F30 802DDDE0 01C02825 */  or         $a1, $t6, $zero
    /* 321F34 802DDDE4 87A70056 */  lh         $a3, 0x56($sp)
    /* 321F38 802DDDE8 AFA60038 */  sw         $a2, 0x38($sp)
    /* 321F3C 802DDDEC AFAF0010 */  sw         $t7, 0x10($sp)
    /* 321F40 802DDDF0 0C0345AF */  jal        func_800D16BC_E066C
    /* 321F44 802DDDF4 AFB80014 */   sw        $t8, 0x14($sp)
    /* 321F48 802DDDF8 324400FF */  andi       $a0, $s2, 0xFF
    /* 321F4C 802DDDFC 24050001 */  addiu      $a1, $zero, 0x1
    /* 321F50 802DDE00 87A60086 */  lh         $a2, 0x86($sp)
    /* 321F54 802DDE04 0C0B76C2 */  jal        func_802DDB08_321C58
    /* 321F58 802DDE08 27A70054 */   addiu     $a3, $sp, 0x54
    /* 321F5C 802DDE0C 00102400 */  sll        $a0, $s0, 16
    /* 321F60 802DDE10 00047403 */  sra        $t6, $a0, 16
    /* 321F64 802DDE14 8FB80058 */  lw         $t8, 0x58($sp)
    /* 321F68 802DDE18 8FB9005C */  lw         $t9, 0x5C($sp)
    /* 321F6C 802DDE1C 01C02025 */  or         $a0, $t6, $zero
    /* 321F70 802DDE20 00112C00 */  sll        $a1, $s1, 16
    /* 321F74 802DDE24 00057C03 */  sra        $t7, $a1, 16
    /* 321F78 802DDE28 240E0001 */  addiu      $t6, $zero, 0x1
    /* 321F7C 802DDE2C AFAE0018 */  sw         $t6, 0x18($sp)
    /* 321F80 802DDE30 01E02825 */  or         $a1, $t7, $zero
    /* 321F84 802DDE34 87A6003A */  lh         $a2, 0x3A($sp)
    /* 321F88 802DDE38 87A70056 */  lh         $a3, 0x56($sp)
    /* 321F8C 802DDE3C AFB80010 */  sw         $t8, 0x10($sp)
    /* 321F90 802DDE40 0C0345AF */  jal        func_800D16BC_E066C
    /* 321F94 802DDE44 AFB90014 */   sw        $t9, 0x14($sp)
    /* 321F98 802DDE48 324400FF */  andi       $a0, $s2, 0xFF
    /* 321F9C 802DDE4C 24050002 */  addiu      $a1, $zero, 0x2
    /* 321FA0 802DDE50 87A6008C */  lh         $a2, 0x8C($sp)
    /* 321FA4 802DDE54 0C0B76C2 */  jal        func_802DDB08_321C58
    /* 321FA8 802DDE58 27A70054 */   addiu     $a3, $sp, 0x54
    /* 321FAC 802DDE5C 00102400 */  sll        $a0, $s0, 16
    /* 321FB0 802DDE60 00047C03 */  sra        $t7, $a0, 16
    /* 321FB4 802DDE64 8FB90058 */  lw         $t9, 0x58($sp)
    /* 321FB8 802DDE68 8FAE005C */  lw         $t6, 0x5C($sp)
    /* 321FBC 802DDE6C 01E02025 */  or         $a0, $t7, $zero
    /* 321FC0 802DDE70 00112C00 */  sll        $a1, $s1, 16
    /* 321FC4 802DDE74 0005C403 */  sra        $t8, $a1, 16
    /* 321FC8 802DDE78 240F0001 */  addiu      $t7, $zero, 0x1
    /* 321FCC 802DDE7C AFAF0018 */  sw         $t7, 0x18($sp)
    /* 321FD0 802DDE80 03002825 */  or         $a1, $t8, $zero
    /* 321FD4 802DDE84 87A6003A */  lh         $a2, 0x3A($sp)
    /* 321FD8 802DDE88 87A70056 */  lh         $a3, 0x56($sp)
    /* 321FDC 802DDE8C AFB90010 */  sw         $t9, 0x10($sp)
    /* 321FE0 802DDE90 0C0345AF */  jal        func_800D16BC_E066C
    /* 321FE4 802DDE94 AFAE0014 */   sw        $t6, 0x14($sp)
    /* 321FE8 802DDE98 324400FF */  andi       $a0, $s2, 0xFF
    /* 321FEC 802DDE9C 24050003 */  addiu      $a1, $zero, 0x3
    /* 321FF0 802DDEA0 87A60092 */  lh         $a2, 0x92($sp)
    /* 321FF4 802DDEA4 0C0B76C2 */  jal        func_802DDB08_321C58
    /* 321FF8 802DDEA8 27A70054 */   addiu     $a3, $sp, 0x54
    /* 321FFC 802DDEAC 00102400 */  sll        $a0, $s0, 16
    /* 322000 802DDEB0 0004C403 */  sra        $t8, $a0, 16
    /* 322004 802DDEB4 8FAE0058 */  lw         $t6, 0x58($sp)
    /* 322008 802DDEB8 8FAF005C */  lw         $t7, 0x5C($sp)
    /* 32200C 802DDEBC 03002025 */  or         $a0, $t8, $zero
    /* 322010 802DDEC0 00112C00 */  sll        $a1, $s1, 16
    /* 322014 802DDEC4 0005CC03 */  sra        $t9, $a1, 16
    /* 322018 802DDEC8 24180001 */  addiu      $t8, $zero, 0x1
    /* 32201C 802DDECC AFB80018 */  sw         $t8, 0x18($sp)
    /* 322020 802DDED0 03202825 */  or         $a1, $t9, $zero
    /* 322024 802DDED4 87A6003A */  lh         $a2, 0x3A($sp)
    /* 322028 802DDED8 87A70056 */  lh         $a3, 0x56($sp)
    /* 32202C 802DDEDC AFAE0010 */  sw         $t6, 0x10($sp)
    /* 322030 802DDEE0 0C0345AF */  jal        func_800D16BC_E066C
    /* 322034 802DDEE4 AFAF0014 */   sw        $t7, 0x14($sp)
    /* 322038 802DDEE8 02402025 */  or         $a0, $s2, $zero
    /* 32203C 802DDEEC 0C04DD1A */  jal        func_80137468_146418
    /* 322040 802DDEF0 24050261 */   addiu     $a1, $zero, 0x261
    /* 322044 802DDEF4 2419015E */  addiu      $t9, $zero, 0x15E
    /* 322048 802DDEF8 3C018025 */  lui        $at, %hi(D_80256EE2)
    /* 32204C 802DDEFC 10000003 */  b          .L802DDF0C_32205C
    /* 322050 802DDF00 A4396EE2 */   sh        $t9, %lo(D_80256EE2)($at)
  .L802DDF04_322054:
    /* 322054 802DDF04 3C018025 */  lui        $at, %hi(D_80256EE2)
    /* 322058 802DDF08 A42E6EE2 */  sh         $t6, %lo(D_80256EE2)($at)
  .L802DDF0C_32205C:
    /* 32205C 802DDF0C 93AF007B */  lbu        $t7, 0x7B($sp)
    /* 322060 802DDF10 24010003 */  addiu      $at, $zero, 0x3
    /* 322064 802DDF14 87A400AA */  lh         $a0, 0xAA($sp)
    /* 322068 802DDF18 15E10027 */  bne        $t7, $at, .L802DDFB8_322108
    /* 32206C 802DDF1C AFAF003C */   sw        $t7, 0x3C($sp)
    /* 322070 802DDF20 241800FF */  addiu      $t8, $zero, 0xFF
    /* 322074 802DDF24 241900FF */  addiu      $t9, $zero, 0xFF
    /* 322078 802DDF28 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 32207C 802DDF2C AFAE0018 */  sw         $t6, 0x18($sp)
    /* 322080 802DDF30 AFB90014 */  sw         $t9, 0x14($sp)
    /* 322084 802DDF34 AFB80010 */  sw         $t8, 0x10($sp)
    /* 322088 802DDF38 87A500AE */  lh         $a1, 0xAE($sp)
    /* 32208C 802DDF3C 87A600B2 */  lh         $a2, 0xB2($sp)
    /* 322090 802DDF40 240703E8 */  addiu      $a3, $zero, 0x3E8
    /* 322094 802DDF44 0C03416A */  jal        func_800D05A8_DF558
    /* 322098 802DDF48 AFB20040 */   sw        $s2, 0x40($sp)
    /* 32209C 802DDF4C 00008025 */  or         $s0, $zero, $zero
    /* 3220A0 802DDF50 24110028 */  addiu      $s1, $zero, 0x28
  .L802DDF54_3220A4:
    /* 3220A4 802DDF54 0C000E38 */  jal        func_800038E0_44E0
    /* 3220A8 802DDF58 A660001E */   sh        $zero, 0x1E($s3)
    /* 3220AC 802DDF5C 0051001A */  div        $zero, $v0, $s1
    /* 3220B0 802DDF60 00003010 */  mfhi       $a2
    /* 3220B4 802DDF64 324400FF */  andi       $a0, $s2, 0xFF
    /* 3220B8 802DDF68 00002825 */  or         $a1, $zero, $zero
    /* 3220BC 802DDF6C 16200002 */  bnez       $s1, .L802DDF78_3220C8
    /* 3220C0 802DDF70 00000000 */   nop
    /* 3220C4 802DDF74 0007000D */  break      7
  .L802DDF78_3220C8:
    /* 3220C8 802DDF78 2401FFFF */  addiu      $at, $zero, -0x1
    /* 3220CC 802DDF7C 16210004 */  bne        $s1, $at, .L802DDF90_3220E0
    /* 3220D0 802DDF80 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 3220D4 802DDF84 14410002 */  bne        $v0, $at, .L802DDF90_3220E0
    /* 3220D8 802DDF88 00000000 */   nop
    /* 3220DC 802DDF8C 0006000D */  break      6
  .L802DDF90_3220E0:
    /* 3220E0 802DDF90 0C021C62 */  jal        func_80087188_96138
    /* 3220E4 802DDF94 00000000 */   nop
    /* 3220E8 802DDF98 26100001 */  addiu      $s0, $s0, 0x1
    /* 3220EC 802DDF9C 320F00FF */  andi       $t7, $s0, 0xFF
    /* 3220F0 802DDFA0 29E10003 */  slti       $at, $t7, 0x3
    /* 3220F4 802DDFA4 1420FFEB */  bnez       $at, .L802DDF54_3220A4
    /* 3220F8 802DDFA8 01E08025 */   or        $s0, $t7, $zero
    /* 3220FC 802DDFAC 8FA40040 */  lw         $a0, 0x40($sp)
    /* 322100 802DDFB0 0C04DD1A */  jal        func_80137468_146418
    /* 322104 802DDFB4 2405025C */   addiu     $a1, $zero, 0x25C
  .L802DDFB8_322108:
    /* 322108 802DDFB8 8FB8003C */  lw         $t8, 0x3C($sp)
    /* 32210C 802DDFBC 24010005 */  addiu      $at, $zero, 0x5
    /* 322110 802DDFC0 24110028 */  addiu      $s1, $zero, 0x28
    /* 322114 802DDFC4 57010007 */  bnel       $t8, $at, .L802DDFE4_322134
    /* 322118 802DDFC8 8FBF0034 */   lw        $ra, 0x34($sp)
    /* 32211C 802DDFCC 8E790020 */  lw         $t9, 0x20($s3)
    /* 322120 802DDFD0 2401BFFF */  addiu      $at, $zero, -0x4001
    /* 322124 802DDFD4 A671001E */  sh         $s1, 0x1E($s3)
    /* 322128 802DDFD8 03217024 */  and        $t6, $t9, $at
    /* 32212C 802DDFDC AE6E0020 */  sw         $t6, 0x20($s3)
  .L802DDFE0_322130:
    /* 322130 802DDFE0 8FBF0034 */  lw         $ra, 0x34($sp)
  .L802DDFE4_322134:
    /* 322134 802DDFE4 8FB00024 */  lw         $s0, 0x24($sp)
    /* 322138 802DDFE8 8FB10028 */  lw         $s1, 0x28($sp)
    /* 32213C 802DDFEC 8FB2002C */  lw         $s2, 0x2C($sp)
    /* 322140 802DDFF0 8FB30030 */  lw         $s3, 0x30($sp)
    /* 322144 802DDFF4 03E00008 */  jr         $ra
    /* 322148 802DDFF8 27BD0098 */   addiu     $sp, $sp, 0x98
endlabel func_802DDC44_321D94
