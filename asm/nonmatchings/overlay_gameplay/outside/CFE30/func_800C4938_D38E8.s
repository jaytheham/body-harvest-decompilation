nonmatching func_800C4938_D38E8, 0x12C

glabel func_800C4938_D38E8
    /* D38E8 800C4938 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* D38EC 800C493C 3C028015 */  lui        $v0, %hi(D_80156ED8)
    /* D38F0 800C4940 90426ED8 */  lbu        $v0, %lo(D_80156ED8)($v0)
    /* D38F4 800C4944 24010001 */  addiu      $at, $zero, 0x1
    /* D38F8 800C4948 AFBF0014 */  sw         $ra, 0x14($sp)
    /* D38FC 800C494C AFA40028 */  sw         $a0, 0x28($sp)
    /* D3900 800C4950 AFA5002C */  sw         $a1, 0x2C($sp)
    /* D3904 800C4954 AFA60030 */  sw         $a2, 0x30($sp)
    /* D3908 800C4958 1441000A */  bne        $v0, $at, .L800C4984_D3934
    /* D390C 800C495C AFA70034 */   sw        $a3, 0x34($sp)
    /* D3910 800C4960 0C000E38 */  jal        func_800038E0_44E0
    /* D3914 800C4964 00000000 */   nop
    /* D3918 800C4968 2401000A */  addiu      $at, $zero, 0xA
    /* D391C 800C496C 0041001A */  div        $zero, $v0, $at
    /* D3920 800C4970 00007010 */  mfhi       $t6
    /* D3924 800C4974 29C10005 */  slti       $at, $t6, 0x5
    /* D3928 800C4978 14200036 */  bnez       $at, .L800C4A54_D3A04
    /* D392C 800C497C 3C028015 */   lui       $v0, %hi(D_80156ED8)
    /* D3930 800C4980 90426ED8 */  lbu        $v0, %lo(D_80156ED8)($v0)
  .L800C4984_D3934:
    /* D3934 800C4984 24010002 */  addiu      $at, $zero, 0x2
    /* D3938 800C4988 10410032 */  beq        $v0, $at, .L800C4A54_D3A04
    /* D393C 800C498C 00002025 */   or        $a0, $zero, $zero
    /* D3940 800C4990 0C0305ED */  jal        func_800C17B4_D0764
    /* D3944 800C4994 24050001 */   addiu     $a1, $zero, 0x1
    /* D3948 800C4998 00021C00 */  sll        $v1, $v0, 16
    /* D394C 800C499C 2401FFFD */  addiu      $at, $zero, -0x3
    /* D3950 800C49A0 1041002C */  beq        $v0, $at, .L800C4A54_D3A04
    /* D3954 800C49A4 00037C03 */   sra       $t7, $v1, 16
    /* D3958 800C49A8 000FC0C0 */  sll        $t8, $t7, 3
    /* D395C 800C49AC 030FC023 */  subu       $t8, $t8, $t7
    /* D3960 800C49B0 3C198015 */  lui        $t9, %hi(D_80154318)
    /* D3964 800C49B4 27394318 */  addiu      $t9, $t9, %lo(D_80154318)
    /* D3968 800C49B8 0018C080 */  sll        $t8, $t8, 2
    /* D396C 800C49BC 03194021 */  addu       $t0, $t8, $t9
    /* D3970 800C49C0 87AC002A */  lh         $t4, 0x2A($sp)
    /* D3974 800C49C4 87AD002E */  lh         $t5, 0x2E($sp)
    /* D3978 800C49C8 87AE0032 */  lh         $t6, 0x32($sp)
    /* D397C 800C49CC 93AF003B */  lbu        $t7, 0x3B($sp)
    /* D3980 800C49D0 93B80037 */  lbu        $t8, 0x37($sp)
    /* D3984 800C49D4 240B000F */  addiu      $t3, $zero, 0xF
    /* D3988 800C49D8 A50B0002 */  sh         $t3, 0x2($t0)
    /* D398C 800C49DC AFA8001C */  sw         $t0, 0x1C($sp)
    /* D3990 800C49E0 A50C0008 */  sh         $t4, 0x8($t0)
    /* D3994 800C49E4 A50D000A */  sh         $t5, 0xA($t0)
    /* D3998 800C49E8 A50E000C */  sh         $t6, 0xC($t0)
    /* D399C 800C49EC A10F0012 */  sb         $t7, 0x12($t0)
    /* D39A0 800C49F0 0C000E38 */  jal        func_800038E0_44E0
    /* D39A4 800C49F4 A1180013 */   sb        $t8, 0x13($t0)
    /* D39A8 800C49F8 24010003 */  addiu      $at, $zero, 0x3
    /* D39AC 800C49FC 0041001A */  div        $zero, $v0, $at
    /* D39B0 800C4A00 00005010 */  mfhi       $t2
    /* D39B4 800C4A04 315900FF */  andi       $t9, $t2, 0xFF
    /* D39B8 800C4A08 00195880 */  sll        $t3, $t9, 2
    /* D39BC 800C4A0C 3C0C8014 */  lui        $t4, %hi(D_8013DFA8)
    /* D39C0 800C4A10 258CDFA8 */  addiu      $t4, $t4, %lo(D_8013DFA8)
    /* D39C4 800C4A14 01795823 */  subu       $t3, $t3, $t9
    /* D39C8 800C4A18 8FA8001C */  lw         $t0, 0x1C($sp)
    /* D39CC 800C4A1C 016C4821 */  addu       $t1, $t3, $t4
    /* D39D0 800C4A20 912D0000 */  lbu        $t5, 0x0($t1)
    /* D39D4 800C4A24 25030008 */  addiu      $v1, $t0, 0x8
    /* D39D8 800C4A28 24070002 */  addiu      $a3, $zero, 0x2
    /* D39DC 800C4A2C A06D0006 */  sb         $t5, 0x6($v1)
    /* D39E0 800C4A30 912E0001 */  lbu        $t6, 0x1($t1)
    /* D39E4 800C4A34 A06E0007 */  sb         $t6, 0x7($v1)
    /* D39E8 800C4A38 912F0002 */  lbu        $t7, 0x2($t1)
    /* D39EC 800C4A3C A06A0009 */  sb         $t2, 0x9($v1)
    /* D39F0 800C4A40 A06F0008 */  sb         $t7, 0x8($v1)
    /* D39F4 800C4A44 87A60032 */  lh         $a2, 0x32($sp)
    /* D39F8 800C4A48 87A5002E */  lh         $a1, 0x2E($sp)
    /* D39FC 800C4A4C 0C04DCAD */  jal        func_801372B4_146264
    /* D3A00 800C4A50 87A4002A */   lh        $a0, 0x2A($sp)
  .L800C4A54_D3A04:
    /* D3A04 800C4A54 8FBF0014 */  lw         $ra, 0x14($sp)
    /* D3A08 800C4A58 27BD0028 */  addiu      $sp, $sp, 0x28
    /* D3A0C 800C4A5C 03E00008 */  jr         $ra
    /* D3A10 800C4A60 00000000 */   nop
endlabel func_800C4938_D38E8
