nonmatching func_802DF8DC_1F85EC, 0xC0

glabel func_802DF8DC_1F85EC
    /* 1F85EC 802DF8DC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F85F0 802DF8E0 24090050 */  addiu      $t1, $zero, 0x50
    /* 1F85F4 802DF8E4 01C90019 */  multu      $t6, $t1
    /* 1F85F8 802DF8E8 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 1F85FC 802DF8EC 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 1F8600 802DF8F0 3C198025 */  lui        $t9, %hi(alienSpecs)
    /* 1F8604 802DF8F4 27396680 */  addiu      $t9, $t9, %lo(alienSpecs)
    /* 1F8608 802DF8F8 3C0A802E */  lui        $t2, %hi(D_802E0CE4)
    /* 1F860C 802DF8FC 254A0CE4 */  addiu      $t2, $t2, %lo(D_802E0CE4)
    /* 1F8610 802DF900 AFA40000 */  sw         $a0, 0x0($sp)
    /* 1F8614 802DF904 254D0060 */  addiu      $t5, $t2, 0x60
    /* 1F8618 802DF908 00007812 */  mflo       $t7
    /* 1F861C 802DF90C 010F1821 */  addu       $v1, $t0, $t7
    /* 1F8620 802DF910 9062001A */  lbu        $v0, 0x1A($v1)
    /* 1F8624 802DF914 0002C080 */  sll        $t8, $v0, 2
    /* 1F8628 802DF918 0302C023 */  subu       $t8, $t8, $v0
    /* 1F862C 802DF91C 0018C080 */  sll        $t8, $t8, 2
    /* 1F8630 802DF920 0302C021 */  addu       $t8, $t8, $v0
    /* 1F8634 802DF924 0018C0C0 */  sll        $t8, $t8, 3
    /* 1F8638 802DF928 03193021 */  addu       $a2, $t8, $t9
    /* 1F863C 802DF92C 00C07025 */  or         $t6, $a2, $zero
  .L802DF930_1F8640:
    /* 1F8640 802DF930 8D410000 */  lw         $at, 0x0($t2)
    /* 1F8644 802DF934 254A000C */  addiu      $t2, $t2, 0xC
    /* 1F8648 802DF938 25CE000C */  addiu      $t6, $t6, 0xC
    /* 1F864C 802DF93C ADC1FFF4 */  sw         $at, -0xC($t6)
    /* 1F8650 802DF940 8D41FFF8 */  lw         $at, -0x8($t2)
    /* 1F8654 802DF944 ADC1FFF8 */  sw         $at, -0x8($t6)
    /* 1F8658 802DF948 8D41FFFC */  lw         $at, -0x4($t2)
    /* 1F865C 802DF94C 154DFFF8 */  bne        $t2, $t5, .L802DF930_1F8640
    /* 1F8660 802DF950 ADC1FFFC */   sw        $at, -0x4($t6)
    /* 1F8664 802DF954 8D410000 */  lw         $at, 0x0($t2)
    /* 1F8668 802DF958 3C0F0800 */  lui        $t7, (0x8004500 >> 16)
    /* 1F866C 802DF95C 35EF4500 */  ori        $t7, $t7, (0x8004500 & 0xFFFF)
    /* 1F8670 802DF960 ADC10000 */  sw         $at, 0x0($t6)
    /* 1F8674 802DF964 8D4D0004 */  lw         $t5, 0x4($t2)
    /* 1F8678 802DF968 ADCD0004 */  sw         $t5, 0x4($t6)
    /* 1F867C 802DF96C 90790025 */  lbu        $t9, 0x25($v1)
    /* 1F8680 802DF970 94D8003A */  lhu        $t8, 0x3A($a2)
    /* 1F8684 802DF974 AC6F0020 */  sw         $t7, 0x20($v1)
    /* 1F8688 802DF978 03290019 */  multu      $t9, $t1
    /* 1F868C 802DF97C A478001C */  sh         $t8, 0x1C($v1)
    /* 1F8690 802DF980 ACC50000 */  sw         $a1, 0x0($a2)
    /* 1F8694 802DF984 00006012 */  mflo       $t4
    /* 1F8698 802DF988 010C3821 */  addu       $a3, $t0, $t4
    /* 1F869C 802DF98C 90EB0026 */  lbu        $t3, 0x26($a3)
    /* 1F86A0 802DF990 256D0001 */  addiu      $t5, $t3, 0x1
    /* 1F86A4 802DF994 03E00008 */  jr         $ra
    /* 1F86A8 802DF998 A0ED0026 */   sb        $t5, 0x26($a3)
endlabel func_802DF8DC_1F85EC
