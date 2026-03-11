nonmatching func_802D7D08_257448, 0x334

glabel func_802D7D08_257448
    /* 257448 802D7D08 308E00FF */  andi       $t6, $a0, 0xFF
    /* 25744C 802D7D0C 000E7880 */  sll        $t7, $t6, 2
    /* 257450 802D7D10 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 257454 802D7D14 01EE7821 */  addu       $t7, $t7, $t6
    /* 257458 802D7D18 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 25745C 802D7D1C AFB00040 */  sw         $s0, 0x40($sp)
    /* 257460 802D7D20 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 257464 802D7D24 000F7900 */  sll        $t7, $t7, 4
    /* 257468 802D7D28 01F88021 */  addu       $s0, $t7, $t8
    /* 25746C 802D7D2C 8E190020 */  lw         $t9, 0x20($s0)
    /* 257470 802D7D30 AFA40078 */  sw         $a0, 0x78($sp)
    /* 257474 802D7D34 01C02025 */  or         $a0, $t6, $zero
    /* 257478 802D7D38 33291000 */  andi       $t1, $t9, 0x1000
    /* 25747C 802D7D3C AFBF0044 */  sw         $ra, 0x44($sp)
    /* 257480 802D7D40 AFA5007C */  sw         $a1, 0x7C($sp)
    /* 257484 802D7D44 AFA60080 */  sw         $a2, 0x80($sp)
    /* 257488 802D7D48 112000B6 */  beqz       $t1, .L802D8024_257764
    /* 25748C 802D7D4C AFA70084 */   sw        $a3, 0x84($sp)
    /* 257490 802D7D50 87AA0086 */  lh         $t2, 0x86($sp)
    /* 257494 802D7D54 87AB008A */  lh         $t3, 0x8A($sp)
    /* 257498 802D7D58 87AC008E */  lh         $t4, 0x8E($sp)
    /* 25749C 802D7D5C 87AD0092 */  lh         $t5, 0x92($sp)
    /* 2574A0 802D7D60 3C0E802E */  lui        $t6, %hi(D_802DFA38)
    /* 2574A4 802D7D64 25CEFA38 */  addiu      $t6, $t6, %lo(D_802DFA38)
    /* 2574A8 802D7D68 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2574AC 802D7D6C 24050004 */  addiu      $a1, $zero, 0x4
    /* 2574B0 802D7D70 24060005 */  addiu      $a2, $zero, 0x5
    /* 2574B4 802D7D74 27A7006C */  addiu      $a3, $sp, 0x6C
    /* 2574B8 802D7D78 A7AA006C */  sh         $t2, 0x6C($sp)
    /* 2574BC 802D7D7C A7AB006E */  sh         $t3, 0x6E($sp)
    /* 2574C0 802D7D80 A7AC0070 */  sh         $t4, 0x70($sp)
    /* 2574C4 802D7D84 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2574C8 802D7D88 A7AD0072 */   sh        $t5, 0x72($sp)
    /* 2574CC 802D7D8C 24050002 */  addiu      $a1, $zero, 0x2
    /* 2574D0 802D7D90 304400FF */  andi       $a0, $v0, 0xFF
    /* 2574D4 802D7D94 A3A2006B */  sb         $v0, 0x6B($sp)
    /* 2574D8 802D7D98 10A40004 */  beq        $a1, $a0, .L802D7DAC_2574EC
    /* 2574DC 802D7D9C 9208001A */   lbu       $t0, 0x1A($s0)
    /* 2574E0 802D7DA0 24010004 */  addiu      $at, $zero, 0x4
    /* 2574E4 802D7DA4 54810096 */  bnel       $a0, $at, .L802D8000_257740
    /* 2574E8 802D7DA8 93A3006B */   lbu       $v1, 0x6B($sp)
  .L802D7DAC_2574EC:
    /* 2574EC 802D7DAC 14A4001C */  bne        $a1, $a0, .L802D7E20_257560
    /* 2574F0 802D7DB0 00087880 */   sll       $t7, $t0, 2
    /* 2574F4 802D7DB4 00087880 */  sll        $t7, $t0, 2
    /* 2574F8 802D7DB8 01E87823 */  subu       $t7, $t7, $t0
    /* 2574FC 802D7DBC 000F7880 */  sll        $t7, $t7, 2
    /* 257500 802D7DC0 01E87821 */  addu       $t7, $t7, $t0
    /* 257504 802D7DC4 3C188025 */  lui        $t8, %hi(alienSpecs)
    /* 257508 802D7DC8 27186680 */  addiu      $t8, $t8, %lo(alienSpecs)
    /* 25750C 802D7DCC 000F78C0 */  sll        $t7, $t7, 3
    /* 257510 802D7DD0 01F81021 */  addu       $v0, $t7, $t8
    /* 257514 802D7DD4 84450020 */  lh         $a1, 0x20($v0)
    /* 257518 802D7DD8 84460058 */  lh         $a2, 0x58($v0)
    /* 25751C 802D7DDC 27AC0060 */  addiu      $t4, $sp, 0x60
    /* 257520 802D7DE0 00052823 */  negu       $a1, $a1
    /* 257524 802D7DE4 00063023 */  negu       $a2, $a2
    /* 257528 802D7DE8 00065400 */  sll        $t2, $a2, 16
    /* 25752C 802D7DEC 0005CC00 */  sll        $t9, $a1, 16
    /* 257530 802D7DF0 27AD005C */  addiu      $t5, $sp, 0x5C
    /* 257534 802D7DF4 27AE0058 */  addiu      $t6, $sp, 0x58
    /* 257538 802D7DF8 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 25753C 802D7DFC AFAD0014 */  sw         $t5, 0x14($sp)
    /* 257540 802D7E00 00192C03 */  sra        $a1, $t9, 16
    /* 257544 802D7E04 000A3403 */  sra        $a2, $t2, 16
    /* 257548 802D7E08 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 25754C 802D7E0C 84470024 */  lh         $a3, 0x24($v0)
    /* 257550 802D7E10 0C04A10A */  jal        func_80128428_1373D8
    /* 257554 802D7E14 02002025 */   or        $a0, $s0, $zero
    /* 257558 802D7E18 10000017 */  b          .L802D7E78_2575B8
    /* 25755C 802D7E1C 87A40062 */   lh        $a0, 0x62($sp)
  .L802D7E20_257560:
    /* 257560 802D7E20 01E87823 */  subu       $t7, $t7, $t0
    /* 257564 802D7E24 000F7880 */  sll        $t7, $t7, 2
    /* 257568 802D7E28 01E87821 */  addu       $t7, $t7, $t0
    /* 25756C 802D7E2C 3C188025 */  lui        $t8, %hi(alienSpecs)
    /* 257570 802D7E30 27186680 */  addiu      $t8, $t8, %lo(alienSpecs)
    /* 257574 802D7E34 000F78C0 */  sll        $t7, $t7, 3
    /* 257578 802D7E38 01F81021 */  addu       $v0, $t7, $t8
    /* 25757C 802D7E3C 84460058 */  lh         $a2, 0x58($v0)
    /* 257580 802D7E40 27AA0060 */  addiu      $t2, $sp, 0x60
    /* 257584 802D7E44 27AB005C */  addiu      $t3, $sp, 0x5C
    /* 257588 802D7E48 00063023 */  negu       $a2, $a2
    /* 25758C 802D7E4C 0006CC00 */  sll        $t9, $a2, 16
    /* 257590 802D7E50 27AC0058 */  addiu      $t4, $sp, 0x58
    /* 257594 802D7E54 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 257598 802D7E58 00193403 */  sra        $a2, $t9, 16
    /* 25759C 802D7E5C AFAB0014 */  sw         $t3, 0x14($sp)
    /* 2575A0 802D7E60 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 2575A4 802D7E64 84450020 */  lh         $a1, 0x20($v0)
    /* 2575A8 802D7E68 84470024 */  lh         $a3, 0x24($v0)
    /* 2575AC 802D7E6C 0C04A10A */  jal        func_80128428_1373D8
    /* 2575B0 802D7E70 02002025 */   or        $a0, $s0, $zero
    /* 2575B4 802D7E74 87A40062 */  lh         $a0, 0x62($sp)
  .L802D7E78_2575B8:
    /* 2575B8 802D7E78 0C02E134 */  jal        func_800B84D0_C7480
    /* 2575BC 802D7E7C 87A5005A */   lh        $a1, 0x5A($sp)
    /* 2575C0 802D7E80 8FA3005C */  lw         $v1, 0x5C($sp)
    /* 2575C4 802D7E84 00026A03 */  sra        $t5, $v0, 8
    /* 2575C8 802D7E88 25AE0005 */  addiu      $t6, $t5, 0x5
    /* 2575CC 802D7E8C 01C3082A */  slt        $at, $t6, $v1
    /* 2575D0 802D7E90 1420005A */  bnez       $at, .L802D7FFC_25773C
    /* 2575D4 802D7E94 87A40062 */   lh        $a0, 0x62($sp)
    /* 2575D8 802D7E98 24650005 */  addiu      $a1, $v1, 0x5
    /* 2575DC 802D7E9C 00057C00 */  sll        $t7, $a1, 16
    /* 2575E0 802D7EA0 2419000A */  addiu      $t9, $zero, 0xA
    /* 2575E4 802D7EA4 AFB90010 */  sw         $t9, 0x10($sp)
    /* 2575E8 802D7EA8 000F2C03 */  sra        $a1, $t7, 16
    /* 2575EC 802D7EAC 87A6005A */  lh         $a2, 0x5A($sp)
    /* 2575F0 802D7EB0 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* 2575F4 802D7EB4 24070050 */   addiu     $a3, $zero, 0x50
    /* 2575F8 802D7EB8 8FA40060 */  lw         $a0, 0x60($sp)
    /* 2575FC 802D7EBC 8FA5005C */  lw         $a1, 0x5C($sp)
    /* 257600 802D7EC0 8FA60058 */  lw         $a2, 0x58($sp)
    /* 257604 802D7EC4 0C04D751 */  jal        func_80135D44_144CF4
    /* 257608 802D7EC8 3C074100 */   lui       $a3, (0x41000000 >> 16)
    /* 25760C 802D7ECC 3C01802E */  lui        $at, %hi(D_802E0DC8)
    /* 257610 802D7ED0 C4240DC8 */  lwc1       $f4, %lo(D_802E0DC8)($at)
    /* 257614 802D7ED4 8FA90058 */  lw         $t1, 0x58($sp)
    /* 257618 802D7ED8 00002025 */  or         $a0, $zero, $zero
    /* 25761C 802D7EDC 240500E8 */  addiu      $a1, $zero, 0xE8
    /* 257620 802D7EE0 87A60062 */  lh         $a2, 0x62($sp)
    /* 257624 802D7EE4 87A7005E */  lh         $a3, 0x5E($sp)
    /* 257628 802D7EE8 E7A40014 */  swc1       $f4, 0x14($sp)
    /* 25762C 802D7EEC 0C04DC6E */  jal        func_801371B8_146168
    /* 257630 802D7EF0 AFA90010 */   sw        $t1, 0x10($sp)
    /* 257634 802D7EF4 240A0008 */  addiu      $t2, $zero, 0x8
    /* 257638 802D7EF8 240B0006 */  addiu      $t3, $zero, 0x6
    /* 25763C 802D7EFC 240C0028 */  addiu      $t4, $zero, 0x28
    /* 257640 802D7F00 240D00C8 */  addiu      $t5, $zero, 0xC8
    /* 257644 802D7F04 240E00A6 */  addiu      $t6, $zero, 0xA6
    /* 257648 802D7F08 240F0085 */  addiu      $t7, $zero, 0x85
    /* 25764C 802D7F0C 2418002F */  addiu      $t8, $zero, 0x2F
    /* 257650 802D7F10 AFB80028 */  sw         $t8, 0x28($sp)
    /* 257654 802D7F14 AFAF0024 */  sw         $t7, 0x24($sp)
    /* 257658 802D7F18 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 25765C 802D7F1C AFAD001C */  sw         $t5, 0x1C($sp)
    /* 257660 802D7F20 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 257664 802D7F24 AFAB0014 */  sw         $t3, 0x14($sp)
    /* 257668 802D7F28 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 25766C 802D7F2C 87A40062 */  lh         $a0, 0x62($sp)
    /* 257670 802D7F30 87A5005E */  lh         $a1, 0x5E($sp)
    /* 257674 802D7F34 87A6005A */  lh         $a2, 0x5A($sp)
    /* 257678 802D7F38 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 25767C 802D7F3C 24070096 */   addiu     $a3, $zero, 0x96
    /* 257680 802D7F40 2419FFFF */  addiu      $t9, $zero, -0x1
    /* 257684 802D7F44 24090064 */  addiu      $t1, $zero, 0x64
    /* 257688 802D7F48 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 25768C 802D7F4C 240B0028 */  addiu      $t3, $zero, 0x28
    /* 257690 802D7F50 240C0014 */  addiu      $t4, $zero, 0x14
    /* 257694 802D7F54 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 257698 802D7F58 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 25769C 802D7F5C 240F0080 */  addiu      $t7, $zero, 0x80
    /* 2576A0 802D7F60 AFAF0030 */  sw         $t7, 0x30($sp)
    /* 2576A4 802D7F64 AFAE002C */  sw         $t6, 0x2C($sp)
    /* 2576A8 802D7F68 AFAD0028 */  sw         $t5, 0x28($sp)
    /* 2576AC 802D7F6C AFAC0024 */  sw         $t4, 0x24($sp)
    /* 2576B0 802D7F70 AFAB0020 */  sw         $t3, 0x20($sp)
    /* 2576B4 802D7F74 AFAA001C */  sw         $t2, 0x1C($sp)
    /* 2576B8 802D7F78 AFA90018 */  sw         $t1, 0x18($sp)
    /* 2576BC 802D7F7C AFB90010 */  sw         $t9, 0x10($sp)
    /* 2576C0 802D7F80 87A40062 */  lh         $a0, 0x62($sp)
    /* 2576C4 802D7F84 87A5005E */  lh         $a1, 0x5E($sp)
    /* 2576C8 802D7F88 87A6005A */  lh         $a2, 0x5A($sp)
    /* 2576CC 802D7F8C 00003825 */  or         $a3, $zero, $zero
    /* 2576D0 802D7F90 0C031507 */  jal        func_800C541C_D43CC
    /* 2576D4 802D7F94 AFA00014 */   sw        $zero, 0x14($sp)
    /* 2576D8 802D7F98 8E180020 */  lw         $t8, 0x20($s0)
    /* 2576DC 802D7F9C 3C010040 */  lui        $at, (0x400000 >> 16)
    /* 2576E0 802D7FA0 2409012C */  addiu      $t1, $zero, 0x12C
    /* 2576E4 802D7FA4 0301C825 */  or         $t9, $t8, $at
    /* 2576E8 802D7FA8 AE190020 */  sw         $t9, 0x20($s0)
    /* 2576EC 802D7FAC AFA90010 */  sw         $t1, 0x10($sp)
    /* 2576F0 802D7FB0 87A40062 */  lh         $a0, 0x62($sp)
    /* 2576F4 802D7FB4 87A5005E */  lh         $a1, 0x5E($sp)
    /* 2576F8 802D7FB8 87A6005A */  lh         $a2, 0x5A($sp)
    /* 2576FC 802D7FBC 0C0492D7 */  jal        func_80124B5C_133B0C
    /* 257700 802D7FC0 240703E8 */   addiu     $a3, $zero, 0x3E8
    /* 257704 802D7FC4 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 257708 802D7FC8 8FAC007C */  lw         $t4, 0x7C($sp)
    /* 25770C 802D7FCC 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 257710 802D7FD0 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 257714 802D7FD4 01415824 */  and        $t3, $t2, $at
    /* 257718 802D7FD8 298102EE */  slti       $at, $t4, 0x2EE
    /* 25771C 802D7FDC 10200007 */  beqz       $at, .L802D7FFC_25773C
    /* 257720 802D7FE0 AE0B0020 */   sw        $t3, 0x20($s0)
    /* 257724 802D7FE4 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 257728 802D7FE8 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 25772C 802D7FEC 86050006 */  lh         $a1, 0x6($s0)
    /* 257730 802D7FF0 00003025 */  or         $a2, $zero, $zero
    /* 257734 802D7FF4 0C040B77 */  jal        func_80102DDC_111D8C
    /* 257738 802D7FF8 3C0742F0 */   lui       $a3, (0x42F00000 >> 16)
  .L802D7FFC_25773C:
    /* 25773C 802D7FFC 93A3006B */  lbu        $v1, 0x6B($sp)
  .L802D8000_257740:
    /* 257740 802D8000 24010005 */  addiu      $at, $zero, 0x5
    /* 257744 802D8004 14610005 */  bne        $v1, $at, .L802D801C_25775C
    /* 257748 802D8008 00000000 */   nop
    /* 25774C 802D800C 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 257750 802D8010 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 257754 802D8014 01A17024 */  and        $t6, $t5, $at
    /* 257758 802D8018 AE0E0020 */  sw         $t6, 0x20($s0)
  .L802D801C_25775C:
    /* 25775C 802D801C 10000002 */  b          .L802D8028_257768
    /* 257760 802D8020 00601025 */   or        $v0, $v1, $zero
  .L802D8024_257764:
    /* 257764 802D8024 00001025 */  or         $v0, $zero, $zero
  .L802D8028_257768:
    /* 257768 802D8028 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 25776C 802D802C 8FB00040 */  lw         $s0, 0x40($sp)
    /* 257770 802D8030 27BD0078 */  addiu      $sp, $sp, 0x78
    /* 257774 802D8034 03E00008 */  jr         $ra
    /* 257778 802D8038 00000000 */   nop
endlabel func_802D7D08_257448
