nonmatching func_800AEC34_BDBE4, 0x228

glabel func_800AEC34_BDBE4
    /* BDBE4 800AEC34 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* BDBE8 800AEC38 AFA40038 */  sw         $a0, 0x38($sp)
    /* BDBEC 800AEC3C 3C048022 */  lui        $a0, %hi(D_80223780)
    /* BDBF0 800AEC40 3C078004 */  lui        $a3, %hi(D_80047F94)
    /* BDBF4 800AEC44 3C058022 */  lui        $a1, %hi(D_80222A78)
    /* BDBF8 800AEC48 AFBF0014 */  sw         $ra, 0x14($sp)
    /* BDBFC 800AEC4C 24A52A78 */  addiu      $a1, $a1, %lo(D_80222A78)
    /* BDC00 800AEC50 8CE77F94 */  lw         $a3, %lo(D_80047F94)($a3)
    /* BDC04 800AEC54 24843780 */  addiu      $a0, $a0, %lo(D_80223780)
    /* BDC08 800AEC58 00001025 */  or         $v0, $zero, $zero
    /* BDC0C 800AEC5C 24060014 */  addiu      $a2, $zero, 0x14
    /* BDC10 800AEC60 00027100 */  sll        $t6, $v0, 4
  .L800AEC64_BDC14:
    /* BDC14 800AEC64 00AE1821 */  addu       $v1, $a1, $t6
    /* BDC18 800AEC68 906F0009 */  lbu        $t7, 0x9($v1)
    /* BDC1C 800AEC6C 24420001 */  addiu      $v0, $v0, 0x1
    /* BDC20 800AEC70 00024C00 */  sll        $t1, $v0, 16
    /* BDC24 800AEC74 01E60019 */  multu      $t7, $a2
    /* BDC28 800AEC78 00091403 */  sra        $v0, $t1, 16
    /* BDC2C 800AEC7C 284100D0 */  slti       $at, $v0, 0xD0
    /* BDC30 800AEC80 0000C012 */  mflo       $t8
    /* BDC34 800AEC84 0098C821 */  addu       $t9, $a0, $t8
    /* BDC38 800AEC88 93280012 */  lbu        $t0, 0x12($t9)
    /* BDC3C 800AEC8C 14E80002 */  bne        $a3, $t0, .L800AEC98_BDC48
    /* BDC40 800AEC90 00000000 */   nop
    /* BDC44 800AEC94 A0600000 */  sb         $zero, 0x0($v1)
  .L800AEC98_BDC48:
    /* BDC48 800AEC98 5420FFF2 */  bnel       $at, $zero, .L800AEC64_BDC14
    /* BDC4C 800AEC9C 00027100 */   sll       $t6, $v0, 4
    /* BDC50 800AECA0 3C0B8005 */  lui        $t3, %hi(D_80052AD0)
    /* BDC54 800AECA4 8D6B2AD0 */  lw         $t3, %lo(D_80052AD0)($t3)
    /* BDC58 800AECA8 3C0C8005 */  lui        $t4, %hi(D_8004816A)
    /* BDC5C 800AECAC 3C0D8003 */  lui        $t5, %hi(D_800314C4)
    /* BDC60 800AECB0 1160001E */  beqz       $t3, .L800AED2C_BDCDC
    /* BDC64 800AECB4 00000000 */   nop
    /* BDC68 800AECB8 858C816A */  lh         $t4, %lo(D_8004816A)($t4)
    /* BDC6C 800AECBC 91AD14C4 */  lbu        $t5, %lo(D_800314C4)($t5)
    /* BDC70 800AECC0 018D082A */  slt        $at, $t4, $t5
    /* BDC74 800AECC4 10200003 */  beqz       $at, .L800AECD4_BDC84
    /* BDC78 800AECC8 00000000 */   nop
    /* BDC7C 800AECCC 0C004DB3 */  jal        func_800136CC_142CC
    /* BDC80 800AECD0 00000000 */   nop
  .L800AECD4_BDC84:
    /* BDC84 800AECD4 0C021F8C */  jal        func_80087E30_96DE0
    /* BDC88 800AECD8 00000000 */   nop
    /* BDC8C 800AECDC 3C0F8015 */  lui        $t7, %hi(D_8014F820)
    /* BDC90 800AECE0 8DEFF820 */  lw         $t7, %lo(D_8014F820)($t7)
    /* BDC94 800AECE4 3C19800B */  lui        $t9, %hi(func_800AEBC4_BDB74)
    /* BDC98 800AECE8 240E0002 */  addiu      $t6, $zero, 0x2
    /* BDC9C 800AECEC 2739EBC4 */  addiu      $t9, $t9, %lo(func_800AEBC4_BDB74)
    /* BDCA0 800AECF0 25F8012C */  addiu      $t8, $t7, 0x12C
    /* BDCA4 800AECF4 A3AE0028 */  sb         $t6, 0x28($sp)
    /* BDCA8 800AECF8 A3A00029 */  sb         $zero, 0x29($sp)
    /* BDCAC 800AECFC A3A0002A */  sb         $zero, 0x2A($sp)
    /* BDCB0 800AED00 A3A0002B */  sb         $zero, 0x2B($sp)
    /* BDCB4 800AED04 AFB8002C */  sw         $t8, 0x2C($sp)
    /* BDCB8 800AED08 A3A00030 */  sb         $zero, 0x30($sp)
    /* BDCBC 800AED0C A3A00031 */  sb         $zero, 0x31($sp)
    /* BDCC0 800AED10 AFB90034 */  sw         $t9, 0x34($sp)
    /* BDCC4 800AED14 0C02B915 */  jal        func_800AE454_BD404
    /* BDCC8 800AED18 27A40028 */   addiu     $a0, $sp, 0x28
    /* BDCCC 800AED1C 0C02F6BD */  jal        func_800BDAF4_CCAA4
    /* BDCD0 800AED20 00000000 */   nop
    /* BDCD4 800AED24 3C078004 */  lui        $a3, %hi(D_80047F94)
    /* BDCD8 800AED28 8CE77F94 */  lw         $a3, %lo(D_80047F94)($a3)
  .L800AED2C_BDCDC:
    /* BDCDC 800AED2C 3C088004 */  lui        $t0, %hi(currentLevel)
    /* BDCE0 800AED30 8D087F90 */  lw         $t0, %lo(currentLevel)($t0)
    /* BDCE4 800AED34 00084880 */  sll        $t1, $t0, 2
    /* BDCE8 800AED38 01284821 */  addu       $t1, $t1, $t0
    /* BDCEC 800AED3C 00094840 */  sll        $t1, $t1, 1
    /* BDCF0 800AED40 01271021 */  addu       $v0, $t1, $a3
    /* BDCF4 800AED44 2442FFF6 */  addiu      $v0, $v0, -0xA
    /* BDCF8 800AED48 00025400 */  sll        $t2, $v0, 16
    /* BDCFC 800AED4C 000A5C03 */  sra        $t3, $t2, 16
    /* BDD00 800AED50 2D610022 */  sltiu      $at, $t3, 0x22
    /* BDD04 800AED54 1020003D */  beqz       $at, .L800AEE4C_BDDFC
    /* BDD08 800AED58 000B6080 */   sll       $t4, $t3, 2
    /* BDD0C 800AED5C 3C018014 */  lui        $at, %hi(jtbl_80142C80_overlay_gameplay_outside)
    /* BDD10 800AED60 002C0821 */  addu       $at, $at, $t4
    /* BDD14 800AED64 8C2C2C80 */  lw         $t4, %lo(jtbl_80142C80_overlay_gameplay_outside)($at)
    /* BDD18 800AED68 01800008 */  jr         $t4
    /* BDD1C 800AED6C 00000000 */   nop
    /* BDD20 800AED70 240D0006 */  addiu      $t5, $zero, 0x6
    /* BDD24 800AED74 3C018005 */  lui        $at, %hi(D_80048030)
    /* BDD28 800AED78 10000034 */  b          .L800AEE4C_BDDFC
    /* BDD2C 800AED7C A02D8030 */   sb        $t5, %lo(D_80048030)($at)
    /* BDD30 800AED80 240E000B */  addiu      $t6, $zero, 0xB
    /* BDD34 800AED84 3C018005 */  lui        $at, %hi(D_80048030)
    /* BDD38 800AED88 10000030 */  b          .L800AEE4C_BDDFC
    /* BDD3C 800AED8C A02E8030 */   sb        $t6, %lo(D_80048030)($at)
    /* BDD40 800AED90 240F0010 */  addiu      $t7, $zero, 0x10
    /* BDD44 800AED94 3C018005 */  lui        $at, %hi(D_80048030)
    /* BDD48 800AED98 1000002C */  b          .L800AEE4C_BDDFC
    /* BDD4C 800AED9C A02F8030 */   sb        $t7, %lo(D_80048030)($at)
    /* BDD50 800AEDA0 24180002 */  addiu      $t8, $zero, 0x2
    /* BDD54 800AEDA4 3C018005 */  lui        $at, %hi(D_80048030)
    /* BDD58 800AEDA8 10000028 */  b          .L800AEE4C_BDDFC
    /* BDD5C 800AEDAC A0388030 */   sb        $t8, %lo(D_80048030)($at)
    /* BDD60 800AEDB0 24190006 */  addiu      $t9, $zero, 0x6
    /* BDD64 800AEDB4 3C018005 */  lui        $at, %hi(D_80048030)
    /* BDD68 800AEDB8 10000024 */  b          .L800AEE4C_BDDFC
    /* BDD6C 800AEDBC A0398030 */   sb        $t9, %lo(D_80048030)($at)
    /* BDD70 800AEDC0 2408000A */  addiu      $t0, $zero, 0xA
    /* BDD74 800AEDC4 3C018005 */  lui        $at, %hi(D_80048030)
    /* BDD78 800AEDC8 10000020 */  b          .L800AEE4C_BDDFC
    /* BDD7C 800AEDCC A0288030 */   sb        $t0, %lo(D_80048030)($at)
    /* BDD80 800AEDD0 2409000D */  addiu      $t1, $zero, 0xD
    /* BDD84 800AEDD4 3C018005 */  lui        $at, %hi(D_80048030)
    /* BDD88 800AEDD8 1000001C */  b          .L800AEE4C_BDDFC
    /* BDD8C 800AEDDC A0298030 */   sb        $t1, %lo(D_80048030)($at)
    /* BDD90 800AEDE0 240A0002 */  addiu      $t2, $zero, 0x2
    /* BDD94 800AEDE4 3C018005 */  lui        $at, %hi(D_80048030)
    /* BDD98 800AEDE8 10000018 */  b          .L800AEE4C_BDDFC
    /* BDD9C 800AEDEC A02A8030 */   sb        $t2, %lo(D_80048030)($at)
    /* BDDA0 800AEDF0 240B0005 */  addiu      $t3, $zero, 0x5
    /* BDDA4 800AEDF4 3C018005 */  lui        $at, %hi(D_80048030)
    /* BDDA8 800AEDF8 10000014 */  b          .L800AEE4C_BDDFC
    /* BDDAC 800AEDFC A02B8030 */   sb        $t3, %lo(D_80048030)($at)
    /* BDDB0 800AEE00 240C0007 */  addiu      $t4, $zero, 0x7
    /* BDDB4 800AEE04 3C018005 */  lui        $at, %hi(D_80048030)
    /* BDDB8 800AEE08 10000010 */  b          .L800AEE4C_BDDFC
    /* BDDBC 800AEE0C A02C8030 */   sb        $t4, %lo(D_80048030)($at)
    /* BDDC0 800AEE10 240D0002 */  addiu      $t5, $zero, 0x2
    /* BDDC4 800AEE14 3C018005 */  lui        $at, %hi(D_80048030)
    /* BDDC8 800AEE18 1000000C */  b          .L800AEE4C_BDDFC
    /* BDDCC 800AEE1C A02D8030 */   sb        $t5, %lo(D_80048030)($at)
    /* BDDD0 800AEE20 240E0004 */  addiu      $t6, $zero, 0x4
    /* BDDD4 800AEE24 3C018005 */  lui        $at, %hi(D_80048030)
    /* BDDD8 800AEE28 10000008 */  b          .L800AEE4C_BDDFC
    /* BDDDC 800AEE2C A02E8030 */   sb        $t6, %lo(D_80048030)($at)
    /* BDDE0 800AEE30 240F0006 */  addiu      $t7, $zero, 0x6
    /* BDDE4 800AEE34 3C018005 */  lui        $at, %hi(D_80048030)
    /* BDDE8 800AEE38 10000004 */  b          .L800AEE4C_BDDFC
    /* BDDEC 800AEE3C A02F8030 */   sb        $t7, %lo(D_80048030)($at)
    /* BDDF0 800AEE40 24180009 */  addiu      $t8, $zero, 0x9
    /* BDDF4 800AEE44 3C018005 */  lui        $at, %hi(D_80048030)
    /* BDDF8 800AEE48 A0388030 */  sb         $t8, %lo(D_80048030)($at)
  .L800AEE4C_BDDFC:
    /* BDDFC 800AEE4C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* BDE00 800AEE50 27BD0038 */  addiu      $sp, $sp, 0x38
    /* BDE04 800AEE54 03E00008 */  jr         $ra
    /* BDE08 800AEE58 00000000 */   nop
endlabel func_800AEC34_BDBE4
