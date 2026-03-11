nonmatching func_800119F4_125F4, 0x4C

glabel func_800119F4_125F4
    /* 125F4 800119F4 3C030050 */  lui        $v1, %hi(D_500A00)
    /* 125F8 800119F8 3C0F0056 */  lui        $t7, %hi(D_55B0A0)
    /* 125FC 800119FC 24650A00 */  addiu      $a1, $v1, %lo(D_500A00)
    /* 12600 80011A00 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 12604 80011A04 3C028007 */  lui        $v0, %hi(D_8006AA6C)
    /* 12608 80011A08 25EFB0A0 */  addiu      $t7, $t7, %lo(D_55B0A0)
    /* 1260C 80011A0C 2442AA6C */  addiu      $v0, $v0, %lo(D_8006AA6C)
    /* 12610 80011A10 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12614 80011A14 01E53023 */  subu       $a2, $t7, $a1
    /* 12618 80011A18 AFA40020 */  sw         $a0, 0x20($sp)
    /* 1261C 80011A1C AC440000 */  sw         $a0, 0x0($v0)
    /* 12620 80011A20 0C00407C */  jal        func_800101F0_10DF0
    /* 12624 80011A24 AFA6001C */   sw        $a2, 0x1C($sp)
    /* 12628 80011A28 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1262C 80011A2C 8FA6001C */  lw         $a2, 0x1C($sp)
    /* 12630 80011A30 8FB80020 */  lw         $t8, 0x20($sp)
    /* 12634 80011A34 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 12638 80011A38 03E00008 */  jr         $ra
    /* 1263C 80011A3C 00D81021 */   addu      $v0, $a2, $t8
endlabel func_800119F4_125F4
