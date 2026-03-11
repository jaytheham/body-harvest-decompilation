nonmatching func_800CE6E8_DD698, 0x718

glabel func_800CE6E8_DD698
    /* DD698 800CE6E8 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* DD69C 800CE6EC 308E00FF */  andi       $t6, $a0, 0xFF
    /* DD6A0 800CE6F0 3C068006 */  lui        $a2, %hi(D_8005BB2C)
    /* DD6A4 800CE6F4 24C6BB2C */  addiu      $a2, $a2, %lo(D_8005BB2C)
    /* DD6A8 800CE6F8 000E7880 */  sll        $t7, $t6, 2
    /* DD6AC 800CE6FC 8CC20000 */  lw         $v0, 0x0($a2)
    /* DD6B0 800CE700 01EE7823 */  subu       $t7, $t7, $t6
    /* DD6B4 800CE704 000F7880 */  sll        $t7, $t7, 2
    /* DD6B8 800CE708 3C038015 */  lui        $v1, %hi(D_8015408E)
    /* DD6BC 800CE70C 006F1821 */  addu       $v1, $v1, $t7
    /* DD6C0 800CE710 8463408E */  lh         $v1, %lo(D_8015408E)($v1)
    /* DD6C4 800CE714 AFB00018 */  sw         $s0, 0x18($sp)
    /* DD6C8 800CE718 24580008 */  addiu      $t8, $v0, 0x8
    /* DD6CC 800CE71C AFBF003C */  sw         $ra, 0x3C($sp)
    /* DD6D0 800CE720 AFBE0038 */  sw         $fp, 0x38($sp)
    /* DD6D4 800CE724 AFB70034 */  sw         $s7, 0x34($sp)
    /* DD6D8 800CE728 AFB60030 */  sw         $s6, 0x30($sp)
    /* DD6DC 800CE72C AFB5002C */  sw         $s5, 0x2C($sp)
    /* DD6E0 800CE730 AFB40028 */  sw         $s4, 0x28($sp)
    /* DD6E4 800CE734 AFB30024 */  sw         $s3, 0x24($sp)
    /* DD6E8 800CE738 AFB20020 */  sw         $s2, 0x20($sp)
    /* DD6EC 800CE73C AFB1001C */  sw         $s1, 0x1C($sp)
    /* DD6F0 800CE740 AFA40050 */  sw         $a0, 0x50($sp)
    /* DD6F4 800CE744 ACD80000 */  sw         $t8, 0x0($a2)
    /* DD6F8 800CE748 3C10E700 */  lui        $s0, (0xE7000000 >> 16)
    /* DD6FC 800CE74C AC500000 */  sw         $s0, 0x0($v0)
    /* DD700 800CE750 AC400004 */  sw         $zero, 0x4($v0)
    /* DD704 800CE754 8CC20000 */  lw         $v0, 0x0($a2)
    /* DD708 800CE758 3C0FFF32 */  lui        $t7, (0xFF327F3F >> 16)
    /* DD70C 800CE75C 3C0EFCFF */  lui        $t6, (0xFCFF99FF >> 16)
    /* DD710 800CE760 24590008 */  addiu      $t9, $v0, 0x8
    /* DD714 800CE764 ACD90000 */  sw         $t9, 0x0($a2)
    /* DD718 800CE768 35CE99FF */  ori        $t6, $t6, (0xFCFF99FF & 0xFFFF)
    /* DD71C 800CE76C 35EF7F3F */  ori        $t7, $t7, (0xFF327F3F & 0xFFFF)
    /* DD720 800CE770 AC4F0004 */  sw         $t7, 0x4($v0)
    /* DD724 800CE774 AC4E0000 */  sw         $t6, 0x0($v0)
    /* DD728 800CE778 8CC20000 */  lw         $v0, 0x0($a2)
    /* DD72C 800CE77C 3C0F0101 */  lui        $t7, %hi(D_100BD00)
    /* DD730 800CE780 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* DD734 800CE784 24580008 */  addiu      $t8, $v0, 0x8
    /* DD738 800CE788 ACD80000 */  sw         $t8, 0x0($a2)
    /* DD73C 800CE78C AC400004 */  sw         $zero, 0x4($v0)
    /* DD740 800CE790 AC500000 */  sw         $s0, 0x0($v0)
    /* DD744 800CE794 8CC20000 */  lw         $v0, 0x0($a2)
    /* DD748 800CE798 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* DD74C 800CE79C 25EFBD00 */  addiu      $t7, $t7, %lo(D_100BD00)
    /* DD750 800CE7A0 24590008 */  addiu      $t9, $v0, 0x8
    /* DD754 800CE7A4 ACD90000 */  sw         $t9, 0x0($a2)
    /* DD758 800CE7A8 01E1C024 */  and        $t8, $t7, $at
    /* DD75C 800CE7AC 3C0EFD90 */  lui        $t6, (0xFD900000 >> 16)
    /* DD760 800CE7B0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* DD764 800CE7B4 AC580004 */  sw         $t8, 0x4($v0)
    /* DD768 800CE7B8 8CC20000 */  lw         $v0, 0x0($a2)
    /* DD76C 800CE7BC 3C0F0708 */  lui        $t7, (0x7080200 >> 16)
    /* DD770 800CE7C0 35EF0200 */  ori        $t7, $t7, (0x7080200 & 0xFFFF)
    /* DD774 800CE7C4 24590008 */  addiu      $t9, $v0, 0x8
    /* DD778 800CE7C8 ACD90000 */  sw         $t9, 0x0($a2)
    /* DD77C 800CE7CC 3C0EF590 */  lui        $t6, (0xF5900000 >> 16)
    /* DD780 800CE7D0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* DD784 800CE7D4 AC4F0004 */  sw         $t7, 0x4($v0)
    /* DD788 800CE7D8 8CC20000 */  lw         $v0, 0x0($a2)
    /* DD78C 800CE7DC 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* DD790 800CE7E0 3C0FF300 */  lui        $t7, (0xF3000000 >> 16)
    /* DD794 800CE7E4 24580008 */  addiu      $t8, $v0, 0x8
    /* DD798 800CE7E8 ACD80000 */  sw         $t8, 0x0($a2)
    /* DD79C 800CE7EC AC400004 */  sw         $zero, 0x4($v0)
    /* DD7A0 800CE7F0 AC590000 */  sw         $t9, 0x0($v0)
    /* DD7A4 800CE7F4 8CC20000 */  lw         $v0, 0x0($a2)
    /* DD7A8 800CE7F8 3C18070F */  lui        $t8, (0x70FF400 >> 16)
    /* DD7AC 800CE7FC 3718F400 */  ori        $t8, $t8, (0x70FF400 & 0xFFFF)
    /* DD7B0 800CE800 244E0008 */  addiu      $t6, $v0, 0x8
    /* DD7B4 800CE804 ACCE0000 */  sw         $t6, 0x0($a2)
    /* DD7B8 800CE808 AC580004 */  sw         $t8, 0x4($v0)
    /* DD7BC 800CE80C AC4F0000 */  sw         $t7, 0x0($v0)
    /* DD7C0 800CE810 8CC20000 */  lw         $v0, 0x0($a2)
    /* DD7C4 800CE814 2409001C */  addiu      $t1, $zero, 0x1C
    /* DD7C8 800CE818 00690019 */  multu      $v1, $t1
    /* DD7CC 800CE81C 24590008 */  addiu      $t9, $v0, 0x8
    /* DD7D0 800CE820 ACD90000 */  sw         $t9, 0x0($a2)
    /* DD7D4 800CE824 AC400004 */  sw         $zero, 0x4($v0)
    /* DD7D8 800CE828 AC500000 */  sw         $s0, 0x0($v0)
    /* DD7DC 800CE82C 8CC20000 */  lw         $v0, 0x0($a2)
    /* DD7E0 800CE830 3C0FF580 */  lui        $t7, (0xF5800400 >> 16)
    /* DD7E4 800CE834 3C180008 */  lui        $t8, (0x80200 >> 16)
    /* DD7E8 800CE838 244E0008 */  addiu      $t6, $v0, 0x8
    /* DD7EC 800CE83C ACCE0000 */  sw         $t6, 0x0($a2)
    /* DD7F0 800CE840 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
    /* DD7F4 800CE844 35EF0400 */  ori        $t7, $t7, (0xF5800400 & 0xFFFF)
    /* DD7F8 800CE848 AC4F0000 */  sw         $t7, 0x0($v0)
    /* DD7FC 800CE84C AC580004 */  sw         $t8, 0x4($v0)
    /* DD800 800CE850 8CC20000 */  lw         $v0, 0x0($a2)
    /* DD804 800CE854 3C0F0007 */  lui        $t7, (0x7C07C >> 16)
    /* DD808 800CE858 35EFC07C */  ori        $t7, $t7, (0x7C07C & 0xFFFF)
    /* DD80C 800CE85C 24590008 */  addiu      $t9, $v0, 0x8
    /* DD810 800CE860 ACD90000 */  sw         $t9, 0x0($a2)
    /* DD814 800CE864 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* DD818 800CE868 3C058015 */  lui        $a1, %hi(D_80154318)
    /* DD81C 800CE86C 0000C012 */  mflo       $t8
    /* DD820 800CE870 24A54318 */  addiu      $a1, $a1, %lo(D_80154318)
    /* DD824 800CE874 AC4E0000 */  sw         $t6, 0x0($v0)
    /* DD828 800CE878 AC4F0004 */  sw         $t7, 0x4($v0)
    /* DD82C 800CE87C 00B81021 */  addu       $v0, $a1, $t8
    /* DD830 800CE880 845E0004 */  lh         $fp, 0x4($v0)
    /* DD834 800CE884 844F0008 */  lh         $t7, 0x8($v0)
    /* DD838 800CE888 03C90019 */  multu      $fp, $t1
    /* DD83C 800CE88C 0000C812 */  mflo       $t9
    /* DD840 800CE890 00B92021 */  addu       $a0, $a1, $t9
    /* DD844 800CE894 848E0008 */  lh         $t6, 0x8($a0)
    /* DD848 800CE898 01CF082A */  slt        $at, $t6, $t7
    /* DD84C 800CE89C 5020000C */  beql       $at, $zero, .L800CE8D0_DD880
    /* DD850 800CE8A0 848E000C */   lh        $t6, 0xC($a0)
    /* DD854 800CE8A4 8498000C */  lh         $t8, 0xC($a0)
    /* DD858 800CE8A8 8459000C */  lh         $t9, 0xC($v0)
    /* DD85C 800CE8AC 2408000F */  addiu      $t0, $zero, 0xF
    /* DD860 800CE8B0 0319082A */  slt        $at, $t8, $t9
    /* DD864 800CE8B4 10200003 */  beqz       $at, .L800CE8C4_DD874
    /* DD868 800CE8B8 00000000 */   nop
    /* DD86C 800CE8BC 1000000C */  b          .L800CE8F0_DD8A0
    /* DD870 800CE8C0 2407FFF1 */   addiu     $a3, $zero, -0xF
  .L800CE8C4_DD874:
    /* DD874 800CE8C4 1000000A */  b          .L800CE8F0_DD8A0
    /* DD878 800CE8C8 2407000F */   addiu     $a3, $zero, 0xF
    /* DD87C 800CE8CC 848E000C */  lh         $t6, 0xC($a0)
  .L800CE8D0_DD880:
    /* DD880 800CE8D0 844F000C */  lh         $t7, 0xC($v0)
    /* DD884 800CE8D4 2408FFF1 */  addiu      $t0, $zero, -0xF
    /* DD888 800CE8D8 2407000F */  addiu      $a3, $zero, 0xF
    /* DD88C 800CE8DC 01CF082A */  slt        $at, $t6, $t7
    /* DD890 800CE8E0 10200003 */  beqz       $at, .L800CE8F0_DD8A0
    /* DD894 800CE8E4 00000000 */   nop
    /* DD898 800CE8E8 10000001 */  b          .L800CE8F0_DD8A0
    /* DD89C 800CE8EC 2407FFF1 */   addiu     $a3, $zero, -0xF
  .L800CE8F0_DD8A0:
    /* DD8A0 800CE8F0 2401FFFB */  addiu      $at, $zero, -0x5
    /* DD8A4 800CE8F4 10610136 */  beq        $v1, $at, .L800CEDD0_DDD80
    /* DD8A8 800CE8F8 2401FFFA */   addiu     $at, $zero, -0x6
    /* DD8AC 800CE8FC 10610134 */  beq        $v1, $at, .L800CEDD0_DDD80
    /* DD8B0 800CE900 24170800 */   addiu     $s7, $zero, 0x800
    /* DD8B4 800CE904 3C108006 */  lui        $s0, %hi(D_8005BB34)
    /* DD8B8 800CE908 2610BB34 */  addiu      $s0, $s0, %lo(D_8005BB34)
    /* DD8BC 800CE90C 241600B4 */  addiu      $s6, $zero, 0xB4
    /* DD8C0 800CE910 241500FF */  addiu      $s5, $zero, 0xFF
    /* DD8C4 800CE914 241400AA */  addiu      $s4, $zero, 0xAA
    /* DD8C8 800CE918 24130096 */  addiu      $s3, $zero, 0x96
    /* DD8CC 800CE91C 0003C0C0 */  sll        $t8, $v1, 3
  .L800CE920_DD8D0:
    /* DD8D0 800CE920 0303C023 */  subu       $t8, $t8, $v1
    /* DD8D4 800CE924 3C198015 */  lui        $t9, %hi(D_80154318)
    /* DD8D8 800CE928 27394318 */  addiu      $t9, $t9, %lo(D_80154318)
    /* DD8DC 800CE92C 0018C080 */  sll        $t8, $t8, 2
    /* DD8E0 800CE930 03191021 */  addu       $v0, $t8, $t9
    /* DD8E4 800CE934 845E0004 */  lh         $fp, 0x4($v0)
    /* DD8E8 800CE938 2401FFFB */  addiu      $at, $zero, -0x5
    /* DD8EC 800CE93C 53C1011D */  beql       $fp, $at, .L800CEDB4_DDD64
    /* DD8F0 800CE940 001E1C00 */   sll       $v1, $fp, 16
    /* DD8F4 800CE944 844E0008 */  lh         $t6, 0x8($v0)
    /* DD8F8 800CE948 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DD8FC 800CE94C 24520008 */  addiu      $s2, $v0, 0x8
    /* DD900 800CE950 A5EE0000 */  sh         $t6, 0x0($t7)
    /* DD904 800CE954 A3A80042 */  sb         $t0, 0x42($sp)
    /* DD908 800CE958 0C000E38 */  jal        func_800038E0_44E0
    /* DD90C 800CE95C A3A70043 */   sb        $a3, 0x43($sp)
    /* DD910 800CE960 24010005 */  addiu      $at, $zero, 0x5
    /* DD914 800CE964 0041001A */  div        $zero, $v0, $at
    /* DD918 800CE968 86590002 */  lh         $t9, 0x2($s2)
    /* DD91C 800CE96C 0000C010 */  mfhi       $t8
    /* DD920 800CE970 03197021 */  addu       $t6, $t8, $t9
    /* DD924 800CE974 8E180000 */  lw         $t8, 0x0($s0)
    /* DD928 800CE978 25CF000F */  addiu      $t7, $t6, 0xF
    /* DD92C 800CE97C A70F0002 */  sh         $t7, 0x2($t8)
    /* DD930 800CE980 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DD934 800CE984 86590004 */  lh         $t9, 0x4($s2)
    /* DD938 800CE988 A5D90004 */  sh         $t9, 0x4($t6)
    /* DD93C 800CE98C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DD940 800CE990 A5E00006 */  sh         $zero, 0x6($t7)
    /* DD944 800CE994 8E180000 */  lw         $t8, 0x0($s0)
    /* DD948 800CE998 A7000008 */  sh         $zero, 0x8($t8)
    /* DD94C 800CE99C 8E190000 */  lw         $t9, 0x0($s0)
    /* DD950 800CE9A0 A720000A */  sh         $zero, 0xA($t9)
    /* DD954 800CE9A4 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DD958 800CE9A8 A1D3000C */  sb         $s3, 0xC($t6)
    /* DD95C 800CE9AC 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DD960 800CE9B0 A1F4000D */  sb         $s4, 0xD($t7)
    /* DD964 800CE9B4 8E180000 */  lw         $t8, 0x0($s0)
    /* DD968 800CE9B8 A315000E */  sb         $s5, 0xE($t8)
    /* DD96C 800CE9BC 8E190000 */  lw         $t9, 0x0($s0)
    /* DD970 800CE9C0 A336000F */  sb         $s6, 0xF($t9)
    /* DD974 800CE9C4 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DD978 800CE9C8 25CF0010 */  addiu      $t7, $t6, 0x10
    /* DD97C 800CE9CC AE0F0000 */  sw         $t7, 0x0($s0)
    /* DD980 800CE9D0 86580000 */  lh         $t8, 0x0($s2)
    /* DD984 800CE9D4 0C000E38 */  jal        func_800038E0_44E0
    /* DD988 800CE9D8 A5F80000 */   sh        $t8, 0x0($t7)
    /* DD98C 800CE9DC 24010005 */  addiu      $at, $zero, 0x5
    /* DD990 800CE9E0 0041001A */  div        $zero, $v0, $at
    /* DD994 800CE9E4 864E0002 */  lh         $t6, 0x2($s2)
    /* DD998 800CE9E8 00007810 */  mfhi       $t7
    /* DD99C 800CE9EC 01CFC023 */  subu       $t8, $t6, $t7
    /* DD9A0 800CE9F0 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DD9A4 800CE9F4 2719FFF1 */  addiu      $t9, $t8, -0xF
    /* DD9A8 800CE9F8 A5D90002 */  sh         $t9, 0x2($t6)
    /* DD9AC 800CE9FC 8E180000 */  lw         $t8, 0x0($s0)
    /* DD9B0 800CEA00 864F0004 */  lh         $t7, 0x4($s2)
    /* DD9B4 800CEA04 A70F0004 */  sh         $t7, 0x4($t8)
    /* DD9B8 800CEA08 8E190000 */  lw         $t9, 0x0($s0)
    /* DD9BC 800CEA0C A7200006 */  sh         $zero, 0x6($t9)
    /* DD9C0 800CEA10 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DD9C4 800CEA14 A5C00008 */  sh         $zero, 0x8($t6)
    /* DD9C8 800CEA18 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DD9CC 800CEA1C A5F7000A */  sh         $s7, 0xA($t7)
    /* DD9D0 800CEA20 8E180000 */  lw         $t8, 0x0($s0)
    /* DD9D4 800CEA24 A313000C */  sb         $s3, 0xC($t8)
    /* DD9D8 800CEA28 8E190000 */  lw         $t9, 0x0($s0)
    /* DD9DC 800CEA2C A334000D */  sb         $s4, 0xD($t9)
    /* DD9E0 800CEA30 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DD9E4 800CEA34 A1D5000E */  sb         $s5, 0xE($t6)
    /* DD9E8 800CEA38 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DD9EC 800CEA3C 001E70C0 */  sll        $t6, $fp, 3
    /* DD9F0 800CEA40 01DE7023 */  subu       $t6, $t6, $fp
    /* DD9F4 800CEA44 A1F6000F */  sb         $s6, 0xF($t7)
    /* DD9F8 800CEA48 8E180000 */  lw         $t8, 0x0($s0)
    /* DD9FC 800CEA4C 000E7080 */  sll        $t6, $t6, 2
    /* DDA00 800CEA50 25CF0008 */  addiu      $t7, $t6, 0x8
    /* DDA04 800CEA54 27190010 */  addiu      $t9, $t8, 0x10
    /* DDA08 800CEA58 3C188015 */  lui        $t8, %hi(D_80154318)
    /* DDA0C 800CEA5C AE190000 */  sw         $t9, 0x0($s0)
    /* DDA10 800CEA60 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* DDA14 800CEA64 01F88821 */  addu       $s1, $t7, $t8
    /* DDA18 800CEA68 86390000 */  lh         $t9, 0x0($s1)
    /* DDA1C 800CEA6C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDA20 800CEA70 0C000E38 */  jal        func_800038E0_44E0
    /* DDA24 800CEA74 A5D90000 */   sh        $t9, 0x0($t6)
    /* DDA28 800CEA78 24010005 */  addiu      $at, $zero, 0x5
    /* DDA2C 800CEA7C 0041001A */  div        $zero, $v0, $at
    /* DDA30 800CEA80 862F0002 */  lh         $t7, 0x2($s1)
    /* DDA34 800CEA84 0000C010 */  mfhi       $t8
    /* DDA38 800CEA88 01F8C823 */  subu       $t9, $t7, $t8
    /* DDA3C 800CEA8C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDA40 800CEA90 272EFFF1 */  addiu      $t6, $t9, -0xF
    /* DDA44 800CEA94 A5EE0002 */  sh         $t6, 0x2($t7)
    /* DDA48 800CEA98 8E190000 */  lw         $t9, 0x0($s0)
    /* DDA4C 800CEA9C 86380004 */  lh         $t8, 0x4($s1)
    /* DDA50 800CEAA0 A7380004 */  sh         $t8, 0x4($t9)
    /* DDA54 800CEAA4 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDA58 800CEAA8 A5C00006 */  sh         $zero, 0x6($t6)
    /* DDA5C 800CEAAC 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDA60 800CEAB0 A5F70008 */  sh         $s7, 0x8($t7)
    /* DDA64 800CEAB4 8E180000 */  lw         $t8, 0x0($s0)
    /* DDA68 800CEAB8 A717000A */  sh         $s7, 0xA($t8)
    /* DDA6C 800CEABC 8E190000 */  lw         $t9, 0x0($s0)
    /* DDA70 800CEAC0 A333000C */  sb         $s3, 0xC($t9)
    /* DDA74 800CEAC4 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDA78 800CEAC8 A1D4000D */  sb         $s4, 0xD($t6)
    /* DDA7C 800CEACC 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDA80 800CEAD0 A1F5000E */  sb         $s5, 0xE($t7)
    /* DDA84 800CEAD4 8E180000 */  lw         $t8, 0x0($s0)
    /* DDA88 800CEAD8 A316000F */  sb         $s6, 0xF($t8)
    /* DDA8C 800CEADC 8E190000 */  lw         $t9, 0x0($s0)
    /* DDA90 800CEAE0 272E0010 */  addiu      $t6, $t9, 0x10
    /* DDA94 800CEAE4 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DDA98 800CEAE8 862F0000 */  lh         $t7, 0x0($s1)
    /* DDA9C 800CEAEC 0C000E38 */  jal        func_800038E0_44E0
    /* DDAA0 800CEAF0 A5CF0000 */   sh        $t7, 0x0($t6)
    /* DDAA4 800CEAF4 24010005 */  addiu      $at, $zero, 0x5
    /* DDAA8 800CEAF8 0041001A */  div        $zero, $v0, $at
    /* DDAAC 800CEAFC 862E0002 */  lh         $t6, 0x2($s1)
    /* DDAB0 800CEB00 0000C810 */  mfhi       $t9
    /* DDAB4 800CEB04 83A70043 */  lb         $a3, 0x43($sp)
    /* DDAB8 800CEB08 032E7821 */  addu       $t7, $t9, $t6
    /* DDABC 800CEB0C 8E190000 */  lw         $t9, 0x0($s0)
    /* DDAC0 800CEB10 83A80042 */  lb         $t0, 0x42($sp)
    /* DDAC4 800CEB14 25F8000F */  addiu      $t8, $t7, 0xF
    /* DDAC8 800CEB18 A7380002 */  sh         $t8, 0x2($t9)
    /* DDACC 800CEB1C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDAD0 800CEB20 862E0004 */  lh         $t6, 0x4($s1)
    /* DDAD4 800CEB24 3C068006 */  lui        $a2, %hi(D_8005BB2C)
    /* DDAD8 800CEB28 24C6BB2C */  addiu      $a2, $a2, %lo(D_8005BB2C)
    /* DDADC 800CEB2C A5EE0004 */  sh         $t6, 0x4($t7)
    /* DDAE0 800CEB30 8E180000 */  lw         $t8, 0x0($s0)
    /* DDAE4 800CEB34 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* DDAE8 800CEB38 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* DDAEC 800CEB3C A7000006 */  sh         $zero, 0x6($t8)
    /* DDAF0 800CEB40 8E190000 */  lw         $t9, 0x0($s0)
    /* DDAF4 800CEB44 3C098015 */  lui        $t1, %hi(D_80156EDA)
    /* DDAF8 800CEB48 25296EDA */  addiu      $t1, $t1, %lo(D_80156EDA)
    /* DDAFC 800CEB4C A7370008 */  sh         $s7, 0x8($t9)
    /* DDB00 800CEB50 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDB04 800CEB54 A5C0000A */  sh         $zero, 0xA($t6)
    /* DDB08 800CEB58 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDB0C 800CEB5C A1F3000C */  sb         $s3, 0xC($t7)
    /* DDB10 800CEB60 8E180000 */  lw         $t8, 0x0($s0)
    /* DDB14 800CEB64 A314000D */  sb         $s4, 0xD($t8)
    /* DDB18 800CEB68 8E190000 */  lw         $t9, 0x0($s0)
    /* DDB1C 800CEB6C A335000E */  sb         $s5, 0xE($t9)
    /* DDB20 800CEB70 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDB24 800CEB74 A1D6000F */  sb         $s6, 0xF($t6)
    /* DDB28 800CEB78 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDB2C 800CEB7C 25F80010 */  addiu      $t8, $t7, 0x10
    /* DDB30 800CEB80 AE180000 */  sw         $t8, 0x0($s0)
    /* DDB34 800CEB84 86590000 */  lh         $t9, 0x0($s2)
    /* DDB38 800CEB88 03277021 */  addu       $t6, $t9, $a3
    /* DDB3C 800CEB8C A70E0000 */  sh         $t6, 0x0($t8)
    /* DDB40 800CEB90 8E190000 */  lw         $t9, 0x0($s0)
    /* DDB44 800CEB94 86580002 */  lh         $t8, 0x2($s2)
    /* DDB48 800CEB98 A7380002 */  sh         $t8, 0x2($t9)
    /* DDB4C 800CEB9C 864E0004 */  lh         $t6, 0x4($s2)
    /* DDB50 800CEBA0 8E180000 */  lw         $t8, 0x0($s0)
    /* DDB54 800CEBA4 01C87821 */  addu       $t7, $t6, $t0
    /* DDB58 800CEBA8 A70F0004 */  sh         $t7, 0x4($t8)
    /* DDB5C 800CEBAC 8E190000 */  lw         $t9, 0x0($s0)
    /* DDB60 800CEBB0 A7200006 */  sh         $zero, 0x6($t9)
    /* DDB64 800CEBB4 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDB68 800CEBB8 A5C00008 */  sh         $zero, 0x8($t6)
    /* DDB6C 800CEBBC 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDB70 800CEBC0 A5E0000A */  sh         $zero, 0xA($t7)
    /* DDB74 800CEBC4 8E180000 */  lw         $t8, 0x0($s0)
    /* DDB78 800CEBC8 A313000C */  sb         $s3, 0xC($t8)
    /* DDB7C 800CEBCC 8E190000 */  lw         $t9, 0x0($s0)
    /* DDB80 800CEBD0 A334000D */  sb         $s4, 0xD($t9)
    /* DDB84 800CEBD4 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDB88 800CEBD8 A1D5000E */  sb         $s5, 0xE($t6)
    /* DDB8C 800CEBDC 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDB90 800CEBE0 A1F6000F */  sb         $s6, 0xF($t7)
    /* DDB94 800CEBE4 8E180000 */  lw         $t8, 0x0($s0)
    /* DDB98 800CEBE8 27190010 */  addiu      $t9, $t8, 0x10
    /* DDB9C 800CEBEC AE190000 */  sw         $t9, 0x0($s0)
    /* DDBA0 800CEBF0 864E0000 */  lh         $t6, 0x0($s2)
    /* DDBA4 800CEBF4 01C77823 */  subu       $t7, $t6, $a3
    /* DDBA8 800CEBF8 A72F0000 */  sh         $t7, 0x0($t9)
    /* DDBAC 800CEBFC 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDBB0 800CEC00 86590002 */  lh         $t9, 0x2($s2)
    /* DDBB4 800CEC04 A5D90002 */  sh         $t9, 0x2($t6)
    /* DDBB8 800CEC08 864F0004 */  lh         $t7, 0x4($s2)
    /* DDBBC 800CEC0C 8E190000 */  lw         $t9, 0x0($s0)
    /* DDBC0 800CEC10 01E8C023 */  subu       $t8, $t7, $t0
    /* DDBC4 800CEC14 A7380004 */  sh         $t8, 0x4($t9)
    /* DDBC8 800CEC18 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDBCC 800CEC1C A5C00006 */  sh         $zero, 0x6($t6)
    /* DDBD0 800CEC20 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDBD4 800CEC24 A5E00008 */  sh         $zero, 0x8($t7)
    /* DDBD8 800CEC28 8E180000 */  lw         $t8, 0x0($s0)
    /* DDBDC 800CEC2C A717000A */  sh         $s7, 0xA($t8)
    /* DDBE0 800CEC30 8E190000 */  lw         $t9, 0x0($s0)
    /* DDBE4 800CEC34 A333000C */  sb         $s3, 0xC($t9)
    /* DDBE8 800CEC38 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDBEC 800CEC3C A1D4000D */  sb         $s4, 0xD($t6)
    /* DDBF0 800CEC40 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDBF4 800CEC44 A1F5000E */  sb         $s5, 0xE($t7)
    /* DDBF8 800CEC48 8E180000 */  lw         $t8, 0x0($s0)
    /* DDBFC 800CEC4C A316000F */  sb         $s6, 0xF($t8)
    /* DDC00 800CEC50 8E190000 */  lw         $t9, 0x0($s0)
    /* DDC04 800CEC54 272E0010 */  addiu      $t6, $t9, 0x10
    /* DDC08 800CEC58 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DDC0C 800CEC5C 862F0000 */  lh         $t7, 0x0($s1)
    /* DDC10 800CEC60 01E7C023 */  subu       $t8, $t7, $a3
    /* DDC14 800CEC64 A5D80000 */  sh         $t8, 0x0($t6)
    /* DDC18 800CEC68 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDC1C 800CEC6C 862E0002 */  lh         $t6, 0x2($s1)
    /* DDC20 800CEC70 A5EE0002 */  sh         $t6, 0x2($t7)
    /* DDC24 800CEC74 86380004 */  lh         $t8, 0x4($s1)
    /* DDC28 800CEC78 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDC2C 800CEC7C 0308C823 */  subu       $t9, $t8, $t0
    /* DDC30 800CEC80 A5D90004 */  sh         $t9, 0x4($t6)
    /* DDC34 800CEC84 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDC38 800CEC88 A5E00006 */  sh         $zero, 0x6($t7)
    /* DDC3C 800CEC8C 8E180000 */  lw         $t8, 0x0($s0)
    /* DDC40 800CEC90 A7170008 */  sh         $s7, 0x8($t8)
    /* DDC44 800CEC94 8E190000 */  lw         $t9, 0x0($s0)
    /* DDC48 800CEC98 A737000A */  sh         $s7, 0xA($t9)
    /* DDC4C 800CEC9C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDC50 800CECA0 A1D3000C */  sb         $s3, 0xC($t6)
    /* DDC54 800CECA4 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDC58 800CECA8 A1F4000D */  sb         $s4, 0xD($t7)
    /* DDC5C 800CECAC 8E180000 */  lw         $t8, 0x0($s0)
    /* DDC60 800CECB0 A315000E */  sb         $s5, 0xE($t8)
    /* DDC64 800CECB4 8E190000 */  lw         $t9, 0x0($s0)
    /* DDC68 800CECB8 A336000F */  sb         $s6, 0xF($t9)
    /* DDC6C 800CECBC 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDC70 800CECC0 25CF0010 */  addiu      $t7, $t6, 0x10
    /* DDC74 800CECC4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DDC78 800CECC8 86380000 */  lh         $t8, 0x0($s1)
    /* DDC7C 800CECCC 0307C821 */  addu       $t9, $t8, $a3
    /* DDC80 800CECD0 A5F90000 */  sh         $t9, 0x0($t7)
    /* DDC84 800CECD4 8E180000 */  lw         $t8, 0x0($s0)
    /* DDC88 800CECD8 862F0002 */  lh         $t7, 0x2($s1)
    /* DDC8C 800CECDC A70F0002 */  sh         $t7, 0x2($t8)
    /* DDC90 800CECE0 86390004 */  lh         $t9, 0x4($s1)
    /* DDC94 800CECE4 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDC98 800CECE8 03287021 */  addu       $t6, $t9, $t0
    /* DDC9C 800CECEC A5EE0004 */  sh         $t6, 0x4($t7)
    /* DDCA0 800CECF0 8E180000 */  lw         $t8, 0x0($s0)
    /* DDCA4 800CECF4 A7000006 */  sh         $zero, 0x6($t8)
    /* DDCA8 800CECF8 8E190000 */  lw         $t9, 0x0($s0)
    /* DDCAC 800CECFC A7370008 */  sh         $s7, 0x8($t9)
    /* DDCB0 800CED00 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDCB4 800CED04 A5C0000A */  sh         $zero, 0xA($t6)
    /* DDCB8 800CED08 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDCBC 800CED0C A1F3000C */  sb         $s3, 0xC($t7)
    /* DDCC0 800CED10 8E180000 */  lw         $t8, 0x0($s0)
    /* DDCC4 800CED14 A314000D */  sb         $s4, 0xD($t8)
    /* DDCC8 800CED18 8E190000 */  lw         $t9, 0x0($s0)
    /* DDCCC 800CED1C A335000E */  sb         $s5, 0xE($t9)
    /* DDCD0 800CED20 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DDCD4 800CED24 A1D6000F */  sb         $s6, 0xF($t6)
    /* DDCD8 800CED28 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDCDC 800CED2C 8CC20000 */  lw         $v0, 0x0($a2)
    /* DDCE0 800CED30 3C0E0400 */  lui        $t6, (0x400207F >> 16)
    /* DDCE4 800CED34 25F80010 */  addiu      $t8, $t7, 0x10
    /* DDCE8 800CED38 24590008 */  addiu      $t9, $v0, 0x8
    /* DDCEC 800CED3C AE180000 */  sw         $t8, 0x0($s0)
    /* DDCF0 800CED40 ACD90000 */  sw         $t9, 0x0($a2)
    /* DDCF4 800CED44 35CE207F */  ori        $t6, $t6, (0x400207F & 0xFFFF)
    /* DDCF8 800CED48 AC4E0000 */  sw         $t6, 0x0($v0)
    /* DDCFC 800CED4C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDD00 800CED50 25F8FF80 */  addiu      $t8, $t7, -0x80
    /* DDD04 800CED54 0301C824 */  and        $t9, $t8, $at
    /* DDD08 800CED58 AC590004 */  sw         $t9, 0x4($v0)
    /* DDD0C 800CED5C 8CC20000 */  lw         $v0, 0x0($a2)
    /* DDD10 800CED60 3C180006 */  lui        $t8, (0x60204 >> 16)
    /* DDD14 800CED64 3C0FB100 */  lui        $t7, (0xB1000206 >> 16)
    /* DDD18 800CED68 244E0008 */  addiu      $t6, $v0, 0x8
    /* DDD1C 800CED6C ACCE0000 */  sw         $t6, 0x0($a2)
    /* DDD20 800CED70 35EF0206 */  ori        $t7, $t7, (0xB1000206 & 0xFFFF)
    /* DDD24 800CED74 37180204 */  ori        $t8, $t8, (0x60204 & 0xFFFF)
    /* DDD28 800CED78 AC580004 */  sw         $t8, 0x4($v0)
    /* DDD2C 800CED7C AC4F0000 */  sw         $t7, 0x0($v0)
    /* DDD30 800CED80 8CC20000 */  lw         $v0, 0x0($a2)
    /* DDD34 800CED84 3C0F000E */  lui        $t7, (0xE0A0C >> 16)
    /* DDD38 800CED88 3C0EB10E */  lui        $t6, (0xB10E080A >> 16)
    /* DDD3C 800CED8C 24590008 */  addiu      $t9, $v0, 0x8
    /* DDD40 800CED90 ACD90000 */  sw         $t9, 0x0($a2)
    /* DDD44 800CED94 35CE080A */  ori        $t6, $t6, (0xB10E080A & 0xFFFF)
    /* DDD48 800CED98 35EF0A0C */  ori        $t7, $t7, (0xE0A0C & 0xFFFF)
    /* DDD4C 800CED9C AC4F0004 */  sw         $t7, 0x4($v0)
    /* DDD50 800CEDA0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* DDD54 800CEDA4 85380000 */  lh         $t8, 0x0($t1)
    /* DDD58 800CEDA8 27190008 */  addiu      $t9, $t8, 0x8
    /* DDD5C 800CEDAC A5390000 */  sh         $t9, 0x0($t1)
    /* DDD60 800CEDB0 001E1C00 */  sll        $v1, $fp, 16
  .L800CEDB4_DDD64:
    /* DDD64 800CEDB4 00037403 */  sra        $t6, $v1, 16
    /* DDD68 800CEDB8 2401FFFB */  addiu      $at, $zero, -0x5
    /* DDD6C 800CEDBC 13C10004 */  beq        $fp, $at, .L800CEDD0_DDD80
    /* DDD70 800CEDC0 01C01825 */   or        $v1, $t6, $zero
    /* DDD74 800CEDC4 2401FFFA */  addiu      $at, $zero, -0x6
    /* DDD78 800CEDC8 55C1FED5 */  bnel       $t6, $at, .L800CE920_DD8D0
    /* DDD7C 800CEDCC 0003C0C0 */   sll       $t8, $v1, 3
  .L800CEDD0_DDD80:
    /* DDD80 800CEDD0 8FBF003C */  lw         $ra, 0x3C($sp)
    /* DDD84 800CEDD4 8FB00018 */  lw         $s0, 0x18($sp)
    /* DDD88 800CEDD8 8FB1001C */  lw         $s1, 0x1C($sp)
    /* DDD8C 800CEDDC 8FB20020 */  lw         $s2, 0x20($sp)
    /* DDD90 800CEDE0 8FB30024 */  lw         $s3, 0x24($sp)
    /* DDD94 800CEDE4 8FB40028 */  lw         $s4, 0x28($sp)
    /* DDD98 800CEDE8 8FB5002C */  lw         $s5, 0x2C($sp)
    /* DDD9C 800CEDEC 8FB60030 */  lw         $s6, 0x30($sp)
    /* DDDA0 800CEDF0 8FB70034 */  lw         $s7, 0x34($sp)
    /* DDDA4 800CEDF4 8FBE0038 */  lw         $fp, 0x38($sp)
    /* DDDA8 800CEDF8 03E00008 */  jr         $ra
    /* DDDAC 800CEDFC 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_800CE6E8_DD698
