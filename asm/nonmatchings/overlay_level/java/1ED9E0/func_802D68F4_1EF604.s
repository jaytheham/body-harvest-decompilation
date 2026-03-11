nonmatching func_802D68F4_1EF604, 0x4C8

glabel func_802D68F4_1EF604
    /* 1EF604 802D68F4 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 1EF608 802D68F8 3C028015 */  lui        $v0, %hi(D_80157F8C)
    /* 1EF60C 802D68FC 84427F8C */  lh         $v0, %lo(D_80157F8C)($v0)
    /* 1EF610 802D6900 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 1EF614 802D6904 AFB60040 */  sw         $s6, 0x40($sp)
    /* 1EF618 802D6908 AFB5003C */  sw         $s5, 0x3C($sp)
    /* 1EF61C 802D690C AFB40038 */  sw         $s4, 0x38($sp)
    /* 1EF620 802D6910 AFB30034 */  sw         $s3, 0x34($sp)
    /* 1EF624 802D6914 AFB20030 */  sw         $s2, 0x30($sp)
    /* 1EF628 802D6918 AFB1002C */  sw         $s1, 0x2C($sp)
    /* 1EF62C 802D691C 1040000A */  beqz       $v0, .L802D6948_1EF658
    /* 1EF630 802D6920 AFB00028 */   sw        $s0, 0x28($sp)
    /* 1EF634 802D6924 24010001 */  addiu      $at, $zero, 0x1
    /* 1EF638 802D6928 1041001E */  beq        $v0, $at, .L802D69A4_1EF6B4
    /* 1EF63C 802D692C 24010002 */   addiu     $at, $zero, 0x2
    /* 1EF640 802D6930 10410047 */  beq        $v0, $at, .L802D6A50_1EF760
    /* 1EF644 802D6934 24010003 */   addiu     $at, $zero, 0x3
    /* 1EF648 802D6938 10410111 */  beq        $v0, $at, .L802D6D80_1EFA90
    /* 1EF64C 802D693C 24040000 */   addiu     $a0, $zero, 0x0
    /* 1EF650 802D6940 10000114 */  b          .L802D6D94_1EFAA4
    /* 1EF654 802D6944 00001025 */   or        $v0, $zero, $zero
  .L802D6948_1EF658:
    /* 1EF658 802D6948 3C0E8015 */  lui        $t6, %hi(D_80157F8E)
    /* 1EF65C 802D694C 85CE7F8E */  lh         $t6, %lo(D_80157F8E)($t6)
    /* 1EF660 802D6950 241801F4 */  addiu      $t8, $zero, 0x1F4
    /* 1EF664 802D6954 000E7880 */  sll        $t7, $t6, 2
    /* 1EF668 802D6958 01EE7821 */  addu       $t7, $t7, $t6
    /* 1EF66C 802D695C 000F7840 */  sll        $t7, $t7, 1
    /* 1EF670 802D6960 0C0389C8 */  jal        func_800E2720_F16D0
    /* 1EF674 802D6964 030F2023 */   subu      $a0, $t8, $t7
    /* 1EF678 802D6968 3C038015 */  lui        $v1, %hi(D_80157F8E)
    /* 1EF67C 802D696C 84637F8E */  lh         $v1, %lo(D_80157F8E)($v1)
    /* 1EF680 802D6970 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* 1EF684 802D6974 3C098015 */  lui        $t1, %hi(D_80157F8C)
    /* 1EF688 802D6978 2862001F */  slti       $v0, $v1, 0x1F
    /* 1EF68C 802D697C 24790001 */  addiu      $t9, $v1, 0x1
    /* 1EF690 802D6980 14400103 */  bnez       $v0, .L802D6D90_1EFAA0
    /* 1EF694 802D6984 A4397F8E */   sh        $t9, %lo(D_80157F8E)($at)
    /* 1EF698 802D6988 85297F8C */  lh         $t1, %lo(D_80157F8C)($t1)
    /* 1EF69C 802D698C 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* 1EF6A0 802D6990 A4207F8E */  sh         $zero, %lo(D_80157F8E)($at)
    /* 1EF6A4 802D6994 3C018015 */  lui        $at, %hi(D_80157F8C)
    /* 1EF6A8 802D6998 252A0001 */  addiu      $t2, $t1, 0x1
    /* 1EF6AC 802D699C 100000FC */  b          .L802D6D90_1EFAA0
    /* 1EF6B0 802D69A0 A42A7F8C */   sh        $t2, %lo(D_80157F8C)($at)
  .L802D69A4_1EF6B4:
    /* 1EF6B4 802D69A4 0C000E38 */  jal        func_800038E0_44E0
    /* 1EF6B8 802D69A8 00000000 */   nop
    /* 1EF6BC 802D69AC 00028143 */  sra        $s0, $v0, 5
    /* 1EF6C0 802D69B0 00105C00 */  sll        $t3, $s0, 16
    /* 1EF6C4 802D69B4 0C000E38 */  jal        func_800038E0_44E0
    /* 1EF6C8 802D69B8 000B8403 */   sra       $s0, $t3, 16
    /* 1EF6CC 802D69BC 3C038015 */  lui        $v1, %hi(D_80157F8E)
    /* 1EF6D0 802D69C0 84637F8E */  lh         $v1, %lo(D_80157F8E)($v1)
    /* 1EF6D4 802D69C4 24010007 */  addiu      $at, $zero, 0x7
    /* 1EF6D8 802D69C8 00024143 */  sra        $t0, $v0, 5
    /* 1EF6DC 802D69CC 0061001A */  div        $zero, $v1, $at
    /* 1EF6E0 802D69D0 00086C00 */  sll        $t5, $t0, 16
    /* 1EF6E4 802D69D4 0000C010 */  mfhi       $t8
    /* 1EF6E8 802D69D8 000D7403 */  sra        $t6, $t5, 16
    /* 1EF6EC 802D69DC 1700000F */  bnez       $t8, .L802D6A1C_1EF72C
    /* 1EF6F0 802D69E0 24043980 */   addiu     $a0, $zero, 0x3980
    /* 1EF6F4 802D69E4 26073778 */  addiu      $a3, $s0, 0x3778
    /* 1EF6F8 802D69E8 00077C00 */  sll        $t7, $a3, 16
    /* 1EF6FC 802D69EC 24091194 */  addiu      $t1, $zero, 0x1194
    /* 1EF700 802D69F0 25CA13EC */  addiu      $t2, $t6, 0x13EC
    /* 1EF704 802D69F4 240B000A */  addiu      $t3, $zero, 0xA
    /* 1EF708 802D69F8 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 1EF70C 802D69FC AFAA0014 */  sw         $t2, 0x14($sp)
    /* 1EF710 802D6A00 AFA90010 */  sw         $t1, 0x10($sp)
    /* 1EF714 802D6A04 000F3C03 */  sra        $a3, $t7, 16
    /* 1EF718 802D6A08 24050B3B */  addiu      $a1, $zero, 0xB3B
    /* 1EF71C 802D6A0C 0C0345AF */  jal        func_800D16BC_E066C
    /* 1EF720 802D6A10 24061400 */   addiu     $a2, $zero, 0x1400
    /* 1EF724 802D6A14 3C038015 */  lui        $v1, %hi(D_80157F8E)
    /* 1EF728 802D6A18 84637F8E */  lh         $v1, %lo(D_80157F8E)($v1)
  .L802D6A1C_1EF72C:
    /* 1EF72C 802D6A1C 286200A1 */  slti       $v0, $v1, 0xA1
    /* 1EF730 802D6A20 246C0001 */  addiu      $t4, $v1, 0x1
    /* 1EF734 802D6A24 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* 1EF738 802D6A28 144000D9 */  bnez       $v0, .L802D6D90_1EFAA0
    /* 1EF73C 802D6A2C A42C7F8E */   sh        $t4, %lo(D_80157F8E)($at)
    /* 1EF740 802D6A30 3C028015 */  lui        $v0, %hi(D_80157F8C)
    /* 1EF744 802D6A34 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* 1EF748 802D6A38 A4207F8E */  sh         $zero, %lo(D_80157F8E)($at)
    /* 1EF74C 802D6A3C 24427F8C */  addiu      $v0, $v0, %lo(D_80157F8C)
    /* 1EF750 802D6A40 844D0000 */  lh         $t5, 0x0($v0)
    /* 1EF754 802D6A44 25AE0001 */  addiu      $t6, $t5, 0x1
    /* 1EF758 802D6A48 100000D1 */  b          .L802D6D90_1EFAA0
    /* 1EF75C 802D6A4C A44E0000 */   sh        $t6, 0x0($v0)
  .L802D6A50_1EF760:
    /* 1EF760 802D6A50 0C000E38 */  jal        func_800038E0_44E0
    /* 1EF764 802D6A54 00000000 */   nop
    /* 1EF768 802D6A58 00028143 */  sra        $s0, $v0, 5
    /* 1EF76C 802D6A5C 0010C400 */  sll        $t8, $s0, 16
    /* 1EF770 802D6A60 0C000E38 */  jal        func_800038E0_44E0
    /* 1EF774 802D6A64 00188403 */   sra       $s0, $t8, 16
    /* 1EF778 802D6A68 3C038015 */  lui        $v1, %hi(D_80157F8E)
    /* 1EF77C 802D6A6C 84637F8E */  lh         $v1, %lo(D_80157F8E)($v1)
    /* 1EF780 802D6A70 00024143 */  sra        $t0, $v0, 5
    /* 1EF784 802D6A74 0008CC00 */  sll        $t9, $t0, 16
    /* 1EF788 802D6A78 2861003C */  slti       $at, $v1, 0x3C
    /* 1EF78C 802D6A7C 10200014 */  beqz       $at, .L802D6AD0_1EF7E0
    /* 1EF790 802D6A80 00194C03 */   sra       $t1, $t9, 16
    /* 1EF794 802D6A84 2401000C */  addiu      $at, $zero, 0xC
    /* 1EF798 802D6A88 0061001A */  div        $zero, $v1, $at
    /* 1EF79C 802D6A8C 00005010 */  mfhi       $t2
    /* 1EF7A0 802D6A90 24043980 */  addiu      $a0, $zero, 0x3980
    /* 1EF7A4 802D6A94 1540000E */  bnez       $t2, .L802D6AD0_1EF7E0
    /* 1EF7A8 802D6A98 24050B3B */   addiu     $a1, $zero, 0xB3B
    /* 1EF7AC 802D6A9C 26073778 */  addiu      $a3, $s0, 0x3778
    /* 1EF7B0 802D6AA0 00075C00 */  sll        $t3, $a3, 16
    /* 1EF7B4 802D6AA4 240D1194 */  addiu      $t5, $zero, 0x1194
    /* 1EF7B8 802D6AA8 252E13EC */  addiu      $t6, $t1, 0x13EC
    /* 1EF7BC 802D6AAC 2418000A */  addiu      $t8, $zero, 0xA
    /* 1EF7C0 802D6AB0 AFB80018 */  sw         $t8, 0x18($sp)
    /* 1EF7C4 802D6AB4 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 1EF7C8 802D6AB8 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1EF7CC 802D6ABC 000B3C03 */  sra        $a3, $t3, 16
    /* 1EF7D0 802D6AC0 0C0345AF */  jal        func_800D16BC_E066C
    /* 1EF7D4 802D6AC4 24061400 */   addiu     $a2, $zero, 0x1400
    /* 1EF7D8 802D6AC8 3C038015 */  lui        $v1, %hi(D_80157F8E)
    /* 1EF7DC 802D6ACC 84637F8E */  lh         $v1, %lo(D_80157F8E)($v1)
  .L802D6AD0_1EF7E0:
    /* 1EF7E0 802D6AD0 240F0064 */  addiu      $t7, $zero, 0x64
    /* 1EF7E4 802D6AD4 01E3A823 */  subu       $s5, $t7, $v1
    /* 1EF7E8 802D6AD8 0015CC00 */  sll        $t9, $s5, 16
    /* 1EF7EC 802D6ADC 3C16802D */  lui        $s6, %hi(D_802D48D0)
    /* 1EF7F0 802D6AE0 0019AC03 */  sra        $s5, $t9, 16
    /* 1EF7F4 802D6AE4 26D648D0 */  addiu      $s6, $s6, %lo(D_802D48D0)
    /* 1EF7F8 802D6AE8 00008825 */  or         $s1, $zero, $zero
  .L802D6AEC_1EF7FC:
    /* 1EF7FC 802D6AEC 00119040 */  sll        $s2, $s1, 1
    /* 1EF800 802D6AF0 02D25021 */  addu       $t2, $s6, $s2
    /* 1EF804 802D6AF4 95420000 */  lhu        $v0, 0x0($t2)
    /* 1EF808 802D6AF8 00153400 */  sll        $a2, $s5, 16
    /* 1EF80C 802D6AFC 0006CC03 */  sra        $t9, $a2, 16
    /* 1EF810 802D6B00 3043F800 */  andi       $v1, $v0, 0xF800
    /* 1EF814 802D6B04 305307C0 */  andi       $s3, $v0, 0x7C0
    /* 1EF818 802D6B08 3054003E */  andi       $s4, $v0, 0x3E
    /* 1EF81C 802D6B0C 00035AC3 */  sra        $t3, $v1, 11
    /* 1EF820 802D6B10 00136983 */  sra        $t5, $s3, 6
    /* 1EF824 802D6B14 0014C043 */  sra        $t8, $s4, 1
    /* 1EF828 802D6B18 316400FF */  andi       $a0, $t3, 0xFF
    /* 1EF82C 802D6B1C 31B300FF */  andi       $s3, $t5, 0xFF
    /* 1EF830 802D6B20 331400FF */  andi       $s4, $t8, 0xFF
    /* 1EF834 802D6B24 03203025 */  or         $a2, $t9, $zero
    /* 1EF838 802D6B28 2405000C */  addiu      $a1, $zero, 0xC
    /* 1EF83C 802D6B2C 0C0B5A1F */  jal        func_802D687C_1EF58C
    /* 1EF840 802D6B30 24070064 */   addiu     $a3, $zero, 0x64
    /* 1EF844 802D6B34 3C09802D */  lui        $t1, %hi(D_802D4AD0)
    /* 1EF848 802D6B38 25294AD0 */  addiu      $t1, $t1, %lo(D_802D4AD0)
    /* 1EF84C 802D6B3C 00153400 */  sll        $a2, $s5, 16
    /* 1EF850 802D6B40 02498021 */  addu       $s0, $s2, $t1
    /* 1EF854 802D6B44 000252C0 */  sll        $t2, $v0, 11
    /* 1EF858 802D6B48 00065C03 */  sra        $t3, $a2, 16
    /* 1EF85C 802D6B4C A60A0000 */  sh         $t2, 0x0($s0)
    /* 1EF860 802D6B50 01603025 */  or         $a2, $t3, $zero
    /* 1EF864 802D6B54 02602025 */  or         $a0, $s3, $zero
    /* 1EF868 802D6B58 2405000C */  addiu      $a1, $zero, 0xC
    /* 1EF86C 802D6B5C 0C0B5A1F */  jal        func_802D687C_1EF58C
    /* 1EF870 802D6B60 24070064 */   addiu     $a3, $zero, 0x64
    /* 1EF874 802D6B64 960C0000 */  lhu        $t4, 0x0($s0)
    /* 1EF878 802D6B68 00026980 */  sll        $t5, $v0, 6
    /* 1EF87C 802D6B6C 00153400 */  sll        $a2, $s5, 16
    /* 1EF880 802D6B70 0006C403 */  sra        $t8, $a2, 16
    /* 1EF884 802D6B74 018D7021 */  addu       $t6, $t4, $t5
    /* 1EF888 802D6B78 A60E0000 */  sh         $t6, 0x0($s0)
    /* 1EF88C 802D6B7C 03003025 */  or         $a2, $t8, $zero
    /* 1EF890 802D6B80 02802025 */  or         $a0, $s4, $zero
    /* 1EF894 802D6B84 2405000A */  addiu      $a1, $zero, 0xA
    /* 1EF898 802D6B88 0C0B5A1F */  jal        func_802D687C_1EF58C
    /* 1EF89C 802D6B8C 24070064 */   addiu     $a3, $zero, 0x64
    /* 1EF8A0 802D6B90 960F0000 */  lhu        $t7, 0x0($s0)
    /* 1EF8A4 802D6B94 26310001 */  addiu      $s1, $s1, 0x1
    /* 1EF8A8 802D6B98 00115400 */  sll        $t2, $s1, 16
    /* 1EF8AC 802D6B9C 000A8C03 */  sra        $s1, $t2, 16
    /* 1EF8B0 802D6BA0 0002C840 */  sll        $t9, $v0, 1
    /* 1EF8B4 802D6BA4 2A210100 */  slti       $at, $s1, 0x100
    /* 1EF8B8 802D6BA8 01F94821 */  addu       $t1, $t7, $t9
    /* 1EF8BC 802D6BAC 1420FFCF */  bnez       $at, .L802D6AEC_1EF7FC
    /* 1EF8C0 802D6BB0 A6090000 */   sh        $t1, 0x0($s0)
    /* 1EF8C4 802D6BB4 1AA00007 */  blez       $s5, .L802D6BD4_1EF8E4
    /* 1EF8C8 802D6BB8 3C0F802D */   lui       $t7, %hi(D_802CA8D0)
    /* 1EF8CC 802D6BBC 3C0C8015 */  lui        $t4, %hi(D_80157F8E)
    /* 1EF8D0 802D6BC0 858C7F8E */  lh         $t4, %lo(D_80157F8E)($t4)
    /* 1EF8D4 802D6BC4 240D0063 */  addiu      $t5, $zero, 0x63
    /* 1EF8D8 802D6BC8 01ACA823 */  subu       $s5, $t5, $t4
    /* 1EF8DC 802D6BCC 00157400 */  sll        $t6, $s5, 16
    /* 1EF8E0 802D6BD0 000EAC03 */  sra        $s5, $t6, 16
  .L802D6BD4_1EF8E4:
    /* 1EF8E4 802D6BD4 91EFA8D0 */  lbu        $t7, %lo(D_802CA8D0)($t7)
    /* 1EF8E8 802D6BD8 00153400 */  sll        $a2, $s5, 16
    /* 1EF8EC 802D6BDC 2405000C */  addiu      $a1, $zero, 0xC
    /* 1EF8F0 802D6BE0 000FC840 */  sll        $t9, $t7, 1
    /* 1EF8F4 802D6BE4 02D94821 */  addu       $t1, $s6, $t9
    /* 1EF8F8 802D6BE8 95220000 */  lhu        $v0, 0x0($t1)
    /* 1EF8FC 802D6BEC 00067C03 */  sra        $t7, $a2, 16
    /* 1EF900 802D6BF0 01E03025 */  or         $a2, $t7, $zero
    /* 1EF904 802D6BF4 3043F800 */  andi       $v1, $v0, 0xF800
    /* 1EF908 802D6BF8 305307C0 */  andi       $s3, $v0, 0x7C0
    /* 1EF90C 802D6BFC 3054003E */  andi       $s4, $v0, 0x3E
    /* 1EF910 802D6C00 000352C3 */  sra        $t2, $v1, 11
    /* 1EF914 802D6C04 00136983 */  sra        $t5, $s3, 6
    /* 1EF918 802D6C08 00147043 */  sra        $t6, $s4, 1
    /* 1EF91C 802D6C0C 314400FF */  andi       $a0, $t2, 0xFF
    /* 1EF920 802D6C10 31B300FF */  andi       $s3, $t5, 0xFF
    /* 1EF924 802D6C14 31D400FF */  andi       $s4, $t6, 0xFF
    /* 1EF928 802D6C18 0C0B5A1F */  jal        func_802D687C_1EF58C
    /* 1EF92C 802D6C1C 24070064 */   addiu     $a3, $zero, 0x64
    /* 1EF930 802D6C20 00028AC0 */  sll        $s1, $v0, 11
    /* 1EF934 802D6C24 00153400 */  sll        $a2, $s5, 16
    /* 1EF938 802D6C28 3239FFFF */  andi       $t9, $s1, 0xFFFF
    /* 1EF93C 802D6C2C 00064C03 */  sra        $t1, $a2, 16
    /* 1EF940 802D6C30 03208825 */  or         $s1, $t9, $zero
    /* 1EF944 802D6C34 01203025 */  or         $a2, $t1, $zero
    /* 1EF948 802D6C38 02602025 */  or         $a0, $s3, $zero
    /* 1EF94C 802D6C3C 2405000C */  addiu      $a1, $zero, 0xC
    /* 1EF950 802D6C40 0C0B5A1F */  jal        func_802D687C_1EF58C
    /* 1EF954 802D6C44 24070064 */   addiu     $a3, $zero, 0x64
    /* 1EF958 802D6C48 00025180 */  sll        $t2, $v0, 6
    /* 1EF95C 802D6C4C 022A8821 */  addu       $s1, $s1, $t2
    /* 1EF960 802D6C50 00153400 */  sll        $a2, $s5, 16
    /* 1EF964 802D6C54 322BFFFF */  andi       $t3, $s1, 0xFFFF
    /* 1EF968 802D6C58 00066C03 */  sra        $t5, $a2, 16
    /* 1EF96C 802D6C5C 01608825 */  or         $s1, $t3, $zero
    /* 1EF970 802D6C60 01A03025 */  or         $a2, $t5, $zero
    /* 1EF974 802D6C64 02802025 */  or         $a0, $s4, $zero
    /* 1EF978 802D6C68 2405000A */  addiu      $a1, $zero, 0xA
    /* 1EF97C 802D6C6C 0C0B5A1F */  jal        func_802D687C_1EF58C
    /* 1EF980 802D6C70 24070064 */   addiu     $a3, $zero, 0x64
    /* 1EF984 802D6C74 3C18802D */  lui        $t8, %hi(D_802D48CF)
    /* 1EF988 802D6C78 931848CF */  lbu        $t8, %lo(D_802D48CF)($t8)
    /* 1EF98C 802D6C7C 00026040 */  sll        $t4, $v0, 1
    /* 1EF990 802D6C80 022C8821 */  addu       $s1, $s1, $t4
    /* 1EF994 802D6C84 00187840 */  sll        $t7, $t8, 1
    /* 1EF998 802D6C88 02CFC821 */  addu       $t9, $s6, $t7
    /* 1EF99C 802D6C8C 97280000 */  lhu        $t0, 0x0($t9)
    /* 1EF9A0 802D6C90 00153400 */  sll        $a2, $s5, 16
    /* 1EF9A4 802D6C94 322EFFFF */  andi       $t6, $s1, 0xFFFF
    /* 1EF9A8 802D6C98 3103F800 */  andi       $v1, $t0, 0xF800
    /* 1EF9AC 802D6C9C 311307C0 */  andi       $s3, $t0, 0x7C0
    /* 1EF9B0 802D6CA0 3114003E */  andi       $s4, $t0, 0x3E
    /* 1EF9B4 802D6CA4 00034AC3 */  sra        $t1, $v1, 11
    /* 1EF9B8 802D6CA8 00135983 */  sra        $t3, $s3, 6
    /* 1EF9BC 802D6CAC 00146043 */  sra        $t4, $s4, 1
    /* 1EF9C0 802D6CB0 0006C403 */  sra        $t8, $a2, 16
    /* 1EF9C4 802D6CB4 01C08825 */  or         $s1, $t6, $zero
    /* 1EF9C8 802D6CB8 312400FF */  andi       $a0, $t1, 0xFF
    /* 1EF9CC 802D6CBC 317300FF */  andi       $s3, $t3, 0xFF
    /* 1EF9D0 802D6CC0 319400FF */  andi       $s4, $t4, 0xFF
    /* 1EF9D4 802D6CC4 03003025 */  or         $a2, $t8, $zero
    /* 1EF9D8 802D6CC8 2405000C */  addiu      $a1, $zero, 0xC
    /* 1EF9DC 802D6CCC 0C0B5A1F */  jal        func_802D687C_1EF58C
    /* 1EF9E0 802D6CD0 24070064 */   addiu     $a3, $zero, 0x64
    /* 1EF9E4 802D6CD4 000282C0 */  sll        $s0, $v0, 11
    /* 1EF9E8 802D6CD8 00153400 */  sll        $a2, $s5, 16
    /* 1EF9EC 802D6CDC 320FFFFF */  andi       $t7, $s0, 0xFFFF
    /* 1EF9F0 802D6CE0 0006CC03 */  sra        $t9, $a2, 16
    /* 1EF9F4 802D6CE4 01E08025 */  or         $s0, $t7, $zero
    /* 1EF9F8 802D6CE8 03203025 */  or         $a2, $t9, $zero
    /* 1EF9FC 802D6CEC 02602025 */  or         $a0, $s3, $zero
    /* 1EFA00 802D6CF0 2405000C */  addiu      $a1, $zero, 0xC
    /* 1EFA04 802D6CF4 0C0B5A1F */  jal        func_802D687C_1EF58C
    /* 1EFA08 802D6CF8 24070064 */   addiu     $a3, $zero, 0x64
    /* 1EFA0C 802D6CFC 00024980 */  sll        $t1, $v0, 6
    /* 1EFA10 802D6D00 02098021 */  addu       $s0, $s0, $t1
    /* 1EFA14 802D6D04 00153400 */  sll        $a2, $s5, 16
    /* 1EFA18 802D6D08 320AFFFF */  andi       $t2, $s0, 0xFFFF
    /* 1EFA1C 802D6D0C 00065C03 */  sra        $t3, $a2, 16
    /* 1EFA20 802D6D10 01408025 */  or         $s0, $t2, $zero
    /* 1EFA24 802D6D14 01603025 */  or         $a2, $t3, $zero
    /* 1EFA28 802D6D18 02802025 */  or         $a0, $s4, $zero
    /* 1EFA2C 802D6D1C 2405000A */  addiu      $a1, $zero, 0xA
    /* 1EFA30 802D6D20 0C0B5A1F */  jal        func_802D687C_1EF58C
    /* 1EFA34 802D6D24 24070064 */   addiu     $a3, $zero, 0x64
    /* 1EFA38 802D6D28 00026840 */  sll        $t5, $v0, 1
    /* 1EFA3C 802D6D2C 020D6021 */  addu       $t4, $s0, $t5
    /* 1EFA40 802D6D30 3185FFFF */  andi       $a1, $t4, 0xFFFF
    /* 1EFA44 802D6D34 0C001275 */  jal        func_800049D4_55D4
    /* 1EFA48 802D6D38 3224FFFF */   andi      $a0, $s1, 0xFFFF
    /* 1EFA4C 802D6D3C 0C001309 */  jal        leoInitUnit_atten
    /* 1EFA50 802D6D40 00000000 */   nop
    /* 1EFA54 802D6D44 3C038015 */  lui        $v1, %hi(D_80157F8E)
    /* 1EFA58 802D6D48 84637F8E */  lh         $v1, %lo(D_80157F8E)($v1)
    /* 1EFA5C 802D6D4C 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* 1EFA60 802D6D50 28620065 */  slti       $v0, $v1, 0x65
    /* 1EFA64 802D6D54 246E0001 */  addiu      $t6, $v1, 0x1
    /* 1EFA68 802D6D58 1440000D */  bnez       $v0, .L802D6D90_1EFAA0
    /* 1EFA6C 802D6D5C A42E7F8E */   sh        $t6, %lo(D_80157F8E)($at)
    /* 1EFA70 802D6D60 3C028015 */  lui        $v0, %hi(D_80157F8C)
    /* 1EFA74 802D6D64 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* 1EFA78 802D6D68 A4207F8E */  sh         $zero, %lo(D_80157F8E)($at)
    /* 1EFA7C 802D6D6C 24427F8C */  addiu      $v0, $v0, %lo(D_80157F8C)
    /* 1EFA80 802D6D70 84580000 */  lh         $t8, 0x0($v0)
    /* 1EFA84 802D6D74 270F0001 */  addiu      $t7, $t8, 0x1
    /* 1EFA88 802D6D78 10000005 */  b          .L802D6D90_1EFAA0
    /* 1EFA8C 802D6D7C A44F0000 */   sh        $t7, 0x0($v0)
  .L802D6D80_1EFA90:
    /* 1EFA90 802D6D80 0C001CB3 */  jal        func_800072CC_7ECC
    /* 1EFA94 802D6D84 24050021 */   addiu     $a1, $zero, 0x21
    /* 1EFA98 802D6D88 10000002 */  b          .L802D6D94_1EFAA4
    /* 1EFA9C 802D6D8C 24020001 */   addiu     $v0, $zero, 0x1
  .L802D6D90_1EFAA0:
    /* 1EFAA0 802D6D90 00001025 */  or         $v0, $zero, $zero
  .L802D6D94_1EFAA4:
    /* 1EFAA4 802D6D94 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 1EFAA8 802D6D98 8FB00028 */  lw         $s0, 0x28($sp)
    /* 1EFAAC 802D6D9C 8FB1002C */  lw         $s1, 0x2C($sp)
    /* 1EFAB0 802D6DA0 8FB20030 */  lw         $s2, 0x30($sp)
    /* 1EFAB4 802D6DA4 8FB30034 */  lw         $s3, 0x34($sp)
    /* 1EFAB8 802D6DA8 8FB40038 */  lw         $s4, 0x38($sp)
    /* 1EFABC 802D6DAC 8FB5003C */  lw         $s5, 0x3C($sp)
    /* 1EFAC0 802D6DB0 8FB60040 */  lw         $s6, 0x40($sp)
    /* 1EFAC4 802D6DB4 03E00008 */  jr         $ra
    /* 1EFAC8 802D6DB8 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_802D68F4_1EF604
