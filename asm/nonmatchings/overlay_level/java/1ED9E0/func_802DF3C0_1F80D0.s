nonmatching func_802DF3C0_1F80D0, 0x2DC

glabel func_802DF3C0_1F80D0
    /* 1F80D0 802DF3C0 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 1F80D4 802DF3C4 AFB10030 */  sw         $s1, 0x30($sp)
    /* 1F80D8 802DF3C8 309100FF */  andi       $s1, $a0, 0xFF
    /* 1F80DC 802DF3CC 24090050 */  addiu      $t1, $zero, 0x50
    /* 1F80E0 802DF3D0 02290019 */  multu      $s1, $t1
    /* 1F80E4 802DF3D4 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 1F80E8 802DF3D8 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 1F80EC 802DF3DC AFB0002C */  sw         $s0, 0x2C($sp)
    /* 1F80F0 802DF3E0 3C078015 */  lui        $a3, %hi(D_8014DD50)
    /* 1F80F4 802DF3E4 24E7DD50 */  addiu      $a3, $a3, %lo(D_8014DD50)
    /* 1F80F8 802DF3E8 AFA40070 */  sw         $a0, 0x70($sp)
    /* 1F80FC 802DF3EC AFA60078 */  sw         $a2, 0x78($sp)
    /* 1F8100 802DF3F0 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 1F8104 802DF3F4 240605DC */  addiu      $a2, $zero, 0x5DC
    /* 1F8108 802DF3F8 00007012 */  mflo       $t6
    /* 1F810C 802DF3FC 010E8021 */  addu       $s0, $t0, $t6
    /* 1F8110 802DF400 860F000C */  lh         $t7, 0xC($s0)
    /* 1F8114 802DF404 8E020020 */  lw         $v0, 0x20($s0)
    /* 1F8118 802DF408 920E001A */  lbu        $t6, 0x1A($s0)
    /* 1F811C 802DF40C 000FC100 */  sll        $t8, $t7, 4
    /* 1F8120 802DF410 00F8C821 */  addu       $t9, $a3, $t8
    /* 1F8124 802DF414 832A000C */  lb         $t2, 0xC($t9)
    /* 1F8128 802DF418 304F2000 */  andi       $t7, $v0, 0x2000
    /* 1F812C 802DF41C 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F8130 802DF420 A7AA0056 */  sh         $t2, 0x56($sp)
    /* 1F8134 802DF424 87AB0056 */  lh         $t3, 0x56($sp)
    /* 1F8138 802DF428 A3AE0053 */  sb         $t6, 0x53($sp)
    /* 1F813C 802DF42C 000B6100 */  sll        $t4, $t3, 4
    /* 1F8140 802DF430 00EC1821 */  addu       $v1, $a3, $t4
    /* 1F8144 802DF434 806D000C */  lb         $t5, 0xC($v1)
    /* 1F8148 802DF438 11E00069 */  beqz       $t7, .L802DF5E0_1F82F0
    /* 1F814C 802DF43C A7AD0054 */   sh        $t5, 0x54($sp)
    /* 1F8150 802DF440 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F8154 802DF444 AFA30044 */  sw         $v1, 0x44($sp)
    /* 1F8158 802DF448 0C0B7C7E */  jal        func_802DF1F8_1F7F08
    /* 1F815C 802DF44C AFA50074 */   sw        $a1, 0x74($sp)
    /* 1F8160 802DF450 8602001E */  lh         $v0, 0x1E($s0)
    /* 1F8164 802DF454 8FA50074 */  lw         $a1, 0x74($sp)
    /* 1F8168 802DF458 10400003 */  beqz       $v0, .L802DF468_1F8178
    /* 1F816C 802DF45C 2458FFFF */   addiu     $t8, $v0, -0x1
    /* 1F8170 802DF460 10000089 */  b          .L802DF688_1F8398
    /* 1F8174 802DF464 A618001E */   sh        $t8, 0x1E($s0)
  .L802DF468_1F8178:
    /* 1F8178 802DF468 8E190020 */  lw         $t9, 0x20($s0)
    /* 1F817C 802DF46C 83A40055 */  lb         $a0, 0x55($sp)
    /* 1F8180 802DF470 27A60064 */  addiu      $a2, $sp, 0x64
    /* 1F8184 802DF474 332A8000 */  andi       $t2, $t9, 0x8000
    /* 1F8188 802DF478 51400084 */  beql       $t2, $zero, .L802DF68C_1F839C
    /* 1F818C 802DF47C 8FBF0034 */   lw        $ra, 0x34($sp)
    /* 1F8190 802DF480 AFA40040 */  sw         $a0, 0x40($sp)
    /* 1F8194 802DF484 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 1F8198 802DF488 AFA50074 */   sw        $a1, 0x74($sp)
    /* 1F819C 802DF48C 8FA50074 */  lw         $a1, 0x74($sp)
    /* 1F81A0 802DF490 8FAB0064 */  lw         $t3, 0x64($sp)
    /* 1F81A4 802DF494 27A60064 */  addiu      $a2, $sp, 0x64
    /* 1F81A8 802DF498 A4AB0000 */  sh         $t3, 0x0($a1)
    /* 1F81AC 802DF49C 8FAC0068 */  lw         $t4, 0x68($sp)
    /* 1F81B0 802DF4A0 A4AC0002 */  sh         $t4, 0x2($a1)
    /* 1F81B4 802DF4A4 8FAD006C */  lw         $t5, 0x6C($sp)
    /* 1F81B8 802DF4A8 A4AD0004 */  sh         $t5, 0x4($a1)
    /* 1F81BC 802DF4AC 83A40057 */  lb         $a0, 0x57($sp)
    /* 1F81C0 802DF4B0 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 1F81C4 802DF4B4 AFA4003C */   sw        $a0, 0x3C($sp)
    /* 1F81C8 802DF4B8 83A40043 */  lb         $a0, 0x43($sp)
    /* 1F81CC 802DF4BC 8FA50078 */  lw         $a1, 0x78($sp)
    /* 1F81D0 802DF4C0 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 1F81D4 802DF4C4 27A60058 */   addiu     $a2, $sp, 0x58
    /* 1F81D8 802DF4C8 8FA50078 */  lw         $a1, 0x78($sp)
    /* 1F81DC 802DF4CC 8FAE0058 */  lw         $t6, 0x58($sp)
    /* 1F81E0 802DF4D0 27A60058 */  addiu      $a2, $sp, 0x58
    /* 1F81E4 802DF4D4 A4AE0000 */  sh         $t6, 0x0($a1)
    /* 1F81E8 802DF4D8 8FAF005C */  lw         $t7, 0x5C($sp)
    /* 1F81EC 802DF4DC A4AF0002 */  sh         $t7, 0x2($a1)
    /* 1F81F0 802DF4E0 8FB80060 */  lw         $t8, 0x60($sp)
    /* 1F81F4 802DF4E4 A4B80004 */  sh         $t8, 0x4($a1)
    /* 1F81F8 802DF4E8 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 1F81FC 802DF4EC 83A4003F */   lb        $a0, 0x3F($sp)
    /* 1F8200 802DF4F0 93B90053 */  lbu        $t9, 0x53($sp)
    /* 1F8204 802DF4F4 3C0B8025 */  lui        $t3, %hi(alienSpecs)
    /* 1F8208 802DF4F8 256B6680 */  addiu      $t3, $t3, %lo(alienSpecs)
    /* 1F820C 802DF4FC 00195080 */  sll        $t2, $t9, 2
    /* 1F8210 802DF500 01595023 */  subu       $t2, $t2, $t9
    /* 1F8214 802DF504 000A5080 */  sll        $t2, $t2, 2
    /* 1F8218 802DF508 01595021 */  addu       $t2, $t2, $t9
    /* 1F821C 802DF50C 000A50C0 */  sll        $t2, $t2, 3
    /* 1F8220 802DF510 014B1021 */  addu       $v0, $t2, $t3
    /* 1F8224 802DF514 8FAC0064 */  lw         $t4, 0x64($sp)
    /* 1F8228 802DF518 8FAD0068 */  lw         $t5, 0x68($sp)
    /* 1F822C 802DF51C 8FAE006C */  lw         $t6, 0x6C($sp)
    /* 1F8230 802DF520 8FAF0058 */  lw         $t7, 0x58($sp)
    /* 1F8234 802DF524 8FB8005C */  lw         $t8, 0x5C($sp)
    /* 1F8238 802DF528 8FB90060 */  lw         $t9, 0x60($sp)
    /* 1F823C 802DF52C 24040080 */  addiu      $a0, $zero, 0x80
    /* 1F8240 802DF530 24050010 */  addiu      $a1, $zero, 0x10
    /* 1F8244 802DF534 A44C0020 */  sh         $t4, 0x20($v0)
    /* 1F8248 802DF538 A44D0022 */  sh         $t5, 0x22($v0)
    /* 1F824C 802DF53C A44E0024 */  sh         $t6, 0x24($v0)
    /* 1F8250 802DF540 A44F002C */  sh         $t7, 0x2C($v0)
    /* 1F8254 802DF544 A458002E */  sh         $t8, 0x2E($v0)
    /* 1F8258 802DF548 0C021C36 */  jal        func_800870D8_96088
    /* 1F825C 802DF54C A4590030 */   sh        $t9, 0x30($v0)
    /* 1F8260 802DF550 87AA0054 */  lh         $t2, 0x54($sp)
    /* 1F8264 802DF554 3C0C8015 */  lui        $t4, %hi(D_8014DD50)
    /* 1F8268 802DF558 8FAF0044 */  lw         $t7, 0x44($sp)
    /* 1F826C 802DF55C 258CDD50 */  addiu      $t4, $t4, %lo(D_8014DD50)
    /* 1F8270 802DF560 000A5900 */  sll        $t3, $t2, 4
    /* 1F8274 802DF564 016C1821 */  addu       $v1, $t3, $t4
    /* 1F8278 802DF568 946D0006 */  lhu        $t5, 0x6($v1)
    /* 1F827C 802DF56C 95F80006 */  lhu        $t8, 0x6($t7)
    /* 1F8280 802DF570 AFA30040 */  sw         $v1, 0x40($sp)
    /* 1F8284 802DF574 004D7023 */  subu       $t6, $v0, $t5
    /* 1F8288 802DF578 01D83023 */  subu       $a2, $t6, $t8
    /* 1F828C 802DF57C 0006CC00 */  sll        $t9, $a2, 16
    /* 1F8290 802DF580 00193403 */  sra        $a2, $t9, 16
    /* 1F8294 802DF584 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F8298 802DF588 0C021B5C */  jal        func_80086D70_95D20
    /* 1F829C 802DF58C 00002825 */   or        $a1, $zero, $zero
    /* 1F82A0 802DF590 A600001E */  sh         $zero, 0x1E($s0)
    /* 1F82A4 802DF594 24040080 */  addiu      $a0, $zero, 0x80
    /* 1F82A8 802DF598 0C021C36 */  jal        func_800870D8_96088
    /* 1F82AC 802DF59C 24050010 */   addiu     $a1, $zero, 0x10
    /* 1F82B0 802DF5A0 8FAB0040 */  lw         $t3, 0x40($sp)
    /* 1F82B4 802DF5A4 8FAF0044 */  lw         $t7, 0x44($sp)
    /* 1F82B8 802DF5A8 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F82BC 802DF5AC 956C0006 */  lhu        $t4, 0x6($t3)
    /* 1F82C0 802DF5B0 95EE0006 */  lhu        $t6, 0x6($t7)
    /* 1F82C4 802DF5B4 24050001 */  addiu      $a1, $zero, 0x1
    /* 1F82C8 802DF5B8 004C6823 */  subu       $t5, $v0, $t4
    /* 1F82CC 802DF5BC 01AE3023 */  subu       $a2, $t5, $t6
    /* 1F82D0 802DF5C0 0006C400 */  sll        $t8, $a2, 16
    /* 1F82D4 802DF5C4 0C021B5C */  jal        func_80086D70_95D20
    /* 1F82D8 802DF5C8 00183403 */   sra       $a2, $t8, 16
    /* 1F82DC 802DF5CC 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 1F82E0 802DF5D0 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 1F82E4 802DF5D4 01415824 */  and        $t3, $t2, $at
    /* 1F82E8 802DF5D8 1000002B */  b          .L802DF688_1F8398
    /* 1F82EC 802DF5DC AE0B0020 */   sw        $t3, 0x20($s0)
  .L802DF5E0_1F82F0:
    /* 1F82F0 802DF5E0 920C0025 */  lbu        $t4, 0x25($s0)
    /* 1F82F4 802DF5E4 34592000 */  ori        $t9, $v0, 0x2000
    /* 1F82F8 802DF5E8 240A0005 */  addiu      $t2, $zero, 0x5
    /* 1F82FC 802DF5EC 01890019 */  multu      $t4, $t1
    /* 1F8300 802DF5F0 00007812 */  mflo       $t7
    /* 1F8304 802DF5F4 010F6821 */  addu       $t5, $t0, $t7
    /* 1F8308 802DF5F8 8DAE0020 */  lw         $t6, 0x20($t5)
    /* 1F830C 802DF5FC 240DFC18 */  addiu      $t5, $zero, -0x3E8
    /* 1F8310 802DF600 31D88000 */  andi       $t8, $t6, 0x8000
    /* 1F8314 802DF604 13000008 */  beqz       $t8, .L802DF628_1F8338
    /* 1F8318 802DF608 240E07D0 */   addiu     $t6, $zero, 0x7D0
    /* 1F831C 802DF60C 87AB0054 */  lh         $t3, 0x54($sp)
    /* 1F8320 802DF610 AE190020 */  sw         $t9, 0x20($s0)
    /* 1F8324 802DF614 A60A001E */  sh         $t2, 0x1E($s0)
    /* 1F8328 802DF618 000B6100 */  sll        $t4, $t3, 4
    /* 1F832C 802DF61C 00EC7821 */  addu       $t7, $a3, $t4
    /* 1F8330 802DF620 A5E0000E */  sh         $zero, 0xE($t7)
    /* 1F8334 802DF624 A460000E */  sh         $zero, 0xE($v1)
  .L802DF628_1F8338:
    /* 1F8338 802DF628 24180014 */  addiu      $t8, $zero, 0x14
    /* 1F833C 802DF62C 2419001E */  addiu      $t9, $zero, 0x1E
    /* 1F8340 802DF630 AFB90020 */  sw         $t9, 0x20($sp)
    /* 1F8344 802DF634 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 1F8348 802DF638 87A50054 */  lh         $a1, 0x54($sp)
    /* 1F834C 802DF63C 240709C4 */  addiu      $a3, $zero, 0x9C4
    /* 1F8350 802DF640 AFA00010 */  sw         $zero, 0x10($sp)
    /* 1F8354 802DF644 AFAD0014 */  sw         $t5, 0x14($sp)
    /* 1F8358 802DF648 0C0224F2 */  jal        func_800893C8_98378
    /* 1F835C 802DF64C AFAE0018 */   sw        $t6, 0x18($sp)
    /* 1F8360 802DF650 240AFA24 */  addiu      $t2, $zero, -0x5DC
    /* 1F8364 802DF654 240B0BB8 */  addiu      $t3, $zero, 0xBB8
    /* 1F8368 802DF658 240C0014 */  addiu      $t4, $zero, 0x14
    /* 1F836C 802DF65C 240F001E */  addiu      $t7, $zero, 0x1E
    /* 1F8370 802DF660 AFAF0020 */  sw         $t7, 0x20($sp)
    /* 1F8374 802DF664 AFAC001C */  sw         $t4, 0x1C($sp)
    /* 1F8378 802DF668 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 1F837C 802DF66C AFAA0014 */  sw         $t2, 0x14($sp)
    /* 1F8380 802DF670 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F8384 802DF674 87A50056 */  lh         $a1, 0x56($sp)
    /* 1F8388 802DF678 240603E8 */  addiu      $a2, $zero, 0x3E8
    /* 1F838C 802DF67C 240707D0 */  addiu      $a3, $zero, 0x7D0
    /* 1F8390 802DF680 0C0224F2 */  jal        func_800893C8_98378
    /* 1F8394 802DF684 AFA00010 */   sw        $zero, 0x10($sp)
  .L802DF688_1F8398:
    /* 1F8398 802DF688 8FBF0034 */  lw         $ra, 0x34($sp)
  .L802DF68C_1F839C:
    /* 1F839C 802DF68C 8FB0002C */  lw         $s0, 0x2C($sp)
    /* 1F83A0 802DF690 8FB10030 */  lw         $s1, 0x30($sp)
    /* 1F83A4 802DF694 03E00008 */  jr         $ra
    /* 1F83A8 802DF698 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_802DF3C0_1F80D0
