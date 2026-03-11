nonmatching func_800119A8_125A8, 0x4C

glabel func_800119A8_125A8
    /* 125A8 800119A8 3C03004F */  lui        $v1, %hi(D_4EBF80)
    /* 125AC 800119AC 3C0F0050 */  lui        $t7, %hi(D_500A00)
    /* 125B0 800119B0 2465BF80 */  addiu      $a1, $v1, %lo(D_4EBF80)
    /* 125B4 800119B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 125B8 800119B8 3C028003 */  lui        $v0, %hi(__printfunc)
    /* 125BC 800119BC 25EF0A00 */  addiu      $t7, $t7, %lo(D_500A00)
    /* 125C0 800119C0 24421C84 */  addiu      $v0, $v0, %lo(__printfunc)
    /* 125C4 800119C4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 125C8 800119C8 01E53023 */  subu       $a2, $t7, $a1
    /* 125CC 800119CC AFA40020 */  sw         $a0, 0x20($sp)
    /* 125D0 800119D0 AC440000 */  sw         $a0, 0x0($v0)
    /* 125D4 800119D4 0C00407C */  jal        func_800101F0_10DF0
    /* 125D8 800119D8 AFA60018 */   sw        $a2, 0x18($sp)
    /* 125DC 800119DC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 125E0 800119E0 8FA60018 */  lw         $a2, 0x18($sp)
    /* 125E4 800119E4 8FB80020 */  lw         $t8, 0x20($sp)
    /* 125E8 800119E8 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 125EC 800119EC 03E00008 */  jr         $ra
    /* 125F0 800119F0 00D81021 */   addu      $v0, $a2, $t8
endlabel func_800119A8_125A8
