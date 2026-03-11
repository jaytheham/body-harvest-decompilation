nonmatching func_80084C68_16CD28, 0x284

glabel func_80084C68_16CD28
    /* 16CD28 80084C68 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 16CD2C 80084C6C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 16CD30 80084C70 AFA40030 */  sw         $a0, 0x30($sp)
    /* 16CD34 80084C74 AFA50034 */  sw         $a1, 0x34($sp)
    /* 16CD38 80084C78 AFA60038 */  sw         $a2, 0x38($sp)
    /* 16CD3C 80084C7C AFA7003C */  sw         $a3, 0x3C($sp)
    /* 16CD40 80084C80 0C020C89 */  jal        func_80083224_16B2E4
    /* 16CD44 80084C84 00002025 */   or        $a0, $zero, $zero
    /* 16CD48 80084C88 240100FB */  addiu      $at, $zero, 0xFB
    /* 16CD4C 80084C8C 10410092 */  beq        $v0, $at, .L80084ED8_16CF98
    /* 16CD50 80084C90 A3A20023 */   sb        $v0, 0x23($sp)
    /* 16CD54 80084C94 0C020D61 */  jal        func_80083584_16B644
    /* 16CD58 80084C98 304400FF */   andi      $a0, $v0, 0xFF
    /* 16CD5C 80084C9C 00025400 */  sll        $t2, $v0, 16
    /* 16CD60 80084CA0 000A7403 */  sra        $t6, $t2, 16
    /* 16CD64 80084CA4 2401FFFD */  addiu      $at, $zero, -0x3
    /* 16CD68 80084CA8 14410008 */  bne        $v0, $at, .L80084CCC_16CD8C
    /* 16CD6C 80084CAC 01C05025 */   or        $t2, $t6, $zero
    /* 16CD70 80084CB0 3C04800A */  lui        $a0, %hi(D_800A52E8)
    /* 16CD74 80084CB4 0C00731B */  jal        osSyncPrintf
    /* 16CD78 80084CB8 248452E8 */   addiu     $a0, $a0, %lo(D_800A52E8)
    /* 16CD7C 80084CBC 0C020CC0 */  jal        func_80083300_16B3C0
    /* 16CD80 80084CC0 93A40023 */   lbu       $a0, 0x23($sp)
    /* 16CD84 80084CC4 10000085 */  b          .L80084EDC_16CF9C
    /* 16CD88 80084CC8 240200FB */   addiu     $v0, $zero, 0xFB
  .L80084CCC_16CD8C:
    /* 16CD8C 80084CCC 240C0016 */  addiu      $t4, $zero, 0x16
    /* 16CD90 80084CD0 004C0019 */  multu      $v0, $t4
    /* 16CD94 80084CD4 93AF0023 */  lbu        $t7, 0x23($sp)
    /* 16CD98 80084CD8 3C0B8010 */  lui        $t3, %hi(D_800FB7B0)
    /* 16CD9C 80084CDC 256BB7B0 */  addiu      $t3, $t3, %lo(D_800FB7B0)
    /* 16CDA0 80084CE0 000FC080 */  sll        $t8, $t7, 2
    /* 16CDA4 80084CE4 030FC023 */  subu       $t8, $t8, $t7
    /* 16CDA8 80084CE8 3C198010 */  lui        $t9, %hi(D_800FB6F8)
    /* 16CDAC 80084CEC 2739B6F8 */  addiu      $t9, $t9, %lo(D_800FB6F8)
    /* 16CDB0 80084CF0 0018C080 */  sll        $t8, $t8, 2
    /* 16CDB4 80084CF4 03194821 */  addu       $t1, $t8, $t9
    /* 16CDB8 80084CF8 00007012 */  mflo       $t6
    /* 16CDBC 80084CFC 016E1821 */  addu       $v1, $t3, $t6
    /* 16CDC0 80084D00 846F0004 */  lh         $t7, 0x4($v1)
    /* 16CDC4 80084D04 87B90032 */  lh         $t9, 0x32($sp)
    /* 16CDC8 80084D08 93AD0047 */  lbu        $t5, 0x47($sp)
    /* 16CDCC 80084D0C 01EC0019 */  multu      $t7, $t4
    /* 16CDD0 80084D10 00197080 */  sll        $t6, $t9, 2
    /* 16CDD4 80084D14 87AF0036 */  lh         $t7, 0x36($sp)
    /* 16CDD8 80084D18 87B9003A */  lh         $t9, 0x3A($sp)
    /* 16CDDC 80084D1C A46E0008 */  sh         $t6, 0x8($v1)
    /* 16CDE0 80084D20 97BF0042 */  lhu        $ra, 0x42($sp)
    /* 16CDE4 80084D24 00197080 */  sll        $t6, $t9, 2
    /* 16CDE8 80084D28 A522000A */  sh         $v0, 0xA($t1)
    /* 16CDEC 80084D2C A46E000C */  sh         $t6, 0xC($v1)
    /* 16CDF0 80084D30 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* 16CDF4 80084D34 0000C012 */  mflo       $t8
    /* 16CDF8 80084D38 01783821 */  addu       $a3, $t3, $t8
    /* 16CDFC 80084D3C 000FC080 */  sll        $t8, $t7, 2
    /* 16CE00 80084D40 A478000A */  sh         $t8, 0xA($v1)
    /* 16CE04 80084D44 A0E0000C */  sb         $zero, 0xC($a3)
    /* 16CE08 80084D48 93AF004B */  lbu        $t7, 0x4B($sp)
    /* 16CE0C 80084D4C 93B8004F */  lbu        $t8, 0x4F($sp)
    /* 16CE10 80084D50 24E70008 */  addiu      $a3, $a3, 0x8
    /* 16CE14 80084D54 A06D000E */  sb         $t5, 0xE($v1)
    /* 16CE18 80084D58 A06F000F */  sb         $t7, 0xF($v1)
    /* 16CE1C 80084D5C 17E10004 */  bne        $ra, $at, .L80084D70_16CE30
    /* 16CE20 80084D60 A0780010 */   sb        $t8, 0x10($v1)
    /* 16CE24 80084D64 97A4003E */  lhu        $a0, 0x3E($sp)
    /* 16CE28 80084D68 10000007 */  b          .L80084D88_16CE48
    /* 16CE2C 80084D6C A4640002 */   sh        $a0, 0x2($v1)
  .L80084D70_16CE30:
    /* 16CE30 80084D70 97A4003E */  lhu        $a0, 0x3E($sp)
    /* 16CE34 80084D74 04810003 */  bgez       $a0, .L80084D84_16CE44
    /* 16CE38 80084D78 0004C903 */   sra       $t9, $a0, 4
    /* 16CE3C 80084D7C 2481000F */  addiu      $at, $a0, 0xF
    /* 16CE40 80084D80 0001C903 */  sra        $t9, $at, 4
  .L80084D84_16CE44:
    /* 16CE44 80084D84 A4790002 */  sh         $t9, 0x2($v1)
  .L80084D88_16CE48:
    /* 16CE48 80084D88 846E0002 */  lh         $t6, 0x2($v1)
    /* 16CE4C 80084D8C 24080003 */  addiu      $t0, $zero, 0x3
    /* 16CE50 80084D90 29C10010 */  slti       $at, $t6, 0x10
    /* 16CE54 80084D94 50200004 */  beql       $at, $zero, .L80084DA8_16CE68
    /* 16CE58 80084D98 A4E40002 */   sh        $a0, 0x2($a3)
    /* 16CE5C 80084D9C 240F0010 */  addiu      $t7, $zero, 0x10
    /* 16CE60 80084DA0 A46F0002 */  sh         $t7, 0x2($v1)
    /* 16CE64 80084DA4 A4E40002 */  sh         $a0, 0x2($a3)
  .L80084DA8_16CE68:
    /* 16CE68 80084DA8 84F80002 */  lh         $t8, 0x2($a3)
    /* 16CE6C 80084DAC 01A02025 */  or         $a0, $t5, $zero
    /* 16CE70 80084DB0 2B010018 */  slti       $at, $t8, 0x18
    /* 16CE74 80084DB4 10200003 */  beqz       $at, .L80084DC4_16CE84
    /* 16CE78 80084DB8 00000000 */   nop
    /* 16CE7C 80084DBC 24190018 */  addiu      $t9, $zero, 0x18
    /* 16CE80 80084DC0 A4F90002 */  sh         $t9, 0x2($a3)
  .L80084DC4_16CE84:
    /* 16CE84 80084DC4 01A8001A */  div        $zero, $t5, $t0
    /* 16CE88 80084DC8 00007012 */  mflo       $t6
    /* 16CE8C 80084DCC 31CF00FF */  andi       $t7, $t6, 0xFF
    /* 16CE90 80084DD0 01E43021 */  addu       $a2, $t7, $a0
    /* 16CE94 80084DD4 30D8FFFF */  andi       $t8, $a2, 0xFFFF
    /* 16CE98 80084DD8 A4FF0000 */  sh         $ra, 0x0($a3)
    /* 16CE9C 80084DDC 15000002 */  bnez       $t0, .L80084DE8_16CEA8
    /* 16CEA0 80084DE0 00000000 */   nop
    /* 16CEA4 80084DE4 0007000D */  break      7
  .L80084DE8_16CEA8:
    /* 16CEA8 80084DE8 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16CEAC 80084DEC 15010004 */  bne        $t0, $at, .L80084E00_16CEC0
    /* 16CEB0 80084DF0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16CEB4 80084DF4 14810002 */  bne        $a0, $at, .L80084E00_16CEC0
    /* 16CEB8 80084DF8 00000000 */   nop
    /* 16CEBC 80084DFC 0006000D */  break      6
  .L80084E00_16CEC0:
    /* 16CEC0 80084E00 2B010100 */  slti       $at, $t8, 0x100
    /* 16CEC4 80084E04 14200002 */  bnez       $at, .L80084E10_16CED0
    /* 16CEC8 80084E08 30C5FFFF */   andi      $a1, $a2, 0xFFFF
    /* 16CECC 80084E0C 240500FF */  addiu      $a1, $zero, 0xFF
  .L80084E10_16CED0:
    /* 16CED0 80084E10 24670008 */  addiu      $a3, $v1, 0x8
    /* 16CED4 80084E14 A0E50009 */  sb         $a1, 0x9($a3)
    /* 16CED8 80084E18 93A4004B */  lbu        $a0, 0x4B($sp)
    /* 16CEDC 80084E1C 0088001A */  div        $zero, $a0, $t0
    /* 16CEE0 80084E20 15000002 */  bnez       $t0, .L80084E2C_16CEEC
    /* 16CEE4 80084E24 00000000 */   nop
    /* 16CEE8 80084E28 0007000D */  break      7
  .L80084E2C_16CEEC:
    /* 16CEEC 80084E2C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16CEF0 80084E30 15010004 */  bne        $t0, $at, .L80084E44_16CF04
    /* 16CEF4 80084E34 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16CEF8 80084E38 14810002 */  bne        $a0, $at, .L80084E44_16CF04
    /* 16CEFC 80084E3C 00000000 */   nop
    /* 16CF00 80084E40 0006000D */  break      6
  .L80084E44_16CF04:
    /* 16CF04 80084E44 0000C812 */  mflo       $t9
    /* 16CF08 80084E48 332E00FF */  andi       $t6, $t9, 0xFF
    /* 16CF0C 80084E4C 01C43021 */  addu       $a2, $t6, $a0
    /* 16CF10 80084E50 30CFFFFF */  andi       $t7, $a2, 0xFFFF
    /* 16CF14 80084E54 29E10100 */  slti       $at, $t7, 0x100
    /* 16CF18 80084E58 14200002 */  bnez       $at, .L80084E64_16CF24
    /* 16CF1C 80084E5C 30C5FFFF */   andi      $a1, $a2, 0xFFFF
    /* 16CF20 80084E60 240500FF */  addiu      $a1, $zero, 0xFF
  .L80084E64_16CF24:
    /* 16CF24 80084E64 A0E5000A */  sb         $a1, 0xA($a3)
    /* 16CF28 80084E68 93A3004F */  lbu        $v1, 0x4F($sp)
    /* 16CF2C 80084E6C 0068001A */  div        $zero, $v1, $t0
    /* 16CF30 80084E70 15000002 */  bnez       $t0, .L80084E7C_16CF3C
    /* 16CF34 80084E74 00000000 */   nop
    /* 16CF38 80084E78 0007000D */  break      7
  .L80084E7C_16CF3C:
    /* 16CF3C 80084E7C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16CF40 80084E80 15010004 */  bne        $t0, $at, .L80084E94_16CF54
    /* 16CF44 80084E84 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16CF48 80084E88 14610002 */  bne        $v1, $at, .L80084E94_16CF54
    /* 16CF4C 80084E8C 00000000 */   nop
    /* 16CF50 80084E90 0006000D */  break      6
  .L80084E94_16CF54:
    /* 16CF54 80084E94 0000C012 */  mflo       $t8
    /* 16CF58 80084E98 331900FF */  andi       $t9, $t8, 0xFF
    /* 16CF5C 80084E9C 03232021 */  addu       $a0, $t9, $v1
    /* 16CF60 80084EA0 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* 16CF64 80084EA4 29C10100 */  slti       $at, $t6, 0x100
    /* 16CF68 80084EA8 14200002 */  bnez       $at, .L80084EB4_16CF74
    /* 16CF6C 80084EAC 3085FFFF */   andi      $a1, $a0, 0xFFFF
    /* 16CF70 80084EB0 240500FF */  addiu      $a1, $zero, 0xFF
  .L80084EB4_16CF74:
    /* 16CF74 80084EB4 014C0019 */  multu      $t2, $t4
    /* 16CF78 80084EB8 00007812 */  mflo       $t7
    /* 16CF7C 80084EBC 016FC021 */  addu       $t8, $t3, $t7
    /* 16CF80 80084EC0 A3050013 */  sb         $a1, 0x13($t8)
    /* 16CF84 80084EC4 AFA9001C */  sw         $t1, 0x1C($sp)
    /* 16CF88 80084EC8 0C021306 */  jal        func_80084C18_16CCD8
    /* 16CF8C 80084ECC 93A40023 */   lbu       $a0, 0x23($sp)
    /* 16CF90 80084ED0 8FA9001C */  lw         $t1, 0x1C($sp)
    /* 16CF94 80084ED4 A5220002 */  sh         $v0, 0x2($t1)
  .L80084ED8_16CF98:
    /* 16CF98 80084ED8 93A20023 */  lbu        $v0, 0x23($sp)
  .L80084EDC_16CF9C:
    /* 16CF9C 80084EDC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 16CFA0 80084EE0 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 16CFA4 80084EE4 03E00008 */  jr         $ra
    /* 16CFA8 80084EE8 00000000 */   nop
endlabel func_80084C68_16CD28
