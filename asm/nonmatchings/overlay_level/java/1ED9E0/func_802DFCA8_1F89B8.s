nonmatching func_802DFCA8_1F89B8, 0xD8

glabel func_802DFCA8_1F89B8
    /* 1F89B8 802DFCA8 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 1F89BC 802DFCAC AFA40028 */  sw         $a0, 0x28($sp)
    /* 1F89C0 802DFCB0 93AE002B */  lbu        $t6, 0x2B($sp)
    /* 1F89C4 802DFCB4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F89C8 802DFCB8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F89CC 802DFCBC 000E7880 */  sll        $t7, $t6, 2
    /* 1F89D0 802DFCC0 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F89D4 802DFCC4 000F7900 */  sll        $t7, $t7, 4
    /* 1F89D8 802DFCC8 01F81821 */  addu       $v1, $t7, $t8
    /* 1F89DC 802DFCCC 8C790020 */  lw         $t9, 0x20($v1)
    /* 1F89E0 802DFCD0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1F89E4 802DFCD4 24050011 */  addiu      $a1, $zero, 0x11
    /* 1F89E8 802DFCD8 001942C0 */  sll        $t0, $t9, 11
    /* 1F89EC 802DFCDC 05000004 */  bltz       $t0, .L802DFCF0_1F8A00
    /* 1F89F0 802DFCE0 01C02025 */   or        $a0, $t6, $zero
    /* 1F89F4 802DFCE4 0C04DD1A */  jal        func_80137468_146418
    /* 1F89F8 802DFCE8 AFA30020 */   sw        $v1, 0x20($sp)
    /* 1F89FC 802DFCEC 8FA30020 */  lw         $v1, 0x20($sp)
  .L802DFCF0_1F8A00:
    /* 1F8A00 802DFCF0 8469002C */  lh         $t1, 0x2C($v1)
    /* 1F8A04 802DFCF4 24010001 */  addiu      $at, $zero, 0x1
    /* 1F8A08 802DFCF8 24050014 */  addiu      $a1, $zero, 0x14
    /* 1F8A0C 802DFCFC 15210017 */  bne        $t1, $at, .L802DFD5C_1F8A6C
    /* 1F8A10 802DFD00 24060003 */   addiu     $a2, $zero, 0x3
    /* 1F8A14 802DFD04 90640025 */  lbu        $a0, 0x25($v1)
    /* 1F8A18 802DFD08 3C0B8005 */  lui        $t3, %hi(alienInstances)
    /* 1F8A1C 802DFD0C 256B8198 */  addiu      $t3, $t3, %lo(alienInstances)
    /* 1F8A20 802DFD10 00045080 */  sll        $t2, $a0, 2
    /* 1F8A24 802DFD14 01445021 */  addu       $t2, $t2, $a0
    /* 1F8A28 802DFD18 000A5100 */  sll        $t2, $t2, 4
    /* 1F8A2C 802DFD1C 014B1021 */  addu       $v0, $t2, $t3
    /* 1F8A30 802DFD20 9058001A */  lbu        $t8, 0x1A($v0)
    /* 1F8A34 802DFD24 8C4C0020 */  lw         $t4, 0x20($v0)
    /* 1F8A38 802DFD28 3C01F7FF */  lui        $at, (0xF7FFFFFF >> 16)
    /* 1F8A3C 802DFD2C 0018C880 */  sll        $t9, $t8, 2
    /* 1F8A40 802DFD30 0338C823 */  subu       $t9, $t9, $t8
    /* 1F8A44 802DFD34 3421FFFF */  ori        $at, $at, (0xF7FFFFFF & 0xFFFF)
    /* 1F8A48 802DFD38 0019C880 */  sll        $t9, $t9, 2
    /* 1F8A4C 802DFD3C 0338C821 */  addu       $t9, $t9, $t8
    /* 1F8A50 802DFD40 01816824 */  and        $t5, $t4, $at
    /* 1F8A54 802DFD44 3C018025 */  lui        $at, %hi(D_802566C2)
    /* 1F8A58 802DFD48 0019C8C0 */  sll        $t9, $t9, 3
    /* 1F8A5C 802DFD4C AC4D0020 */  sw         $t5, 0x20($v0)
    /* 1F8A60 802DFD50 00390821 */  addu       $at, $at, $t9
    /* 1F8A64 802DFD54 240F0400 */  addiu      $t7, $zero, 0x400
    /* 1F8A68 802DFD58 A42F66C2 */  sh         $t7, %lo(D_802566C2)($at)
  .L802DFD5C_1F8A6C:
    /* 1F8A6C 802DFD5C 24080001 */  addiu      $t0, $zero, 0x1
    /* 1F8A70 802DFD60 AFA80010 */  sw         $t0, 0x10($sp)
    /* 1F8A74 802DFD64 93A4002B */  lbu        $a0, 0x2B($sp)
    /* 1F8A78 802DFD68 0C0227AD */  jal        func_80089EB4_98E64
    /* 1F8A7C 802DFD6C 24070007 */   addiu     $a3, $zero, 0x7
    /* 1F8A80 802DFD70 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1F8A84 802DFD74 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 1F8A88 802DFD78 03E00008 */  jr         $ra
    /* 1F8A8C 802DFD7C 00000000 */   nop
endlabel func_802DFCA8_1F89B8
