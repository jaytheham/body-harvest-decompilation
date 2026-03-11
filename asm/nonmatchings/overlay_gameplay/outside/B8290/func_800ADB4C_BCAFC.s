nonmatching func_800ADB4C_BCAFC, 0x474

glabel func_800ADB4C_BCAFC
    /* BCAFC 800ADB4C 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* BCB00 800ADB50 AFA40050 */  sw         $a0, 0x50($sp)
    /* BCB04 800ADB54 93AE0053 */  lbu        $t6, 0x53($sp)
    /* BCB08 800ADB58 3C188005 */  lui        $t8, %hi(alienInstances)
    /* BCB0C 800ADB5C AFB00040 */  sw         $s0, 0x40($sp)
    /* BCB10 800ADB60 000E7880 */  sll        $t7, $t6, 2
    /* BCB14 800ADB64 01EE7821 */  addu       $t7, $t7, $t6
    /* BCB18 800ADB68 000F7900 */  sll        $t7, $t7, 4
    /* BCB1C 800ADB6C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* BCB20 800ADB70 AFBF0044 */  sw         $ra, 0x44($sp)
    /* BCB24 800ADB74 01F88021 */  addu       $s0, $t7, $t8
    /* BCB28 800ADB78 0C03BD94 */  jal        func_800EF650_FE600
    /* BCB2C 800ADB7C 02002025 */   or        $a0, $s0, $zero
    /* BCB30 800ADB80 14400009 */  bnez       $v0, .L800ADBA8_BCB58
    /* BCB34 800ADB84 24010001 */   addiu     $at, $zero, 0x1
    /* BCB38 800ADB88 8E190020 */  lw         $t9, 0x20($s0)
    /* BCB3C 800ADB8C 332801A0 */  andi       $t0, $t9, 0x1A0
    /* BCB40 800ADB90 11000005 */  beqz       $t0, .L800ADBA8_BCB58
    /* BCB44 800ADB94 00000000 */   nop
    /* BCB48 800ADB98 0C020193 */  jal        func_8008064C_8F5FC
    /* BCB4C 800ADB9C 93A40053 */   lbu       $a0, 0x53($sp)
    /* BCB50 800ADBA0 1000000C */  b          .L800ADBD4_BCB84
    /* BCB54 800ADBA4 92090024 */   lbu       $t1, 0x24($s0)
  .L800ADBA8_BCB58:
    /* BCB58 800ADBA8 14410005 */  bne        $v0, $at, .L800ADBC0_BCB70
    /* BCB5C 800ADBAC 93A40053 */   lbu       $a0, 0x53($sp)
    /* BCB60 800ADBB0 0C02023C */  jal        func_800808F0_8F8A0
    /* BCB64 800ADBB4 2605000E */   addiu     $a1, $s0, 0xE
    /* BCB68 800ADBB8 10000006 */  b          .L800ADBD4_BCB84
    /* BCB6C 800ADBBC 92090024 */   lbu       $t1, 0x24($s0)
  .L800ADBC0_BCB70:
    /* BCB70 800ADBC0 24010002 */  addiu      $at, $zero, 0x2
    /* BCB74 800ADBC4 54410003 */  bnel       $v0, $at, .L800ADBD4_BCB84
    /* BCB78 800ADBC8 92090024 */   lbu       $t1, 0x24($s0)
    /* BCB7C 800ADBCC A6000012 */  sh         $zero, 0x12($s0)
    /* BCB80 800ADBD0 92090024 */  lbu        $t1, 0x24($s0)
  .L800ADBD4_BCB84:
    /* BCB84 800ADBD4 252AFFFF */  addiu      $t2, $t1, -0x1
    /* BCB88 800ADBD8 2D410008 */  sltiu      $at, $t2, 0x8
    /* BCB8C 800ADBDC 102000EF */  beqz       $at, .L800ADF9C_BCF4C
    /* BCB90 800ADBE0 000A5080 */   sll       $t2, $t2, 2
    /* BCB94 800ADBE4 3C018014 */  lui        $at, %hi(jtbl_80142A8C_overlay_gameplay_outside)
    /* BCB98 800ADBE8 002A0821 */  addu       $at, $at, $t2
    /* BCB9C 800ADBEC 8C2A2A8C */  lw         $t2, %lo(jtbl_80142A8C_overlay_gameplay_outside)($at)
    /* BCBA0 800ADBF0 01400008 */  jr         $t2
    /* BCBA4 800ADBF4 00000000 */   nop
    /* BCBA8 800ADBF8 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* BCBAC 800ADBFC 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* BCBB0 800ADC00 860B0000 */  lh         $t3, 0x0($s0)
    /* BCBB4 800ADC04 860D0004 */  lh         $t5, 0x4($s0)
    /* BCBB8 800ADC08 844C0000 */  lh         $t4, 0x0($v0)
    /* BCBBC 800ADC0C 844E0004 */  lh         $t6, 0x4($v0)
    /* BCBC0 800ADC10 016C1823 */  subu       $v1, $t3, $t4
    /* BCBC4 800ADC14 00032823 */  negu       $a1, $v1
    /* BCBC8 800ADC18 00A3082A */  slt        $at, $a1, $v1
    /* BCBCC 800ADC1C 10200003 */  beqz       $at, .L800ADC2C_BCBDC
    /* BCBD0 800ADC20 01AE2023 */   subu      $a0, $t5, $t6
    /* BCBD4 800ADC24 10000002 */  b          .L800ADC30_BCBE0
    /* BCBD8 800ADC28 00603825 */   or        $a3, $v1, $zero
  .L800ADC2C_BCBDC:
    /* BCBDC 800ADC2C 00A03825 */  or         $a3, $a1, $zero
  .L800ADC30_BCBE0:
    /* BCBE0 800ADC30 00041023 */  negu       $v0, $a0
    /* BCBE4 800ADC34 0044082A */  slt        $at, $v0, $a0
    /* BCBE8 800ADC38 10200003 */  beqz       $at, .L800ADC48_BCBF8
    /* BCBEC 800ADC3C 00403025 */   or        $a2, $v0, $zero
    /* BCBF0 800ADC40 10000001 */  b          .L800ADC48_BCBF8
    /* BCBF4 800ADC44 00803025 */   or        $a2, $a0, $zero
  .L800ADC48_BCBF8:
    /* BCBF8 800ADC48 00C7082A */  slt        $at, $a2, $a3
    /* BCBFC 800ADC4C 10200007 */  beqz       $at, .L800ADC6C_BCC1C
    /* BCC00 800ADC50 00A3082A */   slt       $at, $a1, $v1
    /* BCC04 800ADC54 10200003 */  beqz       $at, .L800ADC64_BCC14
    /* BCC08 800ADC58 00A01025 */   or        $v0, $a1, $zero
    /* BCC0C 800ADC5C 10000009 */  b          .L800ADC84_BCC34
    /* BCC10 800ADC60 00603025 */   or        $a2, $v1, $zero
  .L800ADC64_BCC14:
    /* BCC14 800ADC64 10000007 */  b          .L800ADC84_BCC34
    /* BCC18 800ADC68 00403025 */   or        $a2, $v0, $zero
  .L800ADC6C_BCC1C:
    /* BCC1C 800ADC6C 0044082A */  slt        $at, $v0, $a0
    /* BCC20 800ADC70 10200003 */  beqz       $at, .L800ADC80_BCC30
    /* BCC24 800ADC74 00401825 */   or        $v1, $v0, $zero
    /* BCC28 800ADC78 10000001 */  b          .L800ADC80_BCC30
    /* BCC2C 800ADC7C 00801825 */   or        $v1, $a0, $zero
  .L800ADC80_BCC30:
    /* BCC30 800ADC80 00603025 */  or         $a2, $v1, $zero
  .L800ADC84_BCC34:
    /* BCC34 800ADC84 93A40053 */  lbu        $a0, 0x53($sp)
    /* BCC38 800ADC88 24051000 */  addiu      $a1, $zero, 0x1000
    /* BCC3C 800ADC8C 0C0213FA */  jal        func_80084FE8_93F98
    /* BCC40 800ADC90 AFA60048 */   sw        $a2, 0x48($sp)
    /* BCC44 800ADC94 8FA60048 */  lw         $a2, 0x48($sp)
    /* BCC48 800ADC98 28C10320 */  slti       $at, $a2, 0x320
    /* BCC4C 800ADC9C 50200008 */  beql       $at, $zero, .L800ADCC0_BCC70
    /* BCC50 800ADCA0 28C103E9 */   slti      $at, $a2, 0x3E9
    /* BCC54 800ADCA4 50400006 */  beql       $v0, $zero, .L800ADCC0_BCC70
    /* BCC58 800ADCA8 28C103E9 */   slti      $at, $a2, 0x3E9
    /* BCC5C 800ADCAC 8E0F0020 */  lw         $t7, 0x20($s0)
    /* BCC60 800ADCB0 35F81000 */  ori        $t8, $t7, 0x1000
    /* BCC64 800ADCB4 1000000A */  b          .L800ADCE0_BCC90
    /* BCC68 800ADCB8 AE180020 */   sw        $t8, 0x20($s0)
    /* BCC6C 800ADCBC 28C103E9 */  slti       $at, $a2, 0x3E9
  .L800ADCC0_BCC70:
    /* BCC70 800ADCC0 50200004 */  beql       $at, $zero, .L800ADCD4_BCC84
    /* BCC74 800ADCC4 8E190020 */   lw        $t9, 0x20($s0)
    /* BCC78 800ADCC8 54400006 */  bnel       $v0, $zero, .L800ADCE4_BCC94
    /* BCC7C 800ADCCC 8E090020 */   lw        $t1, 0x20($s0)
    /* BCC80 800ADCD0 8E190020 */  lw         $t9, 0x20($s0)
  .L800ADCD4_BCC84:
    /* BCC84 800ADCD4 2401EFFF */  addiu      $at, $zero, -0x1001
    /* BCC88 800ADCD8 03214024 */  and        $t0, $t9, $at
    /* BCC8C 800ADCDC AE080020 */  sw         $t0, 0x20($s0)
  .L800ADCE0_BCC90:
    /* BCC90 800ADCE0 8E090020 */  lw         $t1, 0x20($s0)
  .L800ADCE4_BCC94:
    /* BCC94 800ADCE4 3C010800 */  lui        $at, (0x8000100 >> 16)
    /* BCC98 800ADCE8 34210100 */  ori        $at, $at, (0x8000100 & 0xFFFF)
    /* BCC9C 800ADCEC 01215025 */  or         $t2, $t1, $at
    /* BCCA0 800ADCF0 100000AA */  b          .L800ADF9C_BCF4C
    /* BCCA4 800ADCF4 AE0A0020 */   sw        $t2, 0x20($s0)
    /* BCCA8 800ADCF8 8E0B0020 */  lw         $t3, 0x20($s0)
    /* BCCAC 800ADCFC 93A40053 */  lbu        $a0, 0x53($sp)
    /* BCCB0 800ADD00 316C0100 */  andi       $t4, $t3, 0x100
    /* BCCB4 800ADD04 518000A6 */  beql       $t4, $zero, .L800ADFA0_BCF50
    /* BCCB8 800ADD08 8602001E */   lh        $v0, 0x1E($s0)
    /* BCCBC 800ADD0C 0C020210 */  jal        func_80080840_8F7F0
    /* BCCC0 800ADD10 24050032 */   addiu     $a1, $zero, 0x32
    /* BCCC4 800ADD14 504000A2 */  beql       $v0, $zero, .L800ADFA0_BCF50
    /* BCCC8 800ADD18 8602001E */   lh        $v0, 0x1E($s0)
    /* BCCCC 800ADD1C 8E0D0020 */  lw         $t5, 0x20($s0)
    /* BCCD0 800ADD20 2401FEFF */  addiu      $at, $zero, -0x101
    /* BCCD4 800ADD24 A6000012 */  sh         $zero, 0x12($s0)
    /* BCCD8 800ADD28 01A17024 */  and        $t6, $t5, $at
    /* BCCDC 800ADD2C 1000009B */  b          .L800ADF9C_BCF4C
    /* BCCE0 800ADD30 AE0E0020 */   sw        $t6, 0x20($s0)
    /* BCCE4 800ADD34 8E0F0020 */  lw         $t7, 0x20($s0)
    /* BCCE8 800ADD38 000FC280 */  sll        $t8, $t7, 10
    /* BCCEC 800ADD3C 07020098 */  bltzl      $t8, .L800ADFA0_BCF50
    /* BCCF0 800ADD40 8602001E */   lh        $v0, 0x1E($s0)
    /* BCCF4 800ADD44 0C021553 */  jal        func_8008554C_944FC
    /* BCCF8 800ADD48 93A40053 */   lbu       $a0, 0x53($sp)
    /* BCCFC 800ADD4C 93A40053 */  lbu        $a0, 0x53($sp)
    /* BCD00 800ADD50 0C0213FA */  jal        func_80084FE8_93F98
    /* BCD04 800ADD54 24051000 */   addiu     $a1, $zero, 0x1000
    /* BCD08 800ADD58 10400007 */  beqz       $v0, .L800ADD78_BCD28
    /* BCD0C 800ADD5C 3C010800 */   lui       $at, (0x8000100 >> 16)
    /* BCD10 800ADD60 8219004E */  lb         $t9, 0x4E($s0)
    /* BCD14 800ADD64 53200005 */  beql       $t9, $zero, .L800ADD7C_BCD2C
    /* BCD18 800ADD68 8E0A0020 */   lw        $t2, 0x20($s0)
    /* BCD1C 800ADD6C 8E080020 */  lw         $t0, 0x20($s0)
    /* BCD20 800ADD70 35091000 */  ori        $t1, $t0, 0x1000
    /* BCD24 800ADD74 AE090020 */  sw         $t1, 0x20($s0)
  .L800ADD78_BCD28:
    /* BCD28 800ADD78 8E0A0020 */  lw         $t2, 0x20($s0)
  .L800ADD7C_BCD2C:
    /* BCD2C 800ADD7C 34210100 */  ori        $at, $at, (0x8000100 & 0xFFFF)
    /* BCD30 800ADD80 A6000012 */  sh         $zero, 0x12($s0)
    /* BCD34 800ADD84 01415825 */  or         $t3, $t2, $at
    /* BCD38 800ADD88 AE0B0020 */  sw         $t3, 0x20($s0)
    /* BCD3C 800ADD8C 3C0D8025 */  lui        $t5, %hi(D_80256E0A)
    /* BCD40 800ADD90 95AD6E0A */  lhu        $t5, %lo(D_80256E0A)($t5)
    /* BCD44 800ADD94 860C001C */  lh         $t4, 0x1C($s0)
    /* BCD48 800ADD98 05A10003 */  bgez       $t5, .L800ADDA8_BCD58
    /* BCD4C 800ADD9C 000D7083 */   sra       $t6, $t5, 2
    /* BCD50 800ADDA0 25A10003 */  addiu      $at, $t5, 0x3
    /* BCD54 800ADDA4 00017083 */  sra        $t6, $at, 2
  .L800ADDA8_BCD58:
    /* BCD58 800ADDA8 018E082A */  slt        $at, $t4, $t6
    /* BCD5C 800ADDAC 5020007C */  beql       $at, $zero, .L800ADFA0_BCF50
    /* BCD60 800ADDB0 8602001E */   lh        $v0, 0x1E($s0)
    /* BCD64 800ADDB4 0C021EAB */  jal        func_80087AAC_96A5C
    /* BCD68 800ADDB8 93A40053 */   lbu       $a0, 0x53($sp)
    /* BCD6C 800ADDBC 10000078 */  b          .L800ADFA0_BCF50
    /* BCD70 800ADDC0 8602001E */   lh        $v0, 0x1E($s0)
    /* BCD74 800ADDC4 8E0F0020 */  lw         $t7, 0x20($s0)
    /* BCD78 800ADDC8 93A40053 */  lbu        $a0, 0x53($sp)
    /* BCD7C 800ADDCC 000FC280 */  sll        $t8, $t7, 10
    /* BCD80 800ADDD0 07020073 */  bltzl      $t8, .L800ADFA0_BCF50
    /* BCD84 800ADDD4 8602001E */   lh        $v0, 0x1E($s0)
    /* BCD88 800ADDD8 0C02023C */  jal        func_800808F0_8F8A0
    /* BCD8C 800ADDDC 2605000E */   addiu     $a1, $s0, 0xE
    /* BCD90 800ADDE0 1000006E */  b          .L800ADF9C_BCF4C
    /* BCD94 800ADDE4 A6000012 */   sh        $zero, 0x12($s0)
    /* BCD98 800ADDE8 8E190020 */  lw         $t9, 0x20($s0)
    /* BCD9C 800ADDEC 24090006 */  addiu      $t1, $zero, 0x6
    /* BCDA0 800ADDF0 240A01F4 */  addiu      $t2, $zero, 0x1F4
    /* BCDA4 800ADDF4 00194040 */  sll        $t0, $t9, 1
    /* BCDA8 800ADDF8 05020069 */  bltzl      $t0, .L800ADFA0_BCF50
    /* BCDAC 800ADDFC 8602001E */   lh        $v0, 0x1E($s0)
    /* BCDB0 800ADE00 A2090024 */  sb         $t1, 0x24($s0)
    /* BCDB4 800ADE04 10000065 */  b          .L800ADF9C_BCF4C
    /* BCDB8 800ADE08 A60A002C */   sh        $t2, 0x2C($s0)
    /* BCDBC 800ADE0C 3C0B8005 */  lui        $t3, %hi(D_80052A8C)
    /* BCDC0 800ADE10 8D6B2A8C */  lw         $t3, %lo(D_80052A8C)($t3)
    /* BCDC4 800ADE14 3C0C8003 */  lui        $t4, %hi(D_80031420)
    /* BCDC8 800ADE18 316D0003 */  andi       $t5, $t3, 0x3
    /* BCDCC 800ADE1C 55A0001E */  bnel       $t5, $zero, .L800ADE98_BCE48
    /* BCDD0 800ADE20 8603002C */   lh        $v1, 0x2C($s0)
    /* BCDD4 800ADE24 8D8C1420 */  lw         $t4, %lo(D_80031420)($t4)
    /* BCDD8 800ADE28 00003825 */  or         $a3, $zero, $zero
    /* BCDDC 800ADE2C 2419FF80 */  addiu      $t9, $zero, -0x80
    /* BCDE0 800ADE30 318E0003 */  andi       $t6, $t4, 0x3
    /* BCDE4 800ADE34 11C00017 */  beqz       $t6, .L800ADE94_BCE44
    /* BCDE8 800ADE38 24080005 */   addiu     $t0, $zero, 0x5
    /* BCDEC 800ADE3C 86050002 */  lh         $a1, 0x2($s0)
    /* BCDF0 800ADE40 24090006 */  addiu      $t1, $zero, 0x6
    /* BCDF4 800ADE44 240A0008 */  addiu      $t2, $zero, 0x8
    /* BCDF8 800ADE48 24A50028 */  addiu      $a1, $a1, 0x28
    /* BCDFC 800ADE4C 00057C00 */  sll        $t7, $a1, 16
    /* BCE00 800ADE50 240B00FF */  addiu      $t3, $zero, 0xFF
    /* BCE04 800ADE54 240D00FF */  addiu      $t5, $zero, 0xFF
    /* BCE08 800ADE58 240C00FF */  addiu      $t4, $zero, 0xFF
    /* BCE0C 800ADE5C AFAC0034 */  sw         $t4, 0x34($sp)
    /* BCE10 800ADE60 AFAD002C */  sw         $t5, 0x2C($sp)
    /* BCE14 800ADE64 AFAB0024 */  sw         $t3, 0x24($sp)
    /* BCE18 800ADE68 000F2C03 */  sra        $a1, $t7, 16
    /* BCE1C 800ADE6C AFAA0020 */  sw         $t2, 0x20($sp)
    /* BCE20 800ADE70 AFA9001C */  sw         $t1, 0x1C($sp)
    /* BCE24 800ADE74 86040000 */  lh         $a0, 0x0($s0)
    /* BCE28 800ADE78 86060004 */  lh         $a2, 0x4($s0)
    /* BCE2C 800ADE7C AFB90010 */  sw         $t9, 0x10($sp)
    /* BCE30 800ADE80 AFA00014 */  sw         $zero, 0x14($sp)
    /* BCE34 800ADE84 AFA80018 */  sw         $t0, 0x18($sp)
    /* BCE38 800ADE88 AFA00028 */  sw         $zero, 0x28($sp)
    /* BCE3C 800ADE8C 0C03297B */  jal        func_800CA5EC_D959C
    /* BCE40 800ADE90 AFA00030 */   sw        $zero, 0x30($sp)
  .L800ADE94_BCE44:
    /* BCE44 800ADE94 8603002C */  lh         $v1, 0x2C($s0)
  .L800ADE98_BCE48:
    /* BCE48 800ADE98 10600003 */  beqz       $v1, .L800ADEA8_BCE58
    /* BCE4C 800ADE9C 246EFFFF */   addiu     $t6, $v1, -0x1
    /* BCE50 800ADEA0 A60E002C */  sh         $t6, 0x2C($s0)
    /* BCE54 800ADEA4 8603002C */  lh         $v1, 0x2C($s0)
  .L800ADEA8_BCE58:
    /* BCE58 800ADEA8 8E0F0020 */  lw         $t7, 0x20($s0)
    /* BCE5C 800ADEAC 2401EFFF */  addiu      $at, $zero, -0x1001
    /* BCE60 800ADEB0 01E1C024 */  and        $t8, $t7, $at
    /* BCE64 800ADEB4 240101E0 */  addiu      $at, $zero, 0x1E0
    /* BCE68 800ADEB8 14610004 */  bne        $v1, $at, .L800ADECC_BCE7C
    /* BCE6C 800ADEBC AE180020 */   sw        $t8, 0x20($s0)
    /* BCE70 800ADEC0 0C00635F */  jal        func_80018D7C_1997C
    /* BCE74 800ADEC4 240400DE */   addiu     $a0, $zero, 0xDE
    /* BCE78 800ADEC8 8603002C */  lh         $v1, 0x2C($s0)
  .L800ADECC_BCE7C:
    /* BCE7C 800ADECC 240101CC */  addiu      $at, $zero, 0x1CC
    /* BCE80 800ADED0 1461000C */  bne        $v1, $at, .L800ADF04_BCEB4
    /* BCE84 800ADED4 3C198005 */   lui       $t9, %hi(D_80052B34)
    /* BCE88 800ADED8 8F392B34 */  lw         $t9, %lo(D_80052B34)($t9)
    /* BCE8C 800ADEDC 3C048005 */  lui        $a0, %hi(D_80052B2C)
    /* BCE90 800ADEE0 00002825 */  or         $a1, $zero, $zero
    /* BCE94 800ADEE4 9328001A */  lbu        $t0, 0x1A($t9)
    /* BCE98 800ADEE8 51000004 */  beql       $t0, $zero, .L800ADEFC_BCEAC
    /* BCE9C 800ADEEC 24090002 */   addiu     $t1, $zero, 0x2
    /* BCEA0 800ADEF0 0C03F7AA */  jal        func_800FDEA8_10CE58
    /* BCEA4 800ADEF4 8C842B2C */   lw        $a0, %lo(D_80052B2C)($a0)
    /* BCEA8 800ADEF8 24090002 */  addiu      $t1, $zero, 0x2
  .L800ADEFC_BCEAC:
    /* BCEAC 800ADEFC 3C018016 */  lui        $at, %hi(D_80158C42)
    /* BCEB0 800ADF00 A0298C42 */  sb         $t1, %lo(D_80158C42)($at)
  .L800ADF04_BCEB4:
    /* BCEB4 800ADF04 3C058005 */  lui        $a1, %hi(D_80052B34)
    /* BCEB8 800ADF08 8CA52B34 */  lw         $a1, %lo(D_80052B34)($a1)
    /* BCEBC 800ADF0C 0C021395 */  jal        func_80084E54_93E04
    /* BCEC0 800ADF10 02002025 */   or        $a0, $s0, $zero
    /* BCEC4 800ADF14 8603002C */  lh         $v1, 0x2C($s0)
    /* BCEC8 800ADF18 3C0A8016 */  lui        $t2, %hi(D_80158FEC)
    /* BCECC 800ADF1C 28610191 */  slti       $at, $v1, 0x191
    /* BCED0 800ADF20 50200012 */  beql       $at, $zero, .L800ADF6C_BCF1C
    /* BCED4 800ADF24 920C0047 */   lbu       $t4, 0x47($s0)
    /* BCED8 800ADF28 8D4A8FEC */  lw         $t2, %lo(D_80158FEC)($t2)
    /* BCEDC 800ADF2C 28410190 */  slti       $at, $v0, 0x190
    /* BCEE0 800ADF30 3C0B8014 */  lui        $t3, %hi(D_8013D910)
    /* BCEE4 800ADF34 11500003 */  beq        $t2, $s0, .L800ADF44_BCEF4
    /* BCEE8 800ADF38 00000000 */   nop
    /* BCEEC 800ADF3C 5020000B */  beql       $at, $zero, .L800ADF6C_BCF1C
    /* BCEF0 800ADF40 920C0047 */   lbu       $t4, 0x47($s0)
  .L800ADF44_BCEF4:
    /* BCEF4 800ADF44 8D6BD910 */  lw         $t3, %lo(D_8013D910)($t3)
    /* BCEF8 800ADF48 55600008 */  bnel       $t3, $zero, .L800ADF6C_BCF1C
    /* BCEFC 800ADF4C 920C0047 */   lbu       $t4, 0x47($s0)
    /* BCF00 800ADF50 0C00635F */  jal        func_80018D7C_1997C
    /* BCF04 800ADF54 240400DF */   addiu     $a0, $zero, 0xDF
    /* BCF08 800ADF58 240D0001 */  addiu      $t5, $zero, 0x1
    /* BCF0C 800ADF5C 3C018014 */  lui        $at, %hi(D_8013D910)
    /* BCF10 800ADF60 AC2DD910 */  sw         $t5, %lo(D_8013D910)($at)
    /* BCF14 800ADF64 8603002C */  lh         $v1, 0x2C($s0)
    /* BCF18 800ADF68 920C0047 */  lbu        $t4, 0x47($s0)
  .L800ADF6C_BCF1C:
    /* BCF1C 800ADF6C 318E0008 */  andi       $t6, $t4, 0x8
    /* BCF20 800ADF70 15C00003 */  bnez       $t6, .L800ADF80_BCF30
    /* BCF24 800ADF74 00000000 */   nop
    /* BCF28 800ADF78 54600009 */  bnel       $v1, $zero, .L800ADFA0_BCF50
    /* BCF2C 800ADF7C 8602001E */   lh        $v0, 0x1E($s0)
  .L800ADF80_BCF30:
    /* BCF30 800ADF80 14600003 */  bnez       $v1, .L800ADF90_BCF40
    /* BCF34 800ADF84 240F0001 */   addiu     $t7, $zero, 0x1
    /* BCF38 800ADF88 10000002 */  b          .L800ADF94_BCF44
    /* BCF3C 800ADF8C A20F0026 */   sb        $t7, 0x26($s0)
  .L800ADF90_BCF40:
    /* BCF40 800ADF90 A2000026 */  sb         $zero, 0x26($s0)
  .L800ADF94_BCF44:
    /* BCF44 800ADF94 0C0221D8 */  jal        func_80088760_97710
    /* BCF48 800ADF98 02002025 */   or        $a0, $s0, $zero
  .L800ADF9C_BCF4C:
    /* BCF4C 800ADF9C 8602001E */  lh         $v0, 0x1E($s0)
  .L800ADFA0_BCF50:
    /* BCF50 800ADFA0 10400002 */  beqz       $v0, .L800ADFAC_BCF5C
    /* BCF54 800ADFA4 2458FFFF */   addiu     $t8, $v0, -0x1
    /* BCF58 800ADFA8 A618001E */  sh         $t8, 0x1E($s0)
  .L800ADFAC_BCF5C:
    /* BCF5C 800ADFAC 8FBF0044 */  lw         $ra, 0x44($sp)
    /* BCF60 800ADFB0 8FB00040 */  lw         $s0, 0x40($sp)
    /* BCF64 800ADFB4 27BD0050 */  addiu      $sp, $sp, 0x50
    /* BCF68 800ADFB8 03E00008 */  jr         $ra
    /* BCF6C 800ADFBC 00000000 */   nop
endlabel func_800ADB4C_BCAFC
