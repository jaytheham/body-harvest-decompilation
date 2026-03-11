nonmatching func_800D7624_E65D4, 0x84

glabel func_800D7624_E65D4
    /* E65D4 800D7624 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* E65D8 800D7628 AFBF0014 */  sw         $ra, 0x14($sp)
    /* E65DC 800D762C AFA40018 */  sw         $a0, 0x18($sp)
    /* E65E0 800D7630 AFA5001C */  sw         $a1, 0x1C($sp)
    /* E65E4 800D7634 AFA60020 */  sw         $a2, 0x20($sp)
    /* E65E8 800D7638 24050001 */  addiu      $a1, $zero, 0x1
    /* E65EC 800D763C 0C0305ED */  jal        func_800C17B4_D0764
    /* E65F0 800D7640 24040011 */   addiu     $a0, $zero, 0x11
    /* E65F4 800D7644 00022400 */  sll        $a0, $v0, 16
    /* E65F8 800D7648 00047403 */  sra        $t6, $a0, 16
    /* E65FC 800D764C 2401FFFD */  addiu      $at, $zero, -0x3
    /* E6600 800D7650 10410010 */  beq        $v0, $at, .L800D7694_E6644
    /* E6604 800D7654 01C02025 */   or        $a0, $t6, $zero
    /* E6608 800D7658 000278C0 */  sll        $t7, $v0, 3
    /* E660C 800D765C 01E27823 */  subu       $t7, $t7, $v0
    /* E6610 800D7660 3C188015 */  lui        $t8, %hi(D_80154318)
    /* E6614 800D7664 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* E6618 800D7668 000F7880 */  sll        $t7, $t7, 2
    /* E661C 800D766C 01F81821 */  addu       $v1, $t7, $t8
    /* E6620 800D7670 87A8001A */  lh         $t0, 0x1A($sp)
    /* E6624 800D7674 87A9001E */  lh         $t1, 0x1E($sp)
    /* E6628 800D7678 87AA0022 */  lh         $t2, 0x22($sp)
    /* E662C 800D767C 24190014 */  addiu      $t9, $zero, 0x14
    /* E6630 800D7680 A4790002 */  sh         $t9, 0x2($v1)
    /* E6634 800D7684 A060000E */  sb         $zero, 0xE($v1)
    /* E6638 800D7688 A4680008 */  sh         $t0, 0x8($v1)
    /* E663C 800D768C A469000A */  sh         $t1, 0xA($v1)
    /* E6640 800D7690 A46A000C */  sh         $t2, 0xC($v1)
  .L800D7694_E6644:
    /* E6644 800D7694 8FBF0014 */  lw         $ra, 0x14($sp)
    /* E6648 800D7698 27BD0018 */  addiu      $sp, $sp, 0x18
    /* E664C 800D769C 00801025 */  or         $v0, $a0, $zero
    /* E6650 800D76A0 03E00008 */  jr         $ra
    /* E6654 800D76A4 00000000 */   nop
endlabel func_800D7624_E65D4
