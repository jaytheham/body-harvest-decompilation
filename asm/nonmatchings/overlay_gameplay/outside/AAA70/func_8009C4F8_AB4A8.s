nonmatching func_8009C4F8_AB4A8, 0x1D4

glabel func_8009C4F8_AB4A8
    /* AB4A8 8009C4F8 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* AB4AC 8009C4FC 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* AB4B0 8009C500 8C620000 */  lw         $v0, 0x0($v1)
    /* AB4B4 8009C504 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* AB4B8 8009C508 AFA40030 */  sw         $a0, 0x30($sp)
    /* AB4BC 8009C50C 308E00FF */  andi       $t6, $a0, 0xFF
    /* AB4C0 8009C510 01C02025 */  or         $a0, $t6, $zero
    /* AB4C4 8009C514 30AF00FF */  andi       $t7, $a1, 0xFF
    /* AB4C8 8009C518 000F71C0 */  sll        $t6, $t7, 7
    /* AB4CC 8009C51C 24580008 */  addiu      $t8, $v0, 0x8
    /* AB4D0 8009C520 AC780000 */  sw         $t8, 0x0($v1)
    /* AB4D4 8009C524 3C0F0101 */  lui        $t7, %hi(D_1009C70)
    /* AB4D8 8009C528 AFA50034 */  sw         $a1, 0x34($sp)
    /* AB4DC 8009C52C 25EF9C70 */  addiu      $t7, $t7, %lo(D_1009C70)
    /* AB4E0 8009C530 3C19FD90 */  lui        $t9, (0xFD900000 >> 16)
    /* AB4E4 8009C534 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* AB4E8 8009C538 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* AB4EC 8009C53C 01CFC021 */  addu       $t8, $t6, $t7
    /* AB4F0 8009C540 AC590000 */  sw         $t9, 0x0($v0)
    /* AB4F4 8009C544 0301C824 */  and        $t9, $t8, $at
    /* AB4F8 8009C548 AC590004 */  sw         $t9, 0x4($v0)
    /* AB4FC 8009C54C 8C620000 */  lw         $v0, 0x0($v1)
    /* AB500 8009C550 3C180701 */  lui        $t8, (0x7014050 >> 16)
    /* AB504 8009C554 37184050 */  ori        $t8, $t8, (0x7014050 & 0xFFFF)
    /* AB508 8009C558 244E0008 */  addiu      $t6, $v0, 0x8
    /* AB50C 8009C55C AC6E0000 */  sw         $t6, 0x0($v1)
    /* AB510 8009C560 3C0FF590 */  lui        $t7, (0xF5900000 >> 16)
    /* AB514 8009C564 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AB518 8009C568 AC580004 */  sw         $t8, 0x4($v0)
    /* AB51C 8009C56C 8C620000 */  lw         $v0, 0x0($v1)
    /* AB520 8009C570 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
    /* AB524 8009C574 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
    /* AB528 8009C578 24590008 */  addiu      $t9, $v0, 0x8
    /* AB52C 8009C57C AC790000 */  sw         $t9, 0x0($v1)
    /* AB530 8009C580 AC400004 */  sw         $zero, 0x4($v0)
    /* AB534 8009C584 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AB538 8009C588 8C620000 */  lw         $v0, 0x0($v1)
    /* AB53C 8009C58C 3C190703 */  lui        $t9, (0x703F800 >> 16)
    /* AB540 8009C590 3739F800 */  ori        $t9, $t9, (0x703F800 & 0xFFFF)
    /* AB544 8009C594 244F0008 */  addiu      $t7, $v0, 0x8
    /* AB548 8009C598 AC6F0000 */  sw         $t7, 0x0($v1)
    /* AB54C 8009C59C AC590004 */  sw         $t9, 0x4($v0)
    /* AB550 8009C5A0 AC580000 */  sw         $t8, 0x0($v0)
    /* AB554 8009C5A4 8C620000 */  lw         $v0, 0x0($v1)
    /* AB558 8009C5A8 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* AB55C 8009C5AC 3C19F580 */  lui        $t9, (0xF5800200 >> 16)
    /* AB560 8009C5B0 244E0008 */  addiu      $t6, $v0, 0x8
    /* AB564 8009C5B4 AC6E0000 */  sw         $t6, 0x0($v1)
    /* AB568 8009C5B8 AC400004 */  sw         $zero, 0x4($v0)
    /* AB56C 8009C5BC AC4F0000 */  sw         $t7, 0x0($v0)
    /* AB570 8009C5C0 8C620000 */  lw         $v0, 0x0($v1)
    /* AB574 8009C5C4 3C0E0001 */  lui        $t6, (0x14050 >> 16)
    /* AB578 8009C5C8 35CE4050 */  ori        $t6, $t6, (0x14050 & 0xFFFF)
    /* AB57C 8009C5CC 24580008 */  addiu      $t8, $v0, 0x8
    /* AB580 8009C5D0 AC780000 */  sw         $t8, 0x0($v1)
    /* AB584 8009C5D4 37390200 */  ori        $t9, $t9, (0xF5800200 & 0xFFFF)
    /* AB588 8009C5D8 AC590000 */  sw         $t9, 0x0($v0)
    /* AB58C 8009C5DC AC4E0004 */  sw         $t6, 0x4($v0)
    /* AB590 8009C5E0 8C620000 */  lw         $v0, 0x0($v1)
    /* AB594 8009C5E4 3C190003 */  lui        $t9, (0x3C03C >> 16)
    /* AB598 8009C5E8 3739C03C */  ori        $t9, $t9, (0x3C03C & 0xFFFF)
    /* AB59C 8009C5EC 244F0008 */  addiu      $t7, $v0, 0x8
    /* AB5A0 8009C5F0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* AB5A4 8009C5F4 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* AB5A8 8009C5F8 AC580000 */  sw         $t8, 0x0($v0)
    /* AB5AC 8009C5FC AC590004 */  sw         $t9, 0x4($v0)
    /* AB5B0 8009C600 8C620000 */  lw         $v0, 0x0($v1)
    /* AB5B4 8009C604 2498000B */  addiu      $t8, $a0, 0xB
    /* AB5B8 8009C608 0018C880 */  sll        $t9, $t8, 2
    /* AB5BC 8009C60C 244E0008 */  addiu      $t6, $v0, 0x8
    /* AB5C0 8009C610 AC6E0000 */  sw         $t6, 0x0($v1)
    /* AB5C4 8009C614 332E0FFF */  andi       $t6, $t9, 0xFFF
    /* AB5C8 8009C618 3C198007 */  lui        $t9, %hi(D_80068088)
    /* AB5CC 8009C61C 8F398088 */  lw         $t9, %lo(D_80068088)($t9)
    /* AB5D0 8009C620 000E7B00 */  sll        $t7, $t6, 12
    /* AB5D4 8009C624 3C01E400 */  lui        $at, (0xE4000000 >> 16)
    /* AB5D8 8009C628 01E1C025 */  or         $t8, $t7, $at
    /* AB5DC 8009C62C 272EFFE7 */  addiu      $t6, $t9, -0x19
    /* AB5E0 8009C630 000E7880 */  sll        $t7, $t6, 2
    /* AB5E4 8009C634 31F90FFF */  andi       $t9, $t7, 0xFFF
    /* AB5E8 8009C638 03197025 */  or         $t6, $t8, $t9
    /* AB5EC 8009C63C AFA40000 */  sw         $a0, 0x0($sp)
    /* AB5F0 8009C640 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AB5F4 8009C644 8FAF0000 */  lw         $t7, 0x0($sp)
    /* AB5F8 8009C648 000FC080 */  sll        $t8, $t7, 2
    /* AB5FC 8009C64C 3C0F8007 */  lui        $t7, %hi(D_80068088)
    /* AB600 8009C650 8DEF8088 */  lw         $t7, %lo(D_80068088)($t7)
    /* AB604 8009C654 33190FFF */  andi       $t9, $t8, 0xFFF
    /* AB608 8009C658 00197300 */  sll        $t6, $t9, 12
    /* AB60C 8009C65C 25F8FFDC */  addiu      $t8, $t7, -0x24
    /* AB610 8009C660 0018C880 */  sll        $t9, $t8, 2
    /* AB614 8009C664 332F0FFF */  andi       $t7, $t9, 0xFFF
    /* AB618 8009C668 01CFC025 */  or         $t8, $t6, $t7
    /* AB61C 8009C66C AC580004 */  sw         $t8, 0x4($v0)
    /* AB620 8009C670 8C620000 */  lw         $v0, 0x0($v1)
    /* AB624 8009C674 3C0EB400 */  lui        $t6, (0xB4000000 >> 16)
    /* AB628 8009C678 24590008 */  addiu      $t9, $v0, 0x8
    /* AB62C 8009C67C AC790000 */  sw         $t9, 0x0($v1)
    /* AB630 8009C680 AFA2000C */  sw         $v0, 0xC($sp)
    /* AB634 8009C684 AC400004 */  sw         $zero, 0x4($v0)
    /* AB638 8009C688 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AB63C 8009C68C 8C620000 */  lw         $v0, 0x0($v1)
    /* AB640 8009C690 3C0E0600 */  lui        $t6, (0x6000600 >> 16)
    /* AB644 8009C694 35CE0600 */  ori        $t6, $t6, (0x6000600 & 0xFFFF)
    /* AB648 8009C698 24580008 */  addiu      $t8, $v0, 0x8
    /* AB64C 8009C69C AC780000 */  sw         $t8, 0x0($v1)
    /* AB650 8009C6A0 3C19B300 */  lui        $t9, (0xB3000000 >> 16)
    /* AB654 8009C6A4 AC590000 */  sw         $t9, 0x0($v0)
    /* AB658 8009C6A8 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AB65C 8009C6AC 8C620000 */  lw         $v0, 0x0($v1)
    /* AB660 8009C6B0 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* AB664 8009C6B4 27BD0030 */  addiu      $sp, $sp, 0x30
    /* AB668 8009C6B8 244F0008 */  addiu      $t7, $v0, 0x8
    /* AB66C 8009C6BC AC6F0000 */  sw         $t7, 0x0($v1)
    /* AB670 8009C6C0 AC400004 */  sw         $zero, 0x4($v0)
    /* AB674 8009C6C4 03E00008 */  jr         $ra
    /* AB678 8009C6C8 AC580000 */   sw        $t8, 0x0($v0)
endlabel func_8009C4F8_AB4A8
