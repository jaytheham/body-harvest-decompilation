nonmatching func_800B31FC_C21AC, 0x60

glabel func_800B31FC_C21AC
    /* C21AC 800B31FC 3C088005 */  lui        $t0, %hi(D_80052A94)
    /* C21B0 800B3200 8D082A94 */  lw         $t0, %lo(D_80052A94)($t0)
    /* C21B4 800B3204 0005C600 */  sll        $t8, $a1, 24
    /* C21B8 800B3208 0018CE03 */  sra        $t9, $t8, 24
    /* C21BC 800B320C 00047600 */  sll        $t6, $a0, 24
    /* C21C0 800B3210 000E7E03 */  sra        $t7, $t6, 24
    /* C21C4 800B3214 00194A40 */  sll        $t1, $t9, 9
    /* C21C8 800B3218 000F5840 */  sll        $t3, $t7, 1
    /* C21CC 800B321C 01095021 */  addu       $t2, $t0, $t1
    /* C21D0 800B3220 AFA40000 */  sw         $a0, 0x0($sp)
    /* C21D4 800B3224 AFA50004 */  sw         $a1, 0x4($sp)
    /* C21D8 800B3228 014B1021 */  addu       $v0, $t2, $t3
    /* C21DC 800B322C 904D0000 */  lbu        $t5, 0x0($v0)
    /* C21E0 800B3230 35AF0080 */  ori        $t7, $t5, 0x80
    /* C21E4 800B3234 31E800F7 */  andi       $t0, $t7, 0xF7
    /* C21E8 800B3238 A04F0000 */  sb         $t7, 0x0($v0)
    /* C21EC 800B323C A0480000 */  sb         $t0, 0x0($v0)
    /* C21F0 800B3240 35090004 */  ori        $t1, $t0, 0x4
    /* C21F4 800B3244 A0490000 */  sb         $t1, 0x0($v0)
    /* C21F8 800B3248 944A0000 */  lhu        $t2, 0x0($v0)
    /* C21FC 800B324C 314BFC3F */  andi       $t3, $t2, 0xFC3F
    /* C2200 800B3250 356C0300 */  ori        $t4, $t3, 0x300
    /* C2204 800B3254 03E00008 */  jr         $ra
    /* C2208 800B3258 A44C0000 */   sh        $t4, 0x0($v0)
endlabel func_800B31FC_C21AC
