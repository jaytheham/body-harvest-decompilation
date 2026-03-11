nonmatching func_8007BEC0_4C370, 0x104

glabel func_8007BEC0_4C370
    /* 4C370 8007BEC0 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 4C374 8007BEC4 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 4C378 8007BEC8 AFB10018 */  sw         $s1, 0x18($sp)
    /* 4C37C 8007BECC AFB50028 */  sw         $s5, 0x28($sp)
    /* 4C380 8007BED0 AFB40024 */  sw         $s4, 0x24($sp)
    /* 4C384 8007BED4 AFB30020 */  sw         $s3, 0x20($sp)
    /* 4C388 8007BED8 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 4C38C 8007BEDC AFB00014 */  sw         $s0, 0x14($sp)
    /* 4C390 8007BEE0 0C004D57 */  jal        func_8001355C_1415C
    /* 4C394 8007BEE4 2411004F */   addiu     $s1, $zero, 0x4F
    /* 4C398 8007BEE8 3C12800D */  lui        $s2, %hi(D_800D7962)
    /* 4C39C 8007BEEC 3C01800D */  lui        $at, %hi(D_800D7960)
    /* 4C3A0 8007BEF0 26527962 */  addiu      $s2, $s2, %lo(D_800D7962)
    /* 4C3A4 8007BEF4 A4207960 */  sh         $zero, %lo(D_800D7960)($at)
    /* 4C3A8 8007BEF8 240E0005 */  addiu      $t6, $zero, 0x5
    /* 4C3AC 8007BEFC 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* 4C3B0 8007BF00 A64E0000 */  sh         $t6, 0x0($s2)
    /* 4C3B4 8007BF04 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* 4C3B8 8007BF08 3C15B800 */  lui        $s5, (0xB8000000 >> 16)
    /* 4C3BC 8007BF0C 3C14E900 */  lui        $s4, (0xE9000000 >> 16)
    /* 4C3C0 8007BF10 2413000B */  addiu      $s3, $zero, 0xB
  .L8007BF14_4C3C4:
    /* 4C3C4 8007BF14 0C01E468 */  jal        func_800791A0_49650
    /* 4C3C8 8007BF18 24040001 */   addiu     $a0, $zero, 0x1
    /* 4C3CC 8007BF1C 0C01E9DD */  jal        func_8007A774_4AC24
    /* 4C3D0 8007BF20 00002025 */   or        $a0, $zero, $zero
    /* 4C3D4 8007BF24 864F0000 */  lh         $t7, 0x0($s2)
    /* 4C3D8 8007BF28 00002025 */  or         $a0, $zero, $zero
    /* 4C3DC 8007BF2C 526F0005 */  beql       $s3, $t7, .L8007BF44_4C3F4
    /* 4C3E0 8007BF30 00002025 */   or        $a0, $zero, $zero
    /* 4C3E4 8007BF34 0C000D61 */  jal        isButtonNewlyPressed
    /* 4C3E8 8007BF38 34059000 */   ori       $a1, $zero, 0x9000
    /* 4C3EC 8007BF3C 10400005 */  beqz       $v0, .L8007BF54_4C404
    /* 4C3F0 8007BF40 00002025 */   or        $a0, $zero, $zero
  .L8007BF44_4C3F4:
    /* 4C3F4 8007BF44 00002825 */  or         $a1, $zero, $zero
    /* 4C3F8 8007BF48 00003025 */  or         $a2, $zero, $zero
    /* 4C3FC 8007BF4C 0C0016BB */  jal        func_80005AEC_66EC
    /* 4C400 8007BF50 24070040 */   addiu     $a3, $zero, 0x40
  .L8007BF54_4C404:
    /* 4C404 8007BF54 2631FFFF */  addiu      $s1, $s1, -0x1
    /* 4C408 8007BF58 3238FFFF */  andi       $t8, $s1, 0xFFFF
    /* 4C40C 8007BF5C 0C0016E1 */  jal        func_80005B84_6784
    /* 4C410 8007BF60 03008825 */   or        $s1, $t8, $zero
    /* 4C414 8007BF64 8E020000 */  lw         $v0, 0x0($s0)
    /* 4C418 8007BF68 24590008 */  addiu      $t9, $v0, 0x8
    /* 4C41C 8007BF6C AE190000 */  sw         $t9, 0x0($s0)
    /* 4C420 8007BF70 AC400004 */  sw         $zero, 0x4($v0)
    /* 4C424 8007BF74 AC540000 */  sw         $s4, 0x0($v0)
    /* 4C428 8007BF78 8E020000 */  lw         $v0, 0x0($s0)
    /* 4C42C 8007BF7C 24480008 */  addiu      $t0, $v0, 0x8
    /* 4C430 8007BF80 AE080000 */  sw         $t0, 0x0($s0)
    /* 4C434 8007BF84 AC400004 */  sw         $zero, 0x4($v0)
    /* 4C438 8007BF88 0C001417 */  jal        func_8000505C_5C5C
    /* 4C43C 8007BF8C AC550000 */   sw        $s5, 0x0($v0)
    /* 4C440 8007BF90 0C0016CC */  jal        func_80005B30_6730
    /* 4C444 8007BF94 00000000 */   nop
    /* 4C448 8007BF98 1040FFDE */  beqz       $v0, .L8007BF14_4C3C4
    /* 4C44C 8007BF9C 00000000 */   nop
    /* 4C450 8007BFA0 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 4C454 8007BFA4 8FB00014 */  lw         $s0, 0x14($sp)
    /* 4C458 8007BFA8 8FB10018 */  lw         $s1, 0x18($sp)
    /* 4C45C 8007BFAC 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 4C460 8007BFB0 8FB30020 */  lw         $s3, 0x20($sp)
    /* 4C464 8007BFB4 8FB40024 */  lw         $s4, 0x24($sp)
    /* 4C468 8007BFB8 8FB50028 */  lw         $s5, 0x28($sp)
    /* 4C46C 8007BFBC 03E00008 */  jr         $ra
    /* 4C470 8007BFC0 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_8007BEC0_4C370
