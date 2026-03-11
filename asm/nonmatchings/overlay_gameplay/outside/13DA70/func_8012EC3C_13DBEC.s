nonmatching func_8012EC3C_13DBEC, 0x610

glabel func_8012EC3C_13DBEC
    /* 13DBEC 8012EC3C 308200FF */  andi       $v0, $a0, 0xFF
    /* 13DBF0 8012EC40 24010020 */  addiu      $at, $zero, 0x20
    /* 13DBF4 8012EC44 14410003 */  bne        $v0, $at, .L8012EC54_13DC04
    /* 13DBF8 8012EC48 AFA40000 */   sw        $a0, 0x0($sp)
    /* 13DBFC 8012EC4C 03E00008 */  jr         $ra
    /* 13DC00 8012EC50 00001025 */   or        $v0, $zero, $zero
  .L8012EC54_13DC04:
    /* 13DC04 8012EC54 240100E9 */  addiu      $at, $zero, 0xE9
    /* 13DC08 8012EC58 14410039 */  bne        $v0, $at, .L8012ED40_13DCF0
    /* 13DC0C 8012EC5C 3C048006 */   lui       $a0, %hi(D_8005BB2C)
    /* 13DC10 8012EC60 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* 13DC14 8012EC64 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DC18 8012EC68 3C190506 */  lui        $t9, %hi(D_505A0A0)
    /* 13DC1C 8012EC6C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 13DC20 8012EC70 246F0008 */  addiu      $t7, $v1, 0x8
    /* 13DC24 8012EC74 AC8F0000 */  sw         $t7, 0x0($a0)
    /* 13DC28 8012EC78 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 13DC2C 8012EC7C 2739A0A0 */  addiu      $t9, $t9, %lo(D_505A0A0)
    /* 13DC30 8012EC80 03216824 */  and        $t5, $t9, $at
    /* 13DC34 8012EC84 3C18FD70 */  lui        $t8, (0xFD700000 >> 16)
    /* 13DC38 8012EC88 AC780000 */  sw         $t8, 0x0($v1)
    /* 13DC3C 8012EC8C AC6D0004 */  sw         $t5, 0x4($v1)
    /* 13DC40 8012EC90 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DC44 8012EC94 3C180700 */  lui        $t8, (0x7000000 >> 16)
    /* 13DC48 8012EC98 3C0FF570 */  lui        $t7, (0xF5700000 >> 16)
    /* 13DC4C 8012EC9C 246E0008 */  addiu      $t6, $v1, 0x8
    /* 13DC50 8012ECA0 AC8E0000 */  sw         $t6, 0x0($a0)
    /* 13DC54 8012ECA4 AC780004 */  sw         $t8, 0x4($v1)
    /* 13DC58 8012ECA8 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 13DC5C 8012ECAC 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DC60 8012ECB0 3C0DE600 */  lui        $t5, (0xE6000000 >> 16)
    /* 13DC64 8012ECB4 3C18070F */  lui        $t8, (0x70FF400 >> 16)
    /* 13DC68 8012ECB8 24790008 */  addiu      $t9, $v1, 0x8
    /* 13DC6C 8012ECBC AC990000 */  sw         $t9, 0x0($a0)
    /* 13DC70 8012ECC0 AC600004 */  sw         $zero, 0x4($v1)
    /* 13DC74 8012ECC4 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 13DC78 8012ECC8 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DC7C 8012ECCC 3718F400 */  ori        $t8, $t8, (0x70FF400 & 0xFFFF)
    /* 13DC80 8012ECD0 3C0FF300 */  lui        $t7, (0xF3000000 >> 16)
    /* 13DC84 8012ECD4 246E0008 */  addiu      $t6, $v1, 0x8
    /* 13DC88 8012ECD8 AC8E0000 */  sw         $t6, 0x0($a0)
    /* 13DC8C 8012ECDC AC780004 */  sw         $t8, 0x4($v1)
    /* 13DC90 8012ECE0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 13DC94 8012ECE4 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DC98 8012ECE8 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
    /* 13DC9C 8012ECEC 3C0FF560 */  lui        $t7, (0xF5600400 >> 16)
    /* 13DCA0 8012ECF0 24790008 */  addiu      $t9, $v1, 0x8
    /* 13DCA4 8012ECF4 AC990000 */  sw         $t9, 0x0($a0)
    /* 13DCA8 8012ECF8 AC600004 */  sw         $zero, 0x4($v1)
    /* 13DCAC 8012ECFC AC6D0000 */  sw         $t5, 0x0($v1)
    /* 13DCB0 8012ED00 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DCB4 8012ED04 35EF0400 */  ori        $t7, $t7, (0xF5600400 & 0xFFFF)
    /* 13DCB8 8012ED08 3C0D0007 */  lui        $t5, (0x7C07C >> 16)
    /* 13DCBC 8012ED0C 246E0008 */  addiu      $t6, $v1, 0x8
    /* 13DCC0 8012ED10 AC8E0000 */  sw         $t6, 0x0($a0)
    /* 13DCC4 8012ED14 AC600004 */  sw         $zero, 0x4($v1)
    /* 13DCC8 8012ED18 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 13DCCC 8012ED1C 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DCD0 8012ED20 35ADC07C */  ori        $t5, $t5, (0x7C07C & 0xFFFF)
    /* 13DCD4 8012ED24 3C19F200 */  lui        $t9, (0xF2000000 >> 16)
    /* 13DCD8 8012ED28 24780008 */  addiu      $t8, $v1, 0x8
    /* 13DCDC 8012ED2C AC980000 */  sw         $t8, 0x0($a0)
    /* 13DCE0 8012ED30 24020001 */  addiu      $v0, $zero, 0x1
    /* 13DCE4 8012ED34 AC6D0004 */  sw         $t5, 0x4($v1)
    /* 13DCE8 8012ED38 03E00008 */  jr         $ra
    /* 13DCEC 8012ED3C AC790000 */   sw        $t9, 0x0($v1)
  .L8012ED40_13DCF0:
    /* 13DCF0 8012ED40 240100E8 */  addiu      $at, $zero, 0xE8
    /* 13DCF4 8012ED44 14410039 */  bne        $v0, $at, .L8012EE2C_13DDDC
    /* 13DCF8 8012ED48 3C048006 */   lui       $a0, %hi(D_8005BB2C)
    /* 13DCFC 8012ED4C 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* 13DD00 8012ED50 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DD04 8012ED54 3C180506 */  lui        $t8, %hi(D_505A2A0)
    /* 13DD08 8012ED58 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 13DD0C 8012ED5C 246E0008 */  addiu      $t6, $v1, 0x8
    /* 13DD10 8012ED60 AC8E0000 */  sw         $t6, 0x0($a0)
    /* 13DD14 8012ED64 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 13DD18 8012ED68 2718A2A0 */  addiu      $t8, $t8, %lo(D_505A2A0)
    /* 13DD1C 8012ED6C 0301C824 */  and        $t9, $t8, $at
    /* 13DD20 8012ED70 3C0FFD70 */  lui        $t7, (0xFD700000 >> 16)
    /* 13DD24 8012ED74 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 13DD28 8012ED78 AC790004 */  sw         $t9, 0x4($v1)
    /* 13DD2C 8012ED7C 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DD30 8012ED80 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
    /* 13DD34 8012ED84 3C0EF570 */  lui        $t6, (0xF5700000 >> 16)
    /* 13DD38 8012ED88 246D0008 */  addiu      $t5, $v1, 0x8
    /* 13DD3C 8012ED8C AC8D0000 */  sw         $t5, 0x0($a0)
    /* 13DD40 8012ED90 AC6F0004 */  sw         $t7, 0x4($v1)
    /* 13DD44 8012ED94 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 13DD48 8012ED98 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DD4C 8012ED9C 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* 13DD50 8012EDA0 3C0F070F */  lui        $t7, (0x70FF400 >> 16)
    /* 13DD54 8012EDA4 24780008 */  addiu      $t8, $v1, 0x8
    /* 13DD58 8012EDA8 AC980000 */  sw         $t8, 0x0($a0)
    /* 13DD5C 8012EDAC AC600004 */  sw         $zero, 0x4($v1)
    /* 13DD60 8012EDB0 AC790000 */  sw         $t9, 0x0($v1)
    /* 13DD64 8012EDB4 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DD68 8012EDB8 35EFF400 */  ori        $t7, $t7, (0x70FF400 & 0xFFFF)
    /* 13DD6C 8012EDBC 3C0EF300 */  lui        $t6, (0xF3000000 >> 16)
    /* 13DD70 8012EDC0 246D0008 */  addiu      $t5, $v1, 0x8
    /* 13DD74 8012EDC4 AC8D0000 */  sw         $t5, 0x0($a0)
    /* 13DD78 8012EDC8 AC6F0004 */  sw         $t7, 0x4($v1)
    /* 13DD7C 8012EDCC AC6E0000 */  sw         $t6, 0x0($v1)
    /* 13DD80 8012EDD0 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DD84 8012EDD4 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* 13DD88 8012EDD8 3C0EF560 */  lui        $t6, (0xF5600400 >> 16)
    /* 13DD8C 8012EDDC 24780008 */  addiu      $t8, $v1, 0x8
    /* 13DD90 8012EDE0 AC980000 */  sw         $t8, 0x0($a0)
    /* 13DD94 8012EDE4 AC600004 */  sw         $zero, 0x4($v1)
    /* 13DD98 8012EDE8 AC790000 */  sw         $t9, 0x0($v1)
    /* 13DD9C 8012EDEC 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DDA0 8012EDF0 35CE0400 */  ori        $t6, $t6, (0xF5600400 & 0xFFFF)
    /* 13DDA4 8012EDF4 3C190007 */  lui        $t9, (0x7C07C >> 16)
    /* 13DDA8 8012EDF8 246D0008 */  addiu      $t5, $v1, 0x8
    /* 13DDAC 8012EDFC AC8D0000 */  sw         $t5, 0x0($a0)
    /* 13DDB0 8012EE00 AC600004 */  sw         $zero, 0x4($v1)
    /* 13DDB4 8012EE04 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 13DDB8 8012EE08 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DDBC 8012EE0C 3739C07C */  ori        $t9, $t9, (0x7C07C & 0xFFFF)
    /* 13DDC0 8012EE10 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* 13DDC4 8012EE14 246F0008 */  addiu      $t7, $v1, 0x8
    /* 13DDC8 8012EE18 AC8F0000 */  sw         $t7, 0x0($a0)
    /* 13DDCC 8012EE1C 24020001 */  addiu      $v0, $zero, 0x1
    /* 13DDD0 8012EE20 AC790004 */  sw         $t9, 0x4($v1)
    /* 13DDD4 8012EE24 03E00008 */  jr         $ra
    /* 13DDD8 8012EE28 AC780000 */   sw        $t8, 0x0($v1)
  .L8012EE2C_13DDDC:
    /* 13DDDC 8012EE2C 24010026 */  addiu      $at, $zero, 0x26
    /* 13DDE0 8012EE30 14410039 */  bne        $v0, $at, .L8012EF18_13DEC8
    /* 13DDE4 8012EE34 3C048006 */   lui       $a0, %hi(D_8005BB2C)
    /* 13DDE8 8012EE38 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* 13DDEC 8012EE3C 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DDF0 8012EE40 3C0F0506 */  lui        $t7, %hi(D_5059EA0)
    /* 13DDF4 8012EE44 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 13DDF8 8012EE48 246D0008 */  addiu      $t5, $v1, 0x8
    /* 13DDFC 8012EE4C AC8D0000 */  sw         $t5, 0x0($a0)
    /* 13DE00 8012EE50 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 13DE04 8012EE54 25EF9EA0 */  addiu      $t7, $t7, %lo(D_5059EA0)
    /* 13DE08 8012EE58 01E1C024 */  and        $t8, $t7, $at
    /* 13DE0C 8012EE5C 3C0EFD70 */  lui        $t6, (0xFD700000 >> 16)
    /* 13DE10 8012EE60 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 13DE14 8012EE64 AC780004 */  sw         $t8, 0x4($v1)
    /* 13DE18 8012EE68 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DE1C 8012EE6C 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
    /* 13DE20 8012EE70 3C0DF570 */  lui        $t5, (0xF5700000 >> 16)
    /* 13DE24 8012EE74 24790008 */  addiu      $t9, $v1, 0x8
    /* 13DE28 8012EE78 AC990000 */  sw         $t9, 0x0($a0)
    /* 13DE2C 8012EE7C AC6E0004 */  sw         $t6, 0x4($v1)
    /* 13DE30 8012EE80 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 13DE34 8012EE84 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DE38 8012EE88 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
    /* 13DE3C 8012EE8C 3C0E070F */  lui        $t6, (0x70FF400 >> 16)
    /* 13DE40 8012EE90 246F0008 */  addiu      $t7, $v1, 0x8
    /* 13DE44 8012EE94 AC8F0000 */  sw         $t7, 0x0($a0)
    /* 13DE48 8012EE98 AC600004 */  sw         $zero, 0x4($v1)
    /* 13DE4C 8012EE9C AC780000 */  sw         $t8, 0x0($v1)
    /* 13DE50 8012EEA0 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DE54 8012EEA4 35CEF400 */  ori        $t6, $t6, (0x70FF400 & 0xFFFF)
    /* 13DE58 8012EEA8 3C0DF300 */  lui        $t5, (0xF3000000 >> 16)
    /* 13DE5C 8012EEAC 24790008 */  addiu      $t9, $v1, 0x8
    /* 13DE60 8012EEB0 AC990000 */  sw         $t9, 0x0($a0)
    /* 13DE64 8012EEB4 AC6E0004 */  sw         $t6, 0x4($v1)
    /* 13DE68 8012EEB8 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 13DE6C 8012EEBC 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DE70 8012EEC0 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* 13DE74 8012EEC4 3C0DF560 */  lui        $t5, (0xF5600400 >> 16)
    /* 13DE78 8012EEC8 246F0008 */  addiu      $t7, $v1, 0x8
    /* 13DE7C 8012EECC AC8F0000 */  sw         $t7, 0x0($a0)
    /* 13DE80 8012EED0 AC600004 */  sw         $zero, 0x4($v1)
    /* 13DE84 8012EED4 AC780000 */  sw         $t8, 0x0($v1)
    /* 13DE88 8012EED8 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DE8C 8012EEDC 35AD0400 */  ori        $t5, $t5, (0xF5600400 & 0xFFFF)
    /* 13DE90 8012EEE0 3C180007 */  lui        $t8, (0x7C07C >> 16)
    /* 13DE94 8012EEE4 24790008 */  addiu      $t9, $v1, 0x8
    /* 13DE98 8012EEE8 AC990000 */  sw         $t9, 0x0($a0)
    /* 13DE9C 8012EEEC AC600004 */  sw         $zero, 0x4($v1)
    /* 13DEA0 8012EEF0 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 13DEA4 8012EEF4 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DEA8 8012EEF8 3718C07C */  ori        $t8, $t8, (0x7C07C & 0xFFFF)
    /* 13DEAC 8012EEFC 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
    /* 13DEB0 8012EF00 246E0008 */  addiu      $t6, $v1, 0x8
    /* 13DEB4 8012EF04 AC8E0000 */  sw         $t6, 0x0($a0)
    /* 13DEB8 8012EF08 24020001 */  addiu      $v0, $zero, 0x1
    /* 13DEBC 8012EF0C AC780004 */  sw         $t8, 0x4($v1)
    /* 13DEC0 8012EF10 03E00008 */  jr         $ra
    /* 13DEC4 8012EF14 AC6F0000 */   sw        $t7, 0x0($v1)
  .L8012EF18_13DEC8:
    /* 13DEC8 8012EF18 2401003A */  addiu      $at, $zero, 0x3A
    /* 13DECC 8012EF1C 14410039 */  bne        $v0, $at, .L8012F004_13DFB4
    /* 13DED0 8012EF20 3C048006 */   lui       $a0, %hi(D_8005BB2C)
    /* 13DED4 8012EF24 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* 13DED8 8012EF28 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DEDC 8012EF2C 3C0E0506 */  lui        $t6, %hi(D_505A4A0)
    /* 13DEE0 8012EF30 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 13DEE4 8012EF34 24790008 */  addiu      $t9, $v1, 0x8
    /* 13DEE8 8012EF38 AC990000 */  sw         $t9, 0x0($a0)
    /* 13DEEC 8012EF3C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 13DEF0 8012EF40 25CEA4A0 */  addiu      $t6, $t6, %lo(D_505A4A0)
    /* 13DEF4 8012EF44 01C17824 */  and        $t7, $t6, $at
    /* 13DEF8 8012EF48 3C0DFD70 */  lui        $t5, (0xFD700000 >> 16)
    /* 13DEFC 8012EF4C AC6D0000 */  sw         $t5, 0x0($v1)
    /* 13DF00 8012EF50 AC6F0004 */  sw         $t7, 0x4($v1)
    /* 13DF04 8012EF54 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DF08 8012EF58 3C0D0700 */  lui        $t5, (0x7000000 >> 16)
    /* 13DF0C 8012EF5C 3C19F570 */  lui        $t9, (0xF5700000 >> 16)
    /* 13DF10 8012EF60 24780008 */  addiu      $t8, $v1, 0x8
    /* 13DF14 8012EF64 AC980000 */  sw         $t8, 0x0($a0)
    /* 13DF18 8012EF68 AC6D0004 */  sw         $t5, 0x4($v1)
    /* 13DF1C 8012EF6C AC790000 */  sw         $t9, 0x0($v1)
    /* 13DF20 8012EF70 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DF24 8012EF74 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
    /* 13DF28 8012EF78 3C0D070F */  lui        $t5, (0x70FF400 >> 16)
    /* 13DF2C 8012EF7C 246E0008 */  addiu      $t6, $v1, 0x8
    /* 13DF30 8012EF80 AC8E0000 */  sw         $t6, 0x0($a0)
    /* 13DF34 8012EF84 AC600004 */  sw         $zero, 0x4($v1)
    /* 13DF38 8012EF88 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 13DF3C 8012EF8C 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DF40 8012EF90 35ADF400 */  ori        $t5, $t5, (0x70FF400 & 0xFFFF)
    /* 13DF44 8012EF94 3C19F300 */  lui        $t9, (0xF3000000 >> 16)
    /* 13DF48 8012EF98 24780008 */  addiu      $t8, $v1, 0x8
    /* 13DF4C 8012EF9C AC980000 */  sw         $t8, 0x0($a0)
    /* 13DF50 8012EFA0 AC6D0004 */  sw         $t5, 0x4($v1)
    /* 13DF54 8012EFA4 AC790000 */  sw         $t9, 0x0($v1)
    /* 13DF58 8012EFA8 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DF5C 8012EFAC 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* 13DF60 8012EFB0 3C19F560 */  lui        $t9, (0xF5600400 >> 16)
    /* 13DF64 8012EFB4 246E0008 */  addiu      $t6, $v1, 0x8
    /* 13DF68 8012EFB8 AC8E0000 */  sw         $t6, 0x0($a0)
    /* 13DF6C 8012EFBC AC600004 */  sw         $zero, 0x4($v1)
    /* 13DF70 8012EFC0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 13DF74 8012EFC4 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DF78 8012EFC8 37390400 */  ori        $t9, $t9, (0xF5600400 & 0xFFFF)
    /* 13DF7C 8012EFCC 3C0F0007 */  lui        $t7, (0x7C07C >> 16)
    /* 13DF80 8012EFD0 24780008 */  addiu      $t8, $v1, 0x8
    /* 13DF84 8012EFD4 AC980000 */  sw         $t8, 0x0($a0)
    /* 13DF88 8012EFD8 AC600004 */  sw         $zero, 0x4($v1)
    /* 13DF8C 8012EFDC AC790000 */  sw         $t9, 0x0($v1)
    /* 13DF90 8012EFE0 8C830000 */  lw         $v1, 0x0($a0)
    /* 13DF94 8012EFE4 35EFC07C */  ori        $t7, $t7, (0x7C07C & 0xFFFF)
    /* 13DF98 8012EFE8 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* 13DF9C 8012EFEC 246D0008 */  addiu      $t5, $v1, 0x8
    /* 13DFA0 8012EFF0 AC8D0000 */  sw         $t5, 0x0($a0)
    /* 13DFA4 8012EFF4 24020001 */  addiu      $v0, $zero, 0x1
    /* 13DFA8 8012EFF8 AC6F0004 */  sw         $t7, 0x4($v1)
    /* 13DFAC 8012EFFC 03E00008 */  jr         $ra
    /* 13DFB0 8012F000 AC6E0000 */   sw        $t6, 0x0($v1)
  .L8012F004_13DFB4:
    /* 13DFB4 8012F004 28410041 */  slti       $at, $v0, 0x41
    /* 13DFB8 8012F008 14200005 */  bnez       $at, .L8012F020_13DFD0
    /* 13DFBC 8012F00C 2841005B */   slti      $at, $v0, 0x5B
    /* 13DFC0 8012F010 50200004 */  beql       $at, $zero, .L8012F024_13DFD4
    /* 13DFC4 8012F014 2443FF9F */   addiu     $v1, $v0, -0x61
    /* 13DFC8 8012F018 10000002 */  b          .L8012F024_13DFD4
    /* 13DFCC 8012F01C 2443FFBF */   addiu     $v1, $v0, -0x41
  .L8012F020_13DFD0:
    /* 13DFD0 8012F020 2443FF9F */  addiu      $v1, $v0, -0x61
  .L8012F024_13DFD4:
    /* 13DFD4 8012F024 04600043 */  bltz       $v1, .L8012F134_13E0E4
    /* 13DFD8 8012F028 2861001A */   slti      $at, $v1, 0x1A
    /* 13DFDC 8012F02C 10200041 */  beqz       $at, .L8012F134_13E0E4
    /* 13DFE0 8012F030 0003C080 */   sll       $t8, $v1, 2
    /* 13DFE4 8012F034 3C198014 */  lui        $t9, %hi(D_80140BC8)
    /* 13DFE8 8012F038 27390BC8 */  addiu      $t9, $t9, %lo(D_80140BC8)
    /* 13DFEC 8012F03C 03192821 */  addu       $a1, $t8, $t9
    /* 13DFF0 8012F040 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 13DFF4 8012F044 3C048006 */  lui        $a0, %hi(D_8005BB2C)
    /* 13DFF8 8012F048 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* 13DFFC 8012F04C 11A00037 */  beqz       $t5, .L8012F12C_13E0DC
    /* 13E000 8012F050 00000000 */   nop
    /* 13E004 8012F054 8C830000 */  lw         $v1, 0x0($a0)
    /* 13E008 8012F058 3C0FFD70 */  lui        $t7, (0xFD700000 >> 16)
    /* 13E00C 8012F05C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 13E010 8012F060 246E0008 */  addiu      $t6, $v1, 0x8
    /* 13E014 8012F064 AC8E0000 */  sw         $t6, 0x0($a0)
    /* 13E018 8012F068 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 13E01C 8012F06C 8CB80000 */  lw         $t8, 0x0($a1)
    /* 13E020 8012F070 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 13E024 8012F074 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
    /* 13E028 8012F078 0301C824 */  and        $t9, $t8, $at
    /* 13E02C 8012F07C AC790004 */  sw         $t9, 0x4($v1)
    /* 13E030 8012F080 8C830000 */  lw         $v1, 0x0($a0)
    /* 13E034 8012F084 3C0EF570 */  lui        $t6, (0xF5700000 >> 16)
    /* 13E038 8012F088 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* 13E03C 8012F08C 246D0008 */  addiu      $t5, $v1, 0x8
    /* 13E040 8012F090 AC8D0000 */  sw         $t5, 0x0($a0)
    /* 13E044 8012F094 AC6F0004 */  sw         $t7, 0x4($v1)
    /* 13E048 8012F098 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 13E04C 8012F09C 8C830000 */  lw         $v1, 0x0($a0)
    /* 13E050 8012F0A0 3C0F070F */  lui        $t7, (0x70FF400 >> 16)
    /* 13E054 8012F0A4 35EFF400 */  ori        $t7, $t7, (0x70FF400 & 0xFFFF)
    /* 13E058 8012F0A8 24780008 */  addiu      $t8, $v1, 0x8
    /* 13E05C 8012F0AC AC980000 */  sw         $t8, 0x0($a0)
    /* 13E060 8012F0B0 AC600004 */  sw         $zero, 0x4($v1)
    /* 13E064 8012F0B4 AC790000 */  sw         $t9, 0x0($v1)
    /* 13E068 8012F0B8 8C830000 */  lw         $v1, 0x0($a0)
    /* 13E06C 8012F0BC 3C0EF300 */  lui        $t6, (0xF3000000 >> 16)
    /* 13E070 8012F0C0 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* 13E074 8012F0C4 246D0008 */  addiu      $t5, $v1, 0x8
    /* 13E078 8012F0C8 AC8D0000 */  sw         $t5, 0x0($a0)
    /* 13E07C 8012F0CC AC6F0004 */  sw         $t7, 0x4($v1)
    /* 13E080 8012F0D0 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 13E084 8012F0D4 8C830000 */  lw         $v1, 0x0($a0)
    /* 13E088 8012F0D8 3C0EF560 */  lui        $t6, (0xF5600400 >> 16)
    /* 13E08C 8012F0DC 35CE0400 */  ori        $t6, $t6, (0xF5600400 & 0xFFFF)
    /* 13E090 8012F0E0 24780008 */  addiu      $t8, $v1, 0x8
    /* 13E094 8012F0E4 AC980000 */  sw         $t8, 0x0($a0)
    /* 13E098 8012F0E8 AC600004 */  sw         $zero, 0x4($v1)
    /* 13E09C 8012F0EC AC790000 */  sw         $t9, 0x0($v1)
    /* 13E0A0 8012F0F0 8C830000 */  lw         $v1, 0x0($a0)
    /* 13E0A4 8012F0F4 3C190007 */  lui        $t9, (0x7C07C >> 16)
    /* 13E0A8 8012F0F8 3739C07C */  ori        $t9, $t9, (0x7C07C & 0xFFFF)
    /* 13E0AC 8012F0FC 246D0008 */  addiu      $t5, $v1, 0x8
    /* 13E0B0 8012F100 AC8D0000 */  sw         $t5, 0x0($a0)
    /* 13E0B4 8012F104 AC600004 */  sw         $zero, 0x4($v1)
    /* 13E0B8 8012F108 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 13E0BC 8012F10C 8C830000 */  lw         $v1, 0x0($a0)
    /* 13E0C0 8012F110 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* 13E0C4 8012F114 24020001 */  addiu      $v0, $zero, 0x1
    /* 13E0C8 8012F118 246F0008 */  addiu      $t7, $v1, 0x8
    /* 13E0CC 8012F11C AC8F0000 */  sw         $t7, 0x0($a0)
    /* 13E0D0 8012F120 AC790004 */  sw         $t9, 0x4($v1)
    /* 13E0D4 8012F124 03E00008 */  jr         $ra
    /* 13E0D8 8012F128 AC780000 */   sw        $t8, 0x0($v1)
  .L8012F12C_13E0DC:
    /* 13E0DC 8012F12C 03E00008 */  jr         $ra
    /* 13E0E0 8012F130 00001025 */   or        $v0, $zero, $zero
  .L8012F134_13E0E4:
    /* 13E0E4 8012F134 2443FFD0 */  addiu      $v1, $v0, -0x30
    /* 13E0E8 8012F138 04600041 */  bltz       $v1, .L8012F240_13E1F0
    /* 13E0EC 8012F13C 2861000A */   slti      $at, $v1, 0xA
    /* 13E0F0 8012F140 1020003F */  beqz       $at, .L8012F240_13E1F0
    /* 13E0F4 8012F144 00036880 */   sll       $t5, $v1, 2
    /* 13E0F8 8012F148 3C0E8014 */  lui        $t6, %hi(D_80140BA0)
    /* 13E0FC 8012F14C 25CE0BA0 */  addiu      $t6, $t6, %lo(D_80140BA0)
    /* 13E100 8012F150 01AE2821 */  addu       $a1, $t5, $t6
    /* 13E104 8012F154 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 13E108 8012F158 3C048006 */  lui        $a0, %hi(D_8005BB2C)
    /* 13E10C 8012F15C 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* 13E110 8012F160 51E00038 */  beql       $t7, $zero, .L8012F244_13E1F4
    /* 13E114 8012F164 00001025 */   or        $v0, $zero, $zero
    /* 13E118 8012F168 8C830000 */  lw         $v1, 0x0($a0)
    /* 13E11C 8012F16C 3C19FD70 */  lui        $t9, (0xFD700000 >> 16)
    /* 13E120 8012F170 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 13E124 8012F174 24780008 */  addiu      $t8, $v1, 0x8
    /* 13E128 8012F178 AC980000 */  sw         $t8, 0x0($a0)
    /* 13E12C 8012F17C AC790000 */  sw         $t9, 0x0($v1)
    /* 13E130 8012F180 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 13E134 8012F184 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 13E138 8012F188 3C190700 */  lui        $t9, (0x7000000 >> 16)
    /* 13E13C 8012F18C 01A17024 */  and        $t6, $t5, $at
    /* 13E140 8012F190 AC6E0004 */  sw         $t6, 0x4($v1)
    /* 13E144 8012F194 8C830000 */  lw         $v1, 0x0($a0)
    /* 13E148 8012F198 3C18F570 */  lui        $t8, (0xF5700000 >> 16)
    /* 13E14C 8012F19C 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
    /* 13E150 8012F1A0 246F0008 */  addiu      $t7, $v1, 0x8
    /* 13E154 8012F1A4 AC8F0000 */  sw         $t7, 0x0($a0)
    /* 13E158 8012F1A8 AC790004 */  sw         $t9, 0x4($v1)
    /* 13E15C 8012F1AC AC780000 */  sw         $t8, 0x0($v1)
    /* 13E160 8012F1B0 8C830000 */  lw         $v1, 0x0($a0)
    /* 13E164 8012F1B4 3C19070F */  lui        $t9, (0x70FF400 >> 16)
    /* 13E168 8012F1B8 3739F400 */  ori        $t9, $t9, (0x70FF400 & 0xFFFF)
    /* 13E16C 8012F1BC 246D0008 */  addiu      $t5, $v1, 0x8
    /* 13E170 8012F1C0 AC8D0000 */  sw         $t5, 0x0($a0)
    /* 13E174 8012F1C4 AC600004 */  sw         $zero, 0x4($v1)
    /* 13E178 8012F1C8 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 13E17C 8012F1CC 8C830000 */  lw         $v1, 0x0($a0)
    /* 13E180 8012F1D0 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
    /* 13E184 8012F1D4 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* 13E188 8012F1D8 246F0008 */  addiu      $t7, $v1, 0x8
    /* 13E18C 8012F1DC AC8F0000 */  sw         $t7, 0x0($a0)
    /* 13E190 8012F1E0 AC790004 */  sw         $t9, 0x4($v1)
    /* 13E194 8012F1E4 AC780000 */  sw         $t8, 0x0($v1)
    /* 13E198 8012F1E8 8C830000 */  lw         $v1, 0x0($a0)
    /* 13E19C 8012F1EC 3C18F560 */  lui        $t8, (0xF5600400 >> 16)
    /* 13E1A0 8012F1F0 37180400 */  ori        $t8, $t8, (0xF5600400 & 0xFFFF)
    /* 13E1A4 8012F1F4 246D0008 */  addiu      $t5, $v1, 0x8
    /* 13E1A8 8012F1F8 AC8D0000 */  sw         $t5, 0x0($a0)
    /* 13E1AC 8012F1FC AC600004 */  sw         $zero, 0x4($v1)
    /* 13E1B0 8012F200 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 13E1B4 8012F204 8C830000 */  lw         $v1, 0x0($a0)
    /* 13E1B8 8012F208 3C0E0007 */  lui        $t6, (0x7C07C >> 16)
    /* 13E1BC 8012F20C 35CEC07C */  ori        $t6, $t6, (0x7C07C & 0xFFFF)
    /* 13E1C0 8012F210 246F0008 */  addiu      $t7, $v1, 0x8
    /* 13E1C4 8012F214 AC8F0000 */  sw         $t7, 0x0($a0)
    /* 13E1C8 8012F218 AC600004 */  sw         $zero, 0x4($v1)
    /* 13E1CC 8012F21C AC780000 */  sw         $t8, 0x0($v1)
    /* 13E1D0 8012F220 8C830000 */  lw         $v1, 0x0($a0)
    /* 13E1D4 8012F224 3C0DF200 */  lui        $t5, (0xF2000000 >> 16)
    /* 13E1D8 8012F228 24020001 */  addiu      $v0, $zero, 0x1
    /* 13E1DC 8012F22C 24790008 */  addiu      $t9, $v1, 0x8
    /* 13E1E0 8012F230 AC990000 */  sw         $t9, 0x0($a0)
    /* 13E1E4 8012F234 AC6E0004 */  sw         $t6, 0x4($v1)
    /* 13E1E8 8012F238 03E00008 */  jr         $ra
    /* 13E1EC 8012F23C AC6D0000 */   sw        $t5, 0x0($v1)
  .L8012F240_13E1F0:
    /* 13E1F0 8012F240 00001025 */  or         $v0, $zero, $zero
  .L8012F244_13E1F4:
    /* 13E1F4 8012F244 03E00008 */  jr         $ra
    /* 13E1F8 8012F248 00000000 */   nop
endlabel func_8012EC3C_13DBEC
