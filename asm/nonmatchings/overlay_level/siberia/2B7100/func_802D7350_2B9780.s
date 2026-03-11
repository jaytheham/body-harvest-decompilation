nonmatching func_802D7350_2B9780, 0x48

glabel func_802D7350_2B9780
    /* 2B9780 802D7350 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B9784 802D7354 3C028005 */  lui        $v0, %hi(buildingInstances)
    /* 2B9788 802D7358 24420AD8 */  addiu      $v0, $v0, %lo(buildingInstances)
    /* 2B978C 802D735C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B9790 802D7360 84440600 */  lh         $a0, 0x600($v0)
    /* 2B9794 802D7364 84450604 */  lh         $a1, 0x604($v0)
    /* 2B9798 802D7368 0C0B5CB1 */  jal        func_802D72C4_2B96F4
    /* 2B979C 802D736C 2406000E */   addiu     $a2, $zero, 0xE
    /* 2B97A0 802D7370 3C028005 */  lui        $v0, %hi(buildingInstances)
    /* 2B97A4 802D7374 24420AD8 */  addiu      $v0, $v0, %lo(buildingInstances)
    /* 2B97A8 802D7378 844405B8 */  lh         $a0, 0x5B8($v0)
    /* 2B97AC 802D737C 844505BC */  lh         $a1, 0x5BC($v0)
    /* 2B97B0 802D7380 0C0B5CB1 */  jal        func_802D72C4_2B96F4
    /* 2B97B4 802D7384 2406000F */   addiu     $a2, $zero, 0xF
    /* 2B97B8 802D7388 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B97BC 802D738C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B97C0 802D7390 03E00008 */  jr         $ra
    /* 2B97C4 802D7394 00000000 */   nop
endlabel func_802D7350_2B9780
