nonmatching func_800ABCC8_BAC78, 0x1B4

glabel func_800ABCC8_BAC78
    /* BAC78 800ABCC8 308E00FF */  andi       $t6, $a0, 0xFF
    /* BAC7C 800ABCCC 000E7880 */  sll        $t7, $t6, 2
    /* BAC80 800ABCD0 01EE7821 */  addu       $t7, $t7, $t6
    /* BAC84 800ABCD4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* BAC88 800ABCD8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* BAC8C 800ABCDC 000F7900 */  sll        $t7, $t7, 4
    /* BAC90 800ABCE0 01F81021 */  addu       $v0, $t7, $t8
    /* BAC94 800ABCE4 8C590020 */  lw         $t9, 0x20($v0)
    /* BAC98 800ABCE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* BAC9C 800ABCEC AFA40018 */  sw         $a0, 0x18($sp)
    /* BACA0 800ABCF0 33280600 */  andi       $t0, $t9, 0x600
    /* BACA4 800ABCF4 01C02025 */  or         $a0, $t6, $zero
    /* BACA8 800ABCF8 1100002F */  beqz       $t0, .L800ABDB8_BAD68
    /* BACAC 800ABCFC AFBF0014 */   sw        $ra, 0x14($sp)
    /* BACB0 800ABD00 90490024 */  lbu        $t1, 0x24($v0)
    /* BACB4 800ABD04 252AFFFF */  addiu      $t2, $t1, -0x1
    /* BACB8 800ABD08 2D41001D */  sltiu      $at, $t2, 0x1D
    /* BACBC 800ABD0C 10200056 */  beqz       $at, .L800ABE68_BAE18
    /* BACC0 800ABD10 000A5080 */   sll       $t2, $t2, 2
    /* BACC4 800ABD14 3C018014 */  lui        $at, %hi(jtbl_80142928_overlay_gameplay_outside)
    /* BACC8 800ABD18 002A0821 */  addu       $at, $at, $t2
    /* BACCC 800ABD1C 8C2A2928 */  lw         $t2, %lo(jtbl_80142928_overlay_gameplay_outside)($at)
    /* BACD0 800ABD20 01400008 */  jr         $t2
    /* BACD4 800ABD24 00000000 */   nop
    /* BACD8 800ABD28 0C02AF0B */  jal        func_800ABC2C_BABDC
    /* BACDC 800ABD2C 00000000 */   nop
    /* BACE0 800ABD30 1000004E */  b          .L800ABE6C_BAE1C
    /* BACE4 800ABD34 00001025 */   or        $v0, $zero, $zero
    /* BACE8 800ABD38 0C02AE33 */  jal        func_800AB8CC_BA87C
    /* BACEC 800ABD3C 00000000 */   nop
    /* BACF0 800ABD40 1000004A */  b          .L800ABE6C_BAE1C
    /* BACF4 800ABD44 24020001 */   addiu     $v0, $zero, 0x1
    /* BACF8 800ABD48 0C02AE03 */  jal        func_800AB80C_BA7BC
    /* BACFC 800ABD4C 00000000 */   nop
    /* BAD00 800ABD50 10000046 */  b          .L800ABE6C_BAE1C
    /* BAD04 800ABD54 00001025 */   or        $v0, $zero, $zero
    /* BAD08 800ABD58 0C02ADCC */  jal        func_800AB730_BA6E0
    /* BAD0C 800ABD5C 00000000 */   nop
    /* BAD10 800ABD60 10000042 */  b          .L800ABE6C_BAE1C
    /* BAD14 800ABD64 00001025 */   or        $v0, $zero, $zero
    /* BAD18 800ABD68 0C02AD5C */  jal        func_800AB570_BA520
    /* BAD1C 800ABD6C 00000000 */   nop
    /* BAD20 800ABD70 1000003E */  b          .L800ABE6C_BAE1C
    /* BAD24 800ABD74 00001025 */   or        $v0, $zero, $zero
    /* BAD28 800ABD78 0C02AD2D */  jal        func_800AB4B4_BA464
    /* BAD2C 800ABD7C 00000000 */   nop
    /* BAD30 800ABD80 1000003A */  b          .L800ABE6C_BAE1C
    /* BAD34 800ABD84 00001025 */   or        $v0, $zero, $zero
    /* BAD38 800ABD88 0C02AD02 */  jal        func_800AB408_BA3B8
    /* BAD3C 800ABD8C 00000000 */   nop
    /* BAD40 800ABD90 10000036 */  b          .L800ABE6C_BAE1C
    /* BAD44 800ABD94 00001025 */   or        $v0, $zero, $zero
    /* BAD48 800ABD98 0C02ACE4 */  jal        func_800AB390_BA340
    /* BAD4C 800ABD9C 00000000 */   nop
    /* BAD50 800ABDA0 10000032 */  b          .L800ABE6C_BAE1C
    /* BAD54 800ABDA4 00001025 */   or        $v0, $zero, $zero
    /* BAD58 800ABDA8 0C02ACCB */  jal        func_800AB32C_BA2DC
    /* BAD5C 800ABDAC 00000000 */   nop
    /* BAD60 800ABDB0 1000002E */  b          .L800ABE6C_BAE1C
    /* BAD64 800ABDB4 00001025 */   or        $v0, $zero, $zero
  .L800ABDB8_BAD68:
    /* BAD68 800ABDB8 904B0024 */  lbu        $t3, 0x24($v0)
    /* BAD6C 800ABDBC 256CFFFF */  addiu      $t4, $t3, -0x1
    /* BAD70 800ABDC0 2D81001D */  sltiu      $at, $t4, 0x1D
    /* BAD74 800ABDC4 10200028 */  beqz       $at, .L800ABE68_BAE18
    /* BAD78 800ABDC8 000C6080 */   sll       $t4, $t4, 2
    /* BAD7C 800ABDCC 3C018014 */  lui        $at, %hi(jtbl_8014299C_overlay_gameplay_outside)
    /* BAD80 800ABDD0 002C0821 */  addu       $at, $at, $t4
    /* BAD84 800ABDD4 8C2C299C */  lw         $t4, %lo(jtbl_8014299C_overlay_gameplay_outside)($at)
    /* BAD88 800ABDD8 01800008 */  jr         $t4
    /* BAD8C 800ABDDC 00000000 */   nop
    /* BAD90 800ABDE0 10000022 */  b          .L800ABE6C_BAE1C
    /* BAD94 800ABDE4 24020001 */   addiu     $v0, $zero, 0x1
    /* BAD98 800ABDE8 1000001F */  b          .L800ABE68_BAE18
    /* BAD9C 800ABDEC A4400048 */   sh        $zero, 0x48($v0)
    /* BADA0 800ABDF0 0C02AE33 */  jal        func_800AB8CC_BA87C
    /* BADA4 800ABDF4 00000000 */   nop
    /* BADA8 800ABDF8 1000001C */  b          .L800ABE6C_BAE1C
    /* BADAC 800ABDFC 24020001 */   addiu     $v0, $zero, 0x1
    /* BADB0 800ABE00 0C02AE03 */  jal        func_800AB80C_BA7BC
    /* BADB4 800ABE04 00000000 */   nop
    /* BADB8 800ABE08 10000018 */  b          .L800ABE6C_BAE1C
    /* BADBC 800ABE0C 00001025 */   or        $v0, $zero, $zero
    /* BADC0 800ABE10 0C02ADCC */  jal        func_800AB730_BA6E0
    /* BADC4 800ABE14 00000000 */   nop
    /* BADC8 800ABE18 10000014 */  b          .L800ABE6C_BAE1C
    /* BADCC 800ABE1C 00001025 */   or        $v0, $zero, $zero
    /* BADD0 800ABE20 0C02AD5C */  jal        func_800AB570_BA520
    /* BADD4 800ABE24 00000000 */   nop
    /* BADD8 800ABE28 10000010 */  b          .L800ABE6C_BAE1C
    /* BADDC 800ABE2C 00001025 */   or        $v0, $zero, $zero
    /* BADE0 800ABE30 0C02AD2D */  jal        func_800AB4B4_BA464
    /* BADE4 800ABE34 00000000 */   nop
    /* BADE8 800ABE38 1000000C */  b          .L800ABE6C_BAE1C
    /* BADEC 800ABE3C 00001025 */   or        $v0, $zero, $zero
    /* BADF0 800ABE40 0C02AD02 */  jal        func_800AB408_BA3B8
    /* BADF4 800ABE44 00000000 */   nop
    /* BADF8 800ABE48 10000008 */  b          .L800ABE6C_BAE1C
    /* BADFC 800ABE4C 00001025 */   or        $v0, $zero, $zero
    /* BAE00 800ABE50 0C02ACE4 */  jal        func_800AB390_BA340
    /* BAE04 800ABE54 00000000 */   nop
    /* BAE08 800ABE58 10000004 */  b          .L800ABE6C_BAE1C
    /* BAE0C 800ABE5C 00001025 */   or        $v0, $zero, $zero
    /* BAE10 800ABE60 0C02ACCB */  jal        func_800AB32C_BA2DC
    /* BAE14 800ABE64 00000000 */   nop
  .L800ABE68_BAE18:
    /* BAE18 800ABE68 00001025 */  or         $v0, $zero, $zero
  .L800ABE6C_BAE1C:
    /* BAE1C 800ABE6C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* BAE20 800ABE70 27BD0018 */  addiu      $sp, $sp, 0x18
    /* BAE24 800ABE74 03E00008 */  jr         $ra
    /* BAE28 800ABE78 00000000 */   nop
endlabel func_800ABCC8_BAC78
