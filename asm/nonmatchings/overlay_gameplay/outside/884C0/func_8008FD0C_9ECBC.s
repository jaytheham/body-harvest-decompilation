nonmatching func_8008FD0C_9ECBC, 0x10C

glabel func_8008FD0C_9ECBC
    /* 9ECBC 8008FD0C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 9ECC0 8008FD10 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 9ECC4 8008FD14 AFA40020 */  sw         $a0, 0x20($sp)
    /* 9ECC8 8008FD18 0C023F1E */  jal        func_8008FC78_9EC28
    /* 9ECCC 8008FD1C 93A40023 */   lbu       $a0, 0x23($sp)
    /* 9ECD0 8008FD20 93A40023 */  lbu        $a0, 0x23($sp)
    /* 9ECD4 8008FD24 0C023F1E */  jal        func_8008FC78_9EC28
    /* 9ECD8 8008FD28 A3A2001F */   sb        $v0, 0x1F($sp)
    /* 9ECDC 8008FD2C 93A5001F */  lbu        $a1, 0x1F($sp)
    /* 9ECE0 8008FD30 240800FF */  addiu      $t0, $zero, 0xFF
    /* 9ECE4 8008FD34 93A90023 */  lbu        $t1, 0x23($sp)
    /* 9ECE8 8008FD38 11050019 */  beq        $t0, $a1, .L8008FDA0_9ED50
    /* 9ECEC 8008FD3C 24070050 */   addiu     $a3, $zero, 0x50
    /* 9ECF0 8008FD40 00A70019 */  multu      $a1, $a3
    /* 9ECF4 8008FD44 3C068005 */  lui        $a2, %hi(alienInstances)
    /* 9ECF8 8008FD48 24C68198 */  addiu      $a2, $a2, %lo(alienInstances)
    /* 9ECFC 8008FD4C 240F0380 */  addiu      $t7, $zero, 0x380
    /* 9ED00 8008FD50 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 9ED04 8008FD54 240D0320 */  addiu      $t5, $zero, 0x320
    /* 9ED08 8008FD58 00007012 */  mflo       $t6
    /* 9ED0C 8008FD5C 00CE1821 */  addu       $v1, $a2, $t6
    /* 9ED10 8008FD60 A46F0012 */  sh         $t7, 0x12($v1)
    /* 9ED14 8008FD64 01270019 */  multu      $t1, $a3
    /* 9ED18 8008FD68 8C6B0020 */  lw         $t3, 0x20($v1)
    /* 9ED1C 8008FD6C 01616025 */  or         $t4, $t3, $at
    /* 9ED20 8008FD70 0000C012 */  mflo       $t8
    /* 9ED24 8008FD74 00D82021 */  addu       $a0, $a2, $t8
    /* 9ED28 8008FD78 90990026 */  lbu        $t9, 0x26($a0)
    /* 9ED2C 8008FD7C AC6C0020 */  sw         $t4, 0x20($v1)
    /* 9ED30 8008FD80 A46D0010 */  sh         $t5, 0x10($v1)
    /* 9ED34 8008FD84 272A0001 */  addiu      $t2, $t9, 0x1
    /* 9ED38 8008FD88 A06A0026 */  sb         $t2, 0x26($v1)
    /* 9ED3C 8008FD8C 848E0006 */  lh         $t6, 0x6($a0)
    /* 9ED40 8008FD90 A46E0006 */  sh         $t6, 0x6($v1)
    /* 9ED44 8008FD94 848F0006 */  lh         $t7, 0x6($a0)
    /* 9ED48 8008FD98 25F84000 */  addiu      $t8, $t7, 0x4000
    /* 9ED4C 8008FD9C A478000E */  sh         $t8, 0xE($v1)
  .L8008FDA0_9ED50:
    /* 9ED50 8008FDA0 3C068005 */  lui        $a2, %hi(alienInstances)
    /* 9ED54 8008FDA4 24C68198 */  addiu      $a2, $a2, %lo(alienInstances)
    /* 9ED58 8008FDA8 11020017 */  beq        $t0, $v0, .L8008FE08_9EDB8
    /* 9ED5C 8008FDAC 24070050 */   addiu     $a3, $zero, 0x50
    /* 9ED60 8008FDB0 00470019 */  multu      $v0, $a3
    /* 9ED64 8008FDB4 240A0380 */  addiu      $t2, $zero, 0x380
    /* 9ED68 8008FDB8 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 9ED6C 8008FDBC 24180320 */  addiu      $t8, $zero, 0x320
    /* 9ED70 8008FDC0 0000C812 */  mflo       $t9
    /* 9ED74 8008FDC4 00D91821 */  addu       $v1, $a2, $t9
    /* 9ED78 8008FDC8 A46A0012 */  sh         $t2, 0x12($v1)
    /* 9ED7C 8008FDCC 01270019 */  multu      $t1, $a3
    /* 9ED80 8008FDD0 8C6E0020 */  lw         $t6, 0x20($v1)
    /* 9ED84 8008FDD4 01C17825 */  or         $t7, $t6, $at
    /* 9ED88 8008FDD8 00005812 */  mflo       $t3
    /* 9ED8C 8008FDDC 00CB2021 */  addu       $a0, $a2, $t3
    /* 9ED90 8008FDE0 908C0026 */  lbu        $t4, 0x26($a0)
    /* 9ED94 8008FDE4 AC6F0020 */  sw         $t7, 0x20($v1)
    /* 9ED98 8008FDE8 A4780010 */  sh         $t8, 0x10($v1)
    /* 9ED9C 8008FDEC 258D0001 */  addiu      $t5, $t4, 0x1
    /* 9EDA0 8008FDF0 A06D0026 */  sb         $t5, 0x26($v1)
    /* 9EDA4 8008FDF4 84990006 */  lh         $t9, 0x6($a0)
    /* 9EDA8 8008FDF8 A4790006 */  sh         $t9, 0x6($v1)
    /* 9EDAC 8008FDFC 848A0006 */  lh         $t2, 0x6($a0)
    /* 9EDB0 8008FE00 254BC000 */  addiu      $t3, $t2, -0x4000
    /* 9EDB4 8008FE04 A46B000E */  sh         $t3, 0xE($v1)
  .L8008FE08_9EDB8:
    /* 9EDB8 8008FE08 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 9EDBC 8008FE0C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 9EDC0 8008FE10 03E00008 */  jr         $ra
    /* 9EDC4 8008FE14 00000000 */   nop
endlabel func_8008FD0C_9ECBC
