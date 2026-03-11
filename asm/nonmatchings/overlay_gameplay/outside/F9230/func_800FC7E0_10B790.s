nonmatching func_800FC7E0_10B790, 0x12C

glabel func_800FC7E0_10B790
    /* 10B790 800FC7E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10B794 800FC7E4 3C098005 */  lui        $t1, %hi(D_80052A94)
    /* 10B798 800FC7E8 8D292A94 */  lw         $t1, %lo(D_80052A94)($t1)
    /* 10B79C 800FC7EC AFA5001C */  sw         $a1, 0x1C($sp)
    /* 10B7A0 800FC7F0 0005C600 */  sll        $t8, $a1, 24
    /* 10B7A4 800FC7F4 00182E03 */  sra        $a1, $t8, 24
    /* 10B7A8 800FC7F8 AFA40018 */  sw         $a0, 0x18($sp)
    /* 10B7AC 800FC7FC 00047600 */  sll        $t6, $a0, 24
    /* 10B7B0 800FC800 000E2603 */  sra        $a0, $t6, 24
    /* 10B7B4 800FC804 00055240 */  sll        $t2, $a1, 9
    /* 10B7B8 800FC808 00046040 */  sll        $t4, $a0, 1
    /* 10B7BC 800FC80C 012A5821 */  addu       $t3, $t1, $t2
    /* 10B7C0 800FC810 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10B7C4 800FC814 AFA60020 */  sw         $a2, 0x20($sp)
    /* 10B7C8 800FC818 016C1821 */  addu       $v1, $t3, $t4
    /* 10B7CC 800FC81C 94620000 */  lhu        $v0, 0x0($v1)
    /* 10B7D0 800FC820 3C0A8014 */  lui        $t2, %hi(D_801407F4)
    /* 10B7D4 800FC824 254A07F4 */  addiu      $t2, $t2, %lo(D_801407F4)
    /* 10B7D8 800FC828 00024580 */  sll        $t0, $v0, 22
    /* 10B7DC 800FC82C 00086F02 */  srl        $t5, $t0, 28
    /* 10B7E0 800FC830 31AE00FF */  andi       $t6, $t5, 0xFF
    /* 10B7E4 800FC834 0002C540 */  sll        $t8, $v0, 21
    /* 10B7E8 800FC838 07010004 */  bgez       $t8, .L800FC84C_10B7FC
    /* 10B7EC 800FC83C 01C04025 */   or        $t0, $t6, $zero
    /* 10B7F0 800FC840 25C80010 */  addiu      $t0, $t6, 0x10
    /* 10B7F4 800FC844 311900FF */  andi       $t9, $t0, 0xFF
    /* 10B7F8 800FC848 03204025 */  or         $t0, $t9, $zero
  .L800FC84C_10B7FC:
    /* 10B7FC 800FC84C 00084880 */  sll        $t1, $t0, 2
    /* 10B800 800FC850 01284823 */  subu       $t1, $t1, $t0
    /* 10B804 800FC854 00094840 */  sll        $t1, $t1, 1
    /* 10B808 800FC858 012A1021 */  addu       $v0, $t1, $t2
    /* 10B80C 800FC85C 904B0000 */  lbu        $t3, 0x0($v0)
    /* 10B810 800FC860 8FAC0020 */  lw         $t4, 0x20($sp)
    /* 10B814 800FC864 3406FFFF */  ori        $a2, $zero, 0xFFFF
    /* 10B818 800FC868 A58B0000 */  sh         $t3, 0x0($t4)
    /* 10B81C 800FC86C 904D0001 */  lbu        $t5, 0x1($v0)
    /* 10B820 800FC870 A4ED0000 */  sh         $t5, 0x0($a3)
    /* 10B824 800FC874 AFA70024 */  sw         $a3, 0x24($sp)
    /* 10B828 800FC878 A3A5001F */  sb         $a1, 0x1F($sp)
    /* 10B82C 800FC87C 0C02CC97 */  jal        func_800B325C_C220C
    /* 10B830 800FC880 A3A4001B */   sb        $a0, 0x1B($sp)
    /* 10B834 800FC884 83A4001B */  lb         $a0, 0x1B($sp)
    /* 10B838 800FC888 304E4000 */  andi       $t6, $v0, 0x4000
    /* 10B83C 800FC88C 2DCF0001 */  sltiu      $t7, $t6, 0x1
    /* 10B840 800FC890 30980001 */  andi       $t8, $a0, 0x1
    /* 10B844 800FC894 2F190001 */  sltiu      $t9, $t8, 0x1
    /* 10B848 800FC898 01F94826 */  xor        $t1, $t7, $t9
    /* 10B84C 800FC89C 00095400 */  sll        $t2, $t1, 16
    /* 10B850 800FC8A0 000A5C03 */  sra        $t3, $t2, 16
    /* 10B854 800FC8A4 83A5001F */  lb         $a1, 0x1F($sp)
    /* 10B858 800FC8A8 8FA60020 */  lw         $a2, 0x20($sp)
    /* 10B85C 800FC8AC 8FA70024 */  lw         $a3, 0x24($sp)
    /* 10B860 800FC8B0 11600005 */  beqz       $t3, .L800FC8C8_10B878
    /* 10B864 800FC8B4 00401825 */   or        $v1, $v0, $zero
    /* 10B868 800FC8B8 84CC0000 */  lh         $t4, 0x0($a2)
    /* 10B86C 800FC8BC 240D0100 */  addiu      $t5, $zero, 0x100
    /* 10B870 800FC8C0 01AC7023 */  subu       $t6, $t5, $t4
    /* 10B874 800FC8C4 A4CE0000 */  sh         $t6, 0x0($a2)
  .L800FC8C8_10B878:
    /* 10B878 800FC8C8 30782000 */  andi       $t8, $v1, 0x2000
    /* 10B87C 800FC8CC 30B90001 */  andi       $t9, $a1, 0x1
    /* 10B880 800FC8D0 2F290001 */  sltiu      $t1, $t9, 0x1
    /* 10B884 800FC8D4 2F0F0001 */  sltiu      $t7, $t8, 0x1
    /* 10B888 800FC8D8 01E95026 */  xor        $t2, $t7, $t1
    /* 10B88C 800FC8DC 000A5C00 */  sll        $t3, $t2, 16
    /* 10B890 800FC8E0 000B6C03 */  sra        $t5, $t3, 16
    /* 10B894 800FC8E4 51A00006 */  beql       $t5, $zero, .L800FC900_10B8B0
    /* 10B898 800FC8E8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 10B89C 800FC8EC 84EC0000 */  lh         $t4, 0x0($a3)
    /* 10B8A0 800FC8F0 240E0100 */  addiu      $t6, $zero, 0x100
    /* 10B8A4 800FC8F4 01CCC023 */  subu       $t8, $t6, $t4
    /* 10B8A8 800FC8F8 A4F80000 */  sh         $t8, 0x0($a3)
    /* 10B8AC 800FC8FC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800FC900_10B8B0:
    /* 10B8B0 800FC900 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10B8B4 800FC904 03E00008 */  jr         $ra
    /* 10B8B8 800FC908 00000000 */   nop
endlabel func_800FC7E0_10B790
