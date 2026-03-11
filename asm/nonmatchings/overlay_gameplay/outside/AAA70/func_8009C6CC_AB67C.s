nonmatching func_8009C6CC_AB67C, 0x1234

glabel func_8009C6CC_AB67C
    /* AB67C 8009C6CC 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* AB680 8009C6D0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* AB684 8009C6D4 3C1F8006 */  lui        $ra, %hi(D_8005BB34)
    /* AB688 8009C6D8 27FFBB34 */  addiu      $ra, $ra, %lo(D_8005BB34)
    /* AB68C 8009C6DC 8FEE0000 */  lw         $t6, 0x0($ra)
    /* AB690 8009C6E0 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* AB694 8009C6E4 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* AB698 8009C6E8 25CF0010 */  addiu      $t7, $t6, 0x10
    /* AB69C 8009C6EC AFEF0000 */  sw         $t7, 0x0($ra)
    /* AB6A0 8009C6F0 25F90010 */  addiu      $t9, $t7, 0x10
    /* AB6A4 8009C6F4 8D020000 */  lw         $v0, 0x0($t0)
    /* AB6A8 8009C6F8 AFF90000 */  sw         $t9, 0x0($ra)
    /* AB6AC 8009C6FC 272F0010 */  addiu      $t7, $t9, 0x10
    /* AB6B0 8009C700 AFEF0000 */  sw         $t7, 0x0($ra)
    /* AB6B4 8009C704 25F90010 */  addiu      $t9, $t7, 0x10
    /* AB6B8 8009C708 244E0008 */  addiu      $t6, $v0, 0x8
    /* AB6BC 8009C70C AFA40040 */  sw         $a0, 0x40($sp)
    /* AB6C0 8009C710 AFA50044 */  sw         $a1, 0x44($sp)
    /* AB6C4 8009C714 AFA60048 */  sw         $a2, 0x48($sp)
    /* AB6C8 8009C718 AFA7004C */  sw         $a3, 0x4C($sp)
    /* AB6CC 8009C71C AFF90000 */  sw         $t9, 0x0($ra)
    /* AB6D0 8009C720 AFA00028 */  sw         $zero, 0x28($sp)
    /* AB6D4 8009C724 AD0E0000 */  sw         $t6, 0x0($t0)
    /* AB6D8 8009C728 3C183C50 */  lui        $t8, (0x3C5078C8 >> 16)
    /* AB6DC 8009C72C 371878C8 */  ori        $t8, $t8, (0x3C5078C8 & 0xFFFF)
    /* AB6E0 8009C730 3C0FFA00 */  lui        $t7, (0xFA000000 >> 16)
    /* AB6E4 8009C734 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AB6E8 8009C738 AC580004 */  sw         $t8, 0x4($v0)
    /* AB6EC 8009C73C 8FB90054 */  lw         $t9, 0x54($sp)
    /* AB6F0 8009C740 24010002 */  addiu      $at, $zero, 0x2
    /* AB6F4 8009C744 87AE0062 */  lh         $t6, 0x62($sp)
    /* AB6F8 8009C748 17210004 */  bne        $t9, $at, .L8009C75C_AB70C
    /* AB6FC 8009C74C 29C1006F */   slti      $at, $t6, 0x6F
    /* AB700 8009C750 14200002 */  bnez       $at, .L8009C75C_AB70C
    /* AB704 8009C754 240F006E */   addiu     $t7, $zero, 0x6E
    /* AB708 8009C758 A7AF0062 */  sh         $t7, 0x62($sp)
  .L8009C75C_AB70C:
    /* AB70C 8009C75C 0C001126 */  jal        func_80004498_5098
    /* AB710 8009C760 C7AC0048 */   lwc1      $f12, 0x48($sp)
    /* AB714 8009C764 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* AB718 8009C768 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* AB71C 8009C76C 14400003 */  bnez       $v0, .L8009C77C_AB72C
    /* AB720 8009C770 C7B00048 */   lwc1      $f16, 0x48($sp)
    /* AB724 8009C774 44808000 */  mtc1       $zero, $f16
    /* AB728 8009C778 00000000 */  nop
  .L8009C77C_AB72C:
    /* AB72C 8009C77C 8D020000 */  lw         $v0, 0x0($t0)
    /* AB730 8009C780 3C19B900 */  lui        $t9, (0xB900031D >> 16)
    /* AB734 8009C784 3C0E0050 */  lui        $t6, (0x504240 >> 16)
    /* AB738 8009C788 24580008 */  addiu      $t8, $v0, 0x8
    /* AB73C 8009C78C AD180000 */  sw         $t8, 0x0($t0)
    /* AB740 8009C790 35CE4240 */  ori        $t6, $t6, (0x504240 & 0xFFFF)
    /* AB744 8009C794 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
    /* AB748 8009C798 AC590000 */  sw         $t9, 0x0($v0)
    /* AB74C 8009C79C AC4E0004 */  sw         $t6, 0x4($v0)
    /* AB750 8009C7A0 8D020000 */  lw         $v0, 0x0($t0)
    /* AB754 8009C7A4 3C18BA00 */  lui        $t8, (0xBA000C02 >> 16)
    /* AB758 8009C7A8 37180C02 */  ori        $t8, $t8, (0xBA000C02 & 0xFFFF)
    /* AB75C 8009C7AC 244F0008 */  addiu      $t7, $v0, 0x8
    /* AB760 8009C7B0 AD0F0000 */  sw         $t7, 0x0($t0)
    /* AB764 8009C7B4 24192000 */  addiu      $t9, $zero, 0x2000
    /* AB768 8009C7B8 AC590004 */  sw         $t9, 0x4($v0)
    /* AB76C 8009C7BC AC580000 */  sw         $t8, 0x0($v0)
    /* AB770 8009C7C0 8D020000 */  lw         $v0, 0x0($t0)
    /* AB774 8009C7C4 3C188000 */  lui        $t8, (0x80008000 >> 16)
    /* AB778 8009C7C8 37188000 */  ori        $t8, $t8, (0x80008000 & 0xFFFF)
    /* AB77C 8009C7CC 244E0008 */  addiu      $t6, $v0, 0x8
    /* AB780 8009C7D0 AD0E0000 */  sw         $t6, 0x0($t0)
    /* AB784 8009C7D4 3C0FBB00 */  lui        $t7, (0xBB000000 >> 16)
    /* AB788 8009C7D8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AB78C 8009C7DC AC580004 */  sw         $t8, 0x4($v0)
    /* AB790 8009C7E0 8D020000 */  lw         $v0, 0x0($t0)
    /* AB794 8009C7E4 3C0FFFFE */  lui        $t7, (0xFFFE793C >> 16)
    /* AB798 8009C7E8 3C0EFCFF */  lui        $t6, (0xFCFFFFFF >> 16)
    /* AB79C 8009C7EC 24590008 */  addiu      $t9, $v0, 0x8
    /* AB7A0 8009C7F0 AD190000 */  sw         $t9, 0x0($t0)
    /* AB7A4 8009C7F4 35CEFFFF */  ori        $t6, $t6, (0xFCFFFFFF & 0xFFFF)
    /* AB7A8 8009C7F8 35EF793C */  ori        $t7, $t7, (0xFFFE793C & 0xFFFF)
    /* AB7AC 8009C7FC AC4F0004 */  sw         $t7, 0x4($v0)
    /* AB7B0 8009C800 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AB7B4 8009C804 8D020000 */  lw         $v0, 0x0($t0)
    /* AB7B8 8009C808 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* AB7BC 8009C80C 3C068005 */  lui        $a2, %hi(D_80052B50)
    /* AB7C0 8009C810 24580008 */  addiu      $t8, $v0, 0x8
    /* AB7C4 8009C814 AD180000 */  sw         $t8, 0x0($t0)
    /* AB7C8 8009C818 AC400004 */  sw         $zero, 0x4($v0)
    /* AB7CC 8009C81C AC590000 */  sw         $t9, 0x0($v0)
    /* AB7D0 8009C820 8FAE004C */  lw         $t6, 0x4C($sp)
    /* AB7D4 8009C824 3C018005 */  lui        $at, %hi(D_80052B40)
    /* AB7D8 8009C828 24020100 */  addiu      $v0, $zero, 0x100
    /* AB7DC 8009C82C 11C00004 */  beqz       $t6, .L8009C840_AB7F0
    /* AB7E0 8009C830 24C62B50 */   addiu     $a2, $a2, %lo(D_80052B50)
    /* AB7E4 8009C834 3C0A8015 */  lui        $t2, %hi(D_8014F1F4)
    /* AB7E8 8009C838 10000003 */  b          .L8009C848_AB7F8
    /* AB7EC 8009C83C 854AF1F4 */   lh        $t2, %lo(D_8014F1F4)($t2)
  .L8009C840_AB7F0:
    /* AB7F0 8009C840 3C0A8015 */  lui        $t2, %hi(D_8014F1FA)
    /* AB7F4 8009C844 854AF1FA */  lh         $t2, %lo(D_8014F1FA)($t2)
  .L8009C848_AB7F8:
    /* AB7F8 8009C848 8FAF0054 */  lw         $t7, 0x54($sp)
    /* AB7FC 8009C84C A4202B40 */  sh         $zero, %lo(D_80052B40)($at)
    /* AB800 8009C850 24010002 */  addiu      $at, $zero, 0x2
    /* AB804 8009C854 15E10005 */  bne        $t7, $at, .L8009C86C_AB81C
    /* AB808 8009C858 3C098006 */   lui       $t1, %hi(D_8005BB38)
    /* AB80C 8009C85C 3C048005 */  lui        $a0, %hi(D_80052B40)
    /* AB810 8009C860 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* AB814 8009C864 10000006 */  b          .L8009C880_AB830
    /* AB818 8009C868 A4800002 */   sh        $zero, 0x2($a0)
  .L8009C86C_AB81C:
    /* AB81C 8009C86C 87B80046 */  lh         $t8, 0x46($sp)
    /* AB820 8009C870 3C048005 */  lui        $a0, %hi(D_80052B40)
    /* AB824 8009C874 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* AB828 8009C878 030AC821 */  addu       $t9, $t8, $t2
    /* AB82C 8009C87C A4990002 */  sh         $t9, 0x2($a0)
  .L8009C880_AB830:
    /* AB830 8009C880 2529BB38 */  addiu      $t1, $t1, %lo(D_8005BB38)
    /* AB834 8009C884 A4800004 */  sh         $zero, 0x4($a0)
    /* AB838 8009C888 A4C20000 */  sh         $v0, 0x0($a2)
    /* AB83C 8009C88C A4C20002 */  sh         $v0, 0x2($a2)
    /* AB840 8009C890 A4C00004 */  sh         $zero, 0x4($a2)
    /* AB844 8009C894 8D270000 */  lw         $a3, 0x0($t1)
    /* AB848 8009C898 00002825 */  or         $a1, $zero, $zero
    /* AB84C 8009C89C AFAA0020 */  sw         $t2, 0x20($sp)
    /* AB850 8009C8A0 0C000E74 */  jal        func_800039D0_45D0
    /* AB854 8009C8A4 E7B00048 */   swc1      $f16, 0x48($sp)
    /* AB858 8009C8A8 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* AB85C 8009C8AC 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* AB860 8009C8B0 8D020000 */  lw         $v0, 0x0($t0)
    /* AB864 8009C8B4 3C0F0106 */  lui        $t7, (0x1060040 >> 16)
    /* AB868 8009C8B8 3C098006 */  lui        $t1, %hi(D_8005BB38)
    /* AB86C 8009C8BC 244E0008 */  addiu      $t6, $v0, 0x8
    /* AB870 8009C8C0 8FAA0020 */  lw         $t2, 0x20($sp)
    /* AB874 8009C8C4 C7B00048 */  lwc1       $f16, 0x48($sp)
    /* AB878 8009C8C8 AD0E0000 */  sw         $t6, 0x0($t0)
    /* AB87C 8009C8CC 35EF0040 */  ori        $t7, $t7, (0x1060040 & 0xFFFF)
    /* AB880 8009C8D0 2529BB38 */  addiu      $t1, $t1, %lo(D_8005BB38)
    /* AB884 8009C8D4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AB888 8009C8D8 8D380000 */  lw         $t8, 0x0($t1)
    /* AB88C 8009C8DC 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* AB890 8009C8E0 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* AB894 8009C8E4 0301C824 */  and        $t9, $t8, $at
    /* AB898 8009C8E8 AC590004 */  sw         $t9, 0x4($v0)
    /* AB89C 8009C8EC 8D2E0000 */  lw         $t6, 0x0($t1)
    /* AB8A0 8009C8F0 8FB8004C */  lw         $t8, 0x4C($sp)
    /* AB8A4 8009C8F4 25CF0040 */  addiu      $t7, $t6, 0x40
    /* AB8A8 8009C8F8 13000020 */  beqz       $t8, .L8009C97C_AB92C
    /* AB8AC 8009C8FC AD2F0000 */   sw        $t7, 0x0($t1)
    /* AB8B0 8009C900 87A30042 */  lh         $v1, 0x42($sp)
    /* AB8B4 8009C904 87AF0062 */  lh         $t7, 0x62($sp)
    /* AB8B8 8009C908 E7B00048 */  swc1       $f16, 0x48($sp)
    /* AB8BC 8009C90C 2463FFF9 */  addiu      $v1, $v1, -0x7
    /* AB8C0 8009C910 0003CC00 */  sll        $t9, $v1, 16
    /* AB8C4 8009C914 00191C03 */  sra        $v1, $t9, 16
    /* AB8C8 8009C918 87B90046 */  lh         $t9, 0x46($sp)
    /* AB8CC 8009C91C 006F2023 */  subu       $a0, $v1, $t7
    /* AB8D0 8009C920 2484FFFA */  addiu      $a0, $a0, -0x6
    /* AB8D4 8009C924 032A1021 */  addu       $v0, $t9, $t2
    /* AB8D8 8009C928 0004C080 */  sll        $t8, $a0, 2
    /* AB8DC 8009C92C 03002025 */  or         $a0, $t8, $zero
    /* AB8E0 8009C930 2445FFF8 */  addiu      $a1, $v0, -0x8
    /* AB8E4 8009C934 24470006 */  addiu      $a3, $v0, 0x6
    /* AB8E8 8009C938 24660009 */  addiu      $a2, $v1, 0x9
    /* AB8EC 8009C93C 00067880 */  sll        $t7, $a2, 2
    /* AB8F0 8009C940 0007C080 */  sll        $t8, $a3, 2
    /* AB8F4 8009C944 00057080 */  sll        $t6, $a1, 2
    /* AB8F8 8009C948 24190003 */  addiu      $t9, $zero, 0x3
    /* AB8FC 8009C94C AFB90010 */  sw         $t9, 0x10($sp)
    /* AB900 8009C950 01C02825 */  or         $a1, $t6, $zero
    /* AB904 8009C954 03003825 */  or         $a3, $t8, $zero
    /* AB908 8009C958 01E03025 */  or         $a2, $t7, $zero
    /* AB90C 8009C95C 0C0024AE */  jal        func_800092B8_9EB8
    /* AB910 8009C960 A7A30042 */   sh        $v1, 0x42($sp)
    /* AB914 8009C964 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* AB918 8009C968 3C1F8006 */  lui        $ra, %hi(D_8005BB34)
    /* AB91C 8009C96C 27FFBB34 */  addiu      $ra, $ra, %lo(D_8005BB34)
    /* AB920 8009C970 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* AB924 8009C974 1000003E */  b          .L8009CA70_ABA20
    /* AB928 8009C978 C7B00048 */   lwc1      $f16, 0x48($sp)
  .L8009C97C_AB92C:
    /* AB92C 8009C97C 87AE0042 */  lh         $t6, 0x42($sp)
    /* AB930 8009C980 8FB80054 */  lw         $t8, 0x54($sp)
    /* AB934 8009C984 24010002 */  addiu      $at, $zero, 0x2
    /* AB938 8009C988 25CF0007 */  addiu      $t7, $t6, 0x7
    /* AB93C 8009C98C 1701001E */  bne        $t8, $at, .L8009CA08_AB9B8
    /* AB940 8009C990 A7AF0042 */   sh        $t7, 0x42($sp)
    /* AB944 8009C994 87A20046 */  lh         $v0, 0x46($sp)
    /* AB948 8009C998 87B80062 */  lh         $t8, 0x62($sp)
    /* AB94C 8009C99C 000F2400 */  sll        $a0, $t7, 16
    /* AB950 8009C9A0 0004CC03 */  sra        $t9, $a0, 16
    /* AB954 8009C9A4 2724FFEF */  addiu      $a0, $t9, -0x11
    /* AB958 8009C9A8 00047080 */  sll        $t6, $a0, 2
    /* AB95C 8009C9AC 00582823 */  subu       $a1, $v0, $t8
    /* AB960 8009C9B0 24A5FFF2 */  addiu      $a1, $a1, -0xE
    /* AB964 8009C9B4 01C02025 */  or         $a0, $t6, $zero
    /* AB968 8009C9B8 000F3400 */  sll        $a2, $t7, 16
    /* AB96C 8009C9BC 00067403 */  sra        $t6, $a2, 16
    /* AB970 8009C9C0 0005C880 */  sll        $t9, $a1, 2
    /* AB974 8009C9C4 03202825 */  or         $a1, $t9, $zero
    /* AB978 8009C9C8 25C6FFFE */  addiu      $a2, $t6, -0x2
    /* AB97C 8009C9CC 2447FFFB */  addiu      $a3, $v0, -0x5
    /* AB980 8009C9D0 0007C880 */  sll        $t9, $a3, 2
    /* AB984 8009C9D4 0006C080 */  sll        $t8, $a2, 2
    /* AB988 8009C9D8 240F0003 */  addiu      $t7, $zero, 0x3
    /* AB98C 8009C9DC AFAF0010 */  sw         $t7, 0x10($sp)
    /* AB990 8009C9E0 03003025 */  or         $a2, $t8, $zero
    /* AB994 8009C9E4 03203825 */  or         $a3, $t9, $zero
    /* AB998 8009C9E8 0C0024AE */  jal        func_800092B8_9EB8
    /* AB99C 8009C9EC E7B00048 */   swc1      $f16, 0x48($sp)
    /* AB9A0 8009C9F0 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* AB9A4 8009C9F4 3C1F8006 */  lui        $ra, %hi(D_8005BB34)
    /* AB9A8 8009C9F8 27FFBB34 */  addiu      $ra, $ra, %lo(D_8005BB34)
    /* AB9AC 8009C9FC 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* AB9B0 8009CA00 1000001B */  b          .L8009CA70_ABA20
    /* AB9B4 8009CA04 C7B00048 */   lwc1      $f16, 0x48($sp)
  .L8009CA08_AB9B8:
    /* AB9B8 8009CA08 87AE0042 */  lh         $t6, 0x42($sp)
    /* AB9BC 8009CA0C 87B80062 */  lh         $t8, 0x62($sp)
    /* AB9C0 8009CA10 87AF0046 */  lh         $t7, 0x46($sp)
    /* AB9C4 8009CA14 25C60005 */  addiu      $a2, $t6, 0x5
    /* AB9C8 8009CA18 01D82023 */  subu       $a0, $t6, $t8
    /* AB9CC 8009CA1C 01EA1021 */  addu       $v0, $t7, $t2
    /* AB9D0 8009CA20 2445FFF8 */  addiu      $a1, $v0, -0x8
    /* AB9D4 8009CA24 2484FFF2 */  addiu      $a0, $a0, -0xE
    /* AB9D8 8009CA28 0004C880 */  sll        $t9, $a0, 2
    /* AB9DC 8009CA2C 0005C080 */  sll        $t8, $a1, 2
    /* AB9E0 8009CA30 03002825 */  or         $a1, $t8, $zero
    /* AB9E4 8009CA34 03202025 */  or         $a0, $t9, $zero
    /* AB9E8 8009CA38 24470006 */  addiu      $a3, $v0, 0x6
    /* AB9EC 8009CA3C 00077880 */  sll        $t7, $a3, 2
    /* AB9F0 8009CA40 0006C880 */  sll        $t9, $a2, 2
    /* AB9F4 8009CA44 24180003 */  addiu      $t8, $zero, 0x3
    /* AB9F8 8009CA48 AFB80010 */  sw         $t8, 0x10($sp)
    /* AB9FC 8009CA4C 03203025 */  or         $a2, $t9, $zero
    /* ABA00 8009CA50 01E03825 */  or         $a3, $t7, $zero
    /* ABA04 8009CA54 0C0024AE */  jal        func_800092B8_9EB8
    /* ABA08 8009CA58 E7B00048 */   swc1      $f16, 0x48($sp)
    /* ABA0C 8009CA5C 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* ABA10 8009CA60 3C1F8006 */  lui        $ra, %hi(D_8005BB34)
    /* ABA14 8009CA64 27FFBB34 */  addiu      $ra, $ra, %lo(D_8005BB34)
    /* ABA18 8009CA68 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* ABA1C 8009CA6C C7B00048 */  lwc1       $f16, 0x48($sp)
  .L8009CA70_ABA20:
    /* ABA20 8009CA70 8FA40054 */  lw         $a0, 0x54($sp)
    /* ABA24 8009CA74 5080029A */  beql       $a0, $zero, .L8009D4E0_AC490
    /* ABA28 8009CA78 8FB90050 */   lw        $t9, 0x50($sp)
    /* ABA2C 8009CA7C 8FEB0000 */  lw         $t3, 0x0($ra)
    /* ABA30 8009CA80 24010002 */  addiu      $at, $zero, 0x2
    /* ABA34 8009CA84 256E0010 */  addiu      $t6, $t3, 0x10
    /* ABA38 8009CA88 25D90010 */  addiu      $t9, $t6, 0x10
    /* ABA3C 8009CA8C AFEE0000 */  sw         $t6, 0x0($ra)
    /* ABA40 8009CA90 272F0010 */  addiu      $t7, $t9, 0x10
    /* ABA44 8009CA94 AFF90000 */  sw         $t9, 0x0($ra)
    /* ABA48 8009CA98 AFEF0000 */  sw         $t7, 0x0($ra)
    /* ABA4C 8009CA9C 25F80010 */  addiu      $t8, $t7, 0x10
    /* ABA50 8009CAA0 01C04825 */  or         $t1, $t6, $zero
    /* ABA54 8009CAA4 03203825 */  or         $a3, $t9, $zero
    /* ABA58 8009CAA8 AFF80000 */  sw         $t8, 0x0($ra)
    /* ABA5C 8009CAAC 1481008B */  bne        $a0, $at, .L8009CCDC_ABC8C
    /* ABA60 8009CAB0 01E05025 */   or        $t2, $t7, $zero
    /* ABA64 8009CAB4 87AC0042 */  lh         $t4, 0x42($sp)
    /* ABA68 8009CAB8 87AD0046 */  lh         $t5, 0x46($sp)
    /* ABA6C 8009CABC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* ABA70 8009CAC0 2583FFF3 */  addiu      $v1, $t4, -0xD
    /* ABA74 8009CAC4 A5E30000 */  sh         $v1, 0x0($t7)
    /* ABA78 8009CAC8 A5630000 */  sh         $v1, 0x0($t3)
    /* ABA7C 8009CACC 2584FFFB */  addiu      $a0, $t4, -0x5
    /* ABA80 8009CAD0 A7240000 */  sh         $a0, 0x0($t9)
    /* ABA84 8009CAD4 25A5FFF6 */  addiu      $a1, $t5, -0xA
    /* ABA88 8009CAD8 A5C40000 */  sh         $a0, 0x0($t6)
    /* ABA8C 8009CADC A5C50002 */  sh         $a1, 0x2($t6)
    /* ABA90 8009CAE0 A5650002 */  sh         $a1, 0x2($t3)
    /* ABA94 8009CAE4 87B90062 */  lh         $t9, 0x62($sp)
    /* ABA98 8009CAE8 25AEFFF7 */  addiu      $t6, $t5, -0x9
    /* ABA9C 8009CAEC 448E2000 */  mtc1       $t6, $f4
    /* ABAA0 8009CAF0 44994000 */  mtc1       $t9, $f8
    /* ABAA4 8009CAF4 44811000 */  mtc1       $at, $f2
    /* ABAA8 8009CAF8 468021A0 */  cvt.s.w    $f6, $f4
    /* ABAAC 8009CAFC 2418FFFF */  addiu      $t8, $zero, -0x1
    /* ABAB0 8009CB00 240500FF */  addiu      $a1, $zero, 0xFF
    /* ABAB4 8009CB04 468042A0 */  cvt.s.w    $f10, $f8
    /* ABAB8 8009CB08 46105482 */  mul.s      $f18, $f10, $f16
    /* ABABC 8009CB0C 46123101 */  sub.s      $f4, $f6, $f18
    /* ABAC0 8009CB10 46022201 */  sub.s      $f8, $f4, $f2
    /* ABAC4 8009CB14 4600428D */  trunc.w.s  $f10, $f8
    /* ABAC8 8009CB18 44065000 */  mfc1       $a2, $f10
    /* ABACC 8009CB1C 00000000 */  nop
    /* ABAD0 8009CB20 A4E60002 */  sh         $a2, 0x2($a3)
    /* ABAD4 8009CB24 A5E60002 */  sh         $a2, 0x2($t7)
    /* ABAD8 8009CB28 A4F80004 */  sh         $t8, 0x4($a3)
    /* ABADC 8009CB2C 84E20004 */  lh         $v0, 0x4($a3)
    /* ABAE0 8009CB30 A5E20004 */  sh         $v0, 0x4($t7)
    /* ABAE4 8009CB34 A5220004 */  sh         $v0, 0x4($t1)
    /* ABAE8 8009CB38 A5620004 */  sh         $v0, 0x4($t3)
    /* ABAEC 8009CB3C A125000C */  sb         $a1, 0xC($t1)
    /* ABAF0 8009CB40 A165000C */  sb         $a1, 0xC($t3)
    /* ABAF4 8009CB44 8FA4005C */  lw         $a0, 0x5C($sp)
    /* ABAF8 8009CB48 24020001 */  addiu      $v0, $zero, 0x1
    /* ABAFC 8009CB4C 0004C940 */  sll        $t9, $a0, 5
    /* ABB00 8009CB50 03202025 */  or         $a0, $t9, $zero
    /* ABB04 8009CB54 2B210100 */  slti       $at, $t9, 0x100
    /* ABB08 8009CB58 44844000 */  mtc1       $a0, $f8
    /* ABB0C 8009CB5C 14200003 */  bnez       $at, .L8009CB6C_ABB1C
    /* ABB10 8009CB60 00801825 */   or        $v1, $a0, $zero
    /* ABB14 8009CB64 10000001 */  b          .L8009CB6C_ABB1C
    /* ABB18 8009CB68 240300FF */   addiu     $v1, $zero, 0xFF
  .L8009CB6C_ABB1C:
    /* ABB1C 8009CB6C A123000D */  sb         $v1, 0xD($t1)
    /* ABB20 8009CB70 28810100 */  slti       $at, $a0, 0x100
    /* ABB24 8009CB74 14200003 */  bnez       $at, .L8009CB84_ABB34
    /* ABB28 8009CB78 A163000D */   sb        $v1, 0xD($t3)
    /* ABB2C 8009CB7C 10000002 */  b          .L8009CB88_ABB38
    /* ABB30 8009CB80 240300FF */   addiu     $v1, $zero, 0xFF
  .L8009CB84_ABB34:
    /* ABB34 8009CB84 00801825 */  or         $v1, $a0, $zero
  .L8009CB88_ABB38:
    /* ABB38 8009CB88 3C018014 */  lui        $at, %hi(D_801426D0)
    /* ABB3C 8009CB8C D42C26D0 */  ldc1       $f12, %lo(D_801426D0)($at)
    /* ABB40 8009CB90 A123000E */  sb         $v1, 0xE($t1)
    /* ABB44 8009CB94 A163000E */  sb         $v1, 0xE($t3)
    /* ABB48 8009CB98 A0E5000C */  sb         $a1, 0xC($a3)
    /* ABB4C 8009CB9C A145000C */  sb         $a1, 0xC($t2)
    /* ABB50 8009CBA0 3C018014 */  lui        $at, %hi(D_801426D8)
    /* ABB54 8009CBA4 D43226D8 */  ldc1       $f18, %lo(D_801426D8)($at)
    /* ABB58 8009CBA8 460081A1 */  cvt.d.s    $f6, $f16
    /* ABB5C 8009CBAC 468042A1 */  cvt.d.w    $f10, $f8
    /* ABB60 8009CBB0 46323102 */  mul.d      $f4, $f6, $f18
    /* ABB64 8009CBB4 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* ABB68 8009CBB8 00801825 */  or         $v1, $a0, $zero
    /* ABB6C 8009CBBC 462A2000 */  add.d      $f0, $f4, $f10
    /* ABB70 8009CBC0 4620603C */  c.lt.d     $f12, $f0
    /* ABB74 8009CBC4 00000000 */  nop
    /* ABB78 8009CBC8 45020004 */  bc1fl      .L8009CBDC_ABB8C
    /* ABB7C 8009CBCC 46200086 */   mov.d     $f2, $f0
    /* ABB80 8009CBD0 10000002 */  b          .L8009CBDC_ABB8C
    /* ABB84 8009CBD4 46206086 */   mov.d     $f2, $f12
    /* ABB88 8009CBD8 46200086 */  mov.d      $f2, $f0
  .L8009CBDC_ABB8C:
    /* ABB8C 8009CBDC 4458F800 */  cfc1       $t8, $31
    /* ABB90 8009CBE0 44C2F800 */  ctc1       $v0, $31
    /* ABB94 8009CBE4 00000000 */  nop
    /* ABB98 8009CBE8 462011A4 */  cvt.w.d    $f6, $f2
    /* ABB9C 8009CBEC 4442F800 */  cfc1       $v0, $31
    /* ABBA0 8009CBF0 00000000 */  nop
    /* ABBA4 8009CBF4 30420078 */  andi       $v0, $v0, 0x78
    /* ABBA8 8009CBF8 50400014 */  beql       $v0, $zero, .L8009CC4C_ABBFC
    /* ABBAC 8009CBFC 44023000 */   mfc1      $v0, $f6
    /* ABBB0 8009CC00 44813800 */  mtc1       $at, $f7
    /* ABBB4 8009CC04 44803000 */  mtc1       $zero, $f6
    /* ABBB8 8009CC08 24020001 */  addiu      $v0, $zero, 0x1
    /* ABBBC 8009CC0C 46261181 */  sub.d      $f6, $f2, $f6
    /* ABBC0 8009CC10 44C2F800 */  ctc1       $v0, $31
    /* ABBC4 8009CC14 00000000 */  nop
    /* ABBC8 8009CC18 462031A4 */  cvt.w.d    $f6, $f6
    /* ABBCC 8009CC1C 4442F800 */  cfc1       $v0, $31
    /* ABBD0 8009CC20 00000000 */  nop
    /* ABBD4 8009CC24 30420078 */  andi       $v0, $v0, 0x78
    /* ABBD8 8009CC28 14400005 */  bnez       $v0, .L8009CC40_ABBF0
    /* ABBDC 8009CC2C 00000000 */   nop
    /* ABBE0 8009CC30 44023000 */  mfc1       $v0, $f6
    /* ABBE4 8009CC34 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* ABBE8 8009CC38 10000007 */  b          .L8009CC58_ABC08
    /* ABBEC 8009CC3C 00411025 */   or        $v0, $v0, $at
  .L8009CC40_ABBF0:
    /* ABBF0 8009CC40 10000005 */  b          .L8009CC58_ABC08
    /* ABBF4 8009CC44 2402FFFF */   addiu     $v0, $zero, -0x1
    /* ABBF8 8009CC48 44023000 */  mfc1       $v0, $f6
  .L8009CC4C_ABBFC:
    /* ABBFC 8009CC4C 00000000 */  nop
    /* ABC00 8009CC50 0440FFFB */  bltz       $v0, .L8009CC40_ABBF0
    /* ABC04 8009CC54 00000000 */   nop
  .L8009CC58_ABC08:
    /* ABC08 8009CC58 44D8F800 */  ctc1       $t8, $31
    /* ABC0C 8009CC5C A0E2000D */  sb         $v0, 0xD($a3)
    /* ABC10 8009CC60 28810100 */  slti       $at, $a0, 0x100
    /* ABC14 8009CC64 14200003 */  bnez       $at, .L8009CC74_ABC24
    /* ABC18 8009CC68 A142000D */   sb        $v0, 0xD($t2)
    /* ABC1C 8009CC6C 10000001 */  b          .L8009CC74_ABC24
    /* ABC20 8009CC70 240300FF */   addiu     $v1, $zero, 0xFF
  .L8009CC74_ABC24:
    /* ABC24 8009CC74 A0E3000E */  sb         $v1, 0xE($a3)
    /* ABC28 8009CC78 A5400008 */  sh         $zero, 0x8($t2)
    /* ABC2C 8009CC7C 85420008 */  lh         $v0, 0x8($t2)
    /* ABC30 8009CC80 A143000E */  sb         $v1, 0xE($t2)
    /* ABC34 8009CC84 3C198004 */  lui        $t9, %hi(D_80047710)
    /* ABC38 8009CC88 A4E20008 */  sh         $v0, 0x8($a3)
    /* ABC3C 8009CC8C A4E2000A */  sh         $v0, 0xA($a3)
    /* ABC40 8009CC90 A522000A */  sh         $v0, 0xA($t1)
    /* ABC44 8009CC94 87397710 */  lh         $t9, %lo(D_80047710)($t9)
    /* ABC48 8009CC98 87AE0062 */  lh         $t6, 0x62($sp)
    /* ABC4C 8009CC9C 01D90019 */  multu      $t6, $t9
    /* ABC50 8009CCA0 00007812 */  mflo       $t7
    /* ABC54 8009CCA4 000FC100 */  sll        $t8, $t7, 4
    /* ABC58 8009CCA8 44989000 */  mtc1       $t8, $f18
    /* ABC5C 8009CCAC 24180400 */  addiu      $t8, $zero, 0x400
    /* ABC60 8009CCB0 46809220 */  cvt.s.w    $f8, $f18
    /* ABC64 8009CCB4 46104102 */  mul.s      $f4, $f8, $f16
    /* ABC68 8009CCB8 4600228D */  trunc.w.s  $f10, $f4
    /* ABC6C 8009CCBC 440F5000 */  mfc1       $t7, $f10
    /* ABC70 8009CCC0 00000000 */  nop
    /* ABC74 8009CCC4 A52F0008 */  sh         $t7, 0x8($t1)
    /* ABC78 8009CCC8 A56F0008 */  sh         $t7, 0x8($t3)
    /* ABC7C 8009CCCC A558000A */  sh         $t8, 0xA($t2)
    /* ABC80 8009CCD0 854E000A */  lh         $t6, 0xA($t2)
    /* ABC84 8009CCD4 1000017B */  b          .L8009D2C4_AC274
    /* ABC88 8009CCD8 A56E000A */   sh        $t6, 0xA($t3)
  .L8009CCDC_ABC8C:
    /* ABC8C 8009CCDC 8FB9004C */  lw         $t9, 0x4C($sp)
    /* ABC90 8009CCE0 87A20042 */  lh         $v0, 0x42($sp)
    /* ABC94 8009CCE4 13200016 */  beqz       $t9, .L8009CD40_ABCF0
    /* ABC98 8009CCE8 2442FFD1 */   addiu     $v0, $v0, -0x2F
    /* ABC9C 8009CCEC 87A20042 */  lh         $v0, 0x42($sp)
    /* ABCA0 8009CCF0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* ABCA4 8009CCF4 44811000 */  mtc1       $at, $f2
    /* ABCA8 8009CCF8 2442FFFF */  addiu      $v0, $v0, -0x1
    /* ABCAC 8009CCFC A5420000 */  sh         $v0, 0x0($t2)
    /* ABCB0 8009CD00 A5620000 */  sh         $v0, 0x0($t3)
    /* ABCB4 8009CD04 87B80062 */  lh         $t8, 0x62($sp)
    /* ABCB8 8009CD08 87AF0042 */  lh         $t7, 0x42($sp)
    /* ABCBC 8009CD0C 44984000 */  mtc1       $t8, $f8
    /* ABCC0 8009CD10 448F3000 */  mtc1       $t7, $f6
    /* ABCC4 8009CD14 46804120 */  cvt.s.w    $f4, $f8
    /* ABCC8 8009CD18 468034A0 */  cvt.s.w    $f18, $f6
    /* ABCCC 8009CD1C 46102282 */  mul.s      $f10, $f4, $f16
    /* ABCD0 8009CD20 460A9181 */  sub.s      $f6, $f18, $f10
    /* ABCD4 8009CD24 46023201 */  sub.s      $f8, $f6, $f2
    /* ABCD8 8009CD28 4600410D */  trunc.w.s  $f4, $f8
    /* ABCDC 8009CD2C 44032000 */  mfc1       $v1, $f4
    /* ABCE0 8009CD30 00000000 */  nop
    /* ABCE4 8009CD34 A4E30000 */  sh         $v1, 0x0($a3)
    /* ABCE8 8009CD38 10000014 */  b          .L8009CD8C_ABD3C
    /* ABCEC 8009CD3C A5230000 */   sh        $v1, 0x0($t1)
  .L8009CD40_ABCF0:
    /* ABCF0 8009CD40 A5420000 */  sh         $v0, 0x0($t2)
    /* ABCF4 8009CD44 A5620000 */  sh         $v0, 0x0($t3)
    /* ABCF8 8009CD48 87B80062 */  lh         $t8, 0x62($sp)
    /* ABCFC 8009CD4C 87B90042 */  lh         $t9, 0x42($sp)
    /* ABD00 8009CD50 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* ABD04 8009CD54 44983000 */  mtc1       $t8, $f6
    /* ABD08 8009CD58 272FFFD0 */  addiu      $t7, $t9, -0x30
    /* ABD0C 8009CD5C 448F9000 */  mtc1       $t7, $f18
    /* ABD10 8009CD60 46803220 */  cvt.s.w    $f8, $f6
    /* ABD14 8009CD64 44811000 */  mtc1       $at, $f2
    /* ABD18 8009CD68 468092A0 */  cvt.s.w    $f10, $f18
    /* ABD1C 8009CD6C 46104102 */  mul.s      $f4, $f8, $f16
    /* ABD20 8009CD70 46045480 */  add.s      $f18, $f10, $f4
    /* ABD24 8009CD74 46029180 */  add.s      $f6, $f18, $f2
    /* ABD28 8009CD78 4600320D */  trunc.w.s  $f8, $f6
    /* ABD2C 8009CD7C 44034000 */  mfc1       $v1, $f8
    /* ABD30 8009CD80 00000000 */  nop
    /* ABD34 8009CD84 A4E30000 */  sh         $v1, 0x0($a3)
    /* ABD38 8009CD88 A5230000 */  sh         $v1, 0x0($t1)
  .L8009CD8C_ABD3C:
    /* ABD3C 8009CD8C 24030003 */  addiu      $v1, $zero, 0x3
    /* ABD40 8009CD90 A5230002 */  sh         $v1, 0x2($t1)
    /* ABD44 8009CD94 85390002 */  lh         $t9, 0x2($t1)
    /* ABD48 8009CD98 240FFFFC */  addiu      $t7, $zero, -0x4
    /* ABD4C 8009CD9C 240EFFFF */  addiu      $t6, $zero, -0x1
    /* ABD50 8009CDA0 A5790002 */  sh         $t9, 0x2($t3)
    /* ABD54 8009CDA4 A4EF0002 */  sh         $t7, 0x2($a3)
    /* ABD58 8009CDA8 84F80002 */  lh         $t8, 0x2($a3)
    /* ABD5C 8009CDAC 24010004 */  addiu      $at, $zero, 0x4
    /* ABD60 8009CDB0 A5580002 */  sh         $t8, 0x2($t2)
    /* ABD64 8009CDB4 A4EE0004 */  sh         $t6, 0x4($a3)
    /* ABD68 8009CDB8 84E20004 */  lh         $v0, 0x4($a3)
    /* ABD6C 8009CDBC A5420004 */  sh         $v0, 0x4($t2)
    /* ABD70 8009CDC0 A5220004 */  sh         $v0, 0x4($t1)
    /* ABD74 8009CDC4 A5620004 */  sh         $v0, 0x4($t3)
    /* ABD78 8009CDC8 8FB90054 */  lw         $t9, 0x54($sp)
    /* ABD7C 8009CDCC 240200FF */  addiu      $v0, $zero, 0xFF
    /* ABD80 8009CDD0 8FB80054 */  lw         $t8, 0x54($sp)
    /* ABD84 8009CDD4 1723005A */  bne        $t9, $v1, .L8009CF40_ABEF0
    /* ABD88 8009CDD8 00000000 */   nop
    /* ABD8C 8009CDDC A122000C */  sb         $v0, 0xC($t1)
    /* ABD90 8009CDE0 A0E2000C */  sb         $v0, 0xC($a3)
    /* ABD94 8009CDE4 A142000C */  sb         $v0, 0xC($t2)
    /* ABD98 8009CDE8 A162000C */  sb         $v0, 0xC($t3)
    /* ABD9C 8009CDEC 3C188014 */  lui        $t8, %hi(D_8013D5DC)
    /* ABDA0 8009CDF0 8F18D5DC */  lw         $t8, %lo(D_8013D5DC)($t8)
    /* ABDA4 8009CDF4 8FA4005C */  lw         $a0, 0x5C($sp)
    /* ABDA8 8009CDF8 3C018014 */  lui        $at, %hi(D_801426E0)
    /* ABDAC 8009CDFC 1300000E */  beqz       $t8, .L8009CE38_ABDE8
    /* ABDB0 8009CE00 0004C940 */   sll       $t9, $a0, 5
    /* ABDB4 8009CE04 8FA4005C */  lw         $a0, 0x5C($sp)
    /* ABDB8 8009CE08 00047140 */  sll        $t6, $a0, 5
    /* ABDBC 8009CE0C 29C10100 */  slti       $at, $t6, 0x100
    /* ABDC0 8009CE10 14200003 */  bnez       $at, .L8009CE20_ABDD0
    /* ABDC4 8009CE14 01C02025 */   or        $a0, $t6, $zero
    /* ABDC8 8009CE18 10000002 */  b          .L8009CE24_ABDD4
    /* ABDCC 8009CE1C 240300FF */   addiu     $v1, $zero, 0xFF
  .L8009CE20_ABDD0:
    /* ABDD0 8009CE20 00801825 */  or         $v1, $a0, $zero
  .L8009CE24_ABDD4:
    /* ABDD4 8009CE24 A123000D */  sb         $v1, 0xD($t1)
    /* ABDD8 8009CE28 A0E3000D */  sb         $v1, 0xD($a3)
    /* ABDDC 8009CE2C A143000D */  sb         $v1, 0xD($t2)
    /* ABDE0 8009CE30 10000038 */  b          .L8009CF14_ABEC4
    /* ABDE4 8009CE34 A163000D */   sb        $v1, 0xD($t3)
  .L8009CE38_ABDE8:
    /* ABDE8 8009CE38 46101281 */  sub.s      $f10, $f2, $f16
    /* ABDEC 8009CE3C D42C26E0 */  ldc1       $f12, %lo(D_801426E0)($at)
    /* ABDF0 8009CE40 3C018014 */  lui        $at, %hi(D_801426E8)
    /* ABDF4 8009CE44 D43226E8 */  ldc1       $f18, %lo(D_801426E8)($at)
    /* ABDF8 8009CE48 46005121 */  cvt.d.s    $f4, $f10
    /* ABDFC 8009CE4C 03202025 */  or         $a0, $t9, $zero
    /* ABE00 8009CE50 46322182 */  mul.d      $f6, $f4, $f18
    /* ABE04 8009CE54 44844000 */  mtc1       $a0, $f8
    /* ABE08 8009CE58 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* ABE0C 8009CE5C 24020001 */  addiu      $v0, $zero, 0x1
    /* ABE10 8009CE60 468042A1 */  cvt.d.w    $f10, $f8
    /* ABE14 8009CE64 462A3000 */  add.d      $f0, $f6, $f10
    /* ABE18 8009CE68 4620603C */  c.lt.d     $f12, $f0
    /* ABE1C 8009CE6C 00000000 */  nop
    /* ABE20 8009CE70 45020004 */  bc1fl      .L8009CE84_ABE34
    /* ABE24 8009CE74 46200086 */   mov.d     $f2, $f0
    /* ABE28 8009CE78 10000002 */  b          .L8009CE84_ABE34
    /* ABE2C 8009CE7C 46206086 */   mov.d     $f2, $f12
    /* ABE30 8009CE80 46200086 */  mov.d      $f2, $f0
  .L8009CE84_ABE34:
    /* ABE34 8009CE84 444FF800 */  cfc1       $t7, $31
    /* ABE38 8009CE88 44C2F800 */  ctc1       $v0, $31
    /* ABE3C 8009CE8C 00000000 */  nop
    /* ABE40 8009CE90 46201124 */  cvt.w.d    $f4, $f2
    /* ABE44 8009CE94 4442F800 */  cfc1       $v0, $31
    /* ABE48 8009CE98 00000000 */  nop
    /* ABE4C 8009CE9C 30420078 */  andi       $v0, $v0, 0x78
    /* ABE50 8009CEA0 50400014 */  beql       $v0, $zero, .L8009CEF4_ABEA4
    /* ABE54 8009CEA4 44022000 */   mfc1      $v0, $f4
    /* ABE58 8009CEA8 44812800 */  mtc1       $at, $f5
    /* ABE5C 8009CEAC 44802000 */  mtc1       $zero, $f4
    /* ABE60 8009CEB0 24020001 */  addiu      $v0, $zero, 0x1
    /* ABE64 8009CEB4 46241101 */  sub.d      $f4, $f2, $f4
    /* ABE68 8009CEB8 44C2F800 */  ctc1       $v0, $31
    /* ABE6C 8009CEBC 00000000 */  nop
    /* ABE70 8009CEC0 46202124 */  cvt.w.d    $f4, $f4
    /* ABE74 8009CEC4 4442F800 */  cfc1       $v0, $31
    /* ABE78 8009CEC8 00000000 */  nop
    /* ABE7C 8009CECC 30420078 */  andi       $v0, $v0, 0x78
    /* ABE80 8009CED0 14400005 */  bnez       $v0, .L8009CEE8_ABE98
    /* ABE84 8009CED4 00000000 */   nop
    /* ABE88 8009CED8 44022000 */  mfc1       $v0, $f4
    /* ABE8C 8009CEDC 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* ABE90 8009CEE0 10000007 */  b          .L8009CF00_ABEB0
    /* ABE94 8009CEE4 00411025 */   or        $v0, $v0, $at
  .L8009CEE8_ABE98:
    /* ABE98 8009CEE8 10000005 */  b          .L8009CF00_ABEB0
    /* ABE9C 8009CEEC 2402FFFF */   addiu     $v0, $zero, -0x1
    /* ABEA0 8009CEF0 44022000 */  mfc1       $v0, $f4
  .L8009CEF4_ABEA4:
    /* ABEA4 8009CEF4 00000000 */  nop
    /* ABEA8 8009CEF8 0440FFFB */  bltz       $v0, .L8009CEE8_ABE98
    /* ABEAC 8009CEFC 00000000 */   nop
  .L8009CF00_ABEB0:
    /* ABEB0 8009CF00 A122000D */  sb         $v0, 0xD($t1)
    /* ABEB4 8009CF04 A0E2000D */  sb         $v0, 0xD($a3)
    /* ABEB8 8009CF08 44CFF800 */  ctc1       $t7, $31
    /* ABEBC 8009CF0C A142000D */  sb         $v0, 0xD($t2)
    /* ABEC0 8009CF10 A162000D */  sb         $v0, 0xD($t3)
  .L8009CF14_ABEC4:
    /* ABEC4 8009CF14 28810100 */  slti       $at, $a0, 0x100
    /* ABEC8 8009CF18 14200003 */  bnez       $at, .L8009CF28_ABED8
    /* ABECC 8009CF1C 460083A1 */   cvt.d.s   $f14, $f16
    /* ABED0 8009CF20 10000002 */  b          .L8009CF2C_ABEDC
    /* ABED4 8009CF24 240300FF */   addiu     $v1, $zero, 0xFF
  .L8009CF28_ABED8:
    /* ABED8 8009CF28 00801825 */  or         $v1, $a0, $zero
  .L8009CF2C_ABEDC:
    /* ABEDC 8009CF2C A123000E */  sb         $v1, 0xE($t1)
    /* ABEE0 8009CF30 A0E3000E */  sb         $v1, 0xE($a3)
    /* ABEE4 8009CF34 A143000E */  sb         $v1, 0xE($t2)
    /* ABEE8 8009CF38 100000CA */  b          .L8009D264_AC214
    /* ABEEC 8009CF3C A163000E */   sb        $v1, 0xE($t3)
  .L8009CF40_ABEF0:
    /* ABEF0 8009CF40 17010077 */  bne        $t8, $at, .L8009D120_AC0D0
    /* ABEF4 8009CF44 240E00FF */   addiu     $t6, $zero, 0xFF
    /* ABEF8 8009CF48 8FA4005C */  lw         $a0, 0x5C($sp)
    /* ABEFC 8009CF4C 240F00FF */  addiu      $t7, $zero, 0xFF
    /* ABF00 8009CF50 24020001 */  addiu      $v0, $zero, 0x1
    /* ABF04 8009CF54 00047140 */  sll        $t6, $a0, 5
    /* ABF08 8009CF58 01C02025 */  or         $a0, $t6, $zero
    /* ABF0C 8009CF5C 29C10100 */  slti       $at, $t6, 0x100
    /* ABF10 8009CF60 44843000 */  mtc1       $a0, $f6
    /* ABF14 8009CF64 14200003 */  bnez       $at, .L8009CF74_ABF24
    /* ABF18 8009CF68 00801825 */   or        $v1, $a0, $zero
    /* ABF1C 8009CF6C 10000001 */  b          .L8009CF74_ABF24
    /* ABF20 8009CF70 240300FF */   addiu     $v1, $zero, 0xFF
  .L8009CF74_ABF24:
    /* ABF24 8009CF74 A143000C */  sb         $v1, 0xC($t2)
    /* ABF28 8009CF78 28810100 */  slti       $at, $a0, 0x100
    /* ABF2C 8009CF7C 14200003 */  bnez       $at, .L8009CF8C_ABF3C
    /* ABF30 8009CF80 A163000C */   sb        $v1, 0xC($t3)
    /* ABF34 8009CF84 10000002 */  b          .L8009CF90_ABF40
    /* ABF38 8009CF88 240300FF */   addiu     $v1, $zero, 0xFF
  .L8009CF8C_ABF3C:
    /* ABF3C 8009CF8C 00801825 */  or         $v1, $a0, $zero
  .L8009CF90_ABF40:
    /* ABF40 8009CF90 3C018014 */  lui        $at, %hi(D_801426F0)
    /* ABF44 8009CF94 D42C26F0 */  ldc1       $f12, %lo(D_801426F0)($at)
    /* ABF48 8009CF98 A143000D */  sb         $v1, 0xD($t2)
    /* ABF4C 8009CF9C A163000D */  sb         $v1, 0xD($t3)
    /* ABF50 8009CFA0 A14F000E */  sb         $t7, 0xE($t2)
    /* ABF54 8009CFA4 A16F000E */  sb         $t7, 0xE($t3)
    /* ABF58 8009CFA8 3C018014 */  lui        $at, %hi(D_801426F8)
    /* ABF5C 8009CFAC D43226F8 */  ldc1       $f18, %lo(D_801426F8)($at)
    /* ABF60 8009CFB0 460083A1 */  cvt.d.s    $f14, $f16
    /* ABF64 8009CFB4 468032A1 */  cvt.d.w    $f10, $f6
    /* ABF68 8009CFB8 46327202 */  mul.d      $f8, $f14, $f18
    /* ABF6C 8009CFBC 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* ABF70 8009CFC0 240F00FF */  addiu      $t7, $zero, 0xFF
    /* ABF74 8009CFC4 462A4000 */  add.d      $f0, $f8, $f10
    /* ABF78 8009CFC8 4620603C */  c.lt.d     $f12, $f0
    /* ABF7C 8009CFCC 00000000 */  nop
    /* ABF80 8009CFD0 45020004 */  bc1fl      .L8009CFE4_ABF94
    /* ABF84 8009CFD4 46200086 */   mov.d     $f2, $f0
    /* ABF88 8009CFD8 10000002 */  b          .L8009CFE4_ABF94
    /* ABF8C 8009CFDC 46206086 */   mov.d     $f2, $f12
    /* ABF90 8009CFE0 46200086 */  mov.d      $f2, $f0
  .L8009CFE4_ABF94:
    /* ABF94 8009CFE4 4458F800 */  cfc1       $t8, $31
    /* ABF98 8009CFE8 44C2F800 */  ctc1       $v0, $31
    /* ABF9C 8009CFEC 00000000 */  nop
    /* ABFA0 8009CFF0 46201124 */  cvt.w.d    $f4, $f2
    /* ABFA4 8009CFF4 4442F800 */  cfc1       $v0, $31
    /* ABFA8 8009CFF8 00000000 */  nop
    /* ABFAC 8009CFFC 30420078 */  andi       $v0, $v0, 0x78
    /* ABFB0 8009D000 50400014 */  beql       $v0, $zero, .L8009D054_AC004
    /* ABFB4 8009D004 44022000 */   mfc1      $v0, $f4
    /* ABFB8 8009D008 44812800 */  mtc1       $at, $f5
    /* ABFBC 8009D00C 44802000 */  mtc1       $zero, $f4
    /* ABFC0 8009D010 24020001 */  addiu      $v0, $zero, 0x1
    /* ABFC4 8009D014 46241101 */  sub.d      $f4, $f2, $f4
    /* ABFC8 8009D018 44C2F800 */  ctc1       $v0, $31
    /* ABFCC 8009D01C 00000000 */  nop
    /* ABFD0 8009D020 46202124 */  cvt.w.d    $f4, $f4
    /* ABFD4 8009D024 4442F800 */  cfc1       $v0, $31
    /* ABFD8 8009D028 00000000 */  nop
    /* ABFDC 8009D02C 30420078 */  andi       $v0, $v0, 0x78
    /* ABFE0 8009D030 14400005 */  bnez       $v0, .L8009D048_ABFF8
    /* ABFE4 8009D034 00000000 */   nop
    /* ABFE8 8009D038 44022000 */  mfc1       $v0, $f4
    /* ABFEC 8009D03C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* ABFF0 8009D040 10000007 */  b          .L8009D060_AC010
    /* ABFF4 8009D044 00411025 */   or        $v0, $v0, $at
  .L8009D048_ABFF8:
    /* ABFF8 8009D048 10000005 */  b          .L8009D060_AC010
    /* ABFFC 8009D04C 2402FFFF */   addiu     $v0, $zero, -0x1
    /* AC000 8009D050 44022000 */  mfc1       $v0, $f4
  .L8009D054_AC004:
    /* AC004 8009D054 00000000 */  nop
    /* AC008 8009D058 0440FFFB */  bltz       $v0, .L8009D048_ABFF8
    /* AC00C 8009D05C 00000000 */   nop
  .L8009D060_AC010:
    /* AC010 8009D060 44D8F800 */  ctc1       $t8, $31
    /* AC014 8009D064 A122000C */  sb         $v0, 0xC($t1)
    /* AC018 8009D068 A0E2000C */  sb         $v0, 0xC($a3)
    /* AC01C 8009D06C 4620603C */  c.lt.d     $f12, $f0
    /* AC020 8009D070 24020001 */  addiu      $v0, $zero, 0x1
    /* AC024 8009D074 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* AC028 8009D078 45020004 */  bc1fl      .L8009D08C_AC03C
    /* AC02C 8009D07C 46200086 */   mov.d     $f2, $f0
    /* AC030 8009D080 10000002 */  b          .L8009D08C_AC03C
    /* AC034 8009D084 46206086 */   mov.d     $f2, $f12
    /* AC038 8009D088 46200086 */  mov.d      $f2, $f0
  .L8009D08C_AC03C:
    /* AC03C 8009D08C 444EF800 */  cfc1       $t6, $31
    /* AC040 8009D090 44C2F800 */  ctc1       $v0, $31
    /* AC044 8009D094 00000000 */  nop
    /* AC048 8009D098 462014A4 */  cvt.w.d    $f18, $f2
    /* AC04C 8009D09C 4442F800 */  cfc1       $v0, $31
    /* AC050 8009D0A0 00000000 */  nop
    /* AC054 8009D0A4 30420078 */  andi       $v0, $v0, 0x78
    /* AC058 8009D0A8 50400014 */  beql       $v0, $zero, .L8009D0FC_AC0AC
    /* AC05C 8009D0AC 44029000 */   mfc1      $v0, $f18
    /* AC060 8009D0B0 44819800 */  mtc1       $at, $f19
    /* AC064 8009D0B4 44809000 */  mtc1       $zero, $f18
    /* AC068 8009D0B8 24020001 */  addiu      $v0, $zero, 0x1
    /* AC06C 8009D0BC 46321481 */  sub.d      $f18, $f2, $f18
    /* AC070 8009D0C0 44C2F800 */  ctc1       $v0, $31
    /* AC074 8009D0C4 00000000 */  nop
    /* AC078 8009D0C8 462094A4 */  cvt.w.d    $f18, $f18
    /* AC07C 8009D0CC 4442F800 */  cfc1       $v0, $31
    /* AC080 8009D0D0 00000000 */  nop
    /* AC084 8009D0D4 30420078 */  andi       $v0, $v0, 0x78
    /* AC088 8009D0D8 14400005 */  bnez       $v0, .L8009D0F0_AC0A0
    /* AC08C 8009D0DC 00000000 */   nop
    /* AC090 8009D0E0 44029000 */  mfc1       $v0, $f18
    /* AC094 8009D0E4 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* AC098 8009D0E8 10000007 */  b          .L8009D108_AC0B8
    /* AC09C 8009D0EC 00411025 */   or        $v0, $v0, $at
  .L8009D0F0_AC0A0:
    /* AC0A0 8009D0F0 10000005 */  b          .L8009D108_AC0B8
    /* AC0A4 8009D0F4 2402FFFF */   addiu     $v0, $zero, -0x1
    /* AC0A8 8009D0F8 44029000 */  mfc1       $v0, $f18
  .L8009D0FC_AC0AC:
    /* AC0AC 8009D0FC 00000000 */  nop
    /* AC0B0 8009D100 0440FFFB */  bltz       $v0, .L8009D0F0_AC0A0
    /* AC0B4 8009D104 00000000 */   nop
  .L8009D108_AC0B8:
    /* AC0B8 8009D108 A122000D */  sb         $v0, 0xD($t1)
    /* AC0BC 8009D10C A0E2000D */  sb         $v0, 0xD($a3)
    /* AC0C0 8009D110 44CEF800 */  ctc1       $t6, $31
    /* AC0C4 8009D114 A12F000E */  sb         $t7, 0xE($t1)
    /* AC0C8 8009D118 10000052 */  b          .L8009D264_AC214
    /* AC0CC 8009D11C A0EF000E */   sb        $t7, 0xE($a3)
  .L8009D120_AC0D0:
    /* AC0D0 8009D120 A14E000C */  sb         $t6, 0xC($t2)
    /* AC0D4 8009D124 A16E000C */  sb         $t6, 0xC($t3)
    /* AC0D8 8009D128 8FA4005C */  lw         $a0, 0x5C($sp)
    /* AC0DC 8009D12C 241800FF */  addiu      $t8, $zero, 0xFF
    /* AC0E0 8009D130 24020001 */  addiu      $v0, $zero, 0x1
    /* AC0E4 8009D134 0004C940 */  sll        $t9, $a0, 5
    /* AC0E8 8009D138 03202025 */  or         $a0, $t9, $zero
    /* AC0EC 8009D13C 2B210100 */  slti       $at, $t9, 0x100
    /* AC0F0 8009D140 44845000 */  mtc1       $a0, $f10
    /* AC0F4 8009D144 14200003 */  bnez       $at, .L8009D154_AC104
    /* AC0F8 8009D148 00801825 */   or        $v1, $a0, $zero
    /* AC0FC 8009D14C 10000001 */  b          .L8009D154_AC104
    /* AC100 8009D150 240300FF */   addiu     $v1, $zero, 0xFF
  .L8009D154_AC104:
    /* AC104 8009D154 A143000D */  sb         $v1, 0xD($t2)
    /* AC108 8009D158 28810100 */  slti       $at, $a0, 0x100
    /* AC10C 8009D15C 14200003 */  bnez       $at, .L8009D16C_AC11C
    /* AC110 8009D160 A163000D */   sb        $v1, 0xD($t3)
    /* AC114 8009D164 10000002 */  b          .L8009D170_AC120
    /* AC118 8009D168 240300FF */   addiu     $v1, $zero, 0xFF
  .L8009D16C_AC11C:
    /* AC11C 8009D16C 00801825 */  or         $v1, $a0, $zero
  .L8009D170_AC120:
    /* AC120 8009D170 3C018014 */  lui        $at, %hi(D_80142700)
    /* AC124 8009D174 D42C2700 */  ldc1       $f12, %lo(D_80142700)($at)
    /* AC128 8009D178 A143000E */  sb         $v1, 0xE($t2)
    /* AC12C 8009D17C A163000E */  sb         $v1, 0xE($t3)
    /* AC130 8009D180 A138000C */  sb         $t8, 0xC($t1)
    /* AC134 8009D184 A0F8000C */  sb         $t8, 0xC($a3)
    /* AC138 8009D188 3C018014 */  lui        $at, %hi(D_80142708)
    /* AC13C 8009D18C D4262708 */  ldc1       $f6, %lo(D_80142708)($at)
    /* AC140 8009D190 460083A1 */  cvt.d.s    $f14, $f16
    /* AC144 8009D194 46805121 */  cvt.d.w    $f4, $f10
    /* AC148 8009D198 46267202 */  mul.d      $f8, $f14, $f6
    /* AC14C 8009D19C 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* AC150 8009D1A0 00801825 */  or         $v1, $a0, $zero
    /* AC154 8009D1A4 46244000 */  add.d      $f0, $f8, $f4
    /* AC158 8009D1A8 4620603C */  c.lt.d     $f12, $f0
    /* AC15C 8009D1AC 00000000 */  nop
    /* AC160 8009D1B0 45020004 */  bc1fl      .L8009D1C4_AC174
    /* AC164 8009D1B4 46200086 */   mov.d     $f2, $f0
    /* AC168 8009D1B8 10000002 */  b          .L8009D1C4_AC174
    /* AC16C 8009D1BC 46206086 */   mov.d     $f2, $f12
    /* AC170 8009D1C0 46200086 */  mov.d      $f2, $f0
  .L8009D1C4_AC174:
    /* AC174 8009D1C4 444EF800 */  cfc1       $t6, $31
    /* AC178 8009D1C8 44C2F800 */  ctc1       $v0, $31
    /* AC17C 8009D1CC 00000000 */  nop
    /* AC180 8009D1D0 462014A4 */  cvt.w.d    $f18, $f2
    /* AC184 8009D1D4 4442F800 */  cfc1       $v0, $31
    /* AC188 8009D1D8 00000000 */  nop
    /* AC18C 8009D1DC 30420078 */  andi       $v0, $v0, 0x78
    /* AC190 8009D1E0 50400014 */  beql       $v0, $zero, .L8009D234_AC1E4
    /* AC194 8009D1E4 44029000 */   mfc1      $v0, $f18
    /* AC198 8009D1E8 44819800 */  mtc1       $at, $f19
    /* AC19C 8009D1EC 44809000 */  mtc1       $zero, $f18
    /* AC1A0 8009D1F0 24020001 */  addiu      $v0, $zero, 0x1
    /* AC1A4 8009D1F4 46321481 */  sub.d      $f18, $f2, $f18
    /* AC1A8 8009D1F8 44C2F800 */  ctc1       $v0, $31
    /* AC1AC 8009D1FC 00000000 */  nop
    /* AC1B0 8009D200 462094A4 */  cvt.w.d    $f18, $f18
    /* AC1B4 8009D204 4442F800 */  cfc1       $v0, $31
    /* AC1B8 8009D208 00000000 */  nop
    /* AC1BC 8009D20C 30420078 */  andi       $v0, $v0, 0x78
    /* AC1C0 8009D210 14400005 */  bnez       $v0, .L8009D228_AC1D8
    /* AC1C4 8009D214 00000000 */   nop
    /* AC1C8 8009D218 44029000 */  mfc1       $v0, $f18
    /* AC1CC 8009D21C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* AC1D0 8009D220 10000007 */  b          .L8009D240_AC1F0
    /* AC1D4 8009D224 00411025 */   or        $v0, $v0, $at
  .L8009D228_AC1D8:
    /* AC1D8 8009D228 10000005 */  b          .L8009D240_AC1F0
    /* AC1DC 8009D22C 2402FFFF */   addiu     $v0, $zero, -0x1
    /* AC1E0 8009D230 44029000 */  mfc1       $v0, $f18
  .L8009D234_AC1E4:
    /* AC1E4 8009D234 00000000 */  nop
    /* AC1E8 8009D238 0440FFFB */  bltz       $v0, .L8009D228_AC1D8
    /* AC1EC 8009D23C 00000000 */   nop
  .L8009D240_AC1F0:
    /* AC1F0 8009D240 44CEF800 */  ctc1       $t6, $31
    /* AC1F4 8009D244 A122000D */  sb         $v0, 0xD($t1)
    /* AC1F8 8009D248 28810100 */  slti       $at, $a0, 0x100
    /* AC1FC 8009D24C 14200003 */  bnez       $at, .L8009D25C_AC20C
    /* AC200 8009D250 A0E2000D */   sb        $v0, 0xD($a3)
    /* AC204 8009D254 10000001 */  b          .L8009D25C_AC20C
    /* AC208 8009D258 240300FF */   addiu     $v1, $zero, 0xFF
  .L8009D25C_AC20C:
    /* AC20C 8009D25C A123000E */  sb         $v1, 0xE($t1)
    /* AC210 8009D260 A0E3000E */  sb         $v1, 0xE($a3)
  .L8009D264_AC214:
    /* AC214 8009D264 A520000A */  sh         $zero, 0xA($t1)
    /* AC218 8009D268 8522000A */  lh         $v0, 0xA($t1)
    /* AC21C 8009D26C 24190400 */  addiu      $t9, $zero, 0x400
    /* AC220 8009D270 3C014060 */  lui        $at, (0x40600000 >> 16)
    /* AC224 8009D274 A5420008 */  sh         $v0, 0x8($t2)
    /* AC228 8009D278 A5620008 */  sh         $v0, 0x8($t3)
    /* AC22C 8009D27C A562000A */  sh         $v0, 0xA($t3)
    /* AC230 8009D280 A4F9000A */  sh         $t9, 0xA($a3)
    /* AC234 8009D284 84EF000A */  lh         $t7, 0xA($a3)
    /* AC238 8009D288 44814800 */  mtc1       $at, $f9
    /* AC23C 8009D28C 44804000 */  mtc1       $zero, $f8
    /* AC240 8009D290 A54F000A */  sh         $t7, 0xA($t2)
    /* AC244 8009D294 87B80062 */  lh         $t8, 0x62($sp)
    /* AC248 8009D298 44983000 */  mtc1       $t8, $f6
    /* AC24C 8009D29C 00000000 */  nop
    /* AC250 8009D2A0 468032A1 */  cvt.d.w    $f10, $f6
    /* AC254 8009D2A4 46285102 */  mul.d      $f4, $f10, $f8
    /* AC258 8009D2A8 00000000 */  nop
    /* AC25C 8009D2AC 462E2482 */  mul.d      $f18, $f4, $f14
    /* AC260 8009D2B0 4620918D */  trunc.w.d  $f6, $f18
    /* AC264 8009D2B4 44033000 */  mfc1       $v1, $f6
    /* AC268 8009D2B8 00000000 */  nop
    /* AC26C 8009D2BC A5230008 */  sh         $v1, 0x8($t1)
    /* AC270 8009D2C0 A4E30008 */  sh         $v1, 0x8($a3)
  .L8009D2C4_AC274:
    /* AC274 8009D2C4 8D020000 */  lw         $v0, 0x0($t0)
    /* AC278 8009D2C8 3C0FBB00 */  lui        $t7, (0xBB000001 >> 16)
    /* AC27C 8009D2CC 3C188000 */  lui        $t8, (0x80008000 >> 16)
    /* AC280 8009D2D0 24590008 */  addiu      $t9, $v0, 0x8
    /* AC284 8009D2D4 AD190000 */  sw         $t9, 0x0($t0)
    /* AC288 8009D2D8 37188000 */  ori        $t8, $t8, (0x80008000 & 0xFFFF)
    /* AC28C 8009D2DC 35EF0001 */  ori        $t7, $t7, (0xBB000001 & 0xFFFF)
    /* AC290 8009D2E0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AC294 8009D2E4 AC580004 */  sw         $t8, 0x4($v0)
    /* AC298 8009D2E8 8D020000 */  lw         $v0, 0x0($t0)
    /* AC29C 8009D2EC 3C0F0F0A */  lui        $t7, (0xF0A4000 >> 16)
    /* AC2A0 8009D2F0 3C19B900 */  lui        $t9, (0xB900031D >> 16)
    /* AC2A4 8009D2F4 244E0008 */  addiu      $t6, $v0, 0x8
    /* AC2A8 8009D2F8 AD0E0000 */  sw         $t6, 0x0($t0)
    /* AC2AC 8009D2FC 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
    /* AC2B0 8009D300 35EF4000 */  ori        $t7, $t7, (0xF0A4000 & 0xFFFF)
    /* AC2B4 8009D304 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AC2B8 8009D308 AC590000 */  sw         $t9, 0x0($v0)
    /* AC2BC 8009D30C 8D020000 */  lw         $v0, 0x0($t0)
    /* AC2C0 8009D310 3C198014 */  lui        $t9, %hi(D_8013D540)
    /* AC2C4 8009D314 2739D540 */  addiu      $t9, $t9, %lo(D_8013D540)
    /* AC2C8 8009D318 24580008 */  addiu      $t8, $v0, 0x8
    /* AC2CC 8009D31C AD180000 */  sw         $t8, 0x0($t0)
    /* AC2D0 8009D320 3C0EFD70 */  lui        $t6, (0xFD700000 >> 16)
    /* AC2D4 8009D324 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AC2D8 8009D328 AC590004 */  sw         $t9, 0x4($v0)
    /* AC2DC 8009D32C 8D020000 */  lw         $v0, 0x0($t0)
    /* AC2E0 8009D330 3C0E0700 */  lui        $t6, (0x700C030 >> 16)
    /* AC2E4 8009D334 35CEC030 */  ori        $t6, $t6, (0x700C030 & 0xFFFF)
    /* AC2E8 8009D338 244F0008 */  addiu      $t7, $v0, 0x8
    /* AC2EC 8009D33C AD0F0000 */  sw         $t7, 0x0($t0)
    /* AC2F0 8009D340 3C18F570 */  lui        $t8, (0xF5700000 >> 16)
    /* AC2F4 8009D344 AC580000 */  sw         $t8, 0x0($v0)
    /* AC2F8 8009D348 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AC2FC 8009D34C 8D020000 */  lw         $v0, 0x0($t0)
    /* AC300 8009D350 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
    /* AC304 8009D354 3C0EF300 */  lui        $t6, (0xF3000000 >> 16)
    /* AC308 8009D358 24590008 */  addiu      $t9, $v0, 0x8
    /* AC30C 8009D35C AD190000 */  sw         $t9, 0x0($t0)
    /* AC310 8009D360 AC400004 */  sw         $zero, 0x4($v0)
    /* AC314 8009D364 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AC318 8009D368 8D020000 */  lw         $v0, 0x0($t0)
    /* AC31C 8009D36C 3C190701 */  lui        $t9, (0x701F800 >> 16)
    /* AC320 8009D370 3739F800 */  ori        $t9, $t9, (0x701F800 & 0xFFFF)
    /* AC324 8009D374 24580008 */  addiu      $t8, $v0, 0x8
    /* AC328 8009D378 AD180000 */  sw         $t8, 0x0($t0)
    /* AC32C 8009D37C AC590004 */  sw         $t9, 0x4($v0)
    /* AC330 8009D380 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AC334 8009D384 8D020000 */  lw         $v0, 0x0($t0)
    /* AC338 8009D388 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* AC33C 8009D38C 3C19F568 */  lui        $t9, (0xF5680200 >> 16)
    /* AC340 8009D390 244F0008 */  addiu      $t7, $v0, 0x8
    /* AC344 8009D394 AD0F0000 */  sw         $t7, 0x0($t0)
    /* AC348 8009D398 AC400004 */  sw         $zero, 0x4($v0)
    /* AC34C 8009D39C AC580000 */  sw         $t8, 0x0($v0)
    /* AC350 8009D3A0 8D020000 */  lw         $v0, 0x0($t0)
    /* AC354 8009D3A4 340FC030 */  ori        $t7, $zero, 0xC030
    /* AC358 8009D3A8 37390200 */  ori        $t9, $t9, (0xF5680200 & 0xFFFF)
    /* AC35C 8009D3AC 244E0008 */  addiu      $t6, $v0, 0x8
    /* AC360 8009D3B0 AD0E0000 */  sw         $t6, 0x0($t0)
    /* AC364 8009D3B4 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AC368 8009D3B8 AC590000 */  sw         $t9, 0x0($v0)
    /* AC36C 8009D3BC 8D020000 */  lw         $v0, 0x0($t0)
    /* AC370 8009D3C0 3C190001 */  lui        $t9, (0x1C01C >> 16)
    /* AC374 8009D3C4 3739C01C */  ori        $t9, $t9, (0x1C01C & 0xFFFF)
    /* AC378 8009D3C8 24580008 */  addiu      $t8, $v0, 0x8
    /* AC37C 8009D3CC AD180000 */  sw         $t8, 0x0($t0)
    /* AC380 8009D3D0 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* AC384 8009D3D4 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AC388 8009D3D8 AC590004 */  sw         $t9, 0x4($v0)
    /* AC38C 8009D3DC 8D020000 */  lw         $v0, 0x0($t0)
    /* AC390 8009D3E0 3C18BA00 */  lui        $t8, (0xBA000C02 >> 16)
    /* AC394 8009D3E4 37180C02 */  ori        $t8, $t8, (0xBA000C02 & 0xFFFF)
    /* AC398 8009D3E8 244F0008 */  addiu      $t7, $v0, 0x8
    /* AC39C 8009D3EC AD0F0000 */  sw         $t7, 0x0($t0)
    /* AC3A0 8009D3F0 AC400004 */  sw         $zero, 0x4($v0)
    /* AC3A4 8009D3F4 AC580000 */  sw         $t8, 0x0($v0)
    /* AC3A8 8009D3F8 8D020000 */  lw         $v0, 0x0($t0)
    /* AC3AC 8009D3FC 3C0FFFFE */  lui        $t7, (0xFFFE7339 >> 16)
    /* AC3B0 8009D400 3C19FCFF */  lui        $t9, (0xFCFFFFFF >> 16)
    /* AC3B4 8009D404 244E0008 */  addiu      $t6, $v0, 0x8
    /* AC3B8 8009D408 AD0E0000 */  sw         $t6, 0x0($t0)
    /* AC3BC 8009D40C 3739FFFF */  ori        $t9, $t9, (0xFCFFFFFF & 0xFFFF)
    /* AC3C0 8009D410 35EF7339 */  ori        $t7, $t7, (0xFFFE7339 & 0xFFFF)
    /* AC3C4 8009D414 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AC3C8 8009D418 AC590000 */  sw         $t9, 0x0($v0)
    /* AC3CC 8009D41C 8D020000 */  lw         $v0, 0x0($t0)
    /* AC3D0 8009D420 24192000 */  addiu      $t9, $zero, 0x2000
    /* AC3D4 8009D424 3C0EB600 */  lui        $t6, (0xB6000000 >> 16)
    /* AC3D8 8009D428 24580008 */  addiu      $t8, $v0, 0x8
    /* AC3DC 8009D42C AD180000 */  sw         $t8, 0x0($t0)
    /* AC3E0 8009D430 AC590004 */  sw         $t9, 0x4($v0)
    /* AC3E4 8009D434 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AC3E8 8009D438 8D020000 */  lw         $v0, 0x0($t0)
    /* AC3EC 8009D43C 3C180400 */  lui        $t8, (0x400103F >> 16)
    /* AC3F0 8009D440 3718103F */  ori        $t8, $t8, (0x400103F & 0xFFFF)
    /* AC3F4 8009D444 244F0008 */  addiu      $t7, $v0, 0x8
    /* AC3F8 8009D448 AD0F0000 */  sw         $t7, 0x0($t0)
    /* AC3FC 8009D44C AC580000 */  sw         $t8, 0x0($v0)
    /* AC400 8009D450 8FEE0000 */  lw         $t6, 0x0($ra)
    /* AC404 8009D454 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* AC408 8009D458 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* AC40C 8009D45C 25D9FFC0 */  addiu      $t9, $t6, -0x40
    /* AC410 8009D460 03217824 */  and        $t7, $t9, $at
    /* AC414 8009D464 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AC418 8009D468 8D020000 */  lw         $v0, 0x0($t0)
    /* AC41C 8009D46C 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* AC420 8009D470 3C0FB100 */  lui        $t7, (0xB1000204 >> 16)
    /* AC424 8009D474 24580008 */  addiu      $t8, $v0, 0x8
    /* AC428 8009D478 AD180000 */  sw         $t8, 0x0($t0)
    /* AC42C 8009D47C AC400004 */  sw         $zero, 0x4($v0)
    /* AC430 8009D480 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AC434 8009D484 8D020000 */  lw         $v0, 0x0($t0)
    /* AC438 8009D488 24180406 */  addiu      $t8, $zero, 0x406
    /* AC43C 8009D48C 35EF0204 */  ori        $t7, $t7, (0xB1000204 & 0xFFFF)
    /* AC440 8009D490 24590008 */  addiu      $t9, $v0, 0x8
    /* AC444 8009D494 AD190000 */  sw         $t9, 0x0($t0)
    /* AC448 8009D498 AC580004 */  sw         $t8, 0x4($v0)
    /* AC44C 8009D49C AC4F0000 */  sw         $t7, 0x0($v0)
    /* AC450 8009D4A0 8D020000 */  lw         $v0, 0x0($t0)
    /* AC454 8009D4A4 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* AC458 8009D4A8 3C18BA00 */  lui        $t8, (0xBA000C02 >> 16)
    /* AC45C 8009D4AC 244E0008 */  addiu      $t6, $v0, 0x8
    /* AC460 8009D4B0 AD0E0000 */  sw         $t6, 0x0($t0)
    /* AC464 8009D4B4 AC400004 */  sw         $zero, 0x4($v0)
    /* AC468 8009D4B8 AC590000 */  sw         $t9, 0x0($v0)
    /* AC46C 8009D4BC 8D020000 */  lw         $v0, 0x0($t0)
    /* AC470 8009D4C0 240E2000 */  addiu      $t6, $zero, 0x2000
    /* AC474 8009D4C4 37180C02 */  ori        $t8, $t8, (0xBA000C02 & 0xFFFF)
    /* AC478 8009D4C8 244F0008 */  addiu      $t7, $v0, 0x8
    /* AC47C 8009D4CC AD0F0000 */  sw         $t7, 0x0($t0)
    /* AC480 8009D4D0 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AC484 8009D4D4 AC580000 */  sw         $t8, 0x0($v0)
    /* AC488 8009D4D8 8FA40054 */  lw         $a0, 0x54($sp)
    /* AC48C 8009D4DC 8FB90050 */  lw         $t9, 0x50($sp)
  .L8009D4E0_AC490:
    /* AC490 8009D4E0 532000FE */  beql       $t9, $zero, .L8009D8DC_AC88C
    /* AC494 8009D4E4 8D020000 */   lw        $v0, 0x0($t0)
    /* AC498 8009D4E8 8FEA0000 */  lw         $t2, 0x0($ra)
    /* AC49C 8009D4EC 24010002 */  addiu      $at, $zero, 0x2
    /* AC4A0 8009D4F0 254F0010 */  addiu      $t7, $t2, 0x10
    /* AC4A4 8009D4F4 25F80010 */  addiu      $t8, $t7, 0x10
    /* AC4A8 8009D4F8 AFEF0000 */  sw         $t7, 0x0($ra)
    /* AC4AC 8009D4FC 270E0010 */  addiu      $t6, $t8, 0x10
    /* AC4B0 8009D500 AFF80000 */  sw         $t8, 0x0($ra)
    /* AC4B4 8009D504 AFEE0000 */  sw         $t6, 0x0($ra)
    /* AC4B8 8009D508 25D90010 */  addiu      $t9, $t6, 0x10
    /* AC4BC 8009D50C 01E03825 */  or         $a3, $t7, $zero
    /* AC4C0 8009D510 03005825 */  or         $t3, $t8, $zero
    /* AC4C4 8009D514 AFF90000 */  sw         $t9, 0x0($ra)
    /* AC4C8 8009D518 14810010 */  bne        $a0, $at, .L8009D55C_AC50C
    /* AC4CC 8009D51C 01C04825 */   or        $t1, $t6, $zero
    /* AC4D0 8009D520 87A50042 */  lh         $a1, 0x42($sp)
    /* AC4D4 8009D524 87A60046 */  lh         $a2, 0x46($sp)
    /* AC4D8 8009D528 24A3FFEE */  addiu      $v1, $a1, -0x12
    /* AC4DC 8009D52C A5430000 */  sh         $v1, 0x0($t2)
    /* AC4E0 8009D530 A7030000 */  sh         $v1, 0x0($t8)
    /* AC4E4 8009D534 A5E50000 */  sh         $a1, 0x0($t7)
    /* AC4E8 8009D538 85EF0000 */  lh         $t7, 0x0($t7)
    /* AC4EC 8009D53C 24C40009 */  addiu      $a0, $a2, 0x9
    /* AC4F0 8009D540 A5C40002 */  sh         $a0, 0x2($t6)
    /* AC4F4 8009D544 A5CF0000 */  sh         $t7, 0x0($t6)
    /* AC4F8 8009D548 A7040002 */  sh         $a0, 0x2($t8)
    /* AC4FC 8009D54C 24C2FFF7 */  addiu      $v0, $a2, -0x9
    /* AC500 8009D550 A4E20002 */  sh         $v0, 0x2($a3)
    /* AC504 8009D554 1000001B */  b          .L8009D5C4_AC574
    /* AC508 8009D558 A5420002 */   sh        $v0, 0x2($t2)
  .L8009D55C_AC50C:
    /* AC50C 8009D55C 8FB8004C */  lw         $t8, 0x4C($sp)
    /* AC510 8009D560 87A40042 */  lh         $a0, 0x42($sp)
    /* AC514 8009D564 24030030 */  addiu      $v1, $zero, 0x30
    /* AC518 8009D568 13000003 */  beqz       $t8, .L8009D578_AC528
    /* AC51C 8009D56C 24190009 */   addiu     $t9, $zero, 0x9
    /* AC520 8009D570 10000001 */  b          .L8009D578_AC528
    /* AC524 8009D574 00001825 */   or        $v1, $zero, $zero
  .L8009D578_AC528:
    /* AC528 8009D578 00831023 */  subu       $v0, $a0, $v1
    /* AC52C 8009D57C A5420000 */  sh         $v0, 0x0($t2)
    /* AC530 8009D580 A5620000 */  sh         $v0, 0x0($t3)
    /* AC534 8009D584 8FAE004C */  lw         $t6, 0x4C($sp)
    /* AC538 8009D588 24030042 */  addiu      $v1, $zero, 0x42
    /* AC53C 8009D58C 11C00003 */  beqz       $t6, .L8009D59C_AC54C
    /* AC540 8009D590 00000000 */   nop
    /* AC544 8009D594 10000001 */  b          .L8009D59C_AC54C
    /* AC548 8009D598 2403FFEE */   addiu     $v1, $zero, -0x12
  .L8009D59C_AC54C:
    /* AC54C 8009D59C 00831023 */  subu       $v0, $a0, $v1
    /* AC550 8009D5A0 A4E20000 */  sh         $v0, 0x0($a3)
    /* AC554 8009D5A4 A5390002 */  sh         $t9, 0x2($t1)
    /* AC558 8009D5A8 852F0002 */  lh         $t7, 0x2($t1)
    /* AC55C 8009D5AC A5220000 */  sh         $v0, 0x0($t1)
    /* AC560 8009D5B0 2418FFF7 */  addiu      $t8, $zero, -0x9
    /* AC564 8009D5B4 A56F0002 */  sh         $t7, 0x2($t3)
    /* AC568 8009D5B8 A4F80002 */  sh         $t8, 0x2($a3)
    /* AC56C 8009D5BC 84EE0002 */  lh         $t6, 0x2($a3)
    /* AC570 8009D5C0 A54E0002 */  sh         $t6, 0x2($t2)
  .L8009D5C4_AC574:
    /* AC574 8009D5C4 8FA50058 */  lw         $a1, 0x58($sp)
    /* AC578 8009D5C8 24060030 */  addiu      $a2, $zero, 0x30
    /* AC57C 8009D5CC 2419FFFF */  addiu      $t9, $zero, -0x1
    /* AC580 8009D5D0 00A60019 */  multu      $a1, $a2
    /* AC584 8009D5D4 00057823 */  negu       $t7, $a1
    /* AC588 8009D5D8 A4F90004 */  sh         $t9, 0x4($a3)
    /* AC58C 8009D5DC 84E20004 */  lh         $v0, 0x4($a3)
    /* AC590 8009D5E0 24010002 */  addiu      $at, $zero, 0x2
    /* AC594 8009D5E4 A5420004 */  sh         $v0, 0x4($t2)
    /* AC598 8009D5E8 A5220004 */  sh         $v0, 0x4($t1)
    /* AC59C 8009D5EC A5620004 */  sh         $v0, 0x4($t3)
    /* AC5A0 8009D5F0 240200B9 */  addiu      $v0, $zero, 0xB9
    /* AC5A4 8009D5F4 00001812 */  mflo       $v1
    /* AC5A8 8009D5F8 24630600 */  addiu      $v1, $v1, 0x600
    /* AC5AC 8009D5FC A5430008 */  sh         $v1, 0x8($t2)
    /* AC5B0 8009D600 01E60019 */  multu      $t7, $a2
    /* AC5B4 8009D604 A5630008 */  sh         $v1, 0x8($t3)
    /* AC5B8 8009D608 A523000A */  sh         $v1, 0xA($t1)
    /* AC5BC 8009D60C A563000A */  sh         $v1, 0xA($t3)
    /* AC5C0 8009D610 240300FF */  addiu      $v1, $zero, 0xFF
    /* AC5C4 8009D614 3C0F8026 */  lui        $t7, %hi(D_8025CCC0)
    /* AC5C8 8009D618 25EFCCC0 */  addiu      $t7, $t7, %lo(D_8025CCC0)
    /* AC5CC 8009D61C 25F81F80 */  addiu      $t8, $t7, 0x1F80
    /* AC5D0 8009D620 00002012 */  mflo       $a0
    /* AC5D4 8009D624 A4E40008 */  sh         $a0, 0x8($a3)
    /* AC5D8 8009D628 A5240008 */  sh         $a0, 0x8($t1)
    /* AC5DC 8009D62C A4E4000A */  sh         $a0, 0xA($a3)
    /* AC5E0 8009D630 A544000A */  sh         $a0, 0xA($t2)
    /* AC5E4 8009D634 A0E2000C */  sb         $v0, 0xC($a3)
    /* AC5E8 8009D638 A142000C */  sb         $v0, 0xC($t2)
    /* AC5EC 8009D63C A122000C */  sb         $v0, 0xC($t1)
    /* AC5F0 8009D640 A162000C */  sb         $v0, 0xC($t3)
    /* AC5F4 8009D644 A0E3000D */  sb         $v1, 0xD($a3)
    /* AC5F8 8009D648 A143000D */  sb         $v1, 0xD($t2)
    /* AC5FC 8009D64C A123000D */  sb         $v1, 0xD($t1)
    /* AC600 8009D650 A163000D */  sb         $v1, 0xD($t3)
    /* AC604 8009D654 A0E3000E */  sb         $v1, 0xE($a3)
    /* AC608 8009D658 A143000E */  sb         $v1, 0xE($t2)
    /* AC60C 8009D65C A123000E */  sb         $v1, 0xE($t1)
    /* AC610 8009D660 A163000E */  sb         $v1, 0xE($t3)
    /* AC614 8009D664 8FAE0054 */  lw         $t6, 0x54($sp)
    /* AC618 8009D668 8FB90050 */  lw         $t9, 0x50($sp)
    /* AC61C 8009D66C 55C10011 */  bnel       $t6, $at, .L8009D6B4_AC664
    /* AC620 8009D670 8D020000 */   lw        $v0, 0x0($t0)
    /* AC624 8009D674 1738000E */  bne        $t9, $t8, .L8009D6B0_AC660
    /* AC628 8009D678 3C028016 */   lui       $v0, %hi(D_80158FEC)
    /* AC62C 8009D67C 8C428FEC */  lw         $v0, %lo(D_80158FEC)($v0)
    /* AC630 8009D680 5040000C */  beql       $v0, $zero, .L8009D6B4_AC664
    /* AC634 8009D684 8D020000 */   lw        $v0, 0x0($t0)
    /* AC638 8009D688 904E001A */  lbu        $t6, 0x1A($v0)
    /* AC63C 8009D68C 3C028026 */  lui        $v0, %hi(D_8025F780)
    /* AC640 8009D690 24010001 */  addiu      $at, $zero, 0x1
    /* AC644 8009D694 15C10006 */  bne        $t6, $at, .L8009D6B0_AC660
    /* AC648 8009D698 2442F780 */   addiu     $v0, $v0, %lo(D_8025F780)
    /* AC64C 8009D69C 3C018014 */  lui        $at, %hi(D_8013D5E0)
    /* AC650 8009D6A0 240F0001 */  addiu      $t7, $zero, 0x1
    /* AC654 8009D6A4 AFA20050 */  sw         $v0, 0x50($sp)
    /* AC658 8009D6A8 AC22D5E0 */  sw         $v0, %lo(D_8013D5E0)($at)
    /* AC65C 8009D6AC AFAF0028 */  sw         $t7, 0x28($sp)
  .L8009D6B0_AC660:
    /* AC660 8009D6B0 8D020000 */  lw         $v0, 0x0($t0)
  .L8009D6B4_AC664:
    /* AC664 8009D6B4 3C18B900 */  lui        $t8, (0xB900031D >> 16)
    /* AC668 8009D6B8 3C0E0055 */  lui        $t6, (0x552048 >> 16)
    /* AC66C 8009D6BC 24590008 */  addiu      $t9, $v0, 0x8
    /* AC670 8009D6C0 AD190000 */  sw         $t9, 0x0($t0)
    /* AC674 8009D6C4 35CE2048 */  ori        $t6, $t6, (0x552048 & 0xFFFF)
    /* AC678 8009D6C8 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
    /* AC67C 8009D6CC AC580000 */  sw         $t8, 0x0($v0)
    /* AC680 8009D6D0 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AC684 8009D6D4 8D020000 */  lw         $v0, 0x0($t0)
    /* AC688 8009D6D8 3C19BA00 */  lui        $t9, (0xBA000C02 >> 16)
    /* AC68C 8009D6DC 37390C02 */  ori        $t9, $t9, (0xBA000C02 & 0xFFFF)
    /* AC690 8009D6E0 244F0008 */  addiu      $t7, $v0, 0x8
    /* AC694 8009D6E4 AD0F0000 */  sw         $t7, 0x0($t0)
    /* AC698 8009D6E8 24182000 */  addiu      $t8, $zero, 0x2000
    /* AC69C 8009D6EC AC580004 */  sw         $t8, 0x4($v0)
    /* AC6A0 8009D6F0 AC590000 */  sw         $t9, 0x0($v0)
    /* AC6A4 8009D6F4 8D020000 */  lw         $v0, 0x0($t0)
    /* AC6A8 8009D6F8 3C0FBA00 */  lui        $t7, (0xBA001301 >> 16)
    /* AC6AC 8009D6FC 35EF1301 */  ori        $t7, $t7, (0xBA001301 & 0xFFFF)
    /* AC6B0 8009D700 244E0008 */  addiu      $t6, $v0, 0x8
    /* AC6B4 8009D704 AD0E0000 */  sw         $t6, 0x0($t0)
    /* AC6B8 8009D708 3C190008 */  lui        $t9, (0x80000 >> 16)
    /* AC6BC 8009D70C AC590004 */  sw         $t9, 0x4($v0)
    /* AC6C0 8009D710 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AC6C4 8009D714 8D020000 */  lw         $v0, 0x0($t0)
    /* AC6C8 8009D718 3C0F8000 */  lui        $t7, (0x80008000 >> 16)
    /* AC6CC 8009D71C 3C0EBB00 */  lui        $t6, (0xBB000001 >> 16)
    /* AC6D0 8009D720 24580008 */  addiu      $t8, $v0, 0x8
    /* AC6D4 8009D724 AD180000 */  sw         $t8, 0x0($t0)
    /* AC6D8 8009D728 35CE0001 */  ori        $t6, $t6, (0xBB000001 & 0xFFFF)
    /* AC6DC 8009D72C 35EF8000 */  ori        $t7, $t7, (0x80008000 & 0xFFFF)
    /* AC6E0 8009D730 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AC6E4 8009D734 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AC6E8 8009D738 8D020000 */  lw         $v0, 0x0($t0)
    /* AC6EC 8009D73C 3C18FD70 */  lui        $t8, (0xFD700000 >> 16)
    /* AC6F0 8009D740 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* AC6F4 8009D744 24590008 */  addiu      $t9, $v0, 0x8
    /* AC6F8 8009D748 AD190000 */  sw         $t9, 0x0($t0)
    /* AC6FC 8009D74C AC580000 */  sw         $t8, 0x0($v0)
    /* AC700 8009D750 8FAE0050 */  lw         $t6, 0x50($sp)
    /* AC704 8009D754 3C18070C */  lui        $t8, (0x70C0300 >> 16)
    /* AC708 8009D758 37180300 */  ori        $t8, $t8, (0x70C0300 & 0xFFFF)
    /* AC70C 8009D75C AC4E0004 */  sw         $t6, 0x4($v0)
    /* AC710 8009D760 8D020000 */  lw         $v0, 0x0($t0)
    /* AC714 8009D764 3C19F570 */  lui        $t9, (0xF5700000 >> 16)
    /* AC718 8009D768 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* AC71C 8009D76C 244F0008 */  addiu      $t7, $v0, 0x8
    /* AC720 8009D770 AD0F0000 */  sw         $t7, 0x0($t0)
    /* AC724 8009D774 AC580004 */  sw         $t8, 0x4($v0)
    /* AC728 8009D778 AC590000 */  sw         $t9, 0x0($v0)
    /* AC72C 8009D77C 8D020000 */  lw         $v0, 0x0($t0)
    /* AC730 8009D780 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
    /* AC734 8009D784 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
    /* AC738 8009D788 244E0008 */  addiu      $t6, $v0, 0x8
    /* AC73C 8009D78C AD0E0000 */  sw         $t6, 0x0($t0)
    /* AC740 8009D790 AC400004 */  sw         $zero, 0x4($v0)
    /* AC744 8009D794 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AC748 8009D798 8D020000 */  lw         $v0, 0x0($t0)
    /* AC74C 8009D79C 3C0E0711 */  lui        $t6, (0x711F2AB >> 16)
    /* AC750 8009D7A0 35CEF2AB */  ori        $t6, $t6, (0x711F2AB & 0xFFFF)
    /* AC754 8009D7A4 24590008 */  addiu      $t9, $v0, 0x8
    /* AC758 8009D7A8 AD190000 */  sw         $t9, 0x0($t0)
    /* AC75C 8009D7AC AC4E0004 */  sw         $t6, 0x4($v0)
    /* AC760 8009D7B0 AC580000 */  sw         $t8, 0x0($v0)
    /* AC764 8009D7B4 8D020000 */  lw         $v0, 0x0($t0)
    /* AC768 8009D7B8 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* AC76C 8009D7BC 3C0EF568 */  lui        $t6, (0xF5680600 >> 16)
    /* AC770 8009D7C0 244F0008 */  addiu      $t7, $v0, 0x8
    /* AC774 8009D7C4 AD0F0000 */  sw         $t7, 0x0($t0)
    /* AC778 8009D7C8 AC400004 */  sw         $zero, 0x4($v0)
    /* AC77C 8009D7CC AC590000 */  sw         $t9, 0x0($v0)
    /* AC780 8009D7D0 8D020000 */  lw         $v0, 0x0($t0)
    /* AC784 8009D7D4 3C0F000C */  lui        $t7, (0xC0300 >> 16)
    /* AC788 8009D7D8 35EF0300 */  ori        $t7, $t7, (0xC0300 & 0xFFFF)
    /* AC78C 8009D7DC 24580008 */  addiu      $t8, $v0, 0x8
    /* AC790 8009D7E0 AD180000 */  sw         $t8, 0x0($t0)
    /* AC794 8009D7E4 35CE0600 */  ori        $t6, $t6, (0xF5680600 & 0xFFFF)
    /* AC798 8009D7E8 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AC79C 8009D7EC AC4F0004 */  sw         $t7, 0x4($v0)
    /* AC7A0 8009D7F0 8D020000 */  lw         $v0, 0x0($t0)
    /* AC7A4 8009D7F4 3C0E0005 */  lui        $t6, (0x5C05C >> 16)
    /* AC7A8 8009D7F8 35CEC05C */  ori        $t6, $t6, (0x5C05C & 0xFFFF)
    /* AC7AC 8009D7FC 24590008 */  addiu      $t9, $v0, 0x8
    /* AC7B0 8009D800 AD190000 */  sw         $t9, 0x0($t0)
    /* AC7B4 8009D804 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* AC7B8 8009D808 AC580000 */  sw         $t8, 0x0($v0)
    /* AC7BC 8009D80C AC4E0004 */  sw         $t6, 0x4($v0)
    /* AC7C0 8009D810 8D020000 */  lw         $v0, 0x0($t0)
    /* AC7C4 8009D814 3C19FC12 */  lui        $t9, (0xFC127E24 >> 16)
    /* AC7C8 8009D818 37397E24 */  ori        $t9, $t9, (0xFC127E24 & 0xFFFF)
    /* AC7CC 8009D81C 244F0008 */  addiu      $t7, $v0, 0x8
    /* AC7D0 8009D820 AD0F0000 */  sw         $t7, 0x0($t0)
    /* AC7D4 8009D824 2418F3F9 */  addiu      $t8, $zero, -0xC07
    /* AC7D8 8009D828 AC580004 */  sw         $t8, 0x4($v0)
    /* AC7DC 8009D82C AC590000 */  sw         $t9, 0x0($v0)
    /* AC7E0 8009D830 8D020000 */  lw         $v0, 0x0($t0)
    /* AC7E4 8009D834 3C0F0400 */  lui        $t7, (0x400103F >> 16)
    /* AC7E8 8009D838 35EF103F */  ori        $t7, $t7, (0x400103F & 0xFFFF)
    /* AC7EC 8009D83C 244E0008 */  addiu      $t6, $v0, 0x8
    /* AC7F0 8009D840 AD0E0000 */  sw         $t6, 0x0($t0)
    /* AC7F4 8009D844 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AC7F8 8009D848 8FF90000 */  lw         $t9, 0x0($ra)
    /* AC7FC 8009D84C 2738FFC0 */  addiu      $t8, $t9, -0x40
    /* AC800 8009D850 03017024 */  and        $t6, $t8, $at
    /* AC804 8009D854 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AC808 8009D858 8D020000 */  lw         $v0, 0x0($t0)
    /* AC80C 8009D85C 3C180006 */  lui        $t8, (0x60204 >> 16)
    /* AC810 8009D860 3C19B100 */  lui        $t9, (0xB1000204 >> 16)
    /* AC814 8009D864 244F0008 */  addiu      $t7, $v0, 0x8
    /* AC818 8009D868 AD0F0000 */  sw         $t7, 0x0($t0)
    /* AC81C 8009D86C 37390204 */  ori        $t9, $t9, (0xB1000204 & 0xFFFF)
    /* AC820 8009D870 37180204 */  ori        $t8, $t8, (0x60204 & 0xFFFF)
    /* AC824 8009D874 AC580004 */  sw         $t8, 0x4($v0)
    /* AC828 8009D878 AC590000 */  sw         $t9, 0x0($v0)
    /* AC82C 8009D87C 8D020000 */  lw         $v0, 0x0($t0)
    /* AC830 8009D880 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* AC834 8009D884 3C18FCFF */  lui        $t8, (0xFCFFFFFF >> 16)
    /* AC838 8009D888 244E0008 */  addiu      $t6, $v0, 0x8
    /* AC83C 8009D88C AD0E0000 */  sw         $t6, 0x0($t0)
    /* AC840 8009D890 AC400004 */  sw         $zero, 0x4($v0)
    /* AC844 8009D894 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AC848 8009D898 8D020000 */  lw         $v0, 0x0($t0)
    /* AC84C 8009D89C 3C0EFFFE */  lui        $t6, (0xFFFE793C >> 16)
    /* AC850 8009D8A0 35CE793C */  ori        $t6, $t6, (0xFFFE793C & 0xFFFF)
    /* AC854 8009D8A4 24590008 */  addiu      $t9, $v0, 0x8
    /* AC858 8009D8A8 AD190000 */  sw         $t9, 0x0($t0)
    /* AC85C 8009D8AC 3718FFFF */  ori        $t8, $t8, (0xFCFFFFFF & 0xFFFF)
    /* AC860 8009D8B0 AC580000 */  sw         $t8, 0x0($v0)
    /* AC864 8009D8B4 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AC868 8009D8B8 8D020000 */  lw         $v0, 0x0($t0)
    /* AC86C 8009D8BC 3C188000 */  lui        $t8, (0x80008000 >> 16)
    /* AC870 8009D8C0 37188000 */  ori        $t8, $t8, (0x80008000 & 0xFFFF)
    /* AC874 8009D8C4 244F0008 */  addiu      $t7, $v0, 0x8
    /* AC878 8009D8C8 AD0F0000 */  sw         $t7, 0x0($t0)
    /* AC87C 8009D8CC 3C19BB00 */  lui        $t9, (0xBB000000 >> 16)
    /* AC880 8009D8D0 AC590000 */  sw         $t9, 0x0($v0)
    /* AC884 8009D8D4 AC580004 */  sw         $t8, 0x4($v0)
    /* AC888 8009D8D8 8D020000 */  lw         $v0, 0x0($t0)
  .L8009D8DC_AC88C:
    /* AC88C 8009D8DC 3C0FBD00 */  lui        $t7, (0xBD000000 >> 16)
    /* AC890 8009D8E0 244E0008 */  addiu      $t6, $v0, 0x8
    /* AC894 8009D8E4 AD0E0000 */  sw         $t6, 0x0($t0)
    /* AC898 8009D8E8 AC400004 */  sw         $zero, 0x4($v0)
    /* AC89C 8009D8EC AC4F0000 */  sw         $t7, 0x0($v0)
    /* AC8A0 8009D8F0 8FBF001C */  lw         $ra, 0x1C($sp)
    /* AC8A4 8009D8F4 27BD0040 */  addiu      $sp, $sp, 0x40
    /* AC8A8 8009D8F8 03E00008 */  jr         $ra
    /* AC8AC 8009D8FC 00000000 */   nop
endlabel func_8009C6CC_AB67C
