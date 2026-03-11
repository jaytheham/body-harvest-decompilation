nonmatching func_800DAFCC_E9F7C, 0x384

glabel func_800DAFCC_E9F7C
    /* E9F7C 800DAFCC 3C068015 */  lui        $a2, %hi(D_80153BB8)
    /* E9F80 800DAFD0 3C078015 */  lui        $a3, %hi(D_80153BC8)
    /* E9F84 800DAFD4 24E73BC8 */  addiu      $a3, $a3, %lo(D_80153BC8)
    /* E9F88 800DAFD8 24C63BB8 */  addiu      $a2, $a2, %lo(D_80153BB8)
    /* E9F8C 800DAFDC C4C40000 */  lwc1       $f4, 0x0($a2)
    /* E9F90 800DAFE0 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* E9F94 800DAFE4 3C058006 */  lui        $a1, %hi(D_8005BB34)
    /* E9F98 800DAFE8 24A5BB34 */  addiu      $a1, $a1, %lo(D_8005BB34)
    /* E9F9C 800DAFEC 46062200 */  add.s      $f8, $f4, $f6
    /* E9FA0 800DAFF0 8CB80000 */  lw         $t8, 0x0($a1)
    /* E9FA4 800DAFF4 3C088015 */  lui        $t0, %hi(D_80153BC4)
    /* E9FA8 800DAFF8 25083BC4 */  addiu      $t0, $t0, %lo(D_80153BC4)
    /* E9FAC 800DAFFC 4600428D */  trunc.w.s  $f10, $f8
    /* E9FB0 800DB000 3C098015 */  lui        $t1, %hi(D_80153BCC)
    /* E9FB4 800DB004 25293BCC */  addiu      $t1, $t1, %lo(D_80153BCC)
    /* E9FB8 800DB008 3C0A8015 */  lui        $t2, %hi(D_80153BCD)
    /* E9FBC 800DB00C 440F5000 */  mfc1       $t7, $f10
    /* E9FC0 800DB010 254A3BCD */  addiu      $t2, $t2, %lo(D_80153BCD)
    /* E9FC4 800DB014 3C0B8015 */  lui        $t3, %hi(D_80153BCE)
    /* E9FC8 800DB018 A70F0000 */  sh         $t7, 0x0($t8)
    /* E9FCC 800DB01C C4D00004 */  lwc1       $f16, 0x4($a2)
    /* E9FD0 800DB020 8CAE0000 */  lw         $t6, 0x0($a1)
    /* E9FD4 800DB024 256B3BCE */  addiu      $t3, $t3, %lo(D_80153BCE)
    /* E9FD8 800DB028 4600848D */  trunc.w.s  $f18, $f16
    /* E9FDC 800DB02C 3C0C8006 */  lui        $t4, %hi(D_8005BB2C)
    /* E9FE0 800DB030 258CBB2C */  addiu      $t4, $t4, %lo(D_8005BB2C)
    /* E9FE4 800DB034 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* E9FE8 800DB038 440D9000 */  mfc1       $t5, $f18
    /* E9FEC 800DB03C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* E9FF0 800DB040 A5CD0002 */  sh         $t5, 0x2($t6)
    /* E9FF4 800DB044 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* E9FF8 800DB048 C4C40008 */  lwc1       $f4, 0x8($a2)
    /* E9FFC 800DB04C 8CB90000 */  lw         $t9, 0x0($a1)
    /* EA000 800DB050 46062200 */  add.s      $f8, $f4, $f6
    /* EA004 800DB054 4600428D */  trunc.w.s  $f10, $f8
    /* EA008 800DB058 44185000 */  mfc1       $t8, $f10
    /* EA00C 800DB05C 00000000 */  nop
    /* EA010 800DB060 A7380004 */  sh         $t8, 0x4($t9)
    /* EA014 800DB064 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA018 800DB068 A5A00006 */  sh         $zero, 0x6($t5)
    /* EA01C 800DB06C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA020 800DB070 A5C00008 */  sh         $zero, 0x8($t6)
    /* EA024 800DB074 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EA028 800DB078 A5E0000A */  sh         $zero, 0xA($t7)
    /* EA02C 800DB07C 8D180000 */  lw         $t8, 0x0($t0)
    /* EA030 800DB080 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA034 800DB084 93190000 */  lbu        $t9, 0x0($t8)
    /* EA038 800DB088 A1B9000C */  sb         $t9, 0xC($t5)
    /* EA03C 800DB08C 8D0E0000 */  lw         $t6, 0x0($t0)
    /* EA040 800DB090 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA044 800DB094 91CF0001 */  lbu        $t7, 0x1($t6)
    /* EA048 800DB098 A30F000D */  sb         $t7, 0xD($t8)
    /* EA04C 800DB09C 8D190000 */  lw         $t9, 0x0($t0)
    /* EA050 800DB0A0 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA054 800DB0A4 932D0002 */  lbu        $t5, 0x2($t9)
    /* EA058 800DB0A8 A1CD000E */  sb         $t5, 0xE($t6)
    /* EA05C 800DB0AC 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA060 800DB0B0 912F0000 */  lbu        $t7, 0x0($t1)
    /* EA064 800DB0B4 A30F000F */  sb         $t7, 0xF($t8)
    /* EA068 800DB0B8 C4F20000 */  lwc1       $f18, 0x0($a3)
    /* EA06C 800DB0BC C4D00000 */  lwc1       $f16, 0x0($a2)
    /* EA070 800DB0C0 8CB90000 */  lw         $t9, 0x0($a1)
    /* EA074 800DB0C4 46128101 */  sub.s      $f4, $f16, $f18
    /* EA078 800DB0C8 272D0010 */  addiu      $t5, $t9, 0x10
    /* EA07C 800DB0CC ACAD0000 */  sw         $t5, 0x0($a1)
    /* EA080 800DB0D0 4600218D */  trunc.w.s  $f6, $f4
    /* EA084 800DB0D4 440F3000 */  mfc1       $t7, $f6
    /* EA088 800DB0D8 00000000 */  nop
    /* EA08C 800DB0DC A5AF0000 */  sh         $t7, 0x0($t5)
    /* EA090 800DB0E0 C4C80004 */  lwc1       $f8, 0x4($a2)
    /* EA094 800DB0E4 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA098 800DB0E8 4600428D */  trunc.w.s  $f10, $f8
    /* EA09C 800DB0EC 440D5000 */  mfc1       $t5, $f10
    /* EA0A0 800DB0F0 00000000 */  nop
    /* EA0A4 800DB0F4 A5CD0002 */  sh         $t5, 0x2($t6)
    /* EA0A8 800DB0F8 C4F20000 */  lwc1       $f18, 0x0($a3)
    /* EA0AC 800DB0FC C4D00008 */  lwc1       $f16, 0x8($a2)
    /* EA0B0 800DB100 8CB90000 */  lw         $t9, 0x0($a1)
    /* EA0B4 800DB104 46128100 */  add.s      $f4, $f16, $f18
    /* EA0B8 800DB108 4600218D */  trunc.w.s  $f6, $f4
    /* EA0BC 800DB10C 44183000 */  mfc1       $t8, $f6
    /* EA0C0 800DB110 00000000 */  nop
    /* EA0C4 800DB114 A7380004 */  sh         $t8, 0x4($t9)
    /* EA0C8 800DB118 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA0CC 800DB11C A5A00006 */  sh         $zero, 0x6($t5)
    /* EA0D0 800DB120 914E0000 */  lbu        $t6, 0x0($t2)
    /* EA0D4 800DB124 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA0D8 800DB128 000E7980 */  sll        $t7, $t6, 6
    /* EA0DC 800DB12C A70F0008 */  sh         $t7, 0x8($t8)
    /* EA0E0 800DB130 8CB90000 */  lw         $t9, 0x0($a1)
    /* EA0E4 800DB134 A720000A */  sh         $zero, 0xA($t9)
    /* EA0E8 800DB138 8D0D0000 */  lw         $t5, 0x0($t0)
    /* EA0EC 800DB13C 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EA0F0 800DB140 91AE0000 */  lbu        $t6, 0x0($t5)
    /* EA0F4 800DB144 A1EE000C */  sb         $t6, 0xC($t7)
    /* EA0F8 800DB148 8D180000 */  lw         $t8, 0x0($t0)
    /* EA0FC 800DB14C 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA100 800DB150 93190001 */  lbu        $t9, 0x1($t8)
    /* EA104 800DB154 A1B9000D */  sb         $t9, 0xD($t5)
    /* EA108 800DB158 8D0E0000 */  lw         $t6, 0x0($t0)
    /* EA10C 800DB15C 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA110 800DB160 91CF0002 */  lbu        $t7, 0x2($t6)
    /* EA114 800DB164 A30F000E */  sb         $t7, 0xE($t8)
    /* EA118 800DB168 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA11C 800DB16C 91390000 */  lbu        $t9, 0x0($t1)
    /* EA120 800DB170 A1B9000F */  sb         $t9, 0xF($t5)
    /* EA124 800DB174 C4EA0000 */  lwc1       $f10, 0x0($a3)
    /* EA128 800DB178 C4C80000 */  lwc1       $f8, 0x0($a2)
    /* EA12C 800DB17C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA130 800DB180 460A4401 */  sub.s      $f16, $f8, $f10
    /* EA134 800DB184 25CF0010 */  addiu      $t7, $t6, 0x10
    /* EA138 800DB188 ACAF0000 */  sw         $t7, 0x0($a1)
    /* EA13C 800DB18C 4600848D */  trunc.w.s  $f18, $f16
    /* EA140 800DB190 44199000 */  mfc1       $t9, $f18
    /* EA144 800DB194 00000000 */  nop
    /* EA148 800DB198 A5F90000 */  sh         $t9, 0x0($t7)
    /* EA14C 800DB19C C4C40004 */  lwc1       $f4, 0x4($a2)
    /* EA150 800DB1A0 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA154 800DB1A4 4600218D */  trunc.w.s  $f6, $f4
    /* EA158 800DB1A8 440F3000 */  mfc1       $t7, $f6
    /* EA15C 800DB1AC 00000000 */  nop
    /* EA160 800DB1B0 A70F0002 */  sh         $t7, 0x2($t8)
    /* EA164 800DB1B4 C4EA0000 */  lwc1       $f10, 0x0($a3)
    /* EA168 800DB1B8 C4C80008 */  lwc1       $f8, 0x8($a2)
    /* EA16C 800DB1BC 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA170 800DB1C0 460A4401 */  sub.s      $f16, $f8, $f10
    /* EA174 800DB1C4 4600848D */  trunc.w.s  $f18, $f16
    /* EA178 800DB1C8 440D9000 */  mfc1       $t5, $f18
    /* EA17C 800DB1CC 00000000 */  nop
    /* EA180 800DB1D0 A5CD0004 */  sh         $t5, 0x4($t6)
    /* EA184 800DB1D4 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EA188 800DB1D8 A5E00006 */  sh         $zero, 0x6($t7)
    /* EA18C 800DB1DC 91580000 */  lbu        $t8, 0x0($t2)
    /* EA190 800DB1E0 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA194 800DB1E4 0018C980 */  sll        $t9, $t8, 6
    /* EA198 800DB1E8 A5B90008 */  sh         $t9, 0x8($t5)
    /* EA19C 800DB1EC 916E0000 */  lbu        $t6, 0x0($t3)
    /* EA1A0 800DB1F0 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA1A4 800DB1F4 000E7980 */  sll        $t7, $t6, 6
    /* EA1A8 800DB1F8 A70F000A */  sh         $t7, 0xA($t8)
    /* EA1AC 800DB1FC 8D190000 */  lw         $t9, 0x0($t0)
    /* EA1B0 800DB200 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA1B4 800DB204 932D0000 */  lbu        $t5, 0x0($t9)
    /* EA1B8 800DB208 A1CD000C */  sb         $t5, 0xC($t6)
    /* EA1BC 800DB20C 8D0F0000 */  lw         $t7, 0x0($t0)
    /* EA1C0 800DB210 8CB90000 */  lw         $t9, 0x0($a1)
    /* EA1C4 800DB214 91F80001 */  lbu        $t8, 0x1($t7)
    /* EA1C8 800DB218 A338000D */  sb         $t8, 0xD($t9)
    /* EA1CC 800DB21C 8D0D0000 */  lw         $t5, 0x0($t0)
    /* EA1D0 800DB220 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EA1D4 800DB224 91AE0002 */  lbu        $t6, 0x2($t5)
    /* EA1D8 800DB228 A1EE000E */  sb         $t6, 0xE($t7)
    /* EA1DC 800DB22C 8CB90000 */  lw         $t9, 0x0($a1)
    /* EA1E0 800DB230 91380000 */  lbu        $t8, 0x0($t1)
    /* EA1E4 800DB234 A338000F */  sb         $t8, 0xF($t9)
    /* EA1E8 800DB238 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* EA1EC 800DB23C C4C40000 */  lwc1       $f4, 0x0($a2)
    /* EA1F0 800DB240 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA1F4 800DB244 46062200 */  add.s      $f8, $f4, $f6
    /* EA1F8 800DB248 25AE0010 */  addiu      $t6, $t5, 0x10
    /* EA1FC 800DB24C ACAE0000 */  sw         $t6, 0x0($a1)
    /* EA200 800DB250 4600428D */  trunc.w.s  $f10, $f8
    /* EA204 800DB254 44185000 */  mfc1       $t8, $f10
    /* EA208 800DB258 00000000 */  nop
    /* EA20C 800DB25C A5D80000 */  sh         $t8, 0x0($t6)
    /* EA210 800DB260 C4D00004 */  lwc1       $f16, 0x4($a2)
    /* EA214 800DB264 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EA218 800DB268 4600848D */  trunc.w.s  $f18, $f16
    /* EA21C 800DB26C 440E9000 */  mfc1       $t6, $f18
    /* EA220 800DB270 00000000 */  nop
    /* EA224 800DB274 A5EE0002 */  sh         $t6, 0x2($t7)
    /* EA228 800DB278 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* EA22C 800DB27C C4C40008 */  lwc1       $f4, 0x8($a2)
    /* EA230 800DB280 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA234 800DB284 46062201 */  sub.s      $f8, $f4, $f6
    /* EA238 800DB288 4600428D */  trunc.w.s  $f10, $f8
    /* EA23C 800DB28C 44195000 */  mfc1       $t9, $f10
    /* EA240 800DB290 00000000 */  nop
    /* EA244 800DB294 A5B90004 */  sh         $t9, 0x4($t5)
    /* EA248 800DB298 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA24C 800DB29C A5C00006 */  sh         $zero, 0x6($t6)
    /* EA250 800DB2A0 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EA254 800DB2A4 A5E00008 */  sh         $zero, 0x8($t7)
    /* EA258 800DB2A8 91780000 */  lbu        $t8, 0x0($t3)
    /* EA25C 800DB2AC 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA260 800DB2B0 0018C980 */  sll        $t9, $t8, 6
    /* EA264 800DB2B4 A5B9000A */  sh         $t9, 0xA($t5)
    /* EA268 800DB2B8 8D0E0000 */  lw         $t6, 0x0($t0)
    /* EA26C 800DB2BC 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA270 800DB2C0 91CF0000 */  lbu        $t7, 0x0($t6)
    /* EA274 800DB2C4 A30F000C */  sb         $t7, 0xC($t8)
    /* EA278 800DB2C8 8D190000 */  lw         $t9, 0x0($t0)
    /* EA27C 800DB2CC 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA280 800DB2D0 932D0001 */  lbu        $t5, 0x1($t9)
    /* EA284 800DB2D4 A1CD000D */  sb         $t5, 0xD($t6)
    /* EA288 800DB2D8 8D0F0000 */  lw         $t7, 0x0($t0)
    /* EA28C 800DB2DC 8CB90000 */  lw         $t9, 0x0($a1)
    /* EA290 800DB2E0 91F80002 */  lbu        $t8, 0x2($t7)
    /* EA294 800DB2E4 A338000E */  sb         $t8, 0xE($t9)
    /* EA298 800DB2E8 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA29C 800DB2EC 912D0000 */  lbu        $t5, 0x0($t1)
    /* EA2A0 800DB2F0 A1CD000F */  sb         $t5, 0xF($t6)
    /* EA2A4 800DB2F4 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EA2A8 800DB2F8 8D830000 */  lw         $v1, 0x0($t4)
    /* EA2AC 800DB2FC 3C0D0400 */  lui        $t5, (0x400103F >> 16)
    /* EA2B0 800DB300 25F80010 */  addiu      $t8, $t7, 0x10
    /* EA2B4 800DB304 24790008 */  addiu      $t9, $v1, 0x8
    /* EA2B8 800DB308 ACB80000 */  sw         $t8, 0x0($a1)
    /* EA2BC 800DB30C AD990000 */  sw         $t9, 0x0($t4)
    /* EA2C0 800DB310 35AD103F */  ori        $t5, $t5, (0x400103F & 0xFFFF)
    /* EA2C4 800DB314 AC6D0000 */  sw         $t5, 0x0($v1)
    /* EA2C8 800DB318 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA2CC 800DB31C 3C0DB100 */  lui        $t5, (0xB1000206 >> 16)
    /* EA2D0 800DB320 35AD0206 */  ori        $t5, $t5, (0xB1000206 & 0xFFFF)
    /* EA2D4 800DB324 25CFFFC0 */  addiu      $t7, $t6, -0x40
    /* EA2D8 800DB328 01E1C024 */  and        $t8, $t7, $at
    /* EA2DC 800DB32C AC780004 */  sw         $t8, 0x4($v1)
    /* EA2E0 800DB330 8D830000 */  lw         $v1, 0x0($t4)
    /* EA2E4 800DB334 3C0E0006 */  lui        $t6, (0x60204 >> 16)
    /* EA2E8 800DB338 35CE0204 */  ori        $t6, $t6, (0x60204 & 0xFFFF)
    /* EA2EC 800DB33C 24790008 */  addiu      $t9, $v1, 0x8
    /* EA2F0 800DB340 AD990000 */  sw         $t9, 0x0($t4)
    /* EA2F4 800DB344 AC6E0004 */  sw         $t6, 0x4($v1)
    /* EA2F8 800DB348 03E00008 */  jr         $ra
    /* EA2FC 800DB34C AC6D0000 */   sw        $t5, 0x0($v1)
endlabel func_800DAFCC_E9F7C
