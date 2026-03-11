nonmatching func_8000F368_FF68, 0x110

glabel func_8000F368_FF68
    /* FF68 8000F368 3C028003 */  lui        $v0, %hi(D_80031B84)
    /* FF6C 8000F36C 8C421B84 */  lw         $v0, %lo(D_80031B84)($v0)
    /* FF70 8000F370 3C0F801D */  lui        $t7, %hi(D_801CE710)
    /* FF74 8000F374 3C048006 */  lui        $a0, %hi(D_8005BB20)
    /* FF78 8000F378 000270C0 */  sll        $t6, $v0, 3
    /* FF7C 8000F37C 01C27021 */  addu       $t6, $t6, $v0
    /* FF80 8000F380 000E7080 */  sll        $t6, $t6, 2
    /* FF84 8000F384 01C27023 */  subu       $t6, $t6, $v0
    /* FF88 8000F388 000E7080 */  sll        $t6, $t6, 2
    /* FF8C 8000F38C 01C27023 */  subu       $t6, $t6, $v0
    /* FF90 8000F390 000E7080 */  sll        $t6, $t6, 2
    /* FF94 8000F394 01C27023 */  subu       $t6, $t6, $v0
    /* FF98 8000F398 000E7200 */  sll        $t6, $t6, 8
    /* FF9C 8000F39C 25EFE710 */  addiu      $t7, $t7, %lo(D_801CE710)
    /* FFA0 8000F3A0 2484BB20 */  addiu      $a0, $a0, %lo(D_8005BB20)
    /* FFA4 8000F3A4 01EEC023 */  subu       $t8, $t7, $t6
    /* FFA8 8000F3A8 AC980000 */  sw         $t8, 0x0($a0)
    /* FFAC 8000F3AC 3C018006 */  lui        $at, %hi(D_8005BB28)
    /* FFB0 8000F3B0 AC38BB28 */  sw         $t8, %lo(D_8005BB28)($at)
    /* FFB4 8000F3B4 3C018006 */  lui        $at, %hi(D_8005BB3C)
    /* FFB8 8000F3B8 27190180 */  addiu      $t9, $t8, 0x180
    /* FFBC 8000F3BC AC39BB3C */  sw         $t9, %lo(D_8005BB3C)($at)
    /* FFC0 8000F3C0 3C018006 */  lui        $at, %hi(D_8005BB40)
    /* FFC4 8000F3C4 27080200 */  addiu      $t0, $t8, 0x200
    /* FFC8 8000F3C8 AC28BB40 */  sw         $t0, %lo(D_8005BB40)($at)
    /* FFCC 8000F3CC 3C018006 */  lui        $at, %hi(D_8005BB2C)
    /* FFD0 8000F3D0 27090280 */  addiu      $t1, $t8, 0x280
    /* FFD4 8000F3D4 AC29BB2C */  sw         $t1, %lo(D_8005BB2C)($at)
    /* FFD8 8000F3D8 3401E380 */  ori        $at, $zero, 0xE380
    /* FFDC 8000F3DC 03015021 */  addu       $t2, $t8, $at
    /* FFE0 8000F3E0 3C018006 */  lui        $at, %hi(D_8005BB30)
    /* FFE4 8000F3E4 AC2ABB30 */  sw         $t2, %lo(D_8005BB30)($at)
    /* FFE8 8000F3E8 3401F500 */  ori        $at, $zero, 0xF500
    /* FFEC 8000F3EC 03015821 */  addu       $t3, $t8, $at
    /* FFF0 8000F3F0 3C018006 */  lui        $at, %hi(D_8005BB34)
    /* FFF4 8000F3F4 AC2BBB34 */  sw         $t3, %lo(D_8005BB34)($at)
    /* FFF8 8000F3F8 3C010001 */  lui        $at, (0x1E280 >> 16)
    /* FFFC 8000F3FC 3421E280 */  ori        $at, $at, (0x1E280 & 0xFFFF)
    /* 10000 8000F400 03016021 */  addu       $t4, $t8, $at
    /* 10004 8000F404 3C068007 */  lui        $a2, %hi(D_80068084)
    /* 10008 8000F408 3C018006 */  lui        $at, %hi(D_8005BB38)
    /* 1000C 8000F40C 24C68084 */  addiu      $a2, $a2, %lo(D_80068084)
    /* 10010 8000F410 AC2CBB38 */  sw         $t4, %lo(D_8005BB38)($at)
    /* 10014 8000F414 8CD80000 */  lw         $t8, 0x0($a2)
    /* 10018 8000F418 3C0F8003 */  lui        $t7, %hi(D_80031B60)
    /* 1001C 8000F41C 3C058006 */  lui        $a1, %hi(D_8005BB24)
    /* 10020 8000F420 25EF1B60 */  addiu      $t7, $t7, %lo(D_80031B60)
    /* 10024 8000F424 00026900 */  sll        $t5, $v0, 4
    /* 10028 8000F428 24A5BB24 */  addiu      $a1, $a1, %lo(D_8005BB24)
    /* 1002C 8000F42C 01AF7021 */  addu       $t6, $t5, $t7
    /* 10030 8000F430 3C078007 */  lui        $a3, %hi(D_80068088)
    /* 10034 8000F434 ACAE0000 */  sw         $t6, 0x0($a1)
    /* 10038 8000F438 0018C840 */  sll        $t9, $t8, 1
    /* 1003C 8000F43C 24E78088 */  addiu      $a3, $a3, %lo(D_80068088)
    /* 10040 8000F440 A5D90000 */  sh         $t9, 0x0($t6)
    /* 10044 8000F444 8CE90000 */  lw         $t1, 0x0($a3)
    /* 10048 8000F448 8CAB0000 */  lw         $t3, 0x0($a1)
    /* 1004C 8000F44C 00095040 */  sll        $t2, $t1, 1
    /* 10050 8000F450 A56A0002 */  sh         $t2, 0x2($t3)
    /* 10054 8000F454 8CCC0000 */  lw         $t4, 0x0($a2)
    /* 10058 8000F458 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 1005C 8000F45C 000C6840 */  sll        $t5, $t4, 1
    /* 10060 8000F460 A5ED0008 */  sh         $t5, 0x8($t7)
    /* 10064 8000F464 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 10068 8000F468 8CB90000 */  lw         $t9, 0x0($a1)
    /* 1006C 8000F46C 000EC040 */  sll        $t8, $t6, 1
    /* 10070 8000F470 03E00008 */  jr         $ra
    /* 10074 8000F474 A738000A */   sh        $t8, 0xA($t9)
endlabel func_8000F368_FF68
