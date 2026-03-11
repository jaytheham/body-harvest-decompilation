nonmatching func_802DBBE4_1F48F4, 0xCC

glabel func_802DBBE4_1F48F4
    /* 1F48F4 802DBBE4 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 1F48F8 802DBBE8 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 1F48FC 802DBBEC AFA40028 */  sw         $a0, 0x28($sp)
    /* 1F4900 802DBBF0 AFB00020 */  sw         $s0, 0x20($sp)
    /* 1F4904 802DBBF4 0C02451C */  jal        func_80091470_A0420
    /* 1F4908 802DBBF8 93A4002B */   lbu       $a0, 0x2B($sp)
    /* 1F490C 802DBBFC 93AE002B */  lbu        $t6, 0x2B($sp)
    /* 1F4910 802DBC00 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F4914 802DBC04 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F4918 802DBC08 000E7880 */  sll        $t7, $t6, 2
    /* 1F491C 802DBC0C 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F4920 802DBC10 000F7900 */  sll        $t7, $t7, 4
    /* 1F4924 802DBC14 01F88021 */  addu       $s0, $t7, $t8
    /* 1F4928 802DBC18 8E020020 */  lw         $v0, 0x20($s0)
    /* 1F492C 802DBC1C 30594000 */  andi       $t9, $v0, 0x4000
    /* 1F4930 802DBC20 57200005 */  bnel       $t9, $zero, .L802DBC38_1F4948
    /* 1F4934 802DBC24 30480100 */   andi      $t0, $v0, 0x100
    /* 1F4938 802DBC28 0C0245C3 */  jal        func_8009170C_A06BC
    /* 1F493C 802DBC2C 01C02025 */   or        $a0, $t6, $zero
    /* 1F4940 802DBC30 8E020020 */  lw         $v0, 0x20($s0)
    /* 1F4944 802DBC34 30480100 */  andi       $t0, $v0, 0x100
  .L802DBC38_1F4948:
    /* 1F4948 802DBC38 51000019 */  beql       $t0, $zero, .L802DBCA0_1F49B0
    /* 1F494C 802DBC3C 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 1F4950 802DBC40 86040000 */  lh         $a0, 0x0($s0)
    /* 1F4954 802DBC44 86050004 */  lh         $a1, 0x4($s0)
    /* 1F4958 802DBC48 24060800 */  addiu      $a2, $zero, 0x800
    /* 1F495C 802DBC4C 00044A03 */  sra        $t1, $a0, 8
    /* 1F4960 802DBC50 00056203 */  sra        $t4, $a1, 8
    /* 1F4964 802DBC54 000C6E00 */  sll        $t5, $t4, 24
    /* 1F4968 802DBC58 00095600 */  sll        $t2, $t1, 24
    /* 1F496C 802DBC5C 000A2603 */  sra        $a0, $t2, 24
    /* 1F4970 802DBC60 0C02CC97 */  jal        func_800B325C_C220C
    /* 1F4974 802DBC64 000D2E03 */   sra       $a1, $t5, 24
    /* 1F4978 802DBC68 1040000C */  beqz       $v0, .L802DBC9C_1F49AC
    /* 1F497C 802DBC6C 02002025 */   or        $a0, $s0, $zero
    /* 1F4980 802DBC70 00002825 */  or         $a1, $zero, $zero
    /* 1F4984 802DBC74 00003025 */  or         $a2, $zero, $zero
    /* 1F4988 802DBC78 00003825 */  or         $a3, $zero, $zero
    /* 1F498C 802DBC7C 0C04A4D5 */  jal        func_80129354_138304
    /* 1F4990 802DBC80 AFA00010 */   sw        $zero, 0x10($sp)
    /* 1F4994 802DBC84 10400005 */  beqz       $v0, .L802DBC9C_1F49AC
    /* 1F4998 802DBC88 93A4002B */   lbu       $a0, 0x2B($sp)
    /* 1F499C 802DBC8C 0C04DD1A */  jal        func_80137468_146418
    /* 1F49A0 802DBC90 24050065 */   addiu     $a1, $zero, 0x65
    /* 1F49A4 802DBC94 2418001E */  addiu      $t8, $zero, 0x1E
    /* 1F49A8 802DBC98 A618001E */  sh         $t8, 0x1E($s0)
  .L802DBC9C_1F49AC:
    /* 1F49AC 802DBC9C 8FBF0024 */  lw         $ra, 0x24($sp)
  .L802DBCA0_1F49B0:
    /* 1F49B0 802DBCA0 8FB00020 */  lw         $s0, 0x20($sp)
    /* 1F49B4 802DBCA4 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 1F49B8 802DBCA8 03E00008 */  jr         $ra
    /* 1F49BC 802DBCAC 00000000 */   nop
endlabel func_802DBBE4_1F48F4
