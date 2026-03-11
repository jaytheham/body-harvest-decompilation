nonmatching func_800EFEB4_FEE64, 0x100

glabel func_800EFEB4_FEE64
    /* FEE64 800EFEB4 3C188005 */  lui        $t8, %hi(D_80052AD0)
    /* FEE68 800EFEB8 8F182AD0 */  lw         $t8, %lo(D_80052AD0)($t8)
    /* FEE6C 800EFEBC 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* FEE70 800EFEC0 00057400 */  sll        $t6, $a1, 16
    /* FEE74 800EFEC4 000E7C03 */  sra        $t7, $t6, 16
    /* FEE78 800EFEC8 AFA50024 */  sw         $a1, 0x24($sp)
    /* FEE7C 800EFECC 01E02825 */  or         $a1, $t7, $zero
    /* FEE80 800EFED0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* FEE84 800EFED4 AFA60028 */  sw         $a2, 0x28($sp)
    /* FEE88 800EFED8 13000032 */  beqz       $t8, .L800EFFA4_FEF54
    /* FEE8C 800EFEDC 00803825 */   or        $a3, $a0, $zero
    /* FEE90 800EFEE0 24010001 */  addiu      $at, $zero, 0x1
    /* FEE94 800EFEE4 15E10004 */  bne        $t7, $at, .L800EFEF8_FEEA8
    /* FEE98 800EFEE8 00A01025 */   or        $v0, $a1, $zero
    /* FEE9C 800EFEEC 44802000 */  mtc1       $zero, $f4
    /* FEEA0 800EFEF0 3C018016 */  lui        $at, %hi(D_8015EA2C)
    /* FEEA4 800EFEF4 E424EA2C */  swc1       $f4, %lo(D_8015EA2C)($at)
  .L800EFEF8_FEEA8:
    /* FEEA8 800EFEF8 3C018004 */  lui        $at, %hi(D_800476A2)
    /* FEEAC 800EFEFC A42076A2 */  sh         $zero, %lo(D_800476A2)($at)
    /* FEEB0 800EFF00 3C018004 */  lui        $at, %hi(D_80047968)
    /* FEEB4 800EFF04 AC207968 */  sw         $zero, %lo(D_80047968)($at)
    /* FEEB8 800EFF08 30A400FF */  andi       $a0, $a1, 0xFF
    /* FEEBC 800EFF0C AFA50018 */  sw         $a1, 0x18($sp)
    /* FEEC0 800EFF10 A7A50026 */  sh         $a1, 0x26($sp)
    /* FEEC4 800EFF14 0C03BF94 */  jal        func_800EFE50_FEE00
    /* FEEC8 800EFF18 AFA70020 */   sw        $a3, 0x20($sp)
    /* FEECC 800EFF1C 8FB90028 */  lw         $t9, 0x28($sp)
    /* FEED0 800EFF20 8FA20018 */  lw         $v0, 0x18($sp)
    /* FEED4 800EFF24 3C018015 */  lui        $at, %hi(D_80157F6A)
    /* FEED8 800EFF28 87A50026 */  lh         $a1, 0x26($sp)
    /* FEEDC 800EFF2C 8FA70020 */  lw         $a3, 0x20($sp)
    /* FEEE0 800EFF30 13200005 */  beqz       $t9, .L800EFF48_FEEF8
    /* FEEE4 800EFF34 A0227F6A */   sb        $v0, %lo(D_80157F6A)($at)
    /* FEEE8 800EFF38 24080003 */  addiu      $t0, $zero, 0x3
    /* FEEEC 800EFF3C 3C018005 */  lui        $at, %hi(gameplayMode)
    /* FEEF0 800EFF40 10000004 */  b          .L800EFF54_FEF04
    /* FEEF4 800EFF44 AC282ADC */   sw        $t0, %lo(gameplayMode)($at)
  .L800EFF48_FEEF8:
    /* FEEF8 800EFF48 2409000B */  addiu      $t1, $zero, 0xB
    /* FEEFC 800EFF4C 3C018005 */  lui        $at, %hi(gameplayMode)
    /* FEF00 800EFF50 AC292ADC */  sw         $t1, %lo(gameplayMode)($at)
  .L800EFF54_FEF04:
    /* FEF04 800EFF54 24010003 */  addiu      $at, $zero, 0x3
    /* FEF08 800EFF58 10A10002 */  beq        $a1, $at, .L800EFF64_FEF14
    /* FEF0C 800EFF5C 3C018015 */   lui       $at, %hi(D_801493E2)
    /* FEF10 800EFF60 A42093E2 */  sh         $zero, %lo(D_801493E2)($at)
  .L800EFF64_FEF14:
    /* FEF14 800EFF64 3C018015 */  lui        $at, %hi(D_80157F8C)
    /* FEF18 800EFF68 A4207F8C */  sh         $zero, %lo(D_80157F8C)($at)
    /* FEF1C 800EFF6C 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* FEF20 800EFF70 A4207F8E */  sh         $zero, %lo(D_80157F8E)($at)
    /* FEF24 800EFF74 3C018015 */  lui        $at, %hi(D_80157F90)
    /* FEF28 800EFF78 A4207F90 */  sh         $zero, %lo(D_80157F90)($at)
    /* FEF2C 800EFF7C 3C018015 */  lui        $at, %hi(D_80157F70)
    /* FEF30 800EFF80 10E00003 */  beqz       $a3, .L800EFF90_FEF40
    /* FEF34 800EFF84 AC277F70 */   sw        $a3, %lo(D_80157F70)($at)
    /* FEF38 800EFF88 00E0F809 */  jalr       $a3
    /* FEF3C 800EFF8C 00000000 */   nop
  .L800EFF90_FEF40:
    /* FEF40 800EFF90 3C048015 */  lui        $a0, %hi(D_80157E90)
    /* FEF44 800EFF94 24847E90 */  addiu      $a0, $a0, %lo(D_80157E90)
    /* FEF48 800EFF98 00002825 */  or         $a1, $zero, $zero
    /* FEF4C 800EFF9C 0C03C0D0 */  jal        func_800F0340_FF2F0
    /* FEF50 800EFFA0 24060005 */   addiu     $a2, $zero, 0x5
  .L800EFFA4_FEF54:
    /* FEF54 800EFFA4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* FEF58 800EFFA8 27BD0020 */  addiu      $sp, $sp, 0x20
    /* FEF5C 800EFFAC 03E00008 */  jr         $ra
    /* FEF60 800EFFB0 00000000 */   nop
endlabel func_800EFEB4_FEE64
