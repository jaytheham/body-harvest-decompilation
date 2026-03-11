nonmatching func_800CBDE0_DAD90, 0xB8

glabel func_800CBDE0_DAD90
    /* DAD90 800CBDE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* DAD94 800CBDE4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* DAD98 800CBDE8 AFA40018 */  sw         $a0, 0x18($sp)
    /* DAD9C 800CBDEC AFA5001C */  sw         $a1, 0x1C($sp)
    /* DADA0 800CBDF0 AFA60020 */  sw         $a2, 0x20($sp)
    /* DADA4 800CBDF4 AFA70024 */  sw         $a3, 0x24($sp)
    /* DADA8 800CBDF8 24050001 */  addiu      $a1, $zero, 0x1
    /* DADAC 800CBDFC 0C0305ED */  jal        func_800C17B4_D0764
    /* DADB0 800CBE00 24040005 */   addiu     $a0, $zero, 0x5
    /* DADB4 800CBE04 2401FFFD */  addiu      $at, $zero, -0x3
    /* DADB8 800CBE08 1041001F */  beq        $v0, $at, .L800CBE88_DAE38
    /* DADBC 800CBE0C 3C048014 */   lui       $a0, %hi(D_8013DF80)
    /* DADC0 800CBE10 000270C0 */  sll        $t6, $v0, 3
    /* DADC4 800CBE14 01C27023 */  subu       $t6, $t6, $v0
    /* DADC8 800CBE18 3C0F8015 */  lui        $t7, %hi(D_80154318)
    /* DADCC 800CBE1C 25EF4318 */  addiu      $t7, $t7, %lo(D_80154318)
    /* DADD0 800CBE20 000E7080 */  sll        $t6, $t6, 2
    /* DADD4 800CBE24 01CF1821 */  addu       $v1, $t6, $t7
    /* DADD8 800CBE28 2484DF80 */  addiu      $a0, $a0, %lo(D_8013DF80)
    /* DADDC 800CBE2C 93A50037 */  lbu        $a1, 0x37($sp)
    /* DADE0 800CBE30 87B8001A */  lh         $t8, 0x1A($sp)
    /* DADE4 800CBE34 87B9001E */  lh         $t9, 0x1E($sp)
    /* DADE8 800CBE38 87A80022 */  lh         $t0, 0x22($sp)
    /* DADEC 800CBE3C 87A90026 */  lh         $t1, 0x26($sp)
    /* DADF0 800CBE40 908A0000 */  lbu        $t2, 0x0($a0)
    /* DADF4 800CBE44 908B0001 */  lbu        $t3, 0x1($a0)
    /* DADF8 800CBE48 908C0002 */  lbu        $t4, 0x2($a0)
    /* DADFC 800CBE4C A0600011 */  sb         $zero, 0x11($v1)
    /* DAE00 800CBE50 A0600012 */  sb         $zero, 0x12($v1)
    /* DAE04 800CBE54 A0650014 */  sb         $a1, 0x14($v1)
    /* DAE08 800CBE58 A4780002 */  sh         $t8, 0x2($v1)
    /* DAE0C 800CBE5C A4790008 */  sh         $t9, 0x8($v1)
    /* DAE10 800CBE60 A468000A */  sh         $t0, 0xA($v1)
    /* DAE14 800CBE64 A469000C */  sh         $t1, 0xC($v1)
    /* DAE18 800CBE68 A06A000E */  sb         $t2, 0xE($v1)
    /* DAE1C 800CBE6C A06B000F */  sb         $t3, 0xF($v1)
    /* DAE20 800CBE70 14A00003 */  bnez       $a1, .L800CBE80_DAE30
    /* DAE24 800CBE74 A06C0010 */   sb        $t4, 0x10($v1)
    /* DAE28 800CBE78 10000003 */  b          .L800CBE88_DAE38
    /* DAE2C 800CBE7C A0600013 */   sb        $zero, 0x13($v1)
  .L800CBE80_DAE30:
    /* DAE30 800CBE80 240D0018 */  addiu      $t5, $zero, 0x18
    /* DAE34 800CBE84 A06D0013 */  sb         $t5, 0x13($v1)
  .L800CBE88_DAE38:
    /* DAE38 800CBE88 8FBF0014 */  lw         $ra, 0x14($sp)
    /* DAE3C 800CBE8C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* DAE40 800CBE90 03E00008 */  jr         $ra
    /* DAE44 800CBE94 00000000 */   nop
endlabel func_800CBDE0_DAD90
