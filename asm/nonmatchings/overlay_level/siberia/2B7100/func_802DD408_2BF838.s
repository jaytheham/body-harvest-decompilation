nonmatching func_802DD408_2BF838, 0x10C

glabel func_802DD408_2BF838
    /* 2BF838 802DD408 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 2BF83C 802DD40C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BF840 802DD410 000E7880 */  sll        $t7, $t6, 2
    /* 2BF844 802DD414 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 2BF848 802DD418 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 2BF84C 802DD41C 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BF850 802DD420 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BF854 802DD424 AFB00018 */  sw         $s0, 0x18($sp)
    /* 2BF858 802DD428 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BF85C 802DD42C 000F7900 */  sll        $t7, $t7, 4
    /* 2BF860 802DD430 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2BF864 802DD434 AFA40040 */  sw         $a0, 0x40($sp)
    /* 2BF868 802DD438 AFA50044 */  sw         $a1, 0x44($sp)
    /* 2BF86C 802DD43C 01F88021 */  addu       $s0, $t7, $t8
    /* 2BF870 802DD440 86080000 */  lh         $t0, 0x0($s0)
    /* 2BF874 802DD444 860A0004 */  lh         $t2, 0x4($s0)
    /* 2BF878 802DD448 84590000 */  lh         $t9, 0x0($v0)
    /* 2BF87C 802DD44C 84490004 */  lh         $t1, 0x4($v0)
    /* 2BF880 802DD450 03281823 */  subu       $v1, $t9, $t0
    /* 2BF884 802DD454 012A3023 */  subu       $a2, $t1, $t2
    /* 2BF888 802DD458 44863000 */  mtc1       $a2, $f6
    /* 2BF88C 802DD45C 44832000 */  mtc1       $v1, $f4
    /* 2BF890 802DD460 468033A0 */  cvt.s.w    $f14, $f6
    /* 2BF894 802DD464 46802320 */  cvt.s.w    $f12, $f4
    /* 2BF898 802DD468 E7AE0020 */  swc1       $f14, 0x20($sp)
    /* 2BF89C 802DD46C 0C000E09 */  jal        func_80003824_4424
    /* 2BF8A0 802DD470 E7AC0024 */   swc1      $f12, 0x24($sp)
    /* 2BF8A4 802DD474 C7AC0024 */  lwc1       $f12, 0x24($sp)
    /* 2BF8A8 802DD478 C7AE0020 */  lwc1       $f14, 0x20($sp)
    /* 2BF8AC 802DD47C 0C000E09 */  jal        func_80003824_4424
    /* 2BF8B0 802DD480 A7A20030 */   sh        $v0, 0x30($sp)
    /* 2BF8B4 802DD484 86030006 */  lh         $v1, 0x6($s0)
    /* 2BF8B8 802DD488 87AE0030 */  lh         $t6, 0x30($sp)
    /* 2BF8BC 802DD48C 240C8000 */  addiu      $t4, $zero, -0x8000
    /* 2BF8C0 802DD490 34018000 */  ori        $at, $zero, 0x8000
    /* 2BF8C4 802DD494 00435823 */  subu       $t3, $v0, $v1
    /* 2BF8C8 802DD498 01C37823 */  subu       $t7, $t6, $v1
    /* 2BF8CC 802DD49C 01E1C021 */  addu       $t8, $t7, $at
    /* 2BF8D0 802DD4A0 018B6823 */  subu       $t5, $t4, $t3
    /* 2BF8D4 802DD4A4 01B8082A */  slt        $at, $t5, $t8
    /* 2BF8D8 802DD4A8 C7AC0024 */  lwc1       $f12, 0x24($sp)
    /* 2BF8DC 802DD4AC 10200008 */  beqz       $at, .L802DD4D0_2BF900
    /* 2BF8E0 802DD4B0 C7AE0020 */   lwc1      $f14, 0x20($sp)
    /* 2BF8E4 802DD4B4 0C000E09 */  jal        func_80003824_4424
    /* 2BF8E8 802DD4B8 00000000 */   nop
    /* 2BF8EC 802DD4BC 86190006 */  lh         $t9, 0x6($s0)
    /* 2BF8F0 802DD4C0 34018000 */  ori        $at, $zero, 0x8000
    /* 2BF8F4 802DD4C4 00591823 */  subu       $v1, $v0, $t9
    /* 2BF8F8 802DD4C8 10000007 */  b          .L802DD4E8_2BF918
    /* 2BF8FC 802DD4CC 00611821 */   addu      $v1, $v1, $at
  .L802DD4D0_2BF900:
    /* 2BF900 802DD4D0 0C000E09 */  jal        func_80003824_4424
    /* 2BF904 802DD4D4 00000000 */   nop
    /* 2BF908 802DD4D8 86080006 */  lh         $t0, 0x6($s0)
    /* 2BF90C 802DD4DC 240A8000 */  addiu      $t2, $zero, -0x8000
    /* 2BF910 802DD4E0 00484823 */  subu       $t1, $v0, $t0
    /* 2BF914 802DD4E4 01491823 */  subu       $v1, $t2, $t1
  .L802DD4E8_2BF918:
    /* 2BF918 802DD4E8 97AC0046 */  lhu        $t4, 0x46($sp)
    /* 2BF91C 802DD4EC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 2BF920 802DD4F0 00001025 */  or         $v0, $zero, $zero
    /* 2BF924 802DD4F4 006C082A */  slt        $at, $v1, $t4
    /* 2BF928 802DD4F8 10200003 */  beqz       $at, .L802DD508_2BF938
    /* 2BF92C 802DD4FC 00000000 */   nop
    /* 2BF930 802DD500 10000001 */  b          .L802DD508_2BF938
    /* 2BF934 802DD504 24020001 */   addiu     $v0, $zero, 0x1
  .L802DD508_2BF938:
    /* 2BF938 802DD508 8FB00018 */  lw         $s0, 0x18($sp)
    /* 2BF93C 802DD50C 03E00008 */  jr         $ra
    /* 2BF940 802DD510 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_802DD408_2BF838
