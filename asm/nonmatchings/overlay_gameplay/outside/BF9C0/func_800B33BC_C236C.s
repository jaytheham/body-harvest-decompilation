nonmatching func_800B33BC_C236C, 0xA0

glabel func_800B33BC_C236C
    /* C236C 800B33BC 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* C2370 800B33C0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* C2374 800B33C4 3C018014 */  lui        $at, %hi(D_80142E20)
    /* C2378 800B33C8 AFA40028 */  sw         $a0, 0x28($sp)
    /* C237C 800B33CC 0C0079EC */  jal        __cosf
    /* C2380 800B33D0 C42C2E20 */   lwc1      $f12, %lo(D_80142E20)($at)
    /* C2384 800B33D4 3C018014 */  lui        $at, %hi(D_80142E24)
    /* C2388 800B33D8 C42C2E24 */  lwc1       $f12, %lo(D_80142E24)($at)
    /* C238C 800B33DC 0C00797C */  jal        sinf
    /* C2390 800B33E0 E7A0001C */   swc1      $f0, 0x1C($sp)
    /* C2394 800B33E4 E7A00020 */  swc1       $f0, 0x20($sp)
    /* C2398 800B33E8 0C007654 */  jal        coss
    /* C239C 800B33EC 97A4002A */   lhu       $a0, 0x2A($sp)
    /* C23A0 800B33F0 C7A40020 */  lwc1       $f4, 0x20($sp)
    /* C23A4 800B33F4 C7A6001C */  lwc1       $f6, 0x1C($sp)
    /* C23A8 800B33F8 44828000 */  mtc1       $v0, $f16
    /* C23AC 800B33FC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* C23B0 800B3400 46062203 */  div.s      $f8, $f4, $f6
    /* C23B4 800B3404 44803000 */  mtc1       $zero, $f6
    /* C23B8 800B3408 44813800 */  mtc1       $at, $f7
    /* C23BC 800B340C 468084A0 */  cvt.s.w    $f18, $f16
    /* C23C0 800B3410 46009121 */  cvt.d.s    $f4, $f18
    /* C23C4 800B3414 460042A1 */  cvt.d.s    $f10, $f8
    /* C23C8 800B3418 46262203 */  div.d      $f8, $f4, $f6
    /* C23CC 800B341C 46285403 */  div.d      $f16, $f10, $f8
    /* C23D0 800B3420 0C000DD0 */  jal        func_80003740_4340
    /* C23D4 800B3424 46208320 */   cvt.s.d   $f12, $f16
    /* C23D8 800B3428 87AF002A */  lh         $t7, 0x2A($sp)
    /* C23DC 800B342C 3C038015 */  lui        $v1, %hi(D_8014FD2A)
    /* C23E0 800B3430 2463FD2A */  addiu      $v1, $v1, %lo(D_8014FD2A)
    /* C23E4 800B3434 00027040 */  sll        $t6, $v0, 1
    /* C23E8 800B3438 29E12E39 */  slti       $at, $t7, 0x2E39
    /* C23EC 800B343C 14200003 */  bnez       $at, .L800B344C_C23FC
    /* C23F0 800B3440 A46E0000 */   sh        $t6, 0x0($v1)
    /* C23F4 800B3444 34188000 */  ori        $t8, $zero, 0x8000
    /* C23F8 800B3448 A4780000 */  sh         $t8, 0x0($v1)
  .L800B344C_C23FC:
    /* C23FC 800B344C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* C2400 800B3450 27BD0028 */  addiu      $sp, $sp, 0x28
    /* C2404 800B3454 03E00008 */  jr         $ra
    /* C2408 800B3458 00000000 */   nop
endlabel func_800B33BC_C236C
