nonmatching func_802D4CD0_254410, 0x104

glabel func_802D4CD0_254410
    /* 254410 802D4CD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 254414 802D4CD4 28810014 */  slti       $at, $a0, 0x14
    /* 254418 802D4CD8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 25441C 802D4CDC 10200009 */  beqz       $at, .L802D4D04_254444
    /* 254420 802D4CE0 AFA5001C */   sw        $a1, 0x1C($sp)
    /* 254424 802D4CE4 00047080 */  sll        $t6, $a0, 2
    /* 254428 802D4CE8 3C19802E */  lui        $t9, %hi(D_802DF350)
    /* 25442C 802D4CEC 032EC821 */  addu       $t9, $t9, $t6
    /* 254430 802D4CF0 8F39F350 */  lw         $t9, %lo(D_802DF350)($t9)
    /* 254434 802D4CF4 0320F809 */  jalr       $t9
    /* 254438 802D4CF8 00000000 */   nop
    /* 25443C 802D4CFC 10000032 */  b          .L802D4DC8_254508
    /* 254440 802D4D00 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D04_254444:
    /* 254444 802D4D04 24010014 */  addiu      $at, $zero, 0x14
    /* 254448 802D4D08 10810010 */  beq        $a0, $at, .L802D4D4C_25448C
    /* 25444C 802D4D0C 24050013 */   addiu     $a1, $zero, 0x13
    /* 254450 802D4D10 24010015 */  addiu      $at, $zero, 0x15
    /* 254454 802D4D14 10810013 */  beq        $a0, $at, .L802D4D64_2544A4
    /* 254458 802D4D18 24050010 */   addiu     $a1, $zero, 0x10
    /* 25445C 802D4D1C 2401001A */  addiu      $at, $zero, 0x1A
    /* 254460 802D4D20 10810016 */  beq        $a0, $at, .L802D4D7C_2544BC
    /* 254464 802D4D24 24050012 */   addiu     $a1, $zero, 0x12
    /* 254468 802D4D28 2401001C */  addiu      $at, $zero, 0x1C
    /* 25446C 802D4D2C 1081001B */  beq        $a0, $at, .L802D4D9C_2544DC
    /* 254470 802D4D30 24010044 */   addiu     $at, $zero, 0x44
    /* 254474 802D4D34 10810021 */  beq        $a0, $at, .L802D4DBC_2544FC
    /* 254478 802D4D38 24010045 */   addiu     $at, $zero, 0x45
    /* 25447C 802D4D3C 1081001B */  beq        $a0, $at, .L802D4DAC_2544EC
    /* 254480 802D4D40 00000000 */   nop
    /* 254484 802D4D44 10000020 */  b          .L802D4DC8_254508
    /* 254488 802D4D48 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D4C_25448C:
    /* 25448C 802D4D4C 3C04800F */  lui        $a0, %hi(func_800F1134_1000E4)
    /* 254490 802D4D50 24841134 */  addiu      $a0, $a0, %lo(func_800F1134_1000E4)
    /* 254494 802D4D54 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 254498 802D4D58 00003025 */   or        $a2, $zero, $zero
    /* 25449C 802D4D5C 1000001A */  b          .L802D4DC8_254508
    /* 2544A0 802D4D60 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D64_2544A4:
    /* 2544A4 802D4D64 3C04800F */  lui        $a0, %hi(func_800F1DDC_100D8C)
    /* 2544A8 802D4D68 24841DDC */  addiu      $a0, $a0, %lo(func_800F1DDC_100D8C)
    /* 2544AC 802D4D6C 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 2544B0 802D4D70 24060001 */   addiu     $a2, $zero, 0x1
    /* 2544B4 802D4D74 10000014 */  b          .L802D4DC8_254508
    /* 2544B8 802D4D78 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D7C_2544BC:
    /* 2544BC 802D4D7C 3C018015 */  lui        $at, %hi(D_801493E0)
    /* 2544C0 802D4D80 3C04802D */  lui        $a0, %hi(func_802D563C_254D7C)
    /* 2544C4 802D4D84 A42093E0 */  sh         $zero, %lo(D_801493E0)($at)
    /* 2544C8 802D4D88 2484563C */  addiu      $a0, $a0, %lo(func_802D563C_254D7C)
    /* 2544CC 802D4D8C 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 2544D0 802D4D90 00003025 */   or        $a2, $zero, $zero
    /* 2544D4 802D4D94 1000000C */  b          .L802D4DC8_254508
    /* 2544D8 802D4D98 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D9C_2544DC:
    /* 2544DC 802D4D9C 0C0B5444 */  jal        func_802D5110_254850
    /* 2544E0 802D4DA0 00000000 */   nop
    /* 2544E4 802D4DA4 10000008 */  b          .L802D4DC8_254508
    /* 2544E8 802D4DA8 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4DAC_2544EC:
    /* 2544EC 802D4DAC 0C0B539C */  jal        func_802D4E70_2545B0
    /* 2544F0 802D4DB0 00000000 */   nop
    /* 2544F4 802D4DB4 10000004 */  b          .L802D4DC8_254508
    /* 2544F8 802D4DB8 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4DBC_2544FC:
    /* 2544FC 802D4DBC 0C001DA4 */  jal        func_80007690_8290
    /* 254500 802D4DC0 00000000 */   nop
    /* 254504 802D4DC4 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D4DC8_254508:
    /* 254508 802D4DC8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 25450C 802D4DCC 03E00008 */  jr         $ra
    /* 254510 802D4DD0 00000000 */   nop
endlabel func_802D4CD0_254410
