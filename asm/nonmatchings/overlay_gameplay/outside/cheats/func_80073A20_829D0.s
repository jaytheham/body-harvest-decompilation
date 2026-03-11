nonmatching func_80073A20_829D0, 0x54

glabel func_80073A20_829D0
    /* 829D0 80073A20 3C0F8015 */  lui        $t7, %hi(isCheatingEnabled)
    /* 829D4 80073A24 8DEF9460 */  lw         $t7, %lo(isCheatingEnabled)($t7)
    /* 829D8 80073A28 AFA40000 */  sw         $a0, 0x0($sp)
    /* 829DC 80073A2C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 829E0 80073A30 11E0000E */  beqz       $t7, .L80073A6C_82A1C
    /* 829E4 80073A34 01C02025 */   or        $a0, $t6, $zero
    /* 829E8 80073A38 24030001 */  addiu      $v1, $zero, 0x1
    /* 829EC 80073A3C 1060000A */  beqz       $v1, .L80073A68_82A18
    /* 829F0 80073A40 3C018015 */   lui       $at, %hi(cheatInputBuffer)
    /* 829F4 80073A44 3C028015 */  lui        $v0, %hi(D_80149459)
    /* 829F8 80073A48 3C058015 */  lui        $a1, %hi(D_80149452)
    /* 829FC 80073A4C 24A59452 */  addiu      $a1, $a1, %lo(D_80149452)
    /* 82A00 80073A50 24429459 */  addiu      $v0, $v0, %lo(D_80149459)
  .L80073A54_82A04:
    /* 82A04 80073A54 9058FFFF */  lbu        $t8, -0x1($v0)
    /* 82A08 80073A58 0045182B */  sltu       $v1, $v0, $a1
    /* 82A0C 80073A5C 2442FFFF */  addiu      $v0, $v0, -0x1
    /* 82A10 80073A60 1060FFFC */  beqz       $v1, .L80073A54_82A04
    /* 82A14 80073A64 A0580001 */   sb        $t8, 0x1($v0)
  .L80073A68_82A18:
    /* 82A18 80073A68 A0249450 */  sb         $a0, %lo(cheatInputBuffer)($at)
  .L80073A6C_82A1C:
    /* 82A1C 80073A6C 03E00008 */  jr         $ra
    /* 82A20 80073A70 00000000 */   nop
endlabel func_80073A20_829D0
