nonmatching func_801005CC_10F57C, 0x6C

glabel func_801005CC_10F57C
    /* 10F57C 801005CC 3C0E8016 */  lui        $t6, %hi(D_80159320)
    /* 10F580 801005D0 8DCE9320 */  lw         $t6, %lo(D_80159320)($t6)
    /* 10F584 801005D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 10F588 801005D8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10F58C 801005DC 000E7A00 */  sll        $t7, $t6, 8
    /* 10F590 801005E0 AFA40020 */  sw         $a0, 0x20($sp)
    /* 10F594 801005E4 05E00010 */  bltz       $t7, .L80100628_10F5D8
    /* 10F598 801005E8 AFA50024 */   sw        $a1, 0x24($sp)
    /* 10F59C 801005EC 0C042658 */  jal        func_80109960_118910
    /* 10F5A0 801005F0 00000000 */   nop
    /* 10F5A4 801005F4 3C018016 */  lui        $at, %hi(D_8015EA34)
    /* 10F5A8 801005F8 C420EA34 */  lwc1       $f0, %lo(D_8015EA34)($at)
    /* 10F5AC 801005FC 3C018016 */  lui        $at, %hi(D_8015EA38)
    /* 10F5B0 80100600 AFA2001C */  sw         $v0, 0x1C($sp)
    /* 10F5B4 80100604 44050000 */  mfc1       $a1, $f0
    /* 10F5B8 80100608 00402025 */  or         $a0, $v0, $zero
    /* 10F5BC 8010060C 0C03ED21 */  jal        func_800FB484_10A434
    /* 10F5C0 80100610 E420EA38 */   swc1      $f0, %lo(D_8015EA38)($at)
    /* 10F5C4 80100614 3C018016 */  lui        $at, %hi(D_80159248)
    /* 10F5C8 80100618 A4209248 */  sh         $zero, %lo(D_80159248)($at)
    /* 10F5CC 8010061C 8FA4001C */  lw         $a0, 0x1C($sp)
    /* 10F5D0 80100620 0C03ED0C */  jal        func_800FB430_10A3E0
    /* 10F5D4 80100624 24050000 */   addiu     $a1, $zero, 0x0
  .L80100628_10F5D8:
    /* 10F5D8 80100628 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10F5DC 8010062C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 10F5E0 80100630 03E00008 */  jr         $ra
    /* 10F5E4 80100634 00000000 */   nop
endlabel func_801005CC_10F57C
