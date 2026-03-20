glabel guAlignF
    /* 1EAE0 8001DEE0 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 1EAE4 8001DEE4 3C018004 */  lui        $at, %hi(rotate_rodata_0000)
    /* 1EAE8 8001DEE8 C4249870 */  lwc1       $f4, %lo(rotate_rodata_0000)($at)
    /* 1EAEC 8001DEEC AFB00018 */  sw         $s0, 0x18($sp)
    /* 1EAF0 8001DEF0 00808025 */  or         $s0, $a0, $zero
    /* 1EAF4 8001DEF4 3C018007 */  lui        $at, %hi(rotate_bss_0000)
    /* 1EAF8 8001DEF8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1EAFC 8001DEFC AFA5003C */  sw         $a1, 0x3C($sp)
    /* 1EB00 8001DF00 AFA60040 */  sw         $a2, 0x40($sp)
    /* 1EB04 8001DF04 AFA70044 */  sw         $a3, 0x44($sp)
    /* 1EB08 8001DF08 27A60048 */  addiu      $a2, $sp, 0x48
    /* 1EB0C 8001DF0C 27A50044 */  addiu      $a1, $sp, 0x44
    /* 1EB10 8001DF10 27A40040 */  addiu      $a0, $sp, 0x40
    /* 1EB14 8001DF14 0C00A040 */  jal        guNormalize
    /* 1EB18 8001DF18 E424CA50 */   swc1      $f4, %lo(rotate_bss_0000)($at)
    /* 1EB1C 8001DF1C 3C018007 */  lui        $at, %hi(rotate_bss_0000)
    /* 1EB20 8001DF20 C7AC003C */  lwc1       $f12, 0x3C($sp)
    /* 1EB24 8001DF24 C426CA50 */  lwc1       $f6, %lo(rotate_bss_0000)($at)
    /* 1EB28 8001DF28 46066302 */  mul.s      $f12, $f12, $f6
    /* 1EB2C 8001DF2C 0C00797C */  jal        sinf
    /* 1EB30 8001DF30 E7AC003C */   swc1      $f12, 0x3C($sp)
    /* 1EB34 8001DF34 C7AC003C */  lwc1       $f12, 0x3C($sp)
    /* 1EB38 8001DF38 0C0079EC */  jal        __cosf
    /* 1EB3C 8001DF3C E7A00034 */   swc1      $f0, 0x34($sp)
    /* 1EB40 8001DF40 C7AA0040 */  lwc1       $f10, 0x40($sp)
    /* 1EB44 8001DF44 C7A40044 */  lwc1       $f4, 0x44($sp)
    /* 1EB48 8001DF48 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 1EB4C 8001DF4C 44814000 */  mtc1       $at, $f8
    /* 1EB50 8001DF50 46045182 */  mul.s      $f6, $f10, $f4
    /* 1EB54 8001DF54 02002025 */  or         $a0, $s0, $zero
    /* 1EB58 8001DF58 46004081 */  sub.s      $f2, $f8, $f0
    /* 1EB5C 8001DF5C C7A80048 */  lwc1       $f8, 0x48($sp)
    /* 1EB60 8001DF60 E7A00030 */  swc1       $f0, 0x30($sp)
    /* 1EB64 8001DF64 46023402 */  mul.s      $f16, $f6, $f2
    /* 1EB68 8001DF68 00000000 */  nop
    /* 1EB6C 8001DF6C 46082182 */  mul.s      $f6, $f4, $f8
    /* 1EB70 8001DF70 E7B0002C */  swc1       $f16, 0x2C($sp)
    /* 1EB74 8001DF74 46023482 */  mul.s      $f18, $f6, $f2
    /* 1EB78 8001DF78 00000000 */  nop
    /* 1EB7C 8001DF7C 460A4102 */  mul.s      $f4, $f8, $f10
    /* 1EB80 8001DF80 E7B20028 */  swc1       $f18, 0x28($sp)
    /* 1EB84 8001DF84 46022182 */  mul.s      $f6, $f4, $f2
    /* 1EB88 8001DF88 0C009FE4 */  jal        guMtxIdentF
    /* 1EB8C 8001DF8C E7A60024 */   swc1      $f6, 0x24($sp)
    /* 1EB90 8001DF90 C7A80040 */  lwc1       $f8, 0x40($sp)
    /* 1EB94 8001DF94 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 1EB98 8001DF98 44815000 */  mtc1       $at, $f10
    /* 1EB9C 8001DF9C 46084002 */  mul.s      $f0, $f8, $f8
    /* 1EBA0 8001DFA0 C7AC0030 */  lwc1       $f12, 0x30($sp)
    /* 1EBA4 8001DFA4 C7AE0034 */  lwc1       $f14, 0x34($sp)
    /* 1EBA8 8001DFA8 C7B0002C */  lwc1       $f16, 0x2C($sp)
    /* 1EBAC 8001DFAC C7B20028 */  lwc1       $f18, 0x28($sp)
    /* 1EBB0 8001DFB0 46005101 */  sub.s      $f4, $f10, $f0
    /* 1EBB4 8001DFB4 460C2182 */  mul.s      $f6, $f4, $f12
    /* 1EBB8 8001DFB8 46003200 */  add.s      $f8, $f6, $f0
    /* 1EBBC 8001DFBC E6080000 */  swc1       $f8, 0x0($s0)
    /* 1EBC0 8001DFC0 C7AA0040 */  lwc1       $f10, 0x40($sp)
    /* 1EBC4 8001DFC4 460E5102 */  mul.s      $f4, $f10, $f14
    /* 1EBC8 8001DFC8 46049181 */  sub.s      $f6, $f18, $f4
    /* 1EBCC 8001DFCC E6060024 */  swc1       $f6, 0x24($s0)
    /* 1EBD0 8001DFD0 C7A80040 */  lwc1       $f8, 0x40($sp)
    /* 1EBD4 8001DFD4 460E4282 */  mul.s      $f10, $f8, $f14
    /* 1EBD8 8001DFD8 44814000 */  mtc1       $at, $f8
    /* 1EBDC 8001DFDC 46125100 */  add.s      $f4, $f10, $f18
    /* 1EBE0 8001DFE0 E6040018 */  swc1       $f4, 0x18($s0)
    /* 1EBE4 8001DFE4 C7A60044 */  lwc1       $f6, 0x44($sp)
    /* 1EBE8 8001DFE8 46063082 */  mul.s      $f2, $f6, $f6
    /* 1EBEC 8001DFEC 46024281 */  sub.s      $f10, $f8, $f2
    /* 1EBF0 8001DFF0 460C5102 */  mul.s      $f4, $f10, $f12
    /* 1EBF4 8001DFF4 46022180 */  add.s      $f6, $f4, $f2
    /* 1EBF8 8001DFF8 E6060014 */  swc1       $f6, 0x14($s0)
    /* 1EBFC 8001DFFC C7A80044 */  lwc1       $f8, 0x44($sp)
    /* 1EC00 8001E000 C7A40024 */  lwc1       $f4, 0x24($sp)
    /* 1EC04 8001E004 460E4282 */  mul.s      $f10, $f8, $f14
    /* 1EC08 8001E008 46045180 */  add.s      $f6, $f10, $f4
    /* 1EC0C 8001E00C E6060020 */  swc1       $f6, 0x20($s0)
    /* 1EC10 8001E010 C7AA0044 */  lwc1       $f10, 0x44($sp)
    /* 1EC14 8001E014 C7A80024 */  lwc1       $f8, 0x24($sp)
    /* 1EC18 8001E018 460E5102 */  mul.s      $f4, $f10, $f14
    /* 1EC1C 8001E01C 46044181 */  sub.s      $f6, $f8, $f4
    /* 1EC20 8001E020 44814000 */  mtc1       $at, $f8
    /* 1EC24 8001E024 E6060008 */  swc1       $f6, 0x8($s0)
    /* 1EC28 8001E028 C7AA0048 */  lwc1       $f10, 0x48($sp)
    /* 1EC2C 8001E02C 460A5002 */  mul.s      $f0, $f10, $f10
    /* 1EC30 8001E030 46004101 */  sub.s      $f4, $f8, $f0
    /* 1EC34 8001E034 460C2182 */  mul.s      $f6, $f4, $f12
    /* 1EC38 8001E038 46003280 */  add.s      $f10, $f6, $f0
    /* 1EC3C 8001E03C E60A0028 */  swc1       $f10, 0x28($s0)
    /* 1EC40 8001E040 C7A80048 */  lwc1       $f8, 0x48($sp)
    /* 1EC44 8001E044 460E4102 */  mul.s      $f4, $f8, $f14
    /* 1EC48 8001E048 46048181 */  sub.s      $f6, $f16, $f4
    /* 1EC4C 8001E04C E6060010 */  swc1       $f6, 0x10($s0)
    /* 1EC50 8001E050 C7AA0048 */  lwc1       $f10, 0x48($sp)
    /* 1EC54 8001E054 460E5202 */  mul.s      $f8, $f10, $f14
    /* 1EC58 8001E058 46104100 */  add.s      $f4, $f8, $f16
    /* 1EC5C 8001E05C E6040004 */  swc1       $f4, 0x4($s0)
    /* 1EC60 8001E060 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1EC64 8001E064 8FB00018 */  lw         $s0, 0x18($sp)
    /* 1EC68 8001E068 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 1EC6C 8001E06C 03E00008 */  jr         $ra
    /* 1EC70 8001E070 00000000 */   nop
