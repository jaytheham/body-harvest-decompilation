nonmatching func_80092A50_A1A00, 0x8C

glabel func_80092A50_A1A00
    /* A1A00 80092A50 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* A1A04 80092A54 AFBF0014 */  sw         $ra, 0x14($sp)
    /* A1A08 80092A58 AFA40018 */  sw         $a0, 0x18($sp)
    /* A1A0C 80092A5C AFA5001C */  sw         $a1, 0x1C($sp)
    /* A1A10 80092A60 AFA60020 */  sw         $a2, 0x20($sp)
    /* A1A14 80092A64 0C01E55B */  jal        func_8007956C_8851C
    /* A1A18 80092A68 2404000A */   addiu     $a0, $zero, 0xA
    /* A1A1C 80092A6C 304300FF */  andi       $v1, $v0, 0xFF
    /* A1A20 80092A70 240100FF */  addiu      $at, $zero, 0xFF
    /* A1A24 80092A74 10610014 */  beq        $v1, $at, .L80092AC8_A1A78
    /* A1A28 80092A78 304400FF */   andi      $a0, $v0, 0xFF
    /* A1A2C 80092A7C 00037080 */  sll        $t6, $v1, 2
    /* A1A30 80092A80 01C37021 */  addu       $t6, $t6, $v1
    /* A1A34 80092A84 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* A1A38 80092A88 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* A1A3C 80092A8C 000E7100 */  sll        $t6, $t6, 4
    /* A1A40 80092A90 01CF1021 */  addu       $v0, $t6, $t7
    /* A1A44 80092A94 8C480020 */  lw         $t0, 0x20($v0)
    /* A1A48 80092A98 3C01F7FF */  lui        $at, (0xF7FFFFFF >> 16)
    /* A1A4C 80092A9C 3421FFFF */  ori        $at, $at, (0xF7FFFFFF & 0xFFFF)
    /* A1A50 80092AA0 87B8001A */  lh         $t8, 0x1A($sp)
    /* A1A54 80092AA4 87B9001E */  lh         $t9, 0x1E($sp)
    /* A1A58 80092AA8 8FAC0020 */  lw         $t4, 0x20($sp)
    /* A1A5C 80092AAC 01014824 */  and        $t1, $t0, $at
    /* A1A60 80092AB0 AC490020 */  sw         $t1, 0x20($v0)
    /* A1A64 80092AB4 352B2000 */  ori        $t3, $t1, 0x2000
    /* A1A68 80092AB8 AC4B0020 */  sw         $t3, 0x20($v0)
    /* A1A6C 80092ABC A4580000 */  sh         $t8, 0x0($v0)
    /* A1A70 80092AC0 A4590004 */  sh         $t9, 0x4($v0)
    /* A1A74 80092AC4 A04C003F */  sb         $t4, 0x3F($v0)
  .L80092AC8_A1A78:
    /* A1A78 80092AC8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* A1A7C 80092ACC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* A1A80 80092AD0 00801025 */  or         $v0, $a0, $zero
    /* A1A84 80092AD4 03E00008 */  jr         $ra
    /* A1A88 80092AD8 00000000 */   nop
endlabel func_80092A50_A1A00
