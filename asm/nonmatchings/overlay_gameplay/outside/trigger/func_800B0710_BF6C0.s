nonmatching func_800B0710_BF6C0, 0x120

glabel func_800B0710_BF6C0
    /* BF6C0 800B0710 3C028004 */  lui        $v0, %hi(currentLevel)
    /* BF6C4 800B0714 8C427F90 */  lw         $v0, %lo(currentLevel)($v0)
    /* BF6C8 800B0718 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* BF6CC 800B071C 3C188004 */  lui        $t8, %hi(D_8003CEC6)
    /* BF6D0 800B0720 2442FFFF */  addiu      $v0, $v0, -0x1
    /* BF6D4 800B0724 304E00FF */  andi       $t6, $v0, 0xFF
    /* BF6D8 800B0728 000E7880 */  sll        $t7, $t6, 2
    /* BF6DC 800B072C 01EE7821 */  addu       $t7, $t7, $t6
    /* BF6E0 800B0730 000F78C0 */  sll        $t7, $t7, 3
    /* BF6E4 800B0734 030FC021 */  addu       $t8, $t8, $t7
    /* BF6E8 800B0738 9318CEC6 */  lbu        $t8, %lo(D_8003CEC6)($t8)
    /* BF6EC 800B073C AFBF0024 */  sw         $ra, 0x24($sp)
    /* BF6F0 800B0740 AFA40050 */  sw         $a0, 0x50($sp)
    /* BF6F4 800B0744 AFA50054 */  sw         $a1, 0x54($sp)
    /* BF6F8 800B0748 87A50056 */  lh         $a1, 0x56($sp)
    /* BF6FC 800B074C 87A40052 */  lh         $a0, 0x52($sp)
    /* BF700 800B0750 A3AE004F */  sb         $t6, 0x4F($sp)
    /* BF704 800B0754 0C02E134 */  jal        func_800B84D0_C7480
    /* BF708 800B0758 A3B8004E */   sb        $t8, 0x4E($sp)
    /* BF70C 800B075C 93B9004E */  lbu        $t9, 0x4E($sp)
    /* BF710 800B0760 3C098025 */  lui        $t1, %hi(D_802566D8)
    /* BF714 800B0764 3C0D8004 */  lui        $t5, %hi(currentLevel)
    /* BF718 800B0768 00194080 */  sll        $t0, $t9, 2
    /* BF71C 800B076C 01194023 */  subu       $t0, $t0, $t9
    /* BF720 800B0770 00084080 */  sll        $t0, $t0, 2
    /* BF724 800B0774 01194021 */  addu       $t0, $t0, $t9
    /* BF728 800B0778 000840C0 */  sll        $t0, $t0, 3
    /* BF72C 800B077C 01284821 */  addu       $t1, $t1, $t0
    /* BF730 800B0780 852966D8 */  lh         $t1, %lo(D_802566D8)($t1)
    /* BF734 800B0784 8DAD7F90 */  lw         $t5, %lo(currentLevel)($t5)
    /* BF738 800B0788 00025203 */  sra        $t2, $v0, 8
    /* BF73C 800B078C 3C078014 */  lui        $a3, %hi(D_8013D91E)
    /* BF740 800B0790 012A2821 */  addu       $a1, $t1, $t2
    /* BF744 800B0794 000D7080 */  sll        $t6, $t5, 2
    /* BF748 800B0798 00055C00 */  sll        $t3, $a1, 16
    /* BF74C 800B079C 00EE3821 */  addu       $a3, $a3, $t6
    /* BF750 800B07A0 240F00A0 */  addiu      $t7, $zero, 0xA0
    /* BF754 800B07A4 241800FF */  addiu      $t8, $zero, 0xFF
    /* BF758 800B07A8 000B2C03 */  sra        $a1, $t3, 16
    /* BF75C 800B07AC AFB80014 */  sw         $t8, 0x14($sp)
    /* BF760 800B07B0 AFAF0010 */  sw         $t7, 0x10($sp)
    /* BF764 800B07B4 84E7D91E */  lh         $a3, %lo(D_8013D91E)($a3)
    /* BF768 800B07B8 87A40052 */  lh         $a0, 0x52($sp)
    /* BF76C 800B07BC 87A60056 */  lh         $a2, 0x56($sp)
    /* BF770 800B07C0 AFA00018 */  sw         $zero, 0x18($sp)
    /* BF774 800B07C4 0C033E03 */  jal        func_800CF80C_DE7BC
    /* BF778 800B07C8 AFA0001C */   sw        $zero, 0x1C($sp)
    /* BF77C 800B07CC 0C02FB3C */  jal        func_800BECF0_CDCA0
    /* BF780 800B07D0 00000000 */   nop
    /* BF784 800B07D4 3C0D8015 */  lui        $t5, %hi(D_8014F820)
    /* BF788 800B07D8 87B90052 */  lh         $t9, 0x52($sp)
    /* BF78C 800B07DC 87A90056 */  lh         $t1, 0x56($sp)
    /* BF790 800B07E0 8DADF820 */  lw         $t5, %lo(D_8014F820)($t5)
    /* BF794 800B07E4 93AB004F */  lbu        $t3, 0x4F($sp)
    /* BF798 800B07E8 3C0F800B */  lui        $t7, %hi(func_800B06C4_BF674)
    /* BF79C 800B07EC 240C0002 */  addiu      $t4, $zero, 0x2
    /* BF7A0 800B07F0 25EF06C4 */  addiu      $t7, $t7, %lo(func_800B06C4_BF674)
    /* BF7A4 800B07F4 00194203 */  sra        $t0, $t9, 8
    /* BF7A8 800B07F8 00095203 */  sra        $t2, $t1, 8
    /* BF7AC 800B07FC 25AE0012 */  addiu      $t6, $t5, 0x12
    /* BF7B0 800B0800 A3A8003D */  sb         $t0, 0x3D($sp)
    /* BF7B4 800B0804 A3AA003E */  sb         $t2, 0x3E($sp)
    /* BF7B8 800B0808 A3AC003C */  sb         $t4, 0x3C($sp)
    /* BF7BC 800B080C AFAE0040 */  sw         $t6, 0x40($sp)
    /* BF7C0 800B0810 AFAF0048 */  sw         $t7, 0x48($sp)
    /* BF7C4 800B0814 27A4003C */  addiu      $a0, $sp, 0x3C
    /* BF7C8 800B0818 0C02B915 */  jal        func_800AE454_BD404
    /* BF7CC 800B081C A3AB0044 */   sb        $t3, 0x44($sp)
    /* BF7D0 800B0820 8FBF0024 */  lw         $ra, 0x24($sp)
    /* BF7D4 800B0824 27BD0050 */  addiu      $sp, $sp, 0x50
    /* BF7D8 800B0828 03E00008 */  jr         $ra
    /* BF7DC 800B082C 00000000 */   nop
endlabel func_800B0710_BF6C0
