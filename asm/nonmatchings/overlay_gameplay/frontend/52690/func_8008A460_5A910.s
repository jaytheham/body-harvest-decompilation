nonmatching func_8008A460_5A910, 0x198

glabel func_8008A460_5A910
    /* 5A910 8008A460 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 5A914 8008A464 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 5A918 8008A468 AFA40038 */  sw         $a0, 0x38($sp)
    /* 5A91C 8008A46C AFA5003C */  sw         $a1, 0x3C($sp)
    /* 5A920 8008A470 AFA60040 */  sw         $a2, 0x40($sp)
    /* 5A924 8008A474 AFA70044 */  sw         $a3, 0x44($sp)
    /* 5A928 8008A478 0C020E96 */  jal        func_80083A58_53F08
    /* 5A92C 8008A47C 24040006 */   addiu     $a0, $zero, 0x6
    /* 5A930 8008A480 240100FB */  addiu      $at, $zero, 0xFB
    /* 5A934 8008A484 10410057 */  beq        $v0, $at, .L8008A5E4_5AA94
    /* 5A938 8008A488 A3A2001D */   sb        $v0, 0x1D($sp)
    /* 5A93C 8008A48C 0C020F54 */  jal        func_80083D50_54200
    /* 5A940 8008A490 304400FF */   andi      $a0, $v0, 0xFF
    /* 5A944 8008A494 2401FFFD */  addiu      $at, $zero, -0x3
    /* 5A948 8008A498 14410005 */  bne        $v0, $at, .L8008A4B0_5A960
    /* 5A94C 8008A49C 240A001C */   addiu     $t2, $zero, 0x1C
    /* 5A950 8008A4A0 0C020EC5 */  jal        func_80083B14_53FC4
    /* 5A954 8008A4A4 93A4001D */   lbu       $a0, 0x1D($sp)
    /* 5A958 8008A4A8 1000004F */  b          .L8008A5E8_5AA98
    /* 5A95C 8008A4AC 240200FB */   addiu     $v0, $zero, 0xFB
  .L8008A4B0_5A960:
    /* 5A960 8008A4B0 004A0019 */  multu      $v0, $t2
    /* 5A964 8008A4B4 3C09800E */  lui        $t1, %hi(D_800DE840)
    /* 5A968 8008A4B8 2529E840 */  addiu      $t1, $t1, %lo(D_800DE840)
    /* 5A96C 8008A4BC 97AF0056 */  lhu        $t7, 0x56($sp)
    /* 5A970 8008A4C0 87B8003A */  lh         $t8, 0x3A($sp)
    /* 5A974 8008A4C4 87B9003E */  lh         $t9, 0x3E($sp)
    /* 5A978 8008A4C8 87AD0042 */  lh         $t5, 0x42($sp)
    /* 5A97C 8008A4CC 93A80063 */  lbu        $t0, 0x63($sp)
    /* 5A980 8008A4D0 93AB0067 */  lbu        $t3, 0x67($sp)
    /* 5A984 8008A4D4 93AC006B */  lbu        $t4, 0x6B($sp)
    /* 5A988 8008A4D8 00007012 */  mflo       $t6
    /* 5A98C 8008A4DC 012E1821 */  addu       $v1, $t1, $t6
    /* 5A990 8008A4E0 84670004 */  lh         $a3, 0x4($v1)
    /* 5A994 8008A4E4 A46F0002 */  sh         $t7, 0x2($v1)
    /* 5A998 8008A4E8 A4780008 */  sh         $t8, 0x8($v1)
    /* 5A99C 8008A4EC 00EA0019 */  multu      $a3, $t2
    /* 5A9A0 8008A4F0 A479000A */  sh         $t9, 0xA($v1)
    /* 5A9A4 8008A4F4 A46D000C */  sh         $t5, 0xC($v1)
    /* 5A9A8 8008A4F8 83AF0047 */  lb         $t7, 0x47($sp)
    /* 5A9AC 8008A4FC 83B8004B */  lb         $t8, 0x4B($sp)
    /* 5A9B0 8008A500 83B9004F */  lb         $t9, 0x4F($sp)
    /* 5A9B4 8008A504 93AD0053 */  lbu        $t5, 0x53($sp)
    /* 5A9B8 8008A508 2505FF88 */  addiu      $a1, $t0, -0x78
    /* 5A9BC 8008A50C 00052400 */  sll        $a0, $a1, 16
    /* 5A9C0 8008A510 24670008 */  addiu      $a3, $v1, 0x8
    /* 5A9C4 8008A514 00007012 */  mflo       $t6
    /* 5A9C8 8008A518 012E3021 */  addu       $a2, $t1, $t6
    /* 5A9CC 8008A51C 93AE005F */  lbu        $t6, 0x5F($sp)
    /* 5A9D0 8008A520 A0CF0008 */  sb         $t7, 0x8($a2)
    /* 5A9D4 8008A524 A0D80009 */  sb         $t8, 0x9($a2)
    /* 5A9D8 8008A528 A0D9000A */  sb         $t9, 0xA($a2)
    /* 5A9DC 8008A52C A0CD000B */  sb         $t5, 0xB($a2)
    /* 5A9E0 8008A530 A0CE000C */  sb         $t6, 0xC($a2)
    /* 5A9E4 8008A534 93AF0073 */  lbu        $t7, 0x73($sp)
    /* 5A9E8 8008A538 0005CC00 */  sll        $t9, $a1, 16
    /* 5A9EC 8008A53C 0004C403 */  sra        $t8, $a0, 16
    /* 5A9F0 8008A540 00196C03 */  sra        $t5, $t9, 16
    /* 5A9F4 8008A544 03002025 */  or         $a0, $t8, $zero
    /* 5A9F8 8008A548 A068000E */  sb         $t0, 0xE($v1)
    /* 5A9FC 8008A54C A06B000F */  sb         $t3, 0xF($v1)
    /* 5AA00 8008A550 A06C0010 */  sb         $t4, 0x10($v1)
    /* 5AA04 8008A554 05A10002 */  bgez       $t5, .L8008A560_5AA10
    /* 5AA08 8008A558 A06F0014 */   sb        $t7, 0x14($v1)
    /* 5AA0C 8008A55C 00002025 */  or         $a0, $zero, $zero
  .L8008A560_5AA10:
    /* 5AA10 8008A560 2565FF88 */  addiu      $a1, $t3, -0x78
    /* 5AA14 8008A564 A0E40009 */  sb         $a0, 0x9($a3)
    /* 5AA18 8008A568 00052400 */  sll        $a0, $a1, 16
    /* 5AA1C 8008A56C 00057C00 */  sll        $t7, $a1, 16
    /* 5AA20 8008A570 00047403 */  sra        $t6, $a0, 16
    /* 5AA24 8008A574 000FC403 */  sra        $t8, $t7, 16
    /* 5AA28 8008A578 07010002 */  bgez       $t8, .L8008A584_5AA34
    /* 5AA2C 8008A57C 01C02025 */   or        $a0, $t6, $zero
    /* 5AA30 8008A580 00002025 */  or         $a0, $zero, $zero
  .L8008A584_5AA34:
    /* 5AA34 8008A584 2583FF88 */  addiu      $v1, $t4, -0x78
    /* 5AA38 8008A588 A0E4000A */  sb         $a0, 0xA($a3)
    /* 5AA3C 8008A58C 00032400 */  sll        $a0, $v1, 16
    /* 5AA40 8008A590 00036C00 */  sll        $t5, $v1, 16
    /* 5AA44 8008A594 0004CC03 */  sra        $t9, $a0, 16
    /* 5AA48 8008A598 000D7403 */  sra        $t6, $t5, 16
    /* 5AA4C 8008A59C 05C10002 */  bgez       $t6, .L8008A5A8_5AA58
    /* 5AA50 8008A5A0 03202025 */   or        $a0, $t9, $zero
    /* 5AA54 8008A5A4 00002025 */  or         $a0, $zero, $zero
  .L8008A5A8_5AA58:
    /* 5AA58 8008A5A8 93A5005B */  lbu        $a1, 0x5B($sp)
    /* 5AA5C 8008A5AC A0E4000B */  sb         $a0, 0xB($a3)
    /* 5AA60 8008A5B0 93AF006F */  lbu        $t7, 0x6F($sp)
    /* 5AA64 8008A5B4 24C30008 */  addiu      $v1, $a2, 0x8
    /* 5AA68 8008A5B8 28A10097 */  slti       $at, $a1, 0x97
    /* 5AA6C 8008A5BC 00A04025 */  or         $t0, $a1, $zero
    /* 5AA70 8008A5C0 14200003 */  bnez       $at, .L8008A5D0_5AA80
    /* 5AA74 8008A5C4 A06F0008 */   sb        $t7, 0x8($v1)
    /* 5AA78 8008A5C8 10000004 */  b          .L8008A5DC_5AA8C
    /* 5AA7C 8008A5CC 24050096 */   addiu     $a1, $zero, 0x96
  .L8008A5D0_5AA80:
    /* 5AA80 8008A5D0 55000003 */  bnel       $t0, $zero, .L8008A5E0_5AA90
    /* 5AA84 8008A5D4 A0650005 */   sb        $a1, 0x5($v1)
    /* 5AA88 8008A5D8 24050001 */  addiu      $a1, $zero, 0x1
  .L8008A5DC_5AA8C:
    /* 5AA8C 8008A5DC A0650005 */  sb         $a1, 0x5($v1)
  .L8008A5E0_5AA90:
    /* 5AA90 8008A5E0 A4600006 */  sh         $zero, 0x6($v1)
  .L8008A5E4_5AA94:
    /* 5AA94 8008A5E4 93A2001D */  lbu        $v0, 0x1D($sp)
  .L8008A5E8_5AA98:
    /* 5AA98 8008A5E8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 5AA9C 8008A5EC 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 5AAA0 8008A5F0 03E00008 */  jr         $ra
    /* 5AAA4 8008A5F4 00000000 */   nop
endlabel func_8008A460_5A910
