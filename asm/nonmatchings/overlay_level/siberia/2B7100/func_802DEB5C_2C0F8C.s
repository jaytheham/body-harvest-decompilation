nonmatching func_802DEB5C_2C0F8C, 0x288

glabel func_802DEB5C_2C0F8C
    /* 2C0F8C 802DEB5C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2C0F90 802DEB60 000E7880 */  sll        $t7, $t6, 2
    /* 2C0F94 802DEB64 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 2C0F98 802DEB68 01EE7821 */  addu       $t7, $t7, $t6
    /* 2C0F9C 802DEB6C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2C0FA0 802DEB70 3C088005 */  lui        $t0, %hi(D_80052A8C)
    /* 2C0FA4 802DEB74 8D082A8C */  lw         $t0, %lo(D_80052A8C)($t0)
    /* 2C0FA8 802DEB78 AFB00020 */  sw         $s0, 0x20($sp)
    /* 2C0FAC 802DEB7C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2C0FB0 802DEB80 000F7900 */  sll        $t7, $t7, 4
    /* 2C0FB4 802DEB84 01F88021 */  addu       $s0, $t7, $t8
    /* 2C0FB8 802DEB88 9219001A */  lbu        $t9, 0x1A($s0)
    /* 2C0FBC 802DEB8C AFA40050 */  sw         $a0, 0x50($sp)
    /* 2C0FC0 802DEB90 31090001 */  andi       $t1, $t0, 0x1
    /* 2C0FC4 802DEB94 01C02025 */  or         $a0, $t6, $zero
    /* 2C0FC8 802DEB98 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 2C0FCC 802DEB9C 11200005 */  beqz       $t1, .L802DEBB4_2C0FE4
    /* 2C0FD0 802DEBA0 A3B9004F */   sb        $t9, 0x4F($sp)
    /* 2C0FD4 802DEBA4 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 2C0FD8 802DEBA8 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 2C0FDC 802DEBAC 01415825 */  or         $t3, $t2, $at
    /* 2C0FE0 802DEBB0 AE0B0020 */  sw         $t3, 0x20($s0)
  .L802DEBB4_2C0FE4:
    /* 2C0FE4 802DEBB4 8602003A */  lh         $v0, 0x3A($s0)
    /* 2C0FE8 802DEBB8 1040000E */  beqz       $v0, .L802DEBF4_2C1024
    /* 2C0FEC 802DEBBC 28410029 */   slti      $at, $v0, 0x29
    /* 2C0FF0 802DEBC0 14200007 */  bnez       $at, .L802DEBE0_2C1010
    /* 2C0FF4 802DEBC4 240501F4 */   addiu     $a1, $zero, 0x1F4
    /* 2C0FF8 802DEBC8 24050032 */  addiu      $a1, $zero, 0x32
    /* 2C0FFC 802DEBCC 240603E8 */  addiu      $a2, $zero, 0x3E8
    /* 2C1000 802DEBD0 0C023AC8 */  jal        func_8008EB20_5EFD0
    /* 2C1004 802DEBD4 A3A40053 */   sb        $a0, 0x53($sp)
    /* 2C1008 802DEBD8 10000009 */  b          .L802DEC00_2C1030
    /* 2C100C 802DEBDC 8E020020 */   lw        $v0, 0x20($s0)
  .L802DEBE0_2C1010:
    /* 2C1010 802DEBE0 240603E8 */  addiu      $a2, $zero, 0x3E8
    /* 2C1014 802DEBE4 0C023AC8 */  jal        func_8008EB20_5EFD0
    /* 2C1018 802DEBE8 A3A40053 */   sb        $a0, 0x53($sp)
    /* 2C101C 802DEBEC 10000004 */  b          .L802DEC00_2C1030
    /* 2C1020 802DEBF0 8E020020 */   lw        $v0, 0x20($s0)
  .L802DEBF4_2C1024:
    /* 2C1024 802DEBF4 0C020193 */  jal        func_8008064C_8F5FC
    /* 2C1028 802DEBF8 A3A40053 */   sb        $a0, 0x53($sp)
    /* 2C102C 802DEBFC 8E020020 */  lw         $v0, 0x20($s0)
  .L802DEC00_2C1030:
    /* 2C1030 802DEC00 93A40053 */  lbu        $a0, 0x53($sp)
    /* 2C1034 802DEC04 304C1000 */  andi       $t4, $v0, 0x1000
    /* 2C1038 802DEC08 1180003F */  beqz       $t4, .L802DED08_2C1138
    /* 2C103C 802DEC0C 304B0800 */   andi      $t3, $v0, 0x800
    /* 2C1040 802DEC10 0C04DD1A */  jal        func_80137468_146418
    /* 2C1044 802DEC14 24050025 */   addiu     $a1, $zero, 0x25
    /* 2C1048 802DEC18 860E000C */  lh         $t6, 0xC($s0)
    /* 2C104C 802DEC1C 3C068015 */  lui        $a2, %hi(D_8014DD50)
    /* 2C1050 802DEC20 24C6DD50 */  addiu      $a2, $a2, %lo(D_8014DD50)
    /* 2C1054 802DEC24 000E7900 */  sll        $t7, $t6, 4
    /* 2C1058 802DEC28 00CFC021 */  addu       $t8, $a2, $t7
    /* 2C105C 802DEC2C 8302000C */  lb         $v0, 0xC($t8)
    /* 2C1060 802DEC30 860D000E */  lh         $t5, 0xE($s0)
    /* 2C1064 802DEC34 0002C900 */  sll        $t9, $v0, 4
    /* 2C1068 802DEC38 00D91821 */  addu       $v1, $a2, $t9
    /* 2C106C 802DEC3C 94640008 */  lhu        $a0, 0x8($v1)
    /* 2C1070 802DEC40 8065000D */  lb         $a1, 0xD($v1)
    /* 2C1074 802DEC44 A60D0006 */  sh         $t5, 0x6($s0)
    /* 2C1078 802DEC48 288107D1 */  slti       $at, $a0, 0x7D1
    /* 2C107C 802DEC4C 14200007 */  bnez       $at, .L802DEC6C_2C109C
    /* 2C1080 802DEC50 2488F830 */   addiu     $t0, $a0, -0x7D0
    /* 2C1084 802DEC54 00054900 */  sll        $t1, $a1, 4
    /* 2C1088 802DEC58 A4680008 */  sh         $t0, 0x8($v1)
    /* 2C108C 802DEC5C 00C91021 */  addu       $v0, $a2, $t1
    /* 2C1090 802DEC60 944A0008 */  lhu        $t2, 0x8($v0)
    /* 2C1094 802DEC64 254B07D0 */  addiu      $t3, $t2, 0x7D0
    /* 2C1098 802DEC68 A44B0008 */  sh         $t3, 0x8($v0)
  .L802DEC6C_2C109C:
    /* 2C109C 802DEC6C 86040000 */  lh         $a0, 0x0($s0)
    /* 2C10A0 802DEC70 86050004 */  lh         $a1, 0x4($s0)
    /* 2C10A4 802DEC74 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* 2C10A8 802DEC78 27A60048 */   addiu     $a2, $sp, 0x48
    /* 2C10AC 802DEC7C 920C0047 */  lbu        $t4, 0x47($s0)
    /* 2C10B0 802DEC80 93AF004F */  lbu        $t7, 0x4F($sp)
    /* 2C10B4 802DEC84 3C198025 */  lui        $t9, %hi(D_8025668C)
    /* 2C10B8 802DEC88 318D000E */  andi       $t5, $t4, 0xE
    /* 2C10BC 802DEC8C 15A0000D */  bnez       $t5, .L802DECC4_2C10F4
    /* 2C10C0 802DEC90 000FC080 */   sll       $t8, $t7, 2
    /* 2C10C4 802DEC94 030FC023 */  subu       $t8, $t8, $t7
    /* 2C10C8 802DEC98 0018C080 */  sll        $t8, $t8, 2
    /* 2C10CC 802DEC9C 030FC021 */  addu       $t8, $t8, $t7
    /* 2C10D0 802DECA0 0018C0C0 */  sll        $t8, $t8, 3
    /* 2C10D4 802DECA4 0338C821 */  addu       $t9, $t9, $t8
    /* 2C10D8 802DECA8 8739668C */  lh         $t9, %lo(D_8025668C)($t9)
    /* 2C10DC 802DECAC 860E0002 */  lh         $t6, 0x2($s0)
    /* 2C10E0 802DECB0 87A90048 */  lh         $t1, 0x48($sp)
    /* 2C10E4 802DECB4 01D94023 */  subu       $t0, $t6, $t9
    /* 2C10E8 802DECB8 0109082A */  slt        $at, $t0, $t1
    /* 2C10EC 802DECBC 5020003D */  beql       $at, $zero, .L802DEDB4_2C11E4
    /* 2C10F0 802DECC0 8602003A */   lh        $v0, 0x3A($s0)
  .L802DECC4_2C10F4:
    /* 2C10F4 802DECC4 9204003F */  lbu        $a0, 0x3F($s0)
    /* 2C10F8 802DECC8 240100FF */  addiu      $at, $zero, 0xFF
    /* 2C10FC 802DECCC 10810003 */  beq        $a0, $at, .L802DECDC_2C110C
    /* 2C1100 802DECD0 00000000 */   nop
    /* 2C1104 802DECD4 0C01D971 */  jal        func_800765C4_85574
    /* 2C1108 802DECD8 00000000 */   nop
  .L802DECDC_2C110C:
    /* 2C110C 802DECDC 0C0221D8 */  jal        func_80088760_97710
    /* 2C1110 802DECE0 02002025 */   or        $a0, $s0, $zero
    /* 2C1114 802DECE4 240A0100 */  addiu      $t2, $zero, 0x100
    /* 2C1118 802DECE8 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 2C111C 802DECEC 86040000 */  lh         $a0, 0x0($s0)
    /* 2C1120 802DECF0 86050002 */  lh         $a1, 0x2($s0)
    /* 2C1124 802DECF4 86060004 */  lh         $a2, 0x4($s0)
    /* 2C1128 802DECF8 0C0492D7 */  jal        func_80124B5C_133B0C
    /* 2C112C 802DECFC 240703E8 */   addiu     $a3, $zero, 0x3E8
    /* 2C1130 802DED00 1000002C */  b          .L802DEDB4_2C11E4
    /* 2C1134 802DED04 8602003A */   lh        $v0, 0x3A($s0)
  .L802DED08_2C1138:
    /* 2C1138 802DED08 1160000C */  beqz       $t3, .L802DED3C_2C116C
    /* 2C113C 802DED0C 93A40053 */   lbu       $a0, 0x53($sp)
    /* 2C1140 802DED10 240501F4 */  addiu      $a1, $zero, 0x1F4
    /* 2C1144 802DED14 0C023949 */  jal        func_8008E524_9D4D4
    /* 2C1148 802DED18 24060004 */   addiu     $a2, $zero, 0x4
    /* 2C114C 802DED1C 00022C00 */  sll        $a1, $v0, 16
    /* 2C1150 802DED20 00056403 */  sra        $t4, $a1, 16
    /* 2C1154 802DED24 A7A20048 */  sh         $v0, 0x48($sp)
    /* 2C1158 802DED28 01802825 */  or         $a1, $t4, $zero
    /* 2C115C 802DED2C 0C023A5E */  jal        func_8008E978_9D928
    /* 2C1160 802DED30 93A40053 */   lbu       $a0, 0x53($sp)
    /* 2C1164 802DED34 10000003 */  b          .L802DED44_2C1174
    /* 2C1168 802DED38 00000000 */   nop
  .L802DED3C_2C116C:
    /* 2C116C 802DED3C 0C023B7F */  jal        func_8008EDFC_9DDAC
    /* 2C1170 802DED40 93A40053 */   lbu       $a0, 0x53($sp)
  .L802DED44_2C1174:
    /* 2C1174 802DED44 0C023BC7 */  jal        func_8008EF1C_9DECC
    /* 2C1178 802DED48 93A40053 */   lbu       $a0, 0x53($sp)
    /* 2C117C 802DED4C 0C024B10 */  jal        func_80092C40_A1BF0
    /* 2C1180 802DED50 93A40053 */   lbu       $a0, 0x53($sp)
    /* 2C1184 802DED54 860D003A */  lh         $t5, 0x3A($s0)
    /* 2C1188 802DED58 55A00016 */  bnel       $t5, $zero, .L802DEDB4_2C11E4
    /* 2C118C 802DED5C 8602003A */   lh        $v0, 0x3A($s0)
    /* 2C1190 802DED60 860F001E */  lh         $t7, 0x1E($s0)
    /* 2C1194 802DED64 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2C1198 802DED68 02002825 */  or         $a1, $s0, $zero
    /* 2C119C 802DED6C 55E00011 */  bnel       $t7, $zero, .L802DEDB4_2C11E4
    /* 2C11A0 802DED70 8602003A */   lh        $v0, 0x3A($s0)
    /* 2C11A4 802DED74 0C0213C0 */  jal        func_80084F00_93EB0
    /* 2C11A8 802DED78 8C842B34 */   lw        $a0, %lo(D_80052B34)($a0)
    /* 2C11AC 802DED7C 284103E8 */  slti       $at, $v0, 0x3E8
    /* 2C11B0 802DED80 1020000B */  beqz       $at, .L802DEDB0_2C11E0
    /* 2C11B4 802DED84 93A40053 */   lbu       $a0, 0x53($sp)
    /* 2C11B8 802DED88 00002825 */  or         $a1, $zero, $zero
    /* 2C11BC 802DED8C 0C021C73 */  jal        func_800871CC_9617C
    /* 2C11C0 802DED90 24060040 */   addiu     $a2, $zero, 0x40
    /* 2C11C4 802DED94 0C000E38 */  jal        func_800038E0_44E0
    /* 2C11C8 802DED98 00000000 */   nop
    /* 2C11CC 802DED9C 24010007 */  addiu      $at, $zero, 0x7
    /* 2C11D0 802DEDA0 0041001A */  div        $zero, $v0, $at
    /* 2C11D4 802DEDA4 0000C010 */  mfhi       $t8
    /* 2C11D8 802DEDA8 270E0005 */  addiu      $t6, $t8, 0x5
    /* 2C11DC 802DEDAC A60E001E */  sh         $t6, 0x1E($s0)
  .L802DEDB0_2C11E0:
    /* 2C11E0 802DEDB0 8602003A */  lh         $v0, 0x3A($s0)
  .L802DEDB4_2C11E4:
    /* 2C11E4 802DEDB4 10400002 */  beqz       $v0, .L802DEDC0_2C11F0
    /* 2C11E8 802DEDB8 2459FFFF */   addiu     $t9, $v0, -0x1
    /* 2C11EC 802DEDBC A619003A */  sh         $t9, 0x3A($s0)
  .L802DEDC0_2C11F0:
    /* 2C11F0 802DEDC0 8602001E */  lh         $v0, 0x1E($s0)
    /* 2C11F4 802DEDC4 10400002 */  beqz       $v0, .L802DEDD0_2C1200
    /* 2C11F8 802DEDC8 2448FFFF */   addiu     $t0, $v0, -0x1
    /* 2C11FC 802DEDCC A608001E */  sh         $t0, 0x1E($s0)
  .L802DEDD0_2C1200:
    /* 2C1200 802DEDD0 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 2C1204 802DEDD4 8FB00020 */  lw         $s0, 0x20($sp)
    /* 2C1208 802DEDD8 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 2C120C 802DEDDC 03E00008 */  jr         $ra
    /* 2C1210 802DEDE0 00000000 */   nop
endlabel func_802DEB5C_2C0F8C
