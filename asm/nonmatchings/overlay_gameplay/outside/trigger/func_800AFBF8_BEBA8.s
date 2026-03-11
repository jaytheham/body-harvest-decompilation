nonmatching func_800AFBF8_BEBA8, 0x150

glabel func_800AFBF8_BEBA8
    /* BEBA8 800AFBF8 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* BEBAC 800AFBFC AFBF001C */  sw         $ra, 0x1C($sp)
    /* BEBB0 800AFC00 AFB10018 */  sw         $s1, 0x18($sp)
    /* BEBB4 800AFC04 AFB00014 */  sw         $s0, 0x14($sp)
    /* BEBB8 800AFC08 90900009 */  lbu        $s0, 0x9($a0)
    /* BEBBC 800AFC0C 3C0F8022 */  lui        $t7, %hi(D_80223780)
    /* BEBC0 800AFC10 25EF3780 */  addiu      $t7, $t7, %lo(D_80223780)
    /* BEBC4 800AFC14 00107080 */  sll        $t6, $s0, 2
    /* BEBC8 800AFC18 01D07021 */  addu       $t6, $t6, $s0
    /* BEBCC 800AFC1C 000E7080 */  sll        $t6, $t6, 2
    /* BEBD0 800AFC20 01CF1821 */  addu       $v1, $t6, $t7
    /* BEBD4 800AFC24 00808825 */  or         $s1, $a0, $zero
    /* BEBD8 800AFC28 84640002 */  lh         $a0, 0x2($v1)
    /* BEBDC 800AFC2C 84650004 */  lh         $a1, 0x4($v1)
    /* BEBE0 800AFC30 90660000 */  lbu        $a2, 0x0($v1)
    /* BEBE4 800AFC34 AFA30024 */  sw         $v1, 0x24($sp)
    /* BEBE8 800AFC38 0C02BB97 */  jal        func_800AEE5C_BDE0C
    /* BEBEC 800AFC3C 320700FF */   andi      $a3, $s0, 0xFF
    /* BEBF0 800AFC40 8FA30024 */  lw         $v1, 0x24($sp)
    /* BEBF4 800AFC44 3C018005 */  lui        $at, %hi(D_80048038)
    /* BEBF8 800AFC48 00300821 */  addu       $at, $at, $s0
    /* BEBFC 800AFC4C 24180001 */  addiu      $t8, $zero, 0x1
    /* BEC00 800AFC50 A0388038 */  sb         $t8, %lo(D_80048038)($at)
    /* BEC04 800AFC54 80790000 */  lb         $t9, 0x0($v1)
    /* BEC08 800AFC58 304500FF */  andi       $a1, $v0, 0xFF
    /* BEC0C 800AFC5C 2401001C */  addiu      $at, $zero, 0x1C
    /* BEC10 800AFC60 17210017 */  bne        $t9, $at, .L800AFCC0_BEC70
    /* BEC14 800AFC64 A3A50033 */   sb        $a1, 0x33($sp)
    /* BEC18 800AFC68 84680002 */  lh         $t0, 0x2($v1)
    /* BEC1C 800AFC6C 846A0004 */  lh         $t2, 0x4($v1)
    /* BEC20 800AFC70 3C0C800B */  lui        $t4, %hi(func_800B0390_BF340)
    /* BEC24 800AFC74 258C0390 */  addiu      $t4, $t4, %lo(func_800B0390_BF340)
    /* BEC28 800AFC78 240D0003 */  addiu      $t5, $zero, 0x3
    /* BEC2C 800AFC7C 00084A03 */  sra        $t1, $t0, 8
    /* BEC30 800AFC80 000A5A03 */  sra        $t3, $t2, 8
    /* BEC34 800AFC84 A3A90049 */  sb         $t1, 0x49($sp)
    /* BEC38 800AFC88 A3AB004A */  sb         $t3, 0x4A($sp)
    /* BEC3C 800AFC8C AFAC0054 */  sw         $t4, 0x54($sp)
    /* BEC40 800AFC90 A3AD0048 */  sb         $t5, 0x48($sp)
    /* BEC44 800AFC94 A3A50050 */  sb         $a1, 0x50($sp)
    /* BEC48 800AFC98 27A40048 */  addiu      $a0, $sp, 0x48
    /* BEC4C 800AFC9C 0C02B915 */  jal        func_800AE454_BD404
    /* BEC50 800AFCA0 A3A50033 */   sb        $a1, 0x33($sp)
    /* BEC54 800AFCA4 2401FFFF */  addiu      $at, $zero, -0x1
    /* BEC58 800AFCA8 54410006 */  bnel       $v0, $at, .L800AFCC4_BEC74
    /* BEC5C 800AFCAC 93A50033 */   lbu       $a1, 0x33($sp)
    /* BEC60 800AFCB0 0C006994 */  jal        func_8001A650_1B250
    /* BEC64 800AFCB4 24040007 */   addiu     $a0, $zero, 0x7
    /* BEC68 800AFCB8 0C02B8EB */  jal        func_800AE3AC_BD35C
    /* BEC6C 800AFCBC 27A40048 */   addiu     $a0, $sp, 0x48
  .L800AFCC0_BEC70:
    /* BEC70 800AFCC0 93A50033 */  lbu        $a1, 0x33($sp)
  .L800AFCC4_BEC74:
    /* BEC74 800AFCC4 3C0F8005 */  lui        $t7, %hi(D_800481B2)
    /* BEC78 800AFCC8 24010019 */  addiu      $at, $zero, 0x19
    /* BEC7C 800AFCCC 00057080 */  sll        $t6, $a1, 2
    /* BEC80 800AFCD0 01C57021 */  addu       $t6, $t6, $a1
    /* BEC84 800AFCD4 000E7100 */  sll        $t6, $t6, 4
    /* BEC88 800AFCD8 01EE7821 */  addu       $t7, $t7, $t6
    /* BEC8C 800AFCDC 91EF81B2 */  lbu        $t7, %lo(D_800481B2)($t7)
    /* BEC90 800AFCE0 3C18800B */  lui        $t8, %hi(func_800AF634_BE5E4)
    /* BEC94 800AFCE4 2718F634 */  addiu      $t8, $t8, %lo(func_800AF634_BE5E4)
    /* BEC98 800AFCE8 15E10009 */  bne        $t7, $at, .L800AFD10_BECC0
    /* BEC9C 800AFCEC 24190003 */   addiu     $t9, $zero, 0x3
    /* BECA0 800AFCF0 A3B00051 */  sb         $s0, 0x51($sp)
    /* BECA4 800AFCF4 A3A50050 */  sb         $a1, 0x50($sp)
    /* BECA8 800AFCF8 AFB80054 */  sw         $t8, 0x54($sp)
    /* BECAC 800AFCFC A3B90048 */  sb         $t9, 0x48($sp)
    /* BECB0 800AFD00 0C02B915 */  jal        func_800AE454_BD404
    /* BECB4 800AFD04 27A40048 */   addiu     $a0, $sp, 0x48
    /* BECB8 800AFD08 1000000B */  b          .L800AFD38_BECE8
    /* BECBC 800AFD0C 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800AFD10_BECC0:
    /* BECC0 800AFD10 92280003 */  lbu        $t0, 0x3($s1)
    /* BECC4 800AFD14 3C09800B */  lui        $t1, %hi(func_800AF3B8_BE368)
    /* BECC8 800AFD18 2529F3B8 */  addiu      $t1, $t1, %lo(func_800AF3B8_BE368)
    /* BECCC 800AFD1C 11000005 */  beqz       $t0, .L800AFD34_BECE4
    /* BECD0 800AFD20 240A000A */   addiu     $t2, $zero, 0xA
    /* BECD4 800AFD24 AE29000C */  sw         $t1, 0xC($s1)
    /* BECD8 800AFD28 A22A0000 */  sb         $t2, 0x0($s1)
    /* BECDC 800AFD2C 0C02B915 */  jal        func_800AE454_BD404
    /* BECE0 800AFD30 02202025 */   or        $a0, $s1, $zero
  .L800AFD34_BECE4:
    /* BECE4 800AFD34 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800AFD38_BECE8:
    /* BECE8 800AFD38 8FB00014 */  lw         $s0, 0x14($sp)
    /* BECEC 800AFD3C 8FB10018 */  lw         $s1, 0x18($sp)
    /* BECF0 800AFD40 03E00008 */  jr         $ra
    /* BECF4 800AFD44 27BD0058 */   addiu     $sp, $sp, 0x58
endlabel func_800AFBF8_BEBA8
