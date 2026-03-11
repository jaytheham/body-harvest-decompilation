nonmatching func_800BDDCC_CCD7C, 0x7F4

glabel func_800BDDCC_CCD7C
    /* CCD7C 800BDDCC 3C028015 */  lui        $v0, %hi(D_80151DD0)
    /* CCD80 800BDDD0 90421DD0 */  lbu        $v0, %lo(D_80151DD0)($v0)
    /* CCD84 800BDDD4 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* CCD88 800BDDD8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* CCD8C 800BDDDC 1440001B */  bnez       $v0, .L800BDE4C_CCDFC
    /* CCD90 800BDDE0 3C0E8014 */   lui       $t6, %hi(D_8013D9AC)
    /* CCD94 800BDDE4 91CED9AC */  lbu        $t6, %lo(D_8013D9AC)($t6)
    /* CCD98 800BDDE8 3C0F8005 */  lui        $t7, %hi(D_8004816A)
    /* CCD9C 800BDDEC 3C188003 */  lui        $t8, %hi(D_800314C4)
    /* CCDA0 800BDDF0 15C00016 */  bnez       $t6, .L800BDE4C_CCDFC
    /* CCDA4 800BDDF4 00000000 */   nop
    /* CCDA8 800BDDF8 931814C4 */  lbu        $t8, %lo(D_800314C4)($t8)
    /* CCDAC 800BDDFC 85EF816A */  lh         $t7, %lo(D_8004816A)($t7)
    /* CCDB0 800BDE00 24040000 */  addiu      $a0, $zero, 0x0
    /* CCDB4 800BDE04 2719FFFE */  addiu      $t9, $t8, -0x2
    /* CCDB8 800BDE08 01F9082A */  slt        $at, $t7, $t9
    /* CCDBC 800BDE0C 50200005 */  beql       $at, $zero, .L800BDE24_CCDD4
    /* CCDC0 800BDE10 24080001 */   addiu     $t0, $zero, 0x1
    /* CCDC4 800BDE14 0C001C9B */  jal        func_8000726C_7E6C
    /* CCDC8 800BDE18 24050033 */   addiu     $a1, $zero, 0x33
    /* CCDCC 800BDE1C 10400006 */  beqz       $v0, .L800BDE38_CCDE8
    /* CCDD0 800BDE20 24080001 */   addiu     $t0, $zero, 0x1
  .L800BDE24_CCDD4:
    /* CCDD4 800BDE24 3C018015 */  lui        $at, %hi(D_80151DD0)
    /* CCDD8 800BDE28 A0281DD0 */  sb         $t0, %lo(D_80151DD0)($at)
    /* CCDDC 800BDE2C 3C018014 */  lui        $at, %hi(D_8013D9AC)
    /* CCDE0 800BDE30 24090040 */  addiu      $t1, $zero, 0x40
    /* CCDE4 800BDE34 A029D9AC */  sb         $t1, %lo(D_8013D9AC)($at)
  .L800BDE38_CCDE8:
    /* CCDE8 800BDE38 3C028015 */  lui        $v0, %hi(D_80151DD0)
    /* CCDEC 800BDE3C 3C038014 */  lui        $v1, %hi(D_8013D9AC)
    /* CCDF0 800BDE40 9063D9AC */  lbu        $v1, %lo(D_8013D9AC)($v1)
    /* CCDF4 800BDE44 1000006B */  b          .L800BDFF4_CCFA4
    /* CCDF8 800BDE48 90421DD0 */   lbu       $v0, %lo(D_80151DD0)($v0)
  .L800BDE4C_CCDFC:
    /* CCDFC 800BDE4C 3C038014 */  lui        $v1, %hi(D_8013D9AC)
    /* CCE00 800BDE50 24010001 */  addiu      $at, $zero, 0x1
    /* CCE04 800BDE54 14410019 */  bne        $v0, $at, .L800BDEBC_CCE6C
    /* CCE08 800BDE58 9063D9AC */   lbu       $v1, %lo(D_8013D9AC)($v1)
    /* CCE0C 800BDE5C 14600017 */  bnez       $v1, .L800BDEBC_CCE6C
    /* CCE10 800BDE60 3C0A8005 */   lui       $t2, %hi(D_8004816A)
    /* CCE14 800BDE64 3C0B8003 */  lui        $t3, %hi(D_800314C4)
    /* CCE18 800BDE68 916B14C4 */  lbu        $t3, %lo(D_800314C4)($t3)
    /* CCE1C 800BDE6C 854A816A */  lh         $t2, %lo(D_8004816A)($t2)
    /* CCE20 800BDE70 24040000 */  addiu      $a0, $zero, 0x0
    /* CCE24 800BDE74 256CFFFF */  addiu      $t4, $t3, -0x1
    /* CCE28 800BDE78 014C082A */  slt        $at, $t2, $t4
    /* CCE2C 800BDE7C 50200005 */  beql       $at, $zero, .L800BDE94_CCE44
    /* CCE30 800BDE80 240D0002 */   addiu     $t5, $zero, 0x2
    /* CCE34 800BDE84 0C001C9B */  jal        func_8000726C_7E6C
    /* CCE38 800BDE88 24050033 */   addiu     $a1, $zero, 0x33
    /* CCE3C 800BDE8C 10400006 */  beqz       $v0, .L800BDEA8_CCE58
    /* CCE40 800BDE90 240D0002 */   addiu     $t5, $zero, 0x2
  .L800BDE94_CCE44:
    /* CCE44 800BDE94 3C018015 */  lui        $at, %hi(D_80151DD0)
    /* CCE48 800BDE98 A02D1DD0 */  sb         $t5, %lo(D_80151DD0)($at)
    /* CCE4C 800BDE9C 3C018014 */  lui        $at, %hi(D_8013D9AC)
    /* CCE50 800BDEA0 240E0040 */  addiu      $t6, $zero, 0x40
    /* CCE54 800BDEA4 A02ED9AC */  sb         $t6, %lo(D_8013D9AC)($at)
  .L800BDEA8_CCE58:
    /* CCE58 800BDEA8 3C028015 */  lui        $v0, %hi(D_80151DD0)
    /* CCE5C 800BDEAC 3C038014 */  lui        $v1, %hi(D_8013D9AC)
    /* CCE60 800BDEB0 9063D9AC */  lbu        $v1, %lo(D_8013D9AC)($v1)
    /* CCE64 800BDEB4 1000004F */  b          .L800BDFF4_CCFA4
    /* CCE68 800BDEB8 90421DD0 */   lbu       $v0, %lo(D_80151DD0)($v0)
  .L800BDEBC_CCE6C:
    /* CCE6C 800BDEBC 24010002 */  addiu      $at, $zero, 0x2
    /* CCE70 800BDEC0 5441002C */  bnel       $v0, $at, .L800BDF74_CCF24
    /* CCE74 800BDEC4 24010003 */   addiu     $at, $zero, 0x3
    /* CCE78 800BDEC8 14600029 */  bnez       $v1, .L800BDF70_CCF20
    /* CCE7C 800BDECC 3C188005 */   lui       $t8, %hi(D_8004816A)
    /* CCE80 800BDED0 3C0F8003 */  lui        $t7, %hi(D_800314C4)
    /* CCE84 800BDED4 91EF14C4 */  lbu        $t7, %lo(D_800314C4)($t7)
    /* CCE88 800BDED8 8718816A */  lh         $t8, %lo(D_8004816A)($t8)
    /* CCE8C 800BDEDC 24040000 */  addiu      $a0, $zero, 0x0
    /* CCE90 800BDEE0 030F082A */  slt        $at, $t8, $t7
    /* CCE94 800BDEE4 50200005 */  beql       $at, $zero, .L800BDEFC_CCEAC
    /* CCE98 800BDEE8 24190003 */   addiu     $t9, $zero, 0x3
    /* CCE9C 800BDEEC 0C001C9B */  jal        func_8000726C_7E6C
    /* CCEA0 800BDEF0 24050033 */   addiu     $a1, $zero, 0x33
    /* CCEA4 800BDEF4 10400019 */  beqz       $v0, .L800BDF5C_CCF0C
    /* CCEA8 800BDEF8 24190003 */   addiu     $t9, $zero, 0x3
  .L800BDEFC_CCEAC:
    /* CCEAC 800BDEFC 3C018015 */  lui        $at, %hi(D_80151DD0)
    /* CCEB0 800BDF00 A0391DD0 */  sb         $t9, %lo(D_80151DD0)($at)
    /* CCEB4 800BDF04 3C018014 */  lui        $at, %hi(D_8013D9AC)
    /* CCEB8 800BDF08 24080096 */  addiu      $t0, $zero, 0x96
    /* CCEBC 800BDF0C 0C01D578 */  jal        func_800755E0_84590
    /* CCEC0 800BDF10 A028D9AC */   sb        $t0, %lo(D_8013D9AC)($at)
    /* CCEC4 800BDF14 240400FE */  addiu      $a0, $zero, 0xFE
  .L800BDF18_CCEC8:
    /* CCEC8 800BDF18 00044880 */  sll        $t1, $a0, 2
    /* CCECC 800BDF1C 01244823 */  subu       $t1, $t1, $a0
    /* CCED0 800BDF20 000948C0 */  sll        $t1, $t1, 3
    /* CCED4 800BDF24 3C018005 */  lui        $at, %hi(D_80050AE7)
    /* CCED8 800BDF28 00290821 */  addu       $at, $at, $t1
    /* CCEDC 800BDF2C A0200AE7 */  sb         $zero, %lo(D_80050AE7)($at)
    /* CCEE0 800BDF30 24050001 */  addiu      $a1, $zero, 0x1
    /* CCEE4 800BDF34 0C046EE5 */  jal        func_8011BB94_12AB44
    /* CCEE8 800BDF38 A7A4005E */   sh        $a0, 0x5E($sp)
    /* CCEEC 800BDF3C 87A4005E */  lh         $a0, 0x5E($sp)
    /* CCEF0 800BDF40 00801825 */  or         $v1, $a0, $zero
    /* CCEF4 800BDF44 2484FFFF */  addiu      $a0, $a0, -0x1
    /* CCEF8 800BDF48 00045C00 */  sll        $t3, $a0, 16
    /* CCEFC 800BDF4C 1460FFF2 */  bnez       $v1, .L800BDF18_CCEC8
    /* CCF00 800BDF50 000B2403 */   sra       $a0, $t3, 16
    /* CCF04 800BDF54 0C021FC2 */  jal        func_80087F08_96EB8
    /* CCF08 800BDF58 00000000 */   nop
  .L800BDF5C_CCF0C:
    /* CCF0C 800BDF5C 3C028015 */  lui        $v0, %hi(D_80151DD0)
    /* CCF10 800BDF60 3C038014 */  lui        $v1, %hi(D_8013D9AC)
    /* CCF14 800BDF64 9063D9AC */  lbu        $v1, %lo(D_8013D9AC)($v1)
    /* CCF18 800BDF68 10000022 */  b          .L800BDFF4_CCFA4
    /* CCF1C 800BDF6C 90421DD0 */   lbu       $v0, %lo(D_80151DD0)($v0)
  .L800BDF70_CCF20:
    /* CCF20 800BDF70 24010003 */  addiu      $at, $zero, 0x3
  .L800BDF74_CCF24:
    /* CCF24 800BDF74 54410020 */  bnel       $v0, $at, .L800BDFF8_CCFA8
    /* CCF28 800BDF78 24010003 */   addiu     $at, $zero, 0x3
    /* CCF2C 800BDF7C 1460001D */  bnez       $v1, .L800BDFF4_CCFA4
    /* CCF30 800BDF80 3C0C8004 */   lui       $t4, %hi(currentLevel)
    /* CCF34 800BDF84 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* CCF38 800BDF88 24010005 */  addiu      $at, $zero, 0x5
    /* CCF3C 800BDF8C 24040064 */  addiu      $a0, $zero, 0x64
    /* CCF40 800BDF90 51810019 */  beql       $t4, $at, .L800BDFF8_CCFA8
    /* CCF44 800BDF94 24010003 */   addiu     $at, $zero, 0x3
    /* CCF48 800BDF98 0C001B6B */  jal        func_80006DAC_79AC
    /* CCF4C 800BDF9C 00002825 */   or        $a1, $zero, $zero
    /* CCF50 800BDFA0 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* CCF54 800BDFA4 0C048EB1 */  jal        func_80123AC4_132A74
    /* CCF58 800BDFA8 8C842B34 */   lw        $a0, %lo(D_80052B34)($a0)
    /* CCF5C 800BDFAC 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* CCF60 800BDFB0 0C048EB1 */  jal        func_80123AC4_132A74
    /* CCF64 800BDFB4 8C842B34 */   lw        $a0, %lo(D_80052B34)($a0)
    /* CCF68 800BDFB8 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* CCF6C 800BDFBC 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* CCF70 800BDFC0 240D0006 */  addiu      $t5, $zero, 0x6
    /* CCF74 800BDFC4 240700FA */  addiu      $a3, $zero, 0xFA
    /* CCF78 800BDFC8 84440000 */  lh         $a0, 0x0($v0)
    /* CCF7C 800BDFCC 84450002 */  lh         $a1, 0x2($v0)
    /* CCF80 800BDFD0 84460004 */  lh         $a2, 0x4($v0)
    /* CCF84 800BDFD4 0C037EEA */  jal        func_800DFBA8_EEB58
    /* CCF88 800BDFD8 AFAD0010 */   sw        $t5, 0x10($sp)
    /* CCF8C 800BDFDC 240E0004 */  addiu      $t6, $zero, 0x4
    /* CCF90 800BDFE0 3C018015 */  lui        $at, %hi(D_80151DD0)
    /* CCF94 800BDFE4 3C038014 */  lui        $v1, %hi(D_8013D9AC)
    /* CCF98 800BDFE8 9063D9AC */  lbu        $v1, %lo(D_8013D9AC)($v1)
    /* CCF9C 800BDFEC A02E1DD0 */  sb         $t6, %lo(D_80151DD0)($at)
    /* CCFA0 800BDFF0 24020004 */  addiu      $v0, $zero, 0x4
  .L800BDFF4_CCFA4:
    /* CCFA4 800BDFF4 24010003 */  addiu      $at, $zero, 0x3
  .L800BDFF8_CCFA8:
    /* CCFA8 800BDFF8 1441000D */  bne        $v0, $at, .L800BE030_CCFE0
    /* CCFAC 800BDFFC 24010028 */   addiu     $at, $zero, 0x28
    /* CCFB0 800BE000 1461000B */  bne        $v1, $at, .L800BE030_CCFE0
    /* CCFB4 800BE004 3C188004 */   lui       $t8, %hi(currentLevel)
    /* CCFB8 800BE008 8F187F90 */  lw         $t8, %lo(currentLevel)($t8)
    /* CCFBC 800BE00C 24010005 */  addiu      $at, $zero, 0x5
    /* CCFC0 800BE010 13010007 */  beq        $t8, $at, .L800BE030_CCFE0
    /* CCFC4 800BE014 00000000 */   nop
    /* CCFC8 800BE018 0C00635F */  jal        func_80018D7C_1997C
    /* CCFCC 800BE01C 240400E5 */   addiu     $a0, $zero, 0xE5
    /* CCFD0 800BE020 3C028015 */  lui        $v0, %hi(D_80151DD0)
    /* CCFD4 800BE024 3C038014 */  lui        $v1, %hi(D_8013D9AC)
    /* CCFD8 800BE028 9063D9AC */  lbu        $v1, %lo(D_8013D9AC)($v1)
    /* CCFDC 800BE02C 90421DD0 */  lbu        $v0, %lo(D_80151DD0)($v0)
  .L800BE030_CCFE0:
    /* CCFE0 800BE030 10600003 */  beqz       $v1, .L800BE040_CCFF0
    /* CCFE4 800BE034 246FFFFF */   addiu     $t7, $v1, -0x1
    /* CCFE8 800BE038 3C018014 */  lui        $at, %hi(D_8013D9AC)
    /* CCFEC 800BE03C A02FD9AC */  sb         $t7, %lo(D_8013D9AC)($at)
  .L800BE040_CCFF0:
    /* CCFF0 800BE040 24010001 */  addiu      $at, $zero, 0x1
    /* CCFF4 800BE044 14410043 */  bne        $v0, $at, .L800BE154_CD104
    /* CCFF8 800BE048 3C198005 */   lui       $t9, %hi(D_80052A8C)
    /* CCFFC 800BE04C 8F392A8C */  lw         $t9, %lo(D_80052A8C)($t9)
    /* CD000 800BE050 24010005 */  addiu      $at, $zero, 0x5
    /* CD004 800BE054 0321001B */  divu       $zero, $t9, $at
    /* CD008 800BE058 00004010 */  mfhi       $t0
    /* CD00C 800BE05C 5500003E */  bnel       $t0, $zero, .L800BE158_CD108
    /* CD010 800BE060 24010002 */   addiu     $at, $zero, 0x2
    /* CD014 800BE064 0C000E38 */  jal        func_800038E0_44E0
    /* CD018 800BE068 00000000 */   nop
    /* CD01C 800BE06C 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* CD020 800BE070 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* CD024 800BE074 04410003 */  bgez       $v0, .L800BE084_CD034
    /* CD028 800BE078 00024943 */   sra       $t1, $v0, 5
    /* CD02C 800BE07C 2441001F */  addiu      $at, $v0, 0x1F
    /* CD030 800BE080 00014943 */  sra        $t1, $at, 5
  .L800BE084_CD034:
    /* CD034 800BE084 856A0000 */  lh         $t2, 0x0($t3)
    /* CD038 800BE088 012A6021 */  addu       $t4, $t1, $t2
    /* CD03C 800BE08C 258DFBFC */  addiu      $t5, $t4, -0x404
    /* CD040 800BE090 0C000E38 */  jal        func_800038E0_44E0
    /* CD044 800BE094 A7AD005C */   sh        $t5, 0x5C($sp)
    /* CD048 800BE098 3C188005 */  lui        $t8, %hi(D_80052B34)
    /* CD04C 800BE09C 8F182B34 */  lw         $t8, %lo(D_80052B34)($t8)
    /* CD050 800BE0A0 04410003 */  bgez       $v0, .L800BE0B0_CD060
    /* CD054 800BE0A4 00027143 */   sra       $t6, $v0, 5
    /* CD058 800BE0A8 2441001F */  addiu      $at, $v0, 0x1F
    /* CD05C 800BE0AC 00017143 */  sra        $t6, $at, 5
  .L800BE0B0_CD060:
    /* CD060 800BE0B0 870F0004 */  lh         $t7, 0x4($t8)
    /* CD064 800BE0B4 87A4005C */  lh         $a0, 0x5C($sp)
    /* CD068 800BE0B8 01CF3021 */  addu       $a2, $t6, $t7
    /* CD06C 800BE0BC 24C8FBFC */  addiu      $t0, $a2, -0x404
    /* CD070 800BE0C0 00082C00 */  sll        $a1, $t0, 16
    /* CD074 800BE0C4 00055C03 */  sra        $t3, $a1, 16
    /* CD078 800BE0C8 01602825 */  or         $a1, $t3, $zero
    /* CD07C 800BE0CC 0C02E134 */  jal        func_800B84D0_C7480
    /* CD080 800BE0D0 A7A8005A */   sh        $t0, 0x5A($sp)
    /* CD084 800BE0D4 0C000E38 */  jal        func_800038E0_44E0
    /* CD088 800BE0D8 AFA2004C */   sw        $v0, 0x4C($sp)
    /* CD08C 800BE0DC 24010005 */  addiu      $at, $zero, 0x5
    /* CD090 800BE0E0 0041001A */  div        $zero, $v0, $at
    /* CD094 800BE0E4 8FA3004C */  lw         $v1, 0x4C($sp)
    /* CD098 800BE0E8 00007010 */  mfhi       $t6
    /* CD09C 800BE0EC 25CF0005 */  addiu      $t7, $t6, 0x5
    /* CD0A0 800BE0F0 00032A03 */  sra        $a1, $v1, 8
    /* CD0A4 800BE0F4 00054C00 */  sll        $t1, $a1, 16
    /* CD0A8 800BE0F8 00092C03 */  sra        $a1, $t1, 16
    /* CD0AC 800BE0FC 240900FF */  addiu      $t1, $zero, 0xFF
    /* CD0B0 800BE100 240C007F */  addiu      $t4, $zero, 0x7F
    /* CD0B4 800BE104 240D0032 */  addiu      $t5, $zero, 0x32
    /* CD0B8 800BE108 241800A0 */  addiu      $t8, $zero, 0xA0
    /* CD0BC 800BE10C 2419000A */  addiu      $t9, $zero, 0xA
    /* CD0C0 800BE110 240800FF */  addiu      $t0, $zero, 0xFF
    /* CD0C4 800BE114 240B00FF */  addiu      $t3, $zero, 0xFF
    /* CD0C8 800BE118 AFAB002C */  sw         $t3, 0x2C($sp)
    /* CD0CC 800BE11C AFA80028 */  sw         $t0, 0x28($sp)
    /* CD0D0 800BE120 AFB90024 */  sw         $t9, 0x24($sp)
    /* CD0D4 800BE124 AFB8001C */  sw         $t8, 0x1C($sp)
    /* CD0D8 800BE128 AFAD0018 */  sw         $t5, 0x18($sp)
    /* CD0DC 800BE12C AFAC0010 */  sw         $t4, 0x10($sp)
    /* CD0E0 800BE130 AFA90030 */  sw         $t1, 0x30($sp)
    /* CD0E4 800BE134 AFAF0020 */  sw         $t7, 0x20($sp)
    /* CD0E8 800BE138 87A6005A */  lh         $a2, 0x5A($sp)
    /* CD0EC 800BE13C 87A4005C */  lh         $a0, 0x5C($sp)
    /* CD0F0 800BE140 00003825 */  or         $a3, $zero, $zero
    /* CD0F4 800BE144 0C031507 */  jal        func_800C541C_D43CC
    /* CD0F8 800BE148 AFA00014 */   sw        $zero, 0x14($sp)
    /* CD0FC 800BE14C 3C028015 */  lui        $v0, %hi(D_80151DD0)
    /* CD100 800BE150 90421DD0 */  lbu        $v0, %lo(D_80151DD0)($v0)
  .L800BE154_CD104:
    /* CD104 800BE154 24010002 */  addiu      $at, $zero, 0x2
  .L800BE158_CD108:
    /* CD108 800BE158 1441006D */  bne        $v0, $at, .L800BE310_CD2C0
    /* CD10C 800BE15C 3C038005 */   lui       $v1, %hi(D_80052A8C)
    /* CD110 800BE160 8C632A8C */  lw         $v1, %lo(D_80052A8C)($v1)
    /* CD114 800BE164 24010003 */  addiu      $at, $zero, 0x3
    /* CD118 800BE168 0061001B */  divu       $zero, $v1, $at
    /* CD11C 800BE16C 00005010 */  mfhi       $t2
    /* CD120 800BE170 5540003E */  bnel       $t2, $zero, .L800BE26C_CD21C
    /* CD124 800BE174 24010009 */   addiu     $at, $zero, 0x9
    /* CD128 800BE178 0C000E38 */  jal        func_800038E0_44E0
    /* CD12C 800BE17C 00000000 */   nop
    /* CD130 800BE180 3C0D8005 */  lui        $t5, %hi(D_80052B34)
    /* CD134 800BE184 8DAD2B34 */  lw         $t5, %lo(D_80052B34)($t5)
    /* CD138 800BE188 04410003 */  bgez       $v0, .L800BE198_CD148
    /* CD13C 800BE18C 00026143 */   sra       $t4, $v0, 5
    /* CD140 800BE190 2441001F */  addiu      $at, $v0, 0x1F
    /* CD144 800BE194 00016143 */  sra        $t4, $at, 5
  .L800BE198_CD148:
    /* CD148 800BE198 85B80000 */  lh         $t8, 0x0($t5)
    /* CD14C 800BE19C 01987021 */  addu       $t6, $t4, $t8
    /* CD150 800BE1A0 25CFFBFC */  addiu      $t7, $t6, -0x404
    /* CD154 800BE1A4 0C000E38 */  jal        func_800038E0_44E0
    /* CD158 800BE1A8 A7AF005C */   sh        $t7, 0x5C($sp)
    /* CD15C 800BE1AC 3C088005 */  lui        $t0, %hi(D_80052B34)
    /* CD160 800BE1B0 8D082B34 */  lw         $t0, %lo(D_80052B34)($t0)
    /* CD164 800BE1B4 04410003 */  bgez       $v0, .L800BE1C4_CD174
    /* CD168 800BE1B8 0002C943 */   sra       $t9, $v0, 5
    /* CD16C 800BE1BC 2441001F */  addiu      $at, $v0, 0x1F
    /* CD170 800BE1C0 0001C943 */  sra        $t9, $at, 5
  .L800BE1C4_CD174:
    /* CD174 800BE1C4 850B0004 */  lh         $t3, 0x4($t0)
    /* CD178 800BE1C8 87A4005C */  lh         $a0, 0x5C($sp)
    /* CD17C 800BE1CC 032B3021 */  addu       $a2, $t9, $t3
    /* CD180 800BE1D0 24CAFBFC */  addiu      $t2, $a2, -0x404
    /* CD184 800BE1D4 000A2C00 */  sll        $a1, $t2, 16
    /* CD188 800BE1D8 00056C03 */  sra        $t5, $a1, 16
    /* CD18C 800BE1DC 01A02825 */  or         $a1, $t5, $zero
    /* CD190 800BE1E0 0C02E134 */  jal        func_800B84D0_C7480
    /* CD194 800BE1E4 A7AA005A */   sh        $t2, 0x5A($sp)
    /* CD198 800BE1E8 0C000E38 */  jal        func_800038E0_44E0
    /* CD19C 800BE1EC AFA2004C */   sw        $v0, 0x4C($sp)
    /* CD1A0 800BE1F0 2401000A */  addiu      $at, $zero, 0xA
    /* CD1A4 800BE1F4 0041001A */  div        $zero, $v0, $at
    /* CD1A8 800BE1F8 8FA3004C */  lw         $v1, 0x4C($sp)
    /* CD1AC 800BE1FC 0000C810 */  mfhi       $t9
    /* CD1B0 800BE200 272B0005 */  addiu      $t3, $t9, 0x5
    /* CD1B4 800BE204 00032A03 */  sra        $a1, $v1, 8
    /* CD1B8 800BE208 00056400 */  sll        $t4, $a1, 16
    /* CD1BC 800BE20C 000C2C03 */  sra        $a1, $t4, 16
    /* CD1C0 800BE210 240C00FF */  addiu      $t4, $zero, 0xFF
    /* CD1C4 800BE214 240E007F */  addiu      $t6, $zero, 0x7F
    /* CD1C8 800BE218 240F0050 */  addiu      $t7, $zero, 0x50
    /* CD1CC 800BE21C 240800A0 */  addiu      $t0, $zero, 0xA0
    /* CD1D0 800BE220 2409000A */  addiu      $t1, $zero, 0xA
    /* CD1D4 800BE224 240A00FF */  addiu      $t2, $zero, 0xFF
    /* CD1D8 800BE228 240D00FF */  addiu      $t5, $zero, 0xFF
    /* CD1DC 800BE22C AFAD002C */  sw         $t5, 0x2C($sp)
    /* CD1E0 800BE230 AFAA0028 */  sw         $t2, 0x28($sp)
    /* CD1E4 800BE234 AFA90024 */  sw         $t1, 0x24($sp)
    /* CD1E8 800BE238 AFA8001C */  sw         $t0, 0x1C($sp)
    /* CD1EC 800BE23C AFAF0018 */  sw         $t7, 0x18($sp)
    /* CD1F0 800BE240 AFAE0010 */  sw         $t6, 0x10($sp)
    /* CD1F4 800BE244 AFAC0030 */  sw         $t4, 0x30($sp)
    /* CD1F8 800BE248 AFAB0020 */  sw         $t3, 0x20($sp)
    /* CD1FC 800BE24C 87A6005A */  lh         $a2, 0x5A($sp)
    /* CD200 800BE250 87A4005C */  lh         $a0, 0x5C($sp)
    /* CD204 800BE254 00003825 */  or         $a3, $zero, $zero
    /* CD208 800BE258 0C031507 */  jal        func_800C541C_D43CC
    /* CD20C 800BE25C AFA00014 */   sw        $zero, 0x14($sp)
    /* CD210 800BE260 3C038005 */  lui        $v1, %hi(D_80052A8C)
    /* CD214 800BE264 8C632A8C */  lw         $v1, %lo(D_80052A8C)($v1)
    /* CD218 800BE268 24010009 */  addiu      $at, $zero, 0x9
  .L800BE26C_CD21C:
    /* CD21C 800BE26C 0061001B */  divu       $zero, $v1, $at
    /* CD220 800BE270 0000C010 */  mfhi       $t8
    /* CD224 800BE274 17000026 */  bnez       $t8, .L800BE310_CD2C0
    /* CD228 800BE278 00000000 */   nop
    /* CD22C 800BE27C 0C000E38 */  jal        func_800038E0_44E0
    /* CD230 800BE280 00000000 */   nop
    /* CD234 800BE284 3C0F8005 */  lui        $t7, %hi(D_80052B34)
    /* CD238 800BE288 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* CD23C 800BE28C 04410003 */  bgez       $v0, .L800BE29C_CD24C
    /* CD240 800BE290 00027143 */   sra       $t6, $v0, 5
    /* CD244 800BE294 2441001F */  addiu      $at, $v0, 0x1F
    /* CD248 800BE298 00017143 */  sra        $t6, $at, 5
  .L800BE29C_CD24C:
    /* CD24C 800BE29C 85E80000 */  lh         $t0, 0x0($t7)
    /* CD250 800BE2A0 01C8C821 */  addu       $t9, $t6, $t0
    /* CD254 800BE2A4 272BFBFC */  addiu      $t3, $t9, -0x404
    /* CD258 800BE2A8 0C000E38 */  jal        func_800038E0_44E0
    /* CD25C 800BE2AC A7AB005C */   sh        $t3, 0x5C($sp)
    /* CD260 800BE2B0 3C0A8005 */  lui        $t2, %hi(D_80052B34)
    /* CD264 800BE2B4 8D4A2B34 */  lw         $t2, %lo(D_80052B34)($t2)
    /* CD268 800BE2B8 04410003 */  bgez       $v0, .L800BE2C8_CD278
    /* CD26C 800BE2BC 00024943 */   sra       $t1, $v0, 5
    /* CD270 800BE2C0 2441001F */  addiu      $at, $v0, 0x1F
    /* CD274 800BE2C4 00014943 */  sra        $t1, $at, 5
  .L800BE2C8_CD278:
    /* CD278 800BE2C8 854D0004 */  lh         $t5, 0x4($t2)
    /* CD27C 800BE2CC 87A4005C */  lh         $a0, 0x5C($sp)
    /* CD280 800BE2D0 012D3021 */  addu       $a2, $t1, $t5
    /* CD284 800BE2D4 24D8FBFC */  addiu      $t8, $a2, -0x404
    /* CD288 800BE2D8 00182C00 */  sll        $a1, $t8, 16
    /* CD28C 800BE2DC 00057C03 */  sra        $t7, $a1, 16
    /* CD290 800BE2E0 01E02825 */  or         $a1, $t7, $zero
    /* CD294 800BE2E4 0C02E134 */  jal        func_800B84D0_C7480
    /* CD298 800BE2E8 A7B8005A */   sh        $t8, 0x5A($sp)
    /* CD29C 800BE2EC 00022A03 */  sra        $a1, $v0, 8
    /* CD2A0 800BE2F0 00057400 */  sll        $t6, $a1, 16
    /* CD2A4 800BE2F4 000E2C03 */  sra        $a1, $t6, 16
    /* CD2A8 800BE2F8 87A6005A */  lh         $a2, 0x5A($sp)
    /* CD2AC 800BE2FC 87A4005C */  lh         $a0, 0x5C($sp)
    /* CD2B0 800BE300 24070032 */  addiu      $a3, $zero, 0x32
    /* CD2B4 800BE304 AFA00010 */  sw         $zero, 0x10($sp)
    /* CD2B8 800BE308 0C037E72 */  jal        func_800DF9C8_EE978
    /* CD2BC 800BE30C AFA00014 */   sw        $zero, 0x14($sp)
  .L800BE310_CD2C0:
    /* CD2C0 800BE310 3C028015 */  lui        $v0, %hi(D_80151DD0)
    /* CD2C4 800BE314 90421DD0 */  lbu        $v0, %lo(D_80151DD0)($v0)
    /* CD2C8 800BE318 24010003 */  addiu      $at, $zero, 0x3
    /* CD2CC 800BE31C 3C038005 */  lui        $v1, %hi(D_80052A8C)
    /* CD2D0 800BE320 10410003 */  beq        $v0, $at, .L800BE330_CD2E0
    /* CD2D4 800BE324 24010004 */   addiu     $at, $zero, 0x4
    /* CD2D8 800BE328 544100A2 */  bnel       $v0, $at, .L800BE5B4_CD564
    /* CD2DC 800BE32C 8FBF003C */   lw        $ra, 0x3C($sp)
  .L800BE330_CD2E0:
    /* CD2E0 800BE330 8C632A8C */  lw         $v1, %lo(D_80052A8C)($v1)
    /* CD2E4 800BE334 30790007 */  andi       $t9, $v1, 0x7
    /* CD2E8 800BE338 5720003C */  bnel       $t9, $zero, .L800BE42C_CD3DC
    /* CD2EC 800BE33C 24010005 */   addiu     $at, $zero, 0x5
    /* CD2F0 800BE340 0C000E38 */  jal        func_800038E0_44E0
    /* CD2F4 800BE344 00000000 */   nop
    /* CD2F8 800BE348 3C0A8005 */  lui        $t2, %hi(D_80052B34)
    /* CD2FC 800BE34C 8D4A2B34 */  lw         $t2, %lo(D_80052B34)($t2)
    /* CD300 800BE350 04410003 */  bgez       $v0, .L800BE360_CD310
    /* CD304 800BE354 00025943 */   sra       $t3, $v0, 5
    /* CD308 800BE358 2441001F */  addiu      $at, $v0, 0x1F
    /* CD30C 800BE35C 00015943 */  sra        $t3, $at, 5
  .L800BE360_CD310:
    /* CD310 800BE360 85490000 */  lh         $t1, 0x0($t2)
    /* CD314 800BE364 01696821 */  addu       $t5, $t3, $t1
    /* CD318 800BE368 25ACFBFC */  addiu      $t4, $t5, -0x404
    /* CD31C 800BE36C 0C000E38 */  jal        func_800038E0_44E0
    /* CD320 800BE370 A7AC0050 */   sh        $t4, 0x50($sp)
    /* CD324 800BE374 3C0F8005 */  lui        $t7, %hi(D_80052B34)
    /* CD328 800BE378 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* CD32C 800BE37C 04410003 */  bgez       $v0, .L800BE38C_CD33C
    /* CD330 800BE380 0002C143 */   sra       $t8, $v0, 5
    /* CD334 800BE384 2441001F */  addiu      $at, $v0, 0x1F
    /* CD338 800BE388 0001C143 */  sra        $t8, $at, 5
  .L800BE38C_CD33C:
    /* CD33C 800BE38C 85EE0004 */  lh         $t6, 0x4($t7)
    /* CD340 800BE390 030E4021 */  addu       $t0, $t8, $t6
    /* CD344 800BE394 2519FBFC */  addiu      $t9, $t0, -0x404
    /* CD348 800BE398 0C000E38 */  jal        func_800038E0_44E0
    /* CD34C 800BE39C A7B90052 */   sh        $t9, 0x52($sp)
    /* CD350 800BE3A0 04410003 */  bgez       $v0, .L800BE3B0_CD360
    /* CD354 800BE3A4 00025243 */   sra       $t2, $v0, 9
    /* CD358 800BE3A8 244101FF */  addiu      $at, $v0, 0x1FF
    /* CD35C 800BE3AC 00015243 */  sra        $t2, $at, 9
  .L800BE3B0_CD360:
    /* CD360 800BE3B0 254B007F */  addiu      $t3, $t2, 0x7F
    /* CD364 800BE3B4 0C000E38 */  jal        func_800038E0_44E0
    /* CD368 800BE3B8 A3AB0054 */   sb        $t3, 0x54($sp)
    /* CD36C 800BE3BC 04410003 */  bgez       $v0, .L800BE3CC_CD37C
    /* CD370 800BE3C0 00024A43 */   sra       $t1, $v0, 9
    /* CD374 800BE3C4 244101FF */  addiu      $at, $v0, 0x1FF
    /* CD378 800BE3C8 00014A43 */  sra        $t1, $at, 9
  .L800BE3CC_CD37C:
    /* CD37C 800BE3CC 252D007F */  addiu      $t5, $t1, 0x7F
    /* CD380 800BE3D0 0C000E38 */  jal        func_800038E0_44E0
    /* CD384 800BE3D4 A3AD0055 */   sb        $t5, 0x55($sp)
    /* CD388 800BE3D8 04410003 */  bgez       $v0, .L800BE3E8_CD398
    /* CD38C 800BE3DC 00026243 */   sra       $t4, $v0, 9
    /* CD390 800BE3E0 244101FF */  addiu      $at, $v0, 0x1FF
    /* CD394 800BE3E4 00016243 */  sra        $t4, $at, 9
  .L800BE3E8_CD398:
    /* CD398 800BE3E8 258F007F */  addiu      $t7, $t4, 0x7F
    /* CD39C 800BE3EC 27B80054 */  addiu      $t8, $sp, 0x54
    /* CD3A0 800BE3F0 240E0050 */  addiu      $t6, $zero, 0x50
    /* CD3A4 800BE3F4 2408000A */  addiu      $t0, $zero, 0xA
    /* CD3A8 800BE3F8 A3AF0056 */  sb         $t7, 0x56($sp)
    /* CD3AC 800BE3FC AFA80018 */  sw         $t0, 0x18($sp)
    /* CD3B0 800BE400 AFAE0014 */  sw         $t6, 0x14($sp)
    /* CD3B4 800BE404 AFB80010 */  sw         $t8, 0x10($sp)
    /* CD3B8 800BE408 27A40050 */  addiu      $a0, $sp, 0x50
    /* CD3BC 800BE40C 2405001E */  addiu      $a1, $zero, 0x1E
    /* CD3C0 800BE410 240601F4 */  addiu      $a2, $zero, 0x1F4
    /* CD3C4 800BE414 240700FF */  addiu      $a3, $zero, 0xFF
    /* CD3C8 800BE418 0C02E66A */  jal        func_800B99A8_C8958
    /* CD3CC 800BE41C AFA0001C */   sw        $zero, 0x1C($sp)
    /* CD3D0 800BE420 3C038005 */  lui        $v1, %hi(D_80052A8C)
    /* CD3D4 800BE424 8C632A8C */  lw         $v1, %lo(D_80052A8C)($v1)
    /* CD3D8 800BE428 24010005 */  addiu      $at, $zero, 0x5
  .L800BE42C_CD3DC:
    /* CD3DC 800BE42C 0061001B */  divu       $zero, $v1, $at
    /* CD3E0 800BE430 0000C810 */  mfhi       $t9
    /* CD3E4 800BE434 57200031 */  bnel       $t9, $zero, .L800BE4FC_CD4AC
    /* CD3E8 800BE438 2401000A */   addiu     $at, $zero, 0xA
    /* CD3EC 800BE43C 0C000E38 */  jal        func_800038E0_44E0
    /* CD3F0 800BE440 00000000 */   nop
    /* CD3F4 800BE444 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* CD3F8 800BE448 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* CD3FC 800BE44C 04410003 */  bgez       $v0, .L800BE45C_CD40C
    /* CD400 800BE450 00025143 */   sra       $t2, $v0, 5
    /* CD404 800BE454 2441001F */  addiu      $at, $v0, 0x1F
    /* CD408 800BE458 00015143 */  sra        $t2, $at, 5
  .L800BE45C_CD40C:
    /* CD40C 800BE45C 85690000 */  lh         $t1, 0x0($t3)
    /* CD410 800BE460 01496821 */  addu       $t5, $t2, $t1
    /* CD414 800BE464 25ACFBFC */  addiu      $t4, $t5, -0x404
    /* CD418 800BE468 0C000E38 */  jal        func_800038E0_44E0
    /* CD41C 800BE46C A7AC005C */   sh        $t4, 0x5C($sp)
    /* CD420 800BE470 3C188005 */  lui        $t8, %hi(D_80052B34)
    /* CD424 800BE474 8F182B34 */  lw         $t8, %lo(D_80052B34)($t8)
    /* CD428 800BE478 04410003 */  bgez       $v0, .L800BE488_CD438
    /* CD42C 800BE47C 00027943 */   sra       $t7, $v0, 5
    /* CD430 800BE480 2441001F */  addiu      $at, $v0, 0x1F
    /* CD434 800BE484 00017943 */  sra        $t7, $at, 5
  .L800BE488_CD438:
    /* CD438 800BE488 870E0004 */  lh         $t6, 0x4($t8)
    /* CD43C 800BE48C 87A4005C */  lh         $a0, 0x5C($sp)
    /* CD440 800BE490 01EE3021 */  addu       $a2, $t7, $t6
    /* CD444 800BE494 24D9FBFC */  addiu      $t9, $a2, -0x404
    /* CD448 800BE498 00192C00 */  sll        $a1, $t9, 16
    /* CD44C 800BE49C 00055C03 */  sra        $t3, $a1, 16
    /* CD450 800BE4A0 01602825 */  or         $a1, $t3, $zero
    /* CD454 800BE4A4 0C02E134 */  jal        func_800B84D0_C7480
    /* CD458 800BE4A8 A7B9005A */   sh        $t9, 0x5A($sp)
    /* CD45C 800BE4AC 0C000E38 */  jal        func_800038E0_44E0
    /* CD460 800BE4B0 AFA2004C */   sw        $v0, 0x4C($sp)
    /* CD464 800BE4B4 24010032 */  addiu      $at, $zero, 0x32
    /* CD468 800BE4B8 0041001A */  div        $zero, $v0, $at
    /* CD46C 800BE4BC 8FA3004C */  lw         $v1, 0x4C($sp)
    /* CD470 800BE4C0 00003810 */  mfhi       $a3
    /* CD474 800BE4C4 24E7003C */  addiu      $a3, $a3, 0x3C
    /* CD478 800BE4C8 00032A03 */  sra        $a1, $v1, 8
    /* CD47C 800BE4CC 00055400 */  sll        $t2, $a1, 16
    /* CD480 800BE4D0 30EDFFFF */  andi       $t5, $a3, 0xFFFF
    /* CD484 800BE4D4 01A03825 */  or         $a3, $t5, $zero
    /* CD488 800BE4D8 000A2C03 */  sra        $a1, $t2, 16
    /* CD48C 800BE4DC 87A6005A */  lh         $a2, 0x5A($sp)
    /* CD490 800BE4E0 87A4005C */  lh         $a0, 0x5C($sp)
    /* CD494 800BE4E4 AFA00010 */  sw         $zero, 0x10($sp)
    /* CD498 800BE4E8 0C037E72 */  jal        func_800DF9C8_EE978
    /* CD49C 800BE4EC AFA00014 */   sw        $zero, 0x14($sp)
    /* CD4A0 800BE4F0 3C038005 */  lui        $v1, %hi(D_80052A8C)
    /* CD4A4 800BE4F4 8C632A8C */  lw         $v1, %lo(D_80052A8C)($v1)
    /* CD4A8 800BE4F8 2401000A */  addiu      $at, $zero, 0xA
  .L800BE4FC_CD4AC:
    /* CD4AC 800BE4FC 0061001B */  divu       $zero, $v1, $at
    /* CD4B0 800BE500 00006010 */  mfhi       $t4
    /* CD4B4 800BE504 24010003 */  addiu      $at, $zero, 0x3
    /* CD4B8 800BE508 5581002A */  bnel       $t4, $at, .L800BE5B4_CD564
    /* CD4BC 800BE50C 8FBF003C */   lw        $ra, 0x3C($sp)
    /* CD4C0 800BE510 0C000E38 */  jal        func_800038E0_44E0
    /* CD4C4 800BE514 00000000 */   nop
    /* CD4C8 800BE518 3C0F8005 */  lui        $t7, %hi(D_80052B34)
    /* CD4CC 800BE51C 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* CD4D0 800BE520 04410003 */  bgez       $v0, .L800BE530_CD4E0
    /* CD4D4 800BE524 0002C143 */   sra       $t8, $v0, 5
    /* CD4D8 800BE528 2441001F */  addiu      $at, $v0, 0x1F
    /* CD4DC 800BE52C 0001C143 */  sra        $t8, $at, 5
  .L800BE530_CD4E0:
    /* CD4E0 800BE530 85EE0000 */  lh         $t6, 0x0($t7)
    /* CD4E4 800BE534 030E4021 */  addu       $t0, $t8, $t6
    /* CD4E8 800BE538 2519FBFC */  addiu      $t9, $t0, -0x404
    /* CD4EC 800BE53C 0C000E38 */  jal        func_800038E0_44E0
    /* CD4F0 800BE540 A7B9005C */   sh        $t9, 0x5C($sp)
    /* CD4F4 800BE544 3C0A8005 */  lui        $t2, %hi(D_80052B34)
    /* CD4F8 800BE548 8D4A2B34 */  lw         $t2, %lo(D_80052B34)($t2)
    /* CD4FC 800BE54C 04410003 */  bgez       $v0, .L800BE55C_CD50C
    /* CD500 800BE550 00025943 */   sra       $t3, $v0, 5
    /* CD504 800BE554 2441001F */  addiu      $at, $v0, 0x1F
    /* CD508 800BE558 00015943 */  sra        $t3, $at, 5
  .L800BE55C_CD50C:
    /* CD50C 800BE55C 85490004 */  lh         $t1, 0x4($t2)
    /* CD510 800BE560 87A4005C */  lh         $a0, 0x5C($sp)
    /* CD514 800BE564 01693021 */  addu       $a2, $t3, $t1
    /* CD518 800BE568 24CCFBFC */  addiu      $t4, $a2, -0x404
    /* CD51C 800BE56C 000C2C00 */  sll        $a1, $t4, 16
    /* CD520 800BE570 00057C03 */  sra        $t7, $a1, 16
    /* CD524 800BE574 01E02825 */  or         $a1, $t7, $zero
    /* CD528 800BE578 0C02E134 */  jal        func_800B84D0_C7480
    /* CD52C 800BE57C A7AC005A */   sh        $t4, 0x5A($sp)
    /* CD530 800BE580 00022A03 */  sra        $a1, $v0, 8
    /* CD534 800BE584 00057400 */  sll        $t6, $a1, 16
    /* CD538 800BE588 87A6005A */  lh         $a2, 0x5A($sp)
    /* CD53C 800BE58C 87A7005C */  lh         $a3, 0x5C($sp)
    /* CD540 800BE590 000E2C03 */  sra        $a1, $t6, 16
    /* CD544 800BE594 24B90BB8 */  addiu      $t9, $a1, 0xBB8
    /* CD548 800BE598 240A000D */  addiu      $t2, $zero, 0xD
    /* CD54C 800BE59C AFAA0018 */  sw         $t2, 0x18($sp)
    /* CD550 800BE5A0 AFB90010 */  sw         $t9, 0x10($sp)
    /* CD554 800BE5A4 AFA60014 */  sw         $a2, 0x14($sp)
    /* CD558 800BE5A8 0C0345AF */  jal        func_800D16BC_E066C
    /* CD55C 800BE5AC 00E02025 */   or        $a0, $a3, $zero
    /* CD560 800BE5B0 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800BE5B4_CD564:
    /* CD564 800BE5B4 27BD0060 */  addiu      $sp, $sp, 0x60
    /* CD568 800BE5B8 03E00008 */  jr         $ra
    /* CD56C 800BE5BC 00000000 */   nop
endlabel func_800BDDCC_CCD7C
