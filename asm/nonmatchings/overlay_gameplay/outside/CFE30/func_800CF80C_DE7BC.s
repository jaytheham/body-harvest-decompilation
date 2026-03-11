nonmatching func_800CF80C_DE7BC, 0x13C

glabel func_800CF80C_DE7BC
    /* DE7BC 800CF80C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* DE7C0 800CF810 AFBF0024 */  sw         $ra, 0x24($sp)
    /* DE7C4 800CF814 AFA40028 */  sw         $a0, 0x28($sp)
    /* DE7C8 800CF818 AFA5002C */  sw         $a1, 0x2C($sp)
    /* DE7CC 800CF81C AFA60030 */  sw         $a2, 0x30($sp)
    /* DE7D0 800CF820 AFA70034 */  sw         $a3, 0x34($sp)
    /* DE7D4 800CF824 24050001 */  addiu      $a1, $zero, 0x1
    /* DE7D8 800CF828 0C0305ED */  jal        func_800C17B4_D0764
    /* DE7DC 800CF82C 2404000A */   addiu     $a0, $zero, 0xA
    /* DE7E0 800CF830 00024400 */  sll        $t0, $v0, 16
    /* DE7E4 800CF834 00087403 */  sra        $t6, $t0, 16
    /* DE7E8 800CF838 2401FFFD */  addiu      $at, $zero, -0x3
    /* DE7EC 800CF83C 1041003E */  beq        $v0, $at, .L800CF938_DE8E8
    /* DE7F0 800CF840 01C04025 */   or        $t0, $t6, $zero
    /* DE7F4 800CF844 240B001C */  addiu      $t3, $zero, 0x1C
    /* DE7F8 800CF848 004B0019 */  multu      $v0, $t3
    /* DE7FC 800CF84C 3C0A8015 */  lui        $t2, %hi(D_80154318)
    /* DE800 800CF850 254A4318 */  addiu      $t2, $t2, %lo(D_80154318)
    /* DE804 800CF854 3C048014 */  lui        $a0, %hi(D_8013DF80)
    /* DE808 800CF858 93A90047 */  lbu        $t1, 0x47($sp)
    /* DE80C 800CF85C 87B80036 */  lh         $t8, 0x36($sp)
    /* DE810 800CF860 2484DF80 */  addiu      $a0, $a0, %lo(D_8013DF80)
    /* DE814 800CF864 87A5002E */  lh         $a1, 0x2E($sp)
    /* DE818 800CF868 87A60032 */  lh         $a2, 0x32($sp)
    /* DE81C 800CF86C 87B9002A */  lh         $t9, 0x2A($sp)
    /* DE820 800CF870 00007812 */  mflo       $t7
    /* DE824 800CF874 014F1821 */  addu       $v1, $t2, $t7
    /* DE828 800CF878 908C0000 */  lbu        $t4, 0x0($a0)
    /* DE82C 800CF87C 908D0001 */  lbu        $t5, 0x1($a0)
    /* DE830 800CF880 908E0002 */  lbu        $t6, 0x2($a0)
    /* DE834 800CF884 01207825 */  or         $t7, $t1, $zero
    /* DE838 800CF888 A4780002 */  sh         $t8, 0x2($v1)
    /* DE83C 800CF88C 31F80001 */  andi       $t8, $t7, 0x1
    /* DE840 800CF890 A0690018 */  sb         $t1, 0x18($v1)
    /* DE844 800CF894 03004825 */  or         $t1, $t8, $zero
    /* DE848 800CF898 A465000A */  sh         $a1, 0xA($v1)
    /* DE84C 800CF89C A466000C */  sh         $a2, 0xC($v1)
    /* DE850 800CF8A0 A4790008 */  sh         $t9, 0x8($v1)
    /* DE854 800CF8A4 A06C000E */  sb         $t4, 0xE($v1)
    /* DE858 800CF8A8 A06D000F */  sb         $t5, 0xF($v1)
    /* DE85C 800CF8AC 1700000C */  bnez       $t8, .L800CF8E0_DE890
    /* DE860 800CF8B0 A06E0010 */   sb        $t6, 0x10($v1)
    /* DE864 800CF8B4 010B0019 */  multu      $t0, $t3
    /* DE868 800CF8B8 24190001 */  addiu      $t9, $zero, 0x1
    /* DE86C 800CF8BC 24070003 */  addiu      $a3, $zero, 0x3
    /* DE870 800CF8C0 00006012 */  mflo       $t4
    /* DE874 800CF8C4 014C6821 */  addu       $t5, $t2, $t4
    /* DE878 800CF8C8 ADB90014 */  sw         $t9, 0x14($t5)
    /* DE87C 800CF8CC A3B80047 */  sb         $t8, 0x47($sp)
    /* DE880 800CF8D0 0C04DCAD */  jal        func_801372B4_146264
    /* DE884 800CF8D4 87A4002A */   lh        $a0, 0x2A($sp)
    /* DE888 800CF8D8 1000000B */  b          .L800CF908_DE8B8
    /* DE88C 800CF8DC 93A90047 */   lbu       $t1, 0x47($sp)
  .L800CF8E0_DE890:
    /* DE890 800CF8E0 010B0019 */  multu      $t0, $t3
    /* DE894 800CF8E4 240E0019 */  addiu      $t6, $zero, 0x19
    /* DE898 800CF8E8 24070004 */  addiu      $a3, $zero, 0x4
    /* DE89C 800CF8EC 00007812 */  mflo       $t7
    /* DE8A0 800CF8F0 014FC021 */  addu       $t8, $t2, $t7
    /* DE8A4 800CF8F4 AF0E0014 */  sw         $t6, 0x14($t8)
    /* DE8A8 800CF8F8 A3A90047 */  sb         $t1, 0x47($sp)
    /* DE8AC 800CF8FC 0C04DCAD */  jal        func_801372B4_146264
    /* DE8B0 800CF900 87A4002A */   lh        $a0, 0x2A($sp)
    /* DE8B4 800CF904 93A90047 */  lbu        $t1, 0x47($sp)
  .L800CF908_DE8B8:
    /* DE8B8 800CF908 93AC003B */  lbu        $t4, 0x3B($sp)
    /* DE8BC 800CF90C 93B9003F */  lbu        $t9, 0x3F($sp)
    /* DE8C0 800CF910 93AD0043 */  lbu        $t5, 0x43($sp)
    /* DE8C4 800CF914 87A40036 */  lh         $a0, 0x36($sp)
    /* DE8C8 800CF918 87A5002A */  lh         $a1, 0x2A($sp)
    /* DE8CC 800CF91C 87A6002E */  lh         $a2, 0x2E($sp)
    /* DE8D0 800CF920 87A70032 */  lh         $a3, 0x32($sp)
    /* DE8D4 800CF924 AFA9001C */  sw         $t1, 0x1C($sp)
    /* DE8D8 800CF928 AFAC0010 */  sw         $t4, 0x10($sp)
    /* DE8DC 800CF92C AFB90014 */  sw         $t9, 0x14($sp)
    /* DE8E0 800CF930 0C032F78 */  jal        func_800CBDE0_DAD90
    /* DE8E4 800CF934 AFAD0018 */   sw        $t5, 0x18($sp)
  .L800CF938_DE8E8:
    /* DE8E8 800CF938 8FBF0024 */  lw         $ra, 0x24($sp)
    /* DE8EC 800CF93C 27BD0028 */  addiu      $sp, $sp, 0x28
    /* DE8F0 800CF940 03E00008 */  jr         $ra
    /* DE8F4 800CF944 00000000 */   nop
endlabel func_800CF80C_DE7BC
