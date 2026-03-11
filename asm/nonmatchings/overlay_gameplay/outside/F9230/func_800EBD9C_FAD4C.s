nonmatching func_800EBD9C_FAD4C, 0xD8

glabel func_800EBD9C_FAD4C
    /* FAD4C 800EBD9C 3C098005 */  lui        $t1, %hi(D_80048188)
    /* FAD50 800EBDA0 25298188 */  addiu      $t1, $t1, %lo(D_80048188)
    /* FAD54 800EBDA4 8D2F0000 */  lw         $t7, 0x0($t1)
    /* FAD58 800EBDA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* FAD5C 800EBDAC 00063C00 */  sll        $a3, $a2, 16
    /* FAD60 800EBDB0 00077403 */  sra        $t6, $a3, 16
    /* FAD64 800EBDB4 01C03825 */  or         $a3, $t6, $zero
    /* FAD68 800EBDB8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* FAD6C 800EBDBC AFA40018 */  sw         $a0, 0x18($sp)
    /* FAD70 800EBDC0 AFA5001C */  sw         $a1, 0x1C($sp)
    /* FAD74 800EBDC4 15E00027 */  bnez       $t7, .L800EBE64_FAE14
    /* FAD78 800EBDC8 AFA60020 */   sw        $a2, 0x20($sp)
    /* FAD7C 800EBDCC 3C028015 */  lui        $v0, %hi(D_801575E0)
    /* FAD80 800EBDD0 244275E0 */  addiu      $v0, $v0, %lo(D_801575E0)
    /* FAD84 800EBDD4 44800000 */  mtc1       $zero, $f0
    /* FAD88 800EBDD8 87B8001A */  lh         $t8, 0x1A($sp)
    /* FAD8C 800EBDDC 87B9001E */  lh         $t9, 0x1E($sp)
    /* FAD90 800EBDE0 3C088015 */  lui        $t0, %hi(D_80157600)
    /* FAD94 800EBDE4 25087600 */  addiu      $t0, $t0, %lo(D_80157600)
    /* FAD98 800EBDE8 24030001 */  addiu      $v1, $zero, 0x1
    /* FAD9C 800EBDEC 3C048014 */  lui        $a0, %hi(D_80144330)
    /* FADA0 800EBDF0 AD230000 */  sw         $v1, 0x0($t1)
    /* FADA4 800EBDF4 A4430000 */  sh         $v1, 0x0($v0)
    /* FADA8 800EBDF8 A4400004 */  sh         $zero, 0x4($v0)
    /* FADAC 800EBDFC A44E000E */  sh         $t6, 0xE($v0)
    /* FADB0 800EBE00 24844330 */  addiu      $a0, $a0, %lo(D_80144330)
    /* FADB4 800EBE04 87A5001A */  lh         $a1, 0x1A($sp)
    /* FADB8 800EBE08 87A6001E */  lh         $a2, 0x1E($sp)
    /* FADBC 800EBE0C A4580006 */  sh         $t8, 0x6($v0)
    /* FADC0 800EBE10 E5000008 */  swc1       $f0, 0x8($t0)
    /* FADC4 800EBE14 E5000010 */  swc1       $f0, 0x10($t0)
    /* FADC8 800EBE18 0C00731B */  jal        osSyncPrintf
    /* FADCC 800EBE1C A459000A */   sh        $t9, 0xA($v0)
    /* FADD0 800EBE20 3C014311 */  lui        $at, (0x43110000 >> 16)
    /* FADD4 800EBE24 3C0B8022 */  lui        $t3, %hi(D_80222A70)
    /* FADD8 800EBE28 44812000 */  mtc1       $at, $f4
    /* FADDC 800EBE2C 8D6B2A70 */  lw         $t3, %lo(D_80222A70)($t3)
    /* FADE0 800EBE30 87AA001E */  lh         $t2, 0x1E($sp)
    /* FADE4 800EBE34 3C018015 */  lui        $at, %hi(D_8015760C)
    /* FADE8 800EBE38 E424760C */  swc1       $f4, %lo(D_8015760C)($at)
    /* FADEC 800EBE3C 256CFFDC */  addiu      $t4, $t3, -0x24
    /* FADF0 800EBE40 018A082A */  slt        $at, $t4, $t2
    /* FADF4 800EBE44 14200005 */  bnez       $at, .L800EBE5C_FAE0C
    /* FADF8 800EBE48 00000000 */   nop
    /* FADFC 800EBE4C 0C03AC17 */  jal        func_800EB05C_FA00C
    /* FAE00 800EBE50 00000000 */   nop
    /* FAE04 800EBE54 10000004 */  b          .L800EBE68_FAE18
    /* FAE08 800EBE58 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800EBE5C_FAE0C:
    /* FAE0C 800EBE5C 0C03AC24 */  jal        func_800EB090_FA040
    /* FAE10 800EBE60 00000000 */   nop
  .L800EBE64_FAE14:
    /* FAE14 800EBE64 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800EBE68_FAE18:
    /* FAE18 800EBE68 27BD0018 */  addiu      $sp, $sp, 0x18
    /* FAE1C 800EBE6C 03E00008 */  jr         $ra
    /* FAE20 800EBE70 00000000 */   nop
endlabel func_800EBD9C_FAD4C
