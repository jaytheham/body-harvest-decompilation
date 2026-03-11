nonmatching func_802DA520_259C60, 0x358

glabel func_802DA520_259C60
    /* 259C60 802DA520 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 259C64 802DA524 AFA40068 */  sw         $a0, 0x68($sp)
    /* 259C68 802DA528 93AE006B */  lbu        $t6, 0x6B($sp)
    /* 259C6C 802DA52C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 259C70 802DA530 AFB00028 */  sw         $s0, 0x28($sp)
    /* 259C74 802DA534 000E7880 */  sll        $t7, $t6, 2
    /* 259C78 802DA538 01EE7821 */  addu       $t7, $t7, $t6
    /* 259C7C 802DA53C 000F7900 */  sll        $t7, $t7, 4
    /* 259C80 802DA540 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 259C84 802DA544 01F88021 */  addu       $s0, $t7, $t8
    /* 259C88 802DA548 8619000C */  lh         $t9, 0xC($s0)
    /* 259C8C 802DA54C 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 259C90 802DA550 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 259C94 802DA554 00195900 */  sll        $t3, $t9, 4
    /* 259C98 802DA558 004B6021 */  addu       $t4, $v0, $t3
    /* 259C9C 802DA55C 8186000C */  lb         $a2, 0xC($t4)
    /* 259CA0 802DA560 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 259CA4 802DA564 86040000 */  lh         $a0, 0x0($s0)
    /* 259CA8 802DA568 00066900 */  sll        $t5, $a2, 4
    /* 259CAC 802DA56C 004D7021 */  addu       $t6, $v0, $t5
    /* 259CB0 802DA570 81C7000C */  lb         $a3, 0xC($t6)
    /* 259CB4 802DA574 86050004 */  lh         $a1, 0x4($s0)
    /* 259CB8 802DA578 00077900 */  sll        $t7, $a3, 4
    /* 259CBC 802DA57C 004FC021 */  addu       $t8, $v0, $t7
    /* 259CC0 802DA580 8308000C */  lb         $t0, 0xC($t8)
    /* 259CC4 802DA584 0008C900 */  sll        $t9, $t0, 4
    /* 259CC8 802DA588 00595821 */  addu       $t3, $v0, $t9
    /* 259CCC 802DA58C 8169000C */  lb         $t1, 0xC($t3)
    /* 259CD0 802DA590 00096100 */  sll        $t4, $t1, 4
    /* 259CD4 802DA594 004C1821 */  addu       $v1, $v0, $t4
    /* 259CD8 802DA598 806A000D */  lb         $t2, 0xD($v1)
    /* 259CDC 802DA59C 806D000C */  lb         $t5, 0xC($v1)
    /* 259CE0 802DA5A0 000A7100 */  sll        $t6, $t2, 4
    /* 259CE4 802DA5A4 004E7821 */  addu       $t7, $v0, $t6
    /* 259CE8 802DA5A8 81F8000C */  lb         $t8, 0xC($t7)
    /* 259CEC 802DA5AC A7A60066 */  sh         $a2, 0x66($sp)
    /* 259CF0 802DA5B0 A7A70064 */  sh         $a3, 0x64($sp)
    /* 259CF4 802DA5B4 A7A80062 */  sh         $t0, 0x62($sp)
    /* 259CF8 802DA5B8 A7A90060 */  sh         $t1, 0x60($sp)
    /* 259CFC 802DA5BC A7AA005C */  sh         $t2, 0x5C($sp)
    /* 259D00 802DA5C0 A7AD005E */  sh         $t5, 0x5E($sp)
    /* 259D04 802DA5C4 0C02E134 */  jal        func_800B84D0_C7480
    /* 259D08 802DA5C8 A7B8005A */   sh        $t8, 0x5A($sp)
    /* 259D0C 802DA5CC 0002CA03 */  sra        $t9, $v0, 8
    /* 259D10 802DA5D0 3C058005 */  lui        $a1, %hi(D_80052B34)
    /* 259D14 802DA5D4 AFB90054 */  sw         $t9, 0x54($sp)
    /* 259D18 802DA5D8 8CA52B34 */  lw         $a1, %lo(D_80052B34)($a1)
    /* 259D1C 802DA5DC 0C021395 */  jal        func_80084E54_93E04
    /* 259D20 802DA5E0 02002025 */   or        $a0, $s0, $zero
    /* 259D24 802DA5E4 860B0048 */  lh         $t3, 0x48($s0)
    /* 259D28 802DA5E8 8FAC0054 */  lw         $t4, 0x54($sp)
    /* 259D2C 802DA5EC 240FF830 */  addiu      $t7, $zero, -0x7D0
    /* 259D30 802DA5F0 A60F000A */  sh         $t7, 0xA($s0)
    /* 259D34 802DA5F4 016C6821 */  addu       $t5, $t3, $t4
    /* 259D38 802DA5F8 25AE0082 */  addiu      $t6, $t5, 0x82
    /* 259D3C 802DA5FC A60E0002 */  sh         $t6, 0x2($s0)
    /* 259D40 802DA600 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 259D44 802DA604 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 259D48 802DA608 AFA20050 */  sw         $v0, 0x50($sp)
    /* 259D4C 802DA60C 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 259D50 802DA610 84660004 */  lh         $a2, 0x4($v1)
    /* 259D54 802DA614 0C020295 */  jal        func_80080A54_8FA04
    /* 259D58 802DA618 84650000 */   lh        $a1, 0x0($v1)
    /* 259D5C 802DA61C 86030006 */  lh         $v1, 0x6($s0)
    /* 259D60 802DA620 87B80060 */  lh         $t8, 0x60($sp)
    /* 259D64 802DA624 87B9005E */  lh         $t9, 0x5E($sp)
    /* 259D68 802DA628 87AB005C */  lh         $t3, 0x5C($sp)
    /* 259D6C 802DA62C 87AC005A */  lh         $t4, 0x5A($sp)
    /* 259D70 802DA630 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 259D74 802DA634 87A50066 */  lh         $a1, 0x66($sp)
    /* 259D78 802DA638 87A60064 */  lh         $a2, 0x64($sp)
    /* 259D7C 802DA63C 87A70062 */  lh         $a3, 0x62($sp)
    /* 259D80 802DA640 A603002A */  sh         $v1, 0x2A($s0)
    /* 259D84 802DA644 A603000E */  sh         $v1, 0xE($s0)
    /* 259D88 802DA648 AFB80010 */  sw         $t8, 0x10($sp)
    /* 259D8C 802DA64C AFB90014 */  sw         $t9, 0x14($sp)
    /* 259D90 802DA650 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 259D94 802DA654 0C0B67C4 */  jal        func_802D9F10_259650
    /* 259D98 802DA658 AFAC001C */   sw        $t4, 0x1C($sp)
    /* 259D9C 802DA65C 87AD0060 */  lh         $t5, 0x60($sp)
    /* 259DA0 802DA660 87AE005E */  lh         $t6, 0x5E($sp)
    /* 259DA4 802DA664 87AF005C */  lh         $t7, 0x5C($sp)
    /* 259DA8 802DA668 87B8005A */  lh         $t8, 0x5A($sp)
    /* 259DAC 802DA66C 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 259DB0 802DA670 87A50066 */  lh         $a1, 0x66($sp)
    /* 259DB4 802DA674 87A60064 */  lh         $a2, 0x64($sp)
    /* 259DB8 802DA678 87A70062 */  lh         $a3, 0x62($sp)
    /* 259DBC 802DA67C AFAD0010 */  sw         $t5, 0x10($sp)
    /* 259DC0 802DA680 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 259DC4 802DA684 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 259DC8 802DA688 0C0B6815 */  jal        func_802DA054_259794
    /* 259DCC 802DA68C AFB8001C */   sw        $t8, 0x1C($sp)
    /* 259DD0 802DA690 92190047 */  lbu        $t9, 0x47($s0)
    /* 259DD4 802DA694 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 259DD8 802DA698 332B0008 */  andi       $t3, $t9, 0x8
    /* 259DDC 802DA69C 51600029 */  beql       $t3, $zero, .L802DA744_259E84
    /* 259DE0 802DA6A0 92020026 */   lbu       $v0, 0x26($s0)
    /* 259DE4 802DA6A4 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 259DE8 802DA6A8 860D0000 */  lh         $t5, 0x0($s0)
    /* 259DEC 802DA6AC 860F0004 */  lh         $t7, 0x4($s0)
    /* 259DF0 802DA6B0 846C0000 */  lh         $t4, 0x0($v1)
    /* 259DF4 802DA6B4 846E0004 */  lh         $t6, 0x4($v1)
    /* 259DF8 802DA6B8 018D1023 */  subu       $v0, $t4, $t5
    /* 259DFC 802DA6BC 01CF2023 */  subu       $a0, $t6, $t7
    /* 259E00 802DA6C0 44843000 */  mtc1       $a0, $f6
    /* 259E04 802DA6C4 44822000 */  mtc1       $v0, $f4
    /* 259E08 802DA6C8 468033A0 */  cvt.s.w    $f14, $f6
    /* 259E0C 802DA6CC 46802320 */  cvt.s.w    $f12, $f4
    /* 259E10 802DA6D0 E7AE0034 */  swc1       $f14, 0x34($sp)
    /* 259E14 802DA6D4 0C000E09 */  jal        func_80003824_4424
    /* 259E18 802DA6D8 E7AC0038 */   swc1      $f12, 0x38($sp)
    /* 259E1C 802DA6DC C7AC0038 */  lwc1       $f12, 0x38($sp)
    /* 259E20 802DA6E0 C7AE0034 */  lwc1       $f14, 0x34($sp)
    /* 259E24 802DA6E4 0C000E09 */  jal        func_80003824_4424
    /* 259E28 802DA6E8 A7A20046 */   sh        $v0, 0x46($sp)
    /* 259E2C 802DA6EC 87A30046 */  lh         $v1, 0x46($sp)
    /* 259E30 802DA6F0 0002C823 */  negu       $t9, $v0
    /* 259E34 802DA6F4 C7AC0038 */  lwc1       $f12, 0x38($sp)
    /* 259E38 802DA6F8 0323082A */  slt        $at, $t9, $v1
    /* 259E3C 802DA6FC 10200005 */  beqz       $at, .L802DA714_259E54
    /* 259E40 802DA700 C7AE0034 */   lwc1      $f14, 0x34($sp)
    /* 259E44 802DA704 0C000E09 */  jal        func_80003824_4424
    /* 259E48 802DA708 00000000 */   nop
    /* 259E4C 802DA70C 10000004 */  b          .L802DA720_259E60
    /* 259E50 802DA710 00401825 */   or        $v1, $v0, $zero
  .L802DA714_259E54:
    /* 259E54 802DA714 0C000E09 */  jal        func_80003824_4424
    /* 259E58 802DA718 00000000 */   nop
    /* 259E5C 802DA71C 00021823 */  negu       $v1, $v0
  .L802DA720_259E60:
    /* 259E60 802DA720 00032C00 */  sll        $a1, $v1, 16
    /* 259E64 802DA724 00055C03 */  sra        $t3, $a1, 16
    /* 259E68 802DA728 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 259E6C 802DA72C 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 259E70 802DA730 01602825 */  or         $a1, $t3, $zero
    /* 259E74 802DA734 00003025 */  or         $a2, $zero, $zero
    /* 259E78 802DA738 0C040B77 */  jal        func_80102DDC_111D8C
    /* 259E7C 802DA73C 3C074248 */   lui       $a3, (0x42480000 >> 16)
    /* 259E80 802DA740 92020026 */  lbu        $v0, 0x26($s0)
  .L802DA744_259E84:
    /* 259E84 802DA744 24010002 */  addiu      $at, $zero, 0x2
    /* 259E88 802DA748 24050001 */  addiu      $a1, $zero, 0x1
    /* 259E8C 802DA74C 54410035 */  bnel       $v0, $at, .L802DA824_259F64
    /* 259E90 802DA750 24010004 */   addiu     $at, $zero, 0x4
    /* 259E94 802DA754 86020048 */  lh         $v0, 0x48($s0)
    /* 259E98 802DA758 2401FF38 */  addiu      $at, $zero, -0xC8
    /* 259E9C 802DA75C 14410006 */  bne        $v0, $at, .L802DA778_259EB8
    /* 259EA0 802DA760 00000000 */   nop
    /* 259EA4 802DA764 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 259EA8 802DA768 A2000036 */  sb         $zero, 0x36($s0)
    /* 259EAC 802DA76C 86020048 */  lh         $v0, 0x48($s0)
    /* 259EB0 802DA770 358D1000 */  ori        $t5, $t4, 0x1000
    /* 259EB4 802DA774 AE0D0020 */  sw         $t5, 0x20($s0)
  .L802DA778_259EB8:
    /* 259EB8 802DA778 14400013 */  bnez       $v0, .L802DA7C8_259F08
    /* 259EBC 802DA77C 3C01FFBF */   lui       $at, (0xFFBFFFFF >> 16)
    /* 259EC0 802DA780 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 259EC4 802DA784 8602002C */  lh         $v0, 0x2C($s0)
    /* 259EC8 802DA788 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 259ECC 802DA78C 01C17824 */  and        $t7, $t6, $at
    /* 259ED0 802DA790 A6000012 */  sh         $zero, 0x12($s0)
    /* 259ED4 802DA794 10400004 */  beqz       $v0, .L802DA7A8_259EE8
    /* 259ED8 802DA798 AE0F0020 */   sw        $t7, 0x20($s0)
    /* 259EDC 802DA79C 2458FFFF */  addiu      $t8, $v0, -0x1
    /* 259EE0 802DA7A0 10000007 */  b          .L802DA7C0_259F00
    /* 259EE4 802DA7A4 A618002C */   sh        $t8, 0x2C($s0)
  .L802DA7A8_259EE8:
    /* 259EE8 802DA7A8 8E0B0020 */  lw         $t3, 0x20($s0)
    /* 259EEC 802DA7AC 24190004 */  addiu      $t9, $zero, 0x4
    /* 259EF0 802DA7B0 A2190026 */  sb         $t9, 0x26($s0)
    /* 259EF4 802DA7B4 356C2000 */  ori        $t4, $t3, 0x2000
    /* 259EF8 802DA7B8 AE0C0020 */  sw         $t4, 0x20($s0)
    /* 259EFC 802DA7BC A2000036 */  sb         $zero, 0x36($s0)
  .L802DA7C0_259F00:
    /* 259F00 802DA7C0 10000017 */  b          .L802DA820_259F60
    /* 259F04 802DA7C4 92020026 */   lbu       $v0, 0x26($s0)
  .L802DA7C8_259F08:
    /* 259F08 802DA7C8 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 259F0C 802DA7CC 8FB90050 */  lw         $t9, 0x50($sp)
    /* 259F10 802DA7D0 2401F7BF */  addiu      $at, $zero, -0x841
    /* 259F14 802DA7D4 35AE0100 */  ori        $t6, $t5, 0x100
    /* 259F18 802DA7D8 01C1C024 */  and        $t8, $t6, $at
    /* 259F1C 802DA7DC AE0E0020 */  sw         $t6, 0x20($s0)
    /* 259F20 802DA7E0 2B2105DD */  slti       $at, $t9, 0x5DD
    /* 259F24 802DA7E4 1020000B */  beqz       $at, .L802DA814_259F54
    /* 259F28 802DA7E8 AE180020 */   sw        $t8, 0x20($s0)
    /* 259F2C 802DA7EC 2B21012D */  slti       $at, $t9, 0x12D
    /* 259F30 802DA7F0 54200009 */  bnel       $at, $zero, .L802DA818_259F58
    /* 259F34 802DA7F4 240E0050 */   addiu     $t6, $zero, 0x50
    /* 259F38 802DA7F8 860B0048 */  lh         $t3, 0x48($s0)
    /* 259F3C 802DA7FC 256C000F */  addiu      $t4, $t3, 0xF
    /* 259F40 802DA800 A60C0048 */  sh         $t4, 0x48($s0)
    /* 259F44 802DA804 860D0048 */  lh         $t5, 0x48($s0)
    /* 259F48 802DA808 05A20003 */  bltzl      $t5, .L802DA818_259F58
    /* 259F4C 802DA80C 240E0050 */   addiu     $t6, $zero, 0x50
    /* 259F50 802DA810 A6000048 */  sh         $zero, 0x48($s0)
  .L802DA814_259F54:
    /* 259F54 802DA814 240E0050 */  addiu      $t6, $zero, 0x50
  .L802DA818_259F58:
    /* 259F58 802DA818 A60E002C */  sh         $t6, 0x2C($s0)
    /* 259F5C 802DA81C 92020026 */  lbu        $v0, 0x26($s0)
  .L802DA820_259F60:
    /* 259F60 802DA820 24010004 */  addiu      $at, $zero, 0x4
  .L802DA824_259F64:
    /* 259F64 802DA824 14410007 */  bne        $v0, $at, .L802DA844_259F84
    /* 259F68 802DA828 00000000 */   nop
    /* 259F6C 802DA82C 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 259F70 802DA830 2401F6FF */  addiu      $at, $zero, -0x901
    /* 259F74 802DA834 35F80040 */  ori        $t8, $t7, 0x40
    /* 259F78 802DA838 AE180020 */  sw         $t8, 0x20($s0)
    /* 259F7C 802DA83C 03015824 */  and        $t3, $t8, $at
    /* 259F80 802DA840 AE0B0020 */  sw         $t3, 0x20($s0)
  .L802DA844_259F84:
    /* 259F84 802DA844 0C0B6848 */  jal        func_802DA120_259860
    /* 259F88 802DA848 93A4006B */   lbu       $a0, 0x6B($sp)
    /* 259F8C 802DA84C 8FAC0050 */  lw         $t4, 0x50($sp)
    /* 259F90 802DA850 240D0004 */  addiu      $t5, $zero, 0x4
    /* 259F94 802DA854 2981012C */  slti       $at, $t4, 0x12C
    /* 259F98 802DA858 50200003 */  beql       $at, $zero, .L802DA868_259FA8
    /* 259F9C 802DA85C 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 259FA0 802DA860 A20D0026 */  sb         $t5, 0x26($s0)
    /* 259FA4 802DA864 8FBF002C */  lw         $ra, 0x2C($sp)
  .L802DA868_259FA8:
    /* 259FA8 802DA868 8FB00028 */  lw         $s0, 0x28($sp)
    /* 259FAC 802DA86C 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 259FB0 802DA870 03E00008 */  jr         $ra
    /* 259FB4 802DA874 00000000 */   nop
endlabel func_802DA520_259C60
