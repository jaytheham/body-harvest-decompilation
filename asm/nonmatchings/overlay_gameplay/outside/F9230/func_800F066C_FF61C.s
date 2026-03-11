nonmatching func_800F066C_FF61C, 0x998

glabel func_800F066C_FF61C
    /* FF61C 800F066C 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* FF620 800F0670 3C038015 */  lui        $v1, %hi(D_80157F4C)
    /* FF624 800F0674 8C637F4C */  lw         $v1, %lo(D_80157F4C)($v1)
    /* FF628 800F0678 AFBF001C */  sw         $ra, 0x1C($sp)
    /* FF62C 800F067C AFB10018 */  sw         $s1, 0x18($sp)
    /* FF630 800F0680 AFB00014 */  sw         $s0, 0x14($sp)
    /* FF634 800F0684 AFA00044 */  sw         $zero, 0x44($sp)
    /* FF638 800F0688 90620011 */  lbu        $v0, 0x11($v1)
    /* FF63C 800F068C 24010001 */  addiu      $at, $zero, 0x1
    /* FF640 800F0690 5040000B */  beql       $v0, $zero, .L800F06C0_FF670
    /* FF644 800F0694 846E0006 */   lh        $t6, 0x6($v1)
    /* FF648 800F0698 10410010 */  beq        $v0, $at, .L800F06DC_FF68C
    /* FF64C 800F069C 24010002 */   addiu     $at, $zero, 0x2
    /* FF650 800F06A0 10410027 */  beq        $v0, $at, .L800F0740_FF6F0
    /* FF654 800F06A4 24010003 */   addiu     $at, $zero, 0x3
    /* FF658 800F06A8 1041004D */  beq        $v0, $at, .L800F07E0_FF790
    /* FF65C 800F06AC 87B1002C */   lh        $s1, 0x2C($sp)
    /* FF660 800F06B0 87B00030 */  lh         $s0, 0x30($sp)
    /* FF664 800F06B4 1000005F */  b          .L800F0834_FF7E4
    /* FF668 800F06B8 87A7002E */   lh        $a3, 0x2E($sp)
    /* FF66C 800F06BC 846E0006 */  lh         $t6, 0x6($v1)
  .L800F06C0_FF670:
    /* FF670 800F06C0 A7AE0030 */  sh         $t6, 0x30($sp)
    /* FF674 800F06C4 846F000A */  lh         $t7, 0xA($v1)
    /* FF678 800F06C8 84670008 */  lh         $a3, 0x8($v1)
    /* FF67C 800F06CC 87B00030 */  lh         $s0, 0x30($sp)
    /* FF680 800F06D0 A7AF002C */  sh         $t7, 0x2C($sp)
    /* FF684 800F06D4 10000057 */  b          .L800F0834_FF7E4
    /* FF688 800F06D8 87B1002C */   lh        $s1, 0x2C($sp)
  .L800F06DC_FF68C:
    /* FF68C 800F06DC 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* FF690 800F06E0 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* FF694 800F06E4 84580000 */  lh         $t8, 0x0($v0)
    /* FF698 800F06E8 0018C883 */  sra        $t9, $t8, 2
    /* FF69C 800F06EC A7B90030 */  sh         $t9, 0x30($sp)
    /* FF6A0 800F06F0 84470002 */  lh         $a3, 0x2($v0)
    /* FF6A4 800F06F4 9059001A */  lbu        $t9, 0x1A($v0)
    /* FF6A8 800F06F8 87B00030 */  lh         $s0, 0x30($sp)
    /* FF6AC 800F06FC 00077883 */  sra        $t7, $a3, 2
    /* FF6B0 800F0700 001970C0 */  sll        $t6, $t9, 3
    /* FF6B4 800F0704 01E03825 */  or         $a3, $t7, $zero
    /* FF6B8 800F0708 01D97023 */  subu       $t6, $t6, $t9
    /* FF6BC 800F070C 000E7100 */  sll        $t6, $t6, 4
    /* FF6C0 800F0710 3C0F8025 */  lui        $t7, %hi(D_80257A38)
    /* FF6C4 800F0714 01EE7821 */  addu       $t7, $t7, $t6
    /* FF6C8 800F0718 85EF7A38 */  lh         $t7, %lo(D_80257A38)($t7)
    /* FF6CC 800F071C 000FC0C3 */  sra        $t8, $t7, 3
    /* FF6D0 800F0720 844F0004 */  lh         $t7, 0x4($v0)
    /* FF6D4 800F0724 00F83821 */  addu       $a3, $a3, $t8
    /* FF6D8 800F0728 0007CC00 */  sll        $t9, $a3, 16
    /* FF6DC 800F072C 000FC083 */  sra        $t8, $t7, 2
    /* FF6E0 800F0730 A7B8002C */  sh         $t8, 0x2C($sp)
    /* FF6E4 800F0734 00193C03 */  sra        $a3, $t9, 16
    /* FF6E8 800F0738 1000003E */  b          .L800F0834_FF7E4
    /* FF6EC 800F073C 87B1002C */   lh        $s1, 0x2C($sp)
  .L800F0740_FF6F0:
    /* FF6F0 800F0740 8479000E */  lh         $t9, 0xE($v1)
    /* FF6F4 800F0744 3C0F8005 */  lui        $t7, %hi(buildingInstances)
    /* FF6F8 800F0748 25EF0AD8 */  addiu      $t7, $t7, %lo(buildingInstances)
    /* FF6FC 800F074C 00197080 */  sll        $t6, $t9, 2
    /* FF700 800F0750 01D97023 */  subu       $t6, $t6, $t9
    /* FF704 800F0754 000E70C0 */  sll        $t6, $t6, 3
    /* FF708 800F0758 01CF1021 */  addu       $v0, $t6, $t7
    /* FF70C 800F075C 84580000 */  lh         $t8, 0x0($v0)
    /* FF710 800F0760 3C0E8016 */  lui        $t6, %hi(D_80159DE0)
    /* FF714 800F0764 95CE9DE0 */  lhu        $t6, %lo(D_80159DE0)($t6)
    /* FF718 800F0768 0018C883 */  sra        $t9, $t8, 2
    /* FF71C 800F076C 84580002 */  lh         $t8, 0x2($v0)
    /* FF720 800F0770 032E8021 */  addu       $s0, $t9, $t6
    /* FF724 800F0774 3C0E8016 */  lui        $t6, %hi(D_80159DE2)
    /* FF728 800F0778 95CE9DE2 */  lhu        $t6, %lo(D_80159DE2)($t6)
    /* FF72C 800F077C 0018C883 */  sra        $t9, $t8, 2
    /* FF730 800F0780 A7B00030 */  sh         $s0, 0x30($sp)
    /* FF734 800F0784 032E3821 */  addu       $a3, $t9, $t6
    /* FF738 800F0788 904E0006 */  lbu        $t6, 0x6($v0)
    /* FF73C 800F078C 3C198026 */  lui        $t9, %hi(D_802590A4)
    /* FF740 800F0790 000EC140 */  sll        $t8, $t6, 5
    /* FF744 800F0794 0338C821 */  addu       $t9, $t9, $t8
    /* FF748 800F0798 873990A4 */  lh         $t9, %lo(D_802590A4)($t9)
    /* FF74C 800F079C 001970C3 */  sra        $t6, $t9, 3
    /* FF750 800F07A0 00EE3821 */  addu       $a3, $a3, $t6
    /* FF754 800F07A4 844E0004 */  lh         $t6, 0x4($v0)
    /* FF758 800F07A8 3C198016 */  lui        $t9, %hi(D_80159DE4)
    /* FF75C 800F07AC 97399DE4 */  lhu        $t9, %lo(D_80159DE4)($t9)
    /* FF760 800F07B0 0007C400 */  sll        $t8, $a3, 16
    /* FF764 800F07B4 00183C03 */  sra        $a3, $t8, 16
    /* FF768 800F07B8 000EC083 */  sra        $t8, $t6, 2
    /* FF76C 800F07BC 03198821 */  addu       $s1, $t8, $t9
    /* FF770 800F07C0 0220C025 */  or         $t8, $s1, $zero
    /* FF774 800F07C4 0018CC00 */  sll        $t9, $t8, 16
    /* FF778 800F07C8 A7B1002C */  sh         $s1, 0x2C($sp)
    /* FF77C 800F07CC 00198C03 */  sra        $s1, $t9, 16
    /* FF780 800F07D0 0200C025 */  or         $t8, $s0, $zero
    /* FF784 800F07D4 0018CC00 */  sll        $t9, $t8, 16
    /* FF788 800F07D8 10000016 */  b          .L800F0834_FF7E4
    /* FF78C 800F07DC 00198403 */   sra       $s0, $t9, 16
  .L800F07E0_FF790:
    /* FF790 800F07E0 846F000E */  lh         $t7, 0xE($v1)
    /* FF794 800F07E4 3C198005 */  lui        $t9, %hi(vehicleInstances)
    /* FF798 800F07E8 2739DCD0 */  addiu      $t9, $t9, %lo(vehicleInstances)
    /* FF79C 800F07EC 000FC080 */  sll        $t8, $t7, 2
    /* FF7A0 800F07F0 030FC023 */  subu       $t8, $t8, $t7
    /* FF7A4 800F07F4 0018C0C0 */  sll        $t8, $t8, 3
    /* FF7A8 800F07F8 030FC023 */  subu       $t8, $t8, $t7
    /* FF7AC 800F07FC 0018C080 */  sll        $t8, $t8, 2
    /* FF7B0 800F0800 03191021 */  addu       $v0, $t8, $t9
    /* FF7B4 800F0804 84500000 */  lh         $s0, 0x0($v0)
    /* FF7B8 800F0808 84470002 */  lh         $a3, 0x2($v0)
    /* FF7BC 800F080C 84510004 */  lh         $s1, 0x4($v0)
    /* FF7C0 800F0810 00107083 */  sra        $t6, $s0, 2
    /* FF7C4 800F0814 000E7C00 */  sll        $t7, $t6, 16
    /* FF7C8 800F0818 0007C883 */  sra        $t9, $a3, 2
    /* FF7CC 800F081C 00197400 */  sll        $t6, $t9, 16
    /* FF7D0 800F0820 0011C083 */  sra        $t8, $s1, 2
    /* FF7D4 800F0824 0018CC00 */  sll        $t9, $t8, 16
    /* FF7D8 800F0828 000F8403 */  sra        $s0, $t7, 16
    /* FF7DC 800F082C 000E3C03 */  sra        $a3, $t6, 16
    /* FF7E0 800F0830 00198C03 */  sra        $s1, $t9, 16
  .L800F0834_FF7E4:
    /* FF7E4 800F0834 906F0010 */  lbu        $t7, 0x10($v1)
    /* FF7E8 800F0838 2DE10005 */  sltiu      $at, $t7, 0x5
    /* FF7EC 800F083C 1020016C */  beqz       $at, .L800F0DF0_FFDA0
    /* FF7F0 800F0840 000F7880 */   sll       $t7, $t7, 2
    /* FF7F4 800F0844 3C018014 */  lui        $at, %hi(jtbl_801445C0_overlay_gameplay_outside)
    /* FF7F8 800F0848 002F0821 */  addu       $at, $at, $t7
    /* FF7FC 800F084C 8C2F45C0 */  lw         $t7, %lo(jtbl_801445C0_overlay_gameplay_outside)($at)
    /* FF800 800F0850 01E00008 */  jr         $t7
    /* FF804 800F0854 00000000 */   nop
    /* FF808 800F0858 3C0C8015 */  lui        $t4, %hi(D_80157586)
    /* FF80C 800F085C 84640000 */  lh         $a0, 0x0($v1)
    /* FF810 800F0860 84650002 */  lh         $a1, 0x2($v1)
    /* FF814 800F0864 84660004 */  lh         $a2, 0x4($v1)
    /* FF818 800F0868 258C7586 */  addiu      $t4, $t4, %lo(D_80157586)
    /* FF81C 800F086C A5900000 */  sh         $s0, 0x0($t4)
    /* FF820 800F0870 85980000 */  lh         $t8, 0x0($t4)
    /* FF824 800F0874 3C0D8015 */  lui        $t5, %hi(D_80157588)
    /* FF828 800F0878 3C1F8015 */  lui        $ra, %hi(D_8015758A)
    /* FF82C 800F087C 27FF758A */  addiu      $ra, $ra, %lo(D_8015758A)
    /* FF830 800F0880 25AD7588 */  addiu      $t5, $t5, %lo(D_80157588)
    /* FF834 800F0884 A5A70000 */  sh         $a3, 0x0($t5)
    /* FF838 800F0888 A7F10000 */  sh         $s1, 0x0($ra)
    /* FF83C 800F088C 3C018015 */  lui        $at, %hi(D_80157580)
    /* FF840 800F0890 0304C821 */  addu       $t9, $t8, $a0
    /* FF844 800F0894 A4397580 */  sh         $t9, %lo(D_80157580)($at)
    /* FF848 800F0898 85AE0000 */  lh         $t6, 0x0($t5)
    /* FF84C 800F089C 3C018015 */  lui        $at, %hi(D_80157582)
    /* FF850 800F08A0 01C57821 */  addu       $t7, $t6, $a1
    /* FF854 800F08A4 A42F7582 */  sh         $t7, %lo(D_80157582)($at)
    /* FF858 800F08A8 87F80000 */  lh         $t8, 0x0($ra)
    /* FF85C 800F08AC 3C018015 */  lui        $at, %hi(D_80157584)
    /* FF860 800F08B0 0306C821 */  addu       $t9, $t8, $a2
    /* FF864 800F08B4 A4397584 */  sh         $t9, %lo(D_80157584)($at)
    /* FF868 800F08B8 3C018015 */  lui        $at, %hi(D_80157FC0)
    /* FF86C 800F08BC A4247FC0 */  sh         $a0, %lo(D_80157FC0)($at)
    /* FF870 800F08C0 3C018015 */  lui        $at, %hi(D_80157FC2)
    /* FF874 800F08C4 A4257FC2 */  sh         $a1, %lo(D_80157FC2)($at)
    /* FF878 800F08C8 3C018015 */  lui        $at, %hi(D_80157FC4)
    /* FF87C 800F08CC 10000148 */  b          .L800F0DF0_FFDA0
    /* FF880 800F08D0 A4267FC4 */   sh        $a2, %lo(D_80157FC4)($at)
    /* FF884 800F08D4 3C0E8015 */  lui        $t6, %hi(D_80157F54)
    /* FF888 800F08D8 8DCE7F54 */  lw         $t6, %lo(D_80157F54)($t6)
    /* FF88C 800F08DC 15C00003 */  bnez       $t6, .L800F08EC_FF89C
    /* FF890 800F08E0 240F0008 */   addiu     $t7, $zero, 0x8
    /* FF894 800F08E4 3C018007 */  lui        $at, %hi(D_80068080)
    /* FF898 800F08E8 AC2F8080 */  sw         $t7, %lo(D_80068080)($at)
  .L800F08EC_FF89C:
    /* FF89C 800F08EC 84780000 */  lh         $t8, 0x0($v1)
    /* FF8A0 800F08F0 3C018015 */  lui        $at, %hi(D_80157580)
    /* FF8A4 800F08F4 3C0C8015 */  lui        $t4, %hi(D_80157586)
    /* FF8A8 800F08F8 A4387580 */  sh         $t8, %lo(D_80157580)($at)
    /* FF8AC 800F08FC 84790002 */  lh         $t9, 0x2($v1)
    /* FF8B0 800F0900 3C018015 */  lui        $at, %hi(D_80157582)
    /* FF8B4 800F0904 3C0D8015 */  lui        $t5, %hi(D_80157588)
    /* FF8B8 800F0908 A4397582 */  sh         $t9, %lo(D_80157582)($at)
    /* FF8BC 800F090C 846E0004 */  lh         $t6, 0x4($v1)
    /* FF8C0 800F0910 3C018015 */  lui        $at, %hi(D_80157584)
    /* FF8C4 800F0914 3C1F8015 */  lui        $ra, %hi(D_8015758A)
    /* FF8C8 800F0918 A42E7584 */  sh         $t6, %lo(D_80157584)($at)
    /* FF8CC 800F091C 27FF758A */  addiu      $ra, $ra, %lo(D_8015758A)
    /* FF8D0 800F0920 25AD7588 */  addiu      $t5, $t5, %lo(D_80157588)
    /* FF8D4 800F0924 258C7586 */  addiu      $t4, $t4, %lo(D_80157586)
    /* FF8D8 800F0928 A5900000 */  sh         $s0, 0x0($t4)
    /* FF8DC 800F092C A5A70000 */  sh         $a3, 0x0($t5)
    /* FF8E0 800F0930 1000012F */  b          .L800F0DF0_FFDA0
    /* FF8E4 800F0934 A7F10000 */   sh        $s1, 0x0($ra)
    /* FF8E8 800F0938 44802000 */  mtc1       $zero, $f4
    /* FF8EC 800F093C 3C018015 */  lui        $at, %hi(D_80157F78)
    /* FF8F0 800F0940 3C0B8015 */  lui        $t3, %hi(D_80157F64)
    /* FF8F4 800F0944 3C028015 */  lui        $v0, %hi(D_80157F54)
    /* FF8F8 800F0948 E4247F78 */  swc1       $f4, %lo(D_80157F78)($at)
    /* FF8FC 800F094C 8C427F54 */  lw         $v0, %lo(D_80157F54)($v0)
    /* FF900 800F0950 8D6B7F64 */  lw         $t3, %lo(D_80157F64)($t3)
    /* FF904 800F0954 3C018015 */  lui        $at, %hi(D_80157F74)
    /* FF908 800F0958 A4207F74 */  sh         $zero, %lo(D_80157F74)($at)
    /* FF90C 800F095C 84680000 */  lh         $t0, 0x0($v1)
    /* FF910 800F0960 84690002 */  lh         $t1, 0x2($v1)
    /* FF914 800F0964 15620011 */  bne        $t3, $v0, .L800F09AC_FF95C
    /* FF918 800F0968 846A0004 */   lh        $t2, 0x4($v1)
    /* FF91C 800F096C 3C018015 */  lui        $at, %hi(D_80157580)
    /* FF920 800F0970 A4287580 */  sh         $t0, %lo(D_80157580)($at)
    /* FF924 800F0974 3C018015 */  lui        $at, %hi(D_80157582)
    /* FF928 800F0978 A4297582 */  sh         $t1, %lo(D_80157582)($at)
    /* FF92C 800F097C 3C018015 */  lui        $at, %hi(D_80157584)
    /* FF930 800F0980 3C0C8015 */  lui        $t4, %hi(D_80157586)
    /* FF934 800F0984 3C0D8015 */  lui        $t5, %hi(D_80157588)
    /* FF938 800F0988 3C1F8015 */  lui        $ra, %hi(D_8015758A)
    /* FF93C 800F098C A42A7584 */  sh         $t2, %lo(D_80157584)($at)
    /* FF940 800F0990 27FF758A */  addiu      $ra, $ra, %lo(D_8015758A)
    /* FF944 800F0994 25AD7588 */  addiu      $t5, $t5, %lo(D_80157588)
    /* FF948 800F0998 258C7586 */  addiu      $t4, $t4, %lo(D_80157586)
    /* FF94C 800F099C A5900000 */  sh         $s0, 0x0($t4)
    /* FF950 800F09A0 A5A70000 */  sh         $a3, 0x0($t5)
    /* FF954 800F09A4 10000112 */  b          .L800F0DF0_FFDA0
    /* FF958 800F09A8 A7F10000 */   sh        $s1, 0x0($ra)
  .L800F09AC_FF95C:
    /* FF95C 800F09AC 44829000 */  mtc1       $v0, $f18
    /* FF960 800F09B0 448B7000 */  mtc1       $t3, $f14
    /* FF964 800F09B4 3C0C8015 */  lui        $t4, %hi(D_80157586)
    /* FF968 800F09B8 46809220 */  cvt.s.w    $f8, $f18
    /* FF96C 800F09BC 3C0D8015 */  lui        $t5, %hi(D_80157588)
    /* FF970 800F09C0 3C1F8015 */  lui        $ra, %hi(D_8015758A)
    /* FF974 800F09C4 A7B1002C */  sh         $s1, 0x2C($sp)
    /* FF978 800F09C8 A7B00030 */  sh         $s0, 0x30($sp)
    /* FF97C 800F09CC 46807420 */  cvt.s.w    $f16, $f14
    /* FF980 800F09D0 258C7586 */  addiu      $t4, $t4, %lo(D_80157586)
    /* FF984 800F09D4 25AD7588 */  addiu      $t5, $t5, %lo(D_80157588)
    /* FF988 800F09D8 05610005 */  bgez       $t3, .L800F09F0_FF9A0
    /* FF98C 800F09DC 27FF758A */   addiu     $ra, $ra, %lo(D_8015758A)
    /* FF990 800F09E0 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* FF994 800F09E4 44819000 */  mtc1       $at, $f18
    /* FF998 800F09E8 00000000 */  nop
    /* FF99C 800F09EC 46128400 */  add.s      $f16, $f16, $f18
  .L800F09F0_FF9A0:
    /* FF9A0 800F09F0 46104003 */  div.s      $f0, $f8, $f16
    /* FF9A4 800F09F4 3C048015 */  lui        $a0, %hi(D_80157580)
    /* FF9A8 800F09F8 84847580 */  lh         $a0, %lo(D_80157580)($a0)
    /* FF9AC 800F09FC 3C058015 */  lui        $a1, %hi(D_80157582)
    /* FF9B0 800F0A00 84A57582 */  lh         $a1, %lo(D_80157582)($a1)
    /* FF9B4 800F0A04 01047823 */  subu       $t7, $t0, $a0
    /* FF9B8 800F0A08 448F5000 */  mtc1       $t7, $f10
    /* FF9BC 800F0A0C 44842000 */  mtc1       $a0, $f4
    /* FF9C0 800F0A10 01257023 */  subu       $t6, $t1, $a1
    /* FF9C4 800F0A14 3C068015 */  lui        $a2, %hi(D_80157584)
    /* FF9C8 800F0A18 84C67584 */  lh         $a2, %lo(D_80157584)($a2)
    /* FF9CC 800F0A1C 3C018015 */  lui        $at, %hi(D_80157580)
    /* FF9D0 800F0A20 468054A0 */  cvt.s.w    $f18, $f10
    /* FF9D4 800F0A24 44855000 */  mtc1       $a1, $f10
    /* FF9D8 800F0A28 468021A0 */  cvt.s.w    $f6, $f4
    /* FF9DC 800F0A2C 46009202 */  mul.s      $f8, $f18, $f0
    /* FF9E0 800F0A30 468054A0 */  cvt.s.w    $f18, $f10
    /* FF9E4 800F0A34 46083400 */  add.s      $f16, $f6, $f8
    /* FF9E8 800F0A38 448E3000 */  mtc1       $t6, $f6
    /* FF9EC 800F0A3C 00000000 */  nop
    /* FF9F0 800F0A40 46803220 */  cvt.s.w    $f8, $f6
    /* FF9F4 800F0A44 44863000 */  mtc1       $a2, $f6
    /* FF9F8 800F0A48 4600810D */  trunc.w.s  $f4, $f16
    /* FF9FC 800F0A4C 46004402 */  mul.s      $f16, $f8, $f0
    /* FFA00 800F0A50 44192000 */  mfc1       $t9, $f4
    /* FFA04 800F0A54 00000000 */  nop
    /* FFA08 800F0A58 A4397580 */  sh         $t9, %lo(D_80157580)($at)
    /* FFA0C 800F0A5C 46109100 */  add.s      $f4, $f18, $f16
    /* FFA10 800F0A60 0146C823 */  subu       $t9, $t2, $a2
    /* FFA14 800F0A64 44999000 */  mtc1       $t9, $f18
    /* FFA18 800F0A68 46803220 */  cvt.s.w    $f8, $f6
    /* FFA1C 800F0A6C 3C018015 */  lui        $at, %hi(D_80157582)
    /* FFA20 800F0A70 46809420 */  cvt.s.w    $f16, $f18
    /* FFA24 800F0A74 4600228D */  trunc.w.s  $f10, $f4
    /* FFA28 800F0A78 46008102 */  mul.s      $f4, $f16, $f0
    /* FFA2C 800F0A7C 44185000 */  mfc1       $t8, $f10
    /* FFA30 800F0A80 00000000 */  nop
    /* FFA34 800F0A84 A4387582 */  sh         $t8, %lo(D_80157582)($at)
    /* FFA38 800F0A88 46044280 */  add.s      $f10, $f8, $f4
    /* FFA3C 800F0A8C 3C018015 */  lui        $at, %hi(D_80157584)
    /* FFA40 800F0A90 87B80030 */  lh         $t8, 0x30($sp)
    /* FFA44 800F0A94 4600518D */  trunc.w.s  $f6, $f10
    /* FFA48 800F0A98 440F3000 */  mfc1       $t7, $f6
    /* FFA4C 800F0A9C 00000000 */  nop
    /* FFA50 800F0AA0 A42F7584 */  sh         $t7, %lo(D_80157584)($at)
    /* FFA54 800F0AA4 85900000 */  lh         $s0, 0x0($t4)
    /* FFA58 800F0AA8 85A30000 */  lh         $v1, 0x0($t5)
    /* FFA5C 800F0AAC 87F10000 */  lh         $s1, 0x0($ra)
    /* FFA60 800F0AB0 0310C823 */  subu       $t9, $t8, $s0
    /* FFA64 800F0AB4 44994000 */  mtc1       $t9, $f8
    /* FFA68 800F0AB8 44909000 */  mtc1       $s0, $f18
    /* FFA6C 800F0ABC 00E3C023 */  subu       $t8, $a3, $v1
    /* FFA70 800F0AC0 46804120 */  cvt.s.w    $f4, $f8
    /* FFA74 800F0AC4 44834000 */  mtc1       $v1, $f8
    /* FFA78 800F0AC8 46809420 */  cvt.s.w    $f16, $f18
    /* FFA7C 800F0ACC 46002282 */  mul.s      $f10, $f4, $f0
    /* FFA80 800F0AD0 46804120 */  cvt.s.w    $f4, $f8
    /* FFA84 800F0AD4 460A8180 */  add.s      $f6, $f16, $f10
    /* FFA88 800F0AD8 44988000 */  mtc1       $t8, $f16
    /* FFA8C 800F0ADC 00000000 */  nop
    /* FFA90 800F0AE0 468082A0 */  cvt.s.w    $f10, $f16
    /* FFA94 800F0AE4 44918000 */  mtc1       $s1, $f16
    /* FFA98 800F0AE8 4600348D */  trunc.w.s  $f18, $f6
    /* FFA9C 800F0AEC 46005182 */  mul.s      $f6, $f10, $f0
    /* FFAA0 800F0AF0 440F9000 */  mfc1       $t7, $f18
    /* FFAA4 800F0AF4 00000000 */  nop
    /* FFAA8 800F0AF8 A58F0000 */  sh         $t7, 0x0($t4)
    /* FFAAC 800F0AFC 87AF002C */  lh         $t7, 0x2C($sp)
    /* FFAB0 800F0B00 46062480 */  add.s      $f18, $f4, $f6
    /* FFAB4 800F0B04 01F1C023 */  subu       $t8, $t7, $s1
    /* FFAB8 800F0B08 44982000 */  mtc1       $t8, $f4
    /* FFABC 800F0B0C 4600920D */  trunc.w.s  $f8, $f18
    /* FFAC0 800F0B10 468021A0 */  cvt.s.w    $f6, $f4
    /* FFAC4 800F0B14 440E4000 */  mfc1       $t6, $f8
    /* FFAC8 800F0B18 00000000 */  nop
    /* FFACC 800F0B1C A5AE0000 */  sh         $t6, 0x0($t5)
    /* FFAD0 800F0B20 468082A0 */  cvt.s.w    $f10, $f16
    /* FFAD4 800F0B24 46003482 */  mul.s      $f18, $f6, $f0
    /* FFAD8 800F0B28 46125200 */  add.s      $f8, $f10, $f18
    /* FFADC 800F0B2C 4600440D */  trunc.w.s  $f16, $f8
    /* FFAE0 800F0B30 440E8000 */  mfc1       $t6, $f16
    /* FFAE4 800F0B34 100000AE */  b          .L800F0DF0_FFDA0
    /* FFAE8 800F0B38 A7EE0000 */   sh        $t6, 0x0($ra)
    /* FFAEC 800F0B3C 3C0F8015 */  lui        $t7, %hi(D_80157F54)
    /* FFAF0 800F0B40 8DEF7F54 */  lw         $t7, %lo(D_80157F54)($t7)
    /* FFAF4 800F0B44 15E00010 */  bnez       $t7, .L800F0B88_FFB38
    /* FFAF8 800F0B48 00000000 */   nop
    /* FFAFC 800F0B4C 44802000 */  mtc1       $zero, $f4
    /* FFB00 800F0B50 3C018015 */  lui        $at, %hi(D_80157FC8)
    /* FFB04 800F0B54 E4247FC8 */  swc1       $f4, %lo(D_80157FC8)($at)
    /* FFB08 800F0B58 84780000 */  lh         $t8, 0x0($v1)
    /* FFB0C 800F0B5C 846F0002 */  lh         $t7, 0x2($v1)
    /* FFB10 800F0B60 846E0004 */  lh         $t6, 0x4($v1)
    /* FFB14 800F0B64 3C018015 */  lui        $at, %hi(D_80157FC0)
    /* FFB18 800F0B68 03102023 */  subu       $a0, $t8, $s0
    /* FFB1C 800F0B6C A4247FC0 */  sh         $a0, %lo(D_80157FC0)($at)
    /* FFB20 800F0B70 3C018015 */  lui        $at, %hi(D_80157FC2)
    /* FFB24 800F0B74 01E7C823 */  subu       $t9, $t7, $a3
    /* FFB28 800F0B78 A4397FC2 */  sh         $t9, %lo(D_80157FC2)($at)
    /* FFB2C 800F0B7C 3C018015 */  lui        $at, %hi(D_80157FC4)
    /* FFB30 800F0B80 01D1C023 */  subu       $t8, $t6, $s1
    /* FFB34 800F0B84 A4387FC4 */  sh         $t8, %lo(D_80157FC4)($at)
  .L800F0B88_FFB38:
    /* FFB38 800F0B88 3C018015 */  lui        $at, %hi(D_80157FC8)
    /* FFB3C 800F0B8C C4267FC8 */  lwc1       $f6, %lo(D_80157FC8)($at)
    /* FFB40 800F0B90 3C018014 */  lui        $at, %hi(D_801445D8)
    /* FFB44 800F0B94 D43245D8 */  ldc1       $f18, %lo(D_801445D8)($at)
    /* FFB48 800F0B98 460032A1 */  cvt.d.s    $f10, $f6
    /* FFB4C 800F0B9C 3C018014 */  lui        $at, %hi(D_801445E0)
    /* FFB50 800F0BA0 46325202 */  mul.d      $f8, $f10, $f18
    /* FFB54 800F0BA4 D43045E0 */  ldc1       $f16, %lo(D_801445E0)($at)
    /* FFB58 800F0BA8 A7A7002E */  sh         $a3, 0x2E($sp)
    /* FFB5C 800F0BAC A7B00030 */  sh         $s0, 0x30($sp)
    /* FFB60 800F0BB0 A7B1002C */  sh         $s1, 0x2C($sp)
    /* FFB64 800F0BB4 46304103 */  div.d      $f4, $f8, $f16
    /* FFB68 800F0BB8 0C00797C */  jal        sinf
    /* FFB6C 800F0BBC 46202320 */   cvt.s.d   $f12, $f4
    /* FFB70 800F0BC0 3C018015 */  lui        $at, %hi(D_80157FC8)
    /* FFB74 800F0BC4 C4267FC8 */  lwc1       $f6, %lo(D_80157FC8)($at)
    /* FFB78 800F0BC8 3C018014 */  lui        $at, %hi(D_801445E8)
    /* FFB7C 800F0BCC D43245E8 */  ldc1       $f18, %lo(D_801445E8)($at)
    /* FFB80 800F0BD0 460032A1 */  cvt.d.s    $f10, $f6
    /* FFB84 800F0BD4 3C018014 */  lui        $at, %hi(D_801445F0)
    /* FFB88 800F0BD8 46325202 */  mul.d      $f8, $f10, $f18
    /* FFB8C 800F0BDC D43045F0 */  ldc1       $f16, %lo(D_801445F0)($at)
    /* FFB90 800F0BE0 E7A00024 */  swc1       $f0, 0x24($sp)
    /* FFB94 800F0BE4 46304103 */  div.d      $f4, $f8, $f16
    /* FFB98 800F0BE8 0C0079EC */  jal        __cosf
    /* FFB9C 800F0BEC 46202320 */   cvt.s.d   $f12, $f4
    /* FFBA0 800F0BF0 3C048015 */  lui        $a0, %hi(D_80157FC0)
    /* FFBA4 800F0BF4 84847FC0 */  lh         $a0, %lo(D_80157FC0)($a0)
    /* FFBA8 800F0BF8 3C068015 */  lui        $a2, %hi(D_80157FC4)
    /* FFBAC 800F0BFC 84C67FC4 */  lh         $a2, %lo(D_80157FC4)($a2)
    /* FFBB0 800F0C00 44843000 */  mtc1       $a0, $f6
    /* FFBB4 800F0C04 C7B20024 */  lwc1       $f18, 0x24($sp)
    /* FFBB8 800F0C08 44868000 */  mtc1       $a2, $f16
    /* FFBBC 800F0C0C 468032A0 */  cvt.s.w    $f10, $f6
    /* FFBC0 800F0C10 3C018015 */  lui        $at, %hi(D_80157FC8)
    /* FFBC4 800F0C14 46808120 */  cvt.s.w    $f4, $f16
    /* FFBC8 800F0C18 46125202 */  mul.s      $f8, $f10, $f18
    /* FFBCC 800F0C1C C4327FC8 */  lwc1       $f18, %lo(D_80157FC8)($at)
    /* FFBD0 800F0C20 3C018014 */  lui        $at, %hi(D_801445F8)
    /* FFBD4 800F0C24 46009421 */  cvt.d.s    $f16, $f18
    /* FFBD8 800F0C28 46040182 */  mul.s      $f6, $f0, $f4
    /* FFBDC 800F0C2C D42445F8 */  ldc1       $f4, %lo(D_801445F8)($at)
    /* FFBE0 800F0C30 3C018014 */  lui        $at, %hi(D_80144600)
    /* FFBE4 800F0C34 46083280 */  add.s      $f10, $f6, $f8
    /* FFBE8 800F0C38 46248182 */  mul.d      $f6, $f16, $f4
    /* FFBEC 800F0C3C D4284600 */  ldc1       $f8, %lo(D_80144600)($at)
    /* FFBF0 800F0C40 E7AA003C */  swc1       $f10, 0x3C($sp)
    /* FFBF4 800F0C44 46283283 */  div.d      $f10, $f6, $f8
    /* FFBF8 800F0C48 0C0079EC */  jal        __cosf
    /* FFBFC 800F0C4C 46205320 */   cvt.s.d   $f12, $f10
    /* FFC00 800F0C50 3C018015 */  lui        $at, %hi(D_80157FC8)
    /* FFC04 800F0C54 C4327FC8 */  lwc1       $f18, %lo(D_80157FC8)($at)
    /* FFC08 800F0C58 3C018014 */  lui        $at, %hi(D_80144608)
    /* FFC0C 800F0C5C D4244608 */  ldc1       $f4, %lo(D_80144608)($at)
    /* FFC10 800F0C60 46009421 */  cvt.d.s    $f16, $f18
    /* FFC14 800F0C64 3C018014 */  lui        $at, %hi(D_80144610)
    /* FFC18 800F0C68 46248182 */  mul.d      $f6, $f16, $f4
    /* FFC1C 800F0C6C D4284610 */  ldc1       $f8, %lo(D_80144610)($at)
    /* FFC20 800F0C70 E7A00024 */  swc1       $f0, 0x24($sp)
    /* FFC24 800F0C74 46283283 */  div.d      $f10, $f6, $f8
    /* FFC28 800F0C78 0C00797C */  jal        sinf
    /* FFC2C 800F0C7C 46205320 */   cvt.s.d   $f12, $f10
    /* FFC30 800F0C80 87B90030 */  lh         $t9, 0x30($sp)
    /* FFC34 800F0C84 3C048015 */  lui        $a0, %hi(D_80157FC0)
    /* FFC38 800F0C88 3C058015 */  lui        $a1, %hi(D_80157FC2)
    /* FFC3C 800F0C8C 3C068015 */  lui        $a2, %hi(D_80157FC4)
    /* FFC40 800F0C90 3C0C8015 */  lui        $t4, %hi(D_80157586)
    /* FFC44 800F0C94 84C67FC4 */  lh         $a2, %lo(D_80157FC4)($a2)
    /* FFC48 800F0C98 84A57FC2 */  lh         $a1, %lo(D_80157FC2)($a1)
    /* FFC4C 800F0C9C 84847FC0 */  lh         $a0, %lo(D_80157FC0)($a0)
    /* FFC50 800F0CA0 258C7586 */  addiu      $t4, $t4, %lo(D_80157586)
    /* FFC54 800F0CA4 A5990000 */  sh         $t9, 0x0($t4)
    /* FFC58 800F0CA8 858F0000 */  lh         $t7, 0x0($t4)
    /* FFC5C 800F0CAC C7A4003C */  lwc1       $f4, 0x3C($sp)
    /* FFC60 800F0CB0 44845000 */  mtc1       $a0, $f10
    /* FFC64 800F0CB4 448F9000 */  mtc1       $t7, $f18
    /* FFC68 800F0CB8 87A7002E */  lh         $a3, 0x2E($sp)
    /* FFC6C 800F0CBC 87AE002C */  lh         $t6, 0x2C($sp)
    /* FFC70 800F0CC0 46809420 */  cvt.s.w    $f16, $f18
    /* FFC74 800F0CC4 3C0D8015 */  lui        $t5, %hi(D_80157588)
    /* FFC78 800F0CC8 3C1F8015 */  lui        $ra, %hi(D_8015758A)
    /* FFC7C 800F0CCC 27FF758A */  addiu      $ra, $ra, %lo(D_8015758A)
    /* FFC80 800F0CD0 25AD7588 */  addiu      $t5, $t5, %lo(D_80157588)
    /* FFC84 800F0CD4 468054A0 */  cvt.s.w    $f18, $f10
    /* FFC88 800F0CD8 3C018015 */  lui        $at, %hi(D_80157580)
    /* FFC8C 800F0CDC A5A70000 */  sh         $a3, 0x0($t5)
    /* FFC90 800F0CE0 A7EE0000 */  sh         $t6, 0x0($ra)
    /* FFC94 800F0CE4 3C028015 */  lui        $v0, %hi(D_80157F54)
    /* FFC98 800F0CE8 46048180 */  add.s      $f6, $f16, $f4
    /* FFC9C 800F0CEC C7B00024 */  lwc1       $f16, 0x24($sp)
    /* FFCA0 800F0CF0 8C427F54 */  lw         $v0, %lo(D_80157F54)($v0)
    /* FFCA4 800F0CF4 4600320D */  trunc.w.s  $f8, $f6
    /* FFCA8 800F0CF8 44863000 */  mtc1       $a2, $f6
    /* FFCAC 800F0CFC 46109102 */  mul.s      $f4, $f18, $f16
    /* FFCB0 800F0D00 44194000 */  mfc1       $t9, $f8
    /* FFCB4 800F0D04 00000000 */  nop
    /* FFCB8 800F0D08 A4397580 */  sh         $t9, %lo(D_80157580)($at)
    /* FFCBC 800F0D0C 46803220 */  cvt.s.w    $f8, $f6
    /* FFCC0 800F0D10 85AE0000 */  lh         $t6, 0x0($t5)
    /* FFCC4 800F0D14 3C018015 */  lui        $at, %hi(D_80157582)
    /* FFCC8 800F0D18 01C57821 */  addu       $t7, $t6, $a1
    /* FFCCC 800F0D1C A42F7582 */  sh         $t7, %lo(D_80157582)($at)
    /* FFCD0 800F0D20 87F80000 */  lh         $t8, 0x0($ra)
    /* FFCD4 800F0D24 46080282 */  mul.s      $f10, $f0, $f8
    /* FFCD8 800F0D28 3C018015 */  lui        $at, %hi(D_80157584)
    /* FFCDC 800F0D2C 44988000 */  mtc1       $t8, $f16
    /* FFCE0 800F0D30 00000000 */  nop
    /* FFCE4 800F0D34 468081A0 */  cvt.s.w    $f6, $f16
    /* FFCE8 800F0D38 460A2481 */  sub.s      $f18, $f4, $f10
    /* FFCEC 800F0D3C 46123200 */  add.s      $f8, $f6, $f18
    /* FFCF0 800F0D40 4600410D */  trunc.w.s  $f4, $f8
    /* FFCF4 800F0D44 440E2000 */  mfc1       $t6, $f4
    /* FFCF8 800F0D48 00000000 */  nop
    /* FFCFC 800F0D4C A42E7584 */  sh         $t6, %lo(D_80157584)($at)
    /* FFD00 800F0D50 28410008 */  slti       $at, $v0, 0x8
    /* FFD04 800F0D54 1020000C */  beqz       $at, .L800F0D88_FFD38
    /* FFD08 800F0D58 3C018015 */   lui       $at, %hi(D_80157FC8)
    /* FFD0C 800F0D5C C42A7FC8 */  lwc1       $f10, %lo(D_80157FC8)($at)
    /* FFD10 800F0D60 04410003 */  bgez       $v0, .L800F0D70_FFD20
    /* FFD14 800F0D64 00027843 */   sra       $t7, $v0, 1
    /* FFD18 800F0D68 24410001 */  addiu      $at, $v0, 0x1
    /* FFD1C 800F0D6C 00017843 */  sra        $t7, $at, 1
  .L800F0D70_FFD20:
    /* FFD20 800F0D70 448F8000 */  mtc1       $t7, $f16
    /* FFD24 800F0D74 3C018015 */  lui        $at, %hi(D_80157FC8)
    /* FFD28 800F0D78 468081A0 */  cvt.s.w    $f6, $f16
    /* FFD2C 800F0D7C 46065480 */  add.s      $f18, $f10, $f6
    /* FFD30 800F0D80 1000001B */  b          .L800F0DF0_FFDA0
    /* FFD34 800F0D84 E4327FC8 */   swc1      $f18, %lo(D_80157FC8)($at)
  .L800F0D88_FFD38:
    /* FFD38 800F0D88 3C188015 */  lui        $t8, %hi(D_80157F64)
    /* FFD3C 800F0D8C 8F187F64 */  lw         $t8, %lo(D_80157F64)($t8)
    /* FFD40 800F0D90 03021823 */  subu       $v1, $t8, $v0
    /* FFD44 800F0D94 2C610008 */  sltiu      $at, $v1, 0x8
    /* FFD48 800F0D98 1020000E */  beqz       $at, .L800F0DD4_FFD84
    /* FFD4C 800F0D9C 0003C842 */   srl       $t9, $v1, 1
    /* FFD50 800F0DA0 44992000 */  mtc1       $t9, $f4
    /* FFD54 800F0DA4 3C018015 */  lui        $at, %hi(D_80157FC8)
    /* FFD58 800F0DA8 C4287FC8 */  lwc1       $f8, %lo(D_80157FC8)($at)
    /* FFD5C 800F0DAC 07210005 */  bgez       $t9, .L800F0DC4_FFD74
    /* FFD60 800F0DB0 46802420 */   cvt.s.w   $f16, $f4
    /* FFD64 800F0DB4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* FFD68 800F0DB8 44815000 */  mtc1       $at, $f10
    /* FFD6C 800F0DBC 00000000 */  nop
    /* FFD70 800F0DC0 460A8400 */  add.s      $f16, $f16, $f10
  .L800F0DC4_FFD74:
    /* FFD74 800F0DC4 46104180 */  add.s      $f6, $f8, $f16
    /* FFD78 800F0DC8 3C018015 */  lui        $at, %hi(D_80157FC8)
    /* FFD7C 800F0DCC 10000008 */  b          .L800F0DF0_FFDA0
    /* FFD80 800F0DD0 E4267FC8 */   swc1      $f6, %lo(D_80157FC8)($at)
  .L800F0DD4_FFD84:
    /* FFD84 800F0DD4 3C018015 */  lui        $at, %hi(D_80157FC8)
    /* FFD88 800F0DD8 C4327FC8 */  lwc1       $f18, %lo(D_80157FC8)($at)
    /* FFD8C 800F0DDC 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* FFD90 800F0DE0 44812000 */  mtc1       $at, $f4
    /* FFD94 800F0DE4 3C018015 */  lui        $at, %hi(D_80157FC8)
    /* FFD98 800F0DE8 46049280 */  add.s      $f10, $f18, $f4
    /* FFD9C 800F0DEC E42A7FC8 */  swc1       $f10, %lo(D_80157FC8)($at)
  .L800F0DF0_FFDA0:
    /* FFDA0 800F0DF0 3C0C8015 */  lui        $t4, %hi(D_80157586)
    /* FFDA4 800F0DF4 258C7586 */  addiu      $t4, $t4, %lo(D_80157586)
    /* FFDA8 800F0DF8 3C0F8015 */  lui        $t7, %hi(D_80157FAC)
    /* FFDAC 800F0DFC 85EF7FAC */  lh         $t7, %lo(D_80157FAC)($t7)
    /* FFDB0 800F0E00 858E0000 */  lh         $t6, 0x0($t4)
    /* FFDB4 800F0E04 3C0D8015 */  lui        $t5, %hi(D_80157588)
    /* FFDB8 800F0E08 25AD7588 */  addiu      $t5, $t5, %lo(D_80157588)
    /* FFDBC 800F0E0C 01CFC021 */  addu       $t8, $t6, $t7
    /* FFDC0 800F0E10 A5980000 */  sh         $t8, 0x0($t4)
    /* FFDC4 800F0E14 3C0E8015 */  lui        $t6, %hi(D_80157FAE)
    /* FFDC8 800F0E18 85CE7FAE */  lh         $t6, %lo(D_80157FAE)($t6)
    /* FFDCC 800F0E1C 85B90000 */  lh         $t9, 0x0($t5)
    /* FFDD0 800F0E20 3C1F8015 */  lui        $ra, %hi(D_8015758A)
    /* FFDD4 800F0E24 27FF758A */  addiu      $ra, $ra, %lo(D_8015758A)
    /* FFDD8 800F0E28 032E7821 */  addu       $t7, $t9, $t6
    /* FFDDC 800F0E2C A5AF0000 */  sh         $t7, 0x0($t5)
    /* FFDE0 800F0E30 3C198015 */  lui        $t9, %hi(D_80157FB0)
    /* FFDE4 800F0E34 87397FB0 */  lh         $t9, %lo(D_80157FB0)($t9)
    /* FFDE8 800F0E38 87F80000 */  lh         $t8, 0x0($ra)
    /* FFDEC 800F0E3C 3C028015 */  lui        $v0, %hi(D_80157F54)
    /* FFDF0 800F0E40 24427F54 */  addiu      $v0, $v0, %lo(D_80157F54)
    /* FFDF4 800F0E44 8C4F0000 */  lw         $t7, 0x0($v0)
    /* FFDF8 800F0E48 03197021 */  addu       $t6, $t8, $t9
    /* FFDFC 800F0E4C A7EE0000 */  sh         $t6, 0x0($ra)
    /* FFE00 800F0E50 25F80001 */  addiu      $t8, $t7, 0x1
    /* FFE04 800F0E54 AC580000 */  sw         $t8, 0x0($v0)
    /* FFE08 800F0E58 3C198015 */  lui        $t9, %hi(D_80157F64)
    /* FFE0C 800F0E5C 8F397F64 */  lw         $t9, %lo(D_80157F64)($t9)
    /* FFE10 800F0E60 17380018 */  bne        $t9, $t8, .L800F0EC4_FFE74
    /* FFE14 800F0E64 3C028015 */   lui       $v0, %hi(D_80157F5C)
    /* FFE18 800F0E68 24427F5C */  addiu      $v0, $v0, %lo(D_80157F5C)
    /* FFE1C 800F0E6C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* FFE20 800F0E70 3C198015 */  lui        $t9, %hi(D_80157F68)
    /* FFE24 800F0E74 240E0001 */  addiu      $t6, $zero, 0x1
    /* FFE28 800F0E78 25E30001 */  addiu      $v1, $t7, 0x1
    /* FFE2C 800F0E7C AC430000 */  sw         $v1, 0x0($v0)
    /* FFE30 800F0E80 87397F68 */  lh         $t9, %lo(D_80157F68)($t9)
    /* FFE34 800F0E84 3C0F8015 */  lui        $t7, %hi(D_80157F60)
    /* FFE38 800F0E88 14790003 */  bne        $v1, $t9, .L800F0E98_FFE48
    /* FFE3C 800F0E8C 00000000 */   nop
    /* FFE40 800F0E90 1000000C */  b          .L800F0EC4_FFE74
    /* FFE44 800F0E94 AFAE0044 */   sw        $t6, 0x44($sp)
  .L800F0E98_FFE48:
    /* FFE48 800F0E98 8DEF7F60 */  lw         $t7, %lo(D_80157F60)($t7)
    /* FFE4C 800F0E9C 01E32021 */  addu       $a0, $t7, $v1
    /* FFE50 800F0EA0 0004C400 */  sll        $t8, $a0, 16
    /* FFE54 800F0EA4 0C03C0BB */  jal        func_800F02EC_FF29C
    /* FFE58 800F0EA8 00182403 */   sra       $a0, $t8, 16
    /* FFE5C 800F0EAC 3C0C8015 */  lui        $t4, %hi(D_80157586)
    /* FFE60 800F0EB0 3C0D8015 */  lui        $t5, %hi(D_80157588)
    /* FFE64 800F0EB4 3C1F8015 */  lui        $ra, %hi(D_8015758A)
    /* FFE68 800F0EB8 27FF758A */  addiu      $ra, $ra, %lo(D_8015758A)
    /* FFE6C 800F0EBC 25AD7588 */  addiu      $t5, $t5, %lo(D_80157588)
    /* FFE70 800F0EC0 258C7586 */  addiu      $t4, $t4, %lo(D_80157586)
  .L800F0EC4_FFE74:
    /* FFE74 800F0EC4 85900000 */  lh         $s0, 0x0($t4)
    /* FFE78 800F0EC8 85AE0000 */  lh         $t6, 0x0($t5)
    /* FFE7C 800F0ECC 87F10000 */  lh         $s1, 0x0($ra)
    /* FFE80 800F0ED0 44904000 */  mtc1       $s0, $f8
    /* FFE84 800F0ED4 448E3000 */  mtc1       $t6, $f6
    /* FFE88 800F0ED8 44912000 */  mtc1       $s1, $f4
    /* FFE8C 800F0EDC 3C028015 */  lui        $v0, %hi(D_80157F08)
    /* FFE90 800F0EE0 24427F08 */  addiu      $v0, $v0, %lo(D_80157F08)
    /* FFE94 800F0EE4 46804420 */  cvt.s.w    $f16, $f8
    /* FFE98 800F0EE8 00107880 */  sll        $t7, $s0, 2
    /* FFE9C 800F0EEC 0011C080 */  sll        $t8, $s1, 2
    /* FFEA0 800F0EF0 A44F003C */  sh         $t7, 0x3C($v0)
    /* FFEA4 800F0EF4 A458003E */  sh         $t8, 0x3E($v0)
    /* FFEA8 800F0EF8 468034A0 */  cvt.s.w    $f18, $f6
    /* FFEAC 800F0EFC E450000C */  swc1       $f16, 0xC($v0)
    /* FFEB0 800F0F00 3C198015 */  lui        $t9, %hi(D_80157580)
    /* FFEB4 800F0F04 A4500018 */  sh         $s0, 0x18($v0)
    /* FFEB8 800F0F08 A451001A */  sh         $s1, 0x1A($v0)
    /* FFEBC 800F0F0C 468022A0 */  cvt.s.w    $f10, $f4
    /* FFEC0 800F0F10 E4520010 */  swc1       $f18, 0x10($v0)
    /* FFEC4 800F0F14 3C0F8015 */  lui        $t7, %hi(D_80157582)
    /* FFEC8 800F0F18 E44A0014 */  swc1       $f10, 0x14($v0)
    /* FFECC 800F0F1C 87397580 */  lh         $t9, %lo(D_80157580)($t9)
    /* FFED0 800F0F20 00197080 */  sll        $t6, $t9, 2
    /* FFED4 800F0F24 448E4000 */  mtc1       $t6, $f8
    /* FFED8 800F0F28 3C198015 */  lui        $t9, %hi(D_80157584)
    /* FFEDC 800F0F2C 46804420 */  cvt.s.w    $f16, $f8
    /* FFEE0 800F0F30 E4500000 */  swc1       $f16, 0x0($v0)
    /* FFEE4 800F0F34 85EF7582 */  lh         $t7, %lo(D_80157582)($t7)
    /* FFEE8 800F0F38 000FC080 */  sll        $t8, $t7, 2
    /* FFEEC 800F0F3C 44983000 */  mtc1       $t8, $f6
    /* FFEF0 800F0F40 3C188015 */  lui        $t8, %hi(D_80157FCE)
    /* FFEF4 800F0F44 00117A03 */  sra        $t7, $s1, 8
    /* FFEF8 800F0F48 468034A0 */  cvt.s.w    $f18, $f6
    /* FFEFC 800F0F4C E4520004 */  swc1       $f18, 0x4($v0)
    /* FFF00 800F0F50 87397584 */  lh         $t9, %lo(D_80157584)($t9)
    /* FFF04 800F0F54 00197080 */  sll        $t6, $t9, 2
    /* FFF08 800F0F58 448E2000 */  mtc1       $t6, $f4
    /* FFF0C 800F0F5C 00000000 */  nop
    /* FFF10 800F0F60 468022A0 */  cvt.s.w    $f10, $f4
    /* FFF14 800F0F64 E44A0008 */  swc1       $f10, 0x8($v0)
    /* FFF18 800F0F68 87187FCE */  lh         $t8, %lo(D_80157FCE)($t8)
    /* FFF1C 800F0F6C 0018CA03 */  sra        $t9, $t8, 8
    /* FFF20 800F0F70 15F90005 */  bne        $t7, $t9, .L800F0F88_FFF38
    /* FFF24 800F0F74 3C188015 */   lui       $t8, %hi(D_80157FCC)
    /* FFF28 800F0F78 87187FCC */  lh         $t8, %lo(D_80157FCC)($t8)
    /* FFF2C 800F0F7C 00107203 */  sra        $t6, $s0, 8
    /* FFF30 800F0F80 00187A03 */  sra        $t7, $t8, 8
    /* FFF34 800F0F84 11CF000D */  beq        $t6, $t7, .L800F0FBC_FFF6C
  .L800F0F88_FFF38:
    /* FFF38 800F0F88 02002025 */   or        $a0, $s0, $zero
    /* FFF3C 800F0F8C 0C01DBF3 */  jal        func_80076FCC_85F7C
    /* FFF40 800F0F90 02202825 */   or        $a1, $s1, $zero
    /* FFF44 800F0F94 3C1F8015 */  lui        $ra, %hi(D_8015758A)
    /* FFF48 800F0F98 27FF758A */  addiu      $ra, $ra, %lo(D_8015758A)
    /* FFF4C 800F0F9C 87F10000 */  lh         $s1, 0x0($ra)
    /* FFF50 800F0FA0 3C0C8015 */  lui        $t4, %hi(D_80157586)
    /* FFF54 800F0FA4 3C018015 */  lui        $at, %hi(D_80157FCE)
    /* FFF58 800F0FA8 258C7586 */  addiu      $t4, $t4, %lo(D_80157586)
    /* FFF5C 800F0FAC A4317FCE */  sh         $s1, %lo(D_80157FCE)($at)
    /* FFF60 800F0FB0 85900000 */  lh         $s0, 0x0($t4)
    /* FFF64 800F0FB4 3C018015 */  lui        $at, %hi(D_80157FCC)
    /* FFF68 800F0FB8 A4307FCC */  sh         $s0, %lo(D_80157FCC)($at)
  .L800F0FBC_FFF6C:
    /* FFF6C 800F0FBC 00102183 */  sra        $a0, $s0, 6
    /* FFF70 800F0FC0 00112983 */  sra        $a1, $s1, 6
    /* FFF74 800F0FC4 24A50077 */  addiu      $a1, $a1, 0x77
    /* FFF78 800F0FC8 24840077 */  addiu      $a0, $a0, 0x77
    /* FFF7C 800F0FCC 309900FF */  andi       $t9, $a0, 0xFF
    /* FFF80 800F0FD0 30B800FF */  andi       $t8, $a1, 0xFF
    /* FFF84 800F0FD4 3C068020 */  lui        $a2, %hi(D_801FEA30)
    /* FFF88 800F0FD8 24C6EA30 */  addiu      $a2, $a2, %lo(D_801FEA30)
    /* FFF8C 800F0FDC 03002825 */  or         $a1, $t8, $zero
    /* FFF90 800F0FE0 03202025 */  or         $a0, $t9, $zero
    /* FFF94 800F0FE4 0C02D014 */  jal        func_800B4050_C3000
    /* FFF98 800F0FE8 00003825 */   or        $a3, $zero, $zero
    /* FFF9C 800F0FEC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* FFFA0 800F0FF0 8FA20044 */  lw         $v0, 0x44($sp)
    /* FFFA4 800F0FF4 8FB00014 */  lw         $s0, 0x14($sp)
    /* FFFA8 800F0FF8 8FB10018 */  lw         $s1, 0x18($sp)
    /* FFFAC 800F0FFC 03E00008 */  jr         $ra
    /* FFFB0 800F1000 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_800F066C_FF61C
