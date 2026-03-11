nonmatching func_800C25F8_D15A8, 0x598

glabel func_800C25F8_D15A8
    /* D15A8 800C25F8 27BDFF30 */  addiu      $sp, $sp, -0xD0
    /* D15AC 800C25FC 24070020 */  addiu      $a3, $zero, 0x20
    /* D15B0 800C2600 3C018015 */  lui        $at, %hi(D_80153BCD)
    /* D15B4 800C2604 A0273BCD */  sb         $a3, %lo(D_80153BCD)($at)
    /* D15B8 800C2608 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* D15BC 800C260C 3C018015 */  lui        $at, %hi(D_80153BCE)
    /* D15C0 800C2610 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* D15C4 800C2614 A0273BCE */  sb         $a3, %lo(D_80153BCE)($at)
    /* D15C8 800C2618 8C620000 */  lw         $v0, 0x0($v1)
    /* D15CC 800C261C 308E00FF */  andi       $t6, $a0, 0xFF
    /* D15D0 800C2620 AFB7004C */  sw         $s7, 0x4C($sp)
    /* D15D4 800C2624 000EC080 */  sll        $t8, $t6, 2
    /* D15D8 800C2628 244F0008 */  addiu      $t7, $v0, 0x8
    /* D15DC 800C262C AFBF0054 */  sw         $ra, 0x54($sp)
    /* D15E0 800C2630 AFBE0050 */  sw         $fp, 0x50($sp)
    /* D15E4 800C2634 AFB60048 */  sw         $s6, 0x48($sp)
    /* D15E8 800C2638 AFB50044 */  sw         $s5, 0x44($sp)
    /* D15EC 800C263C AFB40040 */  sw         $s4, 0x40($sp)
    /* D15F0 800C2640 AFB3003C */  sw         $s3, 0x3C($sp)
    /* D15F4 800C2644 AFB20038 */  sw         $s2, 0x38($sp)
    /* D15F8 800C2648 AFB10034 */  sw         $s1, 0x34($sp)
    /* D15FC 800C264C AFB00030 */  sw         $s0, 0x30($sp)
    /* D1600 800C2650 F7B80028 */  sdc1       $f24, 0x28($sp)
    /* D1604 800C2654 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* D1608 800C2658 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* D160C 800C265C AFA400D0 */  sw         $a0, 0xD0($sp)
    /* D1610 800C2660 AC6F0000 */  sw         $t7, 0x0($v1)
    /* D1614 800C2664 030EC023 */  subu       $t8, $t8, $t6
    /* D1618 800C2668 3C198015 */  lui        $t9, %hi(D_80154088)
    /* D161C 800C266C 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
    /* D1620 800C2670 27394088 */  addiu      $t9, $t9, %lo(D_80154088)
    /* D1624 800C2674 0018C080 */  sll        $t8, $t8, 2
    /* D1628 800C2678 0319B821 */  addu       $s7, $t8, $t9
    /* D162C 800C267C AC4C0000 */  sw         $t4, 0x0($v0)
    /* D1630 800C2680 AC400004 */  sw         $zero, 0x4($v0)
    /* D1634 800C2684 86ED0006 */  lh         $t5, 0x6($s7)
    /* D1638 800C2688 3C1E8015 */  lui        $fp, %hi(D_80154318)
    /* D163C 800C268C 27DE4318 */  addiu      $fp, $fp, %lo(D_80154318)
    /* D1640 800C2690 000D70C0 */  sll        $t6, $t5, 3
    /* D1644 800C2694 01CD7023 */  subu       $t6, $t6, $t5
    /* D1648 800C2698 000E7080 */  sll        $t6, $t6, 2
    /* D164C 800C269C 03CE7821 */  addu       $t7, $fp, $t6
    /* D1650 800C26A0 91E60012 */  lbu        $a2, 0x12($t7)
    /* D1654 800C26A4 3C19FC12 */  lui        $t9, (0xFC121824 >> 16)
    /* D1658 800C26A8 24010002 */  addiu      $at, $zero, 0x2
    /* D165C 800C26AC 10C00003 */  beqz       $a2, .L800C26BC_D166C
    /* D1660 800C26B0 37391824 */   ori       $t9, $t9, (0xFC121824 & 0xFFFF)
    /* D1664 800C26B4 54C10041 */  bnel       $a2, $at, .L800C27BC_D176C
    /* D1668 800C26B8 24010001 */   addiu     $at, $zero, 0x1
  .L800C26BC_D166C:
    /* D166C 800C26BC 8C620000 */  lw         $v0, 0x0($v1)
    /* D1670 800C26C0 3C0DFF33 */  lui        $t5, (0xFF33FFFF >> 16)
    /* D1674 800C26C4 35ADFFFF */  ori        $t5, $t5, (0xFF33FFFF & 0xFFFF)
    /* D1678 800C26C8 24580008 */  addiu      $t8, $v0, 0x8
    /* D167C 800C26CC AC780000 */  sw         $t8, 0x0($v1)
    /* D1680 800C26D0 AC4D0004 */  sw         $t5, 0x4($v0)
    /* D1684 800C26D4 AC590000 */  sw         $t9, 0x0($v0)
    /* D1688 800C26D8 8C620000 */  lw         $v0, 0x0($v1)
    /* D168C 800C26DC 3C180101 */  lui        $t8, %hi(D_100E080)
    /* D1690 800C26E0 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* D1694 800C26E4 244E0008 */  addiu      $t6, $v0, 0x8
    /* D1698 800C26E8 AC6E0000 */  sw         $t6, 0x0($v1)
    /* D169C 800C26EC 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* D16A0 800C26F0 2718E080 */  addiu      $t8, $t8, %lo(D_100E080)
    /* D16A4 800C26F4 0301C824 */  and        $t9, $t8, $at
    /* D16A8 800C26F8 3C0FFD90 */  lui        $t7, (0xFD900000 >> 16)
    /* D16AC 800C26FC AC4F0000 */  sw         $t7, 0x0($v0)
    /* D16B0 800C2700 AC590004 */  sw         $t9, 0x4($v0)
    /* D16B4 800C2704 8C620000 */  lw         $v0, 0x0($v1)
    /* D16B8 800C2708 3C0F0708 */  lui        $t7, (0x7080200 >> 16)
    /* D16BC 800C270C 35EF0200 */  ori        $t7, $t7, (0x7080200 & 0xFFFF)
    /* D16C0 800C2710 244D0008 */  addiu      $t5, $v0, 0x8
    /* D16C4 800C2714 AC6D0000 */  sw         $t5, 0x0($v1)
    /* D16C8 800C2718 3C0EF590 */  lui        $t6, (0xF5900000 >> 16)
    /* D16CC 800C271C AC4E0000 */  sw         $t6, 0x0($v0)
    /* D16D0 800C2720 AC4F0004 */  sw         $t7, 0x4($v0)
    /* D16D4 800C2724 8C620000 */  lw         $v0, 0x0($v1)
    /* D16D8 800C2728 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* D16DC 800C272C 3C0F070F */  lui        $t7, (0x70FF400 >> 16)
    /* D16E0 800C2730 24580008 */  addiu      $t8, $v0, 0x8
    /* D16E4 800C2734 AC780000 */  sw         $t8, 0x0($v1)
    /* D16E8 800C2738 AC400004 */  sw         $zero, 0x4($v0)
    /* D16EC 800C273C AC590000 */  sw         $t9, 0x0($v0)
    /* D16F0 800C2740 8C620000 */  lw         $v0, 0x0($v1)
    /* D16F4 800C2744 35EFF400 */  ori        $t7, $t7, (0x70FF400 & 0xFFFF)
    /* D16F8 800C2748 3C0EF300 */  lui        $t6, (0xF3000000 >> 16)
    /* D16FC 800C274C 244D0008 */  addiu      $t5, $v0, 0x8
    /* D1700 800C2750 AC6D0000 */  sw         $t5, 0x0($v1)
    /* D1704 800C2754 AC4F0004 */  sw         $t7, 0x4($v0)
    /* D1708 800C2758 AC4E0000 */  sw         $t6, 0x0($v0)
    /* D170C 800C275C 8C620000 */  lw         $v0, 0x0($v1)
    /* D1710 800C2760 3C0E0008 */  lui        $t6, (0x80200 >> 16)
    /* D1714 800C2764 3C0DF580 */  lui        $t5, (0xF5800400 >> 16)
    /* D1718 800C2768 24580008 */  addiu      $t8, $v0, 0x8
    /* D171C 800C276C AC780000 */  sw         $t8, 0x0($v1)
    /* D1720 800C2770 AC400004 */  sw         $zero, 0x4($v0)
    /* D1724 800C2774 AC4C0000 */  sw         $t4, 0x0($v0)
    /* D1728 800C2778 8C620000 */  lw         $v0, 0x0($v1)
    /* D172C 800C277C 35AD0400 */  ori        $t5, $t5, (0xF5800400 & 0xFFFF)
    /* D1730 800C2780 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
    /* D1734 800C2784 24590008 */  addiu      $t9, $v0, 0x8
    /* D1738 800C2788 AC790000 */  sw         $t9, 0x0($v1)
    /* D173C 800C278C AC4E0004 */  sw         $t6, 0x4($v0)
    /* D1740 800C2790 AC4D0000 */  sw         $t5, 0x0($v0)
    /* D1744 800C2794 8C620000 */  lw         $v0, 0x0($v1)
    /* D1748 800C2798 3C190007 */  lui        $t9, (0x7C07C >> 16)
    /* D174C 800C279C 3739C07C */  ori        $t9, $t9, (0x7C07C & 0xFFFF)
    /* D1750 800C27A0 244F0008 */  addiu      $t7, $v0, 0x8
    /* D1754 800C27A4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* D1758 800C27A8 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* D175C 800C27AC AC580000 */  sw         $t8, 0x0($v0)
    /* D1760 800C27B0 10000043 */  b          .L800C28C0_D1870
    /* D1764 800C27B4 AC590004 */   sw        $t9, 0x4($v0)
    /* D1768 800C27B8 24010001 */  addiu      $at, $zero, 0x1
  .L800C27BC_D176C:
    /* D176C 800C27BC 14C10040 */  bne        $a2, $at, .L800C28C0_D1870
    /* D1770 800C27C0 3C0EFCFF */   lui       $t6, (0xFCFF99FF >> 16)
    /* D1774 800C27C4 8C620000 */  lw         $v0, 0x0($v1)
    /* D1778 800C27C8 3C0FFF32 */  lui        $t7, (0xFF327F3F >> 16)
    /* D177C 800C27CC 35EF7F3F */  ori        $t7, $t7, (0xFF327F3F & 0xFFFF)
    /* D1780 800C27D0 244D0008 */  addiu      $t5, $v0, 0x8
    /* D1784 800C27D4 AC6D0000 */  sw         $t5, 0x0($v1)
    /* D1788 800C27D8 35CE99FF */  ori        $t6, $t6, (0xFCFF99FF & 0xFFFF)
    /* D178C 800C27DC AC4E0000 */  sw         $t6, 0x0($v0)
    /* D1790 800C27E0 AC4F0004 */  sw         $t7, 0x4($v0)
    /* D1794 800C27E4 8C620000 */  lw         $v0, 0x0($v1)
    /* D1798 800C27E8 3C0D0101 */  lui        $t5, %hi(D_100D800)
    /* D179C 800C27EC 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* D17A0 800C27F0 24580008 */  addiu      $t8, $v0, 0x8
    /* D17A4 800C27F4 AC780000 */  sw         $t8, 0x0($v1)
    /* D17A8 800C27F8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* D17AC 800C27FC 25ADD800 */  addiu      $t5, $t5, %lo(D_100D800)
    /* D17B0 800C2800 01A17024 */  and        $t6, $t5, $at
    /* D17B4 800C2804 3C19FD90 */  lui        $t9, (0xFD900000 >> 16)
    /* D17B8 800C2808 AC590000 */  sw         $t9, 0x0($v0)
    /* D17BC 800C280C AC4E0004 */  sw         $t6, 0x4($v0)
    /* D17C0 800C2810 8C620000 */  lw         $v0, 0x0($v1)
    /* D17C4 800C2814 3C190708 */  lui        $t9, (0x7080200 >> 16)
    /* D17C8 800C2818 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
    /* D17CC 800C281C 244F0008 */  addiu      $t7, $v0, 0x8
    /* D17D0 800C2820 AC6F0000 */  sw         $t7, 0x0($v1)
    /* D17D4 800C2824 3C18F590 */  lui        $t8, (0xF5900000 >> 16)
    /* D17D8 800C2828 AC580000 */  sw         $t8, 0x0($v0)
    /* D17DC 800C282C AC590004 */  sw         $t9, 0x4($v0)
    /* D17E0 800C2830 8C620000 */  lw         $v0, 0x0($v1)
    /* D17E4 800C2834 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
    /* D17E8 800C2838 3C19070F */  lui        $t9, (0x70FF400 >> 16)
    /* D17EC 800C283C 244D0008 */  addiu      $t5, $v0, 0x8
    /* D17F0 800C2840 AC6D0000 */  sw         $t5, 0x0($v1)
    /* D17F4 800C2844 AC400004 */  sw         $zero, 0x4($v0)
    /* D17F8 800C2848 AC4E0000 */  sw         $t6, 0x0($v0)
    /* D17FC 800C284C 8C620000 */  lw         $v0, 0x0($v1)
    /* D1800 800C2850 3739F400 */  ori        $t9, $t9, (0x70FF400 & 0xFFFF)
    /* D1804 800C2854 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
    /* D1808 800C2858 244F0008 */  addiu      $t7, $v0, 0x8
    /* D180C 800C285C AC6F0000 */  sw         $t7, 0x0($v1)
    /* D1810 800C2860 AC590004 */  sw         $t9, 0x4($v0)
    /* D1814 800C2864 AC580000 */  sw         $t8, 0x0($v0)
    /* D1818 800C2868 8C620000 */  lw         $v0, 0x0($v1)
    /* D181C 800C286C 3C180008 */  lui        $t8, (0x80200 >> 16)
    /* D1820 800C2870 3C0FF580 */  lui        $t7, (0xF5800400 >> 16)
    /* D1824 800C2874 244D0008 */  addiu      $t5, $v0, 0x8
    /* D1828 800C2878 AC6D0000 */  sw         $t5, 0x0($v1)
    /* D182C 800C287C AC400004 */  sw         $zero, 0x4($v0)
    /* D1830 800C2880 AC4C0000 */  sw         $t4, 0x0($v0)
    /* D1834 800C2884 8C620000 */  lw         $v0, 0x0($v1)
    /* D1838 800C2888 35EF0400 */  ori        $t7, $t7, (0xF5800400 & 0xFFFF)
    /* D183C 800C288C 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
    /* D1840 800C2890 244E0008 */  addiu      $t6, $v0, 0x8
    /* D1844 800C2894 AC6E0000 */  sw         $t6, 0x0($v1)
    /* D1848 800C2898 AC580004 */  sw         $t8, 0x4($v0)
    /* D184C 800C289C AC4F0000 */  sw         $t7, 0x0($v0)
    /* D1850 800C28A0 8C620000 */  lw         $v0, 0x0($v1)
    /* D1854 800C28A4 3C0E0007 */  lui        $t6, (0x7C07C >> 16)
    /* D1858 800C28A8 35CEC07C */  ori        $t6, $t6, (0x7C07C & 0xFFFF)
    /* D185C 800C28AC 24590008 */  addiu      $t9, $v0, 0x8
    /* D1860 800C28B0 AC790000 */  sw         $t9, 0x0($v1)
    /* D1864 800C28B4 3C0DF200 */  lui        $t5, (0xF2000000 >> 16)
    /* D1868 800C28B8 AC4D0000 */  sw         $t5, 0x0($v0)
    /* D186C 800C28BC AC4E0004 */  sw         $t6, 0x4($v0)
  .L800C28C0_D1870:
    /* D1870 800C28C0 8C620000 */  lw         $v0, 0x0($v1)
    /* D1874 800C28C4 244F0008 */  addiu      $t7, $v0, 0x8
    /* D1878 800C28C8 AC6F0000 */  sw         $t7, 0x0($v1)
    /* D187C 800C28CC AC400004 */  sw         $zero, 0x4($v0)
    /* D1880 800C28D0 AC4C0000 */  sw         $t4, 0x0($v0)
    /* D1884 800C28D4 92E40004 */  lbu        $a0, 0x4($s7)
    /* D1888 800C28D8 28810002 */  slti       $at, $a0, 0x2
    /* D188C 800C28DC 54200024 */  bnel       $at, $zero, .L800C2970_D1920
    /* D1890 800C28E0 3C013F80 */   lui       $at, (0x3F800000 >> 16)
    /* D1894 800C28E4 86E60008 */  lh         $a2, 0x8($s7)
    /* D1898 800C28E8 2407001C */  addiu      $a3, $zero, 0x1C
    /* D189C 800C28EC 3C048015 */  lui        $a0, %hi(D_80153AD0)
    /* D18A0 800C28F0 00C70019 */  multu      $a2, $a3
    /* D18A4 800C28F4 24843AD0 */  addiu      $a0, $a0, %lo(D_80153AD0)
    /* D18A8 800C28F8 27A500BC */  addiu      $a1, $sp, 0xBC
    /* D18AC 800C28FC 0000C012 */  mflo       $t8
    /* D18B0 800C2900 03D88021 */  addu       $s0, $fp, $t8
    /* D18B4 800C2904 86030006 */  lh         $v1, 0x6($s0)
    /* D18B8 800C2908 860D0008 */  lh         $t5, 0x8($s0)
    /* D18BC 800C290C 8618000A */  lh         $t8, 0xA($s0)
    /* D18C0 800C2910 00670019 */  multu      $v1, $a3
    /* D18C4 800C2914 0000C812 */  mflo       $t9
    /* D18C8 800C2918 03D91021 */  addu       $v0, $fp, $t9
    /* D18CC 800C291C 844E0008 */  lh         $t6, 0x8($v0)
    /* D18D0 800C2920 8459000A */  lh         $t9, 0xA($v0)
    /* D18D4 800C2924 01AE7823 */  subu       $t7, $t5, $t6
    /* D18D8 800C2928 448F2000 */  mtc1       $t7, $f4
    /* D18DC 800C292C 844F000C */  lh         $t7, 0xC($v0)
    /* D18E0 800C2930 860E000C */  lh         $t6, 0xC($s0)
    /* D18E4 800C2934 03196823 */  subu       $t5, $t8, $t9
    /* D18E8 800C2938 448D4000 */  mtc1       $t5, $f8
    /* D18EC 800C293C 01CFC023 */  subu       $t8, $t6, $t7
    /* D18F0 800C2940 44988000 */  mtc1       $t8, $f16
    /* D18F4 800C2944 468021A0 */  cvt.s.w    $f6, $f4
    /* D18F8 800C2948 468042A0 */  cvt.s.w    $f10, $f8
    /* D18FC 800C294C E7A600BC */  swc1       $f6, 0xBC($sp)
    /* D1900 800C2950 468084A0 */  cvt.s.w    $f18, $f16
    /* D1904 800C2954 E7AA00C0 */  swc1       $f10, 0xC0($sp)
    /* D1908 800C2958 0C030424 */  jal        func_800C1090_D0040
    /* D190C 800C295C E7B200C4 */   swc1      $f18, 0xC4($sp)
    /* D1910 800C2960 46000606 */  mov.s      $f24, $f0
    /* D1914 800C2964 10000004 */  b          .L800C2978_D1928
    /* D1918 800C2968 92E40004 */   lbu       $a0, 0x4($s7)
    /* D191C 800C296C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
  .L800C2970_D1920:
    /* D1920 800C2970 4481C000 */  mtc1       $at, $f24
    /* D1924 800C2974 00000000 */  nop
  .L800C2978_D1928:
    /* D1928 800C2978 4480B000 */  mtc1       $zero, $f22
    /* D192C 800C297C 3C168015 */  lui        $s6, %hi(D_80153BCC)
    /* D1930 800C2980 3C158015 */  lui        $s5, %hi(D_80153BC8)
    /* D1934 800C2984 4616C03C */  c.lt.s     $f24, $f22
    /* D1938 800C2988 26B53BC8 */  addiu      $s5, $s5, %lo(D_80153BC8)
    /* D193C 800C298C 26D63BCC */  addiu      $s6, $s6, %lo(D_80153BCC)
    /* D1940 800C2990 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
    /* D1944 800C2994 45000003 */  bc1f       .L800C29A4_D1954
    /* D1948 800C2998 3C148015 */   lui       $s4, %hi(D_80153BC4)
    /* D194C 800C299C 10000002 */  b          .L800C29A8_D1958
    /* D1950 800C29A0 86E60006 */   lh        $a2, 0x6($s7)
  .L800C29A4_D1954:
    /* D1954 800C29A4 86E60008 */  lh         $a2, 0x8($s7)
  .L800C29A8_D1958:
    /* D1958 800C29A8 1880006A */  blez       $a0, .L800C2B54_D1B04
    /* D195C 800C29AC 00009825 */   or        $s3, $zero, $zero
    /* D1960 800C29B0 3C128015 */  lui        $s2, %hi(D_80156EDA)
    /* D1964 800C29B4 3C118015 */  lui        $s1, %hi(D_80153BB8)
    /* D1968 800C29B8 4481A800 */  mtc1       $at, $f21
    /* D196C 800C29BC 4480A000 */  mtc1       $zero, $f20
    /* D1970 800C29C0 26313BB8 */  addiu      $s1, $s1, %lo(D_80153BB8)
    /* D1974 800C29C4 26526EDA */  addiu      $s2, $s2, %lo(D_80156EDA)
    /* D1978 800C29C8 26943BC4 */  addiu      $s4, $s4, %lo(D_80153BC4)
    /* D197C 800C29CC 0006C8C0 */  sll        $t9, $a2, 3
  .L800C29D0_D1980:
    /* D1980 800C29D0 0326C823 */  subu       $t9, $t9, $a2
    /* D1984 800C29D4 0019C880 */  sll        $t9, $t9, 2
    /* D1988 800C29D8 03D98021 */  addu       $s0, $fp, $t9
    /* D198C 800C29DC 860D0008 */  lh         $t5, 0x8($s0)
    /* D1990 800C29E0 860E000A */  lh         $t6, 0xA($s0)
    /* D1994 800C29E4 860F000C */  lh         $t7, 0xC($s0)
    /* D1998 800C29E8 448D2000 */  mtc1       $t5, $f4
    /* D199C 800C29EC 86190002 */  lh         $t9, 0x2($s0)
    /* D19A0 800C29F0 448E4000 */  mtc1       $t6, $f8
    /* D19A4 800C29F4 468021A0 */  cvt.s.w    $f6, $f4
    /* D19A8 800C29F8 448F8000 */  mtc1       $t7, $f16
    /* D19AC 800C29FC 44992000 */  mtc1       $t9, $f4
    /* D19B0 800C2A00 920D0011 */  lbu        $t5, 0x11($s0)
    /* D19B4 800C2A04 2618000E */  addiu      $t8, $s0, 0xE
    /* D19B8 800C2A08 468042A0 */  cvt.s.w    $f10, $f8
    /* D19BC 800C2A0C E6260000 */  swc1       $f6, 0x0($s1)
    /* D19C0 800C2A10 AE980000 */  sw         $t8, 0x0($s4)
    /* D19C4 800C2A14 A2CD0000 */  sb         $t5, 0x0($s6)
    /* D19C8 800C2A18 468084A0 */  cvt.s.w    $f18, $f16
    /* D19CC 800C2A1C E62A0004 */  swc1       $f10, 0x4($s1)
    /* D19D0 800C2A20 468021A0 */  cvt.s.w    $f6, $f4
    /* D19D4 800C2A24 E6320008 */  swc1       $f18, 0x8($s1)
    /* D19D8 800C2A28 0C036CD4 */  jal        func_800DB350_EA300
    /* D19DC 800C2A2C E6A60000 */   swc1      $f6, 0x0($s5)
    /* D19E0 800C2A30 864E0000 */  lh         $t6, 0x0($s2)
    /* D19E4 800C2A34 92F80001 */  lbu        $t8, 0x1($s7)
    /* D19E8 800C2A38 25CF0004 */  addiu      $t7, $t6, 0x4
    /* D19EC 800C2A3C 33190002 */  andi       $t9, $t8, 0x2
    /* D19F0 800C2A40 13200038 */  beqz       $t9, .L800C2B24_D1AD4
    /* D19F4 800C2A44 A64F0000 */   sh        $t7, 0x0($s2)
    /* D19F8 800C2A48 92ED0004 */  lbu        $t5, 0x4($s7)
    /* D19FC 800C2A4C 25AEFFFF */  addiu      $t6, $t5, -0x1
    /* D1A00 800C2A50 026E082A */  slt        $at, $s3, $t6
    /* D1A04 800C2A54 50200034 */  beql       $at, $zero, .L800C2B28_D1AD8
    /* D1A08 800C2A58 4616C03C */   c.lt.s    $f24, $f22
    /* D1A0C 800C2A5C 4616C03C */  c.lt.s     $f24, $f22
    /* D1A10 800C2A60 00000000 */  nop
    /* D1A14 800C2A64 45020004 */  bc1fl      .L800C2A78_D1A28
    /* D1A18 800C2A68 86030006 */   lh        $v1, 0x6($s0)
    /* D1A1C 800C2A6C 10000002 */  b          .L800C2A78_D1A28
    /* D1A20 800C2A70 86030004 */   lh        $v1, 0x4($s0)
    /* D1A24 800C2A74 86030006 */  lh         $v1, 0x6($s0)
  .L800C2A78_D1A28:
    /* D1A28 800C2A78 000378C0 */  sll        $t7, $v1, 3
    /* D1A2C 800C2A7C 01E37823 */  subu       $t7, $t7, $v1
    /* D1A30 800C2A80 000F7880 */  sll        $t7, $t7, 2
    /* D1A34 800C2A84 03CF1021 */  addu       $v0, $fp, $t7
    /* D1A38 800C2A88 84580008 */  lh         $t8, 0x8($v0)
    /* D1A3C 800C2A8C C6300000 */  lwc1       $f16, 0x0($s1)
    /* D1A40 800C2A90 8459000A */  lh         $t9, 0xA($v0)
    /* D1A44 800C2A94 44984000 */  mtc1       $t8, $f8
    /* D1A48 800C2A98 844D000C */  lh         $t5, 0xC($v0)
    /* D1A4C 800C2A9C 844F0002 */  lh         $t7, 0x2($v0)
    /* D1A50 800C2AA0 468042A0 */  cvt.s.w    $f10, $f8
    /* D1A54 800C2AA4 90580011 */  lbu        $t8, 0x11($v0)
    /* D1A58 800C2AA8 244E000E */  addiu      $t6, $v0, 0xE
    /* D1A5C 800C2AAC AE8E0000 */  sw         $t6, 0x0($s4)
    /* D1A60 800C2AB0 A2D80000 */  sb         $t8, 0x0($s6)
    /* D1A64 800C2AB4 46105480 */  add.s      $f18, $f10, $f16
    /* D1A68 800C2AB8 44995000 */  mtc1       $t9, $f10
    /* D1A6C 800C2ABC 46009121 */  cvt.d.s    $f4, $f18
    /* D1A70 800C2AC0 46805420 */  cvt.s.w    $f16, $f10
    /* D1A74 800C2AC4 46342182 */  mul.d      $f6, $f4, $f20
    /* D1A78 800C2AC8 C6320004 */  lwc1       $f18, 0x4($s1)
    /* D1A7C 800C2ACC 46128100 */  add.s      $f4, $f16, $f18
    /* D1A80 800C2AD0 448D8000 */  mtc1       $t5, $f16
    /* D1A84 800C2AD4 46203220 */  cvt.s.d    $f8, $f6
    /* D1A88 800C2AD8 460021A1 */  cvt.d.s    $f6, $f4
    /* D1A8C 800C2ADC E6280000 */  swc1       $f8, 0x0($s1)
    /* D1A90 800C2AE0 46343202 */  mul.d      $f8, $f6, $f20
    /* D1A94 800C2AE4 C6240008 */  lwc1       $f4, 0x8($s1)
    /* D1A98 800C2AE8 468084A0 */  cvt.s.w    $f18, $f16
    /* D1A9C 800C2AEC 462042A0 */  cvt.s.d    $f10, $f8
    /* D1AA0 800C2AF0 46049180 */  add.s      $f6, $f18, $f4
    /* D1AA4 800C2AF4 E62A0004 */  swc1       $f10, 0x4($s1)
    /* D1AA8 800C2AF8 448F9000 */  mtc1       $t7, $f18
    /* D1AAC 800C2AFC 46003221 */  cvt.d.s    $f8, $f6
    /* D1AB0 800C2B00 46809120 */  cvt.s.w    $f4, $f18
    /* D1AB4 800C2B04 46344282 */  mul.d      $f10, $f8, $f20
    /* D1AB8 800C2B08 E6A40000 */  swc1       $f4, 0x0($s5)
    /* D1ABC 800C2B0C 46205420 */  cvt.s.d    $f16, $f10
    /* D1AC0 800C2B10 0C036CD4 */  jal        func_800DB350_EA300
    /* D1AC4 800C2B14 E6300008 */   swc1      $f16, 0x8($s1)
    /* D1AC8 800C2B18 86590000 */  lh         $t9, 0x0($s2)
    /* D1ACC 800C2B1C 272D0004 */  addiu      $t5, $t9, 0x4
    /* D1AD0 800C2B20 A64D0000 */  sh         $t5, 0x0($s2)
  .L800C2B24_D1AD4:
    /* D1AD4 800C2B24 4616C03C */  c.lt.s     $f24, $f22
  .L800C2B28_D1AD8:
    /* D1AD8 800C2B28 26730001 */  addiu      $s3, $s3, 0x1
    /* D1ADC 800C2B2C 00137400 */  sll        $t6, $s3, 16
    /* D1AE0 800C2B30 000E9C03 */  sra        $s3, $t6, 16
    /* D1AE4 800C2B34 45000003 */  bc1f       .L800C2B44_D1AF4
    /* D1AE8 800C2B38 92E40004 */   lbu       $a0, 0x4($s7)
    /* D1AEC 800C2B3C 10000002 */  b          .L800C2B48_D1AF8
    /* D1AF0 800C2B40 86060004 */   lh        $a2, 0x4($s0)
  .L800C2B44_D1AF4:
    /* D1AF4 800C2B44 86060006 */  lh         $a2, 0x6($s0)
  .L800C2B48_D1AF8:
    /* D1AF8 800C2B48 0264082A */  slt        $at, $s3, $a0
    /* D1AFC 800C2B4C 5420FFA0 */  bnel       $at, $zero, .L800C29D0_D1980
    /* D1B00 800C2B50 0006C8C0 */   sll       $t9, $a2, 3
  .L800C2B54_D1B04:
    /* D1B04 800C2B54 8FBF0054 */  lw         $ra, 0x54($sp)
    /* D1B08 800C2B58 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* D1B0C 800C2B5C D7B60020 */  ldc1       $f22, 0x20($sp)
    /* D1B10 800C2B60 D7B80028 */  ldc1       $f24, 0x28($sp)
    /* D1B14 800C2B64 8FB00030 */  lw         $s0, 0x30($sp)
    /* D1B18 800C2B68 8FB10034 */  lw         $s1, 0x34($sp)
    /* D1B1C 800C2B6C 8FB20038 */  lw         $s2, 0x38($sp)
    /* D1B20 800C2B70 8FB3003C */  lw         $s3, 0x3C($sp)
    /* D1B24 800C2B74 8FB40040 */  lw         $s4, 0x40($sp)
    /* D1B28 800C2B78 8FB50044 */  lw         $s5, 0x44($sp)
    /* D1B2C 800C2B7C 8FB60048 */  lw         $s6, 0x48($sp)
    /* D1B30 800C2B80 8FB7004C */  lw         $s7, 0x4C($sp)
    /* D1B34 800C2B84 8FBE0050 */  lw         $fp, 0x50($sp)
    /* D1B38 800C2B88 03E00008 */  jr         $ra
    /* D1B3C 800C2B8C 27BD00D0 */   addiu     $sp, $sp, 0xD0
endlabel func_800C25F8_D15A8
