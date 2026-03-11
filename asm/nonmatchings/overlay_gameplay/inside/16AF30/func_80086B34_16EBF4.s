nonmatching func_80086B34_16EBF4, 0x254

glabel func_80086B34_16EBF4
    /* 16EBF4 80086B34 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 16EBF8 80086B38 AFB30034 */  sw         $s3, 0x34($sp)
    /* 16EBFC 80086B3C 309300FF */  andi       $s3, $a0, 0xFF
    /* 16EC00 80086B40 00137080 */  sll        $t6, $s3, 2
    /* 16EC04 80086B44 01D37023 */  subu       $t6, $t6, $s3
    /* 16EC08 80086B48 3C0F8010 */  lui        $t7, %hi(D_800FB6F8)
    /* 16EC0C 80086B4C AFB5003C */  sw         $s5, 0x3C($sp)
    /* 16EC10 80086B50 25EFB6F8 */  addiu      $t7, $t7, %lo(D_800FB6F8)
    /* 16EC14 80086B54 000E7080 */  sll        $t6, $t6, 2
    /* 16EC18 80086B58 01CFA821 */  addu       $s5, $t6, $t7
    /* 16EC1C 80086B5C 86A20006 */  lh         $v0, 0x6($s5)
    /* 16EC20 80086B60 AFBE0048 */  sw         $fp, 0x48($sp)
    /* 16EC24 80086B64 241E0016 */  addiu      $fp, $zero, 0x16
    /* 16EC28 80086B68 005E0019 */  multu      $v0, $fp
    /* 16EC2C 80086B6C AFB70044 */  sw         $s7, 0x44($sp)
    /* 16EC30 80086B70 3C178010 */  lui        $s7, %hi(D_800FB7B0)
    /* 16EC34 80086B74 26F7B7B0 */  addiu      $s7, $s7, %lo(D_800FB7B0)
    /* 16EC38 80086B78 AFB60040 */  sw         $s6, 0x40($sp)
    /* 16EC3C 80086B7C AFBF004C */  sw         $ra, 0x4C($sp)
    /* 16EC40 80086B80 AFB40038 */  sw         $s4, 0x38($sp)
    /* 16EC44 80086B84 AFB20030 */  sw         $s2, 0x30($sp)
    /* 16EC48 80086B88 AFB1002C */  sw         $s1, 0x2C($sp)
    /* 16EC4C 80086B8C AFB00028 */  sw         $s0, 0x28($sp)
    /* 16EC50 80086B90 0000C012 */  mflo       $t8
    /* 16EC54 80086B94 02F8B021 */  addu       $s6, $s7, $t8
    /* 16EC58 80086B98 86C30004 */  lh         $v1, 0x4($s6)
    /* 16EC5C 80086B9C AFA40078 */  sw         $a0, 0x78($sp)
    /* 16EC60 80086BA0 2401FFFB */  addiu      $at, $zero, -0x5
    /* 16EC64 80086BA4 007E0019 */  multu      $v1, $fp
    /* 16EC68 80086BA8 0000C812 */  mflo       $t9
    /* 16EC6C 80086BAC 02F94021 */  addu       $t0, $s7, $t9
    /* 16EC70 80086BB0 AFA80054 */  sw         $t0, 0x54($sp)
    /* 16EC74 80086BB4 85110004 */  lh         $s1, 0x4($t0)
    /* 16EC78 80086BB8 12210048 */  beq        $s1, $at, .L80086CDC_16ED9C
    /* 16EC7C 80086BBC 2401FFFA */   addiu     $at, $zero, -0x6
    /* 16EC80 80086BC0 12210046 */  beq        $s1, $at, .L80086CDC_16ED9C
    /* 16EC84 80086BC4 2414FFEC */   addiu     $s4, $zero, -0x14
  .L80086BC8_16EC88:
    /* 16EC88 80086BC8 023E0019 */  multu      $s1, $fp
    /* 16EC8C 80086BCC 26C30008 */  addiu      $v1, $s6, 0x8
    /* 16EC90 80086BD0 00005012 */  mflo       $t2
    /* 16EC94 80086BD4 02EA8021 */  addu       $s0, $s7, $t2
    /* 16EC98 80086BD8 82020013 */  lb         $v0, 0x13($s0)
    /* 16EC9C 80086BDC 860B0008 */  lh         $t3, 0x8($s0)
    /* 16ECA0 80086BE0 820C0012 */  lb         $t4, 0x12($s0)
    /* 16ECA4 80086BE4 860E000C */  lh         $t6, 0xC($s0)
    /* 16ECA8 80086BE8 820F0014 */  lb         $t7, 0x14($s0)
    /* 16ECAC 80086BEC 8619000A */  lh         $t9, 0xA($s0)
    /* 16ECB0 80086BF0 2841FFED */  slti       $at, $v0, -0x13
    /* 16ECB4 80086BF4 016C6821 */  addu       $t5, $t3, $t4
    /* 16ECB8 80086BF8 01CFC021 */  addu       $t8, $t6, $t7
    /* 16ECBC 80086BFC 03224021 */  addu       $t0, $t9, $v0
    /* 16ECC0 80086C00 A60D0008 */  sh         $t5, 0x8($s0)
    /* 16ECC4 80086C04 A618000C */  sh         $t8, 0xC($s0)
    /* 16ECC8 80086C08 14200006 */  bnez       $at, .L80086C24_16ECE4
    /* 16ECCC 80086C0C A608000A */   sh        $t0, 0xA($s0)
    /* 16ECD0 80086C10 26020008 */  addiu      $v0, $s0, 0x8
    /* 16ECD4 80086C14 8049000B */  lb         $t1, 0xB($v0)
    /* 16ECD8 80086C18 252AFFFF */  addiu      $t2, $t1, -0x1
    /* 16ECDC 80086C1C 10000003 */  b          .L80086C2C_16ECEC
    /* 16ECE0 80086C20 A04A000B */   sb        $t2, 0xB($v0)
  .L80086C24_16ECE4:
    /* 16ECE4 80086C24 26020008 */  addiu      $v0, $s0, 0x8
    /* 16ECE8 80086C28 A054000B */  sb         $s4, 0xB($v0)
  .L80086C2C_16ECEC:
    /* 16ECEC 80086C2C 844B0002 */  lh         $t3, 0x2($v0)
    /* 16ECF0 80086C30 29610002 */  slti       $at, $t3, 0x2
    /* 16ECF4 80086C34 50200024 */  beql       $at, $zero, .L80086CC8_16ED88
    /* 16ECF8 80086C38 86110004 */   lh        $s1, 0x4($s0)
    /* 16ECFC 80086C3C 906C0007 */  lbu        $t4, 0x7($v1)
    /* 16ED00 80086C40 84440000 */  lh         $a0, 0x0($v0)
    /* 16ED04 80086C44 84450004 */  lh         $a1, 0x4($v0)
    /* 16ED08 80086C48 90670006 */  lbu        $a3, 0x6($v1)
    /* 16ED0C 80086C4C AFAC0010 */  sw         $t4, 0x10($sp)
    /* 16ED10 80086C50 906D0008 */  lbu        $t5, 0x8($v1)
    /* 16ED14 80086C54 96060002 */  lhu        $a2, 0x2($s0)
    /* 16ED18 80086C58 AFAD0014 */  sw         $t5, 0x14($sp)
    /* 16ED1C 80086C5C 904E0009 */  lbu        $t6, 0x9($v0)
    /* 16ED20 80086C60 0C0215A3 */  jal        func_8008568C_16D74C
    /* 16ED24 80086C64 AFAE0018 */   sw        $t6, 0x18($sp)
    /* 16ED28 80086C68 92AF0004 */  lbu        $t7, 0x4($s5)
    /* 16ED2C 80086C6C 00112400 */  sll        $a0, $s1, 16
    /* 16ED30 80086C70 8FB80054 */  lw         $t8, 0x54($sp)
    /* 16ED34 80086C74 29E10004 */  slti       $at, $t7, 0x4
    /* 16ED38 80086C78 1020000A */  beqz       $at, .L80086CA4_16ED64
    /* 16ED3C 80086C7C 00044403 */   sra       $t0, $a0, 16
    /* 16ED40 80086C80 9319000D */  lbu        $t9, 0xD($t8)
    /* 16ED44 80086C84 57200008 */  bnel       $t9, $zero, .L80086CA8_16ED68
    /* 16ED48 80086C88 86120004 */   lh        $s2, 0x4($s0)
    /* 16ED4C 80086C8C 0C020E6E */  jal        func_800839B8_16BA78
    /* 16ED50 80086C90 326400FF */   andi      $a0, $s3, 0xFF
    /* 16ED54 80086C94 0C020CC0 */  jal        func_80083300_16B3C0
    /* 16ED58 80086C98 326400FF */   andi      $a0, $s3, 0xFF
    /* 16ED5C 80086C9C 1000002F */  b          .L80086D5C_16EE1C
    /* 16ED60 80086CA0 8FBF004C */   lw        $ra, 0x4C($sp)
  .L80086CA4_16ED64:
    /* 16ED64 80086CA4 86120004 */  lh         $s2, 0x4($s0)
  .L80086CA8_16ED68:
    /* 16ED68 80086CA8 01002025 */  or         $a0, $t0, $zero
    /* 16ED6C 80086CAC 0C020D7C */  jal        func_800835F0_16B6B0
    /* 16ED70 80086CB0 326500FF */   andi      $a1, $s3, 0xFF
    /* 16ED74 80086CB4 00128C00 */  sll        $s1, $s2, 16
    /* 16ED78 80086CB8 00114C03 */  sra        $t1, $s1, 16
    /* 16ED7C 80086CBC 10000002 */  b          .L80086CC8_16ED88
    /* 16ED80 80086CC0 01208825 */   or        $s1, $t1, $zero
    /* 16ED84 80086CC4 86110004 */  lh         $s1, 0x4($s0)
  .L80086CC8_16ED88:
    /* 16ED88 80086CC8 2401FFFB */  addiu      $at, $zero, -0x5
    /* 16ED8C 80086CCC 12210003 */  beq        $s1, $at, .L80086CDC_16ED9C
    /* 16ED90 80086CD0 2401FFFA */   addiu     $at, $zero, -0x6
    /* 16ED94 80086CD4 1621FFBC */  bne        $s1, $at, .L80086BC8_16EC88
    /* 16ED98 80086CD8 00000000 */   nop
  .L80086CDC_16ED9C:
    /* 16ED9C 80086CDC 8FB00054 */  lw         $s0, 0x54($sp)
    /* 16EDA0 80086CE0 9602000E */  lhu        $v0, 0xE($s0)
    /* 16EDA4 80086CE4 26100008 */  addiu      $s0, $s0, 0x8
    /* 16EDA8 80086CE8 18400003 */  blez       $v0, .L80086CF8_16EDB8
    /* 16EDAC 80086CEC 244AFFFF */   addiu     $t2, $v0, -0x1
    /* 16EDB0 80086CF0 10000019 */  b          .L80086D58_16EE18
    /* 16EDB4 80086CF4 A60A0006 */   sh        $t2, 0x6($s0)
  .L80086CF8_16EDB8:
    /* 16EDB8 80086CF8 0C000E38 */  jal        func_800038E0_44E0
    /* 16EDBC 80086CFC 00000000 */   nop
    /* 16EDC0 80086D00 24010003 */  addiu      $at, $zero, 0x3
    /* 16EDC4 80086D04 0041001A */  div        $zero, $v0, $at
    /* 16EDC8 80086D08 00001810 */  mfhi       $v1
    /* 16EDCC 80086D0C 24630002 */  addiu      $v1, $v1, 0x2
    /* 16EDD0 80086D10 306B00FF */  andi       $t3, $v1, 0xFF
    /* 16EDD4 80086D14 306400FF */  andi       $a0, $v1, 0xFF
    /* 16EDD8 80086D18 1960000F */  blez       $t3, .L80086D58_16EE18
    /* 16EDDC 80086D1C 00008825 */   or        $s1, $zero, $zero
    /* 16EDE0 80086D20 00809025 */  or         $s2, $a0, $zero
  .L80086D24_16EDE4:
    /* 16EDE4 80086D24 920C0005 */  lbu        $t4, 0x5($s0)
    /* 16EDE8 80086D28 59800007 */  blezl      $t4, .L80086D48_16EE08
    /* 16EDEC 80086D2C 26310001 */   addiu     $s1, $s1, 0x1
    /* 16EDF0 80086D30 0C0214AE */  jal        func_800852B8_16D378
    /* 16EDF4 80086D34 326400FF */   andi      $a0, $s3, 0xFF
    /* 16EDF8 80086D38 920D0005 */  lbu        $t5, 0x5($s0)
    /* 16EDFC 80086D3C 25AEFFFF */  addiu      $t6, $t5, -0x1
    /* 16EE00 80086D40 A20E0005 */  sb         $t6, 0x5($s0)
    /* 16EE04 80086D44 26310001 */  addiu      $s1, $s1, 0x1
  .L80086D48_16EE08:
    /* 16EE08 80086D48 322F00FF */  andi       $t7, $s1, 0xFF
    /* 16EE0C 80086D4C 01F2082A */  slt        $at, $t7, $s2
    /* 16EE10 80086D50 1420FFF4 */  bnez       $at, .L80086D24_16EDE4
    /* 16EE14 80086D54 01E08825 */   or        $s1, $t7, $zero
  .L80086D58_16EE18:
    /* 16EE18 80086D58 8FBF004C */  lw         $ra, 0x4C($sp)
  .L80086D5C_16EE1C:
    /* 16EE1C 80086D5C 8FB00028 */  lw         $s0, 0x28($sp)
    /* 16EE20 80086D60 8FB1002C */  lw         $s1, 0x2C($sp)
    /* 16EE24 80086D64 8FB20030 */  lw         $s2, 0x30($sp)
    /* 16EE28 80086D68 8FB30034 */  lw         $s3, 0x34($sp)
    /* 16EE2C 80086D6C 8FB40038 */  lw         $s4, 0x38($sp)
    /* 16EE30 80086D70 8FB5003C */  lw         $s5, 0x3C($sp)
    /* 16EE34 80086D74 8FB60040 */  lw         $s6, 0x40($sp)
    /* 16EE38 80086D78 8FB70044 */  lw         $s7, 0x44($sp)
    /* 16EE3C 80086D7C 8FBE0048 */  lw         $fp, 0x48($sp)
    /* 16EE40 80086D80 03E00008 */  jr         $ra
    /* 16EE44 80086D84 27BD0078 */   addiu     $sp, $sp, 0x78
endlabel func_80086B34_16EBF4
