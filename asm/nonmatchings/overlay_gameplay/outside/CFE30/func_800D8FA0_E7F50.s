nonmatching func_800D8FA0_E7F50, 0x104

glabel func_800D8FA0_E7F50
    /* E7F50 800D8FA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* E7F54 800D8FA4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* E7F58 800D8FA8 AFA40028 */  sw         $a0, 0x28($sp)
    /* E7F5C 800D8FAC AFA5002C */  sw         $a1, 0x2C($sp)
    /* E7F60 800D8FB0 AFA60030 */  sw         $a2, 0x30($sp)
    /* E7F64 800D8FB4 24050001 */  addiu      $a1, $zero, 0x1
    /* E7F68 800D8FB8 0C0305ED */  jal        func_800C17B4_D0764
    /* E7F6C 800D8FBC 24040013 */   addiu     $a0, $zero, 0x13
    /* E7F70 800D8FC0 00022400 */  sll        $a0, $v0, 16
    /* E7F74 800D8FC4 2401FFFD */  addiu      $at, $zero, -0x3
    /* E7F78 800D8FC8 10410032 */  beq        $v0, $at, .L800D9094_E8044
    /* E7F7C 800D8FCC 00047403 */   sra       $t6, $a0, 16
    /* E7F80 800D8FD0 0C000E38 */  jal        func_800038E0_44E0
    /* E7F84 800D8FD4 A7AE0022 */   sh        $t6, 0x22($sp)
    /* E7F88 800D8FD8 2401000F */  addiu      $at, $zero, 0xF
    /* E7F8C 800D8FDC 0041001A */  div        $zero, $v0, $at
    /* E7F90 800D8FE0 87A40022 */  lh         $a0, 0x22($sp)
    /* E7F94 800D8FE4 3C188015 */  lui        $t8, %hi(D_80154318)
    /* E7F98 800D8FE8 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* E7F9C 800D8FEC 000478C0 */  sll        $t7, $a0, 3
    /* E7FA0 800D8FF0 01E47823 */  subu       $t7, $t7, $a0
    /* E7FA4 800D8FF4 000F7880 */  sll        $t7, $t7, 2
    /* E7FA8 800D8FF8 01F81821 */  addu       $v1, $t7, $t8
    /* E7FAC 800D8FFC 87A9002A */  lh         $t1, 0x2A($sp)
    /* E7FB0 800D9000 87AA002E */  lh         $t2, 0x2E($sp)
    /* E7FB4 800D9004 87AB0032 */  lh         $t3, 0x32($sp)
    /* E7FB8 800D9008 0000C810 */  mfhi       $t9
    /* E7FBC 800D900C 27280001 */  addiu      $t0, $t9, 0x1
    /* E7FC0 800D9010 A4680002 */  sh         $t0, 0x2($v1)
    /* E7FC4 800D9014 AFA3001C */  sw         $v1, 0x1C($sp)
    /* E7FC8 800D9018 A4690008 */  sh         $t1, 0x8($v1)
    /* E7FCC 800D901C A46A000A */  sh         $t2, 0xA($v1)
    /* E7FD0 800D9020 0C000E38 */  jal        func_800038E0_44E0
    /* E7FD4 800D9024 A46B000C */   sh        $t3, 0xC($v1)
    /* E7FD8 800D9028 24010006 */  addiu      $at, $zero, 0x6
    /* E7FDC 800D902C 0041001A */  div        $zero, $v0, $at
    /* E7FE0 800D9030 8FA3001C */  lw         $v1, 0x1C($sp)
    /* E7FE4 800D9034 00006010 */  mfhi       $t4
    /* E7FE8 800D9038 258DFFFD */  addiu      $t5, $t4, -0x3
    /* E7FEC 800D903C 24640008 */  addiu      $a0, $v1, 0x8
    /* E7FF0 800D9040 A08D0006 */  sb         $t5, 0x6($a0)
    /* E7FF4 800D9044 0C000E38 */  jal        func_800038E0_44E0
    /* E7FF8 800D9048 AFA40018 */   sw        $a0, 0x18($sp)
    /* E7FFC 800D904C 24010006 */  addiu      $at, $zero, 0x6
    /* E8000 800D9050 0041001A */  div        $zero, $v0, $at
    /* E8004 800D9054 8FB80018 */  lw         $t8, 0x18($sp)
    /* E8008 800D9058 00007010 */  mfhi       $t6
    /* E800C 800D905C 25CF0006 */  addiu      $t7, $t6, 0x6
    /* E8010 800D9060 0C000E38 */  jal        func_800038E0_44E0
    /* E8014 800D9064 A30F0007 */   sb        $t7, 0x7($t8)
    /* E8018 800D9068 24010006 */  addiu      $at, $zero, 0x6
    /* E801C 800D906C 0041001A */  div        $zero, $v0, $at
    /* E8020 800D9070 8FA90018 */  lw         $t1, 0x18($sp)
    /* E8024 800D9074 0000C810 */  mfhi       $t9
    /* E8028 800D9078 2728FFFD */  addiu      $t0, $t9, -0x3
    /* E802C 800D907C A1280008 */  sb         $t0, 0x8($t1)
    /* E8030 800D9080 87A60032 */  lh         $a2, 0x32($sp)
    /* E8034 800D9084 87A5002E */  lh         $a1, 0x2E($sp)
    /* E8038 800D9088 87A4002A */  lh         $a0, 0x2A($sp)
    /* E803C 800D908C 0C04DCAD */  jal        func_801372B4_146264
    /* E8040 800D9090 24070005 */   addiu     $a3, $zero, 0x5
  .L800D9094_E8044:
    /* E8044 800D9094 8FBF0014 */  lw         $ra, 0x14($sp)
    /* E8048 800D9098 27BD0028 */  addiu      $sp, $sp, 0x28
    /* E804C 800D909C 03E00008 */  jr         $ra
    /* E8050 800D90A0 00000000 */   nop
endlabel func_800D8FA0_E7F50
