nonmatching func_80094BE0_A3B90, 0x200

glabel func_80094BE0_A3B90
    /* A3B90 80094BE0 308E00FF */  andi       $t6, $a0, 0xFF
    /* A3B94 80094BE4 000E7880 */  sll        $t7, $t6, 2
    /* A3B98 80094BE8 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* A3B9C 80094BEC 01EE7821 */  addu       $t7, $t7, $t6
    /* A3BA0 80094BF0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* A3BA4 80094BF4 AFB00018 */  sw         $s0, 0x18($sp)
    /* A3BA8 80094BF8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* A3BAC 80094BFC 000F7900 */  sll        $t7, $t7, 4
    /* A3BB0 80094C00 01F88021 */  addu       $s0, $t7, $t8
    /* A3BB4 80094C04 8619000C */  lh         $t9, 0xC($s0)
    /* A3BB8 80094C08 3C098015 */  lui        $t1, %hi(D_8014DD5C)
    /* A3BBC 80094C0C AFBF001C */  sw         $ra, 0x1C($sp)
    /* A3BC0 80094C10 00194100 */  sll        $t0, $t9, 4
    /* A3BC4 80094C14 01284821 */  addu       $t1, $t1, $t0
    /* A3BC8 80094C18 8129DD5C */  lb         $t1, %lo(D_8014DD5C)($t1)
    /* A3BCC 80094C1C AFA40038 */  sw         $a0, 0x38($sp)
    /* A3BD0 80094C20 01C02025 */  or         $a0, $t6, $zero
    /* A3BD4 80094C24 A3AE003B */  sb         $t6, 0x3B($sp)
    /* A3BD8 80094C28 0C0252E0 */  jal        func_80094B80_A3B30
    /* A3BDC 80094C2C A3A90037 */   sb        $t1, 0x37($sp)
    /* A3BE0 80094C30 920A0025 */  lbu        $t2, 0x25($s0)
    /* A3BE4 80094C34 3C0C8005 */  lui        $t4, %hi(D_8004819A)
    /* A3BE8 80094C38 93A4003B */  lbu        $a0, 0x3B($sp)
    /* A3BEC 80094C3C 000A5880 */  sll        $t3, $t2, 2
    /* A3BF0 80094C40 016A5821 */  addu       $t3, $t3, $t2
    /* A3BF4 80094C44 000B5900 */  sll        $t3, $t3, 4
    /* A3BF8 80094C48 018B6021 */  addu       $t4, $t4, $t3
    /* A3BFC 80094C4C 858C819A */  lh         $t4, %lo(D_8004819A)($t4)
    /* A3C00 80094C50 93A50037 */  lbu        $a1, 0x37($sp)
    /* A3C04 80094C54 24064000 */  addiu      $a2, $zero, 0x4000
    /* A3C08 80094C58 0C02178B */  jal        func_80085E2C_94DDC
    /* A3C0C 80094C5C A60C0002 */   sh        $t4, 0x2($s0)
    /* A3C10 80094C60 54400057 */  bnel       $v0, $zero, .L80094DC0_A3D70
    /* A3C14 80094C64 8602001E */   lh        $v0, 0x1E($s0)
    /* A3C18 80094C68 860D001E */  lh         $t5, 0x1E($s0)
    /* A3C1C 80094C6C 3C198015 */  lui        $t9, %hi(D_8014DD50)
    /* A3C20 80094C70 55A00053 */  bnel       $t5, $zero, .L80094DC0_A3D70
    /* A3C24 80094C74 8602001E */   lh        $v0, 0x1E($s0)
    /* A3C28 80094C78 93AF0037 */  lbu        $t7, 0x37($sp)
    /* A3C2C 80094C7C 920E001A */  lbu        $t6, 0x1A($s0)
    /* A3C30 80094C80 2739DD50 */  addiu      $t9, $t9, %lo(D_8014DD50)
    /* A3C34 80094C84 000FC100 */  sll        $t8, $t7, 4
    /* A3C38 80094C88 03191021 */  addu       $v0, $t8, $t9
    /* A3C3C 80094C8C 94440006 */  lhu        $a0, 0x6($v0)
    /* A3C40 80094C90 AFA20028 */  sw         $v0, 0x28($sp)
    /* A3C44 80094C94 0C007660 */  jal        sins
    /* A3C48 80094C98 A3AE0036 */   sb        $t6, 0x36($sp)
    /* A3C4C 80094C9C 44822000 */  mtc1       $v0, $f4
    /* A3C50 80094CA0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* A3C54 80094CA4 44815800 */  mtc1       $at, $f11
    /* A3C58 80094CA8 468021A0 */  cvt.s.w    $f6, $f4
    /* A3C5C 80094CAC 44805000 */  mtc1       $zero, $f10
    /* A3C60 80094CB0 3C014049 */  lui        $at, (0x40490000 >> 16)
    /* A3C64 80094CB4 44819800 */  mtc1       $at, $f19
    /* A3C68 80094CB8 44809000 */  mtc1       $zero, $f18
    /* A3C6C 80094CBC 93A80036 */  lbu        $t0, 0x36($sp)
    /* A3C70 80094CC0 46003221 */  cvt.d.s    $f8, $f6
    /* A3C74 80094CC4 3C0A8025 */  lui        $t2, %hi(alienSpecs)
    /* A3C78 80094CC8 462A4403 */  div.d      $f16, $f8, $f10
    /* A3C7C 80094CCC 00084880 */  sll        $t1, $t0, 2
    /* A3C80 80094CD0 01284823 */  subu       $t1, $t1, $t0
    /* A3C84 80094CD4 00094880 */  sll        $t1, $t1, 2
    /* A3C88 80094CD8 01284821 */  addu       $t1, $t1, $t0
    /* A3C8C 80094CDC 8FAD0028 */  lw         $t5, 0x28($sp)
    /* A3C90 80094CE0 000948C0 */  sll        $t1, $t1, 3
    /* A3C94 80094CE4 254A6680 */  addiu      $t2, $t2, %lo(alienSpecs)
    /* A3C98 80094CE8 012A1821 */  addu       $v1, $t1, $t2
    /* A3C9C 80094CEC 46328102 */  mul.d      $f4, $f16, $f18
    /* A3CA0 80094CF0 4620218D */  trunc.w.d  $f6, $f4
    /* A3CA4 80094CF4 440C3000 */  mfc1       $t4, $f6
    /* A3CA8 80094CF8 00000000 */  nop
    /* A3CAC 80094CFC A46C0020 */  sh         $t4, 0x20($v1)
    /* A3CB0 80094D00 95A40006 */  lhu        $a0, 0x6($t5)
    /* A3CB4 80094D04 0C007654 */  jal        coss
    /* A3CB8 80094D08 AFA30024 */   sw        $v1, 0x24($sp)
    /* A3CBC 80094D0C 44824000 */  mtc1       $v0, $f8
    /* A3CC0 80094D10 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* A3CC4 80094D14 44819800 */  mtc1       $at, $f19
    /* A3CC8 80094D18 468042A0 */  cvt.s.w    $f10, $f8
    /* A3CCC 80094D1C 44809000 */  mtc1       $zero, $f18
    /* A3CD0 80094D20 3C014049 */  lui        $at, (0x40490000 >> 16)
    /* A3CD4 80094D24 44813800 */  mtc1       $at, $f7
    /* A3CD8 80094D28 44803000 */  mtc1       $zero, $f6
    /* A3CDC 80094D2C 8FA30024 */  lw         $v1, 0x24($sp)
    /* A3CE0 80094D30 46005421 */  cvt.d.s    $f16, $f10
    /* A3CE4 80094D34 24040080 */  addiu      $a0, $zero, 0x80
    /* A3CE8 80094D38 46328103 */  div.d      $f4, $f16, $f18
    /* A3CEC 80094D3C 24050018 */  addiu      $a1, $zero, 0x18
    /* A3CF0 80094D40 46262202 */  mul.d      $f8, $f4, $f6
    /* A3CF4 80094D44 4620428D */  trunc.w.d  $f10, $f8
    /* A3CF8 80094D48 440F5000 */  mfc1       $t7, $f10
    /* A3CFC 80094D4C 0C021C36 */  jal        func_800870D8_96088
    /* A3D00 80094D50 A46F0024 */   sh        $t7, 0x24($v1)
    /* A3D04 80094D54 8FB80028 */  lw         $t8, 0x28($sp)
    /* A3D08 80094D58 93A4003B */  lbu        $a0, 0x3B($sp)
    /* A3D0C 80094D5C 00002825 */  or         $a1, $zero, $zero
    /* A3D10 80094D60 97190006 */  lhu        $t9, 0x6($t8)
    /* A3D14 80094D64 00593023 */  subu       $a2, $v0, $t9
    /* A3D18 80094D68 00064400 */  sll        $t0, $a2, 16
    /* A3D1C 80094D6C 0C021A8D */  jal        func_80086A34_959E4
    /* A3D20 80094D70 00083403 */   sra       $a2, $t0, 16
    /* A3D24 80094D74 920A0024 */  lbu        $t2, 0x24($s0)
    /* A3D28 80094D78 24010003 */  addiu      $at, $zero, 0x3
    /* A3D2C 80094D7C 24190014 */  addiu      $t9, $zero, 0x14
    /* A3D30 80094D80 254B0001 */  addiu      $t3, $t2, 0x1
    /* A3D34 80094D84 316C00FF */  andi       $t4, $t3, 0xFF
    /* A3D38 80094D88 1581000B */  bne        $t4, $at, .L80094DB8_A3D68
    /* A3D3C 80094D8C A20B0024 */   sb        $t3, 0x24($s0)
    /* A3D40 80094D90 A2000024 */  sb         $zero, 0x24($s0)
    /* A3D44 80094D94 3C0D8004 */  lui        $t5, %hi(currentLevel)
    /* A3D48 80094D98 8DAD7F90 */  lw         $t5, %lo(currentLevel)($t5)
    /* A3D4C 80094D9C 240F006E */  addiu      $t7, $zero, 0x6E
    /* A3D50 80094DA0 000D7080 */  sll        $t6, $t5, 2
    /* A3D54 80094DA4 01CD7021 */  addu       $t6, $t6, $t5
    /* A3D58 80094DA8 000E7040 */  sll        $t6, $t6, 1
    /* A3D5C 80094DAC 01EEC023 */  subu       $t8, $t7, $t6
    /* A3D60 80094DB0 10000002 */  b          .L80094DBC_A3D6C
    /* A3D64 80094DB4 A618001E */   sh        $t8, 0x1E($s0)
  .L80094DB8_A3D68:
    /* A3D68 80094DB8 A619001E */  sh         $t9, 0x1E($s0)
  .L80094DBC_A3D6C:
    /* A3D6C 80094DBC 8602001E */  lh         $v0, 0x1E($s0)
  .L80094DC0_A3D70:
    /* A3D70 80094DC0 10400002 */  beqz       $v0, .L80094DCC_A3D7C
    /* A3D74 80094DC4 2448FFFF */   addiu     $t0, $v0, -0x1
    /* A3D78 80094DC8 A608001E */  sh         $t0, 0x1E($s0)
  .L80094DCC_A3D7C:
    /* A3D7C 80094DCC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* A3D80 80094DD0 8FB00018 */  lw         $s0, 0x18($sp)
    /* A3D84 80094DD4 27BD0038 */  addiu      $sp, $sp, 0x38
    /* A3D88 80094DD8 03E00008 */  jr         $ra
    /* A3D8C 80094DDC 00000000 */   nop
endlabel func_80094BE0_A3B90
