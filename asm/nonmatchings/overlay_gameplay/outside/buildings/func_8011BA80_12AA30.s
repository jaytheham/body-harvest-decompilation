nonmatching func_8011BA80_12AA30, 0x114

glabel func_8011BA80_12AA30
    /* 12AA30 8011BA80 308700FF */  andi       $a3, $a0, 0xFF
    /* 12AA34 8011BA84 00077080 */  sll        $t6, $a3, 2
    /* 12AA38 8011BA88 01C77023 */  subu       $t6, $t6, $a3
    /* 12AA3C 8011BA8C 3C0F8005 */  lui        $t7, %hi(buildingInstances)
    /* 12AA40 8011BA90 25EF0AD8 */  addiu      $t7, $t7, %lo(buildingInstances)
    /* 12AA44 8011BA94 000E70C0 */  sll        $t6, $t6, 3
    /* 12AA48 8011BA98 01CF1021 */  addu       $v0, $t6, $t7
    /* 12AA4C 8011BA9C 84590004 */  lh         $t9, 0x4($v0)
    /* 12AA50 8011BAA0 84580000 */  lh         $t8, 0x0($v0)
    /* 12AA54 8011BAA4 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 12AA58 8011BAA8 AFA40028 */  sw         $a0, 0x28($sp)
    /* 12AA5C 8011BAAC 03255023 */  subu       $t2, $t9, $a1
    /* 12AA60 8011BAB0 000A2400 */  sll        $a0, $t2, 16
    /* 12AA64 8011BAB4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12AA68 8011BAB8 00045C03 */  sra        $t3, $a0, 16
    /* 12AA6C 8011BABC 03053023 */  subu       $a2, $t8, $a1
    /* 12AA70 8011BAC0 AFA60020 */  sw         $a2, 0x20($sp)
    /* 12AA74 8011BAC4 01602025 */  or         $a0, $t3, $zero
    /* 12AA78 8011BAC8 AFAA001C */  sw         $t2, 0x1C($sp)
    /* 12AA7C 8011BACC 0C045D42 */  jal        func_80117508_1264B8
    /* 12AA80 8011BAD0 AFA5002C */   sw        $a1, 0x2C($sp)
    /* 12AA84 8011BAD4 00026080 */  sll        $t4, $v0, 2
    /* 12AA88 8011BAD8 01826023 */  subu       $t4, $t4, $v0
    /* 12AA8C 8011BADC 3C0D8005 */  lui        $t5, %hi(buildingInstances)
    /* 12AA90 8011BAE0 3C098005 */  lui        $t1, %hi(D_800522C0)
    /* 12AA94 8011BAE4 25AD0AD8 */  addiu      $t5, $t5, %lo(buildingInstances)
    /* 12AA98 8011BAE8 000C60C0 */  sll        $t4, $t4, 3
    /* 12AA9C 8011BAEC 252922C0 */  addiu      $t1, $t1, %lo(D_800522C0)
    /* 12AAA0 8011BAF0 018D2021 */  addu       $a0, $t4, $t5
    /* 12AAA4 8011BAF4 0089082B */  sltu       $at, $a0, $t1
    /* 12AAA8 8011BAF8 8FA5002C */  lw         $a1, 0x2C($sp)
    /* 12AAAC 8011BAFC 8FA60020 */  lw         $a2, 0x20($sp)
    /* 12AAB0 8011BB00 8FAA001C */  lw         $t2, 0x1C($sp)
    /* 12AAB4 8011BB04 1020001F */  beqz       $at, .L8011BB84_12AB34
    /* 12AAB8 8011BB08 00801825 */   or        $v1, $a0, $zero
    /* 12AABC 8011BB0C 848E0004 */  lh         $t6, 0x4($a0)
    /* 12AAC0 8011BB10 00053840 */  sll        $a3, $a1, 1
    /* 12AAC4 8011BB14 01474021 */  addu       $t0, $t2, $a3
    /* 12AAC8 8011BB18 01C8082A */  slt        $at, $t6, $t0
    /* 12AACC 8011BB1C 10200019 */  beqz       $at, .L8011BB84_12AB34
    /* 12AAD0 8011BB20 3C0A0001 */   lui       $t2, (0x10000 >> 16)
    /* 12AAD4 8011BB24 8C640008 */  lw         $a0, 0x8($v1)
  .L8011BB28_12AAD8:
    /* 12AAD8 8011BB28 00041302 */  srl        $v0, $a0, 12
    /* 12AADC 8011BB2C 304F0001 */  andi       $t7, $v0, 0x1
    /* 12AAE0 8011BB30 51E0000D */  beql       $t7, $zero, .L8011BB68_12AB18
    /* 12AAE4 8011BB34 24630018 */   addiu     $v1, $v1, 0x18
    /* 12AAE8 8011BB38 84650000 */  lh         $a1, 0x0($v1)
    /* 12AAEC 8011BB3C 00C7C021 */  addu       $t8, $a2, $a3
    /* 12AAF0 8011BB40 00A6082A */  slt        $at, $a1, $a2
    /* 12AAF4 8011BB44 14200007 */  bnez       $at, .L8011BB64_12AB14
    /* 12AAF8 8011BB48 00B8082A */   slt       $at, $a1, $t8
    /* 12AAFC 8011BB4C 10200005 */  beqz       $at, .L8011BB64_12AB14
    /* 12AB00 8011BB50 004AC825 */   or        $t9, $v0, $t2
    /* 12AB04 8011BB54 03225826 */  xor        $t3, $t9, $v0
    /* 12AB08 8011BB58 000B6300 */  sll        $t4, $t3, 12
    /* 12AB0C 8011BB5C 01846826 */  xor        $t5, $t4, $a0
    /* 12AB10 8011BB60 AC6D0008 */  sw         $t5, 0x8($v1)
  .L8011BB64_12AB14:
    /* 12AB14 8011BB64 24630018 */  addiu      $v1, $v1, 0x18
  .L8011BB68_12AB18:
    /* 12AB18 8011BB68 0069082B */  sltu       $at, $v1, $t1
    /* 12AB1C 8011BB6C 50200006 */  beql       $at, $zero, .L8011BB88_12AB38
    /* 12AB20 8011BB70 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 12AB24 8011BB74 846E0004 */  lh         $t6, 0x4($v1)
    /* 12AB28 8011BB78 01C8082A */  slt        $at, $t6, $t0
    /* 12AB2C 8011BB7C 5420FFEA */  bnel       $at, $zero, .L8011BB28_12AAD8
    /* 12AB30 8011BB80 8C640008 */   lw        $a0, 0x8($v1)
  .L8011BB84_12AB34:
    /* 12AB34 8011BB84 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8011BB88_12AB38:
    /* 12AB38 8011BB88 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 12AB3C 8011BB8C 03E00008 */  jr         $ra
    /* 12AB40 8011BB90 00000000 */   nop
endlabel func_8011BA80_12AA30
