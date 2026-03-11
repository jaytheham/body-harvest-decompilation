nonmatching func_802DD5CC_1F62DC, 0x31C

glabel func_802DD5CC_1F62DC
    /* 1F62DC 802DD5CC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F62E0 802DD5D0 000E7880 */  sll        $t7, $t6, 2
    /* 1F62E4 802DD5D4 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 1F62E8 802DD5D8 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F62EC 802DD5DC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F62F0 802DD5E0 AFB00020 */  sw         $s0, 0x20($sp)
    /* 1F62F4 802DD5E4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F62F8 802DD5E8 000F7900 */  sll        $t7, $t7, 4
    /* 1F62FC 802DD5EC 01F88021 */  addu       $s0, $t7, $t8
    /* 1F6300 802DD5F0 8609000C */  lh         $t1, 0xC($s0)
    /* 1F6304 802DD5F4 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 1F6308 802DD5F8 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 1F630C 802DD5FC 0009C900 */  sll        $t9, $t1, 4
    /* 1F6310 802DD600 01195021 */  addu       $t2, $t0, $t9
    /* 1F6314 802DD604 8143000C */  lb         $v1, 0xC($t2)
    /* 1F6318 802DD608 AFA40068 */  sw         $a0, 0x68($sp)
    /* 1F631C 802DD60C 01C02025 */  or         $a0, $t6, $zero
    /* 1F6320 802DD610 00035900 */  sll        $t3, $v1, 4
    /* 1F6324 802DD614 010B6021 */  addu       $t4, $t0, $t3
    /* 1F6328 802DD618 8182000C */  lb         $v0, 0xC($t4)
    /* 1F632C 802DD61C 920A001A */  lbu        $t2, 0x1A($s0)
    /* 1F6330 802DD620 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 1F6334 802DD624 00026900 */  sll        $t5, $v0, 4
    /* 1F6338 802DD628 010D7021 */  addu       $t6, $t0, $t5
    /* 1F633C 802DD62C 81C7000D */  lb         $a3, 0xD($t6)
    /* 1F6340 802DD630 240502BC */  addiu      $a1, $zero, 0x2BC
    /* 1F6344 802DD634 24060384 */  addiu      $a2, $zero, 0x384
    /* 1F6348 802DD638 00077900 */  sll        $t7, $a3, 4
    /* 1F634C 802DD63C 010FC021 */  addu       $t8, $t0, $t7
    /* 1F6350 802DD640 8319000D */  lb         $t9, 0xD($t8)
    /* 1F6354 802DD644 A3A4006B */  sb         $a0, 0x6B($sp)
    /* 1F6358 802DD648 A7A90066 */  sh         $t1, 0x66($sp)
    /* 1F635C 802DD64C A7A30064 */  sh         $v1, 0x64($sp)
    /* 1F6360 802DD650 A7AA0052 */  sh         $t2, 0x52($sp)
    /* 1F6364 802DD654 A7A7005A */  sh         $a3, 0x5A($sp)
    /* 1F6368 802DD658 0C021D47 */  jal        func_8008751C_964CC
    /* 1F636C 802DD65C A7B90058 */   sh        $t9, 0x58($sp)
    /* 1F6370 802DD660 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 1F6374 802DD664 87A50064 */  lh         $a1, 0x64($sp)
    /* 1F6378 802DD668 0C02188C */  jal        func_80086230_951E0
    /* 1F637C 802DD66C 3406FFFF */   ori       $a2, $zero, 0xFFFF
    /* 1F6380 802DD670 8E040020 */  lw         $a0, 0x20($s0)
    /* 1F6384 802DD674 3C0E8015 */  lui        $t6, %hi(D_8014DD50)
    /* 1F6388 802DD678 25CEDD50 */  addiu      $t6, $t6, %lo(D_8014DD50)
    /* 1F638C 802DD67C 308B2000 */  andi       $t3, $a0, 0x2000
    /* 1F6390 802DD680 1160000D */  beqz       $t3, .L802DD6B8_1F63C8
    /* 1F6394 802DD684 00046140 */   sll       $t4, $a0, 5
    /* 1F6398 802DD688 05810002 */  bgez       $t4, .L802DD694_1F63A4
    /* 1F639C 802DD68C 87A5005A */   lh        $a1, 0x5A($sp)
    /* 1F63A0 802DD690 87A50058 */  lh         $a1, 0x58($sp)
  .L802DD694_1F63A4:
    /* 1F63A4 802DD694 00056900 */  sll        $t5, $a1, 4
    /* 1F63A8 802DD698 01AE1821 */  addu       $v1, $t5, $t6
    /* 1F63AC 802DD69C 846F0004 */  lh         $t7, 0x4($v1)
    /* 1F63B0 802DD6A0 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 1F63B4 802DD6A4 0081C824 */  and        $t9, $a0, $at
    /* 1F63B8 802DD6A8 25F80019 */  addiu      $t8, $t7, 0x19
    /* 1F63BC 802DD6AC A4780004 */  sh         $t8, 0x4($v1)
    /* 1F63C0 802DD6B0 AE190020 */  sw         $t9, 0x20($s0)
    /* 1F63C4 802DD6B4 03202025 */  or         $a0, $t9, $zero
  .L802DD6B8_1F63C8:
    /* 1F63C8 802DD6B8 308A1000 */  andi       $t2, $a0, 0x1000
    /* 1F63CC 802DD6BC 1140001E */  beqz       $t2, .L802DD738_1F6448
    /* 1F63D0 802DD6C0 87AB005A */   lh        $t3, 0x5A($sp)
    /* 1F63D4 802DD6C4 87AC0058 */  lh         $t4, 0x58($sp)
    /* 1F63D8 802DD6C8 3C0D802E */  lui        $t5, %hi(D_802E09C0)
    /* 1F63DC 802DD6CC 25AD09C0 */  addiu      $t5, $t5, %lo(D_802E09C0)
    /* 1F63E0 802DD6D0 A7AB005C */  sh         $t3, 0x5C($sp)
    /* 1F63E4 802DD6D4 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1F63E8 802DD6D8 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 1F63EC 802DD6DC 24050002 */  addiu      $a1, $zero, 0x2
    /* 1F63F0 802DD6E0 24060007 */  addiu      $a2, $zero, 0x7
    /* 1F63F4 802DD6E4 27A7005C */  addiu      $a3, $sp, 0x5C
    /* 1F63F8 802DD6E8 0C0207C6 */  jal        func_80081F18_90EC8
    /* 1F63FC 802DD6EC A7AC005E */   sh        $t4, 0x5E($sp)
    /* 1F6400 802DD6F0 00021E00 */  sll        $v1, $v0, 24
    /* 1F6404 802DD6F4 00037603 */  sra        $t6, $v1, 24
    /* 1F6408 802DD6F8 24010001 */  addiu      $at, $zero, 0x1
    /* 1F640C 802DD6FC 14410006 */  bne        $v0, $at, .L802DD718_1F6428
    /* 1F6410 802DD700 01C01825 */   or        $v1, $t6, $zero
    /* 1F6414 802DD704 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 1F6418 802DD708 240500CF */  addiu      $a1, $zero, 0xCF
    /* 1F641C 802DD70C 0C04DD1A */  jal        func_80137468_146418
    /* 1F6420 802DD710 A3AE0051 */   sb        $t6, 0x51($sp)
    /* 1F6424 802DD714 83A30051 */  lb         $v1, 0x51($sp)
  .L802DD718_1F6428:
    /* 1F6428 802DD718 24010007 */  addiu      $at, $zero, 0x7
    /* 1F642C 802DD71C 14610067 */  bne        $v1, $at, .L802DD8BC_1F65CC
    /* 1F6430 802DD720 00000000 */   nop
    /* 1F6434 802DD724 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 1F6438 802DD728 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 1F643C 802DD72C 01E1C024 */  and        $t8, $t7, $at
    /* 1F6440 802DD730 10000062 */  b          .L802DD8BC_1F65CC
    /* 1F6444 802DD734 AE180020 */   sw        $t8, 0x20($s0)
  .L802DD738_1F6448:
    /* 1F6448 802DD738 14400060 */  bnez       $v0, .L802DD8BC_1F65CC
    /* 1F644C 802DD73C 0004C940 */   sll       $t9, $a0, 5
    /* 1F6450 802DD740 07210004 */  bgez       $t9, .L802DD754_1F6464
    /* 1F6454 802DD744 240CFFED */   addiu     $t4, $zero, -0x13
    /* 1F6458 802DD748 240A004A */  addiu      $t2, $zero, 0x4A
    /* 1F645C 802DD74C 10000003 */  b          .L802DD75C_1F646C
    /* 1F6460 802DD750 A7AA0048 */   sh        $t2, 0x48($sp)
  .L802DD754_1F6464:
    /* 1F6464 802DD754 240BFFB6 */  addiu      $t3, $zero, -0x4A
    /* 1F6468 802DD758 A7AB0048 */  sh         $t3, 0x48($sp)
  .L802DD75C_1F646C:
    /* 1F646C 802DD75C 240D00A5 */  addiu      $t5, $zero, 0xA5
    /* 1F6470 802DD760 A7AC004A */  sh         $t4, 0x4A($sp)
    /* 1F6474 802DD764 A7AD004C */  sh         $t5, 0x4C($sp)
    /* 1F6478 802DD768 83A40065 */  lb         $a0, 0x65($sp)
    /* 1F647C 802DD76C 27A50048 */  addiu      $a1, $sp, 0x48
    /* 1F6480 802DD770 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 1F6484 802DD774 27A6003C */   addiu     $a2, $sp, 0x3C
    /* 1F6488 802DD778 8FAE003C */  lw         $t6, 0x3C($sp)
    /* 1F648C 802DD77C 8FAF0040 */  lw         $t7, 0x40($sp)
    /* 1F6490 802DD780 8FB80044 */  lw         $t8, 0x44($sp)
    /* 1F6494 802DD784 83A40067 */  lb         $a0, 0x67($sp)
    /* 1F6498 802DD788 27A50048 */  addiu      $a1, $sp, 0x48
    /* 1F649C 802DD78C 27A6003C */  addiu      $a2, $sp, 0x3C
    /* 1F64A0 802DD790 A7AE0048 */  sh         $t6, 0x48($sp)
    /* 1F64A4 802DD794 A7AF004A */  sh         $t7, 0x4A($sp)
    /* 1F64A8 802DD798 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 1F64AC 802DD79C A7B8004C */   sh        $t8, 0x4C($sp)
    /* 1F64B0 802DD7A0 87B90052 */  lh         $t9, 0x52($sp)
    /* 1F64B4 802DD7A4 3C0B8025 */  lui        $t3, %hi(alienSpecs)
    /* 1F64B8 802DD7A8 256B6680 */  addiu      $t3, $t3, %lo(alienSpecs)
    /* 1F64BC 802DD7AC 00195080 */  sll        $t2, $t9, 2
    /* 1F64C0 802DD7B0 01595023 */  subu       $t2, $t2, $t9
    /* 1F64C4 802DD7B4 000A5080 */  sll        $t2, $t2, 2
    /* 1F64C8 802DD7B8 01595021 */  addu       $t2, $t2, $t9
    /* 1F64CC 802DD7BC 000A50C0 */  sll        $t2, $t2, 3
    /* 1F64D0 802DD7C0 8FAC003C */  lw         $t4, 0x3C($sp)
    /* 1F64D4 802DD7C4 8FAD0040 */  lw         $t5, 0x40($sp)
    /* 1F64D8 802DD7C8 8FAE0044 */  lw         $t6, 0x44($sp)
    /* 1F64DC 802DD7CC 014B1021 */  addu       $v0, $t2, $t3
    /* 1F64E0 802DD7D0 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 1F64E4 802DD7D4 00002825 */  or         $a1, $zero, $zero
    /* 1F64E8 802DD7D8 24060032 */  addiu      $a2, $zero, 0x32
    /* 1F64EC 802DD7DC A44C0020 */  sh         $t4, 0x20($v0)
    /* 1F64F0 802DD7E0 A44D0022 */  sh         $t5, 0x22($v0)
    /* 1F64F4 802DD7E4 0C021C73 */  jal        func_800871CC_9617C
    /* 1F64F8 802DD7E8 A44E0024 */   sh        $t6, 0x24($v0)
    /* 1F64FC 802DD7EC 10400033 */  beqz       $v0, .L802DD8BC_1F65CC
    /* 1F6500 802DD7F0 3C198015 */   lui       $t9, %hi(D_8014DD50)
    /* 1F6504 802DD7F4 8E040020 */  lw         $a0, 0x20($s0)
    /* 1F6508 802DD7F8 87A5005A */  lh         $a1, 0x5A($sp)
    /* 1F650C 802DD7FC 2739DD50 */  addiu      $t9, $t9, %lo(D_8014DD50)
    /* 1F6510 802DD800 00047940 */  sll        $t7, $a0, 5
    /* 1F6514 802DD804 05E10002 */  bgez       $t7, .L802DD810_1F6520
    /* 1F6518 802DD808 348C2000 */   ori       $t4, $a0, 0x2000
    /* 1F651C 802DD80C 87A50058 */  lh         $a1, 0x58($sp)
  .L802DD810_1F6520:
    /* 1F6520 802DD810 0005C100 */  sll        $t8, $a1, 4
    /* 1F6524 802DD814 03191821 */  addu       $v1, $t8, $t9
    /* 1F6528 802DD818 846A0004 */  lh         $t2, 0x4($v1)
    /* 1F652C 802DD81C AE0C0020 */  sw         $t4, 0x20($s0)
    /* 1F6530 802DD820 3C088022 */  lui        $t0, %hi(D_80222A70)
    /* 1F6534 802DD824 254BFFF1 */  addiu      $t3, $t2, -0xF
    /* 1F6538 802DD828 A46B0004 */  sh         $t3, 0x4($v1)
    /* 1F653C 802DD82C 8D082A70 */  lw         $t0, %lo(D_80222A70)($t0)
    /* 1F6540 802DD830 92020026 */  lbu        $v0, 0x26($s0)
    /* 1F6544 802DD834 240700B4 */  addiu      $a3, $zero, 0xB4
    /* 1F6548 802DD838 250D0004 */  addiu      $t5, $t0, 0x4
    /* 1F654C 802DD83C A60D0002 */  sh         $t5, 0x2($s0)
    /* 1F6550 802DD840 04410004 */  bgez       $v0, .L802DD854_1F6564
    /* 1F6554 802DD844 304E0003 */   andi      $t6, $v0, 0x3
    /* 1F6558 802DD848 11C00002 */  beqz       $t6, .L802DD854_1F6564
    /* 1F655C 802DD84C 00000000 */   nop
    /* 1F6560 802DD850 25CEFFFC */  addiu      $t6, $t6, -0x4
  .L802DD854_1F6564:
    /* 1F6564 802DD854 15C00009 */  bnez       $t6, .L802DD87C_1F658C
    /* 1F6568 802DD858 00082C00 */   sll       $a1, $t0, 16
    /* 1F656C 802DD85C 00057C03 */  sra        $t7, $a1, 16
    /* 1F6570 802DD860 24180001 */  addiu      $t8, $zero, 0x1
    /* 1F6574 802DD864 AFB80010 */  sw         $t8, 0x10($sp)
    /* 1F6578 802DD868 01E02825 */  or         $a1, $t7, $zero
    /* 1F657C 802DD86C 86040000 */  lh         $a0, 0x0($s0)
    /* 1F6580 802DD870 0C037BCB */  jal        func_800DEF2C_EDEDC
    /* 1F6584 802DD874 86060004 */   lh        $a2, 0x4($s0)
    /* 1F6588 802DD878 92020026 */  lbu        $v0, 0x26($s0)
  .L802DD87C_1F658C:
    /* 1F658C 802DD87C 244A0001 */  addiu      $t2, $v0, 0x1
    /* 1F6590 802DD880 314B00FF */  andi       $t3, $t2, 0xFF
    /* 1F6594 802DD884 24190005 */  addiu      $t9, $zero, 0x5
    /* 1F6598 802DD888 29610011 */  slti       $at, $t3, 0x11
    /* 1F659C 802DD88C A619001E */  sh         $t9, 0x1E($s0)
    /* 1F65A0 802DD890 14200006 */  bnez       $at, .L802DD8AC_1F65BC
    /* 1F65A4 802DD894 A20A0026 */   sb        $t2, 0x26($s0)
    /* 1F65A8 802DD898 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 1F65AC 802DD89C A2000036 */  sb         $zero, 0x36($s0)
    /* 1F65B0 802DD8A0 A2000026 */  sb         $zero, 0x26($s0)
    /* 1F65B4 802DD8A4 358D1000 */  ori        $t5, $t4, 0x1000
    /* 1F65B8 802DD8A8 AE0D0020 */  sw         $t5, 0x20($s0)
  .L802DD8AC_1F65BC:
    /* 1F65BC 802DD8AC 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 1F65C0 802DD8B0 3C010400 */  lui        $at, (0x4000000 >> 16)
    /* 1F65C4 802DD8B4 01C17826 */  xor        $t7, $t6, $at
    /* 1F65C8 802DD8B8 AE0F0020 */  sw         $t7, 0x20($s0)
  .L802DD8BC_1F65CC:
    /* 1F65CC 802DD8BC 0C03892E */  jal        func_800E24B8_F1468
    /* 1F65D0 802DD8C0 93A4006B */   lbu       $a0, 0x6B($sp)
    /* 1F65D4 802DD8C4 8602001E */  lh         $v0, 0x1E($s0)
    /* 1F65D8 802DD8C8 10400002 */  beqz       $v0, .L802DD8D4_1F65E4
    /* 1F65DC 802DD8CC 2458FFFF */   addiu     $t8, $v0, -0x1
    /* 1F65E0 802DD8D0 A618001E */  sh         $t8, 0x1E($s0)
  .L802DD8D4_1F65E4:
    /* 1F65E4 802DD8D4 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 1F65E8 802DD8D8 8FB00020 */  lw         $s0, 0x20($sp)
    /* 1F65EC 802DD8DC 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 1F65F0 802DD8E0 03E00008 */  jr         $ra
    /* 1F65F4 802DD8E4 00000000 */   nop
endlabel func_802DD5CC_1F62DC
