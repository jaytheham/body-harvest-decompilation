nonmatching func_80082B50_16AC10, 0x314

glabel func_80082B50_16AC10
    /* 16AC10 80082B50 3C07800E */  lui        $a3, %hi(D_800E65A8)
    /* 16AC14 80082B54 24E765A8 */  addiu      $a3, $a3, %lo(D_800E65A8)
    /* 16AC18 80082B58 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 16AC1C 80082B5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 16AC20 80082B60 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 16AC24 80082B64 31CF0001 */  andi       $t7, $t6, 0x1
    /* 16AC28 80082B68 11E000B6 */  beqz       $t7, .L80082E44_16AF04
    /* 16AC2C 80082B6C 00000000 */   nop
    /* 16AC30 80082B70 0C005EDE */  jal        func_80017B78_18778
    /* 16AC34 80082B74 00000000 */   nop
    /* 16AC38 80082B78 24030001 */  addiu      $v1, $zero, 0x1
    /* 16AC3C 80082B7C 3C07800E */  lui        $a3, %hi(D_800E65A8)
    /* 16AC40 80082B80 1462000C */  bne        $v1, $v0, .L80082BB4_16AC74
    /* 16AC44 80082B84 24E765A8 */   addiu     $a3, $a3, %lo(D_800E65A8)
    /* 16AC48 80082B88 3C188003 */  lui        $t8, %hi(D_80034484)
    /* 16AC4C 80082B8C 8F184484 */  lw         $t8, %lo(D_80034484)($t8)
    /* 16AC50 80082B90 3C01800A */  lui        $at, %hi(D_800A0A1C)
    /* 16AC54 80082B94 AC380A1C */  sw         $t8, %lo(D_800A0A1C)($at)
    /* 16AC58 80082B98 3C01800E */  lui        $at, %hi(D_800E7398)
    /* 16AC5C 80082B9C AC237398 */  sw         $v1, %lo(D_800E7398)($at)
    /* 16AC60 80082BA0 8CE20000 */  lw         $v0, 0x0($a3)
    /* 16AC64 80082BA4 30590408 */  andi       $t9, $v0, 0x408
    /* 16AC68 80082BA8 17200002 */  bnez       $t9, .L80082BB4_16AC74
    /* 16AC6C 80082BAC 344E0002 */   ori       $t6, $v0, 0x2
    /* 16AC70 80082BB0 ACEE0000 */  sw         $t6, 0x0($a3)
  .L80082BB4_16AC74:
    /* 16AC74 80082BB4 0C006296 */  jal        func_80018A58_19658
    /* 16AC78 80082BB8 00000000 */   nop
    /* 16AC7C 80082BBC 104000A1 */  beqz       $v0, .L80082E44_16AF04
    /* 16AC80 80082BC0 3C0F800A */   lui       $t7, %hi(D_800A0A1C)
    /* 16AC84 80082BC4 8DEF0A1C */  lw         $t7, %lo(D_800A0A1C)($t7)
    /* 16AC88 80082BC8 24060078 */  addiu      $a2, $zero, 0x78
    /* 16AC8C 80082BCC 24040078 */  addiu      $a0, $zero, 0x78
    /* 16AC90 80082BD0 11E00006 */  beqz       $t7, .L80082BEC_16ACAC
    /* 16AC94 80082BD4 24050032 */   addiu     $a1, $zero, 0x32
    /* 16AC98 80082BD8 24040032 */  addiu      $a0, $zero, 0x32
    /* 16AC9C 80082BDC 0C0062BB */  jal        func_80018AEC_196EC
    /* 16ACA0 80082BE0 24050032 */   addiu     $a1, $zero, 0x32
    /* 16ACA4 80082BE4 10000003 */  b          .L80082BF4_16ACB4
    /* 16ACA8 80082BE8 00000000 */   nop
  .L80082BEC_16ACAC:
    /* 16ACAC 80082BEC 0C0062BB */  jal        func_80018AEC_196EC
    /* 16ACB0 80082BF0 24060078 */   addiu     $a2, $zero, 0x78
  .L80082BF4_16ACB4:
    /* 16ACB4 80082BF4 0C0062A8 */  jal        func_80018AA0_196A0
    /* 16ACB8 80082BF8 00000000 */   nop
    /* 16ACBC 80082BFC 10400091 */  beqz       $v0, .L80082E44_16AF04
    /* 16ACC0 80082C00 240400FF */   addiu     $a0, $zero, 0xFF
    /* 16ACC4 80082C04 3C058005 */  lui        $a1, %hi(D_80053BF4)
    /* 16ACC8 80082C08 24A53BF4 */  addiu      $a1, $a1, %lo(D_80053BF4)
    /* 16ACCC 80082C0C A4A40000 */  sh         $a0, 0x0($a1)
    /* 16ACD0 80082C10 84B80000 */  lh         $t8, 0x0($a1)
    /* 16ACD4 80082C14 3C068005 */  lui        $a2, %hi(D_80053BF2)
    /* 16ACD8 80082C18 24C63BF2 */  addiu      $a2, $a2, %lo(D_80053BF2)
    /* 16ACDC 80082C1C A4D80000 */  sh         $t8, 0x0($a2)
    /* 16ACE0 80082C20 84D90000 */  lh         $t9, 0x0($a2)
    /* 16ACE4 80082C24 3C098005 */  lui        $t1, %hi(D_80053BF0)
    /* 16ACE8 80082C28 25293BF0 */  addiu      $t1, $t1, %lo(D_80053BF0)
    /* 16ACEC 80082C2C 3C0E800A */  lui        $t6, %hi(D_800A0A1C)
    /* 16ACF0 80082C30 A5390000 */  sh         $t9, 0x0($t1)
    /* 16ACF4 80082C34 8DCE0A1C */  lw         $t6, %lo(D_800A0A1C)($t6)
    /* 16ACF8 80082C38 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* 16ACFC 80082C3C 3C038005 */  lui        $v1, %hi(D_80053BF6)
    /* 16AD00 80082C40 11C00011 */  beqz       $t6, .L80082C88_16AD48
    /* 16AD04 80082C44 2508BB2C */   addiu     $t0, $t0, %lo(D_8005BB2C)
    /* 16AD08 80082C48 240A007F */  addiu      $t2, $zero, 0x7F
    /* 16AD0C 80082C4C 3C018005 */  lui        $at, %hi(D_80053BF8)
    /* 16AD10 80082C50 A42A3BF8 */  sh         $t2, %lo(D_80053BF8)($at)
    /* 16AD14 80082C54 3C0B8005 */  lui        $t3, %hi(D_80053BFA)
    /* 16AD18 80082C58 3C0D8005 */  lui        $t5, %hi(D_80053BFC)
    /* 16AD1C 80082C5C 25AD3BFC */  addiu      $t5, $t5, %lo(D_80053BFC)
    /* 16AD20 80082C60 256B3BFA */  addiu      $t3, $t3, %lo(D_80053BFA)
    /* 16AD24 80082C64 240C00C8 */  addiu      $t4, $zero, 0xC8
    /* 16AD28 80082C68 241F00DC */  addiu      $ra, $zero, 0xDC
    /* 16AD2C 80082C6C A56C0000 */  sh         $t4, 0x0($t3)
    /* 16AD30 80082C70 A5BF0000 */  sh         $ra, 0x0($t5)
    /* 16AD34 80082C74 3C018005 */  lui        $at, %hi(D_80053BF6)
    /* 16AD38 80082C78 A4203BF6 */  sh         $zero, %lo(D_80053BF6)($at)
    /* 16AD3C 80082C7C 3C018005 */  lui        $at, %hi(D_80053BFE)
    /* 16AD40 80082C80 10000010 */  b          .L80082CC4_16AD84
    /* 16AD44 80082C84 A4243BFE */   sh        $a0, %lo(D_80053BFE)($at)
  .L80082C88_16AD48:
    /* 16AD48 80082C88 241F00DC */  addiu      $ra, $zero, 0xDC
    /* 16AD4C 80082C8C 3C018005 */  lui        $at, %hi(D_80053BF8)
    /* 16AD50 80082C90 A43F3BF8 */  sh         $ra, %lo(D_80053BF8)($at)
    /* 16AD54 80082C94 3C0B8005 */  lui        $t3, %hi(D_80053BFA)
    /* 16AD58 80082C98 3C0D8005 */  lui        $t5, %hi(D_80053BFC)
    /* 16AD5C 80082C9C 25AD3BFC */  addiu      $t5, $t5, %lo(D_80053BFC)
    /* 16AD60 80082CA0 256B3BFA */  addiu      $t3, $t3, %lo(D_80053BFA)
    /* 16AD64 80082CA4 24633BF6 */  addiu      $v1, $v1, %lo(D_80053BF6)
    /* 16AD68 80082CA8 240A007F */  addiu      $t2, $zero, 0x7F
    /* 16AD6C 80082CAC 240C00C8 */  addiu      $t4, $zero, 0xC8
    /* 16AD70 80082CB0 A56C0000 */  sh         $t4, 0x0($t3)
    /* 16AD74 80082CB4 A5AA0000 */  sh         $t2, 0x0($t5)
    /* 16AD78 80082CB8 A4600000 */  sh         $zero, 0x0($v1)
    /* 16AD7C 80082CBC 3C018005 */  lui        $at, %hi(D_80053BFE)
    /* 16AD80 80082CC0 A4243BFE */  sh         $a0, %lo(D_80053BFE)($at)
  .L80082CC4_16AD84:
    /* 16AD84 80082CC4 8D020000 */  lw         $v0, 0x0($t0)
    /* 16AD88 80082CC8 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* 16AD8C 80082CCC 244F0008 */  addiu      $t7, $v0, 0x8
    /* 16AD90 80082CD0 AD0F0000 */  sw         $t7, 0x0($t0)
    /* 16AD94 80082CD4 AC400004 */  sw         $zero, 0x4($v0)
    /* 16AD98 80082CD8 0C005F29 */  jal        func_80017CA4_188A4
    /* 16AD9C 80082CDC AC580000 */   sw        $t8, 0x0($v0)
    /* 16ADA0 80082CE0 3C19800A */  lui        $t9, %hi(D_800A0A1C)
    /* 16ADA4 80082CE4 8F390A1C */  lw         $t9, %lo(D_800A0A1C)($t9)
    /* 16ADA8 80082CE8 3C038005 */  lui        $v1, %hi(D_80053BF6)
    /* 16ADAC 80082CEC 3C058005 */  lui        $a1, %hi(D_80053BF4)
    /* 16ADB0 80082CF0 3C068005 */  lui        $a2, %hi(D_80053BF2)
    /* 16ADB4 80082CF4 3C098005 */  lui        $t1, %hi(D_80053BF0)
    /* 16ADB8 80082CF8 3C0B8005 */  lui        $t3, %hi(D_80053BFA)
    /* 16ADBC 80082CFC 3C0D8005 */  lui        $t5, %hi(D_80053BFC)
    /* 16ADC0 80082D00 25AD3BFC */  addiu      $t5, $t5, %lo(D_80053BFC)
    /* 16ADC4 80082D04 256B3BFA */  addiu      $t3, $t3, %lo(D_80053BFA)
    /* 16ADC8 80082D08 25293BF0 */  addiu      $t1, $t1, %lo(D_80053BF0)
    /* 16ADCC 80082D0C 24C63BF2 */  addiu      $a2, $a2, %lo(D_80053BF2)
    /* 16ADD0 80082D10 24A53BF4 */  addiu      $a1, $a1, %lo(D_80053BF4)
    /* 16ADD4 80082D14 24633BF6 */  addiu      $v1, $v1, %lo(D_80053BF6)
    /* 16ADD8 80082D18 240400FF */  addiu      $a0, $zero, 0xFF
    /* 16ADDC 80082D1C 240A007F */  addiu      $t2, $zero, 0x7F
    /* 16ADE0 80082D20 240C00C8 */  addiu      $t4, $zero, 0xC8
    /* 16ADE4 80082D24 13200008 */  beqz       $t9, .L80082D48_16AE08
    /* 16ADE8 80082D28 241F00DC */   addiu     $ra, $zero, 0xDC
    /* 16ADEC 80082D2C A52A0000 */  sh         $t2, 0x0($t1)
    /* 16ADF0 80082D30 A4CC0000 */  sh         $t4, 0x0($a2)
    /* 16ADF4 80082D34 A4BF0000 */  sh         $ra, 0x0($a1)
    /* 16ADF8 80082D38 A4600000 */  sh         $zero, 0x0($v1)
    /* 16ADFC 80082D3C 3C018005 */  lui        $at, %hi(D_80053BFE)
    /* 16AE00 80082D40 10000007 */  b          .L80082D60_16AE20
    /* 16AE04 80082D44 A4243BFE */   sh        $a0, %lo(D_80053BFE)($at)
  .L80082D48_16AE08:
    /* 16AE08 80082D48 A53F0000 */  sh         $ra, 0x0($t1)
    /* 16AE0C 80082D4C A4CC0000 */  sh         $t4, 0x0($a2)
    /* 16AE10 80082D50 A4AA0000 */  sh         $t2, 0x0($a1)
    /* 16AE14 80082D54 A4600000 */  sh         $zero, 0x0($v1)
    /* 16AE18 80082D58 3C018005 */  lui        $at, %hi(D_80053BFE)
    /* 16AE1C 80082D5C A4243BFE */  sh         $a0, %lo(D_80053BFE)($at)
  .L80082D60_16AE20:
    /* 16AE20 80082D60 A5A40000 */  sh         $a0, 0x0($t5)
    /* 16AE24 80082D64 85AE0000 */  lh         $t6, 0x0($t5)
    /* 16AE28 80082D68 3C018005 */  lui        $at, %hi(D_80053BF8)
    /* 16AE2C 80082D6C A56E0000 */  sh         $t6, 0x0($t3)
    /* 16AE30 80082D70 856F0000 */  lh         $t7, 0x0($t3)
    /* 16AE34 80082D74 0C005EDE */  jal        func_80017B78_18778
    /* 16AE38 80082D78 A42F3BF8 */   sh        $t7, %lo(D_80053BF8)($at)
    /* 16AE3C 80082D7C 3C07800E */  lui        $a3, %hi(D_800E65A8)
    /* 16AE40 80082D80 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* 16AE44 80082D84 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* 16AE48 80082D88 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* 16AE4C 80082D8C 1441001E */  bne        $v0, $at, .L80082E08_16AEC8
    /* 16AE50 80082D90 24E765A8 */   addiu     $a3, $a3, %lo(D_800E65A8)
    /* 16AE54 80082D94 3C01800E */  lui        $at, %hi(D_800E7398)
    /* 16AE58 80082D98 AC207398 */  sw         $zero, %lo(D_800E7398)($at)
    /* 16AE5C 80082D9C 8CF80000 */  lw         $t8, 0x0($a3)
    /* 16AE60 80082DA0 2401FFFD */  addiu      $at, $zero, -0x3
    /* 16AE64 80082DA4 03011024 */  and        $v0, $t8, $at
    /* 16AE68 80082DA8 304E0008 */  andi       $t6, $v0, 0x8
    /* 16AE6C 80082DAC 11C0000B */  beqz       $t6, .L80082DDC_16AE9C
    /* 16AE70 80082DB0 ACE20000 */   sw        $v0, 0x0($a3)
    /* 16AE74 80082DB4 0C01EB90 */  jal        func_8007AE40_162F00
    /* 16AE78 80082DB8 00000000 */   nop
    /* 16AE7C 80082DBC 3C07800E */  lui        $a3, %hi(D_800E65A8)
    /* 16AE80 80082DC0 24E765A8 */  addiu      $a3, $a3, %lo(D_800E65A8)
    /* 16AE84 80082DC4 8CEF0000 */  lw         $t7, 0x0($a3)
    /* 16AE88 80082DC8 2401FFF7 */  addiu      $at, $zero, -0x9
    /* 16AE8C 80082DCC 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* 16AE90 80082DD0 01E11024 */  and        $v0, $t7, $at
    /* 16AE94 80082DD4 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* 16AE98 80082DD8 ACE20000 */  sw         $v0, 0x0($a3)
  .L80082DDC_16AE9C:
    /* 16AE9C 80082DDC 30591000 */  andi       $t9, $v0, 0x1000
    /* 16AEA0 80082DE0 13200004 */  beqz       $t9, .L80082DF4_16AEB4
    /* 16AEA4 80082DE4 2401EFFF */   addiu     $at, $zero, -0x1001
    /* 16AEA8 80082DE8 00417024 */  and        $t6, $v0, $at
    /* 16AEAC 80082DEC ACEE0000 */  sw         $t6, 0x0($a3)
    /* 16AEB0 80082DF0 01C01025 */  or         $v0, $t6, $zero
  .L80082DF4_16AEB4:
    /* 16AEB4 80082DF4 304F0400 */  andi       $t7, $v0, 0x400
    /* 16AEB8 80082DF8 11E00003 */  beqz       $t7, .L80082E08_16AEC8
    /* 16AEBC 80082DFC 2401FBFF */   addiu     $at, $zero, -0x401
    /* 16AEC0 80082E00 0041C024 */  and        $t8, $v0, $at
    /* 16AEC4 80082E04 ACF80000 */  sw         $t8, 0x0($a3)
  .L80082E08_16AEC8:
    /* 16AEC8 80082E08 8D020000 */  lw         $v0, 0x0($t0)
    /* 16AECC 80082E0C 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* 16AED0 80082E10 3C18FC12 */  lui        $t8, (0xFC121824 >> 16)
    /* 16AED4 80082E14 24590008 */  addiu      $t9, $v0, 0x8
    /* 16AED8 80082E18 AD190000 */  sw         $t9, 0x0($t0)
    /* 16AEDC 80082E1C AC400004 */  sw         $zero, 0x4($v0)
    /* 16AEE0 80082E20 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 16AEE4 80082E24 8D020000 */  lw         $v0, 0x0($t0)
    /* 16AEE8 80082E28 3C19FF33 */  lui        $t9, (0xFF33FFFF >> 16)
    /* 16AEEC 80082E2C 3739FFFF */  ori        $t9, $t9, (0xFF33FFFF & 0xFFFF)
    /* 16AEF0 80082E30 244F0008 */  addiu      $t7, $v0, 0x8
    /* 16AEF4 80082E34 AD0F0000 */  sw         $t7, 0x0($t0)
    /* 16AEF8 80082E38 37181824 */  ori        $t8, $t8, (0xFC121824 & 0xFFFF)
    /* 16AEFC 80082E3C AC580000 */  sw         $t8, 0x0($v0)
    /* 16AF00 80082E40 AC590004 */  sw         $t9, 0x4($v0)
  .L80082E44_16AF04:
    /* 16AF04 80082E44 3C028005 */  lui        $v0, %hi(D_80052AD8)
    /* 16AF08 80082E48 24422AD8 */  addiu      $v0, $v0, %lo(D_80052AD8)
    /* 16AF0C 80082E4C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 16AF10 80082E50 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 16AF14 80082E54 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 16AF18 80082E58 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 16AF1C 80082E5C 03E00008 */  jr         $ra
    /* 16AF20 80082E60 AC4F0000 */   sw        $t7, 0x0($v0)
endlabel func_80082B50_16AC10
    /* 16AF24 80082E64 00000000 */  nop
    /* 16AF28 80082E68 00000000 */  nop
    /* 16AF2C 80082E6C 00000000 */  nop
