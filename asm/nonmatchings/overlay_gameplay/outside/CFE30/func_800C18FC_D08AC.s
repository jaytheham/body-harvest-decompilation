nonmatching func_800C18FC_D08AC, 0xD8

glabel func_800C18FC_D08AC
    /* D08AC 800C18FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* D08B0 800C1900 AFB00014 */  sw         $s0, 0x14($sp)
    /* D08B4 800C1904 309000FF */  andi       $s0, $a0, 0xFF
    /* D08B8 800C1908 AFBF001C */  sw         $ra, 0x1C($sp)
    /* D08BC 800C190C AFB10018 */  sw         $s1, 0x18($sp)
    /* D08C0 800C1910 AFA40028 */  sw         $a0, 0x28($sp)
    /* D08C4 800C1914 00A08825 */  or         $s1, $a1, $zero
    /* D08C8 800C1918 0C0305ED */  jal        func_800C17B4_D0764
    /* D08CC 800C191C 320400FF */   andi      $a0, $s0, 0xFF
    /* D08D0 800C1920 00023C00 */  sll        $a3, $v0, 16
    /* D08D4 800C1924 00077403 */  sra        $t6, $a3, 16
    /* D08D8 800C1928 2401FFFD */  addiu      $at, $zero, -0x3
    /* D08DC 800C192C 10410023 */  beq        $v0, $at, .L800C19BC_D096C
    /* D08E0 800C1930 01C03825 */   or        $a3, $t6, $zero
    /* D08E4 800C1934 320400FF */  andi       $a0, $s0, 0xFF
    /* D08E8 800C1938 02202825 */  or         $a1, $s1, $zero
    /* D08EC 800C193C 0C0305ED */  jal        func_800C17B4_D0764
    /* D08F0 800C1940 A7AE0026 */   sh        $t6, 0x26($sp)
    /* D08F4 800C1944 2401FFFD */  addiu      $at, $zero, -0x3
    /* D08F8 800C1948 87A70026 */  lh         $a3, 0x26($sp)
    /* D08FC 800C194C 14410009 */  bne        $v0, $at, .L800C1974_D0924
    /* D0900 800C1950 A7A20024 */   sh        $v0, 0x24($sp)
    /* D0904 800C1954 00072400 */  sll        $a0, $a3, 16
    /* D0908 800C1958 00047C03 */  sra        $t7, $a0, 16
    /* D090C 800C195C 01E02025 */  or         $a0, $t7, $zero
    /* D0910 800C1960 320500FF */  andi       $a1, $s0, 0xFF
    /* D0914 800C1964 0C030693 */  jal        func_800C1A4C_D09FC
    /* D0918 800C1968 02203025 */   or        $a2, $s1, $zero
    /* D091C 800C196C 10000013 */  b          .L800C19BC_D096C
    /* D0920 800C1970 2407FFFD */   addiu     $a3, $zero, -0x3
  .L800C1974_D0924:
    /* D0924 800C1974 320400FF */  andi       $a0, $s0, 0xFF
    /* D0928 800C1978 02202825 */  or         $a1, $s1, $zero
    /* D092C 800C197C 0C0305ED */  jal        func_800C17B4_D0764
    /* D0930 800C1980 A7A70026 */   sh        $a3, 0x26($sp)
    /* D0934 800C1984 2401FFFD */  addiu      $at, $zero, -0x3
    /* D0938 800C1988 1441000C */  bne        $v0, $at, .L800C19BC_D096C
    /* D093C 800C198C 87A70026 */   lh        $a3, 0x26($sp)
    /* D0940 800C1990 00072400 */  sll        $a0, $a3, 16
    /* D0944 800C1994 0004C403 */  sra        $t8, $a0, 16
    /* D0948 800C1998 03002025 */  or         $a0, $t8, $zero
    /* D094C 800C199C 320500FF */  andi       $a1, $s0, 0xFF
    /* D0950 800C19A0 0C030693 */  jal        func_800C1A4C_D09FC
    /* D0954 800C19A4 02203025 */   or        $a2, $s1, $zero
    /* D0958 800C19A8 87A40024 */  lh         $a0, 0x24($sp)
    /* D095C 800C19AC 320500FF */  andi       $a1, $s0, 0xFF
    /* D0960 800C19B0 0C030693 */  jal        func_800C1A4C_D09FC
    /* D0964 800C19B4 02203025 */   or        $a2, $s1, $zero
    /* D0968 800C19B8 2407FFFD */  addiu      $a3, $zero, -0x3
  .L800C19BC_D096C:
    /* D096C 800C19BC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* D0970 800C19C0 8FB00014 */  lw         $s0, 0x14($sp)
    /* D0974 800C19C4 8FB10018 */  lw         $s1, 0x18($sp)
    /* D0978 800C19C8 27BD0028 */  addiu      $sp, $sp, 0x28
    /* D097C 800C19CC 03E00008 */  jr         $ra
    /* D0980 800C19D0 00E01025 */   or        $v0, $a3, $zero
endlabel func_800C18FC_D08AC
