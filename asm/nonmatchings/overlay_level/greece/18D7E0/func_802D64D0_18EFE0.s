nonmatching func_802D64D0_18EFE0, 0x434

glabel func_802D64D0_18EFE0
    /* 18EFE0 802D64D0 3C028015 */  lui        $v0, %hi(D_80157F94)
    /* 18EFE4 802D64D4 84427F94 */  lh         $v0, %lo(D_80157F94)($v0)
    /* 18EFE8 802D64D8 3C018015 */  lui        $at, %hi(D_80157F96)
    /* 18EFEC 802D64DC A4207F96 */  sh         $zero, %lo(D_80157F96)($at)
    /* 18EFF0 802D64E0 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 18EFF4 802D64E4 240100FF */  addiu      $at, $zero, 0xFF
    /* 18EFF8 802D64E8 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 18EFFC 802D64EC 10410021 */  beq        $v0, $at, .L802D6574_18F084
    /* 18F000 802D64F0 AFB00040 */   sw        $s0, 0x40($sp)
    /* 18F004 802D64F4 00027080 */  sll        $t6, $v0, 2
    /* 18F008 802D64F8 01C27021 */  addu       $t6, $t6, $v0
    /* 18F00C 802D64FC 000E7100 */  sll        $t6, $t6, 4
    /* 18F010 802D6500 3C108005 */  lui        $s0, %hi(D_800481B2)
    /* 18F014 802D6504 020E8021 */  addu       $s0, $s0, $t6
    /* 18F018 802D6508 921081B2 */  lbu        $s0, %lo(D_800481B2)($s0)
    /* 18F01C 802D650C 0C020039 */  jal        func_800800E4_8F094
    /* 18F020 802D6510 304400FF */   andi      $a0, $v0, 0xFF
    /* 18F024 802D6514 3C048015 */  lui        $a0, %hi(D_80157F95)
    /* 18F028 802D6518 0C020144 */  jal        func_80080510_8F4C0
    /* 18F02C 802D651C 90847F95 */   lbu       $a0, %lo(D_80157F95)($a0)
    /* 18F030 802D6520 3C028015 */  lui        $v0, %hi(D_80157F94)
    /* 18F034 802D6524 84427F94 */  lh         $v0, %lo(D_80157F94)($v0)
    /* 18F038 802D6528 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 18F03C 802D652C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 18F040 802D6530 00027880 */  sll        $t7, $v0, 2
    /* 18F044 802D6534 01E27821 */  addu       $t7, $t7, $v0
    /* 18F048 802D6538 000F7900 */  sll        $t7, $t7, 4
    /* 18F04C 802D653C 01F81821 */  addu       $v1, $t7, $t8
    /* 18F050 802D6540 8479000E */  lh         $t9, 0xE($v1)
    /* 18F054 802D6544 00104880 */  sll        $t1, $s0, 2
    /* 18F058 802D6548 01304823 */  subu       $t1, $t1, $s0
    /* 18F05C 802D654C 00094880 */  sll        $t1, $t1, 2
    /* 18F060 802D6550 01304821 */  addu       $t1, $t1, $s0
    /* 18F064 802D6554 A4790006 */  sh         $t9, 0x6($v1)
    /* 18F068 802D6558 3C198025 */  lui        $t9, %hi(D_802566C8)
    /* 18F06C 802D655C 000948C0 */  sll        $t1, $t1, 3
    /* 18F070 802D6560 0329C821 */  addu       $t9, $t9, $t1
    /* 18F074 802D6564 8F3966C8 */  lw         $t9, %lo(D_802566C8)($t9)
    /* 18F078 802D6568 304400FF */  andi       $a0, $v0, 0xFF
    /* 18F07C 802D656C 0320F809 */  jalr       $t9
    /* 18F080 802D6570 00000000 */   nop
  .L802D6574_18F084:
    /* 18F084 802D6574 3C108015 */  lui        $s0, %hi(D_80157F8C)
    /* 18F088 802D6578 26107F8C */  addiu      $s0, $s0, %lo(D_80157F8C)
    /* 18F08C 802D657C 86040000 */  lh         $a0, 0x0($s0)
    /* 18F090 802D6580 2C810009 */  sltiu      $at, $a0, 0x9
    /* 18F094 802D6584 102000D9 */  beqz       $at, .L802D68EC_18F3FC
    /* 18F098 802D6588 00045080 */   sll       $t2, $a0, 2
    /* 18F09C 802D658C 3C01802E */  lui        $at, %hi(jtbl_802DE374_overlay_level_greece)
    /* 18F0A0 802D6590 002A0821 */  addu       $at, $at, $t2
    /* 18F0A4 802D6594 8C2AE374 */  lw         $t2, %lo(jtbl_802DE374_overlay_level_greece)($at)
    /* 18F0A8 802D6598 01400008 */  jr         $t2
    /* 18F0AC 802D659C 00000000 */   nop
    /* 18F0B0 802D65A0 2404004A */  addiu      $a0, $zero, 0x4A
    /* 18F0B4 802D65A4 0C047498 */  jal        func_8011D260_12C210
    /* 18F0B8 802D65A8 2405FFF9 */   addiu     $a1, $zero, -0x7
    /* 18F0BC 802D65AC 3C018016 */  lui        $at, %hi(D_80159DDF)
    /* 18F0C0 802D65B0 A0229DDF */  sb         $v0, %lo(D_80159DDF)($at)
    /* 18F0C4 802D65B4 3C018016 */  lui        $at, %hi(D_80159DE0)
    /* 18F0C8 802D65B8 A4209DE0 */  sh         $zero, %lo(D_80159DE0)($at)
    /* 18F0CC 802D65BC 3C018016 */  lui        $at, %hi(D_80159DE2)
    /* 18F0D0 802D65C0 A4209DE2 */  sh         $zero, %lo(D_80159DE2)($at)
    /* 18F0D4 802D65C4 3C078015 */  lui        $a3, %hi(D_80157F8E)
    /* 18F0D8 802D65C8 3C088005 */  lui        $t0, %hi(D_80052554)
    /* 18F0DC 802D65CC 3C018016 */  lui        $at, %hi(D_80159DE4)
    /* 18F0E0 802D65D0 25082554 */  addiu      $t0, $t0, %lo(D_80052554)
    /* 18F0E4 802D65D4 24E77F8E */  addiu      $a3, $a3, %lo(D_80157F8E)
    /* 18F0E8 802D65D8 A4209DE4 */  sh         $zero, %lo(D_80159DE4)($at)
    /* 18F0EC 802D65DC 240B0400 */  addiu      $t3, $zero, 0x400
    /* 18F0F0 802D65E0 A4E00000 */  sh         $zero, 0x0($a3)
    /* 18F0F4 802D65E4 A50B0000 */  sh         $t3, 0x0($t0)
    /* 18F0F8 802D65E8 24044AF0 */  addiu      $a0, $zero, 0x4AF0
    /* 18F0FC 802D65EC 240503B6 */  addiu      $a1, $zero, 0x3B6
    /* 18F100 802D65F0 0C0336D0 */  jal        func_800CDB40_DCAF0
    /* 18F104 802D65F4 2406F99C */   addiu     $a2, $zero, -0x664
    /* 18F108 802D65F8 3C018015 */  lui        $at, %hi(D_80157F98)
    /* 18F10C 802D65FC A4227F98 */  sh         $v0, %lo(D_80157F98)($at)
    /* 18F110 802D6600 24044AFC */  addiu      $a0, $zero, 0x4AFC
    /* 18F114 802D6604 240503B6 */  addiu      $a1, $zero, 0x3B6
    /* 18F118 802D6608 0C0336D0 */  jal        func_800CDB40_DCAF0
    /* 18F11C 802D660C 2406F964 */   addiu     $a2, $zero, -0x69C
    /* 18F120 802D6610 3C018015 */  lui        $at, %hi(D_80157F9A)
    /* 18F124 802D6614 A4227F9A */  sh         $v0, %lo(D_80157F9A)($at)
    /* 18F128 802D6618 860C0000 */  lh         $t4, 0x0($s0)
    /* 18F12C 802D661C 24040000 */  addiu      $a0, $zero, 0x0
    /* 18F130 802D6620 2405002A */  addiu      $a1, $zero, 0x2A
    /* 18F134 802D6624 258D0001 */  addiu      $t5, $t4, 0x1
    /* 18F138 802D6628 0C001CB3 */  jal        func_800072CC_7ECC
    /* 18F13C 802D662C A60D0000 */   sh        $t5, 0x0($s0)
    /* 18F140 802D6630 0C01E55B */  jal        func_8007956C_8851C
    /* 18F144 802D6634 24040012 */   addiu     $a0, $zero, 0x12
    /* 18F148 802D6638 00027080 */  sll        $t6, $v0, 2
    /* 18F14C 802D663C 01C27021 */  addu       $t6, $t6, $v0
    /* 18F150 802D6640 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 18F154 802D6644 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 18F158 802D6648 000E7100 */  sll        $t6, $t6, 4
    /* 18F15C 802D664C 3C078005 */  lui        $a3, %hi(buildingInstances)
    /* 18F160 802D6650 01CF1821 */  addu       $v1, $t6, $t7
    /* 18F164 802D6654 8C790020 */  lw         $t9, 0x20($v1)
    /* 18F168 802D6658 24E70AD8 */  addiu      $a3, $a3, %lo(buildingInstances)
    /* 18F16C 802D665C 84E50918 */  lh         $a1, 0x918($a3)
    /* 18F170 802D6660 84E6091C */  lh         $a2, 0x91C($a3)
    /* 18F174 802D6664 3C01F7FF */  lui        $at, (0xF7FFFFFF >> 16)
    /* 18F178 802D6668 372A0100 */  ori        $t2, $t9, 0x100
    /* 18F17C 802D666C 3421FFFF */  ori        $at, $at, (0xF7FFFFFF & 0xFFFF)
    /* 18F180 802D6670 AC6A0020 */  sw         $t2, 0x20($v1)
    /* 18F184 802D6674 01416024 */  and        $t4, $t2, $at
    /* 18F188 802D6678 240D0002 */  addiu      $t5, $zero, 0x2
    /* 18F18C 802D667C 24B80080 */  addiu      $t8, $a1, 0x80
    /* 18F190 802D6680 24A90600 */  addiu      $t1, $a1, 0x600
    /* 18F194 802D6684 00408025 */  or         $s0, $v0, $zero
    /* 18F198 802D6688 A4780000 */  sh         $t8, 0x0($v1)
    /* 18F19C 802D668C A4690014 */  sh         $t1, 0x14($v1)
    /* 18F1A0 802D6690 AC6C0020 */  sw         $t4, 0x20($v1)
    /* 18F1A4 802D6694 A06D0024 */  sb         $t5, 0x24($v1)
    /* 18F1A8 802D6698 00402025 */  or         $a0, $v0, $zero
    /* 18F1AC 802D669C A4660004 */  sh         $a2, 0x4($v1)
    /* 18F1B0 802D66A0 0C01E866 */  jal        func_8007A198_89148
    /* 18F1B4 802D66A4 A4660018 */   sh        $a2, 0x18($v1)
    /* 18F1B8 802D66A8 3C018015 */  lui        $at, %hi(D_80157F94)
    /* 18F1BC 802D66AC 1000008F */  b          .L802D68EC_18F3FC
    /* 18F1C0 802D66B0 A4307F94 */   sh        $s0, %lo(D_80157F94)($at)
    /* 18F1C4 802D66B4 3C078015 */  lui        $a3, %hi(D_80157F8E)
    /* 18F1C8 802D66B8 24E77F8E */  addiu      $a3, $a3, %lo(D_80157F8E)
    /* 18F1CC 802D66BC 84E20000 */  lh         $v0, 0x0($a3)
    /* 18F1D0 802D66C0 248F0001 */  addiu      $t7, $a0, 0x1
    /* 18F1D4 802D66C4 284300D8 */  slti       $v1, $v0, 0xD8
    /* 18F1D8 802D66C8 244E0001 */  addiu      $t6, $v0, 0x1
    /* 18F1DC 802D66CC 14600087 */  bnez       $v1, .L802D68EC_18F3FC
    /* 18F1E0 802D66D0 A4EE0000 */   sh        $t6, 0x0($a3)
    /* 18F1E4 802D66D4 A4E00000 */  sh         $zero, 0x0($a3)
    /* 18F1E8 802D66D8 10000084 */  b          .L802D68EC_18F3FC
    /* 18F1EC 802D66DC A60F0000 */   sh        $t7, 0x0($s0)
    /* 18F1F0 802D66E0 0C038D78 */  jal        func_800E35E0_F2590
    /* 18F1F4 802D66E4 240400A0 */   addiu     $a0, $zero, 0xA0
    /* 18F1F8 802D66E8 86180000 */  lh         $t8, 0x0($s0)
    /* 18F1FC 802D66EC 27090001 */  addiu      $t1, $t8, 0x1
    /* 18F200 802D66F0 1000007E */  b          .L802D68EC_18F3FC
    /* 18F204 802D66F4 A6090000 */   sh        $t1, 0x0($s0)
    /* 18F208 802D66F8 0C038D78 */  jal        func_800E35E0_F2590
    /* 18F20C 802D66FC 240400FF */   addiu     $a0, $zero, 0xFF
    /* 18F210 802D6700 86190000 */  lh         $t9, 0x0($s0)
    /* 18F214 802D6704 272A0001 */  addiu      $t2, $t9, 0x1
    /* 18F218 802D6708 10000078 */  b          .L802D68EC_18F3FC
    /* 18F21C 802D670C A60A0000 */   sh        $t2, 0x0($s0)
    /* 18F220 802D6710 0C038D78 */  jal        func_800E35E0_F2590
    /* 18F224 802D6714 240400A0 */   addiu     $a0, $zero, 0xA0
    /* 18F228 802D6718 860B0000 */  lh         $t3, 0x0($s0)
    /* 18F22C 802D671C 256C0001 */  addiu      $t4, $t3, 0x1
    /* 18F230 802D6720 10000072 */  b          .L802D68EC_18F3FC
    /* 18F234 802D6724 A60C0000 */   sh        $t4, 0x0($s0)
    /* 18F238 802D6728 3C048015 */  lui        $a0, %hi(D_80157F98)
    /* 18F23C 802D672C 0C03375F */  jal        func_800CDD7C_DCD2C
    /* 18F240 802D6730 84847F98 */   lh        $a0, %lo(D_80157F98)($a0)
    /* 18F244 802D6734 3C048015 */  lui        $a0, %hi(D_80157F9A)
    /* 18F248 802D6738 0C03375F */  jal        func_800CDD7C_DCD2C
    /* 18F24C 802D673C 84847F9A */   lh        $a0, %lo(D_80157F9A)($a0)
    /* 18F250 802D6740 240D0006 */  addiu      $t5, $zero, 0x6
    /* 18F254 802D6744 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 18F258 802D6748 24044AFC */  addiu      $a0, $zero, 0x4AFC
    /* 18F25C 802D674C 240503A2 */  addiu      $a1, $zero, 0x3A2
    /* 18F260 802D6750 2406F980 */  addiu      $a2, $zero, -0x680
    /* 18F264 802D6754 0C037EEA */  jal        func_800DFBA8_EEB58
    /* 18F268 802D6758 240700B4 */   addiu     $a3, $zero, 0xB4
    /* 18F26C 802D675C 0C031F86 */  jal        func_800C7E18_D6DC8
    /* 18F270 802D6760 00000000 */   nop
    /* 18F274 802D6764 240E0032 */  addiu      $t6, $zero, 0x32
    /* 18F278 802D6768 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 18F27C 802D676C 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 18F280 802D6770 240F0028 */  addiu      $t7, $zero, 0x28
    /* 18F284 802D6774 24180032 */  addiu      $t8, $zero, 0x32
    /* 18F288 802D6778 2409000A */  addiu      $t1, $zero, 0xA
    /* 18F28C 802D677C 24190019 */  addiu      $t9, $zero, 0x19
    /* 18F290 802D6780 240A00B4 */  addiu      $t2, $zero, 0xB4
    /* 18F294 802D6784 240B005A */  addiu      $t3, $zero, 0x5A
    /* 18F298 802D6788 240C0050 */  addiu      $t4, $zero, 0x50
    /* 18F29C 802D678C 240D002D */  addiu      $t5, $zero, 0x2D
    /* 18F2A0 802D6790 AFAD0030 */  sw         $t5, 0x30($sp)
    /* 18F2A4 802D6794 AFAC002C */  sw         $t4, 0x2C($sp)
    /* 18F2A8 802D6798 AFAB0028 */  sw         $t3, 0x28($sp)
    /* 18F2AC 802D679C AFAA0024 */  sw         $t2, 0x24($sp)
    /* 18F2B0 802D67A0 AFB90020 */  sw         $t9, 0x20($sp)
    /* 18F2B4 802D67A4 AFA9001C */  sw         $t1, 0x1C($sp)
    /* 18F2B8 802D67A8 AFB80018 */  sw         $t8, 0x18($sp)
    /* 18F2BC 802D67AC AFAF0014 */  sw         $t7, 0x14($sp)
    /* 18F2C0 802D67B0 AFAE0034 */  sw         $t6, 0x34($sp)
    /* 18F2C4 802D67B4 24044AFC */  addiu      $a0, $zero, 0x4AFC
    /* 18F2C8 802D67B8 240503A2 */  addiu      $a1, $zero, 0x3A2
    /* 18F2CC 802D67BC 2406F980 */  addiu      $a2, $zero, -0x680
    /* 18F2D0 802D67C0 0C03297B */  jal        func_800CA5EC_D959C
    /* 18F2D4 802D67C4 24070028 */   addiu     $a3, $zero, 0x28
    /* 18F2D8 802D67C8 240F0032 */  addiu      $t7, $zero, 0x32
    /* 18F2DC 802D67CC AFAF0010 */  sw         $t7, 0x10($sp)
    /* 18F2E0 802D67D0 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 18F2E4 802D67D4 2418FFD8 */  addiu      $t8, $zero, -0x28
    /* 18F2E8 802D67D8 24090032 */  addiu      $t1, $zero, 0x32
    /* 18F2EC 802D67DC 2419000A */  addiu      $t9, $zero, 0xA
    /* 18F2F0 802D67E0 240A0019 */  addiu      $t2, $zero, 0x19
    /* 18F2F4 802D67E4 240B00B4 */  addiu      $t3, $zero, 0xB4
    /* 18F2F8 802D67E8 240C005A */  addiu      $t4, $zero, 0x5A
    /* 18F2FC 802D67EC 240D0050 */  addiu      $t5, $zero, 0x50
    /* 18F300 802D67F0 240E002D */  addiu      $t6, $zero, 0x2D
    /* 18F304 802D67F4 AFAE0030 */  sw         $t6, 0x30($sp)
    /* 18F308 802D67F8 AFAD002C */  sw         $t5, 0x2C($sp)
    /* 18F30C 802D67FC AFAC0028 */  sw         $t4, 0x28($sp)
    /* 18F310 802D6800 AFAB0024 */  sw         $t3, 0x24($sp)
    /* 18F314 802D6804 AFAA0020 */  sw         $t2, 0x20($sp)
    /* 18F318 802D6808 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 18F31C 802D680C AFA90018 */  sw         $t1, 0x18($sp)
    /* 18F320 802D6810 AFB80014 */  sw         $t8, 0x14($sp)
    /* 18F324 802D6814 AFAF0034 */  sw         $t7, 0x34($sp)
    /* 18F328 802D6818 24044AFC */  addiu      $a0, $zero, 0x4AFC
    /* 18F32C 802D681C 240503A2 */  addiu      $a1, $zero, 0x3A2
    /* 18F330 802D6820 2406F980 */  addiu      $a2, $zero, -0x680
    /* 18F334 802D6824 0C03297B */  jal        func_800CA5EC_D959C
    /* 18F338 802D6828 2407FFD8 */   addiu     $a3, $zero, -0x28
    /* 18F33C 802D682C 0C038D78 */  jal        func_800E35E0_F2590
    /* 18F340 802D6830 24040050 */   addiu     $a0, $zero, 0x50
    /* 18F344 802D6834 86180000 */  lh         $t8, 0x0($s0)
    /* 18F348 802D6838 27090001 */  addiu      $t1, $t8, 0x1
    /* 18F34C 802D683C A6090000 */  sh         $t1, 0x0($s0)
    /* 18F350 802D6840 3C078015 */  lui        $a3, %hi(D_80157F8E)
    /* 18F354 802D6844 24E77F8E */  addiu      $a3, $a3, %lo(D_80157F8E)
    /* 18F358 802D6848 84E20000 */  lh         $v0, 0x0($a3)
    /* 18F35C 802D684C 3C088005 */  lui        $t0, %hi(D_80052554)
    /* 18F360 802D6850 25082554 */  addiu      $t0, $t0, %lo(D_80052554)
    /* 18F364 802D6854 85190000 */  lh         $t9, 0x0($t0)
    /* 18F368 802D6858 000250C0 */  sll        $t2, $v0, 3
    /* 18F36C 802D685C 28430033 */  slti       $v1, $v0, 0x33
    /* 18F370 802D6860 244C0001 */  addiu      $t4, $v0, 0x1
    /* 18F374 802D6864 032A5823 */  subu       $t3, $t9, $t2
    /* 18F378 802D6868 A50B0000 */  sh         $t3, 0x0($t0)
    /* 18F37C 802D686C 1460001F */  bnez       $v1, .L802D68EC_18F3FC
    /* 18F380 802D6870 A4EC0000 */   sh        $t4, 0x0($a3)
    /* 18F384 802D6874 860D0000 */  lh         $t5, 0x0($s0)
    /* 18F388 802D6878 A4E00000 */  sh         $zero, 0x0($a3)
    /* 18F38C 802D687C 25AE0001 */  addiu      $t6, $t5, 0x1
    /* 18F390 802D6880 1000001A */  b          .L802D68EC_18F3FC
    /* 18F394 802D6884 A60E0000 */   sh        $t6, 0x0($s0)
    /* 18F398 802D6888 3C078015 */  lui        $a3, %hi(D_80157F8E)
    /* 18F39C 802D688C 24E77F8E */  addiu      $a3, $a3, %lo(D_80157F8E)
    /* 18F3A0 802D6890 84E20000 */  lh         $v0, 0x0($a3)
    /* 18F3A4 802D6894 24980001 */  addiu      $t8, $a0, 0x1
    /* 18F3A8 802D6898 28430002 */  slti       $v1, $v0, 0x2
    /* 18F3AC 802D689C 244F0001 */  addiu      $t7, $v0, 0x1
    /* 18F3B0 802D68A0 14600012 */  bnez       $v1, .L802D68EC_18F3FC
    /* 18F3B4 802D68A4 A4EF0000 */   sh        $t7, 0x0($a3)
    /* 18F3B8 802D68A8 A4E00000 */  sh         $zero, 0x0($a3)
    /* 18F3BC 802D68AC 1000000F */  b          .L802D68EC_18F3FC
    /* 18F3C0 802D68B0 A6180000 */   sh        $t8, 0x0($s0)
    /* 18F3C4 802D68B4 24040000 */  addiu      $a0, $zero, 0x0
    /* 18F3C8 802D68B8 0C001CB3 */  jal        func_800072CC_7ECC
    /* 18F3CC 802D68BC 24050028 */   addiu     $a1, $zero, 0x28
    /* 18F3D0 802D68C0 24040000 */  addiu      $a0, $zero, 0x0
    /* 18F3D4 802D68C4 0C001CEE */  jal        func_800073B8_7FB8
    /* 18F3D8 802D68C8 2405002A */   addiu     $a1, $zero, 0x2A
    /* 18F3DC 802D68CC 240900FF */  addiu      $t1, $zero, 0xFF
    /* 18F3E0 802D68D0 3C018016 */  lui        $at, %hi(D_80159DDF)
    /* 18F3E4 802D68D4 3C048015 */  lui        $a0, %hi(D_80157F94)
    /* 18F3E8 802D68D8 A0299DDF */  sb         $t1, %lo(D_80159DDF)($at)
    /* 18F3EC 802D68DC 0C01E644 */  jal        func_80079910_888C0
    /* 18F3F0 802D68E0 84847F94 */   lh        $a0, %lo(D_80157F94)($a0)
    /* 18F3F4 802D68E4 10000002 */  b          .L802D68F0_18F400
    /* 18F3F8 802D68E8 24020001 */   addiu     $v0, $zero, 0x1
  .L802D68EC_18F3FC:
    /* 18F3FC 802D68EC 00001025 */  or         $v0, $zero, $zero
  .L802D68F0_18F400:
    /* 18F400 802D68F0 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 18F404 802D68F4 8FB00040 */  lw         $s0, 0x40($sp)
    /* 18F408 802D68F8 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 18F40C 802D68FC 03E00008 */  jr         $ra
    /* 18F410 802D6900 00000000 */   nop
endlabel func_802D64D0_18EFE0
