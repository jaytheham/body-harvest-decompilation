nonmatching func_802DE584_2C09B4, 0x5D8

glabel func_802DE584_2C09B4
    /* 2C09B4 802DE584 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* 2C09B8 802DE588 AFA40088 */  sw         $a0, 0x88($sp)
    /* 2C09BC 802DE58C 93AE008B */  lbu        $t6, 0x8B($sp)
    /* 2C09C0 802DE590 24090050 */  addiu      $t1, $zero, 0x50
    /* 2C09C4 802DE594 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 2C09C8 802DE598 01C90019 */  multu      $t6, $t1
    /* 2C09CC 802DE59C 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 2C09D0 802DE5A0 AFB00040 */  sw         $s0, 0x40($sp)
    /* 2C09D4 802DE5A4 3C058015 */  lui        $a1, %hi(D_8014DD50)
    /* 2C09D8 802DE5A8 24A5DD50 */  addiu      $a1, $a1, %lo(D_8014DD50)
    /* 2C09DC 802DE5AC AFBF0044 */  sw         $ra, 0x44($sp)
    /* 2C09E0 802DE5B0 3C078025 */  lui        $a3, %hi(alienSpecs)
    /* 2C09E4 802DE5B4 24E76680 */  addiu      $a3, $a3, %lo(alienSpecs)
    /* 2C09E8 802DE5B8 240A0400 */  addiu      $t2, $zero, 0x400
    /* 2C09EC 802DE5BC 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 2C09F0 802DE5C0 00007812 */  mflo       $t7
    /* 2C09F4 802DE5C4 010F8021 */  addu       $s0, $t0, $t7
    /* 2C09F8 802DE5C8 92180025 */  lbu        $t8, 0x25($s0)
    /* 2C09FC 802DE5CC 860C000C */  lh         $t4, 0xC($s0)
    /* 2C0A00 802DE5D0 9202001A */  lbu        $v0, 0x1A($s0)
    /* 2C0A04 802DE5D4 03090019 */  multu      $t8, $t1
    /* 2C0A08 802DE5D8 000C6900 */  sll        $t5, $t4, 4
    /* 2C0A0C 802DE5DC 00AD7021 */  addu       $t6, $a1, $t5
    /* 2C0A10 802DE5E0 81C3000C */  lb         $v1, 0xC($t6)
    /* 2C0A14 802DE5E4 00037900 */  sll        $t7, $v1, 4
    /* 2C0A18 802DE5E8 00AFC021 */  addu       $t8, $a1, $t7
    /* 2C0A1C 802DE5EC 0000C812 */  mflo       $t9
    /* 2C0A20 802DE5F0 01195821 */  addu       $t3, $t0, $t9
    /* 2C0A24 802DE5F4 8319000C */  lb         $t9, 0xC($t8)
    /* 2C0A28 802DE5F8 AFAB007C */  sw         $t3, 0x7C($sp)
    /* 2C0A2C 802DE5FC 0002C080 */  sll        $t8, $v0, 2
    /* 2C0A30 802DE600 A7B90082 */  sh         $t9, 0x82($sp)
    /* 2C0A34 802DE604 87AB0082 */  lh         $t3, 0x82($sp)
    /* 2C0A38 802DE608 0302C023 */  subu       $t8, $t8, $v0
    /* 2C0A3C 802DE60C 0018C080 */  sll        $t8, $t8, 2
    /* 2C0A40 802DE610 000B6100 */  sll        $t4, $t3, 4
    /* 2C0A44 802DE614 00AC6821 */  addu       $t5, $a1, $t4
    /* 2C0A48 802DE618 AFAD004C */  sw         $t5, 0x4C($sp)
    /* 2C0A4C 802DE61C 81AF000D */  lb         $t7, 0xD($t5)
    /* 2C0A50 802DE620 0302C021 */  addu       $t8, $t8, $v0
    /* 2C0A54 802DE624 0018C0C0 */  sll        $t8, $t8, 3
    /* 2C0A58 802DE628 00F8C821 */  addu       $t9, $a3, $t8
    /* 2C0A5C 802DE62C A4EA0B3A */  sh         $t2, 0xB3A($a3)
    /* 2C0A60 802DE630 A4EA0B36 */  sh         $t2, 0xB36($a3)
    /* 2C0A64 802DE634 AFB90048 */  sw         $t9, 0x48($sp)
    /* 2C0A68 802DE638 A7AF0080 */  sh         $t7, 0x80($sp)
    /* 2C0A6C 802DE63C 87260058 */  lh         $a2, 0x58($t9)
    /* 2C0A70 802DE640 28C100C9 */  slti       $at, $a2, 0xC9
    /* 2C0A74 802DE644 14200003 */  bnez       $at, .L802DE654_2C0A84
    /* 2C0A78 802DE648 24CCFFF6 */   addiu     $t4, $a2, -0xA
    /* 2C0A7C 802DE64C 10000020 */  b          .L802DE6D0_2C0B00
    /* 2C0A80 802DE650 A72C0058 */   sh        $t4, 0x58($t9)
  .L802DE654_2C0A84:
    /* 2C0A84 802DE654 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 2C0A88 802DE658 00046880 */  sll        $t5, $a0, 2
    /* 2C0A8C 802DE65C 01A46821 */  addu       $t5, $t5, $a0
    /* 2C0A90 802DE660 000D68C0 */  sll        $t5, $t5, 3
    /* 2C0A94 802DE664 01A46823 */  subu       $t5, $t5, $a0
    /* 2C0A98 802DE668 000D6900 */  sll        $t5, $t5, 4
    /* 2C0A9C 802DE66C 01A46821 */  addu       $t5, $t5, $a0
    /* 2C0AA0 802DE670 000D6900 */  sll        $t5, $t5, 4
    /* 2C0AA4 802DE674 0C007660 */  jal        sins
    /* 2C0AA8 802DE678 31A4FFFF */   andi      $a0, $t5, 0xFFFF
    /* 2C0AAC 802DE67C 44822000 */  mtc1       $v0, $f4
    /* 2C0AB0 802DE680 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C0AB4 802DE684 44815800 */  mtc1       $at, $f11
    /* 2C0AB8 802DE688 468021A0 */  cvt.s.w    $f6, $f4
    /* 2C0ABC 802DE68C 44805000 */  mtc1       $zero, $f10
    /* 2C0AC0 802DE690 3C014018 */  lui        $at, (0x40180000 >> 16)
    /* 2C0AC4 802DE694 44819800 */  mtc1       $at, $f19
    /* 2C0AC8 802DE698 44809000 */  mtc1       $zero, $f18
    /* 2C0ACC 802DE69C 3C014069 */  lui        $at, (0x40690000 >> 16)
    /* 2C0AD0 802DE6A0 46003221 */  cvt.d.s    $f8, $f6
    /* 2C0AD4 802DE6A4 44803000 */  mtc1       $zero, $f6
    /* 2C0AD8 802DE6A8 462A4403 */  div.d      $f16, $f8, $f10
    /* 2C0ADC 802DE6AC 44813800 */  mtc1       $at, $f7
    /* 2C0AE0 802DE6B0 3C078025 */  lui        $a3, %hi(alienSpecs)
    /* 2C0AE4 802DE6B4 24E76680 */  addiu      $a3, $a3, %lo(alienSpecs)
    /* 2C0AE8 802DE6B8 46328102 */  mul.d      $f4, $f16, $f18
    /* 2C0AEC 802DE6BC 46262200 */  add.d      $f8, $f4, $f6
    /* 2C0AF0 802DE6C0 4620428D */  trunc.w.d  $f10, $f8
    /* 2C0AF4 802DE6C4 44185000 */  mfc1       $t8, $f10
    /* 2C0AF8 802DE6C8 00000000 */  nop
    /* 2C0AFC 802DE6CC A4F80B50 */  sh         $t8, 0xB50($a3)
  .L802DE6D0_2C0B00:
    /* 2C0B00 802DE6D0 8602002C */  lh         $v0, 0x2C($s0)
    /* 2C0B04 802DE6D4 3C0C802E */  lui        $t4, %hi(D_802E2E88)
    /* 2C0B08 802DE6D8 2C430001 */  sltiu      $v1, $v0, 0x1
    /* 2C0B0C 802DE6DC 2459FFFF */  addiu      $t9, $v0, -0x1
    /* 2C0B10 802DE6E0 10600013 */  beqz       $v1, .L802DE730_2C0B60
    /* 2C0B14 802DE6E4 A619002C */   sh        $t9, 0x2C($s0)
    /* 2C0B18 802DE6E8 918C2E88 */  lbu        $t4, %lo(D_802E2E88)($t4)
    /* 2C0B1C 802DE6EC 240B0001 */  addiu      $t3, $zero, 0x1
    /* 2C0B20 802DE6F0 240D0064 */  addiu      $t5, $zero, 0x64
    /* 2C0B24 802DE6F4 15800005 */  bnez       $t4, .L802DE70C_2C0B3C
    /* 2C0B28 802DE6F8 3C01802E */   lui       $at, %hi(D_802E2E88)
    /* 2C0B2C 802DE6FC 3C01802E */  lui        $at, %hi(D_802E2E88)
    /* 2C0B30 802DE700 A02B2E88 */  sb         $t3, %lo(D_802E2E88)($at)
    /* 2C0B34 802DE704 1000000A */  b          .L802DE730_2C0B60
    /* 2C0B38 802DE708 A60D002C */   sh        $t5, 0x2C($s0)
  .L802DE70C_2C0B3C:
    /* 2C0B3C 802DE70C 0C000E38 */  jal        func_800038E0_44E0
    /* 2C0B40 802DE710 A0202E88 */   sb        $zero, %lo(D_802E2E88)($at)
    /* 2C0B44 802DE714 240100C8 */  addiu      $at, $zero, 0xC8
    /* 2C0B48 802DE718 0041001A */  div        $zero, $v0, $at
    /* 2C0B4C 802DE71C 00007010 */  mfhi       $t6
    /* 2C0B50 802DE720 25CF0064 */  addiu      $t7, $t6, 0x64
    /* 2C0B54 802DE724 3C078025 */  lui        $a3, %hi(alienSpecs)
    /* 2C0B58 802DE728 24E76680 */  addiu      $a3, $a3, %lo(alienSpecs)
    /* 2C0B5C 802DE72C A60F002C */  sh         $t7, 0x2C($s0)
  .L802DE730_2C0B60:
    /* 2C0B60 802DE730 3C02802E */  lui        $v0, %hi(D_802E2E88)
    /* 2C0B64 802DE734 90422E88 */  lbu        $v0, %lo(D_802E2E88)($v0)
    /* 2C0B68 802DE738 24180A00 */  addiu      $t8, $zero, 0xA00
    /* 2C0B6C 802DE73C 24010001 */  addiu      $at, $zero, 0x1
    /* 2C0B70 802DE740 1440004C */  bnez       $v0, .L802DE874_2C0CA4
    /* 2C0B74 802DE744 00000000 */   nop
    /* 2C0B78 802DE748 8FB9007C */  lw         $t9, 0x7C($sp)
    /* 2C0B7C 802DE74C A4F80B38 */  sh         $t8, 0xB38($a3)
    /* 2C0B80 802DE750 8FAB007C */  lw         $t3, 0x7C($sp)
    /* 2C0B84 802DE754 872C0024 */  lh         $t4, 0x24($t9)
    /* 2C0B88 802DE758 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 2C0B8C 802DE75C 3C01F7FF */  lui        $at, (0xF7FFFFFF >> 16)
    /* 2C0B90 802DE760 A60C0014 */  sh         $t4, 0x14($s0)
    /* 2C0B94 802DE764 856D0026 */  lh         $t5, 0x26($t3)
    /* 2C0B98 802DE768 8FB9007C */  lw         $t9, 0x7C($sp)
    /* 2C0B9C 802DE76C 3421FFFF */  ori        $at, $at, (0xF7FFFFFF & 0xFFFF)
    /* 2C0BA0 802DE770 01C17824 */  and        $t7, $t6, $at
    /* 2C0BA4 802DE774 AE0F0020 */  sw         $t7, 0x20($s0)
    /* 2C0BA8 802DE778 A60D0018 */  sh         $t5, 0x18($s0)
    /* 2C0BAC 802DE77C 86180000 */  lh         $t8, 0x0($s0)
    /* 2C0BB0 802DE780 872C0024 */  lh         $t4, 0x24($t9)
    /* 2C0BB4 802DE784 8FAD007C */  lw         $t5, 0x7C($sp)
    /* 2C0BB8 802DE788 030C1023 */  subu       $v0, $t8, $t4
    /* 2C0BBC 802DE78C 00022023 */  negu       $a0, $v0
    /* 2C0BC0 802DE790 0082082A */  slt        $at, $a0, $v0
    /* 2C0BC4 802DE794 10200003 */  beqz       $at, .L802DE7A4_2C0BD4
    /* 2C0BC8 802DE798 00801825 */   or        $v1, $a0, $zero
    /* 2C0BCC 802DE79C 10000001 */  b          .L802DE7A4_2C0BD4
    /* 2C0BD0 802DE7A0 00401825 */   or        $v1, $v0, $zero
  .L802DE7A4_2C0BD4:
    /* 2C0BD4 802DE7A4 860B0004 */  lh         $t3, 0x4($s0)
    /* 2C0BD8 802DE7A8 85AE0026 */  lh         $t6, 0x26($t5)
    /* 2C0BDC 802DE7AC 00032043 */  sra        $a0, $v1, 1
    /* 2C0BE0 802DE7B0 016E1023 */  subu       $v0, $t3, $t6
    /* 2C0BE4 802DE7B4 00022823 */  negu       $a1, $v0
    /* 2C0BE8 802DE7B8 00A2082A */  slt        $at, $a1, $v0
    /* 2C0BEC 802DE7BC 10200003 */  beqz       $at, .L802DE7CC_2C0BFC
    /* 2C0BF0 802DE7C0 00A01825 */   or        $v1, $a1, $zero
    /* 2C0BF4 802DE7C4 10000001 */  b          .L802DE7CC_2C0BFC
    /* 2C0BF8 802DE7C8 00401825 */   or        $v1, $v0, $zero
  .L802DE7CC_2C0BFC:
    /* 2C0BFC 802DE7CC 00840019 */  multu      $a0, $a0
    /* 2C0C00 802DE7D0 00031043 */  sra        $v0, $v1, 1
    /* 2C0C04 802DE7D4 00007812 */  mflo       $t7
    /* 2C0C08 802DE7D8 00000000 */  nop
    /* 2C0C0C 802DE7DC 00000000 */  nop
    /* 2C0C10 802DE7E0 00420019 */  multu      $v0, $v0
    /* 2C0C14 802DE7E4 0000C812 */  mflo       $t9
    /* 2C0C18 802DE7E8 01F9C021 */  addu       $t8, $t7, $t9
    /* 2C0C1C 802DE7EC 44988000 */  mtc1       $t8, $f16
    /* 2C0C20 802DE7F0 0C007650 */  jal        sqrtf
    /* 2C0C24 802DE7F4 46808320 */   cvt.s.w   $f12, $f16
    /* 2C0C28 802DE7F8 4600048D */  trunc.w.s  $f18, $f0
    /* 2C0C2C 802DE7FC 44029000 */  mfc1       $v0, $f18
    /* 2C0C30 802DE800 00000000 */  nop
    /* 2C0C34 802DE804 00026840 */  sll        $t5, $v0, 1
    /* 2C0C38 802DE808 29A107D1 */  slti       $at, $t5, 0x7D1
    /* 2C0C3C 802DE80C 14200008 */  bnez       $at, .L802DE830_2C0C60
    /* 2C0C40 802DE810 01A01025 */   or        $v0, $t5, $zero
    /* 2C0C44 802DE814 8E0B0020 */  lw         $t3, 0x20($s0)
    /* 2C0C48 802DE818 2401F7BF */  addiu      $at, $zero, -0x841
    /* 2C0C4C 802DE81C 356E0100 */  ori        $t6, $t3, 0x100
    /* 2C0C50 802DE820 AE0E0020 */  sw         $t6, 0x20($s0)
    /* 2C0C54 802DE824 01C1C824 */  and        $t9, $t6, $at
    /* 2C0C58 802DE828 1000001E */  b          .L802DE8A4_2C0CD4
    /* 2C0C5C 802DE82C AE190020 */   sw        $t9, 0x20($s0)
  .L802DE830_2C0C60:
    /* 2C0C60 802DE830 28410641 */  slti       $at, $v0, 0x641
    /* 2C0C64 802DE834 54200009 */  bnel       $at, $zero, .L802DE85C_2C0C8C
    /* 2C0C68 802DE838 8E0E0020 */   lw        $t6, 0x20($s0)
    /* 2C0C6C 802DE83C 8E180020 */  lw         $t8, 0x20($s0)
    /* 2C0C70 802DE840 2401FEBF */  addiu      $at, $zero, -0x141
    /* 2C0C74 802DE844 370C0800 */  ori        $t4, $t8, 0x800
    /* 2C0C78 802DE848 AE0C0020 */  sw         $t4, 0x20($s0)
    /* 2C0C7C 802DE84C 01815824 */  and        $t3, $t4, $at
    /* 2C0C80 802DE850 10000014 */  b          .L802DE8A4_2C0CD4
    /* 2C0C84 802DE854 AE0B0020 */   sw        $t3, 0x20($s0)
    /* 2C0C88 802DE858 8E0E0020 */  lw         $t6, 0x20($s0)
  .L802DE85C_2C0C8C:
    /* 2C0C8C 802DE85C 2401F7FF */  addiu      $at, $zero, -0x801
    /* 2C0C90 802DE860 35CF0140 */  ori        $t7, $t6, 0x140
    /* 2C0C94 802DE864 AE0F0020 */  sw         $t7, 0x20($s0)
    /* 2C0C98 802DE868 01E1C024 */  and        $t8, $t7, $at
    /* 2C0C9C 802DE86C 1000000D */  b          .L802DE8A4_2C0CD4
    /* 2C0CA0 802DE870 AE180020 */   sw        $t8, 0x20($s0)
  .L802DE874_2C0CA4:
    /* 2C0CA4 802DE874 1441000B */  bne        $v0, $at, .L802DE8A4_2C0CD4
    /* 2C0CA8 802DE878 240C0640 */   addiu     $t4, $zero, 0x640
    /* 2C0CAC 802DE87C 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 2C0CB0 802DE880 3C010800 */  lui        $at, (0x8000100 >> 16)
    /* 2C0CB4 802DE884 A4EC0B38 */  sh         $t4, 0xB38($a3)
    /* 2C0CB8 802DE888 01A15825 */  or         $t3, $t5, $at
    /* 2C0CBC 802DE88C 356F0100 */  ori        $t7, $t3, (0x8000100 & 0xFFFF)
    /* 2C0CC0 802DE890 AE0B0020 */  sw         $t3, 0x20($s0)
    /* 2C0CC4 802DE894 2401F7BF */  addiu      $at, $zero, -0x841
    /* 2C0CC8 802DE898 AE0F0020 */  sw         $t7, 0x20($s0)
    /* 2C0CCC 802DE89C 01E1C024 */  and        $t8, $t7, $at
    /* 2C0CD0 802DE8A0 AE180020 */  sw         $t8, 0x20($s0)
  .L802DE8A4_2C0CD4:
    /* 2C0CD4 802DE8A4 0C0201DB */  jal        func_8008076C_8F71C
    /* 2C0CD8 802DE8A8 93A4008B */   lbu       $a0, 0x8B($sp)
    /* 2C0CDC 802DE8AC 8FAC0048 */  lw         $t4, 0x48($sp)
    /* 2C0CE0 802DE8B0 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2C0CE4 802DE8B4 02002825 */  or         $a1, $s0, $zero
    /* 2C0CE8 802DE8B8 858D0058 */  lh         $t5, 0x58($t4)
    /* 2C0CEC 802DE8BC 29A100DC */  slti       $at, $t5, 0xDC
    /* 2C0CF0 802DE8C0 50200085 */  beql       $at, $zero, .L802DEAD8_2C0F08
    /* 2C0CF4 802DE8C4 8FB9007C */   lw        $t9, 0x7C($sp)
    /* 2C0CF8 802DE8C8 0C021395 */  jal        func_80084E54_93E04
    /* 2C0CFC 802DE8CC 8C842B34 */   lw        $a0, %lo(D_80052B34)($a0)
    /* 2C0D00 802DE8D0 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 2C0D04 802DE8D4 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 2C0D08 802DE8D8 3C198025 */  lui        $t9, %hi(D_80257A0C)
    /* 2C0D0C 802DE8DC 93A4008B */  lbu        $a0, 0x8B($sp)
    /* 2C0D10 802DE8E0 916E001A */  lbu        $t6, 0x1A($t3)
    /* 2C0D14 802DE8E4 000E78C0 */  sll        $t7, $t6, 3
    /* 2C0D18 802DE8E8 01EE7823 */  subu       $t7, $t7, $t6
    /* 2C0D1C 802DE8EC 000F7900 */  sll        $t7, $t7, 4
    /* 2C0D20 802DE8F0 032FC821 */  addu       $t9, $t9, $t7
    /* 2C0D24 802DE8F4 87397A0C */  lh         $t9, %lo(D_80257A0C)($t9)
    /* 2C0D28 802DE8F8 273801F4 */  addiu      $t8, $t9, 0x1F4
    /* 2C0D2C 802DE8FC 0058082A */  slt        $at, $v0, $t8
    /* 2C0D30 802DE900 50200075 */  beql       $at, $zero, .L802DEAD8_2C0F08
    /* 2C0D34 802DE904 8FB9007C */   lw        $t9, 0x7C($sp)
    /* 2C0D38 802DE908 0C0213FA */  jal        func_80084FE8_93F98
    /* 2C0D3C 802DE90C 240507D0 */   addiu     $a1, $zero, 0x7D0
    /* 2C0D40 802DE910 10400070 */  beqz       $v0, .L802DEAD4_2C0F04
    /* 2C0D44 802DE914 3C048005 */   lui       $a0, %hi(D_80052B34)
    /* 2C0D48 802DE918 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 2C0D4C 802DE91C 24010013 */  addiu      $at, $zero, 0x13
    /* 2C0D50 802DE920 00003025 */  or         $a2, $zero, $zero
    /* 2C0D54 802DE924 908C001A */  lbu        $t4, 0x1A($a0)
    /* 2C0D58 802DE928 3C074270 */  lui        $a3, (0x42700000 >> 16)
    /* 2C0D5C 802DE92C 15810007 */  bne        $t4, $at, .L802DE94C_2C0D7C
    /* 2C0D60 802DE930 00000000 */   nop
    /* 2C0D64 802DE934 8605002A */  lh         $a1, 0x2A($s0)
    /* 2C0D68 802DE938 00003025 */  or         $a2, $zero, $zero
    /* 2C0D6C 802DE93C 0C040B77 */  jal        func_80102DDC_111D8C
    /* 2C0D70 802DE940 3C0740E0 */   lui       $a3, (0x40E00000 >> 16)
    /* 2C0D74 802DE944 10000003 */  b          .L802DE954_2C0D84
    /* 2C0D78 802DE948 00000000 */   nop
  .L802DE94C_2C0D7C:
    /* 2C0D7C 802DE94C 0C040B77 */  jal        func_80102DDC_111D8C
    /* 2C0D80 802DE950 8605002A */   lh        $a1, 0x2A($s0)
  .L802DE954_2C0D84:
    /* 2C0D84 802DE954 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2C0D88 802DE958 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 2C0D8C 802DE95C 240500C8 */  addiu      $a1, $zero, 0xC8
    /* 2C0D90 802DE960 86060000 */  lh         $a2, 0x0($s0)
    /* 2C0D94 802DE964 0C048949 */  jal        func_80122524_1314D4
    /* 2C0D98 802DE968 86070004 */   lh        $a3, 0x4($s0)
    /* 2C0D9C 802DE96C 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 2C0DA0 802DE970 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 2C0DA4 802DE974 24070064 */  addiu      $a3, $zero, 0x64
    /* 2C0DA8 802DE978 84640000 */  lh         $a0, 0x0($v1)
    /* 2C0DAC 802DE97C 84650002 */  lh         $a1, 0x2($v1)
    /* 2C0DB0 802DE980 84660004 */  lh         $a2, 0x4($v1)
    /* 2C0DB4 802DE984 AFA00014 */  sw         $zero, 0x14($sp)
    /* 2C0DB8 802DE988 0C037C0E */  jal        func_800DF038_EDFE8
    /* 2C0DBC 802DE98C AFA00010 */   sw        $zero, 0x10($sp)
    /* 2C0DC0 802DE990 86040006 */  lh         $a0, 0x6($s0)
    /* 2C0DC4 802DE994 24844000 */  addiu      $a0, $a0, 0x4000
    /* 2C0DC8 802DE998 308DFFFF */  andi       $t5, $a0, 0xFFFF
    /* 2C0DCC 802DE99C 0C007660 */  jal        sins
    /* 2C0DD0 802DE9A0 01A02025 */   or        $a0, $t5, $zero
    /* 2C0DD4 802DE9A4 44822000 */  mtc1       $v0, $f4
    /* 2C0DD8 802DE9A8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C0DDC 802DE9AC 44815800 */  mtc1       $at, $f11
    /* 2C0DE0 802DE9B0 468021A0 */  cvt.s.w    $f6, $f4
    /* 2C0DE4 802DE9B4 44805000 */  mtc1       $zero, $f10
    /* 2C0DE8 802DE9B8 86040006 */  lh         $a0, 0x6($s0)
    /* 2C0DEC 802DE9BC 24844000 */  addiu      $a0, $a0, 0x4000
    /* 2C0DF0 802DE9C0 46003221 */  cvt.d.s    $f8, $f6
    /* 2C0DF4 802DE9C4 308BFFFF */  andi       $t3, $a0, 0xFFFF
    /* 2C0DF8 802DE9C8 462A4403 */  div.d      $f16, $f8, $f10
    /* 2C0DFC 802DE9CC 01602025 */  or         $a0, $t3, $zero
    /* 2C0E00 802DE9D0 462084A0 */  cvt.s.d    $f18, $f16
    /* 2C0E04 802DE9D4 0C007654 */  jal        coss
    /* 2C0E08 802DE9D8 E7B20064 */   swc1      $f18, 0x64($sp)
    /* 2C0E0C 802DE9DC 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 2C0E10 802DE9E0 44810000 */  mtc1       $at, $f0
    /* 2C0E14 802DE9E4 C7A40064 */  lwc1       $f4, 0x64($sp)
    /* 2C0E18 802DE9E8 44825000 */  mtc1       $v0, $f10
    /* 2C0E1C 802DE9EC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C0E20 802DE9F0 46002182 */  mul.s      $f6, $f4, $f0
    /* 2C0E24 802DE9F4 44802000 */  mtc1       $zero, $f4
    /* 2C0E28 802DE9F8 44812800 */  mtc1       $at, $f5
    /* 2C0E2C 802DE9FC 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 2C0E30 802DEA00 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 2C0E34 802DEA04 24180050 */  addiu      $t8, $zero, 0x50
    /* 2C0E38 802DEA08 46805420 */  cvt.s.w    $f16, $f10
    /* 2C0E3C 802DEA0C 84640000 */  lh         $a0, 0x0($v1)
    /* 2C0E40 802DEA10 84650002 */  lh         $a1, 0x2($v1)
    /* 2C0E44 802DEA14 84660004 */  lh         $a2, 0x4($v1)
    /* 2C0E48 802DEA18 AFB80010 */  sw         $t8, 0x10($sp)
    /* 2C0E4C 802DEA1C 4600320D */  trunc.w.s  $f8, $f6
    /* 2C0E50 802DEA20 241800FF */  addiu      $t8, $zero, 0xFF
    /* 2C0E54 802DEA24 240B0064 */  addiu      $t3, $zero, 0x64
    /* 2C0E58 802DEA28 460084A1 */  cvt.d.s    $f18, $f16
    /* 2C0E5C 802DEA2C 44074000 */  mfc1       $a3, $f8
    /* 2C0E60 802DEA30 46249183 */  div.d      $f6, $f18, $f4
    /* 2C0E64 802DEA34 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 2C0E68 802DEA38 00077E00 */  sll        $t7, $a3, 24
    /* 2C0E6C 802DEA3C 000F3E03 */  sra        $a3, $t7, 24
    /* 2C0E70 802DEA40 240F0028 */  addiu      $t7, $zero, 0x28
    /* 2C0E74 802DEA44 24190014 */  addiu      $t9, $zero, 0x14
    /* 2C0E78 802DEA48 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 2C0E7C 802DEA4C AFAC002C */  sw         $t4, 0x2C($sp)
    /* 2C0E80 802DEA50 AFB90024 */  sw         $t9, 0x24($sp)
    /* 2C0E84 802DEA54 AFAF0020 */  sw         $t7, 0x20($sp)
    /* 2C0E88 802DEA58 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 2C0E8C 802DEA5C AFAB0018 */  sw         $t3, 0x18($sp)
    /* 2C0E90 802DEA60 AFB80028 */  sw         $t8, 0x28($sp)
    /* 2C0E94 802DEA64 46203207 */  neg.d      $f8, $f6
    /* 2C0E98 802DEA68 462042A0 */  cvt.s.d    $f10, $f8
    /* 2C0E9C 802DEA6C 46005402 */  mul.s      $f16, $f10, $f0
    /* 2C0EA0 802DEA70 4600848D */  trunc.w.s  $f18, $f16
    /* 2C0EA4 802DEA74 440D9000 */  mfc1       $t5, $f18
    /* 2C0EA8 802DEA78 00000000 */  nop
    /* 2C0EAC 802DEA7C AFAD0014 */  sw         $t5, 0x14($sp)
    /* 2C0EB0 802DEA80 240D00C8 */  addiu      $t5, $zero, 0xC8
    /* 2C0EB4 802DEA84 0C031507 */  jal        func_800C541C_D43CC
    /* 2C0EB8 802DEA88 AFAD0030 */   sw        $t5, 0x30($sp)
    /* 2C0EBC 802DEA8C 93A4008B */  lbu        $a0, 0x8B($sp)
    /* 2C0EC0 802DEA90 0C04DD1A */  jal        func_80137468_146418
    /* 2C0EC4 802DEA94 24050258 */   addiu     $a1, $zero, 0x258
    /* 2C0EC8 802DEA98 8FAB007C */  lw         $t3, 0x7C($sp)
    /* 2C0ECC 802DEA9C 3C05802E */  lui        $a1, %hi(D_802E2E38)
    /* 2C0ED0 802DEAA0 24A52E38 */  addiu      $a1, $a1, %lo(D_802E2E38)
    /* 2C0ED4 802DEAA4 8D620020 */  lw         $v0, 0x20($t3)
    /* 2C0ED8 802DEAA8 304E1000 */  andi       $t6, $v0, 0x1000
    /* 2C0EDC 802DEAAC 15C00009 */  bnez       $t6, .L802DEAD4_2C0F04
    /* 2C0EE0 802DEAB0 344F1000 */   ori       $t7, $v0, 0x1000
    /* 2C0EE4 802DEAB4 AD6F0020 */  sw         $t7, 0x20($t3)
    /* 2C0EE8 802DEAB8 A2000026 */  sb         $zero, 0x26($s0)
    /* 2C0EEC 802DEABC 0C020721 */  jal        func_80081C84_90C34
    /* 2C0EF0 802DEAC0 93A40083 */   lbu       $a0, 0x83($sp)
    /* 2C0EF4 802DEAC4 3C05802E */  lui        $a1, %hi(D_802E2E38)
    /* 2C0EF8 802DEAC8 24A52E38 */  addiu      $a1, $a1, %lo(D_802E2E38)
    /* 2C0EFC 802DEACC 0C020721 */  jal        func_80081C84_90C34
    /* 2C0F00 802DEAD0 93A40081 */   lbu       $a0, 0x81($sp)
  .L802DEAD4_2C0F04:
    /* 2C0F04 802DEAD4 8FB9007C */  lw         $t9, 0x7C($sp)
  .L802DEAD8_2C0F08:
    /* 2C0F08 802DEAD8 8FAC004C */  lw         $t4, 0x4C($sp)
    /* 2C0F0C 802DEADC 8F220020 */  lw         $v0, 0x20($t9)
    /* 2C0F10 802DEAE0 30581000 */  andi       $t8, $v0, 0x1000
    /* 2C0F14 802DEAE4 53000019 */  beql       $t8, $zero, .L802DEB4C_2C0F7C
    /* 2C0F18 802DEAE8 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 2C0F1C 802DEAEC 858D000E */  lh         $t5, 0xE($t4)
    /* 2C0F20 802DEAF0 55A00016 */  bnel       $t5, $zero, .L802DEB4C_2C0F7C
    /* 2C0F24 802DEAF4 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 2C0F28 802DEAF8 920E0026 */  lbu        $t6, 0x26($s0)
    /* 2C0F2C 802DEAFC 93A40083 */  lbu        $a0, 0x83($sp)
    /* 2C0F30 802DEB00 3C05802E */  lui        $a1, %hi(D_802E2E48)
    /* 2C0F34 802DEB04 15C0000C */  bnez       $t6, .L802DEB38_2C0F68
    /* 2C0F38 802DEB08 93AF0081 */   lbu       $t7, 0x81($sp)
    /* 2C0F3C 802DEB0C 24A52E48 */  addiu      $a1, $a1, %lo(D_802E2E48)
    /* 2C0F40 802DEB10 0C020721 */  jal        func_80081C84_90C34
    /* 2C0F44 802DEB14 AFAF004C */   sw        $t7, 0x4C($sp)
    /* 2C0F48 802DEB18 3C05802E */  lui        $a1, %hi(D_802E2E68)
    /* 2C0F4C 802DEB1C 24A52E68 */  addiu      $a1, $a1, %lo(D_802E2E68)
    /* 2C0F50 802DEB20 0C020721 */  jal        func_80081C84_90C34
    /* 2C0F54 802DEB24 93A4004F */   lbu       $a0, 0x4F($sp)
    /* 2C0F58 802DEB28 920B0026 */  lbu        $t3, 0x26($s0)
    /* 2C0F5C 802DEB2C 25790001 */  addiu      $t9, $t3, 0x1
    /* 2C0F60 802DEB30 10000005 */  b          .L802DEB48_2C0F78
    /* 2C0F64 802DEB34 A2190026 */   sb        $t9, 0x26($s0)
  .L802DEB38_2C0F68:
    /* 2C0F68 802DEB38 8FAC007C */  lw         $t4, 0x7C($sp)
    /* 2C0F6C 802DEB3C 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 2C0F70 802DEB40 0041C024 */  and        $t8, $v0, $at
    /* 2C0F74 802DEB44 AD980020 */  sw         $t8, 0x20($t4)
  .L802DEB48_2C0F78:
    /* 2C0F78 802DEB48 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DEB4C_2C0F7C:
    /* 2C0F7C 802DEB4C 8FB00040 */  lw         $s0, 0x40($sp)
    /* 2C0F80 802DEB50 27BD0088 */  addiu      $sp, $sp, 0x88
    /* 2C0F84 802DEB54 03E00008 */  jr         $ra
    /* 2C0F88 802DEB58 00000000 */   nop
endlabel func_802DE584_2C09B4
