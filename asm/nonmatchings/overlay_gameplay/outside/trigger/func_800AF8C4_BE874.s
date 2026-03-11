nonmatching func_800AF8C4_BE874, 0x98

glabel func_800AF8C4_BE874
    /* BE874 800AF8C4 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* BE878 800AF8C8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* BE87C 800AF8CC 00803825 */  or         $a3, $a0, $zero
    /* BE880 800AF8D0 80E50002 */  lb         $a1, 0x2($a3)
    /* BE884 800AF8D4 80840001 */  lb         $a0, 0x1($a0)
    /* BE888 800AF8D8 90E60009 */  lbu        $a2, 0x9($a3)
    /* BE88C 800AF8DC 0005CA00 */  sll        $t9, $a1, 8
    /* BE890 800AF8E0 00047200 */  sll        $t6, $a0, 8
    /* BE894 800AF8E4 25C40080 */  addiu      $a0, $t6, 0x80
    /* BE898 800AF8E8 27250080 */  addiu      $a1, $t9, 0x80
    /* BE89C 800AF8EC 00054400 */  sll        $t0, $a1, 16
    /* BE8A0 800AF8F0 00047C00 */  sll        $t7, $a0, 16
    /* BE8A4 800AF8F4 000F2403 */  sra        $a0, $t7, 16
    /* BE8A8 800AF8F8 00082C03 */  sra        $a1, $t0, 16
    /* BE8AC 800AF8FC 0C02BC7E */  jal        func_800AF1F8_BE1A8
    /* BE8B0 800AF900 AFA70028 */   sw        $a3, 0x28($sp)
    /* BE8B4 800AF904 8FA70028 */  lw         $a3, 0x28($sp)
    /* BE8B8 800AF908 3C0D8015 */  lui        $t5, %hi(D_8014F820)
    /* BE8BC 800AF90C 8DADF820 */  lw         $t5, %lo(D_8014F820)($t5)
    /* BE8C0 800AF910 80EA0001 */  lb         $t2, 0x1($a3)
    /* BE8C4 800AF914 3C18800B */  lui        $t8, %hi(func_800AF870_BE820)
    /* BE8C8 800AF918 240F0002 */  addiu      $t7, $zero, 0x2
    /* BE8CC 800AF91C A3AA0019 */  sb         $t2, 0x19($sp)
    /* BE8D0 800AF920 80EB0002 */  lb         $t3, 0x2($a3)
    /* BE8D4 800AF924 2718F870 */  addiu      $t8, $t8, %lo(func_800AF870_BE820)
    /* BE8D8 800AF928 25AE0012 */  addiu      $t6, $t5, 0x12
    /* BE8DC 800AF92C A3AB001A */  sb         $t3, 0x1A($sp)
    /* BE8E0 800AF930 90EC0009 */  lbu        $t4, 0x9($a3)
    /* BE8E4 800AF934 AFAE001C */  sw         $t6, 0x1C($sp)
    /* BE8E8 800AF938 A3AF0018 */  sb         $t7, 0x18($sp)
    /* BE8EC 800AF93C AFB80024 */  sw         $t8, 0x24($sp)
    /* BE8F0 800AF940 27A40018 */  addiu      $a0, $sp, 0x18
    /* BE8F4 800AF944 0C02B915 */  jal        func_800AE454_BD404
    /* BE8F8 800AF948 A3AC0021 */   sb        $t4, 0x21($sp)
    /* BE8FC 800AF94C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* BE900 800AF950 27BD0028 */  addiu      $sp, $sp, 0x28
    /* BE904 800AF954 03E00008 */  jr         $ra
    /* BE908 800AF958 00000000 */   nop
endlabel func_800AF8C4_BE874
