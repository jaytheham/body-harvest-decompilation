nonmatching func_800038E0_44E0, 0x30

glabel func_800038E0_44E0
    /* 44E0 800038E0 3C038004 */  lui        $v1, %hi(D_800476C0)
    /* 44E4 800038E4 246376C0 */  addiu      $v1, $v1, %lo(D_800476C0)
    /* 44E8 800038E8 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 44EC 800038EC 3C0141C6 */  lui        $at, (0x41C64E6D >> 16)
    /* 44F0 800038F0 34214E6D */  ori        $at, $at, (0x41C64E6D & 0xFFFF)
    /* 44F4 800038F4 01C10019 */  multu      $t6, $at
    /* 44F8 800038F8 00007812 */  mflo       $t7
    /* 44FC 800038FC 25F83039 */  addiu      $t8, $t7, 0x3039
    /* 4500 80003900 00184402 */  srl        $t0, $t8, 16
    /* 4504 80003904 AC780000 */  sw         $t8, 0x0($v1)
    /* 4508 80003908 03E00008 */  jr         $ra
    /* 450C 8000390C 3102FFFF */   andi      $v0, $t0, 0xFFFF
endlabel func_800038E0_44E0
