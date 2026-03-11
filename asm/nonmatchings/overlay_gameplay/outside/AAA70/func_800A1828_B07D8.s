nonmatching func_800A1828_B07D8, 0xA4

glabel func_800A1828_B07D8
    /* B07D8 800A1828 308E00FF */  andi       $t6, $a0, 0xFF
    /* B07DC 800A182C 30AF00FF */  andi       $t7, $a1, 0xFF
    /* B07E0 800A1830 AFA40000 */  sw         $a0, 0x0($sp)
    /* B07E4 800A1834 AFA50004 */  sw         $a1, 0x4($sp)
    /* B07E8 800A1838 AFA60008 */  sw         $a2, 0x8($sp)
    /* B07EC 800A183C 30D800FF */  andi       $t8, $a2, 0xFF
    /* B07F0 800A1840 01EE082A */  slt        $at, $t7, $t6
    /* B07F4 800A1844 03003025 */  or         $a2, $t8, $zero
    /* B07F8 800A1848 01E02825 */  or         $a1, $t7, $zero
    /* B07FC 800A184C 01C02025 */  or         $a0, $t6, $zero
    /* B0800 800A1850 01E01025 */  or         $v0, $t7, $zero
    /* B0804 800A1854 1020000C */  beqz       $at, .L800A1888_B0838
    /* B0808 800A1858 01C01825 */   or        $v1, $t6, $zero
    /* B080C 800A185C 01D8082A */  slt        $at, $t6, $t8
    /* B0810 800A1860 14200005 */  bnez       $at, .L800A1878_B0828
    /* B0814 800A1864 03003825 */   or        $a3, $t8, $zero
    /* B0818 800A1868 01CFC823 */  subu       $t9, $t6, $t7
    /* B081C 800A186C 0338082A */  slt        $at, $t9, $t8
    /* B0820 800A1870 10200003 */  beqz       $at, .L800A1880_B0830
    /* B0824 800A1874 00672023 */   subu      $a0, $v1, $a3
  .L800A1878_B0828:
    /* B0828 800A1878 03E00008 */  jr         $ra
    /* B082C 800A187C 30A200FF */   andi      $v0, $a1, 0xFF
  .L800A1880_B0830:
    /* B0830 800A1880 03E00008 */  jr         $ra
    /* B0834 800A1884 308200FF */   andi      $v0, $a0, 0xFF
  .L800A1888_B0838:
    /* B0838 800A1888 0062082A */  slt        $at, $v1, $v0
    /* B083C 800A188C 1020000D */  beqz       $at, .L800A18C4_B0874
    /* B0840 800A1890 240900FF */   addiu     $t1, $zero, 0xFF
    /* B0844 800A1894 01265023 */  subu       $t2, $t1, $a2
    /* B0848 800A1898 0143082A */  slt        $at, $t2, $v1
    /* B084C 800A189C 14200005 */  bnez       $at, .L800A18B4_B0864
    /* B0850 800A18A0 00C03825 */   or        $a3, $a2, $zero
    /* B0854 800A18A4 00435823 */  subu       $t3, $v0, $v1
    /* B0858 800A18A8 0166082A */  slt        $at, $t3, $a2
    /* B085C 800A18AC 10200003 */  beqz       $at, .L800A18BC_B086C
    /* B0860 800A18B0 00672021 */   addu      $a0, $v1, $a3
  .L800A18B4_B0864:
    /* B0864 800A18B4 03E00008 */  jr         $ra
    /* B0868 800A18B8 30A200FF */   andi      $v0, $a1, 0xFF
  .L800A18BC_B086C:
    /* B086C 800A18BC 308C00FF */  andi       $t4, $a0, 0xFF
    /* B0870 800A18C0 01802025 */  or         $a0, $t4, $zero
  .L800A18C4_B0874:
    /* B0874 800A18C4 03E00008 */  jr         $ra
    /* B0878 800A18C8 00801025 */   or        $v0, $a0, $zero
endlabel func_800A1828_B07D8
