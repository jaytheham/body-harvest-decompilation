nonmatching func_802DAD00_2BD130, 0x1BC

glabel func_802DAD00_2BD130
    /* 2BD130 802DAD00 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BD134 802DAD04 000E7880 */  sll        $t7, $t6, 2
    /* 2BD138 802DAD08 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 2BD13C 802DAD0C 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BD140 802DAD10 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BD144 802DAD14 AFB00028 */  sw         $s0, 0x28($sp)
    /* 2BD148 802DAD18 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BD14C 802DAD1C 000F7900 */  sll        $t7, $t7, 4
    /* 2BD150 802DAD20 01F88021 */  addu       $s0, $t7, $t8
    /* 2BD154 802DAD24 8602000C */  lh         $v0, 0xC($s0)
    /* 2BD158 802DAD28 8E0B0020 */  lw         $t3, 0x20($s0)
    /* 2BD15C 802DAD2C 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 2BD160 802DAD30 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 2BD164 802DAD34 0002C900 */  sll        $t9, $v0, 4
    /* 2BD168 802DAD38 01395021 */  addu       $t2, $t1, $t9
    /* 2BD16C 802DAD3C 000B62C0 */  sll        $t4, $t3, 11
    /* 2BD170 802DAD40 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 2BD174 802DAD44 AFA40050 */  sw         $a0, 0x50($sp)
    /* 2BD178 802DAD48 92030025 */  lbu        $v1, 0x25($s0)
    /* 2BD17C 802DAD4C 05800025 */  bltz       $t4, .L802DADE4_2BD214
    /* 2BD180 802DAD50 8148000C */   lb        $t0, 0xC($t2)
    /* 2BD184 802DAD54 00087100 */  sll        $t6, $t0, 4
    /* 2BD188 802DAD58 012E1021 */  addu       $v0, $t1, $t6
    /* 2BD18C 802DAD5C 240D003C */  addiu      $t5, $zero, 0x3C
    /* 2BD190 802DAD60 27AF0044 */  addiu      $t7, $sp, 0x44
    /* 2BD194 802DAD64 27B80040 */  addiu      $t8, $sp, 0x40
    /* 2BD198 802DAD68 27B9003C */  addiu      $t9, $sp, 0x3C
    /* 2BD19C 802DAD6C A60D002C */  sh         $t5, 0x2C($s0)
    /* 2BD1A0 802DAD70 AFB90018 */  sw         $t9, 0x18($sp)
    /* 2BD1A4 802DAD74 AFB80014 */  sw         $t8, 0x14($sp)
    /* 2BD1A8 802DAD78 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2BD1AC 802DAD7C 84450000 */  lh         $a1, 0x0($v0)
    /* 2BD1B0 802DAD80 84460002 */  lh         $a2, 0x2($v0)
    /* 2BD1B4 802DAD84 84470004 */  lh         $a3, 0x4($v0)
    /* 2BD1B8 802DAD88 02002025 */  or         $a0, $s0, $zero
    /* 2BD1BC 802DAD8C 0C04A10A */  jal        func_80128428_1373D8
    /* 2BD1C0 802DAD90 A7A8004A */   sh        $t0, 0x4A($sp)
    /* 2BD1C4 802DAD94 920A001A */  lbu        $t2, 0x1A($s0)
    /* 2BD1C8 802DAD98 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 2BD1CC 802DAD9C 87A40046 */  lh         $a0, 0x46($sp)
    /* 2BD1D0 802DADA0 000A5880 */  sll        $t3, $t2, 2
    /* 2BD1D4 802DADA4 016A5823 */  subu       $t3, $t3, $t2
    /* 2BD1D8 802DADA8 000B5880 */  sll        $t3, $t3, 2
    /* 2BD1DC 802DADAC 016A5821 */  addu       $t3, $t3, $t2
    /* 2BD1E0 802DADB0 000B58C0 */  sll        $t3, $t3, 3
    /* 2BD1E4 802DADB4 00EB3821 */  addu       $a3, $a3, $t3
    /* 2BD1E8 802DADB8 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 2BD1EC 802DADBC 87A50042 */  lh         $a1, 0x42($sp)
    /* 2BD1F0 802DADC0 87A6003E */  lh         $a2, 0x3E($sp)
    /* 2BD1F4 802DADC4 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2BD1F8 802DADC8 AFA00010 */   sw        $zero, 0x10($sp)
    /* 2BD1FC 802DADCC 0C022384 */  jal        func_80088E10_97DC0
    /* 2BD200 802DADD0 87A4004A */   lh        $a0, 0x4A($sp)
    /* 2BD204 802DADD4 860C0012 */  lh         $t4, 0x12($s0)
    /* 2BD208 802DADD8 000C68C3 */  sra        $t5, $t4, 3
    /* 2BD20C 802DADDC 10000032 */  b          .L802DAEA8_2BD2D8
    /* 2BD210 802DADE0 A60D0012 */   sh        $t5, 0x12($s0)
  .L802DADE4_2BD214:
    /* 2BD214 802DADE4 86040000 */  lh         $a0, 0x0($s0)
    /* 2BD218 802DADE8 86050004 */  lh         $a1, 0x4($s0)
    /* 2BD21C 802DADEC 27A6004E */  addiu      $a2, $sp, 0x4E
    /* 2BD220 802DADF0 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* 2BD224 802DADF4 A7A3003A */   sh        $v1, 0x3A($sp)
    /* 2BD228 802DADF8 860E0002 */  lh         $t6, 0x2($s0)
    /* 2BD22C 802DADFC 8618000A */  lh         $t8, 0xA($s0)
    /* 2BD230 802DAE00 860A0008 */  lh         $t2, 0x8($s0)
    /* 2BD234 802DAE04 860C002C */  lh         $t4, 0x2C($s0)
    /* 2BD238 802DAE08 24010001 */  addiu      $at, $zero, 0x1
    /* 2BD23C 802DAE0C 25CFFFFE */  addiu      $t7, $t6, -0x2
    /* 2BD240 802DAE10 271900DC */  addiu      $t9, $t8, 0xDC
    /* 2BD244 802DAE14 254B008C */  addiu      $t3, $t2, 0x8C
    /* 2BD248 802DAE18 87A3003A */  lh         $v1, 0x3A($sp)
    /* 2BD24C 802DAE1C A60F0002 */  sh         $t7, 0x2($s0)
    /* 2BD250 802DAE20 A619000A */  sh         $t9, 0xA($s0)
    /* 2BD254 802DAE24 15810020 */  bne        $t4, $at, .L802DAEA8_2BD2D8
    /* 2BD258 802DAE28 A60B0008 */   sh        $t3, 0x8($s0)
    /* 2BD25C 802DAE2C 920D001A */  lbu        $t5, 0x1A($s0)
    /* 2BD260 802DAE30 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 2BD264 802DAE34 86040000 */  lh         $a0, 0x0($s0)
    /* 2BD268 802DAE38 000D7080 */  sll        $t6, $t5, 2
    /* 2BD26C 802DAE3C 01CD7023 */  subu       $t6, $t6, $t5
    /* 2BD270 802DAE40 000E7080 */  sll        $t6, $t6, 2
    /* 2BD274 802DAE44 01CD7021 */  addu       $t6, $t6, $t5
    /* 2BD278 802DAE48 000E70C0 */  sll        $t6, $t6, 3
    /* 2BD27C 802DAE4C 00EE3821 */  addu       $a3, $a3, $t6
    /* 2BD280 802DAE50 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 2BD284 802DAE54 86050002 */  lh         $a1, 0x2($s0)
    /* 2BD288 802DAE58 86060004 */  lh         $a2, 0x4($s0)
    /* 2BD28C 802DAE5C AFA00010 */  sw         $zero, 0x10($sp)
    /* 2BD290 802DAE60 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2BD294 802DAE64 A7A3003A */   sh        $v1, 0x3A($sp)
    /* 2BD298 802DAE68 87A3003A */  lh         $v1, 0x3A($sp)
    /* 2BD29C 802DAE6C 240100FF */  addiu      $at, $zero, 0xFF
    /* 2BD2A0 802DAE70 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BD2A4 802DAE74 1061000C */  beq        $v1, $at, .L802DAEA8_2BD2D8
    /* 2BD2A8 802DAE78 00037880 */   sll       $t7, $v1, 2
    /* 2BD2AC 802DAE7C 01E37821 */  addu       $t7, $t7, $v1
    /* 2BD2B0 802DAE80 000F7900 */  sll        $t7, $t7, 4
    /* 2BD2B4 802DAE84 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BD2B8 802DAE88 01F81021 */  addu       $v0, $t7, $t8
    /* 2BD2BC 802DAE8C 9059001A */  lbu        $t9, 0x1A($v0)
    /* 2BD2C0 802DAE90 2401001A */  addiu      $at, $zero, 0x1A
    /* 2BD2C4 802DAE94 57210005 */  bnel       $t9, $at, .L802DAEAC_2BD2DC
    /* 2BD2C8 802DAE98 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 2BD2CC 802DAE9C 904A0024 */  lbu        $t2, 0x24($v0)
    /* 2BD2D0 802DAEA0 254BFFFF */  addiu      $t3, $t2, -0x1
    /* 2BD2D4 802DAEA4 A04B0024 */  sb         $t3, 0x24($v0)
  .L802DAEA8_2BD2D8:
    /* 2BD2D8 802DAEA8 8FBF002C */  lw         $ra, 0x2C($sp)
  .L802DAEAC_2BD2DC:
    /* 2BD2DC 802DAEAC 8FB00028 */  lw         $s0, 0x28($sp)
    /* 2BD2E0 802DAEB0 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 2BD2E4 802DAEB4 03E00008 */  jr         $ra
    /* 2BD2E8 802DAEB8 00000000 */   nop
endlabel func_802DAD00_2BD130
