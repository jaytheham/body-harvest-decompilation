nonmatching func_800D0614_DF5C4, 0x5EC

glabel func_800D0614_DF5C4
    /* DF5C4 800D0614 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* DF5C8 800D0618 44810000 */  mtc1       $at, $f0
    /* DF5CC 800D061C 3C018004 */  lui        $at, %hi(D_80047954)
    /* DF5D0 800D0620 C4247954 */  lwc1       $f4, %lo(D_80047954)($at)
    /* DF5D4 800D0624 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* DF5D8 800D0628 3C018004 */  lui        $at, %hi(D_8004795C)
    /* DF5DC 800D062C 46002182 */  mul.s      $f6, $f4, $f0
    /* DF5E0 800D0630 C42A795C */  lwc1       $f10, %lo(D_8004795C)($at)
    /* DF5E4 800D0634 AFB70054 */  sw         $s7, 0x54($sp)
    /* DF5E8 800D0638 0005BC00 */  sll        $s7, $a1, 16
    /* DF5EC 800D063C 46005402 */  mul.s      $f16, $f10, $f0
    /* DF5F0 800D0640 AFB5004C */  sw         $s5, 0x4C($sp)
    /* DF5F4 800D0644 0004AC00 */  sll        $s5, $a0, 16
    /* DF5F8 800D0648 00177C03 */  sra        $t7, $s7, 16
    /* DF5FC 800D064C AFB60050 */  sw         $s6, 0x50($sp)
    /* DF600 800D0650 0006B400 */  sll        $s6, $a2, 16
    /* DF604 800D0654 4600320D */  trunc.w.s  $f8, $f6
    /* DF608 800D0658 01E0B825 */  or         $s7, $t7, $zero
    /* DF60C 800D065C 00157403 */  sra        $t6, $s5, 16
    /* DF610 800D0660 4600848D */  trunc.w.s  $f18, $f16
    /* DF614 800D0664 AFA40088 */  sw         $a0, 0x88($sp)
    /* DF618 800D0668 0016C403 */  sra        $t8, $s6, 16
    /* DF61C 800D066C AFA70094 */  sw         $a3, 0x94($sp)
    /* DF620 800D0670 30E2FFFF */  andi       $v0, $a3, 0xFFFF
    /* DF624 800D0674 000E2400 */  sll        $a0, $t6, 16
    /* DF628 800D0678 3C0F8004 */  lui        $t7, %hi(D_80047950)
    /* DF62C 800D067C 85EF7950 */  lh         $t7, %lo(D_80047950)($t7)
    /* DF630 800D0680 44074000 */  mfc1       $a3, $f8
    /* DF634 800D0684 AFA5008C */  sw         $a1, 0x8C($sp)
    /* DF638 800D0688 0300B025 */  or         $s6, $t8, $zero
    /* DF63C 800D068C 01C0A825 */  or         $s5, $t6, $zero
    /* DF640 800D0690 AFA60090 */  sw         $a2, 0x90($sp)
    /* DF644 800D0694 00182C00 */  sll        $a1, $t8, 16
    /* DF648 800D0698 0004CC03 */  sra        $t9, $a0, 16
    /* DF64C 800D069C 440E9000 */  mfc1       $t6, $f18
    /* DF650 800D06A0 03202025 */  or         $a0, $t9, $zero
    /* DF654 800D06A4 24184000 */  addiu      $t8, $zero, 0x4000
    /* DF658 800D06A8 00023040 */  sll        $a2, $v0, 1
    /* DF65C 800D06AC AFBF005C */  sw         $ra, 0x5C($sp)
    /* DF660 800D06B0 30C9FFFF */  andi       $t1, $a2, 0xFFFF
    /* DF664 800D06B4 00054403 */  sra        $t0, $a1, 16
    /* DF668 800D06B8 030FC823 */  subu       $t9, $t8, $t7
    /* DF66C 800D06BC 00075C00 */  sll        $t3, $a3, 16
    /* DF670 800D06C0 AFBE0058 */  sw         $fp, 0x58($sp)
    /* DF674 800D06C4 AFB40048 */  sw         $s4, 0x48($sp)
    /* DF678 800D06C8 AFB30044 */  sw         $s3, 0x44($sp)
    /* DF67C 800D06CC AFB20040 */  sw         $s2, 0x40($sp)
    /* DF680 800D06D0 AFB1003C */  sw         $s1, 0x3C($sp)
    /* DF684 800D06D4 AFB00038 */  sw         $s0, 0x38($sp)
    /* DF688 800D06D8 F7B60030 */  sdc1       $f22, 0x30($sp)
    /* DF68C 800D06DC F7B40028 */  sdc1       $f20, 0x28($sp)
    /* DF690 800D06E0 000B3C03 */  sra        $a3, $t3, 16
    /* DF694 800D06E4 AFB90014 */  sw         $t9, 0x14($sp)
    /* DF698 800D06E8 01002825 */  or         $a1, $t0, $zero
    /* DF69C 800D06EC 01203025 */  or         $a2, $t1, $zero
    /* DF6A0 800D06F0 AFA2006C */  sw         $v0, 0x6C($sp)
    /* DF6A4 800D06F4 0C02E4EB */  jal        func_800B93AC_C835C
    /* DF6A8 800D06F8 AFAE0010 */   sw        $t6, 0x10($sp)
    /* DF6AC 800D06FC 10400131 */  beqz       $v0, .L800D0BC4_DFB74
    /* DF6B0 800D0700 24040007 */   addiu     $a0, $zero, 0x7
    /* DF6B4 800D0704 0C0305ED */  jal        func_800C17B4_D0764
    /* DF6B8 800D0708 24050001 */   addiu     $a1, $zero, 0x1
    /* DF6BC 800D070C 2401FFFD */  addiu      $at, $zero, -0x3
    /* DF6C0 800D0710 1041012A */  beq        $v0, $at, .L800D0BBC_DFB6C
    /* DF6C4 800D0714 A7A20076 */   sh        $v0, 0x76($sp)
    /* DF6C8 800D0718 87A80076 */  lh         $t0, 0x76($sp)
    /* DF6CC 800D071C 3C0A8015 */  lui        $t2, %hi(D_80154318)
    /* DF6D0 800D0720 254A4318 */  addiu      $t2, $t2, %lo(D_80154318)
    /* DF6D4 800D0724 000848C0 */  sll        $t1, $t0, 3
    /* DF6D8 800D0728 01284823 */  subu       $t1, $t1, $t0
    /* DF6DC 800D072C 00094880 */  sll        $t1, $t1, 2
    /* DF6E0 800D0730 3C018014 */  lui        $at, %hi(D_80144018)
    /* DF6E4 800D0734 C4244018 */  lwc1       $f4, %lo(D_80144018)($at)
    /* DF6E8 800D0738 012A8821 */  addu       $s1, $t1, $t2
    /* DF6EC 800D073C 00153400 */  sll        $a2, $s5, 16
    /* DF6F0 800D0740 00173C00 */  sll        $a3, $s7, 16
    /* DF6F4 800D0744 00076403 */  sra        $t4, $a3, 16
    /* DF6F8 800D0748 00065C03 */  sra        $t3, $a2, 16
    /* DF6FC 800D074C 26300008 */  addiu      $s0, $s1, 0x8
    /* DF700 800D0750 02002025 */  or         $a0, $s0, $zero
    /* DF704 800D0754 01603025 */  or         $a2, $t3, $zero
    /* DF708 800D0758 01803825 */  or         $a3, $t4, $zero
    /* DF70C 800D075C 24050188 */  addiu      $a1, $zero, 0x188
    /* DF710 800D0760 AFB60010 */  sw         $s6, 0x10($sp)
    /* DF714 800D0764 0C04DC6E */  jal        func_801371B8_146168
    /* DF718 800D0768 E7A40014 */   swc1      $f4, 0x14($sp)
    /* DF71C 800D076C 8FA2006C */  lw         $v0, 0x6C($sp)
    /* DF720 800D0770 24010006 */  addiu      $at, $zero, 0x6
    /* DF724 800D0774 240F00FF */  addiu      $t7, $zero, 0xFF
    /* DF728 800D0778 0041001A */  div        $zero, $v0, $at
    /* DF72C 800D077C A6220002 */  sh         $v0, 0x2($s1)
    /* DF730 800D0780 A6150000 */  sh         $s5, 0x0($s0)
    /* DF734 800D0784 A6170002 */  sh         $s7, 0x2($s0)
    /* DF738 800D0788 A6160004 */  sh         $s6, 0x4($s0)
    /* DF73C 800D078C 93AD009B */  lbu        $t5, 0x9B($sp)
    /* DF740 800D0790 00152400 */  sll        $a0, $s5, 16
    /* DF744 800D0794 00172C00 */  sll        $a1, $s7, 16
    /* DF748 800D0798 A20D0006 */  sb         $t5, 0x6($s0)
    /* DF74C 800D079C 93AE009F */  lbu        $t6, 0x9F($sp)
    /* DF750 800D07A0 00163400 */  sll        $a2, $s6, 16
    /* DF754 800D07A4 00064C03 */  sra        $t1, $a2, 16
    /* DF758 800D07A8 A20E0007 */  sb         $t6, 0x7($s0)
    /* DF75C 800D07AC 93B800A3 */  lbu        $t8, 0xA3($sp)
    /* DF760 800D07B0 A200000A */  sb         $zero, 0xA($s0)
    /* DF764 800D07B4 A20F0009 */  sb         $t7, 0x9($s0)
    /* DF768 800D07B8 00054403 */  sra        $t0, $a1, 16
    /* DF76C 800D07BC 0004CC03 */  sra        $t9, $a0, 16
    /* DF770 800D07C0 00005012 */  mflo       $t2
    /* DF774 800D07C4 A2180008 */  sb         $t8, 0x8($s0)
    /* DF778 800D07C8 AFAA0010 */  sw         $t2, 0x10($sp)
    /* DF77C 800D07CC 03202025 */  or         $a0, $t9, $zero
    /* DF780 800D07D0 01002825 */  or         $a1, $t0, $zero
    /* DF784 800D07D4 01203025 */  or         $a2, $t1, $zero
    /* DF788 800D07D8 0C0376D8 */  jal        func_800DDB60_ECB10
    /* DF78C 800D07DC 24070009 */   addiu     $a3, $zero, 0x9
    /* DF790 800D07E0 A202000B */  sb         $v0, 0xB($s0)
    /* DF794 800D07E4 8FA5006C */  lw         $a1, 0x6C($sp)
    /* DF798 800D07E8 2401001E */  addiu      $at, $zero, 0x1E
    /* DF79C 800D07EC 304400FF */  andi       $a0, $v0, 0xFF
    /* DF7A0 800D07F0 00A1001A */  div        $zero, $a1, $at
    /* DF7A4 800D07F4 00005812 */  mflo       $t3
    /* DF7A8 800D07F8 000B6600 */  sll        $t4, $t3, 24
    /* DF7AC 800D07FC 000C2E03 */  sra        $a1, $t4, 24
    /* DF7B0 800D0800 0C0377A4 */  jal        func_800DDE90_ECE40
    /* DF7B4 800D0804 00003025 */   or        $a2, $zero, $zero
    /* DF7B8 800D0808 3C028015 */  lui        $v0, %hi(D_80156ED8)
    /* DF7BC 800D080C 90426ED8 */  lbu        $v0, %lo(D_80156ED8)($v0)
    /* DF7C0 800D0810 24110001 */  addiu      $s1, $zero, 0x1
    /* DF7C4 800D0814 24010002 */  addiu      $at, $zero, 0x2
    /* DF7C8 800D0818 16220003 */  bne        $s1, $v0, .L800D0828_DF7D8
    /* DF7CC 800D081C 00000000 */   nop
    /* DF7D0 800D0820 1000000D */  b          .L800D0858_DF808
    /* DF7D4 800D0824 24100002 */   addiu     $s0, $zero, 0x2
  .L800D0828_DF7D8:
    /* DF7D8 800D0828 14410003 */  bne        $v0, $at, .L800D0838_DF7E8
    /* DF7DC 800D082C 00000000 */   nop
    /* DF7E0 800D0830 10000009 */  b          .L800D0858_DF808
    /* DF7E4 800D0834 00008025 */   or        $s0, $zero, $zero
  .L800D0838_DF7E8:
    /* DF7E8 800D0838 0C000E38 */  jal        func_800038E0_44E0
    /* DF7EC 800D083C 00000000 */   nop
    /* DF7F0 800D0840 24010003 */  addiu      $at, $zero, 0x3
    /* DF7F4 800D0844 0041001A */  div        $zero, $v0, $at
    /* DF7F8 800D0848 00008010 */  mfhi       $s0
    /* DF7FC 800D084C 26100003 */  addiu      $s0, $s0, 0x3
    /* DF800 800D0850 320E00FF */  andi       $t6, $s0, 0xFF
    /* DF804 800D0854 01C08025 */  or         $s0, $t6, $zero
  .L800D0858_DF808:
    /* DF808 800D0858 8FA2006C */  lw         $v0, 0x6C($sp)
    /* DF80C 800D085C 02A02025 */  or         $a0, $s5, $zero
    /* DF810 800D0860 02E02825 */  or         $a1, $s7, $zero
    /* DF814 800D0864 284103E8 */  slti       $at, $v0, 0x3E8
    /* DF818 800D0868 14200005 */  bnez       $at, .L800D0880_DF830
    /* DF81C 800D086C 02C03025 */   or        $a2, $s6, $zero
    /* DF820 800D0870 0C04D751 */  jal        func_80135D44_144CF4
    /* DF824 800D0874 3C074100 */   lui       $a3, (0x41000000 >> 16)
    /* DF828 800D0878 10000012 */  b          .L800D08C4_DF874
    /* DF82C 800D087C 8FA2006C */   lw        $v0, 0x6C($sp)
  .L800D0880_DF830:
    /* DF830 800D0880 284101F5 */  slti       $at, $v0, 0x1F5
    /* DF834 800D0884 14200007 */  bnez       $at, .L800D08A4_DF854
    /* DF838 800D0888 02A02025 */   or        $a0, $s5, $zero
    /* DF83C 800D088C 02E02825 */  or         $a1, $s7, $zero
    /* DF840 800D0890 02C03025 */  or         $a2, $s6, $zero
    /* DF844 800D0894 0C04D751 */  jal        func_80135D44_144CF4
    /* DF848 800D0898 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* DF84C 800D089C 10000009 */  b          .L800D08C4_DF874
    /* DF850 800D08A0 8FA2006C */   lw        $v0, 0x6C($sp)
  .L800D08A4_DF854:
    /* DF854 800D08A4 284100C8 */  slti       $at, $v0, 0xC8
    /* DF858 800D08A8 14200006 */  bnez       $at, .L800D08C4_DF874
    /* DF85C 800D08AC 02A02025 */   or        $a0, $s5, $zero
    /* DF860 800D08B0 02E02825 */  or         $a1, $s7, $zero
    /* DF864 800D08B4 02C03025 */  or         $a2, $s6, $zero
    /* DF868 800D08B8 0C04D751 */  jal        func_80135D44_144CF4
    /* DF86C 800D08BC 3C074000 */   lui       $a3, (0x40000000 >> 16)
    /* DF870 800D08C0 8FA2006C */  lw         $v0, 0x6C($sp)
  .L800D08C4_DF874:
    /* DF874 800D08C4 8FB800A4 */  lw         $t8, 0xA4($sp)
    /* DF878 800D08C8 00009025 */  or         $s2, $zero, $zero
    /* DF87C 800D08CC 171100BB */  bne        $t8, $s1, .L800D0BBC_DFB6C
    /* DF880 800D08D0 00000000 */   nop
    /* DF884 800D08D4 1A0000B9 */  blez       $s0, .L800D0BBC_DFB6C
    /* DF888 800D08D8 0200F025 */   or        $fp, $s0, $zero
    /* DF88C 800D08DC 04410003 */  bgez       $v0, .L800D08EC_DF89C
    /* DF890 800D08E0 00027843 */   sra       $t7, $v0, 1
    /* DF894 800D08E4 24410001 */  addiu      $at, $v0, 0x1
    /* DF898 800D08E8 00017843 */  sra        $t7, $at, 1
  .L800D08EC_DF89C:
    /* DF89C 800D08EC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* DF8A0 800D08F0 4481A000 */  mtc1       $at, $f20
    /* DF8A4 800D08F4 4480B000 */  mtc1       $zero, $f22
    /* DF8A8 800D08F8 AFAF0064 */  sw         $t7, 0x64($sp)
    /* DF8AC 800D08FC 27B4007C */  addiu      $s4, $sp, 0x7C
    /* DF8B0 800D0900 2411000B */  addiu      $s1, $zero, 0xB
    /* DF8B4 800D0904 241000FE */  addiu      $s0, $zero, 0xFE
  .L800D0908_DF8B8:
    /* DF8B8 800D0908 0C000E38 */  jal        func_800038E0_44E0
    /* DF8BC 800D090C 00000000 */   nop
    /* DF8C0 800D0910 8FB9006C */  lw         $t9, 0x6C($sp)
    /* DF8C4 800D0914 8FAA0064 */  lw         $t2, 0x64($sp)
    /* DF8C8 800D0918 0059001A */  div        $zero, $v0, $t9
    /* DF8CC 800D091C 17200002 */  bnez       $t9, .L800D0928_DF8D8
    /* DF8D0 800D0920 00000000 */   nop
    /* DF8D4 800D0924 0007000D */  break      7
  .L800D0928_DF8D8:
    /* DF8D8 800D0928 2401FFFF */  addiu      $at, $zero, -0x1
    /* DF8DC 800D092C 17210004 */  bne        $t9, $at, .L800D0940_DF8F0
    /* DF8E0 800D0930 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DF8E4 800D0934 14410002 */  bne        $v0, $at, .L800D0940_DF8F0
    /* DF8E8 800D0938 00000000 */   nop
    /* DF8EC 800D093C 0006000D */  break      6
  .L800D0940_DF8F0:
    /* DF8F0 800D0940 00004010 */  mfhi       $t0
    /* DF8F4 800D0944 05010003 */  bgez       $t0, .L800D0954_DF904
    /* DF8F8 800D0948 00084883 */   sra       $t1, $t0, 2
    /* DF8FC 800D094C 25010003 */  addiu      $at, $t0, 0x3
    /* DF900 800D0950 00014883 */  sra        $t1, $at, 2
  .L800D0954_DF904:
    /* DF904 800D0954 012A9821 */  addu       $s3, $t1, $t2
    /* DF908 800D0958 00135C00 */  sll        $t3, $s3, 16
    /* DF90C 800D095C 0C000E38 */  jal        func_800038E0_44E0
    /* DF910 800D0960 000B9C03 */   sra       $s3, $t3, 16
    /* DF914 800D0964 0050001A */  div        $zero, $v0, $s0
    /* DF918 800D0968 00006810 */  mfhi       $t5
    /* DF91C 800D096C 448D3000 */  mtc1       $t5, $f6
    /* DF920 800D0970 16000002 */  bnez       $s0, .L800D097C_DF92C
    /* DF924 800D0974 00000000 */   nop
    /* DF928 800D0978 0007000D */  break      7
  .L800D097C_DF92C:
    /* DF92C 800D097C 2401FFFF */  addiu      $at, $zero, -0x1
    /* DF930 800D0980 16010004 */  bne        $s0, $at, .L800D0994_DF944
    /* DF934 800D0984 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DF938 800D0988 14410002 */  bne        $v0, $at, .L800D0994_DF944
    /* DF93C 800D098C 00000000 */   nop
    /* DF940 800D0990 0006000D */  break      6
  .L800D0994_DF944:
    /* DF944 800D0994 46803220 */  cvt.s.w    $f8, $f6
    /* DF948 800D0998 46144280 */  add.s      $f10, $f8, $f20
    /* DF94C 800D099C 0C000E38 */  jal        func_800038E0_44E0
    /* DF950 800D09A0 E7AA007C */   swc1      $f10, 0x7C($sp)
    /* DF954 800D09A4 0051001A */  div        $zero, $v0, $s1
    /* DF958 800D09A8 16200002 */  bnez       $s1, .L800D09B4_DF964
    /* DF95C 800D09AC 00000000 */   nop
    /* DF960 800D09B0 0007000D */  break      7
  .L800D09B4_DF964:
    /* DF964 800D09B4 2401FFFF */  addiu      $at, $zero, -0x1
    /* DF968 800D09B8 16210004 */  bne        $s1, $at, .L800D09CC_DF97C
    /* DF96C 800D09BC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DF970 800D09C0 14410002 */  bne        $v0, $at, .L800D09CC_DF97C
    /* DF974 800D09C4 00000000 */   nop
    /* DF978 800D09C8 0006000D */  break      6
  .L800D09CC_DF97C:
    /* DF97C 800D09CC 00007010 */  mfhi       $t6
    /* DF980 800D09D0 29C10006 */  slti       $at, $t6, 0x6
    /* DF984 800D09D4 10200003 */  beqz       $at, .L800D09E4_DF994
    /* DF988 800D09D8 C7B0007C */   lwc1      $f16, 0x7C($sp)
    /* DF98C 800D09DC 4610B481 */  sub.s      $f18, $f22, $f16
    /* DF990 800D09E0 E7B2007C */  swc1       $f18, 0x7C($sp)
  .L800D09E4_DF994:
    /* DF994 800D09E4 0C000E38 */  jal        func_800038E0_44E0
    /* DF998 800D09E8 00000000 */   nop
    /* DF99C 800D09EC 0050001A */  div        $zero, $v0, $s0
    /* DF9A0 800D09F0 0000C010 */  mfhi       $t8
    /* DF9A4 800D09F4 44982000 */  mtc1       $t8, $f4
    /* DF9A8 800D09F8 16000002 */  bnez       $s0, .L800D0A04_DF9B4
    /* DF9AC 800D09FC 00000000 */   nop
    /* DF9B0 800D0A00 0007000D */  break      7
  .L800D0A04_DF9B4:
    /* DF9B4 800D0A04 2401FFFF */  addiu      $at, $zero, -0x1
    /* DF9B8 800D0A08 16010004 */  bne        $s0, $at, .L800D0A1C_DF9CC
    /* DF9BC 800D0A0C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DF9C0 800D0A10 14410002 */  bne        $v0, $at, .L800D0A1C_DF9CC
    /* DF9C4 800D0A14 00000000 */   nop
    /* DF9C8 800D0A18 0006000D */  break      6
  .L800D0A1C_DF9CC:
    /* DF9CC 800D0A1C 468021A0 */  cvt.s.w    $f6, $f4
    /* DF9D0 800D0A20 46143200 */  add.s      $f8, $f6, $f20
    /* DF9D4 800D0A24 0C000E38 */  jal        func_800038E0_44E0
    /* DF9D8 800D0A28 E7A80080 */   swc1      $f8, 0x80($sp)
    /* DF9DC 800D0A2C 0051001A */  div        $zero, $v0, $s1
    /* DF9E0 800D0A30 16200002 */  bnez       $s1, .L800D0A3C_DF9EC
    /* DF9E4 800D0A34 00000000 */   nop
    /* DF9E8 800D0A38 0007000D */  break      7
  .L800D0A3C_DF9EC:
    /* DF9EC 800D0A3C 2401FFFF */  addiu      $at, $zero, -0x1
    /* DF9F0 800D0A40 16210004 */  bne        $s1, $at, .L800D0A54_DFA04
    /* DF9F4 800D0A44 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DF9F8 800D0A48 14410002 */  bne        $v0, $at, .L800D0A54_DFA04
    /* DF9FC 800D0A4C 00000000 */   nop
    /* DFA00 800D0A50 0006000D */  break      6
  .L800D0A54_DFA04:
    /* DFA04 800D0A54 00007810 */  mfhi       $t7
    /* DFA08 800D0A58 29E10006 */  slti       $at, $t7, 0x6
    /* DFA0C 800D0A5C 10200003 */  beqz       $at, .L800D0A6C_DFA1C
    /* DFA10 800D0A60 C7AA0080 */   lwc1      $f10, 0x80($sp)
    /* DFA14 800D0A64 460AB401 */  sub.s      $f16, $f22, $f10
    /* DFA18 800D0A68 E7B00080 */  swc1       $f16, 0x80($sp)
  .L800D0A6C_DFA1C:
    /* DFA1C 800D0A6C 0C000E38 */  jal        func_800038E0_44E0
    /* DFA20 800D0A70 00000000 */   nop
    /* DFA24 800D0A74 0050001A */  div        $zero, $v0, $s0
    /* DFA28 800D0A78 0000C810 */  mfhi       $t9
    /* DFA2C 800D0A7C 44999000 */  mtc1       $t9, $f18
    /* DFA30 800D0A80 16000002 */  bnez       $s0, .L800D0A8C_DFA3C
    /* DFA34 800D0A84 00000000 */   nop
    /* DFA38 800D0A88 0007000D */  break      7
  .L800D0A8C_DFA3C:
    /* DFA3C 800D0A8C 2401FFFF */  addiu      $at, $zero, -0x1
    /* DFA40 800D0A90 16010004 */  bne        $s0, $at, .L800D0AA4_DFA54
    /* DFA44 800D0A94 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DFA48 800D0A98 14410002 */  bne        $v0, $at, .L800D0AA4_DFA54
    /* DFA4C 800D0A9C 00000000 */   nop
    /* DFA50 800D0AA0 0006000D */  break      6
  .L800D0AA4_DFA54:
    /* DFA54 800D0AA4 46809120 */  cvt.s.w    $f4, $f18
    /* DFA58 800D0AA8 46142180 */  add.s      $f6, $f4, $f20
    /* DFA5C 800D0AAC 0C000E38 */  jal        func_800038E0_44E0
    /* DFA60 800D0AB0 E7A60084 */   swc1      $f6, 0x84($sp)
    /* DFA64 800D0AB4 0051001A */  div        $zero, $v0, $s1
    /* DFA68 800D0AB8 16200002 */  bnez       $s1, .L800D0AC4_DFA74
    /* DFA6C 800D0ABC 00000000 */   nop
    /* DFA70 800D0AC0 0007000D */  break      7
  .L800D0AC4_DFA74:
    /* DFA74 800D0AC4 2401FFFF */  addiu      $at, $zero, -0x1
    /* DFA78 800D0AC8 16210004 */  bne        $s1, $at, .L800D0ADC_DFA8C
    /* DFA7C 800D0ACC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DFA80 800D0AD0 14410002 */  bne        $v0, $at, .L800D0ADC_DFA8C
    /* DFA84 800D0AD4 00000000 */   nop
    /* DFA88 800D0AD8 0006000D */  break      6
  .L800D0ADC_DFA8C:
    /* DFA8C 800D0ADC 00004010 */  mfhi       $t0
    /* DFA90 800D0AE0 29010006 */  slti       $at, $t0, 0x6
    /* DFA94 800D0AE4 10200004 */  beqz       $at, .L800D0AF8_DFAA8
    /* DFA98 800D0AE8 02802025 */   or        $a0, $s4, $zero
    /* DFA9C 800D0AEC C7A80084 */  lwc1       $f8, 0x84($sp)
    /* DFAA0 800D0AF0 4608B281 */  sub.s      $f10, $f22, $f8
    /* DFAA4 800D0AF4 E7AA0084 */  swc1       $f10, 0x84($sp)
  .L800D0AF8_DFAA8:
    /* DFAA8 800D0AF8 0C030409 */  jal        func_800C1024_CFFD4
    /* DFAAC 800D0AFC 02802825 */   or        $a1, $s4, $zero
    /* DFAB0 800D0B00 0C000E38 */  jal        func_800038E0_44E0
    /* DFAB4 800D0B04 00000000 */   nop
    /* DFAB8 800D0B08 24010006 */  addiu      $at, $zero, 0x6
    /* DFABC 800D0B0C 0041001A */  div        $zero, $v0, $at
    /* DFAC0 800D0B10 44938000 */  mtc1       $s3, $f16
    /* DFAC4 800D0B14 C7B2007C */  lwc1       $f18, 0x7C($sp)
    /* DFAC8 800D0B18 C7A80080 */  lwc1       $f8, 0x80($sp)
    /* DFACC 800D0B1C 46808020 */  cvt.s.w    $f0, $f16
    /* DFAD0 800D0B20 00152400 */  sll        $a0, $s5, 16
    /* DFAD4 800D0B24 00044C03 */  sra        $t1, $a0, 16
    /* DFAD8 800D0B28 01202025 */  or         $a0, $t1, $zero
    /* DFADC 800D0B2C 00172C00 */  sll        $a1, $s7, 16
    /* DFAE0 800D0B30 00055403 */  sra        $t2, $a1, 16
    /* DFAE4 800D0B34 46009102 */  mul.s      $f4, $f18, $f0
    /* DFAE8 800D0B38 C7B20084 */  lwc1       $f18, 0x84($sp)
    /* DFAEC 800D0B3C 00163400 */  sll        $a2, $s6, 16
    /* DFAF0 800D0B40 46004282 */  mul.s      $f10, $f8, $f0
    /* DFAF4 800D0B44 00065C03 */  sra        $t3, $a2, 16
    /* DFAF8 800D0B48 01402825 */  or         $a1, $t2, $zero
    /* DFAFC 800D0B4C 01603025 */  or         $a2, $t3, $zero
    /* DFB00 800D0B50 00004010 */  mfhi       $t0
    /* DFB04 800D0B54 4600218D */  trunc.w.s  $f6, $f4
    /* DFB08 800D0B58 46009102 */  mul.s      $f4, $f18, $f0
    /* DFB0C 800D0B5C 44183000 */  mfc1       $t8, $f6
    /* DFB10 800D0B60 4600540D */  trunc.w.s  $f16, $f10
    /* DFB14 800D0B64 02B83821 */  addu       $a3, $s5, $t8
    /* DFB18 800D0B68 00077C00 */  sll        $t7, $a3, 16
    /* DFB1C 800D0B6C 4600218D */  trunc.w.s  $f6, $f4
    /* DFB20 800D0B70 44098000 */  mfc1       $t1, $f16
    /* DFB24 800D0B74 000F3C03 */  sra        $a3, $t7, 16
    /* DFB28 800D0B78 440E3000 */  mfc1       $t6, $f6
    /* DFB2C 800D0B7C 00095400 */  sll        $t2, $t1, 16
    /* DFB30 800D0B80 000A5C03 */  sra        $t3, $t2, 16
    /* DFB34 800D0B84 000EC400 */  sll        $t8, $t6, 16
    /* DFB38 800D0B88 00187C03 */  sra        $t7, $t8, 16
    /* DFB3C 800D0B8C 02CFC821 */  addu       $t9, $s6, $t7
    /* DFB40 800D0B90 02EB6021 */  addu       $t4, $s7, $t3
    /* DFB44 800D0B94 25090006 */  addiu      $t1, $t0, 0x6
    /* DFB48 800D0B98 AFA90018 */  sw         $t1, 0x18($sp)
    /* DFB4C 800D0B9C AFAC0010 */  sw         $t4, 0x10($sp)
    /* DFB50 800D0BA0 0C0345AF */  jal        func_800D16BC_E066C
    /* DFB54 800D0BA4 AFB90014 */   sw        $t9, 0x14($sp)
    /* DFB58 800D0BA8 26520001 */  addiu      $s2, $s2, 0x1
    /* DFB5C 800D0BAC 324A00FF */  andi       $t2, $s2, 0xFF
    /* DFB60 800D0BB0 015E082A */  slt        $at, $t2, $fp
    /* DFB64 800D0BB4 1420FF54 */  bnez       $at, .L800D0908_DF8B8
    /* DFB68 800D0BB8 01409025 */   or        $s2, $t2, $zero
  .L800D0BBC_DFB6C:
    /* DFB6C 800D0BBC 10000002 */  b          .L800D0BC8_DFB78
    /* DFB70 800D0BC0 87A20076 */   lh        $v0, 0x76($sp)
  .L800D0BC4_DFB74:
    /* DFB74 800D0BC4 2402FFFD */  addiu      $v0, $zero, -0x3
  .L800D0BC8_DFB78:
    /* DFB78 800D0BC8 8FBF005C */  lw         $ra, 0x5C($sp)
    /* DFB7C 800D0BCC D7B40028 */  ldc1       $f20, 0x28($sp)
    /* DFB80 800D0BD0 D7B60030 */  ldc1       $f22, 0x30($sp)
    /* DFB84 800D0BD4 8FB00038 */  lw         $s0, 0x38($sp)
    /* DFB88 800D0BD8 8FB1003C */  lw         $s1, 0x3C($sp)
    /* DFB8C 800D0BDC 8FB20040 */  lw         $s2, 0x40($sp)
    /* DFB90 800D0BE0 8FB30044 */  lw         $s3, 0x44($sp)
    /* DFB94 800D0BE4 8FB40048 */  lw         $s4, 0x48($sp)
    /* DFB98 800D0BE8 8FB5004C */  lw         $s5, 0x4C($sp)
    /* DFB9C 800D0BEC 8FB60050 */  lw         $s6, 0x50($sp)
    /* DFBA0 800D0BF0 8FB70054 */  lw         $s7, 0x54($sp)
    /* DFBA4 800D0BF4 8FBE0058 */  lw         $fp, 0x58($sp)
    /* DFBA8 800D0BF8 03E00008 */  jr         $ra
    /* DFBAC 800D0BFC 27BD0088 */   addiu     $sp, $sp, 0x88
endlabel func_800D0614_DF5C4
