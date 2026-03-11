nonmatching func_8008AC5C_99C0C, 0x2FC

glabel func_8008AC5C_99C0C
    /* 99C0C 8008AC5C 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* 99C10 8008AC60 308600FF */  andi       $a2, $a0, 0xFF
    /* 99C14 8008AC64 00067080 */  sll        $t6, $a2, 2
    /* 99C18 8008AC68 01C67021 */  addu       $t6, $t6, $a2
    /* 99C1C 8008AC6C 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 99C20 8008AC70 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 99C24 8008AC74 000E7100 */  sll        $t6, $t6, 4
    /* 99C28 8008AC78 01CF1021 */  addu       $v0, $t6, $t7
    /* 99C2C 8008AC7C 8C580020 */  lw         $t8, 0x20($v0)
    /* 99C30 8008AC80 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 99C34 8008AC84 AFBE0048 */  sw         $fp, 0x48($sp)
    /* 99C38 8008AC88 33190600 */  andi       $t9, $t8, 0x600
    /* 99C3C 8008AC8C AFB70044 */  sw         $s7, 0x44($sp)
    /* 99C40 8008AC90 AFB60040 */  sw         $s6, 0x40($sp)
    /* 99C44 8008AC94 AFB5003C */  sw         $s5, 0x3C($sp)
    /* 99C48 8008AC98 AFB40038 */  sw         $s4, 0x38($sp)
    /* 99C4C 8008AC9C AFB30034 */  sw         $s3, 0x34($sp)
    /* 99C50 8008ACA0 AFB20030 */  sw         $s2, 0x30($sp)
    /* 99C54 8008ACA4 AFB1002C */  sw         $s1, 0x2C($sp)
    /* 99C58 8008ACA8 AFB00028 */  sw         $s0, 0x28($sp)
    /* 99C5C 8008ACAC 1320009E */  beqz       $t9, .L8008AF28_99ED8
    /* 99C60 8008ACB0 AFA40088 */   sw        $a0, 0x88($sp)
    /* 99C64 8008ACB4 00C02025 */  or         $a0, $a2, $zero
    /* 99C68 8008ACB8 2405000F */  addiu      $a1, $zero, 0xF
    /* 99C6C 8008ACBC AFA20060 */  sw         $v0, 0x60($sp)
    /* 99C70 8008ACC0 0C04DD1A */  jal        func_80137468_146418
    /* 99C74 8008ACC4 A3A6008B */   sb        $a2, 0x8B($sp)
    /* 99C78 8008ACC8 8FA20060 */  lw         $v0, 0x60($sp)
    /* 99C7C 8008ACCC 3C138015 */  lui        $s3, %hi(D_8014DD5C)
    /* 99C80 8008ACD0 240A000F */  addiu      $t2, $zero, 0xF
    /* 99C84 8008ACD4 8448000C */  lh         $t0, 0xC($v0)
    /* 99C88 8008ACD8 AFAA0068 */  sw         $t2, 0x68($sp)
    /* 99C8C 8008ACDC 94440006 */  lhu        $a0, 0x6($v0)
    /* 99C90 8008ACE0 00084900 */  sll        $t1, $t0, 4
    /* 99C94 8008ACE4 02699821 */  addu       $s3, $s3, $t1
    /* 99C98 8008ACE8 0C007654 */  jal        coss
    /* 99C9C 8008ACEC 8273DD5C */   lb        $s3, %lo(D_8014DD5C)($s3)
    /* 99CA0 8008ACF0 44822000 */  mtc1       $v0, $f4
    /* 99CA4 8008ACF4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 99CA8 8008ACF8 44815800 */  mtc1       $at, $f11
    /* 99CAC 8008ACFC 468021A0 */  cvt.s.w    $f6, $f4
    /* 99CB0 8008AD00 44805000 */  mtc1       $zero, $f10
    /* 99CB4 8008AD04 3C014018 */  lui        $at, (0x40180000 >> 16)
    /* 99CB8 8008AD08 44819800 */  mtc1       $at, $f19
    /* 99CBC 8008AD0C 44809000 */  mtc1       $zero, $f18
    /* 99CC0 8008AD10 8FAE0060 */  lw         $t6, 0x60($sp)
    /* 99CC4 8008AD14 46003221 */  cvt.d.s    $f8, $f6
    /* 99CC8 8008AD18 462A4403 */  div.d      $f16, $f8, $f10
    /* 99CCC 8008AD1C 95C40006 */  lhu        $a0, 0x6($t6)
    /* 99CD0 8008AD20 46328102 */  mul.d      $f4, $f16, $f18
    /* 99CD4 8008AD24 4620218D */  trunc.w.d  $f6, $f4
    /* 99CD8 8008AD28 44153000 */  mfc1       $s5, $f6
    /* 99CDC 8008AD2C 00000000 */  nop
    /* 99CE0 8008AD30 00156400 */  sll        $t4, $s5, 16
    /* 99CE4 8008AD34 0C007660 */  jal        sins
    /* 99CE8 8008AD38 000CAC03 */   sra       $s5, $t4, 16
    /* 99CEC 8008AD3C 44824000 */  mtc1       $v0, $f8
    /* 99CF0 8008AD40 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 99CF4 8008AD44 44819800 */  mtc1       $at, $f19
    /* 99CF8 8008AD48 468042A0 */  cvt.s.w    $f10, $f8
    /* 99CFC 8008AD4C 44809000 */  mtc1       $zero, $f18
    /* 99D00 8008AD50 3C014018 */  lui        $at, (0x40180000 >> 16)
    /* 99D04 8008AD54 44813800 */  mtc1       $at, $f7
    /* 99D08 8008AD58 44803000 */  mtc1       $zero, $f6
    /* 99D0C 8008AD5C 00009025 */  or         $s2, $zero, $zero
    /* 99D10 8008AD60 46005421 */  cvt.d.s    $f16, $f10
    /* 99D14 8008AD64 2414FFFF */  addiu      $s4, $zero, -0x1
    /* 99D18 8008AD68 46328103 */  div.d      $f4, $f16, $f18
    /* 99D1C 8008AD6C 46262202 */  mul.d      $f8, $f4, $f6
    /* 99D20 8008AD70 4620428D */  trunc.w.d  $f10, $f8
    /* 99D24 8008AD74 44165000 */  mfc1       $s6, $f10
    /* 99D28 8008AD78 00000000 */  nop
    /* 99D2C 8008AD7C 0016C400 */  sll        $t8, $s6, 16
    /* 99D30 8008AD80 0018B403 */  sra        $s6, $t8, 16
    /* 99D34 8008AD84 00132C00 */  sll        $a1, $s3, 16
  .L8008AD88_99D38:
    /* 99D38 8008AD88 0016B823 */  negu       $s7, $s6
    /* 99D3C 8008AD8C 0015F600 */  sll        $fp, $s5, 24
    /* 99D40 8008AD90 001E5E03 */  sra        $t3, $fp, 24
    /* 99D44 8008AD94 00174E00 */  sll        $t1, $s7, 24
    /* 99D48 8008AD98 00054403 */  sra        $t0, $a1, 16
    /* 99D4C 8008AD9C 01002825 */  or         $a1, $t0, $zero
    /* 99D50 8008ADA0 0009BE03 */  sra        $s7, $t1, 24
    /* 99D54 8008ADA4 0160F025 */  or         $fp, $t3, $zero
    /* 99D58 8008ADA8 0C02245B */  jal        func_8008916C_9811C
    /* 99D5C 8008ADAC 93A4008B */   lbu       $a0, 0x8B($sp)
    /* 99D60 8008ADB0 3C0D8015 */  lui        $t5, %hi(D_8014DD50)
    /* 99D64 8008ADB4 25ADDD50 */  addiu      $t5, $t5, %lo(D_8014DD50)
    /* 99D68 8008ADB8 00136100 */  sll        $t4, $s3, 4
    /* 99D6C 8008ADBC 018D8021 */  addu       $s0, $t4, $t5
    /* 99D70 8008ADC0 27AE0084 */  addiu      $t6, $sp, 0x84
    /* 99D74 8008ADC4 27AF0080 */  addiu      $t7, $sp, 0x80
    /* 99D78 8008ADC8 27B8007C */  addiu      $t8, $sp, 0x7C
    /* 99D7C 8008ADCC 00408825 */  or         $s1, $v0, $zero
    /* 99D80 8008ADD0 AFB80018 */  sw         $t8, 0x18($sp)
    /* 99D84 8008ADD4 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 99D88 8008ADD8 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 99D8C 8008ADDC 86050000 */  lh         $a1, 0x0($s0)
    /* 99D90 8008ADE0 86060002 */  lh         $a2, 0x2($s0)
    /* 99D94 8008ADE4 86070004 */  lh         $a3, 0x4($s0)
    /* 99D98 8008ADE8 0C04A10A */  jal        func_80128428_1373D8
    /* 99D9C 8008ADEC 8FA40060 */   lw        $a0, 0x60($sp)
    /* 99DA0 8008ADF0 2419FFF8 */  addiu      $t9, $zero, -0x8
    /* 99DA4 8008ADF4 24080002 */  addiu      $t0, $zero, 0x2
    /* 99DA8 8008ADF8 24090001 */  addiu      $t1, $zero, 0x1
    /* 99DAC 8008ADFC AFA9001C */  sw         $t1, 0x1C($sp)
    /* 99DB0 8008AE00 AFA80014 */  sw         $t0, 0x14($sp)
    /* 99DB4 8008AE04 AFB90010 */  sw         $t9, 0x10($sp)
    /* 99DB8 8008AE08 87A40086 */  lh         $a0, 0x86($sp)
    /* 99DBC 8008AE0C 87A50082 */  lh         $a1, 0x82($sp)
    /* 99DC0 8008AE10 87A6007E */  lh         $a2, 0x7E($sp)
    /* 99DC4 8008AE14 24070040 */  addiu      $a3, $zero, 0x40
    /* 99DC8 8008AE18 0C031E49 */  jal        func_800C7924_D68D4
    /* 99DCC 8008AE1C AFB10018 */   sw        $s1, 0x18($sp)
    /* 99DD0 8008AE20 8FAB0060 */  lw         $t3, 0x60($sp)
    /* 99DD4 8008AE24 240D4000 */  addiu      $t5, $zero, 0x4000
    /* 99DD8 8008AE28 00028C00 */  sll        $s1, $v0, 16
    /* 99DDC 8008AE2C 856C0006 */  lh         $t4, 0x6($t3)
    /* 99DE0 8008AE30 00023C00 */  sll        $a3, $v0, 16
    /* 99DE4 8008AE34 00115403 */  sra        $t2, $s1, 16
    /* 99DE8 8008AE38 01AC2023 */  subu       $a0, $t5, $t4
    /* 99DEC 8008AE3C 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* 99DF0 8008AE40 00077C03 */  sra        $t7, $a3, 16
    /* 99DF4 8008AE44 01408825 */  or         $s1, $t2, $zero
    /* 99DF8 8008AE48 01E03825 */  or         $a3, $t7, $zero
    /* 99DFC 8008AE4C 01C02025 */  or         $a0, $t6, $zero
    /* 99E00 8008AE50 00002825 */  or         $a1, $zero, $zero
    /* 99E04 8008AE54 0C03203C */  jal        func_800C80F0_D70A0
    /* 99E08 8008AE58 00003025 */   or        $a2, $zero, $zero
    /* 99E0C 8008AE5C 8FA20068 */  lw         $v0, 0x68($sp)
    /* 99E10 8008AE60 00113C00 */  sll        $a3, $s1, 16
    /* 99E14 8008AE64 0007CC03 */  sra        $t9, $a3, 16
    /* 99E18 8008AE68 00540019 */  multu      $v0, $s4
    /* 99E1C 8008AE6C 03203825 */  or         $a3, $t9, $zero
    /* 99E20 8008AE70 00002825 */  or         $a1, $zero, $zero
    /* 99E24 8008AE74 00003025 */  or         $a2, $zero, $zero
    /* 99E28 8008AE78 00001012 */  mflo       $v0
    /* 99E2C 8008AE7C 00022600 */  sll        $a0, $v0, 24
    /* 99E30 8008AE80 0004C603 */  sra        $t8, $a0, 24
    /* 99E34 8008AE84 03002025 */  or         $a0, $t8, $zero
    /* 99E38 8008AE88 0C032083 */  jal        func_800C820C_D71BC
    /* 99E3C 8008AE8C AFA20068 */   sw        $v0, 0x68($sp)
    /* 99E40 8008AE90 00172600 */  sll        $a0, $s7, 24
    /* 99E44 8008AE94 001E3600 */  sll        $a2, $fp, 24
    /* 99E48 8008AE98 00113C00 */  sll        $a3, $s1, 16
    /* 99E4C 8008AE9C 00075403 */  sra        $t2, $a3, 16
    /* 99E50 8008AEA0 00064E03 */  sra        $t1, $a2, 24
    /* 99E54 8008AEA4 00044603 */  sra        $t0, $a0, 24
    /* 99E58 8008AEA8 01002025 */  or         $a0, $t0, $zero
    /* 99E5C 8008AEAC 01203025 */  or         $a2, $t1, $zero
    /* 99E60 8008AEB0 01403825 */  or         $a3, $t2, $zero
    /* 99E64 8008AEB4 0C032061 */  jal        func_800C8184_D7134
    /* 99E68 8008AEB8 24050001 */   addiu     $a1, $zero, 0x1
    /* 99E6C 8008AEBC 00132400 */  sll        $a0, $s3, 16
    /* 99E70 8008AEC0 00045C03 */  sra        $t3, $a0, 16
    /* 99E74 8008AEC4 0C022384 */  jal        func_80088E10_97DC0
    /* 99E78 8008AEC8 01602025 */   or        $a0, $t3, $zero
    /* 99E7C 8008AECC 8213000D */  lb         $s3, 0xD($s0)
    /* 99E80 8008AED0 24010001 */  addiu      $at, $zero, 0x1
    /* 99E84 8008AED4 52740010 */  beql       $s3, $s4, .L8008AF18_99EC8
    /* 99E88 8008AED8 8FB90060 */   lw        $t9, 0x60($sp)
    /* 99E8C 8008AEDC 5641000A */  bnel       $s2, $at, .L8008AF08_99EB8
    /* 99E90 8008AEE0 26520001 */   addiu     $s2, $s2, 0x1
    /* 99E94 8008AEE4 02B40019 */  multu      $s5, $s4
    /* 99E98 8008AEE8 0000A812 */  mflo       $s5
    /* 99E9C 8008AEEC 00156C00 */  sll        $t5, $s5, 16
    /* 99EA0 8008AEF0 000DAC03 */  sra        $s5, $t5, 16
    /* 99EA4 8008AEF4 02D40019 */  multu      $s6, $s4
    /* 99EA8 8008AEF8 0000B012 */  mflo       $s6
    /* 99EAC 8008AEFC 00167400 */  sll        $t6, $s6, 16
    /* 99EB0 8008AF00 000EB403 */  sra        $s6, $t6, 16
    /* 99EB4 8008AF04 26520001 */  addiu      $s2, $s2, 0x1
  .L8008AF08_99EB8:
    /* 99EB8 8008AF08 24010002 */  addiu      $at, $zero, 0x2
    /* 99EBC 8008AF0C 5641FF9E */  bnel       $s2, $at, .L8008AD88_99D38
    /* 99EC0 8008AF10 00132C00 */   sll       $a1, $s3, 16
    /* 99EC4 8008AF14 8FB90060 */  lw         $t9, 0x60($sp)
  .L8008AF18_99EC8:
    /* 99EC8 8008AF18 2418005A */  addiu      $t8, $zero, 0x5A
    /* 99ECC 8008AF1C A738002C */  sh         $t8, 0x2C($t9)
    /* 99ED0 8008AF20 A7200012 */  sh         $zero, 0x12($t9)
    /* 99ED4 8008AF24 A7200010 */  sh         $zero, 0x10($t9)
  .L8008AF28_99ED8:
    /* 99ED8 8008AF28 8FBF004C */  lw         $ra, 0x4C($sp)
    /* 99EDC 8008AF2C 8FB00028 */  lw         $s0, 0x28($sp)
    /* 99EE0 8008AF30 8FB1002C */  lw         $s1, 0x2C($sp)
    /* 99EE4 8008AF34 8FB20030 */  lw         $s2, 0x30($sp)
    /* 99EE8 8008AF38 8FB30034 */  lw         $s3, 0x34($sp)
    /* 99EEC 8008AF3C 8FB40038 */  lw         $s4, 0x38($sp)
    /* 99EF0 8008AF40 8FB5003C */  lw         $s5, 0x3C($sp)
    /* 99EF4 8008AF44 8FB60040 */  lw         $s6, 0x40($sp)
    /* 99EF8 8008AF48 8FB70044 */  lw         $s7, 0x44($sp)
    /* 99EFC 8008AF4C 8FBE0048 */  lw         $fp, 0x48($sp)
    /* 99F00 8008AF50 03E00008 */  jr         $ra
    /* 99F04 8008AF54 27BD0088 */   addiu     $sp, $sp, 0x88
endlabel func_8008AC5C_99C0C
