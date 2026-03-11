nonmatching func_8008D978_9C928, 0xAC

glabel func_8008D978_9C928
    /* 9C928 8008D978 308E00FF */  andi       $t6, $a0, 0xFF
    /* 9C92C 8008D97C 24070050 */  addiu      $a3, $zero, 0x50
    /* 9C930 8008D980 01C70019 */  multu      $t6, $a3
    /* 9C934 8008D984 3C068005 */  lui        $a2, %hi(alienInstances)
    /* 9C938 8008D988 24C68198 */  addiu      $a2, $a2, %lo(alienInstances)
    /* 9C93C 8008D98C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 9C940 8008D990 AFA40028 */  sw         $a0, 0x28($sp)
    /* 9C944 8008D994 240100FF */  addiu      $at, $zero, 0xFF
    /* 9C948 8008D998 01C02025 */  or         $a0, $t6, $zero
    /* 9C94C 8008D99C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 9C950 8008D9A0 00007812 */  mflo       $t7
    /* 9C954 8008D9A4 00CF2821 */  addu       $a1, $a2, $t7
    /* 9C958 8008D9A8 90A20025 */  lbu        $v0, 0x25($a1)
    /* 9C95C 8008D9AC 50410019 */  beql       $v0, $at, .L8008DA14_9C9C4
    /* 9C960 8008D9B0 00001025 */   or        $v0, $zero, $zero
    /* 9C964 8008D9B4 00470019 */  multu      $v0, $a3
    /* 9C968 8008D9B8 3C010030 */  lui        $at, (0x300000 >> 16)
    /* 9C96C 8008D9BC 0000C012 */  mflo       $t8
    /* 9C970 8008D9C0 00D81821 */  addu       $v1, $a2, $t8
    /* 9C974 8008D9C4 8C790020 */  lw         $t9, 0x20($v1)
    /* 9C978 8008D9C8 03214024 */  and        $t0, $t9, $at
    /* 9C97C 8008D9CC 51000011 */  beql       $t0, $zero, .L8008DA14_9C9C4
    /* 9C980 8008D9D0 00001025 */   or        $v0, $zero, $zero
    /* 9C984 8008D9D4 90690025 */  lbu        $t1, 0x25($v1)
    /* 9C988 8008D9D8 01270019 */  multu      $t1, $a3
    /* 9C98C 8008D9DC 00005012 */  mflo       $t2
    /* 9C990 8008D9E0 00CA1021 */  addu       $v0, $a2, $t2
    /* 9C994 8008D9E4 8C4B0020 */  lw         $t3, 0x20($v0)
    /* 9C998 8008D9E8 316C2000 */  andi       $t4, $t3, 0x2000
    /* 9C99C 8008D9EC 51800005 */  beql       $t4, $zero, .L8008DA04_9C9B4
    /* 9C9A0 8008D9F0 240D00FF */   addiu     $t5, $zero, 0xFF
    /* 9C9A4 8008D9F4 0C021EAB */  jal        func_80087AAC_96A5C
    /* 9C9A8 8008D9F8 AFA5001C */   sw        $a1, 0x1C($sp)
    /* 9C9AC 8008D9FC 8FA5001C */  lw         $a1, 0x1C($sp)
    /* 9C9B0 8008DA00 240D00FF */  addiu      $t5, $zero, 0xFF
  .L8008DA04_9C9B4:
    /* 9C9B4 8008DA04 A0AD0025 */  sb         $t5, 0x25($a1)
    /* 9C9B8 8008DA08 10000002 */  b          .L8008DA14_9C9C4
    /* 9C9BC 8008DA0C 24020001 */   addiu     $v0, $zero, 0x1
    /* 9C9C0 8008DA10 00001025 */  or         $v0, $zero, $zero
  .L8008DA14_9C9C4:
    /* 9C9C4 8008DA14 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 9C9C8 8008DA18 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 9C9CC 8008DA1C 03E00008 */  jr         $ra
    /* 9C9D0 8008DA20 00000000 */   nop
endlabel func_8008D978_9C928
