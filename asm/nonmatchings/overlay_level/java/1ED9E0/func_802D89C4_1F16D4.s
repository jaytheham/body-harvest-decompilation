nonmatching func_802D89C4_1F16D4, 0x350

glabel func_802D89C4_1F16D4
    /* 1F16D4 802D89C4 308600FF */  andi       $a2, $a0, 0xFF
    /* 1F16D8 802D89C8 00067080 */  sll        $t6, $a2, 2
    /* 1F16DC 802D89CC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 1F16E0 802D89D0 3C078005 */  lui        $a3, %hi(alienInstances)
    /* 1F16E4 802D89D4 01C67021 */  addu       $t6, $t6, $a2
    /* 1F16E8 802D89D8 24E78198 */  addiu      $a3, $a3, %lo(alienInstances)
    /* 1F16EC 802D89DC AFB00020 */  sw         $s0, 0x20($sp)
    /* 1F16F0 802D89E0 000E7100 */  sll        $t6, $t6, 4
    /* 1F16F4 802D89E4 00EE8021 */  addu       $s0, $a3, $t6
    /* 1F16F8 802D89E8 8E030020 */  lw         $v1, 0x20($s0)
    /* 1F16FC 802D89EC 920F001A */  lbu        $t7, 0x1A($s0)
    /* 1F1700 802D89F0 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 1F1704 802D89F4 0003C2C0 */  sll        $t8, $v1, 11
    /* 1F1708 802D89F8 AFA40030 */  sw         $a0, 0x30($sp)
    /* 1F170C 802D89FC 92050025 */  lbu        $a1, 0x25($s0)
    /* 1F1710 802D8A00 07000066 */  bltz       $t8, .L802D8B9C_1F18AC
    /* 1F1714 802D8A04 A3AF002F */   sb        $t7, 0x2F($sp)
    /* 1F1718 802D8A08 240100FF */  addiu      $at, $zero, 0xFF
    /* 1F171C 802D8A0C 10A1000C */  beq        $a1, $at, .L802D8A40_1F1750
    /* 1F1720 802D8A10 0005C880 */   sll       $t9, $a1, 2
    /* 1F1724 802D8A14 0325C821 */  addu       $t9, $t9, $a1
    /* 1F1728 802D8A18 0019C900 */  sll        $t9, $t9, 4
    /* 1F172C 802D8A1C 00F91021 */  addu       $v0, $a3, $t9
    /* 1F1730 802D8A20 9048001A */  lbu        $t0, 0x1A($v0)
    /* 1F1734 802D8A24 2401001A */  addiu      $at, $zero, 0x1A
    /* 1F1738 802D8A28 55010006 */  bnel       $t0, $at, .L802D8A44_1F1754
    /* 1F173C 802D8A2C 306B0600 */   andi      $t3, $v1, 0x600
    /* 1F1740 802D8A30 90490024 */  lbu        $t1, 0x24($v0)
    /* 1F1744 802D8A34 252AFFFF */  addiu      $t2, $t1, -0x1
    /* 1F1748 802D8A38 A04A0024 */  sb         $t2, 0x24($v0)
    /* 1F174C 802D8A3C 8E030020 */  lw         $v1, 0x20($s0)
  .L802D8A40_1F1750:
    /* 1F1750 802D8A40 306B0600 */  andi       $t3, $v1, 0x600
  .L802D8A44_1F1754:
    /* 1F1754 802D8A44 11600055 */  beqz       $t3, .L802D8B9C_1F18AC
    /* 1F1758 802D8A48 00C02025 */   or        $a0, $a2, $zero
    /* 1F175C 802D8A4C 0C04DD1A */  jal        func_80137468_146418
    /* 1F1760 802D8A50 2405000D */   addiu     $a1, $zero, 0xD
    /* 1F1764 802D8A54 920C0047 */  lbu        $t4, 0x47($s0)
    /* 1F1768 802D8A58 3C010010 */  lui        $at, (0x100000 >> 16)
    /* 1F176C 802D8A5C 2407012C */  addiu      $a3, $zero, 0x12C
    /* 1F1770 802D8A60 318D0008 */  andi       $t5, $t4, 0x8
    /* 1F1774 802D8A64 15A00005 */  bnez       $t5, .L802D8A7C_1F178C
    /* 1F1778 802D8A68 240800C8 */   addiu     $t0, $zero, 0xC8
    /* 1F177C 802D8A6C 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 1F1780 802D8A70 31CF2000 */  andi       $t7, $t6, 0x2000
    /* 1F1784 802D8A74 51E0001F */  beql       $t7, $zero, .L802D8AF4_1F1804
    /* 1F1788 802D8A78 93AF002F */   lbu       $t7, 0x2F($sp)
  .L802D8A7C_1F178C:
    /* 1F178C 802D8A7C 8E180020 */  lw         $t8, 0x20($s0)
    /* 1F1790 802D8A80 86040000 */  lh         $a0, 0x0($s0)
    /* 1F1794 802D8A84 86050002 */  lh         $a1, 0x2($s0)
    /* 1F1798 802D8A88 0301C825 */  or         $t9, $t8, $at
    /* 1F179C 802D8A8C AE190020 */  sw         $t9, 0x20($s0)
    /* 1F17A0 802D8A90 86060004 */  lh         $a2, 0x4($s0)
    /* 1F17A4 802D8A94 0C0492D7 */  jal        func_80124B5C_133B0C
    /* 1F17A8 802D8A98 AFA80010 */   sw        $t0, 0x10($sp)
    /* 1F17AC 802D8A9C 93A9002F */  lbu        $t1, 0x2F($sp)
    /* 1F17B0 802D8AA0 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 1F17B4 802D8AA4 240D0004 */  addiu      $t5, $zero, 0x4
    /* 1F17B8 802D8AA8 00095080 */  sll        $t2, $t1, 2
    /* 1F17BC 802D8AAC 01495023 */  subu       $t2, $t2, $t1
    /* 1F17C0 802D8AB0 000A5080 */  sll        $t2, $t2, 2
    /* 1F17C4 802D8AB4 01495021 */  addu       $t2, $t2, $t1
    /* 1F17C8 802D8AB8 000A50C0 */  sll        $t2, $t2, 3
    /* 1F17CC 802D8ABC 00EA3821 */  addu       $a3, $a3, $t2
    /* 1F17D0 802D8AC0 84E7668C */  lh         $a3, %lo(D_8025668C)($a3)
    /* 1F17D4 802D8AC4 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1F17D8 802D8AC8 86040000 */  lh         $a0, 0x0($s0)
    /* 1F17DC 802D8ACC 00075880 */  sll        $t3, $a3, 2
    /* 1F17E0 802D8AD0 01675823 */  subu       $t3, $t3, $a3
    /* 1F17E4 802D8AD4 3167FFFF */  andi       $a3, $t3, 0xFFFF
    /* 1F17E8 802D8AD8 86050002 */  lh         $a1, 0x2($s0)
    /* 1F17EC 802D8ADC 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F17F0 802D8AE0 86060004 */   lh        $a2, 0x4($s0)
    /* 1F17F4 802D8AE4 240E0001 */  addiu      $t6, $zero, 0x1
    /* 1F17F8 802D8AE8 10000085 */  b          .L802D8D00_1F1A10
    /* 1F17FC 802D8AEC A60E002C */   sh        $t6, 0x2C($s0)
    /* 1F1800 802D8AF0 93AF002F */  lbu        $t7, 0x2F($sp)
  .L802D8AF4_1F1804:
    /* 1F1804 802D8AF4 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 1F1808 802D8AF8 86040000 */  lh         $a0, 0x0($s0)
    /* 1F180C 802D8AFC 000FC080 */  sll        $t8, $t7, 2
    /* 1F1810 802D8B00 030FC023 */  subu       $t8, $t8, $t7
    /* 1F1814 802D8B04 0018C080 */  sll        $t8, $t8, 2
    /* 1F1818 802D8B08 030FC021 */  addu       $t8, $t8, $t7
    /* 1F181C 802D8B0C 0018C0C0 */  sll        $t8, $t8, 3
    /* 1F1820 802D8B10 00F83821 */  addu       $a3, $a3, $t8
    /* 1F1824 802D8B14 84E7668C */  lh         $a3, %lo(D_8025668C)($a3)
    /* 1F1828 802D8B18 86050002 */  lh         $a1, 0x2($s0)
    /* 1F182C 802D8B1C 86060004 */  lh         $a2, 0x4($s0)
    /* 1F1830 802D8B20 0007C840 */  sll        $t9, $a3, 1
    /* 1F1834 802D8B24 3327FFFF */  andi       $a3, $t9, 0xFFFF
    /* 1F1838 802D8B28 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F183C 802D8B2C AFA00010 */   sw        $zero, 0x10($sp)
    /* 1F1840 802D8B30 0C000E38 */  jal        func_800038E0_44E0
    /* 1F1844 802D8B34 00000000 */   nop
    /* 1F1848 802D8B38 86090010 */  lh         $t1, 0x10($s0)
    /* 1F184C 802D8B3C 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 1F1850 802D8B40 000251C3 */  sra        $t2, $v0, 7
    /* 1F1854 802D8B44 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 1F1858 802D8B48 012A5821 */  addu       $t3, $t1, $t2
    /* 1F185C 802D8B4C 256C0300 */  addiu      $t4, $t3, 0x300
    /* 1F1860 802D8B50 01A17025 */  or         $t6, $t5, $at
    /* 1F1864 802D8B54 A60C0010 */  sh         $t4, 0x10($s0)
    /* 1F1868 802D8B58 0C000E38 */  jal        func_800038E0_44E0
    /* 1F186C 802D8B5C AE0E0020 */   sw        $t6, 0x20($s0)
    /* 1F1870 802D8B60 00027943 */  sra        $t7, $v0, 5
    /* 1F1874 802D8B64 24181000 */  addiu      $t8, $zero, 0x1000
    /* 1F1878 802D8B68 030FC823 */  subu       $t9, $t8, $t7
    /* 1F187C 802D8B6C 0C000E38 */  jal        func_800038E0_44E0
    /* 1F1880 802D8B70 A6190014 */   sh        $t9, 0x14($s0)
    /* 1F1884 802D8B74 00024143 */  sra        $t0, $v0, 5
    /* 1F1888 802D8B78 24091000 */  addiu      $t1, $zero, 0x1000
    /* 1F188C 802D8B7C 01285023 */  subu       $t2, $t1, $t0
    /* 1F1890 802D8B80 240B0001 */  addiu      $t3, $zero, 0x1
    /* 1F1894 802D8B84 240C0050 */  addiu      $t4, $zero, 0x50
    /* 1F1898 802D8B88 240D0300 */  addiu      $t5, $zero, 0x300
    /* 1F189C 802D8B8C A60A0018 */  sh         $t2, 0x18($s0)
    /* 1F18A0 802D8B90 A20B0026 */  sb         $t3, 0x26($s0)
    /* 1F18A4 802D8B94 A60C002C */  sh         $t4, 0x2C($s0)
    /* 1F18A8 802D8B98 A60D0012 */  sh         $t5, 0x12($s0)
  .L802D8B9C_1F18AC:
    /* 1F18AC 802D8B9C 860E0010 */  lh         $t6, 0x10($s0)
    /* 1F18B0 802D8BA0 5DC00026 */  bgtzl      $t6, .L802D8C3C_1F194C
    /* 1F18B4 802D8BA4 8E030020 */   lw        $v1, 0x20($s0)
    /* 1F18B8 802D8BA8 92180026 */  lbu        $t8, 0x26($s0)
    /* 1F18BC 802D8BAC 53000023 */  beql       $t8, $zero, .L802D8C3C_1F194C
    /* 1F18C0 802D8BB0 8E030020 */   lw        $v1, 0x20($s0)
    /* 1F18C4 802D8BB4 0C000E38 */  jal        func_800038E0_44E0
    /* 1F18C8 802D8BB8 00000000 */   nop
    /* 1F18CC 802D8BBC 860F0010 */  lh         $t7, 0x10($s0)
    /* 1F18D0 802D8BC0 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 1F18D4 802D8BC4 0002C9C3 */  sra        $t9, $v0, 7
    /* 1F18D8 802D8BC8 01F94821 */  addu       $t1, $t7, $t9
    /* 1F18DC 802D8BCC 25280300 */  addiu      $t0, $t1, 0x300
    /* 1F18E0 802D8BD0 314B0600 */  andi       $t3, $t2, 0x600
    /* 1F18E4 802D8BD4 A6080010 */  sh         $t0, 0x10($s0)
    /* 1F18E8 802D8BD8 11600011 */  beqz       $t3, .L802D8C20_1F1930
    /* 1F18EC 802D8BDC A2000026 */   sb        $zero, 0x26($s0)
    /* 1F18F0 802D8BE0 93AC002F */  lbu        $t4, 0x2F($sp)
    /* 1F18F4 802D8BE4 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 1F18F8 802D8BE8 86040000 */  lh         $a0, 0x0($s0)
    /* 1F18FC 802D8BEC 000C6880 */  sll        $t5, $t4, 2
    /* 1F1900 802D8BF0 01AC6823 */  subu       $t5, $t5, $t4
    /* 1F1904 802D8BF4 000D6880 */  sll        $t5, $t5, 2
    /* 1F1908 802D8BF8 01AC6821 */  addu       $t5, $t5, $t4
    /* 1F190C 802D8BFC 000D68C0 */  sll        $t5, $t5, 3
    /* 1F1910 802D8C00 00ED3821 */  addu       $a3, $a3, $t5
    /* 1F1914 802D8C04 84E7668C */  lh         $a3, %lo(D_8025668C)($a3)
    /* 1F1918 802D8C08 86050002 */  lh         $a1, 0x2($s0)
    /* 1F191C 802D8C0C 86060004 */  lh         $a2, 0x4($s0)
    /* 1F1920 802D8C10 00077040 */  sll        $t6, $a3, 1
    /* 1F1924 802D8C14 31C7FFFF */  andi       $a3, $t6, 0xFFFF
    /* 1F1928 802D8C18 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F192C 802D8C1C AFA00010 */   sw        $zero, 0x10($sp)
  .L802D8C20_1F1930:
    /* 1F1930 802D8C20 86040000 */  lh         $a0, 0x0($s0)
    /* 1F1934 802D8C24 86050002 */  lh         $a1, 0x2($s0)
    /* 1F1938 802D8C28 86060004 */  lh         $a2, 0x4($s0)
    /* 1F193C 802D8C2C 0C03089D */  jal        func_800C2274_D1224
    /* 1F1940 802D8C30 24070002 */   addiu     $a3, $zero, 0x2
    /* 1F1944 802D8C34 A2020024 */  sb         $v0, 0x24($s0)
    /* 1F1948 802D8C38 8E030020 */  lw         $v1, 0x20($s0)
  .L802D8C3C_1F194C:
    /* 1F194C 802D8C3C 00037840 */  sll        $t7, $v1, 1
    /* 1F1950 802D8C40 05E30006 */  bgezl      $t7, .L802D8C5C_1F196C
    /* 1F1954 802D8C44 8608002C */   lh        $t0, 0x2C($s0)
    /* 1F1958 802D8C48 92190047 */  lbu        $t9, 0x47($s0)
    /* 1F195C 802D8C4C 33290001 */  andi       $t1, $t9, 0x1
    /* 1F1960 802D8C50 5120001B */  beql       $t1, $zero, .L802D8CC0_1F19D0
    /* 1F1964 802D8C54 86190008 */   lh        $t9, 0x8($s0)
    /* 1F1968 802D8C58 8608002C */  lh         $t0, 0x2C($s0)
  .L802D8C5C_1F196C:
    /* 1F196C 802D8C5C 306A0600 */  andi       $t2, $v1, 0x600
    /* 1F1970 802D8C60 59000017 */  blezl      $t0, .L802D8CC0_1F19D0
    /* 1F1974 802D8C64 86190008 */   lh        $t9, 0x8($s0)
    /* 1F1978 802D8C68 11400011 */  beqz       $t2, .L802D8CB0_1F19C0
    /* 1F197C 802D8C6C 93AB002F */   lbu       $t3, 0x2F($sp)
    /* 1F1980 802D8C70 000B6080 */  sll        $t4, $t3, 2
    /* 1F1984 802D8C74 018B6023 */  subu       $t4, $t4, $t3
    /* 1F1988 802D8C78 000C6080 */  sll        $t4, $t4, 2
    /* 1F198C 802D8C7C 018B6021 */  addu       $t4, $t4, $t3
    /* 1F1990 802D8C80 000C60C0 */  sll        $t4, $t4, 3
    /* 1F1994 802D8C84 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 1F1998 802D8C88 00EC3821 */  addu       $a3, $a3, $t4
    /* 1F199C 802D8C8C 84E7668C */  lh         $a3, %lo(D_8025668C)($a3)
    /* 1F19A0 802D8C90 24180002 */  addiu      $t8, $zero, 0x2
    /* 1F19A4 802D8C94 AFB80010 */  sw         $t8, 0x10($sp)
    /* 1F19A8 802D8C98 00076840 */  sll        $t5, $a3, 1
    /* 1F19AC 802D8C9C 31A7FFFF */  andi       $a3, $t5, 0xFFFF
    /* 1F19B0 802D8CA0 86040000 */  lh         $a0, 0x0($s0)
    /* 1F19B4 802D8CA4 86050002 */  lh         $a1, 0x2($s0)
    /* 1F19B8 802D8CA8 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F19BC 802D8CAC 86060004 */   lh        $a2, 0x4($s0)
  .L802D8CB0_1F19C0:
    /* 1F19C0 802D8CB0 240F0001 */  addiu      $t7, $zero, 0x1
    /* 1F19C4 802D8CB4 10000012 */  b          .L802D8D00_1F1A10
    /* 1F19C8 802D8CB8 A60F002C */   sh        $t7, 0x2C($s0)
    /* 1F19CC 802D8CBC 86190008 */  lh         $t9, 0x8($s0)
  .L802D8CC0_1F19D0:
    /* 1F19D0 802D8CC0 86090018 */  lh         $t1, 0x18($s0)
    /* 1F19D4 802D8CC4 860A000A */  lh         $t2, 0xA($s0)
    /* 1F19D8 802D8CC8 860B0014 */  lh         $t3, 0x14($s0)
    /* 1F19DC 802D8CCC 920D0026 */  lbu        $t5, 0x26($s0)
    /* 1F19E0 802D8CD0 03294021 */  addu       $t0, $t9, $t1
    /* 1F19E4 802D8CD4 014B6021 */  addu       $t4, $t2, $t3
    /* 1F19E8 802D8CD8 A6080008 */  sh         $t0, 0x8($s0)
    /* 1F19EC 802D8CDC 15A00008 */  bnez       $t5, .L802D8D00_1F1A10
    /* 1F19F0 802D8CE0 A60C000A */   sh        $t4, 0xA($s0)
    /* 1F19F4 802D8CE4 240E0002 */  addiu      $t6, $zero, 0x2
    /* 1F19F8 802D8CE8 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 1F19FC 802D8CEC 86040000 */  lh         $a0, 0x0($s0)
    /* 1F1A00 802D8CF0 86050002 */  lh         $a1, 0x2($s0)
    /* 1F1A04 802D8CF4 86060004 */  lh         $a2, 0x4($s0)
    /* 1F1A08 802D8CF8 0C0307B3 */  jal        func_800C1ECC_D0E7C
    /* 1F1A0C 802D8CFC 92070024 */   lbu       $a3, 0x24($s0)
  .L802D8D00_1F1A10:
    /* 1F1A10 802D8D00 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 1F1A14 802D8D04 8FB00020 */  lw         $s0, 0x20($sp)
    /* 1F1A18 802D8D08 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 1F1A1C 802D8D0C 03E00008 */  jr         $ra
    /* 1F1A20 802D8D10 00000000 */   nop
endlabel func_802D89C4_1F16D4
