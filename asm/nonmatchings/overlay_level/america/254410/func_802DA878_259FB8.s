nonmatching func_802DA878_259FB8, 0x220

glabel func_802DA878_259FB8
    /* 259FB8 802DA878 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 259FBC 802DA87C AFA40020 */  sw         $a0, 0x20($sp)
    /* 259FC0 802DA880 93AE0023 */  lbu        $t6, 0x23($sp)
    /* 259FC4 802DA884 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 259FC8 802DA888 AFB00018 */  sw         $s0, 0x18($sp)
    /* 259FCC 802DA88C 000E7880 */  sll        $t7, $t6, 2
    /* 259FD0 802DA890 01EE7821 */  addu       $t7, $t7, $t6
    /* 259FD4 802DA894 000F7900 */  sll        $t7, $t7, 4
    /* 259FD8 802DA898 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 259FDC 802DA89C 01F88021 */  addu       $s0, $t7, $t8
    /* 259FE0 802DA8A0 8E190020 */  lw         $t9, 0x20($s0)
    /* 259FE4 802DA8A4 92030026 */  lbu        $v1, 0x26($s0)
    /* 259FE8 802DA8A8 3C012000 */  lui        $at, (0x20000000 >> 16)
    /* 259FEC 802DA8AC 03214025 */  or         $t0, $t9, $at
    /* 259FF0 802DA8B0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 259FF4 802DA8B4 AE080020 */  sw         $t0, 0x20($s0)
    /* 259FF8 802DA8B8 1060000A */  beqz       $v1, .L802DA8E4_25A024
    /* 259FFC 802DA8BC 00601025 */   or        $v0, $v1, $zero
    /* 25A000 802DA8C0 24010001 */  addiu      $at, $zero, 0x1
    /* 25A004 802DA8C4 10610025 */  beq        $v1, $at, .L802DA95C_25A09C
    /* 25A008 802DA8C8 24010002 */   addiu     $at, $zero, 0x2
    /* 25A00C 802DA8CC 1061003F */  beq        $v1, $at, .L802DA9CC_25A10C
    /* 25A010 802DA8D0 24010004 */   addiu     $at, $zero, 0x4
    /* 25A014 802DA8D4 1041004B */  beq        $v0, $at, .L802DAA04_25A144
    /* 25A018 802DA8D8 3C0A8014 */   lui       $t2, %hi(D_8013BD00)
    /* 25A01C 802DA8DC 1000005D */  b          .L802DAA54_25A194
    /* 25A020 802DA8E0 28610002 */   slti      $at, $v1, 0x2
  .L802DA8E4_25A024:
    /* 25A024 802DA8E4 8E090020 */  lw         $t1, 0x20($s0)
    /* 25A028 802DA8E8 920B001A */  lbu        $t3, 0x1A($s0)
    /* 25A02C 802DA8EC 3C010040 */  lui        $at, (0x400000 >> 16)
    /* 25A030 802DA8F0 01215025 */  or         $t2, $t1, $at
    /* 25A034 802DA8F4 24010009 */  addiu      $at, $zero, 0x9
    /* 25A038 802DA8F8 15610007 */  bne        $t3, $at, .L802DA918_25A058
    /* 25A03C 802DA8FC AE0A0020 */   sw        $t2, 0x20($s0)
    /* 25A040 802DA900 0C01E770 */  jal        func_80079DC0_88D70
    /* 25A044 802DA904 8604000C */   lh        $a0, 0xC($s0)
    /* 25A048 802DA908 240CFFFF */  addiu      $t4, $zero, -0x1
    /* 25A04C 802DA90C 240D0008 */  addiu      $t5, $zero, 0x8
    /* 25A050 802DA910 A60C000C */  sh         $t4, 0xC($s0)
    /* 25A054 802DA914 A20D001A */  sb         $t5, 0x1A($s0)
  .L802DA918_25A058:
    /* 25A058 802DA918 860E0048 */  lh         $t6, 0x48($s0)
    /* 25A05C 802DA91C 24190001 */  addiu      $t9, $zero, 0x1
    /* 25A060 802DA920 2408003C */  addiu      $t0, $zero, 0x3C
    /* 25A064 802DA924 25CF000A */  addiu      $t7, $t6, 0xA
    /* 25A068 802DA928 A60F0048 */  sh         $t7, 0x48($s0)
    /* 25A06C 802DA92C 86180048 */  lh         $t8, 0x48($s0)
    /* 25A070 802DA930 07000008 */  bltz       $t8, .L802DA954_25A094
    /* 25A074 802DA934 00000000 */   nop
    /* 25A078 802DA938 8202003C */  lb         $v0, 0x3C($s0)
    /* 25A07C 802DA93C A6000048 */  sh         $zero, 0x48($s0)
    /* 25A080 802DA940 A2190026 */  sb         $t9, 0x26($s0)
    /* 25A084 802DA944 10400003 */  beqz       $v0, .L802DA954_25A094
    /* 25A088 802DA948 A608002C */   sh        $t0, 0x2C($s0)
    /* 25A08C 802DA94C 2449FFFF */  addiu      $t1, $v0, -0x1
    /* 25A090 802DA950 A209003C */  sb         $t1, 0x3C($s0)
  .L802DA954_25A094:
    /* 25A094 802DA954 1000003E */  b          .L802DAA50_25A190
    /* 25A098 802DA958 92030026 */   lbu       $v1, 0x26($s0)
  .L802DA95C_25A09C:
    /* 25A09C 802DA95C 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 25A0A0 802DA960 920C001A */  lbu        $t4, 0x1A($s0)
    /* 25A0A4 802DA964 3C010040 */  lui        $at, (0x400000 >> 16)
    /* 25A0A8 802DA968 01415825 */  or         $t3, $t2, $at
    /* 25A0AC 802DA96C 24010009 */  addiu      $at, $zero, 0x9
    /* 25A0B0 802DA970 15810007 */  bne        $t4, $at, .L802DA990_25A0D0
    /* 25A0B4 802DA974 AE0B0020 */   sw        $t3, 0x20($s0)
    /* 25A0B8 802DA978 0C01E770 */  jal        func_80079DC0_88D70
    /* 25A0BC 802DA97C 8604000C */   lh        $a0, 0xC($s0)
    /* 25A0C0 802DA980 240D0008 */  addiu      $t5, $zero, 0x8
    /* 25A0C4 802DA984 A20D001A */  sb         $t5, 0x1A($s0)
    /* 25A0C8 802DA988 0C01E723 */  jal        func_80079C8C_88C3C
    /* 25A0CC 802DA98C 93A40023 */   lbu       $a0, 0x23($sp)
  .L802DA990_25A0D0:
    /* 25A0D0 802DA990 860E0048 */  lh         $t6, 0x48($s0)
    /* 25A0D4 802DA994 2419FE0C */  addiu      $t9, $zero, -0x1F4
    /* 25A0D8 802DA998 25CFFFF6 */  addiu      $t7, $t6, -0xA
    /* 25A0DC 802DA99C A60F0048 */  sh         $t7, 0x48($s0)
    /* 25A0E0 802DA9A0 86180048 */  lh         $t8, 0x48($s0)
    /* 25A0E4 802DA9A4 2B01FE0D */  slti       $at, $t8, -0x1F3
    /* 25A0E8 802DA9A8 50200003 */  beql       $at, $zero, .L802DA9B8_25A0F8
    /* 25A0EC 802DA9AC 8608002C */   lh        $t0, 0x2C($s0)
    /* 25A0F0 802DA9B0 A6190048 */  sh         $t9, 0x48($s0)
    /* 25A0F4 802DA9B4 8608002C */  lh         $t0, 0x2C($s0)
  .L802DA9B8_25A0F8:
    /* 25A0F8 802DA9B8 15000002 */  bnez       $t0, .L802DA9C4_25A104
    /* 25A0FC 802DA9BC 00000000 */   nop
    /* 25A100 802DA9C0 A2000026 */  sb         $zero, 0x26($s0)
  .L802DA9C4_25A104:
    /* 25A104 802DA9C4 10000022 */  b          .L802DAA50_25A190
    /* 25A108 802DA9C8 92030026 */   lbu       $v1, 0x26($s0)
  .L802DA9CC_25A10C:
    /* 25A10C 802DA9CC 9209001A */  lbu        $t1, 0x1A($s0)
    /* 25A110 802DA9D0 24010008 */  addiu      $at, $zero, 0x8
    /* 25A114 802DA9D4 5521001F */  bnel       $t1, $at, .L802DAA54_25A194
    /* 25A118 802DA9D8 28610002 */   slti      $at, $v1, 0x2
    /* 25A11C 802DA9DC 0C01E770 */  jal        func_80079DC0_88D70
    /* 25A120 802DA9E0 8604000C */   lh        $a0, 0xC($s0)
    /* 25A124 802DA9E4 240A0009 */  addiu      $t2, $zero, 0x9
    /* 25A128 802DA9E8 A20A001A */  sb         $t2, 0x1A($s0)
    /* 25A12C 802DA9EC 0C01E723 */  jal        func_80079C8C_88C3C
    /* 25A130 802DA9F0 93A40023 */   lbu       $a0, 0x23($sp)
    /* 25A134 802DA9F4 240BFE0C */  addiu      $t3, $zero, -0x1F4
    /* 25A138 802DA9F8 A60B0048 */  sh         $t3, 0x48($s0)
    /* 25A13C 802DA9FC 10000014 */  b          .L802DAA50_25A190
    /* 25A140 802DAA00 92030026 */   lbu       $v1, 0x26($s0)
  .L802DAA04_25A144:
    /* 25A144 802DAA04 860E0048 */  lh         $t6, 0x48($s0)
    /* 25A148 802DAA08 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 25A14C 802DAA0C 3C010040 */  lui        $at, (0x400000 >> 16)
    /* 25A150 802DAA10 25CFFFF1 */  addiu      $t7, $t6, -0xF
    /* 25A154 802DAA14 A60F0048 */  sh         $t7, 0x48($s0)
    /* 25A158 802DAA18 86180048 */  lh         $t8, 0x48($s0)
    /* 25A15C 802DAA1C 01816825 */  or         $t5, $t4, $at
    /* 25A160 802DAA20 AE0D0020 */  sw         $t5, 0x20($s0)
    /* 25A164 802DAA24 2B01FE0D */  slti       $at, $t8, -0x1F3
    /* 25A168 802DAA28 10200006 */  beqz       $at, .L802DAA44_25A184
    /* 25A16C 802DAA2C 2419FE0C */   addiu     $t9, $zero, -0x1F4
    /* 25A170 802DAA30 24080001 */  addiu      $t0, $zero, 0x1
    /* 25A174 802DAA34 2409003C */  addiu      $t1, $zero, 0x3C
    /* 25A178 802DAA38 A6190048 */  sh         $t9, 0x48($s0)
    /* 25A17C 802DAA3C A2080026 */  sb         $t0, 0x26($s0)
    /* 25A180 802DAA40 A609002C */  sh         $t1, 0x2C($s0)
  .L802DAA44_25A184:
    /* 25A184 802DAA44 914ABD00 */  lbu        $t2, %lo(D_8013BD00)($t2)
    /* 25A188 802DAA48 92030026 */  lbu        $v1, 0x26($s0)
    /* 25A18C 802DAA4C A20A003C */  sb         $t2, 0x3C($s0)
  .L802DAA50_25A190:
    /* 25A190 802DAA50 28610002 */  slti       $at, $v1, 0x2
  .L802DAA54_25A194:
    /* 25A194 802DAA54 10200005 */  beqz       $at, .L802DAA6C_25A1AC
    /* 25A198 802DAA58 00000000 */   nop
    /* 25A19C 802DAA5C 0C0B6679 */  jal        func_802D99E4_259124
    /* 25A1A0 802DAA60 93A40023 */   lbu       $a0, 0x23($sp)
    /* 25A1A4 802DAA64 10000004 */  b          .L802DAA78_25A1B8
    /* 25A1A8 802DAA68 8602001E */   lh        $v0, 0x1E($s0)
  .L802DAA6C_25A1AC:
    /* 25A1AC 802DAA6C 0C0B6948 */  jal        func_802DA520_259C60
    /* 25A1B0 802DAA70 93A40023 */   lbu       $a0, 0x23($sp)
    /* 25A1B4 802DAA74 8602001E */  lh         $v0, 0x1E($s0)
  .L802DAA78_25A1B8:
    /* 25A1B8 802DAA78 10400002 */  beqz       $v0, .L802DAA84_25A1C4
    /* 25A1BC 802DAA7C 244BFFFF */   addiu     $t3, $v0, -0x1
    /* 25A1C0 802DAA80 A60B001E */  sh         $t3, 0x1E($s0)
  .L802DAA84_25A1C4:
    /* 25A1C4 802DAA84 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 25A1C8 802DAA88 8FB00018 */  lw         $s0, 0x18($sp)
    /* 25A1CC 802DAA8C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 25A1D0 802DAA90 03E00008 */  jr         $ra
    /* 25A1D4 802DAA94 00000000 */   nop
endlabel func_802DA878_259FB8
