nonmatching func_802DC244_25B984, 0x5B8

glabel func_802DC244_25B984
    /* 25B984 802DC244 308600FF */  andi       $a2, $a0, 0xFF
    /* 25B988 802DC248 24030050 */  addiu      $v1, $zero, 0x50
    /* 25B98C 802DC24C 00C30019 */  multu      $a2, $v1
    /* 25B990 802DC250 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* 25B994 802DC254 3C028005 */  lui        $v0, %hi(alienInstances)
    /* 25B998 802DC258 24428198 */  addiu      $v0, $v0, %lo(alienInstances)
    /* 25B99C 802DC25C AFB00040 */  sw         $s0, 0x40($sp)
    /* 25B9A0 802DC260 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 25B9A4 802DC264 AFA40088 */  sw         $a0, 0x88($sp)
    /* 25B9A8 802DC268 A3A6008B */  sb         $a2, 0x8B($sp)
    /* 25B9AC 802DC26C 00007012 */  mflo       $t6
    /* 25B9B0 802DC270 004E8021 */  addu       $s0, $v0, $t6
    /* 25B9B4 802DC274 920F0025 */  lbu        $t7, 0x25($s0)
    /* 25B9B8 802DC278 86040000 */  lh         $a0, 0x0($s0)
    /* 25B9BC 802DC27C 86050004 */  lh         $a1, 0x4($s0)
    /* 25B9C0 802DC280 01E30019 */  multu      $t7, $v1
    /* 25B9C4 802DC284 0000C012 */  mflo       $t8
    /* 25B9C8 802DC288 0058C821 */  addu       $t9, $v0, $t8
    /* 25B9CC 802DC28C 0C02E134 */  jal        func_800B84D0_C7480
    /* 25B9D0 802DC290 AFB90084 */   sw        $t9, 0x84($sp)
    /* 25B9D4 802DC294 8E090020 */  lw         $t1, 0x20($s0)
    /* 25B9D8 802DC298 00024203 */  sra        $t0, $v0, 8
    /* 25B9DC 802DC29C 24017000 */  addiu      $at, $zero, 0x7000
    /* 25B9E0 802DC2A0 312A7000 */  andi       $t2, $t1, 0x7000
    /* 25B9E4 802DC2A4 AFA80080 */  sw         $t0, 0x80($sp)
    /* 25B9E8 802DC2A8 1541014F */  bne        $t2, $at, .L802DC7E8_25BF28
    /* 25B9EC 802DC2AC 93A6008B */   lbu       $a2, 0x8B($sp)
    /* 25B9F0 802DC2B0 8FA70084 */  lw         $a3, 0x84($sp)
    /* 25B9F4 802DC2B4 240C0600 */  addiu      $t4, $zero, 0x600
    /* 25B9F8 802DC2B8 240D0400 */  addiu      $t5, $zero, 0x400
    /* 25B9FC 802DC2BC 8CE20020 */  lw         $v0, 0x20($a3)
    /* 25BA00 802DC2C0 30C400FF */  andi       $a0, $a2, 0xFF
    /* 25BA04 802DC2C4 304B4000 */  andi       $t3, $v0, 0x4000
    /* 25BA08 802DC2C8 11600023 */  beqz       $t3, .L802DC358_25BA98
    /* 25BA0C 802DC2CC 304F8000 */   andi      $t7, $v0, 0x8000
    /* 25BA10 802DC2D0 3C028025 */  lui        $v0, %hi(alienSpecs)
    /* 25BA14 802DC2D4 24426680 */  addiu      $v0, $v0, %lo(alienSpecs)
    /* 25BA18 802DC2D8 A44C0B38 */  sh         $t4, 0xB38($v0)
    /* 25BA1C 802DC2DC 0C020193 */  jal        func_8008064C_8F5FC
    /* 25BA20 802DC2E0 A44D0B3A */   sh        $t5, 0xB3A($v0)
    /* 25BA24 802DC2E4 8FAF0080 */  lw         $t7, 0x80($sp)
    /* 25BA28 802DC2E8 860E0002 */  lh         $t6, 0x2($s0)
    /* 25BA2C 802DC2EC 25F80546 */  addiu      $t8, $t7, 0x546
    /* 25BA30 802DC2F0 030E082A */  slt        $at, $t8, $t6
    /* 25BA34 802DC2F4 54200005 */  bnel       $at, $zero, .L802DC30C_25BA4C
    /* 25BA38 802DC2F8 8602000A */   lh        $v0, 0xA($s0)
    /* 25BA3C 802DC2FC 8602000A */  lh         $v0, 0xA($s0)
    /* 25BA40 802DC300 58400008 */  blezl      $v0, .L802DC324_25BA64
    /* 25BA44 802DC304 28417830 */   slti      $at, $v0, 0x7830
    /* 25BA48 802DC308 8602000A */  lh         $v0, 0xA($s0)
  .L802DC30C_25BA4C:
    /* 25BA4C 802DC30C 28417830 */  slti       $at, $v0, 0x7830
    /* 25BA50 802DC310 10200003 */  beqz       $at, .L802DC320_25BA60
    /* 25BA54 802DC314 245907D0 */   addiu     $t9, $v0, 0x7D0
    /* 25BA58 802DC318 A619000A */  sh         $t9, 0xA($s0)
    /* 25BA5C 802DC31C 8602000A */  lh         $v0, 0xA($s0)
  .L802DC320_25BA60:
    /* 25BA60 802DC320 28417830 */  slti       $at, $v0, 0x7830
  .L802DC324_25BA64:
    /* 25BA64 802DC324 14200130 */  bnez       $at, .L802DC7E8_25BF28
    /* 25BA68 802DC328 8FA20084 */   lw        $v0, 0x84($sp)
    /* 25BA6C 802DC32C 8C480020 */  lw         $t0, 0x20($v0)
    /* 25BA70 802DC330 2401BFFF */  addiu      $at, $zero, -0x4001
    /* 25BA74 802DC334 01014824 */  and        $t1, $t0, $at
    /* 25BA78 802DC338 AC490020 */  sw         $t1, 0x20($v0)
    /* 25BA7C 802DC33C 352B8000 */  ori        $t3, $t1, 0x8000
    /* 25BA80 802DC340 AC4B0020 */  sw         $t3, 0x20($v0)
    /* 25BA84 802DC344 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 25BA88 802DC348 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 25BA8C 802DC34C 01816825 */  or         $t5, $t4, $at
    /* 25BA90 802DC350 10000125 */  b          .L802DC7E8_25BF28
    /* 25BA94 802DC354 AE0D0020 */   sw        $t5, 0x20($s0)
  .L802DC358_25BA98:
    /* 25BA98 802DC358 11E000BA */  beqz       $t7, .L802DC644_25BD84
    /* 25BA9C 802DC35C 00C02025 */   or        $a0, $a2, $zero
    /* 25BAA0 802DC360 2405013C */  addiu      $a1, $zero, 0x13C
    /* 25BAA4 802DC364 0C04DD1A */  jal        func_80137468_146418
    /* 25BAA8 802DC368 AFA60054 */   sw        $a2, 0x54($sp)
    /* 25BAAC 802DC36C 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 25BAB0 802DC370 8FA50080 */  lw         $a1, 0x80($sp)
    /* 25BAB4 802DC374 3C0740A0 */  lui        $a3, (0x40A00000 >> 16)
    /* 25BAB8 802DC378 000EC040 */  sll        $t8, $t6, 1
    /* 25BABC 802DC37C 07030006 */  bgezl      $t8, .L802DC398_25BAD8
    /* 25BAC0 802DC380 86040000 */   lh        $a0, 0x0($s0)
    /* 25BAC4 802DC384 92190047 */  lbu        $t9, 0x47($s0)
    /* 25BAC8 802DC388 33280001 */  andi       $t0, $t9, 0x1
    /* 25BACC 802DC38C 51000117 */  beql       $t0, $zero, .L802DC7EC_25BF2C
    /* 25BAD0 802DC390 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 25BAD4 802DC394 86040000 */  lh         $a0, 0x0($s0)
  .L802DC398_25BAD8:
    /* 25BAD8 802DC398 0C04D751 */  jal        func_80135D44_144CF4
    /* 25BADC 802DC39C 86060004 */   lh        $a2, 0x4($s0)
    /* 25BAE0 802DC3A0 8FA40054 */  lw         $a0, 0x54($sp)
    /* 25BAE4 802DC3A4 0C04DD1A */  jal        func_80137468_146418
    /* 25BAE8 802DC3A8 24050259 */   addiu     $a1, $zero, 0x259
    /* 25BAEC 802DC3AC 2409000C */  addiu      $t1, $zero, 0xC
    /* 25BAF0 802DC3B0 240A0010 */  addiu      $t2, $zero, 0x10
    /* 25BAF4 802DC3B4 240B0028 */  addiu      $t3, $zero, 0x28
    /* 25BAF8 802DC3B8 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 25BAFC 802DC3BC 240D00A6 */  addiu      $t5, $zero, 0xA6
    /* 25BB00 802DC3C0 240F0085 */  addiu      $t7, $zero, 0x85
    /* 25BB04 802DC3C4 240E002F */  addiu      $t6, $zero, 0x2F
    /* 25BB08 802DC3C8 AFAE0028 */  sw         $t6, 0x28($sp)
    /* 25BB0C 802DC3CC AFAF0024 */  sw         $t7, 0x24($sp)
    /* 25BB10 802DC3D0 AFAD0020 */  sw         $t5, 0x20($sp)
    /* 25BB14 802DC3D4 AFAC001C */  sw         $t4, 0x1C($sp)
    /* 25BB18 802DC3D8 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 25BB1C 802DC3DC AFAA0014 */  sw         $t2, 0x14($sp)
    /* 25BB20 802DC3E0 AFA90010 */  sw         $t1, 0x10($sp)
    /* 25BB24 802DC3E4 86040000 */  lh         $a0, 0x0($s0)
    /* 25BB28 802DC3E8 87A50082 */  lh         $a1, 0x82($sp)
    /* 25BB2C 802DC3EC 86060004 */  lh         $a2, 0x4($s0)
    /* 25BB30 802DC3F0 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 25BB34 802DC3F4 240705DC */   addiu     $a3, $zero, 0x5DC
    /* 25BB38 802DC3F8 8FA50080 */  lw         $a1, 0x80($sp)
    /* 25BB3C 802DC3FC 2408007F */  addiu      $t0, $zero, 0x7F
    /* 25BB40 802DC400 240900C8 */  addiu      $t1, $zero, 0xC8
    /* 25BB44 802DC404 24A50005 */  addiu      $a1, $a1, 0x5
    /* 25BB48 802DC408 0005C400 */  sll        $t8, $a1, 16
    /* 25BB4C 802DC40C 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 25BB50 802DC410 240B003C */  addiu      $t3, $zero, 0x3C
    /* 25BB54 802DC414 240C0014 */  addiu      $t4, $zero, 0x14
    /* 25BB58 802DC418 240D006A */  addiu      $t5, $zero, 0x6A
    /* 25BB5C 802DC41C 240F0053 */  addiu      $t7, $zero, 0x53
    /* 25BB60 802DC420 AFAF002C */  sw         $t7, 0x2C($sp)
    /* 25BB64 802DC424 AFAD0028 */  sw         $t5, 0x28($sp)
    /* 25BB68 802DC428 AFAC0024 */  sw         $t4, 0x24($sp)
    /* 25BB6C 802DC42C AFAB0020 */  sw         $t3, 0x20($sp)
    /* 25BB70 802DC430 AFAA001C */  sw         $t2, 0x1C($sp)
    /* 25BB74 802DC434 00182C03 */  sra        $a1, $t8, 16
    /* 25BB78 802DC438 AFA90018 */  sw         $t1, 0x18($sp)
    /* 25BB7C 802DC43C AFA80010 */  sw         $t0, 0x10($sp)
    /* 25BB80 802DC440 86040000 */  lh         $a0, 0x0($s0)
    /* 25BB84 802DC444 86060004 */  lh         $a2, 0x4($s0)
    /* 25BB88 802DC448 00003825 */  or         $a3, $zero, $zero
    /* 25BB8C 802DC44C AFA00014 */  sw         $zero, 0x14($sp)
    /* 25BB90 802DC450 0C031507 */  jal        func_800C541C_D43CC
    /* 25BB94 802DC454 AFA00030 */   sw        $zero, 0x30($sp)
    /* 25BB98 802DC458 0C038D78 */  jal        func_800E35E0_F2590
    /* 25BB9C 802DC45C 240400FF */   addiu     $a0, $zero, 0xFF
    /* 25BBA0 802DC460 860E0000 */  lh         $t6, 0x0($s0)
    /* 25BBA4 802DC464 3C01802E */  lui        $at, %hi(D_802E099C)
    /* 25BBA8 802DC468 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 25BBAC 802DC46C AC2E099C */  sw         $t6, %lo(D_802E099C)($at)
    /* 25BBB0 802DC470 86180004 */  lh         $t8, 0x4($s0)
    /* 25BBB4 802DC474 3C01802E */  lui        $at, %hi(D_802E09A0)
    /* 25BBB8 802DC478 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 25BBBC 802DC47C 02002825 */  or         $a1, $s0, $zero
    /* 25BBC0 802DC480 0C021395 */  jal        func_80084E54_93E04
    /* 25BBC4 802DC484 AC3809A0 */   sw        $t8, %lo(D_802E09A0)($at)
    /* 25BBC8 802DC488 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 25BBCC 802DC48C 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 25BBD0 802DC490 3C098025 */  lui        $t1, %hi(D_80257A0C)
    /* 25BBD4 802DC494 3C06003D */  lui        $a2, (0x3D0900 >> 16)
    /* 25BBD8 802DC498 9099001A */  lbu        $t9, 0x1A($a0)
    /* 25BBDC 802DC49C 00401825 */  or         $v1, $v0, $zero
    /* 25BBE0 802DC4A0 34C60900 */  ori        $a2, $a2, (0x3D0900 & 0xFFFF)
    /* 25BBE4 802DC4A4 001940C0 */  sll        $t0, $t9, 3
    /* 25BBE8 802DC4A8 01194023 */  subu       $t0, $t0, $t9
    /* 25BBEC 802DC4AC 00084100 */  sll        $t0, $t0, 4
    /* 25BBF0 802DC4B0 01284821 */  addu       $t1, $t1, $t0
    /* 25BBF4 802DC4B4 85297A0C */  lh         $t1, %lo(D_80257A0C)($t1)
    /* 25BBF8 802DC4B8 252A0064 */  addiu      $t2, $t1, 0x64
    /* 25BBFC 802DC4BC 004A082A */  slt        $at, $v0, $t2
    /* 25BC00 802DC4C0 50200006 */  beql       $at, $zero, .L802DC4DC_25BC1C
    /* 25BC04 802DC4C4 0046082A */   slt       $at, $v0, $a2
    /* 25BC08 802DC4C8 0C048EB1 */  jal        func_80123AC4_132A74
    /* 25BC0C 802DC4CC 00000000 */   nop
    /* 25BC10 802DC4D0 10000054 */  b          .L802DC624_25BD64
    /* 25BC14 802DC4D4 8FB80084 */   lw        $t8, 0x84($sp)
    /* 25BC18 802DC4D8 0046082A */  slt        $at, $v0, $a2
  .L802DC4DC_25BC1C:
    /* 25BC1C 802DC4DC 50200051 */  beql       $at, $zero, .L802DC624_25BD64
    /* 25BC20 802DC4E0 8FB80084 */   lw        $t8, 0x84($sp)
    /* 25BC24 802DC4E4 948B0020 */  lhu        $t3, 0x20($a0)
    /* 25BC28 802DC4E8 316C0002 */  andi       $t4, $t3, 0x2
    /* 25BC2C 802DC4EC 5580004D */  bnel       $t4, $zero, .L802DC624_25BD64
    /* 25BC30 802DC4F0 8FB80084 */   lw        $t8, 0x84($sp)
    /* 25BC34 802DC4F4 860D0000 */  lh         $t5, 0x0($s0)
    /* 25BC38 802DC4F8 848F0000 */  lh         $t7, 0x0($a0)
    /* 25BC3C 802DC4FC 860E0004 */  lh         $t6, 0x4($s0)
    /* 25BC40 802DC500 84980004 */  lh         $t8, 0x4($a0)
    /* 25BC44 802DC504 01AF1023 */  subu       $v0, $t5, $t7
    /* 25BC48 802DC508 0002C823 */  negu       $t9, $v0
    /* 25BC4C 802DC50C 44999000 */  mtc1       $t9, $f18
    /* 25BC50 802DC510 01D82823 */  subu       $a1, $t6, $t8
    /* 25BC54 802DC514 00054023 */  negu       $t0, $a1
    /* 25BC58 802DC518 46809320 */  cvt.s.w    $f12, $f18
    /* 25BC5C 802DC51C 44889000 */  mtc1       $t0, $f18
    /* 25BC60 802DC520 00C31823 */  subu       $v1, $a2, $v1
    /* 25BC64 802DC524 AFA3007C */  sw         $v1, 0x7C($sp)
    /* 25BC68 802DC528 0C000E09 */  jal        func_80003824_4424
    /* 25BC6C 802DC52C 468093A0 */   cvt.s.w   $f14, $f18
    /* 25BC70 802DC530 8FA3007C */  lw         $v1, 0x7C($sp)
    /* 25BC74 802DC534 3C01802E */  lui        $at, %hi(D_802E0E00)
    /* 25BC78 802DC538 C4300E00 */  lwc1       $f16, %lo(D_802E0E00)($at)
    /* 25BC7C 802DC53C 44834000 */  mtc1       $v1, $f8
    /* 25BC80 802DC540 00036880 */  sll        $t5, $v1, 2
    /* 25BC84 802DC544 01A36823 */  subu       $t5, $t5, $v1
    /* 25BC88 802DC548 468042A0 */  cvt.s.w    $f10, $f8
    /* 25BC8C 802DC54C 000D68C0 */  sll        $t5, $t5, 3
    /* 25BC90 802DC550 01A36821 */  addu       $t5, $t5, $v1
    /* 25BC94 802DC554 000D6840 */  sll        $t5, $t5, 1
    /* 25BC98 802DC558 3C014600 */  lui        $at, (0x46000000 >> 16)
    /* 25BC9C 802DC55C 44812000 */  mtc1       $at, $f4
    /* 25BCA0 802DC560 46105483 */  div.s      $f18, $f10, $f16
    /* 25BCA4 802DC564 448D5000 */  mtc1       $t5, $f10
    /* 25BCA8 802DC568 3C01802E */  lui        $at, %hi(D_802E0E04)
    /* 25BCAC 802DC56C 00022C00 */  sll        $a1, $v0, 16
    /* 25BCB0 802DC570 46805420 */  cvt.s.w    $f16, $f10
    /* 25BCB4 802DC574 00054C03 */  sra        $t1, $a1, 16
    /* 25BCB8 802DC578 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 25BCBC 802DC57C 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 25BCC0 802DC580 01202825 */  or         $a1, $t1, $zero
    /* 25BCC4 802DC584 46049180 */  add.s      $f6, $f18, $f4
    /* 25BCC8 802DC588 C4320E04 */  lwc1       $f18, %lo(D_802E0E04)($at)
    /* 25BCCC 802DC58C 46128103 */  div.s      $f4, $f16, $f18
    /* 25BCD0 802DC590 4600320D */  trunc.w.s  $f8, $f6
    /* 25BCD4 802DC594 44064000 */  mfc1       $a2, $f8
    /* 25BCD8 802DC598 00000000 */  nop
    /* 25BCDC 802DC59C 00065C00 */  sll        $t3, $a2, 16
    /* 25BCE0 802DC5A0 000B3403 */  sra        $a2, $t3, 16
    /* 25BCE4 802DC5A4 44072000 */  mfc1       $a3, $f4
    /* 25BCE8 802DC5A8 0C040B77 */  jal        func_80102DDC_111D8C
    /* 25BCEC 802DC5AC 00000000 */   nop
    /* 25BCF0 802DC5B0 0C000E38 */  jal        func_800038E0_44E0
    /* 25BCF4 802DC5B4 00000000 */   nop
    /* 25BCF8 802DC5B8 240107D0 */  addiu      $at, $zero, 0x7D0
    /* 25BCFC 802DC5BC 0041001A */  div        $zero, $v0, $at
    /* 25BD00 802DC5C0 3C198005 */  lui        $t9, %hi(D_80052B34)
    /* 25BD04 802DC5C4 8F392B34 */  lw         $t9, %lo(D_80052B34)($t9)
    /* 25BD08 802DC5C8 00007810 */  mfhi       $t7
    /* 25BD0C 802DC5CC 240E03E8 */  addiu      $t6, $zero, 0x3E8
    /* 25BD10 802DC5D0 01CFC023 */  subu       $t8, $t6, $t7
    /* 25BD14 802DC5D4 0C000E38 */  jal        func_800038E0_44E0
    /* 25BD18 802DC5D8 A7380022 */   sh        $t8, 0x22($t9)
    /* 25BD1C 802DC5DC 240107D0 */  addiu      $at, $zero, 0x7D0
    /* 25BD20 802DC5E0 0041001A */  div        $zero, $v0, $at
    /* 25BD24 802DC5E4 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 25BD28 802DC5E8 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 25BD2C 802DC5EC 00004010 */  mfhi       $t0
    /* 25BD30 802DC5F0 240903E8 */  addiu      $t1, $zero, 0x3E8
    /* 25BD34 802DC5F4 01285023 */  subu       $t2, $t1, $t0
    /* 25BD38 802DC5F8 0C000E38 */  jal        func_800038E0_44E0
    /* 25BD3C 802DC5FC A56A0024 */   sh        $t2, 0x24($t3)
    /* 25BD40 802DC600 240107D0 */  addiu      $at, $zero, 0x7D0
    /* 25BD44 802DC604 0041001A */  div        $zero, $v0, $at
    /* 25BD48 802DC608 3C0F8005 */  lui        $t7, %hi(D_80052B34)
    /* 25BD4C 802DC60C 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* 25BD50 802DC610 00006010 */  mfhi       $t4
    /* 25BD54 802DC614 240D03E8 */  addiu      $t5, $zero, 0x3E8
    /* 25BD58 802DC618 01AC7023 */  subu       $t6, $t5, $t4
    /* 25BD5C 802DC61C A5EE0026 */  sh         $t6, 0x26($t7)
    /* 25BD60 802DC620 8FB80084 */  lw         $t8, 0x84($sp)
  .L802DC624_25BD64:
    /* 25BD64 802DC624 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
    /* 25BD68 802DC628 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
    /* 25BD6C 802DC62C 8F190020 */  lw         $t9, 0x20($t8)
    /* 25BD70 802DC630 24080032 */  addiu      $t0, $zero, 0x32
    /* 25BD74 802DC634 03214824 */  and        $t1, $t9, $at
    /* 25BD78 802DC638 AF090020 */  sw         $t1, 0x20($t8)
    /* 25BD7C 802DC63C 1000006A */  b          .L802DC7E8_25BF28
    /* 25BD80 802DC640 A608001E */   sh        $t0, 0x1E($s0)
  .L802DC644_25BD84:
    /* 25BD84 802DC644 8602000A */  lh         $v0, 0xA($s0)
    /* 25BD88 802DC648 3C0B802E */  lui        $t3, %hi(D_802E099C)
    /* 25BD8C 802DC64C 18400002 */  blez       $v0, .L802DC658_25BD98
    /* 25BD90 802DC650 244AF830 */   addiu     $t2, $v0, -0x7D0
    /* 25BD94 802DC654 A60A000A */  sh         $t2, 0xA($s0)
  .L802DC658_25BD98:
    /* 25BD98 802DC658 8602001E */  lh         $v0, 0x1E($s0)
    /* 25BD9C 802DC65C 28410028 */  slti       $at, $v0, 0x28
    /* 25BDA0 802DC660 1020005C */  beqz       $at, .L802DC7D4_25BF14
    /* 25BDA4 802DC664 00000000 */   nop
    /* 25BDA8 802DC668 8D6B099C */  lw         $t3, %lo(D_802E099C)($t3)
    /* 25BDAC 802DC66C 2403FFFF */  addiu      $v1, $zero, -0x1
    /* 25BDB0 802DC670 3C0D802E */  lui        $t5, %hi(D_802E09A0)
    /* 25BDB4 802DC674 15630004 */  bne        $t3, $v1, .L802DC688_25BDC8
    /* 25BDB8 802DC678 24010005 */   addiu     $at, $zero, 0x5
    /* 25BDBC 802DC67C 8DAD09A0 */  lw         $t5, %lo(D_802E09A0)($t5)
    /* 25BDC0 802DC680 11A30054 */  beq        $t5, $v1, .L802DC7D4_25BF14
    /* 25BDC4 802DC684 00000000 */   nop
  .L802DC688_25BDC8:
    /* 25BDC8 802DC688 0041001A */  div        $zero, $v0, $at
    /* 25BDCC 802DC68C 00001810 */  mfhi       $v1
    /* 25BDD0 802DC690 24013333 */  addiu      $at, $zero, 0x3333
    /* 25BDD4 802DC694 00027023 */  negu       $t6, $v0
    /* 25BDD8 802DC698 00610019 */  multu      $v1, $at
    /* 25BDDC 802DC69C 000E7880 */  sll        $t7, $t6, 2
    /* 25BDE0 802DC6A0 01EE7823 */  subu       $t7, $t7, $t6
    /* 25BDE4 802DC6A4 000F78C0 */  sll        $t7, $t7, 3
    /* 25BDE8 802DC6A8 01EE7821 */  addu       $t7, $t7, $t6
    /* 25BDEC 802DC6AC 000F7840 */  sll        $t7, $t7, 1
    /* 25BDF0 802DC6B0 25F907D0 */  addiu      $t9, $t7, 0x7D0
    /* 25BDF4 802DC6B4 AFB90064 */  sw         $t9, 0x64($sp)
    /* 25BDF8 802DC6B8 00006012 */  mflo       $t4
    /* 25BDFC 802DC6BC 3184FFFF */  andi       $a0, $t4, 0xFFFF
    /* 25BE00 802DC6C0 0C007660 */  jal        sins
    /* 25BE04 802DC6C4 AFA40050 */   sw        $a0, 0x50($sp)
    /* 25BE08 802DC6C8 44824000 */  mtc1       $v0, $f8
    /* 25BE0C 802DC6CC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25BE10 802DC6D0 44819800 */  mtc1       $at, $f19
    /* 25BE14 802DC6D4 468042A0 */  cvt.s.w    $f10, $f8
    /* 25BE18 802DC6D8 44809000 */  mtc1       $zero, $f18
    /* 25BE1C 802DC6DC 8FA90064 */  lw         $t1, 0x64($sp)
    /* 25BE20 802DC6E0 3C18802E */  lui        $t8, %hi(D_802E099C)
    /* 25BE24 802DC6E4 8F18099C */  lw         $t8, %lo(D_802E099C)($t8)
    /* 25BE28 802DC6E8 44893000 */  mtc1       $t1, $f6
    /* 25BE2C 802DC6EC 46005421 */  cvt.d.s    $f16, $f10
    /* 25BE30 802DC6F0 44984000 */  mtc1       $t8, $f8
    /* 25BE34 802DC6F4 46328103 */  div.d      $f4, $f16, $f18
    /* 25BE38 802DC6F8 8FA40050 */  lw         $a0, 0x50($sp)
    /* 25BE3C 802DC6FC 46803021 */  cvt.d.w    $f0, $f6
    /* 25BE40 802DC700 468042A1 */  cvt.d.w    $f10, $f8
    /* 25BE44 802DC704 F7A00048 */  sdc1       $f0, 0x48($sp)
    /* 25BE48 802DC708 46202182 */  mul.d      $f6, $f4, $f0
    /* 25BE4C 802DC70C 462A3400 */  add.d      $f16, $f6, $f10
    /* 25BE50 802DC710 4620848D */  trunc.w.d  $f18, $f16
    /* 25BE54 802DC714 0C007654 */  jal        coss
    /* 25BE58 802DC718 E7B20070 */   swc1      $f18, 0x70($sp)
    /* 25BE5C 802DC71C 44822000 */  mtc1       $v0, $f4
    /* 25BE60 802DC720 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25BE64 802DC724 44815800 */  mtc1       $at, $f11
    /* 25BE68 802DC728 46802220 */  cvt.s.w    $f8, $f4
    /* 25BE6C 802DC72C 44805000 */  mtc1       $zero, $f10
    /* 25BE70 802DC730 3C0A802E */  lui        $t2, %hi(D_802E09A0)
    /* 25BE74 802DC734 8D4A09A0 */  lw         $t2, %lo(D_802E09A0)($t2)
    /* 25BE78 802DC738 D7A00048 */  ldc1       $f0, 0x48($sp)
    /* 25BE7C 802DC73C 87A40072 */  lh         $a0, 0x72($sp)
    /* 25BE80 802DC740 460041A1 */  cvt.d.s    $f6, $f8
    /* 25BE84 802DC744 448A2000 */  mtc1       $t2, $f4
    /* 25BE88 802DC748 462A3403 */  div.d      $f16, $f6, $f10
    /* 25BE8C 802DC74C 87A50082 */  lh         $a1, 0x82($sp)
    /* 25BE90 802DC750 24070096 */  addiu      $a3, $zero, 0x96
    /* 25BE94 802DC754 AFA00010 */  sw         $zero, 0x10($sp)
    /* 25BE98 802DC758 46802221 */  cvt.d.w    $f8, $f4
    /* 25BE9C 802DC75C AFA40050 */  sw         $a0, 0x50($sp)
    /* 25BEA0 802DC760 AFA50054 */  sw         $a1, 0x54($sp)
    /* 25BEA4 802DC764 46208482 */  mul.d      $f18, $f16, $f0
    /* 25BEA8 802DC768 46324181 */  sub.d      $f6, $f8, $f18
    /* 25BEAC 802DC76C 4620328D */  trunc.w.d  $f10, $f6
    /* 25BEB0 802DC770 44035000 */  mfc1       $v1, $f10
    /* 25BEB4 802DC774 00000000 */  nop
    /* 25BEB8 802DC778 00033400 */  sll        $a2, $v1, 16
    /* 25BEBC 802DC77C 00066C03 */  sra        $t5, $a2, 16
    /* 25BEC0 802DC780 01A03025 */  or         $a2, $t5, $zero
    /* 25BEC4 802DC784 0C037E8D */  jal        func_800DFA34_EE9E4
    /* 25BEC8 802DC788 AFA3006C */   sw        $v1, 0x6C($sp)
    /* 25BECC 802DC78C 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 25BED0 802DC790 3C010040 */  lui        $at, (0x400000 >> 16)
    /* 25BED4 802DC794 240F0190 */  addiu      $t7, $zero, 0x190
    /* 25BED8 802DC798 01817025 */  or         $t6, $t4, $at
    /* 25BEDC 802DC79C 8FA40050 */  lw         $a0, 0x50($sp)
    /* 25BEE0 802DC7A0 8FA50054 */  lw         $a1, 0x54($sp)
    /* 25BEE4 802DC7A4 AE0E0020 */  sw         $t6, 0x20($s0)
    /* 25BEE8 802DC7A8 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 25BEEC 802DC7AC 87A6006E */  lh         $a2, 0x6E($sp)
    /* 25BEF0 802DC7B0 0C0492D7 */  jal        func_80124B5C_133B0C
    /* 25BEF4 802DC7B4 24070DAC */   addiu     $a3, $zero, 0xDAC
    /* 25BEF8 802DC7B8 8E190020 */  lw         $t9, 0x20($s0)
    /* 25BEFC 802DC7BC 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 25BF00 802DC7C0 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 25BF04 802DC7C4 03214824 */  and        $t1, $t9, $at
    /* 25BF08 802DC7C8 AE090020 */  sw         $t1, 0x20($s0)
    /* 25BF0C 802DC7CC 8602001E */  lh         $v0, 0x1E($s0)
    /* 25BF10 802DC7D0 8FA70084 */  lw         $a3, 0x84($sp)
  .L802DC7D4_25BF14:
    /* 25BF14 802DC7D4 54400005 */  bnel       $v0, $zero, .L802DC7EC_25BF2C
    /* 25BF18 802DC7D8 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 25BF1C 802DC7DC 8CF80020 */  lw         $t8, 0x20($a3)
    /* 25BF20 802DC7E0 37084000 */  ori        $t0, $t8, 0x4000
    /* 25BF24 802DC7E4 ACE80020 */  sw         $t0, 0x20($a3)
  .L802DC7E8_25BF28:
    /* 25BF28 802DC7E8 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DC7EC_25BF2C:
    /* 25BF2C 802DC7EC 8FB00040 */  lw         $s0, 0x40($sp)
    /* 25BF30 802DC7F0 27BD0088 */  addiu      $sp, $sp, 0x88
    /* 25BF34 802DC7F4 03E00008 */  jr         $ra
    /* 25BF38 802DC7F8 00000000 */   nop
endlabel func_802DC244_25B984
