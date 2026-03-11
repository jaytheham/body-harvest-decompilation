nonmatching func_80080A84_50F34, 0x50

glabel func_80080A84_50F34
    /* 50F34 80080A84 10800011 */  beqz       $a0, .L80080ACC_50F7C
    /* 50F38 80080A88 3C03800E */   lui       $v1, %hi(D_800D8578)
    /* 50F3C 80080A8C 24638578 */  addiu      $v1, $v1, %lo(D_800D8578)
    /* 50F40 80080A90 00831023 */  subu       $v0, $a0, $v1
    /* 50F44 80080A94 24010058 */  addiu      $at, $zero, 0x58
    /* 50F48 80080A98 0041001A */  div        $zero, $v0, $at
    /* 50F4C 80080A9C 00007012 */  mflo       $t6
    /* 50F50 80080AA0 000EC080 */  sll        $t8, $t6, 2
    /* 50F54 80080AA4 030EC023 */  subu       $t8, $t8, $t6
    /* 50F58 80080AA8 0018C080 */  sll        $t8, $t8, 2
    /* 50F5C 80080AAC 000E7880 */  sll        $t7, $t6, 2
    /* 50F60 80080AB0 3C01800E */  lui        $at, %hi(D_800D8550)
    /* 50F64 80080AB4 030EC023 */  subu       $t8, $t8, $t6
    /* 50F68 80080AB8 002F0821 */  addu       $at, $at, $t7
    /* 50F6C 80080ABC 0018C0C0 */  sll        $t8, $t8, 3
    /* 50F70 80080AC0 AC208550 */  sw         $zero, %lo(D_800D8550)($at)
    /* 50F74 80080AC4 0078C821 */  addu       $t9, $v1, $t8
    /* 50F78 80080AC8 AF200050 */  sw         $zero, 0x50($t9)
  .L80080ACC_50F7C:
    /* 50F7C 80080ACC 03E00008 */  jr         $ra
    /* 50F80 80080AD0 00000000 */   nop
endlabel func_80080A84_50F34
