nonmatching func_800AC5BC_BB56C, 0x480

glabel func_800AC5BC_BB56C
    /* BB56C 800AC5BC 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* BB570 800AC5C0 3C058005 */  lui        $a1, %hi(D_80052B34)
    /* BB574 800AC5C4 8CA52B34 */  lw         $a1, %lo(D_80052B34)($a1)
    /* BB578 800AC5C8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* BB57C 800AC5CC AFA40060 */  sw         $a0, 0x60($sp)
    /* BB580 800AC5D0 AFA00044 */  sw         $zero, 0x44($sp)
    /* BB584 800AC5D4 90A2001A */  lbu        $v0, 0x1A($a1)
    /* BB588 800AC5D8 504000AA */  beql       $v0, $zero, .L800AC884_BB834
    /* BB58C 800AC5DC 93AA0063 */   lbu       $t2, 0x63($sp)
    /* BB590 800AC5E0 94AE0020 */  lhu        $t6, 0x20($a1)
    /* BB594 800AC5E4 31CF0002 */  andi       $t7, $t6, 0x2
    /* BB598 800AC5E8 55E000A6 */  bnel       $t7, $zero, .L800AC884_BB834
    /* BB59C 800AC5EC 93AA0063 */   lbu       $t2, 0x63($sp)
    /* BB5A0 800AC5F0 84B80012 */  lh         $t8, 0x12($a1)
    /* BB5A4 800AC5F4 0002C8C0 */  sll        $t9, $v0, 3
    /* BB5A8 800AC5F8 0322C823 */  subu       $t9, $t9, $v0
    /* BB5AC 800AC5FC 130000A0 */  beqz       $t8, .L800AC880_BB830
    /* BB5B0 800AC600 0019C900 */   sll       $t9, $t9, 4
    /* BB5B4 800AC604 C4A00058 */  lwc1       $f0, 0x58($a1)
    /* BB5B8 800AC608 3C0A8025 */  lui        $t2, %hi(D_80257A36)
    /* BB5BC 800AC60C 01595021 */  addu       $t2, $t2, $t9
    /* BB5C0 800AC610 46000087 */  neg.s      $f2, $f0
    /* BB5C4 800AC614 4600103C */  c.lt.s     $f2, $f0
    /* BB5C8 800AC618 00000000 */  nop
    /* BB5CC 800AC61C 45020004 */  bc1fl      .L800AC630_BB5E0
    /* BB5D0 800AC620 46001306 */   mov.s     $f12, $f2
    /* BB5D4 800AC624 10000002 */  b          .L800AC630_BB5E0
    /* BB5D8 800AC628 46000306 */   mov.s     $f12, $f0
    /* BB5DC 800AC62C 46001306 */  mov.s      $f12, $f2
  .L800AC630_BB5E0:
    /* BB5E0 800AC630 854A7A36 */  lh         $t2, %lo(D_80257A36)($t2)
    /* BB5E4 800AC634 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
    /* BB5E8 800AC638 44812000 */  mtc1       $at, $f4
    /* BB5EC 800AC63C 000A5843 */  sra        $t3, $t2, 1
    /* BB5F0 800AC640 448B4000 */  mtc1       $t3, $f8
    /* BB5F4 800AC644 46046182 */  mul.s      $f6, $f12, $f4
    /* BB5F8 800AC648 93AD0063 */  lbu        $t5, 0x63($sp)
    /* BB5FC 800AC64C 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* BB600 800AC650 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* BB604 800AC654 000D7080 */  sll        $t6, $t5, 2
    /* BB608 800AC658 01CD7021 */  addu       $t6, $t6, $t5
    /* BB60C 800AC65C 468042A0 */  cvt.s.w    $f10, $f8
    /* BB610 800AC660 000E7100 */  sll        $t6, $t6, 4
    /* BB614 800AC664 01CF1821 */  addu       $v1, $t6, $t7
    /* BB618 800AC668 84780000 */  lh         $t8, 0x0($v1)
    /* BB61C 800AC66C 84B90000 */  lh         $t9, 0x0($a1)
    /* BB620 800AC670 846A0004 */  lh         $t2, 0x4($v1)
    /* BB624 800AC674 460A3400 */  add.s      $f16, $f6, $f10
    /* BB628 800AC678 03193023 */  subu       $a2, $t8, $t9
    /* BB62C 800AC67C 84AB0004 */  lh         $t3, 0x4($a1)
    /* BB630 800AC680 00064823 */  negu       $t1, $a2
    /* BB634 800AC684 4600848D */  trunc.w.s  $f18, $f16
    /* BB638 800AC688 0126082A */  slt        $at, $t1, $a2
    /* BB63C 800AC68C 01201025 */  or         $v0, $t1, $zero
    /* BB640 800AC690 014B3823 */  subu       $a3, $t2, $t3
    /* BB644 800AC694 44089000 */  mfc1       $t0, $f18
    /* BB648 800AC698 10200003 */  beqz       $at, .L800AC6A8_BB658
    /* BB64C 800AC69C 00000000 */   nop
    /* BB650 800AC6A0 10000001 */  b          .L800AC6A8_BB658
    /* BB654 800AC6A4 00C01025 */   or        $v0, $a2, $zero
  .L800AC6A8_BB658:
    /* BB658 800AC6A8 0048082A */  slt        $at, $v0, $t0
    /* BB65C 800AC6AC 10200074 */  beqz       $at, .L800AC880_BB830
    /* BB660 800AC6B0 00071023 */   negu      $v0, $a3
    /* BB664 800AC6B4 0047082A */  slt        $at, $v0, $a3
    /* BB668 800AC6B8 10200003 */  beqz       $at, .L800AC6C8_BB678
    /* BB66C 800AC6BC 00401825 */   or        $v1, $v0, $zero
    /* BB670 800AC6C0 10000001 */  b          .L800AC6C8_BB678
    /* BB674 800AC6C4 00E01825 */   or        $v1, $a3, $zero
  .L800AC6C8_BB678:
    /* BB678 800AC6C8 0068082A */  slt        $at, $v1, $t0
    /* BB67C 800AC6CC 5020006D */  beql       $at, $zero, .L800AC884_BB834
    /* BB680 800AC6D0 93AA0063 */   lbu       $t2, 0x63($sp)
    /* BB684 800AC6D4 94A40006 */  lhu        $a0, 0x6($a1)
    /* BB688 800AC6D8 AFA90028 */  sw         $t1, 0x28($sp)
    /* BB68C 800AC6DC AFA8004C */  sw         $t0, 0x4C($sp)
    /* BB690 800AC6E0 AFA70050 */  sw         $a3, 0x50($sp)
    /* BB694 800AC6E4 0C007654 */  jal        coss
    /* BB698 800AC6E8 AFA60054 */   sw        $a2, 0x54($sp)
    /* BB69C 800AC6EC 3C0C8005 */  lui        $t4, %hi(D_80052B34)
    /* BB6A0 800AC6F0 8D8C2B34 */  lw         $t4, %lo(D_80052B34)($t4)
    /* BB6A4 800AC6F4 A7A20036 */  sh         $v0, 0x36($sp)
    /* BB6A8 800AC6F8 0C007660 */  jal        sins
    /* BB6AC 800AC6FC 95840006 */   lhu       $a0, 0x6($t4)
    /* BB6B0 800AC700 87AD0036 */  lh         $t5, 0x36($sp)
    /* BB6B4 800AC704 8FA70050 */  lw         $a3, 0x50($sp)
    /* BB6B8 800AC708 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* BB6BC 800AC70C 448D5000 */  mtc1       $t5, $f10
    /* BB6C0 800AC710 44872000 */  mtc1       $a3, $f4
    /* BB6C4 800AC714 44811800 */  mtc1       $at, $f3
    /* BB6C8 800AC718 46805420 */  cvt.s.w    $f16, $f10
    /* BB6CC 800AC71C 44801000 */  mtc1       $zero, $f2
    /* BB6D0 800AC720 8FA60054 */  lw         $a2, 0x54($sp)
    /* BB6D4 800AC724 44825000 */  mtc1       $v0, $f10
    /* BB6D8 800AC728 3C0F8005 */  lui        $t7, %hi(D_80052B34)
    /* BB6DC 800AC72C 46802021 */  cvt.d.w    $f0, $f4
    /* BB6E0 800AC730 44864000 */  mtc1       $a2, $f8
    /* BB6E4 800AC734 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* BB6E8 800AC738 460084A1 */  cvt.d.s    $f18, $f16
    /* BB6EC 800AC73C 46805420 */  cvt.s.w    $f16, $f10
    /* BB6F0 800AC740 46229103 */  div.d      $f4, $f18, $f2
    /* BB6F4 800AC744 468041A1 */  cvt.d.w    $f6, $f8
    /* BB6F8 800AC748 460084A1 */  cvt.d.s    $f18, $f16
    /* BB6FC 800AC74C 46243202 */  mul.d      $f8, $f6, $f4
    /* BB700 800AC750 46229183 */  div.d      $f6, $f18, $f2
    /* BB704 800AC754 46203102 */  mul.d      $f4, $f6, $f0
    /* BB708 800AC758 46282280 */  add.d      $f10, $f4, $f8
    /* BB70C 800AC75C 4620540D */  trunc.w.d  $f16, $f10
    /* BB710 800AC760 E7B0005C */  swc1       $f16, 0x5C($sp)
    /* BB714 800AC764 95E40006 */  lhu        $a0, 0x6($t7)
    /* BB718 800AC768 0C007660 */  jal        sins
    /* BB71C 800AC76C F7A00018 */   sdc1      $f0, 0x18($sp)
    /* BB720 800AC770 3C188005 */  lui        $t8, %hi(D_80052B34)
    /* BB724 800AC774 8F182B34 */  lw         $t8, %lo(D_80052B34)($t8)
    /* BB728 800AC778 A7A20036 */  sh         $v0, 0x36($sp)
    /* BB72C 800AC77C 0C007654 */  jal        coss
    /* BB730 800AC780 97040006 */   lhu       $a0, 0x6($t8)
    /* BB734 800AC784 8FA3005C */  lw         $v1, 0x5C($sp)
    /* BB738 800AC788 8FA8004C */  lw         $t0, 0x4C($sp)
    /* BB73C 800AC78C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* BB740 800AC790 44811800 */  mtc1       $at, $f3
    /* BB744 800AC794 44801000 */  mtc1       $zero, $f2
    /* BB748 800AC798 0068082A */  slt        $at, $v1, $t0
    /* BB74C 800AC79C 10200008 */  beqz       $at, .L800AC7C0_BB770
    /* BB750 800AC7A0 D7A00018 */   ldc1      $f0, 0x18($sp)
    /* BB754 800AC7A4 3C058005 */  lui        $a1, %hi(D_80052B34)
    /* BB758 800AC7A8 8CA52B34 */  lw         $a1, %lo(D_80052B34)($a1)
    /* BB75C 800AC7AC 44809000 */  mtc1       $zero, $f18
    /* BB760 800AC7B0 C4A60058 */  lwc1       $f6, 0x58($a1)
    /* BB764 800AC7B4 4606903C */  c.lt.s     $f18, $f6
    /* BB768 800AC7B8 00000000 */  nop
    /* BB76C 800AC7BC 4501000B */  bc1t       .L800AC7EC_BB79C
  .L800AC7C0_BB770:
    /* BB770 800AC7C0 0008C823 */   negu      $t9, $t0
    /* BB774 800AC7C4 0323082A */  slt        $at, $t9, $v1
    /* BB778 800AC7C8 1020002D */  beqz       $at, .L800AC880_BB830
    /* BB77C 800AC7CC 3C058005 */   lui       $a1, %hi(D_80052B34)
    /* BB780 800AC7D0 8CA52B34 */  lw         $a1, %lo(D_80052B34)($a1)
    /* BB784 800AC7D4 44804000 */  mtc1       $zero, $f8
    /* BB788 800AC7D8 C4A40058 */  lwc1       $f4, 0x58($a1)
    /* BB78C 800AC7DC 4608203C */  c.lt.s     $f4, $f8
    /* BB790 800AC7E0 00000000 */  nop
    /* BB794 800AC7E4 45020027 */  bc1fl      .L800AC884_BB834
    /* BB798 800AC7E8 93AA0063 */   lbu       $t2, 0x63($sp)
  .L800AC7EC_BB79C:
    /* BB79C 800AC7EC 87AB0036 */  lh         $t3, 0x36($sp)
    /* BB7A0 800AC7F0 8FAA0028 */  lw         $t2, 0x28($sp)
    /* BB7A4 800AC7F4 24190001 */  addiu      $t9, $zero, 0x1
    /* BB7A8 800AC7F8 448B9000 */  mtc1       $t3, $f18
    /* BB7AC 800AC7FC 448A5000 */  mtc1       $t2, $f10
    /* BB7B0 800AC800 468091A0 */  cvt.s.w    $f6, $f18
    /* BB7B4 800AC804 44829000 */  mtc1       $v0, $f18
    /* BB7B8 800AC808 46805421 */  cvt.d.w    $f16, $f10
    /* BB7BC 800AC80C 46003121 */  cvt.d.s    $f4, $f6
    /* BB7C0 800AC810 468091A0 */  cvt.s.w    $f6, $f18
    /* BB7C4 800AC814 46222203 */  div.d      $f8, $f4, $f2
    /* BB7C8 800AC818 46003121 */  cvt.d.s    $f4, $f6
    /* BB7CC 800AC81C 46288282 */  mul.d      $f10, $f16, $f8
    /* BB7D0 800AC820 46222403 */  div.d      $f16, $f4, $f2
    /* BB7D4 800AC824 46208202 */  mul.d      $f8, $f16, $f0
    /* BB7D8 800AC828 462A4480 */  add.d      $f18, $f8, $f10
    /* BB7DC 800AC82C 4620918D */  trunc.w.d  $f6, $f18
    /* BB7E0 800AC830 44033000 */  mfc1       $v1, $f6
    /* BB7E4 800AC834 00000000 */  nop
    /* BB7E8 800AC838 00032023 */  negu       $a0, $v1
    /* BB7EC 800AC83C 0083082A */  slt        $at, $a0, $v1
    /* BB7F0 800AC840 10200003 */  beqz       $at, .L800AC850_BB800
    /* BB7F4 800AC844 00801025 */   or        $v0, $a0, $zero
    /* BB7F8 800AC848 10000001 */  b          .L800AC850_BB800
    /* BB7FC 800AC84C 00601025 */   or        $v0, $v1, $zero
  .L800AC850_BB800:
    /* BB800 800AC850 90AD001A */  lbu        $t5, 0x1A($a1)
    /* BB804 800AC854 3C0F8025 */  lui        $t7, %hi(D_80257A34)
    /* BB808 800AC858 000D70C0 */  sll        $t6, $t5, 3
    /* BB80C 800AC85C 01CD7023 */  subu       $t6, $t6, $t5
    /* BB810 800AC860 000E7100 */  sll        $t6, $t6, 4
    /* BB814 800AC864 01EE7821 */  addu       $t7, $t7, $t6
    /* BB818 800AC868 85EF7A34 */  lh         $t7, %lo(D_80257A34)($t7)
    /* BB81C 800AC86C 000FC043 */  sra        $t8, $t7, 1
    /* BB820 800AC870 0058082A */  slt        $at, $v0, $t8
    /* BB824 800AC874 50200003 */  beql       $at, $zero, .L800AC884_BB834
    /* BB828 800AC878 93AA0063 */   lbu       $t2, 0x63($sp)
    /* BB82C 800AC87C AFB90044 */  sw         $t9, 0x44($sp)
  .L800AC880_BB830:
    /* BB830 800AC880 93AA0063 */  lbu        $t2, 0x63($sp)
  .L800AC884_BB834:
    /* BB834 800AC884 8FAD0044 */  lw         $t5, 0x44($sp)
    /* BB838 800AC888 3C0C8005 */  lui        $t4, %hi(alienInstances)
    /* BB83C 800AC88C 000A5880 */  sll        $t3, $t2, 2
    /* BB840 800AC890 016A5821 */  addu       $t3, $t3, $t2
    /* BB844 800AC894 000B5900 */  sll        $t3, $t3, 4
    /* BB848 800AC898 258C8198 */  addiu      $t4, $t4, %lo(alienInstances)
    /* BB84C 800AC89C 15A00009 */  bnez       $t5, .L800AC8C4_BB874
    /* BB850 800AC8A0 016C1821 */   addu      $v1, $t3, $t4
    /* BB854 800AC8A4 3C0E8016 */  lui        $t6, %hi(D_80158FEC)
    /* BB858 800AC8A8 8DCE8FEC */  lw         $t6, %lo(D_80158FEC)($t6)
    /* BB85C 800AC8AC 55C30060 */  bnel       $t6, $v1, .L800ACA30_BB9E0
    /* BB860 800AC8B0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* BB864 800AC8B4 0C028AA2 */  jal        func_800A2A88_B1A38
    /* BB868 800AC8B8 AFA30030 */   sw        $v1, 0x30($sp)
    /* BB86C 800AC8BC 1040005B */  beqz       $v0, .L800ACA2C_BB9DC
    /* BB870 800AC8C0 8FA30030 */   lw        $v1, 0x30($sp)
  .L800AC8C4_BB874:
    /* BB874 800AC8C4 3C0F8005 */  lui        $t7, %hi(D_80052B34)
    /* BB878 800AC8C8 3C198005 */  lui        $t9, %hi(D_80052B2C)
    /* BB87C 800AC8CC 8F392B2C */  lw         $t9, %lo(D_80052B2C)($t9)
    /* BB880 800AC8D0 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* BB884 800AC8D4 846D000E */  lh         $t5, 0xE($v1)
    /* BB888 800AC8D8 872A0036 */  lh         $t2, 0x36($t9)
    /* BB88C 800AC8DC 85F80006 */  lh         $t8, 0x6($t7)
    /* BB890 800AC8E0 030A2823 */  subu       $a1, $t8, $t2
    /* BB894 800AC8E4 24A54000 */  addiu      $a1, $a1, 0x4000
    /* BB898 800AC8E8 00055C00 */  sll        $t3, $a1, 16
    /* BB89C 800AC8EC 000B2C03 */  sra        $a1, $t3, 16
    /* BB8A0 800AC8F0 01A52023 */  subu       $a0, $t5, $a1
    /* BB8A4 800AC8F4 00047400 */  sll        $t6, $a0, 16
    /* BB8A8 800AC8F8 000E7C03 */  sra        $t7, $t6, 16
    /* BB8AC 800AC8FC 000F3023 */  negu       $a2, $t7
    /* BB8B0 800AC900 00CF082A */  slt        $at, $a2, $t7
    /* BB8B4 800AC904 10200003 */  beqz       $at, .L800AC914_BB8C4
    /* BB8B8 800AC908 00C01025 */   or        $v0, $a2, $zero
    /* BB8BC 800AC90C 10000001 */  b          .L800AC914_BB8C4
    /* BB8C0 800AC910 01E01025 */   or        $v0, $t7, $zero
  .L800AC914_BB8C4:
    /* BB8C4 800AC914 28414001 */  slti       $at, $v0, 0x4001
    /* BB8C8 800AC918 14200004 */  bnez       $at, .L800AC92C_BB8DC
    /* BB8CC 800AC91C 34018000 */   ori       $at, $zero, 0x8000
    /* BB8D0 800AC920 00A12821 */  addu       $a1, $a1, $at
    /* BB8D4 800AC924 0005CC00 */  sll        $t9, $a1, 16
    /* BB8D8 800AC928 00192C03 */  sra        $a1, $t9, 16
  .L800AC92C_BB8DC:
    /* BB8DC 800AC92C 30A4FFFF */  andi       $a0, $a1, 0xFFFF
    /* BB8E0 800AC930 AFA4002C */  sw         $a0, 0x2C($sp)
    /* BB8E4 800AC934 0C007654 */  jal        coss
    /* BB8E8 800AC938 AFA30030 */   sw        $v1, 0x30($sp)
    /* BB8EC 800AC93C 44822000 */  mtc1       $v0, $f4
    /* BB8F0 800AC940 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* BB8F4 800AC944 44811800 */  mtc1       $at, $f3
    /* BB8F8 800AC948 46802420 */  cvt.s.w    $f16, $f4
    /* BB8FC 800AC94C 44801000 */  mtc1       $zero, $f2
    /* BB900 800AC950 8FA30030 */  lw         $v1, 0x30($sp)
    /* BB904 800AC954 3C018014 */  lui        $at, %hi(D_80142A10)
    /* BB908 800AC958 D4322A10 */  ldc1       $f18, %lo(D_80142A10)($at)
    /* BB90C 800AC95C 846A0000 */  lh         $t2, 0x0($v1)
    /* BB910 800AC960 46008221 */  cvt.d.s    $f8, $f16
    /* BB914 800AC964 8FA4002C */  lw         $a0, 0x2C($sp)
    /* BB918 800AC968 46224283 */  div.d      $f10, $f8, $f2
    /* BB91C 800AC96C 448A2000 */  mtc1       $t2, $f4
    /* BB920 800AC970 00000000 */  nop
    /* BB924 800AC974 46802421 */  cvt.d.w    $f16, $f4
    /* BB928 800AC978 46325182 */  mul.d      $f6, $f10, $f18
    /* BB92C 800AC97C 46303200 */  add.d      $f8, $f6, $f16
    /* BB930 800AC980 4620428D */  trunc.w.d  $f10, $f8
    /* BB934 800AC984 0C007660 */  jal        sins
    /* BB938 800AC988 E7AA005C */   swc1      $f10, 0x5C($sp)
    /* BB93C 800AC98C 44829000 */  mtc1       $v0, $f18
    /* BB940 800AC990 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* BB944 800AC994 44811800 */  mtc1       $at, $f3
    /* BB948 800AC998 46809120 */  cvt.s.w    $f4, $f18
    /* BB94C 800AC99C 44801000 */  mtc1       $zero, $f2
    /* BB950 800AC9A0 8FA30030 */  lw         $v1, 0x30($sp)
    /* BB954 800AC9A4 3C018014 */  lui        $at, %hi(D_80142A18)
    /* BB958 800AC9A8 D4282A18 */  ldc1       $f8, %lo(D_80142A18)($at)
    /* BB95C 800AC9AC 846C0004 */  lh         $t4, 0x4($v1)
    /* BB960 800AC9B0 460021A1 */  cvt.d.s    $f6, $f4
    /* BB964 800AC9B4 8C6E0020 */  lw         $t6, 0x20($v1)
    /* BB968 800AC9B8 46223403 */  div.d      $f16, $f6, $f2
    /* BB96C 800AC9BC 448C9000 */  mtc1       $t4, $f18
    /* BB970 800AC9C0 8FAA005C */  lw         $t2, 0x5C($sp)
    /* BB974 800AC9C4 2401FE1F */  addiu      $at, $zero, -0x1E1
    /* BB978 800AC9C8 46809121 */  cvt.d.w    $f4, $f18
    /* BB97C 800AC9CC 01C17824 */  and        $t7, $t6, $at
    /* BB980 800AC9D0 35F81100 */  ori        $t8, $t7, 0x1100
    /* BB984 800AC9D4 AC6F0020 */  sw         $t7, 0x20($v1)
    /* BB988 800AC9D8 A46A0014 */  sh         $t2, 0x14($v1)
    /* BB98C 800AC9DC AC780020 */  sw         $t8, 0x20($v1)
    /* BB990 800AC9E0 84640014 */  lh         $a0, 0x14($v1)
    /* BB994 800AC9E4 46288282 */  mul.d      $f10, $f16, $f8
    /* BB998 800AC9E8 46245180 */  add.d      $f6, $f10, $f4
    /* BB99C 800AC9EC 4620340D */  trunc.w.d  $f16, $f6
    /* BB9A0 800AC9F0 44068000 */  mfc1       $a2, $f16
    /* BB9A4 800AC9F4 00000000 */  nop
    /* BB9A8 800AC9F8 A4660018 */  sh         $a2, 0x18($v1)
    /* BB9AC 800AC9FC 0C02E134 */  jal        func_800B84D0_C7480
    /* BB9B0 800ACA00 84650018 */   lh        $a1, 0x18($v1)
    /* BB9B4 800ACA04 8FA30030 */  lw         $v1, 0x30($sp)
    /* BB9B8 800ACA08 00025A03 */  sra        $t3, $v0, 8
    /* BB9BC 800ACA0C 256C0064 */  addiu      $t4, $t3, 0x64
    /* BB9C0 800ACA10 240D0032 */  addiu      $t5, $zero, 0x32
    /* BB9C4 800ACA14 240E00FF */  addiu      $t6, $zero, 0xFF
    /* BB9C8 800ACA18 240F00A0 */  addiu      $t7, $zero, 0xA0
    /* BB9CC 800ACA1C A46C0016 */  sh         $t4, 0x16($v1)
    /* BB9D0 800ACA20 A46D002C */  sh         $t5, 0x2C($v1)
    /* BB9D4 800ACA24 A46E0038 */  sh         $t6, 0x38($v1)
    /* BB9D8 800ACA28 A46F0048 */  sh         $t7, 0x48($v1)
  .L800ACA2C_BB9DC:
    /* BB9DC 800ACA2C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800ACA30_BB9E0:
    /* BB9E0 800ACA30 27BD0060 */  addiu      $sp, $sp, 0x60
    /* BB9E4 800ACA34 03E00008 */  jr         $ra
    /* BB9E8 800ACA38 00000000 */   nop
endlabel func_800AC5BC_BB56C
