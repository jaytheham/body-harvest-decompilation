nonmatching func_800B0000_BEFB0, 0x1C

glabel func_800B0000_BEFB0
    /* BEFB0 800B0000 24020001 */  addiu      $v0, $zero, 0x1
    /* BEFB4 800B0004 3C018015 */  lui        $at, %hi(D_801493E0)
    /* BEFB8 800B0008 A42293E0 */  sh         $v0, %lo(D_801493E0)($at)
    /* BEFBC 800B000C 3C018015 */  lui        $at, %hi(D_801493E2)
    /* BEFC0 800B0010 AFA40000 */  sw         $a0, 0x0($sp)
    /* BEFC4 800B0014 03E00008 */  jr         $ra
    /* BEFC8 800B0018 A42293E2 */   sh        $v0, %lo(D_801493E2)($at)
endlabel func_800B0000_BEFB0
