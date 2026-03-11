nonmatching func_8012DDA8_13CD58, 0x1E8

glabel func_8012DDA8_13CD58
    /* 13CD58 8012DDA8 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 13CD5C 8012DDAC AFB60030 */  sw         $s6, 0x30($sp)
    /* 13CD60 8012DDB0 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 13CD64 8012DDB4 AFB40028 */  sw         $s4, 0x28($sp)
    /* 13CD68 8012DDB8 0005A400 */  sll        $s4, $a1, 16
    /* 13CD6C 8012DDBC 0004AC00 */  sll        $s5, $a0, 16
    /* 13CD70 8012DDC0 0006B400 */  sll        $s6, $a2, 16
    /* 13CD74 8012DDC4 AFB00018 */  sw         $s0, 0x18($sp)
    /* 13CD78 8012DDC8 0016C403 */  sra        $t8, $s6, 16
    /* 13CD7C 8012DDCC 00157403 */  sra        $t6, $s5, 16
    /* 13CD80 8012DDD0 00147C03 */  sra        $t7, $s4, 16
    /* 13CD84 8012DDD4 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 13CD88 8012DDD8 AFB70034 */  sw         $s7, 0x34($sp)
    /* 13CD8C 8012DDDC AFB30024 */  sw         $s3, 0x24($sp)
    /* 13CD90 8012DDE0 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 13CD94 8012DDE4 3C108016 */  lui        $s0, %hi(D_8015FF50)
    /* 13CD98 8012DDE8 01E0A025 */  or         $s4, $t7, $zero
    /* 13CD9C 8012DDEC 01C0A825 */  or         $s5, $t6, $zero
    /* 13CDA0 8012DDF0 0300B025 */  or         $s6, $t8, $zero
    /* 13CDA4 8012DDF4 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 13CDA8 8012DDF8 AFB20020 */  sw         $s2, 0x20($sp)
    /* 13CDAC 8012DDFC AFA40040 */  sw         $a0, 0x40($sp)
    /* 13CDB0 8012DE00 AFA50044 */  sw         $a1, 0x44($sp)
    /* 13CDB4 8012DE04 AFA60048 */  sw         $a2, 0x48($sp)
    /* 13CDB8 8012DE08 AFA7004C */  sw         $a3, 0x4C($sp)
    /* 13CDBC 8012DE0C 00008825 */  or         $s1, $zero, $zero
    /* 13CDC0 8012DE10 2610FF50 */  addiu      $s0, $s0, %lo(D_8015FF50)
    /* 13CDC4 8012DE14 24130018 */  addiu      $s3, $zero, 0x18
    /* 13CDC8 8012DE18 8FB70058 */  lw         $s7, 0x58($sp)
    /* 13CDCC 8012DE1C 241E0007 */  addiu      $fp, $zero, 0x7
  .L8012DE20_13CDD0:
    /* 13CDD0 8012DE20 9203002C */  lbu        $v1, 0x2C($s0)
    /* 13CDD4 8012DE24 5060004A */  beql       $v1, $zero, .L8012DF50_13CF00
    /* 13CDD8 8012DE28 02601025 */   or        $v0, $s3, $zero
    /* 13CDDC 8012DE2C 8E020000 */  lw         $v0, 0x0($s0)
    /* 13CDE0 8012DE30 86040018 */  lh         $a0, 0x18($s0)
    /* 13CDE4 8012DE34 0002CC03 */  sra        $t9, $v0, 16
    /* 13CDE8 8012DE38 03244023 */  subu       $t0, $t9, $a0
    /* 13CDEC 8012DE3C 02A8082A */  slt        $at, $s5, $t0
    /* 13CDF0 8012DE40 14200042 */  bnez       $at, .L8012DF4C_13CEFC
    /* 13CDF4 8012DE44 03244821 */   addu      $t1, $t9, $a0
    /* 13CDF8 8012DE48 0135082A */  slt        $at, $t1, $s5
    /* 13CDFC 8012DE4C 1420003F */  bnez       $at, .L8012DF4C_13CEFC
    /* 13CE00 8012DE50 87AA004E */   lh        $t2, 0x4E($sp)
    /* 13CE04 8012DE54 8E020004 */  lw         $v0, 0x4($s0)
    /* 13CE08 8012DE58 8604001C */  lh         $a0, 0x1C($s0)
    /* 13CE0C 8012DE5C 028A9021 */  addu       $s2, $s4, $t2
    /* 13CE10 8012DE60 00125C00 */  sll        $t3, $s2, 16
    /* 13CE14 8012DE64 00026C03 */  sra        $t5, $v0, 16
    /* 13CE18 8012DE68 000B9403 */  sra        $s2, $t3, 16
    /* 13CE1C 8012DE6C 01A47023 */  subu       $t6, $t5, $a0
    /* 13CE20 8012DE70 024E082A */  slt        $at, $s2, $t6
    /* 13CE24 8012DE74 14200035 */  bnez       $at, .L8012DF4C_13CEFC
    /* 13CE28 8012DE78 01A47821 */   addu      $t7, $t5, $a0
    /* 13CE2C 8012DE7C 01F4082A */  slt        $at, $t7, $s4
    /* 13CE30 8012DE80 54200033 */  bnel       $at, $zero, .L8012DF50_13CF00
    /* 13CE34 8012DE84 02601025 */   or        $v0, $s3, $zero
    /* 13CE38 8012DE88 8E020008 */  lw         $v0, 0x8($s0)
    /* 13CE3C 8012DE8C 8604001A */  lh         $a0, 0x1A($s0)
    /* 13CE40 8012DE90 0002C403 */  sra        $t8, $v0, 16
    /* 13CE44 8012DE94 0304C823 */  subu       $t9, $t8, $a0
    /* 13CE48 8012DE98 02D9082A */  slt        $at, $s6, $t9
    /* 13CE4C 8012DE9C 1420002B */  bnez       $at, .L8012DF4C_13CEFC
    /* 13CE50 8012DEA0 03044021 */   addu      $t0, $t8, $a0
    /* 13CE54 8012DEA4 0116082A */  slt        $at, $t0, $s6
    /* 13CE58 8012DEA8 14200028 */  bnez       $at, .L8012DF4C_13CEFC
    /* 13CE5C 8012DEAC 8FA90054 */   lw        $t1, 0x54($sp)
    /* 13CE60 8012DEB0 5520000A */  bnel       $t1, $zero, .L8012DEDC_13CE8C
    /* 13CE64 8012DEB4 24010005 */   addiu     $at, $zero, 0x5
    /* 13CE68 8012DEB8 8E020020 */  lw         $v0, 0x20($s0)
    /* 13CE6C 8012DEBC 00132C00 */  sll        $a1, $s3, 16
    /* 13CE70 8012DEC0 00055403 */  sra        $t2, $a1, 16
    /* 13CE74 8012DEC4 10400004 */  beqz       $v0, .L8012DED8_13CE88
    /* 13CE78 8012DEC8 8FA40050 */   lw        $a0, 0x50($sp)
    /* 13CE7C 8012DECC 0040F809 */  jalr       $v0
    /* 13CE80 8012DED0 01402825 */   or        $a1, $t2, $zero
    /* 13CE84 8012DED4 9203002C */  lbu        $v1, 0x2C($s0)
  .L8012DED8_13CE88:
    /* 13CE88 8012DED8 24010005 */  addiu      $at, $zero, 0x5
  .L8012DEDC_13CE8C:
    /* 13CE8C 8012DEDC 10610005 */  beq        $v1, $at, .L8012DEF4_13CEA4
    /* 13CE90 8012DEE0 362B0001 */   ori       $t3, $s1, 0x1
    /* 13CE94 8012DEE4 13C30003 */  beq        $fp, $v1, .L8012DEF4_13CEA4
    /* 13CE98 8012DEE8 2401000B */   addiu     $at, $zero, 0xB
    /* 13CE9C 8012DEEC 54610003 */  bnel       $v1, $at, .L8012DEFC_13CEAC
    /* 13CEA0 8012DEF0 24010006 */   addiu     $at, $zero, 0x6
  .L8012DEF4_13CEA4:
    /* 13CEA4 8012DEF4 01608825 */  or         $s1, $t3, $zero
    /* 13CEA8 8012DEF8 24010006 */  addiu      $at, $zero, 0x6
  .L8012DEFC_13CEAC:
    /* 13CEAC 8012DEFC 14610010 */  bne        $v1, $at, .L8012DF40_13CEF0
    /* 13CEB0 8012DF00 00000000 */   nop
    /* 13CEB4 8012DF04 8E0C0004 */  lw         $t4, 0x4($s0)
    /* 13CEB8 8012DF08 860E001C */  lh         $t6, 0x1C($s0)
    /* 13CEBC 8012DF0C 36380002 */  ori        $t8, $s1, 0x2
    /* 13CEC0 8012DF10 000C6C03 */  sra        $t5, $t4, 16
    /* 13CEC4 8012DF14 01AE1021 */  addu       $v0, $t5, $t6
    /* 13CEC8 8012DF18 0242082A */  slt        $at, $s2, $v0
    /* 13CECC 8012DF1C 14200008 */  bnez       $at, .L8012DF40_13CEF0
    /* 13CED0 8012DF20 00000000 */   nop
    /* 13CED4 8012DF24 8EEF0000 */  lw         $t7, 0x0($s7)
    /* 13CED8 8012DF28 03008825 */  or         $s1, $t8, $zero
    /* 13CEDC 8012DF2C 01E2082A */  slt        $at, $t7, $v0
    /* 13CEE0 8012DF30 10200003 */  beqz       $at, .L8012DF40_13CEF0
    /* 13CEE4 8012DF34 00000000 */   nop
    /* 13CEE8 8012DF38 AEE20000 */  sw         $v0, 0x0($s7)
    /* 13CEEC 8012DF3C 9203002C */  lbu        $v1, 0x2C($s0)
  .L8012DF40_13CEF0:
    /* 13CEF0 8012DF40 17C30002 */  bne        $fp, $v1, .L8012DF4C_13CEFC
    /* 13CEF4 8012DF44 3639000C */   ori       $t9, $s1, 0xC
    /* 13CEF8 8012DF48 03208825 */  or         $s1, $t9, $zero
  .L8012DF4C_13CEFC:
    /* 13CEFC 8012DF4C 02601025 */  or         $v0, $s3, $zero
  .L8012DF50_13CF00:
    /* 13CF00 8012DF50 2610FFD0 */  addiu      $s0, $s0, -0x30
    /* 13CF04 8012DF54 1660FFB2 */  bnez       $s3, .L8012DE20_13CDD0
    /* 13CF08 8012DF58 2673FFFF */   addiu     $s3, $s3, -0x1
    /* 13CF0C 8012DF5C 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 13CF10 8012DF60 02201025 */  or         $v0, $s1, $zero
    /* 13CF14 8012DF64 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 13CF18 8012DF68 8FB00018 */  lw         $s0, 0x18($sp)
    /* 13CF1C 8012DF6C 8FB20020 */  lw         $s2, 0x20($sp)
    /* 13CF20 8012DF70 8FB30024 */  lw         $s3, 0x24($sp)
    /* 13CF24 8012DF74 8FB40028 */  lw         $s4, 0x28($sp)
    /* 13CF28 8012DF78 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 13CF2C 8012DF7C 8FB60030 */  lw         $s6, 0x30($sp)
    /* 13CF30 8012DF80 8FB70034 */  lw         $s7, 0x34($sp)
    /* 13CF34 8012DF84 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 13CF38 8012DF88 03E00008 */  jr         $ra
    /* 13CF3C 8012DF8C 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_8012DDA8_13CD58
