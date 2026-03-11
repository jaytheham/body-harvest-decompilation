nonmatching func_800E6A38_F59E8, 0x7C0

glabel func_800E6A38_F59E8
    /* F59E8 800E6A38 27BDFED8 */  addiu      $sp, $sp, -0x128
    /* F59EC 800E6A3C 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* F59F0 800E6A40 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* F59F4 800E6A44 24010001 */  addiu      $at, $zero, 0x1
    /* F59F8 800E6A48 AFBF004C */  sw         $ra, 0x4C($sp)
    /* F59FC 800E6A4C AFBE0048 */  sw         $fp, 0x48($sp)
    /* F5A00 800E6A50 AFB70044 */  sw         $s7, 0x44($sp)
    /* F5A04 800E6A54 AFB60040 */  sw         $s6, 0x40($sp)
    /* F5A08 800E6A58 AFB5003C */  sw         $s5, 0x3C($sp)
    /* F5A0C 800E6A5C AFB40038 */  sw         $s4, 0x38($sp)
    /* F5A10 800E6A60 AFB30034 */  sw         $s3, 0x34($sp)
    /* F5A14 800E6A64 AFB20030 */  sw         $s2, 0x30($sp)
    /* F5A18 800E6A68 AFB1002C */  sw         $s1, 0x2C($sp)
    /* F5A1C 800E6A6C AFB00028 */  sw         $s0, 0x28($sp)
    /* F5A20 800E6A70 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* F5A24 800E6A74 15C101D2 */  bne        $t6, $at, .L800E71C0_F6170
    /* F5A28 800E6A78 F7B40018 */   sdc1      $f20, 0x18($sp)
    /* F5A2C 800E6A7C 3C0F8005 */  lui        $t7, %hi(D_80052ACA)
    /* F5A30 800E6A80 91EF2ACA */  lbu        $t7, %lo(D_80052ACA)($t7)
    /* F5A34 800E6A84 24010002 */  addiu      $at, $zero, 0x2
    /* F5A38 800E6A88 3C1E8006 */  lui        $fp, %hi(D_8005BB2C)
    /* F5A3C 800E6A8C 11E101CC */  beq        $t7, $at, .L800E71C0_F6170
    /* F5A40 800E6A90 27DEBB2C */   addiu     $fp, $fp, %lo(D_8005BB2C)
    /* F5A44 800E6A94 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5A48 800E6A98 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* F5A4C 800E6A9C 3C0FE800 */  lui        $t7, (0xE8000000 >> 16)
    /* F5A50 800E6AA0 24D80008 */  addiu      $t8, $a2, 0x8
    /* F5A54 800E6AA4 AFD80000 */  sw         $t8, 0x0($fp)
    /* F5A58 800E6AA8 ACC00004 */  sw         $zero, 0x4($a2)
    /* F5A5C 800E6AAC ACD90000 */  sw         $t9, 0x0($a2)
    /* F5A60 800E6AB0 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5A64 800E6AB4 3C0DE600 */  lui        $t5, (0xE6000000 >> 16)
    /* F5A68 800E6AB8 3C1F0700 */  lui        $ra, (0x7000000 >> 16)
    /* F5A6C 800E6ABC 24CE0008 */  addiu      $t6, $a2, 0x8
    /* F5A70 800E6AC0 AFCE0000 */  sw         $t6, 0x0($fp)
    /* F5A74 800E6AC4 ACC00004 */  sw         $zero, 0x4($a2)
    /* F5A78 800E6AC8 ACCF0000 */  sw         $t7, 0x0($a2)
    /* F5A7C 800E6ACC 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5A80 800E6AD0 3C0EBA00 */  lui        $t6, (0xBA001402 >> 16)
    /* F5A84 800E6AD4 35CE1402 */  ori        $t6, $t6, (0xBA001402 & 0xFFFF)
    /* F5A88 800E6AD8 24D80008 */  addiu      $t8, $a2, 0x8
    /* F5A8C 800E6ADC AFD80000 */  sw         $t8, 0x0($fp)
    /* F5A90 800E6AE0 ACC00004 */  sw         $zero, 0x4($a2)
    /* F5A94 800E6AE4 ACCD0000 */  sw         $t5, 0x0($a2)
    /* F5A98 800E6AE8 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5A9C 800E6AEC 3C18BB00 */  lui        $t8, (0xBB000001 >> 16)
    /* F5AA0 800E6AF0 37180001 */  ori        $t8, $t8, (0xBB000001 & 0xFFFF)
    /* F5AA4 800E6AF4 24D90008 */  addiu      $t9, $a2, 0x8
    /* F5AA8 800E6AF8 AFD90000 */  sw         $t9, 0x0($fp)
    /* F5AAC 800E6AFC ACC00004 */  sw         $zero, 0x4($a2)
    /* F5AB0 800E6B00 ACCE0000 */  sw         $t6, 0x0($a2)
    /* F5AB4 800E6B04 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5AB8 800E6B08 3C198000 */  lui        $t9, (0x80008000 >> 16)
    /* F5ABC 800E6B0C 37398000 */  ori        $t9, $t9, (0x80008000 & 0xFFFF)
    /* F5AC0 800E6B10 24CF0008 */  addiu      $t7, $a2, 0x8
    /* F5AC4 800E6B14 AFCF0000 */  sw         $t7, 0x0($fp)
    /* F5AC8 800E6B18 ACD90004 */  sw         $t9, 0x4($a2)
    /* F5ACC 800E6B1C ACD80000 */  sw         $t8, 0x0($a2)
    /* F5AD0 800E6B20 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5AD4 800E6B24 24183000 */  addiu      $t8, $zero, 0x3000
    /* F5AD8 800E6B28 3C0FB600 */  lui        $t7, (0xB6000000 >> 16)
    /* F5ADC 800E6B2C 24CE0008 */  addiu      $t6, $a2, 0x8
    /* F5AE0 800E6B30 AFCE0000 */  sw         $t6, 0x0($fp)
    /* F5AE4 800E6B34 ACD80004 */  sw         $t8, 0x4($a2)
    /* F5AE8 800E6B38 ACCF0000 */  sw         $t7, 0x0($a2)
    /* F5AEC 800E6B3C 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5AF0 800E6B40 3C0F0002 */  lui        $t7, (0x20001 >> 16)
    /* F5AF4 800E6B44 35EF0001 */  ori        $t7, $t7, (0x20001 & 0xFFFF)
    /* F5AF8 800E6B48 24D90008 */  addiu      $t9, $a2, 0x8
    /* F5AFC 800E6B4C AFD90000 */  sw         $t9, 0x0($fp)
    /* F5B00 800E6B50 3C0EB700 */  lui        $t6, (0xB7000000 >> 16)
    /* F5B04 800E6B54 ACCE0000 */  sw         $t6, 0x0($a2)
    /* F5B08 800E6B58 ACCF0004 */  sw         $t7, 0x4($a2)
    /* F5B0C 800E6B5C 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5B10 800E6B60 3C0EFFFC */  lui        $t6, (0xFFFCF279 >> 16)
    /* F5B14 800E6B64 3C19FCFF */  lui        $t9, (0xFCFFFFFF >> 16)
    /* F5B18 800E6B68 24D80008 */  addiu      $t8, $a2, 0x8
    /* F5B1C 800E6B6C AFD80000 */  sw         $t8, 0x0($fp)
    /* F5B20 800E6B70 3739FFFF */  ori        $t9, $t9, (0xFCFFFFFF & 0xFFFF)
    /* F5B24 800E6B74 35CEF279 */  ori        $t6, $t6, (0xFFFCF279 & 0xFFFF)
    /* F5B28 800E6B78 ACCE0004 */  sw         $t6, 0x4($a2)
    /* F5B2C 800E6B7C ACD90000 */  sw         $t9, 0x0($a2)
    /* F5B30 800E6B80 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5B34 800E6B84 3C190050 */  lui        $t9, (0x5049D8 >> 16)
    /* F5B38 800E6B88 3C18B900 */  lui        $t8, (0xB900031D >> 16)
    /* F5B3C 800E6B8C 24CF0008 */  addiu      $t7, $a2, 0x8
    /* F5B40 800E6B90 AFCF0000 */  sw         $t7, 0x0($fp)
    /* F5B44 800E6B94 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
    /* F5B48 800E6B98 373949D8 */  ori        $t9, $t9, (0x5049D8 & 0xFFFF)
    /* F5B4C 800E6B9C ACD90004 */  sw         $t9, 0x4($a2)
    /* F5B50 800E6BA0 ACD80000 */  sw         $t8, 0x0($a2)
    /* F5B54 800E6BA4 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5B58 800E6BA8 3C180504 */  lui        $t8, %hi(D_5039AB0)
    /* F5B5C 800E6BAC 27189AB0 */  addiu      $t8, $t8, %lo(D_5039AB0)
    /* F5B60 800E6BB0 24CE0008 */  addiu      $t6, $a2, 0x8
    /* F5B64 800E6BB4 AFCE0000 */  sw         $t6, 0x0($fp)
    /* F5B68 800E6BB8 3C0FFD50 */  lui        $t7, (0xFD500000 >> 16)
    /* F5B6C 800E6BBC ACCF0000 */  sw         $t7, 0x0($a2)
    /* F5B70 800E6BC0 ACD80004 */  sw         $t8, 0x4($a2)
    /* F5B74 800E6BC4 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5B78 800E6BC8 3C0EF550 */  lui        $t6, (0xF5500000 >> 16)
    /* F5B7C 800E6BCC 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
    /* F5B80 800E6BD0 24D90008 */  addiu      $t9, $a2, 0x8
    /* F5B84 800E6BD4 AFD90000 */  sw         $t9, 0x0($fp)
    /* F5B88 800E6BD8 ACDF0004 */  sw         $ra, 0x4($a2)
    /* F5B8C 800E6BDC ACCE0000 */  sw         $t6, 0x0($a2)
    /* F5B90 800E6BE0 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5B94 800E6BE4 3C0E071F */  lui        $t6, (0x71FF200 >> 16)
    /* F5B98 800E6BE8 35CEF200 */  ori        $t6, $t6, (0x71FF200 & 0xFFFF)
    /* F5B9C 800E6BEC 24CF0008 */  addiu      $t7, $a2, 0x8
    /* F5BA0 800E6BF0 AFCF0000 */  sw         $t7, 0x0($fp)
    /* F5BA4 800E6BF4 ACC00004 */  sw         $zero, 0x4($a2)
    /* F5BA8 800E6BF8 ACCD0000 */  sw         $t5, 0x0($a2)
    /* F5BAC 800E6BFC 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5BB0 800E6C00 3C19F300 */  lui        $t9, (0xF3000000 >> 16)
    /* F5BB4 800E6C04 24030004 */  addiu      $v1, $zero, 0x4
    /* F5BB8 800E6C08 24D80008 */  addiu      $t8, $a2, 0x8
    /* F5BBC 800E6C0C AFD80000 */  sw         $t8, 0x0($fp)
    /* F5BC0 800E6C10 ACCE0004 */  sw         $t6, 0x4($a2)
    /* F5BC4 800E6C14 ACD90000 */  sw         $t9, 0x0($a2)
    /* F5BC8 800E6C18 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5BCC 800E6C1C 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* F5BD0 800E6C20 3C0EF540 */  lui        $t6, (0xF5400800 >> 16)
    /* F5BD4 800E6C24 24CF0008 */  addiu      $t7, $a2, 0x8
    /* F5BD8 800E6C28 AFCF0000 */  sw         $t7, 0x0($fp)
    /* F5BDC 800E6C2C ACC00004 */  sw         $zero, 0x4($a2)
    /* F5BE0 800E6C30 ACD80000 */  sw         $t8, 0x0($a2)
    /* F5BE4 800E6C34 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5BE8 800E6C38 35CE0800 */  ori        $t6, $t6, (0xF5400800 & 0xFFFF)
    /* F5BEC 800E6C3C 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* F5BF0 800E6C40 24D90008 */  addiu      $t9, $a2, 0x8
    /* F5BF4 800E6C44 AFD90000 */  sw         $t9, 0x0($fp)
    /* F5BF8 800E6C48 ACC00004 */  sw         $zero, 0x4($a2)
    /* F5BFC 800E6C4C ACCE0000 */  sw         $t6, 0x0($a2)
    /* F5C00 800E6C50 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5C04 800E6C54 3C19000F */  lui        $t9, (0xFC07C >> 16)
    /* F5C08 800E6C58 3739C07C */  ori        $t9, $t9, (0xFC07C & 0xFFFF)
    /* F5C0C 800E6C5C 24CF0008 */  addiu      $t7, $a2, 0x8
    /* F5C10 800E6C60 AFCF0000 */  sw         $t7, 0x0($fp)
    /* F5C14 800E6C64 ACD90004 */  sw         $t9, 0x4($a2)
    /* F5C18 800E6C68 ACD80000 */  sw         $t8, 0x0($a2)
    /* F5C1C 800E6C6C 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5C20 800E6C70 3C180504 */  lui        $t8, %hi(D_5039EB0)
    /* F5C24 800E6C74 27189EB0 */  addiu      $t8, $t8, %lo(D_5039EB0)
    /* F5C28 800E6C78 24CE0008 */  addiu      $t6, $a2, 0x8
    /* F5C2C 800E6C7C AFCE0000 */  sw         $t6, 0x0($fp)
    /* F5C30 800E6C80 3C0FFD10 */  lui        $t7, (0xFD100000 >> 16)
    /* F5C34 800E6C84 ACCF0000 */  sw         $t7, 0x0($a2)
    /* F5C38 800E6C88 ACD80004 */  sw         $t8, 0x4($a2)
    /* F5C3C 800E6C8C 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5C40 800E6C90 3C0EE800 */  lui        $t6, (0xE8000000 >> 16)
    /* F5C44 800E6C94 3C18F500 */  lui        $t8, (0xF5000100 >> 16)
    /* F5C48 800E6C98 24D90008 */  addiu      $t9, $a2, 0x8
    /* F5C4C 800E6C9C AFD90000 */  sw         $t9, 0x0($fp)
    /* F5C50 800E6CA0 ACC00004 */  sw         $zero, 0x4($a2)
    /* F5C54 800E6CA4 ACCE0000 */  sw         $t6, 0x0($a2)
    /* F5C58 800E6CA8 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5C5C 800E6CAC 37180100 */  ori        $t8, $t8, (0xF5000100 & 0xFFFF)
    /* F5C60 800E6CB0 3C028015 */  lui        $v0, %hi(D_801538C4)
    /* F5C64 800E6CB4 24CF0008 */  addiu      $t7, $a2, 0x8
    /* F5C68 800E6CB8 AFCF0000 */  sw         $t7, 0x0($fp)
    /* F5C6C 800E6CBC ACDF0004 */  sw         $ra, 0x4($a2)
    /* F5C70 800E6CC0 ACD80000 */  sw         $t8, 0x0($a2)
    /* F5C74 800E6CC4 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5C78 800E6CC8 3C180703 */  lui        $t8, (0x703C000 >> 16)
    /* F5C7C 800E6CCC 3718C000 */  ori        $t8, $t8, (0x703C000 & 0xFFFF)
    /* F5C80 800E6CD0 24D90008 */  addiu      $t9, $a2, 0x8
    /* F5C84 800E6CD4 AFD90000 */  sw         $t9, 0x0($fp)
    /* F5C88 800E6CD8 ACC00004 */  sw         $zero, 0x4($a2)
    /* F5C8C 800E6CDC ACCD0000 */  sw         $t5, 0x0($a2)
    /* F5C90 800E6CE0 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5C94 800E6CE4 3C0FF000 */  lui        $t7, (0xF0000000 >> 16)
    /* F5C98 800E6CE8 244238C4 */  addiu      $v0, $v0, %lo(D_801538C4)
    /* F5C9C 800E6CEC 24CE0008 */  addiu      $t6, $a2, 0x8
    /* F5CA0 800E6CF0 AFCE0000 */  sw         $t6, 0x0($fp)
    /* F5CA4 800E6CF4 ACD80004 */  sw         $t8, 0x4($a2)
    /* F5CA8 800E6CF8 ACCF0000 */  sw         $t7, 0x0($a2)
    /* F5CAC 800E6CFC 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5CB0 800E6D00 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
    /* F5CB4 800E6D04 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
    /* F5CB8 800E6D08 24D90008 */  addiu      $t9, $a2, 0x8
    /* F5CBC 800E6D0C AFD90000 */  sw         $t9, 0x0($fp)
    /* F5CC0 800E6D10 ACC00004 */  sw         $zero, 0x4($a2)
    /* F5CC4 800E6D14 ACCA0000 */  sw         $t2, 0x0($a2)
    /* F5CC8 800E6D18 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5CCC 800E6D1C 34188000 */  ori        $t8, $zero, 0x8000
    /* F5CD0 800E6D20 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F5CD4 800E6D24 24CE0008 */  addiu      $t6, $a2, 0x8
    /* F5CD8 800E6D28 AFCE0000 */  sw         $t6, 0x0($fp)
    /* F5CDC 800E6D2C ACD80004 */  sw         $t8, 0x4($a2)
    /* F5CE0 800E6D30 ACCF0000 */  sw         $t7, 0x0($a2)
    /* F5CE4 800E6D34 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5CE8 800E6D38 3C0FE800 */  lui        $t7, (0xE8000000 >> 16)
    /* F5CEC 800E6D3C 3C108006 */  lui        $s0, %hi(D_8005BB34)
    /* F5CF0 800E6D40 24D90008 */  addiu      $t9, $a2, 0x8
    /* F5CF4 800E6D44 AFD90000 */  sw         $t9, 0x0($fp)
    /* F5CF8 800E6D48 ACC00004 */  sw         $zero, 0x4($a2)
    /* F5CFC 800E6D4C ACCA0000 */  sw         $t2, 0x0($a2)
    /* F5D00 800E6D50 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5D04 800E6D54 24190003 */  addiu      $t9, $zero, 0x3
    /* F5D08 800E6D58 24CE0008 */  addiu      $t6, $a2, 0x8
    /* F5D0C 800E6D5C AFCE0000 */  sw         $t6, 0x0($fp)
    /* F5D10 800E6D60 ACC00004 */  sw         $zero, 0x4($a2)
    /* F5D14 800E6D64 ACCF0000 */  sw         $t7, 0x0($a2)
    /* F5D18 800E6D68 8FC60000 */  lw         $a2, 0x0($fp)
    /* F5D1C 800E6D6C 24D80008 */  addiu      $t8, $a2, 0x8
    /* F5D20 800E6D70 AFD80000 */  sw         $t8, 0x0($fp)
    /* F5D24 800E6D74 ACC00004 */  sw         $zero, 0x4($a2)
    /* F5D28 800E6D78 ACCD0000 */  sw         $t5, 0x0($a2)
    /* F5D2C 800E6D7C 106000E5 */  beqz       $v1, .L800E7114_F60C4
    /* F5D30 800E6D80 AFB90124 */   sw        $t9, 0x124($sp)
    /* F5D34 800E6D84 4481B800 */  mtc1       $at, $f23
    /* F5D38 800E6D88 4480B000 */  mtc1       $zero, $f22
    /* F5D3C 800E6D8C 2610BB34 */  addiu      $s0, $s0, %lo(D_8005BB34)
  .L800E6D90_F5D40:
    /* F5D40 800E6D90 844B01E6 */  lh         $t3, 0x1E6($v0)
    /* F5D44 800E6D94 116000D9 */  beqz       $t3, .L800E70FC_F60AC
    /* F5D48 800E6D98 01601825 */   or        $v1, $t3, $zero
    /* F5D4C 800E6D9C 116000D7 */  beqz       $t3, .L800E70FC_F60AC
    /* F5D50 800E6DA0 256BFFFF */   addiu     $t3, $t3, -0x1
    /* F5D54 800E6DA4 000B70C0 */  sll        $t6, $t3, 3
    /* F5D58 800E6DA8 01CB7023 */  subu       $t6, $t6, $t3
    /* F5D5C 800E6DAC 000E7080 */  sll        $t6, $t6, 2
    /* F5D60 800E6DB0 004E8821 */  addu       $s1, $v0, $t6
    /* F5D64 800E6DB4 AFA20054 */  sw         $v0, 0x54($sp)
  .L800E6DB8_F5D68:
    /* F5D68 800E6DB8 8E330000 */  lw         $s3, 0x0($s1)
    /* F5D6C 800E6DBC 862E0018 */  lh         $t6, 0x18($s1)
    /* F5D70 800E6DC0 8E390004 */  lw         $t9, 0x4($s1)
    /* F5D74 800E6DC4 00137A03 */  sra        $t7, $s3, 8
    /* F5D78 800E6DC8 000FC400 */  sll        $t8, $t7, 16
    /* F5D7C 800E6DCC 00189C03 */  sra        $s3, $t8, 16
    /* F5D80 800E6DD0 3C188014 */  lui        $t8, %hi(D_8013DF00)
    /* F5D84 800E6DD4 000E7880 */  sll        $t7, $t6, 2
    /* F5D88 800E6DD8 030FC021 */  addu       $t8, $t8, $t7
    /* F5D8C 800E6DDC 8F18DF00 */  lw         $t8, %lo(D_8013DF00)($t8)
    /* F5D90 800E6DE0 8E340008 */  lw         $s4, 0x8($s1)
    /* F5D94 800E6DE4 0319B821 */  addu       $s7, $t8, $t9
    /* F5D98 800E6DE8 00177203 */  sra        $t6, $s7, 8
    /* F5D9C 800E6DEC 000E7C00 */  sll        $t7, $t6, 16
    /* F5DA0 800E6DF0 0014CA03 */  sra        $t9, $s4, 8
    /* F5DA4 800E6DF4 00197400 */  sll        $t6, $t9, 16
    /* F5DA8 800E6DF8 8E39000C */  lw         $t9, 0xC($s1)
    /* F5DAC 800E6DFC 8E380014 */  lw         $t8, 0x14($s1)
    /* F5DB0 800E6E00 000FBC03 */  sra        $s7, $t7, 16
    /* F5DB4 800E6E04 44993000 */  mtc1       $t9, $f6
    /* F5DB8 800E6E08 44982000 */  mtc1       $t8, $f4
    /* F5DBC 800E6E0C 000EA403 */  sra        $s4, $t6, 16
    /* F5DC0 800E6E10 AFAB010C */  sw         $t3, 0x10C($sp)
    /* F5DC4 800E6E14 468033A0 */  cvt.s.w    $f14, $f6
    /* F5DC8 800E6E18 0C000E09 */  jal        func_80003824_4424
    /* F5DCC 800E6E1C 46802320 */   cvt.s.w   $f12, $f4
    /* F5DD0 800E6E20 86230018 */  lh         $v1, 0x18($s1)
    /* F5DD4 800E6E24 00022C00 */  sll        $a1, $v0, 16
    /* F5DD8 800E6E28 00057403 */  sra        $t6, $a1, 16
    /* F5DDC 800E6E2C 2861001B */  slti       $at, $v1, 0x1B
    /* F5DE0 800E6E30 01C02825 */  or         $a1, $t6, $zero
    /* F5DE4 800E6E34 10200004 */  beqz       $at, .L800E6E48_F5DF8
    /* F5DE8 800E6E38 8FAB010C */   lw        $t3, 0x10C($sp)
    /* F5DEC 800E6E3C 2861000B */  slti       $at, $v1, 0xB
    /* F5DF0 800E6E40 10200009 */  beqz       $at, .L800E6E68_F5E18
    /* F5DF4 800E6E44 24120002 */   addiu     $s2, $zero, 0x2
  .L800E6E48_F5DF8:
    /* F5DF8 800E6E48 30720003 */  andi       $s2, $v1, 0x3
    /* F5DFC 800E6E4C 00127C00 */  sll        $t7, $s2, 16
    /* F5E00 800E6E50 000F9403 */  sra        $s2, $t7, 16
    /* F5E04 800E6E54 24010003 */  addiu      $at, $zero, 0x3
    /* F5E08 800E6E58 56410004 */  bnel       $s2, $at, .L800E6E6C_F5E1C
    /* F5E0C 800E6E5C 0012C880 */   sll       $t9, $s2, 2
    /* F5E10 800E6E60 10000001 */  b          .L800E6E68_F5E18
    /* F5E14 800E6E64 24120001 */   addiu     $s2, $zero, 0x1
  .L800E6E68_F5E18:
    /* F5E18 800E6E68 0012C880 */  sll        $t9, $s2, 2
  .L800E6E6C_F5E1C:
    /* F5E1C 800E6E6C 0332C821 */  addu       $t9, $t9, $s2
    /* F5E20 800E6E70 0005A823 */  negu       $s5, $a1
    /* F5E24 800E6E74 00197480 */  sll        $t6, $t9, 18
    /* F5E28 800E6E78 32B8FFFF */  andi       $t8, $s5, 0xFFFF
    /* F5E2C 800E6E7C 000E9403 */  sra        $s2, $t6, 16
    /* F5E30 800E6E80 0300A825 */  or         $s5, $t8, $zero
    /* F5E34 800E6E84 3304FFFF */  andi       $a0, $t8, 0xFFFF
    /* F5E38 800E6E88 0C007654 */  jal        coss
    /* F5E3C 800E6E8C AFAB010C */   sw        $t3, 0x10C($sp)
    /* F5E40 800E6E90 44825000 */  mtc1       $v0, $f10
    /* F5E44 800E6E94 26590014 */  addiu      $t9, $s2, 0x14
    /* F5E48 800E6E98 44994000 */  mtc1       $t9, $f8
    /* F5E4C 800E6E9C 46805420 */  cvt.s.w    $f16, $f10
    /* F5E50 800E6EA0 32A4FFFF */  andi       $a0, $s5, 0xFFFF
    /* F5E54 800E6EA4 46804521 */  cvt.d.w    $f20, $f8
    /* F5E58 800E6EA8 460084A1 */  cvt.d.s    $f18, $f16
    /* F5E5C 800E6EAC 46369103 */  div.d      $f4, $f18, $f22
    /* F5E60 800E6EB0 46342182 */  mul.d      $f6, $f4, $f20
    /* F5E64 800E6EB4 4620320D */  trunc.w.d  $f8, $f6
    /* F5E68 800E6EB8 44164000 */  mfc1       $s6, $f8
    /* F5E6C 800E6EBC 00000000 */  nop
    /* F5E70 800E6EC0 00167C00 */  sll        $t7, $s6, 16
    /* F5E74 800E6EC4 0C007660 */  jal        sins
    /* F5E78 800E6EC8 000FB403 */   sra       $s6, $t7, 16
    /* F5E7C 800E6ECC 44825000 */  mtc1       $v0, $f10
    /* F5E80 800E6ED0 8E070000 */  lw         $a3, 0x0($s0)
    /* F5E84 800E6ED4 8FAB010C */  lw         $t3, 0x10C($sp)
    /* F5E88 800E6ED8 46805420 */  cvt.s.w    $f16, $f10
    /* F5E8C 800E6EDC A4F30000 */  sh         $s3, 0x0($a3)
    /* F5E90 800E6EE0 8E190000 */  lw         $t9, 0x0($s0)
    /* F5E94 800E6EE4 24051000 */  addiu      $a1, $zero, 0x1000
    /* F5E98 800E6EE8 240C0800 */  addiu      $t4, $zero, 0x800
    /* F5E9C 800E6EEC 272E0010 */  addiu      $t6, $t9, 0x10
    /* F5EA0 800E6EF0 460084A1 */  cvt.d.s    $f18, $f16
    /* F5EA4 800E6EF4 AE0E0000 */  sw         $t6, 0x0($s0)
    /* F5EA8 800E6EF8 46369103 */  div.d      $f4, $f18, $f22
    /* F5EAC 800E6EFC A4F70002 */  sh         $s7, 0x2($a3)
    /* F5EB0 800E6F00 A4F40004 */  sh         $s4, 0x4($a3)
    /* F5EB4 800E6F04 A4E50008 */  sh         $a1, 0x8($a3)
    /* F5EB8 800E6F08 A4EC000A */  sh         $t4, 0xA($a3)
    /* F5EBC 800E6F0C 8E090000 */  lw         $t1, 0x0($s0)
    /* F5EC0 800E6F10 26E60014 */  addiu      $a2, $s7, 0x14
    /* F5EC4 800E6F14 0276C821 */  addu       $t9, $s3, $s6
    /* F5EC8 800E6F18 A5330000 */  sh         $s3, 0x0($t1)
    /* F5ECC 800E6F1C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* F5ED0 800E6F20 240200FF */  addiu      $v0, $zero, 0xFF
    /* F5ED4 800E6F24 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F5ED8 800E6F28 25F80010 */  addiu      $t8, $t7, 0x10
    /* F5EDC 800E6F2C AE180000 */  sw         $t8, 0x0($s0)
    /* F5EE0 800E6F30 A5260002 */  sh         $a2, 0x2($t1)
    /* F5EE4 800E6F34 A5340004 */  sh         $s4, 0x4($t1)
    /* F5EE8 800E6F38 A5250008 */  sh         $a1, 0x8($t1)
    /* F5EEC 800E6F3C A520000A */  sh         $zero, 0xA($t1)
    /* F5EF0 800E6F40 8E0A0000 */  lw         $t2, 0x0($s0)
    /* F5EF4 800E6F44 0276C023 */  subu       $t8, $s3, $s6
    /* F5EF8 800E6F48 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F5EFC 800E6F4C A5590000 */  sh         $t9, 0x0($t2)
    /* F5F00 800E6F50 8E0E0000 */  lw         $t6, 0x0($s0)
    /* F5F04 800E6F54 2631FFE4 */  addiu      $s1, $s1, -0x1C
    /* F5F08 800E6F58 25CF0010 */  addiu      $t7, $t6, 0x10
    /* F5F0C 800E6F5C AE0F0000 */  sw         $t7, 0x0($s0)
    /* F5F10 800E6F60 A5460002 */  sh         $a2, 0x2($t2)
    /* F5F14 800E6F64 A5400008 */  sh         $zero, 0x8($t2)
    /* F5F18 800E6F68 A54C000A */  sh         $t4, 0xA($t2)
    /* F5F1C 800E6F6C 46342182 */  mul.d      $f6, $f4, $f20
    /* F5F20 800E6F70 4620320D */  trunc.w.d  $f8, $f6
    /* F5F24 800E6F74 44084000 */  mfc1       $t0, $f8
    /* F5F28 800E6F78 00000000 */  nop
    /* F5F2C 800E6F7C 02887821 */  addu       $t7, $s4, $t0
    /* F5F30 800E6F80 A54F0004 */  sh         $t7, 0x4($t2)
    /* F5F34 800E6F84 8E040000 */  lw         $a0, 0x0($s0)
    /* F5F38 800E6F88 02887823 */  subu       $t7, $s4, $t0
    /* F5F3C 800E6F8C A4980000 */  sh         $t8, 0x0($a0)
    /* F5F40 800E6F90 8E190000 */  lw         $t9, 0x0($s0)
    /* F5F44 800E6F94 24181000 */  addiu      $t8, $zero, 0x1000
    /* F5F48 800E6F98 272E0010 */  addiu      $t6, $t9, 0x10
    /* F5F4C 800E6F9C AE0E0000 */  sw         $t6, 0x0($s0)
    /* F5F50 800E6FA0 A4860002 */  sh         $a2, 0x2($a0)
    /* F5F54 800E6FA4 A48F0004 */  sh         $t7, 0x4($a0)
    /* F5F58 800E6FA8 A4980008 */  sh         $t8, 0x8($a0)
    /* F5F5C 800E6FAC A480000A */  sh         $zero, 0xA($a0)
    /* F5F60 800E6FB0 8E390028 */  lw         $t9, 0x28($s1)
    /* F5F64 800E6FB4 8E050000 */  lw         $a1, 0x0($s0)
    /* F5F68 800E6FB8 001971C3 */  sra        $t6, $t9, 7
    /* F5F6C 800E6FBC 026E7821 */  addu       $t7, $s3, $t6
    /* F5F70 800E6FC0 A4AF0000 */  sh         $t7, 0x0($a1)
    /* F5F74 800E6FC4 8E180000 */  lw         $t8, 0x0($s0)
    /* F5F78 800E6FC8 27190010 */  addiu      $t9, $t8, 0x10
    /* F5F7C 800E6FCC AE190000 */  sw         $t9, 0x0($s0)
    /* F5F80 800E6FD0 8E2E002C */  lw         $t6, 0x2C($s1)
    /* F5F84 800E6FD4 000E79C3 */  sra        $t7, $t6, 7
    /* F5F88 800E6FD8 02EFC021 */  addu       $t8, $s7, $t7
    /* F5F8C 800E6FDC 27190014 */  addiu      $t9, $t8, 0x14
    /* F5F90 800E6FE0 A4B90002 */  sh         $t9, 0x2($a1)
    /* F5F94 800E6FE4 8E2E0030 */  lw         $t6, 0x30($s1)
    /* F5F98 800E6FE8 24190800 */  addiu      $t9, $zero, 0x800
    /* F5F9C 800E6FEC A4A00008 */  sh         $zero, 0x8($a1)
    /* F5FA0 800E6FF0 000E79C3 */  sra        $t7, $t6, 7
    /* F5FA4 800E6FF4 028FC021 */  addu       $t8, $s4, $t7
    /* F5FA8 800E6FF8 A4B80004 */  sh         $t8, 0x4($a1)
    /* F5FAC 800E6FFC A4B9000A */  sh         $t9, 0xA($a1)
    /* F5FB0 800E7000 8E030000 */  lw         $v1, 0x0($s0)
    /* F5FB4 800E7004 84AE0000 */  lh         $t6, 0x0($a1)
    /* F5FB8 800E7008 A46E0000 */  sh         $t6, 0x0($v1)
    /* F5FBC 800E700C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* F5FC0 800E7010 25F80010 */  addiu      $t8, $t7, 0x10
    /* F5FC4 800E7014 AE180000 */  sw         $t8, 0x0($s0)
    /* F5FC8 800E7018 84B90002 */  lh         $t9, 0x2($a1)
    /* F5FCC 800E701C A4790002 */  sh         $t9, 0x2($v1)
    /* F5FD0 800E7020 84AE0004 */  lh         $t6, 0x4($a1)
    /* F5FD4 800E7024 A4600008 */  sh         $zero, 0x8($v1)
    /* F5FD8 800E7028 A460000A */  sh         $zero, 0xA($v1)
    /* F5FDC 800E702C A060000C */  sb         $zero, 0xC($v1)
    /* F5FE0 800E7030 A46E0004 */  sh         $t6, 0x4($v1)
    /* F5FE4 800E7034 A0A0000C */  sb         $zero, 0xC($a1)
    /* F5FE8 800E7038 A080000C */  sb         $zero, 0xC($a0)
    /* F5FEC 800E703C A140000C */  sb         $zero, 0xC($t2)
    /* F5FF0 800E7040 A120000C */  sb         $zero, 0xC($t1)
    /* F5FF4 800E7044 A0E0000C */  sb         $zero, 0xC($a3)
    /* F5FF8 800E7048 A060000D */  sb         $zero, 0xD($v1)
    /* F5FFC 800E704C A0A0000D */  sb         $zero, 0xD($a1)
    /* F6000 800E7050 A080000D */  sb         $zero, 0xD($a0)
    /* F6004 800E7054 A140000D */  sb         $zero, 0xD($t2)
    /* F6008 800E7058 A120000D */  sb         $zero, 0xD($t1)
    /* F600C 800E705C A0E0000D */  sb         $zero, 0xD($a3)
    /* F6010 800E7060 A060000E */  sb         $zero, 0xE($v1)
    /* F6014 800E7064 A0A0000E */  sb         $zero, 0xE($a1)
    /* F6018 800E7068 A080000E */  sb         $zero, 0xE($a0)
    /* F601C 800E706C A140000E */  sb         $zero, 0xE($t2)
    /* F6020 800E7070 A120000E */  sb         $zero, 0xE($t1)
    /* F6024 800E7074 A0E0000E */  sb         $zero, 0xE($a3)
    /* F6028 800E7078 A062000F */  sb         $v0, 0xF($v1)
    /* F602C 800E707C A0A2000F */  sb         $v0, 0xF($a1)
    /* F6030 800E7080 A082000F */  sb         $v0, 0xF($a0)
    /* F6034 800E7084 A142000F */  sb         $v0, 0xF($t2)
    /* F6038 800E7088 A122000F */  sb         $v0, 0xF($t1)
    /* F603C 800E708C A0E2000F */  sb         $v0, 0xF($a3)
    /* F6040 800E7090 8FC80000 */  lw         $t0, 0x0($fp)
    /* F6044 800E7094 3C190400 */  lui        $t9, (0x400185F >> 16)
    /* F6048 800E7098 3739185F */  ori        $t9, $t9, (0x400185F & 0xFFFF)
    /* F604C 800E709C 25180008 */  addiu      $t8, $t0, 0x8
    /* F6050 800E70A0 AFD80000 */  sw         $t8, 0x0($fp)
    /* F6054 800E70A4 00E17024 */  and        $t6, $a3, $at
    /* F6058 800E70A8 AD0E0004 */  sw         $t6, 0x4($t0)
    /* F605C 800E70AC AD190000 */  sw         $t9, 0x0($t0)
    /* F6060 800E70B0 8FC20000 */  lw         $v0, 0x0($fp)
    /* F6064 800E70B4 3C05BF00 */  lui        $a1, (0xBF000000 >> 16)
    /* F6068 800E70B8 24180208 */  addiu      $t8, $zero, 0x208
    /* F606C 800E70BC 244F0008 */  addiu      $t7, $v0, 0x8
    /* F6070 800E70C0 AFCF0000 */  sw         $t7, 0x0($fp)
    /* F6074 800E70C4 AC580004 */  sw         $t8, 0x4($v0)
    /* F6078 800E70C8 AC450000 */  sw         $a1, 0x0($v0)
    /* F607C 800E70CC 8FC60000 */  lw         $a2, 0x0($fp)
    /* F6080 800E70D0 3C0E0004 */  lui        $t6, (0x4060A >> 16)
    /* F6084 800E70D4 01601825 */  or         $v1, $t3, $zero
    /* F6088 800E70D8 24D90008 */  addiu      $t9, $a2, 0x8
    /* F608C 800E70DC AFD90000 */  sw         $t9, 0x0($fp)
    /* F6090 800E70E0 35CE060A */  ori        $t6, $t6, (0x4060A & 0xFFFF)
    /* F6094 800E70E4 ACCE0004 */  sw         $t6, 0x4($a2)
    /* F6098 800E70E8 ACC50000 */  sw         $a1, 0x0($a2)
    /* F609C 800E70EC 00C02025 */  or         $a0, $a2, $zero
    /* F60A0 800E70F0 1560FF31 */  bnez       $t3, .L800E6DB8_F5D68
    /* F60A4 800E70F4 256BFFFF */   addiu     $t3, $t3, -0x1
    /* F60A8 800E70F8 8FA20054 */  lw         $v0, 0x54($sp)
  .L800E70FC_F60AC:
    /* F60AC 800E70FC 8FAF0124 */  lw         $t7, 0x124($sp)
    /* F60B0 800E7100 2442FE14 */  addiu      $v0, $v0, -0x1EC
    /* F60B4 800E7104 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* F60B8 800E7108 15E0FF21 */  bnez       $t7, .L800E6D90_F5D40
    /* F60BC 800E710C AFB80124 */   sw        $t8, 0x124($sp)
    /* F60C0 800E7110 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
  .L800E7114_F60C4:
    /* F60C4 800E7114 8FC60000 */  lw         $a2, 0x0($fp)
    /* F60C8 800E7118 3C0EE800 */  lui        $t6, (0xE8000000 >> 16)
    /* F60CC 800E711C 24D90008 */  addiu      $t9, $a2, 0x8
    /* F60D0 800E7120 AFD90000 */  sw         $t9, 0x0($fp)
    /* F60D4 800E7124 ACC00004 */  sw         $zero, 0x4($a2)
    /* F60D8 800E7128 ACCE0000 */  sw         $t6, 0x0($a2)
    /* F60DC 800E712C 8FC60000 */  lw         $a2, 0x0($fp)
    /* F60E0 800E7130 3C19FC12 */  lui        $t9, (0xFC1219FF >> 16)
    /* F60E4 800E7134 373919FF */  ori        $t9, $t9, (0xFC1219FF & 0xFFFF)
    /* F60E8 800E7138 24CF0008 */  addiu      $t7, $a2, 0x8
    /* F60EC 800E713C AFCF0000 */  sw         $t7, 0x0($fp)
    /* F60F0 800E7140 ACC00004 */  sw         $zero, 0x4($a2)
    /* F60F4 800E7144 ACCA0000 */  sw         $t2, 0x0($a2)
    /* F60F8 800E7148 8FC60000 */  lw         $a2, 0x0($fp)
    /* F60FC 800E714C 240EFE38 */  addiu      $t6, $zero, -0x1C8
    /* F6100 800E7150 24D80008 */  addiu      $t8, $a2, 0x8
    /* F6104 800E7154 AFD80000 */  sw         $t8, 0x0($fp)
    /* F6108 800E7158 ACCE0004 */  sw         $t6, 0x4($a2)
    /* F610C 800E715C ACD90000 */  sw         $t9, 0x0($a2)
    /* F6110 800E7160 8FC60000 */  lw         $a2, 0x0($fp)
    /* F6114 800E7164 3C19C811 */  lui        $t9, (0xC8112078 >> 16)
    /* F6118 800E7168 3C18B900 */  lui        $t8, (0xB900031D >> 16)
    /* F611C 800E716C 24CF0008 */  addiu      $t7, $a2, 0x8
    /* F6120 800E7170 AFCF0000 */  sw         $t7, 0x0($fp)
    /* F6124 800E7174 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
    /* F6128 800E7178 37392078 */  ori        $t9, $t9, (0xC8112078 & 0xFFFF)
    /* F612C 800E717C ACD90004 */  sw         $t9, 0x4($a2)
    /* F6130 800E7180 ACD80000 */  sw         $t8, 0x0($a2)
    /* F6134 800E7184 8FC60000 */  lw         $a2, 0x0($fp)
    /* F6138 800E7188 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
    /* F613C 800E718C 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
    /* F6140 800E7190 24CE0008 */  addiu      $t6, $a2, 0x8
    /* F6144 800E7194 AFCE0000 */  sw         $t6, 0x0($fp)
    /* F6148 800E7198 ACC00004 */  sw         $zero, 0x4($a2)
    /* F614C 800E719C ACCF0000 */  sw         $t7, 0x0($a2)
    /* F6150 800E71A0 8FC60000 */  lw         $a2, 0x0($fp)
    /* F6154 800E71A4 3C19BA00 */  lui        $t9, (0xBA001402 >> 16)
    /* F6158 800E71A8 37391402 */  ori        $t9, $t9, (0xBA001402 & 0xFFFF)
    /* F615C 800E71AC 24D80008 */  addiu      $t8, $a2, 0x8
    /* F6160 800E71B0 AFD80000 */  sw         $t8, 0x0($fp)
    /* F6164 800E71B4 3C0E0010 */  lui        $t6, (0x100000 >> 16)
    /* F6168 800E71B8 ACCE0004 */  sw         $t6, 0x4($a2)
    /* F616C 800E71BC ACD90000 */  sw         $t9, 0x0($a2)
  .L800E71C0_F6170:
    /* F6170 800E71C0 8FBF004C */  lw         $ra, 0x4C($sp)
    /* F6174 800E71C4 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* F6178 800E71C8 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* F617C 800E71CC 8FB00028 */  lw         $s0, 0x28($sp)
    /* F6180 800E71D0 8FB1002C */  lw         $s1, 0x2C($sp)
    /* F6184 800E71D4 8FB20030 */  lw         $s2, 0x30($sp)
    /* F6188 800E71D8 8FB30034 */  lw         $s3, 0x34($sp)
    /* F618C 800E71DC 8FB40038 */  lw         $s4, 0x38($sp)
    /* F6190 800E71E0 8FB5003C */  lw         $s5, 0x3C($sp)
    /* F6194 800E71E4 8FB60040 */  lw         $s6, 0x40($sp)
    /* F6198 800E71E8 8FB70044 */  lw         $s7, 0x44($sp)
    /* F619C 800E71EC 8FBE0048 */  lw         $fp, 0x48($sp)
    /* F61A0 800E71F0 03E00008 */  jr         $ra
    /* F61A4 800E71F4 27BD0128 */   addiu     $sp, $sp, 0x128
endlabel func_800E6A38_F59E8
