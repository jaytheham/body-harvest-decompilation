nonmatching func_802E4CB4_328E04, 0x1C4

glabel func_802E4CB4_328E04
    /* 328E04 802E4CB4 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 328E08 802E4CB8 AFA40048 */  sw         $a0, 0x48($sp)
    /* 328E0C 802E4CBC 93AE004B */  lbu        $t6, 0x4B($sp)
    /* 328E10 802E4CC0 240A0050 */  addiu      $t2, $zero, 0x50
    /* 328E14 802E4CC4 3C098005 */  lui        $t1, %hi(alienInstances)
    /* 328E18 802E4CC8 01CA0019 */  multu      $t6, $t2
    /* 328E1C 802E4CCC 25298198 */  addiu      $t1, $t1, %lo(alienInstances)
    /* 328E20 802E4CD0 3C0B802E */  lui        $t3, %hi(D_802E7A20)
    /* 328E24 802E4CD4 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 328E28 802E4CD8 256B7A20 */  addiu      $t3, $t3, %lo(D_802E7A20)
    /* 328E2C 802E4CDC 27B90038 */  addiu      $t9, $sp, 0x38
    /* 328E30 802E4CE0 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 328E34 802E4CE4 00007812 */  mflo       $t7
    /* 328E38 802E4CE8 012F4021 */  addu       $t0, $t1, $t7
    /* 328E3C 802E4CEC 91180025 */  lbu        $t8, 0x25($t0)
    /* 328E40 802E4CF0 A3B80047 */  sb         $t8, 0x47($sp)
    /* 328E44 802E4CF4 8D610000 */  lw         $at, 0x0($t3)
    /* 328E48 802E4CF8 AF210000 */  sw         $at, 0x0($t9)
    /* 328E4C 802E4CFC 95610004 */  lhu        $at, 0x4($t3)
    /* 328E50 802E4D00 A7210004 */  sh         $at, 0x4($t9)
    /* 328E54 802E4D04 93AF0047 */  lbu        $t7, 0x47($sp)
    /* 328E58 802E4D08 8D0B0020 */  lw         $t3, 0x20($t0)
    /* 328E5C 802E4D0C 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
    /* 328E60 802E4D10 01EA0019 */  multu      $t7, $t2
    /* 328E64 802E4D14 000B72C0 */  sll        $t6, $t3, 11
    /* 328E68 802E4D18 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 328E6C 802E4D1C 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
    /* 328E70 802E4D20 240B00A9 */  addiu      $t3, $zero, 0xA9
    /* 328E74 802E4D24 0000C012 */  mflo       $t8
    /* 328E78 802E4D28 01386821 */  addu       $t5, $t1, $t8
    /* 328E7C 802E4D2C 91AC0025 */  lbu        $t4, 0x25($t5)
    /* 328E80 802E4D30 018A0019 */  multu      $t4, $t2
    /* 328E84 802E4D34 340CFFFF */  ori        $t4, $zero, 0xFFFF
    /* 328E88 802E4D38 0000C812 */  mflo       $t9
    /* 328E8C 802E4D3C 01391821 */  addu       $v1, $t1, $t9
    /* 328E90 802E4D40 05C00026 */  bltz       $t6, .L802E4DDC_328F2C
    /* 328E94 802E4D44 2419004C */   addiu     $t9, $zero, 0x4C
    /* 328E98 802E4D48 8C780020 */  lw         $t8, 0x20($v1)
    /* 328E9C 802E4D4C A06F0001 */  sb         $t7, 0x1($v1)
    /* 328EA0 802E4D50 240E00F5 */  addiu      $t6, $zero, 0xF5
    /* 328EA4 802E4D54 03016824 */  and        $t5, $t8, $at
    /* 328EA8 802E4D58 AC6D0020 */  sw         $t5, 0x20($v1)
    /* 328EAC 802E4D5C AFA80030 */  sw         $t0, 0x30($sp)
    /* 328EB0 802E4D60 AFA30040 */  sw         $v1, 0x40($sp)
    /* 328EB4 802E4D64 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 328EB8 802E4D68 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 328EBC 802E4D6C AFB90014 */  sw         $t9, 0x14($sp)
    /* 328EC0 802E4D70 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 328EC4 802E4D74 85060004 */  lh         $a2, 0x4($t0)
    /* 328EC8 802E4D78 85050002 */  lh         $a1, 0x2($t0)
    /* 328ECC 802E4D7C 0C030EF6 */  jal        func_800C3BD8_D2B88
    /* 328ED0 802E4D80 85040000 */   lh        $a0, 0x0($t0)
    /* 328ED4 802E4D84 8FA80030 */  lw         $t0, 0x30($sp)
    /* 328ED8 802E4D88 8FA30040 */  lw         $v1, 0x40($sp)
    /* 328EDC 802E4D8C 3C098005 */  lui        $t1, %hi(alienInstances)
    /* 328EE0 802E4D90 A5020038 */  sh         $v0, 0x38($t0)
    /* 328EE4 802E4D94 8C640020 */  lw         $a0, 0x20($v1)
    /* 328EE8 802E4D98 25298198 */  addiu      $t1, $t1, %lo(alienInstances)
    /* 328EEC 802E4D9C 3C050002 */  lui        $a1, (0x20000 >> 16)
    /* 328EF0 802E4DA0 00047B80 */  sll        $t7, $a0, 14
    /* 328EF4 802E4DA4 05E1000B */  bgez       $t7, .L802E4DD4_328F24
    /* 328EF8 802E4DA8 240A0050 */   addiu     $t2, $zero, 0x50
    /* 328EFC 802E4DAC 90780000 */  lbu        $t8, 0x0($v1)
    /* 328F00 802E4DB0 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 328F04 802E4DB4 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 328F08 802E4DB8 030A0019 */  multu      $t8, $t2
    /* 328F0C 802E4DBC 00006812 */  mflo       $t5
    /* 328F10 802E4DC0 012D1021 */  addu       $v0, $t1, $t5
    /* 328F14 802E4DC4 8C4C0020 */  lw         $t4, 0x20($v0)
    /* 328F18 802E4DC8 0181C824 */  and        $t9, $t4, $at
    /* 328F1C 802E4DCC AC590020 */  sw         $t9, 0x20($v0)
    /* 328F20 802E4DD0 8C640020 */  lw         $a0, 0x20($v1)
  .L802E4DD4_328F24:
    /* 328F24 802E4DD4 00855825 */  or         $t3, $a0, $a1
    /* 328F28 802E4DD8 AC6B0020 */  sw         $t3, 0x20($v1)
  .L802E4DDC_328F2C:
    /* 328F2C 802E4DDC 93A40047 */  lbu        $a0, 0x47($sp)
    /* 328F30 802E4DE0 0C0B7FC1 */  jal        func_802DFF04_324054
    /* 328F34 802E4DE4 AFA80030 */   sw        $t0, 0x30($sp)
    /* 328F38 802E4DE8 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 328F3C 802E4DEC 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 328F40 802E4DF0 00027900 */  sll        $t7, $v0, 4
    /* 328F44 802E4DF4 006FC021 */  addu       $t8, $v1, $t7
    /* 328F48 802E4DF8 8306000C */  lb         $a2, 0xC($t8)
    /* 328F4C 802E4DFC 8FA80030 */  lw         $t0, 0x30($sp)
    /* 328F50 802E4E00 00022C00 */  sll        $a1, $v0, 16
    /* 328F54 802E4E04 00066900 */  sll        $t5, $a2, 4
    /* 328F58 802E4E08 00057403 */  sra        $t6, $a1, 16
    /* 328F5C 802E4E0C 006D6021 */  addu       $t4, $v1, $t5
    /* 328F60 802E4E10 8186000D */  lb         $a2, 0xD($t4)
    /* 328F64 802E4E14 01C02825 */  or         $a1, $t6, $zero
    /* 328F68 802E4E18 8D0E0020 */  lw         $t6, 0x20($t0)
    /* 328F6C 802E4E1C 0006C900 */  sll        $t9, $a2, 4
    /* 328F70 802E4E20 00795821 */  addu       $t3, $v1, $t9
    /* 328F74 802E4E24 31CF2000 */  andi       $t7, $t6, 0x2000
    /* 328F78 802E4E28 15E0000A */  bnez       $t7, .L802E4E54_328FA4
    /* 328F7C 802E4E2C 8166000D */   lb        $a2, 0xD($t3)
    /* 328F80 802E4E30 8518002C */  lh         $t8, 0x2C($t0)
    /* 328F84 802E4E34 93A4004B */  lbu        $a0, 0x4B($sp)
    /* 328F88 802E4E38 27A70038 */  addiu      $a3, $sp, 0x38
    /* 328F8C 802E4E3C 2B010003 */  slti       $at, $t8, 0x3
    /* 328F90 802E4E40 54200005 */  bnel       $at, $zero, .L802E4E58_328FA8
    /* 328F94 802E4E44 00062C00 */   sll       $a1, $a2, 16
    /* 328F98 802E4E48 0C0B8D61 */  jal        func_802E3584_3276D4
    /* 328F9C 802E4E4C A7A60034 */   sh        $a2, 0x34($sp)
    /* 328FA0 802E4E50 87A60034 */  lh         $a2, 0x34($sp)
  .L802E4E54_328FA4:
    /* 328FA4 802E4E54 00062C00 */  sll        $a1, $a2, 16
  .L802E4E58_328FA8:
    /* 328FA8 802E4E58 00056C03 */  sra        $t5, $a1, 16
    /* 328FAC 802E4E5C 01A02825 */  or         $a1, $t5, $zero
    /* 328FB0 802E4E60 0C0B90FF */  jal        func_802E43FC_32854C
    /* 328FB4 802E4E64 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 328FB8 802E4E68 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 328FBC 802E4E6C 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 328FC0 802E4E70 03E00008 */  jr         $ra
    /* 328FC4 802E4E74 00000000 */   nop
endlabel func_802E4CB4_328E04
    /* 328FC8 802E4E78 00000000 */  nop
    /* 328FCC 802E4E7C 00000000 */  nop
