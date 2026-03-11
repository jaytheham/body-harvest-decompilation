nonmatching func_8000AFDC_BBDC, 0x68

glabel func_8000AFDC_BBDC
    /* BBDC 8000AFDC 3C018005 */  lui        $at, %hi(D_80053BE2)
    /* BBE0 8000AFE0 A4203BE2 */  sh         $zero, %lo(D_80053BE2)($at)
    /* BBE4 8000AFE4 3C018005 */  lui        $at, %hi(D_80053BE4)
    /* BBE8 8000AFE8 A4203BE4 */  sh         $zero, %lo(D_80053BE4)($at)
    /* BBEC 8000AFEC 3C018005 */  lui        $at, %hi(D_80053BE0)
    /* BBF0 8000AFF0 A4203BE0 */  sh         $zero, %lo(D_80053BE0)($at)
    /* BBF4 8000AFF4 3C018005 */  lui        $at, %hi(D_80053C80)
    /* BBF8 8000AFF8 A4203C80 */  sh         $zero, %lo(D_80053C80)($at)
    /* BBFC 8000AFFC 3C018005 */  lui        $at, %hi(D_80053C82)
    /* BC00 8000B000 A4203C82 */  sh         $zero, %lo(D_80053C82)($at)
    /* BC04 8000B004 3C018005 */  lui        $at, %hi(D_80053C90)
    /* BC08 8000B008 240E0028 */  addiu      $t6, $zero, 0x28
    /* BC0C 8000B00C A42E3C90 */  sh         $t6, %lo(D_80053C90)($at)
    /* BC10 8000B010 3C018005 */  lui        $at, %hi(D_80053C92)
    /* BC14 8000B014 240F0018 */  addiu      $t7, $zero, 0x18
    /* BC18 8000B018 3C048005 */  lui        $a0, %hi(D_80053BDF)
    /* BC1C 8000B01C A42F3C92 */  sh         $t7, %lo(D_80053C92)($at)
    /* BC20 8000B020 24843BDF */  addiu      $a0, $a0, %lo(D_80053BDF)
    /* BC24 8000B024 24030FFF */  addiu      $v1, $zero, 0xFFF
  .L8000B028_BC28:
    /* BC28 8000B028 00601025 */  or         $v0, $v1, $zero
    /* BC2C 8000B02C A0800000 */  sb         $zero, 0x0($a0)
    /* BC30 8000B030 2484FFFF */  addiu      $a0, $a0, -0x1
    /* BC34 8000B034 1460FFFC */  bnez       $v1, .L8000B028_BC28
    /* BC38 8000B038 2463FFFF */   addiu     $v1, $v1, -0x1
    /* BC3C 8000B03C 03E00008 */  jr         $ra
    /* BC40 8000B040 00000000 */   nop
endlabel func_8000AFDC_BBDC
