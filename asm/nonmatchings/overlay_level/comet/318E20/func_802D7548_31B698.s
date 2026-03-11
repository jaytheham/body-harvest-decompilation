nonmatching func_802D7548_31B698, 0x168

glabel func_802D7548_31B698
    /* 31B698 802D7548 3C0E8005 */  lui        $t6, %hi(D_80052ACA)
    /* 31B69C 802D754C 91CE2ACA */  lbu        $t6, %lo(D_80052ACA)($t6)
    /* 31B6A0 802D7550 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 31B6A4 802D7554 24010002 */  addiu      $at, $zero, 0x2
    /* 31B6A8 802D7558 11C10051 */  beq        $t6, $at, .L802D76A0_31B7F0
    /* 31B6AC 802D755C AFBF0014 */   sw        $ra, 0x14($sp)
    /* 31B6B0 802D7560 2404005C */  addiu      $a0, $zero, 0x5C
    /* 31B6B4 802D7564 2405001F */  addiu      $a1, $zero, 0x1F
    /* 31B6B8 802D7568 0C001206 */  jal        func_80004818_5418
    /* 31B6BC 802D756C 2406000E */   addiu     $a2, $zero, 0xE
    /* 31B6C0 802D7570 10400006 */  beqz       $v0, .L802D758C_31B6DC
    /* 31B6C4 802D7574 3C0F8005 */   lui       $t7, %hi(D_80048030)
    /* 31B6C8 802D7578 91EF8030 */  lbu        $t7, %lo(D_80048030)($t7)
    /* 31B6CC 802D757C 5DE00004 */  bgtzl      $t7, .L802D7590_31B6E0
    /* 31B6D0 802D7580 2404FFEC */   addiu     $a0, $zero, -0x14
    /* 31B6D4 802D7584 0C001DB5 */  jal        func_800076D4_82D4
    /* 31B6D8 802D7588 24040001 */   addiu     $a0, $zero, 0x1
  .L802D758C_31B6DC:
    /* 31B6DC 802D758C 2404FFEC */  addiu      $a0, $zero, -0x14
  .L802D7590_31B6E0:
    /* 31B6E0 802D7590 24050052 */  addiu      $a1, $zero, 0x52
    /* 31B6E4 802D7594 0C001206 */  jal        func_80004818_5418
    /* 31B6E8 802D7598 24060004 */   addiu     $a2, $zero, 0x4
    /* 31B6EC 802D759C 10400007 */  beqz       $v0, .L802D75BC_31B70C
    /* 31B6F0 802D75A0 3C188005 */   lui       $t8, %hi(D_80048030)
    /* 31B6F4 802D75A4 93188030 */  lbu        $t8, %lo(D_80048030)($t8)
    /* 31B6F8 802D75A8 2B010002 */  slti       $at, $t8, 0x2
    /* 31B6FC 802D75AC 50200004 */  beql       $at, $zero, .L802D75C0_31B710
    /* 31B700 802D75B0 2404002B */   addiu     $a0, $zero, 0x2B
    /* 31B704 802D75B4 0C001DB5 */  jal        func_800076D4_82D4
    /* 31B708 802D75B8 24040002 */   addiu     $a0, $zero, 0x2
  .L802D75BC_31B70C:
    /* 31B70C 802D75BC 2404002B */  addiu      $a0, $zero, 0x2B
  .L802D75C0_31B710:
    /* 31B710 802D75C0 00002825 */  or         $a1, $zero, $zero
    /* 31B714 802D75C4 0C001206 */  jal        func_80004818_5418
    /* 31B718 802D75C8 24060006 */   addiu     $a2, $zero, 0x6
    /* 31B71C 802D75CC 10400007 */  beqz       $v0, .L802D75EC_31B73C
    /* 31B720 802D75D0 3C198005 */   lui       $t9, %hi(D_80048030)
    /* 31B724 802D75D4 93398030 */  lbu        $t9, %lo(D_80048030)($t9)
    /* 31B728 802D75D8 2B210003 */  slti       $at, $t9, 0x3
    /* 31B72C 802D75DC 50200004 */  beql       $at, $zero, .L802D75F0_31B740
    /* 31B730 802D75E0 24040000 */   addiu     $a0, $zero, 0x0
    /* 31B734 802D75E4 0C001DB5 */  jal        func_800076D4_82D4
    /* 31B738 802D75E8 24040003 */   addiu     $a0, $zero, 0x3
  .L802D75EC_31B73C:
    /* 31B73C 802D75EC 24040000 */  addiu      $a0, $zero, 0x0
  .L802D75F0_31B740:
    /* 31B740 802D75F0 0C001C9B */  jal        func_8000726C_7E6C
    /* 31B744 802D75F4 2405001E */   addiu     $a1, $zero, 0x1E
    /* 31B748 802D75F8 10400007 */  beqz       $v0, .L802D7618_31B768
    /* 31B74C 802D75FC 3C088005 */   lui       $t0, %hi(D_80048030)
    /* 31B750 802D7600 91088030 */  lbu        $t0, %lo(D_80048030)($t0)
    /* 31B754 802D7604 29010004 */  slti       $at, $t0, 0x4
    /* 31B758 802D7608 50200004 */  beql       $at, $zero, .L802D761C_31B76C
    /* 31B75C 802D760C 24040000 */   addiu     $a0, $zero, 0x0
    /* 31B760 802D7610 0C001DB5 */  jal        func_800076D4_82D4
    /* 31B764 802D7614 24040004 */   addiu     $a0, $zero, 0x4
  .L802D7618_31B768:
    /* 31B768 802D7618 24040000 */  addiu      $a0, $zero, 0x0
  .L802D761C_31B76C:
    /* 31B76C 802D761C 0C001C9B */  jal        func_8000726C_7E6C
    /* 31B770 802D7620 2405002D */   addiu     $a1, $zero, 0x2D
    /* 31B774 802D7624 10400013 */  beqz       $v0, .L802D7674_31B7C4
    /* 31B778 802D7628 24040000 */   addiu     $a0, $zero, 0x0
    /* 31B77C 802D762C 0C001C9B */  jal        func_8000726C_7E6C
    /* 31B780 802D7630 2405002E */   addiu     $a1, $zero, 0x2E
    /* 31B784 802D7634 1040000F */  beqz       $v0, .L802D7674_31B7C4
    /* 31B788 802D7638 24040000 */   addiu     $a0, $zero, 0x0
    /* 31B78C 802D763C 0C001C9B */  jal        func_8000726C_7E6C
    /* 31B790 802D7640 2405002F */   addiu     $a1, $zero, 0x2F
    /* 31B794 802D7644 1040000B */  beqz       $v0, .L802D7674_31B7C4
    /* 31B798 802D7648 24040000 */   addiu     $a0, $zero, 0x0
    /* 31B79C 802D764C 0C001C9B */  jal        func_8000726C_7E6C
    /* 31B7A0 802D7650 24050030 */   addiu     $a1, $zero, 0x30
    /* 31B7A4 802D7654 10400007 */  beqz       $v0, .L802D7674_31B7C4
    /* 31B7A8 802D7658 3C098005 */   lui       $t1, %hi(D_80048030)
    /* 31B7AC 802D765C 91298030 */  lbu        $t1, %lo(D_80048030)($t1)
    /* 31B7B0 802D7660 29210005 */  slti       $at, $t1, 0x5
    /* 31B7B4 802D7664 50200004 */  beql       $at, $zero, .L802D7678_31B7C8
    /* 31B7B8 802D7668 24040000 */   addiu     $a0, $zero, 0x0
    /* 31B7BC 802D766C 0C001DB5 */  jal        func_800076D4_82D4
    /* 31B7C0 802D7670 24040005 */   addiu     $a0, $zero, 0x5
  .L802D7674_31B7C4:
    /* 31B7C4 802D7674 24040000 */  addiu      $a0, $zero, 0x0
  .L802D7678_31B7C8:
    /* 31B7C8 802D7678 0C001C9B */  jal        func_8000726C_7E6C
    /* 31B7CC 802D767C 2405001F */   addiu     $a1, $zero, 0x1F
    /* 31B7D0 802D7680 10400007 */  beqz       $v0, .L802D76A0_31B7F0
    /* 31B7D4 802D7684 3C0A8005 */   lui       $t2, %hi(D_80048030)
    /* 31B7D8 802D7688 914A8030 */  lbu        $t2, %lo(D_80048030)($t2)
    /* 31B7DC 802D768C 29410006 */  slti       $at, $t2, 0x6
    /* 31B7E0 802D7690 50200004 */  beql       $at, $zero, .L802D76A4_31B7F4
    /* 31B7E4 802D7694 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 31B7E8 802D7698 0C001DB5 */  jal        func_800076D4_82D4
    /* 31B7EC 802D769C 24040006 */   addiu     $a0, $zero, 0x6
  .L802D76A0_31B7F0:
    /* 31B7F0 802D76A0 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D76A4_31B7F4:
    /* 31B7F4 802D76A4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 31B7F8 802D76A8 03E00008 */  jr         $ra
    /* 31B7FC 802D76AC 00000000 */   nop
endlabel func_802D7548_31B698
