nonmatching func_800EA434_F93E4, 0x184

glabel func_800EA434_F93E4
    /* F93E4 800EA434 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* F93E8 800EA438 AFBF0024 */  sw         $ra, 0x24($sp)
    /* F93EC 800EA43C 3C018005 */  lui        $at, %hi(D_8004818C)
    /* F93F0 800EA440 AFB00020 */  sw         $s0, 0x20($sp)
    /* F93F4 800EA444 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* F93F8 800EA448 0C0031BD */  jal        func_8000C6F4_D2F4
    /* F93FC 800EA44C AC20818C */   sw        $zero, %lo(D_8004818C)($at)
    /* F9400 800EA450 3C108015 */  lui        $s0, %hi(D_80157600)
    /* F9404 800EA454 26107600 */  addiu      $s0, $s0, %lo(D_80157600)
    /* F9408 800EA458 0C0031BD */  jal        func_8000C6F4_D2F4
    /* F940C 800EA45C AE020404 */   sw        $v0, 0x404($s0)
    /* F9410 800EA460 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* F9414 800EA464 44812000 */  mtc1       $at, $f4
    /* F9418 800EA468 AE020408 */  sw         $v0, 0x408($s0)
    /* F941C 800EA46C 3C018015 */  lui        $at, %hi(D_80157A34)
    /* F9420 800EA470 3C058004 */  lui        $a1, %hi(D_8003BAE0)
    /* F9424 800EA474 E6040410 */  swc1       $f4, 0x410($s0)
    /* F9428 800EA478 AC207A34 */  sw         $zero, %lo(D_80157A34)($at)
    /* F942C 800EA47C 24A5BAE0 */  addiu      $a1, $a1, %lo(D_8003BAE0)
    /* F9430 800EA480 02002025 */  or         $a0, $s0, $zero
    /* F9434 800EA484 0C0031E4 */  jal        func_8000C790_D390
    /* F9438 800EA488 24060010 */   addiu     $a2, $zero, 0x10
    /* F943C 800EA48C 4480A000 */  mtc1       $zero, $f20
    /* F9440 800EA490 240E0027 */  addiu      $t6, $zero, 0x27
    /* F9444 800EA494 AE0E040C */  sw         $t6, 0x40C($s0)
    /* F9448 800EA498 4407A000 */  mfc1       $a3, $f20
    /* F944C 800EA49C 02002025 */  or         $a0, $s0, $zero
    /* F9450 800EA4A0 24050023 */  addiu      $a1, $zero, 0x23
    /* F9454 800EA4A4 0C03AD4D */  jal        func_800EB534_FA4E4
    /* F9458 800EA4A8 24060007 */   addiu     $a2, $zero, 0x7
    /* F945C 800EA4AC 3C014311 */  lui        $at, (0x43110000 >> 16)
    /* F9460 800EA4B0 44813000 */  mtc1       $at, $f6
    /* F9464 800EA4B4 E6140008 */  swc1       $f20, 0x8($s0)
    /* F9468 800EA4B8 E6140010 */  swc1       $f20, 0x10($s0)
    /* F946C 800EA4BC 3C018015 */  lui        $at, %hi(D_801575D0)
    /* F9470 800EA4C0 E606000C */  swc1       $f6, 0xC($s0)
    /* F9474 800EA4C4 AC2075D0 */  sw         $zero, %lo(D_801575D0)($at)
    /* F9478 800EA4C8 3C188004 */  lui        $t8, %hi(D_80047948)
    /* F947C 800EA4CC 87187948 */  lh         $t8, %lo(D_80047948)($t8)
    /* F9480 800EA4D0 3C018015 */  lui        $at, %hi(D_80157A28)
    /* F9484 800EA4D4 240F0001 */  addiu      $t7, $zero, 0x1
    /* F9488 800EA4D8 AC2F7A28 */  sw         $t7, %lo(D_80157A28)($at)
    /* F948C 800EA4DC 3C018015 */  lui        $at, %hi(D_801575DC)
    /* F9490 800EA4E0 AC3875DC */  sw         $t8, %lo(D_801575DC)($at)
    /* F9494 800EA4E4 3C018015 */  lui        $at, %hi(D_80157A38)
    /* F9498 800EA4E8 24190002 */  addiu      $t9, $zero, 0x2
    /* F949C 800EA4EC AC397A38 */  sw         $t9, %lo(D_80157A38)($at)
    /* F94A0 800EA4F0 3C018015 */  lui        $at, %hi(D_80157A3C)
    /* F94A4 800EA4F4 24080040 */  addiu      $t0, $zero, 0x40
    /* F94A8 800EA4F8 0C0031BD */  jal        func_8000C6F4_D2F4
    /* F94AC 800EA4FC A4287A3C */   sh        $t0, %lo(D_80157A3C)($at)
    /* F94B0 800EA500 3C108015 */  lui        $s0, %hi(D_80157A48)
    /* F94B4 800EA504 26107A48 */  addiu      $s0, $s0, %lo(D_80157A48)
    /* F94B8 800EA508 0C0031BD */  jal        func_8000C6F4_D2F4
    /* F94BC 800EA50C AE020404 */   sw        $v0, 0x404($s0)
    /* F94C0 800EA510 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* F94C4 800EA514 44814000 */  mtc1       $at, $f8
    /* F94C8 800EA518 3C058004 */  lui        $a1, %hi(D_8003BAE0)
    /* F94CC 800EA51C AE020408 */  sw         $v0, 0x408($s0)
    /* F94D0 800EA520 24A5BAE0 */  addiu      $a1, $a1, %lo(D_8003BAE0)
    /* F94D4 800EA524 02002025 */  or         $a0, $s0, $zero
    /* F94D8 800EA528 24060010 */  addiu      $a2, $zero, 0x10
    /* F94DC 800EA52C 0C0031E4 */  jal        func_8000C790_D390
    /* F94E0 800EA530 E6080410 */   swc1      $f8, 0x410($s0)
    /* F94E4 800EA534 3C018015 */  lui        $at, %hi(D_80157E70)
    /* F94E8 800EA538 AC207E70 */  sw         $zero, %lo(D_80157E70)($at)
    /* F94EC 800EA53C 3C014311 */  lui        $at, (0x43110000 >> 16)
    /* F94F0 800EA540 44815000 */  mtc1       $at, $f10
    /* F94F4 800EA544 24090027 */  addiu      $t1, $zero, 0x27
    /* F94F8 800EA548 4407A000 */  mfc1       $a3, $f20
    /* F94FC 800EA54C E6140008 */  swc1       $f20, 0x8($s0)
    /* F9500 800EA550 E6140010 */  swc1       $f20, 0x10($s0)
    /* F9504 800EA554 AE09040C */  sw         $t1, 0x40C($s0)
    /* F9508 800EA558 02002025 */  or         $a0, $s0, $zero
    /* F950C 800EA55C 24050023 */  addiu      $a1, $zero, 0x23
    /* F9510 800EA560 24060007 */  addiu      $a2, $zero, 0x7
    /* F9514 800EA564 0C03AD4D */  jal        func_800EB534_FA4E4
    /* F9518 800EA568 E60A000C */   swc1      $f10, 0xC($s0)
    /* F951C 800EA56C 3C028015 */  lui        $v0, %hi(D_801575E0)
    /* F9520 800EA570 244275E0 */  addiu      $v0, $v0, %lo(D_801575E0)
    /* F9524 800EA574 8FBF0024 */  lw         $ra, 0x24($sp)
    /* F9528 800EA578 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* F952C 800EA57C 8FB00020 */  lw         $s0, 0x20($sp)
    /* F9530 800EA580 A4400000 */  sh         $zero, 0x0($v0)
    /* F9534 800EA584 A4400002 */  sh         $zero, 0x2($v0)
    /* F9538 800EA588 A4400004 */  sh         $zero, 0x4($v0)
    /* F953C 800EA58C A4400006 */  sh         $zero, 0x6($v0)
    /* F9540 800EA590 A4400008 */  sh         $zero, 0x8($v0)
    /* F9544 800EA594 A440000A */  sh         $zero, 0xA($v0)
    /* F9548 800EA598 A440000C */  sh         $zero, 0xC($v0)
    /* F954C 800EA59C A440000E */  sh         $zero, 0xE($v0)
    /* F9550 800EA5A0 A4400010 */  sh         $zero, 0x10($v0)
    /* F9554 800EA5A4 A4400012 */  sh         $zero, 0x12($v0)
    /* F9558 800EA5A8 A4400014 */  sh         $zero, 0x14($v0)
    /* F955C 800EA5AC A4400016 */  sh         $zero, 0x16($v0)
    /* F9560 800EA5B0 03E00008 */  jr         $ra
    /* F9564 800EA5B4 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_800EA434_F93E4
