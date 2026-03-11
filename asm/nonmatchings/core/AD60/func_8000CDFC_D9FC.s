nonmatching func_8000CDFC_D9FC, 0x150

glabel func_8000CDFC_D9FC
    /* D9FC 8000CDFC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* DA00 8000CE00 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
    /* DA04 8000CE04 AFB50028 */  sw         $s5, 0x28($sp)
    /* DA08 8000CE08 AFB40024 */  sw         $s4, 0x24($sp)
    /* DA0C 8000CE0C AFB2001C */  sw         $s2, 0x1C($sp)
    /* DA10 8000CE10 AFB00014 */  sw         $s0, 0x14($sp)
    /* DA14 8000CE14 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
    /* DA18 8000CE18 3C0F008F */  lui        $t7, %hi(D_8F4960)
    /* DA1C 8000CE1C AFBF002C */  sw         $ra, 0x2C($sp)
    /* DA20 8000CE20 AFB30020 */  sw         $s3, 0x20($sp)
    /* DA24 8000CE24 AFB10018 */  sw         $s1, 0x18($sp)
    /* DA28 8000CE28 25EF4960 */  addiu      $t7, $t7, %lo(D_8F4960)
    /* DA2C 8000CE2C 00E17024 */  and        $t6, $a3, $at
    /* DA30 8000CE30 00809025 */  or         $s2, $a0, $zero
    /* DA34 8000CE34 00C0A025 */  or         $s4, $a2, $zero
    /* DA38 8000CE38 00A0A825 */  or         $s5, $a1, $zero
    /* DA3C 8000CE3C AC870E50 */  sw         $a3, 0xE50($a0)
    /* DA40 8000CE40 01CF8021 */  addu       $s0, $t6, $t7
    /* DA44 8000CE44 02002825 */  or         $a1, $s0, $zero
    /* DA48 8000CE48 AFA7003C */  sw         $a3, 0x3C($sp)
    /* DA4C 8000CE4C 24060048 */  addiu      $a2, $zero, 0x48
    /* DA50 8000CE50 0C00407C */  jal        func_800101F0_10DF0
    /* DA54 8000CE54 24840008 */   addiu     $a0, $a0, 0x8
    /* DA58 8000CE58 8E460008 */  lw         $a2, 0x8($s2)
    /* DA5C 8000CE5C 26440050 */  addiu      $a0, $s2, 0x50
    /* DA60 8000CE60 26050048 */  addiu      $a1, $s0, 0x48
    /* DA64 8000CE64 0006C0C0 */  sll        $t8, $a2, 3
    /* DA68 8000CE68 0306C023 */  subu       $t8, $t8, $a2
    /* DA6C 8000CE6C 0C00407C */  jal        func_800101F0_10DF0
    /* DA70 8000CE70 00183040 */   sll       $a2, $t8, 1
    /* DA74 8000CE74 1280002B */  beqz       $s4, .L8000CF24_DB24
    /* DA78 8000CE78 00008825 */   or        $s1, $zero, $zero
    /* DA7C 8000CE7C 8FB30040 */  lw         $s3, 0x40($sp)
  .L8000CE80_DA80:
    /* DA80 8000CE80 0011C980 */  sll        $t9, $s1, 6
    /* DA84 8000CE84 03358021 */  addu       $s0, $t9, $s5
    /* DA88 8000CE88 00114080 */  sll        $t0, $s1, 2
    /* DA8C 8000CE8C AE000018 */  sw         $zero, 0x18($s0)
    /* DA90 8000CE90 02484821 */  addu       $t1, $s2, $t0
    /* DA94 8000CE94 952A000E */  lhu        $t2, 0xE($t1)
    /* DA98 8000CE98 02002825 */  or         $a1, $s0, $zero
    /* DA9C 8000CE9C 02402025 */  or         $a0, $s2, $zero
    /* DAA0 8000CEA0 322600FF */  andi       $a2, $s1, 0xFF
    /* DAA4 8000CEA4 0C003355 */  jal        func_8000CD54_D954
    /* DAA8 8000CEA8 AE0A0014 */   sw        $t2, 0x14($s0)
    /* DAAC 8000CEAC 12600019 */  beqz       $s3, .L8000CF14_DB14
    /* DAB0 8000CEB0 02402025 */   or        $a0, $s2, $zero
    /* DAB4 8000CEB4 860E0024 */  lh         $t6, 0x24($s0)
    /* DAB8 8000CEB8 860F0026 */  lh         $t7, 0x26($s0)
    /* DABC 8000CEBC 86180028 */  lh         $t8, 0x28($s0)
    /* DAC0 8000CEC0 448E2000 */  mtc1       $t6, $f4
    /* DAC4 8000CEC4 448F4000 */  mtc1       $t7, $f8
    /* DAC8 8000CEC8 44988000 */  mtc1       $t8, $f16
    /* DACC 8000CECC 468021A0 */  cvt.s.w    $f6, $f4
    /* DAD0 8000CED0 8E190018 */  lw         $t9, 0x18($s0)
    /* DAD4 8000CED4 860B002A */  lh         $t3, 0x2A($s0)
    /* DAD8 8000CED8 860C002C */  lh         $t4, 0x2C($s0)
    /* DADC 8000CEDC 860D002E */  lh         $t5, 0x2E($s0)
    /* DAE0 8000CEE0 468042A0 */  cvt.s.w    $f10, $f8
    /* DAE4 8000CEE4 27280001 */  addiu      $t0, $t9, 0x1
    /* DAE8 8000CEE8 E6060008 */  swc1       $f6, 0x8($s0)
    /* DAEC 8000CEEC AE080018 */  sw         $t0, 0x18($s0)
    /* DAF0 8000CEF0 02002825 */  or         $a1, $s0, $zero
    /* DAF4 8000CEF4 468084A0 */  cvt.s.w    $f18, $f16
    /* DAF8 8000CEF8 E60A000C */  swc1       $f10, 0xC($s0)
    /* DAFC 8000CEFC 322600FF */  andi       $a2, $s1, 0xFF
    /* DB00 8000CF00 A60B0000 */  sh         $t3, 0x0($s0)
    /* DB04 8000CF04 A60C0002 */  sh         $t4, 0x2($s0)
    /* DB08 8000CF08 A60D0004 */  sh         $t5, 0x4($s0)
    /* DB0C 8000CF0C 0C003355 */  jal        func_8000CD54_D954
    /* DB10 8000CF10 E6120010 */   swc1      $f18, 0x10($s0)
  .L8000CF14_DB14:
    /* DB14 8000CF14 26310001 */  addiu      $s1, $s1, 0x1
    /* DB18 8000CF18 322900FF */  andi       $t1, $s1, 0xFF
    /* DB1C 8000CF1C 1689FFD8 */  bne        $s4, $t1, .L8000CE80_DA80
    /* DB20 8000CF20 01208825 */   or        $s1, $t1, $zero
  .L8000CF24_DB24:
    /* DB24 8000CF24 8FBF002C */  lw         $ra, 0x2C($sp)
    /* DB28 8000CF28 8FA2003C */  lw         $v0, 0x3C($sp)
    /* DB2C 8000CF2C 8FB00014 */  lw         $s0, 0x14($sp)
    /* DB30 8000CF30 8FB10018 */  lw         $s1, 0x18($sp)
    /* DB34 8000CF34 8FB2001C */  lw         $s2, 0x1C($sp)
    /* DB38 8000CF38 8FB30020 */  lw         $s3, 0x20($sp)
    /* DB3C 8000CF3C 8FB40024 */  lw         $s4, 0x24($sp)
    /* DB40 8000CF40 8FB50028 */  lw         $s5, 0x28($sp)
    /* DB44 8000CF44 03E00008 */  jr         $ra
    /* DB48 8000CF48 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_8000CDFC_D9FC
