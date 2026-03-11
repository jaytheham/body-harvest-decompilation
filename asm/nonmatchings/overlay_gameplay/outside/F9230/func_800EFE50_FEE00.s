nonmatching func_800EFE50_FEE00, 0x64

glabel func_800EFE50_FEE00
    /* FEE00 800EFE50 308700FF */  andi       $a3, $a0, 0xFF
    /* FEE04 800EFE54 0007C100 */  sll        $t8, $a3, 4
    /* FEE08 800EFE58 0307C023 */  subu       $t8, $t8, $a3
    /* FEE0C 800EFE5C 3C0E0306 */  lui        $t6, %hi(D_3058A40)
    /* FEE10 800EFE60 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
    /* FEE14 800EFE64 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* FEE18 800EFE68 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
    /* FEE1C 800EFE6C 25CE8A40 */  addiu      $t6, $t6, %lo(D_3058A40)
    /* FEE20 800EFE70 0018C0C0 */  sll        $t8, $t8, 3
    /* FEE24 800EFE74 AFA40018 */  sw         $a0, 0x18($sp)
    /* FEE28 800EFE78 3319FFFF */  andi       $t9, $t8, 0xFFFF
    /* FEE2C 800EFE7C 01C17824 */  and        $t7, $t6, $at
    /* FEE30 800EFE80 3C09008F */  lui        $t1, %hi(D_8F4960)
    /* FEE34 800EFE84 AFBF0014 */  sw         $ra, 0x14($sp)
    /* FEE38 800EFE88 25294960 */  addiu      $t1, $t1, %lo(D_8F4960)
    /* FEE3C 800EFE8C 01F94021 */  addu       $t0, $t7, $t9
    /* FEE40 800EFE90 3C048015 */  lui        $a0, %hi(D_80157E90)
    /* FEE44 800EFE94 24847E90 */  addiu      $a0, $a0, %lo(D_80157E90)
    /* FEE48 800EFE98 01092821 */  addu       $a1, $t0, $t1
    /* FEE4C 800EFE9C 0C00407C */  jal        func_800101F0_10DF0
    /* FEE50 800EFEA0 24060078 */   addiu     $a2, $zero, 0x78
    /* FEE54 800EFEA4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* FEE58 800EFEA8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* FEE5C 800EFEAC 03E00008 */  jr         $ra
    /* FEE60 800EFEB0 00000000 */   nop
endlabel func_800EFE50_FEE00
