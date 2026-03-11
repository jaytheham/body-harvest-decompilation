nonmatching func_80004F64_5B64, 0xF8

glabel func_80004F64_5B64
    /* 5B64 80004F64 3C0A8006 */  lui        $t2, %hi(D_8005BB2C)
    /* 5B68 80004F68 254ABB2C */  addiu      $t2, $t2, %lo(D_8005BB2C)
    /* 5B6C 80004F6C 8D430000 */  lw         $v1, 0x0($t2)
    /* 5B70 80004F70 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
    /* 5B74 80004F74 3C0CBA00 */  lui        $t4, (0xBA001402 >> 16)
    /* 5B78 80004F78 246E0008 */  addiu      $t6, $v1, 0x8
    /* 5B7C 80004F7C AD4E0000 */  sw         $t6, 0x0($t2)
    /* 5B80 80004F80 AC600004 */  sw         $zero, 0x4($v1)
    /* 5B84 80004F84 AC6B0000 */  sw         $t3, 0x0($v1)
    /* 5B88 80004F88 8D430000 */  lw         $v1, 0x0($t2)
    /* 5B8C 80004F8C 358C1402 */  ori        $t4, $t4, (0xBA001402 & 0xFFFF)
    /* 5B90 80004F90 3C180030 */  lui        $t8, (0x300000 >> 16)
    /* 5B94 80004F94 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5B98 80004F98 AD4F0000 */  sw         $t7, 0x0($t2)
    /* 5B9C 80004F9C AC780004 */  sw         $t8, 0x4($v1)
    /* 5BA0 80004FA0 AC6C0000 */  sw         $t4, 0x0($v1)
    /* 5BA4 80004FA4 8D430000 */  lw         $v1, 0x0($t2)
    /* 5BA8 80004FA8 3C0E003E */  lui        $t6, %hi(D_3DA800)
    /* 5BAC 80004FAC 3C0DFF10 */  lui        $t5, (0xFF10013F >> 16)
    /* 5BB0 80004FB0 24790008 */  addiu      $t9, $v1, 0x8
    /* 5BB4 80004FB4 AD590000 */  sw         $t9, 0x0($t2)
    /* 5BB8 80004FB8 35AD013F */  ori        $t5, $t5, (0xFF10013F & 0xFFFF)
    /* 5BBC 80004FBC 25CEA800 */  addiu      $t6, $t6, %lo(D_3DA800)
    /* 5BC0 80004FC0 AC6E0004 */  sw         $t6, 0x4($v1)
    /* 5BC4 80004FC4 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 5BC8 80004FC8 8D430000 */  lw         $v1, 0x0($t2)
    /* 5BCC 80004FCC 3C19FFFC */  lui        $t9, (0xFFFCFFFC >> 16)
    /* 5BD0 80004FD0 3739FFFC */  ori        $t9, $t9, (0xFFFCFFFC & 0xFFFF)
    /* 5BD4 80004FD4 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5BD8 80004FD8 AD4F0000 */  sw         $t7, 0x0($t2)
    /* 5BDC 80004FDC 3C18F700 */  lui        $t8, (0xF7000000 >> 16)
    /* 5BE0 80004FE0 AC780000 */  sw         $t8, 0x0($v1)
    /* 5BE4 80004FE4 AC790004 */  sw         $t9, 0x4($v1)
    /* 5BE8 80004FE8 8D430000 */  lw         $v1, 0x0($t2)
    /* 5BEC 80004FEC 3C0E8007 */  lui        $t6, %hi(D_80068084)
    /* 5BF0 80004FF0 3C01F600 */  lui        $at, (0xF6000000 >> 16)
    /* 5BF4 80004FF4 246D0008 */  addiu      $t5, $v1, 0x8
    /* 5BF8 80004FF8 AD4D0000 */  sw         $t5, 0x0($t2)
    /* 5BFC 80004FFC 8DCE8084 */  lw         $t6, %lo(D_80068084)($t6)
    /* 5C00 80005000 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* 5C04 80005004 3C0E8007 */  lui        $t6, %hi(D_80068088)
    /* 5C08 80005008 8DCE8088 */  lw         $t6, %lo(D_80068088)($t6)
    /* 5C0C 8000500C 31F803FF */  andi       $t8, $t7, 0x3FF
    /* 5C10 80005010 0018CB80 */  sll        $t9, $t8, 14
    /* 5C14 80005014 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* 5C18 80005018 31F803FF */  andi       $t8, $t7, 0x3FF
    /* 5C1C 8000501C 03216825 */  or         $t5, $t9, $at
    /* 5C20 80005020 0018C880 */  sll        $t9, $t8, 2
    /* 5C24 80005024 01B97025 */  or         $t6, $t5, $t9
    /* 5C28 80005028 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 5C2C 8000502C AC600004 */  sw         $zero, 0x4($v1)
    /* 5C30 80005030 8D430000 */  lw         $v1, 0x0($t2)
    /* 5C34 80005034 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5C38 80005038 AD4F0000 */  sw         $t7, 0x0($t2)
    /* 5C3C 8000503C AC600004 */  sw         $zero, 0x4($v1)
    /* 5C40 80005040 AC6C0000 */  sw         $t4, 0x0($v1)
    /* 5C44 80005044 8D430000 */  lw         $v1, 0x0($t2)
    /* 5C48 80005048 24780008 */  addiu      $t8, $v1, 0x8
    /* 5C4C 8000504C AD580000 */  sw         $t8, 0x0($t2)
    /* 5C50 80005050 AC600004 */  sw         $zero, 0x4($v1)
    /* 5C54 80005054 03E00008 */  jr         $ra
    /* 5C58 80005058 AC6B0000 */   sw        $t3, 0x0($v1)
endlabel func_80004F64_5B64
