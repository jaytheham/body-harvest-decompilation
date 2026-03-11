nonmatching func_8000EF98_FB98, 0x20

glabel func_8000EF98_FB98
    /* FB98 8000EF98 3C028003 */  lui        $v0, %hi(osViModeTable)
    /* FB9C 8000EF9C 3C0E0033 */  lui        $t6, (0x330251 >> 16)
    /* FBA0 8000EFA0 24425630 */  addiu      $v0, $v0, %lo(osViModeTable)
    /* FBA4 8000EFA4 35CE0251 */  ori        $t6, $t6, (0x330251 & 0xFFFF)
    /* FBA8 8000EFA8 240F036D */  addiu      $t7, $zero, 0x36D
    /* FBAC 8000EFAC AC4E0530 */  sw         $t6, 0x530($v0)
    /* FBB0 8000EFB0 03E00008 */  jr         $ra
    /* FBB4 8000EFB4 AC4F052C */   sw        $t7, 0x52C($v0)
endlabel func_8000EF98_FB98
