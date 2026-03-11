nonmatching func_802D7B68_1F0878, 0x344

glabel func_802D7B68_1F0878
    /* 1F0878 802D7B68 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F087C 802D7B6C 000E7880 */  sll        $t7, $t6, 2
    /* 1F0880 802D7B70 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 1F0884 802D7B74 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F0888 802D7B78 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F088C 802D7B7C AFB00020 */  sw         $s0, 0x20($sp)
    /* 1F0890 802D7B80 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F0894 802D7B84 000F7900 */  sll        $t7, $t7, 4
    /* 1F0898 802D7B88 01F88021 */  addu       $s0, $t7, $t8
    /* 1F089C 802D7B8C 8607000C */  lh         $a3, 0xC($s0)
    /* 1F08A0 802D7B90 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 1F08A4 802D7B94 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 1F08A8 802D7B98 00075900 */  sll        $t3, $a3, 4
    /* 1F08AC 802D7B9C 004B1821 */  addu       $v1, $v0, $t3
    /* 1F08B0 802D7BA0 8068000C */  lb         $t0, 0xC($v1)
    /* 1F08B4 802D7BA4 AFA40060 */  sw         $a0, 0x60($sp)
    /* 1F08B8 802D7BA8 01C02025 */  or         $a0, $t6, $zero
    /* 1F08BC 802D7BAC 00086100 */  sll        $t4, $t0, 4
    /* 1F08C0 802D7BB0 004C3021 */  addu       $a2, $v0, $t4
    /* 1F08C4 802D7BB4 80C9000C */  lb         $t1, 0xC($a2)
    /* 1F08C8 802D7BB8 9219001A */  lbu        $t9, 0x1A($s0)
    /* 1F08CC 802D7BBC AFBF0024 */  sw         $ra, 0x24($sp)
    /* 1F08D0 802D7BC0 00096900 */  sll        $t5, $t1, 4
    /* 1F08D4 802D7BC4 004D7021 */  addu       $t6, $v0, $t5
    /* 1F08D8 802D7BC8 81CA000D */  lb         $t2, 0xD($t6)
    /* 1F08DC 802D7BCC A7B9003E */  sh         $t9, 0x3E($sp)
    /* 1F08E0 802D7BD0 2605000E */  addiu      $a1, $s0, 0xE
    /* 1F08E4 802D7BD4 000A7900 */  sll        $t7, $t2, 4
    /* 1F08E8 802D7BD8 004FC021 */  addu       $t8, $v0, $t7
    /* 1F08EC 802D7BDC 8319000D */  lb         $t9, 0xD($t8)
    /* 1F08F0 802D7BE0 AFA60028 */  sw         $a2, 0x28($sp)
    /* 1F08F4 802D7BE4 A3A40063 */  sb         $a0, 0x63($sp)
    /* 1F08F8 802D7BE8 AFA3002C */  sw         $v1, 0x2C($sp)
    /* 1F08FC 802D7BEC A7A7005E */  sh         $a3, 0x5E($sp)
    /* 1F0900 802D7BF0 A7A8005C */  sh         $t0, 0x5C($sp)
    /* 1F0904 802D7BF4 A7A90058 */  sh         $t1, 0x58($sp)
    /* 1F0908 802D7BF8 A7AA005A */  sh         $t2, 0x5A($sp)
    /* 1F090C 802D7BFC 0C02023C */  jal        func_800808F0_8F8A0
    /* 1F0910 802D7C00 A7B90056 */   sh        $t9, 0x56($sp)
    /* 1F0914 802D7C04 860C0006 */  lh         $t4, 0x6($s0)
    /* 1F0918 802D7C08 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 1F091C 802D7C0C 8FA60028 */  lw         $a2, 0x28($sp)
    /* 1F0920 802D7C10 000C6823 */  negu       $t5, $t4
    /* 1F0924 802D7C14 A46C0006 */  sh         $t4, 0x6($v1)
    /* 1F0928 802D7C18 93A40063 */  lbu        $a0, 0x63($sp)
    /* 1F092C 802D7C1C 87A5005C */  lh         $a1, 0x5C($sp)
    /* 1F0930 802D7C20 0C021859 */  jal        func_80086164_95114
    /* 1F0934 802D7C24 A4CD0006 */   sh        $t5, 0x6($a2)
    /* 1F0938 802D7C28 240E003C */  addiu      $t6, $zero, 0x3C
    /* 1F093C 802D7C2C 240FFFF8 */  addiu      $t7, $zero, -0x8
    /* 1F0940 802D7C30 24180070 */  addiu      $t8, $zero, 0x70
    /* 1F0944 802D7C34 A7AE0050 */  sh         $t6, 0x50($sp)
    /* 1F0948 802D7C38 A7AF0052 */  sh         $t7, 0x52($sp)
    /* 1F094C 802D7C3C A7B80054 */  sh         $t8, 0x54($sp)
    /* 1F0950 802D7C40 83A4005D */  lb         $a0, 0x5D($sp)
    /* 1F0954 802D7C44 27A50050 */  addiu      $a1, $sp, 0x50
    /* 1F0958 802D7C48 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 1F095C 802D7C4C 27A60044 */   addiu     $a2, $sp, 0x44
    /* 1F0960 802D7C50 8FB90044 */  lw         $t9, 0x44($sp)
    /* 1F0964 802D7C54 8FAB0048 */  lw         $t3, 0x48($sp)
    /* 1F0968 802D7C58 8FAC004C */  lw         $t4, 0x4C($sp)
    /* 1F096C 802D7C5C 83A4005F */  lb         $a0, 0x5F($sp)
    /* 1F0970 802D7C60 27A50050 */  addiu      $a1, $sp, 0x50
    /* 1F0974 802D7C64 27A60044 */  addiu      $a2, $sp, 0x44
    /* 1F0978 802D7C68 A7B90050 */  sh         $t9, 0x50($sp)
    /* 1F097C 802D7C6C A7AB0052 */  sh         $t3, 0x52($sp)
    /* 1F0980 802D7C70 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 1F0984 802D7C74 A7AC0054 */   sh        $t4, 0x54($sp)
    /* 1F0988 802D7C78 87AD003E */  lh         $t5, 0x3E($sp)
    /* 1F098C 802D7C7C 3C0F8025 */  lui        $t7, %hi(alienSpecs)
    /* 1F0990 802D7C80 25EF6680 */  addiu      $t7, $t7, %lo(alienSpecs)
    /* 1F0994 802D7C84 000D7080 */  sll        $t6, $t5, 2
    /* 1F0998 802D7C88 01CD7023 */  subu       $t6, $t6, $t5
    /* 1F099C 802D7C8C 000E7080 */  sll        $t6, $t6, 2
    /* 1F09A0 802D7C90 01CD7021 */  addu       $t6, $t6, $t5
    /* 1F09A4 802D7C94 000E70C0 */  sll        $t6, $t6, 3
    /* 1F09A8 802D7C98 8FB80044 */  lw         $t8, 0x44($sp)
    /* 1F09AC 802D7C9C 8FB90048 */  lw         $t9, 0x48($sp)
    /* 1F09B0 802D7CA0 8FAB004C */  lw         $t3, 0x4C($sp)
    /* 1F09B4 802D7CA4 01CF1021 */  addu       $v0, $t6, $t7
    /* 1F09B8 802D7CA8 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 1F09BC 802D7CAC A4580020 */  sh         $t8, 0x20($v0)
    /* 1F09C0 802D7CB0 A4590022 */  sh         $t9, 0x22($v0)
    /* 1F09C4 802D7CB4 A44B0024 */  sh         $t3, 0x24($v0)
    /* 1F09C8 802D7CB8 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 1F09CC 802D7CBC 0C021395 */  jal        func_80084E54_93E04
    /* 1F09D0 802D7CC0 02002825 */   or        $a1, $s0, $zero
    /* 1F09D4 802D7CC4 AFA20040 */  sw         $v0, 0x40($sp)
    /* 1F09D8 802D7CC8 24040000 */  addiu      $a0, $zero, 0x0
    /* 1F09DC 802D7CCC 0C001C9B */  jal        func_8000726C_7E6C
    /* 1F09E0 802D7CD0 24050011 */   addiu     $a1, $zero, 0x11
    /* 1F09E4 802D7CD4 10400021 */  beqz       $v0, .L802D7D5C_1F0A6C
    /* 1F09E8 802D7CD8 24040000 */   addiu     $a0, $zero, 0x0
    /* 1F09EC 802D7CDC 0C001C9B */  jal        func_8000726C_7E6C
    /* 1F09F0 802D7CE0 2405002C */   addiu     $a1, $zero, 0x2C
    /* 1F09F4 802D7CE4 1440001D */  bnez       $v0, .L802D7D5C_1F0A6C
    /* 1F09F8 802D7CE8 93A40063 */   lbu       $a0, 0x63($sp)
    /* 1F09FC 802D7CEC 0C0213FA */  jal        func_80084FE8_93F98
    /* 1F0A00 802D7CF0 24050418 */   addiu     $a1, $zero, 0x418
    /* 1F0A04 802D7CF4 10400019 */  beqz       $v0, .L802D7D5C_1F0A6C
    /* 1F0A08 802D7CF8 3C01F7FF */   lui       $at, (0xF7FFFFFF >> 16)
    /* 1F0A0C 802D7CFC 3C028005 */  lui        $v0, %hi(buildingInstances)
    /* 1F0A10 802D7D00 24420AD8 */  addiu      $v0, $v0, %lo(buildingInstances)
    /* 1F0A14 802D7D04 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 1F0A18 802D7D08 844E04B0 */  lh         $t6, 0x4B0($v0)
    /* 1F0A1C 802D7D0C 844F04B2 */  lh         $t7, 0x4B2($v0)
    /* 1F0A20 802D7D10 845804B4 */  lh         $t8, 0x4B4($v0)
    /* 1F0A24 802D7D14 3421FFFF */  ori        $at, $at, (0xF7FFFFFF & 0xFFFF)
    /* 1F0A28 802D7D18 01816824 */  and        $t5, $t4, $at
    /* 1F0A2C 802D7D1C AE0D0020 */  sw         $t5, 0x20($s0)
    /* 1F0A30 802D7D20 93A40063 */  lbu        $a0, 0x63($sp)
    /* 1F0A34 802D7D24 00002825 */  or         $a1, $zero, $zero
    /* 1F0A38 802D7D28 24060028 */  addiu      $a2, $zero, 0x28
    /* 1F0A3C 802D7D2C A60E0014 */  sh         $t6, 0x14($s0)
    /* 1F0A40 802D7D30 A60F0016 */  sh         $t7, 0x16($s0)
    /* 1F0A44 802D7D34 0C021C62 */  jal        func_80087188_96138
    /* 1F0A48 802D7D38 A6180018 */   sh        $t8, 0x18($s0)
    /* 1F0A4C 802D7D3C 10400002 */  beqz       $v0, .L802D7D48_1F0A58
    /* 1F0A50 802D7D40 24190005 */   addiu     $t9, $zero, 0x5
    /* 1F0A54 802D7D44 A619001E */  sh         $t9, 0x1E($s0)
  .L802D7D48_1F0A58:
    /* 1F0A58 802D7D48 8602001E */  lh         $v0, 0x1E($s0)
    /* 1F0A5C 802D7D4C 10400052 */  beqz       $v0, .L802D7E98_1F0BA8
    /* 1F0A60 802D7D50 244BFFFF */   addiu     $t3, $v0, -0x1
    /* 1F0A64 802D7D54 10000050 */  b          .L802D7E98_1F0BA8
    /* 1F0A68 802D7D58 A60B001E */   sh        $t3, 0x1E($s0)
  .L802D7D5C_1F0A6C:
    /* 1F0A6C 802D7D5C 3C0C8004 */  lui        $t4, %hi(currentLevel)
    /* 1F0A70 802D7D60 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* 1F0A74 802D7D64 24010001 */  addiu      $at, $zero, 0x1
    /* 1F0A78 802D7D68 93A40063 */  lbu        $a0, 0x63($sp)
    /* 1F0A7C 802D7D6C 15810003 */  bne        $t4, $at, .L802D7D7C_1F0A8C
    /* 1F0A80 802D7D70 24050830 */   addiu     $a1, $zero, 0x830
    /* 1F0A84 802D7D74 10000002 */  b          .L802D7D80_1F0A90
    /* 1F0A88 802D7D78 2403003C */   addiu     $v1, $zero, 0x3C
  .L802D7D7C_1F0A8C:
    /* 1F0A8C 802D7D7C 2403001E */  addiu      $v1, $zero, 0x1E
  .L802D7D80_1F0A90:
    /* 1F0A90 802D7D80 0C0213FA */  jal        func_80084FE8_93F98
    /* 1F0A94 802D7D84 A7A30034 */   sh        $v1, 0x34($sp)
    /* 1F0A98 802D7D88 10400021 */  beqz       $v0, .L802D7E10_1F0B20
    /* 1F0A9C 802D7D8C 87A30034 */   lh        $v1, 0x34($sp)
    /* 1F0AA0 802D7D90 8FAD0040 */  lw         $t5, 0x40($sp)
    /* 1F0AA4 802D7D94 00002825 */  or         $a1, $zero, $zero
    /* 1F0AA8 802D7D98 24060028 */  addiu      $a2, $zero, 0x28
    /* 1F0AAC 802D7D9C 29A107D0 */  slti       $at, $t5, 0x7D0
    /* 1F0AB0 802D7DA0 5020001C */  beql       $at, $zero, .L802D7E14_1F0B24
    /* 1F0AB4 802D7DA4 A2000026 */   sb        $zero, 0x26($s0)
    /* 1F0AB8 802D7DA8 920E0026 */  lbu        $t6, 0x26($s0)
    /* 1F0ABC 802D7DAC 24790028 */  addiu      $t9, $v1, 0x28
    /* 1F0AC0 802D7DB0 240B0028 */  addiu      $t3, $zero, 0x28
    /* 1F0AC4 802D7DB4 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 1F0AC8 802D7DB8 31F800FF */  andi       $t8, $t7, 0xFF
    /* 1F0ACC 802D7DBC 0338082A */  slt        $at, $t9, $t8
    /* 1F0AD0 802D7DC0 10200007 */  beqz       $at, .L802D7DE0_1F0AF0
    /* 1F0AD4 802D7DC4 A20F0026 */   sb        $t7, 0x26($s0)
    /* 1F0AD8 802D7DC8 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 1F0ADC 802D7DCC 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 1F0AE0 802D7DD0 A60B001E */  sh         $t3, 0x1E($s0)
    /* 1F0AE4 802D7DD4 01816824 */  and        $t5, $t4, $at
    /* 1F0AE8 802D7DD8 AE0D0020 */  sw         $t5, 0x20($s0)
    /* 1F0AEC 802D7DDC A2000026 */  sb         $zero, 0x26($s0)
  .L802D7DE0_1F0AF0:
    /* 1F0AF0 802D7DE0 0C021C62 */  jal        func_80087188_96138
    /* 1F0AF4 802D7DE4 93A40063 */   lbu       $a0, 0x63($sp)
    /* 1F0AF8 802D7DE8 1040000B */  beqz       $v0, .L802D7E18_1F0B28
    /* 1F0AFC 802D7DEC 240B0006 */   addiu     $t3, $zero, 0x6
    /* 1F0B00 802D7DF0 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 1F0B04 802D7DF4 A2000036 */  sb         $zero, 0x36($s0)
    /* 1F0B08 802D7DF8 A60B001E */  sh         $t3, 0x1E($s0)
    /* 1F0B0C 802D7DFC 35CFA000 */  ori        $t7, $t6, 0xA000
    /* 1F0B10 802D7E00 AE0F0020 */  sw         $t7, 0x20($s0)
    /* 1F0B14 802D7E04 35F91000 */  ori        $t9, $t7, 0x1000
    /* 1F0B18 802D7E08 10000003 */  b          .L802D7E18_1F0B28
    /* 1F0B1C 802D7E0C AE190020 */   sw        $t9, 0x20($s0)
  .L802D7E10_1F0B20:
    /* 1F0B20 802D7E10 A2000026 */  sb         $zero, 0x26($s0)
  .L802D7E14_1F0B24:
    /* 1F0B24 802D7E14 A600001E */  sh         $zero, 0x1E($s0)
  .L802D7E18_1F0B28:
    /* 1F0B28 802D7E18 8E020020 */  lw         $v0, 0x20($s0)
    /* 1F0B2C 802D7E1C 24050002 */  addiu      $a1, $zero, 0x2
    /* 1F0B30 802D7E20 24060002 */  addiu      $a2, $zero, 0x2
    /* 1F0B34 802D7E24 304C9000 */  andi       $t4, $v0, 0x9000
    /* 1F0B38 802D7E28 11800017 */  beqz       $t4, .L802D7E88_1F0B98
    /* 1F0B3C 802D7E2C 00026940 */   sll       $t5, $v0, 5
    /* 1F0B40 802D7E30 05A10004 */  bgez       $t5, .L802D7E44_1F0B54
    /* 1F0B44 802D7E34 27A70038 */   addiu     $a3, $sp, 0x38
    /* 1F0B48 802D7E38 87AE0058 */  lh         $t6, 0x58($sp)
    /* 1F0B4C 802D7E3C 10000003 */  b          .L802D7E4C_1F0B5C
    /* 1F0B50 802D7E40 A7AE0038 */   sh        $t6, 0x38($sp)
  .L802D7E44_1F0B54:
    /* 1F0B54 802D7E44 87AF005A */  lh         $t7, 0x5A($sp)
    /* 1F0B58 802D7E48 A7AF0038 */  sh         $t7, 0x38($sp)
  .L802D7E4C_1F0B5C:
    /* 1F0B5C 802D7E4C 87B80056 */  lh         $t8, 0x56($sp)
    /* 1F0B60 802D7E50 3C19802E */  lui        $t9, %hi(D_802E05C0)
    /* 1F0B64 802D7E54 273905C0 */  addiu      $t9, $t9, %lo(D_802E05C0)
    /* 1F0B68 802D7E58 AFB90010 */  sw         $t9, 0x10($sp)
    /* 1F0B6C 802D7E5C 93A40063 */  lbu        $a0, 0x63($sp)
    /* 1F0B70 802D7E60 0C0207C6 */  jal        func_80081F18_90EC8
    /* 1F0B74 802D7E64 A7B8003A */   sh        $t8, 0x3A($sp)
    /* 1F0B78 802D7E68 24010002 */  addiu      $at, $zero, 0x2
    /* 1F0B7C 802D7E6C 54410007 */  bnel       $v0, $at, .L802D7E8C_1F0B9C
    /* 1F0B80 802D7E70 8602001E */   lh        $v0, 0x1E($s0)
    /* 1F0B84 802D7E74 8E0B0020 */  lw         $t3, 0x20($s0)
    /* 1F0B88 802D7E78 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
    /* 1F0B8C 802D7E7C 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
    /* 1F0B90 802D7E80 01616024 */  and        $t4, $t3, $at
    /* 1F0B94 802D7E84 AE0C0020 */  sw         $t4, 0x20($s0)
  .L802D7E88_1F0B98:
    /* 1F0B98 802D7E88 8602001E */  lh         $v0, 0x1E($s0)
  .L802D7E8C_1F0B9C:
    /* 1F0B9C 802D7E8C 10400002 */  beqz       $v0, .L802D7E98_1F0BA8
    /* 1F0BA0 802D7E90 244DFFFF */   addiu     $t5, $v0, -0x1
    /* 1F0BA4 802D7E94 A60D001E */  sh         $t5, 0x1E($s0)
  .L802D7E98_1F0BA8:
    /* 1F0BA8 802D7E98 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 1F0BAC 802D7E9C 8FB00020 */  lw         $s0, 0x20($sp)
    /* 1F0BB0 802D7EA0 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 1F0BB4 802D7EA4 03E00008 */  jr         $ra
    /* 1F0BB8 802D7EA8 00000000 */   nop
endlabel func_802D7B68_1F0878
