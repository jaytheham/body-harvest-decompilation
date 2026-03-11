nonmatching func_800959F0_A49A0, 0x7C

glabel func_800959F0_A49A0
    /* A49A0 800959F0 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* A49A4 800959F4 AFA50004 */  sw         $a1, 0x4($sp)
    /* A49A8 800959F8 30AFFFFF */  andi       $t7, $a1, 0xFFFF
    /* A49AC 800959FC AFA60008 */  sw         $a2, 0x8($sp)
    /* A49B0 80095A00 30D8FFFF */  andi       $t8, $a2, 0xFFFF
    /* A49B4 80095A04 29C1001F */  slti       $at, $t6, 0x1F
    /* A49B8 80095A08 03003025 */  or         $a2, $t8, $zero
    /* A49BC 80095A0C 01E02825 */  or         $a1, $t7, $zero
    /* A49C0 80095A10 10200003 */  beqz       $at, .L80095A20_A49D0
    /* A49C4 80095A14 AFA40000 */   sw        $a0, 0x0($sp)
    /* A49C8 80095A18 10000002 */  b          .L80095A24_A49D4
    /* A49CC 80095A1C 31C4FFFF */   andi      $a0, $t6, 0xFFFF
  .L80095A20_A49D0:
    /* A49D0 80095A20 2404001F */  addiu      $a0, $zero, 0x1F
  .L80095A24_A49D4:
    /* A49D4 80095A24 28A1001F */  slti       $at, $a1, 0x1F
    /* A49D8 80095A28 10200003 */  beqz       $at, .L80095A38_A49E8
    /* A49DC 80095A2C 0004CAC0 */   sll       $t9, $a0, 11
    /* A49E0 80095A30 10000002 */  b          .L80095A3C_A49EC
    /* A49E4 80095A34 30A5FFFF */   andi      $a1, $a1, 0xFFFF
  .L80095A38_A49E8:
    /* A49E8 80095A38 2405001F */  addiu      $a1, $zero, 0x1F
  .L80095A3C_A49EC:
    /* A49EC 80095A3C 28C1003F */  slti       $at, $a2, 0x3F
    /* A49F0 80095A40 10200003 */  beqz       $at, .L80095A50_A4A00
    /* A49F4 80095A44 00054180 */   sll       $t0, $a1, 6
    /* A49F8 80095A48 10000002 */  b          .L80095A54_A4A04
    /* A49FC 80095A4C 30C6FFFF */   andi      $a2, $a2, 0xFFFF
  .L80095A50_A4A00:
    /* A4A00 80095A50 2406003F */  addiu      $a2, $zero, 0x3F
  .L80095A54_A4A04:
    /* A4A04 80095A54 03284821 */  addu       $t1, $t9, $t0
    /* A4A08 80095A58 30CA003F */  andi       $t2, $a2, 0x3F
    /* A4A0C 80095A5C 012A1021 */  addu       $v0, $t1, $t2
    /* A4A10 80095A60 304BFFFF */  andi       $t3, $v0, 0xFFFF
    /* A4A14 80095A64 03E00008 */  jr         $ra
    /* A4A18 80095A68 01601025 */   or        $v0, $t3, $zero
endlabel func_800959F0_A49A0
