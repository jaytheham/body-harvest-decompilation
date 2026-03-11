nonmatching func_800B8C2C_C7BDC, 0x154

glabel func_800B8C2C_C7BDC
    /* C7BDC 800B8C2C 3C018015 */  lui        $at, %hi(D_8014F830)
    /* C7BE0 800B8C30 A420F830 */  sh         $zero, %lo(D_8014F830)($at)
    /* C7BE4 800B8C34 44802000 */  mtc1       $zero, $f4
    /* C7BE8 800B8C38 3C018015 */  lui        $at, %hi(D_8014F832)
    /* C7BEC 800B8C3C 240E0076 */  addiu      $t6, $zero, 0x76
    /* C7BF0 800B8C40 A42EF832 */  sh         $t6, %lo(D_8014F832)($at)
    /* C7BF4 800B8C44 3C018015 */  lui        $at, %hi(D_8014F84C)
    /* C7BF8 800B8C48 E424F84C */  swc1       $f4, %lo(D_8014F84C)($at)
    /* C7BFC 800B8C4C 3C018014 */  lui        $at, %hi(D_80142E48)
    /* C7C00 800B8C50 C4262E48 */  lwc1       $f6, %lo(D_80142E48)($at)
    /* C7C04 800B8C54 AFA40000 */  sw         $a0, 0x0($sp)
    /* C7C08 800B8C58 00807825 */  or         $t7, $a0, $zero
    /* C7C0C 800B8C5C 25E40001 */  addiu      $a0, $t7, 0x1
    /* C7C10 800B8C60 3C018015 */  lui        $at, %hi(D_8014F850)
    /* C7C14 800B8C64 00047C00 */  sll        $t7, $a0, 16
    /* C7C18 800B8C68 E426F850 */  swc1       $f6, %lo(D_8014F850)($at)
    /* C7C1C 800B8C6C 3C0B8015 */  lui        $t3, %hi(D_8014F83C)
    /* C7C20 800B8C70 000F2403 */  sra        $a0, $t7, 16
    /* C7C24 800B8C74 3C018015 */  lui        $at, %hi(D_8014F834)
    /* C7C28 800B8C78 256BF83C */  addiu      $t3, $t3, %lo(D_8014F83C)
    /* C7C2C 800B8C7C A426F834 */  sh         $a2, %lo(D_8014F834)($at)
    /* C7C30 800B8C80 248FFFD0 */  addiu      $t7, $a0, -0x30
    /* C7C34 800B8C84 AFA50004 */  sw         $a1, 0x4($sp)
    /* C7C38 800B8C88 00A0C825 */  or         $t9, $a1, $zero
    /* C7C3C 800B8C8C A56F0000 */  sh         $t7, 0x0($t3)
    /* C7C40 800B8C90 85620000 */  lh         $v0, 0x0($t3)
    /* C7C44 800B8C94 27250001 */  addiu      $a1, $t9, 0x1
    /* C7C48 800B8C98 0005CC00 */  sll        $t9, $a1, 16
    /* C7C4C 800B8C9C 3C038015 */  lui        $v1, %hi(D_8014F840)
    /* C7C50 800B8CA0 3C088015 */  lui        $t0, %hi(D_8014F842)
    /* C7C54 800B8CA4 3C098015 */  lui        $t1, %hi(D_8014F846)
    /* C7C58 800B8CA8 3C0A8015 */  lui        $t2, %hi(D_8014F848)
    /* C7C5C 800B8CAC 3C0C8015 */  lui        $t4, %hi(D_8014F83E)
    /* C7C60 800B8CB0 00192C03 */  sra        $a1, $t9, 16
    /* C7C64 800B8CB4 258CF83E */  addiu      $t4, $t4, %lo(D_8014F83E)
    /* C7C68 800B8CB8 254AF848 */  addiu      $t2, $t2, %lo(D_8014F848)
    /* C7C6C 800B8CBC 2529F846 */  addiu      $t1, $t1, %lo(D_8014F846)
    /* C7C70 800B8CC0 2508F842 */  addiu      $t0, $t0, %lo(D_8014F842)
    /* C7C74 800B8CC4 2463F840 */  addiu      $v1, $v1, %lo(D_8014F840)
    /* C7C78 800B8CC8 24070060 */  addiu      $a3, $zero, 0x60
    /* C7C7C 800B8CCC 24B8FFD0 */  addiu      $t8, $a1, -0x30
    /* C7C80 800B8CD0 2841FF80 */  slti       $at, $v0, -0x80
    /* C7C84 800B8CD4 AFA60008 */  sw         $a2, 0x8($sp)
    /* C7C88 800B8CD8 A4670000 */  sh         $a3, 0x0($v1)
    /* C7C8C 800B8CDC A5070000 */  sh         $a3, 0x0($t0)
    /* C7C90 800B8CE0 A5200000 */  sh         $zero, 0x0($t1)
    /* C7C94 800B8CE4 A5400000 */  sh         $zero, 0x0($t2)
    /* C7C98 800B8CE8 10200006 */  beqz       $at, .L800B8D04_C7CB4
    /* C7C9C 800B8CEC A5980000 */   sh        $t8, 0x0($t4)
    /* C7CA0 800B8CF0 2419FF80 */  addiu      $t9, $zero, -0x80
    /* C7CA4 800B8CF4 A5790000 */  sh         $t9, 0x0($t3)
    /* C7CA8 800B8CF8 248D00B0 */  addiu      $t5, $a0, 0xB0
    /* C7CAC 800B8CFC A46D0000 */  sh         $t5, 0x0($v1)
    /* C7CB0 800B8D00 85620000 */  lh         $v0, 0x0($t3)
  .L800B8D04_C7CB4:
    /* C7CB4 800B8D04 28410020 */  slti       $at, $v0, 0x20
    /* C7CB8 800B8D08 14200006 */  bnez       $at, .L800B8D24_C7CD4
    /* C7CBC 800B8D0C 240E0080 */   addiu     $t6, $zero, 0x80
    /* C7CC0 800B8D10 01C27823 */  subu       $t7, $t6, $v0
    /* C7CC4 800B8D14 A46F0000 */  sh         $t7, 0x0($v1)
    /* C7CC8 800B8D18 84780000 */  lh         $t8, 0x0($v1)
    /* C7CCC 800B8D1C 00F8C823 */  subu       $t9, $a3, $t8
    /* C7CD0 800B8D20 A5390000 */  sh         $t9, 0x0($t1)
  .L800B8D24_C7CD4:
    /* C7CD4 800B8D24 85830000 */  lh         $v1, 0x0($t4)
    /* C7CD8 800B8D28 3C028015 */  lui        $v0, %hi(D_8014F840)
    /* C7CDC 800B8D2C 8442F840 */  lh         $v0, %lo(D_8014F840)($v0)
    /* C7CE0 800B8D30 2861FF80 */  slti       $at, $v1, -0x80
    /* C7CE4 800B8D34 10200005 */  beqz       $at, .L800B8D4C_C7CFC
    /* C7CE8 800B8D38 240DFF80 */   addiu     $t5, $zero, -0x80
    /* C7CEC 800B8D3C A58D0000 */  sh         $t5, 0x0($t4)
    /* C7CF0 800B8D40 24AE00B0 */  addiu      $t6, $a1, 0xB0
    /* C7CF4 800B8D44 A50E0000 */  sh         $t6, 0x0($t0)
    /* C7CF8 800B8D48 85830000 */  lh         $v1, 0x0($t4)
  .L800B8D4C_C7CFC:
    /* C7CFC 800B8D4C 28610020 */  slti       $at, $v1, 0x20
    /* C7D00 800B8D50 14200007 */  bnez       $at, .L800B8D70_C7D20
    /* C7D04 800B8D54 240E0100 */   addiu     $t6, $zero, 0x100
    /* C7D08 800B8D58 240F0080 */  addiu      $t7, $zero, 0x80
    /* C7D0C 800B8D5C 01E3C023 */  subu       $t8, $t7, $v1
    /* C7D10 800B8D60 A5180000 */  sh         $t8, 0x0($t0)
    /* C7D14 800B8D64 85190000 */  lh         $t9, 0x0($t0)
    /* C7D18 800B8D68 00F96823 */  subu       $t5, $a3, $t9
    /* C7D1C 800B8D6C A54D0000 */  sh         $t5, 0x0($t2)
  .L800B8D70_C7D20:
    /* C7D20 800B8D70 01C27823 */  subu       $t7, $t6, $v0
    /* C7D24 800B8D74 3C018015 */  lui        $at, %hi(D_8014F844)
    /* C7D28 800B8D78 03E00008 */  jr         $ra
    /* C7D2C 800B8D7C A42FF844 */   sh        $t7, %lo(D_8014F844)($at)
endlabel func_800B8C2C_C7BDC
