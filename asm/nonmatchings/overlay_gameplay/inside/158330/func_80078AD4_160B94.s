nonmatching func_80078AD4_160B94, 0x294

glabel func_80078AD4_160B94
    /* 160B94 80078AD4 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* 160B98 80078AD8 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* 160B9C 80078ADC 00001025 */  or         $v0, $zero, $zero
    /* 160BA0 80078AE0 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* 160BA4 80078AE4 2DE10005 */  sltiu      $at, $t7, 0x5
    /* 160BA8 80078AE8 1020007B */  beqz       $at, .L80078CD8_160D98
    /* 160BAC 80078AEC 000F7880 */   sll       $t7, $t7, 2
    /* 160BB0 80078AF0 3C01800A */  lui        $at, %hi(jtbl_800A4B5C_overlay_gameplay_inside)
    /* 160BB4 80078AF4 002F0821 */  addu       $at, $at, $t7
    /* 160BB8 80078AF8 8C2F4B5C */  lw         $t7, %lo(jtbl_800A4B5C_overlay_gameplay_inside)($at)
    /* 160BBC 80078AFC 01E00008 */  jr         $t7
    /* 160BC0 80078B00 00000000 */   nop
    /* 160BC4 80078B04 3C18800E */  lui        $t8, %hi(D_800E66A4)
    /* 160BC8 80078B08 8F1866A4 */  lw         $t8, %lo(D_800E66A4)($t8)
    /* 160BCC 80078B0C 24010005 */  addiu      $at, $zero, 0x5
    /* 160BD0 80078B10 17010071 */  bne        $t8, $at, .L80078CD8_160D98
    /* 160BD4 80078B14 00000000 */   nop
    /* 160BD8 80078B18 1000006F */  b          .L80078CD8_160D98
    /* 160BDC 80078B1C 24020001 */   addiu     $v0, $zero, 0x1
    /* 160BE0 80078B20 3C03800E */  lui        $v1, %hi(D_800E66A4)
    /* 160BE4 80078B24 8C6366A4 */  lw         $v1, %lo(D_800E66A4)($v1)
    /* 160BE8 80078B28 3C078005 */  lui        $a3, %hi(D_80052540)
    /* 160BEC 80078B2C 24E72540 */  addiu      $a3, $a3, %lo(D_80052540)
    /* 160BF0 80078B30 1460000F */  bnez       $v1, .L80078B70_160C30
    /* 160BF4 80078B34 00000000 */   nop
    /* 160BF8 80078B38 8CF90000 */  lw         $t9, 0x0($a3)
    /* 160BFC 80078B3C 24080018 */  addiu      $t0, $zero, 0x18
    /* 160C00 80078B40 3C068005 */  lui        $a2, %hi(buildingInstances)
    /* 160C04 80078B44 03280019 */  multu      $t9, $t0
    /* 160C08 80078B48 24C60AD8 */  addiu      $a2, $a2, %lo(buildingInstances)
    /* 160C0C 80078B4C 24010009 */  addiu      $at, $zero, 0x9
    /* 160C10 80078B50 00004812 */  mflo       $t1
    /* 160C14 80078B54 00C95021 */  addu       $t2, $a2, $t1
    /* 160C18 80078B58 8D4B0008 */  lw         $t3, 0x8($t2)
    /* 160C1C 80078B5C 000B6680 */  sll        $t4, $t3, 26
    /* 160C20 80078B60 000C6F02 */  srl        $t5, $t4, 28
    /* 160C24 80078B64 15A10002 */  bne        $t5, $at, .L80078B70_160C30
    /* 160C28 80078B68 00000000 */   nop
    /* 160C2C 80078B6C 24020001 */  addiu      $v0, $zero, 0x1
  .L80078B70_160C30:
    /* 160C30 80078B70 3C068005 */  lui        $a2, %hi(buildingInstances)
    /* 160C34 80078B74 3C078005 */  lui        $a3, %hi(D_80052540)
    /* 160C38 80078B78 24010001 */  addiu      $at, $zero, 0x1
    /* 160C3C 80078B7C 24E72540 */  addiu      $a3, $a3, %lo(D_80052540)
    /* 160C40 80078B80 24C60AD8 */  addiu      $a2, $a2, %lo(buildingInstances)
    /* 160C44 80078B84 1461000C */  bne        $v1, $at, .L80078BB8_160C78
    /* 160C48 80078B88 24080018 */   addiu     $t0, $zero, 0x18
    /* 160C4C 80078B8C 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 160C50 80078B90 24010005 */  addiu      $at, $zero, 0x5
    /* 160C54 80078B94 01C80019 */  multu      $t6, $t0
    /* 160C58 80078B98 00007812 */  mflo       $t7
    /* 160C5C 80078B9C 00CFC021 */  addu       $t8, $a2, $t7
    /* 160C60 80078BA0 8F190008 */  lw         $t9, 0x8($t8)
    /* 160C64 80078BA4 00194E80 */  sll        $t1, $t9, 26
    /* 160C68 80078BA8 00095702 */  srl        $t2, $t1, 28
    /* 160C6C 80078BAC 55410003 */  bnel       $t2, $at, .L80078BBC_160C7C
    /* 160C70 80078BB0 24010005 */   addiu     $at, $zero, 0x5
    /* 160C74 80078BB4 24020001 */  addiu      $v0, $zero, 0x1
  .L80078BB8_160C78:
    /* 160C78 80078BB8 24010005 */  addiu      $at, $zero, 0x5
  .L80078BBC_160C7C:
    /* 160C7C 80078BBC 14610046 */  bne        $v1, $at, .L80078CD8_160D98
    /* 160C80 80078BC0 00000000 */   nop
    /* 160C84 80078BC4 10000044 */  b          .L80078CD8_160D98
    /* 160C88 80078BC8 24020001 */   addiu     $v0, $zero, 0x1
    /* 160C8C 80078BCC 3C0B800E */  lui        $t3, %hi(D_800E66A4)
    /* 160C90 80078BD0 8D6B66A4 */  lw         $t3, %lo(D_800E66A4)($t3)
    /* 160C94 80078BD4 24010005 */  addiu      $at, $zero, 0x5
    /* 160C98 80078BD8 1561003F */  bne        $t3, $at, .L80078CD8_160D98
    /* 160C9C 80078BDC 00000000 */   nop
    /* 160CA0 80078BE0 1000003D */  b          .L80078CD8_160D98
    /* 160CA4 80078BE4 24020001 */   addiu     $v0, $zero, 0x1
    /* 160CA8 80078BE8 3C03800E */  lui        $v1, %hi(D_800E66A4)
    /* 160CAC 80078BEC 8C6366A4 */  lw         $v1, %lo(D_800E66A4)($v1)
    /* 160CB0 80078BF0 3C078005 */  lui        $a3, %hi(D_80052540)
    /* 160CB4 80078BF4 24E72540 */  addiu      $a3, $a3, %lo(D_80052540)
    /* 160CB8 80078BF8 1460000F */  bnez       $v1, .L80078C38_160CF8
    /* 160CBC 80078BFC 00000000 */   nop
    /* 160CC0 80078C00 8CEC0000 */  lw         $t4, 0x0($a3)
    /* 160CC4 80078C04 24080018 */  addiu      $t0, $zero, 0x18
    /* 160CC8 80078C08 3C068005 */  lui        $a2, %hi(buildingInstances)
    /* 160CCC 80078C0C 01880019 */  multu      $t4, $t0
    /* 160CD0 80078C10 24C60AD8 */  addiu      $a2, $a2, %lo(buildingInstances)
    /* 160CD4 80078C14 24010002 */  addiu      $at, $zero, 0x2
    /* 160CD8 80078C18 00006812 */  mflo       $t5
    /* 160CDC 80078C1C 00CD7021 */  addu       $t6, $a2, $t5
    /* 160CE0 80078C20 8DCF0008 */  lw         $t7, 0x8($t6)
    /* 160CE4 80078C24 000FC680 */  sll        $t8, $t7, 26
    /* 160CE8 80078C28 0018CF02 */  srl        $t9, $t8, 28
    /* 160CEC 80078C2C 17210002 */  bne        $t9, $at, .L80078C38_160CF8
    /* 160CF0 80078C30 00000000 */   nop
    /* 160CF4 80078C34 24020001 */  addiu      $v0, $zero, 0x1
  .L80078C38_160CF8:
    /* 160CF8 80078C38 3C068005 */  lui        $a2, %hi(buildingInstances)
    /* 160CFC 80078C3C 3C078005 */  lui        $a3, %hi(D_80052540)
    /* 160D00 80078C40 24010001 */  addiu      $at, $zero, 0x1
    /* 160D04 80078C44 24E72540 */  addiu      $a3, $a3, %lo(D_80052540)
    /* 160D08 80078C48 24C60AD8 */  addiu      $a2, $a2, %lo(buildingInstances)
    /* 160D0C 80078C4C 1461000C */  bne        $v1, $at, .L80078C80_160D40
    /* 160D10 80078C50 24080018 */   addiu     $t0, $zero, 0x18
    /* 160D14 80078C54 8CE90000 */  lw         $t1, 0x0($a3)
    /* 160D18 80078C58 24010008 */  addiu      $at, $zero, 0x8
    /* 160D1C 80078C5C 01280019 */  multu      $t1, $t0
    /* 160D20 80078C60 00005012 */  mflo       $t2
    /* 160D24 80078C64 00CA5821 */  addu       $t3, $a2, $t2
    /* 160D28 80078C68 8D6C0008 */  lw         $t4, 0x8($t3)
    /* 160D2C 80078C6C 000C6E80 */  sll        $t5, $t4, 26
    /* 160D30 80078C70 000D7702 */  srl        $t6, $t5, 28
    /* 160D34 80078C74 55C10003 */  bnel       $t6, $at, .L80078C84_160D44
    /* 160D38 80078C78 24010002 */   addiu     $at, $zero, 0x2
    /* 160D3C 80078C7C 24020001 */  addiu      $v0, $zero, 0x1
  .L80078C80_160D40:
    /* 160D40 80078C80 24010002 */  addiu      $at, $zero, 0x2
  .L80078C84_160D44:
    /* 160D44 80078C84 5461000F */  bnel       $v1, $at, .L80078CC4_160D84
    /* 160D48 80078C88 24010005 */   addiu     $at, $zero, 0x5
    /* 160D4C 80078C8C 8CEF0000 */  lw         $t7, 0x0($a3)
    /* 160D50 80078C90 2401000A */  addiu      $at, $zero, 0xA
    /* 160D54 80078C94 01E80019 */  multu      $t7, $t0
    /* 160D58 80078C98 0000C012 */  mflo       $t8
    /* 160D5C 80078C9C 00D8C821 */  addu       $t9, $a2, $t8
    /* 160D60 80078CA0 8F250008 */  lw         $a1, 0x8($t9)
    /* 160D64 80078CA4 00054E80 */  sll        $t1, $a1, 26
    /* 160D68 80078CA8 00095702 */  srl        $t2, $t1, 28
    /* 160D6C 80078CAC 11410003 */  beq        $t2, $at, .L80078CBC_160D7C
    /* 160D70 80078CB0 24010006 */   addiu     $at, $zero, 0x6
    /* 160D74 80078CB4 55410003 */  bnel       $t2, $at, .L80078CC4_160D84
    /* 160D78 80078CB8 24010005 */   addiu     $at, $zero, 0x5
  .L80078CBC_160D7C:
    /* 160D7C 80078CBC 24020001 */  addiu      $v0, $zero, 0x1
    /* 160D80 80078CC0 24010005 */  addiu      $at, $zero, 0x5
  .L80078CC4_160D84:
    /* 160D84 80078CC4 14610004 */  bne        $v1, $at, .L80078CD8_160D98
    /* 160D88 80078CC8 00000000 */   nop
    /* 160D8C 80078CCC 10000002 */  b          .L80078CD8_160D98
    /* 160D90 80078CD0 24020001 */   addiu     $v0, $zero, 0x1
    /* 160D94 80078CD4 24020001 */  addiu      $v0, $zero, 0x1
  .L80078CD8_160D98:
    /* 160D98 80078CD8 10400012 */  beqz       $v0, .L80078D24_160DE4
    /* 160D9C 80078CDC 3C05800E */   lui       $a1, %hi(D_800E65BC)
    /* 160DA0 80078CE0 3C05800E */  lui        $a1, %hi(D_800E65BC)
    /* 160DA4 80078CE4 24A565BC */  addiu      $a1, $a1, %lo(D_800E65BC)
    /* 160DA8 80078CE8 8CAB0000 */  lw         $t3, 0x0($a1)
    /* 160DAC 80078CEC 000410C0 */  sll        $v0, $a0, 3
    /* 160DB0 80078CF0 00441021 */  addu       $v0, $v0, $a0
    /* 160DB4 80078CF4 000210C0 */  sll        $v0, $v0, 3
    /* 160DB8 80078CF8 01621821 */  addu       $v1, $t3, $v0
    /* 160DBC 80078CFC 8C6C0040 */  lw         $t4, 0x40($v1)
    /* 160DC0 80078D00 2401FFFB */  addiu      $at, $zero, -0x5
    /* 160DC4 80078D04 01816824 */  and        $t5, $t4, $at
    /* 160DC8 80078D08 AC6D0040 */  sw         $t5, 0x40($v1)
    /* 160DCC 80078D0C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 160DD0 80078D10 01C21821 */  addu       $v1, $t6, $v0
    /* 160DD4 80078D14 8C6F0040 */  lw         $t7, 0x40($v1)
    /* 160DD8 80078D18 35F80002 */  ori        $t8, $t7, 0x2
    /* 160DDC 80078D1C 03E00008 */  jr         $ra
    /* 160DE0 80078D20 AC780040 */   sw        $t8, 0x40($v1)
  .L80078D24_160DE4:
    /* 160DE4 80078D24 24A565BC */  addiu      $a1, $a1, %lo(D_800E65BC)
    /* 160DE8 80078D28 8CB90000 */  lw         $t9, 0x0($a1)
    /* 160DEC 80078D2C 000410C0 */  sll        $v0, $a0, 3
    /* 160DF0 80078D30 00441021 */  addu       $v0, $v0, $a0
    /* 160DF4 80078D34 000210C0 */  sll        $v0, $v0, 3
    /* 160DF8 80078D38 03221821 */  addu       $v1, $t9, $v0
    /* 160DFC 80078D3C 8C690040 */  lw         $t1, 0x40($v1)
    /* 160E00 80078D40 2401FFFD */  addiu      $at, $zero, -0x3
    /* 160E04 80078D44 352A0004 */  ori        $t2, $t1, 0x4
    /* 160E08 80078D48 AC6A0040 */  sw         $t2, 0x40($v1)
    /* 160E0C 80078D4C 8CAB0000 */  lw         $t3, 0x0($a1)
    /* 160E10 80078D50 01621821 */  addu       $v1, $t3, $v0
    /* 160E14 80078D54 8C6C0040 */  lw         $t4, 0x40($v1)
    /* 160E18 80078D58 01816824 */  and        $t5, $t4, $at
    /* 160E1C 80078D5C AC6D0040 */  sw         $t5, 0x40($v1)
    /* 160E20 80078D60 03E00008 */  jr         $ra
    /* 160E24 80078D64 00000000 */   nop
endlabel func_80078AD4_160B94
