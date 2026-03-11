nonmatching func_802DAFD0_1F3CE0, 0x17C

glabel func_802DAFD0_1F3CE0
    /* 1F3CE0 802DAFD0 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 1F3CE4 802DAFD4 AFB00020 */  sw         $s0, 0x20($sp)
    /* 1F3CE8 802DAFD8 00058400 */  sll        $s0, $a1, 16
    /* 1F3CEC 802DAFDC 00107403 */  sra        $t6, $s0, 16
    /* 1F3CF0 802DAFE0 000E7900 */  sll        $t7, $t6, 4
    /* 1F3CF4 802DAFE4 3C028015 */  lui        $v0, %hi(D_8014DD5C)
    /* 1F3CF8 802DAFE8 004F1021 */  addu       $v0, $v0, $t7
    /* 1F3CFC 802DAFEC 8042DD5C */  lb         $v0, %lo(D_8014DD5C)($v0)
    /* 1F3D00 802DAFF0 3C18802E */  lui        $t8, %hi(D_802E0870)
    /* 1F3D04 802DAFF4 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 1F3D08 802DAFF8 AFA40050 */  sw         $a0, 0x50($sp)
    /* 1F3D0C 802DAFFC AFA50054 */  sw         $a1, 0x54($sp)
    /* 1F3D10 802DB000 27180870 */  addiu      $t8, $t8, %lo(D_802E0870)
    /* 1F3D14 802DB004 A7AE0048 */  sh         $t6, 0x48($sp)
    /* 1F3D18 802DB008 AFB80010 */  sw         $t8, 0x10($sp)
    /* 1F3D1C 802DB00C 24050002 */  addiu      $a1, $zero, 0x2
    /* 1F3D20 802DB010 93A40053 */  lbu        $a0, 0x53($sp)
    /* 1F3D24 802DB014 27A70048 */  addiu      $a3, $sp, 0x48
    /* 1F3D28 802DB018 2406000A */  addiu      $a2, $zero, 0xA
    /* 1F3D2C 802DB01C 0C020821 */  jal        func_80082084_91034
    /* 1F3D30 802DB020 A7A2004A */   sh        $v0, 0x4A($sp)
    /* 1F3D34 802DB024 24010002 */  addiu      $at, $zero, 0x2
    /* 1F3D38 802DB028 10410006 */  beq        $v0, $at, .L802DB044_1F3D54
    /* 1F3D3C 802DB02C A3A20047 */   sb        $v0, 0x47($sp)
    /* 1F3D40 802DB030 24010005 */  addiu      $at, $zero, 0x5
    /* 1F3D44 802DB034 10410003 */  beq        $v0, $at, .L802DB044_1F3D54
    /* 1F3D48 802DB038 24010008 */   addiu     $at, $zero, 0x8
    /* 1F3D4C 802DB03C 54410005 */  bnel       $v0, $at, .L802DB054_1F3D64
    /* 1F3D50 802DB040 93B90053 */   lbu       $t9, 0x53($sp)
  .L802DB044_1F3D54:
    /* 1F3D54 802DB044 93A40053 */  lbu        $a0, 0x53($sp)
    /* 1F3D58 802DB048 0C04DD1A */  jal        func_80137468_146418
    /* 1F3D5C 802DB04C 240500CC */   addiu     $a1, $zero, 0xCC
    /* 1F3D60 802DB050 93B90053 */  lbu        $t9, 0x53($sp)
  .L802DB054_1F3D64:
    /* 1F3D64 802DB054 3C098005 */  lui        $t1, %hi(alienInstances)
    /* 1F3D68 802DB058 25298198 */  addiu      $t1, $t1, %lo(alienInstances)
    /* 1F3D6C 802DB05C 00194080 */  sll        $t0, $t9, 2
    /* 1F3D70 802DB060 01194021 */  addu       $t0, $t0, $t9
    /* 1F3D74 802DB064 00084100 */  sll        $t0, $t0, 4
    /* 1F3D78 802DB068 01098021 */  addu       $s0, $t0, $t1
    /* 1F3D7C 802DB06C 9202004B */  lbu        $v0, 0x4B($s0)
    /* 1F3D80 802DB070 24010002 */  addiu      $at, $zero, 0x2
    /* 1F3D84 802DB074 3C0B8025 */  lui        $t3, %hi(alienSpecs)
    /* 1F3D88 802DB078 10410006 */  beq        $v0, $at, .L802DB094_1F3DA4
    /* 1F3D8C 802DB07C 256B6680 */   addiu     $t3, $t3, %lo(alienSpecs)
    /* 1F3D90 802DB080 24010005 */  addiu      $at, $zero, 0x5
    /* 1F3D94 802DB084 10410003 */  beq        $v0, $at, .L802DB094_1F3DA4
    /* 1F3D98 802DB088 24010008 */   addiu     $at, $zero, 0x8
    /* 1F3D9C 802DB08C 54410019 */  bnel       $v0, $at, .L802DB0F4_1F3E04
    /* 1F3DA0 802DB090 83AE0047 */   lb        $t6, 0x47($sp)
  .L802DB094_1F3DA4:
    /* 1F3DA4 802DB094 9203001A */  lbu        $v1, 0x1A($s0)
    /* 1F3DA8 802DB098 240CFFEC */  addiu      $t4, $zero, -0x14
    /* 1F3DAC 802DB09C 240D003C */  addiu      $t5, $zero, 0x3C
    /* 1F3DB0 802DB0A0 00035080 */  sll        $t2, $v1, 2
    /* 1F3DB4 802DB0A4 01435023 */  subu       $t2, $t2, $v1
    /* 1F3DB8 802DB0A8 000A5080 */  sll        $t2, $t2, 2
    /* 1F3DBC 802DB0AC 01435021 */  addu       $t2, $t2, $v1
    /* 1F3DC0 802DB0B0 000A50C0 */  sll        $t2, $t2, 3
    /* 1F3DC4 802DB0B4 014B1021 */  addu       $v0, $t2, $t3
    /* 1F3DC8 802DB0B8 A4400020 */  sh         $zero, 0x20($v0)
    /* 1F3DCC 802DB0BC A44C0022 */  sh         $t4, 0x22($v0)
    /* 1F3DD0 802DB0C0 A44D0024 */  sh         $t5, 0x24($v0)
    /* 1F3DD4 802DB0C4 93A40053 */  lbu        $a0, 0x53($sp)
    /* 1F3DD8 802DB0C8 2405001E */  addiu      $a1, $zero, 0x1E
    /* 1F3DDC 802DB0CC 0C021E69 */  jal        func_800879A4_96954
    /* 1F3DE0 802DB0D0 00003025 */   or        $a2, $zero, $zero
    /* 1F3DE4 802DB0D4 10400006 */  beqz       $v0, .L802DB0F0_1F3E00
    /* 1F3DE8 802DB0D8 3C048005 */   lui       $a0, %hi(D_80052B34)
    /* 1F3DEC 802DB0DC 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 1F3DF0 802DB0E0 24050028 */  addiu      $a1, $zero, 0x28
    /* 1F3DF4 802DB0E4 86060000 */  lh         $a2, 0x0($s0)
    /* 1F3DF8 802DB0E8 0C048949 */  jal        func_80122524_1314D4
    /* 1F3DFC 802DB0EC 86070004 */   lh        $a3, 0x4($s0)
  .L802DB0F0_1F3E00:
    /* 1F3E00 802DB0F0 83AE0047 */  lb         $t6, 0x47($sp)
  .L802DB0F4_1F3E04:
    /* 1F3E04 802DB0F4 2401000A */  addiu      $at, $zero, 0xA
    /* 1F3E08 802DB0F8 55C10010 */  bnel       $t6, $at, .L802DB13C_1F3E4C
    /* 1F3E0C 802DB0FC 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 1F3E10 802DB100 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 1F3E14 802DB104 92190047 */  lbu        $t9, 0x47($s0)
    /* 1F3E18 802DB108 3C01FFFF */  lui        $at, (0xFFFF3FFF >> 16)
    /* 1F3E1C 802DB10C 34213FFF */  ori        $at, $at, (0xFFFF3FFF & 0xFFFF)
    /* 1F3E20 802DB110 01E1C024 */  and        $t8, $t7, $at
    /* 1F3E24 802DB114 37280001 */  ori        $t0, $t9, 0x1
    /* 1F3E28 802DB118 AE180020 */  sw         $t8, 0x20($s0)
    /* 1F3E2C 802DB11C 0C000E38 */  jal        func_800038E0_44E0
    /* 1F3E30 802DB120 A2080047 */   sb        $t0, 0x47($s0)
    /* 1F3E34 802DB124 00024AC3 */  sra        $t1, $v0, 11
    /* 1F3E38 802DB128 252A0020 */  addiu      $t2, $t1, 0x20
    /* 1F3E3C 802DB12C 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 1F3E40 802DB130 A60A0034 */  sh         $t2, 0x34($s0)
    /* 1F3E44 802DB134 A20B004B */  sb         $t3, 0x4B($s0)
    /* 1F3E48 802DB138 8FBF0024 */  lw         $ra, 0x24($sp)
  .L802DB13C_1F3E4C:
    /* 1F3E4C 802DB13C 8FB00020 */  lw         $s0, 0x20($sp)
    /* 1F3E50 802DB140 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 1F3E54 802DB144 03E00008 */  jr         $ra
    /* 1F3E58 802DB148 00000000 */   nop
endlabel func_802DAFD0_1F3CE0
