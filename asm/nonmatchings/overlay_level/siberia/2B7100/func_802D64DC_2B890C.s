nonmatching func_802D64DC_2B890C, 0x198

glabel func_802D64DC_2B890C
    /* 2B890C 802D64DC 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 2B8910 802D64E0 AFB30020 */  sw         $s3, 0x20($sp)
    /* 2B8914 802D64E4 00A6082A */  slt        $at, $a1, $a2
    /* 2B8918 802D64E8 00809825 */  or         $s3, $a0, $zero
    /* 2B891C 802D64EC AFBF0024 */  sw         $ra, 0x24($sp)
    /* 2B8920 802D64F0 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 2B8924 802D64F4 AFB10018 */  sw         $s1, 0x18($sp)
    /* 2B8928 802D64F8 AFB00014 */  sw         $s0, 0x14($sp)
    /* 2B892C 802D64FC AFA5002C */  sw         $a1, 0x2C($sp)
    /* 2B8930 802D6500 1420000D */  bnez       $at, .L802D6538_2B8968
    /* 2B8934 802D6504 00A07025 */   or        $t6, $a1, $zero
    /* 2B8938 802D6508 00137880 */  sll        $t7, $s3, 2
    /* 2B893C 802D650C 01F37823 */  subu       $t7, $t7, $s3
    /* 2B8940 802D6510 000F78C0 */  sll        $t7, $t7, 3
    /* 2B8944 802D6514 3C188005 */  lui        $t8, %hi(D_80050AE7)
    /* 2B8948 802D6518 030FC021 */  addu       $t8, $t8, $t7
    /* 2B894C 802D651C 83180AE7 */  lb         $t8, %lo(D_80050AE7)($t8)
    /* 2B8950 802D6520 5B000006 */  blezl      $t8, .L802D653C_2B896C
    /* 2B8954 802D6524 8FB9002C */   lw        $t9, 0x2C($sp)
    /* 2B8958 802D6528 0C047020 */  jal        func_8011C080_12B030
    /* 2B895C 802D652C 326400FF */   andi      $a0, $s3, 0xFF
    /* 2B8960 802D6530 1000003C */  b          .L802D6624_2B8A54
    /* 2B8964 802D6534 8FAE0040 */   lw        $t6, 0x40($sp)
  .L802D6538_2B8968:
    /* 2B8968 802D6538 8FB9002C */  lw         $t9, 0x2C($sp)
  .L802D653C_2B896C:
    /* 2B896C 802D653C 8FA9002C */  lw         $t1, 0x2C($sp)
    /* 2B8970 802D6540 27280018 */  addiu      $t0, $t9, 0x18
    /* 2B8974 802D6544 14C80010 */  bne        $a2, $t0, .L802D6588_2B89B8
    /* 2B8978 802D6548 00000000 */   nop
    /* 2B897C 802D654C 3C04802E */  lui        $a0, %hi(D_802E2EF8)
    /* 2B8980 802D6550 0C00731B */  jal        osSyncPrintf
    /* 2B8984 802D6554 24842EF8 */   addiu     $a0, $a0, %lo(D_802E2EF8)
    /* 2B8988 802D6558 8FB2003C */  lw         $s2, 0x3C($sp)
    /* 2B898C 802D655C 00008025 */  or         $s0, $zero, $zero
    /* 2B8990 802D6560 8FB10038 */  lw         $s1, 0x38($sp)
    /* 2B8994 802D6564 1A40002E */  blez       $s2, .L802D6620_2B8A50
  .L802D6568_2B8998:
    /* 2B8998 802D6568 02602025 */   or        $a0, $s3, $zero
    /* 2B899C 802D656C 0C0B58FA */  jal        func_802D63E8_2B8818
    /* 2B89A0 802D6570 02202825 */   or        $a1, $s1, $zero
    /* 2B89A4 802D6574 26100001 */  addiu      $s0, $s0, 0x1
    /* 2B89A8 802D6578 1612FFFB */  bne        $s0, $s2, .L802D6568_2B8998
    /* 2B89AC 802D657C 26310006 */   addiu     $s1, $s1, 0x6
    /* 2B89B0 802D6580 10000028 */  b          .L802D6624_2B8A54
    /* 2B89B4 802D6584 8FAE0040 */   lw        $t6, 0x40($sp)
  .L802D6588_2B89B8:
    /* 2B89B8 802D6588 0127001A */  div        $zero, $t1, $a3
    /* 2B89BC 802D658C 00005010 */  mfhi       $t2
    /* 2B89C0 802D6590 3C04802E */  lui        $a0, %hi(D_802E2F04)
    /* 2B89C4 802D6594 14E00002 */  bnez       $a3, .L802D65A0_2B89D0
    /* 2B89C8 802D6598 00000000 */   nop
    /* 2B89CC 802D659C 0007000D */  break      7
  .L802D65A0_2B89D0:
    /* 2B89D0 802D65A0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 2B89D4 802D65A4 14E10004 */  bne        $a3, $at, .L802D65B8_2B89E8
    /* 2B89D8 802D65A8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 2B89DC 802D65AC 15210002 */  bne        $t1, $at, .L802D65B8_2B89E8
    /* 2B89E0 802D65B0 00000000 */   nop
    /* 2B89E4 802D65B4 0006000D */  break      6
  .L802D65B8_2B89E8:
    /* 2B89E8 802D65B8 5540001A */  bnel       $t2, $zero, .L802D6624_2B8A54
    /* 2B89EC 802D65BC 8FAE0040 */   lw        $t6, 0x40($sp)
    /* 2B89F0 802D65C0 0C00731B */  jal        osSyncPrintf
    /* 2B89F4 802D65C4 24842F04 */   addiu     $a0, $a0, %lo(D_802E2F04)
    /* 2B89F8 802D65C8 0C000E38 */  jal        func_800038E0_44E0
    /* 2B89FC 802D65CC 00000000 */   nop
    /* 2B8A00 802D65D0 8FB2003C */  lw         $s2, 0x3C($sp)
    /* 2B8A04 802D65D4 8FAB0038 */  lw         $t3, 0x38($sp)
    /* 2B8A08 802D65D8 02602025 */  or         $a0, $s3, $zero
    /* 2B8A0C 802D65DC 0052001A */  div        $zero, $v0, $s2
    /* 2B8A10 802D65E0 00006010 */  mfhi       $t4
    /* 2B8A14 802D65E4 000C6880 */  sll        $t5, $t4, 2
    /* 2B8A18 802D65E8 01AC6823 */  subu       $t5, $t5, $t4
    /* 2B8A1C 802D65EC 000D6840 */  sll        $t5, $t5, 1
    /* 2B8A20 802D65F0 16400002 */  bnez       $s2, .L802D65FC_2B8A2C
    /* 2B8A24 802D65F4 00000000 */   nop
    /* 2B8A28 802D65F8 0007000D */  break      7
  .L802D65FC_2B8A2C:
    /* 2B8A2C 802D65FC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 2B8A30 802D6600 16410004 */  bne        $s2, $at, .L802D6614_2B8A44
    /* 2B8A34 802D6604 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 2B8A38 802D6608 14410002 */  bne        $v0, $at, .L802D6614_2B8A44
    /* 2B8A3C 802D660C 00000000 */   nop
    /* 2B8A40 802D6610 0006000D */  break      6
  .L802D6614_2B8A44:
    /* 2B8A44 802D6614 016D2821 */  addu       $a1, $t3, $t5
    /* 2B8A48 802D6618 0C0B58FA */  jal        func_802D63E8_2B8818
    /* 2B8A4C 802D661C 00000000 */   nop
  .L802D6620_2B8A50:
    /* 2B8A50 802D6620 8FAE0040 */  lw         $t6, 0x40($sp)
  .L802D6624_2B8A54:
    /* 2B8A54 802D6624 8FAF002C */  lw         $t7, 0x2C($sp)
    /* 2B8A58 802D6628 0013C080 */  sll        $t8, $s3, 2
    /* 2B8A5C 802D662C 0313C023 */  subu       $t8, $t8, $s3
    /* 2B8A60 802D6630 01CF082A */  slt        $at, $t6, $t7
    /* 2B8A64 802D6634 10200008 */  beqz       $at, .L802D6658_2B8A88
    /* 2B8A68 802D6638 0018C0C0 */   sll       $t8, $t8, 3
    /* 2B8A6C 802D663C 3C198005 */  lui        $t9, %hi(buildingInstances)
    /* 2B8A70 802D6640 27390AD8 */  addiu      $t9, $t9, %lo(buildingInstances)
    /* 2B8A74 802D6644 03191021 */  addu       $v0, $t8, $t9
    /* 2B8A78 802D6648 84480002 */  lh         $t0, 0x2($v0)
    /* 2B8A7C 802D664C 8FA90044 */  lw         $t1, 0x44($sp)
    /* 2B8A80 802D6650 01095023 */  subu       $t2, $t0, $t1
    /* 2B8A84 802D6654 A44A0002 */  sh         $t2, 0x2($v0)
  .L802D6658_2B8A88:
    /* 2B8A88 802D6658 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 2B8A8C 802D665C 8FB00014 */  lw         $s0, 0x14($sp)
    /* 2B8A90 802D6660 8FB10018 */  lw         $s1, 0x18($sp)
    /* 2B8A94 802D6664 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 2B8A98 802D6668 8FB30020 */  lw         $s3, 0x20($sp)
    /* 2B8A9C 802D666C 03E00008 */  jr         $ra
    /* 2B8AA0 802D6670 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_802D64DC_2B890C
