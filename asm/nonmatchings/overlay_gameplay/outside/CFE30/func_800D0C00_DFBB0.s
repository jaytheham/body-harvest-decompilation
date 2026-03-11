nonmatching func_800D0C00_DFBB0, 0x1E4

glabel func_800D0C00_DFBB0
    /* DFBB0 800D0C00 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* DFBB4 800D0C04 AFB1001C */  sw         $s1, 0x1C($sp)
    /* DFBB8 800D0C08 3C118015 */  lui        $s1, %hi(D_80154252)
    /* DFBBC 800D0C0C 86314252 */  lh         $s1, %lo(D_80154252)($s1)
    /* DFBC0 800D0C10 2401FFFB */  addiu      $at, $zero, -0x5
    /* DFBC4 800D0C14 AFBF003C */  sw         $ra, 0x3C($sp)
    /* DFBC8 800D0C18 AFBE0038 */  sw         $fp, 0x38($sp)
    /* DFBCC 800D0C1C AFB70034 */  sw         $s7, 0x34($sp)
    /* DFBD0 800D0C20 AFB60030 */  sw         $s6, 0x30($sp)
    /* DFBD4 800D0C24 AFB5002C */  sw         $s5, 0x2C($sp)
    /* DFBD8 800D0C28 AFB40028 */  sw         $s4, 0x28($sp)
    /* DFBDC 800D0C2C AFB30024 */  sw         $s3, 0x24($sp)
    /* DFBE0 800D0C30 AFB20020 */  sw         $s2, 0x20($sp)
    /* DFBE4 800D0C34 12210004 */  beq        $s1, $at, .L800D0C48_DFBF8
    /* DFBE8 800D0C38 AFB00018 */   sw        $s0, 0x18($sp)
    /* DFBEC 800D0C3C 241EFFFA */  addiu      $fp, $zero, -0x6
    /* DFBF0 800D0C40 163E0006 */  bne        $s1, $fp, .L800D0C5C_DFC0C
    /* DFBF4 800D0C44 2401FFFB */   addiu     $at, $zero, -0x5
  .L800D0C48_DFBF8:
    /* DFBF8 800D0C48 24040007 */  addiu      $a0, $zero, 0x7
    /* DFBFC 800D0C4C 0C030506 */  jal        func_800C1418_D03C8
    /* DFC00 800D0C50 24050001 */   addiu     $a1, $zero, 0x1
    /* DFC04 800D0C54 10000058 */  b          .L800D0DB8_DFD68
    /* DFC08 800D0C58 8FBF003C */   lw        $ra, 0x3C($sp)
  .L800D0C5C_DFC0C:
    /* DFC0C 800D0C5C 52210056 */  beql       $s1, $at, .L800D0DB8_DFD68
    /* DFC10 800D0C60 8FBF003C */   lw        $ra, 0x3C($sp)
    /* DFC14 800D0C64 123E0053 */  beq        $s1, $fp, .L800D0DB4_DFD64
    /* DFC18 800D0C68 24170008 */   addiu     $s7, $zero, 0x8
    /* DFC1C 800D0C6C 3C148015 */  lui        $s4, %hi(D_80154318)
    /* DFC20 800D0C70 26944318 */  addiu      $s4, $s4, %lo(D_80154318)
    /* DFC24 800D0C74 2416000F */  addiu      $s6, $zero, 0xF
    /* DFC28 800D0C78 2415001C */  addiu      $s5, $zero, 0x1C
    /* DFC2C 800D0C7C 241300FF */  addiu      $s3, $zero, 0xFF
  .L800D0C80_DFC30:
    /* DFC30 800D0C80 02350019 */  multu      $s1, $s5
    /* DFC34 800D0C84 00007012 */  mflo       $t6
    /* DFC38 800D0C88 028E9021 */  addu       $s2, $s4, $t6
    /* DFC3C 800D0C8C 924F0012 */  lbu        $t7, 0x12($s2)
    /* DFC40 800D0C90 26500008 */  addiu      $s0, $s2, 0x8
    /* DFC44 800D0C94 31F80080 */  andi       $t8, $t7, 0x80
    /* DFC48 800D0C98 53000004 */  beql       $t8, $zero, .L800D0CAC_DFC5C
    /* DFC4C 800D0C9C 9203000A */   lbu       $v1, 0xA($s0)
    /* DFC50 800D0CA0 1000003F */  b          .L800D0DA0_DFD50
    /* DFC54 800D0CA4 86510004 */   lh        $s1, 0x4($s2)
    /* DFC58 800D0CA8 9203000A */  lbu        $v1, 0xA($s0)
  .L800D0CAC_DFC5C:
    /* DFC5C 800D0CAC 00112400 */  sll        $a0, $s1, 16
    /* DFC60 800D0CB0 0004CC03 */  sra        $t9, $a0, 16
    /* DFC64 800D0CB4 16C3000A */  bne        $s6, $v1, .L800D0CE0_DFC90
    /* DFC68 800D0CB8 00601025 */   or        $v0, $v1, $zero
    /* DFC6C 800D0CBC 86500004 */  lh         $s0, 0x4($s2)
    /* DFC70 800D0CC0 03202025 */  or         $a0, $t9, $zero
    /* DFC74 800D0CC4 24050007 */  addiu      $a1, $zero, 0x7
    /* DFC78 800D0CC8 0C030693 */  jal        func_800C1A4C_D09FC
    /* DFC7C 800D0CCC 24060001 */   addiu     $a2, $zero, 0x1
    /* DFC80 800D0CD0 00108C00 */  sll        $s1, $s0, 16
    /* DFC84 800D0CD4 00114403 */  sra        $t0, $s1, 16
    /* DFC88 800D0CD8 10000031 */  b          .L800D0DA0_DFD50
    /* DFC8C 800D0CDC 01008825 */   or        $s1, $t0, $zero
  .L800D0CE0_DFC90:
    /* DFC90 800D0CE0 16E20005 */  bne        $s7, $v0, .L800D0CF8_DFCA8
    /* DFC94 800D0CE4 24050028 */   addiu     $a1, $zero, 0x28
    /* DFC98 800D0CE8 0C037795 */  jal        func_800DDE54_ECE04
    /* DFC9C 800D0CEC 9204000B */   lbu       $a0, 0xB($s0)
    /* DFCA0 800D0CF0 9203000A */  lbu        $v1, 0xA($s0)
    /* DFCA4 800D0CF4 00601025 */  or         $v0, $v1, $zero
  .L800D0CF8_DFCA8:
    /* DFCA8 800D0CF8 28410006 */  slti       $at, $v0, 0x6
    /* DFCAC 800D0CFC 5420000B */  bnel       $at, $zero, .L800D0D2C_DFCDC
    /* DFCB0 800D0D00 24690001 */   addiu     $t1, $v1, 0x1
    /* DFCB4 800D0D04 92020009 */  lbu        $v0, 0x9($s0)
    /* DFCB8 800D0D08 2442FFE2 */  addiu      $v0, $v0, -0x1E
    /* DFCBC 800D0D0C 04430005 */  bgezl      $v0, .L800D0D24_DFCD4
    /* DFCC0 800D0D10 A2020009 */   sb        $v0, 0x9($s0)
    /* DFCC4 800D0D14 A2000009 */  sb         $zero, 0x9($s0)
    /* DFCC8 800D0D18 10000003 */  b          .L800D0D28_DFCD8
    /* DFCCC 800D0D1C 9203000A */   lbu       $v1, 0xA($s0)
    /* DFCD0 800D0D20 A2020009 */  sb         $v0, 0x9($s0)
  .L800D0D24_DFCD4:
    /* DFCD4 800D0D24 9203000A */  lbu        $v1, 0xA($s0)
  .L800D0D28_DFCD8:
    /* DFCD8 800D0D28 24690001 */  addiu      $t1, $v1, 0x1
  .L800D0D2C_DFCDC:
    /* DFCDC 800D0D2C 312A00FF */  andi       $t2, $t1, 0xFF
    /* DFCE0 800D0D30 29410005 */  slti       $at, $t2, 0x5
    /* DFCE4 800D0D34 14200019 */  bnez       $at, .L800D0D9C_DFD4C
    /* DFCE8 800D0D38 A209000A */   sb        $t1, 0xA($s0)
    /* DFCEC 800D0D3C 92020006 */  lbu        $v0, 0x6($s0)
    /* DFCF0 800D0D40 2442000A */  addiu      $v0, $v0, 0xA
    /* DFCF4 800D0D44 28410100 */  slti       $at, $v0, 0x100
    /* DFCF8 800D0D48 54200004 */  bnel       $at, $zero, .L800D0D5C_DFD0C
    /* DFCFC 800D0D4C A2020006 */   sb        $v0, 0x6($s0)
    /* DFD00 800D0D50 10000002 */  b          .L800D0D5C_DFD0C
    /* DFD04 800D0D54 A2130006 */   sb        $s3, 0x6($s0)
    /* DFD08 800D0D58 A2020006 */  sb         $v0, 0x6($s0)
  .L800D0D5C_DFD0C:
    /* DFD0C 800D0D5C 92020007 */  lbu        $v0, 0x7($s0)
    /* DFD10 800D0D60 2442000A */  addiu      $v0, $v0, 0xA
    /* DFD14 800D0D64 28410100 */  slti       $at, $v0, 0x100
    /* DFD18 800D0D68 54200004 */  bnel       $at, $zero, .L800D0D7C_DFD2C
    /* DFD1C 800D0D6C A2020007 */   sb        $v0, 0x7($s0)
    /* DFD20 800D0D70 10000002 */  b          .L800D0D7C_DFD2C
    /* DFD24 800D0D74 A2130007 */   sb        $s3, 0x7($s0)
    /* DFD28 800D0D78 A2020007 */  sb         $v0, 0x7($s0)
  .L800D0D7C_DFD2C:
    /* DFD2C 800D0D7C 92020008 */  lbu        $v0, 0x8($s0)
    /* DFD30 800D0D80 2442000A */  addiu      $v0, $v0, 0xA
    /* DFD34 800D0D84 28410100 */  slti       $at, $v0, 0x100
    /* DFD38 800D0D88 54200004 */  bnel       $at, $zero, .L800D0D9C_DFD4C
    /* DFD3C 800D0D8C A2020008 */   sb        $v0, 0x8($s0)
    /* DFD40 800D0D90 10000002 */  b          .L800D0D9C_DFD4C
    /* DFD44 800D0D94 A2130008 */   sb        $s3, 0x8($s0)
    /* DFD48 800D0D98 A2020008 */  sb         $v0, 0x8($s0)
  .L800D0D9C_DFD4C:
    /* DFD4C 800D0D9C 86510004 */  lh         $s1, 0x4($s2)
  .L800D0DA0_DFD50:
    /* DFD50 800D0DA0 2401FFFB */  addiu      $at, $zero, -0x5
    /* DFD54 800D0DA4 52210004 */  beql       $s1, $at, .L800D0DB8_DFD68
    /* DFD58 800D0DA8 8FBF003C */   lw        $ra, 0x3C($sp)
    /* DFD5C 800D0DAC 163EFFB4 */  bne        $s1, $fp, .L800D0C80_DFC30
    /* DFD60 800D0DB0 00000000 */   nop
  .L800D0DB4_DFD64:
    /* DFD64 800D0DB4 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800D0DB8_DFD68:
    /* DFD68 800D0DB8 8FB00018 */  lw         $s0, 0x18($sp)
    /* DFD6C 800D0DBC 8FB1001C */  lw         $s1, 0x1C($sp)
    /* DFD70 800D0DC0 8FB20020 */  lw         $s2, 0x20($sp)
    /* DFD74 800D0DC4 8FB30024 */  lw         $s3, 0x24($sp)
    /* DFD78 800D0DC8 8FB40028 */  lw         $s4, 0x28($sp)
    /* DFD7C 800D0DCC 8FB5002C */  lw         $s5, 0x2C($sp)
    /* DFD80 800D0DD0 8FB60030 */  lw         $s6, 0x30($sp)
    /* DFD84 800D0DD4 8FB70034 */  lw         $s7, 0x34($sp)
    /* DFD88 800D0DD8 8FBE0038 */  lw         $fp, 0x38($sp)
    /* DFD8C 800D0DDC 03E00008 */  jr         $ra
    /* DFD90 800D0DE0 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800D0C00_DFBB0
