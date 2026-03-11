nonmatching func_800CF948_DE8F8, 0x43C

glabel func_800CF948_DE8F8
    /* DE8F8 800CF948 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* DE8FC 800CF94C AFB00020 */  sw         $s0, 0x20($sp)
    /* DE900 800CF950 3C108015 */  lui        $s0, %hi(D_80154276)
    /* DE904 800CF954 86104276 */  lh         $s0, %lo(D_80154276)($s0)
    /* DE908 800CF958 2401FFFB */  addiu      $at, $zero, -0x5
    /* DE90C 800CF95C AFBF0044 */  sw         $ra, 0x44($sp)
    /* DE910 800CF960 AFBE0040 */  sw         $fp, 0x40($sp)
    /* DE914 800CF964 AFB7003C */  sw         $s7, 0x3C($sp)
    /* DE918 800CF968 AFB60038 */  sw         $s6, 0x38($sp)
    /* DE91C 800CF96C AFB50034 */  sw         $s5, 0x34($sp)
    /* DE920 800CF970 AFB40030 */  sw         $s4, 0x30($sp)
    /* DE924 800CF974 AFB3002C */  sw         $s3, 0x2C($sp)
    /* DE928 800CF978 AFB20028 */  sw         $s2, 0x28($sp)
    /* DE92C 800CF97C AFB10024 */  sw         $s1, 0x24($sp)
    /* DE930 800CF980 12010003 */  beq        $s0, $at, .L800CF990_DE940
    /* DE934 800CF984 F7B40018 */   sdc1      $f20, 0x18($sp)
    /* DE938 800CF988 2401FFFA */  addiu      $at, $zero, -0x6
    /* DE93C 800CF98C 16010005 */  bne        $s0, $at, .L800CF9A4_DE954
  .L800CF990_DE940:
    /* DE940 800CF990 2404000A */   addiu     $a0, $zero, 0xA
    /* DE944 800CF994 0C030506 */  jal        func_800C1418_D03C8
    /* DE948 800CF998 24050001 */   addiu     $a1, $zero, 0x1
    /* DE94C 800CF99C 100000ED */  b          .L800CFD54_DED04
    /* DE950 800CF9A0 8FBF0044 */   lw        $ra, 0x44($sp)
  .L800CF9A4_DE954:
    /* DE954 800CF9A4 2401FFFB */  addiu      $at, $zero, -0x5
    /* DE958 800CF9A8 120100E9 */  beq        $s0, $at, .L800CFD50_DED00
    /* DE95C 800CF9AC 2401FFFA */   addiu     $at, $zero, -0x6
    /* DE960 800CF9B0 120100E7 */  beq        $s0, $at, .L800CFD50_DED00
    /* DE964 800CF9B4 3C1E8005 */   lui       $fp, %hi(vehicleInstances)
    /* DE968 800CF9B8 3C014110 */  lui        $at, (0x41100000 >> 16)
    /* DE96C 800CF9BC 3C178016 */  lui        $s7, %hi(D_80158FD8)
    /* DE970 800CF9C0 4481A000 */  mtc1       $at, $f20
    /* DE974 800CF9C4 26F78FD8 */  addiu      $s7, $s7, %lo(D_80158FD8)
    /* DE978 800CF9C8 27DEDCD0 */  addiu      $fp, $fp, %lo(vehicleInstances)
    /* DE97C 800CF9CC 001070C0 */  sll        $t6, $s0, 3
  .L800CF9D0_DE980:
    /* DE980 800CF9D0 01D07023 */  subu       $t6, $t6, $s0
    /* DE984 800CF9D4 3C0F8015 */  lui        $t7, %hi(D_80154318)
    /* DE988 800CF9D8 25EF4318 */  addiu      $t7, $t7, %lo(D_80154318)
    /* DE98C 800CF9DC 000E7080 */  sll        $t6, $t6, 2
    /* DE990 800CF9E0 01CFB021 */  addu       $s6, $t6, $t7
    /* DE994 800CF9E4 92D80018 */  lbu        $t8, 0x18($s6)
    /* DE998 800CF9E8 24010001 */  addiu      $at, $zero, 0x1
    /* DE99C 800CF9EC 26D50008 */  addiu      $s5, $s6, 0x8
    /* DE9A0 800CF9F0 33190001 */  andi       $t9, $t8, 0x1
    /* DE9A4 800CF9F4 17210006 */  bne        $t9, $at, .L800CFA10_DE9C0
    /* DE9A8 800CF9F8 00102400 */   sll       $a0, $s0, 16
    /* DE9AC 800CF9FC 26D50008 */  addiu      $s5, $s6, 0x8
    /* DE9B0 800CFA00 8EA8000C */  lw         $t0, 0xC($s5)
    /* DE9B4 800CFA04 2509FFFF */  addiu      $t1, $t0, -0x1
    /* DE9B8 800CFA08 10000004 */  b          .L800CFA1C_DE9CC
    /* DE9BC 800CFA0C AEA9000C */   sw        $t1, 0xC($s5)
  .L800CFA10_DE9C0:
    /* DE9C0 800CFA10 8EAA000C */  lw         $t2, 0xC($s5)
    /* DE9C4 800CFA14 254B0001 */  addiu      $t3, $t2, 0x1
    /* DE9C8 800CFA18 AEAB000C */  sw         $t3, 0xC($s5)
  .L800CFA1C_DE9CC:
    /* DE9CC 800CFA1C 8EA2000C */  lw         $v0, 0xC($s5)
    /* DE9D0 800CFA20 00046403 */  sra        $t4, $a0, 16
    /* DE9D4 800CFA24 01802025 */  or         $a0, $t4, $zero
    /* DE9D8 800CFA28 18400003 */  blez       $v0, .L800CFA38_DE9E8
    /* DE9DC 800CFA2C 28410019 */   slti      $at, $v0, 0x19
    /* DE9E0 800CFA30 5420000A */  bnel       $at, $zero, .L800CFA5C_DEA0C
    /* DE9E4 800CFA34 28410010 */   slti      $at, $v0, 0x10
  .L800CFA38_DE9E8:
    /* DE9E8 800CFA38 86D10004 */  lh         $s1, 0x4($s6)
    /* DE9EC 800CFA3C 2405000A */  addiu      $a1, $zero, 0xA
    /* DE9F0 800CFA40 0C030693 */  jal        func_800C1A4C_D09FC
    /* DE9F4 800CFA44 24060001 */   addiu     $a2, $zero, 0x1
    /* DE9F8 800CFA48 00118400 */  sll        $s0, $s1, 16
    /* DE9FC 800CFA4C 00106C03 */  sra        $t5, $s0, 16
    /* DEA00 800CFA50 100000BA */  b          .L800CFD3C_DECEC
    /* DEA04 800CFA54 01A08025 */   or        $s0, $t5, $zero
    /* DEA08 800CFA58 28410010 */  slti       $at, $v0, 0x10
  .L800CFA5C_DEA0C:
    /* DEA0C 800CFA5C 50200077 */  beql       $at, $zero, .L800CFC3C_DEBEC
    /* DEA10 800CFA60 24010010 */   addiu     $at, $zero, 0x10
    /* DEA14 800CFA64 86EE0000 */  lh         $t6, 0x0($s7)
    /* DEA18 800CFA68 0000A025 */  or         $s4, $zero, $zero
    /* DEA1C 800CFA6C 19C000B2 */  blez       $t6, .L800CFD38_DECE8
  .L800CFA70_DEA20:
    /* DEA20 800CFA70 3C0F8016 */   lui       $t7, %hi(D_80158E80)
    /* DEA24 800CFA74 01F47821 */  addu       $t7, $t7, $s4
    /* DEA28 800CFA78 91EF8E80 */  lbu        $t7, %lo(D_80158E80)($t7)
    /* DEA2C 800CFA7C 86C20002 */  lh         $v0, 0x2($s6)
    /* DEA30 800CFA80 86A50000 */  lh         $a1, 0x0($s5)
    /* DEA34 800CFA84 000FC080 */  sll        $t8, $t7, 2
    /* DEA38 800CFA88 030FC023 */  subu       $t8, $t8, $t7
    /* DEA3C 800CFA8C 0018C0C0 */  sll        $t8, $t8, 3
    /* DEA40 800CFA90 030FC023 */  subu       $t8, $t8, $t7
    /* DEA44 800CFA94 00021823 */  negu       $v1, $v0
    /* DEA48 800CFA98 0018C080 */  sll        $t8, $t8, 2
    /* DEA4C 800CFA9C 0062082A */  slt        $at, $v1, $v0
    /* DEA50 800CFAA0 03D89021 */  addu       $s2, $fp, $t8
    /* DEA54 800CFAA4 86A60002 */  lh         $a2, 0x2($s5)
    /* DEA58 800CFAA8 10200003 */  beqz       $at, .L800CFAB8_DEA68
    /* DEA5C 800CFAAC 86A70004 */   lh        $a3, 0x4($s5)
    /* DEA60 800CFAB0 10000002 */  b          .L800CFABC_DEA6C
    /* DEA64 800CFAB4 00402025 */   or        $a0, $v0, $zero
  .L800CFAB8_DEA68:
    /* DEA68 800CFAB8 00602025 */  or         $a0, $v1, $zero
  .L800CFABC_DEA6C:
    /* DEA6C 800CFABC 9259001A */  lbu        $t9, 0x1A($s2)
    /* DEA70 800CFAC0 864A0000 */  lh         $t2, 0x0($s2)
    /* DEA74 800CFAC4 3C098025 */  lui        $t1, %hi(D_80257A0C)
    /* DEA78 800CFAC8 001940C0 */  sll        $t0, $t9, 3
    /* DEA7C 800CFACC 01194023 */  subu       $t0, $t0, $t9
    /* DEA80 800CFAD0 00084100 */  sll        $t0, $t0, 4
    /* DEA84 800CFAD4 01284821 */  addu       $t1, $t1, $t0
    /* DEA88 800CFAD8 85297A0C */  lh         $t1, %lo(D_80257A0C)($t1)
    /* DEA8C 800CFADC 00AA1023 */  subu       $v0, $a1, $t2
    /* DEA90 800CFAE0 00021823 */  negu       $v1, $v0
    /* DEA94 800CFAE4 0062082A */  slt        $at, $v1, $v0
    /* DEA98 800CFAE8 01249821 */  addu       $s3, $t1, $a0
    /* DEA9C 800CFAEC 10200003 */  beqz       $at, .L800CFAFC_DEAAC
    /* DEAA0 800CFAF0 26730064 */   addiu     $s3, $s3, 0x64
    /* DEAA4 800CFAF4 10000002 */  b          .L800CFB00_DEAB0
    /* DEAA8 800CFAF8 00408825 */   or        $s1, $v0, $zero
  .L800CFAFC_DEAAC:
    /* DEAAC 800CFAFC 00608825 */  or         $s1, $v1, $zero
  .L800CFB00_DEAB0:
    /* DEAB0 800CFB00 864B0002 */  lh         $t3, 0x2($s2)
    /* DEAB4 800CFB04 00CB1023 */  subu       $v0, $a2, $t3
    /* DEAB8 800CFB08 00022023 */  negu       $a0, $v0
    /* DEABC 800CFB0C 0082082A */  slt        $at, $a0, $v0
    /* DEAC0 800CFB10 10200003 */  beqz       $at, .L800CFB20_DEAD0
    /* DEAC4 800CFB14 00801825 */   or        $v1, $a0, $zero
    /* DEAC8 800CFB18 10000001 */  b          .L800CFB20_DEAD0
    /* DEACC 800CFB1C 00401825 */   or        $v1, $v0, $zero
  .L800CFB20_DEAD0:
    /* DEAD0 800CFB20 864C0004 */  lh         $t4, 0x4($s2)
    /* DEAD4 800CFB24 00EC1023 */  subu       $v0, $a3, $t4
    /* DEAD8 800CFB28 00022023 */  negu       $a0, $v0
    /* DEADC 800CFB2C 0082082A */  slt        $at, $a0, $v0
    /* DEAE0 800CFB30 10200003 */  beqz       $at, .L800CFB40_DEAF0
    /* DEAE4 800CFB34 00808025 */   or        $s0, $a0, $zero
    /* DEAE8 800CFB38 10000001 */  b          .L800CFB40_DEAF0
    /* DEAEC 800CFB3C 00408025 */   or        $s0, $v0, $zero
  .L800CFB40_DEAF0:
    /* DEAF0 800CFB40 0233082A */  slt        $at, $s1, $s3
    /* DEAF4 800CFB44 10200034 */  beqz       $at, .L800CFC18_DEBC8
    /* DEAF8 800CFB48 0073082A */   slt       $at, $v1, $s3
    /* DEAFC 800CFB4C 10200032 */  beqz       $at, .L800CFC18_DEBC8
    /* DEB00 800CFB50 0213082A */   slt       $at, $s0, $s3
    /* DEB04 800CFB54 50200031 */  beql       $at, $zero, .L800CFC1C_DEBCC
    /* DEB08 800CFB58 86F90000 */   lh        $t9, 0x0($s7)
    /* DEB0C 800CFB5C 02310019 */  multu      $s1, $s1
    /* DEB10 800CFB60 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* DEB14 800CFB64 00006812 */  mflo       $t5
    /* DEB18 800CFB68 00000000 */  nop
    /* DEB1C 800CFB6C 00000000 */  nop
    /* DEB20 800CFB70 00630019 */  multu      $v1, $v1
    /* DEB24 800CFB74 00007012 */  mflo       $t6
    /* DEB28 800CFB78 01AE7821 */  addu       $t7, $t5, $t6
    /* DEB2C 800CFB7C 00000000 */  nop
    /* DEB30 800CFB80 02100019 */  multu      $s0, $s0
    /* DEB34 800CFB84 0000C012 */  mflo       $t8
    /* DEB38 800CFB88 01F8C821 */  addu       $t9, $t7, $t8
    /* DEB3C 800CFB8C 44992000 */  mtc1       $t9, $f4
    /* DEB40 800CFB90 07210004 */  bgez       $t9, .L800CFBA4_DEB54
    /* DEB44 800CFB94 46802320 */   cvt.s.w   $f12, $f4
    /* DEB48 800CFB98 44813000 */  mtc1       $at, $f6
    /* DEB4C 800CFB9C 00000000 */  nop
    /* DEB50 800CFBA0 46066300 */  add.s      $f12, $f12, $f6
  .L800CFBA4_DEB54:
    /* DEB54 800CFBA4 0C007650 */  jal        sqrtf
    /* DEB58 800CFBA8 00000000 */   nop
    /* DEB5C 800CFBAC 4600020D */  trunc.w.s  $f8, $f0
    /* DEB60 800CFBB0 44094000 */  mfc1       $t1, $f8
    /* DEB64 800CFBB4 00000000 */  nop
    /* DEB68 800CFBB8 0133082A */  slt        $at, $t1, $s3
    /* DEB6C 800CFBBC 50200017 */  beql       $at, $zero, .L800CFC1C_DEBCC
    /* DEB70 800CFBC0 86F90000 */   lh        $t9, 0x0($s7)
    /* DEB74 800CFBC4 86CA0002 */  lh         $t2, 0x2($s6)
    /* DEB78 800CFBC8 59400014 */  blezl      $t2, .L800CFC1C_DEBCC
    /* DEB7C 800CFBCC 86F90000 */   lh        $t9, 0x0($s7)
    /* DEB80 800CFBD0 964B0020 */  lhu        $t3, 0x20($s2)
    /* DEB84 800CFBD4 00116823 */  negu       $t5, $s1
    /* DEB88 800CFBD8 00107023 */  negu       $t6, $s0
    /* DEB8C 800CFBDC 316C0002 */  andi       $t4, $t3, 0x2
    /* DEB90 800CFBE0 5580000E */  bnel       $t4, $zero, .L800CFC1C_DEBCC
    /* DEB94 800CFBE4 86F90000 */   lh        $t9, 0x0($s7)
    /* DEB98 800CFBE8 448D5000 */  mtc1       $t5, $f10
    /* DEB9C 800CFBEC 448E8000 */  mtc1       $t6, $f16
    /* DEBA0 800CFBF0 46805320 */  cvt.s.w    $f12, $f10
    /* DEBA4 800CFBF4 0C000E09 */  jal        func_80003824_4424
    /* DEBA8 800CFBF8 468083A0 */   cvt.s.w   $f14, $f16
    /* DEBAC 800CFBFC 00022C00 */  sll        $a1, $v0, 16
    /* DEBB0 800CFC00 00057C03 */  sra        $t7, $a1, 16
    /* DEBB4 800CFC04 4407A000 */  mfc1       $a3, $f20
    /* DEBB8 800CFC08 01E02825 */  or         $a1, $t7, $zero
    /* DEBBC 800CFC0C 02402025 */  or         $a0, $s2, $zero
    /* DEBC0 800CFC10 0C040B77 */  jal        func_80102DDC_111D8C
    /* DEBC4 800CFC14 00003025 */   or        $a2, $zero, $zero
  .L800CFC18_DEBC8:
    /* DEBC8 800CFC18 86F90000 */  lh         $t9, 0x0($s7)
  .L800CFC1C_DEBCC:
    /* DEBCC 800CFC1C 26940001 */  addiu      $s4, $s4, 0x1
    /* DEBD0 800CFC20 329800FF */  andi       $t8, $s4, 0xFF
    /* DEBD4 800CFC24 0319082A */  slt        $at, $t8, $t9
    /* DEBD8 800CFC28 1420FF91 */  bnez       $at, .L800CFA70_DEA20
    /* DEBDC 800CFC2C 0300A025 */   or        $s4, $t8, $zero
    /* DEBE0 800CFC30 10000042 */  b          .L800CFD3C_DECEC
    /* DEBE4 800CFC34 86D00004 */   lh        $s0, 0x4($s6)
    /* DEBE8 800CFC38 24010010 */  addiu      $at, $zero, 0x10
  .L800CFC3C_DEBEC:
    /* DEBEC 800CFC3C 5441003F */  bnel       $v0, $at, .L800CFD3C_DECEC
    /* DEBF0 800CFC40 86D00004 */   lh        $s0, 0x4($s6)
    /* DEBF4 800CFC44 92A80010 */  lbu        $t0, 0x10($s5)
    /* DEBF8 800CFC48 3C058015 */  lui        $a1, %hi(D_8014ECCC)
    /* DEBFC 800CFC4C 31090002 */  andi       $t1, $t0, 0x2
    /* DEC00 800CFC50 5520003A */  bnel       $t1, $zero, .L800CFD3C_DECEC
    /* DEC04 800CFC54 86D00004 */   lh        $s0, 0x4($s6)
    /* DEC08 800CFC58 8CA5ECCC */  lw         $a1, %lo(D_8014ECCC)($a1)
    /* DEC0C 800CFC5C 0000A025 */  or         $s4, $zero, $zero
    /* DEC10 800CFC60 10A00035 */  beqz       $a1, .L800CFD38_DECE8
  .L800CFC64_DEC14:
    /* DEC14 800CFC64 3C0A8015 */   lui       $t2, %hi(D_8014D510)
    /* DEC18 800CFC68 01545021 */  addu       $t2, $t2, $s4
    /* DEC1C 800CFC6C 914AD510 */  lbu        $t2, %lo(D_8014D510)($t2)
    /* DEC20 800CFC70 3C0C8005 */  lui        $t4, %hi(alienInstances)
    /* DEC24 800CFC74 258C8198 */  addiu      $t4, $t4, %lo(alienInstances)
    /* DEC28 800CFC78 000A5880 */  sll        $t3, $t2, 2
    /* DEC2C 800CFC7C 016A5821 */  addu       $t3, $t3, $t2
    /* DEC30 800CFC80 000B5900 */  sll        $t3, $t3, 4
    /* DEC34 800CFC84 016C2021 */  addu       $a0, $t3, $t4
    /* DEC38 800CFC88 848E0000 */  lh         $t6, 0x0($a0)
    /* DEC3C 800CFC8C 86AD0000 */  lh         $t5, 0x0($s5)
    /* DEC40 800CFC90 84980002 */  lh         $t8, 0x2($a0)
    /* DEC44 800CFC94 86AF0002 */  lh         $t7, 0x2($s5)
    /* DEC48 800CFC98 01AE8823 */  subu       $s1, $t5, $t6
    /* DEC4C 800CFC9C 02310019 */  multu      $s1, $s1
    /* DEC50 800CFCA0 01F81823 */  subu       $v1, $t7, $t8
    /* DEC54 800CFCA4 84880004 */  lh         $t0, 0x4($a0)
    /* DEC58 800CFCA8 86B90004 */  lh         $t9, 0x4($s5)
    /* DEC5C 800CFCAC 86C20002 */  lh         $v0, 0x2($s6)
    /* DEC60 800CFCB0 908E001A */  lbu        $t6, 0x1A($a0)
    /* DEC64 800CFCB4 03288023 */  subu       $s0, $t9, $t0
    /* DEC68 800CFCB8 3C188025 */  lui        $t8, %hi(D_80256688)
    /* DEC6C 800CFCBC 000E7880 */  sll        $t7, $t6, 2
    /* DEC70 800CFCC0 01EE7823 */  subu       $t7, $t7, $t6
    /* DEC74 800CFCC4 00004812 */  mflo       $t1
    /* DEC78 800CFCC8 000F7880 */  sll        $t7, $t7, 2
    /* DEC7C 800CFCCC 01EE7821 */  addu       $t7, $t7, $t6
    /* DEC80 800CFCD0 00630019 */  multu      $v1, $v1
    /* DEC84 800CFCD4 000F78C0 */  sll        $t7, $t7, 3
    /* DEC88 800CFCD8 030FC021 */  addu       $t8, $t8, $t7
    /* DEC8C 800CFCDC 8F186688 */  lw         $t8, %lo(D_80256688)($t8)
    /* DEC90 800CFCE0 00005012 */  mflo       $t2
    /* DEC94 800CFCE4 012A5821 */  addu       $t3, $t1, $t2
    /* DEC98 800CFCE8 00000000 */  nop
    /* DEC9C 800CFCEC 02100019 */  multu      $s0, $s0
    /* DECA0 800CFCF0 00006012 */  mflo       $t4
    /* DECA4 800CFCF4 016C6821 */  addu       $t5, $t3, $t4
    /* DECA8 800CFCF8 00000000 */  nop
    /* DECAC 800CFCFC 00420019 */  multu      $v0, $v0
    /* DECB0 800CFD00 0000C812 */  mflo       $t9
    /* DECB4 800CFD04 03194021 */  addu       $t0, $t8, $t9
    /* DECB8 800CFD08 01A8082A */  slt        $at, $t5, $t0
    /* DECBC 800CFD0C 50200006 */  beql       $at, $zero, .L800CFD28_DECD8
    /* DECC0 800CFD10 26940001 */   addiu     $s4, $s4, 0x1
    /* DECC4 800CFD14 0C0221D8 */  jal        func_80088760_97710
    /* DECC8 800CFD18 00000000 */   nop
    /* DECCC 800CFD1C 3C058015 */  lui        $a1, %hi(D_8014ECCC)
    /* DECD0 800CFD20 8CA5ECCC */  lw         $a1, %lo(D_8014ECCC)($a1)
    /* DECD4 800CFD24 26940001 */  addiu      $s4, $s4, 0x1
  .L800CFD28_DECD8:
    /* DECD8 800CFD28 328900FF */  andi       $t1, $s4, 0xFF
    /* DECDC 800CFD2C 0125082B */  sltu       $at, $t1, $a1
    /* DECE0 800CFD30 1420FFCC */  bnez       $at, .L800CFC64_DEC14
    /* DECE4 800CFD34 0120A025 */   or        $s4, $t1, $zero
  .L800CFD38_DECE8:
    /* DECE8 800CFD38 86D00004 */  lh         $s0, 0x4($s6)
  .L800CFD3C_DECEC:
    /* DECEC 800CFD3C 2401FFFB */  addiu      $at, $zero, -0x5
    /* DECF0 800CFD40 12010003 */  beq        $s0, $at, .L800CFD50_DED00
    /* DECF4 800CFD44 2401FFFA */   addiu     $at, $zero, -0x6
    /* DECF8 800CFD48 5601FF21 */  bnel       $s0, $at, .L800CF9D0_DE980
    /* DECFC 800CFD4C 001070C0 */   sll       $t6, $s0, 3
  .L800CFD50_DED00:
    /* DED00 800CFD50 8FBF0044 */  lw         $ra, 0x44($sp)
  .L800CFD54_DED04:
    /* DED04 800CFD54 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* DED08 800CFD58 8FB00020 */  lw         $s0, 0x20($sp)
    /* DED0C 800CFD5C 8FB10024 */  lw         $s1, 0x24($sp)
    /* DED10 800CFD60 8FB20028 */  lw         $s2, 0x28($sp)
    /* DED14 800CFD64 8FB3002C */  lw         $s3, 0x2C($sp)
    /* DED18 800CFD68 8FB40030 */  lw         $s4, 0x30($sp)
    /* DED1C 800CFD6C 8FB50034 */  lw         $s5, 0x34($sp)
    /* DED20 800CFD70 8FB60038 */  lw         $s6, 0x38($sp)
    /* DED24 800CFD74 8FB7003C */  lw         $s7, 0x3C($sp)
    /* DED28 800CFD78 8FBE0040 */  lw         $fp, 0x40($sp)
    /* DED2C 800CFD7C 03E00008 */  jr         $ra
    /* DED30 800CFD80 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_800CF948_DE8F8
