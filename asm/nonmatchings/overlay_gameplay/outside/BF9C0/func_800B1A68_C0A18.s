nonmatching func_800B1A68_C0A18, 0x8EC

glabel func_800B1A68_C0A18
    /* C0A18 800B1A68 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* C0A1C 800B1A6C 3C0D8015 */  lui        $t5, %hi(D_8014F89C)
    /* C0A20 800B1A70 91ADF89C */  lbu        $t5, %lo(D_8014F89C)($t5)
    /* C0A24 800B1A74 AFB00004 */  sw         $s0, 0x4($sp)
    /* C0A28 800B1A78 3C108015 */  lui        $s0, %hi(D_8014F89D)
    /* C0A2C 800B1A7C 25ADFF81 */  addiu      $t5, $t5, -0x7F
    /* C0A30 800B1A80 000D7400 */  sll        $t6, $t5, 16
    /* C0A34 800B1A84 9210F89D */  lbu        $s0, %lo(D_8014F89D)($s0)
    /* C0A38 800B1A88 AFBE0024 */  sw         $fp, 0x24($sp)
    /* C0A3C 800B1A8C AFB70020 */  sw         $s7, 0x20($sp)
    /* C0A40 800B1A90 AFB6001C */  sw         $s6, 0x1C($sp)
    /* C0A44 800B1A94 AFB50018 */  sw         $s5, 0x18($sp)
    /* C0A48 800B1A98 AFB40014 */  sw         $s4, 0x14($sp)
    /* C0A4C 800B1A9C AFB30010 */  sw         $s3, 0x10($sp)
    /* C0A50 800B1AA0 AFB2000C */  sw         $s2, 0xC($sp)
    /* C0A54 800B1AA4 AFB10008 */  sw         $s1, 0x8($sp)
    /* C0A58 800B1AA8 000E6C03 */  sra        $t5, $t6, 16
    /* C0A5C 800B1AAC 3C0E8015 */  lui        $t6, %hi(D_8014F899)
    /* C0A60 800B1AB0 81CEF899 */  lb         $t6, %lo(D_8014F899)($t6)
    /* C0A64 800B1AB4 3C198015 */  lui        $t9, %hi(D_8014F898)
    /* C0A68 800B1AB8 8339F898 */  lb         $t9, %lo(D_8014F898)($t9)
    /* C0A6C 800B1ABC 84830000 */  lh         $v1, 0x0($a0)
    /* C0A70 800B1AC0 2610FF81 */  addiu      $s0, $s0, -0x7F
    /* C0A74 800B1AC4 848B0002 */  lh         $t3, 0x2($a0)
    /* C0A78 800B1AC8 84AC0000 */  lh         $t4, 0x0($a1)
    /* C0A7C 800B1ACC 84B30002 */  lh         $s3, 0x2($a1)
    /* C0A80 800B1AD0 0010C400 */  sll        $t8, $s0, 16
    /* C0A84 800B1AD4 00188403 */  sra        $s0, $t8, 16
    /* C0A88 800B1AD8 01CD8823 */  subu       $s1, $t6, $t5
    /* C0A8C 800B1ADC 03309023 */  subu       $s2, $t9, $s0
    /* C0A90 800B1AE0 307400FF */  andi       $s4, $v1, 0xFF
    /* C0A94 800B1AE4 00117C00 */  sll        $t7, $s1, 16
    /* C0A98 800B1AE8 00127400 */  sll        $t6, $s2, 16
    /* C0A9C 800B1AEC 2E810081 */  sltiu      $at, $s4, 0x81
    /* C0AA0 800B1AF0 00033A03 */  sra        $a3, $v1, 8
    /* C0AA4 800B1AF4 000B4203 */  sra        $t0, $t3, 8
    /* C0AA8 800B1AF8 000C4A03 */  sra        $t1, $t4, 8
    /* C0AAC 800B1AFC 00135203 */  sra        $t2, $s3, 8
    /* C0AB0 800B1B00 00001025 */  or         $v0, $zero, $zero
    /* C0AB4 800B1B04 000F8C03 */  sra        $s1, $t7, 16
    /* C0AB8 800B1B08 000E9403 */  sra        $s2, $t6, 16
    /* C0ABC 800B1B0C 24E70001 */  addiu      $a3, $a3, 0x1
    /* C0AC0 800B1B10 25080001 */  addiu      $t0, $t0, 0x1
    /* C0AC4 800B1B14 25290001 */  addiu      $t1, $t1, 0x1
    /* C0AC8 800B1B18 254A0001 */  addiu      $t2, $t2, 0x1
    /* C0ACC 800B1B1C 14200002 */  bnez       $at, .L800B1B28_C0AD8
    /* C0AD0 800B1B20 317500FF */   andi      $s5, $t3, 0xFF
    /* C0AD4 800B1B24 24E70001 */  addiu      $a3, $a3, 0x1
  .L800B1B28_C0AD8:
    /* C0AD8 800B1B28 2EA10081 */  sltiu      $at, $s5, 0x81
    /* C0ADC 800B1B2C 14200002 */  bnez       $at, .L800B1B38_C0AE8
    /* C0AE0 800B1B30 319400FF */   andi      $s4, $t4, 0xFF
    /* C0AE4 800B1B34 25080001 */  addiu      $t0, $t0, 0x1
  .L800B1B38_C0AE8:
    /* C0AE8 800B1B38 2E810081 */  sltiu      $at, $s4, 0x81
    /* C0AEC 800B1B3C 14200002 */  bnez       $at, .L800B1B48_C0AF8
    /* C0AF0 800B1B40 327500FF */   andi      $s5, $s3, 0xFF
    /* C0AF4 800B1B44 25290001 */  addiu      $t1, $t1, 0x1
  .L800B1B48_C0AF8:
    /* C0AF8 800B1B48 2EA10081 */  sltiu      $at, $s5, 0x81
    /* C0AFC 800B1B4C 14200002 */  bnez       $at, .L800B1B58_C0B08
    /* C0B00 800B1B50 2416FFFF */   addiu     $s6, $zero, -0x1
    /* C0B04 800B1B54 254A0001 */  addiu      $t2, $t2, 0x1
  .L800B1B58_C0B08:
    /* C0B08 800B1B58 90D80000 */  lbu        $t8, 0x0($a2)
    /* C0B0C 800B1B5C 01271823 */  subu       $v1, $t1, $a3
    /* C0B10 800B1B60 01482023 */  subu       $a0, $t2, $t0
    /* C0B14 800B1B64 0018C883 */  sra        $t9, $t8, 2
    /* C0B18 800B1B68 A3B9006C */  sb         $t9, 0x6C($sp)
    /* C0B1C 800B1B6C 90CE0001 */  lbu        $t6, 0x1($a2)
    /* C0B20 800B1B70 000E7883 */  sra        $t7, $t6, 2
    /* C0B24 800B1B74 A3AF006D */  sb         $t7, 0x6D($sp)
    /* C0B28 800B1B78 90D80002 */  lbu        $t8, 0x2($a2)
    /* C0B2C 800B1B7C 00037600 */  sll        $t6, $v1, 24
    /* C0B30 800B1B80 000E1E03 */  sra        $v1, $t6, 24
    /* C0B34 800B1B84 0018C883 */  sra        $t9, $t8, 2
    /* C0B38 800B1B88 18600002 */  blez       $v1, .L800B1B94_C0B44
    /* C0B3C 800B1B8C A3B9006E */   sb        $t9, 0x6E($sp)
    /* C0B40 800B1B90 24020001 */  addiu      $v0, $zero, 0x1
  .L800B1B94_C0B44:
    /* C0B44 800B1B94 0004C600 */  sll        $t8, $a0, 24
    /* C0B48 800B1B98 00182603 */  sra        $a0, $t8, 24
    /* C0B4C 800B1B9C 04810002 */  bgez       $a0, .L800B1BA8_C0B58
    /* C0B50 800B1BA0 0003A823 */   negu      $s5, $v1
    /* C0B54 800B1BA4 00401027 */  not        $v0, $v0
  .L800B1BA8_C0B58:
    /* C0B58 800B1BA8 10400003 */  beqz       $v0, .L800B1BB8_C0B68
    /* C0B5C 800B1BAC 00157E00 */   sll       $t7, $s5, 24
    /* C0B60 800B1BB0 10000001 */  b          .L800B1BB8_C0B68
    /* C0B64 800B1BB4 24160001 */   addiu     $s6, $zero, 0x1
  .L800B1BB8_C0B68:
    /* C0B68 800B1BB8 04600005 */  bltz       $v1, .L800B1BD0_C0B80
    /* C0B6C 800B1BBC 000FAE03 */   sra       $s5, $t7, 24
    /* C0B70 800B1BC0 0003AE00 */  sll        $s5, $v1, 24
    /* C0B74 800B1BC4 00157603 */  sra        $t6, $s5, 24
    /* C0B78 800B1BC8 10000001 */  b          .L800B1BD0_C0B80
    /* C0B7C 800B1BCC 01C0A825 */   or        $s5, $t6, $zero
  .L800B1BD0_C0B80:
    /* C0B80 800B1BD0 04800005 */  bltz       $a0, .L800B1BE8_C0B98
    /* C0B84 800B1BD4 AFA60078 */   sw        $a2, 0x78($sp)
    /* C0B88 800B1BD8 0004A600 */  sll        $s4, $a0, 24
    /* C0B8C 800B1BDC 0014CE03 */  sra        $t9, $s4, 24
    /* C0B90 800B1BE0 10000004 */  b          .L800B1BF4_C0BA4
    /* C0B94 800B1BE4 0320A025 */   or        $s4, $t9, $zero
  .L800B1BE8_C0B98:
    /* C0B98 800B1BE8 0004A023 */  negu       $s4, $a0
    /* C0B9C 800B1BEC 00147600 */  sll        $t6, $s4, 24
    /* C0BA0 800B1BF0 000EA603 */  sra        $s4, $t6, 24
  .L800B1BF4_C0BA4:
    /* C0BA4 800B1BF4 0295082A */  slt        $at, $s4, $s5
    /* C0BA8 800B1BF8 102000EA */  beqz       $at, .L800B1FA4_C0F54
    /* C0BAC 800B1BFC 00000000 */   nop
    /* C0BB0 800B1C00 1860000B */  blez       $v1, .L800B1C30_C0BE0
    /* C0BB4 800B1C04 000A2600 */   sll       $a0, $t2, 24
    /* C0BB8 800B1C08 00071E00 */  sll        $v1, $a3, 24
    /* C0BBC 800B1C0C 00082600 */  sll        $a0, $t0, 24
    /* C0BC0 800B1C10 00099E00 */  sll        $s3, $t1, 24
    /* C0BC4 800B1C14 0003C603 */  sra        $t8, $v1, 24
    /* C0BC8 800B1C18 0004CE03 */  sra        $t9, $a0, 24
    /* C0BCC 800B1C1C 00137603 */  sra        $t6, $s3, 24
    /* C0BD0 800B1C20 03001825 */  or         $v1, $t8, $zero
    /* C0BD4 800B1C24 03202025 */  or         $a0, $t9, $zero
    /* C0BD8 800B1C28 10000009 */  b          .L800B1C50_C0C00
    /* C0BDC 800B1C2C 01C09825 */   or        $s3, $t6, $zero
  .L800B1C30_C0BE0:
    /* C0BE0 800B1C30 00091E00 */  sll        $v1, $t1, 24
    /* C0BE4 800B1C34 00079E00 */  sll        $s3, $a3, 24
    /* C0BE8 800B1C38 00037E03 */  sra        $t7, $v1, 24
    /* C0BEC 800B1C3C 0004C603 */  sra        $t8, $a0, 24
    /* C0BF0 800B1C40 0013CE03 */  sra        $t9, $s3, 24
    /* C0BF4 800B1C44 01E01825 */  or         $v1, $t7, $zero
    /* C0BF8 800B1C48 03002025 */  or         $a0, $t8, $zero
    /* C0BFC 800B1C4C 03209825 */  or         $s3, $t9, $zero
  .L800B1C50_C0C00:
    /* C0C00 800B1C50 00147040 */  sll        $t6, $s4, 1
    /* C0C04 800B1C54 01D53023 */  subu       $a2, $t6, $s5
    /* C0C08 800B1C58 0006C600 */  sll        $t8, $a2, 24
    /* C0C0C 800B1C5C 0263082A */  slt        $at, $s3, $v1
    /* C0C10 800B1C60 00183603 */  sra        $a2, $t8, 24
    /* C0C14 800B1C64 142001B0 */  bnez       $at, .L800B2328_C12D8
    /* C0C18 800B1C68 AFAE0028 */   sw        $t6, 0x28($sp)
    /* C0C1C 800B1C6C 3C088015 */  lui        $t0, %hi(D_80152740)
    /* C0C20 800B1C70 25082740 */  addiu      $t0, $t0, %lo(D_80152740)
    /* C0C24 800B1C74 93AC006E */  lbu        $t4, 0x6E($sp)
    /* C0C28 800B1C78 93AB006D */  lbu        $t3, 0x6D($sp)
    /* C0C2C 800B1C7C 93AA006C */  lbu        $t2, 0x6C($sp)
    /* C0C30 800B1C80 24090003 */  addiu      $t1, $zero, 0x3
    /* C0C34 800B1C84 24050013 */  addiu      $a1, $zero, 0x13
    /* C0C38 800B1C88 006D082A */  slt        $at, $v1, $t5
  .L800B1C8C_C0C3C:
    /* C0C3C 800B1C8C 142000AF */  bnez       $at, .L800B1F4C_C0EFC
    /* C0C40 800B1C90 25AE0013 */   addiu     $t6, $t5, 0x13
    /* C0C44 800B1C94 000E7C00 */  sll        $t7, $t6, 16
    /* C0C48 800B1C98 000FC403 */  sra        $t8, $t7, 16
    /* C0C4C 800B1C9C 0303082A */  slt        $at, $t8, $v1
    /* C0C50 800B1CA0 142000AA */  bnez       $at, .L800B1F4C_C0EFC
    /* C0C54 800B1CA4 2482FFFF */   addiu     $v0, $a0, -0x1
    /* C0C58 800B1CA8 0050082A */  slt        $at, $v0, $s0
    /* C0C5C 800B1CAC 14200036 */  bnez       $at, .L800B1D88_C0D38
    /* C0C60 800B1CB0 24870001 */   addiu     $a3, $a0, 0x1
    /* C0C64 800B1CB4 26190013 */  addiu      $t9, $s0, 0x13
    /* C0C68 800B1CB8 00197400 */  sll        $t6, $t9, 16
    /* C0C6C 800B1CBC 000E7C03 */  sra        $t7, $t6, 16
    /* C0C70 800B1CC0 01E2082A */  slt        $at, $t7, $v0
    /* C0C74 800B1CC4 14200030 */  bnez       $at, .L800B1D88_C0D38
    /* C0C78 800B1CC8 0244C021 */   addu      $t8, $s2, $a0
    /* C0C7C 800B1CCC 2719FFFF */  addiu      $t9, $t8, -0x1
    /* C0C80 800B1CD0 0325001A */  div        $zero, $t9, $a1
    /* C0C84 800B1CD4 00007010 */  mfhi       $t6
    /* C0C88 800B1CD8 000E7E00 */  sll        $t7, $t6, 24
    /* C0C8C 800B1CDC 000FC603 */  sra        $t8, $t7, 24
    /* C0C90 800B1CE0 02237821 */  addu       $t7, $s1, $v1
    /* C0C94 800B1CE4 01E5001A */  div        $zero, $t7, $a1
    /* C0C98 800B1CE8 14A00002 */  bnez       $a1, .L800B1CF4_C0CA4
    /* C0C9C 800B1CEC 00000000 */   nop
    /* C0CA0 800B1CF0 0007000D */  break      7
  .L800B1CF4_C0CA4:
    /* C0CA4 800B1CF4 2401FFFF */  addiu      $at, $zero, -0x1
    /* C0CA8 800B1CF8 14A10004 */  bne        $a1, $at, .L800B1D0C_C0CBC
    /* C0CAC 800B1CFC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C0CB0 800B1D00 17210002 */  bne        $t9, $at, .L800B1D0C_C0CBC
    /* C0CB4 800B1D04 00000000 */   nop
    /* C0CB8 800B1D08 0006000D */  break      6
  .L800B1D0C_C0CBC:
    /* C0CBC 800B1D0C 0018C8C0 */  sll        $t9, $t8, 3
    /* C0CC0 800B1D10 0338C823 */  subu       $t9, $t9, $t8
    /* C0CC4 800B1D14 0019C8C0 */  sll        $t9, $t9, 3
    /* C0CC8 800B1D18 0338C821 */  addu       $t9, $t9, $t8
    /* C0CCC 800B1D1C 0000C010 */  mfhi       $t8
    /* C0CD0 800B1D20 01197021 */  addu       $t6, $t0, $t9
    /* C0CD4 800B1D24 0018CE00 */  sll        $t9, $t8, 24
    /* C0CD8 800B1D28 14A00002 */  bnez       $a1, .L800B1D34_C0CE4
    /* C0CDC 800B1D2C 00000000 */   nop
    /* C0CE0 800B1D30 0007000D */  break      7
  .L800B1D34_C0CE4:
    /* C0CE4 800B1D34 2401FFFF */  addiu      $at, $zero, -0x1
    /* C0CE8 800B1D38 14A10004 */  bne        $a1, $at, .L800B1D4C_C0CFC
    /* C0CEC 800B1D3C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C0CF0 800B1D40 15E10002 */  bne        $t7, $at, .L800B1D4C_C0CFC
    /* C0CF4 800B1D44 00000000 */   nop
    /* C0CF8 800B1D48 0006000D */  break      6
  .L800B1D4C_C0CFC:
    /* C0CFC 800B1D4C 00197E03 */  sra        $t7, $t9, 24
    /* C0D00 800B1D50 01E90019 */  multu      $t7, $t1
    /* C0D04 800B1D54 0000C012 */  mflo       $t8
    /* C0D08 800B1D58 01D81021 */  addu       $v0, $t6, $t8
    /* C0D0C 800B1D5C 90590000 */  lbu        $t9, 0x0($v0)
    /* C0D10 800B1D60 90580001 */  lbu        $t8, 0x1($v0)
    /* C0D14 800B1D64 01597021 */  addu       $t6, $t2, $t9
    /* C0D18 800B1D68 A04E0000 */  sb         $t6, 0x0($v0)
    /* C0D1C 800B1D6C 904E0002 */  lbu        $t6, 0x2($v0)
    /* C0D20 800B1D70 0178C821 */  addu       $t9, $t3, $t8
    /* C0D24 800B1D74 332F00FF */  andi       $t7, $t9, 0xFF
    /* C0D28 800B1D78 018EC021 */  addu       $t8, $t4, $t6
    /* C0D2C 800B1D7C 331900FF */  andi       $t9, $t8, 0xFF
    /* C0D30 800B1D80 A04F0001 */  sb         $t7, 0x1($v0)
    /* C0D34 800B1D84 A0590002 */  sb         $t9, 0x2($v0)
  .L800B1D88_C0D38:
    /* C0D38 800B1D88 0090082A */  slt        $at, $a0, $s0
    /* C0D3C 800B1D8C 14200038 */  bnez       $at, .L800B1E70_C0E20
    /* C0D40 800B1D90 260F0013 */   addiu     $t7, $s0, 0x13
    /* C0D44 800B1D94 000F7400 */  sll        $t6, $t7, 16
    /* C0D48 800B1D98 000EC403 */  sra        $t8, $t6, 16
    /* C0D4C 800B1D9C 0304082A */  slt        $at, $t8, $a0
    /* C0D50 800B1DA0 14200033 */  bnez       $at, .L800B1E70_C0E20
    /* C0D54 800B1DA4 0244C821 */   addu      $t9, $s2, $a0
    /* C0D58 800B1DA8 0325001A */  div        $zero, $t9, $a1
    /* C0D5C 800B1DAC 00007810 */  mfhi       $t7
    /* C0D60 800B1DB0 000F7600 */  sll        $t6, $t7, 24
    /* C0D64 800B1DB4 000EC603 */  sra        $t8, $t6, 24
    /* C0D68 800B1DB8 02237021 */  addu       $t6, $s1, $v1
    /* C0D6C 800B1DBC 01C5001A */  div        $zero, $t6, $a1
    /* C0D70 800B1DC0 14A00002 */  bnez       $a1, .L800B1DCC_C0D7C
    /* C0D74 800B1DC4 00000000 */   nop
    /* C0D78 800B1DC8 0007000D */  break      7
  .L800B1DCC_C0D7C:
    /* C0D7C 800B1DCC 2401FFFF */  addiu      $at, $zero, -0x1
    /* C0D80 800B1DD0 14A10004 */  bne        $a1, $at, .L800B1DE4_C0D94
    /* C0D84 800B1DD4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C0D88 800B1DD8 17210002 */  bne        $t9, $at, .L800B1DE4_C0D94
    /* C0D8C 800B1DDC 00000000 */   nop
    /* C0D90 800B1DE0 0006000D */  break      6
  .L800B1DE4_C0D94:
    /* C0D94 800B1DE4 0018C8C0 */  sll        $t9, $t8, 3
    /* C0D98 800B1DE8 0338C823 */  subu       $t9, $t9, $t8
    /* C0D9C 800B1DEC 0019C8C0 */  sll        $t9, $t9, 3
    /* C0DA0 800B1DF0 0338C821 */  addu       $t9, $t9, $t8
    /* C0DA4 800B1DF4 0000C010 */  mfhi       $t8
    /* C0DA8 800B1DF8 01197821 */  addu       $t7, $t0, $t9
    /* C0DAC 800B1DFC 0018CE00 */  sll        $t9, $t8, 24
    /* C0DB0 800B1E00 14A00002 */  bnez       $a1, .L800B1E0C_C0DBC
    /* C0DB4 800B1E04 00000000 */   nop
    /* C0DB8 800B1E08 0007000D */  break      7
  .L800B1E0C_C0DBC:
    /* C0DBC 800B1E0C 2401FFFF */  addiu      $at, $zero, -0x1
    /* C0DC0 800B1E10 14A10004 */  bne        $a1, $at, .L800B1E24_C0DD4
    /* C0DC4 800B1E14 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C0DC8 800B1E18 15C10002 */  bne        $t6, $at, .L800B1E24_C0DD4
    /* C0DCC 800B1E1C 00000000 */   nop
    /* C0DD0 800B1E20 0006000D */  break      6
  .L800B1E24_C0DD4:
    /* C0DD4 800B1E24 00197603 */  sra        $t6, $t9, 24
    /* C0DD8 800B1E28 01C90019 */  multu      $t6, $t1
    /* C0DDC 800B1E2C 93B9006C */  lbu        $t9, 0x6C($sp)
    /* C0DE0 800B1E30 93AC006E */  lbu        $t4, 0x6E($sp)
    /* C0DE4 800B1E34 93AB006D */  lbu        $t3, 0x6D($sp)
    /* C0DE8 800B1E38 93AA006C */  lbu        $t2, 0x6C($sp)
    /* C0DEC 800B1E3C 0000C012 */  mflo       $t8
    /* C0DF0 800B1E40 01F81021 */  addu       $v0, $t7, $t8
    /* C0DF4 800B1E44 904E0000 */  lbu        $t6, 0x0($v0)
    /* C0DF8 800B1E48 93AF006E */  lbu        $t7, 0x6E($sp)
    /* C0DFC 800B1E4C 032EC021 */  addu       $t8, $t9, $t6
    /* C0E00 800B1E50 8FB90078 */  lw         $t9, 0x78($sp)
    /* C0E04 800B1E54 A0580000 */  sb         $t8, 0x0($v0)
    /* C0E08 800B1E58 90580002 */  lbu        $t8, 0x2($v0)
    /* C0E0C 800B1E5C 932E0001 */  lbu        $t6, 0x1($t9)
    /* C0E10 800B1E60 01F8C821 */  addu       $t9, $t7, $t8
    /* C0E14 800B1E64 A04E0001 */  sb         $t6, 0x1($v0)
    /* C0E18 800B1E68 332E00FF */  andi       $t6, $t9, 0xFF
    /* C0E1C 800B1E6C A04E0002 */  sb         $t6, 0x2($v0)
  .L800B1E70_C0E20:
    /* C0E20 800B1E70 00F0082A */  slt        $at, $a3, $s0
    /* C0E24 800B1E74 14200035 */  bnez       $at, .L800B1F4C_C0EFC
    /* C0E28 800B1E78 260F0013 */   addiu     $t7, $s0, 0x13
    /* C0E2C 800B1E7C 000FC400 */  sll        $t8, $t7, 16
    /* C0E30 800B1E80 0018CC03 */  sra        $t9, $t8, 16
    /* C0E34 800B1E84 0327082A */  slt        $at, $t9, $a3
    /* C0E38 800B1E88 14200030 */  bnez       $at, .L800B1F4C_C0EFC
    /* C0E3C 800B1E8C 02447021 */   addu      $t6, $s2, $a0
    /* C0E40 800B1E90 25CF0001 */  addiu      $t7, $t6, 0x1
    /* C0E44 800B1E94 01E5001A */  div        $zero, $t7, $a1
    /* C0E48 800B1E98 0000C010 */  mfhi       $t8
    /* C0E4C 800B1E9C 0018CE00 */  sll        $t9, $t8, 24
    /* C0E50 800B1EA0 00197603 */  sra        $t6, $t9, 24
    /* C0E54 800B1EA4 0223C821 */  addu       $t9, $s1, $v1
    /* C0E58 800B1EA8 0325001A */  div        $zero, $t9, $a1
    /* C0E5C 800B1EAC 14A00002 */  bnez       $a1, .L800B1EB8_C0E68
    /* C0E60 800B1EB0 00000000 */   nop
    /* C0E64 800B1EB4 0007000D */  break      7
  .L800B1EB8_C0E68:
    /* C0E68 800B1EB8 2401FFFF */  addiu      $at, $zero, -0x1
    /* C0E6C 800B1EBC 14A10004 */  bne        $a1, $at, .L800B1ED0_C0E80
    /* C0E70 800B1EC0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C0E74 800B1EC4 15E10002 */  bne        $t7, $at, .L800B1ED0_C0E80
    /* C0E78 800B1EC8 00000000 */   nop
    /* C0E7C 800B1ECC 0006000D */  break      6
  .L800B1ED0_C0E80:
    /* C0E80 800B1ED0 000E78C0 */  sll        $t7, $t6, 3
    /* C0E84 800B1ED4 01EE7823 */  subu       $t7, $t7, $t6
    /* C0E88 800B1ED8 000F78C0 */  sll        $t7, $t7, 3
    /* C0E8C 800B1EDC 01EE7821 */  addu       $t7, $t7, $t6
    /* C0E90 800B1EE0 00007010 */  mfhi       $t6
    /* C0E94 800B1EE4 010FC021 */  addu       $t8, $t0, $t7
    /* C0E98 800B1EE8 000E7E00 */  sll        $t7, $t6, 24
    /* C0E9C 800B1EEC 14A00002 */  bnez       $a1, .L800B1EF8_C0EA8
    /* C0EA0 800B1EF0 00000000 */   nop
    /* C0EA4 800B1EF4 0007000D */  break      7
  .L800B1EF8_C0EA8:
    /* C0EA8 800B1EF8 2401FFFF */  addiu      $at, $zero, -0x1
    /* C0EAC 800B1EFC 14A10004 */  bne        $a1, $at, .L800B1F10_C0EC0
    /* C0EB0 800B1F00 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C0EB4 800B1F04 17210002 */  bne        $t9, $at, .L800B1F10_C0EC0
    /* C0EB8 800B1F08 00000000 */   nop
    /* C0EBC 800B1F0C 0006000D */  break      6
  .L800B1F10_C0EC0:
    /* C0EC0 800B1F10 000FCE03 */  sra        $t9, $t7, 24
    /* C0EC4 800B1F14 03290019 */  multu      $t9, $t1
    /* C0EC8 800B1F18 00007012 */  mflo       $t6
    /* C0ECC 800B1F1C 030E1021 */  addu       $v0, $t8, $t6
    /* C0ED0 800B1F20 904F0000 */  lbu        $t7, 0x0($v0)
    /* C0ED4 800B1F24 904E0001 */  lbu        $t6, 0x1($v0)
    /* C0ED8 800B1F28 014FC021 */  addu       $t8, $t2, $t7
    /* C0EDC 800B1F2C A0580000 */  sb         $t8, 0x0($v0)
    /* C0EE0 800B1F30 90580002 */  lbu        $t8, 0x2($v0)
    /* C0EE4 800B1F34 016E7821 */  addu       $t7, $t3, $t6
    /* C0EE8 800B1F38 31F900FF */  andi       $t9, $t7, 0xFF
    /* C0EEC 800B1F3C 01987021 */  addu       $t6, $t4, $t8
    /* C0EF0 800B1F40 31CF00FF */  andi       $t7, $t6, 0xFF
    /* C0EF4 800B1F44 A0590001 */  sb         $t9, 0x1($v0)
    /* C0EF8 800B1F48 A04F0002 */  sb         $t7, 0x2($v0)
  .L800B1F4C_C0EFC:
    /* C0EFC 800B1F4C 24630001 */  addiu      $v1, $v1, 0x1
    /* C0F00 800B1F50 0003CE00 */  sll        $t9, $v1, 24
    /* C0F04 800B1F54 04C0000A */  bltz       $a2, .L800B1F80_C0F30
    /* C0F08 800B1F58 00191E03 */   sra       $v1, $t9, 24
    /* C0F0C 800B1F5C 0295C823 */  subu       $t9, $s4, $s5
    /* C0F10 800B1F60 00197840 */  sll        $t7, $t9, 1
    /* C0F14 800B1F64 00962021 */  addu       $a0, $a0, $s6
    /* C0F18 800B1F68 00CF3021 */  addu       $a2, $a2, $t7
    /* C0F1C 800B1F6C 00047600 */  sll        $t6, $a0, 24
    /* C0F20 800B1F70 0006CE00 */  sll        $t9, $a2, 24
    /* C0F24 800B1F74 000E2603 */  sra        $a0, $t6, 24
    /* C0F28 800B1F78 10000005 */  b          .L800B1F90_C0F40
    /* C0F2C 800B1F7C 00193603 */   sra       $a2, $t9, 24
  .L800B1F80_C0F30:
    /* C0F30 800B1F80 83AE002B */  lb         $t6, 0x2B($sp)
    /* C0F34 800B1F84 00CE3021 */  addu       $a2, $a2, $t6
    /* C0F38 800B1F88 00067E00 */  sll        $t7, $a2, 24
    /* C0F3C 800B1F8C 000F3603 */  sra        $a2, $t7, 24
  .L800B1F90_C0F40:
    /* C0F40 800B1F90 0263082A */  slt        $at, $s3, $v1
    /* C0F44 800B1F94 5020FF3D */  beql       $at, $zero, .L800B1C8C_C0C3C
    /* C0F48 800B1F98 006D082A */   slt       $at, $v1, $t5
    /* C0F4C 800B1F9C 100000E3 */  b          .L800B232C_C12DC
    /* C0F50 800B1FA0 8FB00004 */   lw        $s0, 0x4($sp)
  .L800B1FA4_C0F54:
    /* C0F54 800B1FA4 1880000B */  blez       $a0, .L800B1FD4_C0F84
    /* C0F58 800B1FA8 00091E00 */   sll       $v1, $t1, 24
    /* C0F5C 800B1FAC 00071E00 */  sll        $v1, $a3, 24
    /* C0F60 800B1FB0 00082600 */  sll        $a0, $t0, 24
    /* C0F64 800B1FB4 000A9E00 */  sll        $s3, $t2, 24
    /* C0F68 800B1FB8 0003C603 */  sra        $t8, $v1, 24
    /* C0F6C 800B1FBC 00047603 */  sra        $t6, $a0, 24
    /* C0F70 800B1FC0 00137E03 */  sra        $t7, $s3, 24
    /* C0F74 800B1FC4 03001825 */  or         $v1, $t8, $zero
    /* C0F78 800B1FC8 01C02025 */  or         $a0, $t6, $zero
    /* C0F7C 800B1FCC 10000009 */  b          .L800B1FF4_C0FA4
    /* C0F80 800B1FD0 01E09825 */   or        $s3, $t7, $zero
  .L800B1FD4_C0F84:
    /* C0F84 800B1FD4 000A2600 */  sll        $a0, $t2, 24
    /* C0F88 800B1FD8 00089E00 */  sll        $s3, $t0, 24
    /* C0F8C 800B1FDC 0003CE03 */  sra        $t9, $v1, 24
    /* C0F90 800B1FE0 0004C603 */  sra        $t8, $a0, 24
    /* C0F94 800B1FE4 00137603 */  sra        $t6, $s3, 24
    /* C0F98 800B1FE8 03201825 */  or         $v1, $t9, $zero
    /* C0F9C 800B1FEC 03002025 */  or         $a0, $t8, $zero
    /* C0FA0 800B1FF0 01C09825 */  or         $s3, $t6, $zero
  .L800B1FF4_C0FA4:
    /* C0FA4 800B1FF4 00153840 */  sll        $a3, $s5, 1
    /* C0FA8 800B1FF8 00F43023 */  subu       $a2, $a3, $s4
    /* C0FAC 800B1FFC 00067E00 */  sll        $t7, $a2, 24
    /* C0FB0 800B2000 0264082A */  slt        $at, $s3, $a0
    /* C0FB4 800B2004 142000C8 */  bnez       $at, .L800B2328_C12D8
    /* C0FB8 800B2008 000F3603 */   sra       $a2, $t7, 24
    /* C0FBC 800B200C 3C088015 */  lui        $t0, %hi(D_80152740)
    /* C0FC0 800B2010 25082740 */  addiu      $t0, $t0, %lo(D_80152740)
    /* C0FC4 800B2014 93AC006E */  lbu        $t4, 0x6E($sp)
    /* C0FC8 800B2018 93AB006D */  lbu        $t3, 0x6D($sp)
    /* C0FCC 800B201C 93AA006C */  lbu        $t2, 0x6C($sp)
    /* C0FD0 800B2020 24090003 */  addiu      $t1, $zero, 0x3
    /* C0FD4 800B2024 24050013 */  addiu      $a1, $zero, 0x13
    /* C0FD8 800B2028 0090082A */  slt        $at, $a0, $s0
  .L800B202C_C0FDC:
    /* C0FDC 800B202C 142000AB */  bnez       $at, .L800B22DC_C128C
    /* C0FE0 800B2030 26180013 */   addiu     $t8, $s0, 0x13
    /* C0FE4 800B2034 00187400 */  sll        $t6, $t8, 16
    /* C0FE8 800B2038 000E7C03 */  sra        $t7, $t6, 16
    /* C0FEC 800B203C 01E4082A */  slt        $at, $t7, $a0
    /* C0FF0 800B2040 142000A6 */  bnez       $at, .L800B22DC_C128C
    /* C0FF4 800B2044 247EFFFF */   addiu     $fp, $v1, -0x1
    /* C0FF8 800B2048 03CD082A */  slt        $at, $fp, $t5
    /* C0FFC 800B204C 14200036 */  bnez       $at, .L800B2128_C10D8
    /* C1000 800B2050 24770001 */   addiu     $s7, $v1, 0x1
    /* C1004 800B2054 25B90013 */  addiu      $t9, $t5, 0x13
    /* C1008 800B2058 0019C400 */  sll        $t8, $t9, 16
    /* C100C 800B205C 00187403 */  sra        $t6, $t8, 16
    /* C1010 800B2060 01D7082A */  slt        $at, $t6, $s7
    /* C1014 800B2064 14200030 */  bnez       $at, .L800B2128_C10D8
    /* C1018 800B2068 02447821 */   addu      $t7, $s2, $a0
    /* C101C 800B206C 01E5001A */  div        $zero, $t7, $a1
    /* C1020 800B2070 0000C810 */  mfhi       $t9
    /* C1024 800B2074 0019C600 */  sll        $t8, $t9, 24
    /* C1028 800B2078 14A00002 */  bnez       $a1, .L800B2084_C1034
    /* C102C 800B207C 00000000 */   nop
    /* C1030 800B2080 0007000D */  break      7
  .L800B2084_C1034:
    /* C1034 800B2084 2401FFFF */  addiu      $at, $zero, -0x1
    /* C1038 800B2088 14A10004 */  bne        $a1, $at, .L800B209C_C104C
    /* C103C 800B208C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C1040 800B2090 15E10002 */  bne        $t7, $at, .L800B209C_C104C
    /* C1044 800B2094 00000000 */   nop
    /* C1048 800B2098 0006000D */  break      6
  .L800B209C_C104C:
    /* C104C 800B209C 00187603 */  sra        $t6, $t8, 24
    /* C1050 800B20A0 000E78C0 */  sll        $t7, $t6, 3
    /* C1054 800B20A4 01EE7823 */  subu       $t7, $t7, $t6
    /* C1058 800B20A8 000F78C0 */  sll        $t7, $t7, 3
    /* C105C 800B20AC 01EE7821 */  addu       $t7, $t7, $t6
    /* C1060 800B20B0 0223C021 */  addu       $t8, $s1, $v1
    /* C1064 800B20B4 270EFFFF */  addiu      $t6, $t8, -0x1
    /* C1068 800B20B8 01C5001A */  div        $zero, $t6, $a1
    /* C106C 800B20BC 010FC821 */  addu       $t9, $t0, $t7
    /* C1070 800B20C0 00007810 */  mfhi       $t7
    /* C1074 800B20C4 000FC600 */  sll        $t8, $t7, 24
    /* C1078 800B20C8 14A00002 */  bnez       $a1, .L800B20D4_C1084
    /* C107C 800B20CC 00000000 */   nop
    /* C1080 800B20D0 0007000D */  break      7
  .L800B20D4_C1084:
    /* C1084 800B20D4 2401FFFF */  addiu      $at, $zero, -0x1
    /* C1088 800B20D8 14A10004 */  bne        $a1, $at, .L800B20EC_C109C
    /* C108C 800B20DC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C1090 800B20E0 15C10002 */  bne        $t6, $at, .L800B20EC_C109C
    /* C1094 800B20E4 00000000 */   nop
    /* C1098 800B20E8 0006000D */  break      6
  .L800B20EC_C109C:
    /* C109C 800B20EC 00187603 */  sra        $t6, $t8, 24
    /* C10A0 800B20F0 01C90019 */  multu      $t6, $t1
    /* C10A4 800B20F4 00007812 */  mflo       $t7
    /* C10A8 800B20F8 032F1021 */  addu       $v0, $t9, $t7
    /* C10AC 800B20FC 90580000 */  lbu        $t8, 0x0($v0)
    /* C10B0 800B2100 904F0001 */  lbu        $t7, 0x1($v0)
    /* C10B4 800B2104 0158C821 */  addu       $t9, $t2, $t8
    /* C10B8 800B2108 A0590000 */  sb         $t9, 0x0($v0)
    /* C10BC 800B210C 90590002 */  lbu        $t9, 0x2($v0)
    /* C10C0 800B2110 016FC021 */  addu       $t8, $t3, $t7
    /* C10C4 800B2114 330E00FF */  andi       $t6, $t8, 0xFF
    /* C10C8 800B2118 01997821 */  addu       $t7, $t4, $t9
    /* C10CC 800B211C 31F800FF */  andi       $t8, $t7, 0xFF
    /* C10D0 800B2120 A04E0001 */  sb         $t6, 0x1($v0)
    /* C10D4 800B2124 A0580002 */  sb         $t8, 0x2($v0)
  .L800B2128_C10D8:
    /* C10D8 800B2128 006D082A */  slt        $at, $v1, $t5
    /* C10DC 800B212C 14200034 */  bnez       $at, .L800B2200_C11B0
    /* C10E0 800B2130 25AE0013 */   addiu     $t6, $t5, 0x13
    /* C10E4 800B2134 000ECC00 */  sll        $t9, $t6, 16
    /* C10E8 800B2138 00197C03 */  sra        $t7, $t9, 16
    /* C10EC 800B213C 01E3082A */  slt        $at, $t7, $v1
    /* C10F0 800B2140 1420002F */  bnez       $at, .L800B2200_C11B0
    /* C10F4 800B2144 0244C021 */   addu      $t8, $s2, $a0
    /* C10F8 800B2148 0305001A */  div        $zero, $t8, $a1
    /* C10FC 800B214C 00007010 */  mfhi       $t6
    /* C1100 800B2150 000ECE00 */  sll        $t9, $t6, 24
    /* C1104 800B2154 00197E03 */  sra        $t7, $t9, 24
    /* C1108 800B2158 0223C821 */  addu       $t9, $s1, $v1
    /* C110C 800B215C 0325001A */  div        $zero, $t9, $a1
    /* C1110 800B2160 14A00002 */  bnez       $a1, .L800B216C_C111C
    /* C1114 800B2164 00000000 */   nop
    /* C1118 800B2168 0007000D */  break      7
  .L800B216C_C111C:
    /* C111C 800B216C 2401FFFF */  addiu      $at, $zero, -0x1
    /* C1120 800B2170 14A10004 */  bne        $a1, $at, .L800B2184_C1134
    /* C1124 800B2174 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C1128 800B2178 17010002 */  bne        $t8, $at, .L800B2184_C1134
    /* C112C 800B217C 00000000 */   nop
    /* C1130 800B2180 0006000D */  break      6
  .L800B2184_C1134:
    /* C1134 800B2184 000FC0C0 */  sll        $t8, $t7, 3
    /* C1138 800B2188 030FC023 */  subu       $t8, $t8, $t7
    /* C113C 800B218C 0018C0C0 */  sll        $t8, $t8, 3
    /* C1140 800B2190 030FC021 */  addu       $t8, $t8, $t7
    /* C1144 800B2194 00007810 */  mfhi       $t7
    /* C1148 800B2198 01187021 */  addu       $t6, $t0, $t8
    /* C114C 800B219C 000FC600 */  sll        $t8, $t7, 24
    /* C1150 800B21A0 14A00002 */  bnez       $a1, .L800B21AC_C115C
    /* C1154 800B21A4 00000000 */   nop
    /* C1158 800B21A8 0007000D */  break      7
  .L800B21AC_C115C:
    /* C115C 800B21AC 2401FFFF */  addiu      $at, $zero, -0x1
    /* C1160 800B21B0 14A10004 */  bne        $a1, $at, .L800B21C4_C1174
    /* C1164 800B21B4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C1168 800B21B8 17210002 */  bne        $t9, $at, .L800B21C4_C1174
    /* C116C 800B21BC 00000000 */   nop
    /* C1170 800B21C0 0006000D */  break      6
  .L800B21C4_C1174:
    /* C1174 800B21C4 0018CE03 */  sra        $t9, $t8, 24
    /* C1178 800B21C8 03290019 */  multu      $t9, $t1
    /* C117C 800B21CC 00007812 */  mflo       $t7
    /* C1180 800B21D0 01CF1021 */  addu       $v0, $t6, $t7
    /* C1184 800B21D4 90580000 */  lbu        $t8, 0x0($v0)
    /* C1188 800B21D8 904F0001 */  lbu        $t7, 0x1($v0)
    /* C118C 800B21DC 01587021 */  addu       $t6, $t2, $t8
    /* C1190 800B21E0 A04E0000 */  sb         $t6, 0x0($v0)
    /* C1194 800B21E4 904E0002 */  lbu        $t6, 0x2($v0)
    /* C1198 800B21E8 016FC021 */  addu       $t8, $t3, $t7
    /* C119C 800B21EC 331900FF */  andi       $t9, $t8, 0xFF
    /* C11A0 800B21F0 018E7821 */  addu       $t7, $t4, $t6
    /* C11A4 800B21F4 31F800FF */  andi       $t8, $t7, 0xFF
    /* C11A8 800B21F8 A0590001 */  sb         $t9, 0x1($v0)
    /* C11AC 800B21FC A0580002 */  sb         $t8, 0x2($v0)
  .L800B2200_C11B0:
    /* C11B0 800B2200 02ED082A */  slt        $at, $s7, $t5
    /* C11B4 800B2204 14200035 */  bnez       $at, .L800B22DC_C128C
    /* C11B8 800B2208 25B90013 */   addiu     $t9, $t5, 0x13
    /* C11BC 800B220C 00197400 */  sll        $t6, $t9, 16
    /* C11C0 800B2210 000E7C03 */  sra        $t7, $t6, 16
    /* C11C4 800B2214 01FE082A */  slt        $at, $t7, $fp
    /* C11C8 800B2218 14200030 */  bnez       $at, .L800B22DC_C128C
    /* C11CC 800B221C 0244C021 */   addu      $t8, $s2, $a0
    /* C11D0 800B2220 0305001A */  div        $zero, $t8, $a1
    /* C11D4 800B2224 0000C810 */  mfhi       $t9
    /* C11D8 800B2228 00197600 */  sll        $t6, $t9, 24
    /* C11DC 800B222C 14A00002 */  bnez       $a1, .L800B2238_C11E8
    /* C11E0 800B2230 00000000 */   nop
    /* C11E4 800B2234 0007000D */  break      7
  .L800B2238_C11E8:
    /* C11E8 800B2238 2401FFFF */  addiu      $at, $zero, -0x1
    /* C11EC 800B223C 14A10004 */  bne        $a1, $at, .L800B2250_C1200
    /* C11F0 800B2240 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C11F4 800B2244 17010002 */  bne        $t8, $at, .L800B2250_C1200
    /* C11F8 800B2248 00000000 */   nop
    /* C11FC 800B224C 0006000D */  break      6
  .L800B2250_C1200:
    /* C1200 800B2250 000E7E03 */  sra        $t7, $t6, 24
    /* C1204 800B2254 000FC0C0 */  sll        $t8, $t7, 3
    /* C1208 800B2258 030FC023 */  subu       $t8, $t8, $t7
    /* C120C 800B225C 0018C0C0 */  sll        $t8, $t8, 3
    /* C1210 800B2260 030FC021 */  addu       $t8, $t8, $t7
    /* C1214 800B2264 02237021 */  addu       $t6, $s1, $v1
    /* C1218 800B2268 25CF0001 */  addiu      $t7, $t6, 0x1
    /* C121C 800B226C 01E5001A */  div        $zero, $t7, $a1
    /* C1220 800B2270 0118C821 */  addu       $t9, $t0, $t8
    /* C1224 800B2274 0000C010 */  mfhi       $t8
    /* C1228 800B2278 00187600 */  sll        $t6, $t8, 24
    /* C122C 800B227C 14A00002 */  bnez       $a1, .L800B2288_C1238
    /* C1230 800B2280 00000000 */   nop
    /* C1234 800B2284 0007000D */  break      7
  .L800B2288_C1238:
    /* C1238 800B2288 2401FFFF */  addiu      $at, $zero, -0x1
    /* C123C 800B228C 14A10004 */  bne        $a1, $at, .L800B22A0_C1250
    /* C1240 800B2290 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C1244 800B2294 15E10002 */  bne        $t7, $at, .L800B22A0_C1250
    /* C1248 800B2298 00000000 */   nop
    /* C124C 800B229C 0006000D */  break      6
  .L800B22A0_C1250:
    /* C1250 800B22A0 000E7E03 */  sra        $t7, $t6, 24
    /* C1254 800B22A4 01E90019 */  multu      $t7, $t1
    /* C1258 800B22A8 0000C012 */  mflo       $t8
    /* C125C 800B22AC 03381021 */  addu       $v0, $t9, $t8
    /* C1260 800B22B0 904E0000 */  lbu        $t6, 0x0($v0)
    /* C1264 800B22B4 90580001 */  lbu        $t8, 0x1($v0)
    /* C1268 800B22B8 014EC821 */  addu       $t9, $t2, $t6
    /* C126C 800B22BC A0590000 */  sb         $t9, 0x0($v0)
    /* C1270 800B22C0 90590002 */  lbu        $t9, 0x2($v0)
    /* C1274 800B22C4 01787021 */  addu       $t6, $t3, $t8
    /* C1278 800B22C8 31CF00FF */  andi       $t7, $t6, 0xFF
    /* C127C 800B22CC 0199C021 */  addu       $t8, $t4, $t9
    /* C1280 800B22D0 330E00FF */  andi       $t6, $t8, 0xFF
    /* C1284 800B22D4 A04F0001 */  sb         $t7, 0x1($v0)
    /* C1288 800B22D8 A04E0002 */  sb         $t6, 0x2($v0)
  .L800B22DC_C128C:
    /* C128C 800B22DC 24840001 */  addiu      $a0, $a0, 0x1
    /* C1290 800B22E0 00047E00 */  sll        $t7, $a0, 24
    /* C1294 800B22E4 04C0000A */  bltz       $a2, .L800B2310_C12C0
    /* C1298 800B22E8 000F2603 */   sra       $a0, $t7, 24
    /* C129C 800B22EC 02B47823 */  subu       $t7, $s5, $s4
    /* C12A0 800B22F0 000F7040 */  sll        $t6, $t7, 1
    /* C12A4 800B22F4 00761821 */  addu       $v1, $v1, $s6
    /* C12A8 800B22F8 00CE3021 */  addu       $a2, $a2, $t6
    /* C12AC 800B22FC 0003C600 */  sll        $t8, $v1, 24
    /* C12B0 800B2300 00067E00 */  sll        $t7, $a2, 24
    /* C12B4 800B2304 00181E03 */  sra        $v1, $t8, 24
    /* C12B8 800B2308 10000004 */  b          .L800B231C_C12CC
    /* C12BC 800B230C 000F3603 */   sra       $a2, $t7, 24
  .L800B2310_C12C0:
    /* C12C0 800B2310 00C73021 */  addu       $a2, $a2, $a3
    /* C12C4 800B2314 00067E00 */  sll        $t7, $a2, 24
    /* C12C8 800B2318 000F3603 */  sra        $a2, $t7, 24
  .L800B231C_C12CC:
    /* C12CC 800B231C 0264082A */  slt        $at, $s3, $a0
    /* C12D0 800B2320 5020FF42 */  beql       $at, $zero, .L800B202C_C0FDC
    /* C12D4 800B2324 0090082A */   slt       $at, $a0, $s0
  .L800B2328_C12D8:
    /* C12D8 800B2328 8FB00004 */  lw         $s0, 0x4($sp)
  .L800B232C_C12DC:
    /* C12DC 800B232C 8FB10008 */  lw         $s1, 0x8($sp)
    /* C12E0 800B2330 8FB2000C */  lw         $s2, 0xC($sp)
    /* C12E4 800B2334 8FB30010 */  lw         $s3, 0x10($sp)
    /* C12E8 800B2338 8FB40014 */  lw         $s4, 0x14($sp)
    /* C12EC 800B233C 8FB50018 */  lw         $s5, 0x18($sp)
    /* C12F0 800B2340 8FB6001C */  lw         $s6, 0x1C($sp)
    /* C12F4 800B2344 8FB70020 */  lw         $s7, 0x20($sp)
    /* C12F8 800B2348 8FBE0024 */  lw         $fp, 0x24($sp)
    /* C12FC 800B234C 03E00008 */  jr         $ra
    /* C1300 800B2350 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_800B1A68_C0A18
