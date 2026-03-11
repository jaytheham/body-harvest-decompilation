nonmatching func_8008DFA0_5E450, 0x1B8

glabel func_8008DFA0_5E450
    /* 5E450 8008DFA0 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 5E454 8008DFA4 AFB20024 */  sw         $s2, 0x24($sp)
    /* 5E458 8008DFA8 3C12800E */  lui        $s2, %hi(D_800E1D68)
    /* 5E45C 8008DFAC 92521D68 */  lbu        $s2, %lo(D_800E1D68)($s2)
    /* 5E460 8008DFB0 AFB0001C */  sw         $s0, 0x1C($sp)
    /* 5E464 8008DFB4 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 5E468 8008DFB8 AFB70038 */  sw         $s7, 0x38($sp)
    /* 5E46C 8008DFBC AFB60034 */  sw         $s6, 0x34($sp)
    /* 5E470 8008DFC0 AFB50030 */  sw         $s5, 0x30($sp)
    /* 5E474 8008DFC4 AFB4002C */  sw         $s4, 0x2C($sp)
    /* 5E478 8008DFC8 AFB30028 */  sw         $s3, 0x28($sp)
    /* 5E47C 8008DFCC AFB10020 */  sw         $s1, 0x20($sp)
    /* 5E480 8008DFD0 00008025 */  or         $s0, $zero, $zero
    /* 5E484 8008DFD4 1A400055 */  blez       $s2, .L8008E12C_5E5DC
    /* 5E488 8008DFD8 02401825 */   or        $v1, $s2, $zero
    /* 5E48C 8008DFDC 3C17800B */  lui        $s7, %hi(D_800AA694)
    /* 5E490 8008DFE0 3C14800E */  lui        $s4, %hi(D_800E1980)
    /* 5E494 8008DFE4 26941980 */  addiu      $s4, $s4, %lo(D_800E1980)
    /* 5E498 8008DFE8 26F7A694 */  addiu      $s7, $s7, %lo(D_800AA694)
    /* 5E49C 8008DFEC 2416FFFC */  addiu      $s6, $zero, -0x4
    /* 5E4A0 8008DFF0 24150014 */  addiu      $s5, $zero, 0x14
    /* 5E4A4 8008DFF4 2413000D */  addiu      $s3, $zero, 0xD
    /* 5E4A8 8008DFF8 2411000A */  addiu      $s1, $zero, 0xA
  .L8008DFFC_5E4AC:
    /* 5E4AC 8008DFFC 02150019 */  multu      $s0, $s5
    /* 5E4B0 8008E000 00007012 */  mflo       $t6
    /* 5E4B4 8008E004 028E1021 */  addu       $v0, $s4, $t6
    /* 5E4B8 8008E008 8448000A */  lh         $t0, 0xA($v0)
    /* 5E4BC 8008E00C 51000044 */  beql       $t0, $zero, .L8008E120_5E5D0
    /* 5E4C0 8008E010 26100001 */   addiu     $s0, $s0, 0x1
    /* 5E4C4 8008E014 9043000F */  lbu        $v1, 0xF($v0)
    /* 5E4C8 8008E018 1460003C */  bnez       $v1, .L8008E10C_5E5BC
    /* 5E4CC 8008E01C 246AFFFF */   addiu     $t2, $v1, -0x1
    /* 5E4D0 8008E020 9044000C */  lbu        $a0, 0xC($v0)
    /* 5E4D4 8008E024 16640005 */  bne        $s3, $a0, .L8008E03C_5E4EC
    /* 5E4D8 8008E028 00801825 */   or        $v1, $a0, $zero
    /* 5E4DC 8008E02C 904F000E */  lbu        $t7, 0xE($v0)
    /* 5E4E0 8008E030 29E10007 */  slti       $at, $t7, 0x7
    /* 5E4E4 8008E034 54200014 */  bnel       $at, $zero, .L8008E088_5E538
    /* 5E4E8 8008E038 904F000E */   lbu       $t7, 0xE($v0)
  .L8008E03C_5E4EC:
    /* 5E4EC 8008E03C 16230008 */  bne        $s1, $v1, .L8008E060_5E510
    /* 5E4F0 8008E040 00000000 */   nop
    /* 5E4F4 8008E044 80590012 */  lb         $t9, 0x12($v0)
    /* 5E4F8 8008E048 9058000D */  lbu        $t8, 0xD($v0)
    /* 5E4FC 8008E04C 03360019 */  multu      $t9, $s6
    /* 5E500 8008E050 00004812 */  mflo       $t1
    /* 5E504 8008E054 0309082A */  slt        $at, $t8, $t1
    /* 5E508 8008E058 5420000B */  bnel       $at, $zero, .L8008E088_5E538
    /* 5E50C 8008E05C 904F000E */   lbu       $t7, 0xE($v0)
  .L8008E060_5E510:
    /* 5E510 8008E060 1223001F */  beq        $s1, $v1, .L8008E0E0_5E590
    /* 5E514 8008E064 00000000 */   nop
    /* 5E518 8008E068 1263001D */  beq        $s3, $v1, .L8008E0E0_5E590
    /* 5E51C 8008E06C 00000000 */   nop
    /* 5E520 8008E070 804A0012 */  lb         $t2, 0x12($v0)
    /* 5E524 8008E074 904B000D */  lbu        $t3, 0xD($v0)
    /* 5E528 8008E078 014B082A */  slt        $at, $t2, $t3
    /* 5E52C 8008E07C 10200018 */  beqz       $at, .L8008E0E0_5E590
    /* 5E530 8008E080 00000000 */   nop
    /* 5E534 8008E084 904F000E */  lbu        $t7, 0xE($v0)
  .L8008E088_5E538:
    /* 5E538 8008E088 000448C0 */  sll        $t1, $a0, 3
    /* 5E53C 8008E08C 02E95021 */  addu       $t2, $s7, $t1
    /* 5E540 8008E090 904C000D */  lbu        $t4, 0xD($v0)
    /* 5E544 8008E094 804D0012 */  lb         $t5, 0x12($v0)
    /* 5E548 8008E098 814B0000 */  lb         $t3, 0x0($t2)
    /* 5E54C 8008E09C 25F90001 */  addiu      $t9, $t7, 0x1
    /* 5E550 8008E0A0 333800FF */  andi       $t8, $t9, 0xFF
    /* 5E554 8008E0A4 018D7023 */  subu       $t6, $t4, $t5
    /* 5E558 8008E0A8 030B082A */  slt        $at, $t8, $t3
    /* 5E55C 8008E0AC A04E000D */  sb         $t6, 0xD($v0)
    /* 5E560 8008E0B0 14200002 */  bnez       $at, .L8008E0BC_5E56C
    /* 5E564 8008E0B4 A059000E */   sb        $t9, 0xE($v0)
    /* 5E568 8008E0B8 A040000E */  sb         $zero, 0xE($v0)
  .L8008E0BC_5E56C:
    /* 5E56C 8008E0BC 844C000A */  lh         $t4, 0xA($v0)
    /* 5E570 8008E0C0 804D0010 */  lb         $t5, 0x10($v0)
    /* 5E574 8008E0C4 844F0002 */  lh         $t7, 0x2($v0)
    /* 5E578 8008E0C8 80590011 */  lb         $t9, 0x11($v0)
    /* 5E57C 8008E0CC 018D7021 */  addu       $t6, $t4, $t5
    /* 5E580 8008E0D0 A44E000A */  sh         $t6, 0xA($v0)
    /* 5E584 8008E0D4 01F94821 */  addu       $t1, $t7, $t9
    /* 5E588 8008E0D8 1000000D */  b          .L8008E110_5E5C0
    /* 5E58C 8008E0DC A4490002 */   sh        $t1, 0x2($v0)
  .L8008E0E0_5E590:
    /* 5E590 8008E0E0 16230006 */  bne        $s1, $v1, .L8008E0FC_5E5AC
    /* 5E594 8008E0E4 2407000B */   addiu     $a3, $zero, 0xB
    /* 5E598 8008E0E8 84440000 */  lh         $a0, 0x0($v0)
    /* 5E59C 8008E0EC 84450002 */  lh         $a1, 0x2($v0)
    /* 5E5A0 8008E0F0 84460004 */  lh         $a2, 0x4($v0)
    /* 5E5A4 8008E0F4 0C02370D */  jal        func_8008DC34_5E0E4
    /* 5E5A8 8008E0F8 AFA80010 */   sw        $t0, 0x10($sp)
  .L8008E0FC_5E5AC:
    /* 5E5AC 8008E0FC 0C0237D0 */  jal        func_8008DF40_5E3F0
    /* 5E5B0 8008E100 320400FF */   andi      $a0, $s0, 0xFF
    /* 5E5B4 8008E104 10000003 */  b          .L8008E114_5E5C4
    /* 5E5B8 8008E108 2652FFFF */   addiu     $s2, $s2, -0x1
  .L8008E10C_5E5BC:
    /* 5E5BC 8008E10C A04A000F */  sb         $t2, 0xF($v0)
  .L8008E110_5E5C0:
    /* 5E5C0 8008E110 2652FFFF */  addiu      $s2, $s2, -0x1
  .L8008E114_5E5C4:
    /* 5E5C4 8008E114 324300FF */  andi       $v1, $s2, 0xFF
    /* 5E5C8 8008E118 00609025 */  or         $s2, $v1, $zero
    /* 5E5CC 8008E11C 26100001 */  addiu      $s0, $s0, 0x1
  .L8008E120_5E5D0:
    /* 5E5D0 8008E120 320B00FF */  andi       $t3, $s0, 0xFF
    /* 5E5D4 8008E124 1C60FFB5 */  bgtz       $v1, .L8008DFFC_5E4AC
    /* 5E5D8 8008E128 01608025 */   or        $s0, $t3, $zero
  .L8008E12C_5E5DC:
    /* 5E5DC 8008E12C 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 5E5E0 8008E130 8FB0001C */  lw         $s0, 0x1C($sp)
    /* 5E5E4 8008E134 8FB10020 */  lw         $s1, 0x20($sp)
    /* 5E5E8 8008E138 8FB20024 */  lw         $s2, 0x24($sp)
    /* 5E5EC 8008E13C 8FB30028 */  lw         $s3, 0x28($sp)
    /* 5E5F0 8008E140 8FB4002C */  lw         $s4, 0x2C($sp)
    /* 5E5F4 8008E144 8FB50030 */  lw         $s5, 0x30($sp)
    /* 5E5F8 8008E148 8FB60034 */  lw         $s6, 0x34($sp)
    /* 5E5FC 8008E14C 8FB70038 */  lw         $s7, 0x38($sp)
    /* 5E600 8008E150 03E00008 */  jr         $ra
    /* 5E604 8008E154 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_8008DFA0_5E450
