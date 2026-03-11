nonmatching func_802DB620_2BDA50, 0x2B8

glabel func_802DB620_2BDA50
    /* 2BDA50 802DB620 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BDA54 802DB624 000E7880 */  sll        $t7, $t6, 2
    /* 2BDA58 802DB628 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 2BDA5C 802DB62C 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BDA60 802DB630 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BDA64 802DB634 AFB00040 */  sw         $s0, 0x40($sp)
    /* 2BDA68 802DB638 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BDA6C 802DB63C 000F7900 */  sll        $t7, $t7, 4
    /* 2BDA70 802DB640 01F88021 */  addu       $s0, $t7, $t8
    /* 2BDA74 802DB644 8E020020 */  lw         $v0, 0x20($s0)
    /* 2BDA78 802DB648 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 2BDA7C 802DB64C AFA40060 */  sw         $a0, 0x60($sp)
    /* 2BDA80 802DB650 0002CAC0 */  sll        $t9, $v0, 11
    /* 2BDA84 802DB654 0720001D */  bltz       $t9, .L802DB6CC_2BDAFC
    /* 2BDA88 802DB658 30480600 */   andi      $t0, $v0, 0x600
    /* 2BDA8C 802DB65C 1100001B */  beqz       $t0, .L802DB6CC_2BDAFC
    /* 2BDA90 802DB660 02002025 */   or        $a0, $s0, $zero
    /* 2BDA94 802DB664 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 2BDA98 802DB668 44812000 */  mtc1       $at, $f4
    /* 2BDA9C 802DB66C 86090004 */  lh         $t1, 0x4($s0)
    /* 2BDAA0 802DB670 240500EB */  addiu      $a1, $zero, 0xEB
    /* 2BDAA4 802DB674 86060000 */  lh         $a2, 0x0($s0)
    /* 2BDAA8 802DB678 86070002 */  lh         $a3, 0x2($s0)
    /* 2BDAAC 802DB67C AFA90010 */  sw         $t1, 0x10($sp)
    /* 2BDAB0 802DB680 0C04DC6E */  jal        func_801371B8_146168
    /* 2BDAB4 802DB684 E7A40014 */   swc1      $f4, 0x14($sp)
    /* 2BDAB8 802DB688 3C02802E */  lui        $v0, %hi(D_802E2230)
    /* 2BDABC 802DB68C 24422230 */  addiu      $v0, $v0, %lo(D_802E2230)
    /* 2BDAC0 802DB690 904B0000 */  lbu        $t3, 0x0($v0)
    /* 2BDAC4 802DB694 904C0001 */  lbu        $t4, 0x1($v0)
    /* 2BDAC8 802DB698 904D0002 */  lbu        $t5, 0x2($v0)
    /* 2BDACC 802DB69C 240A0050 */  addiu      $t2, $zero, 0x50
    /* 2BDAD0 802DB6A0 A60A002C */  sh         $t2, 0x2C($s0)
    /* 2BDAD4 802DB6A4 86040000 */  lh         $a0, 0x0($s0)
    /* 2BDAD8 802DB6A8 86050002 */  lh         $a1, 0x2($s0)
    /* 2BDADC 802DB6AC 86060004 */  lh         $a2, 0x4($s0)
    /* 2BDAE0 802DB6B0 240707D0 */  addiu      $a3, $zero, 0x7D0
    /* 2BDAE4 802DB6B4 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 2BDAE8 802DB6B8 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 2BDAEC 802DB6BC 0C03416A */  jal        func_800D05A8_DF558
    /* 2BDAF0 802DB6C0 AFAD0018 */   sw        $t5, 0x18($sp)
    /* 2BDAF4 802DB6C4 10000080 */  b          .L802DB8C8_2BDCF8
    /* 2BDAF8 802DB6C8 8FBF0044 */   lw        $ra, 0x44($sp)
  .L802DB6CC_2BDAFC:
    /* 2BDAFC 802DB6CC 0C000E38 */  jal        func_800038E0_44E0
    /* 2BDB00 802DB6D0 00000000 */   nop
    /* 2BDB04 802DB6D4 2401000A */  addiu      $at, $zero, 0xA
    /* 2BDB08 802DB6D8 0041001A */  div        $zero, $v0, $at
    /* 2BDB0C 802DB6DC 00007010 */  mfhi       $t6
    /* 2BDB10 802DB6E0 8603002C */  lh         $v1, 0x2C($s0)
    /* 2BDB14 802DB6E4 25CF0004 */  addiu      $t7, $t6, 0x4
    /* 2BDB18 802DB6E8 006F001A */  div        $zero, $v1, $t7
    /* 2BDB1C 802DB6EC 0000C010 */  mfhi       $t8
    /* 2BDB20 802DB6F0 15E00002 */  bnez       $t7, .L802DB6FC_2BDB2C
    /* 2BDB24 802DB6F4 00000000 */   nop
    /* 2BDB28 802DB6F8 0007000D */  break      7
  .L802DB6FC_2BDB2C:
    /* 2BDB2C 802DB6FC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 2BDB30 802DB700 15E10004 */  bne        $t7, $at, .L802DB714_2BDB44
    /* 2BDB34 802DB704 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 2BDB38 802DB708 14610002 */  bne        $v1, $at, .L802DB714_2BDB44
    /* 2BDB3C 802DB70C 00000000 */   nop
    /* 2BDB40 802DB710 0006000D */  break      6
  .L802DB714_2BDB44:
    /* 2BDB44 802DB714 57000053 */  bnel       $t8, $zero, .L802DB864_2BDC94
    /* 2BDB48 802DB718 24010001 */   addiu     $at, $zero, 0x1
    /* 2BDB4C 802DB71C 0C000E38 */  jal        func_800038E0_44E0
    /* 2BDB50 802DB720 00000000 */   nop
    /* 2BDB54 802DB724 04410004 */  bgez       $v0, .L802DB738_2BDB68
    /* 2BDB58 802DB728 30590003 */   andi      $t9, $v0, 0x3
    /* 2BDB5C 802DB72C 13200002 */  beqz       $t9, .L802DB738_2BDB68
    /* 2BDB60 802DB730 00000000 */   nop
    /* 2BDB64 802DB734 2739FFFC */  addiu      $t9, $t9, -0x4
  .L802DB738_2BDB68:
    /* 2BDB68 802DB738 0C000E38 */  jal        func_800038E0_44E0
    /* 2BDB6C 802DB73C A7B9005C */   sh        $t9, 0x5C($sp)
    /* 2BDB70 802DB740 2401005A */  addiu      $at, $zero, 0x5A
    /* 2BDB74 802DB744 0041001A */  div        $zero, $v0, $at
    /* 2BDB78 802DB748 86090000 */  lh         $t1, 0x0($s0)
    /* 2BDB7C 802DB74C 00004010 */  mfhi       $t0
    /* 2BDB80 802DB750 01095021 */  addu       $t2, $t0, $t1
    /* 2BDB84 802DB754 254BFFD3 */  addiu      $t3, $t2, -0x2D
    /* 2BDB88 802DB758 0C000E38 */  jal        func_800038E0_44E0
    /* 2BDB8C 802DB75C A7AB005A */   sh        $t3, 0x5A($sp)
    /* 2BDB90 802DB760 240100A0 */  addiu      $at, $zero, 0xA0
    /* 2BDB94 802DB764 0041001A */  div        $zero, $v0, $at
    /* 2BDB98 802DB768 860D0002 */  lh         $t5, 0x2($s0)
    /* 2BDB9C 802DB76C 00006010 */  mfhi       $t4
    /* 2BDBA0 802DB770 018D7021 */  addu       $t6, $t4, $t5
    /* 2BDBA4 802DB774 0C000E38 */  jal        func_800038E0_44E0
    /* 2BDBA8 802DB778 A7AE0058 */   sh        $t6, 0x58($sp)
    /* 2BDBAC 802DB77C 2401005A */  addiu      $at, $zero, 0x5A
    /* 2BDBB0 802DB780 0041001A */  div        $zero, $v0, $at
    /* 2BDBB4 802DB784 86180004 */  lh         $t8, 0x4($s0)
    /* 2BDBB8 802DB788 00007810 */  mfhi       $t7
    /* 2BDBBC 802DB78C 01F8C821 */  addu       $t9, $t7, $t8
    /* 2BDBC0 802DB790 2728FFD3 */  addiu      $t0, $t9, -0x2D
    /* 2BDBC4 802DB794 0C000E38 */  jal        func_800038E0_44E0
    /* 2BDBC8 802DB798 A7A80056 */   sh        $t0, 0x56($sp)
    /* 2BDBCC 802DB79C 24010190 */  addiu      $at, $zero, 0x190
    /* 2BDBD0 802DB7A0 0041001A */  div        $zero, $v0, $at
    /* 2BDBD4 802DB7A4 87AA005C */  lh         $t2, 0x5C($sp)
    /* 2BDBD8 802DB7A8 3C0C802E */  lui        $t4, %hi(D_802E2230)
    /* 2BDBDC 802DB7AC 258C2230 */  addiu      $t4, $t4, %lo(D_802E2230)
    /* 2BDBE0 802DB7B0 000A5880 */  sll        $t3, $t2, 2
    /* 2BDBE4 802DB7B4 016A5823 */  subu       $t3, $t3, $t2
    /* 2BDBE8 802DB7B8 016C1821 */  addu       $v1, $t3, $t4
    /* 2BDBEC 802DB7BC 00003810 */  mfhi       $a3
    /* 2BDBF0 802DB7C0 906D0000 */  lbu        $t5, 0x0($v1)
    /* 2BDBF4 802DB7C4 906E0001 */  lbu        $t6, 0x1($v1)
    /* 2BDBF8 802DB7C8 906F0002 */  lbu        $t7, 0x2($v1)
    /* 2BDBFC 802DB7CC 24E70064 */  addiu      $a3, $a3, 0x64
    /* 2BDC00 802DB7D0 30E9FFFF */  andi       $t1, $a3, 0xFFFF
    /* 2BDC04 802DB7D4 01203825 */  or         $a3, $t1, $zero
    /* 2BDC08 802DB7D8 AFA3004C */  sw         $v1, 0x4C($sp)
    /* 2BDC0C 802DB7DC 87A4005A */  lh         $a0, 0x5A($sp)
    /* 2BDC10 802DB7E0 87A50058 */  lh         $a1, 0x58($sp)
    /* 2BDC14 802DB7E4 87A60056 */  lh         $a2, 0x56($sp)
    /* 2BDC18 802DB7E8 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 2BDC1C 802DB7EC AFAE0014 */  sw         $t6, 0x14($sp)
    /* 2BDC20 802DB7F0 0C03416A */  jal        func_800D05A8_DF558
    /* 2BDC24 802DB7F4 AFAF0018 */   sw        $t7, 0x18($sp)
    /* 2BDC28 802DB7F8 8FA3004C */  lw         $v1, 0x4C($sp)
    /* 2BDC2C 802DB7FC 2418007F */  addiu      $t8, $zero, 0x7F
    /* 2BDC30 802DB800 24190064 */  addiu      $t9, $zero, 0x64
    /* 2BDC34 802DB804 906B0000 */  lbu        $t3, 0x0($v1)
    /* 2BDC38 802DB808 906C0001 */  lbu        $t4, 0x1($v1)
    /* 2BDC3C 802DB80C 906D0002 */  lbu        $t5, 0x2($v1)
    /* 2BDC40 802DB810 2408000C */  addiu      $t0, $zero, 0xC
    /* 2BDC44 802DB814 24090008 */  addiu      $t1, $zero, 0x8
    /* 2BDC48 802DB818 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 2BDC4C 802DB81C 240E0096 */  addiu      $t6, $zero, 0x96
    /* 2BDC50 802DB820 AFAE0034 */  sw         $t6, 0x34($sp)
    /* 2BDC54 802DB824 AFAA0024 */  sw         $t2, 0x24($sp)
    /* 2BDC58 802DB828 AFA90020 */  sw         $t1, 0x20($sp)
    /* 2BDC5C 802DB82C AFA8001C */  sw         $t0, 0x1C($sp)
    /* 2BDC60 802DB830 AFB90018 */  sw         $t9, 0x18($sp)
    /* 2BDC64 802DB834 AFB80010 */  sw         $t8, 0x10($sp)
    /* 2BDC68 802DB838 87A4005A */  lh         $a0, 0x5A($sp)
    /* 2BDC6C 802DB83C 87A50058 */  lh         $a1, 0x58($sp)
    /* 2BDC70 802DB840 87A60056 */  lh         $a2, 0x56($sp)
    /* 2BDC74 802DB844 00003825 */  or         $a3, $zero, $zero
    /* 2BDC78 802DB848 AFA00014 */  sw         $zero, 0x14($sp)
    /* 2BDC7C 802DB84C AFAB0028 */  sw         $t3, 0x28($sp)
    /* 2BDC80 802DB850 AFAC002C */  sw         $t4, 0x2C($sp)
    /* 2BDC84 802DB854 0C03297B */  jal        func_800CA5EC_D959C
    /* 2BDC88 802DB858 AFAD0030 */   sw        $t5, 0x30($sp)
    /* 2BDC8C 802DB85C 8603002C */  lh         $v1, 0x2C($s0)
    /* 2BDC90 802DB860 24010001 */  addiu      $at, $zero, 0x1
  .L802DB864_2BDC94:
    /* 2BDC94 802DB864 14610017 */  bne        $v1, $at, .L802DB8C4_2BDCF4
    /* 2BDC98 802DB868 02002025 */   or        $a0, $s0, $zero
    /* 2BDC9C 802DB86C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 2BDCA0 802DB870 44813000 */  mtc1       $at, $f6
    /* 2BDCA4 802DB874 860F0004 */  lh         $t7, 0x4($s0)
    /* 2BDCA8 802DB878 240500EB */  addiu      $a1, $zero, 0xEB
    /* 2BDCAC 802DB87C 86060000 */  lh         $a2, 0x0($s0)
    /* 2BDCB0 802DB880 86070002 */  lh         $a3, 0x2($s0)
    /* 2BDCB4 802DB884 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2BDCB8 802DB888 0C04DC6E */  jal        func_801371B8_146168
    /* 2BDCBC 802DB88C E7A60014 */   swc1      $f6, 0x14($sp)
    /* 2BDCC0 802DB890 3C02802E */  lui        $v0, %hi(D_802E2230)
    /* 2BDCC4 802DB894 24422230 */  addiu      $v0, $v0, %lo(D_802E2230)
    /* 2BDCC8 802DB898 90580000 */  lbu        $t8, 0x0($v0)
    /* 2BDCCC 802DB89C 90590001 */  lbu        $t9, 0x1($v0)
    /* 2BDCD0 802DB8A0 90480002 */  lbu        $t0, 0x2($v0)
    /* 2BDCD4 802DB8A4 86040000 */  lh         $a0, 0x0($s0)
    /* 2BDCD8 802DB8A8 86050002 */  lh         $a1, 0x2($s0)
    /* 2BDCDC 802DB8AC 86060004 */  lh         $a2, 0x4($s0)
    /* 2BDCE0 802DB8B0 240707D0 */  addiu      $a3, $zero, 0x7D0
    /* 2BDCE4 802DB8B4 AFB80010 */  sw         $t8, 0x10($sp)
    /* 2BDCE8 802DB8B8 AFB90014 */  sw         $t9, 0x14($sp)
    /* 2BDCEC 802DB8BC 0C03416A */  jal        func_800D05A8_DF558
    /* 2BDCF0 802DB8C0 AFA80018 */   sw        $t0, 0x18($sp)
  .L802DB8C4_2BDCF4:
    /* 2BDCF4 802DB8C4 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DB8C8_2BDCF8:
    /* 2BDCF8 802DB8C8 8FB00040 */  lw         $s0, 0x40($sp)
    /* 2BDCFC 802DB8CC 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 2BDD00 802DB8D0 03E00008 */  jr         $ra
    /* 2BDD04 802DB8D4 00000000 */   nop
endlabel func_802DB620_2BDA50
