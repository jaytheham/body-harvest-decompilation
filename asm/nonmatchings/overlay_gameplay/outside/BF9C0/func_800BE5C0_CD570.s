nonmatching func_800BE5C0_CD570, 0x720

glabel func_800BE5C0_CD570
    /* CD570 800BE5C0 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* CD574 800BE5C4 3C028015 */  lui        $v0, %hi(D_80151DD0)
    /* CD578 800BE5C8 90421DD0 */  lbu        $v0, %lo(D_80151DD0)($v0)
    /* CD57C 800BE5CC AFBF0034 */  sw         $ra, 0x34($sp)
    /* CD580 800BE5D0 AFB60030 */  sw         $s6, 0x30($sp)
    /* CD584 800BE5D4 AFB5002C */  sw         $s5, 0x2C($sp)
    /* CD588 800BE5D8 AFB40028 */  sw         $s4, 0x28($sp)
    /* CD58C 800BE5DC AFB30024 */  sw         $s3, 0x24($sp)
    /* CD590 800BE5E0 AFB20020 */  sw         $s2, 0x20($sp)
    /* CD594 800BE5E4 AFB1001C */  sw         $s1, 0x1C($sp)
    /* CD598 800BE5E8 104001B3 */  beqz       $v0, .L800BECB8_CDC68
    /* CD59C 800BE5EC AFB00018 */   sw        $s0, 0x18($sp)
    /* CD5A0 800BE5F0 24010002 */  addiu      $at, $zero, 0x2
    /* CD5A4 800BE5F4 144100CA */  bne        $v0, $at, .L800BE920_CD8D0
    /* CD5A8 800BE5F8 3C048015 */   lui       $a0, %hi(D_8014F89C)
    /* CD5AC 800BE5FC 3C058015 */  lui        $a1, %hi(D_8014F89D)
    /* CD5B0 800BE600 3C068020 */  lui        $a2, %hi(D_801FEA30)
    /* CD5B4 800BE604 24C6EA30 */  addiu      $a2, $a2, %lo(D_801FEA30)
    /* CD5B8 800BE608 90A5F89D */  lbu        $a1, %lo(D_8014F89D)($a1)
    /* CD5BC 800BE60C 9084F89C */  lbu        $a0, %lo(D_8014F89C)($a0)
    /* CD5C0 800BE610 0C02D014 */  jal        func_800B4050_C3000
    /* CD5C4 800BE614 00003825 */   or        $a3, $zero, $zero
    /* CD5C8 800BE618 3C128014 */  lui        $s2, %hi(D_8013D9AC)
    /* CD5CC 800BE61C 2652D9AC */  addiu      $s2, $s2, %lo(D_8013D9AC)
    /* CD5D0 800BE620 924E0000 */  lbu        $t6, 0x0($s2)
    /* CD5D4 800BE624 3C16802D */  lui        $s6, %hi(D_802D4AD0)
    /* CD5D8 800BE628 26D64AD0 */  addiu      $s6, $s6, %lo(D_802D4AD0)
    /* CD5DC 800BE62C 11C000BC */  beqz       $t6, .L800BE920_CD8D0
    /* CD5E0 800BE630 00008825 */   or        $s1, $zero, $zero
    /* CD5E4 800BE634 27B50055 */  addiu      $s5, $sp, 0x55
    /* CD5E8 800BE638 27B40056 */  addiu      $s4, $sp, 0x56
    /* CD5EC 800BE63C 27B30057 */  addiu      $s3, $sp, 0x57
  .L800BE640_CD5F0:
    /* CD5F0 800BE640 322400FF */  andi       $a0, $s1, 0xFF
    /* CD5F4 800BE644 02602825 */  or         $a1, $s3, $zero
    /* CD5F8 800BE648 02803025 */  or         $a2, $s4, $zero
    /* CD5FC 800BE64C 0C00128E */  jal        func_80004A38_5638
    /* CD600 800BE650 02A03825 */   or        $a3, $s5, $zero
    /* CD604 800BE654 93A50057 */  lbu        $a1, 0x57($sp)
    /* CD608 800BE658 92460000 */  lbu        $a2, 0x0($s2)
    /* CD60C 800BE65C 24070040 */  addiu      $a3, $zero, 0x40
    /* CD610 800BE660 04A10003 */  bgez       $a1, .L800BE670_CD620
    /* CD614 800BE664 00052043 */   sra       $a0, $a1, 1
    /* CD618 800BE668 24A10001 */  addiu      $at, $a1, 0x1
    /* CD61C 800BE66C 00012043 */  sra        $a0, $at, 1
  .L800BE670_CD620:
    /* CD620 800BE670 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD624 800BE674 00000000 */   nop
    /* CD628 800BE678 93A50056 */  lbu        $a1, 0x56($sp)
    /* CD62C 800BE67C 00117840 */  sll        $t7, $s1, 1
    /* CD630 800BE680 02CF8021 */  addu       $s0, $s6, $t7
    /* CD634 800BE684 0002C2C0 */  sll        $t8, $v0, 11
    /* CD638 800BE688 A6180000 */  sh         $t8, 0x0($s0)
    /* CD63C 800BE68C 04A10003 */  bgez       $a1, .L800BE69C_CD64C
    /* CD640 800BE690 00052043 */   sra       $a0, $a1, 1
    /* CD644 800BE694 24A10001 */  addiu      $at, $a1, 0x1
    /* CD648 800BE698 00012043 */  sra        $a0, $at, 1
  .L800BE69C_CD64C:
    /* CD64C 800BE69C 92460000 */  lbu        $a2, 0x0($s2)
    /* CD650 800BE6A0 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD654 800BE6A4 24070040 */   addiu     $a3, $zero, 0x40
    /* CD658 800BE6A8 96190000 */  lhu        $t9, 0x0($s0)
    /* CD65C 800BE6AC 93A50055 */  lbu        $a1, 0x55($sp)
    /* CD660 800BE6B0 00024180 */  sll        $t0, $v0, 6
    /* CD664 800BE6B4 03284821 */  addu       $t1, $t9, $t0
    /* CD668 800BE6B8 A6090000 */  sh         $t1, 0x0($s0)
    /* CD66C 800BE6BC 04A10003 */  bgez       $a1, .L800BE6CC_CD67C
    /* CD670 800BE6C0 00052043 */   sra       $a0, $a1, 1
    /* CD674 800BE6C4 24A10001 */  addiu      $at, $a1, 0x1
    /* CD678 800BE6C8 00012043 */  sra        $a0, $at, 1
  .L800BE6CC_CD67C:
    /* CD67C 800BE6CC 92460000 */  lbu        $a2, 0x0($s2)
    /* CD680 800BE6D0 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD684 800BE6D4 24070040 */   addiu     $a3, $zero, 0x40
    /* CD688 800BE6D8 960A0000 */  lhu        $t2, 0x0($s0)
    /* CD68C 800BE6DC 26310001 */  addiu      $s1, $s1, 0x1
    /* CD690 800BE6E0 00116C00 */  sll        $t5, $s1, 16
    /* CD694 800BE6E4 000D8C03 */  sra        $s1, $t5, 16
    /* CD698 800BE6E8 00025840 */  sll        $t3, $v0, 1
    /* CD69C 800BE6EC 2A210100 */  slti       $at, $s1, 0x100
    /* CD6A0 800BE6F0 014B6021 */  addu       $t4, $t2, $t3
    /* CD6A4 800BE6F4 1420FFD2 */  bnez       $at, .L800BE640_CD5F0
    /* CD6A8 800BE6F8 A60C0000 */   sh        $t4, 0x0($s0)
    /* CD6AC 800BE6FC 3C04802D */  lui        $a0, %hi(D_802CA8D0)
    /* CD6B0 800BE700 9084A8D0 */  lbu        $a0, %lo(D_802CA8D0)($a0)
    /* CD6B4 800BE704 02602825 */  or         $a1, $s3, $zero
    /* CD6B8 800BE708 02803025 */  or         $a2, $s4, $zero
    /* CD6BC 800BE70C 0C00128E */  jal        func_80004A38_5638
    /* CD6C0 800BE710 02A03825 */   or        $a3, $s5, $zero
    /* CD6C4 800BE714 92460000 */  lbu        $a2, 0x0($s2)
    /* CD6C8 800BE718 93A50057 */  lbu        $a1, 0x57($sp)
    /* CD6CC 800BE71C 24070040 */  addiu      $a3, $zero, 0x40
    /* CD6D0 800BE720 24C6FFFF */  addiu      $a2, $a2, -0x1
    /* CD6D4 800BE724 00067C00 */  sll        $t7, $a2, 16
    /* CD6D8 800BE728 04A10003 */  bgez       $a1, .L800BE738_CD6E8
    /* CD6DC 800BE72C 00052043 */   sra       $a0, $a1, 1
    /* CD6E0 800BE730 24A10001 */  addiu      $at, $a1, 0x1
    /* CD6E4 800BE734 00012043 */  sra        $a0, $at, 1
  .L800BE738_CD6E8:
    /* CD6E8 800BE738 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD6EC 800BE73C 000F3403 */   sra       $a2, $t7, 16
    /* CD6F0 800BE740 92460000 */  lbu        $a2, 0x0($s2)
    /* CD6F4 800BE744 93A50056 */  lbu        $a1, 0x56($sp)
    /* CD6F8 800BE748 00028AC0 */  sll        $s1, $v0, 11
    /* CD6FC 800BE74C 24C6FFFF */  addiu      $a2, $a2, -0x1
    /* CD700 800BE750 3239FFFF */  andi       $t9, $s1, 0xFFFF
    /* CD704 800BE754 00064400 */  sll        $t0, $a2, 16
    /* CD708 800BE758 03208825 */  or         $s1, $t9, $zero
    /* CD70C 800BE75C 04A10003 */  bgez       $a1, .L800BE76C_CD71C
    /* CD710 800BE760 00052043 */   sra       $a0, $a1, 1
    /* CD714 800BE764 24A10001 */  addiu      $at, $a1, 0x1
    /* CD718 800BE768 00012043 */  sra        $a0, $at, 1
  .L800BE76C_CD71C:
    /* CD71C 800BE76C 00083403 */  sra        $a2, $t0, 16
    /* CD720 800BE770 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD724 800BE774 24070040 */   addiu     $a3, $zero, 0x40
    /* CD728 800BE778 92460000 */  lbu        $a2, 0x0($s2)
    /* CD72C 800BE77C 93A50055 */  lbu        $a1, 0x55($sp)
    /* CD730 800BE780 00025180 */  sll        $t2, $v0, 6
    /* CD734 800BE784 022A8821 */  addu       $s1, $s1, $t2
    /* CD738 800BE788 24C6FFFF */  addiu      $a2, $a2, -0x1
    /* CD73C 800BE78C 322BFFFF */  andi       $t3, $s1, 0xFFFF
    /* CD740 800BE790 00066400 */  sll        $t4, $a2, 16
    /* CD744 800BE794 01608825 */  or         $s1, $t3, $zero
    /* CD748 800BE798 04A10003 */  bgez       $a1, .L800BE7A8_CD758
    /* CD74C 800BE79C 00052043 */   sra       $a0, $a1, 1
    /* CD750 800BE7A0 24A10001 */  addiu      $at, $a1, 0x1
    /* CD754 800BE7A4 00012043 */  sra        $a0, $at, 1
  .L800BE7A8_CD758:
    /* CD758 800BE7A8 000C3403 */  sra        $a2, $t4, 16
    /* CD75C 800BE7AC 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD760 800BE7B0 24070040 */   addiu     $a3, $zero, 0x40
    /* CD764 800BE7B4 00027040 */  sll        $t6, $v0, 1
    /* CD768 800BE7B8 022E8821 */  addu       $s1, $s1, $t6
    /* CD76C 800BE7BC 322FFFFF */  andi       $t7, $s1, 0xFFFF
    /* CD770 800BE7C0 3C04802D */  lui        $a0, %hi(D_802D48CF)
    /* CD774 800BE7C4 01E08825 */  or         $s1, $t7, $zero
    /* CD778 800BE7C8 908448CF */  lbu        $a0, %lo(D_802D48CF)($a0)
    /* CD77C 800BE7CC 02602825 */  or         $a1, $s3, $zero
    /* CD780 800BE7D0 02803025 */  or         $a2, $s4, $zero
    /* CD784 800BE7D4 0C00128E */  jal        func_80004A38_5638
    /* CD788 800BE7D8 02A03825 */   or        $a3, $s5, $zero
    /* CD78C 800BE7DC 92460000 */  lbu        $a2, 0x0($s2)
    /* CD790 800BE7E0 93A50057 */  lbu        $a1, 0x57($sp)
    /* CD794 800BE7E4 24070040 */  addiu      $a3, $zero, 0x40
    /* CD798 800BE7E8 24C6FFFF */  addiu      $a2, $a2, -0x1
    /* CD79C 800BE7EC 0006C400 */  sll        $t8, $a2, 16
    /* CD7A0 800BE7F0 04A10003 */  bgez       $a1, .L800BE800_CD7B0
    /* CD7A4 800BE7F4 00052043 */   sra       $a0, $a1, 1
    /* CD7A8 800BE7F8 24A10001 */  addiu      $at, $a1, 0x1
    /* CD7AC 800BE7FC 00012043 */  sra        $a0, $at, 1
  .L800BE800_CD7B0:
    /* CD7B0 800BE800 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD7B4 800BE804 00183403 */   sra       $a2, $t8, 16
    /* CD7B8 800BE808 92460000 */  lbu        $a2, 0x0($s2)
    /* CD7BC 800BE80C 93A50056 */  lbu        $a1, 0x56($sp)
    /* CD7C0 800BE810 000282C0 */  sll        $s0, $v0, 11
    /* CD7C4 800BE814 24C6FFFF */  addiu      $a2, $a2, -0x1
    /* CD7C8 800BE818 3208FFFF */  andi       $t0, $s0, 0xFFFF
    /* CD7CC 800BE81C 00064C00 */  sll        $t1, $a2, 16
    /* CD7D0 800BE820 01008025 */  or         $s0, $t0, $zero
    /* CD7D4 800BE824 04A10003 */  bgez       $a1, .L800BE834_CD7E4
    /* CD7D8 800BE828 00052043 */   sra       $a0, $a1, 1
    /* CD7DC 800BE82C 24A10001 */  addiu      $at, $a1, 0x1
    /* CD7E0 800BE830 00012043 */  sra        $a0, $at, 1
  .L800BE834_CD7E4:
    /* CD7E4 800BE834 00093403 */  sra        $a2, $t1, 16
    /* CD7E8 800BE838 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD7EC 800BE83C 24070040 */   addiu     $a3, $zero, 0x40
    /* CD7F0 800BE840 92460000 */  lbu        $a2, 0x0($s2)
    /* CD7F4 800BE844 93A50055 */  lbu        $a1, 0x55($sp)
    /* CD7F8 800BE848 00025980 */  sll        $t3, $v0, 6
    /* CD7FC 800BE84C 020B8021 */  addu       $s0, $s0, $t3
    /* CD800 800BE850 24C6FFFF */  addiu      $a2, $a2, -0x1
    /* CD804 800BE854 320CFFFF */  andi       $t4, $s0, 0xFFFF
    /* CD808 800BE858 00066C00 */  sll        $t5, $a2, 16
    /* CD80C 800BE85C 01808025 */  or         $s0, $t4, $zero
    /* CD810 800BE860 04A10003 */  bgez       $a1, .L800BE870_CD820
    /* CD814 800BE864 00052043 */   sra       $a0, $a1, 1
    /* CD818 800BE868 24A10001 */  addiu      $at, $a1, 0x1
    /* CD81C 800BE86C 00012043 */  sra        $a0, $at, 1
  .L800BE870_CD820:
    /* CD820 800BE870 000D3403 */  sra        $a2, $t5, 16
    /* CD824 800BE874 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD828 800BE878 24070040 */   addiu     $a3, $zero, 0x40
    /* CD82C 800BE87C 00027840 */  sll        $t7, $v0, 1
    /* CD830 800BE880 020FC021 */  addu       $t8, $s0, $t7
    /* CD834 800BE884 3305FFFF */  andi       $a1, $t8, 0xFFFF
    /* CD838 800BE888 0C001275 */  jal        func_800049D4_55D4
    /* CD83C 800BE88C 3224FFFF */   andi      $a0, $s1, 0xFFFF
    /* CD840 800BE890 0C001309 */  jal        leoInitUnit_atten
    /* CD844 800BE894 00000000 */   nop
    /* CD848 800BE898 3C058003 */  lui        $a1, %hi(D_800313E8)
    /* CD84C 800BE89C 90A513E8 */  lbu        $a1, %lo(D_800313E8)($a1)
    /* CD850 800BE8A0 92460000 */  lbu        $a2, 0x0($s2)
    /* CD854 800BE8A4 24070040 */  addiu      $a3, $zero, 0x40
    /* CD858 800BE8A8 04A10003 */  bgez       $a1, .L800BE8B8_CD868
    /* CD85C 800BE8AC 00052043 */   sra       $a0, $a1, 1
    /* CD860 800BE8B0 24A10001 */  addiu      $at, $a1, 0x1
    /* CD864 800BE8B4 00012043 */  sra        $a0, $at, 1
  .L800BE8B8_CD868:
    /* CD868 800BE8B8 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD86C 800BE8BC 00000000 */   nop
    /* CD870 800BE8C0 3C018004 */  lui        $at, %hi(D_80047743)
    /* CD874 800BE8C4 3C058003 */  lui        $a1, %hi(D_800313EC)
    /* CD878 800BE8C8 90A513EC */  lbu        $a1, %lo(D_800313EC)($a1)
    /* CD87C 800BE8CC A0227743 */  sb         $v0, %lo(D_80047743)($at)
    /* CD880 800BE8D0 92460000 */  lbu        $a2, 0x0($s2)
    /* CD884 800BE8D4 04A10003 */  bgez       $a1, .L800BE8E4_CD894
    /* CD888 800BE8D8 00052043 */   sra       $a0, $a1, 1
    /* CD88C 800BE8DC 24A10001 */  addiu      $at, $a1, 0x1
    /* CD890 800BE8E0 00012043 */  sra        $a0, $at, 1
  .L800BE8E4_CD894:
    /* CD894 800BE8E4 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD898 800BE8E8 24070040 */   addiu     $a3, $zero, 0x40
    /* CD89C 800BE8EC 3C018004 */  lui        $at, %hi(D_80047744)
    /* CD8A0 800BE8F0 3C058003 */  lui        $a1, %hi(D_800313F0)
    /* CD8A4 800BE8F4 90A513F0 */  lbu        $a1, %lo(D_800313F0)($a1)
    /* CD8A8 800BE8F8 A0227744 */  sb         $v0, %lo(D_80047744)($at)
    /* CD8AC 800BE8FC 92460000 */  lbu        $a2, 0x0($s2)
    /* CD8B0 800BE900 04A10003 */  bgez       $a1, .L800BE910_CD8C0
    /* CD8B4 800BE904 00052043 */   sra       $a0, $a1, 1
    /* CD8B8 800BE908 24A10001 */  addiu      $at, $a1, 0x1
    /* CD8BC 800BE90C 00012043 */  sra        $a0, $at, 1
  .L800BE910_CD8C0:
    /* CD8C0 800BE910 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD8C4 800BE914 24070040 */   addiu     $a3, $zero, 0x40
    /* CD8C8 800BE918 3C018004 */  lui        $at, %hi(D_80047745)
    /* CD8CC 800BE91C A0227745 */  sb         $v0, %lo(D_80047745)($at)
  .L800BE920_CD8D0:
    /* CD8D0 800BE920 3C028015 */  lui        $v0, %hi(D_80151DD0)
    /* CD8D4 800BE924 90421DD0 */  lbu        $v0, %lo(D_80151DD0)($v0)
    /* CD8D8 800BE928 3C128014 */  lui        $s2, %hi(D_8013D9AC)
    /* CD8DC 800BE92C 3C16802D */  lui        $s6, %hi(D_802D4AD0)
    /* CD8E0 800BE930 24010003 */  addiu      $at, $zero, 0x3
    /* CD8E4 800BE934 26D64AD0 */  addiu      $s6, $s6, %lo(D_802D4AD0)
    /* CD8E8 800BE938 2652D9AC */  addiu      $s2, $s2, %lo(D_8013D9AC)
    /* CD8EC 800BE93C 27B30057 */  addiu      $s3, $sp, 0x57
    /* CD8F0 800BE940 27B40056 */  addiu      $s4, $sp, 0x56
    /* CD8F4 800BE944 10410003 */  beq        $v0, $at, .L800BE954_CD904
    /* CD8F8 800BE948 27B50055 */   addiu     $s5, $sp, 0x55
    /* CD8FC 800BE94C 24010004 */  addiu      $at, $zero, 0x4
    /* CD900 800BE950 144100D9 */  bne        $v0, $at, .L800BECB8_CDC68
  .L800BE954_CD904:
    /* CD904 800BE954 3C048015 */   lui       $a0, %hi(D_8014F89C)
    /* CD908 800BE958 3C058015 */  lui        $a1, %hi(D_8014F89D)
    /* CD90C 800BE95C 3C068020 */  lui        $a2, %hi(D_801FEA30)
    /* CD910 800BE960 24C6EA30 */  addiu      $a2, $a2, %lo(D_801FEA30)
    /* CD914 800BE964 90A5F89D */  lbu        $a1, %lo(D_8014F89D)($a1)
    /* CD918 800BE968 9084F89C */  lbu        $a0, %lo(D_8014F89C)($a0)
    /* CD91C 800BE96C 0C02D014 */  jal        func_800B4050_C3000
    /* CD920 800BE970 00003825 */   or        $a3, $zero, $zero
    /* CD924 800BE974 92590000 */  lbu        $t9, 0x0($s2)
    /* CD928 800BE978 00008825 */  or         $s1, $zero, $zero
    /* CD92C 800BE97C 132000CE */  beqz       $t9, .L800BECB8_CDC68
  .L800BE980_CD930:
    /* CD930 800BE980 322400FF */   andi      $a0, $s1, 0xFF
    /* CD934 800BE984 02602825 */  or         $a1, $s3, $zero
    /* CD938 800BE988 02803025 */  or         $a2, $s4, $zero
    /* CD93C 800BE98C 0C00128E */  jal        func_80004A38_5638
    /* CD940 800BE990 02A03825 */   or        $a3, $s5, $zero
    /* CD944 800BE994 93A50057 */  lbu        $a1, 0x57($sp)
    /* CD948 800BE998 00002025 */  or         $a0, $zero, $zero
    /* CD94C 800BE99C 92460000 */  lbu        $a2, 0x0($s2)
    /* CD950 800BE9A0 04A10003 */  bgez       $a1, .L800BE9B0_CD960
    /* CD954 800BE9A4 00054043 */   sra       $t0, $a1, 1
    /* CD958 800BE9A8 24A10001 */  addiu      $at, $a1, 0x1
    /* CD95C 800BE9AC 00014043 */  sra        $t0, $at, 1
  .L800BE9B0_CD960:
    /* CD960 800BE9B0 01002825 */  or         $a1, $t0, $zero
    /* CD964 800BE9B4 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD968 800BE9B8 24070096 */   addiu     $a3, $zero, 0x96
    /* CD96C 800BE9BC 93A50056 */  lbu        $a1, 0x56($sp)
    /* CD970 800BE9C0 00114840 */  sll        $t1, $s1, 1
    /* CD974 800BE9C4 02C98021 */  addu       $s0, $s6, $t1
    /* CD978 800BE9C8 000252C0 */  sll        $t2, $v0, 11
    /* CD97C 800BE9CC A60A0000 */  sh         $t2, 0x0($s0)
    /* CD980 800BE9D0 00002025 */  or         $a0, $zero, $zero
    /* CD984 800BE9D4 04A10003 */  bgez       $a1, .L800BE9E4_CD994
    /* CD988 800BE9D8 00055843 */   sra       $t3, $a1, 1
    /* CD98C 800BE9DC 24A10001 */  addiu      $at, $a1, 0x1
    /* CD990 800BE9E0 00015843 */  sra        $t3, $at, 1
  .L800BE9E4_CD994:
    /* CD994 800BE9E4 01602825 */  or         $a1, $t3, $zero
    /* CD998 800BE9E8 92460000 */  lbu        $a2, 0x0($s2)
    /* CD99C 800BE9EC 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD9A0 800BE9F0 24070096 */   addiu     $a3, $zero, 0x96
    /* CD9A4 800BE9F4 960C0000 */  lhu        $t4, 0x0($s0)
    /* CD9A8 800BE9F8 93A50055 */  lbu        $a1, 0x55($sp)
    /* CD9AC 800BE9FC 00026980 */  sll        $t5, $v0, 6
    /* CD9B0 800BEA00 018D7021 */  addu       $t6, $t4, $t5
    /* CD9B4 800BEA04 A60E0000 */  sh         $t6, 0x0($s0)
    /* CD9B8 800BEA08 00002025 */  or         $a0, $zero, $zero
    /* CD9BC 800BEA0C 04A10003 */  bgez       $a1, .L800BEA1C_CD9CC
    /* CD9C0 800BEA10 00057843 */   sra       $t7, $a1, 1
    /* CD9C4 800BEA14 24A10001 */  addiu      $at, $a1, 0x1
    /* CD9C8 800BEA18 00017843 */  sra        $t7, $at, 1
  .L800BEA1C_CD9CC:
    /* CD9CC 800BEA1C 01E02825 */  or         $a1, $t7, $zero
    /* CD9D0 800BEA20 92460000 */  lbu        $a2, 0x0($s2)
    /* CD9D4 800BEA24 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CD9D8 800BEA28 24070096 */   addiu     $a3, $zero, 0x96
    /* CD9DC 800BEA2C 96180000 */  lhu        $t8, 0x0($s0)
    /* CD9E0 800BEA30 26310001 */  addiu      $s1, $s1, 0x1
    /* CD9E4 800BEA34 00114C00 */  sll        $t1, $s1, 16
    /* CD9E8 800BEA38 00098C03 */  sra        $s1, $t1, 16
    /* CD9EC 800BEA3C 0002C840 */  sll        $t9, $v0, 1
    /* CD9F0 800BEA40 2A210100 */  slti       $at, $s1, 0x100
    /* CD9F4 800BEA44 03194021 */  addu       $t0, $t8, $t9
    /* CD9F8 800BEA48 1420FFCD */  bnez       $at, .L800BE980_CD930
    /* CD9FC 800BEA4C A6080000 */   sh        $t0, 0x0($s0)
    /* CDA00 800BEA50 3C04802D */  lui        $a0, %hi(D_802CA8D0)
    /* CDA04 800BEA54 9084A8D0 */  lbu        $a0, %lo(D_802CA8D0)($a0)
    /* CDA08 800BEA58 02602825 */  or         $a1, $s3, $zero
    /* CDA0C 800BEA5C 02803025 */  or         $a2, $s4, $zero
    /* CDA10 800BEA60 0C00128E */  jal        func_80004A38_5638
    /* CDA14 800BEA64 02A03825 */   or        $a3, $s5, $zero
    /* CDA18 800BEA68 92460000 */  lbu        $a2, 0x0($s2)
    /* CDA1C 800BEA6C 93A50057 */  lbu        $a1, 0x57($sp)
    /* CDA20 800BEA70 00002025 */  or         $a0, $zero, $zero
    /* CDA24 800BEA74 24C6FFFF */  addiu      $a2, $a2, -0x1
    /* CDA28 800BEA78 00066400 */  sll        $t4, $a2, 16
    /* CDA2C 800BEA7C 04A10003 */  bgez       $a1, .L800BEA8C_CDA3C
    /* CDA30 800BEA80 00055843 */   sra       $t3, $a1, 1
    /* CDA34 800BEA84 24A10001 */  addiu      $at, $a1, 0x1
    /* CDA38 800BEA88 00015843 */  sra        $t3, $at, 1
  .L800BEA8C_CDA3C:
    /* CDA3C 800BEA8C 01602825 */  or         $a1, $t3, $zero
    /* CDA40 800BEA90 000C3403 */  sra        $a2, $t4, 16
    /* CDA44 800BEA94 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CDA48 800BEA98 24070096 */   addiu     $a3, $zero, 0x96
    /* CDA4C 800BEA9C 92460000 */  lbu        $a2, 0x0($s2)
    /* CDA50 800BEAA0 93A50056 */  lbu        $a1, 0x56($sp)
    /* CDA54 800BEAA4 00028AC0 */  sll        $s1, $v0, 11
    /* CDA58 800BEAA8 24C6FFFF */  addiu      $a2, $a2, -0x1
    /* CDA5C 800BEAAC 322EFFFF */  andi       $t6, $s1, 0xFFFF
    /* CDA60 800BEAB0 0006C400 */  sll        $t8, $a2, 16
    /* CDA64 800BEAB4 01C08825 */  or         $s1, $t6, $zero
    /* CDA68 800BEAB8 00183403 */  sra        $a2, $t8, 16
    /* CDA6C 800BEABC 00002025 */  or         $a0, $zero, $zero
    /* CDA70 800BEAC0 04A10003 */  bgez       $a1, .L800BEAD0_CDA80
    /* CDA74 800BEAC4 00057843 */   sra       $t7, $a1, 1
    /* CDA78 800BEAC8 24A10001 */  addiu      $at, $a1, 0x1
    /* CDA7C 800BEACC 00017843 */  sra        $t7, $at, 1
  .L800BEAD0_CDA80:
    /* CDA80 800BEAD0 01E02825 */  or         $a1, $t7, $zero
    /* CDA84 800BEAD4 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CDA88 800BEAD8 24070096 */   addiu     $a3, $zero, 0x96
    /* CDA8C 800BEADC 92460000 */  lbu        $a2, 0x0($s2)
    /* CDA90 800BEAE0 93A50055 */  lbu        $a1, 0x55($sp)
    /* CDA94 800BEAE4 00024180 */  sll        $t0, $v0, 6
    /* CDA98 800BEAE8 02288821 */  addu       $s1, $s1, $t0
    /* CDA9C 800BEAEC 24C6FFFF */  addiu      $a2, $a2, -0x1
    /* CDAA0 800BEAF0 3229FFFF */  andi       $t1, $s1, 0xFFFF
    /* CDAA4 800BEAF4 00065C00 */  sll        $t3, $a2, 16
    /* CDAA8 800BEAF8 01208825 */  or         $s1, $t1, $zero
    /* CDAAC 800BEAFC 000B3403 */  sra        $a2, $t3, 16
    /* CDAB0 800BEB00 00002025 */  or         $a0, $zero, $zero
    /* CDAB4 800BEB04 04A10003 */  bgez       $a1, .L800BEB14_CDAC4
    /* CDAB8 800BEB08 00055043 */   sra       $t2, $a1, 1
    /* CDABC 800BEB0C 24A10001 */  addiu      $at, $a1, 0x1
    /* CDAC0 800BEB10 00015043 */  sra        $t2, $at, 1
  .L800BEB14_CDAC4:
    /* CDAC4 800BEB14 01402825 */  or         $a1, $t2, $zero
    /* CDAC8 800BEB18 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CDACC 800BEB1C 24070096 */   addiu     $a3, $zero, 0x96
    /* CDAD0 800BEB20 00026840 */  sll        $t5, $v0, 1
    /* CDAD4 800BEB24 022D8821 */  addu       $s1, $s1, $t5
    /* CDAD8 800BEB28 322EFFFF */  andi       $t6, $s1, 0xFFFF
    /* CDADC 800BEB2C 3C04802D */  lui        $a0, %hi(D_802D48CF)
    /* CDAE0 800BEB30 01C08825 */  or         $s1, $t6, $zero
    /* CDAE4 800BEB34 908448CF */  lbu        $a0, %lo(D_802D48CF)($a0)
    /* CDAE8 800BEB38 02602825 */  or         $a1, $s3, $zero
    /* CDAEC 800BEB3C 02803025 */  or         $a2, $s4, $zero
    /* CDAF0 800BEB40 0C00128E */  jal        func_80004A38_5638
    /* CDAF4 800BEB44 02A03825 */   or        $a3, $s5, $zero
    /* CDAF8 800BEB48 92460000 */  lbu        $a2, 0x0($s2)
    /* CDAFC 800BEB4C 93A50057 */  lbu        $a1, 0x57($sp)
    /* CDB00 800BEB50 00002025 */  or         $a0, $zero, $zero
    /* CDB04 800BEB54 24C6FFFF */  addiu      $a2, $a2, -0x1
    /* CDB08 800BEB58 0006C400 */  sll        $t8, $a2, 16
    /* CDB0C 800BEB5C 04A10003 */  bgez       $a1, .L800BEB6C_CDB1C
    /* CDB10 800BEB60 00057843 */   sra       $t7, $a1, 1
    /* CDB14 800BEB64 24A10001 */  addiu      $at, $a1, 0x1
    /* CDB18 800BEB68 00017843 */  sra        $t7, $at, 1
  .L800BEB6C_CDB1C:
    /* CDB1C 800BEB6C 01E02825 */  or         $a1, $t7, $zero
    /* CDB20 800BEB70 00183403 */  sra        $a2, $t8, 16
    /* CDB24 800BEB74 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CDB28 800BEB78 24070096 */   addiu     $a3, $zero, 0x96
    /* CDB2C 800BEB7C 92460000 */  lbu        $a2, 0x0($s2)
    /* CDB30 800BEB80 93A50056 */  lbu        $a1, 0x56($sp)
    /* CDB34 800BEB84 000282C0 */  sll        $s0, $v0, 11
    /* CDB38 800BEB88 24C6FFFF */  addiu      $a2, $a2, -0x1
    /* CDB3C 800BEB8C 3208FFFF */  andi       $t0, $s0, 0xFFFF
    /* CDB40 800BEB90 00065400 */  sll        $t2, $a2, 16
    /* CDB44 800BEB94 01008025 */  or         $s0, $t0, $zero
    /* CDB48 800BEB98 000A3403 */  sra        $a2, $t2, 16
    /* CDB4C 800BEB9C 00002025 */  or         $a0, $zero, $zero
    /* CDB50 800BEBA0 04A10003 */  bgez       $a1, .L800BEBB0_CDB60
    /* CDB54 800BEBA4 00054843 */   sra       $t1, $a1, 1
    /* CDB58 800BEBA8 24A10001 */  addiu      $at, $a1, 0x1
    /* CDB5C 800BEBAC 00014843 */  sra        $t1, $at, 1
  .L800BEBB0_CDB60:
    /* CDB60 800BEBB0 01202825 */  or         $a1, $t1, $zero
    /* CDB64 800BEBB4 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CDB68 800BEBB8 24070096 */   addiu     $a3, $zero, 0x96
    /* CDB6C 800BEBBC 92460000 */  lbu        $a2, 0x0($s2)
    /* CDB70 800BEBC0 93A50055 */  lbu        $a1, 0x55($sp)
    /* CDB74 800BEBC4 00026180 */  sll        $t4, $v0, 6
    /* CDB78 800BEBC8 020C8021 */  addu       $s0, $s0, $t4
    /* CDB7C 800BEBCC 24C6FFFF */  addiu      $a2, $a2, -0x1
    /* CDB80 800BEBD0 320DFFFF */  andi       $t5, $s0, 0xFFFF
    /* CDB84 800BEBD4 00067C00 */  sll        $t7, $a2, 16
    /* CDB88 800BEBD8 01A08025 */  or         $s0, $t5, $zero
    /* CDB8C 800BEBDC 000F3403 */  sra        $a2, $t7, 16
    /* CDB90 800BEBE0 00002025 */  or         $a0, $zero, $zero
    /* CDB94 800BEBE4 04A10003 */  bgez       $a1, .L800BEBF4_CDBA4
    /* CDB98 800BEBE8 00057043 */   sra       $t6, $a1, 1
    /* CDB9C 800BEBEC 24A10001 */  addiu      $at, $a1, 0x1
    /* CDBA0 800BEBF0 00017043 */  sra        $t6, $at, 1
  .L800BEBF4_CDBA4:
    /* CDBA4 800BEBF4 01C02825 */  or         $a1, $t6, $zero
    /* CDBA8 800BEBF8 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CDBAC 800BEBFC 24070096 */   addiu     $a3, $zero, 0x96
    /* CDBB0 800BEC00 0002C840 */  sll        $t9, $v0, 1
    /* CDBB4 800BEC04 02194021 */  addu       $t0, $s0, $t9
    /* CDBB8 800BEC08 3105FFFF */  andi       $a1, $t0, 0xFFFF
    /* CDBBC 800BEC0C 0C001275 */  jal        func_800049D4_55D4
    /* CDBC0 800BEC10 3224FFFF */   andi      $a0, $s1, 0xFFFF
    /* CDBC4 800BEC14 0C001309 */  jal        leoInitUnit_atten
    /* CDBC8 800BEC18 00000000 */   nop
    /* CDBCC 800BEC1C 3C058003 */  lui        $a1, %hi(D_800313E8)
    /* CDBD0 800BEC20 90A513E8 */  lbu        $a1, %lo(D_800313E8)($a1)
    /* CDBD4 800BEC24 00002025 */  or         $a0, $zero, $zero
    /* CDBD8 800BEC28 92460000 */  lbu        $a2, 0x0($s2)
    /* CDBDC 800BEC2C 04A10003 */  bgez       $a1, .L800BEC3C_CDBEC
    /* CDBE0 800BEC30 00054843 */   sra       $t1, $a1, 1
    /* CDBE4 800BEC34 24A10001 */  addiu      $at, $a1, 0x1
    /* CDBE8 800BEC38 00014843 */  sra        $t1, $at, 1
  .L800BEC3C_CDBEC:
    /* CDBEC 800BEC3C 01202825 */  or         $a1, $t1, $zero
    /* CDBF0 800BEC40 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CDBF4 800BEC44 24070096 */   addiu     $a3, $zero, 0x96
    /* CDBF8 800BEC48 3C018004 */  lui        $at, %hi(D_80047743)
    /* CDBFC 800BEC4C 3C058003 */  lui        $a1, %hi(D_800313EC)
    /* CDC00 800BEC50 90A513EC */  lbu        $a1, %lo(D_800313EC)($a1)
    /* CDC04 800BEC54 A0227743 */  sb         $v0, %lo(D_80047743)($at)
    /* CDC08 800BEC58 92460000 */  lbu        $a2, 0x0($s2)
    /* CDC0C 800BEC5C 00002025 */  or         $a0, $zero, $zero
    /* CDC10 800BEC60 04A10003 */  bgez       $a1, .L800BEC70_CDC20
    /* CDC14 800BEC64 00055043 */   sra       $t2, $a1, 1
    /* CDC18 800BEC68 24A10001 */  addiu      $at, $a1, 0x1
    /* CDC1C 800BEC6C 00015043 */  sra        $t2, $at, 1
  .L800BEC70_CDC20:
    /* CDC20 800BEC70 01402825 */  or         $a1, $t2, $zero
    /* CDC24 800BEC74 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CDC28 800BEC78 24070096 */   addiu     $a3, $zero, 0x96
    /* CDC2C 800BEC7C 3C018004 */  lui        $at, %hi(D_80047744)
    /* CDC30 800BEC80 3C058003 */  lui        $a1, %hi(D_800313F0)
    /* CDC34 800BEC84 90A513F0 */  lbu        $a1, %lo(D_800313F0)($a1)
    /* CDC38 800BEC88 A0227744 */  sb         $v0, %lo(D_80047744)($at)
    /* CDC3C 800BEC8C 92460000 */  lbu        $a2, 0x0($s2)
    /* CDC40 800BEC90 00002025 */  or         $a0, $zero, $zero
    /* CDC44 800BEC94 04A10003 */  bgez       $a1, .L800BECA4_CDC54
    /* CDC48 800BEC98 00055843 */   sra       $t3, $a1, 1
    /* CDC4C 800BEC9C 24A10001 */  addiu      $at, $a1, 0x1
    /* CDC50 800BECA0 00015843 */  sra        $t3, $at, 1
  .L800BECA4_CDC54:
    /* CDC54 800BECA4 01602825 */  or         $a1, $t3, $zero
    /* CDC58 800BECA8 0C02C284 */  jal        func_800B0A10_BF9C0
    /* CDC5C 800BECAC 24070096 */   addiu     $a3, $zero, 0x96
    /* CDC60 800BECB0 3C018004 */  lui        $at, %hi(D_80047745)
    /* CDC64 800BECB4 A0227745 */  sb         $v0, %lo(D_80047745)($at)
  .L800BECB8_CDC68:
    /* CDC68 800BECB8 8FBF0034 */  lw         $ra, 0x34($sp)
    /* CDC6C 800BECBC 8FB00018 */  lw         $s0, 0x18($sp)
    /* CDC70 800BECC0 8FB1001C */  lw         $s1, 0x1C($sp)
    /* CDC74 800BECC4 8FB20020 */  lw         $s2, 0x20($sp)
    /* CDC78 800BECC8 8FB30024 */  lw         $s3, 0x24($sp)
    /* CDC7C 800BECCC 8FB40028 */  lw         $s4, 0x28($sp)
    /* CDC80 800BECD0 8FB5002C */  lw         $s5, 0x2C($sp)
    /* CDC84 800BECD4 8FB60030 */  lw         $s6, 0x30($sp)
    /* CDC88 800BECD8 03E00008 */  jr         $ra
    /* CDC8C 800BECDC 27BD0058 */   addiu     $sp, $sp, 0x58
endlabel func_800BE5C0_CD570
