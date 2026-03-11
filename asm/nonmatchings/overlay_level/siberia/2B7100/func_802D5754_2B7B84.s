nonmatching func_802D5754_2B7B84, 0x22C

glabel func_802D5754_2B7B84
    /* 2B7B84 802D5754 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 2B7B88 802D5758 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 2B7B8C 802D575C 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 2B7B90 802D5760 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 2B7B94 802D5764 84450004 */  lh         $a1, 0x4($v0)
    /* 2B7B98 802D5768 0C02E134 */  jal        func_800B84D0_C7480
    /* 2B7B9C 802D576C 84440000 */   lh        $a0, 0x0($v0)
    /* 2B7BA0 802D5770 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* 2B7BA4 802D5774 24A52A70 */  addiu      $a1, $a1, %lo(D_80222A70)
    /* 2B7BA8 802D5778 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 2B7BAC 802D577C 00027203 */  sra        $t6, $v0, 8
    /* 2B7BB0 802D5780 01CF2023 */  subu       $a0, $t6, $t7
    /* 2B7BB4 802D5784 00041883 */  sra        $v1, $a0, 2
    /* 2B7BB8 802D5788 2861000B */  slti       $at, $v1, 0xB
    /* 2B7BBC 802D578C 54200004 */  bnel       $at, $zero, .L802D57A0_2B7BD0
    /* 2B7BC0 802D5790 2404000A */   addiu     $a0, $zero, 0xA
    /* 2B7BC4 802D5794 10000002 */  b          .L802D57A0_2B7BD0
    /* 2B7BC8 802D5798 00602025 */   or        $a0, $v1, $zero
    /* 2B7BCC 802D579C 2404000A */  addiu      $a0, $zero, 0xA
  .L802D57A0_2B7BD0:
    /* 2B7BD0 802D57A0 0C0389C8 */  jal        func_800E2720_F16D0
    /* 2B7BD4 802D57A4 00000000 */   nop
    /* 2B7BD8 802D57A8 3C028004 */  lui        $v0, %hi(D_80047F94)
    /* 2B7BDC 802D57AC 8C427F94 */  lw         $v0, %lo(D_80047F94)($v0)
    /* 2B7BE0 802D57B0 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* 2B7BE4 802D57B4 24A52A70 */  addiu      $a1, $a1, %lo(D_80222A70)
    /* 2B7BE8 802D57B8 10400011 */  beqz       $v0, .L802D5800_2B7C30
    /* 2B7BEC 802D57BC 3C188015 */   lui       $t8, %hi(D_80154300)
    /* 2B7BF0 802D57C0 8F184300 */  lw         $t8, %lo(D_80154300)($t8)
    /* 2B7BF4 802D57C4 241900C8 */  addiu      $t9, $zero, 0xC8
    /* 2B7BF8 802D57C8 3C01802E */  lui        $at, %hi(D_802E2F98)
    /* 2B7BFC 802D57CC 03384023 */  subu       $t0, $t9, $t8
    /* 2B7C00 802D57D0 44882000 */  mtc1       $t0, $f4
    /* 2B7C04 802D57D4 D4282F98 */  ldc1       $f8, %lo(D_802E2F98)($at)
    /* 2B7C08 802D57D8 3C01802E */  lui        $at, %hi(D_802E2FA0)
    /* 2B7C0C 802D57DC 468021A1 */  cvt.d.w    $f6, $f4
    /* 2B7C10 802D57E0 D4302FA0 */  ldc1       $f16, %lo(D_802E2FA0)($at)
    /* 2B7C14 802D57E4 3C018003 */  lui        $at, %hi(D_800313F8)
    /* 2B7C18 802D57E8 46283282 */  mul.d      $f10, $f6, $f8
    /* 2B7C1C 802D57EC 46305480 */  add.d      $f18, $f10, $f16
    /* 2B7C20 802D57F0 4620910D */  trunc.w.d  $f4, $f18
    /* 2B7C24 802D57F4 440A2000 */  mfc1       $t2, $f4
    /* 2B7C28 802D57F8 00000000 */  nop
    /* 2B7C2C 802D57FC A42A13F8 */  sh         $t2, %lo(D_800313F8)($at)
  .L802D5800_2B7C30:
    /* 2B7C30 802D5800 24010002 */  addiu      $at, $zero, 0x2
    /* 2B7C34 802D5804 14410006 */  bne        $v0, $at, .L802D5820_2B7C50
    /* 2B7C38 802D5808 240B0400 */   addiu     $t3, $zero, 0x400
    /* 2B7C3C 802D580C ACAB0000 */  sw         $t3, 0x0($a1)
    /* 2B7C40 802D5810 0C0389C8 */  jal        func_800E2720_F16D0
    /* 2B7C44 802D5814 240404B0 */   addiu     $a0, $zero, 0x4B0
    /* 2B7C48 802D5818 10000004 */  b          .L802D582C_2B7C5C
    /* 2B7C4C 802D581C 24040000 */   addiu     $a0, $zero, 0x0
  .L802D5820_2B7C50:
    /* 2B7C50 802D5820 240C00C0 */  addiu      $t4, $zero, 0xC0
    /* 2B7C54 802D5824 ACAC0000 */  sw         $t4, 0x0($a1)
    /* 2B7C58 802D5828 24040000 */  addiu      $a0, $zero, 0x0
  .L802D582C_2B7C5C:
    /* 2B7C5C 802D582C 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B7C60 802D5830 24050020 */   addiu     $a1, $zero, 0x20
    /* 2B7C64 802D5834 50400004 */  beql       $v0, $zero, .L802D5848_2B7C78
    /* 2B7C68 802D5838 24040000 */   addiu     $a0, $zero, 0x0
    /* 2B7C6C 802D583C 0C0389C8 */  jal        func_800E2720_F16D0
    /* 2B7C70 802D5840 240404B0 */   addiu     $a0, $zero, 0x4B0
    /* 2B7C74 802D5844 24040000 */  addiu      $a0, $zero, 0x0
  .L802D5848_2B7C78:
    /* 2B7C78 802D5848 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B7C7C 802D584C 2405001A */   addiu     $a1, $zero, 0x1A
    /* 2B7C80 802D5850 50400004 */  beql       $v0, $zero, .L802D5864_2B7C94
    /* 2B7C84 802D5854 24040000 */   addiu     $a0, $zero, 0x0
    /* 2B7C88 802D5858 0C0389C8 */  jal        func_800E2720_F16D0
    /* 2B7C8C 802D585C 24040008 */   addiu     $a0, $zero, 0x8
    /* 2B7C90 802D5860 24040000 */  addiu      $a0, $zero, 0x0
  .L802D5864_2B7C94:
    /* 2B7C94 802D5864 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B7C98 802D5868 2405001B */   addiu     $a1, $zero, 0x1B
    /* 2B7C9C 802D586C 10400009 */  beqz       $v0, .L802D5894_2B7CC4
    /* 2B7CA0 802D5870 24040000 */   addiu     $a0, $zero, 0x0
    /* 2B7CA4 802D5874 0C001CEE */  jal        func_800073B8_7FB8
    /* 2B7CA8 802D5878 2405001B */   addiu     $a1, $zero, 0x1B
    /* 2B7CAC 802D587C 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B7CB0 802D5880 0C001CEE */  jal        func_800073B8_7FB8
    /* 2B7CB4 802D5884 24050020 */   addiu     $a1, $zero, 0x20
    /* 2B7CB8 802D5888 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B7CBC 802D588C 0C001CEE */  jal        func_800073B8_7FB8
    /* 2B7CC0 802D5890 2405001A */   addiu     $a1, $zero, 0x1A
  .L802D5894_2B7CC4:
    /* 2B7CC4 802D5894 3C0D8015 */  lui        $t5, %hi(D_80157FA8)
    /* 2B7CC8 802D5898 8DAD7FA8 */  lw         $t5, %lo(D_80157FA8)($t5)
    /* 2B7CCC 802D589C 24010001 */  addiu      $at, $zero, 0x1
    /* 2B7CD0 802D58A0 3C04802D */  lui        $a0, %hi(func_802D5754_2B7B84)
    /* 2B7CD4 802D58A4 15A10005 */  bne        $t5, $at, .L802D58BC_2B7CEC
    /* 2B7CD8 802D58A8 00000000 */   nop
    /* 2B7CDC 802D58AC 0C001D2F */  jal        func_800074BC_80BC
    /* 2B7CE0 802D58B0 24845754 */   addiu     $a0, $a0, %lo(func_802D5754_2B7B84)
    /* 2B7CE4 802D58B4 0C0389C8 */  jal        func_800E2720_F16D0
    /* 2B7CE8 802D58B8 00002025 */   or        $a0, $zero, $zero
  .L802D58BC_2B7CEC:
    /* 2B7CEC 802D58BC 3C0E802E */  lui        $t6, %hi(D_802E3094)
    /* 2B7CF0 802D58C0 8DCE3094 */  lw         $t6, %lo(D_802E3094)($t6)
    /* 2B7CF4 802D58C4 24010001 */  addiu      $at, $zero, 0x1
    /* 2B7CF8 802D58C8 3C028005 */  lui        $v0, %hi(vehicleInstances)
    /* 2B7CFC 802D58CC 15C1001B */  bne        $t6, $at, .L802D593C_2B7D6C
    /* 2B7D00 802D58D0 2442DCD0 */   addiu     $v0, $v0, %lo(vehicleInstances)
    /* 2B7D04 802D58D4 84460AC8 */  lh         $a2, 0xAC8($v0)
    /* 2B7D08 802D58D8 84470ACA */  lh         $a3, 0xACA($v0)
    /* 2B7D0C 802D58DC 84490ACC */  lh         $t1, 0xACC($v0)
    /* 2B7D10 802D58E0 24C600B4 */  addiu      $a2, $a2, 0xB4
    /* 2B7D14 802D58E4 24E7004C */  addiu      $a3, $a3, 0x4C
    /* 2B7D18 802D58E8 0007C400 */  sll        $t8, $a3, 16
    /* 2B7D1C 802D58EC 00067C00 */  sll        $t7, $a2, 16
    /* 2B7D20 802D58F0 240A01C2 */  addiu      $t2, $zero, 0x1C2
    /* 2B7D24 802D58F4 240B0046 */  addiu      $t3, $zero, 0x46
    /* 2B7D28 802D58F8 240C0055 */  addiu      $t4, $zero, 0x55
    /* 2B7D2C 802D58FC AFAC0028 */  sw         $t4, 0x28($sp)
    /* 2B7D30 802D5900 AFAB0024 */  sw         $t3, 0x24($sp)
    /* 2B7D34 802D5904 AFAA0020 */  sw         $t2, 0x20($sp)
    /* 2B7D38 802D5908 000F3403 */  sra        $a2, $t7, 16
    /* 2B7D3C 802D590C 00183C03 */  sra        $a3, $t8, 16
    /* 2B7D40 802D5910 24040005 */  addiu      $a0, $zero, 0x5
    /* 2B7D44 802D5914 24050FFF */  addiu      $a1, $zero, 0xFFF
    /* 2B7D48 802D5918 AFA00014 */  sw         $zero, 0x14($sp)
    /* 2B7D4C 802D591C AFA00018 */  sw         $zero, 0x18($sp)
    /* 2B7D50 802D5920 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 2B7D54 802D5924 AFA0002C */  sw         $zero, 0x2C($sp)
    /* 2B7D58 802D5928 AFA00030 */  sw         $zero, 0x30($sp)
    /* 2B7D5C 802D592C 0C04B5C0 */  jal        func_8012D700_13C6B0
    /* 2B7D60 802D5930 AFA90010 */   sw        $t1, 0x10($sp)
    /* 2B7D64 802D5934 3C01802E */  lui        $at, %hi(D_802E3098)
    /* 2B7D68 802D5938 AC223098 */  sw         $v0, %lo(D_802E3098)($at)
  .L802D593C_2B7D6C:
    /* 2B7D6C 802D593C 0C0B5416 */  jal        func_802D5058_2B7488
    /* 2B7D70 802D5940 00000000 */   nop
    /* 2B7D74 802D5944 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B7D78 802D5948 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B7D7C 802D594C 24050002 */   addiu     $a1, $zero, 0x2
    /* 2B7D80 802D5950 10400007 */  beqz       $v0, .L802D5970_2B7DA0
    /* 2B7D84 802D5954 24040000 */   addiu     $a0, $zero, 0x0
    /* 2B7D88 802D5958 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B7D8C 802D595C 24050018 */   addiu     $a1, $zero, 0x18
    /* 2B7D90 802D5960 10400003 */  beqz       $v0, .L802D5970_2B7DA0
    /* 2B7D94 802D5964 24040000 */   addiu     $a0, $zero, 0x0
    /* 2B7D98 802D5968 0C001CEE */  jal        func_800073B8_7FB8
    /* 2B7D9C 802D596C 24050018 */   addiu     $a1, $zero, 0x18
  .L802D5970_2B7DA0:
    /* 2B7DA0 802D5970 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 2B7DA4 802D5974 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 2B7DA8 802D5978 03E00008 */  jr         $ra
    /* 2B7DAC 802D597C 00000000 */   nop
endlabel func_802D5754_2B7B84
