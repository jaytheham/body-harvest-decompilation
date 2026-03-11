nonmatching func_800C0678_CF628, 0x6A4

glabel func_800C0678_CF628
    /* CF628 800C0678 3C058014 */  lui        $a1, %hi(D_8013DAFC)
    /* CF62C 800C067C 84A5DAFC */  lh         $a1, %lo(D_8013DAFC)($a1)
    /* CF630 800C0680 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* CF634 800C0684 2401FFFF */  addiu      $at, $zero, -0x1
    /* CF638 800C0688 14A10020 */  bne        $a1, $at, .L800C070C_CF6BC
    /* CF63C 800C068C AFBF001C */   sw        $ra, 0x1C($sp)
    /* CF640 800C0690 3C0E8014 */  lui        $t6, %hi(D_8013D9CC)
    /* CF644 800C0694 8DCED9CC */  lw         $t6, %lo(D_8013D9CC)($t6)
    /* CF648 800C0698 240F0002 */  addiu      $t7, $zero, 0x2
    /* CF64C 800C069C 3C018014 */  lui        $at, %hi(D_8013DB00)
    /* CF650 800C06A0 11C00003 */  beqz       $t6, .L800C06B0_CF660
    /* CF654 800C06A4 00000000 */   nop
    /* CF658 800C06A8 1000000B */  b          .L800C06D8_CF688
    /* CF65C 800C06AC A02FDB00 */   sb        $t7, %lo(D_8013DB00)($at)
  .L800C06B0_CF660:
    /* CF660 800C06B0 0C000E38 */  jal        func_800038E0_44E0
    /* CF664 800C06B4 00000000 */   nop
    /* CF668 800C06B8 04410004 */  bgez       $v0, .L800C06CC_CF67C
    /* CF66C 800C06BC 30580001 */   andi      $t8, $v0, 0x1
    /* CF670 800C06C0 13000002 */  beqz       $t8, .L800C06CC_CF67C
    /* CF674 800C06C4 00000000 */   nop
    /* CF678 800C06C8 2718FFFE */  addiu      $t8, $t8, -0x2
  .L800C06CC_CF67C:
    /* CF67C 800C06CC 27190002 */  addiu      $t9, $t8, 0x2
    /* CF680 800C06D0 3C018014 */  lui        $at, %hi(D_8013DB00)
    /* CF684 800C06D4 A039DB00 */  sb         $t9, %lo(D_8013DB00)($at)
  .L800C06D8_CF688:
    /* CF688 800C06D8 3C098014 */  lui        $t1, %hi(D_8013D9C0)
    /* CF68C 800C06DC 2529D9C0 */  addiu      $t1, $t1, %lo(D_8013D9C0)
    /* CF690 800C06E0 852A0000 */  lh         $t2, 0x0($t1)
    /* CF694 800C06E4 3C0C8003 */  lui        $t4, %hi(D_800313F8)
    /* CF698 800C06E8 3C018015 */  lui        $at, %hi(D_80152B7C)
    /* CF69C 800C06EC 254B0008 */  addiu      $t3, $t2, 0x8
    /* CF6A0 800C06F0 A52B0000 */  sh         $t3, 0x0($t1)
    /* CF6A4 800C06F4 858C13F8 */  lh         $t4, %lo(D_800313F8)($t4)
    /* CF6A8 800C06F8 85250000 */  lh         $a1, 0x0($t1)
    /* CF6AC 800C06FC 240D0001 */  addiu      $t5, $zero, 0x1
    /* CF6B0 800C0700 A42C2B7C */  sh         $t4, %lo(D_80152B7C)($at)
    /* CF6B4 800C0704 3C018014 */  lui        $at, %hi(D_8013DB08)
    /* CF6B8 800C0708 AC2DDB08 */  sw         $t5, %lo(D_8013DB08)($at)
  .L800C070C_CF6BC:
    /* CF6BC 800C070C 3C098014 */  lui        $t1, %hi(D_8013D9C0)
    /* CF6C0 800C0710 2529D9C0 */  addiu      $t1, $t1, %lo(D_8013D9C0)
    /* CF6C4 800C0714 85220000 */  lh         $v0, 0x0($t1)
    /* CF6C8 800C0718 3C018014 */  lui        $at, %hi(D_8013DAFC)
    /* CF6CC 800C071C A425DAFC */  sh         $a1, %lo(D_8013DAFC)($at)
    /* CF6D0 800C0720 24AEFFF8 */  addiu      $t6, $a1, -0x8
    /* CF6D4 800C0724 01C2082A */  slt        $at, $t6, $v0
    /* CF6D8 800C0728 102000B1 */  beqz       $at, .L800C09F0_CF9A0
    /* CF6DC 800C072C 3C198014 */   lui       $t9, %hi(D_8013D9C4)
    /* CF6E0 800C0730 8739D9C4 */  lh         $t9, %lo(D_8013D9C4)($t9)
    /* CF6E4 800C0734 3C013F60 */  lui        $at, (0x3F600000 >> 16)
    /* CF6E8 800C0738 44815800 */  mtc1       $at, $f11
    /* CF6EC 800C073C 44992000 */  mtc1       $t9, $f4
    /* CF6F0 800C0740 44805000 */  mtc1       $zero, $f10
    /* CF6F4 800C0744 3C014348 */  lui        $at, (0x43480000 >> 16)
    /* CF6F8 800C0748 468021A0 */  cvt.s.w    $f6, $f4
    /* CF6FC 800C074C 44819000 */  mtc1       $at, $f18
    /* CF700 800C0750 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
    /* CF704 800C0754 44812000 */  mtc1       $at, $f4
    /* CF708 800C0758 00A24023 */  subu       $t0, $a1, $v0
    /* CF70C 800C075C 00087C00 */  sll        $t7, $t0, 16
    /* CF710 800C0760 46003221 */  cvt.d.s    $f8, $f6
    /* CF714 800C0764 000F4403 */  sra        $t0, $t7, 16
    /* CF718 800C0768 462A4402 */  mul.d      $f16, $f8, $f10
    /* CF71C 800C076C 00087100 */  sll        $t6, $t0, 4
    /* CF720 800C0770 01C87023 */  subu       $t6, $t6, $t0
    /* CF724 800C0774 3C018014 */  lui        $at, %hi(D_8013DAFC)
    /* CF728 800C0778 A425DAFC */  sh         $a1, %lo(D_8013DAFC)($at)
    /* CF72C 800C077C 3C018004 */  lui        $at, %hi(D_80047743)
    /* CF730 800C0780 462080A0 */  cvt.s.d    $f2, $f16
    /* CF734 800C0784 46022182 */  mul.s      $f6, $f4, $f2
    /* CF738 800C0788 46069201 */  sub.s      $f8, $f18, $f6
    /* CF73C 800C078C 4600428D */  trunc.w.s  $f10, $f8
    /* CF740 800C0790 440B5000 */  mfc1       $t3, $f10
    /* CF744 800C0794 00000000 */  nop
    /* CF748 800C0798 000B6400 */  sll        $t4, $t3, 16
    /* CF74C 800C079C 000C6C03 */  sra        $t5, $t4, 16
    /* CF750 800C07A0 01AE1823 */  subu       $v1, $t5, $t6
    /* CF754 800C07A4 04610004 */  bgez       $v1, .L800C07B8_CF768
    /* CF758 800C07A8 00000000 */   nop
    /* CF75C 800C07AC 3C018004 */  lui        $at, %hi(D_80047743)
    /* CF760 800C07B0 10000002 */  b          .L800C07BC_CF76C
    /* CF764 800C07B4 A0207743 */   sb        $zero, %lo(D_80047743)($at)
  .L800C07B8_CF768:
    /* CF768 800C07B8 A0237743 */  sb         $v1, %lo(D_80047743)($at)
  .L800C07BC_CF76C:
    /* CF76C 800C07BC 04610004 */  bgez       $v1, .L800C07D0_CF780
    /* CF770 800C07C0 3C018004 */   lui       $at, %hi(D_80047744)
    /* CF774 800C07C4 3C018004 */  lui        $at, %hi(D_80047744)
    /* CF778 800C07C8 10000002 */  b          .L800C07D4_CF784
    /* CF77C 800C07CC A0207744 */   sb        $zero, %lo(D_80047744)($at)
  .L800C07D0_CF780:
    /* CF780 800C07D0 A0237744 */  sb         $v1, %lo(D_80047744)($at)
  .L800C07D4_CF784:
    /* CF784 800C07D4 04610004 */  bgez       $v1, .L800C07E8_CF798
    /* CF788 800C07D8 3C018004 */   lui       $at, %hi(D_80047745)
    /* CF78C 800C07DC 3C018004 */  lui        $at, %hi(D_80047745)
    /* CF790 800C07E0 10000002 */  b          .L800C07EC_CF79C
    /* CF794 800C07E4 A0207745 */   sb        $zero, %lo(D_80047745)($at)
  .L800C07E8_CF798:
    /* CF798 800C07E8 A0237745 */  sb         $v1, %lo(D_80047745)($at)
  .L800C07EC_CF79C:
    /* CF79C 800C07EC 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* CF7A0 800C07F0 44818000 */  mtc1       $at, $f16
    /* CF7A4 800C07F4 3C014120 */  lui        $at, (0x41200000 >> 16)
    /* CF7A8 800C07F8 44812000 */  mtc1       $at, $f4
    /* CF7AC 800C07FC 00000000 */  nop
    /* CF7B0 800C0800 46022482 */  mul.s      $f18, $f4, $f2
    /* CF7B4 800C0804 46128181 */  sub.s      $f6, $f16, $f18
    /* CF7B8 800C0808 4600320D */  trunc.w.s  $f8, $f6
    /* CF7BC 800C080C 44184000 */  mfc1       $t8, $f8
    /* CF7C0 800C0810 00000000 */  nop
    /* CF7C4 800C0814 0018CC00 */  sll        $t9, $t8, 16
    /* CF7C8 800C0818 00195403 */  sra        $t2, $t9, 16
    /* CF7CC 800C081C 01481823 */  subu       $v1, $t2, $t0
    /* CF7D0 800C0820 04610003 */  bgez       $v1, .L800C0830_CF7E0
    /* CF7D4 800C0824 00601025 */   or        $v0, $v1, $zero
    /* CF7D8 800C0828 10000001 */  b          .L800C0830_CF7E0
    /* CF7DC 800C082C 00001025 */   or        $v0, $zero, $zero
  .L800C0830_CF7E0:
    /* CF7E0 800C0830 000222C0 */  sll        $a0, $v0, 11
    /* CF7E4 800C0834 308BFFFF */  andi       $t3, $a0, 0xFFFF
    /* CF7E8 800C0838 04610003 */  bgez       $v1, .L800C0848_CF7F8
    /* CF7EC 800C083C 01602025 */   or        $a0, $t3, $zero
    /* CF7F0 800C0840 10000002 */  b          .L800C084C_CF7FC
    /* CF7F4 800C0844 00001025 */   or        $v0, $zero, $zero
  .L800C0848_CF7F8:
    /* CF7F8 800C0848 00601025 */  or         $v0, $v1, $zero
  .L800C084C_CF7FC:
    /* CF7FC 800C084C 00026180 */  sll        $t4, $v0, 6
    /* CF800 800C0850 008C2021 */  addu       $a0, $a0, $t4
    /* CF804 800C0854 308DFFFF */  andi       $t5, $a0, 0xFFFF
    /* CF808 800C0858 04610003 */  bgez       $v1, .L800C0868_CF818
    /* CF80C 800C085C 01A02025 */   or        $a0, $t5, $zero
    /* CF810 800C0860 10000002 */  b          .L800C086C_CF81C
    /* CF814 800C0864 00001025 */   or        $v0, $zero, $zero
  .L800C0868_CF818:
    /* CF818 800C0868 00601025 */  or         $v0, $v1, $zero
  .L800C086C_CF81C:
    /* CF81C 800C086C 00027040 */  sll        $t6, $v0, 1
    /* CF820 800C0870 008E2021 */  addu       $a0, $a0, $t6
    /* CF824 800C0874 308FFFFF */  andi       $t7, $a0, 0xFFFF
    /* CF828 800C0878 01E02025 */  or         $a0, $t7, $zero
    /* CF82C 800C087C 31E5FFFF */  andi       $a1, $t7, 0xFFFF
    /* CF830 800C0880 A7A8003C */  sh         $t0, 0x3C($sp)
    /* CF834 800C0884 0C001275 */  jal        func_800049D4_55D4
    /* CF838 800C0888 E7A20030 */   swc1      $f2, 0x30($sp)
    /* CF83C 800C088C 87A8003C */  lh         $t0, 0x3C($sp)
    /* CF840 800C0890 24180007 */  addiu      $t8, $zero, 0x7
    /* CF844 800C0894 C7A20030 */  lwc1       $f2, 0x30($sp)
    /* CF848 800C0898 03081023 */  subu       $v0, $t8, $t0
    /* CF84C 800C089C 44829000 */  mtc1       $v0, $f18
    /* CF850 800C08A0 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* CF854 800C08A4 44815800 */  mtc1       $at, $f11
    /* CF858 800C08A8 468091A0 */  cvt.s.w    $f6, $f18
    /* CF85C 800C08AC 44805000 */  mtc1       $zero, $f10
    /* CF860 800C08B0 3C0E8015 */  lui        $t6, %hi(D_80152B7C)
    /* CF864 800C08B4 85CE2B7C */  lh         $t6, %lo(D_80152B7C)($t6)
    /* CF868 800C08B8 3C018003 */  lui        $at, %hi(D_800313F8)
    /* CF86C 800C08BC 46001121 */  cvt.d.s    $f4, $f2
    /* CF870 800C08C0 46003221 */  cvt.d.s    $f8, $f6
    /* CF874 800C08C4 46245401 */  sub.d      $f16, $f10, $f4
    /* CF878 800C08C8 24180001 */  addiu      $t8, $zero, 0x1
    /* CF87C 800C08CC 3C048015 */  lui        $a0, %hi(D_8014F89C)
    /* CF880 800C08D0 3C058015 */  lui        $a1, %hi(D_8014F89D)
    /* CF884 800C08D4 46304282 */  mul.d      $f10, $f8, $f16
    /* CF888 800C08D8 3C068020 */  lui        $a2, %hi(D_801FEA30)
    /* CF88C 800C08DC 24C6EA30 */  addiu      $a2, $a2, %lo(D_801FEA30)
    /* CF890 800C08E0 90A5F89D */  lbu        $a1, %lo(D_8014F89D)($a1)
    /* CF894 800C08E4 9084F89C */  lbu        $a0, %lo(D_8014F89C)($a0)
    /* CF898 800C08E8 AFA20024 */  sw         $v0, 0x24($sp)
    /* CF89C 800C08EC 00003825 */  or         $a3, $zero, $zero
    /* CF8A0 800C08F0 4620510D */  trunc.w.d  $f4, $f10
    /* CF8A4 800C08F4 440C2000 */  mfc1       $t4, $f4
    /* CF8A8 800C08F8 00000000 */  nop
    /* CF8AC 800C08FC 000C6880 */  sll        $t5, $t4, 2
    /* CF8B0 800C0900 01AC6823 */  subu       $t5, $t5, $t4
    /* CF8B4 800C0904 000D68C0 */  sll        $t5, $t5, 3
    /* CF8B8 800C0908 01AC6821 */  addu       $t5, $t5, $t4
    /* CF8BC 800C090C 000D6840 */  sll        $t5, $t5, 1
    /* CF8C0 800C0910 01CD7823 */  subu       $t7, $t6, $t5
    /* CF8C4 800C0914 A42F13F8 */  sh         $t7, %lo(D_800313F8)($at)
    /* CF8C8 800C0918 3C018014 */  lui        $at, %hi(D_8013D9C8)
    /* CF8CC 800C091C 0C02CD17 */  jal        func_800B345C_C240C
    /* CF8D0 800C0920 AC38D9C8 */   sw        $t8, %lo(D_8013D9C8)($at)
    /* CF8D4 800C0924 8FA20024 */  lw         $v0, 0x24($sp)
    /* CF8D8 800C0928 3C098014 */  lui        $t1, %hi(D_8013D9C0)
    /* CF8DC 800C092C 24010007 */  addiu      $at, $zero, 0x7
    /* CF8E0 800C0930 14410007 */  bne        $v0, $at, .L800C0950_CF900
    /* CF8E4 800C0934 2529D9C0 */   addiu     $t1, $t1, %lo(D_8013D9C0)
    /* CF8E8 800C0938 3C198014 */  lui        $t9, %hi(D_8013DB00)
    /* CF8EC 800C093C 9339DB00 */  lbu        $t9, %lo(D_8013DB00)($t9)
    /* CF8F0 800C0940 3C018014 */  lui        $at, %hi(D_8013DB00)
    /* CF8F4 800C0944 13200002 */  beqz       $t9, .L800C0950_CF900
    /* CF8F8 800C0948 272AFFFF */   addiu     $t2, $t9, -0x1
    /* CF8FC 800C094C A02ADB00 */  sb         $t2, %lo(D_8013DB00)($at)
  .L800C0950_CF900:
    /* CF900 800C0950 85220000 */  lh         $v0, 0x0($t1)
    /* CF904 800C0954 3C058014 */  lui        $a1, %hi(D_8013DAFC)
    /* CF908 800C0958 84A5DAFC */  lh         $a1, %lo(D_8013DAFC)($a1)
    /* CF90C 800C095C 244B0007 */  addiu      $t3, $v0, 0x7
    /* CF910 800C0960 3C0E8014 */  lui        $t6, %hi(D_8013DB00)
    /* CF914 800C0964 14AB000D */  bne        $a1, $t3, .L800C099C_CF94C
    /* CF918 800C0968 3C198014 */   lui       $t9, %hi(D_8013DB00)
    /* CF91C 800C096C 91CEDB00 */  lbu        $t6, %lo(D_8013DB00)($t6)
    /* CF920 800C0970 240C0001 */  addiu      $t4, $zero, 0x1
    /* CF924 800C0974 3C018014 */  lui        $at, %hi(D_8013DB04)
    /* CF928 800C0978 11C0001D */  beqz       $t6, .L800C09F0_CF9A0
    /* CF92C 800C097C AC2CDB04 */   sw        $t4, %lo(D_8013DB04)($at)
    /* CF930 800C0980 244D0008 */  addiu      $t5, $v0, 0x8
    /* CF934 800C0984 A52D0000 */  sh         $t5, 0x0($t1)
    /* CF938 800C0988 85250000 */  lh         $a1, 0x0($t1)
    /* CF93C 800C098C 3C018014 */  lui        $at, %hi(D_8013DAFC)
    /* CF940 800C0990 24B8FFFF */  addiu      $t8, $a1, -0x1
    /* CF944 800C0994 10000016 */  b          .L800C09F0_CF9A0
    /* CF948 800C0998 A438DAFC */   sh        $t8, %lo(D_8013DAFC)($at)
  .L800C099C_CF94C:
    /* CF94C 800C099C 9339DB00 */  lbu        $t9, %lo(D_8013DB00)($t9)
    /* CF950 800C09A0 13200013 */  beqz       $t9, .L800C09F0_CF9A0
    /* CF954 800C09A4 00000000 */   nop
    /* CF958 800C09A8 0C000E38 */  jal        func_800038E0_44E0
    /* CF95C 800C09AC 00000000 */   nop
    /* CF960 800C09B0 3C098014 */  lui        $t1, %hi(D_8013D9C0)
    /* CF964 800C09B4 2529D9C0 */  addiu      $t1, $t1, %lo(D_8013D9C0)
    /* CF968 800C09B8 04410004 */  bgez       $v0, .L800C09CC_CF97C
    /* CF96C 800C09BC 304A0007 */   andi      $t2, $v0, 0x7
    /* CF970 800C09C0 11400002 */  beqz       $t2, .L800C09CC_CF97C
    /* CF974 800C09C4 00000000 */   nop
    /* CF978 800C09C8 254AFFF8 */  addiu      $t2, $t2, -0x8
  .L800C09CC_CF97C:
    /* CF97C 800C09CC 15400008 */  bnez       $t2, .L800C09F0_CF9A0
    /* CF980 800C09D0 00000000 */   nop
    /* CF984 800C09D4 852B0000 */  lh         $t3, 0x0($t1)
    /* CF988 800C09D8 3C018014 */  lui        $at, %hi(D_8013DAFC)
    /* CF98C 800C09DC 256C0008 */  addiu      $t4, $t3, 0x8
    /* CF990 800C09E0 A52C0000 */  sh         $t4, 0x0($t1)
    /* CF994 800C09E4 85250000 */  lh         $a1, 0x0($t1)
    /* CF998 800C09E8 24ADFFFF */  addiu      $t5, $a1, -0x1
    /* CF99C 800C09EC A42DDAFC */  sh         $t5, %lo(D_8013DAFC)($at)
  .L800C09F0_CF9A0:
    /* CF9A0 800C09F0 3C028014 */  lui        $v0, %hi(D_8013D9CC)
    /* CF9A4 800C09F4 8C42D9CC */  lw         $v0, %lo(D_8013D9CC)($v0)
    /* CF9A8 800C09F8 3C0F8014 */  lui        $t7, %hi(D_8013DB08)
    /* CF9AC 800C09FC 10400004 */  beqz       $v0, .L800C0A10_CF9C0
    /* CF9B0 800C0A00 00000000 */   nop
    /* CF9B4 800C0A04 8DEFDB08 */  lw         $t7, %lo(D_8013DB08)($t7)
    /* CF9B8 800C0A08 15E00005 */  bnez       $t7, .L800C0A20_CF9D0
    /* CF9BC 800C0A0C 00000000 */   nop
  .L800C0A10_CF9C0:
    /* CF9C0 800C0A10 14400064 */  bnez       $v0, .L800C0BA4_CFB54
    /* CF9C4 800C0A14 00000000 */   nop
    /* CF9C8 800C0A18 85380000 */  lh         $t8, 0x0($t1)
    /* CF9CC 800C0A1C 1F000061 */  bgtz       $t8, .L800C0BA4_CFB54
  .L800C0A20_CF9D0:
    /* CF9D0 800C0A20 3C198014 */   lui       $t9, %hi(D_8013D9C4)
    /* CF9D4 800C0A24 8739D9C4 */  lh         $t9, %lo(D_8013D9C4)($t9)
    /* CF9D8 800C0A28 3C013F70 */  lui        $at, (0x3F700000 >> 16)
    /* CF9DC 800C0A2C 44818800 */  mtc1       $at, $f17
    /* CF9E0 800C0A30 44999000 */  mtc1       $t9, $f18
    /* CF9E4 800C0A34 44808000 */  mtc1       $zero, $f16
    /* CF9E8 800C0A38 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* CF9EC 800C0A3C 468091A0 */  cvt.s.w    $f6, $f18
    /* CF9F0 800C0A40 44815800 */  mtc1       $at, $f11
    /* CF9F4 800C0A44 44805000 */  mtc1       $zero, $f10
    /* CF9F8 800C0A48 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* CF9FC 800C0A4C 2404C000 */  addiu      $a0, $zero, -0x4000
    /* CFA00 800C0A50 00002825 */  or         $a1, $zero, $zero
    /* CFA04 800C0A54 46003221 */  cvt.d.s    $f8, $f6
    /* CFA08 800C0A58 24068000 */  addiu      $a2, $zero, -0x8000
    /* CFA0C 800C0A5C 46304002 */  mul.d      $f0, $f8, $f16
    /* CFA10 800C0A60 4620503C */  c.lt.d     $f10, $f0
    /* CFA14 800C0A64 00000000 */  nop
    /* CFA18 800C0A68 45020006 */  bc1fl      .L800C0A84_CFA34
    /* CFA1C 800C0A6C 462000A0 */   cvt.s.d   $f2, $f0
    /* CFA20 800C0A70 44812800 */  mtc1       $at, $f5
    /* CFA24 800C0A74 44802000 */  mtc1       $zero, $f4
    /* CFA28 800C0A78 10000002 */  b          .L800C0A84_CFA34
    /* CFA2C 800C0A7C 462020A0 */   cvt.s.d   $f2, $f4
    /* CFA30 800C0A80 462000A0 */  cvt.s.d    $f2, $f0
  .L800C0A84_CFA34:
    /* CFA34 800C0A84 0C04DBB3 */  jal        func_80136ECC_145E7C
    /* CFA38 800C0A88 E7A20030 */   swc1      $f2, 0x30($sp)
    /* CFA3C 800C0A8C 3C0B8004 */  lui        $t3, %hi(D_80047F94)
    /* CFA40 800C0A90 8D6B7F94 */  lw         $t3, %lo(D_80047F94)($t3)
    /* CFA44 800C0A94 3C018014 */  lui        $at, %hi(D_8013DB08)
    /* CFA48 800C0A98 00023C00 */  sll        $a3, $v0, 16
    /* CFA4C 800C0A9C AC20DB08 */  sw         $zero, %lo(D_8013DB08)($at)
    /* CFA50 800C0AA0 00075403 */  sra        $t2, $a3, 16
    /* CFA54 800C0AA4 24010003 */  addiu      $at, $zero, 0x3
    /* CFA58 800C0AA8 01403825 */  or         $a3, $t2, $zero
    /* CFA5C 800C0AAC 1561002D */  bne        $t3, $at, .L800C0B64_CFB14
    /* CFA60 800C0AB0 C7A20030 */   lwc1      $f2, 0x30($sp)
    /* CFA64 800C0AB4 3C0C8014 */  lui        $t4, %hi(D_8013D9CC)
    /* CFA68 800C0AB8 8D8CD9CC */  lw         $t4, %lo(D_8013D9CC)($t4)
    /* CFA6C 800C0ABC 3C018014 */  lui        $at, %hi(D_80142E80)
    /* CFA70 800C0AC0 11800012 */  beqz       $t4, .L800C0B0C_CFABC
    /* CFA74 800C0AC4 00000000 */   nop
    /* CFA78 800C0AC8 3C018014 */  lui        $at, %hi(D_80142E70)
    /* CFA7C 800C0ACC D4202E70 */  ldc1       $f0, %lo(D_80142E70)($at)
    /* CFA80 800C0AD0 460014A1 */  cvt.d.s    $f18, $f2
    /* CFA84 800C0AD4 3C018014 */  lui        $at, %hi(D_80142E78)
    /* CFA88 800C0AD8 46209182 */  mul.d      $f6, $f18, $f0
    /* CFA8C 800C0ADC D4302E78 */  ldc1       $f16, %lo(D_80142E78)($at)
    /* CFA90 800C0AE0 00002025 */  or         $a0, $zero, $zero
    /* CFA94 800C0AE4 240500E8 */  addiu      $a1, $zero, 0xE8
    /* CFA98 800C0AE8 24060000 */  addiu      $a2, $zero, 0x0
    /* CFA9C 800C0AEC 46260201 */  sub.d      $f8, $f0, $f6
    /* CFAA0 800C0AF0 46304280 */  add.d      $f10, $f8, $f16
    /* CFAA4 800C0AF4 46205120 */  cvt.s.d    $f4, $f10
    /* CFAA8 800C0AF8 0C00528F */  jal        func_80014A3C_1563C
    /* CFAAC 800C0AFC E7A40010 */   swc1      $f4, 0x10($sp)
    /* CFAB0 800C0B00 3C098014 */  lui        $t1, %hi(D_8013D9C0)
    /* CFAB4 800C0B04 10000027 */  b          .L800C0BA4_CFB54
    /* CFAB8 800C0B08 2529D9C0 */   addiu     $t1, $t1, %lo(D_8013D9C0)
  .L800C0B0C_CFABC:
    /* CFABC 800C0B0C D4202E80 */  ldc1       $f0, %lo(D_80142E80)($at)
    /* CFAC0 800C0B10 460011A1 */  cvt.d.s    $f6, $f2
    /* CFAC4 800C0B14 3C0E8014 */  lui        $t6, %hi(D_8013D9C4)
    /* CFAC8 800C0B18 46203202 */  mul.d      $f8, $f6, $f0
    /* CFACC 800C0B1C 85CED9C4 */  lh         $t6, %lo(D_8013D9C4)($t6)
    /* CFAD0 800C0B20 3C018014 */  lui        $at, %hi(D_80142E88)
    /* CFAD4 800C0B24 D42A2E88 */  ldc1       $f10, %lo(D_80142E88)($at)
    /* CFAD8 800C0B28 000E6880 */  sll        $t5, $t6, 2
    /* CFADC 800C0B2C 01AE6821 */  addu       $t5, $t5, $t6
    /* CFAE0 800C0B30 448D9000 */  mtc1       $t5, $f18
    /* CFAE4 800C0B34 00002025 */  or         $a0, $zero, $zero
    /* CFAE8 800C0B38 46280401 */  sub.d      $f16, $f0, $f8
    /* CFAEC 800C0B3C 240500E8 */  addiu      $a1, $zero, 0xE8
    /* CFAF0 800C0B40 468094A0 */  cvt.s.w    $f18, $f18
    /* CFAF4 800C0B44 462A8100 */  add.d      $f4, $f16, $f10
    /* CFAF8 800C0B48 44069000 */  mfc1       $a2, $f18
    /* CFAFC 800C0B4C 462024A0 */  cvt.s.d    $f18, $f4
    /* CFB00 800C0B50 0C00528F */  jal        func_80014A3C_1563C
    /* CFB04 800C0B54 E7B20010 */   swc1      $f18, 0x10($sp)
    /* CFB08 800C0B58 3C098014 */  lui        $t1, %hi(D_8013D9C0)
    /* CFB0C 800C0B5C 10000011 */  b          .L800C0BA4_CFB54
    /* CFB10 800C0B60 2529D9C0 */   addiu     $t1, $t1, %lo(D_8013D9C0)
  .L800C0B64_CFB14:
    /* CFB14 800C0B64 3C0F8014 */  lui        $t7, %hi(D_8013D9C4)
    /* CFB18 800C0B68 85EFD9C4 */  lh         $t7, %lo(D_8013D9C4)($t7)
    /* CFB1C 800C0B6C 3C018014 */  lui        $at, %hi(D_80142E90)
    /* CFB20 800C0B70 C4282E90 */  lwc1       $f8, %lo(D_80142E90)($at)
    /* CFB24 800C0B74 000FC080 */  sll        $t8, $t7, 2
    /* CFB28 800C0B78 030FC021 */  addu       $t8, $t8, $t7
    /* CFB2C 800C0B7C 44983000 */  mtc1       $t8, $f6
    /* CFB30 800C0B80 00002025 */  or         $a0, $zero, $zero
    /* CFB34 800C0B84 240500E8 */  addiu      $a1, $zero, 0xE8
    /* CFB38 800C0B88 468031A0 */  cvt.s.w    $f6, $f6
    /* CFB3C 800C0B8C E7A80010 */  swc1       $f8, 0x10($sp)
    /* CFB40 800C0B90 44063000 */  mfc1       $a2, $f6
    /* CFB44 800C0B94 0C00528F */  jal        func_80014A3C_1563C
    /* CFB48 800C0B98 00000000 */   nop
    /* CFB4C 800C0B9C 3C098014 */  lui        $t1, %hi(D_8013D9C0)
    /* CFB50 800C0BA0 2529D9C0 */  addiu      $t1, $t1, %lo(D_8013D9C0)
  .L800C0BA4_CFB54:
    /* CFB54 800C0BA4 3C198014 */  lui        $t9, %hi(D_8013DB04)
    /* CFB58 800C0BA8 8F39DB04 */  lw         $t9, %lo(D_8013DB04)($t9)
    /* CFB5C 800C0BAC 17200004 */  bnez       $t9, .L800C0BC0_CFB70
    /* CFB60 800C0BB0 00000000 */   nop
    /* CFB64 800C0BB4 85220000 */  lh         $v0, 0x0($t1)
    /* CFB68 800C0BB8 1C400047 */  bgtz       $v0, .L800C0CD8_CFC88
    /* CFB6C 800C0BBC 00000000 */   nop
  .L800C0BC0_CFB70:
    /* CFB70 800C0BC0 3C028015 */  lui        $v0, %hi(D_80151DD0)
    /* CFB74 800C0BC4 90421DD0 */  lbu        $v0, %lo(D_80151DD0)($v0)
    /* CFB78 800C0BC8 24010002 */  addiu      $at, $zero, 0x2
    /* CFB7C 800C0BCC 3C0A8003 */  lui        $t2, %hi(D_800313E8)
    /* CFB80 800C0BD0 14410018 */  bne        $v0, $at, .L800C0C34_CFBE4
    /* CFB84 800C0BD4 3C0C8003 */   lui       $t4, %hi(D_800313EC)
    /* CFB88 800C0BD8 914A13E8 */  lbu        $t2, %lo(D_800313E8)($t2)
    /* CFB8C 800C0BDC 918C13EC */  lbu        $t4, %lo(D_800313EC)($t4)
    /* CFB90 800C0BE0 3C0D8003 */  lui        $t5, %hi(D_800313F0)
    /* CFB94 800C0BE4 05410003 */  bgez       $t2, .L800C0BF4_CFBA4
    /* CFB98 800C0BE8 000A5843 */   sra       $t3, $t2, 1
    /* CFB9C 800C0BEC 25410001 */  addiu      $at, $t2, 0x1
    /* CFBA0 800C0BF0 00015843 */  sra        $t3, $at, 1
  .L800C0BF4_CFBA4:
    /* CFBA4 800C0BF4 3C018004 */  lui        $at, %hi(D_80047743)
    /* CFBA8 800C0BF8 A02B7743 */  sb         $t3, %lo(D_80047743)($at)
    /* CFBAC 800C0BFC 05810003 */  bgez       $t4, .L800C0C0C_CFBBC
    /* CFBB0 800C0C00 000C7043 */   sra       $t6, $t4, 1
    /* CFBB4 800C0C04 25810001 */  addiu      $at, $t4, 0x1
    /* CFBB8 800C0C08 00017043 */  sra        $t6, $at, 1
  .L800C0C0C_CFBBC:
    /* CFBBC 800C0C0C 91AD13F0 */  lbu        $t5, %lo(D_800313F0)($t5)
    /* CFBC0 800C0C10 3C018004 */  lui        $at, %hi(D_80047744)
    /* CFBC4 800C0C14 A02E7744 */  sb         $t6, %lo(D_80047744)($at)
    /* CFBC8 800C0C18 05A10003 */  bgez       $t5, .L800C0C28_CFBD8
    /* CFBCC 800C0C1C 000D7843 */   sra       $t7, $t5, 1
    /* CFBD0 800C0C20 25A10001 */  addiu      $at, $t5, 0x1
    /* CFBD4 800C0C24 00017843 */  sra        $t7, $at, 1
  .L800C0C28_CFBD8:
    /* CFBD8 800C0C28 3C018004 */  lui        $at, %hi(D_80047745)
    /* CFBDC 800C0C2C 10000016 */  b          .L800C0C88_CFC38
    /* CFBE0 800C0C30 A02F7745 */   sb        $t7, %lo(D_80047745)($at)
  .L800C0C34_CFBE4:
    /* CFBE4 800C0C34 24010003 */  addiu      $at, $zero, 0x3
    /* CFBE8 800C0C38 14410008 */  bne        $v0, $at, .L800C0C5C_CFC0C
    /* CFBEC 800C0C3C 3C188003 */   lui       $t8, %hi(D_800313E8)
    /* CFBF0 800C0C40 3C018004 */  lui        $at, %hi(D_80047743)
    /* CFBF4 800C0C44 A0207743 */  sb         $zero, %lo(D_80047743)($at)
    /* CFBF8 800C0C48 3C018004 */  lui        $at, %hi(D_80047744)
    /* CFBFC 800C0C4C A0207744 */  sb         $zero, %lo(D_80047744)($at)
    /* CFC00 800C0C50 3C018004 */  lui        $at, %hi(D_80047745)
    /* CFC04 800C0C54 1000000C */  b          .L800C0C88_CFC38
    /* CFC08 800C0C58 A0207745 */   sb        $zero, %lo(D_80047745)($at)
  .L800C0C5C_CFC0C:
    /* CFC0C 800C0C5C 931813E8 */  lbu        $t8, %lo(D_800313E8)($t8)
    /* CFC10 800C0C60 3C198003 */  lui        $t9, %hi(D_800313EC)
    /* CFC14 800C0C64 933913EC */  lbu        $t9, %lo(D_800313EC)($t9)
    /* CFC18 800C0C68 3C018004 */  lui        $at, %hi(D_80047743)
    /* CFC1C 800C0C6C 3C0A8003 */  lui        $t2, %hi(D_800313F0)
    /* CFC20 800C0C70 A0387743 */  sb         $t8, %lo(D_80047743)($at)
    /* CFC24 800C0C74 914A13F0 */  lbu        $t2, %lo(D_800313F0)($t2)
    /* CFC28 800C0C78 3C018004 */  lui        $at, %hi(D_80047744)
    /* CFC2C 800C0C7C A0397744 */  sb         $t9, %lo(D_80047744)($at)
    /* CFC30 800C0C80 3C018004 */  lui        $at, %hi(D_80047745)
    /* CFC34 800C0C84 A02A7745 */  sb         $t2, %lo(D_80047745)($at)
  .L800C0C88_CFC38:
    /* CFC38 800C0C88 3C0B8015 */  lui        $t3, %hi(D_80152B7C)
    /* CFC3C 800C0C8C 856B2B7C */  lh         $t3, %lo(D_80152B7C)($t3)
    /* CFC40 800C0C90 3C018003 */  lui        $at, %hi(D_800313F8)
    /* CFC44 800C0C94 0C001252 */  jal        func_80004948_5548
    /* CFC48 800C0C98 A42B13F8 */   sh        $t3, %lo(D_800313F8)($at)
    /* CFC4C 800C0C9C 3C018014 */  lui        $at, %hi(D_8013DB04)
    /* CFC50 800C0CA0 AC20DB04 */  sw         $zero, %lo(D_8013DB04)($at)
    /* CFC54 800C0CA4 3C018014 */  lui        $at, %hi(D_8013D9C8)
    /* CFC58 800C0CA8 3C048015 */  lui        $a0, %hi(D_8014F89C)
    /* CFC5C 800C0CAC 3C058015 */  lui        $a1, %hi(D_8014F89D)
    /* CFC60 800C0CB0 3C068020 */  lui        $a2, %hi(D_801FEA30)
    /* CFC64 800C0CB4 AC20D9C8 */  sw         $zero, %lo(D_8013D9C8)($at)
    /* CFC68 800C0CB8 24C6EA30 */  addiu      $a2, $a2, %lo(D_801FEA30)
    /* CFC6C 800C0CBC 90A5F89D */  lbu        $a1, %lo(D_8014F89D)($a1)
    /* CFC70 800C0CC0 9084F89C */  lbu        $a0, %lo(D_8014F89C)($a0)
    /* CFC74 800C0CC4 0C02CD17 */  jal        func_800B345C_C240C
    /* CFC78 800C0CC8 00003825 */   or        $a3, $zero, $zero
    /* CFC7C 800C0CCC 3C098014 */  lui        $t1, %hi(D_8013D9C0)
    /* CFC80 800C0CD0 2529D9C0 */  addiu      $t1, $t1, %lo(D_8013D9C0)
    /* CFC84 800C0CD4 85220000 */  lh         $v0, 0x0($t1)
  .L800C0CD8_CFC88:
    /* CFC88 800C0CD8 1C400009 */  bgtz       $v0, .L800C0D00_CFCB0
    /* CFC8C 800C0CDC 2405FFFF */   addiu     $a1, $zero, -0x1
    /* CFC90 800C0CE0 3C04800C */  lui        $a0, %hi(func_800C0678_CF628)
    /* CFC94 800C0CE4 3C018014 */  lui        $at, %hi(D_8013DAFC)
    /* CFC98 800C0CE8 A425DAFC */  sh         $a1, %lo(D_8013DAFC)($at)
    /* CFC9C 800C0CEC 0C001D2F */  jal        func_800074BC_80BC
    /* CFCA0 800C0CF0 24840678 */   addiu     $a0, $a0, %lo(func_800C0678_CF628)
    /* CFCA4 800C0CF4 3C098014 */  lui        $t1, %hi(D_8013D9C0)
    /* CFCA8 800C0CF8 2529D9C0 */  addiu      $t1, $t1, %lo(D_8013D9C0)
    /* CFCAC 800C0CFC 85220000 */  lh         $v0, 0x0($t1)
  .L800C0D00_CFCB0:
    /* CFCB0 800C0D00 10400002 */  beqz       $v0, .L800C0D0C_CFCBC
    /* CFCB4 800C0D04 244CFFFF */   addiu     $t4, $v0, -0x1
    /* CFCB8 800C0D08 A52C0000 */  sh         $t4, 0x0($t1)
  .L800C0D0C_CFCBC:
    /* CFCBC 800C0D0C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* CFCC0 800C0D10 27BD0040 */  addiu      $sp, $sp, 0x40
    /* CFCC4 800C0D14 03E00008 */  jr         $ra
    /* CFCC8 800C0D18 00000000 */   nop
endlabel func_800C0678_CF628
