nonmatching func_80079B74_88B24, 0x118

glabel func_80079B74_88B24
    /* 88B24 80079B74 3C078015 */  lui        $a3, %hi(D_8014ECD0)
    /* 88B28 80079B78 24E7ECD0 */  addiu      $a3, $a3, %lo(D_8014ECD0)
    /* 88B2C 80079B7C 8CE20000 */  lw         $v0, 0x0($a3)
    /* 88B30 80079B80 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 88B34 80079B84 24010078 */  addiu      $at, $zero, 0x78
    /* 88B38 80079B88 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 88B3C 80079B8C 14410006 */  bne        $v0, $at, .L80079BA8_88B58
    /* 88B40 80079B90 00802825 */   or        $a1, $a0, $zero
    /* 88B44 80079B94 240E0001 */  addiu      $t6, $zero, 0x1
    /* 88B48 80079B98 3C018015 */  lui        $at, %hi(D_8014D300)
    /* 88B4C 80079B9C AC2ED300 */  sw         $t6, %lo(D_8014D300)($at)
    /* 88B50 80079BA0 10000036 */  b          .L80079C7C_88C2C
    /* 88B54 80079BA4 2402FFFF */   addiu     $v0, $zero, -0x1
  .L80079BA8_88B58:
    /* 88B58 80079BA8 3C068015 */  lui        $a2, %hi(D_8014EC50)
    /* 88B5C 80079BAC 00C23021 */  addu       $a2, $a2, $v0
    /* 88B60 80079BB0 80C6EC50 */  lb         $a2, %lo(D_8014EC50)($a2)
    /* 88B64 80079BB4 3C198015 */  lui        $t9, %hi(D_8014DD50)
    /* 88B68 80079BB8 2739DD50 */  addiu      $t9, $t9, %lo(D_8014DD50)
    /* 88B6C 80079BBC 0006C100 */  sll        $t8, $a2, 4
    /* 88B70 80079BC0 244F0001 */  addiu      $t7, $v0, 0x1
    /* 88B74 80079BC4 03191821 */  addu       $v1, $t8, $t9
    /* 88B78 80079BC8 ACEF0000 */  sw         $t7, 0x0($a3)
    /* 88B7C 80079BCC A460000E */  sh         $zero, 0xE($v1)
    /* 88B80 80079BD0 88A10000 */  lwl        $at, 0x0($a1)
    /* 88B84 80079BD4 98A10003 */  lwr        $at, 0x3($a1)
    /* 88B88 80079BD8 24A40010 */  addiu      $a0, $a1, 0x10
    /* 88B8C 80079BDC A8610000 */  swl        $at, 0x0($v1)
    /* 88B90 80079BE0 B8610003 */  swr        $at, 0x3($v1)
    /* 88B94 80079BE4 88A90004 */  lwl        $t1, 0x4($a1)
    /* 88B98 80079BE8 98A90007 */  lwr        $t1, 0x7($a1)
    /* 88B9C 80079BEC A8690004 */  swl        $t1, 0x4($v1)
    /* 88BA0 80079BF0 B8690007 */  swr        $t1, 0x7($v1)
    /* 88BA4 80079BF4 88A10008 */  lwl        $at, 0x8($a1)
    /* 88BA8 80079BF8 98A1000B */  lwr        $at, 0xB($a1)
    /* 88BAC 80079BFC A8610008 */  swl        $at, 0x8($v1)
    /* 88BB0 80079C00 B861000B */  swr        $at, 0xB($v1)
    /* 88BB4 80079C04 88A9000C */  lwl        $t1, 0xC($a1)
    /* 88BB8 80079C08 98A9000F */  lwr        $t1, 0xF($a1)
    /* 88BBC 80079C0C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 88BC0 80079C10 A869000C */  swl        $t1, 0xC($v1)
    /* 88BC4 80079C14 B869000F */  swr        $t1, 0xF($v1)
    /* 88BC8 80079C18 80AA000C */  lb         $t2, 0xC($a1)
    /* 88BCC 80079C1C 5141000A */  beql       $t2, $at, .L80079C48_88BF8
    /* 88BD0 80079C20 80AB000D */   lb        $t3, 0xD($a1)
    /* 88BD4 80079C24 AFA3001C */  sw         $v1, 0x1C($sp)
    /* 88BD8 80079C28 AFA50028 */  sw         $a1, 0x28($sp)
    /* 88BDC 80079C2C 0C01E6DD */  jal        func_80079B74_88B24
    /* 88BE0 80079C30 A7A60026 */   sh        $a2, 0x26($sp)
    /* 88BE4 80079C34 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 88BE8 80079C38 8FA50028 */  lw         $a1, 0x28($sp)
    /* 88BEC 80079C3C 87A60026 */  lh         $a2, 0x26($sp)
    /* 88BF0 80079C40 A062000C */  sb         $v0, 0xC($v1)
    /* 88BF4 80079C44 80AB000D */  lb         $t3, 0xD($a1)
  .L80079C48_88BF8:
    /* 88BF8 80079C48 2401FFFF */  addiu      $at, $zero, -0x1
    /* 88BFC 80079C4C 5161000B */  beql       $t3, $at, .L80079C7C_88C2C
    /* 88C00 80079C50 00C01025 */   or        $v0, $a2, $zero
    /* 88C04 80079C54 806C000D */  lb         $t4, 0xD($v1)
    /* 88C08 80079C58 AFA3001C */  sw         $v1, 0x1C($sp)
    /* 88C0C 80079C5C A7A60026 */  sh         $a2, 0x26($sp)
    /* 88C10 80079C60 000C6900 */  sll        $t5, $t4, 4
    /* 88C14 80079C64 0C01E6DD */  jal        func_80079B74_88B24
    /* 88C18 80079C68 01A52021 */   addu      $a0, $t5, $a1
    /* 88C1C 80079C6C 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 88C20 80079C70 87A60026 */  lh         $a2, 0x26($sp)
    /* 88C24 80079C74 A062000D */  sb         $v0, 0xD($v1)
    /* 88C28 80079C78 00C01025 */  or         $v0, $a2, $zero
  .L80079C7C_88C2C:
    /* 88C2C 80079C7C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 88C30 80079C80 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 88C34 80079C84 03E00008 */  jr         $ra
    /* 88C38 80079C88 00000000 */   nop
endlabel func_80079B74_88B24
