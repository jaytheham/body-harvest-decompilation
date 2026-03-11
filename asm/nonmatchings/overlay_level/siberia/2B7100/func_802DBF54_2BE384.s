nonmatching func_802DBF54_2BE384, 0x54C

glabel func_802DBF54_2BE384
    /* 2BE384 802DBF54 27BDFF68 */  addiu      $sp, $sp, -0x98
    /* 2BE388 802DBF58 AFA40098 */  sw         $a0, 0x98($sp)
    /* 2BE38C 802DBF5C 93AE009B */  lbu        $t6, 0x9B($sp)
    /* 2BE390 802DBF60 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BE394 802DBF64 AFB00030 */  sw         $s0, 0x30($sp)
    /* 2BE398 802DBF68 000E7880 */  sll        $t7, $t6, 2
    /* 2BE39C 802DBF6C 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BE3A0 802DBF70 000F7900 */  sll        $t7, $t7, 4
    /* 2BE3A4 802DBF74 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BE3A8 802DBF78 01F88021 */  addu       $s0, $t7, $t8
    /* 2BE3AC 802DBF7C 8607000C */  lh         $a3, 0xC($s0)
    /* 2BE3B0 802DBF80 3C0B8015 */  lui        $t3, %hi(D_8014DD50)
    /* 2BE3B4 802DBF84 256BDD50 */  addiu      $t3, $t3, %lo(D_8014DD50)
    /* 2BE3B8 802DBF88 00077100 */  sll        $t6, $a3, 4
    /* 2BE3BC 802DBF8C 016E7821 */  addu       $t7, $t3, $t6
    /* 2BE3C0 802DBF90 81ED000C */  lb         $t5, 0xC($t7)
    /* 2BE3C4 802DBF94 9219001A */  lbu        $t9, 0x1A($s0)
    /* 2BE3C8 802DBF98 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 2BE3CC 802DBF9C 000DC100 */  sll        $t8, $t5, 4
    /* 2BE3D0 802DBFA0 01781021 */  addu       $v0, $t3, $t8
    /* 2BE3D4 802DBFA4 8049000D */  lb         $t1, 0xD($v0)
    /* 2BE3D8 802DBFA8 A7B9005E */  sh         $t9, 0x5E($sp)
    /* 2BE3DC 802DBFAC 86040000 */  lh         $a0, 0x0($s0)
    /* 2BE3E0 802DBFB0 0009C900 */  sll        $t9, $t1, 4
    /* 2BE3E4 802DBFB4 01791821 */  addu       $v1, $t3, $t9
    /* 2BE3E8 802DBFB8 806A000D */  lb         $t2, 0xD($v1)
    /* 2BE3EC 802DBFBC 806E000C */  lb         $t6, 0xC($v1)
    /* 2BE3F0 802DBFC0 AFA30044 */  sw         $v1, 0x44($sp)
    /* 2BE3F4 802DBFC4 000A7900 */  sll        $t7, $t2, 4
    /* 2BE3F8 802DBFC8 016F4021 */  addu       $t0, $t3, $t7
    /* 2BE3FC 802DBFCC 8118000C */  lb         $t8, 0xC($t0)
    /* 2BE400 802DBFD0 811F000D */  lb         $ra, 0xD($t0)
    /* 2BE404 802DBFD4 844F0002 */  lh         $t7, 0x2($v0)
    /* 2BE408 802DBFD8 A7B80090 */  sh         $t8, 0x90($sp)
    /* 2BE40C 802DBFDC 86180002 */  lh         $t8, 0x2($s0)
    /* 2BE410 802DBFE0 001FC900 */  sll        $t9, $ra, 4
    /* 2BE414 802DBFE4 01796021 */  addu       $t4, $t3, $t9
    /* 2BE418 802DBFE8 A7AE008C */  sh         $t6, 0x8C($sp)
    /* 2BE41C 802DBFEC 818E000D */  lb         $t6, 0xD($t4)
    /* 2BE420 802DBFF0 01F82821 */  addu       $a1, $t7, $t8
    /* 2BE424 802DBFF4 0005CC00 */  sll        $t9, $a1, 16
    /* 2BE428 802DBFF8 A7BF0088 */  sh         $ra, 0x88($sp)
    /* 2BE42C 802DBFFC 00192C03 */  sra        $a1, $t9, 16
    /* 2BE430 802DC000 AFAC003C */  sw         $t4, 0x3C($sp)
    /* 2BE434 802DC004 AFA80040 */  sw         $t0, 0x40($sp)
    /* 2BE438 802DC008 86060004 */  lh         $a2, 0x4($s0)
    /* 2BE43C 802DC00C A7AD0094 */  sh         $t5, 0x94($sp)
    /* 2BE440 802DC010 A7A9008E */  sh         $t1, 0x8E($sp)
    /* 2BE444 802DC014 A7AA0092 */  sh         $t2, 0x92($sp)
    /* 2BE448 802DC018 0C021833 */  jal        func_800860CC_9507C
    /* 2BE44C 802DC01C A7AE008A */   sh        $t6, 0x8A($sp)
    /* 2BE450 802DC020 8FA30044 */  lw         $v1, 0x44($sp)
    /* 2BE454 802DC024 00022C00 */  sll        $a1, $v0, 16
    /* 2BE458 802DC028 00057C03 */  sra        $t7, $a1, 16
    /* 2BE45C 802DC02C 24180400 */  addiu      $t8, $zero, 0x400
    /* 2BE460 802DC030 A7A20060 */  sh         $v0, 0x60($sp)
    /* 2BE464 802DC034 AFB80010 */  sw         $t8, 0x10($sp)
    /* 2BE468 802DC038 01E02825 */  or         $a1, $t7, $zero
    /* 2BE46C 802DC03C 24062000 */  addiu      $a2, $zero, 0x2000
    /* 2BE470 802DC040 2407E000 */  addiu      $a3, $zero, -0x2000
    /* 2BE474 802DC044 0C0216A7 */  jal        func_80085A9C_94A4C
    /* 2BE478 802DC048 8464000A */   lh        $a0, 0xA($v1)
    /* 2BE47C 802DC04C 8FA30044 */  lw         $v1, 0x44($sp)
    /* 2BE480 802DC050 8FB90040 */  lw         $t9, 0x40($sp)
    /* 2BE484 802DC054 240E0400 */  addiu      $t6, $zero, 0x400
    /* 2BE488 802DC058 A462000A */  sh         $v0, 0xA($v1)
    /* 2BE48C 802DC05C 8724000A */  lh         $a0, 0xA($t9)
    /* 2BE490 802DC060 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2BE494 802DC064 87A50060 */  lh         $a1, 0x60($sp)
    /* 2BE498 802DC068 24062000 */  addiu      $a2, $zero, 0x2000
    /* 2BE49C 802DC06C 0C0216A7 */  jal        func_80085A9C_94A4C
    /* 2BE4A0 802DC070 2407E000 */   addiu     $a3, $zero, -0x2000
    /* 2BE4A4 802DC074 8FAF0040 */  lw         $t7, 0x40($sp)
    /* 2BE4A8 802DC078 A5E2000A */  sh         $v0, 0xA($t7)
    /* 2BE4AC 802DC07C 0C02A66E */  jal        func_800A99B8_B8968
    /* 2BE4B0 802DC080 93A4009B */   lbu       $a0, 0x9B($sp)
    /* 2BE4B4 802DC084 93A4009B */  lbu        $a0, 0x9B($sp)
    /* 2BE4B8 802DC088 0C021859 */  jal        func_80086164_95114
    /* 2BE4BC 802DC08C 87A50092 */   lh        $a1, 0x92($sp)
    /* 2BE4C0 802DC090 93A4009B */  lbu        $a0, 0x9B($sp)
    /* 2BE4C4 802DC094 0C021859 */  jal        func_80086164_95114
    /* 2BE4C8 802DC098 87A5008E */   lh        $a1, 0x8E($sp)
    /* 2BE4CC 802DC09C 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 2BE4D0 802DC0A0 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 2BE4D4 802DC0A4 86180000 */  lh         $t8, 0x0($s0)
    /* 2BE4D8 802DC0A8 860E0004 */  lh         $t6, 0x4($s0)
    /* 2BE4DC 802DC0AC 84790000 */  lh         $t9, 0x0($v1)
    /* 2BE4E0 802DC0B0 846F0004 */  lh         $t7, 0x4($v1)
    /* 2BE4E4 802DC0B4 03191023 */  subu       $v0, $t8, $t9
    /* 2BE4E8 802DC0B8 00420019 */  multu      $v0, $v0
    /* 2BE4EC 802DC0BC 01CF2023 */  subu       $a0, $t6, $t7
    /* 2BE4F0 802DC0C0 0000C012 */  mflo       $t8
    /* 2BE4F4 802DC0C4 00000000 */  nop
    /* 2BE4F8 802DC0C8 00000000 */  nop
    /* 2BE4FC 802DC0CC 00840019 */  multu      $a0, $a0
    /* 2BE500 802DC0D0 0000C812 */  mflo       $t9
    /* 2BE504 802DC0D4 03197021 */  addu       $t6, $t8, $t9
    /* 2BE508 802DC0D8 448E2000 */  mtc1       $t6, $f4
    /* 2BE50C 802DC0DC 0C007650 */  jal        sqrtf
    /* 2BE510 802DC0E0 46802320 */   cvt.s.w   $f12, $f4
    /* 2BE514 802DC0E4 4600018D */  trunc.w.s  $f6, $f0
    /* 2BE518 802DC0E8 93A4009B */  lbu        $a0, 0x9B($sp)
    /* 2BE51C 802DC0EC 24051000 */  addiu      $a1, $zero, 0x1000
    /* 2BE520 802DC0F0 44183000 */  mfc1       $t8, $f6
    /* 2BE524 802DC0F4 0C0213FA */  jal        func_80084FE8_93F98
    /* 2BE528 802DC0F8 AFB80078 */   sw        $t8, 0x78($sp)
    /* 2BE52C 802DC0FC 1040005D */  beqz       $v0, .L802DC274_2BE6A4
    /* 2BE530 802DC100 8FB90078 */   lw        $t9, 0x78($sp)
    /* 2BE534 802DC104 2B2107D0 */  slti       $at, $t9, 0x7D0
    /* 2BE538 802DC108 5020005B */  beql       $at, $zero, .L802DC278_2BE6A8
    /* 2BE53C 802DC10C 93A4009B */   lbu       $a0, 0x9B($sp)
    /* 2BE540 802DC110 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 2BE544 802DC114 2B210258 */  slti       $at, $t9, 0x258
    /* 2BE548 802DC118 31CF3000 */  andi       $t7, $t6, 0x3000
    /* 2BE54C 802DC11C 55E00056 */  bnel       $t7, $zero, .L802DC278_2BE6A8
    /* 2BE550 802DC120 93A4009B */   lbu       $a0, 0x9B($sp)
    /* 2BE554 802DC124 1020000D */  beqz       $at, .L802DC15C_2BE58C
    /* 2BE558 802DC128 24190064 */   addiu     $t9, $zero, 0x64
    /* 2BE55C 802DC12C 93A4009B */  lbu        $a0, 0x9B($sp)
    /* 2BE560 802DC130 24050001 */  addiu      $a1, $zero, 0x1
    /* 2BE564 802DC134 0C021C73 */  jal        func_800871CC_9617C
    /* 2BE568 802DC138 24060032 */   addiu     $a2, $zero, 0x32
    /* 2BE56C 802DC13C 1040004D */  beqz       $v0, .L802DC274_2BE6A4
    /* 2BE570 802DC140 2418000A */   addiu     $t8, $zero, 0xA
    /* 2BE574 802DC144 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 2BE578 802DC148 A618001E */  sh         $t8, 0x1E($s0)
    /* 2BE57C 802DC14C A2000036 */  sb         $zero, 0x36($s0)
    /* 2BE580 802DC150 35CF2000 */  ori        $t7, $t6, 0x2000
    /* 2BE584 802DC154 10000047 */  b          .L802DC274_2BE6A4
    /* 2BE588 802DC158 AE0F0020 */   sw        $t7, 0x20($s0)
  .L802DC15C_2BE58C:
    /* 2BE58C 802DC15C 2418FFD5 */  addiu      $t8, $zero, -0x2B
    /* 2BE590 802DC160 240E00B9 */  addiu      $t6, $zero, 0xB9
    /* 2BE594 802DC164 A7B90058 */  sh         $t9, 0x58($sp)
    /* 2BE598 802DC168 A7B8005A */  sh         $t8, 0x5A($sp)
    /* 2BE59C 802DC16C A7AE005C */  sh         $t6, 0x5C($sp)
    /* 2BE5A0 802DC170 83A40093 */  lb         $a0, 0x93($sp)
    /* 2BE5A4 802DC174 27A50058 */  addiu      $a1, $sp, 0x58
    /* 2BE5A8 802DC178 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 2BE5AC 802DC17C 27A6004C */   addiu     $a2, $sp, 0x4C
    /* 2BE5B0 802DC180 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 2BE5B4 802DC184 87AE005E */  lh         $t6, 0x5E($sp)
    /* 2BE5B8 802DC188 00002825 */  or         $a1, $zero, $zero
    /* 2BE5BC 802DC18C 000FC940 */  sll        $t9, $t7, 5
    /* 2BE5C0 802DC190 07210014 */  bgez       $t9, .L802DC1E4_2BE614
    /* 2BE5C4 802DC194 24060064 */   addiu     $a2, $zero, 0x64
    /* 2BE5C8 802DC198 87B8005E */  lh         $t8, 0x5E($sp)
    /* 2BE5CC 802DC19C 8FB9004C */  lw         $t9, 0x4C($sp)
    /* 2BE5D0 802DC1A0 3C0F8025 */  lui        $t7, %hi(alienSpecs)
    /* 2BE5D4 802DC1A4 00187080 */  sll        $t6, $t8, 2
    /* 2BE5D8 802DC1A8 01D87023 */  subu       $t6, $t6, $t8
    /* 2BE5DC 802DC1AC 000E7080 */  sll        $t6, $t6, 2
    /* 2BE5E0 802DC1B0 01D87021 */  addu       $t6, $t6, $t8
    /* 2BE5E4 802DC1B4 000E70C0 */  sll        $t6, $t6, 3
    /* 2BE5E8 802DC1B8 25EF6680 */  addiu      $t7, $t7, %lo(alienSpecs)
    /* 2BE5EC 802DC1BC 01CF1021 */  addu       $v0, $t6, $t7
    /* 2BE5F0 802DC1C0 2738000D */  addiu      $t8, $t9, 0xD
    /* 2BE5F4 802DC1C4 8FAE0050 */  lw         $t6, 0x50($sp)
    /* 2BE5F8 802DC1C8 8FB90054 */  lw         $t9, 0x54($sp)
    /* 2BE5FC 802DC1CC A4580020 */  sh         $t8, 0x20($v0)
    /* 2BE600 802DC1D0 25CF0037 */  addiu      $t7, $t6, 0x37
    /* 2BE604 802DC1D4 27380001 */  addiu      $t8, $t9, 0x1
    /* 2BE608 802DC1D8 A44F0022 */  sh         $t7, 0x22($v0)
    /* 2BE60C 802DC1DC 10000012 */  b          .L802DC228_2BE658
    /* 2BE610 802DC1E0 A4580024 */   sh        $t8, 0x24($v0)
  .L802DC1E4_2BE614:
    /* 2BE614 802DC1E4 000E7880 */  sll        $t7, $t6, 2
    /* 2BE618 802DC1E8 01EE7823 */  subu       $t7, $t7, $t6
    /* 2BE61C 802DC1EC 8FB8004C */  lw         $t8, 0x4C($sp)
    /* 2BE620 802DC1F0 000F7880 */  sll        $t7, $t7, 2
    /* 2BE624 802DC1F4 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BE628 802DC1F8 3C198025 */  lui        $t9, %hi(alienSpecs)
    /* 2BE62C 802DC1FC 27396680 */  addiu      $t9, $t9, %lo(alienSpecs)
    /* 2BE630 802DC200 000F78C0 */  sll        $t7, $t7, 3
    /* 2BE634 802DC204 01F91021 */  addu       $v0, $t7, $t9
    /* 2BE638 802DC208 270EFFF3 */  addiu      $t6, $t8, -0xD
    /* 2BE63C 802DC20C 8FAF0050 */  lw         $t7, 0x50($sp)
    /* 2BE640 802DC210 8FB80054 */  lw         $t8, 0x54($sp)
    /* 2BE644 802DC214 A44E0020 */  sh         $t6, 0x20($v0)
    /* 2BE648 802DC218 25F90035 */  addiu      $t9, $t7, 0x35
    /* 2BE64C 802DC21C 270E0001 */  addiu      $t6, $t8, 0x1
    /* 2BE650 802DC220 A4590022 */  sh         $t9, 0x22($v0)
    /* 2BE654 802DC224 A44E0024 */  sh         $t6, 0x24($v0)
  .L802DC228_2BE658:
    /* 2BE658 802DC228 0C021C73 */  jal        func_800871CC_9617C
    /* 2BE65C 802DC22C 93A4009B */   lbu       $a0, 0x9B($sp)
    /* 2BE660 802DC230 50400011 */  beql       $v0, $zero, .L802DC278_2BE6A8
    /* 2BE664 802DC234 93A4009B */   lbu       $a0, 0x9B($sp)
    /* 2BE668 802DC238 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 2BE66C 802DC23C A2000036 */  sb         $zero, 0x36($s0)
    /* 2BE670 802DC240 3C188005 */  lui        $t8, %hi(D_80052B34)
    /* 2BE674 802DC244 35F91000 */  ori        $t9, $t7, 0x1000
    /* 2BE678 802DC248 AE190020 */  sw         $t9, 0x20($s0)
    /* 2BE67C 802DC24C 8F182B34 */  lw         $t8, %lo(D_80052B34)($t8)
    /* 2BE680 802DC250 24190005 */  addiu      $t9, $zero, 0x5
    /* 2BE684 802DC254 970E0020 */  lhu        $t6, 0x20($t8)
    /* 2BE688 802DC258 2418000F */  addiu      $t8, $zero, 0xF
    /* 2BE68C 802DC25C 31CF0002 */  andi       $t7, $t6, 0x2
    /* 2BE690 802DC260 51E00004 */  beql       $t7, $zero, .L802DC274_2BE6A4
    /* 2BE694 802DC264 A618001E */   sh        $t8, 0x1E($s0)
    /* 2BE698 802DC268 10000002 */  b          .L802DC274_2BE6A4
    /* 2BE69C 802DC26C A619001E */   sh        $t9, 0x1E($s0)
    /* 2BE6A0 802DC270 A618001E */  sh         $t8, 0x1E($s0)
  .L802DC274_2BE6A4:
    /* 2BE6A4 802DC274 93A4009B */  lbu        $a0, 0x9B($sp)
  .L802DC278_2BE6A8:
    /* 2BE6A8 802DC278 87A50094 */  lh         $a1, 0x94($sp)
    /* 2BE6AC 802DC27C 87A6008C */  lh         $a2, 0x8C($sp)
    /* 2BE6B0 802DC280 0C0B6F8A */  jal        func_802DBE28_2BE258
    /* 2BE6B4 802DC284 87A70090 */   lh        $a3, 0x90($sp)
    /* 2BE6B8 802DC288 3C0E8005 */  lui        $t6, %hi(D_80052A8C)
    /* 2BE6BC 802DC28C 8DCE2A8C */  lw         $t6, %lo(D_80052A8C)($t6)
    /* 2BE6C0 802DC290 31CF0003 */  andi       $t7, $t6, 0x3
    /* 2BE6C4 802DC294 15E00051 */  bnez       $t7, .L802DC3DC_2BE80C
    /* 2BE6C8 802DC298 00000000 */   nop
    /* 2BE6CC 802DC29C 8219003C */  lb         $t9, 0x3C($s0)
    /* 2BE6D0 802DC2A0 240100FB */  addiu      $at, $zero, 0xFB
    /* 2BE6D4 802DC2A4 02002025 */  or         $a0, $s0, $zero
    /* 2BE6D8 802DC2A8 13210026 */  beq        $t9, $at, .L802DC344_2BE774
    /* 2BE6DC 802DC2AC 87B8008A */   lh        $t8, 0x8A($sp)
    /* 2BE6E0 802DC2B0 3C0F8015 */  lui        $t7, %hi(D_8014DD50)
    /* 2BE6E4 802DC2B4 25EFDD50 */  addiu      $t7, $t7, %lo(D_8014DD50)
    /* 2BE6E8 802DC2B8 00187100 */  sll        $t6, $t8, 4
    /* 2BE6EC 802DC2BC 01CF1021 */  addu       $v0, $t6, $t7
    /* 2BE6F0 802DC2C0 27AE0064 */  addiu      $t6, $sp, 0x64
    /* 2BE6F4 802DC2C4 27B80068 */  addiu      $t8, $sp, 0x68
    /* 2BE6F8 802DC2C8 27B9006C */  addiu      $t9, $sp, 0x6C
    /* 2BE6FC 802DC2CC AFB90010 */  sw         $t9, 0x10($sp)
    /* 2BE700 802DC2D0 AFB80014 */  sw         $t8, 0x14($sp)
    /* 2BE704 802DC2D4 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 2BE708 802DC2D8 84450000 */  lh         $a1, 0x0($v0)
    /* 2BE70C 802DC2DC 84460002 */  lh         $a2, 0x2($v0)
    /* 2BE710 802DC2E0 0C04A10A */  jal        func_80128428_1373D8
    /* 2BE714 802DC2E4 84470004 */   lh        $a3, 0x4($v0)
    /* 2BE718 802DC2E8 87A4006E */  lh         $a0, 0x6E($sp)
    /* 2BE71C 802DC2EC 0C02E134 */  jal        func_800B84D0_C7480
    /* 2BE720 802DC2F0 87A50066 */   lh        $a1, 0x66($sp)
    /* 2BE724 802DC2F4 3C038022 */  lui        $v1, %hi(D_80222A70)
    /* 2BE728 802DC2F8 8C632A70 */  lw         $v1, %lo(D_80222A70)($v1)
    /* 2BE72C 802DC2FC 00027A03 */  sra        $t7, $v0, 8
    /* 2BE730 802DC300 87A4006E */  lh         $a0, 0x6E($sp)
    /* 2BE734 802DC304 01E3082A */  slt        $at, $t7, $v1
    /* 2BE738 802DC308 10200003 */  beqz       $at, .L802DC318_2BE748
    /* 2BE73C 802DC30C 00000000 */   nop
    /* 2BE740 802DC310 10000004 */  b          .L802DC324_2BE754
    /* 2BE744 802DC314 00604025 */   or        $t0, $v1, $zero
  .L802DC318_2BE748:
    /* 2BE748 802DC318 0C02E134 */  jal        func_800B84D0_C7480
    /* 2BE74C 802DC31C 87A50066 */   lh        $a1, 0x66($sp)
    /* 2BE750 802DC320 00024203 */  sra        $t0, $v0, 8
  .L802DC324_2BE754:
    /* 2BE754 802DC324 00082C00 */  sll        $a1, $t0, 16
    /* 2BE758 802DC328 0005CC03 */  sra        $t9, $a1, 16
    /* 2BE75C 802DC32C 03202825 */  or         $a1, $t9, $zero
    /* 2BE760 802DC330 87A4006E */  lh         $a0, 0x6E($sp)
    /* 2BE764 802DC334 87A60066 */  lh         $a2, 0x66($sp)
    /* 2BE768 802DC338 9207003C */  lbu        $a3, 0x3C($s0)
    /* 2BE76C 802DC33C 0C0334BA */  jal        func_800CD2E8_DC298
    /* 2BE770 802DC340 AFA80068 */   sw        $t0, 0x68($sp)
  .L802DC344_2BE774:
    /* 2BE774 802DC344 8218003D */  lb         $t8, 0x3D($s0)
    /* 2BE778 802DC348 240100FB */  addiu      $at, $zero, 0xFB
    /* 2BE77C 802DC34C 8FA2003C */  lw         $v0, 0x3C($sp)
    /* 2BE780 802DC350 13010022 */  beq        $t8, $at, .L802DC3DC_2BE80C
    /* 2BE784 802DC354 02002025 */   or        $a0, $s0, $zero
    /* 2BE788 802DC358 27AE006C */  addiu      $t6, $sp, 0x6C
    /* 2BE78C 802DC35C 27AF0068 */  addiu      $t7, $sp, 0x68
    /* 2BE790 802DC360 27B90064 */  addiu      $t9, $sp, 0x64
    /* 2BE794 802DC364 AFB90018 */  sw         $t9, 0x18($sp)
    /* 2BE798 802DC368 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 2BE79C 802DC36C AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2BE7A0 802DC370 84450000 */  lh         $a1, 0x0($v0)
    /* 2BE7A4 802DC374 84460002 */  lh         $a2, 0x2($v0)
    /* 2BE7A8 802DC378 0C04A10A */  jal        func_80128428_1373D8
    /* 2BE7AC 802DC37C 84470004 */   lh        $a3, 0x4($v0)
    /* 2BE7B0 802DC380 87A4006E */  lh         $a0, 0x6E($sp)
    /* 2BE7B4 802DC384 0C02E134 */  jal        func_800B84D0_C7480
    /* 2BE7B8 802DC388 87A50066 */   lh        $a1, 0x66($sp)
    /* 2BE7BC 802DC38C 3C038022 */  lui        $v1, %hi(D_80222A70)
    /* 2BE7C0 802DC390 8C632A70 */  lw         $v1, %lo(D_80222A70)($v1)
    /* 2BE7C4 802DC394 0002C203 */  sra        $t8, $v0, 8
    /* 2BE7C8 802DC398 87A4006E */  lh         $a0, 0x6E($sp)
    /* 2BE7CC 802DC39C 0303082A */  slt        $at, $t8, $v1
    /* 2BE7D0 802DC3A0 10200003 */  beqz       $at, .L802DC3B0_2BE7E0
    /* 2BE7D4 802DC3A4 00000000 */   nop
    /* 2BE7D8 802DC3A8 10000004 */  b          .L802DC3BC_2BE7EC
    /* 2BE7DC 802DC3AC 00604025 */   or        $t0, $v1, $zero
  .L802DC3B0_2BE7E0:
    /* 2BE7E0 802DC3B0 0C02E134 */  jal        func_800B84D0_C7480
    /* 2BE7E4 802DC3B4 87A50066 */   lh        $a1, 0x66($sp)
    /* 2BE7E8 802DC3B8 00024203 */  sra        $t0, $v0, 8
  .L802DC3BC_2BE7EC:
    /* 2BE7EC 802DC3BC 00082C00 */  sll        $a1, $t0, 16
    /* 2BE7F0 802DC3C0 00057403 */  sra        $t6, $a1, 16
    /* 2BE7F4 802DC3C4 01C02825 */  or         $a1, $t6, $zero
    /* 2BE7F8 802DC3C8 87A4006E */  lh         $a0, 0x6E($sp)
    /* 2BE7FC 802DC3CC 87A60066 */  lh         $a2, 0x66($sp)
    /* 2BE800 802DC3D0 9207003D */  lbu        $a3, 0x3D($s0)
    /* 2BE804 802DC3D4 0C0334BA */  jal        func_800CD2E8_DC298
    /* 2BE808 802DC3D8 AFA80068 */   sw        $t0, 0x68($sp)
  .L802DC3DC_2BE80C:
    /* 2BE80C 802DC3DC 0C021553 */  jal        func_8008554C_944FC
    /* 2BE810 802DC3E0 93A4009B */   lbu       $a0, 0x9B($sp)
    /* 2BE814 802DC3E4 93A4009B */  lbu        $a0, 0x9B($sp)
    /* 2BE818 802DC3E8 0C0213FA */  jal        func_80084FE8_93F98
    /* 2BE81C 802DC3EC 24052000 */   addiu     $a1, $zero, 0x2000
    /* 2BE820 802DC3F0 10400012 */  beqz       $v0, .L802DC43C_2BE86C
    /* 2BE824 802DC3F4 2405012C */   addiu     $a1, $zero, 0x12C
    /* 2BE828 802DC3F8 820F004E */  lb         $t7, 0x4E($s0)
    /* 2BE82C 802DC3FC 8FB90078 */  lw         $t9, 0x78($sp)
    /* 2BE830 802DC400 15E00003 */  bnez       $t7, .L802DC410_2BE840
    /* 2BE834 802DC404 2B210320 */   slti      $at, $t9, 0x320
    /* 2BE838 802DC408 1000000D */  b          .L802DC440_2BE870
    /* 2BE83C 802DC40C 24060003 */   addiu     $a2, $zero, 0x3
  .L802DC410_2BE840:
    /* 2BE840 802DC410 10200003 */  beqz       $at, .L802DC420_2BE850
    /* 2BE844 802DC414 8FB80078 */   lw        $t8, 0x78($sp)
    /* 2BE848 802DC418 10000009 */  b          .L802DC440_2BE870
    /* 2BE84C 802DC41C 24060002 */   addiu     $a2, $zero, 0x2
  .L802DC420_2BE850:
    /* 2BE850 802DC420 2B0103E9 */  slti       $at, $t8, 0x3E9
    /* 2BE854 802DC424 14200003 */  bnez       $at, .L802DC434_2BE864
    /* 2BE858 802DC428 00000000 */   nop
    /* 2BE85C 802DC42C 10000004 */  b          .L802DC440_2BE870
    /* 2BE860 802DC430 24060001 */   addiu     $a2, $zero, 0x1
  .L802DC434_2BE864:
    /* 2BE864 802DC434 10000002 */  b          .L802DC440_2BE870
    /* 2BE868 802DC438 24060003 */   addiu     $a2, $zero, 0x3
  .L802DC43C_2BE86C:
    /* 2BE86C 802DC43C 00003025 */  or         $a2, $zero, $zero
  .L802DC440_2BE870:
    /* 2BE870 802DC440 A2060026 */  sb         $a2, 0x26($s0)
    /* 2BE874 802DC444 3C01802E */  lui        $at, %hi(D_802E3050)
    /* 2BE878 802DC448 C4283050 */  lwc1       $f8, %lo(D_802E3050)($at)
    /* 2BE87C 802DC44C 87AE008A */  lh         $t6, 0x8A($sp)
    /* 2BE880 802DC450 240F1F40 */  addiu      $t7, $zero, 0x1F40
    /* 2BE884 802DC454 2419EC78 */  addiu      $t9, $zero, -0x1388
    /* 2BE888 802DC458 241809C4 */  addiu      $t8, $zero, 0x9C4
    /* 2BE88C 802DC45C AFB8001C */  sw         $t8, 0x1C($sp)
    /* 2BE890 802DC460 AFB90018 */  sw         $t9, 0x18($sp)
    /* 2BE894 802DC464 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 2BE898 802DC468 93A4009B */  lbu        $a0, 0x9B($sp)
    /* 2BE89C 802DC46C 87A70088 */  lh         $a3, 0x88($sp)
    /* 2BE8A0 802DC470 E7A80020 */  swc1       $f8, 0x20($sp)
    /* 2BE8A4 802DC474 0C0B6E36 */  jal        func_802DB8D8_2BDD08
    /* 2BE8A8 802DC478 AFAE0010 */   sw        $t6, 0x10($sp)
    /* 2BE8AC 802DC47C 8602001E */  lh         $v0, 0x1E($s0)
    /* 2BE8B0 802DC480 10400002 */  beqz       $v0, .L802DC48C_2BE8BC
    /* 2BE8B4 802DC484 244EFFFF */   addiu     $t6, $v0, -0x1
    /* 2BE8B8 802DC488 A60E001E */  sh         $t6, 0x1E($s0)
  .L802DC48C_2BE8BC:
    /* 2BE8BC 802DC48C 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 2BE8C0 802DC490 8FB00030 */  lw         $s0, 0x30($sp)
    /* 2BE8C4 802DC494 27BD0098 */  addiu      $sp, $sp, 0x98
    /* 2BE8C8 802DC498 03E00008 */  jr         $ra
    /* 2BE8CC 802DC49C 00000000 */   nop
endlabel func_802DBF54_2BE384
