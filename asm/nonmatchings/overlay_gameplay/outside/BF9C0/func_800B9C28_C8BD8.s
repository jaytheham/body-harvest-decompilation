nonmatching func_800B9C28_C8BD8, 0x190

glabel func_800B9C28_C8BD8
    /* C8BD8 800B9C28 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* C8BDC 800B9C2C 3C0E8014 */  lui        $t6, %hi(D_8013DAE8)
    /* C8BE0 800B9C30 AFBF0024 */  sw         $ra, 0x24($sp)
    /* C8BE4 800B9C34 25CEDAE8 */  addiu      $t6, $t6, %lo(D_8013DAE8)
    /* C8BE8 800B9C38 99C10002 */  lwr        $at, 0x2($t6)
    /* C8BEC 800B9C3C 27A30040 */  addiu      $v1, $sp, 0x40
    /* C8BF0 800B9C40 3C098014 */  lui        $t1, %hi(D_8013DAEC)
    /* C8BF4 800B9C44 2529DAEC */  addiu      $t1, $t1, %lo(D_8013DAEC)
    /* C8BF8 800B9C48 B8610002 */  swr        $at, 0x2($v1)
    /* C8BFC 800B9C4C 99210002 */  lwr        $at, 0x2($t1)
    /* C8C00 800B9C50 27A8003C */  addiu      $t0, $sp, 0x3C
    /* C8C04 800B9C54 3C188014 */  lui        $t8, %hi(D_8013DAF0)
    /* C8C08 800B9C58 2718DAF0 */  addiu      $t8, $t8, %lo(D_8013DAF0)
    /* C8C0C 800B9C5C B9010002 */  swr        $at, 0x2($t0)
    /* C8C10 800B9C60 9B010002 */  lwr        $at, 0x2($t8)
    /* C8C14 800B9C64 27AD0038 */  addiu      $t5, $sp, 0x38
    /* C8C18 800B9C68 3C0A8014 */  lui        $t2, %hi(D_8013DAF4)
    /* C8C1C 800B9C6C 254ADAF4 */  addiu      $t2, $t2, %lo(D_8013DAF4)
    /* C8C20 800B9C70 B9A10002 */  swr        $at, 0x2($t5)
    /* C8C24 800B9C74 99410002 */  lwr        $at, 0x2($t2)
    /* C8C28 800B9C78 27AB0034 */  addiu      $t3, $sp, 0x34
    /* C8C2C 800B9C7C 3C0F8014 */  lui        $t7, %hi(D_8013DAF8)
    /* C8C30 800B9C80 25EFDAF8 */  addiu      $t7, $t7, %lo(D_8013DAF8)
    /* C8C34 800B9C84 B9610002 */  swr        $at, 0x2($t3)
    /* C8C38 800B9C88 99E10002 */  lwr        $at, 0x2($t7)
    /* C8C3C 800B9C8C 27AE0030 */  addiu      $t6, $sp, 0x30
    /* C8C40 800B9C90 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* C8C44 800B9C94 B9C10002 */  swr        $at, 0x2($t6)
    /* C8C48 800B9C98 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* C8C4C 800B9C9C 240B0041 */  addiu      $t3, $zero, 0x41
    /* C8C50 800B9CA0 240A0007 */  addiu      $t2, $zero, 0x7
    /* C8C54 800B9CA4 84490000 */  lh         $t1, 0x0($v0)
    /* C8C58 800B9CA8 27A40044 */  addiu      $a0, $sp, 0x44
    /* C8C5C 800B9CAC 240500C8 */  addiu      $a1, $zero, 0xC8
    /* C8C60 800B9CB0 A7A90044 */  sh         $t1, 0x44($sp)
    /* C8C64 800B9CB4 84480004 */  lh         $t0, 0x4($v0)
    /* C8C68 800B9CB8 AFA0001C */  sw         $zero, 0x1C($sp)
    /* C8C6C 800B9CBC AFAA0018 */  sw         $t2, 0x18($sp)
    /* C8C70 800B9CC0 AFAB0014 */  sw         $t3, 0x14($sp)
    /* C8C74 800B9CC4 AFA30010 */  sw         $v1, 0x10($sp)
    /* C8C78 800B9CC8 240601F4 */  addiu      $a2, $zero, 0x1F4
    /* C8C7C 800B9CCC 240700FF */  addiu      $a3, $zero, 0xFF
    /* C8C80 800B9CD0 0C02E66A */  jal        func_800B99A8_C8958
    /* C8C84 800B9CD4 A7A80046 */   sh        $t0, 0x46($sp)
    /* C8C88 800B9CD8 27AC003C */  addiu      $t4, $sp, 0x3C
    /* C8C8C 800B9CDC 24180041 */  addiu      $t8, $zero, 0x41
    /* C8C90 800B9CE0 240D0007 */  addiu      $t5, $zero, 0x7
    /* C8C94 800B9CE4 240E000F */  addiu      $t6, $zero, 0xF
    /* C8C98 800B9CE8 AFAE001C */  sw         $t6, 0x1C($sp)
    /* C8C9C 800B9CEC AFAD0018 */  sw         $t5, 0x18($sp)
    /* C8CA0 800B9CF0 AFB80014 */  sw         $t8, 0x14($sp)
    /* C8CA4 800B9CF4 AFAC0010 */  sw         $t4, 0x10($sp)
    /* C8CA8 800B9CF8 27A40044 */  addiu      $a0, $sp, 0x44
    /* C8CAC 800B9CFC 240500C8 */  addiu      $a1, $zero, 0xC8
    /* C8CB0 800B9D00 240601F4 */  addiu      $a2, $zero, 0x1F4
    /* C8CB4 800B9D04 0C02E66A */  jal        func_800B99A8_C8958
    /* C8CB8 800B9D08 240700FF */   addiu     $a3, $zero, 0xFF
    /* C8CBC 800B9D0C 27AF0038 */  addiu      $t7, $sp, 0x38
    /* C8CC0 800B9D10 24190041 */  addiu      $t9, $zero, 0x41
    /* C8CC4 800B9D14 24090007 */  addiu      $t1, $zero, 0x7
    /* C8CC8 800B9D18 2408001E */  addiu      $t0, $zero, 0x1E
    /* C8CCC 800B9D1C AFA8001C */  sw         $t0, 0x1C($sp)
    /* C8CD0 800B9D20 AFA90018 */  sw         $t1, 0x18($sp)
    /* C8CD4 800B9D24 AFB90014 */  sw         $t9, 0x14($sp)
    /* C8CD8 800B9D28 AFAF0010 */  sw         $t7, 0x10($sp)
    /* C8CDC 800B9D2C 27A40044 */  addiu      $a0, $sp, 0x44
    /* C8CE0 800B9D30 240500C8 */  addiu      $a1, $zero, 0xC8
    /* C8CE4 800B9D34 240601F4 */  addiu      $a2, $zero, 0x1F4
    /* C8CE8 800B9D38 0C02E66A */  jal        func_800B99A8_C8958
    /* C8CEC 800B9D3C 240700FF */   addiu     $a3, $zero, 0xFF
    /* C8CF0 800B9D40 27AB0034 */  addiu      $t3, $sp, 0x34
    /* C8CF4 800B9D44 240A0041 */  addiu      $t2, $zero, 0x41
    /* C8CF8 800B9D48 240C0007 */  addiu      $t4, $zero, 0x7
    /* C8CFC 800B9D4C 2418002D */  addiu      $t8, $zero, 0x2D
    /* C8D00 800B9D50 AFB8001C */  sw         $t8, 0x1C($sp)
    /* C8D04 800B9D54 AFAC0018 */  sw         $t4, 0x18($sp)
    /* C8D08 800B9D58 AFAA0014 */  sw         $t2, 0x14($sp)
    /* C8D0C 800B9D5C AFAB0010 */  sw         $t3, 0x10($sp)
    /* C8D10 800B9D60 27A40044 */  addiu      $a0, $sp, 0x44
    /* C8D14 800B9D64 240500C8 */  addiu      $a1, $zero, 0xC8
    /* C8D18 800B9D68 240601F4 */  addiu      $a2, $zero, 0x1F4
    /* C8D1C 800B9D6C 0C02E66A */  jal        func_800B99A8_C8958
    /* C8D20 800B9D70 240700FF */   addiu     $a3, $zero, 0xFF
    /* C8D24 800B9D74 27AD0030 */  addiu      $t5, $sp, 0x30
    /* C8D28 800B9D78 240E0041 */  addiu      $t6, $zero, 0x41
    /* C8D2C 800B9D7C 240F0007 */  addiu      $t7, $zero, 0x7
    /* C8D30 800B9D80 2419003C */  addiu      $t9, $zero, 0x3C
    /* C8D34 800B9D84 AFB9001C */  sw         $t9, 0x1C($sp)
    /* C8D38 800B9D88 AFAF0018 */  sw         $t7, 0x18($sp)
    /* C8D3C 800B9D8C AFAE0014 */  sw         $t6, 0x14($sp)
    /* C8D40 800B9D90 AFAD0010 */  sw         $t5, 0x10($sp)
    /* C8D44 800B9D94 27A40044 */  addiu      $a0, $sp, 0x44
    /* C8D48 800B9D98 240500C8 */  addiu      $a1, $zero, 0xC8
    /* C8D4C 800B9D9C 240601F4 */  addiu      $a2, $zero, 0x1F4
    /* C8D50 800B9DA0 0C02E66A */  jal        func_800B99A8_C8958
    /* C8D54 800B9DA4 240700FF */   addiu     $a3, $zero, 0xFF
    /* C8D58 800B9DA8 8FBF0024 */  lw         $ra, 0x24($sp)
    /* C8D5C 800B9DAC 27BD0048 */  addiu      $sp, $sp, 0x48
    /* C8D60 800B9DB0 03E00008 */  jr         $ra
    /* C8D64 800B9DB4 00000000 */   nop
endlabel func_800B9C28_C8BD8
