nonmatching func_802DEFC0_1F7CD0, 0x238

glabel func_802DEFC0_1F7CD0
    /* 1F7CD0 802DEFC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 1F7CD4 802DEFC4 AFA40020 */  sw         $a0, 0x20($sp)
    /* 1F7CD8 802DEFC8 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F7CDC 802DEFCC 01C02025 */  or         $a0, $t6, $zero
    /* 1F7CE0 802DEFD0 AFA60028 */  sw         $a2, 0x28($sp)
    /* 1F7CE4 802DEFD4 0006CC00 */  sll        $t9, $a2, 16
    /* 1F7CE8 802DEFD8 00193403 */  sra        $a2, $t9, 16
    /* 1F7CEC 802DEFDC AFA50024 */  sw         $a1, 0x24($sp)
    /* 1F7CF0 802DEFE0 00A07825 */  or         $t7, $a1, $zero
    /* 1F7CF4 802DEFE4 0004C880 */  sll        $t9, $a0, 2
    /* 1F7CF8 802DEFE8 01E02825 */  or         $a1, $t7, $zero
    /* 1F7CFC 802DEFEC 0324C821 */  addu       $t9, $t9, $a0
    /* 1F7D00 802DEFF0 3C0E8005 */  lui        $t6, %hi(alienInstances)
    /* 1F7D04 802DEFF4 00077C00 */  sll        $t7, $a3, 16
    /* 1F7D08 802DEFF8 AFA7002C */  sw         $a3, 0x2C($sp)
    /* 1F7D0C 802DEFFC 25CE8198 */  addiu      $t6, $t6, %lo(alienInstances)
    /* 1F7D10 802DF000 0019C900 */  sll        $t9, $t9, 4
    /* 1F7D14 802DF004 000F3C03 */  sra        $a3, $t7, 16
    /* 1F7D18 802DF008 032E1021 */  addu       $v0, $t9, $t6
    /* 1F7D1C 802DF00C 844F000C */  lh         $t7, 0xC($v0)
    /* 1F7D20 802DF010 3C0C8015 */  lui        $t4, %hi(D_8014DD5C)
    /* 1F7D24 802DF014 3C0E8015 */  lui        $t6, %hi(D_8014DD50)
    /* 1F7D28 802DF018 000FC100 */  sll        $t8, $t7, 4
    /* 1F7D2C 802DF01C 01986021 */  addu       $t4, $t4, $t8
    /* 1F7D30 802DF020 818CDD5C */  lb         $t4, %lo(D_8014DD5C)($t4)
    /* 1F7D34 802DF024 25CEDD50 */  addiu      $t6, $t6, %lo(D_8014DD50)
    /* 1F7D38 802DF028 8C580020 */  lw         $t8, 0x20($v0)
    /* 1F7D3C 802DF02C 000CC900 */  sll        $t9, $t4, 4
    /* 1F7D40 802DF030 032E7821 */  addu       $t7, $t9, $t6
    /* 1F7D44 802DF034 AFB1000C */  sw         $s1, 0xC($sp)
    /* 1F7D48 802DF038 AFB00008 */  sw         $s0, 0x8($sp)
    /* 1F7D4C 802DF03C 3C0AFFFF */  lui        $t2, (0xFFFF7FFF >> 16)
    /* 1F7D50 802DF040 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F7D54 802DF044 81ED000C */  lb         $t5, 0xC($t7)
    /* 1F7D58 802DF048 354A7FFF */  ori        $t2, $t2, (0xFFFF7FFF & 0xFFFF)
    /* 1F7D5C 802DF04C 030AC824 */  and        $t9, $t8, $t2
    /* 1F7D60 802DF050 AC590020 */  sw         $t9, 0x20($v0)
    /* 1F7D64 802DF054 904B001A */  lbu        $t3, 0x1A($v0)
    /* 1F7D68 802DF058 95F00006 */  lhu        $s0, 0x6($t7)
    /* 1F7D6C 802DF05C 3C188015 */  lui        $t8, %hi(D_8014DD50)
    /* 1F7D70 802DF060 01E07025 */  or         $t6, $t7, $zero
    /* 1F7D74 802DF064 2718DD50 */  addiu      $t8, $t8, %lo(D_8014DD50)
    /* 1F7D78 802DF068 000D7900 */  sll        $t7, $t5, 4
    /* 1F7D7C 802DF06C 01F84021 */  addu       $t0, $t7, $t8
    /* 1F7D80 802DF070 000BC080 */  sll        $t8, $t3, 2
    /* 1F7D84 802DF074 030BC023 */  subu       $t8, $t8, $t3
    /* 1F7D88 802DF078 0018C080 */  sll        $t8, $t8, 2
    /* 1F7D8C 802DF07C 95110006 */  lhu        $s1, 0x6($t0)
    /* 1F7D90 802DF080 030BC021 */  addu       $t8, $t8, $t3
    /* 1F7D94 802DF084 0018C0C0 */  sll        $t8, $t8, 3
    /* 1F7D98 802DF088 3C038025 */  lui        $v1, %hi(D_802566C2)
    /* 1F7D9C 802DF08C 00781821 */  addu       $v1, $v1, $t8
    /* 1F7DA0 802DF090 846366C2 */  lh         $v1, %lo(D_802566C2)($v1)
    /* 1F7DA4 802DF094 0211C821 */  addu       $t9, $s0, $s1
    /* 1F7DA8 802DF098 03257821 */  addu       $t7, $t9, $a1
    /* 1F7DAC 802DF09C 000FCC00 */  sll        $t9, $t7, 16
    /* 1F7DB0 802DF0A0 0019C403 */  sra        $t8, $t9, 16
    /* 1F7DB4 802DF0A4 00034823 */  negu       $t1, $v1
    /* 1F7DB8 802DF0A8 0309082A */  slt        $at, $t8, $t1
    /* 1F7DBC 802DF0AC 1020000F */  beqz       $at, .L802DF0EC_1F7DFC
    /* 1F7DC0 802DF0B0 A7AF001E */   sh        $t7, 0x1E($sp)
    /* 1F7DC4 802DF0B4 00107C00 */  sll        $t7, $s0, 16
    /* 1F7DC8 802DF0B8 000FCC03 */  sra        $t9, $t7, 16
    /* 1F7DCC 802DF0BC 2B211000 */  slti       $at, $t9, 0x1000
    /* 1F7DD0 802DF0C0 10200003 */  beqz       $at, .L802DF0D0_1F7DE0
    /* 1F7DD4 802DF0C4 0203C021 */   addu      $t8, $s0, $v1
    /* 1F7DD8 802DF0C8 A5D80006 */  sh         $t8, 0x6($t6)
    /* 1F7DDC 802DF0CC 95110006 */  lhu        $s1, 0x6($t0)
  .L802DF0D0_1F7DE0:
    /* 1F7DE0 802DF0D0 00117C00 */  sll        $t7, $s1, 16
    /* 1F7DE4 802DF0D4 000FCC03 */  sra        $t9, $t7, 16
    /* 1F7DE8 802DF0D8 2B212000 */  slti       $at, $t9, 0x2000
    /* 1F7DEC 802DF0DC 10200018 */  beqz       $at, .L802DF140_1F7E50
    /* 1F7DF0 802DF0E0 0223C021 */   addu      $t8, $s1, $v1
    /* 1F7DF4 802DF0E4 10000016 */  b          .L802DF140_1F7E50
    /* 1F7DF8 802DF0E8 A5180006 */   sh        $t8, 0x6($t0)
  .L802DF0EC_1F7DFC:
    /* 1F7DFC 802DF0EC 87AE001E */  lh         $t6, 0x1E($sp)
    /* 1F7E00 802DF0F0 00107C00 */  sll        $t7, $s0, 16
    /* 1F7E04 802DF0F4 000FCC03 */  sra        $t9, $t7, 16
    /* 1F7E08 802DF0F8 006E082A */  slt        $at, $v1, $t6
    /* 1F7E0C 802DF0FC 1020000D */  beqz       $at, .L802DF134_1F7E44
    /* 1F7E10 802DF100 2B21F001 */   slti      $at, $t9, -0xFFF
    /* 1F7E14 802DF104 14200004 */  bnez       $at, .L802DF118_1F7E28
    /* 1F7E18 802DF108 8FAE0010 */   lw        $t6, 0x10($sp)
    /* 1F7E1C 802DF10C 0203C023 */  subu       $t8, $s0, $v1
    /* 1F7E20 802DF110 A5D80006 */  sh         $t8, 0x6($t6)
    /* 1F7E24 802DF114 95110006 */  lhu        $s1, 0x6($t0)
  .L802DF118_1F7E28:
    /* 1F7E28 802DF118 00117C00 */  sll        $t7, $s1, 16
    /* 1F7E2C 802DF11C 000FCC03 */  sra        $t9, $t7, 16
    /* 1F7E30 802DF120 2B21E001 */  slti       $at, $t9, -0x1FFF
    /* 1F7E34 802DF124 14200006 */  bnez       $at, .L802DF140_1F7E50
    /* 1F7E38 802DF128 0223C023 */   subu      $t8, $s1, $v1
    /* 1F7E3C 802DF12C 10000004 */  b          .L802DF140_1F7E50
    /* 1F7E40 802DF130 A5180006 */   sh        $t8, 0x6($t0)
  .L802DF134_1F7E44:
    /* 1F7E44 802DF134 8C4E0020 */  lw         $t6, 0x20($v0)
    /* 1F7E48 802DF138 35CF8000 */  ori        $t7, $t6, 0x8000
    /* 1F7E4C 802DF13C AC4F0020 */  sw         $t7, 0x20($v0)
  .L802DF140_1F7E50:
    /* 1F7E50 802DF140 9504000A */  lhu        $a0, 0xA($t0)
    /* 1F7E54 802DF144 00862823 */  subu       $a1, $a0, $a2
    /* 1F7E58 802DF148 0005CC00 */  sll        $t9, $a1, 16
    /* 1F7E5C 802DF14C 00192C03 */  sra        $a1, $t9, 16
    /* 1F7E60 802DF150 00A9082A */  slt        $at, $a1, $t1
    /* 1F7E64 802DF154 50200008 */  beql       $at, $zero, .L802DF178_1F7E88
    /* 1F7E68 802DF158 0065082A */   slt       $at, $v1, $a1
    /* 1F7E6C 802DF15C 8C4F0020 */  lw         $t7, 0x20($v0)
    /* 1F7E70 802DF160 00837021 */  addu       $t6, $a0, $v1
    /* 1F7E74 802DF164 A50E000A */  sh         $t6, 0xA($t0)
    /* 1F7E78 802DF168 01EAC824 */  and        $t9, $t7, $t2
    /* 1F7E7C 802DF16C 10000009 */  b          .L802DF194_1F7EA4
    /* 1F7E80 802DF170 AC590020 */   sw        $t9, 0x20($v0)
    /* 1F7E84 802DF174 0065082A */  slt        $at, $v1, $a1
  .L802DF178_1F7E88:
    /* 1F7E88 802DF178 50200007 */  beql       $at, $zero, .L802DF198_1F7EA8
    /* 1F7E8C 802DF17C 8444000A */   lh        $a0, 0xA($v0)
    /* 1F7E90 802DF180 8C4E0020 */  lw         $t6, 0x20($v0)
    /* 1F7E94 802DF184 0083C023 */  subu       $t8, $a0, $v1
    /* 1F7E98 802DF188 A518000A */  sh         $t8, 0xA($t0)
    /* 1F7E9C 802DF18C 01CA7824 */  and        $t7, $t6, $t2
    /* 1F7EA0 802DF190 AC4F0020 */  sw         $t7, 0x20($v0)
  .L802DF194_1F7EA4:
    /* 1F7EA4 802DF194 8444000A */  lh         $a0, 0xA($v0)
  .L802DF198_1F7EA8:
    /* 1F7EA8 802DF198 00872823 */  subu       $a1, $a0, $a3
    /* 1F7EAC 802DF19C 0005CC00 */  sll        $t9, $a1, 16
    /* 1F7EB0 802DF1A0 00192C03 */  sra        $a1, $t9, 16
    /* 1F7EB4 802DF1A4 00A9082A */  slt        $at, $a1, $t1
    /* 1F7EB8 802DF1A8 50200008 */  beql       $at, $zero, .L802DF1CC_1F7EDC
    /* 1F7EBC 802DF1AC 0065082A */   slt       $at, $v1, $a1
    /* 1F7EC0 802DF1B0 8C4F0020 */  lw         $t7, 0x20($v0)
    /* 1F7EC4 802DF1B4 00837021 */  addu       $t6, $a0, $v1
    /* 1F7EC8 802DF1B8 A44E000A */  sh         $t6, 0xA($v0)
    /* 1F7ECC 802DF1BC 01EAC824 */  and        $t9, $t7, $t2
    /* 1F7ED0 802DF1C0 10000009 */  b          .L802DF1E8_1F7EF8
    /* 1F7ED4 802DF1C4 AC590020 */   sw        $t9, 0x20($v0)
    /* 1F7ED8 802DF1C8 0065082A */  slt        $at, $v1, $a1
  .L802DF1CC_1F7EDC:
    /* 1F7EDC 802DF1CC 50200007 */  beql       $at, $zero, .L802DF1EC_1F7EFC
    /* 1F7EE0 802DF1D0 8FB00008 */   lw        $s0, 0x8($sp)
    /* 1F7EE4 802DF1D4 8C4E0020 */  lw         $t6, 0x20($v0)
    /* 1F7EE8 802DF1D8 0083C023 */  subu       $t8, $a0, $v1
    /* 1F7EEC 802DF1DC A458000A */  sh         $t8, 0xA($v0)
    /* 1F7EF0 802DF1E0 01CA7824 */  and        $t7, $t6, $t2
    /* 1F7EF4 802DF1E4 AC4F0020 */  sw         $t7, 0x20($v0)
  .L802DF1E8_1F7EF8:
    /* 1F7EF8 802DF1E8 8FB00008 */  lw         $s0, 0x8($sp)
  .L802DF1EC_1F7EFC:
    /* 1F7EFC 802DF1EC 8FB1000C */  lw         $s1, 0xC($sp)
    /* 1F7F00 802DF1F0 03E00008 */  jr         $ra
    /* 1F7F04 802DF1F4 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_802DEFC0_1F7CD0
