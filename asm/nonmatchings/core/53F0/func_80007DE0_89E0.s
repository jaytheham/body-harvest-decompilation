nonmatching func_80007DE0_89E0, 0x180

glabel func_80007DE0_89E0
    /* 89E0 80007DE0 3C028005 */  lui        $v0, %hi(D_8004D180)
    /* 89E4 80007DE4 2442D180 */  addiu      $v0, $v0, %lo(D_8004D180)
    /* 89E8 80007DE8 24030003 */  addiu      $v1, $zero, 0x3
    /* 89EC 80007DEC 908E0000 */  lbu        $t6, 0x0($a0)
  .L80007DF0_89F0:
    /* 89F0 80007DF0 25CFFF68 */  addiu      $t7, $t6, -0x98
    /* 89F4 80007DF4 2DE10018 */  sltiu      $at, $t7, 0x18
    /* 89F8 80007DF8 10200057 */  beqz       $at, .L80007F58_8B58
    /* 89FC 80007DFC 000F7880 */   sll       $t7, $t7, 2
    /* 8A00 80007E00 3C018003 */  lui        $at, %hi(jtbl_800372C8_core)
    /* 8A04 80007E04 002F0821 */  addu       $at, $at, $t7
    /* 8A08 80007E08 8C2F72C8 */  lw         $t7, %lo(jtbl_800372C8_core)($at)
    /* 8A0C 80007E0C 01E00008 */  jr         $t7
    /* 8A10 80007E10 00000000 */   nop
    /* 8A14 80007E14 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 8A18 80007E18 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 8A1C 80007E1C 3C098025 */  lui        $t1, %hi(D_80257A3A)
    /* 8A20 80007E20 9079001A */  lbu        $t9, 0x1A($v1)
    /* 8A24 80007E24 8478001C */  lh         $t8, 0x1C($v1)
    /* 8A28 80007E28 001940C0 */  sll        $t0, $t9, 3
    /* 8A2C 80007E2C 01194023 */  subu       $t0, $t0, $t9
    /* 8A30 80007E30 00084100 */  sll        $t0, $t0, 4
    /* 8A34 80007E34 01284821 */  addu       $t1, $t1, $t0
    /* 8A38 80007E38 95297A3A */  lhu        $t1, %lo(D_80257A3A)($t1)
    /* 8A3C 80007E3C 03E00008 */  jr         $ra
    /* 8A40 80007E40 0309102A */   slt       $v0, $t8, $t1
    /* 8A44 80007E44 908A0001 */  lbu        $t2, 0x1($a0)
    /* 8A48 80007E48 3C0C8005 */  lui        $t4, %hi(vehicleInstances)
    /* 8A4C 80007E4C 258CDCD0 */  addiu      $t4, $t4, %lo(vehicleInstances)
    /* 8A50 80007E50 000A5880 */  sll        $t3, $t2, 2
    /* 8A54 80007E54 016A5823 */  subu       $t3, $t3, $t2
    /* 8A58 80007E58 000B58C0 */  sll        $t3, $t3, 3
    /* 8A5C 80007E5C 016A5823 */  subu       $t3, $t3, $t2
    /* 8A60 80007E60 000B5880 */  sll        $t3, $t3, 2
    /* 8A64 80007E64 016C1821 */  addu       $v1, $t3, $t4
    /* 8A68 80007E68 906E001A */  lbu        $t6, 0x1A($v1)
    /* 8A6C 80007E6C 3C198025 */  lui        $t9, %hi(D_80257A3A)
    /* 8A70 80007E70 846D001C */  lh         $t5, 0x1C($v1)
    /* 8A74 80007E74 000E78C0 */  sll        $t7, $t6, 3
    /* 8A78 80007E78 01EE7823 */  subu       $t7, $t7, $t6
    /* 8A7C 80007E7C 000F7900 */  sll        $t7, $t7, 4
    /* 8A80 80007E80 032FC821 */  addu       $t9, $t9, $t7
    /* 8A84 80007E84 97397A3A */  lhu        $t9, %lo(D_80257A3A)($t9)
    /* 8A88 80007E88 03E00008 */  jr         $ra
    /* 8A8C 80007E8C 01B9102A */   slt       $v0, $t5, $t9
    /* 8A90 80007E90 90880001 */  lbu        $t0, 0x1($a0)
    /* 8A94 80007E94 3C098005 */  lui        $t1, %hi(buildingInstances)
    /* 8A98 80007E98 25290AD8 */  addiu      $t1, $t1, %lo(buildingInstances)
    /* 8A9C 80007E9C 0008C080 */  sll        $t8, $t0, 2
    /* 8AA0 80007EA0 0308C023 */  subu       $t8, $t8, $t0
    /* 8AA4 80007EA4 0018C0C0 */  sll        $t8, $t8, 3
    /* 8AA8 80007EA8 03091821 */  addu       $v1, $t8, $t1
    /* 8AAC 80007EAC 906B0006 */  lbu        $t3, 0x6($v1)
    /* 8AB0 80007EB0 3C0E8026 */  lui        $t6, %hi(D_802590A9)
    /* 8AB4 80007EB4 806A000F */  lb         $t2, 0xF($v1)
    /* 8AB8 80007EB8 000B6140 */  sll        $t4, $t3, 5
    /* 8ABC 80007EBC 01CC7021 */  addu       $t6, $t6, $t4
    /* 8AC0 80007EC0 81CE90A9 */  lb         $t6, %lo(D_802590A9)($t6)
    /* 8AC4 80007EC4 03E00008 */  jr         $ra
    /* 8AC8 80007EC8 014E102A */   slt       $v0, $t2, $t6
    /* 8ACC 80007ECC 908F0001 */  lbu        $t7, 0x1($a0)
    /* 8AD0 80007ED0 3C198005 */  lui        $t9, %hi(D_8004D161)
    /* 8AD4 80007ED4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 8AD8 80007ED8 000F6840 */  sll        $t5, $t7, 1
    /* 8ADC 80007EDC 032DC821 */  addu       $t9, $t9, $t5
    /* 8AE0 80007EE0 9339D161 */  lbu        $t9, %lo(D_8004D161)($t9)
    /* 8AE4 80007EE4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 8AE8 80007EE8 00194080 */  sll        $t0, $t9, 2
    /* 8AEC 80007EEC 01194021 */  addu       $t0, $t0, $t9
    /* 8AF0 80007EF0 00084100 */  sll        $t0, $t0, 4
    /* 8AF4 80007EF4 01181821 */  addu       $v1, $t0, $t8
    /* 8AF8 80007EF8 8C690020 */  lw         $t1, 0x20($v1)
    /* 8AFC 80007EFC 00095AC0 */  sll        $t3, $t1, 11
    /* 8B00 80007F00 05630004 */  bgezl      $t3, .L80007F14_8B14
    /* 8B04 80007F04 906A001A */   lbu       $t2, 0x1A($v1)
    /* 8B08 80007F08 03E00008 */  jr         $ra
    /* 8B0C 80007F0C 24020001 */   addiu     $v0, $zero, 0x1
    /* 8B10 80007F10 906A001A */  lbu        $t2, 0x1A($v1)
  .L80007F14_8B14:
    /* 8B14 80007F14 3C0F8025 */  lui        $t7, %hi(D_802566BA)
    /* 8B18 80007F18 846C001C */  lh         $t4, 0x1C($v1)
    /* 8B1C 80007F1C 000A7080 */  sll        $t6, $t2, 2
    /* 8B20 80007F20 01CA7023 */  subu       $t6, $t6, $t2
    /* 8B24 80007F24 000E7080 */  sll        $t6, $t6, 2
    /* 8B28 80007F28 01CA7021 */  addu       $t6, $t6, $t2
    /* 8B2C 80007F2C 000E70C0 */  sll        $t6, $t6, 3
    /* 8B30 80007F30 01EE7821 */  addu       $t7, $t7, $t6
    /* 8B34 80007F34 95EF66BA */  lhu        $t7, %lo(D_802566BA)($t7)
    /* 8B38 80007F38 03E00008 */  jr         $ra
    /* 8B3C 80007F3C 018F102A */   slt       $v0, $t4, $t7
    /* 8B40 80007F40 908D0001 */  lbu        $t5, 0x1($a0)
    /* 8B44 80007F44 01A30019 */  multu      $t5, $v1
    /* 8B48 80007F48 0000C812 */  mflo       $t9
    /* 8B4C 80007F4C 00592021 */  addu       $a0, $v0, $t9
    /* 8B50 80007F50 1000FFA7 */  b          .L80007DF0_89F0
    /* 8B54 80007F54 908E0000 */   lbu       $t6, 0x0($a0)
  .L80007F58_8B58:
    /* 8B58 80007F58 03E00008 */  jr         $ra
    /* 8B5C 80007F5C 00000000 */   nop
endlabel func_80007DE0_89E0
