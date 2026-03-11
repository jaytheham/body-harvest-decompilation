nonmatching func_802D738C_18FE9C, 0x2B0

glabel func_802D738C_18FE9C
    /* 18FE9C 802D738C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 18FEA0 802D7390 000E7880 */  sll        $t7, $t6, 2
    /* 18FEA4 802D7394 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 18FEA8 802D7398 01EE7821 */  addu       $t7, $t7, $t6
    /* 18FEAC 802D739C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 18FEB0 802D73A0 AFB00020 */  sw         $s0, 0x20($sp)
    /* 18FEB4 802D73A4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 18FEB8 802D73A8 000F7900 */  sll        $t7, $t7, 4
    /* 18FEBC 802D73AC 01F88021 */  addu       $s0, $t7, $t8
    /* 18FEC0 802D73B0 8607000C */  lh         $a3, 0xC($s0)
    /* 18FEC4 802D73B4 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 18FEC8 802D73B8 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 18FECC 802D73BC 00075900 */  sll        $t3, $a3, 4
    /* 18FED0 802D73C0 004B1821 */  addu       $v1, $v0, $t3
    /* 18FED4 802D73C4 8068000C */  lb         $t0, 0xC($v1)
    /* 18FED8 802D73C8 AFA40060 */  sw         $a0, 0x60($sp)
    /* 18FEDC 802D73CC 01C02025 */  or         $a0, $t6, $zero
    /* 18FEE0 802D73D0 00086100 */  sll        $t4, $t0, 4
    /* 18FEE4 802D73D4 004C3021 */  addu       $a2, $v0, $t4
    /* 18FEE8 802D73D8 80C9000C */  lb         $t1, 0xC($a2)
    /* 18FEEC 802D73DC 9219001A */  lbu        $t9, 0x1A($s0)
    /* 18FEF0 802D73E0 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 18FEF4 802D73E4 00096900 */  sll        $t5, $t1, 4
    /* 18FEF8 802D73E8 004D7021 */  addu       $t6, $v0, $t5
    /* 18FEFC 802D73EC 81CA000D */  lb         $t2, 0xD($t6)
    /* 18FF00 802D73F0 A7B9003E */  sh         $t9, 0x3E($sp)
    /* 18FF04 802D73F4 2605000E */  addiu      $a1, $s0, 0xE
    /* 18FF08 802D73F8 000A7900 */  sll        $t7, $t2, 4
    /* 18FF0C 802D73FC 004FC021 */  addu       $t8, $v0, $t7
    /* 18FF10 802D7400 8319000D */  lb         $t9, 0xD($t8)
    /* 18FF14 802D7404 AFA60028 */  sw         $a2, 0x28($sp)
    /* 18FF18 802D7408 A3A40063 */  sb         $a0, 0x63($sp)
    /* 18FF1C 802D740C AFA3002C */  sw         $v1, 0x2C($sp)
    /* 18FF20 802D7410 A7A7005E */  sh         $a3, 0x5E($sp)
    /* 18FF24 802D7414 A7A8005C */  sh         $t0, 0x5C($sp)
    /* 18FF28 802D7418 A7A90058 */  sh         $t1, 0x58($sp)
    /* 18FF2C 802D741C A7AA005A */  sh         $t2, 0x5A($sp)
    /* 18FF30 802D7420 0C02023C */  jal        func_800808F0_8F8A0
    /* 18FF34 802D7424 A7B90056 */   sh        $t9, 0x56($sp)
    /* 18FF38 802D7428 860C0006 */  lh         $t4, 0x6($s0)
    /* 18FF3C 802D742C 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 18FF40 802D7430 8FA60028 */  lw         $a2, 0x28($sp)
    /* 18FF44 802D7434 000C6823 */  negu       $t5, $t4
    /* 18FF48 802D7438 A46C0006 */  sh         $t4, 0x6($v1)
    /* 18FF4C 802D743C 93A40063 */  lbu        $a0, 0x63($sp)
    /* 18FF50 802D7440 87A5005C */  lh         $a1, 0x5C($sp)
    /* 18FF54 802D7444 0C021859 */  jal        func_80086164_95114
    /* 18FF58 802D7448 A4CD0006 */   sh        $t5, 0x6($a2)
    /* 18FF5C 802D744C 240E003C */  addiu      $t6, $zero, 0x3C
    /* 18FF60 802D7450 240FFFF8 */  addiu      $t7, $zero, -0x8
    /* 18FF64 802D7454 24180070 */  addiu      $t8, $zero, 0x70
    /* 18FF68 802D7458 A7AE0050 */  sh         $t6, 0x50($sp)
    /* 18FF6C 802D745C A7AF0052 */  sh         $t7, 0x52($sp)
    /* 18FF70 802D7460 A7B80054 */  sh         $t8, 0x54($sp)
    /* 18FF74 802D7464 83A4005D */  lb         $a0, 0x5D($sp)
    /* 18FF78 802D7468 27A50050 */  addiu      $a1, $sp, 0x50
    /* 18FF7C 802D746C 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 18FF80 802D7470 27A60044 */   addiu     $a2, $sp, 0x44
    /* 18FF84 802D7474 8FB90044 */  lw         $t9, 0x44($sp)
    /* 18FF88 802D7478 8FAB0048 */  lw         $t3, 0x48($sp)
    /* 18FF8C 802D747C 8FAC004C */  lw         $t4, 0x4C($sp)
    /* 18FF90 802D7480 83A4005F */  lb         $a0, 0x5F($sp)
    /* 18FF94 802D7484 27A50050 */  addiu      $a1, $sp, 0x50
    /* 18FF98 802D7488 27A60044 */  addiu      $a2, $sp, 0x44
    /* 18FF9C 802D748C A7B90050 */  sh         $t9, 0x50($sp)
    /* 18FFA0 802D7490 A7AB0052 */  sh         $t3, 0x52($sp)
    /* 18FFA4 802D7494 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 18FFA8 802D7498 A7AC0054 */   sh        $t4, 0x54($sp)
    /* 18FFAC 802D749C 87AD003E */  lh         $t5, 0x3E($sp)
    /* 18FFB0 802D74A0 3C0F8025 */  lui        $t7, %hi(alienSpecs)
    /* 18FFB4 802D74A4 25EF6680 */  addiu      $t7, $t7, %lo(alienSpecs)
    /* 18FFB8 802D74A8 000D7080 */  sll        $t6, $t5, 2
    /* 18FFBC 802D74AC 01CD7023 */  subu       $t6, $t6, $t5
    /* 18FFC0 802D74B0 000E7080 */  sll        $t6, $t6, 2
    /* 18FFC4 802D74B4 01CD7021 */  addu       $t6, $t6, $t5
    /* 18FFC8 802D74B8 000E70C0 */  sll        $t6, $t6, 3
    /* 18FFCC 802D74BC 8FB80044 */  lw         $t8, 0x44($sp)
    /* 18FFD0 802D74C0 8FB90048 */  lw         $t9, 0x48($sp)
    /* 18FFD4 802D74C4 8FAB004C */  lw         $t3, 0x4C($sp)
    /* 18FFD8 802D74C8 01CF1021 */  addu       $v0, $t6, $t7
    /* 18FFDC 802D74CC 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 18FFE0 802D74D0 A4580020 */  sh         $t8, 0x20($v0)
    /* 18FFE4 802D74D4 A4590022 */  sh         $t9, 0x22($v0)
    /* 18FFE8 802D74D8 A44B0024 */  sh         $t3, 0x24($v0)
    /* 18FFEC 802D74DC 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 18FFF0 802D74E0 0C021395 */  jal        func_80084E54_93E04
    /* 18FFF4 802D74E4 02002825 */   or        $a1, $s0, $zero
    /* 18FFF8 802D74E8 3C0C8004 */  lui        $t4, %hi(currentLevel)
    /* 18FFFC 802D74EC 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* 190000 802D74F0 24010001 */  addiu      $at, $zero, 0x1
    /* 190004 802D74F4 00403025 */  or         $a2, $v0, $zero
    /* 190008 802D74F8 15810003 */  bne        $t4, $at, .L802D7508_190018
    /* 19000C 802D74FC 93A40063 */   lbu       $a0, 0x63($sp)
    /* 190010 802D7500 10000002 */  b          .L802D750C_19001C
    /* 190014 802D7504 2403003C */   addiu     $v1, $zero, 0x3C
  .L802D7508_190018:
    /* 190018 802D7508 2403001E */  addiu      $v1, $zero, 0x1E
  .L802D750C_19001C:
    /* 19001C 802D750C 24051000 */  addiu      $a1, $zero, 0x1000
    /* 190020 802D7510 A7A30034 */  sh         $v1, 0x34($sp)
    /* 190024 802D7514 0C0213FA */  jal        func_80084FE8_93F98
    /* 190028 802D7518 AFA60040 */   sw        $a2, 0x40($sp)
    /* 19002C 802D751C 87A30034 */  lh         $v1, 0x34($sp)
    /* 190030 802D7520 1040001F */  beqz       $v0, .L802D75A0_1900B0
    /* 190034 802D7524 8FA60040 */   lw        $a2, 0x40($sp)
    /* 190038 802D7528 28C107D0 */  slti       $at, $a2, 0x7D0
    /* 19003C 802D752C 1020001C */  beqz       $at, .L802D75A0_1900B0
    /* 190040 802D7530 00002825 */   or        $a1, $zero, $zero
    /* 190044 802D7534 920D0026 */  lbu        $t5, 0x26($s0)
    /* 190048 802D7538 24780028 */  addiu      $t8, $v1, 0x28
    /* 19004C 802D753C 24060028 */  addiu      $a2, $zero, 0x28
    /* 190050 802D7540 25AE0001 */  addiu      $t6, $t5, 0x1
    /* 190054 802D7544 31CF00FF */  andi       $t7, $t6, 0xFF
    /* 190058 802D7548 030F082A */  slt        $at, $t8, $t7
    /* 19005C 802D754C 10200008 */  beqz       $at, .L802D7570_190080
    /* 190060 802D7550 A20E0026 */   sb        $t6, 0x26($s0)
    /* 190064 802D7554 8E0B0020 */  lw         $t3, 0x20($s0)
    /* 190068 802D7558 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 19006C 802D755C 24190028 */  addiu      $t9, $zero, 0x28
    /* 190070 802D7560 01616024 */  and        $t4, $t3, $at
    /* 190074 802D7564 A619001E */  sh         $t9, 0x1E($s0)
    /* 190078 802D7568 AE0C0020 */  sw         $t4, 0x20($s0)
    /* 19007C 802D756C A2000026 */  sb         $zero, 0x26($s0)
  .L802D7570_190080:
    /* 190080 802D7570 0C021C62 */  jal        func_80087188_96138
    /* 190084 802D7574 93A40063 */   lbu       $a0, 0x63($sp)
    /* 190088 802D7578 1040000B */  beqz       $v0, .L802D75A8_1900B8
    /* 19008C 802D757C 24190006 */   addiu     $t9, $zero, 0x6
    /* 190090 802D7580 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 190094 802D7584 A2000036 */  sb         $zero, 0x36($s0)
    /* 190098 802D7588 A619001E */  sh         $t9, 0x1E($s0)
    /* 19009C 802D758C 35AEA000 */  ori        $t6, $t5, 0xA000
    /* 1900A0 802D7590 AE0E0020 */  sw         $t6, 0x20($s0)
    /* 1900A4 802D7594 35D81000 */  ori        $t8, $t6, 0x1000
    /* 1900A8 802D7598 10000003 */  b          .L802D75A8_1900B8
    /* 1900AC 802D759C AE180020 */   sw        $t8, 0x20($s0)
  .L802D75A0_1900B0:
    /* 1900B0 802D75A0 A2000026 */  sb         $zero, 0x26($s0)
    /* 1900B4 802D75A4 A600001E */  sh         $zero, 0x1E($s0)
  .L802D75A8_1900B8:
    /* 1900B8 802D75A8 8E020020 */  lw         $v0, 0x20($s0)
    /* 1900BC 802D75AC 24050002 */  addiu      $a1, $zero, 0x2
    /* 1900C0 802D75B0 24060002 */  addiu      $a2, $zero, 0x2
    /* 1900C4 802D75B4 304B9000 */  andi       $t3, $v0, 0x9000
    /* 1900C8 802D75B8 11600017 */  beqz       $t3, .L802D7618_190128
    /* 1900CC 802D75BC 00026140 */   sll       $t4, $v0, 5
    /* 1900D0 802D75C0 05810004 */  bgez       $t4, .L802D75D4_1900E4
    /* 1900D4 802D75C4 27A70038 */   addiu     $a3, $sp, 0x38
    /* 1900D8 802D75C8 87AD0058 */  lh         $t5, 0x58($sp)
    /* 1900DC 802D75CC 10000003 */  b          .L802D75DC_1900EC
    /* 1900E0 802D75D0 A7AD0038 */   sh        $t5, 0x38($sp)
  .L802D75D4_1900E4:
    /* 1900E4 802D75D4 87AE005A */  lh         $t6, 0x5A($sp)
    /* 1900E8 802D75D8 A7AE0038 */  sh         $t6, 0x38($sp)
  .L802D75DC_1900EC:
    /* 1900EC 802D75DC 87AF0056 */  lh         $t7, 0x56($sp)
    /* 1900F0 802D75E0 3C18802E */  lui        $t8, %hi(D_802DDC88)
    /* 1900F4 802D75E4 2718DC88 */  addiu      $t8, $t8, %lo(D_802DDC88)
    /* 1900F8 802D75E8 AFB80010 */  sw         $t8, 0x10($sp)
    /* 1900FC 802D75EC 93A40063 */  lbu        $a0, 0x63($sp)
    /* 190100 802D75F0 0C0207C6 */  jal        func_80081F18_90EC8
    /* 190104 802D75F4 A7AF003A */   sh        $t7, 0x3A($sp)
    /* 190108 802D75F8 24010002 */  addiu      $at, $zero, 0x2
    /* 19010C 802D75FC 54410007 */  bnel       $v0, $at, .L802D761C_19012C
    /* 190110 802D7600 8602001E */   lh        $v0, 0x1E($s0)
    /* 190114 802D7604 8E190020 */  lw         $t9, 0x20($s0)
    /* 190118 802D7608 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
    /* 19011C 802D760C 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
    /* 190120 802D7610 03215824 */  and        $t3, $t9, $at
    /* 190124 802D7614 AE0B0020 */  sw         $t3, 0x20($s0)
  .L802D7618_190128:
    /* 190128 802D7618 8602001E */  lh         $v0, 0x1E($s0)
  .L802D761C_19012C:
    /* 19012C 802D761C 10400002 */  beqz       $v0, .L802D7628_190138
    /* 190130 802D7620 244CFFFF */   addiu     $t4, $v0, -0x1
    /* 190134 802D7624 A60C001E */  sh         $t4, 0x1E($s0)
  .L802D7628_190138:
    /* 190138 802D7628 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 19013C 802D762C 8FB00020 */  lw         $s0, 0x20($sp)
    /* 190140 802D7630 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 190144 802D7634 03E00008 */  jr         $ra
    /* 190148 802D7638 00000000 */   nop
endlabel func_802D738C_18FE9C
