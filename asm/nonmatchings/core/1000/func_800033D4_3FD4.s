nonmatching func_800033D4_3FD4, 0x88

glabel func_800033D4_3FD4
    /* 3FD4 800033D4 00051040 */  sll        $v0, $a1, 1
    /* 3FD8 800033D8 3C0F8004 */  lui        $t7, %hi(D_800475D8)
    /* 3FDC 800033DC 01E27821 */  addu       $t7, $t7, $v0
    /* 3FE0 800033E0 95EF75D8 */  lhu        $t7, %lo(D_800475D8)($t7)
    /* 3FE4 800033E4 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* 3FE8 800033E8 AFA40000 */  sw         $a0, 0x0($sp)
    /* 3FEC 800033EC 01EEC024 */  and        $t8, $t7, $t6
    /* 3FF0 800033F0 13000018 */  beqz       $t8, .L80003454_4054
    /* 3FF4 800033F4 3C198004 */   lui       $t9, %hi(previousControllerButtonStates)
    /* 3FF8 800033F8 273975E0 */  addiu      $t9, $t9, %lo(previousControllerButtonStates)
    /* 3FFC 800033FC 00592021 */  addu       $a0, $v0, $t9
    /* 4000 80003400 94880000 */  lhu        $t0, 0x0($a0)
    /* 4004 80003404 00055080 */  sll        $t2, $a1, 2
    /* 4008 80003408 01455023 */  subu       $t2, $t2, $a1
    /* 400C 8000340C 010E4824 */  and        $t1, $t0, $t6
    /* 4010 80003410 11200010 */  beqz       $t1, .L80003454_4054
    /* 4014 80003414 000A5040 */   sll       $t2, $t2, 1
    /* 4018 80003418 3C0B8004 */  lui        $t3, %hi(currentControllerStates)
    /* 401C 8000341C 256B7588 */  addiu      $t3, $t3, %lo(currentControllerStates)
    /* 4020 80003420 014B1021 */  addu       $v0, $t2, $t3
    /* 4024 80003424 944C0000 */  lhu        $t4, 0x0($v0)
    /* 4028 80003428 01C03027 */  not        $a2, $t6
    /* 402C 8000342C 3C0E8004 */  lui        $t6, %hi(previousControllerButtonStates)
    /* 4030 80003430 25CE75E0 */  addiu      $t6, $t6, %lo(previousControllerButtonStates)
    /* 4034 80003434 01866824 */  and        $t5, $t4, $a2
    /* 4038 80003438 148E0006 */  bne        $a0, $t6, .L80003454_4054
    /* 403C 8000343C A44D0000 */   sh        $t5, 0x0($v0)
    /* 4040 80003440 3C028004 */  lui        $v0, %hi(D_800475F8)
    /* 4044 80003444 244275F8 */  addiu      $v0, $v0, %lo(D_800475F8)
    /* 4048 80003448 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 404C 8000344C 01E6C024 */  and        $t8, $t7, $a2
    /* 4050 80003450 AC580000 */  sw         $t8, 0x0($v0)
  .L80003454_4054:
    /* 4054 80003454 03E00008 */  jr         $ra
    /* 4058 80003458 00000000 */   nop
endlabel func_800033D4_3FD4
