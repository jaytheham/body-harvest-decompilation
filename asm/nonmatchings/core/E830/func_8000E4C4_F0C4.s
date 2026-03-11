nonmatching func_8000E4C4_F0C4, 0x68

glabel func_8000E4C4_F0C4
    /* F0C4 8000E4C4 3C0F8003 */  lui        $t7, %hi(D_80031A90)
    /* F0C8 8000E4C8 3C038006 */  lui        $v1, %hi(D_80059CDC)
    /* F0CC 8000E4CC 25EF1A90 */  addiu      $t7, $t7, %lo(D_80031A90)
    /* F0D0 8000E4D0 00047140 */  sll        $t6, $a0, 5
    /* F0D4 8000E4D4 24639CDC */  addiu      $v1, $v1, %lo(D_80059CDC)
    /* F0D8 8000E4D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* F0DC 8000E4DC 01CFC021 */  addu       $t8, $t6, $t7
    /* F0E0 8000E4E0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* F0E4 8000E4E4 AC780000 */  sw         $t8, 0x0($v1)
    /* F0E8 8000E4E8 87190004 */  lh         $t9, 0x4($t8)
    /* F0EC 8000E4EC 3C018006 */  lui        $at, %hi(D_80059CD0)
    /* F0F0 8000E4F0 3C048026 */  lui        $a0, %hi(D_80267080)
    /* F0F4 8000E4F4 A4399CD0 */  sh         $t9, %lo(D_80059CD0)($at)
    /* F0F8 8000E4F8 C7040008 */  lwc1       $f4, 0x8($t8)
    /* F0FC 8000E4FC 3C018006 */  lui        $at, %hi(D_80059CE0)
    /* F100 8000E500 3C05803E */  lui        $a1, %hi(D_803DA800)
    /* F104 8000E504 E4249CE0 */  swc1       $f4, %lo(D_80059CE0)($at)
    /* F108 8000E508 3C018006 */  lui        $at, %hi(D_80059CD8)
    /* F10C 8000E50C A4209CD8 */  sh         $zero, %lo(D_80059CD8)($at)
    /* F110 8000E510 24A5A800 */  addiu      $a1, $a1, %lo(D_803DA800)
    /* F114 8000E514 0C003727 */  jal        func_8000DC9C_E89C
    /* F118 8000E518 24847080 */   addiu     $a0, $a0, %lo(D_80267080)
    /* F11C 8000E51C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* F120 8000E520 27BD0018 */  addiu      $sp, $sp, 0x18
    /* F124 8000E524 03E00008 */  jr         $ra
    /* F128 8000E528 00000000 */   nop
endlabel func_8000E4C4_F0C4
