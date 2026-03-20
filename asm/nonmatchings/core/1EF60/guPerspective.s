glabel guPerspective
    /* 1F190 8001E590 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 1F194 8001E594 44866000 */  mtc1       $a2, $f12
    /* 1F198 8001E598 44877000 */  mtc1       $a3, $f14
    /* 1F19C 8001E59C C7A40078 */  lwc1       $f4, 0x78($sp)
    /* 1F1A0 8001E5A0 C7A6007C */  lwc1       $f6, 0x7C($sp)
    /* 1F1A4 8001E5A4 C7A80080 */  lwc1       $f8, 0x80($sp)
    /* 1F1A8 8001E5A8 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 1F1AC 8001E5AC AFA40068 */  sw         $a0, 0x68($sp)
    /* 1F1B0 8001E5B0 44066000 */  mfc1       $a2, $f12
    /* 1F1B4 8001E5B4 44077000 */  mfc1       $a3, $f14
    /* 1F1B8 8001E5B8 27A40028 */  addiu      $a0, $sp, 0x28
    /* 1F1BC 8001E5BC E7A40010 */  swc1       $f4, 0x10($sp)
    /* 1F1C0 8001E5C0 E7A60014 */  swc1       $f6, 0x14($sp)
    /* 1F1C4 8001E5C4 0C0078D8 */  jal        guPerspectiveF
    /* 1F1C8 8001E5C8 E7A80018 */   swc1      $f8, 0x18($sp)
    /* 1F1CC 8001E5CC 27A40028 */  addiu      $a0, $sp, 0x28
    /* 1F1D0 8001E5D0 0C009FA4 */  jal        guMtxF2L
    /* 1F1D4 8001E5D4 8FA50068 */   lw        $a1, 0x68($sp)
    /* 1F1D8 8001E5D8 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 1F1DC 8001E5DC 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 1F1E0 8001E5E0 03E00008 */  jr         $ra
    /* 1F1E4 8001E5E4 00000000 */   nop
    /* 1F1E8 8001E5E8 00000000 */  nop
    /* 1F1EC 8001E5EC 00000000 */  nop
