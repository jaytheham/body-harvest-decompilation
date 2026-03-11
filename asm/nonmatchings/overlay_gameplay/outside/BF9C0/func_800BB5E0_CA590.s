nonmatching func_800BB5E0_CA590, 0xD18

glabel func_800BB5E0_CA590
    /* CA590 800BB5E0 27BDFEA0 */  addiu      $sp, $sp, -0x160
    /* CA594 800BB5E4 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* CA598 800BB5E8 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* CA59C 800BB5EC 8C620000 */  lw         $v0, 0x0($v1)
    /* CA5A0 800BB5F0 AFBF007C */  sw         $ra, 0x7C($sp)
    /* CA5A4 800BB5F4 AFBE0078 */  sw         $fp, 0x78($sp)
    /* CA5A8 800BB5F8 244E0008 */  addiu      $t6, $v0, 0x8
    /* CA5AC 800BB5FC AFB70074 */  sw         $s7, 0x74($sp)
    /* CA5B0 800BB600 AFB60070 */  sw         $s6, 0x70($sp)
    /* CA5B4 800BB604 AFB5006C */  sw         $s5, 0x6C($sp)
    /* CA5B8 800BB608 AFB40068 */  sw         $s4, 0x68($sp)
    /* CA5BC 800BB60C AFB30064 */  sw         $s3, 0x64($sp)
    /* CA5C0 800BB610 AFB20060 */  sw         $s2, 0x60($sp)
    /* CA5C4 800BB614 AFB1005C */  sw         $s1, 0x5C($sp)
    /* CA5C8 800BB618 AFB00058 */  sw         $s0, 0x58($sp)
    /* CA5CC 800BB61C F7BE0050 */  sdc1       $f30, 0x50($sp)
    /* CA5D0 800BB620 F7BC0048 */  sdc1       $f28, 0x48($sp)
    /* CA5D4 800BB624 F7BA0040 */  sdc1       $f26, 0x40($sp)
    /* CA5D8 800BB628 F7B80038 */  sdc1       $f24, 0x38($sp)
    /* CA5DC 800BB62C F7B60030 */  sdc1       $f22, 0x30($sp)
    /* CA5E0 800BB630 F7B40028 */  sdc1       $f20, 0x28($sp)
    /* CA5E4 800BB634 AC6E0000 */  sw         $t6, 0x0($v1)
    /* CA5E8 800BB638 3C188003 */  lui        $t8, %hi(D_80031230)
    /* CA5EC 800BB63C 27181230 */  addiu      $t8, $t8, %lo(D_80031230)
    /* CA5F0 800BB640 3C0F0600 */  lui        $t7, (0x6000000 >> 16)
    /* CA5F4 800BB644 AC4F0000 */  sw         $t7, 0x0($v0)
    /* CA5F8 800BB648 AC580004 */  sw         $t8, 0x4($v0)
    /* CA5FC 800BB64C 8C620000 */  lw         $v0, 0x0($v1)
    /* CA600 800BB650 3C0EBA00 */  lui        $t6, (0xBA001301 >> 16)
    /* CA604 800BB654 35CE1301 */  ori        $t6, $t6, (0xBA001301 & 0xFFFF)
    /* CA608 800BB658 24590008 */  addiu      $t9, $v0, 0x8
    /* CA60C 800BB65C AC790000 */  sw         $t9, 0x0($v1)
    /* CA610 800BB660 3C0F0008 */  lui        $t7, (0x80000 >> 16)
    /* CA614 800BB664 AC4F0004 */  sw         $t7, 0x4($v0)
    /* CA618 800BB668 AC4E0000 */  sw         $t6, 0x0($v0)
    /* CA61C 800BB66C 8C620000 */  lw         $v0, 0x0($v1)
    /* CA620 800BB670 3C11BB00 */  lui        $s1, (0xBB000001 >> 16)
    /* CA624 800BB674 3C128000 */  lui        $s2, (0x80008000 >> 16)
    /* CA628 800BB678 24580008 */  addiu      $t8, $v0, 0x8
    /* CA62C 800BB67C AC780000 */  sw         $t8, 0x0($v1)
    /* CA630 800BB680 36528000 */  ori        $s2, $s2, (0x80008000 & 0xFFFF)
    /* CA634 800BB684 36310001 */  ori        $s1, $s1, (0xBB000001 & 0xFFFF)
    /* CA638 800BB688 AC510000 */  sw         $s1, 0x0($v0)
    /* CA63C 800BB68C AC520004 */  sw         $s2, 0x4($v0)
    /* CA640 800BB690 8C620000 */  lw         $v0, 0x0($v1)
    /* CA644 800BB694 3C1FBA00 */  lui        $ra, (0xBA000C02 >> 16)
    /* CA648 800BB698 37FF0C02 */  ori        $ra, $ra, (0xBA000C02 & 0xFFFF)
    /* CA64C 800BB69C 24590008 */  addiu      $t9, $v0, 0x8
    /* CA650 800BB6A0 AC790000 */  sw         $t9, 0x0($v1)
    /* CA654 800BB6A4 24102000 */  addiu      $s0, $zero, 0x2000
    /* CA658 800BB6A8 AC500004 */  sw         $s0, 0x4($v0)
    /* CA65C 800BB6AC AC5F0000 */  sw         $ra, 0x0($v0)
    /* CA660 800BB6B0 8C620000 */  lw         $v0, 0x0($v1)
    /* CA664 800BB6B4 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
    /* CA668 800BB6B8 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
    /* CA66C 800BB6BC 244E0008 */  addiu      $t6, $v0, 0x8
    /* CA670 800BB6C0 AC6E0000 */  sw         $t6, 0x0($v1)
    /* CA674 800BB6C4 AC400004 */  sw         $zero, 0x4($v0)
    /* CA678 800BB6C8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* CA67C 800BB6CC 8C620000 */  lw         $v0, 0x0($v1)
    /* CA680 800BB6D0 3C0E0040 */  lui        $t6, (0x4049D8 >> 16)
    /* CA684 800BB6D4 3C19B900 */  lui        $t9, (0xB900031D >> 16)
    /* CA688 800BB6D8 24580008 */  addiu      $t8, $v0, 0x8
    /* CA68C 800BB6DC AC780000 */  sw         $t8, 0x0($v1)
    /* CA690 800BB6E0 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
    /* CA694 800BB6E4 35CE49D8 */  ori        $t6, $t6, (0x4049D8 & 0xFFFF)
    /* CA698 800BB6E8 AC4E0004 */  sw         $t6, 0x4($v0)
    /* CA69C 800BB6EC AC590000 */  sw         $t9, 0x0($v0)
    /* CA6A0 800BB6F0 8C620000 */  lw         $v0, 0x0($v1)
    /* CA6A4 800BB6F4 3C190002 */  lui        $t9, (0x20200 >> 16)
    /* CA6A8 800BB6F8 37390200 */  ori        $t9, $t9, (0x20200 & 0xFFFF)
    /* CA6AC 800BB6FC 244F0008 */  addiu      $t7, $v0, 0x8
    /* CA6B0 800BB700 AC6F0000 */  sw         $t7, 0x0($v1)
    /* CA6B4 800BB704 3C18B700 */  lui        $t8, (0xB7000000 >> 16)
    /* CA6B8 800BB708 AC580000 */  sw         $t8, 0x0($v0)
    /* CA6BC 800BB70C AC590004 */  sw         $t9, 0x4($v0)
    /* CA6C0 800BB710 8C620000 */  lw         $v0, 0x0($v1)
    /* CA6C4 800BB714 3C18470A */  lui        $t8, (0x470AD464 >> 16)
    /* CA6C8 800BB718 3718D464 */  ori        $t8, $t8, (0x470AD464 & 0xFFFF)
    /* CA6CC 800BB71C 244E0008 */  addiu      $t6, $v0, 0x8
    /* CA6D0 800BB720 AC6E0000 */  sw         $t6, 0x0($v1)
    /* CA6D4 800BB724 3C0FFB00 */  lui        $t7, (0xFB000000 >> 16)
    /* CA6D8 800BB728 AC4F0000 */  sw         $t7, 0x0($v0)
    /* CA6DC 800BB72C AC580004 */  sw         $t8, 0x4($v0)
    /* CA6E0 800BB730 8C620000 */  lw         $v0, 0x0($v1)
    /* CA6E4 800BB734 3C0F62EF */  lui        $t7, (0x62EFFFC8 >> 16)
    /* CA6E8 800BB738 3C0EFA00 */  lui        $t6, (0xFA00FFFF >> 16)
    /* CA6EC 800BB73C 24590008 */  addiu      $t9, $v0, 0x8
    /* CA6F0 800BB740 AC790000 */  sw         $t9, 0x0($v1)
    /* CA6F4 800BB744 35CEFFFF */  ori        $t6, $t6, (0xFA00FFFF & 0xFFFF)
    /* CA6F8 800BB748 35EFFFC8 */  ori        $t7, $t7, (0x62EFFFC8 & 0xFFFF)
    /* CA6FC 800BB74C AC4F0004 */  sw         $t7, 0x4($v0)
    /* CA700 800BB750 AC4E0000 */  sw         $t6, 0x0($v0)
    /* CA704 800BB754 8C620000 */  lw         $v0, 0x0($v1)
    /* CA708 800BB758 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* CA70C 800BB75C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* CA710 800BB760 24580008 */  addiu      $t8, $v0, 0x8
    /* CA714 800BB764 AC780000 */  sw         $t8, 0x0($v1)
    /* CA718 800BB768 AC500004 */  sw         $s0, 0x4($v0)
    /* CA71C 800BB76C AC5F0000 */  sw         $ra, 0x0($v0)
    /* CA720 800BB770 8C620000 */  lw         $v0, 0x0($v1)
    /* CA724 800BB774 3C180100 */  lui        $t8, %hi(D_1003990)
    /* CA728 800BB778 27183990 */  addiu      $t8, $t8, %lo(D_1003990)
    /* CA72C 800BB77C 24590008 */  addiu      $t9, $v0, 0x8
    /* CA730 800BB780 AC790000 */  sw         $t9, 0x0($v1)
    /* CA734 800BB784 AC520004 */  sw         $s2, 0x4($v0)
    /* CA738 800BB788 AC510000 */  sw         $s1, 0x0($v0)
    /* CA73C 800BB78C 8C620000 */  lw         $v0, 0x0($v1)
    /* CA740 800BB790 0301C824 */  and        $t9, $t8, $at
    /* CA744 800BB794 3C0FFD70 */  lui        $t7, (0xFD700000 >> 16)
    /* CA748 800BB798 244E0008 */  addiu      $t6, $v0, 0x8
    /* CA74C 800BB79C AC6E0000 */  sw         $t6, 0x0($v1)
    /* CA750 800BB7A0 AC590004 */  sw         $t9, 0x4($v0)
    /* CA754 800BB7A4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* CA758 800BB7A8 8C620000 */  lw         $v0, 0x0($v1)
    /* CA75C 800BB7AC 3C180701 */  lui        $t8, (0x7010040 >> 16)
    /* CA760 800BB7B0 37180040 */  ori        $t8, $t8, (0x7010040 & 0xFFFF)
    /* CA764 800BB7B4 244E0008 */  addiu      $t6, $v0, 0x8
    /* CA768 800BB7B8 AC6E0000 */  sw         $t6, 0x0($v1)
    /* CA76C 800BB7BC 3C0FF570 */  lui        $t7, (0xF5700000 >> 16)
    /* CA770 800BB7C0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* CA774 800BB7C4 AC580004 */  sw         $t8, 0x4($v0)
    /* CA778 800BB7C8 8C620000 */  lw         $v0, 0x0($v1)
    /* CA77C 800BB7CC 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
    /* CA780 800BB7D0 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
    /* CA784 800BB7D4 24590008 */  addiu      $t9, $v0, 0x8
    /* CA788 800BB7D8 AC790000 */  sw         $t9, 0x0($v1)
    /* CA78C 800BB7DC AC400004 */  sw         $zero, 0x4($v0)
    /* CA790 800BB7E0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* CA794 800BB7E4 8C620000 */  lw         $v0, 0x0($v1)
    /* CA798 800BB7E8 3C190707 */  lui        $t9, (0x707F400 >> 16)
    /* CA79C 800BB7EC 3739F400 */  ori        $t9, $t9, (0x707F400 & 0xFFFF)
    /* CA7A0 800BB7F0 244F0008 */  addiu      $t7, $v0, 0x8
    /* CA7A4 800BB7F4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* CA7A8 800BB7F8 AC590004 */  sw         $t9, 0x4($v0)
    /* CA7AC 800BB7FC AC580000 */  sw         $t8, 0x0($v0)
    /* CA7B0 800BB800 8C620000 */  lw         $v0, 0x0($v1)
    /* CA7B4 800BB804 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* CA7B8 800BB808 3C19F568 */  lui        $t9, (0xF5680400 >> 16)
    /* CA7BC 800BB80C 244E0008 */  addiu      $t6, $v0, 0x8
    /* CA7C0 800BB810 AC6E0000 */  sw         $t6, 0x0($v1)
    /* CA7C4 800BB814 AC400004 */  sw         $zero, 0x4($v0)
    /* CA7C8 800BB818 AC4F0000 */  sw         $t7, 0x0($v0)
    /* CA7CC 800BB81C 8C620000 */  lw         $v0, 0x0($v1)
    /* CA7D0 800BB820 3C0E0001 */  lui        $t6, (0x10040 >> 16)
    /* CA7D4 800BB824 35CE0040 */  ori        $t6, $t6, (0x10040 & 0xFFFF)
    /* CA7D8 800BB828 24580008 */  addiu      $t8, $v0, 0x8
    /* CA7DC 800BB82C AC780000 */  sw         $t8, 0x0($v1)
    /* CA7E0 800BB830 37390400 */  ori        $t9, $t9, (0xF5680400 & 0xFFFF)
    /* CA7E4 800BB834 AC590000 */  sw         $t9, 0x0($v0)
    /* CA7E8 800BB838 AC4E0004 */  sw         $t6, 0x4($v0)
    /* CA7EC 800BB83C 8C620000 */  lw         $v0, 0x0($v1)
    /* CA7F0 800BB840 3C190003 */  lui        $t9, (0x3C03C >> 16)
    /* CA7F4 800BB844 3739C03C */  ori        $t9, $t9, (0x3C03C & 0xFFFF)
    /* CA7F8 800BB848 244F0008 */  addiu      $t7, $v0, 0x8
    /* CA7FC 800BB84C AC6F0000 */  sw         $t7, 0x0($v1)
    /* CA800 800BB850 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* CA804 800BB854 AC580000 */  sw         $t8, 0x0($v0)
    /* CA808 800BB858 AC590004 */  sw         $t9, 0x4($v0)
    /* CA80C 800BB85C 8C620000 */  lw         $v0, 0x0($v1)
    /* CA810 800BB860 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* CA814 800BB864 3C19FC30 */  lui        $t9, (0xFC309861 >> 16)
    /* CA818 800BB868 244E0008 */  addiu      $t6, $v0, 0x8
    /* CA81C 800BB86C AC6E0000 */  sw         $t6, 0x0($v1)
    /* CA820 800BB870 AC400004 */  sw         $zero, 0x4($v0)
    /* CA824 800BB874 AC4F0000 */  sw         $t7, 0x0($v0)
    /* CA828 800BB878 8C620000 */  lw         $v0, 0x0($v1)
    /* CA82C 800BB87C 3C0E5532 */  lui        $t6, (0x5532FF7F >> 16)
    /* CA830 800BB880 35CEFF7F */  ori        $t6, $t6, (0x5532FF7F & 0xFFFF)
    /* CA834 800BB884 24580008 */  addiu      $t8, $v0, 0x8
    /* CA838 800BB888 AC780000 */  sw         $t8, 0x0($v1)
    /* CA83C 800BB88C 37399861 */  ori        $t9, $t9, (0xFC309861 & 0xFFFF)
    /* CA840 800BB890 3C128004 */  lui        $s2, %hi(currentLevel)
    /* CA844 800BB894 AC590000 */  sw         $t9, 0x0($v0)
    /* CA848 800BB898 AC4E0004 */  sw         $t6, 0x4($v0)
    /* CA84C 800BB89C 8E527F90 */  lw         $s2, %lo(currentLevel)($s2)
    /* CA850 800BB8A0 3C028004 */  lui        $v0, %hi(D_8003E0EE)
    /* CA854 800BB8A4 3C018014 */  lui        $at, %hi(D_80142E68)
    /* CA858 800BB8A8 00127840 */  sll        $t7, $s2, 1
    /* CA85C 800BB8AC 004F1021 */  addu       $v0, $v0, $t7
    /* CA860 800BB8B0 8442E0EE */  lh         $v0, %lo(D_8003E0EE)($v0)
    /* CA864 800BB8B4 24150046 */  addiu      $s5, $zero, 0x46
    /* CA868 800BB8B8 00002025 */  or         $a0, $zero, $zero
    /* CA86C 800BB8BC 0002C0C0 */  sll        $t8, $v0, 3
    /* CA870 800BB8C0 1B00026D */  blez       $t8, .L800BC278_CB228
    /* CA874 800BB8C4 03001025 */   or        $v0, $t8, $zero
    /* CA878 800BB8C8 3C118006 */  lui        $s1, %hi(D_8005BB34)
    /* CA87C 800BB8CC 2631BB34 */  addiu      $s1, $s1, %lo(D_8005BB34)
    /* CA880 800BB8D0 D43C2E68 */  ldc1       $f28, %lo(D_80142E68)($at)
    /* CA884 800BB8D4 0012C9C0 */  sll        $t9, $s2, 7
  .L800BB8D8_CA888:
    /* CA888 800BB8D8 00047040 */  sll        $t6, $a0, 1
    /* CA88C 800BB8DC 3C188014 */  lui        $t8, %hi(D_801479B0)
    /* CA890 800BB8E0 271879B0 */  addiu      $t8, $t8, %lo(D_801479B0)
    /* CA894 800BB8E4 032E7821 */  addu       $t7, $t9, $t6
    /* CA898 800BB8E8 01F88021 */  addu       $s0, $t7, $t8
    /* CA89C 800BB8EC 821FFF80 */  lb         $ra, -0x80($s0)
    /* CA8A0 800BB8F0 2401FFFF */  addiu      $at, $zero, -0x1
    /* CA8A4 800BB8F4 0012C880 */  sll        $t9, $s2, 2
    /* CA8A8 800BB8F8 13E10257 */  beq        $ra, $at, .L800BC258_CB208
    /* CA8AC 800BB8FC 0332C823 */   subu      $t9, $t9, $s2
    /* CA8B0 800BB900 3C0E8014 */  lui        $t6, %hi(D_801475F0)
    /* CA8B4 800BB904 25CE75F0 */  addiu      $t6, $t6, %lo(D_801475F0)
    /* CA8B8 800BB908 0019C980 */  sll        $t9, $t9, 6
    /* CA8BC 800BB90C 032E4021 */  addu       $t0, $t9, $t6
    /* CA8C0 800BB910 001F7880 */  sll        $t7, $ra, 2
    /* CA8C4 800BB914 820DFF81 */  lb         $t5, -0x7F($s0)
    /* CA8C8 800BB918 010F4821 */  addu       $t1, $t0, $t7
    /* CA8CC 800BB91C 8522FF40 */  lh         $v0, -0xC0($t1)
    /* CA8D0 800BB920 000D7080 */  sll        $t6, $t5, 2
    /* CA8D4 800BB924 8523FF42 */  lh         $v1, -0xBE($t1)
    /* CA8D8 800BB928 010E5021 */  addu       $t2, $t0, $t6
    /* CA8DC 800BB92C 0002CA00 */  sll        $t9, $v0, 8
    /* CA8E0 800BB930 03201025 */  or         $v0, $t9, $zero
    /* CA8E4 800BB934 3C0B8015 */  lui        $t3, %hi(D_80149434)
    /* CA8E8 800BB938 3C0C8015 */  lui        $t4, %hi(D_80149436)
    /* CA8EC 800BB93C 854FFF40 */  lh         $t7, -0xC0($t2)
    /* CA8F0 800BB940 8559FF42 */  lh         $t9, -0xBE($t2)
    /* CA8F4 800BB944 858C9436 */  lh         $t4, %lo(D_80149436)($t4)
    /* CA8F8 800BB948 856B9434 */  lh         $t3, %lo(D_80149434)($t3)
    /* CA8FC 800BB94C 0003C200 */  sll        $t8, $v1, 8
    /* CA900 800BB950 A7A4015E */  sh         $a0, 0x15E($sp)
    /* CA904 800BB954 03001825 */  or         $v1, $t8, $zero
    /* CA908 800BB958 000FC200 */  sll        $t8, $t7, 8
    /* CA90C 800BB95C 00197200 */  sll        $t6, $t9, 8
    /* CA910 800BB960 2585F700 */  addiu      $a1, $t4, -0x900
    /* CA914 800BB964 2564F800 */  addiu      $a0, $t3, -0x800
    /* CA918 800BB968 00047C00 */  sll        $t7, $a0, 16
    /* CA91C 800BB96C 0005CC00 */  sll        $t9, $a1, 16
    /* CA920 800BB970 00192C03 */  sra        $a1, $t9, 16
    /* CA924 800BB974 000F2403 */  sra        $a0, $t7, 16
    /* CA928 800BB978 25870700 */  addiu      $a3, $t4, 0x700
    /* CA92C 800BB97C 25660700 */  addiu      $a2, $t3, 0x700
    /* CA930 800BB980 00067C00 */  sll        $t7, $a2, 16
    /* CA934 800BB984 0007CC00 */  sll        $t9, $a3, 16
    /* CA938 800BB988 A7B8013E */  sh         $t8, 0x13E($sp)
    /* CA93C 800BB98C A7AE013C */  sh         $t6, 0x13C($sp)
    /* CA940 800BB990 00193C03 */  sra        $a3, $t9, 16
    /* CA944 800BB994 000F3403 */  sra        $a2, $t7, 16
    /* CA948 800BB998 27AF0142 */  addiu      $t7, $sp, 0x142
    /* CA94C 800BB99C 27B9013E */  addiu      $t9, $sp, 0x13E
    /* CA950 800BB9A0 27AE013C */  addiu      $t6, $sp, 0x13C
    /* CA954 800BB9A4 27B80140 */  addiu      $t8, $sp, 0x140
    /* CA958 800BB9A8 A7A2012A */  sh         $v0, 0x12A($sp)
    /* CA95C 800BB9AC A7A30128 */  sh         $v1, 0x128($sp)
    /* CA960 800BB9B0 AFB80014 */  sw         $t8, 0x14($sp)
    /* CA964 800BB9B4 AFAE001C */  sw         $t6, 0x1C($sp)
    /* CA968 800BB9B8 AFB90018 */  sw         $t9, 0x18($sp)
    /* CA96C 800BB9BC AFAF0010 */  sw         $t7, 0x10($sp)
    /* CA970 800BB9C0 A7A30140 */  sh         $v1, 0x140($sp)
    /* CA974 800BB9C4 0C02ECF4 */  jal        func_800BB3D0_CA380
    /* CA978 800BB9C8 A7A20142 */   sh        $v0, 0x142($sp)
    /* CA97C 800BB9CC 10400219 */  beqz       $v0, .L800BC234_CB1E4
    /* CA980 800BB9D0 87A30140 */   lh        $v1, 0x140($sp)
    /* CA984 800BB9D4 87A20142 */  lh         $v0, 0x142($sp)
    /* CA988 800BB9D8 87AF013E */  lh         $t7, 0x13E($sp)
    /* CA98C 800BB9DC 87AE013C */  lh         $t6, 0x13C($sp)
    /* CA990 800BB9E0 24127D00 */  addiu      $s2, $zero, 0x7D00
    /* CA994 800BB9E4 01E2C023 */  subu       $t8, $t7, $v0
    /* CA998 800BB9E8 07010003 */  bgez       $t8, .L800BB9F8_CA9A8
    /* CA99C 800BB9EC 0018C883 */   sra       $t9, $t8, 2
    /* CA9A0 800BB9F0 27010003 */  addiu      $at, $t8, 0x3
    /* CA9A4 800BB9F4 0001C883 */  sra        $t9, $at, 2
  .L800BB9F8_CA9A8:
    /* CA9A8 800BB9F8 01C37823 */  subu       $t7, $t6, $v1
    /* CA9AC 800BB9FC 44992000 */  mtc1       $t9, $f4
    /* CA9B0 800BBA00 00009825 */  or         $s3, $zero, $zero
    /* CA9B4 800BBA04 468027A0 */  cvt.s.w    $f30, $f4
    /* CA9B8 800BBA08 05E10003 */  bgez       $t7, .L800BBA18_CA9C8
    /* CA9BC 800BBA0C 000FC083 */   sra       $t8, $t7, 2
    /* CA9C0 800BBA10 25E10003 */  addiu      $at, $t7, 0x3
    /* CA9C4 800BBA14 0001C083 */  sra        $t8, $at, 2
  .L800BBA18_CA9C8:
    /* CA9C8 800BBA18 44983000 */  mtc1       $t8, $f6
    /* CA9CC 800BBA1C 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* CA9D0 800BBA20 44814000 */  mtc1       $at, $f8
    /* CA9D4 800BBA24 468030A0 */  cvt.s.w    $f2, $f6
    /* CA9D8 800BBA28 44815000 */  mtc1       $at, $f10
    /* CA9DC 800BBA2C 4608F603 */  div.s      $f24, $f30, $f8
    /* CA9E0 800BBA30 E7A2014C */  swc1       $f2, 0x14C($sp)
    /* CA9E4 800BBA34 460A1683 */  div.s      $f26, $f2, $f10
    /* CA9E8 800BBA38 44938000 */  mtc1       $s3, $f16
  .L800BBA3C_CA9EC:
    /* CA9EC 800BBA3C 87A20142 */  lh         $v0, 0x142($sp)
    /* CA9F0 800BBA40 87A30140 */  lh         $v1, 0x140($sp)
    /* CA9F4 800BBA44 46808020 */  cvt.s.w    $f0, $f16
    /* CA9F8 800BBA48 44829000 */  mtc1       $v0, $f18
    /* CA9FC 800BBA4C C7A2014C */  lwc1       $f2, 0x14C($sp)
    /* CAA00 800BBA50 44838000 */  mtc1       $v1, $f16
    /* CAA04 800BBA54 00008025 */  or         $s0, $zero, $zero
    /* CAA08 800BBA58 46809120 */  cvt.s.w    $f4, $f18
    /* CAA0C 800BBA5C 4600F182 */  mul.s      $f6, $f30, $f0
    /* CAA10 800BBA60 468084A0 */  cvt.s.w    $f18, $f16
    /* CAA14 800BBA64 46062200 */  add.s      $f8, $f4, $f6
    /* CAA18 800BBA68 46001102 */  mul.s      $f4, $f2, $f0
    /* CAA1C 800BBA6C 4600428D */  trunc.w.s  $f10, $f8
    /* CAA20 800BBA70 46049180 */  add.s      $f6, $f18, $f4
    /* CAA24 800BBA74 44175000 */  mfc1       $s7, $f10
    /* CAA28 800BBA78 4600320D */  trunc.w.s  $f8, $f6
    /* CAA2C 800BBA7C 00177400 */  sll        $t6, $s7, 16
    /* CAA30 800BBA80 000EBC03 */  sra        $s7, $t6, 16
    /* CAA34 800BBA84 44975000 */  mtc1       $s7, $f10
    /* CAA38 800BBA88 441E4000 */  mfc1       $fp, $f8
    /* CAA3C 800BBA8C 46805520 */  cvt.s.w    $f20, $f10
    /* CAA40 800BBA90 001ECC00 */  sll        $t9, $fp, 16
    /* CAA44 800BBA94 0019F403 */  sra        $fp, $t9, 16
    /* CAA48 800BBA98 449E8000 */  mtc1       $fp, $f16
    /* CAA4C 800BBA9C 00000000 */  nop
    /* CAA50 800BBAA0 468085A0 */  cvt.s.w    $f22, $f16
    /* CAA54 800BBAA4 44909000 */  mtc1       $s0, $f18
  .L800BBAA8_CAA58:
    /* CAA58 800BBAA8 00000000 */  nop
    /* CAA5C 800BBAAC 46809020 */  cvt.s.w    $f0, $f18
    /* CAA60 800BBAB0 4600C102 */  mul.s      $f4, $f24, $f0
    /* CAA64 800BBAB4 00000000 */  nop
    /* CAA68 800BBAB8 4600D282 */  mul.s      $f10, $f26, $f0
    /* CAA6C 800BBABC 4604A180 */  add.s      $f6, $f20, $f4
    /* CAA70 800BBAC0 460AB400 */  add.s      $f16, $f22, $f10
    /* CAA74 800BBAC4 4600320D */  trunc.w.s  $f8, $f6
    /* CAA78 800BBAC8 4600848D */  trunc.w.s  $f18, $f16
    /* CAA7C 800BBACC 44044000 */  mfc1       $a0, $f8
    /* CAA80 800BBAD0 44059000 */  mfc1       $a1, $f18
    /* CAA84 800BBAD4 0004C400 */  sll        $t8, $a0, 16
    /* CAA88 800BBAD8 00182403 */  sra        $a0, $t8, 16
    /* CAA8C 800BBADC 00057C00 */  sll        $t7, $a1, 16
    /* CAA90 800BBAE0 0C02E134 */  jal        func_800B84D0_C7480
    /* CAA94 800BBAE4 000F2C03 */   sra       $a1, $t7, 16
    /* CAA98 800BBAE8 00021A03 */  sra        $v1, $v0, 8
    /* CAA9C 800BBAEC 0003CC00 */  sll        $t9, $v1, 16
    /* CAAA0 800BBAF0 00197403 */  sra        $t6, $t9, 16
    /* CAAA4 800BBAF4 01D2082A */  slt        $at, $t6, $s2
    /* CAAA8 800BBAF8 10200004 */  beqz       $at, .L800BBB0C_CAABC
    /* CAAAC 800BBAFC 26100001 */   addiu     $s0, $s0, 0x1
    /* CAAB0 800BBB00 000E9400 */  sll        $s2, $t6, 16
    /* CAAB4 800BBB04 00127C03 */  sra        $t7, $s2, 16
    /* CAAB8 800BBB08 01E09025 */  or         $s2, $t7, $zero
  .L800BBB0C_CAABC:
    /* CAABC 800BBB0C 0010C400 */  sll        $t8, $s0, 16
    /* CAAC0 800BBB10 00188403 */  sra        $s0, $t8, 16
    /* CAAC4 800BBB14 2A010009 */  slti       $at, $s0, 0x9
    /* CAAC8 800BBB18 5420FFE3 */  bnel       $at, $zero, .L800BBAA8_CAA58
    /* CAACC 800BBB1C 44909000 */   mtc1      $s0, $f18
    /* CAAD0 800BBB20 24010003 */  addiu      $at, $zero, 0x3
    /* CAAD4 800BBB24 1261001A */  beq        $s3, $at, .L800BBB90_CAB40
    /* CAAD8 800BBB28 27A50114 */   addiu     $a1, $sp, 0x114
    /* CAADC 800BBB2C 26640001 */  addiu      $a0, $s3, 0x1
    /* CAAE0 800BBB30 44842000 */  mtc1       $a0, $f4
    /* CAAE4 800BBB34 87A20142 */  lh         $v0, 0x142($sp)
    /* CAAE8 800BBB38 87A30140 */  lh         $v1, 0x140($sp)
    /* CAAEC 800BBB3C 46802020 */  cvt.s.w    $f0, $f4
    /* CAAF0 800BBB40 44823000 */  mtc1       $v0, $f6
    /* CAAF4 800BBB44 44832000 */  mtc1       $v1, $f4
    /* CAAF8 800BBB48 AFA4008C */  sw         $a0, 0x8C($sp)
    /* CAAFC 800BBB4C 46803220 */  cvt.s.w    $f8, $f6
    /* CAB00 800BBB50 4600F282 */  mul.s      $f10, $f30, $f0
    /* CAB04 800BBB54 468021A0 */  cvt.s.w    $f6, $f4
    /* CAB08 800BBB58 460A4400 */  add.s      $f16, $f8, $f10
    /* CAB0C 800BBB5C C7A8014C */  lwc1       $f8, 0x14C($sp)
    /* CAB10 800BBB60 46004282 */  mul.s      $f10, $f8, $f0
    /* CAB14 800BBB64 4600848D */  trunc.w.s  $f18, $f16
    /* CAB18 800BBB68 44149000 */  mfc1       $s4, $f18
    /* CAB1C 800BBB6C 460A3400 */  add.s      $f16, $f6, $f10
    /* CAB20 800BBB70 00147C00 */  sll        $t7, $s4, 16
    /* CAB24 800BBB74 000FA403 */  sra        $s4, $t7, 16
    /* CAB28 800BBB78 4600848D */  trunc.w.s  $f18, $f16
    /* CAB2C 800BBB7C 44169000 */  mfc1       $s6, $f18
    /* CAB30 800BBB80 00000000 */  nop
    /* CAB34 800BBB84 00167400 */  sll        $t6, $s6, 16
    /* CAB38 800BBB88 10000005 */  b          .L800BBBA0_CAB50
    /* CAB3C 800BBB8C 000EB403 */   sra       $s6, $t6, 16
  .L800BBB90_CAB40:
    /* CAB40 800BBB90 26780001 */  addiu      $t8, $s3, 0x1
    /* CAB44 800BBB94 87B4013E */  lh         $s4, 0x13E($sp)
    /* CAB48 800BBB98 AFB8008C */  sw         $t8, 0x8C($sp)
    /* CAB4C 800BBB9C 87B6013C */  lh         $s6, 0x13C($sp)
  .L800BBBA0_CAB50:
    /* CAB50 800BBBA0 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* CAB54 800BBBA4 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* CAB58 800BBBA8 240E0020 */  addiu      $t6, $zero, 0x20
    /* CAB5C 800BBBAC A7B70118 */  sh         $s7, 0x118($sp)
    /* CAB60 800BBBB0 3099003F */  andi       $t9, $a0, 0x3F
    /* CAB64 800BBBB4 01D91823 */  subu       $v1, $t6, $t9
    /* CAB68 800BBBB8 00037C00 */  sll        $t7, $v1, 16
    /* CAB6C 800BBBBC 000FC403 */  sra        $t8, $t7, 16
    /* CAB70 800BBBC0 A7BE011A */  sh         $fp, 0x11A($sp)
    /* CAB74 800BBBC4 A7B40114 */  sh         $s4, 0x114($sp)
    /* CAB78 800BBBC8 A7B60116 */  sh         $s6, 0x116($sp)
    /* CAB7C 800BBBCC 07000003 */  bltz       $t8, .L800BBBDC_CAB8C
    /* CAB80 800BBBD0 03001825 */   or        $v1, $t8, $zero
    /* CAB84 800BBBD4 10000002 */  b          .L800BBBE0_CAB90
    /* CAB88 800BBBD8 03001025 */   or        $v0, $t8, $zero
  .L800BBBDC_CAB8C:
    /* CAB8C 800BBBDC 00031023 */  negu       $v0, $v1
  .L800BBBE0_CAB90:
    /* CAB90 800BBBE0 240E0062 */  addiu      $t6, $zero, 0x62
    /* CAB94 800BBBE4 01C2C823 */  subu       $t9, $t6, $v0
    /* CAB98 800BBBE8 000478C0 */  sll        $t7, $a0, 3
    /* CAB9C 800BBBEC 31F800FF */  andi       $t8, $t7, 0xFF
    /* CABA0 800BBBF0 240E0080 */  addiu      $t6, $zero, 0x80
    /* CABA4 800BBBF4 A3B90110 */  sb         $t9, 0x110($sp)
    /* CABA8 800BBBF8 01D81823 */  subu       $v1, $t6, $t8
    /* CABAC 800BBBFC 0003CC00 */  sll        $t9, $v1, 16
    /* CABB0 800BBC00 00197C03 */  sra        $t7, $t9, 16
    /* CABB4 800BBC04 05E00003 */  bltz       $t7, .L800BBC14_CABC4
    /* CABB8 800BBC08 01E01825 */   or        $v1, $t7, $zero
    /* CABBC 800BBC0C 10000002 */  b          .L800BBC18_CABC8
    /* CABC0 800BBC10 01E01025 */   or        $v0, $t7, $zero
  .L800BBC14_CABC4:
    /* CABC4 800BBC14 00031023 */  negu       $v0, $v1
  .L800BBC18_CABC8:
    /* CABC8 800BBC18 240E00EF */  addiu      $t6, $zero, 0xEF
    /* CABCC 800BBC1C 01C2C023 */  subu       $t8, $t6, $v0
    /* CABD0 800BBC20 04600003 */  bltz       $v1, .L800BBC30_CABE0
    /* CABD4 800BBC24 A3B80111 */   sb        $t8, 0x111($sp)
    /* CABD8 800BBC28 10000002 */  b          .L800BBC34_CABE4
    /* CABDC 800BBC2C 00601025 */   or        $v0, $v1, $zero
  .L800BBC30_CABE0:
    /* CABE0 800BBC30 00031023 */  negu       $v0, $v1
  .L800BBC34_CABE4:
    /* CABE4 800BBC34 241900FF */  addiu      $t9, $zero, 0xFF
    /* CABE8 800BBC38 03227823 */  subu       $t7, $t9, $v0
    /* CABEC 800BBC3C A3AF0112 */  sb         $t7, 0x112($sp)
    /* CABF0 800BBC40 27A40118 */  addiu      $a0, $sp, 0x118
    /* CABF4 800BBC44 0C02C69A */  jal        func_800B1A68_C0A18
    /* CABF8 800BBC48 27A60110 */   addiu     $a2, $sp, 0x110
    /* CABFC 800BBC4C 16F4000D */  bne        $s7, $s4, .L800BBC84_CAC34
    /* CAC00 800BBC50 3C028005 */   lui       $v0, %hi(gameplayMode)
    /* CAC04 800BBC54 3C0E8005 */  lui        $t6, %hi(D_80052A8C)
    /* CAC08 800BBC58 8DCE2A8C */  lw         $t6, %lo(D_80052A8C)($t6)
    /* CAC0C 800BBC5C 24017D00 */  addiu      $at, $zero, 0x7D00
    /* CAC10 800BBC60 AFA00120 */  sw         $zero, 0x120($sp)
    /* CAC14 800BBC64 000EC080 */  sll        $t8, $t6, 2
    /* CAC18 800BBC68 030EC021 */  addu       $t8, $t8, $t6
    /* CAC1C 800BBC6C 0018C040 */  sll        $t8, $t8, 1
    /* CAC20 800BBC70 0301001B */  divu       $zero, $t8, $at
    /* CAC24 800BBC74 0000C810 */  mfhi       $t9
    /* CAC28 800BBC78 AFB9011C */  sw         $t9, 0x11C($sp)
    /* CAC2C 800BBC7C 1000000C */  b          .L800BBCB0_CAC60
    /* CAC30 800BBC80 00000000 */   nop
  .L800BBC84_CAC34:
    /* CAC34 800BBC84 3C0F8005 */  lui        $t7, %hi(D_80052A8C)
    /* CAC38 800BBC88 8DEF2A8C */  lw         $t7, %lo(D_80052A8C)($t7)
    /* CAC3C 800BBC8C 24017D00 */  addiu      $at, $zero, 0x7D00
    /* CAC40 800BBC90 AFA0011C */  sw         $zero, 0x11C($sp)
    /* CAC44 800BBC94 000F7080 */  sll        $t6, $t7, 2
    /* CAC48 800BBC98 01CF7021 */  addu       $t6, $t6, $t7
    /* CAC4C 800BBC9C 000E7040 */  sll        $t6, $t6, 1
    /* CAC50 800BBCA0 01C1001B */  divu       $zero, $t6, $at
    /* CAC54 800BBCA4 0000C010 */  mfhi       $t8
    /* CAC58 800BBCA8 AFB80120 */  sw         $t8, 0x120($sp)
    /* CAC5C 800BBCAC 00000000 */  nop
  .L800BBCB0_CAC60:
    /* CAC60 800BBCB0 8C422ADC */  lw         $v0, %lo(gameplayMode)($v0)
    /* CAC64 800BBCB4 24010003 */  addiu      $at, $zero, 0x3
    /* CAC68 800BBCB8 1041002B */  beq        $v0, $at, .L800BBD68_CAD18
    /* CAC6C 800BBCBC 2401000B */   addiu     $at, $zero, 0xB
    /* CAC70 800BBCC0 10410029 */  beq        $v0, $at, .L800BBD68_CAD18
    /* CAC74 800BBCC4 3C108005 */   lui       $s0, %hi(D_80052B2C)
    /* CAC78 800BBCC8 8E102B2C */  lw         $s0, %lo(D_80052B2C)($s0)
    /* CAC7C 800BBCCC 00003025 */  or         $a2, $zero, $zero
    /* CAC80 800BBCD0 24070064 */  addiu      $a3, $zero, 0x64
    /* CAC84 800BBCD4 C6040000 */  lwc1       $f4, 0x0($s0)
    /* CAC88 800BBCD8 C60A0008 */  lwc1       $f10, 0x8($s0)
    /* CAC8C 800BBCDC 4604A201 */  sub.s      $f8, $f20, $f4
    /* CAC90 800BBCE0 460AB401 */  sub.s      $f16, $f22, $f10
    /* CAC94 800BBCE4 4600418D */  trunc.w.s  $f6, $f8
    /* CAC98 800BBCE8 4600848D */  trunc.w.s  $f18, $f16
    /* CAC9C 800BBCEC 44043000 */  mfc1       $a0, $f6
    /* CACA0 800BBCF0 44059000 */  mfc1       $a1, $f18
    /* CACA4 800BBCF4 00047C00 */  sll        $t7, $a0, 16
    /* CACA8 800BBCF8 000F2403 */  sra        $a0, $t7, 16
    /* CACAC 800BBCFC 0005CC00 */  sll        $t9, $a1, 16
    /* CACB0 800BBD00 0C02E94B */  jal        func_800BA52C_C94DC
    /* CACB4 800BBD04 00192C03 */   sra       $a1, $t9, 16
    /* CACB8 800BBD08 44942000 */  mtc1       $s4, $f4
    /* CACBC 800BBD0C 3C108005 */  lui        $s0, %hi(D_80052B2C)
    /* CACC0 800BBD10 8E102B2C */  lw         $s0, %lo(D_80052B2C)($s0)
    /* CACC4 800BBD14 46802220 */  cvt.s.w    $f8, $f4
    /* CACC8 800BBD18 44969000 */  mtc1       $s6, $f18
    /* CACCC 800BBD1C C6060000 */  lwc1       $f6, 0x0($s0)
    /* CACD0 800BBD20 305300FF */  andi       $s3, $v0, 0xFF
    /* CACD4 800BBD24 00003025 */  or         $a2, $zero, $zero
    /* CACD8 800BBD28 46809120 */  cvt.s.w    $f4, $f18
    /* CACDC 800BBD2C 24070064 */  addiu      $a3, $zero, 0x64
    /* CACE0 800BBD30 46064281 */  sub.s      $f10, $f8, $f6
    /* CACE4 800BBD34 C6080008 */  lwc1       $f8, 0x8($s0)
    /* CACE8 800BBD38 46082181 */  sub.s      $f6, $f4, $f8
    /* CACEC 800BBD3C 4600540D */  trunc.w.s  $f16, $f10
    /* CACF0 800BBD40 4600328D */  trunc.w.s  $f10, $f6
    /* CACF4 800BBD44 44048000 */  mfc1       $a0, $f16
    /* CACF8 800BBD48 44055000 */  mfc1       $a1, $f10
    /* CACFC 800BBD4C 0004C400 */  sll        $t8, $a0, 16
    /* CAD00 800BBD50 00182403 */  sra        $a0, $t8, 16
    /* CAD04 800BBD54 00057400 */  sll        $t6, $a1, 16
    /* CAD08 800BBD58 0C02E94B */  jal        func_800BA52C_C94DC
    /* CAD0C 800BBD5C 000E2C03 */   sra       $a1, $t6, 16
    /* CAD10 800BBD60 10000029 */  b          .L800BBE08_CADB8
    /* CAD14 800BBD64 8E390000 */   lw        $t9, 0x0($s1)
  .L800BBD68_CAD18:
    /* CAD18 800BBD68 3C028015 */  lui        $v0, %hi(D_80157F08)
    /* CAD1C 800BBD6C 24427F08 */  addiu      $v0, $v0, %lo(D_80157F08)
    /* CAD20 800BBD70 C4500000 */  lwc1       $f16, 0x0($v0)
    /* CAD24 800BBD74 C4480008 */  lwc1       $f8, 0x8($v0)
    /* CAD28 800BBD78 00003025 */  or         $a2, $zero, $zero
    /* CAD2C 800BBD7C 4610A481 */  sub.s      $f18, $f20, $f16
    /* CAD30 800BBD80 24070064 */  addiu      $a3, $zero, 0x64
    /* CAD34 800BBD84 4608B181 */  sub.s      $f6, $f22, $f8
    /* CAD38 800BBD88 4600910D */  trunc.w.s  $f4, $f18
    /* CAD3C 800BBD8C 4600328D */  trunc.w.s  $f10, $f6
    /* CAD40 800BBD90 44042000 */  mfc1       $a0, $f4
    /* CAD44 800BBD94 44055000 */  mfc1       $a1, $f10
    /* CAD48 800BBD98 00047C00 */  sll        $t7, $a0, 16
    /* CAD4C 800BBD9C 000F2403 */  sra        $a0, $t7, 16
    /* CAD50 800BBDA0 0005CC00 */  sll        $t9, $a1, 16
    /* CAD54 800BBDA4 0C02E94B */  jal        func_800BA52C_C94DC
    /* CAD58 800BBDA8 00192C03 */   sra       $a1, $t9, 16
    /* CAD5C 800BBDAC 44948000 */  mtc1       $s4, $f16
    /* CAD60 800BBDB0 44965000 */  mtc1       $s6, $f10
    /* CAD64 800BBDB4 3C038015 */  lui        $v1, %hi(D_80157F08)
    /* CAD68 800BBDB8 468084A0 */  cvt.s.w    $f18, $f16
    /* CAD6C 800BBDBC 24637F08 */  addiu      $v1, $v1, %lo(D_80157F08)
    /* CAD70 800BBDC0 C4640000 */  lwc1       $f4, 0x0($v1)
    /* CAD74 800BBDC4 305300FF */  andi       $s3, $v0, 0xFF
    /* CAD78 800BBDC8 00003025 */  or         $a2, $zero, $zero
    /* CAD7C 800BBDCC 46805420 */  cvt.s.w    $f16, $f10
    /* CAD80 800BBDD0 24070064 */  addiu      $a3, $zero, 0x64
    /* CAD84 800BBDD4 46049201 */  sub.s      $f8, $f18, $f4
    /* CAD88 800BBDD8 C4720008 */  lwc1       $f18, 0x8($v1)
    /* CAD8C 800BBDDC 46128101 */  sub.s      $f4, $f16, $f18
    /* CAD90 800BBDE0 4600418D */  trunc.w.s  $f6, $f8
    /* CAD94 800BBDE4 4600220D */  trunc.w.s  $f8, $f4
    /* CAD98 800BBDE8 44043000 */  mfc1       $a0, $f6
    /* CAD9C 800BBDEC 44054000 */  mfc1       $a1, $f8
    /* CADA0 800BBDF0 0004C400 */  sll        $t8, $a0, 16
    /* CADA4 800BBDF4 00182403 */  sra        $a0, $t8, 16
    /* CADA8 800BBDF8 00057400 */  sll        $t6, $a1, 16
    /* CADAC 800BBDFC 0C02E94B */  jal        func_800BA52C_C94DC
    /* CADB0 800BBE00 000E2C03 */   sra       $a1, $t6, 16
    /* CADB4 800BBE04 8E390000 */  lw         $t9, 0x0($s1)
  .L800BBE08_CADB8:
    /* CADB8 800BBE08 87AA012A */  lh         $t2, 0x12A($sp)
    /* CADBC 800BBE0C 87AB0128 */  lh         $t3, 0x128($sp)
    /* CADC0 800BBE10 A7370000 */  sh         $s7, 0x0($t9)
    /* CADC4 800BBE14 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CADC8 800BBE18 24080096 */  addiu      $t0, $zero, 0x96
    /* CADCC 800BBE1C 24090BB8 */  addiu      $t1, $zero, 0xBB8
    /* CADD0 800BBE20 A5F20002 */  sh         $s2, 0x2($t7)
    /* CADD4 800BBE24 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CADD8 800BBE28 01577823 */  subu       $t7, $t2, $s7
    /* CADDC 800BBE2C 448F8000 */  mtc1       $t7, $f16
    /* CADE0 800BBE30 A5DE0004 */  sh         $fp, 0x4($t6)
    /* CADE4 800BBE34 8E380000 */  lw         $t8, 0x0($s1)
    /* CADE8 800BBE38 468084A1 */  cvt.d.w    $f18, $f16
    /* CADEC 800BBE3C 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
    /* CADF0 800BBE40 A7000006 */  sh         $zero, 0x6($t8)
    /* CADF4 800BBE44 8FB9011C */  lw         $t9, 0x11C($sp)
    /* CADF8 800BBE48 463C9102 */  mul.d      $f4, $f18, $f28
    /* CADFC 800BBE4C 44993000 */  mtc1       $t9, $f6
    /* CAE00 800BBE50 07210005 */  bgez       $t9, .L800BBE68_CAE18
    /* CAE04 800BBE54 46803021 */   cvt.d.w   $f0, $f6
    /* CAE08 800BBE58 44815800 */  mtc1       $at, $f11
    /* CAE0C 800BBE5C 44805000 */  mtc1       $zero, $f10
    /* CAE10 800BBE60 00000000 */  nop
    /* CAE14 800BBE64 462A0000 */  add.d      $f0, $f0, $f10
  .L800BBE68_CAE18:
    /* CAE18 800BBE68 46202200 */  add.d      $f8, $f4, $f0
    /* CAE1C 800BBE6C 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CAE20 800BBE70 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
    /* CAE24 800BBE74 4620418D */  trunc.w.d  $f6, $f8
    /* CAE28 800BBE78 44043000 */  mfc1       $a0, $f6
    /* CAE2C 800BBE7C 00000000 */  nop
    /* CAE30 800BBE80 0004C400 */  sll        $t8, $a0, 16
    /* CAE34 800BBE84 00182403 */  sra        $a0, $t8, 16
    /* CAE38 800BBE88 017EC023 */  subu       $t8, $t3, $fp
    /* CAE3C 800BBE8C 44989000 */  mtc1       $t8, $f18
    /* CAE40 800BBE90 A5E40008 */  sh         $a0, 0x8($t7)
    /* CAE44 800BBE94 8FAE0120 */  lw         $t6, 0x120($sp)
    /* CAE48 800BBE98 46809121 */  cvt.d.w    $f4, $f18
    /* CAE4C 800BBE9C 448E5000 */  mtc1       $t6, $f10
    /* CAE50 800BBEA0 463C2202 */  mul.d      $f8, $f4, $f28
    /* CAE54 800BBEA4 05C10005 */  bgez       $t6, .L800BBEBC_CAE6C
    /* CAE58 800BBEA8 468050A1 */   cvt.d.w   $f2, $f10
    /* CAE5C 800BBEAC 44818800 */  mtc1       $at, $f17
    /* CAE60 800BBEB0 44808000 */  mtc1       $zero, $f16
    /* CAE64 800BBEB4 00000000 */  nop
    /* CAE68 800BBEB8 46301080 */  add.d      $f2, $f2, $f16
  .L800BBEBC_CAE6C:
    /* CAE6C 800BBEBC 46224180 */  add.d      $f6, $f8, $f2
    /* CAE70 800BBEC0 8E380000 */  lw         $t8, 0x0($s1)
    /* CAE74 800BBEC4 00403825 */  or         $a3, $v0, $zero
    /* CAE78 800BBEC8 24020096 */  addiu      $v0, $zero, 0x96
    /* CAE7C 800BBECC 4620328D */  trunc.w.d  $f10, $f6
    /* CAE80 800BBED0 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CAE84 800BBED4 44055000 */  mfc1       $a1, $f10
    /* CAE88 800BBED8 00000000 */  nop
    /* CAE8C 800BBEDC A705000A */  sh         $a1, 0xA($t8)
    /* CAE90 800BBEE0 8E390000 */  lw         $t9, 0x0($s1)
    /* CAE94 800BBEE4 A335000C */  sb         $s5, 0xC($t9)
    /* CAE98 800BBEE8 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CAE9C 800BBEEC A1F5000D */  sb         $s5, 0xD($t7)
    /* CAEA0 800BBEF0 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CAEA4 800BBEF4 A1C8000E */  sb         $t0, 0xE($t6)
    /* CAEA8 800BBEF8 8E380000 */  lw         $t8, 0x0($s1)
    /* CAEAC 800BBEFC A313000F */  sb         $s3, 0xF($t8)
    /* CAEB0 800BBF00 8E390000 */  lw         $t9, 0x0($s1)
    /* CAEB4 800BBF04 A7370010 */  sh         $s7, 0x10($t9)
    /* CAEB8 800BBF08 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CAEBC 800BBF0C A5E90012 */  sh         $t1, 0x12($t7)
    /* CAEC0 800BBF10 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CAEC4 800BBF14 A5DE0014 */  sh         $fp, 0x14($t6)
    /* CAEC8 800BBF18 8E380000 */  lw         $t8, 0x0($s1)
    /* CAECC 800BBF1C A7000016 */  sh         $zero, 0x16($t8)
    /* CAED0 800BBF20 8E390000 */  lw         $t9, 0x0($s1)
    /* CAED4 800BBF24 A7240018 */  sh         $a0, 0x18($t9)
    /* CAED8 800BBF28 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CAEDC 800BBF2C A5E5001A */  sh         $a1, 0x1A($t7)
    /* CAEE0 800BBF30 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CAEE4 800BBF34 A1D5001C */  sb         $s5, 0x1C($t6)
    /* CAEE8 800BBF38 8E380000 */  lw         $t8, 0x0($s1)
    /* CAEEC 800BBF3C A315001D */  sb         $s5, 0x1D($t8)
    /* CAEF0 800BBF40 8E390000 */  lw         $t9, 0x0($s1)
    /* CAEF4 800BBF44 A328001E */  sb         $t0, 0x1E($t9)
    /* CAEF8 800BBF48 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CAEFC 800BBF4C A1F3001F */  sb         $s3, 0x1F($t7)
    /* CAF00 800BBF50 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CAF04 800BBF54 A5D40020 */  sh         $s4, 0x20($t6)
    /* CAF08 800BBF58 8E380000 */  lw         $t8, 0x0($s1)
    /* CAF0C 800BBF5C 01547023 */  subu       $t6, $t2, $s4
    /* CAF10 800BBF60 448E8000 */  mtc1       $t6, $f16
    /* CAF14 800BBF64 A7120022 */  sh         $s2, 0x22($t8)
    /* CAF18 800BBF68 0176C023 */  subu       $t8, $t3, $s6
    /* CAF1C 800BBF6C 468084A1 */  cvt.d.w    $f18, $f16
    /* CAF20 800BBF70 44985000 */  mtc1       $t8, $f10
    /* CAF24 800BBF74 8E390000 */  lw         $t9, 0x0($s1)
    /* CAF28 800BBF78 46805421 */  cvt.d.w    $f16, $f10
    /* CAF2C 800BBF7C 463C9102 */  mul.d      $f4, $f18, $f28
    /* CAF30 800BBF80 A7360024 */  sh         $s6, 0x24($t9)
    /* CAF34 800BBF84 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CAF38 800BBF88 463C8482 */  mul.d      $f18, $f16, $f28
    /* CAF3C 800BBF8C A5E00026 */  sh         $zero, 0x26($t7)
    /* CAF40 800BBF90 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CAF44 800BBF94 46202200 */  add.d      $f8, $f4, $f0
    /* CAF48 800BBF98 46229100 */  add.d      $f4, $f18, $f2
    /* CAF4C 800BBF9C 4620418D */  trunc.w.d  $f6, $f8
    /* CAF50 800BBFA0 4620220D */  trunc.w.d  $f8, $f4
    /* CAF54 800BBFA4 44063000 */  mfc1       $a2, $f6
    /* CAF58 800BBFA8 00000000 */  nop
    /* CAF5C 800BBFAC A5C60028 */  sh         $a2, 0x28($t6)
    /* CAF60 800BBFB0 8E380000 */  lw         $t8, 0x0($s1)
    /* CAF64 800BBFB4 44034000 */  mfc1       $v1, $f8
    /* CAF68 800BBFB8 00000000 */  nop
    /* CAF6C 800BBFBC A703002A */  sh         $v1, 0x2A($t8)
    /* CAF70 800BBFC0 8E390000 */  lw         $t9, 0x0($s1)
    /* CAF74 800BBFC4 A335002C */  sb         $s5, 0x2C($t9)
    /* CAF78 800BBFC8 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CAF7C 800BBFCC A1F5002D */  sb         $s5, 0x2D($t7)
    /* CAF80 800BBFD0 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CAF84 800BBFD4 A1C8002E */  sb         $t0, 0x2E($t6)
    /* CAF88 800BBFD8 8E380000 */  lw         $t8, 0x0($s1)
    /* CAF8C 800BBFDC 24080FA0 */  addiu      $t0, $zero, 0xFA0
    /* CAF90 800BBFE0 A307002F */  sb         $a3, 0x2F($t8)
    /* CAF94 800BBFE4 8E390000 */  lw         $t9, 0x0($s1)
    /* CAF98 800BBFE8 A7340030 */  sh         $s4, 0x30($t9)
    /* CAF9C 800BBFEC 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CAFA0 800BBFF0 A5E90032 */  sh         $t1, 0x32($t7)
    /* CAFA4 800BBFF4 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CAFA8 800BBFF8 24090BB8 */  addiu      $t1, $zero, 0xBB8
    /* CAFAC 800BBFFC A5D60034 */  sh         $s6, 0x34($t6)
    /* CAFB0 800BC000 8E380000 */  lw         $t8, 0x0($s1)
    /* CAFB4 800BC004 A7000036 */  sh         $zero, 0x36($t8)
    /* CAFB8 800BC008 8E390000 */  lw         $t9, 0x0($s1)
    /* CAFBC 800BC00C A7260038 */  sh         $a2, 0x38($t9)
    /* CAFC0 800BC010 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CAFC4 800BC014 A5E3003A */  sh         $v1, 0x3A($t7)
    /* CAFC8 800BC018 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CAFCC 800BC01C A1D5003C */  sb         $s5, 0x3C($t6)
    /* CAFD0 800BC020 8E380000 */  lw         $t8, 0x0($s1)
    /* CAFD4 800BC024 A315003D */  sb         $s5, 0x3D($t8)
    /* CAFD8 800BC028 8E390000 */  lw         $t9, 0x0($s1)
    /* CAFDC 800BC02C A322003E */  sb         $v0, 0x3E($t9)
    /* CAFE0 800BC030 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CAFE4 800BC034 A1E7003F */  sb         $a3, 0x3F($t7)
    /* CAFE8 800BC038 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CAFEC 800BC03C A5D70040 */  sh         $s7, 0x40($t6)
    /* CAFF0 800BC040 8E380000 */  lw         $t8, 0x0($s1)
    /* CAFF4 800BC044 A7090042 */  sh         $t1, 0x42($t8)
    /* CAFF8 800BC048 8E390000 */  lw         $t9, 0x0($s1)
    /* CAFFC 800BC04C A73E0044 */  sh         $fp, 0x44($t9)
    /* CB000 800BC050 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CB004 800BC054 A5E00046 */  sh         $zero, 0x46($t7)
    /* CB008 800BC058 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CB00C 800BC05C A5C40048 */  sh         $a0, 0x48($t6)
    /* CB010 800BC060 8E380000 */  lw         $t8, 0x0($s1)
    /* CB014 800BC064 A705004A */  sh         $a1, 0x4A($t8)
    /* CB018 800BC068 8E390000 */  lw         $t9, 0x0($s1)
    /* CB01C 800BC06C A335004C */  sb         $s5, 0x4C($t9)
    /* CB020 800BC070 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CB024 800BC074 A1F5004D */  sb         $s5, 0x4D($t7)
    /* CB028 800BC078 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CB02C 800BC07C A1C2004E */  sb         $v0, 0x4E($t6)
    /* CB030 800BC080 8E380000 */  lw         $t8, 0x0($s1)
    /* CB034 800BC084 A313004F */  sb         $s3, 0x4F($t8)
    /* CB038 800BC088 8E390000 */  lw         $t9, 0x0($s1)
    /* CB03C 800BC08C A7370050 */  sh         $s7, 0x50($t9)
    /* CB040 800BC090 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CB044 800BC094 A5E80052 */  sh         $t0, 0x52($t7)
    /* CB048 800BC098 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CB04C 800BC09C A5DE0054 */  sh         $fp, 0x54($t6)
    /* CB050 800BC0A0 8E380000 */  lw         $t8, 0x0($s1)
    /* CB054 800BC0A4 A7000056 */  sh         $zero, 0x56($t8)
    /* CB058 800BC0A8 8E390000 */  lw         $t9, 0x0($s1)
    /* CB05C 800BC0AC A7240058 */  sh         $a0, 0x58($t9)
    /* CB060 800BC0B0 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CB064 800BC0B4 A5E5005A */  sh         $a1, 0x5A($t7)
    /* CB068 800BC0B8 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CB06C 800BC0BC A1D5005C */  sb         $s5, 0x5C($t6)
    /* CB070 800BC0C0 8E380000 */  lw         $t8, 0x0($s1)
    /* CB074 800BC0C4 A315005D */  sb         $s5, 0x5D($t8)
    /* CB078 800BC0C8 8E390000 */  lw         $t9, 0x0($s1)
    /* CB07C 800BC0CC A322005E */  sb         $v0, 0x5E($t9)
    /* CB080 800BC0D0 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CB084 800BC0D4 A1E0005F */  sb         $zero, 0x5F($t7)
    /* CB088 800BC0D8 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CB08C 800BC0DC A5D40060 */  sh         $s4, 0x60($t6)
    /* CB090 800BC0E0 8E380000 */  lw         $t8, 0x0($s1)
    /* CB094 800BC0E4 A7090062 */  sh         $t1, 0x62($t8)
    /* CB098 800BC0E8 8E390000 */  lw         $t9, 0x0($s1)
    /* CB09C 800BC0EC 3C09BF00 */  lui        $t1, (0xBF000000 >> 16)
    /* CB0A0 800BC0F0 A7360064 */  sh         $s6, 0x64($t9)
    /* CB0A4 800BC0F4 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CB0A8 800BC0F8 A5E00066 */  sh         $zero, 0x66($t7)
    /* CB0AC 800BC0FC 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CB0B0 800BC100 A5C60068 */  sh         $a2, 0x68($t6)
    /* CB0B4 800BC104 8E380000 */  lw         $t8, 0x0($s1)
    /* CB0B8 800BC108 A703006A */  sh         $v1, 0x6A($t8)
    /* CB0BC 800BC10C 8E390000 */  lw         $t9, 0x0($s1)
    /* CB0C0 800BC110 A335006C */  sb         $s5, 0x6C($t9)
    /* CB0C4 800BC114 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CB0C8 800BC118 A1F5006D */  sb         $s5, 0x6D($t7)
    /* CB0CC 800BC11C 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CB0D0 800BC120 A1C2006E */  sb         $v0, 0x6E($t6)
    /* CB0D4 800BC124 8E380000 */  lw         $t8, 0x0($s1)
    /* CB0D8 800BC128 A307006F */  sb         $a3, 0x6F($t8)
    /* CB0DC 800BC12C 8E390000 */  lw         $t9, 0x0($s1)
    /* CB0E0 800BC130 A7340070 */  sh         $s4, 0x70($t9)
    /* CB0E4 800BC134 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CB0E8 800BC138 A5E80072 */  sh         $t0, 0x72($t7)
    /* CB0EC 800BC13C 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CB0F0 800BC140 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* CB0F4 800BC144 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* CB0F8 800BC148 A5D60074 */  sh         $s6, 0x74($t6)
    /* CB0FC 800BC14C 8E380000 */  lw         $t8, 0x0($s1)
    /* CB100 800BC150 A7000076 */  sh         $zero, 0x76($t8)
    /* CB104 800BC154 8E390000 */  lw         $t9, 0x0($s1)
    /* CB108 800BC158 A7260078 */  sh         $a2, 0x78($t9)
    /* CB10C 800BC15C 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CB110 800BC160 24190096 */  addiu      $t9, $zero, 0x96
    /* CB114 800BC164 A5E3007A */  sh         $v1, 0x7A($t7)
    /* CB118 800BC168 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CB11C 800BC16C A1D5007C */  sb         $s5, 0x7C($t6)
    /* CB120 800BC170 8E380000 */  lw         $t8, 0x0($s1)
    /* CB124 800BC174 A315007D */  sb         $s5, 0x7D($t8)
    /* CB128 800BC178 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CB12C 800BC17C A1F9007E */  sb         $t9, 0x7E($t7)
    /* CB130 800BC180 8E2E0000 */  lw         $t6, 0x0($s1)
    /* CB134 800BC184 3C190400 */  lui        $t9, (0x400207F >> 16)
    /* CB138 800BC188 3739207F */  ori        $t9, $t9, (0x400207F & 0xFFFF)
    /* CB13C 800BC18C A1C0007F */  sb         $zero, 0x7F($t6)
    /* CB140 800BC190 8D020000 */  lw         $v0, 0x0($t0)
    /* CB144 800BC194 24580008 */  addiu      $t8, $v0, 0x8
    /* CB148 800BC198 AD180000 */  sw         $t8, 0x0($t0)
    /* CB14C 800BC19C AC590000 */  sw         $t9, 0x0($v0)
    /* CB150 800BC1A0 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CB154 800BC1A4 01E17021 */  addu       $t6, $t7, $at
    /* CB158 800BC1A8 AC4E0004 */  sw         $t6, 0x4($v0)
    /* CB15C 800BC1AC 8E380000 */  lw         $t8, 0x0($s1)
    /* CB160 800BC1B0 8D020000 */  lw         $v0, 0x0($t0)
    /* CB164 800BC1B4 240E0204 */  addiu      $t6, $zero, 0x204
    /* CB168 800BC1B8 27190080 */  addiu      $t9, $t8, 0x80
    /* CB16C 800BC1BC 244F0008 */  addiu      $t7, $v0, 0x8
    /* CB170 800BC1C0 AE390000 */  sw         $t9, 0x0($s1)
    /* CB174 800BC1C4 AD0F0000 */  sw         $t7, 0x0($t0)
    /* CB178 800BC1C8 AC4E0004 */  sw         $t6, 0x4($v0)
    /* CB17C 800BC1CC AC490000 */  sw         $t1, 0x0($v0)
    /* CB180 800BC1D0 8D020000 */  lw         $v0, 0x0($t0)
    /* CB184 800BC1D4 3C190002 */  lui        $t9, (0x20406 >> 16)
    /* CB188 800BC1D8 37390406 */  ori        $t9, $t9, (0x20406 & 0xFFFF)
    /* CB18C 800BC1DC 24580008 */  addiu      $t8, $v0, 0x8
    /* CB190 800BC1E0 AD180000 */  sw         $t8, 0x0($t0)
    /* CB194 800BC1E4 AC590004 */  sw         $t9, 0x4($v0)
    /* CB198 800BC1E8 AC490000 */  sw         $t1, 0x0($v0)
    /* CB19C 800BC1EC 8D020000 */  lw         $v0, 0x0($t0)
    /* CB1A0 800BC1F0 3C0E0008 */  lui        $t6, (0x80A0C >> 16)
    /* CB1A4 800BC1F4 35CE0A0C */  ori        $t6, $t6, (0x80A0C & 0xFFFF)
    /* CB1A8 800BC1F8 244F0008 */  addiu      $t7, $v0, 0x8
    /* CB1AC 800BC1FC AD0F0000 */  sw         $t7, 0x0($t0)
    /* CB1B0 800BC200 AC4E0004 */  sw         $t6, 0x4($v0)
    /* CB1B4 800BC204 AC490000 */  sw         $t1, 0x0($v0)
    /* CB1B8 800BC208 8D020000 */  lw         $v0, 0x0($t0)
    /* CB1BC 800BC20C 3C19000A */  lui        $t9, (0xA0C0E >> 16)
    /* CB1C0 800BC210 37390C0E */  ori        $t9, $t9, (0xA0C0E & 0xFFFF)
    /* CB1C4 800BC214 24580008 */  addiu      $t8, $v0, 0x8
    /* CB1C8 800BC218 AD180000 */  sw         $t8, 0x0($t0)
    /* CB1CC 800BC21C AC590004 */  sw         $t9, 0x4($v0)
    /* CB1D0 800BC220 AC490000 */  sw         $t1, 0x0($v0)
    /* CB1D4 800BC224 87B3008E */  lh         $s3, 0x8E($sp)
    /* CB1D8 800BC228 2A610004 */  slti       $at, $s3, 0x4
    /* CB1DC 800BC22C 5420FE03 */  bnel       $at, $zero, .L800BBA3C_CA9EC
    /* CB1E0 800BC230 44938000 */   mtc1      $s3, $f16
  .L800BC234_CB1E4:
    /* CB1E4 800BC234 3C128004 */  lui        $s2, %hi(currentLevel)
    /* CB1E8 800BC238 8E527F90 */  lw         $s2, %lo(currentLevel)($s2)
    /* CB1EC 800BC23C 3C028004 */  lui        $v0, %hi(D_8003E0EE)
    /* CB1F0 800BC240 87A4015E */  lh         $a0, 0x15E($sp)
    /* CB1F4 800BC244 00127840 */  sll        $t7, $s2, 1
    /* CB1F8 800BC248 004F1021 */  addu       $v0, $v0, $t7
    /* CB1FC 800BC24C 8442E0EE */  lh         $v0, %lo(D_8003E0EE)($v0)
    /* CB200 800BC250 000270C0 */  sll        $t6, $v0, 3
    /* CB204 800BC254 01C01025 */  or         $v0, $t6, $zero
  .L800BC258_CB208:
    /* CB208 800BC258 24840001 */  addiu      $a0, $a0, 0x1
    /* CB20C 800BC25C 0004C400 */  sll        $t8, $a0, 16
    /* CB210 800BC260 00182403 */  sra        $a0, $t8, 16
    /* CB214 800BC264 0082082A */  slt        $at, $a0, $v0
    /* CB218 800BC268 5420FD9B */  bnel       $at, $zero, .L800BB8D8_CA888
    /* CB21C 800BC26C 0012C9C0 */   sll       $t9, $s2, 7
    /* CB220 800BC270 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* CB224 800BC274 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
  .L800BC278_CB228:
    /* CB228 800BC278 8C620000 */  lw         $v0, 0x0($v1)
    /* CB22C 800BC27C 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* CB230 800BC280 3C190600 */  lui        $t9, (0x6000000 >> 16)
    /* CB234 800BC284 244F0008 */  addiu      $t7, $v0, 0x8
    /* CB238 800BC288 AC6F0000 */  sw         $t7, 0x0($v1)
    /* CB23C 800BC28C AC400004 */  sw         $zero, 0x4($v0)
    /* CB240 800BC290 AC4E0000 */  sw         $t6, 0x0($v0)
    /* CB244 800BC294 8C620000 */  lw         $v0, 0x0($v1)
    /* CB248 800BC298 3C0F8003 */  lui        $t7, %hi(D_80031200)
    /* CB24C 800BC29C 25EF1200 */  addiu      $t7, $t7, %lo(D_80031200)
    /* CB250 800BC2A0 24580008 */  addiu      $t8, $v0, 0x8
    /* CB254 800BC2A4 AC780000 */  sw         $t8, 0x0($v1)
    /* CB258 800BC2A8 AC4F0004 */  sw         $t7, 0x4($v0)
    /* CB25C 800BC2AC AC590000 */  sw         $t9, 0x0($v0)
    /* CB260 800BC2B0 8FBF007C */  lw         $ra, 0x7C($sp)
    /* CB264 800BC2B4 8FBE0078 */  lw         $fp, 0x78($sp)
    /* CB268 800BC2B8 8FB70074 */  lw         $s7, 0x74($sp)
    /* CB26C 800BC2BC 8FB60070 */  lw         $s6, 0x70($sp)
    /* CB270 800BC2C0 8FB5006C */  lw         $s5, 0x6C($sp)
    /* CB274 800BC2C4 8FB40068 */  lw         $s4, 0x68($sp)
    /* CB278 800BC2C8 8FB30064 */  lw         $s3, 0x64($sp)
    /* CB27C 800BC2CC 8FB20060 */  lw         $s2, 0x60($sp)
    /* CB280 800BC2D0 8FB1005C */  lw         $s1, 0x5C($sp)
    /* CB284 800BC2D4 8FB00058 */  lw         $s0, 0x58($sp)
    /* CB288 800BC2D8 D7BE0050 */  ldc1       $f30, 0x50($sp)
    /* CB28C 800BC2DC D7BC0048 */  ldc1       $f28, 0x48($sp)
    /* CB290 800BC2E0 D7BA0040 */  ldc1       $f26, 0x40($sp)
    /* CB294 800BC2E4 D7B80038 */  ldc1       $f24, 0x38($sp)
    /* CB298 800BC2E8 D7B60030 */  ldc1       $f22, 0x30($sp)
    /* CB29C 800BC2EC D7B40028 */  ldc1       $f20, 0x28($sp)
    /* CB2A0 800BC2F0 03E00008 */  jr         $ra
    /* CB2A4 800BC2F4 27BD0160 */   addiu     $sp, $sp, 0x160
endlabel func_800BB5E0_CA590
