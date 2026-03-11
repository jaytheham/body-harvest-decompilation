nonmatching func_800DAA1C_E99CC, 0x1A0

glabel func_800DAA1C_E99CC
    /* E99CC 800DAA1C 308E00FF */  andi       $t6, $a0, 0xFF
    /* E99D0 800DAA20 000E7880 */  sll        $t7, $t6, 2
    /* E99D4 800DAA24 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* E99D8 800DAA28 01EE7823 */  subu       $t7, $t7, $t6
    /* E99DC 800DAA2C 3C188005 */  lui        $t8, %hi(buildingInstances)
    /* E99E0 800DAA30 AFB1001C */  sw         $s1, 0x1C($sp)
    /* E99E4 800DAA34 27180AD8 */  addiu      $t8, $t8, %lo(buildingInstances)
    /* E99E8 800DAA38 000F78C0 */  sll        $t7, $t7, 3
    /* E99EC 800DAA3C 01F88821 */  addu       $s1, $t7, $t8
    /* E99F0 800DAA40 92390006 */  lbu        $t9, 0x6($s1)
    /* E99F4 800DAA44 AFBE0038 */  sw         $fp, 0x38($sp)
    /* E99F8 800DAA48 3C1E8026 */  lui        $fp, %hi(D_802590A9)
    /* E99FC 800DAA4C 00194140 */  sll        $t0, $t9, 5
    /* E9A00 800DAA50 03C8F021 */  addu       $fp, $fp, $t0
    /* E9A04 800DAA54 83DE90A9 */  lb         $fp, %lo(D_802590A9)($fp)
    /* E9A08 800DAA58 8E2C0008 */  lw         $t4, 0x8($s1)
    /* E9A0C 800DAA5C AFA40040 */  sw         $a0, 0x40($sp)
    /* E9A10 800DAA60 01C02025 */  or         $a0, $t6, $zero
    /* E9A14 800DAA64 AFB00018 */  sw         $s0, 0x18($sp)
    /* E9A18 800DAA68 001E4883 */  sra        $t1, $fp, 2
    /* E9A1C 800DAA6C 000C6B02 */  srl        $t5, $t4, 12
    /* E9A20 800DAA70 00095400 */  sll        $t2, $t1, 16
    /* E9A24 800DAA74 3C108015 */  lui        $s0, %hi(D_80154282)
    /* E9A28 800DAA78 31AE0010 */  andi       $t6, $t5, 0x10
    /* E9A2C 800DAA7C AFBF003C */  sw         $ra, 0x3C($sp)
    /* E9A30 800DAA80 AFB70034 */  sw         $s7, 0x34($sp)
    /* E9A34 800DAA84 AFB60030 */  sw         $s6, 0x30($sp)
    /* E9A38 800DAA88 AFB5002C */  sw         $s5, 0x2C($sp)
    /* E9A3C 800DAA8C AFB40028 */  sw         $s4, 0x28($sp)
    /* E9A40 800DAA90 AFB30024 */  sw         $s3, 0x24($sp)
    /* E9A44 800DAA94 AFB20020 */  sw         $s2, 0x20($sp)
    /* E9A48 800DAA98 000AF403 */  sra        $fp, $t2, 16
    /* E9A4C 800DAA9C 11C0003B */  beqz       $t6, .L800DAB8C_E9B3C
    /* E9A50 800DAAA0 86104282 */   lh        $s0, %lo(D_80154282)($s0)
    /* E9A54 800DAAA4 2416FFFB */  addiu      $s6, $zero, -0x5
    /* E9A58 800DAAA8 1216002E */  beq        $s0, $s6, .L800DAB64_E9B14
    /* E9A5C 800DAAAC 2417FFFA */   addiu     $s7, $zero, -0x6
    /* E9A60 800DAAB0 1217002C */  beq        $s0, $s7, .L800DAB64_E9B14
    /* E9A64 800DAAB4 0080A825 */   or        $s5, $a0, $zero
    /* E9A68 800DAAB8 3C128015 */  lui        $s2, %hi(D_80154318)
    /* E9A6C 800DAABC 26524318 */  addiu      $s2, $s2, %lo(D_80154318)
    /* E9A70 800DAAC0 2414FFEF */  addiu      $s4, $zero, -0x11
    /* E9A74 800DAAC4 2413001C */  addiu      $s3, $zero, 0x1C
  .L800DAAC8_E9A78:
    /* E9A78 800DAAC8 02130019 */  multu      $s0, $s3
    /* E9A7C 800DAACC 00007812 */  mflo       $t7
    /* E9A80 800DAAD0 024F1021 */  addu       $v0, $s2, $t7
    /* E9A84 800DAAD4 84580010 */  lh         $t8, 0x10($v0)
    /* E9A88 800DAAD8 24430008 */  addiu      $v1, $v0, 0x8
    /* E9A8C 800DAADC 56B80019 */  bnel       $s5, $t8, .L800DAB44_E9AF4
    /* E9A90 800DAAE0 84500004 */   lh        $s0, 0x4($v0)
    /* E9A94 800DAAE4 90640006 */  lbu        $a0, 0x6($v1)
    /* E9A98 800DAAE8 2405000B */  addiu      $a1, $zero, 0xB
    /* E9A9C 800DAAEC 24060001 */  addiu      $a2, $zero, 0x1
    /* E9AA0 800DAAF0 288100F8 */  slti       $at, $a0, 0xF8
    /* E9AA4 800DAAF4 1420000F */  bnez       $at, .L800DAB34_E9AE4
    /* E9AA8 800DAAF8 248C0006 */   addiu     $t4, $a0, 0x6
    /* E9AAC 800DAAFC 00102400 */  sll        $a0, $s0, 16
    /* E9AB0 800DAB00 0004CC03 */  sra        $t9, $a0, 16
    /* E9AB4 800DAB04 03202025 */  or         $a0, $t9, $zero
    /* E9AB8 800DAB08 0C030789 */  jal        func_800C1E24_D0DD4
    /* E9ABC 800DAB0C 2410FFFB */   addiu     $s0, $zero, -0x5
    /* E9AC0 800DAB10 8E220008 */  lw         $v0, 0x8($s1)
    /* E9AC4 800DAB14 A23E000F */  sb         $fp, 0xF($s1)
    /* E9AC8 800DAB18 00021B02 */  srl        $v1, $v0, 12
    /* E9ACC 800DAB1C 00744024 */  and        $t0, $v1, $s4
    /* E9AD0 800DAB20 01034826 */  xor        $t1, $t0, $v1
    /* E9AD4 800DAB24 00095300 */  sll        $t2, $t1, 12
    /* E9AD8 800DAB28 01425826 */  xor        $t3, $t2, $v0
    /* E9ADC 800DAB2C 10000009 */  b          .L800DAB54_E9B04
    /* E9AE0 800DAB30 AE2B0008 */   sw        $t3, 0x8($s1)
  .L800DAB34_E9AE4:
    /* E9AE4 800DAB34 A06C0006 */  sb         $t4, 0x6($v1)
    /* E9AE8 800DAB38 10000006 */  b          .L800DAB54_E9B04
    /* E9AEC 800DAB3C 2410FFFB */   addiu     $s0, $zero, -0x5
    /* E9AF0 800DAB40 84500004 */  lh         $s0, 0x4($v0)
  .L800DAB44_E9AF4:
    /* E9AF4 800DAB44 02130019 */  multu      $s0, $s3
    /* E9AF8 800DAB48 00006812 */  mflo       $t5
    /* E9AFC 800DAB4C 024D7021 */  addu       $t6, $s2, $t5
    /* E9B00 800DAB50 85D00004 */  lh         $s0, 0x4($t6)
  .L800DAB54_E9B04:
    /* E9B04 800DAB54 12160003 */  beq        $s0, $s6, .L800DAB64_E9B14
    /* E9B08 800DAB58 00000000 */   nop
    /* E9B0C 800DAB5C 1617FFDA */  bne        $s0, $s7, .L800DAAC8_E9A78
    /* E9B10 800DAB60 00000000 */   nop
  .L800DAB64_E9B14:
    /* E9B14 800DAB64 3C0F8005 */  lui        $t7, %hi(D_80052A8C)
    /* E9B18 800DAB68 8DEF2A8C */  lw         $t7, %lo(D_80052A8C)($t7)
    /* E9B1C 800DAB6C 31F80007 */  andi       $t8, $t7, 0x7
    /* E9B20 800DAB70 57000007 */  bnel       $t8, $zero, .L800DAB90_E9B40
    /* E9B24 800DAB74 8FBF003C */   lw        $ra, 0x3C($sp)
    /* E9B28 800DAB78 8222000F */  lb         $v0, 0xF($s1)
    /* E9B2C 800DAB7C 03C2082A */  slt        $at, $fp, $v0
    /* E9B30 800DAB80 14200002 */  bnez       $at, .L800DAB8C_E9B3C
    /* E9B34 800DAB84 24590001 */   addiu     $t9, $v0, 0x1
    /* E9B38 800DAB88 A239000F */  sb         $t9, 0xF($s1)
  .L800DAB8C_E9B3C:
    /* E9B3C 800DAB8C 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800DAB90_E9B40:
    /* E9B40 800DAB90 8FB00018 */  lw         $s0, 0x18($sp)
    /* E9B44 800DAB94 8FB1001C */  lw         $s1, 0x1C($sp)
    /* E9B48 800DAB98 8FB20020 */  lw         $s2, 0x20($sp)
    /* E9B4C 800DAB9C 8FB30024 */  lw         $s3, 0x24($sp)
    /* E9B50 800DABA0 8FB40028 */  lw         $s4, 0x28($sp)
    /* E9B54 800DABA4 8FB5002C */  lw         $s5, 0x2C($sp)
    /* E9B58 800DABA8 8FB60030 */  lw         $s6, 0x30($sp)
    /* E9B5C 800DABAC 8FB70034 */  lw         $s7, 0x34($sp)
    /* E9B60 800DABB0 8FBE0038 */  lw         $fp, 0x38($sp)
    /* E9B64 800DABB4 03E00008 */  jr         $ra
    /* E9B68 800DABB8 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800DAA1C_E99CC
