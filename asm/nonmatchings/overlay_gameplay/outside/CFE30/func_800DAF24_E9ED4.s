nonmatching func_800DAF24_E9ED4, 0xA8

glabel func_800DAF24_E9ED4
    /* E9ED4 800DAF24 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* E9ED8 800DAF28 AFBF0024 */  sw         $ra, 0x24($sp)
    /* E9EDC 800DAF2C AFB30020 */  sw         $s3, 0x20($sp)
    /* E9EE0 800DAF30 309300FF */  andi       $s3, $a0, 0xFF
    /* E9EE4 800DAF34 AFB2001C */  sw         $s2, 0x1C($sp)
    /* E9EE8 800DAF38 AFB10018 */  sw         $s1, 0x18($sp)
    /* E9EEC 800DAF3C AFB00014 */  sw         $s0, 0x14($sp)
    /* E9EF0 800DAF40 0C000E38 */  jal        func_800038E0_44E0
    /* E9EF4 800DAF44 AFA40028 */   sw        $a0, 0x28($sp)
    /* E9EF8 800DAF48 24010003 */  addiu      $at, $zero, 0x3
    /* E9EFC 800DAF4C 0041001A */  div        $zero, $v0, $at
    /* E9F00 800DAF50 00001810 */  mfhi       $v1
    /* E9F04 800DAF54 24630001 */  addiu      $v1, $v1, 0x1
    /* E9F08 800DAF58 306E00FF */  andi       $t6, $v1, 0xFF
    /* E9F0C 800DAF5C 306400FF */  andi       $a0, $v1, 0xFF
    /* E9F10 800DAF60 19C00013 */  blez       $t6, .L800DAFB0_E9F60
    /* E9F14 800DAF64 00008025 */   or        $s0, $zero, $zero
    /* E9F18 800DAF68 00137880 */  sll        $t7, $s3, 2
    /* E9F1C 800DAF6C 01F37823 */  subu       $t7, $t7, $s3
    /* E9F20 800DAF70 3C188015 */  lui        $t8, %hi(D_80154088)
    /* E9F24 800DAF74 27184088 */  addiu      $t8, $t8, %lo(D_80154088)
    /* E9F28 800DAF78 000F7880 */  sll        $t7, $t7, 2
    /* E9F2C 800DAF7C 01F88821 */  addu       $s1, $t7, $t8
    /* E9F30 800DAF80 00809025 */  or         $s2, $a0, $zero
  .L800DAF84_E9F34:
    /* E9F34 800DAF84 92390004 */  lbu        $t9, 0x4($s1)
    /* E9F38 800DAF88 2B210096 */  slti       $at, $t9, 0x96
    /* E9F3C 800DAF8C 50200004 */  beql       $at, $zero, .L800DAFA0_E9F50
    /* E9F40 800DAF90 26100001 */   addiu     $s0, $s0, 0x1
    /* E9F44 800DAF94 0C03286C */  jal        func_800CA1B0_D9160
    /* E9F48 800DAF98 326400FF */   andi      $a0, $s3, 0xFF
    /* E9F4C 800DAF9C 26100001 */  addiu      $s0, $s0, 0x1
  .L800DAFA0_E9F50:
    /* E9F50 800DAFA0 320800FF */  andi       $t0, $s0, 0xFF
    /* E9F54 800DAFA4 0112082A */  slt        $at, $t0, $s2
    /* E9F58 800DAFA8 1420FFF6 */  bnez       $at, .L800DAF84_E9F34
    /* E9F5C 800DAFAC 01008025 */   or        $s0, $t0, $zero
  .L800DAFB0_E9F60:
    /* E9F60 800DAFB0 8FBF0024 */  lw         $ra, 0x24($sp)
    /* E9F64 800DAFB4 8FB00014 */  lw         $s0, 0x14($sp)
    /* E9F68 800DAFB8 8FB10018 */  lw         $s1, 0x18($sp)
    /* E9F6C 800DAFBC 8FB2001C */  lw         $s2, 0x1C($sp)
    /* E9F70 800DAFC0 8FB30020 */  lw         $s3, 0x20($sp)
    /* E9F74 800DAFC4 03E00008 */  jr         $ra
    /* E9F78 800DAFC8 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_800DAF24_E9ED4
