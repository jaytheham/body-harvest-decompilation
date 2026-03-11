nonmatching func_800FDD8C_10CD3C, 0x74

glabel func_800FDD8C_10CD3C
    /* 10CD3C 800FDD8C 3C0E8005 */  lui        $t6, %hi(D_80050A74)
    /* 10CD40 800FDD90 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10CD44 800FDD94 25CE0A74 */  addiu      $t6, $t6, %lo(D_80050A74)
    /* 10CD48 800FDD98 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10CD4C 800FDD9C 108E000F */  beq        $a0, $t6, .L800FDDDC_10CD8C
    /* 10CD50 800FDDA0 2405007F */   addiu     $a1, $zero, 0x7F
    /* 10CD54 800FDDA4 3C038005 */  lui        $v1, %hi(vehicleInstances)
    /* 10CD58 800FDDA8 2463DCD0 */  addiu      $v1, $v1, %lo(vehicleInstances)
    /* 10CD5C 800FDDAC 2406005C */  addiu      $a2, $zero, 0x5C
    /* 10CD60 800FDDB0 00A01025 */  or         $v0, $a1, $zero
  .L800FDDB4_10CD64:
    /* 10CD64 800FDDB4 24A5FFFF */  addiu      $a1, $a1, -0x1
    /* 10CD68 800FDDB8 00057C00 */  sll        $t7, $a1, 16
    /* 10CD6C 800FDDBC 000FC403 */  sra        $t8, $t7, 16
    /* 10CD70 800FDDC0 10400006 */  beqz       $v0, .L800FDDDC_10CD8C
    /* 10CD74 800FDDC4 03002825 */   or        $a1, $t8, $zero
    /* 10CD78 800FDDC8 03060019 */  multu      $t8, $a2
    /* 10CD7C 800FDDCC 0000C812 */  mflo       $t9
    /* 10CD80 800FDDD0 00794021 */  addu       $t0, $v1, $t9
    /* 10CD84 800FDDD4 5488FFF7 */  bnel       $a0, $t0, .L800FDDB4_10CD64
    /* 10CD88 800FDDD8 00A01025 */   or        $v0, $a1, $zero
  .L800FDDDC_10CD8C:
    /* 10CD8C 800FDDDC 04A00004 */  bltz       $a1, .L800FDDF0_10CDA0
    /* 10CD90 800FDDE0 00052400 */   sll       $a0, $a1, 16
    /* 10CD94 800FDDE4 00044C03 */  sra        $t1, $a0, 16
    /* 10CD98 800FDDE8 0C03F752 */  jal        func_800FDD48_10CCF8
    /* 10CD9C 800FDDEC 01202025 */   or        $a0, $t1, $zero
  .L800FDDF0_10CDA0:
    /* 10CDA0 800FDDF0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10CDA4 800FDDF4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10CDA8 800FDDF8 03E00008 */  jr         $ra
    /* 10CDAC 800FDDFC 00000000 */   nop
endlabel func_800FDD8C_10CD3C
