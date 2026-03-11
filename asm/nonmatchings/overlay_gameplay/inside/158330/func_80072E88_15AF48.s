nonmatching func_80072E88_15AF48, 0x12C

glabel func_80072E88_15AF48
    /* 15AF48 80072E88 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* 15AF4C 80072E8C 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* 15AF50 80072E90 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* 15AF54 80072E94 2DE10005 */  sltiu      $at, $t7, 0x5
    /* 15AF58 80072E98 10200043 */  beqz       $at, .L80072FA8_15B068
    /* 15AF5C 80072E9C 000F7880 */   sll       $t7, $t7, 2
    /* 15AF60 80072EA0 3C01800A */  lui        $at, %hi(jtbl_800A4A88_overlay_gameplay_inside)
    /* 15AF64 80072EA4 002F0821 */  addu       $at, $at, $t7
    /* 15AF68 80072EA8 8C2F4A88 */  lw         $t7, %lo(jtbl_800A4A88_overlay_gameplay_inside)($at)
    /* 15AF6C 80072EAC 01E00008 */  jr         $t7
    /* 15AF70 80072EB0 00000000 */   nop
    /* 15AF74 80072EB4 3C18800E */  lui        $t8, %hi(D_800E66A4)
    /* 15AF78 80072EB8 8F1866A4 */  lw         $t8, %lo(D_800E66A4)($t8)
    /* 15AF7C 80072EBC 24010001 */  addiu      $at, $zero, 0x1
    /* 15AF80 80072EC0 3C198005 */  lui        $t9, %hi(D_80052540)
    /* 15AF84 80072EC4 57010039 */  bnel       $t8, $at, .L80072FAC_15B06C
    /* 15AF88 80072EC8 00001025 */   or        $v0, $zero, $zero
    /* 15AF8C 80072ECC 8F392540 */  lw         $t9, %lo(D_80052540)($t9)
    /* 15AF90 80072ED0 3C098005 */  lui        $t1, %hi(D_80050AE0)
    /* 15AF94 80072ED4 24010005 */  addiu      $at, $zero, 0x5
    /* 15AF98 80072ED8 00194080 */  sll        $t0, $t9, 2
    /* 15AF9C 80072EDC 01194023 */  subu       $t0, $t0, $t9
    /* 15AFA0 80072EE0 000840C0 */  sll        $t0, $t0, 3
    /* 15AFA4 80072EE4 01284821 */  addu       $t1, $t1, $t0
    /* 15AFA8 80072EE8 8D290AE0 */  lw         $t1, %lo(D_80050AE0)($t1)
    /* 15AFAC 80072EEC 00095680 */  sll        $t2, $t1, 26
    /* 15AFB0 80072EF0 000A5F02 */  srl        $t3, $t2, 28
    /* 15AFB4 80072EF4 5561002D */  bnel       $t3, $at, .L80072FAC_15B06C
    /* 15AFB8 80072EF8 00001025 */   or        $v0, $zero, $zero
    /* 15AFBC 80072EFC 03E00008 */  jr         $ra
    /* 15AFC0 80072F00 24020001 */   addiu     $v0, $zero, 0x1
    /* 15AFC4 80072F04 3C02800E */  lui        $v0, %hi(D_800E66A4)
    /* 15AFC8 80072F08 8C4266A4 */  lw         $v0, %lo(D_800E66A4)($v0)
    /* 15AFCC 80072F0C 24010001 */  addiu      $at, $zero, 0x1
    /* 15AFD0 80072F10 3C0C8005 */  lui        $t4, %hi(D_80052540)
    /* 15AFD4 80072F14 54410010 */  bnel       $v0, $at, .L80072F58_15B018
    /* 15AFD8 80072F18 24010002 */   addiu     $at, $zero, 0x2
    /* 15AFDC 80072F1C 8D8C2540 */  lw         $t4, %lo(D_80052540)($t4)
    /* 15AFE0 80072F20 3C0E8005 */  lui        $t6, %hi(D_80050AE0)
    /* 15AFE4 80072F24 24010008 */  addiu      $at, $zero, 0x8
    /* 15AFE8 80072F28 000C6880 */  sll        $t5, $t4, 2
    /* 15AFEC 80072F2C 01AC6823 */  subu       $t5, $t5, $t4
    /* 15AFF0 80072F30 000D68C0 */  sll        $t5, $t5, 3
    /* 15AFF4 80072F34 01CD7021 */  addu       $t6, $t6, $t5
    /* 15AFF8 80072F38 8DCE0AE0 */  lw         $t6, %lo(D_80050AE0)($t6)
    /* 15AFFC 80072F3C 000E7E80 */  sll        $t7, $t6, 26
    /* 15B000 80072F40 000FC702 */  srl        $t8, $t7, 28
    /* 15B004 80072F44 57010004 */  bnel       $t8, $at, .L80072F58_15B018
    /* 15B008 80072F48 24010002 */   addiu     $at, $zero, 0x2
    /* 15B00C 80072F4C 03E00008 */  jr         $ra
    /* 15B010 80072F50 24020001 */   addiu     $v0, $zero, 0x1
    /* 15B014 80072F54 24010002 */  addiu      $at, $zero, 0x2
  .L80072F58_15B018:
    /* 15B018 80072F58 14410013 */  bne        $v0, $at, .L80072FA8_15B068
    /* 15B01C 80072F5C 3C198005 */   lui       $t9, %hi(D_80052540)
    /* 15B020 80072F60 8F392540 */  lw         $t9, %lo(D_80052540)($t9)
    /* 15B024 80072F64 3C028005 */  lui        $v0, %hi(D_80050AE0)
    /* 15B028 80072F68 2401000A */  addiu      $at, $zero, 0xA
    /* 15B02C 80072F6C 00194080 */  sll        $t0, $t9, 2
    /* 15B030 80072F70 01194023 */  subu       $t0, $t0, $t9
    /* 15B034 80072F74 000840C0 */  sll        $t0, $t0, 3
    /* 15B038 80072F78 00481021 */  addu       $v0, $v0, $t0
    /* 15B03C 80072F7C 8C420AE0 */  lw         $v0, %lo(D_80050AE0)($v0)
    /* 15B040 80072F80 00024E80 */  sll        $t1, $v0, 26
    /* 15B044 80072F84 00095702 */  srl        $t2, $t1, 28
    /* 15B048 80072F88 11410003 */  beq        $t2, $at, .L80072F98_15B058
    /* 15B04C 80072F8C 24010006 */   addiu     $at, $zero, 0x6
    /* 15B050 80072F90 55410006 */  bnel       $t2, $at, .L80072FAC_15B06C
    /* 15B054 80072F94 00001025 */   or        $v0, $zero, $zero
  .L80072F98_15B058:
    /* 15B058 80072F98 03E00008 */  jr         $ra
    /* 15B05C 80072F9C 24020001 */   addiu     $v0, $zero, 0x1
    /* 15B060 80072FA0 03E00008 */  jr         $ra
    /* 15B064 80072FA4 24020001 */   addiu     $v0, $zero, 0x1
  .L80072FA8_15B068:
    /* 15B068 80072FA8 00001025 */  or         $v0, $zero, $zero
  .L80072FAC_15B06C:
    /* 15B06C 80072FAC 03E00008 */  jr         $ra
    /* 15B070 80072FB0 00000000 */   nop
endlabel func_80072E88_15AF48
