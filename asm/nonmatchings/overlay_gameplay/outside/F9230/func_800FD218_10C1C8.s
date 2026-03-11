nonmatching func_800FD218_10C1C8, 0x94

glabel func_800FD218_10C1C8
    /* 10C1C8 800FD218 3C078016 */  lui        $a3, %hi(D_80159310)
    /* 10C1CC 800FD21C 24E79310 */  addiu      $a3, $a3, %lo(D_80159310)
    /* 10C1D0 800FD220 84E20000 */  lh         $v0, 0x0($a3)
    /* 10C1D4 800FD224 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10C1D8 800FD228 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10C1DC 800FD22C 28430015 */  slti       $v1, $v0, 0x15
    /* 10C1E0 800FD230 244E0001 */  addiu      $t6, $v0, 0x1
    /* 10C1E4 800FD234 14600005 */  bnez       $v1, .L800FD24C_10C1FC
    /* 10C1E8 800FD238 A4EE0000 */   sh        $t6, 0x0($a3)
    /* 10C1EC 800FD23C 3C018016 */  lui        $at, %hi(D_8015930E)
    /* 10C1F0 800FD240 A420930E */  sh         $zero, %lo(D_8015930E)($at)
    /* 10C1F4 800FD244 3C018016 */  lui        $at, %hi(D_8015920C)
    /* 10C1F8 800FD248 AC20920C */  sw         $zero, %lo(D_8015920C)($at)
  .L800FD24C_10C1FC:
    /* 10C1FC 800FD24C 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 10C200 800FD250 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 10C204 800FD254 00002025 */  or         $a0, $zero, $zero
    /* 10C208 800FD258 2405006E */  addiu      $a1, $zero, 0x6E
    /* 10C20C 800FD25C 944F0020 */  lhu        $t7, 0x20($v0)
    /* 10C210 800FD260 35F80002 */  ori        $t8, $t7, 0x2
    /* 10C214 800FD264 A4580020 */  sh         $t8, 0x20($v0)
    /* 10C218 800FD268 84E60000 */  lh         $a2, 0x0($a3)
    /* 10C21C 800FD26C 0006C880 */  sll        $t9, $a2, 2
    /* 10C220 800FD270 0326C823 */  subu       $t9, $t9, $a2
    /* 10C224 800FD274 0019C8C0 */  sll        $t9, $t9, 3
    /* 10C228 800FD278 0326C823 */  subu       $t9, $t9, $a2
    /* 10C22C 800FD27C 0019C880 */  sll        $t9, $t9, 2
    /* 10C230 800FD280 0326C821 */  addu       $t9, $t9, $a2
    /* 10C234 800FD284 0019C900 */  sll        $t9, $t9, 4
    /* 10C238 800FD288 0326C821 */  addu       $t9, $t9, $a2
    /* 10C23C 800FD28C 0019C840 */  sll        $t9, $t9, 1
    /* 10C240 800FD290 0C001969 */  jal        func_800065A4_71A4
    /* 10C244 800FD294 3326FFFF */   andi      $a2, $t9, 0xFFFF
    /* 10C248 800FD298 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10C24C 800FD29C 3C018016 */  lui        $at, %hi(D_80159304)
    /* 10C250 800FD2A0 A4229304 */  sh         $v0, %lo(D_80159304)($at)
    /* 10C254 800FD2A4 03E00008 */  jr         $ra
    /* 10C258 800FD2A8 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_800FD218_10C1C8
