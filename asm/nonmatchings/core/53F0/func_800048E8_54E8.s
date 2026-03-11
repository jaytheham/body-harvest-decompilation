nonmatching func_800048E8_54E8, 0x30

glabel func_800048E8_54E8
    /* 54E8 800048E8 3C038004 */  lui        $v1, %hi(D_80047F40)
    /* 54EC 800048EC 3C028004 */  lui        $v0, %hi(D_80047F60)
    /* 54F0 800048F0 24427F60 */  addiu      $v0, $v0, %lo(D_80047F60)
    /* 54F4 800048F4 24637F40 */  addiu      $v1, $v1, %lo(D_80047F40)
  .L800048F8_54F8:
    /* 54F8 800048F8 24630010 */  addiu      $v1, $v1, 0x10
    /* 54FC 800048FC AC60FFF4 */  sw         $zero, -0xC($v1)
    /* 5500 80004900 AC60FFF8 */  sw         $zero, -0x8($v1)
    /* 5504 80004904 AC60FFFC */  sw         $zero, -0x4($v1)
    /* 5508 80004908 1462FFFB */  bne        $v1, $v0, .L800048F8_54F8
    /* 550C 8000490C AC60FFF0 */   sw        $zero, -0x10($v1)
    /* 5510 80004910 03E00008 */  jr         $ra
    /* 5514 80004914 00000000 */   nop
endlabel func_800048E8_54E8
