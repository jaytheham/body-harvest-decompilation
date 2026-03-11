nonmatching func_802D7818_2B9C48, 0x11C

glabel func_802D7818_2B9C48
    /* 2B9C48 802D7818 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2B9C4C 802D781C 000E7880 */  sll        $t7, $t6, 2
    /* 2B9C50 802D7820 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 2B9C54 802D7824 01EE7821 */  addu       $t7, $t7, $t6
    /* 2B9C58 802D7828 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2B9C5C 802D782C AFB00020 */  sw         $s0, 0x20($sp)
    /* 2B9C60 802D7830 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2B9C64 802D7834 000F7900 */  sll        $t7, $t7, 4
    /* 2B9C68 802D7838 01F88021 */  addu       $s0, $t7, $t8
    /* 2B9C6C 802D783C 8E190020 */  lw         $t9, 0x20($s0)
    /* 2B9C70 802D7840 AFA40048 */  sw         $a0, 0x48($sp)
    /* 2B9C74 802D7844 01C02025 */  or         $a0, $t6, $zero
    /* 2B9C78 802D7848 33282000 */  andi       $t0, $t9, 0x2000
    /* 2B9C7C 802D784C AFBF0024 */  sw         $ra, 0x24($sp)
    /* 2B9C80 802D7850 11000032 */  beqz       $t0, .L802D791C_2B9D4C
    /* 2B9C84 802D7854 AFA5004C */   sw        $a1, 0x4C($sp)
    /* 2B9C88 802D7858 87A9004E */  lh         $t1, 0x4E($sp)
    /* 2B9C8C 802D785C 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 2B9C90 802D7860 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 2B9C94 802D7864 00095100 */  sll        $t2, $t1, 4
    /* 2B9C98 802D7868 006A5821 */  addu       $t3, $v1, $t2
    /* 2B9C9C 802D786C 8162000C */  lb         $v0, 0xC($t3)
    /* 2B9CA0 802D7870 860F000C */  lh         $t7, 0xC($s0)
    /* 2B9CA4 802D7874 3C18802E */  lui        $t8, %hi(D_802E13E0)
    /* 2B9CA8 802D7878 00026100 */  sll        $t4, $v0, 4
    /* 2B9CAC 802D787C 006C6821 */  addu       $t5, $v1, $t4
    /* 2B9CB0 802D7880 81AE000C */  lb         $t6, 0xC($t5)
    /* 2B9CB4 802D7884 271813E0 */  addiu      $t8, $t8, %lo(D_802E13E0)
    /* 2B9CB8 802D7888 AFB80010 */  sw         $t8, 0x10($sp)
    /* 2B9CBC 802D788C A3A4004B */  sb         $a0, 0x4B($sp)
    /* 2B9CC0 802D7890 24050004 */  addiu      $a1, $zero, 0x4
    /* 2B9CC4 802D7894 24060003 */  addiu      $a2, $zero, 0x3
    /* 2B9CC8 802D7898 27A70040 */  addiu      $a3, $sp, 0x40
    /* 2B9CCC 802D789C A7A90040 */  sh         $t1, 0x40($sp)
    /* 2B9CD0 802D78A0 A7A20042 */  sh         $v0, 0x42($sp)
    /* 2B9CD4 802D78A4 A7AF0046 */  sh         $t7, 0x46($sp)
    /* 2B9CD8 802D78A8 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2B9CDC 802D78AC A7AE0044 */   sh        $t6, 0x44($sp)
    /* 2B9CE0 802D78B0 24010002 */  addiu      $at, $zero, 0x2
    /* 2B9CE4 802D78B4 14410012 */  bne        $v0, $at, .L802D7900_2B9D30
    /* 2B9CE8 802D78B8 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 2B9CEC 802D78BC 24050800 */  addiu      $a1, $zero, 0x800
    /* 2B9CF0 802D78C0 0C0213FA */  jal        func_80084FE8_93F98
    /* 2B9CF4 802D78C4 A3A4004B */   sb        $a0, 0x4B($sp)
    /* 2B9CF8 802D78C8 10400006 */  beqz       $v0, .L802D78E4_2B9D14
    /* 2B9CFC 802D78CC 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 2B9D00 802D78D0 24050001 */  addiu      $a1, $zero, 0x1
    /* 2B9D04 802D78D4 0C021C73 */  jal        func_800871CC_9617C
    /* 2B9D08 802D78D8 2406000F */   addiu     $a2, $zero, 0xF
    /* 2B9D0C 802D78DC 10000005 */  b          .L802D78F4_2B9D24
    /* 2B9D10 802D78E0 2419000F */   addiu     $t9, $zero, 0xF
  .L802D78E4_2B9D14:
    /* 2B9D14 802D78E4 24050001 */  addiu      $a1, $zero, 0x1
    /* 2B9D18 802D78E8 0C021C62 */  jal        func_80087188_96138
    /* 2B9D1C 802D78EC 2406000F */   addiu     $a2, $zero, 0xF
    /* 2B9D20 802D78F0 2419000F */  addiu      $t9, $zero, 0xF
  .L802D78F4_2B9D24:
    /* 2B9D24 802D78F4 A619001E */  sh         $t9, 0x1E($s0)
    /* 2B9D28 802D78F8 10000009 */  b          .L802D7920_2B9D50
    /* 2B9D2C 802D78FC 24020001 */   addiu     $v0, $zero, 0x1
  .L802D7900_2B9D30:
    /* 2B9D30 802D7900 24010003 */  addiu      $at, $zero, 0x3
    /* 2B9D34 802D7904 54410006 */  bnel       $v0, $at, .L802D7920_2B9D50
    /* 2B9D38 802D7908 00001025 */   or        $v0, $zero, $zero
    /* 2B9D3C 802D790C 8E080020 */  lw         $t0, 0x20($s0)
    /* 2B9D40 802D7910 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 2B9D44 802D7914 01014824 */  and        $t1, $t0, $at
    /* 2B9D48 802D7918 AE090020 */  sw         $t1, 0x20($s0)
  .L802D791C_2B9D4C:
    /* 2B9D4C 802D791C 00001025 */  or         $v0, $zero, $zero
  .L802D7920_2B9D50:
    /* 2B9D50 802D7920 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 2B9D54 802D7924 8FB00020 */  lw         $s0, 0x20($sp)
    /* 2B9D58 802D7928 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 2B9D5C 802D792C 03E00008 */  jr         $ra
    /* 2B9D60 802D7930 00000000 */   nop
endlabel func_802D7818_2B9C48
