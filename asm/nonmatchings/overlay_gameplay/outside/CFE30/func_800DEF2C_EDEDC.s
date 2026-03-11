nonmatching func_800DEF2C_EDEDC, 0x10C

glabel func_800DEF2C_EDEDC
    /* EDEDC 800DEF2C 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* EDEE0 800DEF30 AFB30028 */  sw         $s3, 0x28($sp)
    /* EDEE4 800DEF34 93B30053 */  lbu        $s3, 0x53($sp)
    /* EDEE8 800DEF38 AFB60034 */  sw         $s6, 0x34($sp)
    /* EDEEC 800DEF3C AFB50030 */  sw         $s5, 0x30($sp)
    /* EDEF0 800DEF40 AFB4002C */  sw         $s4, 0x2C($sp)
    /* EDEF4 800DEF44 0004A400 */  sll        $s4, $a0, 16
    /* EDEF8 800DEF48 0005AC00 */  sll        $s5, $a1, 16
    /* EDEFC 800DEF4C 0006B400 */  sll        $s6, $a2, 16
    /* EDF00 800DEF50 0016C403 */  sra        $t8, $s6, 16
    /* EDF04 800DEF54 00157C03 */  sra        $t7, $s5, 16
    /* EDF08 800DEF58 00147403 */  sra        $t6, $s4, 16
    /* EDF0C 800DEF5C AFB70038 */  sw         $s7, 0x38($sp)
    /* EDF10 800DEF60 AFB10020 */  sw         $s1, 0x20($sp)
    /* EDF14 800DEF64 AFB0001C */  sw         $s0, 0x1C($sp)
    /* EDF18 800DEF68 30F700FF */  andi       $s7, $a3, 0xFF
    /* EDF1C 800DEF6C 01C0A025 */  or         $s4, $t6, $zero
    /* EDF20 800DEF70 01E0A825 */  or         $s5, $t7, $zero
    /* EDF24 800DEF74 0300B025 */  or         $s6, $t8, $zero
    /* EDF28 800DEF78 AFBF003C */  sw         $ra, 0x3C($sp)
    /* EDF2C 800DEF7C AFB20024 */  sw         $s2, 0x24($sp)
    /* EDF30 800DEF80 AFA40040 */  sw         $a0, 0x40($sp)
    /* EDF34 800DEF84 AFA50044 */  sw         $a1, 0x44($sp)
    /* EDF38 800DEF88 AFA60048 */  sw         $a2, 0x48($sp)
    /* EDF3C 800DEF8C AFA7004C */  sw         $a3, 0x4C($sp)
    /* EDF40 800DEF90 00008025 */  or         $s0, $zero, $zero
    /* EDF44 800DEF94 1A60001D */  blez       $s3, .L800DF00C_EDFBC
    /* EDF48 800DEF98 00008825 */   or        $s1, $zero, $zero
  .L800DEF9C_EDF4C:
    /* EDF4C 800DEF9C 00142400 */  sll        $a0, $s4, 16
    /* EDF50 800DEFA0 00152C00 */  sll        $a1, $s5, 16
    /* EDF54 800DEFA4 00163400 */  sll        $a2, $s6, 16
    /* EDF58 800DEFA8 00064C03 */  sra        $t1, $a2, 16
    /* EDF5C 800DEFAC 00054403 */  sra        $t0, $a1, 16
    /* EDF60 800DEFB0 0004CC03 */  sra        $t9, $a0, 16
    /* EDF64 800DEFB4 240A0002 */  addiu      $t2, $zero, 0x2
    /* EDF68 800DEFB8 AFAA0010 */  sw         $t2, 0x10($sp)
    /* EDF6C 800DEFBC 03202025 */  or         $a0, $t9, $zero
    /* EDF70 800DEFC0 01002825 */  or         $a1, $t0, $zero
    /* EDF74 800DEFC4 01203025 */  or         $a2, $t1, $zero
    /* EDF78 800DEFC8 0C0376D8 */  jal        func_800DDB60_ECB10
    /* EDF7C 800DEFCC 24070004 */   addiu     $a3, $zero, 0x4
    /* EDF80 800DEFD0 305200FF */  andi       $s2, $v0, 0xFF
    /* EDF84 800DEFD4 304400FF */  andi       $a0, $v0, 0xFF
    /* EDF88 800DEFD8 0C037787 */  jal        func_800DDE1C_ECDCC
    /* EDF8C 800DEFDC 32E500FF */   andi      $a1, $s7, 0xFF
    /* EDF90 800DEFE0 324400FF */  andi       $a0, $s2, 0xFF
    /* EDF94 800DEFE4 0C0377B8 */  jal        func_800DDEE0_ECE90
    /* EDF98 800DEFE8 320500FF */   andi      $a1, $s0, 0xFF
    /* EDF9C 800DEFEC 26310001 */  addiu      $s1, $s1, 0x1
    /* EDFA0 800DEFF0 322C00FF */  andi       $t4, $s1, 0xFF
    /* EDFA4 800DEFF4 2610000C */  addiu      $s0, $s0, 0xC
    /* EDFA8 800DEFF8 0193082A */  slt        $at, $t4, $s3
    /* EDFAC 800DEFFC 320B00FF */  andi       $t3, $s0, 0xFF
    /* EDFB0 800DF000 01808825 */  or         $s1, $t4, $zero
    /* EDFB4 800DF004 1420FFE5 */  bnez       $at, .L800DEF9C_EDF4C
    /* EDFB8 800DF008 01608025 */   or        $s0, $t3, $zero
  .L800DF00C_EDFBC:
    /* EDFBC 800DF00C 8FBF003C */  lw         $ra, 0x3C($sp)
    /* EDFC0 800DF010 8FB0001C */  lw         $s0, 0x1C($sp)
    /* EDFC4 800DF014 8FB10020 */  lw         $s1, 0x20($sp)
    /* EDFC8 800DF018 8FB20024 */  lw         $s2, 0x24($sp)
    /* EDFCC 800DF01C 8FB30028 */  lw         $s3, 0x28($sp)
    /* EDFD0 800DF020 8FB4002C */  lw         $s4, 0x2C($sp)
    /* EDFD4 800DF024 8FB50030 */  lw         $s5, 0x30($sp)
    /* EDFD8 800DF028 8FB60034 */  lw         $s6, 0x34($sp)
    /* EDFDC 800DF02C 8FB70038 */  lw         $s7, 0x38($sp)
    /* EDFE0 800DF030 03E00008 */  jr         $ra
    /* EDFE4 800DF034 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800DEF2C_EDEDC
