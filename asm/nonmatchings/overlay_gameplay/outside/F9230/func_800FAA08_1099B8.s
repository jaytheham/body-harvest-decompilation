nonmatching func_800FAA08_1099B8, 0x194

glabel func_800FAA08_1099B8
    /* 1099B8 800FAA08 0005C400 */  sll        $t8, $a1, 16
    /* 1099BC 800FAA0C 0018CC03 */  sra        $t9, $t8, 16
    /* 1099C0 800FAA10 AFA40000 */  sw         $a0, 0x0($sp)
    /* 1099C4 800FAA14 00047400 */  sll        $t6, $a0, 16
    /* 1099C8 800FAA18 000E2403 */  sra        $a0, $t6, 16
    /* 1099CC 800FAA1C 332800FF */  andi       $t0, $t9, 0xFF
    /* 1099D0 800FAA20 00084C00 */  sll        $t1, $t0, 16
    /* 1099D4 800FAA24 308300FF */  andi       $v1, $a0, 0xFF
    /* 1099D8 800FAA28 00036400 */  sll        $t4, $v1, 16
    /* 1099DC 800FAA2C 00095403 */  sra        $t2, $t1, 16
    /* 1099E0 800FAA30 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 1099E4 800FAA34 016A1023 */  subu       $v0, $t3, $t2
    /* 1099E8 800FAA38 000C1C03 */  sra        $v1, $t4, 16
    /* 1099EC 800FAA3C AFA50004 */  sw         $a1, 0x4($sp)
    /* 1099F0 800FAA40 0043082A */  slt        $at, $v0, $v1
    /* 1099F4 800FAA44 10200015 */  beqz       $at, .L800FAA9C_109A4C
    /* 1099F8 800FAA48 03202825 */   or        $a1, $t9, $zero
    /* 1099FC 800FAA4C 3C0E8005 */  lui        $t6, %hi(D_80052A94)
    /* 109A00 800FAA50 00197A03 */  sra        $t7, $t9, 8
    /* 109A04 800FAA54 8DCE2A94 */  lw         $t6, %lo(D_80052A94)($t6)
    /* 109A08 800FAA58 000FC400 */  sll        $t8, $t7, 16
    /* 109A0C 800FAA5C 00045A03 */  sra        $t3, $a0, 8
    /* 109A10 800FAA60 000B5400 */  sll        $t2, $t3, 16
    /* 109A14 800FAA64 0018CC03 */  sra        $t9, $t8, 16
    /* 109A18 800FAA68 00194240 */  sll        $t0, $t9, 9
    /* 109A1C 800FAA6C 000A6403 */  sra        $t4, $t2, 16
    /* 109A20 800FAA70 000C6840 */  sll        $t5, $t4, 1
    /* 109A24 800FAA74 01C84821 */  addu       $t1, $t6, $t0
    /* 109A28 800FAA78 012D3821 */  addu       $a3, $t1, $t5
    /* 109A2C 800FAA7C 94EF0200 */  lhu        $t7, 0x200($a3)
    /* 109A30 800FAA80 94F90202 */  lhu        $t9, 0x202($a3)
    /* 109A34 800FAA84 31F8003F */  andi       $t8, $t7, 0x3F
    /* 109A38 800FAA88 332E003F */  andi       $t6, $t9, 0x3F
    /* 109A3C 800FAA8C 030E3023 */  subu       $a2, $t8, $t6
    /* 109A40 800FAA90 00064400 */  sll        $t0, $a2, 16
    /* 109A44 800FAA94 10000014 */  b          .L800FAAE8_109A98
    /* 109A48 800FAA98 00083403 */   sra       $a2, $t0, 16
  .L800FAA9C_109A4C:
    /* 109A4C 800FAA9C 3C0A8005 */  lui        $t2, %hi(D_80052A94)
    /* 109A50 800FAAA0 00056203 */  sra        $t4, $a1, 8
    /* 109A54 800FAAA4 8D4A2A94 */  lw         $t2, %lo(D_80052A94)($t2)
    /* 109A58 800FAAA8 000C4C00 */  sll        $t1, $t4, 16
    /* 109A5C 800FAAAC 0004C203 */  sra        $t8, $a0, 8
    /* 109A60 800FAAB0 00187400 */  sll        $t6, $t8, 16
    /* 109A64 800FAAB4 00096C03 */  sra        $t5, $t1, 16
    /* 109A68 800FAAB8 000D7A40 */  sll        $t7, $t5, 9
    /* 109A6C 800FAABC 000E4403 */  sra        $t0, $t6, 16
    /* 109A70 800FAAC0 00085840 */  sll        $t3, $t0, 1
    /* 109A74 800FAAC4 014FC821 */  addu       $t9, $t2, $t7
    /* 109A78 800FAAC8 032B3821 */  addu       $a3, $t9, $t3
    /* 109A7C 800FAACC 94EC0000 */  lhu        $t4, 0x0($a3)
    /* 109A80 800FAAD0 94ED0002 */  lhu        $t5, 0x2($a3)
    /* 109A84 800FAAD4 3189003F */  andi       $t1, $t4, 0x3F
    /* 109A88 800FAAD8 31AA003F */  andi       $t2, $t5, 0x3F
    /* 109A8C 800FAADC 012A3023 */  subu       $a2, $t1, $t2
    /* 109A90 800FAAE0 00067C00 */  sll        $t7, $a2, 16
    /* 109A94 800FAAE4 000F3403 */  sra        $a2, $t7, 16
  .L800FAAE8_109A98:
    /* 109A98 800FAAE8 04C00005 */  bltz       $a2, .L800FAB00_109AB0
    /* 109A9C 800FAAEC 0043082A */   slt       $at, $v0, $v1
    /* 109AA0 800FAAF0 00062400 */  sll        $a0, $a2, 16
    /* 109AA4 800FAAF4 00047403 */  sra        $t6, $a0, 16
    /* 109AA8 800FAAF8 10000004 */  b          .L800FAB0C_109ABC
    /* 109AAC 800FAAFC 01C02025 */   or        $a0, $t6, $zero
  .L800FAB00_109AB0:
    /* 109AB0 800FAB00 00062023 */  negu       $a0, $a2
    /* 109AB4 800FAB04 00044400 */  sll        $t0, $a0, 16
    /* 109AB8 800FAB08 00082403 */  sra        $a0, $t0, 16
  .L800FAB0C_109ABC:
    /* 109ABC 800FAB0C 5020000A */  beql       $at, $zero, .L800FAB38_109AE8
    /* 109AC0 800FAB10 94F80000 */   lhu       $t8, 0x0($a3)
    /* 109AC4 800FAB14 94EB0002 */  lhu        $t3, 0x2($a3)
    /* 109AC8 800FAB18 94ED0202 */  lhu        $t5, 0x202($a3)
    /* 109ACC 800FAB1C 316C003F */  andi       $t4, $t3, 0x3F
    /* 109AD0 800FAB20 31A9003F */  andi       $t1, $t5, 0x3F
    /* 109AD4 800FAB24 01893023 */  subu       $a2, $t4, $t1
    /* 109AD8 800FAB28 00065400 */  sll        $t2, $a2, 16
    /* 109ADC 800FAB2C 10000008 */  b          .L800FAB50_109B00
    /* 109AE0 800FAB30 000A3403 */   sra       $a2, $t2, 16
    /* 109AE4 800FAB34 94F80000 */  lhu        $t8, 0x0($a3)
  .L800FAB38_109AE8:
    /* 109AE8 800FAB38 94E80200 */  lhu        $t0, 0x200($a3)
    /* 109AEC 800FAB3C 330E003F */  andi       $t6, $t8, 0x3F
    /* 109AF0 800FAB40 3119003F */  andi       $t9, $t0, 0x3F
    /* 109AF4 800FAB44 01D93023 */  subu       $a2, $t6, $t9
    /* 109AF8 800FAB48 00065C00 */  sll        $t3, $a2, 16
    /* 109AFC 800FAB4C 000B3403 */  sra        $a2, $t3, 16
  .L800FAB50_109B00:
    /* 109B00 800FAB50 04C00005 */  bltz       $a2, .L800FAB68_109B18
    /* 109B04 800FAB54 00061023 */   negu      $v0, $a2
    /* 109B08 800FAB58 00061400 */  sll        $v0, $a2, 16
    /* 109B0C 800FAB5C 00026403 */  sra        $t4, $v0, 16
    /* 109B10 800FAB60 10000003 */  b          .L800FAB70_109B20
    /* 109B14 800FAB64 01801025 */   or        $v0, $t4, $zero
  .L800FAB68_109B18:
    /* 109B18 800FAB68 00024C00 */  sll        $t1, $v0, 16
    /* 109B1C 800FAB6C 00091403 */  sra        $v0, $t1, 16
  .L800FAB70_109B20:
    /* 109B20 800FAB70 0044082A */  slt        $at, $v0, $a0
    /* 109B24 800FAB74 10200005 */  beqz       $at, .L800FAB8C_109B3C
    /* 109B28 800FAB78 00401825 */   or        $v1, $v0, $zero
    /* 109B2C 800FAB7C 00041400 */  sll        $v0, $a0, 16
    /* 109B30 800FAB80 00027C03 */  sra        $t7, $v0, 16
    /* 109B34 800FAB84 03E00008 */  jr         $ra
    /* 109B38 800FAB88 01E01025 */   or        $v0, $t7, $zero
  .L800FAB8C_109B3C:
    /* 109B3C 800FAB8C 00031400 */  sll        $v0, $v1, 16
    /* 109B40 800FAB90 00027C03 */  sra        $t7, $v0, 16
    /* 109B44 800FAB94 03E00008 */  jr         $ra
    /* 109B48 800FAB98 01E01025 */   or        $v0, $t7, $zero
endlabel func_800FAA08_1099B8
