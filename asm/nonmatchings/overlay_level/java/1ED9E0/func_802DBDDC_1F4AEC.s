nonmatching func_802DBDDC_1F4AEC, 0x158

glabel func_802DBDDC_1F4AEC
    /* 1F4AEC 802DBDDC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 1F4AF0 802DBDE0 AFB00018 */  sw         $s0, 0x18($sp)
    /* 1F4AF4 802DBDE4 309000FF */  andi       $s0, $a0, 0xFF
    /* 1F4AF8 802DBDE8 00107080 */  sll        $t6, $s0, 2
    /* 1F4AFC 802DBDEC 01D07021 */  addu       $t6, $t6, $s0
    /* 1F4B00 802DBDF0 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 1F4B04 802DBDF4 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 1F4B08 802DBDF8 000E7100 */  sll        $t6, $t6, 4
    /* 1F4B0C 802DBDFC 01CF3021 */  addu       $a2, $t6, $t7
    /* 1F4B10 802DBE00 8CD80020 */  lw         $t8, 0x20($a2)
    /* 1F4B14 802DBE04 AFA40030 */  sw         $a0, 0x30($sp)
    /* 1F4B18 802DBE08 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1F4B1C 802DBE0C 33194000 */  andi       $t9, $t8, 0x4000
    /* 1F4B20 802DBE10 17200013 */  bnez       $t9, .L802DBE60_1F4B70
    /* 1F4B24 802DBE14 320400FF */   andi      $a0, $s0, 0xFF
    /* 1F4B28 802DBE18 0C02391E */  jal        func_8008E478_9D428
    /* 1F4B2C 802DBE1C AFA60028 */   sw        $a2, 0x28($sp)
    /* 1F4B30 802DBE20 14400007 */  bnez       $v0, .L802DBE40_1F4B50
    /* 1F4B34 802DBE24 8FA60028 */   lw        $a2, 0x28($sp)
    /* 1F4B38 802DBE28 320400FF */  andi       $a0, $s0, 0xFF
    /* 1F4B3C 802DBE2C 3C058000 */  lui        $a1, (0x80000000 >> 16)
    /* 1F4B40 802DBE30 0C0238C3 */  jal        func_8008E30C_9D2BC
    /* 1F4B44 802DBE34 AFA60028 */   sw        $a2, 0x28($sp)
    /* 1F4B48 802DBE38 10400009 */  beqz       $v0, .L802DBE60_1F4B70
    /* 1F4B4C 802DBE3C 8FA60028 */   lw        $a2, 0x28($sp)
  .L802DBE40_1F4B50:
    /* 1F4B50 802DBE40 320400FF */  andi       $a0, $s0, 0xFF
    /* 1F4B54 802DBE44 240503E8 */  addiu      $a1, $zero, 0x3E8
    /* 1F4B58 802DBE48 0C021640 */  jal        func_80085900_948B0
    /* 1F4B5C 802DBE4C AFA60028 */   sw        $a2, 0x28($sp)
    /* 1F4B60 802DBE50 0C0B6ED6 */  jal        func_802DBB58_1F4868
    /* 1F4B64 802DBE54 320400FF */   andi      $a0, $s0, 0xFF
    /* 1F4B68 802DBE58 1000001F */  b          .L802DBED8_1F4BE8
    /* 1F4B6C 802DBE5C 8FA60028 */   lw        $a2, 0x28($sp)
  .L802DBE60_1F4B70:
    /* 1F4B70 802DBE60 320400FF */  andi       $a0, $s0, 0xFF
    /* 1F4B74 802DBE64 0C0B6EF9 */  jal        func_802DBBE4_1F48F4
    /* 1F4B78 802DBE68 AFA60028 */   sw        $a2, 0x28($sp)
    /* 1F4B7C 802DBE6C 8FA60028 */  lw         $a2, 0x28($sp)
    /* 1F4B80 802DBE70 3C098005 */  lui        $t1, %hi(D_80052A8C)
    /* 1F4B84 802DBE74 8CC40020 */  lw         $a0, 0x20($a2)
    /* 1F4B88 802DBE78 30880100 */  andi       $t0, $a0, 0x100
    /* 1F4B8C 802DBE7C 51000017 */  beql       $t0, $zero, .L802DBEDC_1F4BEC
    /* 1F4B90 802DBE80 84C2001E */   lh        $v0, 0x1E($a2)
    /* 1F4B94 802DBE84 8D292A8C */  lw         $t1, %lo(D_80052A8C)($t1)
    /* 1F4B98 802DBE88 320B003F */  andi       $t3, $s0, 0x3F
    /* 1F4B9C 802DBE8C 312A003F */  andi       $t2, $t1, 0x3F
    /* 1F4BA0 802DBE90 554B0012 */  bnel       $t2, $t3, .L802DBEDC_1F4BEC
    /* 1F4BA4 802DBE94 84C2001E */   lh        $v0, 0x1E($a2)
    /* 1F4BA8 802DBE98 90C20039 */  lbu        $v0, 0x39($a2)
    /* 1F4BAC 802DBE9C 3C038005 */  lui        $v1, %hi(D_80050AE0)
    /* 1F4BB0 802DBEA0 2401FEFF */  addiu      $at, $zero, -0x101
    /* 1F4BB4 802DBEA4 00026080 */  sll        $t4, $v0, 2
    /* 1F4BB8 802DBEA8 01826023 */  subu       $t4, $t4, $v0
    /* 1F4BBC 802DBEAC 000C60C0 */  sll        $t4, $t4, 3
    /* 1F4BC0 802DBEB0 006C1821 */  addu       $v1, $v1, $t4
    /* 1F4BC4 802DBEB4 8C630AE0 */  lw         $v1, %lo(D_80050AE0)($v1)
    /* 1F4BC8 802DBEB8 0081C024 */  and        $t8, $a0, $at
    /* 1F4BCC 802DBEBC 00036B02 */  srl        $t5, $v1, 12
    /* 1F4BD0 802DBEC0 31AE0001 */  andi       $t6, $t5, 0x1
    /* 1F4BD4 802DBEC4 11C00003 */  beqz       $t6, .L802DBED4_1F4BE4
    /* 1F4BD8 802DBEC8 31AF0010 */   andi      $t7, $t5, 0x10
    /* 1F4BDC 802DBECC 51E00003 */  beql       $t7, $zero, .L802DBEDC_1F4BEC
    /* 1F4BE0 802DBED0 84C2001E */   lh        $v0, 0x1E($a2)
  .L802DBED4_1F4BE4:
    /* 1F4BE4 802DBED4 ACD80020 */  sw         $t8, 0x20($a2)
  .L802DBED8_1F4BE8:
    /* 1F4BE8 802DBED8 84C2001E */  lh         $v0, 0x1E($a2)
  .L802DBEDC_1F4BEC:
    /* 1F4BEC 802DBEDC AFB00024 */  sw         $s0, 0x24($sp)
    /* 1F4BF0 802DBEE0 10400002 */  beqz       $v0, .L802DBEEC_1F4BFC
    /* 1F4BF4 802DBEE4 2459FFFF */   addiu     $t9, $v0, -0x1
    /* 1F4BF8 802DBEE8 A4D9001E */  sh         $t9, 0x1E($a2)
  .L802DBEEC_1F4BFC:
    /* 1F4BFC 802DBEEC 0C0201DB */  jal        func_8008076C_8F71C
    /* 1F4C00 802DBEF0 320400FF */   andi      $a0, $s0, 0xFF
    /* 1F4C04 802DBEF4 320400FF */  andi       $a0, $s0, 0xFF
    /* 1F4C08 802DBEF8 24050100 */  addiu      $a1, $zero, 0x100
    /* 1F4C0C 802DBEFC 0C0294F0 */  jal        func_800A53C0_B4370
    /* 1F4C10 802DBF00 24061000 */   addiu     $a2, $zero, 0x1000
    /* 1F4C14 802DBF04 0C023B7F */  jal        func_8008EDFC_9DDAC
    /* 1F4C18 802DBF08 320400FF */   andi      $a0, $s0, 0xFF
    /* 1F4C1C 802DBF0C 0C023BC7 */  jal        func_8008EF1C_9DECC
    /* 1F4C20 802DBF10 320400FF */   andi      $a0, $s0, 0xFF
    /* 1F4C24 802DBF14 8FA40024 */  lw         $a0, 0x24($sp)
    /* 1F4C28 802DBF18 0C04DD1A */  jal        func_80137468_146418
    /* 1F4C2C 802DBF1C 24050007 */   addiu     $a1, $zero, 0x7
    /* 1F4C30 802DBF20 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1F4C34 802DBF24 8FB00018 */  lw         $s0, 0x18($sp)
    /* 1F4C38 802DBF28 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 1F4C3C 802DBF2C 03E00008 */  jr         $ra
    /* 1F4C40 802DBF30 00000000 */   nop
endlabel func_802DBDDC_1F4AEC
