nonmatching func_802DB644_25AD84, 0x6C

glabel func_802DB644_25AD84
    /* 25AD84 802DB644 308E00FF */  andi       $t6, $a0, 0xFF
    /* 25AD88 802DB648 000E7880 */  sll        $t7, $t6, 2
    /* 25AD8C 802DB64C 01EE7821 */  addu       $t7, $t7, $t6
    /* 25AD90 802DB650 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 25AD94 802DB654 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 25AD98 802DB658 000F7900 */  sll        $t7, $t7, 4
    /* 25AD9C 802DB65C 01F81021 */  addu       $v0, $t7, $t8
    /* 25ADA0 802DB660 8C430020 */  lw         $v1, 0x20($v0)
    /* 25ADA4 802DB664 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 25ADA8 802DB668 AFA40018 */  sw         $a0, 0x18($sp)
    /* 25ADAC 802DB66C 30791000 */  andi       $t9, $v1, 0x1000
    /* 25ADB0 802DB670 01C02025 */  or         $a0, $t6, $zero
    /* 25ADB4 802DB674 13200006 */  beqz       $t9, .L802DB690_25ADD0
    /* 25ADB8 802DB678 AFBF0014 */   sw        $ra, 0x14($sp)
    /* 25ADBC 802DB67C 8443002C */  lh         $v1, 0x2C($v0)
    /* 25ADC0 802DB680 10600007 */  beqz       $v1, .L802DB6A0_25ADE0
    /* 25ADC4 802DB684 2468FFFF */   addiu     $t0, $v1, -0x1
    /* 25ADC8 802DB688 10000005 */  b          .L802DB6A0_25ADE0
    /* 25ADCC 802DB68C A448002C */   sh        $t0, 0x2C($v0)
  .L802DB690_25ADD0:
    /* 25ADD0 802DB690 3C010040 */  lui        $at, (0x400000 >> 16)
    /* 25ADD4 802DB694 00614825 */  or         $t1, $v1, $at
    /* 25ADD8 802DB698 0C020037 */  jal        func_800800DC_8F08C
    /* 25ADDC 802DB69C AC490020 */   sw        $t1, 0x20($v0)
  .L802DB6A0_25ADE0:
    /* 25ADE0 802DB6A0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 25ADE4 802DB6A4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 25ADE8 802DB6A8 03E00008 */  jr         $ra
    /* 25ADEC 802DB6AC 00000000 */   nop
endlabel func_802DB644_25AD84
