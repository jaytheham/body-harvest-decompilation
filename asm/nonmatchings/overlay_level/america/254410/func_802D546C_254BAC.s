nonmatching func_802D546C_254BAC, 0xC4

glabel func_802D546C_254BAC
    /* 254BAC 802D546C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 254BB0 802D5470 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 254BB4 802D5474 3C060040 */  lui        $a2, (0x401000 >> 16)
    /* 254BB8 802D5478 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 254BBC 802D547C 34C61000 */  ori        $a2, $a2, (0x401000 & 0xFFFF)
    /* 254BC0 802D5480 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 254BC4 802D5484 00001825 */  or         $v1, $zero, $zero
    /* 254BC8 802D5488 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 254BCC 802D548C 24050050 */  addiu      $a1, $zero, 0x50
    /* 254BD0 802D5490 24040024 */  addiu      $a0, $zero, 0x24
  .L802D5494_254BD4:
    /* 254BD4 802D5494 00650019 */  multu      $v1, $a1
    /* 254BD8 802D5498 24630001 */  addiu      $v1, $v1, 0x1
    /* 254BDC 802D549C 00034C00 */  sll        $t1, $v1, 16
    /* 254BE0 802D54A0 00091C03 */  sra        $v1, $t1, 16
    /* 254BE4 802D54A4 286100FF */  slti       $at, $v1, 0xFF
    /* 254BE8 802D54A8 00007012 */  mflo       $t6
    /* 254BEC 802D54AC 010E1021 */  addu       $v0, $t0, $t6
    /* 254BF0 802D54B0 904F001A */  lbu        $t7, 0x1A($v0)
    /* 254BF4 802D54B4 148F0005 */  bne        $a0, $t7, .L802D54CC_254C0C
    /* 254BF8 802D54B8 00000000 */   nop
    /* 254BFC 802D54BC 8C580020 */  lw         $t8, 0x20($v0)
    /* 254C00 802D54C0 A447002C */  sh         $a3, 0x2C($v0)
    /* 254C04 802D54C4 0306C825 */  or         $t9, $t8, $a2
    /* 254C08 802D54C8 AC590020 */  sw         $t9, 0x20($v0)
  .L802D54CC_254C0C:
    /* 254C0C 802D54CC 1420FFF1 */  bnez       $at, .L802D5494_254BD4
    /* 254C10 802D54D0 00000000 */   nop
    /* 254C14 802D54D4 3C04802D */  lui        $a0, %hi(func_802D536C_254AAC)
    /* 254C18 802D54D8 0C001D2F */  jal        func_800074BC_80BC
    /* 254C1C 802D54DC 2484536C */   addiu     $a0, $a0, %lo(func_802D536C_254AAC)
    /* 254C20 802D54E0 3C04802E */  lui        $a0, %hi(D_802E0E44)
    /* 254C24 802D54E4 90840E44 */  lbu        $a0, %lo(D_802E0E44)($a0)
    /* 254C28 802D54E8 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 254C2C 802D54EC 240100FF */  addiu      $at, $zero, 0xFF
    /* 254C30 802D54F0 1081000B */  beq        $a0, $at, .L802D5520_254C60
    /* 254C34 802D54F4 25088198 */   addiu     $t0, $t0, %lo(alienInstances)
    /* 254C38 802D54F8 00045880 */  sll        $t3, $a0, 2
    /* 254C3C 802D54FC 01645821 */  addu       $t3, $t3, $a0
    /* 254C40 802D5500 000B5900 */  sll        $t3, $t3, 4
    /* 254C44 802D5504 010B6021 */  addu       $t4, $t0, $t3
    /* 254C48 802D5508 918D001A */  lbu        $t5, 0x1A($t4)
    /* 254C4C 802D550C 24010012 */  addiu      $at, $zero, 0x12
    /* 254C50 802D5510 55A10004 */  bnel       $t5, $at, .L802D5524_254C64
    /* 254C54 802D5514 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 254C58 802D5518 0C021EAB */  jal        func_80087AAC_96A5C
    /* 254C5C 802D551C 00000000 */   nop
  .L802D5520_254C60:
    /* 254C60 802D5520 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D5524_254C64:
    /* 254C64 802D5524 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 254C68 802D5528 03E00008 */  jr         $ra
    /* 254C6C 802D552C 00000000 */   nop
endlabel func_802D546C_254BAC
