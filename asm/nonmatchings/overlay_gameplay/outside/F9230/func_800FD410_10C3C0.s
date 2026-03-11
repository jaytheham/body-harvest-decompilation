nonmatching func_800FD410_10C3C0, 0xC4

glabel func_800FD410_10C3C0
    /* 10C3C0 800FD410 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10C3C4 800FD414 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10C3C8 800FD418 AFA40018 */  sw         $a0, 0x18($sp)
    /* 10C3CC 800FD41C 90820058 */  lbu        $v0, 0x58($a0)
    /* 10C3D0 800FD420 24010001 */  addiu      $at, $zero, 0x1
    /* 10C3D4 800FD424 10410009 */  beq        $v0, $at, .L800FD44C_10C3FC
    /* 10C3D8 800FD428 24010003 */   addiu     $at, $zero, 0x3
    /* 10C3DC 800FD42C 1041000B */  beq        $v0, $at, .L800FD45C_10C40C
    /* 10C3E0 800FD430 24010005 */   addiu     $at, $zero, 0x5
    /* 10C3E4 800FD434 1041000D */  beq        $v0, $at, .L800FD46C_10C41C
    /* 10C3E8 800FD438 24010007 */   addiu     $at, $zero, 0x7
    /* 10C3EC 800FD43C 1041000F */  beq        $v0, $at, .L800FD47C_10C42C
    /* 10C3F0 800FD440 00000000 */   nop
    /* 10C3F4 800FD444 1000000F */  b          .L800FD484_10C434
    /* 10C3F8 800FD448 00000000 */   nop
  .L800FD44C_10C3FC:
    /* 10C3FC 800FD44C 0C03F4AB */  jal        func_800FD2AC_10C25C
    /* 10C400 800FD450 00000000 */   nop
    /* 10C404 800FD454 1000000B */  b          .L800FD484_10C434
    /* 10C408 800FD458 00000000 */   nop
  .L800FD45C_10C40C:
    /* 10C40C 800FD45C 0C03F4BE */  jal        func_800FD2F8_10C2A8
    /* 10C410 800FD460 00000000 */   nop
    /* 10C414 800FD464 10000007 */  b          .L800FD484_10C434
    /* 10C418 800FD468 00000000 */   nop
  .L800FD46C_10C41C:
    /* 10C41C 800FD46C 0C03F4E4 */  jal        func_800FD390_10C340
    /* 10C420 800FD470 00000000 */   nop
    /* 10C424 800FD474 10000003 */  b          .L800FD484_10C434
    /* 10C428 800FD478 00000000 */   nop
  .L800FD47C_10C42C:
    /* 10C42C 800FD47C 0C03F4D1 */  jal        func_800FD344_10C2F4
    /* 10C430 800FD480 00000000 */   nop
  .L800FD484_10C434:
    /* 10C434 800FD484 3C0F8004 */  lui        $t7, %hi(currentLevel)
    /* 10C438 800FD488 8DEF7F90 */  lw         $t7, %lo(currentLevel)($t7)
    /* 10C43C 800FD48C 24010002 */  addiu      $at, $zero, 0x2
    /* 10C440 800FD490 8FB80018 */  lw         $t8, 0x18($sp)
    /* 10C444 800FD494 15E1000B */  bne        $t7, $at, .L800FD4C4_10C474
    /* 10C448 800FD498 3C198025 */   lui       $t9, %hi(vehicleSpecs)
    /* 10C44C 800FD49C 27397A00 */  addiu      $t9, $t9, %lo(vehicleSpecs)
    /* 10C450 800FD4A0 03194023 */  subu       $t0, $t8, $t9
    /* 10C454 800FD4A4 24010070 */  addiu      $at, $zero, 0x70
    /* 10C458 800FD4A8 0101001A */  div        $zero, $t0, $at
    /* 10C45C 800FD4AC 00004812 */  mflo       $t1
    /* 10C460 800FD4B0 24010007 */  addiu      $at, $zero, 0x7
    /* 10C464 800FD4B4 15210003 */  bne        $t1, $at, .L800FD4C4_10C474
    /* 10C468 800FD4B8 240AF04C */   addiu     $t2, $zero, -0xFB4
    /* 10C46C 800FD4BC 3C018016 */  lui        $at, %hi(D_80159318)
    /* 10C470 800FD4C0 A42A9318 */  sh         $t2, %lo(D_80159318)($at)
  .L800FD4C4_10C474:
    /* 10C474 800FD4C4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10C478 800FD4C8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10C47C 800FD4CC 03E00008 */  jr         $ra
    /* 10C480 800FD4D0 00000000 */   nop
endlabel func_800FD410_10C3C0
