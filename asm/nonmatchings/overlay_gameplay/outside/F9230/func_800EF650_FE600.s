nonmatching func_800EF650_FE600, 0x3A0

glabel func_800EF650_FE600
    /* FE600 800EF650 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* FE604 800EF654 AFBF0024 */  sw         $ra, 0x24($sp)
    /* FE608 800EF658 AFB00020 */  sw         $s0, 0x20($sp)
    /* FE60C 800EF65C 84820012 */  lh         $v0, 0x12($a0)
    /* FE610 800EF660 3C108015 */  lui        $s0, %hi(D_80157A48)
    /* FE614 800EF664 26107A48 */  addiu      $s0, $s0, %lo(D_80157A48)
    /* FE618 800EF668 00027143 */  sra        $t6, $v0, 5
    /* FE61C 800EF66C 29C10002 */  slti       $at, $t6, 0x2
    /* FE620 800EF670 10200002 */  beqz       $at, .L800EF67C_FE62C
    /* FE624 800EF674 01C01025 */   or        $v0, $t6, $zero
    /* FE628 800EF678 24020002 */  addiu      $v0, $zero, 0x2
  .L800EF67C_FE62C:
    /* FE62C 800EF67C 2841000F */  slti       $at, $v0, 0xF
    /* FE630 800EF680 14200002 */  bnez       $at, .L800EF68C_FE63C
    /* FE634 800EF684 02003025 */   or        $a2, $s0, $zero
    /* FE638 800EF688 2402000E */  addiu      $v0, $zero, 0xE
  .L800EF68C_FE63C:
    /* FE63C 800EF68C 8E05040C */  lw         $a1, 0x40C($s0)
    /* FE640 800EF690 AFA20034 */  sw         $v0, 0x34($sp)
    /* FE644 800EF694 0C03AE95 */  jal        func_800EBA54_FAA04
    /* FE648 800EF698 AFA40040 */   sw        $a0, 0x40($sp)
    /* FE64C 800EF69C 8FAF0040 */  lw         $t7, 0x40($sp)
    /* FE650 800EF6A0 8DE20020 */  lw         $v0, 0x20($t7)
    /* FE654 800EF6A4 0002C000 */  sll        $t8, $v0, 0
    /* FE658 800EF6A8 0701001A */  bgez       $t8, .L800EF714_FE6C4
    /* FE65C 800EF6AC 3C038015 */   lui       $v1, %hi(D_80157E78)
    /* FE660 800EF6B0 24637E78 */  addiu      $v1, $v1, %lo(D_80157E78)
    /* FE664 800EF6B4 8C790000 */  lw         $t9, 0x0($v1)
    /* FE668 800EF6B8 00024040 */  sll        $t0, $v0, 1
    /* FE66C 800EF6BC 17200015 */  bnez       $t9, .L800EF714_FE6C4
    /* FE670 800EF6C0 00000000 */   nop
    /* FE674 800EF6C4 05000011 */  bltz       $t0, .L800EF70C_FE6BC
    /* FE678 800EF6C8 3C098015 */   lui       $t1, %hi(D_80157E70)
    /* FE67C 800EF6CC 8D297E70 */  lw         $t1, %lo(D_80157E70)($t1)
    /* FE680 800EF6D0 3C048014 */  lui        $a0, %hi(D_801443BC)
    /* FE684 800EF6D4 5520000E */  bnel       $t1, $zero, .L800EF710_FE6C0
    /* FE688 800EF6D8 240B001E */   addiu     $t3, $zero, 0x1E
    /* FE68C 800EF6DC 0C00731B */  jal        osSyncPrintf
    /* FE690 800EF6E0 248443BC */   addiu     $a0, $a0, %lo(D_801443BC)
    /* FE694 800EF6E4 3C058015 */  lui        $a1, %hi(D_80157E74)
    /* FE698 800EF6E8 84A57E74 */  lh         $a1, %lo(D_80157E74)($a1)
    /* FE69C 800EF6EC 02002025 */  or         $a0, $s0, $zero
    /* FE6A0 800EF6F0 00003025 */  or         $a2, $zero, $zero
    /* FE6A4 800EF6F4 00055383 */  sra        $t2, $a1, 14
    /* FE6A8 800EF6F8 25450014 */  addiu      $a1, $t2, 0x14
    /* FE6AC 800EF6FC 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FE6B0 800EF700 24070000 */   addiu     $a3, $zero, 0x0
    /* FE6B4 800EF704 3C038015 */  lui        $v1, %hi(D_80157E78)
    /* FE6B8 800EF708 24637E78 */  addiu      $v1, $v1, %lo(D_80157E78)
  .L800EF70C_FE6BC:
    /* FE6BC 800EF70C 240B001E */  addiu      $t3, $zero, 0x1E
  .L800EF710_FE6C0:
    /* FE6C0 800EF710 AC6B0000 */  sw         $t3, 0x0($v1)
  .L800EF714_FE6C4:
    /* FE6C4 800EF714 3C038015 */  lui        $v1, %hi(D_80157E78)
    /* FE6C8 800EF718 24637E78 */  addiu      $v1, $v1, %lo(D_80157E78)
    /* FE6CC 800EF71C 8C620000 */  lw         $v0, 0x0($v1)
    /* FE6D0 800EF720 10400002 */  beqz       $v0, .L800EF72C_FE6DC
    /* FE6D4 800EF724 244CFFFF */   addiu     $t4, $v0, -0x1
    /* FE6D8 800EF728 AC6C0000 */  sw         $t4, 0x0($v1)
  .L800EF72C_FE6DC:
    /* FE6DC 800EF72C 8FAD0040 */  lw         $t5, 0x40($sp)
    /* FE6E0 800EF730 8DAE0020 */  lw         $t6, 0x20($t5)
    /* FE6E4 800EF734 31CF1000 */  andi       $t7, $t6, 0x1000
    /* FE6E8 800EF738 51E00019 */  beql       $t7, $zero, .L800EF7A0_FE750
    /* FE6EC 800EF73C 8E0C040C */   lw        $t4, 0x40C($s0)
    /* FE6F0 800EF740 8E18040C */  lw         $t8, 0x40C($s0)
    /* FE6F4 800EF744 3C088014 */  lui        $t0, %hi(D_8013E5B0)
    /* FE6F8 800EF748 02002025 */  or         $a0, $s0, $zero
    /* FE6FC 800EF74C 0018C880 */  sll        $t9, $t8, 2
    /* FE700 800EF750 0338C823 */  subu       $t9, $t9, $t8
    /* FE704 800EF754 0019C880 */  sll        $t9, $t9, 2
    /* FE708 800EF758 0338C821 */  addu       $t9, $t9, $t8
    /* FE70C 800EF75C 0019C880 */  sll        $t9, $t9, 2
    /* FE710 800EF760 01194021 */  addu       $t0, $t0, $t9
    /* FE714 800EF764 8D08E5B0 */  lw         $t0, %lo(D_8013E5B0)($t0)
    /* FE718 800EF768 3C0A8015 */  lui        $t2, %hi(D_80157E7C)
    /* FE71C 800EF76C 3C058014 */  lui        $a1, %hi(D_8013E464)
    /* FE720 800EF770 31090480 */  andi       $t1, $t0, 0x480
    /* FE724 800EF774 5520000A */  bnel       $t1, $zero, .L800EF7A0_FE750
    /* FE728 800EF778 8E0C040C */   lw        $t4, 0x40C($s0)
    /* FE72C 800EF77C A5A00012 */  sh         $zero, 0x12($t5)
    /* FE730 800EF780 8D4A7E7C */  lw         $t2, %lo(D_80157E7C)($t2)
    /* FE734 800EF784 00003025 */  or         $a2, $zero, $zero
    /* FE738 800EF788 24070000 */  addiu      $a3, $zero, 0x0
    /* FE73C 800EF78C 000A5940 */  sll        $t3, $t2, 5
    /* FE740 800EF790 00AB2821 */  addu       $a1, $a1, $t3
    /* FE744 800EF794 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FE748 800EF798 8CA5E464 */   lw        $a1, %lo(D_8013E464)($a1)
    /* FE74C 800EF79C 8E0C040C */  lw         $t4, 0x40C($s0)
  .L800EF7A0_FE750:
    /* FE750 800EF7A0 3C0F8014 */  lui        $t7, %hi(D_8013E5B0)
    /* FE754 800EF7A4 3C048015 */  lui        $a0, %hi(D_80157E7C)
    /* FE758 800EF7A8 000C7080 */  sll        $t6, $t4, 2
    /* FE75C 800EF7AC 01CC7023 */  subu       $t6, $t6, $t4
    /* FE760 800EF7B0 000E7080 */  sll        $t6, $t6, 2
    /* FE764 800EF7B4 01CC7021 */  addu       $t6, $t6, $t4
    /* FE768 800EF7B8 000E7080 */  sll        $t6, $t6, 2
    /* FE76C 800EF7BC 01EE7821 */  addu       $t7, $t7, $t6
    /* FE770 800EF7C0 8DEFE5B0 */  lw         $t7, %lo(D_8013E5B0)($t7)
    /* FE774 800EF7C4 02002825 */  or         $a1, $s0, $zero
    /* FE778 800EF7C8 31F80080 */  andi       $t8, $t7, 0x80
    /* FE77C 800EF7CC 5300001D */  beql       $t8, $zero, .L800EF844_FE7F4
    /* FE780 800EF7D0 8FB80040 */   lw        $t8, 0x40($sp)
    /* FE784 800EF7D4 0C03AE71 */  jal        func_800EB9C4_FA974
    /* FE788 800EF7D8 8C847E7C */   lw        $a0, %lo(D_80157E7C)($a0)
    /* FE78C 800EF7DC 1040000B */  beqz       $v0, .L800EF80C_FE7BC
    /* FE790 800EF7E0 8FB90040 */   lw        $t9, 0x40($sp)
    /* FE794 800EF7E4 3C088005 */  lui        $t0, %hi(alienInstances)
    /* FE798 800EF7E8 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* FE79C 800EF7EC 03282023 */  subu       $a0, $t9, $t0
    /* FE7A0 800EF7F0 24010050 */  addiu      $at, $zero, 0x50
    /* FE7A4 800EF7F4 0081001A */  div        $zero, $a0, $at
    /* FE7A8 800EF7F8 00004812 */  mflo       $t1
    /* FE7AC 800EF7FC 312400FF */  andi       $a0, $t1, 0xFF
    /* FE7B0 800EF800 00002825 */  or         $a1, $zero, $zero
    /* FE7B4 800EF804 0C021C62 */  jal        func_80087188_96138
    /* FE7B8 800EF808 24060018 */   addiu     $a2, $zero, 0x18
  .L800EF80C_FE7BC:
    /* FE7BC 800EF80C 8E0A0404 */  lw         $t2, 0x404($s0)
    /* FE7C0 800EF810 8FAC0040 */  lw         $t4, 0x40($sp)
    /* FE7C4 800EF814 8D4B0E50 */  lw         $t3, 0xE50($t2)
    /* FE7C8 800EF818 5560000A */  bnel       $t3, $zero, .L800EF844_FE7F4
    /* FE7CC 800EF81C 8FB80040 */   lw        $t8, 0x40($sp)
    /* FE7D0 800EF820 8D8E0020 */  lw         $t6, 0x20($t4)
    /* FE7D4 800EF824 02002025 */  or         $a0, $s0, $zero
    /* FE7D8 800EF828 24050023 */  addiu      $a1, $zero, 0x23
    /* FE7DC 800EF82C 31CF1000 */  andi       $t7, $t6, 0x1000
    /* FE7E0 800EF830 15E00003 */  bnez       $t7, .L800EF840_FE7F0
    /* FE7E4 800EF834 00003025 */   or        $a2, $zero, $zero
    /* FE7E8 800EF838 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FE7EC 800EF83C 24070000 */   addiu     $a3, $zero, 0x0
  .L800EF840_FE7F0:
    /* FE7F0 800EF840 8FB80040 */  lw         $t8, 0x40($sp)
  .L800EF844_FE7F4:
    /* FE7F4 800EF844 24010003 */  addiu      $at, $zero, 0x3
    /* FE7F8 800EF848 93020024 */  lbu        $v0, 0x24($t8)
    /* FE7FC 800EF84C 10410003 */  beq        $v0, $at, .L800EF85C_FE80C
    /* FE800 800EF850 24010005 */   addiu     $at, $zero, 0x5
    /* FE804 800EF854 5441000C */  bnel       $v0, $at, .L800EF888_FE838
    /* FE808 800EF858 24010006 */   addiu     $at, $zero, 0x6
  .L800EF85C_FE80C:
    /* FE80C 800EF85C 8E19040C */  lw         $t9, 0x40C($s0)
    /* FE810 800EF860 2401005F */  addiu      $at, $zero, 0x5F
    /* FE814 800EF864 02002025 */  or         $a0, $s0, $zero
    /* FE818 800EF868 13210006 */  beq        $t9, $at, .L800EF884_FE834
    /* FE81C 800EF86C 2405005F */   addiu     $a1, $zero, 0x5F
    /* FE820 800EF870 00003025 */  or         $a2, $zero, $zero
    /* FE824 800EF874 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FE828 800EF878 24070000 */   addiu     $a3, $zero, 0x0
    /* FE82C 800EF87C 8FA80040 */  lw         $t0, 0x40($sp)
    /* FE830 800EF880 91020024 */  lbu        $v0, 0x24($t0)
  .L800EF884_FE834:
    /* FE834 800EF884 24010006 */  addiu      $at, $zero, 0x6
  .L800EF888_FE838:
    /* FE838 800EF888 5441000C */  bnel       $v0, $at, .L800EF8BC_FE86C
    /* FE83C 800EF88C 24010007 */   addiu     $at, $zero, 0x7
    /* FE840 800EF890 8E09040C */  lw         $t1, 0x40C($s0)
    /* FE844 800EF894 24010024 */  addiu      $at, $zero, 0x24
    /* FE848 800EF898 02002025 */  or         $a0, $s0, $zero
    /* FE84C 800EF89C 11210006 */  beq        $t1, $at, .L800EF8B8_FE868
    /* FE850 800EF8A0 24050024 */   addiu     $a1, $zero, 0x24
    /* FE854 800EF8A4 00003025 */  or         $a2, $zero, $zero
    /* FE858 800EF8A8 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FE85C 800EF8AC 24070000 */   addiu     $a3, $zero, 0x0
    /* FE860 800EF8B0 8FAD0040 */  lw         $t5, 0x40($sp)
    /* FE864 800EF8B4 91A20024 */  lbu        $v0, 0x24($t5)
  .L800EF8B8_FE868:
    /* FE868 800EF8B8 24010007 */  addiu      $at, $zero, 0x7
  .L800EF8BC_FE86C:
    /* FE86C 800EF8BC 5441000A */  bnel       $v0, $at, .L800EF8E8_FE898
    /* FE870 800EF8C0 8FAB0034 */   lw        $t3, 0x34($sp)
    /* FE874 800EF8C4 8E0A040C */  lw         $t2, 0x40C($s0)
    /* FE878 800EF8C8 24010058 */  addiu      $at, $zero, 0x58
    /* FE87C 800EF8CC 02002025 */  or         $a0, $s0, $zero
    /* FE880 800EF8D0 11410004 */  beq        $t2, $at, .L800EF8E4_FE894
    /* FE884 800EF8D4 24050058 */   addiu     $a1, $zero, 0x58
    /* FE888 800EF8D8 00003025 */  or         $a2, $zero, $zero
    /* FE88C 800EF8DC 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FE890 800EF8E0 24070000 */   addiu     $a3, $zero, 0x0
  .L800EF8E4_FE894:
    /* FE894 800EF8E4 8FAB0034 */  lw         $t3, 0x34($sp)
  .L800EF8E8_FE898:
    /* FE898 800EF8E8 3C014028 */  lui        $at, (0x40280000 >> 16)
    /* FE89C 800EF8EC 44814800 */  mtc1       $at, $f9
    /* FE8A0 800EF8F0 256CFFFE */  addiu      $t4, $t3, -0x2
    /* FE8A4 800EF8F4 448C2000 */  mtc1       $t4, $f4
    /* FE8A8 800EF8F8 44804000 */  mtc1       $zero, $f8
    /* FE8AC 800EF8FC 02002025 */  or         $a0, $s0, $zero
    /* FE8B0 800EF900 468021A1 */  cvt.d.w    $f6, $f4
    /* FE8B4 800EF904 24050023 */  addiu      $a1, $zero, 0x23
    /* FE8B8 800EF908 00003025 */  or         $a2, $zero, $zero
    /* FE8BC 800EF90C 46283283 */  div.d      $f10, $f6, $f8
    /* FE8C0 800EF910 46205020 */  cvt.s.d    $f0, $f10
    /* FE8C4 800EF914 44070000 */  mfc1       $a3, $f0
    /* FE8C8 800EF918 0C03ADF3 */  jal        func_800EB7CC_FA77C
    /* FE8CC 800EF91C E7A0002C */   swc1      $f0, 0x2C($sp)
    /* FE8D0 800EF920 02002025 */  or         $a0, $s0, $zero
    /* FE8D4 800EF924 0C03AE29 */  jal        func_800EB8A4_FA854
    /* FE8D8 800EF928 8FA5002C */   lw        $a1, 0x2C($sp)
    /* FE8DC 800EF92C 8E0E040C */  lw         $t6, 0x40C($s0)
    /* FE8E0 800EF930 3C188014 */  lui        $t8, %hi(D_8013E5B0)
    /* FE8E4 800EF934 24070010 */  addiu      $a3, $zero, 0x10
    /* FE8E8 800EF938 000E7880 */  sll        $t7, $t6, 2
    /* FE8EC 800EF93C 01EE7823 */  subu       $t7, $t7, $t6
    /* FE8F0 800EF940 000F7880 */  sll        $t7, $t7, 2
    /* FE8F4 800EF944 01EE7821 */  addu       $t7, $t7, $t6
    /* FE8F8 800EF948 000F7880 */  sll        $t7, $t7, 2
    /* FE8FC 800EF94C 030FC021 */  addu       $t8, $t8, $t7
    /* FE900 800EF950 8F18E5B0 */  lw         $t8, %lo(D_8013E5B0)($t8)
    /* FE904 800EF954 C7B0002C */  lwc1       $f16, 0x2C($sp)
    /* FE908 800EF958 02002825 */  or         $a1, $s0, $zero
    /* FE90C 800EF95C 33190004 */  andi       $t9, $t8, 0x4
    /* FE910 800EF960 1320000A */  beqz       $t9, .L800EF98C_FE93C
    /* FE914 800EF964 24060010 */   addiu     $a2, $zero, 0x10
    /* FE918 800EF968 C6120410 */  lwc1       $f18, 0x410($s0)
    /* FE91C 800EF96C 8E040404 */  lw         $a0, 0x404($s0)
    /* FE920 800EF970 8E050408 */  lw         $a1, 0x408($s0)
    /* FE924 800EF974 02003025 */  or         $a2, $s0, $zero
    /* FE928 800EF978 E7B00010 */  swc1       $f16, 0x10($sp)
    /* FE92C 800EF97C 0C003637 */  jal        func_8000D8DC_E4DC
    /* FE930 800EF980 E7B20014 */   swc1      $f18, 0x14($sp)
    /* FE934 800EF984 10000005 */  b          .L800EF99C_FE94C
    /* FE938 800EF988 8E08040C */   lw        $t0, 0x40C($s0)
  .L800EF98C_FE93C:
    /* FE93C 800EF98C 8E040404 */  lw         $a0, 0x404($s0)
    /* FE940 800EF990 0C0033D3 */  jal        func_8000CF4C_DB4C
    /* FE944 800EF994 8E070410 */   lw        $a3, 0x410($s0)
    /* FE948 800EF998 8E08040C */  lw         $t0, 0x40C($s0)
  .L800EF99C_FE94C:
    /* FE94C 800EF99C 3C028014 */  lui        $v0, %hi(D_8013E5B0)
    /* FE950 800EF9A0 8FBF0024 */  lw         $ra, 0x24($sp)
    /* FE954 800EF9A4 00084880 */  sll        $t1, $t0, 2
    /* FE958 800EF9A8 01284823 */  subu       $t1, $t1, $t0
    /* FE95C 800EF9AC 00094880 */  sll        $t1, $t1, 2
    /* FE960 800EF9B0 01284821 */  addu       $t1, $t1, $t0
    /* FE964 800EF9B4 00094880 */  sll        $t1, $t1, 2
    /* FE968 800EF9B8 00491021 */  addu       $v0, $v0, $t1
    /* FE96C 800EF9BC 8C42E5B0 */  lw         $v0, %lo(D_8013E5B0)($v0)
    /* FE970 800EF9C0 304D0480 */  andi       $t5, $v0, 0x480
    /* FE974 800EF9C4 11A00003 */  beqz       $t5, .L800EF9D4_FE984
    /* FE978 800EF9C8 304A0050 */   andi      $t2, $v0, 0x50
    /* FE97C 800EF9CC 10000005 */  b          .L800EF9E4_FE994
    /* FE980 800EF9D0 24020001 */   addiu     $v0, $zero, 0x1
  .L800EF9D4_FE984:
    /* FE984 800EF9D4 11400003 */  beqz       $t2, .L800EF9E4_FE994
    /* FE988 800EF9D8 00001025 */   or        $v0, $zero, $zero
    /* FE98C 800EF9DC 10000001 */  b          .L800EF9E4_FE994
    /* FE990 800EF9E0 24020002 */   addiu     $v0, $zero, 0x2
  .L800EF9E4_FE994:
    /* FE994 800EF9E4 8FB00020 */  lw         $s0, 0x20($sp)
    /* FE998 800EF9E8 03E00008 */  jr         $ra
    /* FE99C 800EF9EC 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800EF650_FE600
