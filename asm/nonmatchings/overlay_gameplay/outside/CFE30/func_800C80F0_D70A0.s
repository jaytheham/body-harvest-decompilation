nonmatching func_800C80F0_D70A0, 0x94

glabel func_800C80F0_D70A0
    /* D70A0 800C80F0 0007CC00 */  sll        $t9, $a3, 16
    /* D70A4 800C80F4 00194C03 */  sra        $t1, $t9, 16
    /* D70A8 800C80F8 AFA40000 */  sw         $a0, 0x0($sp)
    /* D70AC 800C80FC 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* D70B0 800C8100 AFA50004 */  sw         $a1, 0x4($sp)
    /* D70B4 800C8104 30AFFFFF */  andi       $t7, $a1, 0xFFFF
    /* D70B8 800C8108 AFA60008 */  sw         $a2, 0x8($sp)
    /* D70BC 800C810C 30D8FFFF */  andi       $t8, $a2, 0xFFFF
    /* D70C0 800C8110 2401FFFD */  addiu      $at, $zero, -0x3
    /* D70C4 800C8114 03003025 */  or         $a2, $t8, $zero
    /* D70C8 800C8118 01E02825 */  or         $a1, $t7, $zero
    /* D70CC 800C811C 01C02025 */  or         $a0, $t6, $zero
    /* D70D0 800C8120 11210016 */  beq        $t1, $at, .L800C817C_D712C
    /* D70D4 800C8124 AFA7000C */   sw        $a3, 0xC($sp)
    /* D70D8 800C8128 2408001C */  addiu      $t0, $zero, 0x1C
    /* D70DC 800C812C 01280019 */  multu      $t1, $t0
    /* D70E0 800C8130 3C038015 */  lui        $v1, %hi(D_80154318)
    /* D70E4 800C8134 24634318 */  addiu      $v1, $v1, %lo(D_80154318)
    /* D70E8 800C8138 0004CA03 */  sra        $t9, $a0, 8
    /* D70EC 800C813C 00054A03 */  sra        $t1, $a1, 8
    /* D70F0 800C8140 00005012 */  mflo       $t2
    /* D70F4 800C8144 006A5821 */  addu       $t3, $v1, $t2
    /* D70F8 800C8148 856C0004 */  lh         $t4, 0x4($t3)
    /* D70FC 800C814C 00065203 */  sra        $t2, $a2, 8
    /* D7100 800C8150 01880019 */  multu      $t4, $t0
    /* D7104 800C8154 00006812 */  mflo       $t5
    /* D7108 800C8158 006D7021 */  addu       $t6, $v1, $t5
    /* D710C 800C815C 85CF0004 */  lh         $t7, 0x4($t6)
    /* D7110 800C8160 01E80019 */  multu      $t7, $t0
    /* D7114 800C8164 0000C012 */  mflo       $t8
    /* D7118 800C8168 00781021 */  addu       $v0, $v1, $t8
    /* D711C 800C816C 24420008 */  addiu      $v0, $v0, 0x8
    /* D7120 800C8170 A0590003 */  sb         $t9, 0x3($v0)
    /* D7124 800C8174 A0490004 */  sb         $t1, 0x4($v0)
    /* D7128 800C8178 A04A0005 */  sb         $t2, 0x5($v0)
  .L800C817C_D712C:
    /* D712C 800C817C 03E00008 */  jr         $ra
    /* D7130 800C8180 00000000 */   nop
endlabel func_800C80F0_D70A0
