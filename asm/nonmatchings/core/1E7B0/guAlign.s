glabel guAlign
    /* 1EC74 8001E074 44856000 */  mtc1       $a1, $f12
    /* 1EC78 8001E078 44867000 */  mtc1       $a2, $f14
    /* 1EC7C 8001E07C 44878000 */  mtc1       $a3, $f16
    /* 1EC80 8001E080 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 1EC84 8001E084 C7A40070 */  lwc1       $f4, 0x70($sp)
    /* 1EC88 8001E088 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1EC8C 8001E08C AFA40060 */  sw         $a0, 0x60($sp)
    /* 1EC90 8001E090 44056000 */  mfc1       $a1, $f12
    /* 1EC94 8001E094 44067000 */  mfc1       $a2, $f14
    /* 1EC98 8001E098 44078000 */  mfc1       $a3, $f16
    /* 1EC9C 8001E09C 27A40020 */  addiu      $a0, $sp, 0x20
    /* 1ECA0 8001E0A0 0C0077B8 */  jal        guAlignF
    /* 1ECA4 8001E0A4 E7A40010 */   swc1      $f4, 0x10($sp)
    /* 1ECA8 8001E0A8 27A40020 */  addiu      $a0, $sp, 0x20
    /* 1ECAC 8001E0AC 0C009FA4 */  jal        guMtxF2L
    /* 1ECB0 8001E0B0 8FA50060 */   lw        $a1, 0x60($sp)
    /* 1ECB4 8001E0B4 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1ECB8 8001E0B8 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 1ECBC 8001E0BC 03E00008 */  jr         $ra
    /* 1ECC0 8001E0C0 00000000 */   nop
    /* 1ECC4 8001E0C4 00000000 */  nop
    /* 1ECC8 8001E0C8 00000000 */  nop
    /* 1ECCC 8001E0CC 00000000 */  nop
