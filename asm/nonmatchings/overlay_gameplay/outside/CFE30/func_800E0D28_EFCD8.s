nonmatching func_800E0D28_EFCD8, 0x174

glabel func_800E0D28_EFCD8
    /* EFCD8 800E0D28 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* EFCDC 800E0D2C AFA40040 */  sw         $a0, 0x40($sp)
    /* EFCE0 800E0D30 00047400 */  sll        $t6, $a0, 16
    /* EFCE4 800E0D34 000E2403 */  sra        $a0, $t6, 16
    /* EFCE8 800E0D38 00067400 */  sll        $t6, $a2, 16
    /* EFCEC 800E0D3C AFA50044 */  sw         $a1, 0x44($sp)
    /* EFCF0 800E0D40 AFA60048 */  sw         $a2, 0x48($sp)
    /* EFCF4 800E0D44 0005C400 */  sll        $t8, $a1, 16
    /* EFCF8 800E0D48 3C0C8015 */  lui        $t4, %hi(D_80154318)
    /* EFCFC 800E0D4C 3C0A8015 */  lui        $t2, %hi(D_80154088)
    /* EFD00 800E0D50 00182C03 */  sra        $a1, $t8, 16
    /* EFD04 800E0D54 000E3403 */  sra        $a2, $t6, 16
    /* EFD08 800E0D58 AFBF003C */  sw         $ra, 0x3C($sp)
    /* EFD0C 800E0D5C 254A4088 */  addiu      $t2, $t2, %lo(D_80154088)
    /* EFD10 800E0D60 258C4318 */  addiu      $t4, $t4, %lo(D_80154318)
    /* EFD14 800E0D64 00003825 */  or         $a3, $zero, $zero
    /* EFD18 800E0D68 240D001C */  addiu      $t5, $zero, 0x1C
    /* EFD1C 800E0D6C 240B000C */  addiu      $t3, $zero, 0xC
    /* EFD20 800E0D70 24090001 */  addiu      $t1, $zero, 0x1
    /* EFD24 800E0D74 24080004 */  addiu      $t0, $zero, 0x4
  .L800E0D78_EFD28:
    /* EFD28 800E0D78 00EB0019 */  multu      $a3, $t3
    /* EFD2C 800E0D7C 0000C012 */  mflo       $t8
    /* EFD30 800E0D80 01581821 */  addu       $v1, $t2, $t8
    /* EFD34 800E0D84 90790000 */  lbu        $t9, 0x0($v1)
    /* EFD38 800E0D88 55190016 */  bnel       $t0, $t9, .L800E0DE4_EFD94
    /* EFD3C 800E0D8C 24E70001 */   addiu     $a3, $a3, 0x1
    /* EFD40 800E0D90 846E0006 */  lh         $t6, 0x6($v1)
    /* EFD44 800E0D94 01CD0019 */  multu      $t6, $t5
    /* EFD48 800E0D98 00007812 */  mflo       $t7
    /* EFD4C 800E0D9C 018F1021 */  addu       $v0, $t4, $t7
    /* EFD50 800E0DA0 90580014 */  lbu        $t8, 0x14($v0)
    /* EFD54 800E0DA4 5538000F */  bnel       $t1, $t8, .L800E0DE4_EFD94
    /* EFD58 800E0DA8 24E70001 */   addiu     $a3, $a3, 0x1
    /* EFD5C 800E0DAC 84590008 */  lh         $t9, 0x8($v0)
    /* EFD60 800E0DB0 5499000C */  bnel       $a0, $t9, .L800E0DE4_EFD94
    /* EFD64 800E0DB4 24E70001 */   addiu     $a3, $a3, 0x1
    /* EFD68 800E0DB8 844E000A */  lh         $t6, 0xA($v0)
    /* EFD6C 800E0DBC 54AE0009 */  bnel       $a1, $t6, .L800E0DE4_EFD94
    /* EFD70 800E0DC0 24E70001 */   addiu     $a3, $a3, 0x1
    /* EFD74 800E0DC4 844F000C */  lh         $t7, 0xC($v0)
    /* EFD78 800E0DC8 54CF0006 */  bnel       $a2, $t7, .L800E0DE4_EFD94
    /* EFD7C 800E0DCC 24E70001 */   addiu     $a3, $a3, 0x1
    /* EFD80 800E0DD0 0C036BC9 */  jal        func_800DAF24_E9ED4
    /* EFD84 800E0DD4 30E400FF */   andi      $a0, $a3, 0xFF
    /* EFD88 800E0DD8 1000002D */  b          .L800E0E90_EFE40
    /* EFD8C 800E0DDC 8FBF003C */   lw        $ra, 0x3C($sp)
    /* EFD90 800E0DE0 24E70001 */  addiu      $a3, $a3, 0x1
  .L800E0DE4_EFD94:
    /* EFD94 800E0DE4 30F800FF */  andi       $t8, $a3, 0xFF
    /* EFD98 800E0DE8 2B01001E */  slti       $at, $t8, 0x1E
    /* EFD9C 800E0DEC 1420FFE2 */  bnez       $at, .L800E0D78_EFD28
    /* EFDA0 800E0DF0 03003825 */   or        $a3, $t8, $zero
    /* EFDA4 800E0DF4 24190078 */  addiu      $t9, $zero, 0x78
    /* EFDA8 800E0DF8 AFB90010 */  sw         $t9, 0x10($sp)
    /* EFDAC 800E0DFC 2419005A */  addiu      $t9, $zero, 0x5A
    /* EFDB0 800E0E00 240E0001 */  addiu      $t6, $zero, 0x1
    /* EFDB4 800E0E04 240F0028 */  addiu      $t7, $zero, 0x28
    /* EFDB8 800E0E08 24180003 */  addiu      $t8, $zero, 0x3
    /* EFDBC 800E0E0C AFB8001C */  sw         $t8, 0x1C($sp)
    /* EFDC0 800E0E10 AFAF0018 */  sw         $t7, 0x18($sp)
    /* EFDC4 800E0E14 AFAE0014 */  sw         $t6, 0x14($sp)
    /* EFDC8 800E0E18 AFB90024 */  sw         $t9, 0x24($sp)
    /* EFDCC 800E0E1C 2419006E */  addiu      $t9, $zero, 0x6E
    /* EFDD0 800E0E20 240E0096 */  addiu      $t6, $zero, 0x96
    /* EFDD4 800E0E24 240F00B4 */  addiu      $t7, $zero, 0xB4
    /* EFDD8 800E0E28 241800FF */  addiu      $t8, $zero, 0xFF
    /* EFDDC 800E0E2C AFB80030 */  sw         $t8, 0x30($sp)
    /* EFDE0 800E0E30 AFAF002C */  sw         $t7, 0x2C($sp)
    /* EFDE4 800E0E34 AFAE0028 */  sw         $t6, 0x28($sp)
    /* EFDE8 800E0E38 AFB90034 */  sw         $t9, 0x34($sp)
    /* EFDEC 800E0E3C 24070001 */  addiu      $a3, $zero, 0x1
    /* EFDF0 800E0E40 0C03297B */  jal        func_800CA5EC_D959C
    /* EFDF4 800E0E44 AFA00020 */   sw        $zero, 0x20($sp)
    /* EFDF8 800E0E48 3C0A8015 */  lui        $t2, %hi(D_80154088)
    /* EFDFC 800E0E4C 3C0C8015 */  lui        $t4, %hi(D_80154318)
    /* EFE00 800E0E50 240100FB */  addiu      $at, $zero, 0xFB
    /* EFE04 800E0E54 258C4318 */  addiu      $t4, $t4, %lo(D_80154318)
    /* EFE08 800E0E58 254A4088 */  addiu      $t2, $t2, %lo(D_80154088)
    /* EFE0C 800E0E5C 240B000C */  addiu      $t3, $zero, 0xC
    /* EFE10 800E0E60 1041000A */  beq        $v0, $at, .L800E0E8C_EFE3C
    /* EFE14 800E0E64 240D001C */   addiu     $t5, $zero, 0x1C
    /* EFE18 800E0E68 004B0019 */  multu      $v0, $t3
    /* EFE1C 800E0E6C 240E0001 */  addiu      $t6, $zero, 0x1
    /* EFE20 800E0E70 00007812 */  mflo       $t7
    /* EFE24 800E0E74 014FC021 */  addu       $t8, $t2, $t7
    /* EFE28 800E0E78 87190006 */  lh         $t9, 0x6($t8)
    /* EFE2C 800E0E7C 032D0019 */  multu      $t9, $t5
    /* EFE30 800E0E80 00007812 */  mflo       $t7
    /* EFE34 800E0E84 018FC021 */  addu       $t8, $t4, $t7
    /* EFE38 800E0E88 A30E0014 */  sb         $t6, 0x14($t8)
  .L800E0E8C_EFE3C:
    /* EFE3C 800E0E8C 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800E0E90_EFE40:
    /* EFE40 800E0E90 27BD0040 */  addiu      $sp, $sp, 0x40
    /* EFE44 800E0E94 03E00008 */  jr         $ra
    /* EFE48 800E0E98 00000000 */   nop
endlabel func_800E0D28_EFCD8
