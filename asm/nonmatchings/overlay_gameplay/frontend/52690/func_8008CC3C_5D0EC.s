nonmatching func_8008CC3C_5D0EC, 0x18C

glabel func_8008CC3C_5D0EC
    /* 5D0EC 8008CC3C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 5D0F0 8008CC40 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 5D0F4 8008CC44 AFB20020 */  sw         $s2, 0x20($sp)
    /* 5D0F8 8008CC48 AFB00018 */  sw         $s0, 0x18($sp)
    /* 5D0FC 8008CC4C 3C11800E */  lui        $s1, %hi(D_800DE130)
    /* 5D100 8008CC50 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 5D104 8008CC54 2631E130 */  addiu      $s1, $s1, %lo(D_800DE130)
    /* 5D108 8008CC58 00008025 */  or         $s0, $zero, $zero
    /* 5D10C 8008CC5C 2412000C */  addiu      $s2, $zero, 0xC
  .L8008CC60_5D110:
    /* 5D110 8008CC60 02120019 */  multu      $s0, $s2
    /* 5D114 8008CC64 00007012 */  mflo       $t6
    /* 5D118 8008CC68 022E7821 */  addu       $t7, $s1, $t6
    /* 5D11C 8008CC6C 91F80000 */  lbu        $t8, 0x0($t7)
    /* 5D120 8008CC70 2F01000B */  sltiu      $at, $t8, 0xB
    /* 5D124 8008CC74 1020002E */  beqz       $at, .L8008CD30_5D1E0
    /* 5D128 8008CC78 0018C080 */   sll       $t8, $t8, 2
    /* 5D12C 8008CC7C 3C01800B */  lui        $at, %hi(jtbl_800AEC88_overlay_gameplay_frontend)
    /* 5D130 8008CC80 00380821 */  addu       $at, $at, $t8
    /* 5D134 8008CC84 8C38EC88 */  lw         $t8, %lo(jtbl_800AEC88_overlay_gameplay_frontend)($at)
    /* 5D138 8008CC88 03000008 */  jr         $t8
    /* 5D13C 8008CC8C 00000000 */   nop
    /* 5D140 8008CC90 0C021142 */  jal        func_80084508_549B8
    /* 5D144 8008CC94 320400FF */   andi      $a0, $s0, 0xFF
    /* 5D148 8008CC98 0C0211CB */  jal        func_8008472C_54BDC
    /* 5D14C 8008CC9C 320400FF */   andi      $a0, $s0, 0xFF
    /* 5D150 8008CCA0 10000024 */  b          .L8008CD34_5D1E4
    /* 5D154 8008CCA4 26100001 */   addiu     $s0, $s0, 0x1
    /* 5D158 8008CCA8 0C0217FC */  jal        func_80085FF0_564A0
    /* 5D15C 8008CCAC 320400FF */   andi      $a0, $s0, 0xFF
    /* 5D160 8008CCB0 10000020 */  b          .L8008CD34_5D1E4
    /* 5D164 8008CCB4 26100001 */   addiu     $s0, $s0, 0x1
    /* 5D168 8008CCB8 0C021C2B */  jal        func_800870AC_5755C
    /* 5D16C 8008CCBC 00000000 */   nop
    /* 5D170 8008CCC0 1000001C */  b          .L8008CD34_5D1E4
    /* 5D174 8008CCC4 26100001 */   addiu     $s0, $s0, 0x1
    /* 5D178 8008CCC8 0C0222F7 */  jal        func_80088BDC_5908C
    /* 5D17C 8008CCCC 00000000 */   nop
    /* 5D180 8008CCD0 10000018 */  b          .L8008CD34_5D1E4
    /* 5D184 8008CCD4 26100001 */   addiu     $s0, $s0, 0x1
    /* 5D188 8008CCD8 0C022528 */  jal        func_800894A0_59950
    /* 5D18C 8008CCDC 320400FF */   andi      $a0, $s0, 0xFF
    /* 5D190 8008CCE0 10000014 */  b          .L8008CD34_5D1E4
    /* 5D194 8008CCE4 26100001 */   addiu     $s0, $s0, 0x1
    /* 5D198 8008CCE8 0C0226AD */  jal        func_80089AB4_59F64
    /* 5D19C 8008CCEC 00000000 */   nop
    /* 5D1A0 8008CCF0 10000010 */  b          .L8008CD34_5D1E4
    /* 5D1A4 8008CCF4 26100001 */   addiu     $s0, $s0, 0x1
    /* 5D1A8 8008CCF8 0C02297E */  jal        func_8008A5F8_5AAA8
    /* 5D1AC 8008CCFC 320400FF */   andi      $a0, $s0, 0xFF
    /* 5D1B0 8008CD00 1000000C */  b          .L8008CD34_5D1E4
    /* 5D1B4 8008CD04 26100001 */   addiu     $s0, $s0, 0x1
    /* 5D1B8 8008CD08 0C022C99 */  jal        func_8008B264_5B714
    /* 5D1BC 8008CD0C 320400FF */   andi      $a0, $s0, 0xFF
    /* 5D1C0 8008CD10 10000008 */  b          .L8008CD34_5D1E4
    /* 5D1C4 8008CD14 26100001 */   addiu     $s0, $s0, 0x1
    /* 5D1C8 8008CD18 0C022ECE */  jal        func_8008BB38_5BFE8
    /* 5D1CC 8008CD1C 320400FF */   andi      $a0, $s0, 0xFF
    /* 5D1D0 8008CD20 10000004 */  b          .L8008CD34_5D1E4
    /* 5D1D4 8008CD24 26100001 */   addiu     $s0, $s0, 0x1
    /* 5D1D8 8008CD28 0C0231F9 */  jal        func_8008C7E4_5CC94
    /* 5D1DC 8008CD2C 00000000 */   nop
  .L8008CD30_5D1E0:
    /* 5D1E0 8008CD30 26100001 */  addiu      $s0, $s0, 0x1
  .L8008CD34_5D1E4:
    /* 5D1E4 8008CD34 321900FF */  andi       $t9, $s0, 0xFF
    /* 5D1E8 8008CD38 2B210096 */  slti       $at, $t9, 0x96
    /* 5D1EC 8008CD3C 1420FFC8 */  bnez       $at, .L8008CC60_5D110
    /* 5D1F0 8008CD40 03208025 */   or        $s0, $t9, $zero
    /* 5D1F4 8008CD44 3C08800E */  lui        $t0, %hi(D_800DE0B9)
    /* 5D1F8 8008CD48 9108E0B9 */  lbu        $t0, %lo(D_800DE0B9)($t0)
    /* 5D1FC 8008CD4C 24010001 */  addiu      $at, $zero, 0x1
    /* 5D200 8008CD50 3C02800E */  lui        $v0, %hi(D_800DE0BA)
    /* 5D204 8008CD54 15010016 */  bne        $t0, $at, .L8008CDB0_5D260
    /* 5D208 8008CD58 2442E0BA */   addiu     $v0, $v0, %lo(D_800DE0BA)
    /* 5D20C 8008CD5C 90490000 */  lbu        $t1, 0x0($v0)
    /* 5D210 8008CD60 3C03800E */  lui        $v1, %hi(D_800DE0BB)
    /* 5D214 8008CD64 2463E0BB */  addiu      $v1, $v1, %lo(D_800DE0BB)
    /* 5D218 8008CD68 5520000D */  bnel       $t1, $zero, .L8008CDA0_5D250
    /* 5D21C 8008CD6C 90620000 */   lbu       $v0, 0x0($v1)
    /* 5D220 8008CD70 3C03800E */  lui        $v1, %hi(D_800DE0BB)
    /* 5D224 8008CD74 2463E0BB */  addiu      $v1, $v1, %lo(D_800DE0BB)
    /* 5D228 8008CD78 906A0000 */  lbu        $t2, 0x0($v1)
    /* 5D22C 8008CD7C 240100FF */  addiu      $at, $zero, 0xFF
    /* 5D230 8008CD80 240D0001 */  addiu      $t5, $zero, 0x1
    /* 5D234 8008CD84 254B0005 */  addiu      $t3, $t2, 0x5
    /* 5D238 8008CD88 316C00FF */  andi       $t4, $t3, 0xFF
    /* 5D23C 8008CD8C 15810008 */  bne        $t4, $at, .L8008CDB0_5D260
    /* 5D240 8008CD90 A06B0000 */   sb        $t3, 0x0($v1)
    /* 5D244 8008CD94 10000006 */  b          .L8008CDB0_5D260
    /* 5D248 8008CD98 A04D0000 */   sb        $t5, 0x0($v0)
    /* 5D24C 8008CD9C 90620000 */  lbu        $v0, 0x0($v1)
  .L8008CDA0_5D250:
    /* 5D250 8008CDA0 28410006 */  slti       $at, $v0, 0x6
    /* 5D254 8008CDA4 14200002 */  bnez       $at, .L8008CDB0_5D260
    /* 5D258 8008CDA8 244EFFFB */   addiu     $t6, $v0, -0x5
    /* 5D25C 8008CDAC A06E0000 */  sb         $t6, 0x0($v1)
  .L8008CDB0_5D260:
    /* 5D260 8008CDB0 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 5D264 8008CDB4 8FB00018 */  lw         $s0, 0x18($sp)
    /* 5D268 8008CDB8 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 5D26C 8008CDBC 8FB20020 */  lw         $s2, 0x20($sp)
    /* 5D270 8008CDC0 03E00008 */  jr         $ra
    /* 5D274 8008CDC4 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_8008CC3C_5D0EC
