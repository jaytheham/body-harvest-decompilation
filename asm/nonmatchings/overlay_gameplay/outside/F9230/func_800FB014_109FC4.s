nonmatching func_800FB014_109FC4, 0x84

glabel func_800FB014_109FC4
    /* 109FC4 800FB014 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 109FC8 800FB018 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 109FCC 800FB01C AFA40020 */  sw         $a0, 0x20($sp)
    /* 109FD0 800FB020 0C007654 */  jal        coss
    /* 109FD4 800FB024 9484000E */   lhu       $a0, 0xE($a0)
    /* 109FD8 800FB028 8FAF0020 */  lw         $t7, 0x20($sp)
    /* 109FDC 800FB02C A7A2001E */  sh         $v0, 0x1E($sp)
    /* 109FE0 800FB030 0C007654 */  jal        coss
    /* 109FE4 800FB034 95E40010 */   lhu       $a0, 0x10($t7)
    /* 109FE8 800FB038 87B8001E */  lh         $t8, 0x1E($sp)
    /* 109FEC 800FB03C 44822000 */  mtc1       $v0, $f4
    /* 109FF0 800FB040 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 109FF4 800FB044 44988000 */  mtc1       $t8, $f16
    /* 109FF8 800FB048 468021A0 */  cvt.s.w    $f6, $f4
    /* 109FFC 800FB04C 44811800 */  mtc1       $at, $f3
    /* 10A000 800FB050 44801000 */  mtc1       $zero, $f2
    /* 10A004 800FB054 8FA30020 */  lw         $v1, 0x20($sp)
    /* 10A008 800FB058 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10A00C 800FB05C 468084A0 */  cvt.s.w    $f18, $f16
    /* 10A010 800FB060 C4700058 */  lwc1       $f16, 0x58($v1)
    /* 10A014 800FB064 46003221 */  cvt.d.s    $f8, $f6
    /* 10A018 800FB068 46009121 */  cvt.d.s    $f4, $f18
    /* 10A01C 800FB06C 46224283 */  div.d      $f10, $f8, $f2
    /* 10A020 800FB070 460084A1 */  cvt.d.s    $f18, $f16
    /* 10A024 800FB074 46222183 */  div.d      $f6, $f4, $f2
    /* 10A028 800FB078 46265202 */  mul.d      $f8, $f10, $f6
    /* 10A02C 800FB07C C46A0030 */  lwc1       $f10, 0x30($v1)
    /* 10A030 800FB080 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 10A034 800FB084 460051A1 */  cvt.d.s    $f6, $f10
    /* 10A038 800FB088 46324102 */  mul.d      $f4, $f8, $f18
    /* 10A03C 800FB08C 46262400 */  add.d      $f16, $f4, $f6
    /* 10A040 800FB090 03E00008 */  jr         $ra
    /* 10A044 800FB094 46208020 */   cvt.s.d   $f0, $f16
endlabel func_800FB014_109FC4
