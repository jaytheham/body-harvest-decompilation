nonmatching func_802DAEBC_2BD2EC, 0x4D4

glabel func_802DAEBC_2BD2EC
    /* 2BD2EC 802DAEBC 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 2BD2F0 802DAEC0 AFA40050 */  sw         $a0, 0x50($sp)
    /* 2BD2F4 802DAEC4 93AF0053 */  lbu        $t7, 0x53($sp)
    /* 2BD2F8 802DAEC8 3C198005 */  lui        $t9, %hi(alienInstances)
    /* 2BD2FC 802DAECC 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* 2BD300 802DAED0 000FC080 */  sll        $t8, $t7, 2
    /* 2BD304 802DAED4 030FC021 */  addu       $t8, $t8, $t7
    /* 2BD308 802DAED8 0018C100 */  sll        $t8, $t8, 4
    /* 2BD30C 802DAEDC 03191821 */  addu       $v1, $t8, $t9
    /* 2BD310 802DAEE0 846A000C */  lh         $t2, 0xC($v1)
    /* 2BD314 802DAEE4 9069001A */  lbu        $t1, 0x1A($v1)
    /* 2BD318 802DAEE8 3C068015 */  lui        $a2, %hi(D_8014DD50)
    /* 2BD31C 802DAEEC 314B00FF */  andi       $t3, $t2, 0xFF
    /* 2BD320 802DAEF0 24C6DD50 */  addiu      $a2, $a2, %lo(D_8014DD50)
    /* 2BD324 802DAEF4 000B6100 */  sll        $t4, $t3, 4
    /* 2BD328 802DAEF8 240E0190 */  addiu      $t6, $zero, 0x190
    /* 2BD32C 802DAEFC 00CC6821 */  addu       $t5, $a2, $t4
    /* 2BD330 802DAF00 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2BD334 802DAF04 AFAE0038 */  sw         $t6, 0x38($sp)
    /* 2BD338 802DAF08 AFAD0028 */  sw         $t5, 0x28($sp)
    /* 2BD33C 802DAF0C A3AA004E */  sb         $t2, 0x4E($sp)
    /* 2BD340 802DAF10 A7A90030 */  sh         $t1, 0x30($sp)
    /* 2BD344 802DAF14 81B8000C */  lb         $t8, 0xC($t5)
    /* 2BD348 802DAF18 8C620020 */  lw         $v0, 0x20($v1)
    /* 2BD34C 802DAF1C 331900FF */  andi       $t9, $t8, 0xFF
    /* 2BD350 802DAF20 00194900 */  sll        $t1, $t9, 4
    /* 2BD354 802DAF24 00C95021 */  addu       $t2, $a2, $t1
    /* 2BD358 802DAF28 9147000D */  lbu        $a3, 0xD($t2)
    /* 2BD35C 802DAF2C 84690014 */  lh         $t1, 0x14($v1)
    /* 2BD360 802DAF30 84790000 */  lh         $t9, 0x0($v1)
    /* 2BD364 802DAF34 00075900 */  sll        $t3, $a3, 4
    /* 2BD368 802DAF38 00CB2821 */  addu       $a1, $a2, $t3
    /* 2BD36C 802DAF3C 80AC000C */  lb         $t4, 0xC($a1)
    /* 2BD370 802DAF40 90A8000D */  lbu        $t0, 0xD($a1)
    /* 2BD374 802DAF44 846B0004 */  lh         $t3, 0x4($v1)
    /* 2BD378 802DAF48 A3AC004C */  sb         $t4, 0x4C($sp)
    /* 2BD37C 802DAF4C 00086900 */  sll        $t5, $t0, 4
    /* 2BD380 802DAF50 846C0018 */  lh         $t4, 0x18($v1)
    /* 2BD384 802DAF54 00CD7021 */  addu       $t6, $a2, $t5
    /* 2BD388 802DAF58 A3B8004F */  sb         $t8, 0x4F($sp)
    /* 2BD38C 802DAF5C 81D8000C */  lb         $t8, 0xC($t6)
    /* 2BD390 802DAF60 304E4000 */  andi       $t6, $v0, 0x4000
    /* 2BD394 802DAF64 03295023 */  subu       $t2, $t9, $t1
    /* 2BD398 802DAF68 016C6823 */  subu       $t5, $t3, $t4
    /* 2BD39C 802DAF6C AFAA0040 */  sw         $t2, 0x40($sp)
    /* 2BD3A0 802DAF70 AFAD003C */  sw         $t5, 0x3C($sp)
    /* 2BD3A4 802DAF74 15C00056 */  bnez       $t6, .L802DB0D0_2BD500
    /* 2BD3A8 802DAF78 A3B80049 */   sb        $t8, 0x49($sp)
    /* 2BD3AC 802DAF7C 014A0019 */  multu      $t2, $t2
    /* 2BD3B0 802DAF80 3C010012 */  lui        $at, (0x127691 >> 16)
    /* 2BD3B4 802DAF84 34217691 */  ori        $at, $at, (0x127691 & 0xFFFF)
    /* 2BD3B8 802DAF88 0000C812 */  mflo       $t9
    /* 2BD3BC 802DAF8C 00000000 */  nop
    /* 2BD3C0 802DAF90 00000000 */  nop
    /* 2BD3C4 802DAF94 01AD0019 */  multu      $t5, $t5
    /* 2BD3C8 802DAF98 00005012 */  mflo       $t2
    /* 2BD3CC 802DAF9C 032A3021 */  addu       $a2, $t9, $t2
    /* 2BD3D0 802DAFA0 00C1082A */  slt        $at, $a2, $at
    /* 2BD3D4 802DAFA4 14200038 */  bnez       $at, .L802DB088_2BD4B8
    /* 2BD3D8 802DAFA8 3C010013 */   lui       $at, (0x1312D0 >> 16)
    /* 2BD3DC 802DAFAC 342112D0 */  ori        $at, $at, (0x1312D0 & 0xFFFF)
    /* 2BD3E0 802DAFB0 00C1082A */  slt        $at, $a2, $at
    /* 2BD3E4 802DAFB4 10200034 */  beqz       $at, .L802DB088_2BD4B8
    /* 2BD3E8 802DAFB8 01E02025 */   or        $a0, $t7, $zero
    /* 2BD3EC 802DAFBC 24050400 */  addiu      $a1, $zero, 0x400
    /* 2BD3F0 802DAFC0 AFA3002C */  sw         $v1, 0x2C($sp)
    /* 2BD3F4 802DAFC4 0C0213FA */  jal        func_80084FE8_93F98
    /* 2BD3F8 802DAFC8 AFA60024 */   sw        $a2, 0x24($sp)
    /* 2BD3FC 802DAFCC 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 2BD400 802DAFD0 1040002D */  beqz       $v0, .L802DB088_2BD4B8
    /* 2BD404 802DAFD4 8FA60024 */   lw        $a2, 0x24($sp)
    /* 2BD408 802DAFD8 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 2BD40C 802DAFDC 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 2BD410 802DAFE0 3C0D8022 */  lui        $t5, %hi(D_80222A70)
    /* 2BD414 802DAFE4 8DAD2A70 */  lw         $t5, %lo(D_80222A70)($t5)
    /* 2BD418 802DAFE8 856C0002 */  lh         $t4, 0x2($t3)
    /* 2BD41C 802DAFEC 87AE0030 */  lh         $t6, 0x30($sp)
    /* 2BD420 802DAFF0 3C098025 */  lui        $t1, %hi(D_802566BA)
    /* 2BD424 802DAFF4 018D082A */  slt        $at, $t4, $t5
    /* 2BD428 802DAFF8 14200023 */  bnez       $at, .L802DB088_2BD4B8
    /* 2BD42C 802DAFFC 000EC080 */   sll       $t8, $t6, 2
    /* 2BD430 802DB000 030EC023 */  subu       $t8, $t8, $t6
    /* 2BD434 802DB004 0018C080 */  sll        $t8, $t8, 2
    /* 2BD438 802DB008 030EC021 */  addu       $t8, $t8, $t6
    /* 2BD43C 802DB00C 0018C0C0 */  sll        $t8, $t8, 3
    /* 2BD440 802DB010 01384821 */  addu       $t1, $t1, $t8
    /* 2BD444 802DB014 952966BA */  lhu        $t1, %lo(D_802566BA)($t1)
    /* 2BD448 802DB018 846A001C */  lh         $t2, 0x1C($v1)
    /* 2BD44C 802DB01C 05210003 */  bgez       $t1, .L802DB02C_2BD45C
    /* 2BD450 802DB020 0009C883 */   sra       $t9, $t1, 2
    /* 2BD454 802DB024 25210003 */  addiu      $at, $t1, 0x3
    /* 2BD458 802DB028 0001C883 */  sra        $t9, $at, 2
  .L802DB02C_2BD45C:
    /* 2BD45C 802DB02C 032A082A */  slt        $at, $t9, $t2
    /* 2BD460 802DB030 50200016 */  beql       $at, $zero, .L802DB08C_2BD4BC
    /* 2BD464 802DB034 3C010005 */   lui       $at, (0x57E40 >> 16)
    /* 2BD468 802DB038 0C000E38 */  jal        func_800038E0_44E0
    /* 2BD46C 802DB03C AFA3002C */   sw        $v1, 0x2C($sp)
    /* 2BD470 802DB040 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 2BD474 802DB044 04410004 */  bgez       $v0, .L802DB058_2BD488
    /* 2BD478 802DB048 304F0001 */   andi      $t7, $v0, 0x1
    /* 2BD47C 802DB04C 11E00002 */  beqz       $t7, .L802DB058_2BD488
    /* 2BD480 802DB050 00000000 */   nop
    /* 2BD484 802DB054 25EFFFFE */  addiu      $t7, $t7, -0x2
  .L802DB058_2BD488:
    /* 2BD488 802DB058 11E00009 */  beqz       $t7, .L802DB080_2BD4B0
    /* 2BD48C 802DB05C 24180078 */   addiu     $t8, $zero, 0x78
    /* 2BD490 802DB060 8C6B0020 */  lw         $t3, 0x20($v1)
    /* 2BD494 802DB064 A078003C */  sb         $t8, 0x3C($v1)
    /* 2BD498 802DB068 A0600036 */  sb         $zero, 0x36($v1)
    /* 2BD49C 802DB06C 356C4000 */  ori        $t4, $t3, 0x4000
    /* 2BD4A0 802DB070 AC6C0020 */  sw         $t4, 0x20($v1)
    /* 2BD4A4 802DB074 358E2000 */  ori        $t6, $t4, 0x2000
    /* 2BD4A8 802DB078 AC6E0020 */  sw         $t6, 0x20($v1)
    /* 2BD4AC 802DB07C A460001E */  sh         $zero, 0x1E($v1)
  .L802DB080_2BD4B0:
    /* 2BD4B0 802DB080 10000013 */  b          .L802DB0D0_2BD500
    /* 2BD4B4 802DB084 8C620020 */   lw        $v0, 0x20($v1)
  .L802DB088_2BD4B8:
    /* 2BD4B8 802DB088 3C010005 */  lui        $at, (0x57E40 >> 16)
  .L802DB08C_2BD4BC:
    /* 2BD4BC 802DB08C 34217E40 */  ori        $at, $at, (0x57E40 & 0xFFFF)
    /* 2BD4C0 802DB090 00C1082A */  slt        $at, $a2, $at
    /* 2BD4C4 802DB094 1020000E */  beqz       $at, .L802DB0D0_2BD500
    /* 2BD4C8 802DB098 8C620020 */   lw        $v0, 0x20($v1)
    /* 2BD4CC 802DB09C 30490010 */  andi       $t1, $v0, 0x10
    /* 2BD4D0 802DB0A0 5520000C */  bnel       $t1, $zero, .L802DB0D4_2BD504
    /* 2BD4D4 802DB0A4 304D2000 */   andi      $t5, $v0, 0x2000
    /* 2BD4D8 802DB0A8 84790012 */  lh         $t9, 0x12($v1)
    /* 2BD4DC 802DB0AC 344A0010 */  ori        $t2, $v0, 0x10
    /* 2BD4E0 802DB0B0 240C0064 */  addiu      $t4, $zero, 0x64
    /* 2BD4E4 802DB0B4 5B200007 */  blezl      $t9, .L802DB0D4_2BD504
    /* 2BD4E8 802DB0B8 304D2000 */   andi      $t5, $v0, 0x2000
    /* 2BD4EC 802DB0BC AC6A0020 */  sw         $t2, 0x20($v1)
    /* 2BD4F0 802DB0C0 35422000 */  ori        $v0, $t2, 0x2000
    /* 2BD4F4 802DB0C4 AC620020 */  sw         $v0, 0x20($v1)
    /* 2BD4F8 802DB0C8 A06C0026 */  sb         $t4, 0x26($v1)
    /* 2BD4FC 802DB0CC A460001E */  sh         $zero, 0x1E($v1)
  .L802DB0D0_2BD500:
    /* 2BD500 802DB0D0 304D2000 */  andi       $t5, $v0, 0x2000
  .L802DB0D4_2BD504:
    /* 2BD504 802DB0D4 11A00057 */  beqz       $t5, .L802DB234_2BD664
    /* 2BD508 802DB0D8 93A40053 */   lbu       $a0, 0x53($sp)
    /* 2BD50C 802DB0DC 24050800 */  addiu      $a1, $zero, 0x800
    /* 2BD510 802DB0E0 0C0213FA */  jal        func_80084FE8_93F98
    /* 2BD514 802DB0E4 AFA3002C */   sw        $v1, 0x2C($sp)
    /* 2BD518 802DB0E8 1040004F */  beqz       $v0, .L802DB228_2BD658
    /* 2BD51C 802DB0EC 8FA3002C */   lw        $v1, 0x2C($sp)
    /* 2BD520 802DB0F0 8C620020 */  lw         $v0, 0x20($v1)
    /* 2BD524 802DB0F4 304E4000 */  andi       $t6, $v0, 0x4000
    /* 2BD528 802DB0F8 11C0001D */  beqz       $t6, .L802DB170_2BD5A0
    /* 2BD52C 802DB0FC 304B8000 */   andi      $t3, $v0, 0x8000
    /* 2BD530 802DB100 8078003C */  lb         $t8, 0x3C($v1)
    /* 2BD534 802DB104 93A9004C */  lbu        $t1, 0x4C($sp)
    /* 2BD538 802DB108 24050002 */  addiu      $a1, $zero, 0x2
    /* 2BD53C 802DB10C 2B010078 */  slti       $at, $t8, 0x78
    /* 2BD540 802DB110 10200045 */  beqz       $at, .L802DB228_2BD658
    /* 2BD544 802DB114 24060002 */   addiu     $a2, $zero, 0x2
    /* 2BD548 802DB118 93B90049 */  lbu        $t9, 0x49($sp)
    /* 2BD54C 802DB11C 3C0A802E */  lui        $t2, %hi(D_802E21E0)
    /* 2BD550 802DB120 254A21E0 */  addiu      $t2, $t2, %lo(D_802E21E0)
    /* 2BD554 802DB124 A7A90034 */  sh         $t1, 0x34($sp)
    /* 2BD558 802DB128 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 2BD55C 802DB12C 93A40053 */  lbu        $a0, 0x53($sp)
    /* 2BD560 802DB130 27A70034 */  addiu      $a3, $sp, 0x34
    /* 2BD564 802DB134 AFA3002C */  sw         $v1, 0x2C($sp)
    /* 2BD568 802DB138 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BD56C 802DB13C A7B90036 */   sh        $t9, 0x36($sp)
    /* 2BD570 802DB140 304F00FF */  andi       $t7, $v0, 0xFF
    /* 2BD574 802DB144 24010002 */  addiu      $at, $zero, 0x2
    /* 2BD578 802DB148 15E10002 */  bne        $t7, $at, .L802DB154_2BD584
    /* 2BD57C 802DB14C 8FA3002C */   lw        $v1, 0x2C($sp)
    /* 2BD580 802DB150 A0600036 */  sb         $zero, 0x36($v1)
  .L802DB154_2BD584:
    /* 2BD584 802DB154 93A40053 */  lbu        $a0, 0x53($sp)
    /* 2BD588 802DB158 00002825 */  or         $a1, $zero, $zero
    /* 2BD58C 802DB15C 24060020 */  addiu      $a2, $zero, 0x20
    /* 2BD590 802DB160 0C021C62 */  jal        func_80087188_96138
    /* 2BD594 802DB164 AFA3002C */   sw        $v1, 0x2C($sp)
    /* 2BD598 802DB168 1000002F */  b          .L802DB228_2BD658
    /* 2BD59C 802DB16C 8FA3002C */   lw        $v1, 0x2C($sp)
  .L802DB170_2BD5A0:
    /* 2BD5A0 802DB170 15600012 */  bnez       $t3, .L802DB1BC_2BD5EC
    /* 2BD5A4 802DB174 3C0C8005 */   lui       $t4, %hi(D_80052B34)
    /* 2BD5A8 802DB178 8D8C2B34 */  lw         $t4, %lo(D_80052B34)($t4)
    /* 2BD5AC 802DB17C 3C0E8022 */  lui        $t6, %hi(D_80222A70)
    /* 2BD5B0 802DB180 8DCE2A70 */  lw         $t6, %lo(D_80222A70)($t6)
    /* 2BD5B4 802DB184 858D0002 */  lh         $t5, 0x2($t4)
    /* 2BD5B8 802DB188 93A40053 */  lbu        $a0, 0x53($sp)
    /* 2BD5BC 802DB18C 24050001 */  addiu      $a1, $zero, 0x1
    /* 2BD5C0 802DB190 01AE082A */  slt        $at, $t5, $t6
    /* 2BD5C4 802DB194 14200009 */  bnez       $at, .L802DB1BC_2BD5EC
    /* 2BD5C8 802DB198 24060020 */   addiu     $a2, $zero, 0x20
    /* 2BD5CC 802DB19C 0C021C62 */  jal        func_80087188_96138
    /* 2BD5D0 802DB1A0 AFA3002C */   sw        $v1, 0x2C($sp)
    /* 2BD5D4 802DB1A4 10400005 */  beqz       $v0, .L802DB1BC_2BD5EC
    /* 2BD5D8 802DB1A8 8FA3002C */   lw        $v1, 0x2C($sp)
    /* 2BD5DC 802DB1AC 8C780020 */  lw         $t8, 0x20($v1)
    /* 2BD5E0 802DB1B0 A0600036 */  sb         $zero, 0x36($v1)
    /* 2BD5E4 802DB1B4 37098000 */  ori        $t1, $t8, 0x8000
    /* 2BD5E8 802DB1B8 AC690020 */  sw         $t1, 0x20($v1)
  .L802DB1BC_2BD5EC:
    /* 2BD5EC 802DB1BC 8C790020 */  lw         $t9, 0x20($v1)
    /* 2BD5F0 802DB1C0 93AF004C */  lbu        $t7, 0x4C($sp)
    /* 2BD5F4 802DB1C4 24050002 */  addiu      $a1, $zero, 0x2
    /* 2BD5F8 802DB1C8 332A8000 */  andi       $t2, $t9, 0x8000
    /* 2BD5FC 802DB1CC 11400016 */  beqz       $t2, .L802DB228_2BD658
    /* 2BD600 802DB1D0 24060002 */   addiu     $a2, $zero, 0x2
    /* 2BD604 802DB1D4 93AB0049 */  lbu        $t3, 0x49($sp)
    /* 2BD608 802DB1D8 3C0C802E */  lui        $t4, %hi(D_802E2228)
    /* 2BD60C 802DB1DC 258C2228 */  addiu      $t4, $t4, %lo(D_802E2228)
    /* 2BD610 802DB1E0 A7AF0034 */  sh         $t7, 0x34($sp)
    /* 2BD614 802DB1E4 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 2BD618 802DB1E8 93A40053 */  lbu        $a0, 0x53($sp)
    /* 2BD61C 802DB1EC 27A70034 */  addiu      $a3, $sp, 0x34
    /* 2BD620 802DB1F0 AFA3002C */  sw         $v1, 0x2C($sp)
    /* 2BD624 802DB1F4 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BD628 802DB1F8 A7AB0036 */   sh        $t3, 0x36($sp)
    /* 2BD62C 802DB1FC 304D00FF */  andi       $t5, $v0, 0xFF
    /* 2BD630 802DB200 24010002 */  addiu      $at, $zero, 0x2
    /* 2BD634 802DB204 15A10006 */  bne        $t5, $at, .L802DB220_2BD650
    /* 2BD638 802DB208 8FA3002C */   lw        $v1, 0x2C($sp)
    /* 2BD63C 802DB20C 8C6E0020 */  lw         $t6, 0x20($v1)
    /* 2BD640 802DB210 3C01FFFF */  lui        $at, (0xFFFF5FFF >> 16)
    /* 2BD644 802DB214 34215FFF */  ori        $at, $at, (0xFFFF5FFF & 0xFFFF)
    /* 2BD648 802DB218 01C1C024 */  and        $t8, $t6, $at
    /* 2BD64C 802DB21C AC780020 */  sw         $t8, 0x20($v1)
  .L802DB220_2BD650:
    /* 2BD650 802DB220 24090014 */  addiu      $t1, $zero, 0x14
    /* 2BD654 802DB224 A469001E */  sh         $t1, 0x1E($v1)
  .L802DB228_2BD658:
    /* 2BD658 802DB228 2419015E */  addiu      $t9, $zero, 0x15E
    /* 2BD65C 802DB22C AFB90038 */  sw         $t9, 0x38($sp)
    /* 2BD660 802DB230 8C620020 */  lw         $v0, 0x20($v1)
  .L802DB234_2BD664:
    /* 2BD664 802DB234 304A4000 */  andi       $t2, $v0, 0x4000
    /* 2BD668 802DB238 11400034 */  beqz       $t2, .L802DB30C_2BD73C
    /* 2BD66C 802DB23C 93A40053 */   lbu       $a0, 0x53($sp)
    /* 2BD670 802DB240 93A5004E */  lbu        $a1, 0x4E($sp)
    /* 2BD674 802DB244 0C021859 */  jal        func_80086164_95114
    /* 2BD678 802DB248 AFA3002C */   sw        $v1, 0x2C($sp)
    /* 2BD67C 802DB24C 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 2BD680 802DB250 8FAF0028 */  lw         $t7, 0x28($sp)
    /* 2BD684 802DB254 84620012 */  lh         $v0, 0x12($v1)
    /* 2BD688 802DB258 95EB000A */  lhu        $t3, 0xA($t7)
    /* 2BD68C 802DB25C 2442FF60 */  addiu      $v0, $v0, -0xA0
    /* 2BD690 802DB260 04410003 */  bgez       $v0, .L802DB270_2BD6A0
    /* 2BD694 802DB264 A46B000A */   sh        $t3, 0xA($v1)
    /* 2BD698 802DB268 10000002 */  b          .L802DB274_2BD6A4
    /* 2BD69C 802DB26C A4600012 */   sh        $zero, 0x12($v1)
  .L802DB270_2BD6A0:
    /* 2BD6A0 802DB270 A4620012 */  sh         $v0, 0x12($v1)
  .L802DB274_2BD6A4:
    /* 2BD6A4 802DB274 806C003C */  lb         $t4, 0x3C($v1)
    /* 2BD6A8 802DB278 8FAD0040 */  lw         $t5, 0x40($sp)
    /* 2BD6AC 802DB27C 5180001E */  beql       $t4, $zero, .L802DB2F8_2BD728
    /* 2BD6B0 802DB280 8C780020 */   lw        $t8, 0x20($v1)
    /* 2BD6B4 802DB284 01AD0019 */  multu      $t5, $t5
    /* 2BD6B8 802DB288 8FB8003C */  lw         $t8, 0x3C($sp)
    /* 2BD6BC 802DB28C 87AA0030 */  lh         $t2, 0x30($sp)
    /* 2BD6C0 802DB290 3C010005 */  lui        $at, (0x57E40 >> 16)
    /* 2BD6C4 802DB294 34217E40 */  ori        $at, $at, (0x57E40 & 0xFFFF)
    /* 2BD6C8 802DB298 000A7880 */  sll        $t7, $t2, 2
    /* 2BD6CC 802DB29C 01EA7823 */  subu       $t7, $t7, $t2
    /* 2BD6D0 802DB2A0 000F7880 */  sll        $t7, $t7, 2
    /* 2BD6D4 802DB2A4 01EA7821 */  addu       $t7, $t7, $t2
    /* 2BD6D8 802DB2A8 000F78C0 */  sll        $t7, $t7, 3
    /* 2BD6DC 802DB2AC 00007012 */  mflo       $t6
    /* 2BD6E0 802DB2B0 3C0B8025 */  lui        $t3, %hi(D_802566BA)
    /* 2BD6E4 802DB2B4 016F5821 */  addu       $t3, $t3, $t7
    /* 2BD6E8 802DB2B8 03180019 */  multu      $t8, $t8
    /* 2BD6EC 802DB2BC 00004812 */  mflo       $t1
    /* 2BD6F0 802DB2C0 01C9C821 */  addu       $t9, $t6, $t1
    /* 2BD6F4 802DB2C4 0321082A */  slt        $at, $t9, $at
    /* 2BD6F8 802DB2C8 5420000B */  bnel       $at, $zero, .L802DB2F8_2BD728
    /* 2BD6FC 802DB2CC 8C780020 */   lw        $t8, 0x20($v1)
    /* 2BD700 802DB2D0 956B66BA */  lhu        $t3, %lo(D_802566BA)($t3)
    /* 2BD704 802DB2D4 846D001C */  lh         $t5, 0x1C($v1)
    /* 2BD708 802DB2D8 05610003 */  bgez       $t3, .L802DB2E8_2BD718
    /* 2BD70C 802DB2DC 000B6083 */   sra       $t4, $t3, 2
    /* 2BD710 802DB2E0 25610003 */  addiu      $at, $t3, 0x3
    /* 2BD714 802DB2E4 00016083 */  sra        $t4, $at, 2
  .L802DB2E8_2BD718:
    /* 2BD718 802DB2E8 018D082A */  slt        $at, $t4, $t5
    /* 2BD71C 802DB2EC 54200006 */  bnel       $at, $zero, .L802DB308_2BD738
    /* 2BD720 802DB2F0 240900C8 */   addiu     $t1, $zero, 0xC8
    /* 2BD724 802DB2F4 8C780020 */  lw         $t8, 0x20($v1)
  .L802DB2F8_2BD728:
    /* 2BD728 802DB2F8 24019FFF */  addiu      $at, $zero, -0x6001
    /* 2BD72C 802DB2FC 03017024 */  and        $t6, $t8, $at
    /* 2BD730 802DB300 AC6E0020 */  sw         $t6, 0x20($v1)
    /* 2BD734 802DB304 240900C8 */  addiu      $t1, $zero, 0xC8
  .L802DB308_2BD738:
    /* 2BD738 802DB308 AFA90038 */  sw         $t1, 0x38($sp)
  .L802DB30C_2BD73C:
    /* 2BD73C 802DB30C 93A40053 */  lbu        $a0, 0x53($sp)
    /* 2BD740 802DB310 8FA50038 */  lw         $a1, 0x38($sp)
    /* 2BD744 802DB314 24060004 */  addiu      $a2, $zero, 0x4
    /* 2BD748 802DB318 0C023949 */  jal        func_8008E524_9D4D4
    /* 2BD74C 802DB31C AFA3002C */   sw        $v1, 0x2C($sp)
    /* 2BD750 802DB320 3C063D4C */  lui        $a2, (0x3D4CCCCD >> 16)
    /* 2BD754 802DB324 34C6CCCD */  ori        $a2, $a2, (0x3D4CCCCD & 0xFFFF)
    /* 2BD758 802DB328 93A40053 */  lbu        $a0, 0x53($sp)
    /* 2BD75C 802DB32C 00402825 */  or         $a1, $v0, $zero
    /* 2BD760 802DB330 0C029555 */  jal        func_800A5554_B4504
    /* 2BD764 802DB334 93A7004F */   lbu       $a3, 0x4F($sp)
    /* 2BD768 802DB338 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 2BD76C 802DB33C 8062003C */  lb         $v0, 0x3C($v1)
    /* 2BD770 802DB340 10400002 */  beqz       $v0, .L802DB34C_2BD77C
    /* 2BD774 802DB344 2459FFFF */   addiu     $t9, $v0, -0x1
    /* 2BD778 802DB348 A079003C */  sb         $t9, 0x3C($v1)
  .L802DB34C_2BD77C:
    /* 2BD77C 802DB34C 90620026 */  lbu        $v0, 0x26($v1)
    /* 2BD780 802DB350 10400003 */  beqz       $v0, .L802DB360_2BD790
    /* 2BD784 802DB354 244AFFFF */   addiu     $t2, $v0, -0x1
    /* 2BD788 802DB358 10000005 */  b          .L802DB370_2BD7A0
    /* 2BD78C 802DB35C A06A0026 */   sb        $t2, 0x26($v1)
  .L802DB360_2BD790:
    /* 2BD790 802DB360 8C6F0020 */  lw         $t7, 0x20($v1)
    /* 2BD794 802DB364 2401FFEF */  addiu      $at, $zero, -0x11
    /* 2BD798 802DB368 01E15824 */  and        $t3, $t7, $at
    /* 2BD79C 802DB36C AC6B0020 */  sw         $t3, 0x20($v1)
  .L802DB370_2BD7A0:
    /* 2BD7A0 802DB370 8462001E */  lh         $v0, 0x1E($v1)
    /* 2BD7A4 802DB374 10400002 */  beqz       $v0, .L802DB380_2BD7B0
    /* 2BD7A8 802DB378 244CFFFF */   addiu     $t4, $v0, -0x1
    /* 2BD7AC 802DB37C A46C001E */  sh         $t4, 0x1E($v1)
  .L802DB380_2BD7B0:
    /* 2BD7B0 802DB380 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 2BD7B4 802DB384 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 2BD7B8 802DB388 03E00008 */  jr         $ra
    /* 2BD7BC 802DB38C 00000000 */   nop
endlabel func_802DAEBC_2BD2EC
