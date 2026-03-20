glabel guLookAt
    /* 1EA68 8001DE68 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 1EA6C 8001DE6C C7A40080 */  lwc1       $f4, 0x80($sp)
    /* 1EA70 8001DE70 44856000 */  mtc1       $a1, $f12
    /* 1EA74 8001DE74 44867000 */  mtc1       $a2, $f14
    /* 1EA78 8001DE78 44878000 */  mtc1       $a3, $f16
    /* 1EA7C 8001DE7C E7A40010 */  swc1       $f4, 0x10($sp)
    /* 1EA80 8001DE80 C7A40094 */  lwc1       $f4, 0x94($sp)
    /* 1EA84 8001DE84 C7A60084 */  lwc1       $f6, 0x84($sp)
    /* 1EA88 8001DE88 C7A80088 */  lwc1       $f8, 0x88($sp)
    /* 1EA8C 8001DE8C C7AA008C */  lwc1       $f10, 0x8C($sp)
    /* 1EA90 8001DE90 C7B20090 */  lwc1       $f18, 0x90($sp)
    /* 1EA94 8001DE94 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 1EA98 8001DE98 AFA40070 */  sw         $a0, 0x70($sp)
    /* 1EA9C 8001DE9C 44056000 */  mfc1       $a1, $f12
    /* 1EAA0 8001DEA0 44067000 */  mfc1       $a2, $f14
    /* 1EAA4 8001DEA4 44078000 */  mfc1       $a3, $f16
    /* 1EAA8 8001DEA8 27A40030 */  addiu      $a0, $sp, 0x30
    /* 1EAAC 8001DEAC E7A40024 */  swc1       $f4, 0x24($sp)
    /* 1EAB0 8001DEB0 E7A60014 */  swc1       $f6, 0x14($sp)
    /* 1EAB4 8001DEB4 E7A80018 */  swc1       $f8, 0x18($sp)
    /* 1EAB8 8001DEB8 E7AA001C */  swc1       $f10, 0x1C($sp)
    /* 1EABC 8001DEBC 0C0076EC */  jal        guLookAtF
    /* 1EAC0 8001DEC0 E7B20020 */   swc1      $f18, 0x20($sp)
    /* 1EAC4 8001DEC4 27A40030 */  addiu      $a0, $sp, 0x30
    /* 1EAC8 8001DEC8 0C009FA4 */  jal        guMtxF2L
    /* 1EACC 8001DECC 8FA50070 */   lw        $a1, 0x70($sp)
    /* 1EAD0 8001DED0 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 1EAD4 8001DED4 27BD0070 */  addiu      $sp, $sp, 0x70
    /* 1EAD8 8001DED8 03E00008 */  jr         $ra
    /* 1EADC 8001DEDC 00000000 */   nop
