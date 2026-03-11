nonmatching func_802DB6B0_25ADF0, 0x108

glabel func_802DB6B0_25ADF0
    /* 25ADF0 802DB6B0 308E00FF */  andi       $t6, $a0, 0xFF
    /* 25ADF4 802DB6B4 000E7880 */  sll        $t7, $t6, 2
    /* 25ADF8 802DB6B8 01EE7821 */  addu       $t7, $t7, $t6
    /* 25ADFC 802DB6BC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 25AE00 802DB6C0 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 25AE04 802DB6C4 000F7900 */  sll        $t7, $t7, 4
    /* 25AE08 802DB6C8 01F81021 */  addu       $v0, $t7, $t8
    /* 25AE0C 802DB6CC 8459000C */  lh         $t9, 0xC($v0)
    /* 25AE10 802DB6D0 8C430020 */  lw         $v1, 0x20($v0)
    /* 25AE14 802DB6D4 3C0A8015 */  lui        $t2, %hi(D_8014DD5C)
    /* 25AE18 802DB6D8 00194900 */  sll        $t1, $t9, 4
    /* 25AE1C 802DB6DC 01495021 */  addu       $t2, $t2, $t1
    /* 25AE20 802DB6E0 814ADD5C */  lb         $t2, %lo(D_8014DD5C)($t2)
    /* 25AE24 802DB6E4 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 25AE28 802DB6E8 00035AC0 */  sll        $t3, $v1, 11
    /* 25AE2C 802DB6EC AFBF001C */  sw         $ra, 0x1C($sp)
    /* 25AE30 802DB6F0 AFA40028 */  sw         $a0, 0x28($sp)
    /* 25AE34 802DB6F4 9048001A */  lbu        $t0, 0x1A($v0)
    /* 25AE38 802DB6F8 05600013 */  bltz       $t3, .L802DB748_25AE88
    /* 25AE3C 802DB6FC A7AA0024 */   sh        $t2, 0x24($sp)
    /* 25AE40 802DB700 306C0600 */  andi       $t4, $v1, 0x600
    /* 25AE44 802DB704 1180000D */  beqz       $t4, .L802DB73C_25AE7C
    /* 25AE48 802DB708 24070064 */   addiu     $a3, $zero, 0x64
    /* 25AE4C 802DB70C 84450002 */  lh         $a1, 0x2($v0)
    /* 25AE50 802DB710 84440000 */  lh         $a0, 0x0($v0)
    /* 25AE54 802DB714 84460004 */  lh         $a2, 0x4($v0)
    /* 25AE58 802DB718 24A50066 */  addiu      $a1, $a1, 0x66
    /* 25AE5C 802DB71C 00056C00 */  sll        $t5, $a1, 16
    /* 25AE60 802DB720 000D2C03 */  sra        $a1, $t5, 16
    /* 25AE64 802DB724 AFA00010 */  sw         $zero, 0x10($sp)
    /* 25AE68 802DB728 0C037E12 */  jal        func_800DF848_EE7F8
    /* 25AE6C 802DB72C AFA20020 */   sw        $v0, 0x20($sp)
    /* 25AE70 802DB730 0C022384 */  jal        func_80088E10_97DC0
    /* 25AE74 802DB734 87A40024 */   lh        $a0, 0x24($sp)
    /* 25AE78 802DB738 8FA20020 */  lw         $v0, 0x20($sp)
  .L802DB73C_25AE7C:
    /* 25AE7C 802DB73C 240F001E */  addiu      $t7, $zero, 0x1E
    /* 25AE80 802DB740 10000019 */  b          .L802DB7A8_25AEE8
    /* 25AE84 802DB744 A44F002C */   sh        $t7, 0x2C($v0)
  .L802DB748_25AE88:
    /* 25AE88 802DB748 8458002C */  lh         $t8, 0x2C($v0)
    /* 25AE8C 802DB74C 24010002 */  addiu      $at, $zero, 0x2
    /* 25AE90 802DB750 30790600 */  andi       $t9, $v1, 0x600
    /* 25AE94 802DB754 57010015 */  bnel       $t8, $at, .L802DB7AC_25AEEC
    /* 25AE98 802DB758 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 25AE9C 802DB75C 13200012 */  beqz       $t9, .L802DB7A8_25AEE8
    /* 25AEA0 802DB760 00084880 */   sll       $t1, $t0, 2
    /* 25AEA4 802DB764 01284823 */  subu       $t1, $t1, $t0
    /* 25AEA8 802DB768 00094880 */  sll        $t1, $t1, 2
    /* 25AEAC 802DB76C 01284821 */  addu       $t1, $t1, $t0
    /* 25AEB0 802DB770 000948C0 */  sll        $t1, $t1, 3
    /* 25AEB4 802DB774 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 25AEB8 802DB778 00E93821 */  addu       $a3, $a3, $t1
    /* 25AEBC 802DB77C 84E7668C */  lh         $a3, %lo(D_8025668C)($a3)
    /* 25AEC0 802DB780 240C0008 */  addiu      $t4, $zero, 0x8
    /* 25AEC4 802DB784 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 25AEC8 802DB788 00075080 */  sll        $t2, $a3, 2
    /* 25AECC 802DB78C 01475021 */  addu       $t2, $t2, $a3
    /* 25AED0 802DB790 000A5080 */  sll        $t2, $t2, 2
    /* 25AED4 802DB794 3147FFFF */  andi       $a3, $t2, 0xFFFF
    /* 25AED8 802DB798 84440000 */  lh         $a0, 0x0($v0)
    /* 25AEDC 802DB79C 84450002 */  lh         $a1, 0x2($v0)
    /* 25AEE0 802DB7A0 0C037E12 */  jal        func_800DF848_EE7F8
    /* 25AEE4 802DB7A4 84460004 */   lh        $a2, 0x4($v0)
  .L802DB7A8_25AEE8:
    /* 25AEE8 802DB7A8 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802DB7AC_25AEEC:
    /* 25AEEC 802DB7AC 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 25AEF0 802DB7B0 03E00008 */  jr         $ra
    /* 25AEF4 802DB7B4 00000000 */   nop
endlabel func_802DB6B0_25ADF0
