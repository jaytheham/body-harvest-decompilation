nonmatching func_80016ABC_176BC, 0x7C

glabel func_80016ABC_176BC
    /* 176BC 80016ABC 00047600 */  sll        $t6, $a0, 24
    /* 176C0 80016AC0 000E7E03 */  sra        $t7, $t6, 24
    /* 176C4 80016AC4 3C018003 */  lui        $at, %hi(D_80031CD0)
    /* 176C8 80016AC8 2403FFFF */  addiu      $v1, $zero, -0x1
    /* 176CC 80016ACC 002F0821 */  addu       $at, $at, $t7
    /* 176D0 80016AD0 A0231CD0 */  sb         $v1, %lo(D_80031CD0)($at)
    /* 176D4 80016AD4 3C018003 */  lui        $at, %hi(D_80031CE4)
    /* 176D8 80016AD8 000F1080 */  sll        $v0, $t7, 2
    /* 176DC 80016ADC 00220821 */  addu       $at, $at, $v0
    /* 176E0 80016AE0 AC201CE4 */  sw         $zero, %lo(D_80031CE4)($at)
    /* 176E4 80016AE4 3C018003 */  lui        $at, %hi(D_80031D1C)
    /* 176E8 80016AE8 002F0821 */  addu       $at, $at, $t7
    /* 176EC 80016AEC A0231D1C */  sb         $v1, %lo(D_80031D1C)($at)
    /* 176F0 80016AF0 3C018003 */  lui        $at, %hi(D_80031D28)
    /* 176F4 80016AF4 002F0821 */  addu       $at, $at, $t7
    /* 176F8 80016AF8 44800000 */  mtc1       $zero, $f0
    /* 176FC 80016AFC A0201D28 */  sb         $zero, %lo(D_80031D28)($at)
    /* 17700 80016B00 3C018003 */  lui        $at, %hi(D_80031D2C)
    /* 17704 80016B04 00220821 */  addu       $at, $at, $v0
    /* 17708 80016B08 E4201D2C */  swc1       $f0, %lo(D_80031D2C)($at)
    /* 1770C 80016B0C 3C018003 */  lui        $at, %hi(D_80031D34)
    /* 17710 80016B10 00220821 */  addu       $at, $at, $v0
    /* 17714 80016B14 E4201D34 */  swc1       $f0, %lo(D_80031D34)($at)
    /* 17718 80016B18 3C018003 */  lui        $at, %hi(D_80031D3C)
    /* 1771C 80016B1C 00220821 */  addu       $at, $at, $v0
    /* 17720 80016B20 E4201D3C */  swc1       $f0, %lo(D_80031D3C)($at)
    /* 17724 80016B24 3C018003 */  lui        $at, %hi(D_80031D44)
    /* 17728 80016B28 00220821 */  addu       $at, $at, $v0
    /* 1772C 80016B2C AFA40000 */  sw         $a0, 0x0($sp)
    /* 17730 80016B30 03E00008 */  jr         $ra
    /* 17734 80016B34 E4201D44 */   swc1      $f0, %lo(D_80031D44)($at)
endlabel func_80016ABC_176BC
