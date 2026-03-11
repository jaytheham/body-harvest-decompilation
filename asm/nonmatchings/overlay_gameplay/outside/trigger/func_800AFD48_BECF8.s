nonmatching func_800AFD48_BECF8, 0x120

glabel func_800AFD48_BECF8
    /* BECF8 800AFD48 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* BECFC 800AFD4C AFBF0014 */  sw         $ra, 0x14($sp)
    /* BED00 800AFD50 90830009 */  lbu        $v1, 0x9($a0)
    /* BED04 800AFD54 3C0F8022 */  lui        $t7, %hi(D_80223780)
    /* BED08 800AFD58 25EF3780 */  addiu      $t7, $t7, %lo(D_80223780)
    /* BED0C 800AFD5C 00037080 */  sll        $t6, $v1, 2
    /* BED10 800AFD60 01C37021 */  addu       $t6, $t6, $v1
    /* BED14 800AFD64 000E7080 */  sll        $t6, $t6, 2
    /* BED18 800AFD68 01CF1021 */  addu       $v0, $t6, $t7
    /* BED1C 800AFD6C 00803825 */  or         $a3, $a0, $zero
    /* BED20 800AFD70 AFA70038 */  sw         $a3, 0x38($sp)
    /* BED24 800AFD74 84440002 */  lh         $a0, 0x2($v0)
    /* BED28 800AFD78 84450004 */  lh         $a1, 0x4($v0)
    /* BED2C 800AFD7C 90460000 */  lbu        $a2, 0x0($v0)
    /* BED30 800AFD80 AFA20020 */  sw         $v0, 0x20($sp)
    /* BED34 800AFD84 0C02BC7E */  jal        func_800AF1F8_BE1A8
    /* BED38 800AFD88 A3A30027 */   sb        $v1, 0x27($sp)
    /* BED3C 800AFD8C 3C188015 */  lui        $t8, %hi(D_8014F820)
    /* BED40 800AFD90 8F18F820 */  lw         $t8, %lo(D_8014F820)($t8)
    /* BED44 800AFD94 93A30027 */  lbu        $v1, 0x27($sp)
    /* BED48 800AFD98 8FA70038 */  lw         $a3, 0x38($sp)
    /* BED4C 800AFD9C 3C09800B */  lui        $t1, %hi(func_800AFBF8_BEBA8)
    /* BED50 800AFDA0 24080002 */  addiu      $t0, $zero, 0x2
    /* BED54 800AFDA4 2529FBF8 */  addiu      $t1, $t1, %lo(func_800AFBF8_BEBA8)
    /* BED58 800AFDA8 27190012 */  addiu      $t9, $t8, 0x12
    /* BED5C 800AFDAC AFB9002C */  sw         $t9, 0x2C($sp)
    /* BED60 800AFDB0 A3A80028 */  sb         $t0, 0x28($sp)
    /* BED64 800AFDB4 AFA90034 */  sw         $t1, 0x34($sp)
    /* BED68 800AFDB8 A3A30031 */  sb         $v1, 0x31($sp)
    /* BED6C 800AFDBC 90EA0000 */  lbu        $t2, 0x0($a3)
    /* BED70 800AFDC0 24010001 */  addiu      $at, $zero, 0x1
    /* BED74 800AFDC4 8FA20020 */  lw         $v0, 0x20($sp)
    /* BED78 800AFDC8 55410013 */  bnel       $t2, $at, .L800AFE18_BEDC8
    /* BED7C 800AFDCC 80580000 */   lb        $t8, 0x0($v0)
    /* BED80 800AFDD0 804B0000 */  lb         $t3, 0x0($v0)
    /* BED84 800AFDD4 3C038004 */  lui        $v1, %hi(D_8003BCC6)
    /* BED88 800AFDD8 24010019 */  addiu      $at, $zero, 0x19
    /* BED8C 800AFDDC 000B6080 */  sll        $t4, $t3, 2
    /* BED90 800AFDE0 018B6023 */  subu       $t4, $t4, $t3
    /* BED94 800AFDE4 000C6140 */  sll        $t4, $t4, 5
    /* BED98 800AFDE8 006C1821 */  addu       $v1, $v1, $t4
    /* BED9C 800AFDEC 9063BCC6 */  lbu        $v1, %lo(D_8003BCC6)($v1)
    /* BEDA0 800AFDF0 50610009 */  beql       $v1, $at, .L800AFE18_BEDC8
    /* BEDA4 800AFDF4 80580000 */   lb        $t8, 0x0($v0)
    /* BEDA8 800AFDF8 80ED0001 */  lb         $t5, 0x1($a3)
    /* BEDAC 800AFDFC A3AD0029 */  sb         $t5, 0x29($sp)
    /* BEDB0 800AFE00 80EE0002 */  lb         $t6, 0x2($a3)
    /* BEDB4 800AFE04 A3AE002A */  sb         $t6, 0x2A($sp)
    /* BEDB8 800AFE08 90EF0003 */  lbu        $t7, 0x3($a3)
    /* BEDBC 800AFE0C 10000009 */  b          .L800AFE34_BEDE4
    /* BEDC0 800AFE10 A3AF002B */   sb        $t7, 0x2B($sp)
    /* BEDC4 800AFE14 80580000 */  lb         $t8, 0x0($v0)
  .L800AFE18_BEDC8:
    /* BEDC8 800AFE18 3C038004 */  lui        $v1, %hi(D_8003BCC6)
    /* BEDCC 800AFE1C A3A0002B */  sb         $zero, 0x2B($sp)
    /* BEDD0 800AFE20 0018C880 */  sll        $t9, $t8, 2
    /* BEDD4 800AFE24 0338C823 */  subu       $t9, $t9, $t8
    /* BEDD8 800AFE28 0019C940 */  sll        $t9, $t9, 5
    /* BEDDC 800AFE2C 00791821 */  addu       $v1, $v1, $t9
    /* BEDE0 800AFE30 9063BCC6 */  lbu        $v1, %lo(D_8003BCC6)($v1)
  .L800AFE34_BEDE4:
    /* BEDE4 800AFE34 24010019 */  addiu      $at, $zero, 0x19
    /* BEDE8 800AFE38 14610005 */  bne        $v1, $at, .L800AFE50_BEE00
    /* BEDEC 800AFE3C 00000000 */   nop
    /* BEDF0 800AFE40 0C006994 */  jal        func_8001A650_1B250
    /* BEDF4 800AFE44 24040017 */   addiu     $a0, $zero, 0x17
    /* BEDF8 800AFE48 0C02FB38 */  jal        func_800BECE0_CDC90
    /* BEDFC 800AFE4C 00000000 */   nop
  .L800AFE50_BEE00:
    /* BEE00 800AFE50 0C02B915 */  jal        func_800AE454_BD404
    /* BEE04 800AFE54 27A40028 */   addiu     $a0, $sp, 0x28
    /* BEE08 800AFE58 8FBF0014 */  lw         $ra, 0x14($sp)
    /* BEE0C 800AFE5C 27BD0038 */  addiu      $sp, $sp, 0x38
    /* BEE10 800AFE60 03E00008 */  jr         $ra
    /* BEE14 800AFE64 00000000 */   nop
endlabel func_800AFD48_BECF8
