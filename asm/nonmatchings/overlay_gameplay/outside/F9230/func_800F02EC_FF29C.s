nonmatching func_800F02EC_FF29C, 0x54

glabel func_800F02EC_FF29C
    /* FF29C 800F02EC 00047400 */  sll        $t6, $a0, 16
    /* FF2A0 800F02F0 000E7C03 */  sra        $t7, $t6, 16
    /* FF2A4 800F02F4 3C198015 */  lui        $t9, %hi(D_80157F58)
    /* FF2A8 800F02F8 8F397F58 */  lw         $t9, %lo(D_80157F58)($t9)
    /* FF2AC 800F02FC 000FC080 */  sll        $t8, $t7, 2
    /* FF2B0 800F0300 030FC023 */  subu       $t8, $t8, $t7
    /* FF2B4 800F0304 0018C0C0 */  sll        $t8, $t8, 3
    /* FF2B8 800F0308 3C038015 */  lui        $v1, %hi(D_80157F4C)
    /* FF2BC 800F030C 03194021 */  addu       $t0, $t8, $t9
    /* FF2C0 800F0310 24637F4C */  addiu      $v1, $v1, %lo(D_80157F4C)
    /* FF2C4 800F0314 AC680000 */  sw         $t0, 0x0($v1)
    /* FF2C8 800F0318 25090018 */  addiu      $t1, $t0, 0x18
    /* FF2CC 800F031C 3C018015 */  lui        $at, %hi(D_80157F50)
    /* FF2D0 800F0320 AFA40000 */  sw         $a0, 0x0($sp)
    /* FF2D4 800F0324 AC297F50 */  sw         $t1, %lo(D_80157F50)($at)
    /* FF2D8 800F0328 850A000C */  lh         $t2, 0xC($t0)
    /* FF2DC 800F032C 3C018015 */  lui        $at, %hi(D_80157F64)
    /* FF2E0 800F0330 AC2A7F64 */  sw         $t2, %lo(D_80157F64)($at)
    /* FF2E4 800F0334 3C018015 */  lui        $at, %hi(D_80157F54)
    /* FF2E8 800F0338 03E00008 */  jr         $ra
    /* FF2EC 800F033C AC207F54 */   sw        $zero, %lo(D_80157F54)($at)
endlabel func_800F02EC_FF29C
