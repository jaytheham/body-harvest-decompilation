nonmatching func_800FB098_10A048, 0x84

glabel func_800FB098_10A048
    /* 10A048 800FB098 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 10A04C 800FB09C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10A050 800FB0A0 AFA40020 */  sw         $a0, 0x20($sp)
    /* 10A054 800FB0A4 0C007660 */  jal        sins
    /* 10A058 800FB0A8 9484000E */   lhu       $a0, 0xE($a0)
    /* 10A05C 800FB0AC 8FAF0020 */  lw         $t7, 0x20($sp)
    /* 10A060 800FB0B0 A7A2001E */  sh         $v0, 0x1E($sp)
    /* 10A064 800FB0B4 0C007654 */  jal        coss
    /* 10A068 800FB0B8 95E40010 */   lhu       $a0, 0x10($t7)
    /* 10A06C 800FB0BC 87B8001E */  lh         $t8, 0x1E($sp)
    /* 10A070 800FB0C0 44822000 */  mtc1       $v0, $f4
    /* 10A074 800FB0C4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 10A078 800FB0C8 44988000 */  mtc1       $t8, $f16
    /* 10A07C 800FB0CC 468021A0 */  cvt.s.w    $f6, $f4
    /* 10A080 800FB0D0 44811800 */  mtc1       $at, $f3
    /* 10A084 800FB0D4 44801000 */  mtc1       $zero, $f2
    /* 10A088 800FB0D8 8FA30020 */  lw         $v1, 0x20($sp)
    /* 10A08C 800FB0DC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10A090 800FB0E0 468084A0 */  cvt.s.w    $f18, $f16
    /* 10A094 800FB0E4 C4700058 */  lwc1       $f16, 0x58($v1)
    /* 10A098 800FB0E8 46003221 */  cvt.d.s    $f8, $f6
    /* 10A09C 800FB0EC 46009121 */  cvt.d.s    $f4, $f18
    /* 10A0A0 800FB0F0 46224283 */  div.d      $f10, $f8, $f2
    /* 10A0A4 800FB0F4 460084A1 */  cvt.d.s    $f18, $f16
    /* 10A0A8 800FB0F8 46222183 */  div.d      $f6, $f4, $f2
    /* 10A0AC 800FB0FC 46265202 */  mul.d      $f8, $f10, $f6
    /* 10A0B0 800FB100 C46A0038 */  lwc1       $f10, 0x38($v1)
    /* 10A0B4 800FB104 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 10A0B8 800FB108 460051A1 */  cvt.d.s    $f6, $f10
    /* 10A0BC 800FB10C 46324102 */  mul.d      $f4, $f8, $f18
    /* 10A0C0 800FB110 46262400 */  add.d      $f16, $f4, $f6
    /* 10A0C4 800FB114 03E00008 */  jr         $ra
    /* 10A0C8 800FB118 46208020 */   cvt.s.d   $f0, $f16
endlabel func_800FB098_10A048
