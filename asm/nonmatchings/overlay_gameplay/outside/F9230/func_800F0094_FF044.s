nonmatching func_800F0094_FF044, 0x1A0

glabel func_800F0094_FF044
    /* FF044 800F0094 3C058015 */  lui        $a1, %hi(D_80157F68)
    /* FF048 800F0098 24A57F68 */  addiu      $a1, $a1, %lo(D_80157F68)
    /* FF04C 800F009C 84A20000 */  lh         $v0, 0x0($a1)
    /* FF050 800F00A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* FF054 800F00A4 2404FFFF */  addiu      $a0, $zero, -0x1
    /* FF058 800F00A8 14820004 */  bne        $a0, $v0, .L800F00BC_FF06C
    /* FF05C 800F00AC AFBF0014 */   sw        $ra, 0x14($sp)
    /* FF060 800F00B0 3C018005 */  lui        $at, %hi(D_8004DC60)
    /* FF064 800F00B4 1000005B */  b          .L800F0224_FF1D4
    /* FF068 800F00B8 A420DC60 */   sh        $zero, %lo(D_8004DC60)($at)
  .L800F00BC_FF06C:
    /* FF06C 800F00BC 3C038015 */  lui        $v1, %hi(D_80157FB4)
    /* FF070 800F00C0 24637FB4 */  addiu      $v1, $v1, %lo(D_80157FB4)
    /* FF074 800F00C4 8C6E0000 */  lw         $t6, 0x0($v1)
    /* FF078 800F00C8 24090001 */  addiu      $t1, $zero, 0x1
    /* FF07C 800F00CC 3C018016 */  lui        $at, %hi(D_8015EA2C)
    /* FF080 800F00D0 15C00009 */  bnez       $t6, .L800F00F8_FF0A8
    /* FF084 800F00D4 241900FF */   addiu     $t9, $zero, 0xFF
    /* FF088 800F00D8 50400008 */  beql       $v0, $zero, .L800F00FC_FF0AC
    /* FF08C 800F00DC 44802000 */   mtc1      $zero, $f4
    /* FF090 800F00E0 0C03C19B */  jal        func_800F066C_FF61C
    /* FF094 800F00E4 00000000 */   nop
    /* FF098 800F00E8 3C038015 */  lui        $v1, %hi(D_80157FB4)
    /* FF09C 800F00EC 24637FB4 */  addiu      $v1, $v1, %lo(D_80157FB4)
    /* FF0A0 800F00F0 1000003A */  b          .L800F01DC_FF18C
    /* FF0A4 800F00F4 AC620000 */   sw        $v0, 0x0($v1)
  .L800F00F8_FF0A8:
    /* FF0A8 800F00F8 44802000 */  mtc1       $zero, $f4
  .L800F00FC_FF0AC:
    /* FF0AC 800F00FC 3C0F8005 */  lui        $t7, %hi(D_80052ACA)
    /* FF0B0 800F0100 91EF2ACA */  lbu        $t7, %lo(D_80052ACA)($t7)
    /* FF0B4 800F0104 E424EA2C */  swc1       $f4, %lo(D_8015EA2C)($at)
    /* FF0B8 800F0108 3C018015 */  lui        $at, %hi(D_801493E0)
    /* FF0BC 800F010C A42993E0 */  sh         $t1, %lo(D_801493E0)($at)
    /* FF0C0 800F0110 24010002 */  addiu      $at, $zero, 0x2
    /* FF0C4 800F0114 15E10005 */  bne        $t7, $at, .L800F012C_FF0DC
    /* FF0C8 800F0118 3C0A8005 */   lui       $t2, %hi(D_80052550)
    /* FF0CC 800F011C 3C188004 */  lui        $t8, %hi(currentLevel)
    /* FF0D0 800F0120 8F187F90 */  lw         $t8, %lo(currentLevel)($t8)
    /* FF0D4 800F0124 24010005 */  addiu      $at, $zero, 0x5
    /* FF0D8 800F0128 17010002 */  bne        $t8, $at, .L800F0134_FF0E4
  .L800F012C_FF0DC:
    /* FF0DC 800F012C 3C018015 */   lui       $at, %hi(D_801493E2)
    /* FF0E0 800F0130 A42993E2 */  sh         $t1, %lo(D_801493E2)($at)
  .L800F0134_FF0E4:
    /* FF0E4 800F0134 AC600000 */  sw         $zero, 0x0($v1)
    /* FF0E8 800F0138 3C018016 */  lui        $at, %hi(D_80159DDF)
    /* FF0EC 800F013C A0399DDF */  sb         $t9, %lo(D_80159DDF)($at)
    /* FF0F0 800F0140 A4A40000 */  sh         $a0, 0x0($a1)
    /* FF0F4 800F0144 8D4A2550 */  lw         $t2, %lo(D_80052550)($t2)
    /* FF0F8 800F0148 3C018007 */  lui        $at, %hi(D_80068080)
    /* FF0FC 800F014C AC208080 */  sw         $zero, %lo(D_80068080)($at)
    /* FF100 800F0150 11400007 */  beqz       $t2, .L800F0170_FF120
    /* FF104 800F0154 3C018005 */   lui       $at, %hi(gameplayMode)
    /* FF108 800F0158 240B0006 */  addiu      $t3, $zero, 0x6
    /* FF10C 800F015C 3C018005 */  lui        $at, %hi(gameplayMode)
    /* FF110 800F0160 AC2B2ADC */  sw         $t3, %lo(gameplayMode)($at)
    /* FF114 800F0164 3C018004 */  lui        $at, %hi(D_80047968)
    /* FF118 800F0168 10000006 */  b          .L800F0184_FF134
    /* FF11C 800F016C AC297968 */   sw        $t1, %lo(D_80047968)($at)
  .L800F0170_FF120:
    /* FF120 800F0170 AC292ADC */  sw         $t1, %lo(gameplayMode)($at)
    /* FF124 800F0174 3C018015 */  lui        $at, %hi(D_80157590)
    /* FF128 800F0178 A4207590 */  sh         $zero, %lo(D_80157590)($at)
    /* FF12C 800F017C 3C018005 */  lui        $at, %hi(D_8004DC60)
    /* FF130 800F0180 A420DC60 */  sh         $zero, %lo(D_8004DC60)($at)
  .L800F0184_FF134:
    /* FF134 800F0184 0C004CC9 */  jal        func_80013324_13F24
    /* FF138 800F0188 00000000 */   nop
    /* FF13C 800F018C 3C028005 */  lui        $v0, %hi(D_80052B2C)
    /* FF140 800F0190 8C422B2C */  lw         $v0, %lo(D_80052B2C)($v0)
    /* FF144 800F0194 3C068020 */  lui        $a2, %hi(D_801FEA30)
    /* FF148 800F0198 24C6EA30 */  addiu      $a2, $a2, %lo(D_801FEA30)
    /* FF14C 800F019C 8443003C */  lh         $v1, 0x3C($v0)
    /* FF150 800F01A0 8448003E */  lh         $t0, 0x3E($v0)
    /* FF154 800F01A4 00003825 */  or         $a3, $zero, $zero
    /* FF158 800F01A8 00032203 */  sra        $a0, $v1, 8
    /* FF15C 800F01AC 00082A03 */  sra        $a1, $t0, 8
    /* FF160 800F01B0 24A50077 */  addiu      $a1, $a1, 0x77
    /* FF164 800F01B4 24840077 */  addiu      $a0, $a0, 0x77
    /* FF168 800F01B8 308C00FF */  andi       $t4, $a0, 0xFF
    /* FF16C 800F01BC 30AD00FF */  andi       $t5, $a1, 0xFF
    /* FF170 800F01C0 01A02825 */  or         $a1, $t5, $zero
    /* FF174 800F01C4 0C02D014 */  jal        func_800B4050_C3000
    /* FF178 800F01C8 01802025 */   or        $a0, $t4, $zero
    /* FF17C 800F01CC 24090001 */  addiu      $t1, $zero, 0x1
    /* FF180 800F01D0 3C018004 */  lui        $at, %hi(D_800476A2)
    /* FF184 800F01D4 10000013 */  b          .L800F0224_FF1D4
    /* FF188 800F01D8 A42976A2 */   sh        $t1, %lo(D_800476A2)($at)
  .L800F01DC_FF18C:
    /* FF18C 800F01DC 3C038015 */  lui        $v1, %hi(D_80157F90)
    /* FF190 800F01E0 24637F90 */  addiu      $v1, $v1, %lo(D_80157F90)
    /* FF194 800F01E4 846E0000 */  lh         $t6, 0x0($v1)
    /* FF198 800F01E8 3C028015 */  lui        $v0, %hi(D_80157F70)
    /* FF19C 800F01EC 25CF0001 */  addiu      $t7, $t6, 0x1
    /* FF1A0 800F01F0 A46F0000 */  sh         $t7, 0x0($v1)
    /* FF1A4 800F01F4 8C427F70 */  lw         $v0, %lo(D_80157F70)($v0)
    /* FF1A8 800F01F8 5040000B */  beql       $v0, $zero, .L800F0228_FF1D8
    /* FF1AC 800F01FC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* FF1B0 800F0200 0040F809 */  jalr       $v0
    /* FF1B4 800F0204 00000000 */   nop
    /* FF1B8 800F0208 10400006 */  beqz       $v0, .L800F0224_FF1D4
    /* FF1BC 800F020C 3C018015 */   lui       $at, %hi(D_80157F8C)
    /* FF1C0 800F0210 A4207F8C */  sh         $zero, %lo(D_80157F8C)($at)
    /* FF1C4 800F0214 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* FF1C8 800F0218 A4207F8E */  sh         $zero, %lo(D_80157F8E)($at)
    /* FF1CC 800F021C 3C018015 */  lui        $at, %hi(D_80157F70)
    /* FF1D0 800F0220 AC207F70 */  sw         $zero, %lo(D_80157F70)($at)
  .L800F0224_FF1D4:
    /* FF1D4 800F0224 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800F0228_FF1D8:
    /* FF1D8 800F0228 27BD0018 */  addiu      $sp, $sp, 0x18
    /* FF1DC 800F022C 03E00008 */  jr         $ra
    /* FF1E0 800F0230 00000000 */   nop
endlabel func_800F0094_FF044
