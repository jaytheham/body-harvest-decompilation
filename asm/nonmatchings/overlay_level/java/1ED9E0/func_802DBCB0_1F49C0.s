nonmatching func_802DBCB0_1F49C0, 0x12C

glabel func_802DBCB0_1F49C0
    /* 1F49C0 802DBCB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 1F49C4 802DBCB4 AFB00018 */  sw         $s0, 0x18($sp)
    /* 1F49C8 802DBCB8 309000FF */  andi       $s0, $a0, 0xFF
    /* 1F49CC 802DBCBC 00107080 */  sll        $t6, $s0, 2
    /* 1F49D0 802DBCC0 01D07021 */  addu       $t6, $t6, $s0
    /* 1F49D4 802DBCC4 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 1F49D8 802DBCC8 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 1F49DC 802DBCCC 000E7100 */  sll        $t6, $t6, 4
    /* 1F49E0 802DBCD0 01CF3021 */  addu       $a2, $t6, $t7
    /* 1F49E4 802DBCD4 8CD80020 */  lw         $t8, 0x20($a2)
    /* 1F49E8 802DBCD8 AFA40028 */  sw         $a0, 0x28($sp)
    /* 1F49EC 802DBCDC AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1F49F0 802DBCE0 33194000 */  andi       $t9, $t8, 0x4000
    /* 1F49F4 802DBCE4 17200010 */  bnez       $t9, .L802DBD28_1F4A38
    /* 1F49F8 802DBCE8 320400FF */   andi      $a0, $s0, 0xFF
    /* 1F49FC 802DBCEC 0C02391E */  jal        func_8008E478_9D428
    /* 1F4A00 802DBCF0 AFA60020 */   sw        $a2, 0x20($sp)
    /* 1F4A04 802DBCF4 14400007 */  bnez       $v0, .L802DBD14_1F4A24
    /* 1F4A08 802DBCF8 8FA60020 */   lw        $a2, 0x20($sp)
    /* 1F4A0C 802DBCFC 320400FF */  andi       $a0, $s0, 0xFF
    /* 1F4A10 802DBD00 3C058000 */  lui        $a1, (0x80000000 >> 16)
    /* 1F4A14 802DBD04 0C0238C3 */  jal        func_8008E30C_9D2BC
    /* 1F4A18 802DBD08 AFA60020 */   sw        $a2, 0x20($sp)
    /* 1F4A1C 802DBD0C 10400006 */  beqz       $v0, .L802DBD28_1F4A38
    /* 1F4A20 802DBD10 8FA60020 */   lw        $a2, 0x20($sp)
  .L802DBD14_1F4A24:
    /* 1F4A24 802DBD14 320400FF */  andi       $a0, $s0, 0xFF
    /* 1F4A28 802DBD18 0C0B6ED6 */  jal        func_802DBB58_1F4868
    /* 1F4A2C 802DBD1C AFA60020 */   sw        $a2, 0x20($sp)
    /* 1F4A30 802DBD20 1000001F */  b          .L802DBDA0_1F4AB0
    /* 1F4A34 802DBD24 8FA60020 */   lw        $a2, 0x20($sp)
  .L802DBD28_1F4A38:
    /* 1F4A38 802DBD28 320400FF */  andi       $a0, $s0, 0xFF
    /* 1F4A3C 802DBD2C 0C0B6EF9 */  jal        func_802DBBE4_1F48F4
    /* 1F4A40 802DBD30 AFA60020 */   sw        $a2, 0x20($sp)
    /* 1F4A44 802DBD34 3C088005 */  lui        $t0, %hi(D_80052A8C)
    /* 1F4A48 802DBD38 8D082A8C */  lw         $t0, %lo(D_80052A8C)($t0)
    /* 1F4A4C 802DBD3C 320A003C */  andi       $t2, $s0, 0x3C
    /* 1F4A50 802DBD40 8FA60020 */  lw         $a2, 0x20($sp)
    /* 1F4A54 802DBD44 3109003C */  andi       $t1, $t0, 0x3C
    /* 1F4A58 802DBD48 552A0016 */  bnel       $t1, $t2, .L802DBDA4_1F4AB4
    /* 1F4A5C 802DBD4C 320400FF */   andi      $a0, $s0, 0xFF
    /* 1F4A60 802DBD50 8CC30020 */  lw         $v1, 0x20($a2)
    /* 1F4A64 802DBD54 306B0100 */  andi       $t3, $v1, 0x100
    /* 1F4A68 802DBD58 51600012 */  beql       $t3, $zero, .L802DBDA4_1F4AB4
    /* 1F4A6C 802DBD5C 320400FF */   andi      $a0, $s0, 0xFF
    /* 1F4A70 802DBD60 90C20039 */  lbu        $v0, 0x39($a2)
    /* 1F4A74 802DBD64 3C048005 */  lui        $a0, %hi(D_80050AE0)
    /* 1F4A78 802DBD68 2401FEFF */  addiu      $at, $zero, -0x101
    /* 1F4A7C 802DBD6C 00026080 */  sll        $t4, $v0, 2
    /* 1F4A80 802DBD70 01826023 */  subu       $t4, $t4, $v0
    /* 1F4A84 802DBD74 000C60C0 */  sll        $t4, $t4, 3
    /* 1F4A88 802DBD78 008C2021 */  addu       $a0, $a0, $t4
    /* 1F4A8C 802DBD7C 8C840AE0 */  lw         $a0, %lo(D_80050AE0)($a0)
    /* 1F4A90 802DBD80 0061C024 */  and        $t8, $v1, $at
    /* 1F4A94 802DBD84 00046B02 */  srl        $t5, $a0, 12
    /* 1F4A98 802DBD88 31AE0001 */  andi       $t6, $t5, 0x1
    /* 1F4A9C 802DBD8C 11C00003 */  beqz       $t6, .L802DBD9C_1F4AAC
    /* 1F4AA0 802DBD90 31AF0004 */   andi      $t7, $t5, 0x4
    /* 1F4AA4 802DBD94 51E00003 */  beql       $t7, $zero, .L802DBDA4_1F4AB4
    /* 1F4AA8 802DBD98 320400FF */   andi      $a0, $s0, 0xFF
  .L802DBD9C_1F4AAC:
    /* 1F4AAC 802DBD9C ACD80020 */  sw         $t8, 0x20($a2)
  .L802DBDA0_1F4AB0:
    /* 1F4AB0 802DBDA0 320400FF */  andi       $a0, $s0, 0xFF
  .L802DBDA4_1F4AB4:
    /* 1F4AB4 802DBDA4 0C0201DB */  jal        func_8008076C_8F71C
    /* 1F4AB8 802DBDA8 AFA60020 */   sw        $a2, 0x20($sp)
    /* 1F4ABC 802DBDAC 8FA60020 */  lw         $a2, 0x20($sp)
    /* 1F4AC0 802DBDB0 84C2001E */  lh         $v0, 0x1E($a2)
    /* 1F4AC4 802DBDB4 18400003 */  blez       $v0, .L802DBDC4_1F4AD4
    /* 1F4AC8 802DBDB8 2459FFFC */   addiu     $t9, $v0, -0x4
    /* 1F4ACC 802DBDBC 10000002 */  b          .L802DBDC8_1F4AD8
    /* 1F4AD0 802DBDC0 A4D9001E */   sh        $t9, 0x1E($a2)
  .L802DBDC4_1F4AD4:
    /* 1F4AD4 802DBDC4 A4C0001E */  sh         $zero, 0x1E($a2)
  .L802DBDC8_1F4AD8:
    /* 1F4AD8 802DBDC8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1F4ADC 802DBDCC 8FB00018 */  lw         $s0, 0x18($sp)
    /* 1F4AE0 802DBDD0 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 1F4AE4 802DBDD4 03E00008 */  jr         $ra
    /* 1F4AE8 802DBDD8 00000000 */   nop
endlabel func_802DBCB0_1F49C0
