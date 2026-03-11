nonmatching func_80019F08_1AB08, 0x78

glabel func_80019F08_1AB08
    /* 1AB08 80019F08 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1AB0C 80019F0C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1AB10 80019F10 0C0067E0 */  jal        func_80019F80_1AB80
    /* 1AB14 80019F14 00000000 */   nop
    /* 1AB18 80019F18 24020001 */  addiu      $v0, $zero, 0x1
    /* 1AB1C 80019F1C 3C018003 */  lui        $at, %hi(D_80034484)
    /* 1AB20 80019F20 AC224484 */  sw         $v0, %lo(D_80034484)($at)
    /* 1AB24 80019F24 3C018003 */  lui        $at, %hi(D_8003447C)
    /* 1AB28 80019F28 AC22447C */  sw         $v0, %lo(D_8003447C)($at)
    /* 1AB2C 80019F2C 3C018007 */  lui        $at, %hi(D_8006C55C)
    /* 1AB30 80019F30 A420C55C */  sh         $zero, %lo(D_8006C55C)($at)
    /* 1AB34 80019F34 3C018007 */  lui        $at, %hi(D_8006C558)
    /* 1AB38 80019F38 A420C558 */  sh         $zero, %lo(D_8006C558)($at)
    /* 1AB3C 80019F3C 3C018007 */  lui        $at, %hi(D_8006C55E)
    /* 1AB40 80019F40 240E0001 */  addiu      $t6, $zero, 0x1
    /* 1AB44 80019F44 A42EC55E */  sh         $t6, %lo(D_8006C55E)($at)
    /* 1AB48 80019F48 3C018007 */  lui        $at, %hi(D_8006C564)
    /* 1AB4C 80019F4C A420C564 */  sh         $zero, %lo(D_8006C564)($at)
    /* 1AB50 80019F50 3C018007 */  lui        $at, %hi(D_8006C566)
    /* 1AB54 80019F54 A420C566 */  sh         $zero, %lo(D_8006C566)($at)
    /* 1AB58 80019F58 3C018007 */  lui        $at, %hi(D_8006C568)
    /* 1AB5C 80019F5C A420C568 */  sh         $zero, %lo(D_8006C568)($at)
    /* 1AB60 80019F60 3C018007 */  lui        $at, %hi(D_8006C56A)
    /* 1AB64 80019F64 A420C56A */  sh         $zero, %lo(D_8006C56A)($at)
    /* 1AB68 80019F68 0C0031AE */  jal        func_8000C6B8_D2B8
    /* 1AB6C 80019F6C 00002025 */   or        $a0, $zero, $zero
    /* 1AB70 80019F70 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1AB74 80019F74 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1AB78 80019F78 03E00008 */  jr         $ra
    /* 1AB7C 80019F7C 00000000 */   nop
endlabel func_80019F08_1AB08
