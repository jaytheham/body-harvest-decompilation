nonmatching func_80079F30_4A3E0, 0x108

glabel func_80079F30_4A3E0
    /* 4A3E0 80079F30 3C0C8006 */  lui        $t4, %hi(D_8005BB2C)
    /* 4A3E4 80079F34 258CBB2C */  addiu      $t4, $t4, %lo(D_8005BB2C)
    /* 4A3E8 80079F38 8D830000 */  lw         $v1, 0x0($t4)
    /* 4A3EC 80079F3C AFA40000 */  sw         $a0, 0x0($sp)
    /* 4A3F0 80079F40 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
    /* 4A3F4 80079F44 246F0008 */  addiu      $t7, $v1, 0x8
    /* 4A3F8 80079F48 AD8F0000 */  sw         $t7, 0x0($t4)
    /* 4A3FC 80079F4C AC600004 */  sw         $zero, 0x4($v1)
    /* 4A400 80079F50 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 4A404 80079F54 8D830000 */  lw         $v1, 0x0($t4)
    /* 4A408 80079F58 00807025 */  or         $t6, $a0, $zero
    /* 4A40C 80079F5C 01C02025 */  or         $a0, $t6, $zero
    /* 4A410 80079F60 24780008 */  addiu      $t8, $v1, 0x8
    /* 4A414 80079F64 AD980000 */  sw         $t8, 0x0($t4)
    /* 4A418 80079F68 3C0E0001 */  lui        $t6, (0x10001 >> 16)
    /* 4A41C 80079F6C 35CE0001 */  ori        $t6, $t6, (0x10001 & 0xFFFF)
    /* 4A420 80079F70 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
    /* 4A424 80079F74 AC790000 */  sw         $t9, 0x0($v1)
    /* 4A428 80079F78 AC6E0004 */  sw         $t6, 0x4($v1)
    /* 4A42C 80079F7C 8D830000 */  lw         $v1, 0x0($t4)
    /* 4A430 80079F80 3C18BA00 */  lui        $t8, (0xBA000602 >> 16)
    /* 4A434 80079F84 37180602 */  ori        $t8, $t8, (0xBA000602 & 0xFFFF)
    /* 4A438 80079F88 246F0008 */  addiu      $t7, $v1, 0x8
    /* 4A43C 80079F8C AD8F0000 */  sw         $t7, 0x0($t4)
    /* 4A440 80079F90 AC600004 */  sw         $zero, 0x4($v1)
    /* 4A444 80079F94 AC780000 */  sw         $t8, 0x0($v1)
    /* 4A448 80079F98 8D830000 */  lw         $v1, 0x0($t4)
    /* 4A44C 80079F9C 3C0F0050 */  lui        $t7, (0x504240 >> 16)
    /* 4A450 80079FA0 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
    /* 4A454 80079FA4 24790008 */  addiu      $t9, $v1, 0x8
    /* 4A458 80079FA8 AD990000 */  sw         $t9, 0x0($t4)
    /* 4A45C 80079FAC 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
    /* 4A460 80079FB0 35EF4240 */  ori        $t7, $t7, (0x504240 & 0xFFFF)
    /* 4A464 80079FB4 AC6F0004 */  sw         $t7, 0x4($v1)
    /* 4A468 80079FB8 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 4A46C 80079FBC 8D830000 */  lw         $v1, 0x0($t4)
    /* 4A470 80079FC0 3C0EFFFD */  lui        $t6, (0xFFFDF6FB >> 16)
    /* 4A474 80079FC4 3C19FCFF */  lui        $t9, (0xFCFFFFFF >> 16)
    /* 4A478 80079FC8 24780008 */  addiu      $t8, $v1, 0x8
    /* 4A47C 80079FCC AD980000 */  sw         $t8, 0x0($t4)
    /* 4A480 80079FD0 3739FFFF */  ori        $t9, $t9, (0xFCFFFFFF & 0xFFFF)
    /* 4A484 80079FD4 35CEF6FB */  ori        $t6, $t6, (0xFFFDF6FB & 0xFFFF)
    /* 4A488 80079FD8 AC6E0004 */  sw         $t6, 0x4($v1)
    /* 4A48C 80079FDC AC790000 */  sw         $t9, 0x0($v1)
    /* 4A490 80079FE0 8D830000 */  lw         $v1, 0x0($t4)
    /* 4A494 80079FE4 309900FF */  andi       $t9, $a0, 0xFF
    /* 4A498 80079FE8 2401FF00 */  addiu      $at, $zero, -0x100
    /* 4A49C 80079FEC 246F0008 */  addiu      $t7, $v1, 0x8
    /* 4A4A0 80079FF0 AD8F0000 */  sw         $t7, 0x0($t4)
    /* 4A4A4 80079FF4 03217025 */  or         $t6, $t9, $at
    /* 4A4A8 80079FF8 3C18FA00 */  lui        $t8, (0xFA000000 >> 16)
    /* 4A4AC 80079FFC AC780000 */  sw         $t8, 0x0($v1)
    /* 4A4B0 8007A000 AC6E0004 */  sw         $t6, 0x4($v1)
    /* 4A4B4 8007A004 8D830000 */  lw         $v1, 0x0($t4)
    /* 4A4B8 8007A008 3C19F650 */  lui        $t9, (0xF65003C0 >> 16)
    /* 4A4BC 8007A00C 373903C0 */  ori        $t9, $t9, (0xF65003C0 & 0xFFFF)
    /* 4A4C0 8007A010 246F0008 */  addiu      $t7, $v1, 0x8
    /* 4A4C4 8007A014 AD8F0000 */  sw         $t7, 0x0($t4)
    /* 4A4C8 8007A018 AC600004 */  sw         $zero, 0x4($v1)
    /* 4A4CC 8007A01C AC6D0000 */  sw         $t5, 0x0($v1)
    /* 4A4D0 8007A020 8D830000 */  lw         $v1, 0x0($t4)
    /* 4A4D4 8007A024 24780008 */  addiu      $t8, $v1, 0x8
    /* 4A4D8 8007A028 AD980000 */  sw         $t8, 0x0($t4)
    /* 4A4DC 8007A02C AC600004 */  sw         $zero, 0x4($v1)
    /* 4A4E0 8007A030 03E00008 */  jr         $ra
    /* 4A4E4 8007A034 AC790000 */   sw        $t9, 0x0($v1)
endlabel func_80079F30_4A3E0
