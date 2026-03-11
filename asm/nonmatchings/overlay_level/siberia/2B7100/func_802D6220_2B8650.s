nonmatching func_802D6220_2B8650, 0x94

glabel func_802D6220_2B8650
    /* 2B8650 802D6220 3C02802E */  lui        $v0, %hi(D_802E30F4)
    /* 2B8654 802D6224 244230F4 */  addiu      $v0, $v0, %lo(D_802E30F4)
    /* 2B8658 802D6228 844E0000 */  lh         $t6, 0x0($v0)
    /* 2B865C 802D622C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B8660 802D6230 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B8664 802D6234 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* 2B8668 802D6238 A44F0000 */  sh         $t7, 0x0($v0)
    /* 2B866C 802D623C 84580000 */  lh         $t8, 0x0($v0)
    /* 2B8670 802D6240 3C028005 */  lui        $v0, %hi(vehicleInstances)
    /* 2B8674 802D6244 2442DCD0 */  addiu      $v0, $v0, %lo(vehicleInstances)
    /* 2B8678 802D6248 57000017 */  bnel       $t8, $zero, .L802D62A8_2B86D8
    /* 2B867C 802D624C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B8680 802D6250 94590AE8 */  lhu        $t9, 0xAE8($v0)
    /* 2B8684 802D6254 3C018015 */  lui        $at, %hi(D_801493E0)
    /* 2B8688 802D6258 3C04802E */  lui        $a0, %hi(D_802E3098)
    /* 2B868C 802D625C 3328FF7F */  andi       $t0, $t9, 0xFF7F
    /* 2B8690 802D6260 A4480AE8 */  sh         $t0, 0xAE8($v0)
    /* 2B8694 802D6264 A42093E0 */  sh         $zero, %lo(D_801493E0)($at)
    /* 2B8698 802D6268 3C01802E */  lui        $at, %hi(D_802E3094)
    /* 2B869C 802D626C AC203094 */  sw         $zero, %lo(D_802E3094)($at)
    /* 2B86A0 802D6270 0C04B602 */  jal        func_8012D808_13C7B8
    /* 2B86A4 802D6274 8C843098 */   lw        $a0, %lo(D_802E3098)($a0)
    /* 2B86A8 802D6278 3C01802E */  lui        $at, %hi(D_802E30EC)
    /* 2B86AC 802D627C AC2030EC */  sw         $zero, %lo(D_802E30EC)($at)
    /* 2B86B0 802D6280 3C018015 */  lui        $at, %hi(D_8014D17C)
    /* 2B86B4 802D6284 A420D17C */  sh         $zero, %lo(D_8014D17C)($at)
    /* 2B86B8 802D6288 00002025 */  or         $a0, $zero, $zero
    /* 2B86BC 802D628C 2405001C */  addiu      $a1, $zero, 0x1C
    /* 2B86C0 802D6290 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 2B86C4 802D6294 00003025 */   or        $a2, $zero, $zero
    /* 2B86C8 802D6298 3C04802D */  lui        $a0, %hi(func_802D5F28_2B8358)
    /* 2B86CC 802D629C 0C001D04 */  jal        func_80007410_8010
    /* 2B86D0 802D62A0 24845F28 */   addiu     $a0, $a0, %lo(func_802D5F28_2B8358)
    /* 2B86D4 802D62A4 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D62A8_2B86D8:
    /* 2B86D8 802D62A8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B86DC 802D62AC 03E00008 */  jr         $ra
    /* 2B86E0 802D62B0 00000000 */   nop
endlabel func_802D6220_2B8650
