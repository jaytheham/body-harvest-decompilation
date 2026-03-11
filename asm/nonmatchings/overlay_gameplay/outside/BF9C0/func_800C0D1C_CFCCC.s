nonmatching func_800C0D1C_CFCCC, 0x160

glabel func_800C0D1C_CFCCC
    /* CFCCC 800C0D1C 3C088014 */  lui        $t0, %hi(D_8013D9C0)
    /* CFCD0 800C0D20 2508D9C0 */  addiu      $t0, $t0, %lo(D_8013D9C0)
    /* CFCD4 800C0D24 850F0000 */  lh         $t7, 0x0($t0)
    /* CFCD8 800C0D28 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* CFCDC 800C0D2C 00043C00 */  sll        $a3, $a0, 16
    /* CFCE0 800C0D30 00077403 */  sra        $t6, $a3, 16
    /* CFCE4 800C0D34 AFBF0014 */  sw         $ra, 0x14($sp)
    /* CFCE8 800C0D38 AFA40018 */  sw         $a0, 0x18($sp)
    /* CFCEC 800C0D3C 15E0004A */  bnez       $t7, .L800C0E68_CFE18
    /* CFCF0 800C0D40 AFA5001C */   sw        $a1, 0x1C($sp)
    /* CFCF4 800C0D44 3C188014 */  lui        $t8, %hi(D_8013D9B0)
    /* CFCF8 800C0D48 9318D9B0 */  lbu        $t8, %lo(D_8013D9B0)($t8)
    /* CFCFC 800C0D4C 3C198014 */  lui        $t9, %hi(D_8013D9AC)
    /* CFD00 800C0D50 57000046 */  bnel       $t8, $zero, .L800C0E6C_CFE1C
    /* CFD04 800C0D54 00001025 */   or        $v0, $zero, $zero
    /* CFD08 800C0D58 9339D9AC */  lbu        $t9, %lo(D_8013D9AC)($t9)
    /* CFD0C 800C0D5C 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* CFD10 800C0D60 57200042 */  bnel       $t9, $zero, .L800C0E6C_CFE1C
    /* CFD14 800C0D64 00001025 */   or        $v0, $zero, $zero
    /* CFD18 800C0D68 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* CFD1C 800C0D6C 3C018014 */  lui        $at, %hi(D_8013D9CC)
    /* CFD20 800C0D70 AC26D9CC */  sw         $a2, %lo(D_8013D9CC)($at)
    /* CFD24 800C0D74 84690000 */  lh         $t1, 0x0($v1)
    /* CFD28 800C0D78 000951C3 */  sra        $t2, $t1, 7
    /* CFD2C 800C0D7C 014E1023 */  subu       $v0, $t2, $t6
    /* CFD30 800C0D80 00022023 */  negu       $a0, $v0
    /* CFD34 800C0D84 0082082A */  slt        $at, $a0, $v0
    /* CFD38 800C0D88 10200003 */  beqz       $at, .L800C0D98_CFD48
    /* CFD3C 800C0D8C 00802825 */   or        $a1, $a0, $zero
    /* CFD40 800C0D90 10000001 */  b          .L800C0D98_CFD48
    /* CFD44 800C0D94 00402825 */   or        $a1, $v0, $zero
  .L800C0D98_CFD48:
    /* CFD48 800C0D98 846B0004 */  lh         $t3, 0x4($v1)
    /* CFD4C 800C0D9C 87AD001E */  lh         $t5, 0x1E($sp)
    /* CFD50 800C0DA0 000B61C3 */  sra        $t4, $t3, 7
    /* CFD54 800C0DA4 018D1023 */  subu       $v0, $t4, $t5
    /* CFD58 800C0DA8 00022023 */  negu       $a0, $v0
    /* CFD5C 800C0DAC 0082082A */  slt        $at, $a0, $v0
    /* CFD60 800C0DB0 10200003 */  beqz       $at, .L800C0DC0_CFD70
    /* CFD64 800C0DB4 00801825 */   or        $v1, $a0, $zero
    /* CFD68 800C0DB8 10000001 */  b          .L800C0DC0_CFD70
    /* CFD6C 800C0DBC 00401825 */   or        $v1, $v0, $zero
  .L800C0DC0_CFD70:
    /* CFD70 800C0DC0 00A50019 */  multu      $a1, $a1
    /* CFD74 800C0DC4 AFA60020 */  sw         $a2, 0x20($sp)
    /* CFD78 800C0DC8 00007012 */  mflo       $t6
    /* CFD7C 800C0DCC 00000000 */  nop
    /* CFD80 800C0DD0 00000000 */  nop
    /* CFD84 800C0DD4 00630019 */  multu      $v1, $v1
    /* CFD88 800C0DD8 00007812 */  mflo       $t7
    /* CFD8C 800C0DDC 01CFC021 */  addu       $t8, $t6, $t7
    /* CFD90 800C0DE0 44982000 */  mtc1       $t8, $f4
    /* CFD94 800C0DE4 0C007650 */  jal        sqrtf
    /* CFD98 800C0DE8 46802320 */   cvt.s.w   $f12, $f4
    /* CFD9C 800C0DEC 4600018D */  trunc.w.s  $f6, $f0
    /* CFDA0 800C0DF0 8FA60020 */  lw         $a2, 0x20($sp)
    /* CFDA4 800C0DF4 3C028014 */  lui        $v0, %hi(D_8013D9C4)
    /* CFDA8 800C0DF8 2442D9C4 */  addiu      $v0, $v0, %lo(D_8013D9C4)
    /* CFDAC 800C0DFC 44093000 */  mfc1       $t1, $f6
    /* CFDB0 800C0E00 3C088014 */  lui        $t0, %hi(D_8013D9C0)
    /* CFDB4 800C0E04 2508D9C0 */  addiu      $t0, $t0, %lo(D_8013D9C0)
    /* CFDB8 800C0E08 10C00003 */  beqz       $a2, .L800C0E18_CFDC8
    /* CFDBC 800C0E0C A4490000 */   sh        $t1, 0x0($v0)
    /* CFDC0 800C0E10 10000007 */  b          .L800C0E30_CFDE0
    /* CFDC4 800C0E14 A5000000 */   sh        $zero, 0x0($t0)
  .L800C0E18_CFDC8:
    /* CFDC8 800C0E18 844A0000 */  lh         $t2, 0x0($v0)
    /* CFDCC 800C0E1C 05410003 */  bgez       $t2, .L800C0E2C_CFDDC
    /* CFDD0 800C0E20 000A5843 */   sra       $t3, $t2, 1
    /* CFDD4 800C0E24 25410001 */  addiu      $at, $t2, 0x1
    /* CFDD8 800C0E28 00015843 */  sra        $t3, $at, 1
  .L800C0E2C_CFDDC:
    /* CFDDC 800C0E2C A50B0000 */  sh         $t3, 0x0($t0)
  .L800C0E30_CFDE0:
    /* CFDE0 800C0E30 3C0C8004 */  lui        $t4, %hi(currentLevel)
    /* CFDE4 800C0E34 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* CFDE8 800C0E38 3C188003 */  lui        $t8, %hi(D_80031634)
    /* CFDEC 800C0E3C 3C018003 */  lui        $at, %hi(D_800313F8)
    /* CFDF0 800C0E40 258EFFFF */  addiu      $t6, $t4, -0x1
    /* CFDF4 800C0E44 000E7880 */  sll        $t7, $t6, 2
    /* CFDF8 800C0E48 030FC021 */  addu       $t8, $t8, $t7
    /* CFDFC 800C0E4C 87181634 */  lh         $t8, %lo(D_80031634)($t8)
    /* CFE00 800C0E50 3C04800C */  lui        $a0, %hi(func_800C0678_CF628)
    /* CFE04 800C0E54 24840678 */  addiu      $a0, $a0, %lo(func_800C0678_CF628)
    /* CFE08 800C0E58 0C001D04 */  jal        func_80007410_8010
    /* CFE0C 800C0E5C A43813F8 */   sh        $t8, %lo(D_800313F8)($at)
    /* CFE10 800C0E60 10000002 */  b          .L800C0E6C_CFE1C
    /* CFE14 800C0E64 24020001 */   addiu     $v0, $zero, 0x1
  .L800C0E68_CFE18:
    /* CFE18 800C0E68 00001025 */  or         $v0, $zero, $zero
  .L800C0E6C_CFE1C:
    /* CFE1C 800C0E6C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* CFE20 800C0E70 27BD0018 */  addiu      $sp, $sp, 0x18
    /* CFE24 800C0E74 03E00008 */  jr         $ra
    /* CFE28 800C0E78 00000000 */   nop
endlabel func_800C0D1C_CFCCC
    /* CFE2C 800C0E7C 00000000 */  nop
