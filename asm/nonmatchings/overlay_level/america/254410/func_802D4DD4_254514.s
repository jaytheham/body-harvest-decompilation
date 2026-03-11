nonmatching func_802D4DD4_254514, 0x9C

glabel func_802D4DD4_254514
    /* 254514 802D4DD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 254518 802D4DD8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 25451C 802D4DDC 3C048005 */  lui        $a0, %hi(D_8004F990)
    /* 254520 802D4DE0 3C0544F6 */  lui        $a1, (0x44F64000 >> 16)
    /* 254524 802D4DE4 34A54000 */  ori        $a1, $a1, (0x44F64000 & 0xFFFF)
    /* 254528 802D4DE8 0C03ED1A */  jal        func_800FB468_10A418
    /* 25452C 802D4DEC 2484F990 */   addiu     $a0, $a0, %lo(D_8004F990)
    /* 254530 802D4DF0 3C048005 */  lui        $a0, %hi(D_8004F9EC)
    /* 254534 802D4DF4 3C0544F6 */  lui        $a1, (0x44F64000 >> 16)
    /* 254538 802D4DF8 34A54000 */  ori        $a1, $a1, (0x44F64000 & 0xFFFF)
    /* 25453C 802D4DFC 0C03ED1A */  jal        func_800FB468_10A418
    /* 254540 802D4E00 2484F9EC */   addiu     $a0, $a0, %lo(D_8004F9EC)
    /* 254544 802D4E04 3C048005 */  lui        $a0, %hi(D_8004FA48)
    /* 254548 802D4E08 3C0544F6 */  lui        $a1, (0x44F64000 >> 16)
    /* 25454C 802D4E0C 34A54000 */  ori        $a1, $a1, (0x44F64000 & 0xFFFF)
    /* 254550 802D4E10 0C03ED1A */  jal        func_800FB468_10A418
    /* 254554 802D4E14 2484FA48 */   addiu     $a0, $a0, %lo(D_8004FA48)
    /* 254558 802D4E18 3C028005 */  lui        $v0, %hi(vehicleInstances)
    /* 25455C 802D4E1C 2442DCD0 */  addiu      $v0, $v0, %lo(vehicleInstances)
    /* 254560 802D4E20 944E1CE0 */  lhu        $t6, 0x1CE0($v0)
    /* 254564 802D4E24 94581D3C */  lhu        $t8, 0x1D3C($v0)
    /* 254568 802D4E28 94481D98 */  lhu        $t0, 0x1D98($v0)
    /* 25456C 802D4E2C 35CF0003 */  ori        $t7, $t6, 0x3
    /* 254570 802D4E30 37190003 */  ori        $t9, $t8, 0x3
    /* 254574 802D4E34 35090003 */  ori        $t1, $t0, 0x3
    /* 254578 802D4E38 A44F1CE0 */  sh         $t7, 0x1CE0($v0)
    /* 25457C 802D4E3C A4591D3C */  sh         $t9, 0x1D3C($v0)
    /* 254580 802D4E40 A4491D98 */  sh         $t1, 0x1D98($v0)
    /* 254584 802D4E44 24040000 */  addiu      $a0, $zero, 0x0
    /* 254588 802D4E48 0C001C9B */  jal        func_8000726C_7E6C
    /* 25458C 802D4E4C 24050026 */   addiu     $a1, $zero, 0x26
    /* 254590 802D4E50 10400003 */  beqz       $v0, .L802D4E60_2545A0
    /* 254594 802D4E54 24040013 */   addiu     $a0, $zero, 0x13
    /* 254598 802D4E58 0C0B5334 */  jal        func_802D4CD0_254410
    /* 25459C 802D4E5C 00002825 */   or        $a1, $zero, $zero
  .L802D4E60_2545A0:
    /* 2545A0 802D4E60 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2545A4 802D4E64 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2545A8 802D4E68 03E00008 */  jr         $ra
    /* 2545AC 802D4E6C 00000000 */   nop
endlabel func_802D4DD4_254514
