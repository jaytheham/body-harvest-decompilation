nonmatching func_800C8E10_D7DC0, 0x14C

glabel func_800C8E10_D7DC0
    /* D7DC0 800C8E10 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* D7DC4 800C8E14 3C0F8015 */  lui        $t7, %hi(D_80156ED8)
    /* D7DC8 800C8E18 91EF6ED8 */  lbu        $t7, %lo(D_80156ED8)($t7)
    /* D7DCC 800C8E1C AFA70034 */  sw         $a3, 0x34($sp)
    /* D7DD0 800C8E20 30EE00FF */  andi       $t6, $a3, 0xFF
    /* D7DD4 800C8E24 24010002 */  addiu      $at, $zero, 0x2
    /* D7DD8 800C8E28 01C03825 */  or         $a3, $t6, $zero
    /* D7DDC 800C8E2C AFBF0014 */  sw         $ra, 0x14($sp)
    /* D7DE0 800C8E30 AFA40028 */  sw         $a0, 0x28($sp)
    /* D7DE4 800C8E34 AFA5002C */  sw         $a1, 0x2C($sp)
    /* D7DE8 800C8E38 15E10009 */  bne        $t7, $at, .L800C8E60_D7E10
    /* D7DEC 800C8E3C AFA60030 */   sw        $a2, 0x30($sp)
    /* D7DF0 800C8E40 0C000E38 */  jal        func_800038E0_44E0
    /* D7DF4 800C8E44 A3AE0037 */   sb        $t6, 0x37($sp)
    /* D7DF8 800C8E48 2401000A */  addiu      $at, $zero, 0xA
    /* D7DFC 800C8E4C 0041001A */  div        $zero, $v0, $at
    /* D7E00 800C8E50 0000C010 */  mfhi       $t8
    /* D7E04 800C8E54 2B010005 */  slti       $at, $t8, 0x5
    /* D7E08 800C8E58 1420003C */  bnez       $at, .L800C8F4C_D7EFC
    /* D7E0C 800C8E5C 93A70037 */   lbu       $a3, 0x37($sp)
  .L800C8E60_D7E10:
    /* D7E10 800C8E60 28E1001E */  slti       $at, $a3, 0x1E
    /* D7E14 800C8E64 10200039 */  beqz       $at, .L800C8F4C_D7EFC
    /* D7E18 800C8E68 240100FB */   addiu     $at, $zero, 0xFB
    /* D7E1C 800C8E6C 10E10037 */  beq        $a3, $at, .L800C8F4C_D7EFC
    /* D7E20 800C8E70 0007C880 */   sll       $t9, $a3, 2
    /* D7E24 800C8E74 0327C823 */  subu       $t9, $t9, $a3
    /* D7E28 800C8E78 3C088015 */  lui        $t0, %hi(D_80154088)
    /* D7E2C 800C8E7C 25084088 */  addiu      $t0, $t0, %lo(D_80154088)
    /* D7E30 800C8E80 0019C880 */  sll        $t9, $t9, 2
    /* D7E34 800C8E84 03283021 */  addu       $a2, $t9, $t0
    /* D7E38 800C8E88 90C90000 */  lbu        $t1, 0x0($a2)
    /* D7E3C 800C8E8C 24010003 */  addiu      $at, $zero, 0x3
    /* D7E40 800C8E90 30E400FF */  andi       $a0, $a3, 0xFF
    /* D7E44 800C8E94 1521002D */  bne        $t1, $at, .L800C8F4C_D7EFC
    /* D7E48 800C8E98 00002825 */   or        $a1, $zero, $zero
    /* D7E4C 800C8E9C 0C0305ED */  jal        func_800C17B4_D0764
    /* D7E50 800C8EA0 AFA60020 */   sw        $a2, 0x20($sp)
    /* D7E54 800C8EA4 00022400 */  sll        $a0, $v0, 16
    /* D7E58 800C8EA8 2401FFFD */  addiu      $at, $zero, -0x3
    /* D7E5C 800C8EAC 00045403 */  sra        $t2, $a0, 16
    /* D7E60 800C8EB0 10410026 */  beq        $v0, $at, .L800C8F4C_D7EFC
    /* D7E64 800C8EB4 8FA60020 */   lw        $a2, 0x20($sp)
    /* D7E68 800C8EB8 000A58C0 */  sll        $t3, $t2, 3
    /* D7E6C 800C8EBC 016A5823 */  subu       $t3, $t3, $t2
    /* D7E70 800C8EC0 3C0C8015 */  lui        $t4, %hi(D_80154318)
    /* D7E74 800C8EC4 258C4318 */  addiu      $t4, $t4, %lo(D_80154318)
    /* D7E78 800C8EC8 000B5880 */  sll        $t3, $t3, 2
    /* D7E7C 800C8ECC 016C1821 */  addu       $v1, $t3, $t4
    /* D7E80 800C8ED0 87AD002A */  lh         $t5, 0x2A($sp)
    /* D7E84 800C8ED4 87AE002E */  lh         $t6, 0x2E($sp)
    /* D7E88 800C8ED8 87AF0032 */  lh         $t7, 0x32($sp)
    /* D7E8C 800C8EDC AFA3001C */  sw         $v1, 0x1C($sp)
    /* D7E90 800C8EE0 AFA60020 */  sw         $a2, 0x20($sp)
    /* D7E94 800C8EE4 A46D0008 */  sh         $t5, 0x8($v1)
    /* D7E98 800C8EE8 A46E000A */  sh         $t6, 0xA($v1)
    /* D7E9C 800C8EEC 0C000E38 */  jal        func_800038E0_44E0
    /* D7EA0 800C8EF0 A46F000C */   sh        $t7, 0xC($v1)
    /* D7EA4 800C8EF4 2401000F */  addiu      $at, $zero, 0xF
    /* D7EA8 800C8EF8 0041001A */  div        $zero, $v0, $at
    /* D7EAC 800C8EFC 8FA60020 */  lw         $a2, 0x20($sp)
    /* D7EB0 800C8F00 8FA3001C */  lw         $v1, 0x1C($sp)
    /* D7EB4 800C8F04 0000C010 */  mfhi       $t8
    /* D7EB8 800C8F08 84C90006 */  lh         $t1, 0x6($a2)
    /* D7EBC 800C8F0C 3C0B8015 */  lui        $t3, %hi(D_80154318)
    /* D7EC0 800C8F10 2719001E */  addiu      $t9, $t8, 0x1E
    /* D7EC4 800C8F14 000950C0 */  sll        $t2, $t1, 3
    /* D7EC8 800C8F18 01495023 */  subu       $t2, $t2, $t1
    /* D7ECC 800C8F1C 240800FA */  addiu      $t0, $zero, 0xFA
    /* D7ED0 800C8F20 000A5080 */  sll        $t2, $t2, 2
    /* D7ED4 800C8F24 256B4318 */  addiu      $t3, $t3, %lo(D_80154318)
    /* D7ED8 800C8F28 014B2021 */  addu       $a0, $t2, $t3
    /* D7EDC 800C8F2C A4790002 */  sh         $t9, 0x2($v1)
    /* D7EE0 800C8F30 A0680011 */  sb         $t0, 0x11($v1)
    /* D7EE4 800C8F34 908C000E */  lbu        $t4, 0xE($a0)
    /* D7EE8 800C8F38 A06C000E */  sb         $t4, 0xE($v1)
    /* D7EEC 800C8F3C 908D000F */  lbu        $t5, 0xF($a0)
    /* D7EF0 800C8F40 A06D000F */  sb         $t5, 0xF($v1)
    /* D7EF4 800C8F44 908E0010 */  lbu        $t6, 0x10($a0)
    /* D7EF8 800C8F48 A06E0010 */  sb         $t6, 0x10($v1)
  .L800C8F4C_D7EFC:
    /* D7EFC 800C8F4C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* D7F00 800C8F50 27BD0028 */  addiu      $sp, $sp, 0x28
    /* D7F04 800C8F54 03E00008 */  jr         $ra
    /* D7F08 800C8F58 00000000 */   nop
endlabel func_800C8E10_D7DC0
