nonmatching func_802D51F8_1EDF08, 0x310

glabel func_802D51F8_1EDF08
    /* 1EDF08 802D51F8 3C088015 */  lui        $t0, %hi(D_80157F8C)
    /* 1EDF0C 802D51FC 25087F8C */  addiu      $t0, $t0, %lo(D_80157F8C)
    /* 1EDF10 802D5200 85040000 */  lh         $a0, 0x0($t0)
    /* 1EDF14 802D5204 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 1EDF18 802D5208 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 1EDF1C 802D520C 2C810006 */  sltiu      $at, $a0, 0x6
    /* 1EDF20 802D5210 102000B8 */  beqz       $at, .L802D54F4_1EE204
    /* 1EDF24 802D5214 00047080 */   sll       $t6, $a0, 2
    /* 1EDF28 802D5218 3C01802E */  lui        $at, %hi(jtbl_802E0E90_overlay_level_java)
    /* 1EDF2C 802D521C 002E0821 */  addu       $at, $at, $t6
    /* 1EDF30 802D5220 8C2E0E90 */  lw         $t6, %lo(jtbl_802E0E90_overlay_level_java)($at)
    /* 1EDF34 802D5224 01C00008 */  jr         $t6
    /* 1EDF38 802D5228 00000000 */   nop
    /* 1EDF3C 802D522C 3C038015 */  lui        $v1, %hi(D_80157F8E)
    /* 1EDF40 802D5230 84637F8E */  lh         $v1, %lo(D_80157F8E)($v1)
    /* 1EDF44 802D5234 3C028005 */  lui        $v0, %hi(vehicleInstances)
    /* 1EDF48 802D5238 2442DCD0 */  addiu      $v0, $v0, %lo(vehicleInstances)
    /* 1EDF4C 802D523C 28610010 */  slti       $at, $v1, 0x10
    /* 1EDF50 802D5240 14200004 */  bnez       $at, .L802D5254_1EDF64
    /* 1EDF54 802D5244 24790001 */   addiu     $t9, $v1, 0x1
    /* 1EDF58 802D5248 844F14DE */  lh         $t7, 0x14DE($v0)
    /* 1EDF5C 802D524C 25F8028A */  addiu      $t8, $t7, 0x28A
    /* 1EDF60 802D5250 A45814DE */  sh         $t8, 0x14DE($v0)
  .L802D5254_1EDF64:
    /* 1EDF64 802D5254 28620029 */  slti       $v0, $v1, 0x29
    /* 1EDF68 802D5258 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* 1EDF6C 802D525C 144000A5 */  bnez       $v0, .L802D54F4_1EE204
    /* 1EDF70 802D5260 A4397F8E */   sh        $t9, %lo(D_80157F8E)($at)
    /* 1EDF74 802D5264 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* 1EDF78 802D5268 A4207F8E */  sh         $zero, %lo(D_80157F8E)($at)
    /* 1EDF7C 802D526C 248A0001 */  addiu      $t2, $a0, 0x1
    /* 1EDF80 802D5270 100000A0 */  b          .L802D54F4_1EE204
    /* 1EDF84 802D5274 A50A0000 */   sh        $t2, 0x0($t0)
    /* 1EDF88 802D5278 3C098015 */  lui        $t1, %hi(D_80157F8E)
    /* 1EDF8C 802D527C 25297F8E */  addiu      $t1, $t1, %lo(D_80157F8E)
    /* 1EDF90 802D5280 85230000 */  lh         $v1, 0x0($t1)
    /* 1EDF94 802D5284 2401000F */  addiu      $at, $zero, 0xF
    /* 1EDF98 802D5288 24043950 */  addiu      $a0, $zero, 0x3950
    /* 1EDF9C 802D528C 1461001B */  bne        $v1, $at, .L802D52FC_1EE00C
    /* 1EDFA0 802D5290 24050640 */   addiu     $a1, $zero, 0x640
    /* 1EDFA4 802D5294 24063C9C */  addiu      $a2, $zero, 0x3C9C
    /* 1EDFA8 802D5298 24070050 */  addiu      $a3, $zero, 0x50
    /* 1EDFAC 802D529C AFA00010 */  sw         $zero, 0x10($sp)
    /* 1EDFB0 802D52A0 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1EDFB4 802D52A4 AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EDFB8 802D52A8 24043950 */  addiu      $a0, $zero, 0x3950
    /* 1EDFBC 802D52AC 24050640 */  addiu      $a1, $zero, 0x640
    /* 1EDFC0 802D52B0 24063C9C */  addiu      $a2, $zero, 0x3C9C
    /* 1EDFC4 802D52B4 0C04D751 */  jal        func_80135D44_144CF4
    /* 1EDFC8 802D52B8 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* 1EDFCC 802D52BC 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 1EDFD0 802D52C0 44812000 */  mtc1       $at, $f4
    /* 1EDFD4 802D52C4 240B3C9C */  addiu      $t3, $zero, 0x3C9C
    /* 1EDFD8 802D52C8 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 1EDFDC 802D52CC 00002025 */  or         $a0, $zero, $zero
    /* 1EDFE0 802D52D0 2405005B */  addiu      $a1, $zero, 0x5B
    /* 1EDFE4 802D52D4 24063950 */  addiu      $a2, $zero, 0x3950
    /* 1EDFE8 802D52D8 24070640 */  addiu      $a3, $zero, 0x640
    /* 1EDFEC 802D52DC 0C04DC6E */  jal        func_801371B8_146168
    /* 1EDFF0 802D52E0 E7A40014 */   swc1      $f4, 0x14($sp)
    /* 1EDFF4 802D52E4 3C038015 */  lui        $v1, %hi(D_80157F8E)
    /* 1EDFF8 802D52E8 3C098015 */  lui        $t1, %hi(D_80157F8E)
    /* 1EDFFC 802D52EC 3C088015 */  lui        $t0, %hi(D_80157F8C)
    /* 1EE000 802D52F0 25087F8C */  addiu      $t0, $t0, %lo(D_80157F8C)
    /* 1EE004 802D52F4 25297F8E */  addiu      $t1, $t1, %lo(D_80157F8E)
    /* 1EE008 802D52F8 84637F8E */  lh         $v1, %lo(D_80157F8E)($v1)
  .L802D52FC_1EE00C:
    /* 1EE00C 802D52FC 28620029 */  slti       $v0, $v1, 0x29
    /* 1EE010 802D5300 246C0001 */  addiu      $t4, $v1, 0x1
    /* 1EE014 802D5304 1440007B */  bnez       $v0, .L802D54F4_1EE204
    /* 1EE018 802D5308 A52C0000 */   sh        $t4, 0x0($t1)
    /* 1EE01C 802D530C 850D0000 */  lh         $t5, 0x0($t0)
    /* 1EE020 802D5310 A5200000 */  sh         $zero, 0x0($t1)
    /* 1EE024 802D5314 25AE0001 */  addiu      $t6, $t5, 0x1
    /* 1EE028 802D5318 10000076 */  b          .L802D54F4_1EE204
    /* 1EE02C 802D531C A50E0000 */   sh        $t6, 0x0($t0)
    /* 1EE030 802D5320 3C098015 */  lui        $t1, %hi(D_80157F8E)
    /* 1EE034 802D5324 25297F8E */  addiu      $t1, $t1, %lo(D_80157F8E)
    /* 1EE038 802D5328 85230000 */  lh         $v1, 0x0($t1)
    /* 1EE03C 802D532C 2401000F */  addiu      $at, $zero, 0xF
    /* 1EE040 802D5330 24043950 */  addiu      $a0, $zero, 0x3950
    /* 1EE044 802D5334 1461000C */  bne        $v1, $at, .L802D5368_1EE078
    /* 1EE048 802D5338 24050640 */   addiu     $a1, $zero, 0x640
    /* 1EE04C 802D533C 24063C9C */  addiu      $a2, $zero, 0x3C9C
    /* 1EE050 802D5340 24070050 */  addiu      $a3, $zero, 0x50
    /* 1EE054 802D5344 AFA00010 */  sw         $zero, 0x10($sp)
    /* 1EE058 802D5348 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1EE05C 802D534C AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EE060 802D5350 3C038015 */  lui        $v1, %hi(D_80157F8E)
    /* 1EE064 802D5354 3C098015 */  lui        $t1, %hi(D_80157F8E)
    /* 1EE068 802D5358 3C088015 */  lui        $t0, %hi(D_80157F8C)
    /* 1EE06C 802D535C 25087F8C */  addiu      $t0, $t0, %lo(D_80157F8C)
    /* 1EE070 802D5360 25297F8E */  addiu      $t1, $t1, %lo(D_80157F8E)
    /* 1EE074 802D5364 84637F8E */  lh         $v1, %lo(D_80157F8E)($v1)
  .L802D5368_1EE078:
    /* 1EE078 802D5368 28620033 */  slti       $v0, $v1, 0x33
    /* 1EE07C 802D536C 246F0001 */  addiu      $t7, $v1, 0x1
    /* 1EE080 802D5370 14400060 */  bnez       $v0, .L802D54F4_1EE204
    /* 1EE084 802D5374 A52F0000 */   sh        $t7, 0x0($t1)
    /* 1EE088 802D5378 85180000 */  lh         $t8, 0x0($t0)
    /* 1EE08C 802D537C A5200000 */  sh         $zero, 0x0($t1)
    /* 1EE090 802D5380 27190001 */  addiu      $t9, $t8, 0x1
    /* 1EE094 802D5384 1000005B */  b          .L802D54F4_1EE204
    /* 1EE098 802D5388 A5190000 */   sh        $t9, 0x0($t0)
    /* 1EE09C 802D538C 3C098015 */  lui        $t1, %hi(D_80157F8E)
    /* 1EE0A0 802D5390 25297F8E */  addiu      $t1, $t1, %lo(D_80157F8E)
    /* 1EE0A4 802D5394 85230000 */  lh         $v1, 0x0($t1)
    /* 1EE0A8 802D5398 240A4500 */  addiu      $t2, $zero, 0x4500
    /* 1EE0AC 802D539C 240B2800 */  addiu      $t3, $zero, 0x2800
    /* 1EE0B0 802D53A0 1460003E */  bnez       $v1, .L802D549C_1EE1AC
    /* 1EE0B4 802D53A4 27A4003C */   addiu     $a0, $sp, 0x3C
    /* 1EE0B8 802D53A8 87A30046 */  lh         $v1, 0x46($sp)
    /* 1EE0BC 802D53AC 44800000 */  mtc1       $zero, $f0
    /* 1EE0C0 802D53B0 3C058014 */  lui        $a1, %hi(D_80145E98)
    /* 1EE0C4 802D53B4 00036080 */  sll        $t4, $v1, 2
    /* 1EE0C8 802D53B8 01836023 */  subu       $t4, $t4, $v1
    /* 1EE0CC 802D53BC 000C60C0 */  sll        $t4, $t4, 3
    /* 1EE0D0 802D53C0 01836021 */  addu       $t4, $t4, $v1
    /* 1EE0D4 802D53C4 000C6100 */  sll        $t4, $t4, 4
    /* 1EE0D8 802D53C8 258D0190 */  addiu      $t5, $t4, 0x190
    /* 1EE0DC 802D53CC A7AA003C */  sh         $t2, 0x3C($sp)
    /* 1EE0E0 802D53D0 A7AB0040 */  sh         $t3, 0x40($sp)
    /* 1EE0E4 802D53D4 A7AD003E */  sh         $t5, 0x3E($sp)
    /* 1EE0E8 802D53D8 24A55E98 */  addiu      $a1, $a1, %lo(D_80145E98)
    /* 1EE0EC 802D53DC 00003025 */  or         $a2, $zero, $zero
    /* 1EE0F0 802D53E0 00003825 */  or         $a3, $zero, $zero
    /* 1EE0F4 802D53E4 AFA00010 */  sw         $zero, 0x10($sp)
    /* 1EE0F8 802D53E8 E7A00014 */  swc1       $f0, 0x14($sp)
    /* 1EE0FC 802D53EC E7A00018 */  swc1       $f0, 0x18($sp)
    /* 1EE100 802D53F0 0C0489BE */  jal        func_801226F8_1316A8
    /* 1EE104 802D53F4 E7A0001C */   swc1      $f0, 0x1C($sp)
    /* 1EE108 802D53F8 10400003 */  beqz       $v0, .L802D5408_1EE118
    /* 1EE10C 802D53FC 00001825 */   or        $v1, $zero, $zero
    /* 1EE110 802D5400 240E0064 */  addiu      $t6, $zero, 0x64
    /* 1EE114 802D5404 A44E0028 */  sh         $t6, 0x28($v0)
  .L802D5408_1EE118:
    /* 1EE118 802D5408 00037880 */  sll        $t7, $v1, 2
  .L802D540C_1EE11C:
    /* 1EE11C 802D540C 01E37821 */  addu       $t7, $t7, $v1
    /* 1EE120 802D5410 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1EE124 802D5414 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1EE128 802D5418 000F7900 */  sll        $t7, $t7, 4
    /* 1EE12C 802D541C 01F82021 */  addu       $a0, $t7, $t8
    /* 1EE130 802D5420 9099001A */  lbu        $t9, 0x1A($a0)
    /* 1EE134 802D5424 24010007 */  addiu      $at, $zero, 0x7
    /* 1EE138 802D5428 57210011 */  bnel       $t9, $at, .L802D5470_1EE180
    /* 1EE13C 802D542C 24630001 */   addiu     $v1, $v1, 0x1
    /* 1EE140 802D5430 84820000 */  lh         $v0, 0x0($a0)
    /* 1EE144 802D5434 28414ADC */  slti       $at, $v0, 0x4ADC
    /* 1EE148 802D5438 1020000C */  beqz       $at, .L802D546C_1EE17C
    /* 1EE14C 802D543C 28413F25 */   slti      $at, $v0, 0x3F25
    /* 1EE150 802D5440 5420000B */  bnel       $at, $zero, .L802D5470_1EE180
    /* 1EE154 802D5444 24630001 */   addiu     $v1, $v1, 0x1
    /* 1EE158 802D5448 84820004 */  lh         $v0, 0x4($a0)
    /* 1EE15C 802D544C 28412DDC */  slti       $at, $v0, 0x2DDC
    /* 1EE160 802D5450 10200006 */  beqz       $at, .L802D546C_1EE17C
    /* 1EE164 802D5454 28412225 */   slti      $at, $v0, 0x2225
    /* 1EE168 802D5458 54200005 */  bnel       $at, $zero, .L802D5470_1EE180
    /* 1EE16C 802D545C 24630001 */   addiu     $v1, $v1, 0x1
    /* 1EE170 802D5460 0C0221D8 */  jal        func_80088760_97710
    /* 1EE174 802D5464 A7A30046 */   sh        $v1, 0x46($sp)
    /* 1EE178 802D5468 87A30046 */  lh         $v1, 0x46($sp)
  .L802D546C_1EE17C:
    /* 1EE17C 802D546C 24630001 */  addiu      $v1, $v1, 0x1
  .L802D5470_1EE180:
    /* 1EE180 802D5470 00035400 */  sll        $t2, $v1, 16
    /* 1EE184 802D5474 000A1C03 */  sra        $v1, $t2, 16
    /* 1EE188 802D5478 286100FF */  slti       $at, $v1, 0xFF
    /* 1EE18C 802D547C 5420FFE3 */  bnel       $at, $zero, .L802D540C_1EE11C
    /* 1EE190 802D5480 00037880 */   sll       $t7, $v1, 2
    /* 1EE194 802D5484 3C038015 */  lui        $v1, %hi(D_80157F8E)
    /* 1EE198 802D5488 3C098015 */  lui        $t1, %hi(D_80157F8E)
    /* 1EE19C 802D548C 3C088015 */  lui        $t0, %hi(D_80157F8C)
    /* 1EE1A0 802D5490 25087F8C */  addiu      $t0, $t0, %lo(D_80157F8C)
    /* 1EE1A4 802D5494 25297F8E */  addiu      $t1, $t1, %lo(D_80157F8E)
    /* 1EE1A8 802D5498 84637F8E */  lh         $v1, %lo(D_80157F8E)($v1)
  .L802D549C_1EE1AC:
    /* 1EE1AC 802D549C 28620002 */  slti       $v0, $v1, 0x2
    /* 1EE1B0 802D54A0 246C0001 */  addiu      $t4, $v1, 0x1
    /* 1EE1B4 802D54A4 14400013 */  bnez       $v0, .L802D54F4_1EE204
    /* 1EE1B8 802D54A8 A52C0000 */   sh        $t4, 0x0($t1)
    /* 1EE1BC 802D54AC 850D0000 */  lh         $t5, 0x0($t0)
    /* 1EE1C0 802D54B0 A5200000 */  sh         $zero, 0x0($t1)
    /* 1EE1C4 802D54B4 25AE0001 */  addiu      $t6, $t5, 0x1
    /* 1EE1C8 802D54B8 1000000E */  b          .L802D54F4_1EE204
    /* 1EE1CC 802D54BC A50E0000 */   sh        $t6, 0x0($t0)
    /* 1EE1D0 802D54C0 3C058015 */  lui        $a1, %hi(D_80157F8E)
    /* 1EE1D4 802D54C4 24A57F8E */  addiu      $a1, $a1, %lo(D_80157F8E)
    /* 1EE1D8 802D54C8 84A30000 */  lh         $v1, 0x0($a1)
    /* 1EE1DC 802D54CC 24980001 */  addiu      $t8, $a0, 0x1
    /* 1EE1E0 802D54D0 28620065 */  slti       $v0, $v1, 0x65
    /* 1EE1E4 802D54D4 246F0001 */  addiu      $t7, $v1, 0x1
    /* 1EE1E8 802D54D8 14400006 */  bnez       $v0, .L802D54F4_1EE204
    /* 1EE1EC 802D54DC A4AF0000 */   sh        $t7, 0x0($a1)
    /* 1EE1F0 802D54E0 A4A00000 */  sh         $zero, 0x0($a1)
    /* 1EE1F4 802D54E4 10000003 */  b          .L802D54F4_1EE204
    /* 1EE1F8 802D54E8 A5180000 */   sh        $t8, 0x0($t0)
    /* 1EE1FC 802D54EC 10000002 */  b          .L802D54F8_1EE208
    /* 1EE200 802D54F0 24020001 */   addiu     $v0, $zero, 0x1
  .L802D54F4_1EE204:
    /* 1EE204 802D54F4 00001025 */  or         $v0, $zero, $zero
  .L802D54F8_1EE208:
    /* 1EE208 802D54F8 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 1EE20C 802D54FC 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 1EE210 802D5500 03E00008 */  jr         $ra
    /* 1EE214 802D5504 00000000 */   nop
endlabel func_802D51F8_1EDF08
