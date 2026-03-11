nonmatching func_802DBA00_194510, 0x188

glabel func_802DBA00_194510
    /* 194510 802DBA00 308E00FF */  andi       $t6, $a0, 0xFF
    /* 194514 802DBA04 000E7880 */  sll        $t7, $t6, 2
    /* 194518 802DBA08 01EE7821 */  addu       $t7, $t7, $t6
    /* 19451C 802DBA0C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 194520 802DBA10 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 194524 802DBA14 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 194528 802DBA18 000F7900 */  sll        $t7, $t7, 4
    /* 19452C 802DBA1C 01F84021 */  addu       $t0, $t7, $t8
    /* 194530 802DBA20 91190025 */  lbu        $t9, 0x25($t0)
    /* 194534 802DBA24 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 194538 802DBA28 AFA40048 */  sw         $a0, 0x48($sp)
    /* 19453C 802DBA2C 01C02025 */  or         $a0, $t6, $zero
    /* 194540 802DBA30 A3AE004B */  sb         $t6, 0x4B($sp)
    /* 194544 802DBA34 AFA8001C */  sw         $t0, 0x1C($sp)
    /* 194548 802DBA38 2405FF45 */  addiu      $a1, $zero, -0xBB
    /* 19454C 802DBA3C 24060022 */  addiu      $a2, $zero, 0x22
    /* 194550 802DBA40 24070147 */  addiu      $a3, $zero, 0x147
    /* 194554 802DBA44 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 194558 802DBA48 A3B90043 */   sb        $t9, 0x43($sp)
    /* 19455C 802DBA4C 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 194560 802DBA50 3C018015 */  lui        $at, %hi(D_8014DD54)
    /* 194564 802DBA54 2409FF6A */  addiu      $t1, $zero, -0x96
    /* 194568 802DBA58 850A000C */  lh         $t2, 0xC($t0)
    /* 19456C 802DBA5C 3C05802E */  lui        $a1, %hi(D_802DDE18)
    /* 194570 802DBA60 3C06802E */  lui        $a2, %hi(D_802DDE24)
    /* 194574 802DBA64 000A5900 */  sll        $t3, $t2, 4
    /* 194578 802DBA68 002B0821 */  addu       $at, $at, $t3
    /* 19457C 802DBA6C 93A4004B */  lbu        $a0, 0x4B($sp)
    /* 194580 802DBA70 A429DD54 */  sh         $t1, %lo(D_8014DD54)($at)
    /* 194584 802DBA74 24C6DE24 */  addiu      $a2, $a2, %lo(D_802DDE24)
    /* 194588 802DBA78 0C0B6C5B */  jal        func_802DB16C_193C7C
    /* 19458C 802DBA7C 24A5DE18 */   addiu     $a1, $a1, %lo(D_802DDE18)
    /* 194590 802DBA80 1440003D */  bnez       $v0, .L802DBB78_194688
    /* 194594 802DBA84 8FA8001C */   lw        $t0, 0x1C($sp)
    /* 194598 802DBA88 0C000E38 */  jal        func_800038E0_44E0
    /* 19459C 802DBA8C AFA8001C */   sw        $t0, 0x1C($sp)
    /* 1945A0 802DBA90 24010064 */  addiu      $at, $zero, 0x64
    /* 1945A4 802DBA94 0041001A */  div        $zero, $v0, $at
    /* 1945A8 802DBA98 00006010 */  mfhi       $t4
    /* 1945AC 802DBA9C 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 1945B0 802DBAA0 15800035 */  bnez       $t4, .L802DBB78_194688
    /* 1945B4 802DBAA4 3C068005 */   lui       $a2, %hi(D_80052B34)
    /* 1945B8 802DBAA8 8CC62B34 */  lw         $a2, %lo(D_80052B34)($a2)
    /* 1945BC 802DBAAC 850E0000 */  lh         $t6, 0x0($t0)
    /* 1945C0 802DBAB0 93B90043 */  lbu        $t9, 0x43($sp)
    /* 1945C4 802DBAB4 84CD0000 */  lh         $t5, 0x0($a2)
    /* 1945C8 802DBAB8 00195080 */  sll        $t2, $t9, 2
    /* 1945CC 802DBABC 01AE1023 */  subu       $v0, $t5, $t6
    /* 1945D0 802DBAC0 00022023 */  negu       $a0, $v0
    /* 1945D4 802DBAC4 0082082A */  slt        $at, $a0, $v0
    /* 1945D8 802DBAC8 10200003 */  beqz       $at, .L802DBAD8_1945E8
    /* 1945DC 802DBACC 00803825 */   or        $a3, $a0, $zero
    /* 1945E0 802DBAD0 10000001 */  b          .L802DBAD8_1945E8
    /* 1945E4 802DBAD4 00403825 */   or        $a3, $v0, $zero
  .L802DBAD8_1945E8:
    /* 1945E8 802DBAD8 84CF0004 */  lh         $t7, 0x4($a2)
    /* 1945EC 802DBADC 85180004 */  lh         $t8, 0x4($t0)
    /* 1945F0 802DBAE0 01595021 */  addu       $t2, $t2, $t9
    /* 1945F4 802DBAE4 000A5100 */  sll        $t2, $t2, 4
    /* 1945F8 802DBAE8 01F81823 */  subu       $v1, $t7, $t8
    /* 1945FC 802DBAEC 00032823 */  negu       $a1, $v1
    /* 194600 802DBAF0 00A3082A */  slt        $at, $a1, $v1
    /* 194604 802DBAF4 10200003 */  beqz       $at, .L802DBB04_194614
    /* 194608 802DBAF8 00A03025 */   or        $a2, $a1, $zero
    /* 19460C 802DBAFC 10000001 */  b          .L802DBB04_194614
    /* 194610 802DBB00 00603025 */   or        $a2, $v1, $zero
  .L802DBB04_194614:
    /* 194614 802DBB04 00C7082A */  slt        $at, $a2, $a3
    /* 194618 802DBB08 10200007 */  beqz       $at, .L802DBB28_194638
    /* 19461C 802DBB0C 0082082A */   slt       $at, $a0, $v0
    /* 194620 802DBB10 10200003 */  beqz       $at, .L802DBB20_194630
    /* 194624 802DBB14 00801825 */   or        $v1, $a0, $zero
    /* 194628 802DBB18 1000000A */  b          .L802DBB44_194654
    /* 19462C 802DBB1C 28410320 */   slti      $at, $v0, 0x320
  .L802DBB20_194630:
    /* 194630 802DBB20 10000007 */  b          .L802DBB40_194650
    /* 194634 802DBB24 00601025 */   or        $v0, $v1, $zero
  .L802DBB28_194638:
    /* 194638 802DBB28 00A3082A */  slt        $at, $a1, $v1
    /* 19463C 802DBB2C 10200003 */  beqz       $at, .L802DBB3C_19464C
    /* 194640 802DBB30 00A02025 */   or        $a0, $a1, $zero
    /* 194644 802DBB34 10000001 */  b          .L802DBB3C_19464C
    /* 194648 802DBB38 00602025 */   or        $a0, $v1, $zero
  .L802DBB3C_19464C:
    /* 19464C 802DBB3C 00801025 */  or         $v0, $a0, $zero
  .L802DBB40_194650:
    /* 194650 802DBB40 28410320 */  slti       $at, $v0, 0x320
  .L802DBB44_194654:
    /* 194654 802DBB44 1020000C */  beqz       $at, .L802DBB78_194688
    /* 194658 802DBB48 3C018005 */   lui       $at, %hi(D_800481DD)
    /* 19465C 802DBB4C 002A0821 */  addu       $at, $at, $t2
    /* 194660 802DBB50 242181DD */  addiu      $at, $at, %lo(D_800481DD)
    /* 194664 802DBB54 88290000 */  lwl        $t1, 0x0($at)
    /* 194668 802DBB58 98290003 */  lwr        $t1, 0x3($at)
    /* 19466C 802DBB5C 312B8000 */  andi       $t3, $t1, 0x8000
    /* 194670 802DBB60 55600006 */  bnel       $t3, $zero, .L802DBB7C_19468C
    /* 194674 802DBB64 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 194678 802DBB68 8D0C0020 */  lw         $t4, 0x20($t0)
    /* 19467C 802DBB6C A1000036 */  sb         $zero, 0x36($t0)
    /* 194680 802DBB70 358D1000 */  ori        $t5, $t4, 0x1000
    /* 194684 802DBB74 AD0D0020 */  sw         $t5, 0x20($t0)
  .L802DBB78_194688:
    /* 194688 802DBB78 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802DBB7C_19468C:
    /* 19468C 802DBB7C 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 194690 802DBB80 03E00008 */  jr         $ra
    /* 194694 802DBB84 00000000 */   nop
endlabel func_802DBA00_194510
