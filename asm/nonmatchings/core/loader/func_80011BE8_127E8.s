nonmatching func_80011BE8_127E8, 0x4C

glabel func_80011BE8_127E8
    /* 127E8 80011BE8 3C030044 */  lui        $v1, %hi(D_43A340)
    /* 127EC 80011BEC 3C0F004F */  lui        $t7, %hi(D_4EBF80)
    /* 127F0 80011BF0 2465A340 */  addiu      $a1, $v1, %lo(D_43A340)
    /* 127F4 80011BF4 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 127F8 80011BF8 3C028007 */  lui        $v0, %hi(D_8006AA70)
    /* 127FC 80011BFC 25EFBF80 */  addiu      $t7, $t7, %lo(D_4EBF80)
    /* 12800 80011C00 2442AA70 */  addiu      $v0, $v0, %lo(D_8006AA70)
    /* 12804 80011C04 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12808 80011C08 01E53023 */  subu       $a2, $t7, $a1
    /* 1280C 80011C0C AFA40020 */  sw         $a0, 0x20($sp)
    /* 12810 80011C10 AC440000 */  sw         $a0, 0x0($v0)
    /* 12814 80011C14 0C00407C */  jal        func_800101F0_10DF0
    /* 12818 80011C18 AFA6001C */   sw        $a2, 0x1C($sp)
    /* 1281C 80011C1C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 12820 80011C20 8FA6001C */  lw         $a2, 0x1C($sp)
    /* 12824 80011C24 8FB80020 */  lw         $t8, 0x20($sp)
    /* 12828 80011C28 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1282C 80011C2C 03E00008 */  jr         $ra
    /* 12830 80011C30 00D81021 */   addu      $v0, $a2, $t8
endlabel func_80011BE8_127E8
