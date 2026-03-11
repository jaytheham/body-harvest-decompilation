nonmatching func_800BD8B8_CC868, 0x23C

glabel func_800BD8B8_CC868
    /* CC868 800BD8B8 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* CC86C 800BD8BC AFBE0038 */  sw         $fp, 0x38($sp)
    /* CC870 800BD8C0 3C1E8004 */  lui        $fp, %hi(currentLevel)
    /* CC874 800BD8C4 27DE7F90 */  addiu      $fp, $fp, %lo(currentLevel)
    /* CC878 800BD8C8 8FCE0000 */  lw         $t6, 0x0($fp)
    /* CC87C 800BD8CC 24020005 */  addiu      $v0, $zero, 0x5
    /* CC880 800BD8D0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* CC884 800BD8D4 AFB70034 */  sw         $s7, 0x34($sp)
    /* CC888 800BD8D8 AFB60030 */  sw         $s6, 0x30($sp)
    /* CC88C 800BD8DC AFB5002C */  sw         $s5, 0x2C($sp)
    /* CC890 800BD8E0 AFB40028 */  sw         $s4, 0x28($sp)
    /* CC894 800BD8E4 AFB30024 */  sw         $s3, 0x24($sp)
    /* CC898 800BD8E8 AFB20020 */  sw         $s2, 0x20($sp)
    /* CC89C 800BD8EC AFB1001C */  sw         $s1, 0x1C($sp)
    /* CC8A0 800BD8F0 104E0074 */  beq        $v0, $t6, .L800BDAC4_CCA74
    /* CC8A4 800BD8F4 AFB00018 */   sw        $s0, 0x18($sp)
    /* CC8A8 800BD8F8 3C0F8016 */  lui        $t7, %hi(D_801591AC)
    /* CC8AC 800BD8FC 8DEF91AC */  lw         $t7, %lo(D_801591AC)($t7)
    /* CC8B0 800BD900 3C068005 */  lui        $a2, %hi(D_80052B34)
    /* CC8B4 800BD904 144F000B */  bne        $v0, $t7, .L800BD934_CC8E4
    /* CC8B8 800BD908 00000000 */   nop
    /* CC8BC 800BD90C 8CC62B34 */  lw         $a2, %lo(D_80052B34)($a2)
    /* CC8C0 800BD910 84C40000 */  lh         $a0, 0x0($a2)
    /* CC8C4 800BD914 0C02C3C8 */  jal        func_800B0F20_BFED0
    /* CC8C8 800BD918 84C50004 */   lh        $a1, 0x4($a2)
    /* CC8CC 800BD91C 3C118004 */  lui        $s1, %hi(D_80047F94)
    /* CC8D0 800BD920 26317F94 */  addiu      $s1, $s1, %lo(D_80047F94)
    /* CC8D4 800BD924 0C02C320 */  jal        func_800B0C80_BFC30
    /* CC8D8 800BD928 AE220000 */   sw        $v0, 0x0($s1)
    /* CC8DC 800BD92C 0C03EB24 */  jal        func_800FAC90_109C40
    /* CC8E0 800BD930 00000000 */   nop
  .L800BD934_CC8E4:
    /* CC8E4 800BD934 3C118004 */  lui        $s1, %hi(D_80047F94)
    /* CC8E8 800BD938 3C148004 */  lui        $s4, %hi(D_8003E0FC)
    /* CC8EC 800BD93C 3C128014 */  lui        $s2, %hi(D_8013D9A8)
    /* CC8F0 800BD940 26317F94 */  addiu      $s1, $s1, %lo(D_80047F94)
    /* CC8F4 800BD944 2652D9A8 */  addiu      $s2, $s2, %lo(D_8013D9A8)
    /* CC8F8 800BD948 2694E0FC */  addiu      $s4, $s4, %lo(D_8003E0FC)
    /* CC8FC 800BD94C 00008025 */  or         $s0, $zero, $zero
    /* CC900 800BD950 2417001E */  addiu      $s7, $zero, 0x1E
    /* CC904 800BD954 24160001 */  addiu      $s6, $zero, 0x1
    /* CC908 800BD958 2415000A */  addiu      $s5, $zero, 0xA
    /* CC90C 800BD95C 24130002 */  addiu      $s3, $zero, 0x2
  .L800BD960_CC910:
    /* CC910 800BD960 02150019 */  multu      $s0, $s5
    /* CC914 800BD964 8FD80000 */  lw         $t8, 0x0($fp)
    /* CC918 800BD968 3C068005 */  lui        $a2, %hi(D_80052B34)
    /* CC91C 800BD96C 0018C880 */  sll        $t9, $t8, 2
    /* CC920 800BD970 0338C821 */  addu       $t9, $t9, $t8
    /* CC924 800BD974 0019C900 */  sll        $t9, $t9, 4
    /* CC928 800BD978 02995021 */  addu       $t2, $s4, $t9
    /* CC92C 800BD97C 00005812 */  mflo       $t3
    /* CC930 800BD980 014B1821 */  addu       $v1, $t2, $t3
    /* CC934 800BD984 906CFFB9 */  lbu        $t4, -0x47($v1)
    /* CC938 800BD988 526C004F */  beql       $s3, $t4, .L800BDAC8_CCA78
    /* CC93C 800BD98C 8FBF003C */   lw        $ra, 0x3C($sp)
    /* CC940 800BD990 8062FFB6 */  lb         $v0, -0x4A($v1)
    /* CC944 800BD994 1040000D */  beqz       $v0, .L800BD9CC_CC97C
    /* CC948 800BD998 28410050 */   slti      $at, $v0, 0x50
    /* CC94C 800BD99C 1020000B */  beqz       $at, .L800BD9CC_CC97C
    /* CC950 800BD9A0 244D0004 */   addiu     $t5, $v0, 0x4
    /* CC954 800BD9A4 A06DFFB6 */  sb         $t5, -0x4A($v1)
    /* CC958 800BD9A8 8062FFB6 */  lb         $v0, -0x4A($v1)
    /* CC95C 800BD9AC 04410004 */  bgez       $v0, .L800BD9C0_CC970
    /* CC960 800BD9B0 304E0001 */   andi      $t6, $v0, 0x1
    /* CC964 800BD9B4 11C00002 */  beqz       $t6, .L800BD9C0_CC970
    /* CC968 800BD9B8 00000000 */   nop
    /* CC96C 800BD9BC 25CEFFFE */  addiu      $t6, $t6, -0x2
  .L800BD9C0_CC970:
    /* CC970 800BD9C0 004E7823 */  subu       $t7, $v0, $t6
    /* CC974 800BD9C4 A06FFFB6 */  sb         $t7, -0x4A($v1)
    /* CC978 800BD9C8 8062FFB6 */  lb         $v0, -0x4A($v1)
  .L800BD9CC_CC97C:
    /* CC97C 800BD9CC 28410050 */  slti       $at, $v0, 0x50
    /* CC980 800BD9D0 54200034 */  bnel       $at, $zero, .L800BDAA4_CCA54
    /* CC984 800BD9D4 26100001 */   addiu     $s0, $s0, 0x1
    /* CC988 800BD9D8 8CC62B34 */  lw         $a2, %lo(D_80052B34)($a2)
    /* CC98C 800BD9DC 8469FFB0 */  lh         $t1, -0x50($v1)
    /* CC990 800BD9E0 84C80000 */  lh         $t0, 0x0($a2)
    /* CC994 800BD9E4 0009C200 */  sll        $t8, $t1, 8
    /* CC998 800BD9E8 03004825 */  or         $t1, $t8, $zero
    /* CC99C 800BD9EC 01181023 */  subu       $v0, $t0, $t8
    /* CC9A0 800BD9F0 04400003 */  bltz       $v0, .L800BDA00_CC9B0
    /* CC9A4 800BD9F4 00022023 */   negu      $a0, $v0
    /* CC9A8 800BD9F8 10000001 */  b          .L800BDA00_CC9B0
    /* CC9AC 800BD9FC 00402025 */   or        $a0, $v0, $zero
  .L800BDA00_CC9B0:
    /* CC9B0 800BDA00 288100FA */  slti       $at, $a0, 0xFA
    /* CC9B4 800BDA04 50200027 */  beql       $at, $zero, .L800BDAA4_CCA54
    /* CC9B8 800BDA08 26100001 */   addiu     $s0, $s0, 0x1
    /* CC9BC 800BDA0C 8467FFB4 */  lh         $a3, -0x4C($v1)
    /* CC9C0 800BDA10 84C50004 */  lh         $a1, 0x4($a2)
    /* CC9C4 800BDA14 0007CA00 */  sll        $t9, $a3, 8
    /* CC9C8 800BDA18 00B91023 */  subu       $v0, $a1, $t9
    /* CC9CC 800BDA1C 04400003 */  bltz       $v0, .L800BDA2C_CC9DC
    /* CC9D0 800BDA20 03203825 */   or        $a3, $t9, $zero
    /* CC9D4 800BDA24 10000002 */  b          .L800BDA30_CC9E0
    /* CC9D8 800BDA28 00402025 */   or        $a0, $v0, $zero
  .L800BDA2C_CC9DC:
    /* CC9DC 800BDA2C 00022023 */  negu       $a0, $v0
  .L800BDA30_CC9E0:
    /* CC9E0 800BDA30 288100FA */  slti       $at, $a0, 0xFA
    /* CC9E4 800BDA34 5020001B */  beql       $at, $zero, .L800BDAA4_CCA54
    /* CC9E8 800BDA38 26100001 */   addiu     $s0, $s0, 0x1
    /* CC9EC 800BDA3C 906AFFB9 */  lbu        $t2, -0x47($v1)
    /* CC9F0 800BDA40 0128082A */  slt        $at, $t1, $t0
    /* CC9F4 800BDA44 16CA000A */  bne        $s6, $t2, .L800BDA70_CCA20
    /* CC9F8 800BDA48 00000000 */   nop
    /* CC9FC 800BDA4C 00E5082A */  slt        $at, $a3, $a1
    /* CCA00 800BDA50 50200005 */  beql       $at, $zero, .L800BDA68_CCA18
    /* CCA04 800BDA54 906CFFB7 */   lbu       $t4, -0x49($v1)
    /* CCA08 800BDA58 906BFFB8 */  lbu        $t3, -0x48($v1)
    /* CCA0C 800BDA5C 1000000B */  b          .L800BDA8C_CCA3C
    /* CCA10 800BDA60 AE2B0000 */   sw        $t3, 0x0($s1)
    /* CCA14 800BDA64 906CFFB7 */  lbu        $t4, -0x49($v1)
  .L800BDA68_CCA18:
    /* CCA18 800BDA68 10000008 */  b          .L800BDA8C_CCA3C
    /* CCA1C 800BDA6C AE2C0000 */   sw        $t4, 0x0($s1)
  .L800BDA70_CCA20:
    /* CCA20 800BDA70 50200005 */  beql       $at, $zero, .L800BDA88_CCA38
    /* CCA24 800BDA74 906EFFB7 */   lbu       $t6, -0x49($v1)
    /* CCA28 800BDA78 906DFFB8 */  lbu        $t5, -0x48($v1)
    /* CCA2C 800BDA7C 10000003 */  b          .L800BDA8C_CCA3C
    /* CCA30 800BDA80 AE2D0000 */   sw        $t5, 0x0($s1)
    /* CCA34 800BDA84 906EFFB7 */  lbu        $t6, -0x49($v1)
  .L800BDA88_CCA38:
    /* CCA38 800BDA88 AE2E0000 */  sw         $t6, 0x0($s1)
  .L800BDA8C_CCA3C:
    /* CCA3C 800BDA8C 0C02C320 */  jal        func_800B0C80_BFC30
    /* CCA40 800BDA90 00000000 */   nop
    /* CCA44 800BDA94 0C03EB24 */  jal        func_800FAC90_109C40
    /* CCA48 800BDA98 00000000 */   nop
    /* CCA4C 800BDA9C A6570000 */  sh         $s7, 0x0($s2)
    /* CCA50 800BDAA0 26100001 */  addiu      $s0, $s0, 0x1
  .L800BDAA4_CCA54:
    /* CCA54 800BDAA4 320F00FF */  andi       $t7, $s0, 0xFF
    /* CCA58 800BDAA8 29E10008 */  slti       $at, $t7, 0x8
    /* CCA5C 800BDAAC 1420FFAC */  bnez       $at, .L800BD960_CC910
    /* CCA60 800BDAB0 01E08025 */   or        $s0, $t7, $zero
    /* CCA64 800BDAB4 86420000 */  lh         $v0, 0x0($s2)
    /* CCA68 800BDAB8 18400002 */  blez       $v0, .L800BDAC4_CCA74
    /* CCA6C 800BDABC 2458FFFF */   addiu     $t8, $v0, -0x1
    /* CCA70 800BDAC0 A6580000 */  sh         $t8, 0x0($s2)
  .L800BDAC4_CCA74:
    /* CCA74 800BDAC4 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800BDAC8_CCA78:
    /* CCA78 800BDAC8 8FB00018 */  lw         $s0, 0x18($sp)
    /* CCA7C 800BDACC 8FB1001C */  lw         $s1, 0x1C($sp)
    /* CCA80 800BDAD0 8FB20020 */  lw         $s2, 0x20($sp)
    /* CCA84 800BDAD4 8FB30024 */  lw         $s3, 0x24($sp)
    /* CCA88 800BDAD8 8FB40028 */  lw         $s4, 0x28($sp)
    /* CCA8C 800BDADC 8FB5002C */  lw         $s5, 0x2C($sp)
    /* CCA90 800BDAE0 8FB60030 */  lw         $s6, 0x30($sp)
    /* CCA94 800BDAE4 8FB70034 */  lw         $s7, 0x34($sp)
    /* CCA98 800BDAE8 8FBE0038 */  lw         $fp, 0x38($sp)
    /* CCA9C 800BDAEC 03E00008 */  jr         $ra
    /* CCAA0 800BDAF0 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800BD8B8_CC868
