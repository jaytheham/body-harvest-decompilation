nonmatching func_802D9128_31D278, 0x180

glabel func_802D9128_31D278
    /* 31D278 802D9128 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 31D27C 802D912C AFA40050 */  sw         $a0, 0x50($sp)
    /* 31D280 802D9130 93AE0053 */  lbu        $t6, 0x53($sp)
    /* 31D284 802D9134 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 31D288 802D9138 AFB00040 */  sw         $s0, 0x40($sp)
    /* 31D28C 802D913C 000E7880 */  sll        $t7, $t6, 2
    /* 31D290 802D9140 01EE7821 */  addu       $t7, $t7, $t6
    /* 31D294 802D9144 000F7900 */  sll        $t7, $t7, 4
    /* 31D298 802D9148 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 31D29C 802D914C 01F88021 */  addu       $s0, $t7, $t8
    /* 31D2A0 802D9150 9208001A */  lbu        $t0, 0x1A($s0)
    /* 31D2A4 802D9154 92190025 */  lbu        $t9, 0x25($s0)
    /* 31D2A8 802D9158 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 31D2AC 802D915C 00084880 */  sll        $t1, $t0, 2
    /* 31D2B0 802D9160 01284823 */  subu       $t1, $t1, $t0
    /* 31D2B4 802D9164 00094880 */  sll        $t1, $t1, 2
    /* 31D2B8 802D9168 01284821 */  addu       $t1, $t1, $t0
    /* 31D2BC 802D916C 000948C0 */  sll        $t1, $t1, 3
    /* 31D2C0 802D9170 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 31D2C4 802D9174 00E93821 */  addu       $a3, $a3, $t1
    /* 31D2C8 802D9178 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 31D2CC 802D917C 86040000 */  lh         $a0, 0x0($s0)
    /* 31D2D0 802D9180 86050002 */  lh         $a1, 0x2($s0)
    /* 31D2D4 802D9184 86060004 */  lh         $a2, 0x4($s0)
    /* 31D2D8 802D9188 AFA00010 */  sw         $zero, 0x10($sp)
    /* 31D2DC 802D918C AFA00014 */  sw         $zero, 0x14($sp)
    /* 31D2E0 802D9190 0C037C0E */  jal        func_800DF038_EDFE8
    /* 31D2E4 802D9194 A7B9004E */   sh        $t9, 0x4E($sp)
    /* 31D2E8 802D9198 8E030020 */  lw         $v1, 0x20($s0)
    /* 31D2EC 802D919C 3C010010 */  lui        $at, (0x100000 >> 16)
    /* 31D2F0 802D91A0 93A40053 */  lbu        $a0, 0x53($sp)
    /* 31D2F4 802D91A4 00615024 */  and        $t2, $v1, $at
    /* 31D2F8 802D91A8 15400007 */  bnez       $t2, .L802D91C8_31D318
    /* 31D2FC 802D91AC 01401825 */   or        $v1, $t2, $zero
    /* 31D300 802D91B0 0C04DD1A */  jal        func_80137468_146418
    /* 31D304 802D91B4 2405000D */   addiu     $a1, $zero, 0xD
    /* 31D308 802D91B8 8E030020 */  lw         $v1, 0x20($s0)
    /* 31D30C 802D91BC 3C010010 */  lui        $at, (0x100000 >> 16)
    /* 31D310 802D91C0 00615824 */  and        $t3, $v1, $at
    /* 31D314 802D91C4 01601825 */  or         $v1, $t3, $zero
  .L802D91C8_31D318:
    /* 31D318 802D91C8 14600011 */  bnez       $v1, .L802D9210_31D360
    /* 31D31C 802D91CC 3C198003 */   lui       $t9, %hi(D_80031420)
    /* 31D320 802D91D0 87A3004E */  lh         $v1, 0x4E($sp)
    /* 31D324 802D91D4 240100FF */  addiu      $at, $zero, 0xFF
    /* 31D328 802D91D8 3C0D8005 */  lui        $t5, %hi(alienInstances)
    /* 31D32C 802D91DC 1061000C */  beq        $v1, $at, .L802D9210_31D360
    /* 31D330 802D91E0 00036080 */   sll       $t4, $v1, 2
    /* 31D334 802D91E4 01836021 */  addu       $t4, $t4, $v1
    /* 31D338 802D91E8 000C6100 */  sll        $t4, $t4, 4
    /* 31D33C 802D91EC 25AD8198 */  addiu      $t5, $t5, %lo(alienInstances)
    /* 31D340 802D91F0 018D1021 */  addu       $v0, $t4, $t5
    /* 31D344 802D91F4 904E001A */  lbu        $t6, 0x1A($v0)
    /* 31D348 802D91F8 2401001B */  addiu      $at, $zero, 0x1B
    /* 31D34C 802D91FC 15C10004 */  bne        $t6, $at, .L802D9210_31D360
    /* 31D350 802D9200 00000000 */   nop
    /* 31D354 802D9204 904F0026 */  lbu        $t7, 0x26($v0)
    /* 31D358 802D9208 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* 31D35C 802D920C A0580026 */  sb         $t8, 0x26($v0)
  .L802D9210_31D360:
    /* 31D360 802D9210 8F391420 */  lw         $t9, %lo(D_80031420)($t9)
    /* 31D364 802D9214 33280003 */  andi       $t0, $t9, 0x3
    /* 31D368 802D9218 5100001F */  beql       $t0, $zero, .L802D9298_31D3E8
    /* 31D36C 802D921C 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 31D370 802D9220 0C000E38 */  jal        func_800038E0_44E0
    /* 31D374 802D9224 00000000 */   nop
    /* 31D378 802D9228 24010050 */  addiu      $at, $zero, 0x50
    /* 31D37C 802D922C 0041001A */  div        $zero, $v0, $at
    /* 31D380 802D9230 00007010 */  mfhi       $t6
    /* 31D384 802D9234 240F00B4 */  addiu      $t7, $zero, 0xB4
    /* 31D388 802D9238 01EEC023 */  subu       $t8, $t7, $t6
    /* 31D38C 802D923C 24090001 */  addiu      $t1, $zero, 0x1
    /* 31D390 802D9240 240A0064 */  addiu      $t2, $zero, 0x64
    /* 31D394 802D9244 240B000C */  addiu      $t3, $zero, 0xC
    /* 31D398 802D9248 240C000F */  addiu      $t4, $zero, 0xF
    /* 31D39C 802D924C 240D0080 */  addiu      $t5, $zero, 0x80
    /* 31D3A0 802D9250 24190032 */  addiu      $t9, $zero, 0x32
    /* 31D3A4 802D9254 240800FF */  addiu      $t0, $zero, 0xFF
    /* 31D3A8 802D9258 AFA80034 */  sw         $t0, 0x34($sp)
    /* 31D3AC 802D925C AFB90030 */  sw         $t9, 0x30($sp)
    /* 31D3B0 802D9260 AFAD0024 */  sw         $t5, 0x24($sp)
    /* 31D3B4 802D9264 AFAC0020 */  sw         $t4, 0x20($sp)
    /* 31D3B8 802D9268 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 31D3BC 802D926C AFAA0018 */  sw         $t2, 0x18($sp)
    /* 31D3C0 802D9270 AFA90010 */  sw         $t1, 0x10($sp)
    /* 31D3C4 802D9274 AFB8002C */  sw         $t8, 0x2C($sp)
    /* 31D3C8 802D9278 86040000 */  lh         $a0, 0x0($s0)
    /* 31D3CC 802D927C 86050002 */  lh         $a1, 0x2($s0)
    /* 31D3D0 802D9280 86060004 */  lh         $a2, 0x4($s0)
    /* 31D3D4 802D9284 00003825 */  or         $a3, $zero, $zero
    /* 31D3D8 802D9288 AFA00014 */  sw         $zero, 0x14($sp)
    /* 31D3DC 802D928C 0C03297B */  jal        func_800CA5EC_D959C
    /* 31D3E0 802D9290 AFA00028 */   sw        $zero, 0x28($sp)
    /* 31D3E4 802D9294 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802D9298_31D3E8:
    /* 31D3E8 802D9298 A600002C */  sh         $zero, 0x2C($s0)
    /* 31D3EC 802D929C 8FB00040 */  lw         $s0, 0x40($sp)
    /* 31D3F0 802D92A0 03E00008 */  jr         $ra
    /* 31D3F4 802D92A4 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_802D9128_31D278
