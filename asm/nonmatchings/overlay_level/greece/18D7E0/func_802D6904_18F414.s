nonmatching func_802D6904_18F414, 0x41C

glabel func_802D6904_18F414
    /* 18F414 802D6904 3C018015 */  lui        $at, %hi(D_80157F96)
    /* 18F418 802D6908 A4207F96 */  sh         $zero, %lo(D_80157F96)($at)
    /* 18F41C 802D690C 3C018015 */  lui        $at, %hi(D_80157F76)
    /* 18F420 802D6910 240E012C */  addiu      $t6, $zero, 0x12C
    /* 18F424 802D6914 A42E7F76 */  sh         $t6, %lo(D_80157F76)($at)
    /* 18F428 802D6918 3C018015 */  lui        $at, %hi(D_80157FAC)
    /* 18F42C 802D691C 240F000E */  addiu      $t7, $zero, 0xE
    /* 18F430 802D6920 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 18F434 802D6924 A42F7FAC */  sh         $t7, %lo(D_80157FAC)($at)
    /* 18F438 802D6928 3C018015 */  lui        $at, %hi(D_80157FAE)
    /* 18F43C 802D692C 2418000B */  addiu      $t8, $zero, 0xB
    /* 18F440 802D6930 AFB10020 */  sw         $s1, 0x20($sp)
    /* 18F444 802D6934 AFB0001C */  sw         $s0, 0x1C($sp)
    /* 18F448 802D6938 A4387FAE */  sh         $t8, %lo(D_80157FAE)($at)
    /* 18F44C 802D693C 3C108015 */  lui        $s0, %hi(D_80157F8C)
    /* 18F450 802D6940 3C118015 */  lui        $s1, %hi(D_80157F8E)
    /* 18F454 802D6944 3C018015 */  lui        $at, %hi(D_80157FB0)
    /* 18F458 802D6948 2419FFF7 */  addiu      $t9, $zero, -0x9
    /* 18F45C 802D694C 26317F8E */  addiu      $s1, $s1, %lo(D_80157F8E)
    /* 18F460 802D6950 26107F8C */  addiu      $s0, $s0, %lo(D_80157F8C)
    /* 18F464 802D6954 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 18F468 802D6958 A4397FB0 */  sh         $t9, %lo(D_80157FB0)($at)
    /* 18F46C 802D695C 3C04802E */  lui        $a0, %hi(D_802DE30C)
    /* 18F470 802D6960 2484E30C */  addiu      $a0, $a0, %lo(D_802DE30C)
    /* 18F474 802D6964 86260000 */  lh         $a2, 0x0($s1)
    /* 18F478 802D6968 0C00731B */  jal        osSyncPrintf
    /* 18F47C 802D696C 86050000 */   lh        $a1, 0x0($s0)
    /* 18F480 802D6970 3C088015 */  lui        $t0, %hi(D_80157F94)
    /* 18F484 802D6974 25087F94 */  addiu      $t0, $t0, %lo(D_80157F94)
    /* 18F488 802D6978 85030000 */  lh         $v1, 0x0($t0)
    /* 18F48C 802D697C 240100FF */  addiu      $at, $zero, 0xFF
    /* 18F490 802D6980 3C0A8005 */  lui        $t2, %hi(D_800481B2)
    /* 18F494 802D6984 10610027 */  beq        $v1, $at, .L802D6A24_18F534
    /* 18F498 802D6988 00034880 */   sll       $t1, $v1, 2
    /* 18F49C 802D698C 01234821 */  addu       $t1, $t1, $v1
    /* 18F4A0 802D6990 00094900 */  sll        $t1, $t1, 4
    /* 18F4A4 802D6994 01495021 */  addu       $t2, $t2, $t1
    /* 18F4A8 802D6998 914A81B2 */  lbu        $t2, %lo(D_800481B2)($t2)
    /* 18F4AC 802D699C 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 18F4B0 802D69A0 15400003 */  bnez       $t2, .L802D69B0_18F4C0
    /* 18F4B4 802D69A4 00000000 */   nop
    /* 18F4B8 802D69A8 1000001E */  b          .L802D6A24_18F534
    /* 18F4BC 802D69AC A50B0000 */   sh        $t3, 0x0($t0)
  .L802D69B0_18F4C0:
    /* 18F4C0 802D69B0 0C020039 */  jal        func_800800E4_8F094
    /* 18F4C4 802D69B4 306400FF */   andi      $a0, $v1, 0xFF
    /* 18F4C8 802D69B8 3C048015 */  lui        $a0, %hi(D_80157F95)
    /* 18F4CC 802D69BC 0C020144 */  jal        func_80080510_8F4C0
    /* 18F4D0 802D69C0 90847F95 */   lbu       $a0, %lo(D_80157F95)($a0)
    /* 18F4D4 802D69C4 3C038015 */  lui        $v1, %hi(D_80157F94)
    /* 18F4D8 802D69C8 84637F94 */  lh         $v1, %lo(D_80157F94)($v1)
    /* 18F4DC 802D69CC 3C0D8005 */  lui        $t5, %hi(alienInstances)
    /* 18F4E0 802D69D0 25AD8198 */  addiu      $t5, $t5, %lo(alienInstances)
    /* 18F4E4 802D69D4 00036080 */  sll        $t4, $v1, 2
    /* 18F4E8 802D69D8 01836021 */  addu       $t4, $t4, $v1
    /* 18F4EC 802D69DC 000C6100 */  sll        $t4, $t4, 4
    /* 18F4F0 802D69E0 018D1021 */  addu       $v0, $t4, $t5
    /* 18F4F4 802D69E4 904F001A */  lbu        $t7, 0x1A($v0)
    /* 18F4F8 802D69E8 844E000E */  lh         $t6, 0xE($v0)
    /* 18F4FC 802D69EC 3C198025 */  lui        $t9, %hi(D_802566C8)
    /* 18F500 802D69F0 000FC080 */  sll        $t8, $t7, 2
    /* 18F504 802D69F4 030FC023 */  subu       $t8, $t8, $t7
    /* 18F508 802D69F8 0018C080 */  sll        $t8, $t8, 2
    /* 18F50C 802D69FC 030FC021 */  addu       $t8, $t8, $t7
    /* 18F510 802D6A00 0018C0C0 */  sll        $t8, $t8, 3
    /* 18F514 802D6A04 0338C821 */  addu       $t9, $t9, $t8
    /* 18F518 802D6A08 A44E0006 */  sh         $t6, 0x6($v0)
    /* 18F51C 802D6A0C 8F3966C8 */  lw         $t9, %lo(D_802566C8)($t9)
    /* 18F520 802D6A10 306400FF */  andi       $a0, $v1, 0xFF
    /* 18F524 802D6A14 0320F809 */  jalr       $t9
    /* 18F528 802D6A18 00000000 */   nop
    /* 18F52C 802D6A1C 3C088015 */  lui        $t0, %hi(D_80157F94)
    /* 18F530 802D6A20 25087F94 */  addiu      $t0, $t0, %lo(D_80157F94)
  .L802D6A24_18F534:
    /* 18F534 802D6A24 86050000 */  lh         $a1, 0x0($s0)
    /* 18F538 802D6A28 2CA10009 */  sltiu      $at, $a1, 0x9
    /* 18F53C 802D6A2C 102000B6 */  beqz       $at, .L802D6D08_18F818
    /* 18F540 802D6A30 00054880 */   sll       $t1, $a1, 2
    /* 18F544 802D6A34 3C01802E */  lui        $at, %hi(jtbl_802DE398_overlay_level_greece)
    /* 18F548 802D6A38 00290821 */  addu       $at, $at, $t1
    /* 18F54C 802D6A3C 8C29E398 */  lw         $t1, %lo(jtbl_802DE398_overlay_level_greece)($at)
    /* 18F550 802D6A40 01200008 */  jr         $t1
    /* 18F554 802D6A44 00000000 */   nop
    /* 18F558 802D6A48 3C014348 */  lui        $at, (0x43480000 >> 16)
    /* 18F55C 802D6A4C 44812000 */  mtc1       $at, $f4
    /* 18F560 802D6A50 24AA0001 */  addiu      $t2, $a1, 0x1
    /* 18F564 802D6A54 44803000 */  mtc1       $zero, $f6
    /* 18F568 802D6A58 A6200000 */  sh         $zero, 0x0($s1)
    /* 18F56C 802D6A5C A60A0000 */  sh         $t2, 0x0($s0)
    /* 18F570 802D6A60 3C018015 */  lui        $at, %hi(D_80157F84)
    /* 18F574 802D6A64 E4247F84 */  swc1       $f4, %lo(D_80157F84)($at)
    /* 18F578 802D6A68 3C018015 */  lui        $at, %hi(D_80157F88)
    /* 18F57C 802D6A6C E4267F88 */  swc1       $f6, %lo(D_80157F88)($at)
    /* 18F580 802D6A70 3C0143C8 */  lui        $at, (0x43C80000 >> 16)
    /* 18F584 802D6A74 44814000 */  mtc1       $at, $f8
    /* 18F588 802D6A78 3C018015 */  lui        $at, %hi(D_80157F78)
    /* 18F58C 802D6A7C 24040012 */  addiu      $a0, $zero, 0x12
    /* 18F590 802D6A80 E4287F78 */  swc1       $f8, %lo(D_80157F78)($at)
    /* 18F594 802D6A84 3C01C000 */  lui        $at, (0xC0000000 >> 16)
    /* 18F598 802D6A88 44815000 */  mtc1       $at, $f10
    /* 18F59C 802D6A8C 3C018015 */  lui        $at, %hi(D_80157F7C)
    /* 18F5A0 802D6A90 E42A7F7C */  swc1       $f10, %lo(D_80157F7C)($at)
    /* 18F5A4 802D6A94 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
    /* 18F5A8 802D6A98 44818000 */  mtc1       $at, $f16
    /* 18F5AC 802D6A9C 3C018015 */  lui        $at, %hi(D_80157F80)
    /* 18F5B0 802D6AA0 0C01E55B */  jal        func_8007956C_8851C
    /* 18F5B4 802D6AA4 E4307F80 */   swc1      $f16, %lo(D_80157F80)($at)
    /* 18F5B8 802D6AA8 240100FF */  addiu      $at, $zero, 0xFF
    /* 18F5BC 802D6AAC 1041001F */  beq        $v0, $at, .L802D6B2C_18F63C
    /* 18F5C0 802D6AB0 00402025 */   or        $a0, $v0, $zero
    /* 18F5C4 802D6AB4 00025880 */  sll        $t3, $v0, 2
    /* 18F5C8 802D6AB8 01625821 */  addu       $t3, $t3, $v0
    /* 18F5CC 802D6ABC 3C0C8005 */  lui        $t4, %hi(alienInstances)
    /* 18F5D0 802D6AC0 258C8198 */  addiu      $t4, $t4, %lo(alienInstances)
    /* 18F5D4 802D6AC4 000B5900 */  sll        $t3, $t3, 4
    /* 18F5D8 802D6AC8 016C1021 */  addu       $v0, $t3, $t4
    /* 18F5DC 802D6ACC 8C4F0020 */  lw         $t7, 0x20($v0)
    /* 18F5E0 802D6AD0 3C01F7FF */  lui        $at, (0xF7FFFE5F >> 16)
    /* 18F5E4 802D6AD4 3421FE5F */  ori        $at, $at, (0xF7FFFE5F & 0xFFFF)
    /* 18F5E8 802D6AD8 01E1C024 */  and        $t8, $t7, $at
    /* 18F5EC 802D6ADC 24034C80 */  addiu      $v1, $zero, 0x4C80
    /* 18F5F0 802D6AE0 24054000 */  addiu      $a1, $zero, 0x4000
    /* 18F5F4 802D6AE4 240D9880 */  addiu      $t5, $zero, -0x6780
    /* 18F5F8 802D6AE8 240E9C80 */  addiu      $t6, $zero, -0x6380
    /* 18F5FC 802D6AEC AC580020 */  sw         $t8, 0x20($v0)
    /* 18F600 802D6AF0 37090100 */  ori        $t1, $t8, 0x100
    /* 18F604 802D6AF4 240A0002 */  addiu      $t2, $zero, 0x2
    /* 18F608 802D6AF8 A4430000 */  sh         $v1, 0x0($v0)
    /* 18F60C 802D6AFC A44D0004 */  sh         $t5, 0x4($v0)
    /* 18F610 802D6B00 A4430014 */  sh         $v1, 0x14($v0)
    /* 18F614 802D6B04 A44E0018 */  sh         $t6, 0x18($v0)
    /* 18F618 802D6B08 AC490020 */  sw         $t1, 0x20($v0)
    /* 18F61C 802D6B0C A04A0024 */  sb         $t2, 0x24($v0)
    /* 18F620 802D6B10 A445000E */  sh         $a1, 0xE($v0)
    /* 18F624 802D6B14 A445002A */  sh         $a1, 0x2A($v0)
    /* 18F628 802D6B18 0C01E866 */  jal        func_8007A198_89148
    /* 18F62C 802D6B1C AFA4002C */   sw        $a0, 0x2C($sp)
    /* 18F630 802D6B20 8FA4002C */  lw         $a0, 0x2C($sp)
    /* 18F634 802D6B24 3C018015 */  lui        $at, %hi(D_80157F94)
    /* 18F638 802D6B28 A4247F94 */  sh         $a0, %lo(D_80157F94)($at)
  .L802D6B2C_18F63C:
    /* 18F63C 802D6B2C 3C0B8015 */  lui        $t3, %hi(D_80157F94)
    /* 18F640 802D6B30 856B7F94 */  lh         $t3, %lo(D_80157F94)($t3)
    /* 18F644 802D6B34 3C0D8005 */  lui        $t5, %hi(alienInstances)
    /* 18F648 802D6B38 25AD8198 */  addiu      $t5, $t5, %lo(alienInstances)
    /* 18F64C 802D6B3C 000B6080 */  sll        $t4, $t3, 2
    /* 18F650 802D6B40 018B6021 */  addu       $t4, $t4, $t3
    /* 18F654 802D6B44 000C6100 */  sll        $t4, $t4, 4
    /* 18F658 802D6B48 018D1021 */  addu       $v0, $t4, $t5
    /* 18F65C 802D6B4C 84440000 */  lh         $a0, 0x0($v0)
    /* 18F660 802D6B50 84450002 */  lh         $a1, 0x2($v0)
    /* 18F664 802D6B54 0C0336D0 */  jal        func_800CDB40_DCAF0
    /* 18F668 802D6B58 84460004 */   lh        $a2, 0x4($v0)
    /* 18F66C 802D6B5C 3C018015 */  lui        $at, %hi(D_80157F98)
    /* 18F670 802D6B60 10000069 */  b          .L802D6D08_18F818
    /* 18F674 802D6B64 A4227F98 */   sh        $v0, %lo(D_80157F98)($at)
    /* 18F678 802D6B68 86220000 */  lh         $v0, 0x0($s1)
    /* 18F67C 802D6B6C 24AF0001 */  addiu      $t7, $a1, 0x1
    /* 18F680 802D6B70 28430038 */  slti       $v1, $v0, 0x38
    /* 18F684 802D6B74 244E0001 */  addiu      $t6, $v0, 0x1
    /* 18F688 802D6B78 14600063 */  bnez       $v1, .L802D6D08_18F818
    /* 18F68C 802D6B7C A62E0000 */   sh        $t6, 0x0($s1)
    /* 18F690 802D6B80 A6200000 */  sh         $zero, 0x0($s1)
    /* 18F694 802D6B84 10000060 */  b          .L802D6D08_18F818
    /* 18F698 802D6B88 A60F0000 */   sh        $t7, 0x0($s0)
    /* 18F69C 802D6B8C 3C048015 */  lui        $a0, %hi(D_80157F98)
    /* 18F6A0 802D6B90 0C03375F */  jal        func_800CDD7C_DCD2C
    /* 18F6A4 802D6B94 84847F98 */   lh        $a0, %lo(D_80157F98)($a0)
    /* 18F6A8 802D6B98 24180006 */  addiu      $t8, $zero, 0x6
    /* 18F6AC 802D6B9C AFB80010 */  sw         $t8, 0x10($sp)
    /* 18F6B0 802D6BA0 24044C7C */  addiu      $a0, $zero, 0x4C7C
    /* 18F6B4 802D6BA4 24050350 */  addiu      $a1, $zero, 0x350
    /* 18F6B8 802D6BA8 240698A4 */  addiu      $a2, $zero, -0x675C
    /* 18F6BC 802D6BAC 0C037EEA */  jal        func_800DFBA8_EEB58
    /* 18F6C0 802D6BB0 240700B4 */   addiu     $a3, $zero, 0xB4
    /* 18F6C4 802D6BB4 86190000 */  lh         $t9, 0x0($s0)
    /* 18F6C8 802D6BB8 27290001 */  addiu      $t1, $t9, 0x1
    /* 18F6CC 802D6BBC A6090000 */  sh         $t1, 0x0($s0)
    /* 18F6D0 802D6BC0 86220000 */  lh         $v0, 0x0($s1)
    /* 18F6D4 802D6BC4 28430005 */  slti       $v1, $v0, 0x5
    /* 18F6D8 802D6BC8 244A0001 */  addiu      $t2, $v0, 0x1
    /* 18F6DC 802D6BCC 1460004E */  bnez       $v1, .L802D6D08_18F818
    /* 18F6E0 802D6BD0 A62A0000 */   sh        $t2, 0x0($s1)
    /* 18F6E4 802D6BD4 860B0000 */  lh         $t3, 0x0($s0)
    /* 18F6E8 802D6BD8 A6200000 */  sh         $zero, 0x0($s1)
    /* 18F6EC 802D6BDC 256C0001 */  addiu      $t4, $t3, 0x1
    /* 18F6F0 802D6BE0 10000049 */  b          .L802D6D08_18F818
    /* 18F6F4 802D6BE4 A60C0000 */   sh        $t4, 0x0($s0)
    /* 18F6F8 802D6BE8 240D0300 */  addiu      $t5, $zero, 0x300
    /* 18F6FC 802D6BEC AFAD0010 */  sw         $t5, 0x10($sp)
    /* 18F700 802D6BF0 24044C7C */  addiu      $a0, $zero, 0x4C7C
    /* 18F704 802D6BF4 24050350 */  addiu      $a1, $zero, 0x350
    /* 18F708 802D6BF8 240698A4 */  addiu      $a2, $zero, -0x675C
    /* 18F70C 802D6BFC 0C0492D7 */  jal        func_80124B5C_133B0C
    /* 18F710 802D6C00 24072711 */   addiu     $a3, $zero, 0x2711
    /* 18F714 802D6C04 860E0000 */  lh         $t6, 0x0($s0)
    /* 18F718 802D6C08 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 18F71C 802D6C0C A60F0000 */  sh         $t7, 0x0($s0)
    /* 18F720 802D6C10 86220000 */  lh         $v0, 0x0($s1)
    /* 18F724 802D6C14 28430029 */  slti       $v1, $v0, 0x29
    /* 18F728 802D6C18 24580001 */  addiu      $t8, $v0, 0x1
    /* 18F72C 802D6C1C 1460003A */  bnez       $v1, .L802D6D08_18F818
    /* 18F730 802D6C20 A6380000 */   sh        $t8, 0x0($s1)
    /* 18F734 802D6C24 86190000 */  lh         $t9, 0x0($s0)
    /* 18F738 802D6C28 A6200000 */  sh         $zero, 0x0($s1)
    /* 18F73C 802D6C2C 27290001 */  addiu      $t1, $t9, 0x1
    /* 18F740 802D6C30 10000035 */  b          .L802D6D08_18F818
    /* 18F744 802D6C34 A6090000 */   sh        $t1, 0x0($s0)
    /* 18F748 802D6C38 850A0000 */  lh         $t2, 0x0($t0)
    /* 18F74C 802D6C3C 3C0C8005 */  lui        $t4, %hi(alienInstances)
    /* 18F750 802D6C40 258C8198 */  addiu      $t4, $t4, %lo(alienInstances)
    /* 18F754 802D6C44 000A5880 */  sll        $t3, $t2, 2
    /* 18F758 802D6C48 016A5821 */  addu       $t3, $t3, $t2
    /* 18F75C 802D6C4C 000B5900 */  sll        $t3, $t3, 4
    /* 18F760 802D6C50 016C1021 */  addu       $v0, $t3, $t4
    /* 18F764 802D6C54 84450000 */  lh         $a1, 0x0($v0)
    /* 18F768 802D6C58 3C04802E */  lui        $a0, %hi(D_802DE318)
    /* 18F76C 802D6C5C 2484E318 */  addiu      $a0, $a0, %lo(D_802DE318)
    /* 18F770 802D6C60 84460002 */  lh         $a2, 0x2($v0)
    /* 18F774 802D6C64 84470004 */  lh         $a3, 0x4($v0)
    /* 18F778 802D6C68 0C00731B */  jal        osSyncPrintf
    /* 18F77C 802D6C6C 24A50096 */   addiu     $a1, $a1, 0x96
    /* 18F780 802D6C70 3C048015 */  lui        $a0, %hi(D_80157F95)
    /* 18F784 802D6C74 0C021EAB */  jal        func_80087AAC_96A5C
    /* 18F788 802D6C78 90847F95 */   lbu       $a0, %lo(D_80157F95)($a0)
    /* 18F78C 802D6C7C 3C0E8015 */  lui        $t6, %hi(D_80157F94)
    /* 18F790 802D6C80 85CE7F94 */  lh         $t6, %lo(D_80157F94)($t6)
    /* 18F794 802D6C84 3C018005 */  lui        $at, %hi(D_800481C4)
    /* 18F798 802D6C88 240D0014 */  addiu      $t5, $zero, 0x14
    /* 18F79C 802D6C8C 000E7880 */  sll        $t7, $t6, 2
    /* 18F7A0 802D6C90 01EE7821 */  addu       $t7, $t7, $t6
    /* 18F7A4 802D6C94 000F7900 */  sll        $t7, $t7, 4
    /* 18F7A8 802D6C98 002F0821 */  addu       $at, $at, $t7
    /* 18F7AC 802D6C9C A42D81C4 */  sh         $t5, %lo(D_800481C4)($at)
    /* 18F7B0 802D6CA0 86180000 */  lh         $t8, 0x0($s0)
    /* 18F7B4 802D6CA4 3C088015 */  lui        $t0, %hi(D_80157F94)
    /* 18F7B8 802D6CA8 25087F94 */  addiu      $t0, $t0, %lo(D_80157F94)
    /* 18F7BC 802D6CAC 27190001 */  addiu      $t9, $t8, 0x1
    /* 18F7C0 802D6CB0 A6190000 */  sh         $t9, 0x0($s0)
    /* 18F7C4 802D6CB4 85030000 */  lh         $v1, 0x0($t0)
    /* 18F7C8 802D6CB8 240100FF */  addiu      $at, $zero, 0xFF
    /* 18F7CC 802D6CBC 50610004 */  beql       $v1, $at, .L802D6CD0_18F7E0
    /* 18F7D0 802D6CC0 86220000 */   lh        $v0, 0x0($s1)
    /* 18F7D4 802D6CC4 0C021EBF */  jal        func_80087AFC_96AAC
    /* 18F7D8 802D6CC8 306400FF */   andi      $a0, $v1, 0xFF
    /* 18F7DC 802D6CCC 86220000 */  lh         $v0, 0x0($s1)
  .L802D6CD0_18F7E0:
    /* 18F7E0 802D6CD0 2843001F */  slti       $v1, $v0, 0x1F
    /* 18F7E4 802D6CD4 24490001 */  addiu      $t1, $v0, 0x1
    /* 18F7E8 802D6CD8 1460000B */  bnez       $v1, .L802D6D08_18F818
    /* 18F7EC 802D6CDC A6290000 */   sh        $t1, 0x0($s1)
    /* 18F7F0 802D6CE0 860A0000 */  lh         $t2, 0x0($s0)
    /* 18F7F4 802D6CE4 A6200000 */  sh         $zero, 0x0($s1)
    /* 18F7F8 802D6CE8 254B0001 */  addiu      $t3, $t2, 0x1
    /* 18F7FC 802D6CEC 10000006 */  b          .L802D6D08_18F818
    /* 18F800 802D6CF0 A60B0000 */   sh        $t3, 0x0($s0)
    /* 18F804 802D6CF4 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 18F808 802D6CF8 3C018016 */  lui        $at, %hi(D_80159DDF)
    /* 18F80C 802D6CFC A02C9DDF */  sb         $t4, %lo(D_80159DDF)($at)
    /* 18F810 802D6D00 10000002 */  b          .L802D6D0C_18F81C
    /* 18F814 802D6D04 24020001 */   addiu     $v0, $zero, 0x1
  .L802D6D08_18F818:
    /* 18F818 802D6D08 00001025 */  or         $v0, $zero, $zero
  .L802D6D0C_18F81C:
    /* 18F81C 802D6D0C 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 18F820 802D6D10 8FB0001C */  lw         $s0, 0x1C($sp)
    /* 18F824 802D6D14 8FB10020 */  lw         $s1, 0x20($sp)
    /* 18F828 802D6D18 03E00008 */  jr         $ra
    /* 18F82C 802D6D1C 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_802D6904_18F414
