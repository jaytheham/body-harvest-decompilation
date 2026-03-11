nonmatching func_80076C08_15ECC8, 0x408

glabel func_80076C08_15ECC8
    /* 15ECC8 80076C08 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* 15ECCC 80076C0C AFB10018 */  sw         $s1, 0x18($sp)
    /* 15ECD0 80076C10 AFB00014 */  sw         $s0, 0x14($sp)
    /* 15ECD4 80076C14 3C020001 */  lui        $v0, (0x10000 >> 16)
    /* 15ECD8 80076C18 00C08025 */  or         $s0, $a2, $zero
    /* 15ECDC 80076C1C 00A08825 */  or         $s1, $a1, $zero
    /* 15ECE0 80076C20 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 15ECE4 80076C24 AFA70094 */  sw         $a3, 0x94($sp)
    /* 15ECE8 80076C28 AFA00054 */  sw         $zero, 0x54($sp)
    /* 15ECEC 80076C2C AFA00064 */  sw         $zero, 0x64($sp)
    /* 15ECF0 80076C30 AFA00074 */  sw         $zero, 0x74($sp)
    /* 15ECF4 80076C34 10800008 */  beqz       $a0, .L80076C58_15ED18
    /* 15ECF8 80076C38 AFA20084 */   sw        $v0, 0x84($sp)
    /* 15ECFC 80076C3C 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 15ED00 80076C40 AFAE0078 */  sw         $t6, 0x78($sp)
    /* 15ED04 80076C44 8C8F0004 */  lw         $t7, 0x4($a0)
    /* 15ED08 80076C48 AFAF007C */  sw         $t7, 0x7C($sp)
    /* 15ED0C 80076C4C 8C980008 */  lw         $t8, 0x8($a0)
    /* 15ED10 80076C50 10000004 */  b          .L80076C64_15ED24
    /* 15ED14 80076C54 AFB80080 */   sw        $t8, 0x80($sp)
  .L80076C58_15ED18:
    /* 15ED18 80076C58 AFA00078 */  sw         $zero, 0x78($sp)
    /* 15ED1C 80076C5C AFA0007C */  sw         $zero, 0x7C($sp)
    /* 15ED20 80076C60 AFA00080 */  sw         $zero, 0x80($sp)
  .L80076C64_15ED24:
    /* 15ED24 80076C64 52200062 */  beql       $s1, $zero, .L80076DF0_15EEB0
    /* 15ED28 80076C68 AFA20048 */   sw        $v0, 0x48($sp)
    /* 15ED2C 80076C6C 0C007654 */  jal        coss
    /* 15ED30 80076C70 96240000 */   lhu       $a0, 0x0($s1)
    /* 15ED34 80076C74 AFA20044 */  sw         $v0, 0x44($sp)
    /* 15ED38 80076C78 0C007660 */  jal        sins
    /* 15ED3C 80076C7C 96240000 */   lhu       $a0, 0x0($s1)
    /* 15ED40 80076C80 AFA20040 */  sw         $v0, 0x40($sp)
    /* 15ED44 80076C84 0C007654 */  jal        coss
    /* 15ED48 80076C88 96240004 */   lhu       $a0, 0x4($s1)
    /* 15ED4C 80076C8C 96240004 */  lhu        $a0, 0x4($s1)
    /* 15ED50 80076C90 0C007660 */  jal        sins
    /* 15ED54 80076C94 AFA2003C */   sw        $v0, 0x3C($sp)
    /* 15ED58 80076C98 96240002 */  lhu        $a0, 0x2($s1)
    /* 15ED5C 80076C9C 0C007654 */  jal        coss
    /* 15ED60 80076CA0 AFA20038 */   sw        $v0, 0x38($sp)
    /* 15ED64 80076CA4 96240002 */  lhu        $a0, 0x2($s1)
    /* 15ED68 80076CA8 0C007660 */  jal        sins
    /* 15ED6C 80076CAC AFA20034 */   sw        $v0, 0x34($sp)
    /* 15ED70 80076CB0 8FA30034 */  lw         $v1, 0x34($sp)
    /* 15ED74 80076CB4 8FA90044 */  lw         $t1, 0x44($sp)
    /* 15ED78 80076CB8 8FA70038 */  lw         $a3, 0x38($sp)
    /* 15ED7C 80076CBC 8FA80040 */  lw         $t0, 0x40($sp)
    /* 15ED80 80076CC0 01230019 */  multu      $t1, $v1
    /* 15ED84 80076CC4 8FA6003C */  lw         $a2, 0x3C($sp)
    /* 15ED88 80076CC8 00087823 */  negu       $t7, $t0
    /* 15ED8C 80076CCC 000FC040 */  sll        $t8, $t7, 1
    /* 15ED90 80076CD0 AFB80050 */  sw         $t8, 0x50($sp)
    /* 15ED94 80076CD4 0000C812 */  mflo       $t9
    /* 15ED98 80076CD8 001953C3 */  sra        $t2, $t9, 15
    /* 15ED9C 80076CDC 000A5840 */  sll        $t3, $t2, 1
    /* 15EDA0 80076CE0 01220019 */  multu      $t1, $v0
    /* 15EDA4 80076CE4 00065023 */  negu       $t2, $a2
    /* 15EDA8 80076CE8 AFAB0048 */  sw         $t3, 0x48($sp)
    /* 15EDAC 80076CEC 00006012 */  mflo       $t4
    /* 15EDB0 80076CF0 000C6BC3 */  sra        $t5, $t4, 15
    /* 15EDB4 80076CF4 000D7040 */  sll        $t6, $t5, 1
    /* 15EDB8 80076CF8 01070019 */  multu      $t0, $a3
    /* 15EDBC 80076CFC AFAE004C */  sw         $t6, 0x4C($sp)
    /* 15EDC0 80076D00 00002012 */  mflo       $a0
    /* 15EDC4 80076D04 0004CBC3 */  sra        $t9, $a0, 15
    /* 15EDC8 80076D08 03202025 */  or         $a0, $t9, $zero
    /* 15EDCC 80076D0C 01420019 */  multu      $t2, $v0
    /* 15EDD0 80076D10 00005812 */  mflo       $t3
    /* 15EDD4 80076D14 000B63C3 */  sra        $t4, $t3, 15
    /* 15EDD8 80076D18 00000000 */  nop
    /* 15EDDC 80076D1C 03230019 */  multu      $t9, $v1
    /* 15EDE0 80076D20 00006812 */  mflo       $t5
    /* 15EDE4 80076D24 000D73C3 */  sra        $t6, $t5, 15
    /* 15EDE8 80076D28 018E7821 */  addu       $t7, $t4, $t6
    /* 15EDEC 80076D2C 00C30019 */  multu      $a2, $v1
    /* 15EDF0 80076D30 000FC040 */  sll        $t8, $t7, 1
    /* 15EDF4 80076D34 AFB80058 */  sw         $t8, 0x58($sp)
    /* 15EDF8 80076D38 0000C812 */  mflo       $t9
    /* 15EDFC 80076D3C 001953C3 */  sra        $t2, $t9, 15
    /* 15EE00 80076D40 00000000 */  nop
    /* 15EE04 80076D44 00820019 */  multu      $a0, $v0
    /* 15EE08 80076D48 00005812 */  mflo       $t3
    /* 15EE0C 80076D4C 000B6BC3 */  sra        $t5, $t3, 15
    /* 15EE10 80076D50 014D6021 */  addu       $t4, $t2, $t5
    /* 15EE14 80076D54 00E90019 */  multu      $a3, $t1
    /* 15EE18 80076D58 000C7040 */  sll        $t6, $t4, 1
    /* 15EE1C 80076D5C AFAE005C */  sw         $t6, 0x5C($sp)
    /* 15EE20 80076D60 00007812 */  mflo       $t7
    /* 15EE24 80076D64 000FC3C3 */  sra        $t8, $t7, 15
    /* 15EE28 80076D68 0018C840 */  sll        $t9, $t8, 1
    /* 15EE2C 80076D6C 01060019 */  multu      $t0, $a2
    /* 15EE30 80076D70 AFB90060 */  sw         $t9, 0x60($sp)
    /* 15EE34 80076D74 0007C823 */  negu       $t9, $a3
    /* 15EE38 80076D78 00002812 */  mflo       $a1
    /* 15EE3C 80076D7C 00055BC3 */  sra        $t3, $a1, 15
    /* 15EE40 80076D80 01602825 */  or         $a1, $t3, $zero
    /* 15EE44 80076D84 00E20019 */  multu      $a3, $v0
    /* 15EE48 80076D88 00005012 */  mflo       $t2
    /* 15EE4C 80076D8C 000A6BC3 */  sra        $t5, $t2, 15
    /* 15EE50 80076D90 00000000 */  nop
    /* 15EE54 80076D94 01630019 */  multu      $t3, $v1
    /* 15EE58 80076D98 00006012 */  mflo       $t4
    /* 15EE5C 80076D9C 000C73C3 */  sra        $t6, $t4, 15
    /* 15EE60 80076DA0 01AE7821 */  addu       $t7, $t5, $t6
    /* 15EE64 80076DA4 03230019 */  multu      $t9, $v1
    /* 15EE68 80076DA8 000FC040 */  sll        $t8, $t7, 1
    /* 15EE6C 80076DAC AFB80068 */  sw         $t8, 0x68($sp)
    /* 15EE70 80076DB0 00005812 */  mflo       $t3
    /* 15EE74 80076DB4 000B53C3 */  sra        $t2, $t3, 15
    /* 15EE78 80076DB8 00000000 */  nop
    /* 15EE7C 80076DBC 00A20019 */  multu      $a1, $v0
    /* 15EE80 80076DC0 00006012 */  mflo       $t4
    /* 15EE84 80076DC4 000C6BC3 */  sra        $t5, $t4, 15
    /* 15EE88 80076DC8 014D7021 */  addu       $t6, $t2, $t5
    /* 15EE8C 80076DCC 01260019 */  multu      $t1, $a2
    /* 15EE90 80076DD0 000E7840 */  sll        $t7, $t6, 1
    /* 15EE94 80076DD4 AFAF006C */  sw         $t7, 0x6C($sp)
    /* 15EE98 80076DD8 0000C012 */  mflo       $t8
    /* 15EE9C 80076DDC 0018CBC3 */  sra        $t9, $t8, 15
    /* 15EEA0 80076DE0 00195840 */  sll        $t3, $t9, 1
    /* 15EEA4 80076DE4 1000000A */  b          .L80076E10_15EED0
    /* 15EEA8 80076DE8 AFAB0070 */   sw        $t3, 0x70($sp)
    /* 15EEAC 80076DEC AFA20048 */  sw         $v0, 0x48($sp)
  .L80076DF0_15EEB0:
    /* 15EEB0 80076DF0 AFA00058 */  sw         $zero, 0x58($sp)
    /* 15EEB4 80076DF4 AFA00068 */  sw         $zero, 0x68($sp)
    /* 15EEB8 80076DF8 AFA0004C */  sw         $zero, 0x4C($sp)
    /* 15EEBC 80076DFC AFA2005C */  sw         $v0, 0x5C($sp)
    /* 15EEC0 80076E00 AFA0006C */  sw         $zero, 0x6C($sp)
    /* 15EEC4 80076E04 AFA00050 */  sw         $zero, 0x50($sp)
    /* 15EEC8 80076E08 AFA00060 */  sw         $zero, 0x60($sp)
    /* 15EECC 80076E0C AFA20070 */  sw         $v0, 0x70($sp)
  .L80076E10_15EED0:
    /* 15EED0 80076E10 12000040 */  beqz       $s0, .L80076F14_15EFD4
    /* 15EED4 80076E14 27A20048 */   addiu     $v0, $sp, 0x48
    /* 15EED8 80076E18 8FAC0048 */  lw         $t4, 0x48($sp)
    /* 15EEDC 80076E1C 860A0000 */  lh         $t2, 0x0($s0)
    /* 15EEE0 80076E20 8FAE004C */  lw         $t6, 0x4C($sp)
    /* 15EEE4 80076E24 8FB90050 */  lw         $t9, 0x50($sp)
    /* 15EEE8 80076E28 018A0019 */  multu      $t4, $t2
    /* 15EEEC 80076E2C 00006812 */  mflo       $t5
    /* 15EEF0 80076E30 AFAD0048 */  sw         $t5, 0x48($sp)
    /* 15EEF4 80076E34 860F0000 */  lh         $t7, 0x0($s0)
    /* 15EEF8 80076E38 000D5203 */  sra        $t2, $t5, 8
    /* 15EEFC 80076E3C 01CF0019 */  multu      $t6, $t7
    /* 15EF00 80076E40 0000C012 */  mflo       $t8
    /* 15EF04 80076E44 AFB8004C */  sw         $t8, 0x4C($sp)
    /* 15EF08 80076E48 860B0000 */  lh         $t3, 0x0($s0)
    /* 15EF0C 80076E4C 00187203 */  sra        $t6, $t8, 8
    /* 15EF10 80076E50 AFAA0048 */  sw         $t2, 0x48($sp)
    /* 15EF14 80076E54 032B0019 */  multu      $t9, $t3
    /* 15EF18 80076E58 AFAE004C */  sw         $t6, 0x4C($sp)
    /* 15EF1C 80076E5C 8FB90058 */  lw         $t9, 0x58($sp)
    /* 15EF20 80076E60 8FAA005C */  lw         $t2, 0x5C($sp)
    /* 15EF24 80076E64 00006012 */  mflo       $t4
    /* 15EF28 80076E68 AFAC0050 */  sw         $t4, 0x50($sp)
    /* 15EF2C 80076E6C 000C7A03 */  sra        $t7, $t4, 8
    /* 15EF30 80076E70 AFAF0050 */  sw         $t7, 0x50($sp)
    /* 15EF34 80076E74 860B0002 */  lh         $t3, 0x2($s0)
    /* 15EF38 80076E78 8FAC0060 */  lw         $t4, 0x60($sp)
    /* 15EF3C 80076E7C 032B0019 */  multu      $t9, $t3
    /* 15EF40 80076E80 00006812 */  mflo       $t5
    /* 15EF44 80076E84 AFAD0058 */  sw         $t5, 0x58($sp)
    /* 15EF48 80076E88 86180002 */  lh         $t8, 0x2($s0)
    /* 15EF4C 80076E8C 000D5A03 */  sra        $t3, $t5, 8
    /* 15EF50 80076E90 01580019 */  multu      $t2, $t8
    /* 15EF54 80076E94 00007012 */  mflo       $t6
    /* 15EF58 80076E98 AFAE005C */  sw         $t6, 0x5C($sp)
    /* 15EF5C 80076E9C 860F0002 */  lh         $t7, 0x2($s0)
    /* 15EF60 80076EA0 000E5203 */  sra        $t2, $t6, 8
    /* 15EF64 80076EA4 AFAB0058 */  sw         $t3, 0x58($sp)
    /* 15EF68 80076EA8 018F0019 */  multu      $t4, $t7
    /* 15EF6C 80076EAC AFAA005C */  sw         $t2, 0x5C($sp)
    /* 15EF70 80076EB0 8FAC0068 */  lw         $t4, 0x68($sp)
    /* 15EF74 80076EB4 8FAB006C */  lw         $t3, 0x6C($sp)
    /* 15EF78 80076EB8 0000C812 */  mflo       $t9
    /* 15EF7C 80076EBC AFB90060 */  sw         $t9, 0x60($sp)
    /* 15EF80 80076EC0 0019C203 */  sra        $t8, $t9, 8
    /* 15EF84 80076EC4 AFB80060 */  sw         $t8, 0x60($sp)
    /* 15EF88 80076EC8 860F0004 */  lh         $t7, 0x4($s0)
    /* 15EF8C 80076ECC 8FB90070 */  lw         $t9, 0x70($sp)
    /* 15EF90 80076ED0 018F0019 */  multu      $t4, $t7
    /* 15EF94 80076ED4 00006812 */  mflo       $t5
    /* 15EF98 80076ED8 AFAD0068 */  sw         $t5, 0x68($sp)
    /* 15EF9C 80076EDC 860E0004 */  lh         $t6, 0x4($s0)
    /* 15EFA0 80076EE0 000D7A03 */  sra        $t7, $t5, 8
    /* 15EFA4 80076EE4 016E0019 */  multu      $t3, $t6
    /* 15EFA8 80076EE8 00005012 */  mflo       $t2
    /* 15EFAC 80076EEC AFAA006C */  sw         $t2, 0x6C($sp)
    /* 15EFB0 80076EF0 86180004 */  lh         $t8, 0x4($s0)
    /* 15EFB4 80076EF4 000A5A03 */  sra        $t3, $t2, 8
    /* 15EFB8 80076EF8 AFAF0068 */  sw         $t7, 0x68($sp)
    /* 15EFBC 80076EFC 03380019 */  multu      $t9, $t8
    /* 15EFC0 80076F00 AFAB006C */  sw         $t3, 0x6C($sp)
    /* 15EFC4 80076F04 00006012 */  mflo       $t4
    /* 15EFC8 80076F08 AFAC0070 */  sw         $t4, 0x70($sp)
    /* 15EFCC 80076F0C 000C7203 */  sra        $t6, $t4, 8
    /* 15EFD0 80076F10 AFAE0070 */  sw         $t6, 0x70($sp)
  .L80076F14_15EFD4:
    /* 15EFD4 80076F14 8FA40094 */  lw         $a0, 0x94($sp)
    /* 15EFD8 80076F18 27A50088 */  addiu      $a1, $sp, 0x88
    /* 15EFDC 80076F1C 3C03FFFF */  lui        $v1, (0xFFFF0000 >> 16)
  .L80076F20_15EFE0:
    /* 15EFE0 80076F20 8C590004 */  lw         $t9, 0x4($v0)
    /* 15EFE4 80076F24 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 15EFE8 80076F28 24420020 */  addiu      $v0, $v0, 0x20
    /* 15EFEC 80076F2C 0323C024 */  and        $t8, $t9, $v1
    /* 15EFF0 80076F30 00186C02 */  srl        $t5, $t8, 16
    /* 15EFF4 80076F34 01E35024 */  and        $t2, $t7, $v1
    /* 15EFF8 80076F38 01AA5821 */  addu       $t3, $t5, $t2
    /* 15EFFC 80076F3C AC8B0000 */  sw         $t3, 0x0($a0)
    /* 15F000 80076F40 8C58FFE0 */  lw         $t8, -0x20($v0)
    /* 15F004 80076F44 8C4CFFE4 */  lw         $t4, -0x1C($v0)
    /* 15F008 80076F48 24840010 */  addiu      $a0, $a0, 0x10
    /* 15F00C 80076F4C 00187C00 */  sll        $t7, $t8, 16
    /* 15F010 80076F50 318EFFFF */  andi       $t6, $t4, 0xFFFF
    /* 15F014 80076F54 01CF6821 */  addu       $t5, $t6, $t7
    /* 15F018 80076F58 AC8D0010 */  sw         $t5, 0x10($a0)
    /* 15F01C 80076F5C 8C4AFFEC */  lw         $t2, -0x14($v0)
    /* 15F020 80076F60 8C59FFE8 */  lw         $t9, -0x18($v0)
    /* 15F024 80076F64 01435824 */  and        $t3, $t2, $v1
    /* 15F028 80076F68 000B6402 */  srl        $t4, $t3, 16
    /* 15F02C 80076F6C 0323C024 */  and        $t8, $t9, $v1
    /* 15F030 80076F70 01987021 */  addu       $t6, $t4, $t8
    /* 15F034 80076F74 AC8EFFF4 */  sw         $t6, -0xC($a0)
    /* 15F038 80076F78 8C4BFFE8 */  lw         $t3, -0x18($v0)
    /* 15F03C 80076F7C 8C4FFFEC */  lw         $t7, -0x14($v0)
    /* 15F040 80076F80 000BCC00 */  sll        $t9, $t3, 16
    /* 15F044 80076F84 31EDFFFF */  andi       $t5, $t7, 0xFFFF
    /* 15F048 80076F88 01B96021 */  addu       $t4, $t5, $t9
    /* 15F04C 80076F8C AC8C0014 */  sw         $t4, 0x14($a0)
    /* 15F050 80076F90 8C58FFF4 */  lw         $t8, -0xC($v0)
    /* 15F054 80076F94 8C4AFFF0 */  lw         $t2, -0x10($v0)
    /* 15F058 80076F98 03037024 */  and        $t6, $t8, $v1
    /* 15F05C 80076F9C 000E7C02 */  srl        $t7, $t6, 16
    /* 15F060 80076FA0 01435824 */  and        $t3, $t2, $v1
    /* 15F064 80076FA4 01EB6821 */  addu       $t5, $t7, $t3
    /* 15F068 80076FA8 AC8DFFF8 */  sw         $t5, -0x8($a0)
    /* 15F06C 80076FAC 8C4EFFF0 */  lw         $t6, -0x10($v0)
    /* 15F070 80076FB0 8C59FFF4 */  lw         $t9, -0xC($v0)
    /* 15F074 80076FB4 000E5400 */  sll        $t2, $t6, 16
    /* 15F078 80076FB8 332CFFFF */  andi       $t4, $t9, 0xFFFF
    /* 15F07C 80076FBC 018A7821 */  addu       $t7, $t4, $t2
    /* 15F080 80076FC0 AC8F0018 */  sw         $t7, 0x18($a0)
    /* 15F084 80076FC4 8C4BFFFC */  lw         $t3, -0x4($v0)
    /* 15F088 80076FC8 8C58FFF8 */  lw         $t8, -0x8($v0)
    /* 15F08C 80076FCC 01636824 */  and        $t5, $t3, $v1
    /* 15F090 80076FD0 000DCC02 */  srl        $t9, $t5, 16
    /* 15F094 80076FD4 03037024 */  and        $t6, $t8, $v1
    /* 15F098 80076FD8 032E6021 */  addu       $t4, $t9, $t6
    /* 15F09C 80076FDC AC8CFFFC */  sw         $t4, -0x4($a0)
    /* 15F0A0 80076FE0 8C4DFFF8 */  lw         $t5, -0x8($v0)
    /* 15F0A4 80076FE4 8C4AFFFC */  lw         $t2, -0x4($v0)
    /* 15F0A8 80076FE8 000DC400 */  sll        $t8, $t5, 16
    /* 15F0AC 80076FEC 314FFFFF */  andi       $t7, $t2, 0xFFFF
    /* 15F0B0 80076FF0 01F8C821 */  addu       $t9, $t7, $t8
    /* 15F0B4 80076FF4 1445FFCA */  bne        $v0, $a1, .L80076F20_15EFE0
    /* 15F0B8 80076FF8 AC99001C */   sw        $t9, 0x1C($a0)
    /* 15F0BC 80076FFC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 15F0C0 80077000 8FB00014 */  lw         $s0, 0x14($sp)
    /* 15F0C4 80077004 8FB10018 */  lw         $s1, 0x18($sp)
    /* 15F0C8 80077008 03E00008 */  jr         $ra
    /* 15F0CC 8007700C 27BD0088 */   addiu     $sp, $sp, 0x88
endlabel func_80076C08_15ECC8
