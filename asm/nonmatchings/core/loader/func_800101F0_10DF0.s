nonmatching func_800101F0_10DF0, 0x38

glabel func_800101F0_10DF0
    /* 10DF0 800101F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10DF4 800101F4 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 10DF8 800101F8 00802825 */  or         $a1, $a0, $zero
    /* 10DFC 800101FC AFA40018 */  sw         $a0, 0x18($sp)
    /* 10E00 80010200 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10E04 80010204 00C03825 */  or         $a3, $a2, $zero
    /* 10E08 80010208 3C048006 */  lui        $a0, %hi(D_80067F70)
    /* 10E0C 8001020C 8FA6001C */  lw         $a2, 0x1C($sp)
    /* 10E10 80010210 0C003FF0 */  jal        func_8000FFC0_10BC0
    /* 10E14 80010214 24847F70 */   addiu     $a0, $a0, %lo(D_80067F70)
    /* 10E18 80010218 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10E1C 8001021C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10E20 80010220 03E00008 */  jr         $ra
    /* 10E24 80010224 00000000 */   nop
endlabel func_800101F0_10DF0
