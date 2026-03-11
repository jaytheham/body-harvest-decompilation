nonmatching func_8008B8E4_9A894, 0x374

glabel func_8008B8E4_9A894
    /* 9A894 8008B8E4 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 9A898 8008B8E8 AFA40070 */  sw         $a0, 0x70($sp)
    /* 9A89C 8008B8EC 93AE0073 */  lbu        $t6, 0x73($sp)
    /* 9A8A0 8008B8F0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 9A8A4 8008B8F4 AFB00020 */  sw         $s0, 0x20($sp)
    /* 9A8A8 8008B8F8 000E7880 */  sll        $t7, $t6, 2
    /* 9A8AC 8008B8FC 01EE7821 */  addu       $t7, $t7, $t6
    /* 9A8B0 8008B900 000F7900 */  sll        $t7, $t7, 4
    /* 9A8B4 8008B904 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 9A8B8 8008B908 01F88021 */  addu       $s0, $t7, $t8
    /* 9A8BC 8008B90C 8E190020 */  lw         $t9, 0x20($s0)
    /* 9A8C0 8008B910 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 9A8C4 8008B914 3C048014 */  lui        $a0, %hi(D_80141DE0)
    /* 9A8C8 8008B918 001942C0 */  sll        $t0, $t9, 11
    /* 9A8CC 8008B91C 05000008 */  bltz       $t0, .L8008B940_9A8F0
    /* 9A8D0 8008B920 00000000 */   nop
    /* 9A8D4 8008B924 3C048014 */  lui        $a0, %hi(D_80141DCC)
    /* 9A8D8 8008B928 0C00731B */  jal        osSyncPrintf
    /* 9A8DC 8008B92C 24841DCC */   addiu     $a0, $a0, %lo(D_80141DCC)
    /* 9A8E0 8008B930 0C022E1C */  jal        func_8008B870_9A820
    /* 9A8E4 8008B934 93A40073 */   lbu       $a0, 0x73($sp)
    /* 9A8E8 8008B938 100000C3 */  b          .L8008BC48_9ABF8
    /* 9A8EC 8008B93C 8FBF0024 */   lw        $ra, 0x24($sp)
  .L8008B940_9A8F0:
    /* 9A8F0 8008B940 0C00731B */  jal        osSyncPrintf
    /* 9A8F4 8008B944 24841DE0 */   addiu     $a0, $a0, %lo(D_80141DE0)
    /* 9A8F8 8008B948 8609000C */  lh         $t1, 0xC($s0)
    /* 9A8FC 8008B94C 3C0B8015 */  lui        $t3, %hi(D_8014DD50)
    /* 9A900 8008B950 256BDD50 */  addiu      $t3, $t3, %lo(D_8014DD50)
    /* 9A904 8008B954 00095100 */  sll        $t2, $t1, 4
    /* 9A908 8008B958 014B6021 */  addu       $t4, $t2, $t3
    /* 9A90C 8008B95C 818D000C */  lb         $t5, 0xC($t4)
    /* 9A910 8008B960 2401FFFF */  addiu      $at, $zero, -0x1
    /* 9A914 8008B964 A7AD0064 */  sh         $t5, 0x64($sp)
    /* 9A918 8008B968 87AE0064 */  lh         $t6, 0x64($sp)
    /* 9A91C 8008B96C 11C10024 */  beq        $t6, $at, .L8008BA00_9A9B0
    /* 9A920 8008B970 000E7900 */   sll       $t7, $t6, 4
    /* 9A924 8008B974 8E020020 */  lw         $v0, 0x20($s0)
    /* 9A928 8008B978 01EBC021 */  addu       $t8, $t7, $t3
    /* 9A92C 8008B97C 8319000C */  lb         $t9, 0xC($t8)
    /* 9A930 8008B980 30481000 */  andi       $t0, $v0, 0x1000
    /* 9A934 8008B984 11000013 */  beqz       $t0, .L8008B9D4_9A984
    /* 9A938 8008B988 A7B90066 */   sh        $t9, 0x66($sp)
    /* 9A93C 8008B98C 3C098014 */  lui        $t1, %hi(D_8013C38C)
    /* 9A940 8008B990 2529C38C */  addiu      $t1, $t1, %lo(D_8013C38C)
    /* 9A944 8008B994 AFA90010 */  sw         $t1, 0x10($sp)
    /* 9A948 8008B998 93A40073 */  lbu        $a0, 0x73($sp)
    /* 9A94C 8008B99C 24050002 */  addiu      $a1, $zero, 0x2
    /* 9A950 8008B9A0 24060005 */  addiu      $a2, $zero, 0x5
    /* 9A954 8008B9A4 0C0207C6 */  jal        func_80081F18_90EC8
    /* 9A958 8008B9A8 27A70064 */   addiu     $a3, $sp, 0x64
    /* 9A95C 8008B9AC 24010005 */  addiu      $at, $zero, 0x5
    /* 9A960 8008B9B0 54410014 */  bnel       $v0, $at, .L8008BA04_9A9B4
    /* 9A964 8008B9B4 8602003A */   lh        $v0, 0x3A($s0)
    /* 9A968 8008B9B8 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 9A96C 8008B9BC 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 9A970 8008B9C0 01416024 */  and        $t4, $t2, $at
    /* 9A974 8008B9C4 AE0C0020 */  sw         $t4, 0x20($s0)
    /* 9A978 8008B9C8 358E2000 */  ori        $t6, $t4, 0x2000
    /* 9A97C 8008B9CC 1000000C */  b          .L8008BA00_9A9B0
    /* 9A980 8008B9D0 AE0E0020 */   sw        $t6, 0x20($s0)
  .L8008B9D4_9A984:
    /* 9A984 8008B9D4 304F2000 */  andi       $t7, $v0, 0x2000
    /* 9A988 8008B9D8 11E00009 */  beqz       $t7, .L8008BA00_9A9B0
    /* 9A98C 8008B9DC 93A40073 */   lbu       $a0, 0x73($sp)
    /* 9A990 8008B9E0 3C0B8014 */  lui        $t3, %hi(D_8013C3F4)
    /* 9A994 8008B9E4 256BC3F4 */  addiu      $t3, $t3, %lo(D_8013C3F4)
    /* 9A998 8008B9E8 3C078014 */  lui        $a3, %hi(D_8013C394)
    /* 9A99C 8008B9EC 24E7C394 */  addiu      $a3, $a3, %lo(D_8013C394)
    /* 9A9A0 8008B9F0 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 9A9A4 8008B9F4 87A50064 */  lh         $a1, 0x64($sp)
    /* 9A9A8 8008B9F8 0C0208AF */  jal        func_800822BC_9126C
    /* 9A9AC 8008B9FC 24060006 */   addiu     $a2, $zero, 0x6
  .L8008BA00_9A9B0:
    /* 9A9B0 8008BA00 8602003A */  lh         $v0, 0x3A($s0)
  .L8008BA04_9A9B4:
    /* 9A9B4 8008BA04 10400004 */  beqz       $v0, .L8008BA18_9A9C8
    /* 9A9B8 8008BA08 2458FFFF */   addiu     $t8, $v0, -0x1
    /* 9A9BC 8008BA0C A618003A */  sh         $t8, 0x3A($s0)
    /* 9A9C0 8008BA10 10000061 */  b          .L8008BB98_9AB48
    /* 9A9C4 8008BA14 8603002C */   lh        $v1, 0x2C($s0)
  .L8008BA18_9A9C8:
    /* 9A9C8 8008BA18 8603002C */  lh         $v1, 0x2C($s0)
    /* 9A9CC 8008BA1C 2861003F */  slti       $at, $v1, 0x3F
    /* 9A9D0 8008BA20 1420005D */  bnez       $at, .L8008BB98_9AB48
    /* 9A9D4 8008BA24 28610097 */   slti      $at, $v1, 0x97
    /* 9A9D8 8008BA28 14200003 */  bnez       $at, .L8008BA38_9A9E8
    /* 9A9DC 8008BA2C 24040003 */   addiu     $a0, $zero, 0x3
    /* 9A9E0 8008BA30 10000005 */  b          .L8008BA48_9A9F8
    /* 9A9E4 8008BA34 2404000A */   addiu     $a0, $zero, 0xA
  .L8008BA38_9A9E8:
    /* 9A9E8 8008BA38 2861006F */  slti       $at, $v1, 0x6F
    /* 9A9EC 8008BA3C 14200002 */  bnez       $at, .L8008BA48_9A9F8
    /* 9A9F0 8008BA40 00000000 */   nop
    /* 9A9F4 8008BA44 24040005 */  addiu      $a0, $zero, 0x5
  .L8008BA48_9A9F8:
    /* 9A9F8 8008BA48 0C000E38 */  jal        func_800038E0_44E0
    /* 9A9FC 8008BA4C AFA40054 */   sw        $a0, 0x54($sp)
    /* 9AA00 8008BA50 8FA40054 */  lw         $a0, 0x54($sp)
    /* 9AA04 8008BA54 0044001A */  div        $zero, $v0, $a0
    /* 9AA08 8008BA58 0000C810 */  mfhi       $t9
    /* 9AA0C 8008BA5C A619003A */  sh         $t9, 0x3A($s0)
    /* 9AA10 8008BA60 14800002 */  bnez       $a0, .L8008BA6C_9AA1C
    /* 9AA14 8008BA64 00000000 */   nop
    /* 9AA18 8008BA68 0007000D */  break      7
  .L8008BA6C_9AA1C:
    /* 9AA1C 8008BA6C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 9AA20 8008BA70 14810004 */  bne        $a0, $at, .L8008BA84_9AA34
    /* 9AA24 8008BA74 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 9AA28 8008BA78 14410002 */  bne        $v0, $at, .L8008BA84_9AA34
    /* 9AA2C 8008BA7C 00000000 */   nop
    /* 9AA30 8008BA80 0006000D */  break      6
  .L8008BA84_9AA34:
    /* 9AA34 8008BA84 0C000E38 */  jal        func_800038E0_44E0
    /* 9AA38 8008BA88 00000000 */   nop
    /* 9AA3C 8008BA8C 24010003 */  addiu      $at, $zero, 0x3
    /* 9AA40 8008BA90 0041001A */  div        $zero, $v0, $at
    /* 9AA44 8008BA94 00004010 */  mfhi       $t0
    /* 9AA48 8008BA98 AFA80058 */  sw         $t0, 0x58($sp)
    /* 9AA4C 8008BA9C 0C000E38 */  jal        func_800038E0_44E0
    /* 9AA50 8008BAA0 00000000 */   nop
    /* 9AA54 8008BAA4 0C000E38 */  jal        func_800038E0_44E0
    /* 9AA58 8008BAA8 A7A20038 */   sh        $v0, 0x38($sp)
    /* 9AA5C 8008BAAC 0C000E38 */  jal        func_800038E0_44E0
    /* 9AA60 8008BAB0 A7A2003A */   sh        $v0, 0x3A($sp)
    /* 9AA64 8008BAB4 0C000E38 */  jal        func_800038E0_44E0
    /* 9AA68 8008BAB8 A7A2003C */   sh        $v0, 0x3C($sp)
    /* 9AA6C 8008BABC 97AA0038 */  lhu        $t2, 0x38($sp)
    /* 9AA70 8008BAC0 24030190 */  addiu      $v1, $zero, 0x190
    /* 9AA74 8008BAC4 97AF003A */  lhu        $t7, 0x3A($sp)
    /* 9AA78 8008BAC8 0143001A */  div        $zero, $t2, $v1
    /* 9AA7C 8008BACC 00006010 */  mfhi       $t4
    /* 9AA80 8008BAD0 86090000 */  lh         $t1, 0x0($s0)
    /* 9AA84 8008BAD4 14600002 */  bnez       $v1, .L8008BAE0_9AA90
    /* 9AA88 8008BAD8 00000000 */   nop
    /* 9AA8C 8008BADC 0007000D */  break      7
  .L8008BAE0_9AA90:
    /* 9AA90 8008BAE0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 9AA94 8008BAE4 14610004 */  bne        $v1, $at, .L8008BAF8_9AAA8
    /* 9AA98 8008BAE8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 9AA9C 8008BAEC 15410002 */  bne        $t2, $at, .L8008BAF8_9AAA8
    /* 9AAA0 8008BAF0 00000000 */   nop
    /* 9AAA4 8008BAF4 0006000D */  break      6
  .L8008BAF8_9AAA8:
    /* 9AAA8 8008BAF8 240100FA */  addiu      $at, $zero, 0xFA
    /* 9AAAC 8008BAFC 01E1001A */  div        $zero, $t7, $at
    /* 9AAB0 8008BB00 012C2023 */  subu       $a0, $t1, $t4
    /* 9AAB4 8008BB04 97A9003C */  lhu        $t1, 0x3C($sp)
    /* 9AAB8 8008BB08 00005810 */  mfhi       $t3
    /* 9AABC 8008BB0C 86180002 */  lh         $t8, 0x2($s0)
    /* 9AAC0 8008BB10 860A0004 */  lh         $t2, 0x4($s0)
    /* 9AAC4 8008BB14 0123001A */  div        $zero, $t1, $v1
    /* 9AAC8 8008BB18 00006010 */  mfhi       $t4
    /* 9AACC 8008BB1C 248400C8 */  addiu      $a0, $a0, 0xC8
    /* 9AAD0 8008BB20 01782821 */  addu       $a1, $t3, $t8
    /* 9AAD4 8008BB24 00046C00 */  sll        $t5, $a0, 16
    /* 9AAD8 8008BB28 014C3023 */  subu       $a2, $t2, $t4
    /* 9AADC 8008BB2C 8FAB0058 */  lw         $t3, 0x58($sp)
    /* 9AAE0 8008BB30 24C600C8 */  addiu      $a2, $a2, 0xC8
    /* 9AAE4 8008BB34 000D7403 */  sra        $t6, $t5, 16
    /* 9AAE8 8008BB38 0005CC00 */  sll        $t9, $a1, 16
    /* 9AAEC 8008BB3C 00194403 */  sra        $t0, $t9, 16
    /* 9AAF0 8008BB40 00066C00 */  sll        $t5, $a2, 16
    /* 9AAF4 8008BB44 000D3403 */  sra        $a2, $t5, 16
    /* 9AAF8 8008BB48 01002825 */  or         $a1, $t0, $zero
    /* 9AAFC 8008BB4C 01C02025 */  or         $a0, $t6, $zero
    /* 9AB00 8008BB50 14600002 */  bnez       $v1, .L8008BB5C_9AB0C
    /* 9AB04 8008BB54 00000000 */   nop
    /* 9AB08 8008BB58 0007000D */  break      7
  .L8008BB5C_9AB0C:
    /* 9AB0C 8008BB5C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 9AB10 8008BB60 14610004 */  bne        $v1, $at, .L8008BB74_9AB24
    /* 9AB14 8008BB64 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 9AB18 8008BB68 15210002 */  bne        $t1, $at, .L8008BB74_9AB24
    /* 9AB1C 8008BB6C 00000000 */   nop
    /* 9AB20 8008BB70 0006000D */  break      6
  .L8008BB74_9AB24:
    /* 9AB24 8008BB74 24010046 */  addiu      $at, $zero, 0x46
    /* 9AB28 8008BB78 0041001A */  div        $zero, $v0, $at
    /* 9AB2C 8008BB7C 00003810 */  mfhi       $a3
    /* 9AB30 8008BB80 24E70032 */  addiu      $a3, $a3, 0x32
    /* 9AB34 8008BB84 30EFFFFF */  andi       $t7, $a3, 0xFFFF
    /* 9AB38 8008BB88 01E03825 */  or         $a3, $t7, $zero
    /* 9AB3C 8008BB8C 0C037E8D */  jal        func_800DFA34_EE9E4
    /* 9AB40 8008BB90 AFAB0010 */   sw        $t3, 0x10($sp)
    /* 9AB44 8008BB94 8603002C */  lh         $v1, 0x2C($s0)
  .L8008BB98_9AB48:
    /* 9AB48 8008BB98 24010034 */  addiu      $at, $zero, 0x34
    /* 9AB4C 8008BB9C 10610003 */  beq        $v1, $at, .L8008BBAC_9AB5C
    /* 9AB50 8008BBA0 24010033 */   addiu     $at, $zero, 0x33
    /* 9AB54 8008BBA4 54610005 */  bnel       $v1, $at, .L8008BBBC_9AB6C
    /* 9AB58 8008BBA8 24010034 */   addiu     $at, $zero, 0x34
  .L8008BBAC_9AB5C:
    /* 9AB5C 8008BBAC 0C038D78 */  jal        func_800E35E0_F2590
    /* 9AB60 8008BBB0 24040080 */   addiu     $a0, $zero, 0x80
    /* 9AB64 8008BBB4 8603002C */  lh         $v1, 0x2C($s0)
    /* 9AB68 8008BBB8 24010034 */  addiu      $at, $zero, 0x34
  .L8008BBBC_9AB6C:
    /* 9AB6C 8008BBBC 10610004 */  beq        $v1, $at, .L8008BBD0_9AB80
    /* 9AB70 8008BBC0 240701F4 */   addiu     $a3, $zero, 0x1F4
    /* 9AB74 8008BBC4 2401000F */  addiu      $at, $zero, 0xF
    /* 9AB78 8008BBC8 5461000C */  bnel       $v1, $at, .L8008BBFC_9ABAC
    /* 9AB7C 8008BBCC 2401002A */   addiu     $at, $zero, 0x2A
  .L8008BBD0_9AB80:
    /* 9AB80 8008BBD0 86050002 */  lh         $a1, 0x2($s0)
    /* 9AB84 8008BBD4 2408000A */  addiu      $t0, $zero, 0xA
    /* 9AB88 8008BBD8 AFA80010 */  sw         $t0, 0x10($sp)
    /* 9AB8C 8008BBDC 24A5001E */  addiu      $a1, $a1, 0x1E
    /* 9AB90 8008BBE0 0005C400 */  sll        $t8, $a1, 16
    /* 9AB94 8008BBE4 00182C03 */  sra        $a1, $t8, 16
    /* 9AB98 8008BBE8 86040000 */  lh         $a0, 0x0($s0)
    /* 9AB9C 8008BBEC 0C037E12 */  jal        func_800DF848_EE7F8
    /* 9ABA0 8008BBF0 86060004 */   lh        $a2, 0x4($s0)
    /* 9ABA4 8008BBF4 8603002C */  lh         $v1, 0x2C($s0)
    /* 9ABA8 8008BBF8 2401002A */  addiu      $at, $zero, 0x2A
  .L8008BBFC_9ABAC:
    /* 9ABAC 8008BBFC 14610011 */  bne        $v1, $at, .L8008BC44_9ABF4
    /* 9ABB0 8008BC00 3C048014 */   lui       $a0, %hi(D_80141DF8)
    /* 9ABB4 8008BC04 0C00731B */  jal        osSyncPrintf
    /* 9ABB8 8008BC08 24841DF8 */   addiu     $a0, $a0, %lo(D_80141DF8)
    /* 9ABBC 8008BC0C 8602000C */  lh         $v0, 0xC($s0)
    /* 9ABC0 8008BC10 3C0A8015 */  lui        $t2, %hi(D_8014DD50)
    /* 9ABC4 8008BC14 254ADD50 */  addiu      $t2, $t2, %lo(D_8014DD50)
    /* 9ABC8 8008BC18 00024900 */  sll        $t1, $v0, 4
    /* 9ABCC 8008BC1C 012A1821 */  addu       $v1, $t1, $t2
    /* 9ABD0 8008BC20 8064000C */  lb         $a0, 0xC($v1)
    /* 9ABD4 8008BC24 0C01E770 */  jal        func_80079DC0_88D70
    /* 9ABD8 8008BC28 AFA30030 */   sw        $v1, 0x30($sp)
    /* 9ABDC 8008BC2C 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 9ABE0 8008BC30 8FA30030 */  lw         $v1, 0x30($sp)
    /* 9ABE4 8008BC34 240CFFFF */  addiu      $t4, $zero, -0x1
    /* 9ABE8 8008BC38 35AE8000 */  ori        $t6, $t5, 0x8000
    /* 9ABEC 8008BC3C AE0E0020 */  sw         $t6, 0x20($s0)
    /* 9ABF0 8008BC40 A06C000C */  sb         $t4, 0xC($v1)
  .L8008BC44_9ABF4:
    /* 9ABF4 8008BC44 8FBF0024 */  lw         $ra, 0x24($sp)
  .L8008BC48_9ABF8:
    /* 9ABF8 8008BC48 8FB00020 */  lw         $s0, 0x20($sp)
    /* 9ABFC 8008BC4C 27BD0070 */  addiu      $sp, $sp, 0x70
    /* 9AC00 8008BC50 03E00008 */  jr         $ra
    /* 9AC04 8008BC54 00000000 */   nop
endlabel func_8008B8E4_9A894
