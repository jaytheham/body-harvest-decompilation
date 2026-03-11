nonmatching func_800C17B4_D0764, 0x11C

glabel func_800C17B4_D0764
    /* D0764 800C17B4 3C028005 */  lui        $v0, %hi(gameplayMode)
    /* D0768 800C17B8 8C422ADC */  lw         $v0, %lo(gameplayMode)($v0)
    /* D076C 800C17BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* D0770 800C17C0 24010002 */  addiu      $at, $zero, 0x2
    /* D0774 800C17C4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* D0778 800C17C8 AFA40020 */  sw         $a0, 0x20($sp)
    /* D077C 800C17CC 10410003 */  beq        $v0, $at, .L800C17DC_D078C
    /* D0780 800C17D0 AFA50024 */   sw        $a1, 0x24($sp)
    /* D0784 800C17D4 24010009 */  addiu      $at, $zero, 0x9
    /* D0788 800C17D8 14410003 */  bne        $v0, $at, .L800C17E8_D0798
  .L800C17DC_D078C:
    /* D078C 800C17DC 3C048014 */   lui       $a0, %hi(D_8014301C)
    /* D0790 800C17E0 0C00731B */  jal        osSyncPrintf
    /* D0794 800C17E4 2484301C */   addiu     $a0, $a0, %lo(D_8014301C)
  .L800C17E8_D0798:
    /* D0798 800C17E8 3C0E8015 */  lui        $t6, %hi(D_8015430E)
    /* D079C 800C17EC 85CE430E */  lh         $t6, %lo(D_8015430E)($t6)
    /* D07A0 800C17F0 8FAF0024 */  lw         $t7, 0x24($sp)
    /* D07A4 800C17F4 3C068015 */  lui        $a2, %hi(D_80154310)
    /* D07A8 800C17F8 29C10190 */  slti       $at, $t6, 0x190
    /* D07AC 800C17FC 1420001A */  bnez       $at, .L800C1868_D0818
    /* D07B0 800C1800 00000000 */   nop
    /* D07B4 800C1804 11E0000D */  beqz       $t7, .L800C183C_D07EC
    /* D07B8 800C1808 3C048014 */   lui       $a0, %hi(D_80143094)
    /* D07BC 800C180C 93B80023 */  lbu        $t8, 0x23($sp)
    /* D07C0 800C1810 3C058015 */  lui        $a1, %hi(D_801541F8)
    /* D07C4 800C1814 3C048014 */  lui        $a0, %hi(D_80143040)
    /* D07C8 800C1818 0018C880 */  sll        $t9, $t8, 2
    /* D07CC 800C181C 0338C823 */  subu       $t9, $t9, $t8
    /* D07D0 800C1820 0019C880 */  sll        $t9, $t9, 2
    /* D07D4 800C1824 00B92821 */  addu       $a1, $a1, $t9
    /* D07D8 800C1828 90A541F8 */  lbu        $a1, %lo(D_801541F8)($a1)
    /* D07DC 800C182C 0C00731B */  jal        osSyncPrintf
    /* D07E0 800C1830 24843040 */   addiu     $a0, $a0, %lo(D_80143040)
    /* D07E4 800C1834 10000021 */  b          .L800C18BC_D086C
    /* D07E8 800C1838 2406FFFD */   addiu     $a2, $zero, -0x3
  .L800C183C_D07EC:
    /* D07EC 800C183C 93A80023 */  lbu        $t0, 0x23($sp)
    /* D07F0 800C1840 3C058015 */  lui        $a1, %hi(D_80154088)
    /* D07F4 800C1844 24843094 */  addiu      $a0, $a0, %lo(D_80143094)
    /* D07F8 800C1848 00084880 */  sll        $t1, $t0, 2
    /* D07FC 800C184C 01284823 */  subu       $t1, $t1, $t0
    /* D0800 800C1850 00094880 */  sll        $t1, $t1, 2
    /* D0804 800C1854 00A92821 */  addu       $a1, $a1, $t1
    /* D0808 800C1858 0C00731B */  jal        osSyncPrintf
    /* D080C 800C185C 90A54088 */   lbu       $a1, %lo(D_80154088)($a1)
    /* D0810 800C1860 10000016 */  b          .L800C18BC_D086C
    /* D0814 800C1864 2406FFFD */   addiu     $a2, $zero, -0x3
  .L800C1868_D0818:
    /* D0818 800C1868 84C64310 */  lh         $a2, %lo(D_80154310)($a2)
    /* D081C 800C186C 3C0B8015 */  lui        $t3, %hi(D_80154318)
    /* D0820 800C1870 3C048014 */  lui        $a0, %hi(D_801430E8)
    /* D0824 800C1874 000650C0 */  sll        $t2, $a2, 3
    /* D0828 800C1878 01465023 */  subu       $t2, $t2, $a2
    /* D082C 800C187C 000A5080 */  sll        $t2, $t2, 2
    /* D0830 800C1880 016A5821 */  addu       $t3, $t3, $t2
    /* D0834 800C1884 916B4318 */  lbu        $t3, %lo(D_80154318)($t3)
    /* D0838 800C1888 248430E8 */  addiu      $a0, $a0, %lo(D_801430E8)
    /* D083C 800C188C 316C0001 */  andi       $t4, $t3, 0x1
    /* D0840 800C1890 51800005 */  beql       $t4, $zero, .L800C18A8_D0858
    /* D0844 800C1894 93A40023 */   lbu       $a0, 0x23($sp)
    /* D0848 800C1898 0C00731B */  jal        osSyncPrintf
    /* D084C 800C189C A7A6001E */   sh        $a2, 0x1E($sp)
    /* D0850 800C18A0 87A6001E */  lh         $a2, 0x1E($sp)
    /* D0854 800C18A4 93A40023 */  lbu        $a0, 0x23($sp)
  .L800C18A8_D0858:
    /* D0858 800C18A8 8FA50024 */  lw         $a1, 0x24($sp)
    /* D085C 800C18AC 00003825 */  or         $a3, $zero, $zero
    /* D0860 800C18B0 0C030570 */  jal        func_800C15C0_D0570
    /* D0864 800C18B4 A7A6001E */   sh        $a2, 0x1E($sp)
    /* D0868 800C18B8 87A6001E */  lh         $a2, 0x1E($sp)
  .L800C18BC_D086C:
    /* D086C 800C18BC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* D0870 800C18C0 27BD0020 */  addiu      $sp, $sp, 0x20
    /* D0874 800C18C4 00C01025 */  or         $v0, $a2, $zero
    /* D0878 800C18C8 03E00008 */  jr         $ra
    /* D087C 800C18CC 00000000 */   nop
endlabel func_800C17B4_D0764
