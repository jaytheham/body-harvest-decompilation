nonmatching func_802DCE34_1F5B44, 0x30C

glabel func_802DCE34_1F5B44
    /* 1F5B44 802DCE34 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F5B48 802DCE38 000E7880 */  sll        $t7, $t6, 2
    /* 1F5B4C 802DCE3C 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 1F5B50 802DCE40 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F5B54 802DCE44 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F5B58 802DCE48 AFB00020 */  sw         $s0, 0x20($sp)
    /* 1F5B5C 802DCE4C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F5B60 802DCE50 000F7900 */  sll        $t7, $t7, 4
    /* 1F5B64 802DCE54 01F88021 */  addu       $s0, $t7, $t8
    /* 1F5B68 802DCE58 8E190020 */  lw         $t9, 0x20($s0)
    /* 1F5B6C 802DCE5C AFBF0024 */  sw         $ra, 0x24($sp)
    /* 1F5B70 802DCE60 AFA40048 */  sw         $a0, 0x48($sp)
    /* 1F5B74 802DCE64 332A0600 */  andi       $t2, $t9, 0x600
    /* 1F5B78 802DCE68 114000B0 */  beqz       $t2, .L802DD12C_1F5E3C
    /* 1F5B7C 802DCE6C 9206001A */   lbu       $a2, 0x1A($s0)
    /* 1F5B80 802DCE70 86040000 */  lh         $a0, 0x0($s0)
    /* 1F5B84 802DCE74 86050004 */  lh         $a1, 0x4($s0)
    /* 1F5B88 802DCE78 A7A6003C */  sh         $a2, 0x3C($sp)
    /* 1F5B8C 802DCE7C A7A40046 */  sh         $a0, 0x46($sp)
    /* 1F5B90 802DCE80 0C02E134 */  jal        func_800B84D0_C7480
    /* 1F5B94 802DCE84 A7A50044 */   sh        $a1, 0x44($sp)
    /* 1F5B98 802DCE88 87A6003C */  lh         $a2, 0x3C($sp)
    /* 1F5B9C 802DCE8C 3C0C8025 */  lui        $t4, %hi(alienSpecs)
    /* 1F5BA0 802DCE90 258C6680 */  addiu      $t4, $t4, %lo(alienSpecs)
    /* 1F5BA4 802DCE94 00065880 */  sll        $t3, $a2, 2
    /* 1F5BA8 802DCE98 01665823 */  subu       $t3, $t3, $a2
    /* 1F5BAC 802DCE9C 000B5880 */  sll        $t3, $t3, 2
    /* 1F5BB0 802DCEA0 01665821 */  addu       $t3, $t3, $a2
    /* 1F5BB4 802DCEA4 000B58C0 */  sll        $t3, $t3, 3
    /* 1F5BB8 802DCEA8 016C1821 */  addu       $v1, $t3, $t4
    /* 1F5BBC 802DCEAC 846D0058 */  lh         $t5, 0x58($v1)
    /* 1F5BC0 802DCEB0 86180002 */  lh         $t8, 0x2($s0)
    /* 1F5BC4 802DCEB4 00027203 */  sra        $t6, $v0, 8
    /* 1F5BC8 802DCEB8 01AE7821 */  addu       $t7, $t5, $t6
    /* 1F5BCC 802DCEBC 01F8082A */  slt        $at, $t7, $t8
    /* 1F5BD0 802DCEC0 87A40046 */  lh         $a0, 0x46($sp)
    /* 1F5BD4 802DCEC4 1020003C */  beqz       $at, .L802DCFB8_1F5CC8
    /* 1F5BD8 802DCEC8 87A50044 */   lh        $a1, 0x44($sp)
    /* 1F5BDC 802DCECC 86190010 */  lh         $t9, 0x10($s0)
    /* 1F5BE0 802DCED0 3C014038 */  lui        $at, (0x40380000 >> 16)
    /* 1F5BE4 802DCED4 44814800 */  mtc1       $at, $f9
    /* 1F5BE8 802DCED8 44992000 */  mtc1       $t9, $f4
    /* 1F5BEC 802DCEDC 44804000 */  mtc1       $zero, $f8
    /* 1F5BF0 802DCEE0 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 1F5BF4 802DCEE4 468021A1 */  cvt.d.w    $f6, $f4
    /* 1F5BF8 802DCEE8 AFA30028 */  sw         $v1, 0x28($sp)
    /* 1F5BFC 802DCEEC 46283280 */  add.d      $f10, $f6, $f8
    /* 1F5C00 802DCEF0 4620540D */  trunc.w.d  $f16, $f10
    /* 1F5C04 802DCEF4 440B8000 */  mfc1       $t3, $f16
    /* 1F5C08 802DCEF8 00000000 */  nop
    /* 1F5C0C 802DCEFC A60B0010 */  sh         $t3, 0x10($s0)
    /* 1F5C10 802DCF00 8C8C2A8C */  lw         $t4, %lo(D_80052A8C)($a0)
    /* 1F5C14 802DCF04 000C6AC0 */  sll        $t5, $t4, 11
    /* 1F5C18 802DCF08 0C007660 */  jal        sins
    /* 1F5C1C 802DCF0C 31A4FFFF */   andi      $a0, $t5, 0xFFFF
    /* 1F5C20 802DCF10 44829000 */  mtc1       $v0, $f18
    /* 1F5C24 802DCF14 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F5C28 802DCF18 44814800 */  mtc1       $at, $f9
    /* 1F5C2C 802DCF1C 46809120 */  cvt.s.w    $f4, $f18
    /* 1F5C30 802DCF20 44804000 */  mtc1       $zero, $f8
    /* 1F5C34 802DCF24 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* 1F5C38 802DCF28 44818800 */  mtc1       $at, $f17
    /* 1F5C3C 802DCF2C 44808000 */  mtc1       $zero, $f16
    /* 1F5C40 802DCF30 860B0008 */  lh         $t3, 0x8($s0)
    /* 1F5C44 802DCF34 460021A1 */  cvt.d.s    $f6, $f4
    /* 1F5C48 802DCF38 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 1F5C4C 802DCF3C 46283283 */  div.d      $f10, $f6, $f8
    /* 1F5C50 802DCF40 46305482 */  mul.d      $f18, $f10, $f16
    /* 1F5C54 802DCF44 4620910D */  trunc.w.d  $f4, $f18
    /* 1F5C58 802DCF48 440A2000 */  mfc1       $t2, $f4
    /* 1F5C5C 802DCF4C 00000000 */  nop
    /* 1F5C60 802DCF50 016A6021 */  addu       $t4, $t3, $t2
    /* 1F5C64 802DCF54 A60C0008 */  sh         $t4, 0x8($s0)
    /* 1F5C68 802DCF58 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 1F5C6C 802DCF5C 248D000C */  addiu      $t5, $a0, 0xC
    /* 1F5C70 802DCF60 000D72C0 */  sll        $t6, $t5, 11
    /* 1F5C74 802DCF64 0C007654 */  jal        coss
    /* 1F5C78 802DCF68 31C4FFFF */   andi      $a0, $t6, 0xFFFF
    /* 1F5C7C 802DCF6C 44823000 */  mtc1       $v0, $f6
    /* 1F5C80 802DCF70 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F5C84 802DCF74 44818800 */  mtc1       $at, $f17
    /* 1F5C88 802DCF78 46803220 */  cvt.s.w    $f8, $f6
    /* 1F5C8C 802DCF7C 44808000 */  mtc1       $zero, $f16
    /* 1F5C90 802DCF80 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* 1F5C94 802DCF84 44812800 */  mtc1       $at, $f5
    /* 1F5C98 802DCF88 44802000 */  mtc1       $zero, $f4
    /* 1F5C9C 802DCF8C 860C000A */  lh         $t4, 0xA($s0)
    /* 1F5CA0 802DCF90 460042A1 */  cvt.d.s    $f10, $f8
    /* 1F5CA4 802DCF94 8FA30028 */  lw         $v1, 0x28($sp)
    /* 1F5CA8 802DCF98 46305483 */  div.d      $f18, $f10, $f16
    /* 1F5CAC 802DCF9C 46249182 */  mul.d      $f6, $f18, $f4
    /* 1F5CB0 802DCFA0 4620320D */  trunc.w.d  $f8, $f6
    /* 1F5CB4 802DCFA4 440A4000 */  mfc1       $t2, $f8
    /* 1F5CB8 802DCFA8 00000000 */  nop
    /* 1F5CBC 802DCFAC 018A6821 */  addu       $t5, $t4, $t2
    /* 1F5CC0 802DCFB0 10000008 */  b          .L802DCFD4_1F5CE4
    /* 1F5CC4 802DCFB4 A60D000A */   sh        $t5, 0xA($s0)
  .L802DCFB8_1F5CC8:
    /* 1F5CC8 802DCFB8 0C02E134 */  jal        func_800B84D0_C7480
    /* 1F5CCC 802DCFBC AFA30028 */   sw        $v1, 0x28($sp)
    /* 1F5CD0 802DCFC0 8FA30028 */  lw         $v1, 0x28($sp)
    /* 1F5CD4 802DCFC4 00027A03 */  sra        $t7, $v0, 8
    /* 1F5CD8 802DCFC8 846E0058 */  lh         $t6, 0x58($v1)
    /* 1F5CDC 802DCFCC 01CFC021 */  addu       $t8, $t6, $t7
    /* 1F5CE0 802DCFD0 A6180002 */  sh         $t8, 0x2($s0)
  .L802DCFD4_1F5CE4:
    /* 1F5CE4 802DCFD4 3C198005 */  lui        $t9, %hi(D_80052A8C)
    /* 1F5CE8 802DCFD8 8F392A8C */  lw         $t9, %lo(D_80052A8C)($t9)
    /* 1F5CEC 802DCFDC 332B0003 */  andi       $t3, $t9, 0x3
    /* 1F5CF0 802DCFE0 55600053 */  bnel       $t3, $zero, .L802DD130_1F5E40
    /* 1F5CF4 802DCFE4 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 1F5CF8 802DCFE8 846C0034 */  lh         $t4, 0x34($v1)
    /* 1F5CFC 802DCFEC 846A0036 */  lh         $t2, 0x36($v1)
    /* 1F5D00 802DCFF0 846D0038 */  lh         $t5, 0x38($v1)
    /* 1F5D04 802DCFF4 A7AC0042 */  sh         $t4, 0x42($sp)
    /* 1F5D08 802DCFF8 A7AA0040 */  sh         $t2, 0x40($sp)
    /* 1F5D0C 802DCFFC 0C000E38 */  jal        func_800038E0_44E0
    /* 1F5D10 802DD000 A7AD003E */   sh        $t5, 0x3E($sp)
    /* 1F5D14 802DD004 0C000E38 */  jal        func_800038E0_44E0
    /* 1F5D18 802DD008 A7A20030 */   sh        $v0, 0x30($sp)
    /* 1F5D1C 802DD00C 0C000E38 */  jal        func_800038E0_44E0
    /* 1F5D20 802DD010 A7A20032 */   sh        $v0, 0x32($sp)
    /* 1F5D24 802DD014 0C000E38 */  jal        func_800038E0_44E0
    /* 1F5D28 802DD018 A7A20034 */   sh        $v0, 0x34($sp)
    /* 1F5D2C 802DD01C 97AE0030 */  lhu        $t6, 0x30($sp)
    /* 1F5D30 802DD020 87A80042 */  lh         $t0, 0x42($sp)
    /* 1F5D34 802DD024 87A3003E */  lh         $v1, 0x3E($sp)
    /* 1F5D38 802DD028 86180000 */  lh         $t8, 0x0($s0)
    /* 1F5D3C 802DD02C 01C8001A */  div        $zero, $t6, $t0
    /* 1F5D40 802DD030 00007810 */  mfhi       $t7
    /* 1F5D44 802DD034 00036843 */  sra        $t5, $v1, 1
    /* 1F5D48 802DD038 00085843 */  sra        $t3, $t0, 1
    /* 1F5D4C 802DD03C 01F8C821 */  addu       $t9, $t7, $t8
    /* 1F5D50 802DD040 032B2023 */  subu       $a0, $t9, $t3
    /* 1F5D54 802DD044 00046400 */  sll        $t4, $a0, 16
    /* 1F5D58 802DD048 000C5403 */  sra        $t2, $t4, 16
    /* 1F5D5C 802DD04C 01402025 */  or         $a0, $t2, $zero
    /* 1F5D60 802DD050 97AA0034 */  lhu        $t2, 0x34($sp)
    /* 1F5D64 802DD054 87A90040 */  lh         $t1, 0x40($sp)
    /* 1F5D68 802DD058 15000002 */  bnez       $t0, .L802DD064_1F5D74
    /* 1F5D6C 802DD05C 00000000 */   nop
    /* 1F5D70 802DD060 0007000D */  break      7
  .L802DD064_1F5D74:
    /* 1F5D74 802DD064 2401FFFF */  addiu      $at, $zero, -0x1
    /* 1F5D78 802DD068 15010004 */  bne        $t0, $at, .L802DD07C_1F5D8C
    /* 1F5D7C 802DD06C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 1F5D80 802DD070 15C10002 */  bne        $t6, $at, .L802DD07C_1F5D8C
    /* 1F5D84 802DD074 00000000 */   nop
    /* 1F5D88 802DD078 0006000D */  break      6
  .L802DD07C_1F5D8C:
    /* 1F5D8C 802DD07C 97AE0032 */  lhu        $t6, 0x32($sp)
    /* 1F5D90 802DD080 01A01825 */  or         $v1, $t5, $zero
    /* 1F5D94 802DD084 86180002 */  lh         $t8, 0x2($s0)
    /* 1F5D98 802DD088 01CD001A */  div        $zero, $t6, $t5
    /* 1F5D9C 802DD08C 00007810 */  mfhi       $t7
    /* 1F5DA0 802DD090 01F8C821 */  addu       $t9, $t7, $t8
    /* 1F5DA4 802DD094 14600002 */  bnez       $v1, .L802DD0A0_1F5DB0
    /* 1F5DA8 802DD098 00000000 */   nop
    /* 1F5DAC 802DD09C 0007000D */  break      7
  .L802DD0A0_1F5DB0:
    /* 1F5DB0 802DD0A0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 1F5DB4 802DD0A4 14610004 */  bne        $v1, $at, .L802DD0B8_1F5DC8
    /* 1F5DB8 802DD0A8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 1F5DBC 802DD0AC 15C10002 */  bne        $t6, $at, .L802DD0B8_1F5DC8
    /* 1F5DC0 802DD0B0 00000000 */   nop
    /* 1F5DC4 802DD0B4 0006000D */  break      6
  .L802DD0B8_1F5DC8:
    /* 1F5DC8 802DD0B8 0149001A */  div        $zero, $t2, $t1
    /* 1F5DCC 802DD0BC 00006810 */  mfhi       $t5
    /* 1F5DD0 802DD0C0 860E0004 */  lh         $t6, 0x4($s0)
    /* 1F5DD4 802DD0C4 03232823 */  subu       $a1, $t9, $v1
    /* 1F5DD8 802DD0C8 00055C00 */  sll        $t3, $a1, 16
    /* 1F5DDC 802DD0CC 000B6403 */  sra        $t4, $t3, 16
    /* 1F5DE0 802DD0D0 0009C043 */  sra        $t8, $t1, 1
    /* 1F5DE4 802DD0D4 01AE7821 */  addu       $t7, $t5, $t6
    /* 1F5DE8 802DD0D8 01F83023 */  subu       $a2, $t7, $t8
    /* 1F5DEC 802DD0DC 01802825 */  or         $a1, $t4, $zero
    /* 1F5DF0 802DD0E0 15200002 */  bnez       $t1, .L802DD0EC_1F5DFC
    /* 1F5DF4 802DD0E4 00000000 */   nop
    /* 1F5DF8 802DD0E8 0007000D */  break      7
  .L802DD0EC_1F5DFC:
    /* 1F5DFC 802DD0EC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 1F5E00 802DD0F0 15210004 */  bne        $t1, $at, .L802DD104_1F5E14
    /* 1F5E04 802DD0F4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 1F5E08 802DD0F8 15410002 */  bne        $t2, $at, .L802DD104_1F5E14
    /* 1F5E0C 802DD0FC 00000000 */   nop
    /* 1F5E10 802DD100 0006000D */  break      6
  .L802DD104_1F5E14:
    /* 1F5E14 802DD104 24010028 */  addiu      $at, $zero, 0x28
    /* 1F5E18 802DD108 0041001A */  div        $zero, $v0, $at
    /* 1F5E1C 802DD10C 00003810 */  mfhi       $a3
    /* 1F5E20 802DD110 24E7001E */  addiu      $a3, $a3, 0x1E
    /* 1F5E24 802DD114 30ECFFFF */  andi       $t4, $a3, 0xFFFF
    /* 1F5E28 802DD118 0006CC00 */  sll        $t9, $a2, 16
    /* 1F5E2C 802DD11C 00193403 */  sra        $a2, $t9, 16
    /* 1F5E30 802DD120 01803825 */  or         $a3, $t4, $zero
    /* 1F5E34 802DD124 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F5E38 802DD128 AFA00010 */   sw        $zero, 0x10($sp)
  .L802DD12C_1F5E3C:
    /* 1F5E3C 802DD12C 8FBF0024 */  lw         $ra, 0x24($sp)
  .L802DD130_1F5E40:
    /* 1F5E40 802DD130 8FB00020 */  lw         $s0, 0x20($sp)
    /* 1F5E44 802DD134 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 1F5E48 802DD138 03E00008 */  jr         $ra
    /* 1F5E4C 802DD13C 00000000 */   nop
endlabel func_802DCE34_1F5B44
