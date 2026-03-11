nonmatching func_8000DEFC_EAFC, 0x14C

glabel func_8000DEFC_EAFC
    /* EAFC 8000DEFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* EB00 8000DF00 AFA40020 */  sw         $a0, 0x20($sp)
    /* EB04 8000DF04 3C048006 */  lui        $a0, %hi(D_80059CD0)
    /* EB08 8000DF08 84849CD0 */  lh         $a0, %lo(D_80059CD0)($a0)
    /* EB0C 8000DF0C AFBF0014 */  sw         $ra, 0x14($sp)
    /* EB10 8000DF10 AFA50024 */  sw         $a1, 0x24($sp)
    /* EB14 8000DF14 00047140 */  sll        $t6, $a0, 5
    /* EB18 8000DF18 AFA60028 */  sw         $a2, 0x28($sp)
    /* EB1C 8000DF1C AFA7002C */  sw         $a3, 0x2C($sp)
    /* EB20 8000DF20 0C007654 */  jal        coss
    /* EB24 8000DF24 31C4FFFF */   andi      $a0, $t6, 0xFFFF
    /* EB28 8000DF28 3C048006 */  lui        $a0, %hi(D_80059CD0)
    /* EB2C 8000DF2C 84849CD0 */  lh         $a0, %lo(D_80059CD0)($a0)
    /* EB30 8000DF30 A7A2001E */  sh         $v0, 0x1E($sp)
    /* EB34 8000DF34 0004C100 */  sll        $t8, $a0, 4
    /* EB38 8000DF38 0C007660 */  jal        sins
    /* EB3C 8000DF3C 3304FFFF */   andi      $a0, $t8, 0xFFFF
    /* EB40 8000DF40 3C038006 */  lui        $v1, %hi(D_80059CD0)
    /* EB44 8000DF44 84639CD0 */  lh         $v1, %lo(D_80059CD0)($v1)
    /* EB48 8000DF48 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* EB4C 8000DF4C 44810800 */  mtc1       $at, $f1
    /* EB50 8000DF50 2401000A */  addiu      $at, $zero, 0xA
    /* EB54 8000DF54 0061001A */  div        $zero, $v1, $at
    /* EB58 8000DF58 44822000 */  mtc1       $v0, $f4
    /* EB5C 8000DF5C 44800000 */  mtc1       $zero, $f0
    /* EB60 8000DF60 00004012 */  mflo       $t0
    /* EB64 8000DF64 468021A0 */  cvt.s.w    $f6, $f4
    /* EB68 8000DF68 44888000 */  mtc1       $t0, $f16
    /* EB6C 8000DF6C 87AA001E */  lh         $t2, 0x1E($sp)
    /* EB70 8000DF70 3C058006 */  lui        $a1, %hi(D_80059CD2)
    /* EB74 8000DF74 24A59CD2 */  addiu      $a1, $a1, %lo(D_80059CD2)
    /* EB78 8000DF78 468084A1 */  cvt.d.w    $f18, $f16
    /* EB7C 8000DF7C 448A8000 */  mtc1       $t2, $f16
    /* EB80 8000DF80 84A90000 */  lh         $t1, 0x0($a1)
    /* EB84 8000DF84 00032100 */  sll        $a0, $v1, 4
    /* EB88 8000DF88 46003221 */  cvt.d.s    $f8, $f6
    /* EB8C 8000DF8C 44893000 */  mtc1       $t1, $f6
    /* EB90 8000DF90 46204283 */  div.d      $f10, $f8, $f0
    /* EB94 8000DF94 308DFFFF */  andi       $t5, $a0, 0xFFFF
    /* EB98 8000DF98 01A02025 */  or         $a0, $t5, $zero
    /* EB9C 8000DF9C 46803221 */  cvt.d.w    $f8, $f6
    /* EBA0 8000DFA0 46325102 */  mul.d      $f4, $f10, $f18
    /* EBA4 8000DFA4 468082A0 */  cvt.s.w    $f10, $f16
    /* EBA8 8000DFA8 460054A1 */  cvt.d.s    $f18, $f10
    /* EBAC 8000DFAC 46209183 */  div.d      $f6, $f18, $f0
    /* EBB0 8000DFB0 46264402 */  mul.d      $f16, $f8, $f6
    /* EBB4 8000DFB4 46302280 */  add.d      $f10, $f4, $f16
    /* EBB8 8000DFB8 4620548D */  trunc.w.d  $f18, $f10
    /* EBBC 8000DFBC 440C9000 */  mfc1       $t4, $f18
    /* EBC0 8000DFC0 0C007654 */  jal        coss
    /* EBC4 8000DFC4 A4AC0000 */   sh        $t4, 0x0($a1)
    /* EBC8 8000DFC8 3C038006 */  lui        $v1, %hi(D_80059CD0)
    /* EBCC 8000DFCC 84639CD0 */  lh         $v1, %lo(D_80059CD0)($v1)
    /* EBD0 8000DFD0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* EBD4 8000DFD4 44810800 */  mtc1       $at, $f1
    /* EBD8 8000DFD8 2401000A */  addiu      $at, $zero, 0xA
    /* EBDC 8000DFDC 0061001A */  div        $zero, $v1, $at
    /* EBE0 8000DFE0 44822000 */  mtc1       $v0, $f4
    /* EBE4 8000DFE4 44800000 */  mtc1       $zero, $f0
    /* EBE8 8000DFE8 00007012 */  mflo       $t6
    /* EBEC 8000DFEC 46802420 */  cvt.s.w    $f16, $f4
    /* EBF0 8000DFF0 448E4000 */  mtc1       $t6, $f8
    /* EBF4 8000DFF4 3C048006 */  lui        $a0, %hi(D_80059CD4)
    /* EBF8 8000DFF8 24849CD4 */  addiu      $a0, $a0, %lo(D_80059CD4)
    /* EBFC 8000DFFC 848F0000 */  lh         $t7, 0x0($a0)
    /* EC00 8000E000 468041A1 */  cvt.d.w    $f6, $f8
    /* EC04 8000E004 8FBF0014 */  lw         $ra, 0x14($sp)
    /* EC08 8000E008 448F2000 */  mtc1       $t7, $f4
    /* EC0C 8000E00C 00034023 */  negu       $t0, $v1
    /* EC10 8000E010 460082A1 */  cvt.d.s    $f10, $f16
    /* EC14 8000E014 46802421 */  cvt.d.w    $f16, $f4
    /* EC18 8000E018 00084840 */  sll        $t1, $t0, 1
    /* EC1C 8000E01C 3C018006 */  lui        $at, %hi(D_80059CD6)
    /* EC20 8000E020 27BD0020 */  addiu      $sp, $sp, 0x20
    /* EC24 8000E024 46205483 */  div.d      $f18, $f10, $f0
    /* EC28 8000E028 46323202 */  mul.d      $f8, $f6, $f18
    /* EC2C 8000E02C 46288280 */  add.d      $f10, $f16, $f8
    /* EC30 8000E030 4620518D */  trunc.w.d  $f6, $f10
    /* EC34 8000E034 44193000 */  mfc1       $t9, $f6
    /* EC38 8000E038 00000000 */  nop
    /* EC3C 8000E03C A4990000 */  sh         $t9, 0x0($a0)
    /* EC40 8000E040 03E00008 */  jr         $ra
    /* EC44 8000E044 A4299CD6 */   sh        $t1, %lo(D_80059CD6)($at)
endlabel func_8000DEFC_EAFC
