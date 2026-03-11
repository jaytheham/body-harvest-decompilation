nonmatching func_802DDA64_1F6774, 0x3A0

glabel func_802DDA64_1F6774
    /* 1F6774 802DDA64 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F6778 802DDA68 24030050 */  addiu      $v1, $zero, 0x50
    /* 1F677C 802DDA6C 01C30019 */  multu      $t6, $v1
    /* 1F6780 802DDA70 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 1F6784 802DDA74 3C028005 */  lui        $v0, %hi(alienInstances)
    /* 1F6788 802DDA78 24428198 */  addiu      $v0, $v0, %lo(alienInstances)
    /* 1F678C 802DDA7C AFB10028 */  sw         $s1, 0x28($sp)
    /* 1F6790 802DDA80 AFA40078 */  sw         $a0, 0x78($sp)
    /* 1F6794 802DDA84 01C02025 */  or         $a0, $t6, $zero
    /* 1F6798 802DDA88 AFA5007C */  sw         $a1, 0x7C($sp)
    /* 1F679C 802DDA8C 30AF00FF */  andi       $t7, $a1, 0xFF
    /* 1F67A0 802DDA90 01E02825 */  or         $a1, $t7, $zero
    /* 1F67A4 802DDA94 0000C812 */  mflo       $t9
    /* 1F67A8 802DDA98 00598821 */  addu       $s1, $v0, $t9
    /* 1F67AC 802DDA9C 922D0025 */  lbu        $t5, 0x25($s1)
    /* 1F67B0 802DDAA0 AFA60080 */  sw         $a2, 0x80($sp)
    /* 1F67B4 802DDAA4 30D800FF */  andi       $t8, $a2, 0xFF
    /* 1F67B8 802DDAA8 01A30019 */  multu      $t5, $v1
    /* 1F67BC 802DDAAC 03003025 */  or         $a2, $t8, $zero
    /* 1F67C0 802DDAB0 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 1F67C4 802DDAB4 AFB00024 */  sw         $s0, 0x24($sp)
    /* 1F67C8 802DDAB8 3C0B8015 */  lui        $t3, %hi(D_8014DD50)
    /* 1F67CC 802DDABC 256BDD50 */  addiu      $t3, $t3, %lo(D_8014DD50)
    /* 1F67D0 802DDAC0 00007012 */  mflo       $t6
    /* 1F67D4 802DDAC4 004E7821 */  addu       $t7, $v0, $t6
    /* 1F67D8 802DDAC8 AFAF0074 */  sw         $t7, 0x74($sp)
    /* 1F67DC 802DDACC 00A30019 */  multu      $a1, $v1
    /* 1F67E0 802DDAD0 0000C012 */  mflo       $t8
    /* 1F67E4 802DDAD4 0058C821 */  addu       $t9, $v0, $t8
    /* 1F67E8 802DDAD8 AFB90048 */  sw         $t9, 0x48($sp)
    /* 1F67EC 802DDADC 00C30019 */  multu      $a2, $v1
    /* 1F67F0 802DDAE0 872E000C */  lh         $t6, 0xC($t9)
    /* 1F67F4 802DDAE4 000E7900 */  sll        $t7, $t6, 4
    /* 1F67F8 802DDAE8 016FC021 */  addu       $t8, $t3, $t7
    /* 1F67FC 802DDAEC 8307000C */  lb         $a3, 0xC($t8)
    /* 1F6800 802DDAF0 0007C900 */  sll        $t9, $a3, 4
    /* 1F6804 802DDAF4 01796821 */  addu       $t5, $t3, $t9
    /* 1F6808 802DDAF8 00007812 */  mflo       $t7
    /* 1F680C 802DDAFC 81A8000D */  lb         $t0, 0xD($t5)
    /* 1F6810 802DDB00 004F8021 */  addu       $s0, $v0, $t7
    /* 1F6814 802DDB04 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 1F6818 802DDB08 00087100 */  sll        $t6, $t0, 4
    /* 1F681C 802DDB0C 016E4821 */  addu       $t1, $t3, $t6
    /* 1F6820 802DDB10 31581000 */  andi       $t8, $t2, 0x1000
    /* 1F6824 802DDB14 812C000D */  lb         $t4, 0xD($t1)
    /* 1F6828 802DDB18 1700000D */  bnez       $t8, .L802DDB50_1F6860
    /* 1F682C 802DDB1C 03005025 */   or        $t2, $t8, $zero
    /* 1F6830 802DDB20 8619002C */  lh         $t9, 0x2C($s0)
    /* 1F6834 802DDB24 2B210960 */  slti       $at, $t9, 0x960
    /* 1F6838 802DDB28 10200009 */  beqz       $at, .L802DDB50_1F6860
    /* 1F683C 802DDB2C 00000000 */   nop
    /* 1F6840 802DDB30 0C0213FA */  jal        func_80084FE8_93F98
    /* 1F6844 802DDB34 24050400 */   addiu     $a1, $zero, 0x400
    /* 1F6848 802DDB38 504000AE */  beql       $v0, $zero, .L802DDDF4_1F6B04
    /* 1F684C 802DDB3C 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 1F6850 802DDB40 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 1F6854 802DDB44 35AE1000 */  ori        $t6, $t5, 0x1000
    /* 1F6858 802DDB48 100000A9 */  b          .L802DDDF0_1F6B00
    /* 1F685C 802DDB4C AE0E0020 */   sw        $t6, 0x20($s0)
  .L802DDB50_1F6860:
    /* 1F6860 802DDB50 1140005D */  beqz       $t2, .L802DDCC8_1F69D8
    /* 1F6864 802DDB54 3C028005 */   lui       $v0, %hi(D_80052A8C)
    /* 1F6868 802DDB58 8C422A8C */  lw         $v0, %lo(D_80052A8C)($v0)
    /* 1F686C 802DDB5C 000CC900 */  sll        $t9, $t4, 4
    /* 1F6870 802DDB60 01791821 */  addu       $v1, $t3, $t9
    /* 1F6874 802DDB64 304F0001 */  andi       $t7, $v0, 0x1
    /* 1F6878 802DDB68 000FC080 */  sll        $t8, $t7, 2
    /* 1F687C 802DDB6C 030FC021 */  addu       $t8, $t8, $t7
    /* 1F6880 802DDB70 0018C080 */  sll        $t8, $t8, 2
    /* 1F6884 802DDB74 030FC023 */  subu       $t8, $t8, $t7
    /* 1F6888 802DDB78 0018C080 */  sll        $t8, $t8, 2
    /* 1F688C 802DDB7C 030FC023 */  subu       $t8, $t8, $t7
    /* 1F6890 802DDB80 0018C0C0 */  sll        $t8, $t8, 3
    /* 1F6894 802DDB84 2702FDA8 */  addiu      $v0, $t8, -0x258
    /* 1F6898 802DDB88 A522000A */  sh         $v0, 0xA($t1)
    /* 1F689C 802DDB8C A462000A */  sh         $v0, 0xA($v1)
    /* 1F68A0 802DDB90 952D0006 */  lhu        $t5, 0x6($t1)
    /* 1F68A4 802DDB94 00082600 */  sll        $a0, $t0, 24
    /* 1F68A8 802DDB98 2419006E */  addiu      $t9, $zero, 0x6E
    /* 1F68AC 802DDB9C 25AEFF88 */  addiu      $t6, $t5, -0x78
    /* 1F68B0 802DDBA0 A52E0006 */  sh         $t6, 0x6($t1)
    /* 1F68B4 802DDBA4 946F0006 */  lhu        $t7, 0x6($v1)
    /* 1F68B8 802DDBA8 240DFFF6 */  addiu      $t5, $zero, -0xA
    /* 1F68BC 802DDBAC 240E01B8 */  addiu      $t6, $zero, 0x1B8
    /* 1F68C0 802DDBB0 25F80078 */  addiu      $t8, $t7, 0x78
    /* 1F68C4 802DDBB4 00047E03 */  sra        $t7, $a0, 24
    /* 1F68C8 802DDBB8 A4780006 */  sh         $t8, 0x6($v1)
    /* 1F68CC 802DDBBC A7B9005C */  sh         $t9, 0x5C($sp)
    /* 1F68D0 802DDBC0 A7AD005E */  sh         $t5, 0x5E($sp)
    /* 1F68D4 802DDBC4 A7AE0060 */  sh         $t6, 0x60($sp)
    /* 1F68D8 802DDBC8 01E02025 */  or         $a0, $t7, $zero
    /* 1F68DC 802DDBCC AFA3003C */  sw         $v1, 0x3C($sp)
    /* 1F68E0 802DDBD0 27A5005C */  addiu      $a1, $sp, 0x5C
    /* 1F68E4 802DDBD4 27A60050 */  addiu      $a2, $sp, 0x50
    /* 1F68E8 802DDBD8 AFA90044 */  sw         $t1, 0x44($sp)
    /* 1F68EC 802DDBDC 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 1F68F0 802DDBE0 A7AC0062 */   sh        $t4, 0x62($sp)
    /* 1F68F4 802DDBE4 27B80070 */  addiu      $t8, $sp, 0x70
    /* 1F68F8 802DDBE8 27B9006C */  addiu      $t9, $sp, 0x6C
    /* 1F68FC 802DDBEC 27AD0068 */  addiu      $t5, $sp, 0x68
    /* 1F6900 802DDBF0 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 1F6904 802DDBF4 AFB90014 */  sw         $t9, 0x14($sp)
    /* 1F6908 802DDBF8 AFB80010 */  sw         $t8, 0x10($sp)
    /* 1F690C 802DDBFC 02202025 */  or         $a0, $s1, $zero
    /* 1F6910 802DDC00 87A50052 */  lh         $a1, 0x52($sp)
    /* 1F6914 802DDC04 87A60056 */  lh         $a2, 0x56($sp)
    /* 1F6918 802DDC08 0C04A10A */  jal        func_80128428_1373D8
    /* 1F691C 802DDC0C 87A7005A */   lh        $a3, 0x5A($sp)
    /* 1F6920 802DDC10 860E0002 */  lh         $t6, 0x2($s0)
    /* 1F6924 802DDC14 860F0004 */  lh         $t7, 0x4($s0)
    /* 1F6928 802DDC18 24180001 */  addiu      $t8, $zero, 0x1
    /* 1F692C 802DDC1C AFB80018 */  sw         $t8, 0x18($sp)
    /* 1F6930 802DDC20 87A40072 */  lh         $a0, 0x72($sp)
    /* 1F6934 802DDC24 87A5006E */  lh         $a1, 0x6E($sp)
    /* 1F6938 802DDC28 87A6006A */  lh         $a2, 0x6A($sp)
    /* 1F693C 802DDC2C 86070000 */  lh         $a3, 0x0($s0)
    /* 1F6940 802DDC30 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 1F6944 802DDC34 0C0345AF */  jal        func_800D16BC_E066C
    /* 1F6948 802DDC38 AFAF0014 */   sw        $t7, 0x14($sp)
    /* 1F694C 802DDC3C 2419FFB0 */  addiu      $t9, $zero, -0x50
    /* 1F6950 802DDC40 240DFFE7 */  addiu      $t5, $zero, -0x19
    /* 1F6954 802DDC44 240E01B8 */  addiu      $t6, $zero, 0x1B8
    /* 1F6958 802DDC48 A7B9005C */  sh         $t9, 0x5C($sp)
    /* 1F695C 802DDC4C A7AD005E */  sh         $t5, 0x5E($sp)
    /* 1F6960 802DDC50 A7AE0060 */  sh         $t6, 0x60($sp)
    /* 1F6964 802DDC54 83A40063 */  lb         $a0, 0x63($sp)
    /* 1F6968 802DDC58 27A5005C */  addiu      $a1, $sp, 0x5C
    /* 1F696C 802DDC5C 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 1F6970 802DDC60 27A60050 */   addiu     $a2, $sp, 0x50
    /* 1F6974 802DDC64 27AF0070 */  addiu      $t7, $sp, 0x70
    /* 1F6978 802DDC68 27B8006C */  addiu      $t8, $sp, 0x6C
    /* 1F697C 802DDC6C 27B90068 */  addiu      $t9, $sp, 0x68
    /* 1F6980 802DDC70 AFB90018 */  sw         $t9, 0x18($sp)
    /* 1F6984 802DDC74 AFB80014 */  sw         $t8, 0x14($sp)
    /* 1F6988 802DDC78 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F698C 802DDC7C 02202025 */  or         $a0, $s1, $zero
    /* 1F6990 802DDC80 87A50052 */  lh         $a1, 0x52($sp)
    /* 1F6994 802DDC84 87A60056 */  lh         $a2, 0x56($sp)
    /* 1F6998 802DDC88 0C04A10A */  jal        func_80128428_1373D8
    /* 1F699C 802DDC8C 87A7005A */   lh        $a3, 0x5A($sp)
    /* 1F69A0 802DDC90 860D0002 */  lh         $t5, 0x2($s0)
    /* 1F69A4 802DDC94 860E0004 */  lh         $t6, 0x4($s0)
    /* 1F69A8 802DDC98 240F0001 */  addiu      $t7, $zero, 0x1
    /* 1F69AC 802DDC9C AFAF0018 */  sw         $t7, 0x18($sp)
    /* 1F69B0 802DDCA0 87A40072 */  lh         $a0, 0x72($sp)
    /* 1F69B4 802DDCA4 87A5006E */  lh         $a1, 0x6E($sp)
    /* 1F69B8 802DDCA8 87A6006A */  lh         $a2, 0x6A($sp)
    /* 1F69BC 802DDCAC 86070000 */  lh         $a3, 0x0($s0)
    /* 1F69C0 802DDCB0 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1F69C4 802DDCB4 0C0345AF */  jal        func_800D16BC_E066C
    /* 1F69C8 802DDCB8 AFAE0014 */   sw        $t6, 0x14($sp)
    /* 1F69CC 802DDCBC 8FA3003C */  lw         $v1, 0x3C($sp)
    /* 1F69D0 802DDCC0 10000012 */  b          .L802DDD0C_1F6A1C
    /* 1F69D4 802DDCC4 8FA90044 */   lw        $t1, 0x44($sp)
  .L802DDCC8_1F69D8:
    /* 1F69D8 802DDCC8 95220006 */  lhu        $v0, 0x6($t1)
    /* 1F69DC 802DDCCC 000C6900 */  sll        $t5, $t4, 4
    /* 1F69E0 802DDCD0 016D1821 */  addu       $v1, $t3, $t5
    /* 1F69E4 802DDCD4 10400006 */  beqz       $v0, .L802DDCF0_1F6A00
    /* 1F69E8 802DDCD8 245803E8 */   addiu     $t8, $v0, 0x3E8
    /* 1F69EC 802DDCDC 3319FFFF */  andi       $t9, $t8, 0xFFFF
    /* 1F69F0 802DDCE0 2B2103E8 */  slti       $at, $t9, 0x3E8
    /* 1F69F4 802DDCE4 10200002 */  beqz       $at, .L802DDCF0_1F6A00
    /* 1F69F8 802DDCE8 A5380006 */   sh        $t8, 0x6($t1)
    /* 1F69FC 802DDCEC A5200006 */  sh         $zero, 0x6($t1)
  .L802DDCF0_1F6A00:
    /* 1F6A00 802DDCF0 94620006 */  lhu        $v0, 0x6($v1)
    /* 1F6A04 802DDCF4 2442FC18 */  addiu      $v0, $v0, -0x3E8
    /* 1F6A08 802DDCF8 04430004 */  bgezl      $v0, .L802DDD0C_1F6A1C
    /* 1F6A0C 802DDCFC A4620006 */   sh        $v0, 0x6($v1)
    /* 1F6A10 802DDD00 10000002 */  b          .L802DDD0C_1F6A1C
    /* 1F6A14 802DDD04 A4600006 */   sh        $zero, 0x6($v1)
    /* 1F6A18 802DDD08 A4620006 */  sh         $v0, 0x6($v1)
  .L802DDD0C_1F6A1C:
    /* 1F6A1C 802DDD0C 8FAB0048 */  lw         $t3, 0x48($sp)
    /* 1F6A20 802DDD10 8D620020 */  lw         $v0, 0x20($t3)
    /* 1F6A24 802DDD14 304E1000 */  andi       $t6, $v0, 0x1000
    /* 1F6A28 802DDD18 51C0002E */  beql       $t6, $zero, .L802DDDD4_1F6AE4
    /* 1F6A2C 802DDD1C 860F002C */   lh        $t7, 0x2C($s0)
    /* 1F6A30 802DDD20 8624002C */  lh         $a0, 0x2C($s1)
    /* 1F6A34 802DDD24 2408EFFF */  addiu      $t0, $zero, -0x1001
    /* 1F6A38 802DDD28 00487024 */  and        $t6, $v0, $t0
    /* 1F6A3C 802DDD2C 1080000B */  beqz       $a0, .L802DDD5C_1F6A6C
    /* 1F6A40 802DDD30 248FFFFF */   addiu     $t7, $a0, -0x1
    /* 1F6A44 802DDD34 A62F002C */  sh         $t7, 0x2C($s1)
    /* 1F6A48 802DDD38 8638002C */  lh         $t8, 0x2C($s1)
    /* 1F6A4C 802DDD3C 8FA20074 */  lw         $v0, 0x74($sp)
    /* 1F6A50 802DDD40 2B01000F */  slti       $at, $t8, 0xF
    /* 1F6A54 802DDD44 5020002B */  beql       $at, $zero, .L802DDDF4_1F6B04
    /* 1F6A58 802DDD48 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 1F6A5C 802DDD4C 8C590020 */  lw         $t9, 0x20($v0)
    /* 1F6A60 802DDD50 372D1000 */  ori        $t5, $t9, 0x1000
    /* 1F6A64 802DDD54 10000026 */  b          .L802DDDF0_1F6B00
    /* 1F6A68 802DDD58 AC4D0020 */   sw        $t5, 0x20($v0)
  .L802DDD5C_1F6A6C:
    /* 1F6A6C 802DDD5C AD6E0020 */  sw         $t6, 0x20($t3)
    /* 1F6A70 802DDD60 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 1F6A74 802DDD64 8FB90074 */  lw         $t9, 0x74($sp)
    /* 1F6A78 802DDD68 240A0004 */  addiu      $t2, $zero, 0x4
    /* 1F6A7C 802DDD6C 01E8C024 */  and        $t8, $t7, $t0
    /* 1F6A80 802DDD70 AE180020 */  sw         $t8, 0x20($s0)
    /* 1F6A84 802DDD74 8F2D0020 */  lw         $t5, 0x20($t9)
    /* 1F6A88 802DDD78 240701F4 */  addiu      $a3, $zero, 0x1F4
    /* 1F6A8C 802DDD7C 01A87024 */  and        $t6, $t5, $t0
    /* 1F6A90 802DDD80 AF2E0020 */  sw         $t6, 0x20($t9)
    /* 1F6A94 802DDD84 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 1F6A98 802DDD88 A520000A */  sh         $zero, 0xA($t1)
    /* 1F6A9C 802DDD8C 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 1F6AA0 802DDD90 241900FF */  addiu      $t9, $zero, 0xFF
    /* 1F6AA4 802DDD94 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 1F6AA8 802DDD98 35F82000 */  ori        $t8, $t7, 0x2000
    /* 1F6AAC 802DDD9C AE180020 */  sw         $t8, 0x20($s0)
    /* 1F6AB0 802DDDA0 A460000A */  sh         $zero, 0xA($v1)
    /* 1F6AB4 802DDDA4 A20A0026 */  sb         $t2, 0x26($s0)
    /* 1F6AB8 802DDDA8 A20A0036 */  sb         $t2, 0x36($s0)
    /* 1F6ABC 802DDDAC AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1F6AC0 802DDDB0 AFB90018 */  sw         $t9, 0x18($sp)
    /* 1F6AC4 802DDDB4 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 1F6AC8 802DDDB8 86060004 */  lh         $a2, 0x4($s0)
    /* 1F6ACC 802DDDBC 86050002 */  lh         $a1, 0x2($s0)
    /* 1F6AD0 802DDDC0 0C03416A */  jal        func_800D05A8_DF558
    /* 1F6AD4 802DDDC4 86040000 */   lh        $a0, 0x0($s0)
    /* 1F6AD8 802DDDC8 1000000A */  b          .L802DDDF4_1F6B04
    /* 1F6ADC 802DDDCC 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 1F6AE0 802DDDD0 860F002C */  lh         $t7, 0x2C($s0)
  .L802DDDD4_1F6AE4:
    /* 1F6AE4 802DDDD4 34581000 */  ori        $t8, $v0, 0x1000
    /* 1F6AE8 802DDDD8 240D0032 */  addiu      $t5, $zero, 0x32
    /* 1F6AEC 802DDDDC 29E107D1 */  slti       $at, $t7, 0x7D1
    /* 1F6AF0 802DDDE0 54200004 */  bnel       $at, $zero, .L802DDDF4_1F6B04
    /* 1F6AF4 802DDDE4 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 1F6AF8 802DDDE8 AD780020 */  sw         $t8, 0x20($t3)
    /* 1F6AFC 802DDDEC A62D002C */  sh         $t5, 0x2C($s1)
  .L802DDDF0_1F6B00:
    /* 1F6B00 802DDDF0 8FBF002C */  lw         $ra, 0x2C($sp)
  .L802DDDF4_1F6B04:
    /* 1F6B04 802DDDF4 8FB00024 */  lw         $s0, 0x24($sp)
    /* 1F6B08 802DDDF8 8FB10028 */  lw         $s1, 0x28($sp)
    /* 1F6B0C 802DDDFC 03E00008 */  jr         $ra
    /* 1F6B10 802DDE00 27BD0078 */   addiu     $sp, $sp, 0x78
endlabel func_802DDA64_1F6774
