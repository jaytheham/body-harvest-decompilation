nonmatching func_8008BC00_5C0B0, 0xB3C

glabel func_8008BC00_5C0B0
    /* 5C0B0 8008BC00 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* 5C0B4 8008BC04 AFB20050 */  sw         $s2, 0x50($sp)
    /* 5C0B8 8008BC08 3C128006 */  lui        $s2, %hi(D_8005BB2C)
    /* 5C0BC 8008BC0C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 5C0C0 8008BC10 2652BB2C */  addiu      $s2, $s2, %lo(D_8005BB2C)
    /* 5C0C4 8008BC14 000E7880 */  sll        $t7, $t6, 2
    /* 5C0C8 8008BC18 8E420000 */  lw         $v0, 0x0($s2)
    /* 5C0CC 8008BC1C AFB1004C */  sw         $s1, 0x4C($sp)
    /* 5C0D0 8008BC20 01EE7823 */  subu       $t7, $t7, $t6
    /* 5C0D4 8008BC24 000F7880 */  sll        $t7, $t7, 2
    /* 5C0D8 8008BC28 3C11800E */  lui        $s1, %hi(D_800DE136)
    /* 5C0DC 8008BC2C 022F8821 */  addu       $s1, $s1, $t7
    /* 5C0E0 8008BC30 8631E136 */  lh         $s1, %lo(D_800DE136)($s1)
    /* 5C0E4 8008BC34 24580008 */  addiu      $t8, $v0, 0x8
    /* 5C0E8 8008BC38 AFBF006C */  sw         $ra, 0x6C($sp)
    /* 5C0EC 8008BC3C AFBE0068 */  sw         $fp, 0x68($sp)
    /* 5C0F0 8008BC40 AFB70064 */  sw         $s7, 0x64($sp)
    /* 5C0F4 8008BC44 AFB60060 */  sw         $s6, 0x60($sp)
    /* 5C0F8 8008BC48 AFB5005C */  sw         $s5, 0x5C($sp)
    /* 5C0FC 8008BC4C AFB40058 */  sw         $s4, 0x58($sp)
    /* 5C100 8008BC50 AFB30054 */  sw         $s3, 0x54($sp)
    /* 5C104 8008BC54 AFB00048 */  sw         $s0, 0x48($sp)
    /* 5C108 8008BC58 F7BE0040 */  sdc1       $f30, 0x40($sp)
    /* 5C10C 8008BC5C F7BC0038 */  sdc1       $f28, 0x38($sp)
    /* 5C110 8008BC60 F7BA0030 */  sdc1       $f26, 0x30($sp)
    /* 5C114 8008BC64 F7B80028 */  sdc1       $f24, 0x28($sp)
    /* 5C118 8008BC68 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* 5C11C 8008BC6C F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 5C120 8008BC70 AFA40090 */  sw         $a0, 0x90($sp)
    /* 5C124 8008BC74 AE580000 */  sw         $t8, 0x0($s2)
    /* 5C128 8008BC78 3C07E700 */  lui        $a3, (0xE7000000 >> 16)
    /* 5C12C 8008BC7C AC470000 */  sw         $a3, 0x0($v0)
    /* 5C130 8008BC80 AC400004 */  sw         $zero, 0x4($v0)
    /* 5C134 8008BC84 8E420000 */  lw         $v0, 0x0($s2)
    /* 5C138 8008BC88 3C0CFC62 */  lui        $t4, (0xFC6218C4 >> 16)
    /* 5C13C 8008BC8C 3C0DFF33 */  lui        $t5, (0xFF33FFFF >> 16)
    /* 5C140 8008BC90 24590008 */  addiu      $t9, $v0, 0x8
    /* 5C144 8008BC94 AE590000 */  sw         $t9, 0x0($s2)
    /* 5C148 8008BC98 35ADFFFF */  ori        $t5, $t5, (0xFF33FFFF & 0xFFFF)
    /* 5C14C 8008BC9C 358C18C4 */  ori        $t4, $t4, (0xFC6218C4 & 0xFFFF)
    /* 5C150 8008BCA0 AC4C0000 */  sw         $t4, 0x0($v0)
    /* 5C154 8008BCA4 AC4D0004 */  sw         $t5, 0x4($v0)
    /* 5C158 8008BCA8 8E420000 */  lw         $v0, 0x0($s2)
    /* 5C15C 8008BCAC 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5C160 8008BCB0 AE4E0000 */  sw         $t6, 0x0($s2)
    /* 5C164 8008BCB4 AC400004 */  sw         $zero, 0x4($v0)
    /* 5C168 8008BCB8 0C000E38 */  jal        func_800038E0_44E0
    /* 5C16C 8008BCBC AC470000 */   sw        $a3, 0x0($v0)
    /* 5C170 8008BCC0 24010006 */  addiu      $at, $zero, 0x6
    /* 5C174 8008BCC4 0041001A */  div        $zero, $v0, $at
    /* 5C178 8008BCC8 00001810 */  mfhi       $v1
    /* 5C17C 8008BCCC 306F00FF */  andi       $t7, $v1, 0xFF
    /* 5C180 8008BCD0 24010001 */  addiu      $at, $zero, 0x1
    /* 5C184 8008BCD4 15E10005 */  bne        $t7, $at, .L8008BCEC_5C19C
    /* 5C188 8008BCD8 01E01825 */   or        $v1, $t7, $zero
    /* 5C18C 8008BCDC 241600C8 */  addiu      $s6, $zero, 0xC8
    /* 5C190 8008BCE0 241700FF */  addiu      $s7, $zero, 0xFF
    /* 5C194 8008BCE4 1000000A */  b          .L8008BD10_5C1C0
    /* 5C198 8008BCE8 241E00C8 */   addiu     $fp, $zero, 0xC8
  .L8008BCEC_5C19C:
    /* 5C19C 8008BCEC 24010002 */  addiu      $at, $zero, 0x2
    /* 5C1A0 8008BCF0 14610005 */  bne        $v1, $at, .L8008BD08_5C1B8
    /* 5C1A4 8008BCF4 241600FF */   addiu     $s6, $zero, 0xFF
    /* 5C1A8 8008BCF8 241600C8 */  addiu      $s6, $zero, 0xC8
    /* 5C1AC 8008BCFC 241700C8 */  addiu      $s7, $zero, 0xC8
    /* 5C1B0 8008BD00 10000003 */  b          .L8008BD10_5C1C0
    /* 5C1B4 8008BD04 241E00FF */   addiu     $fp, $zero, 0xFF
  .L8008BD08_5C1B8:
    /* 5C1B8 8008BD08 241700FF */  addiu      $s7, $zero, 0xFF
    /* 5C1BC 8008BD0C 241E00FF */  addiu      $fp, $zero, 0xFF
  .L8008BD10_5C1C0:
    /* 5C1C0 8008BD10 2401FFFB */  addiu      $at, $zero, -0x5
    /* 5C1C4 8008BD14 122100A1 */  beq        $s1, $at, .L8008BF9C_5C44C
    /* 5C1C8 8008BD18 2401FFFA */   addiu     $at, $zero, -0x6
    /* 5C1CC 8008BD1C 1221009F */  beq        $s1, $at, .L8008BF9C_5C44C
    /* 5C1D0 8008BD20 3C18800E */   lui       $t8, %hi(D_800DE0B6)
    /* 5C1D4 8008BD24 9318E0B6 */  lbu        $t8, %lo(D_800DE0B6)($t8)
    /* 5C1D8 8008BD28 24010001 */  addiu      $at, $zero, 0x1
    /* 5C1DC 8008BD2C 17010044 */  bne        $t8, $at, .L8008BE40_5C2F0
    /* 5C1E0 8008BD30 00000000 */   nop
    /* 5C1E4 8008BD34 0C000E38 */  jal        func_800038E0_44E0
    /* 5C1E8 8008BD38 00000000 */   nop
    /* 5C1EC 8008BD3C 0011C8C0 */  sll        $t9, $s1, 3
    /* 5C1F0 8008BD40 0331C823 */  subu       $t9, $t9, $s1
    /* 5C1F4 8008BD44 0019C880 */  sll        $t9, $t9, 2
    /* 5C1F8 8008BD48 3C0D800E */  lui        $t5, %hi(D_800DE840)
    /* 5C1FC 8008BD4C 25ADE840 */  addiu      $t5, $t5, %lo(D_800DE840)
    /* 5C200 8008BD50 272C0008 */  addiu      $t4, $t9, 0x8
    /* 5C204 8008BD54 018D8021 */  addu       $s0, $t4, $t5
    /* 5C208 8008BD58 860E0000 */  lh         $t6, 0x0($s0)
    /* 5C20C 8008BD5C 448E2000 */  mtc1       $t6, $f4
    /* 5C210 8008BD60 00000000 */  nop
    /* 5C214 8008BD64 46802020 */  cvt.s.w    $f0, $f4
    /* 5C218 8008BD68 04410004 */  bgez       $v0, .L8008BD7C_5C22C
    /* 5C21C 8008BD6C 304F0003 */   andi      $t7, $v0, 0x3
    /* 5C220 8008BD70 11E00002 */  beqz       $t7, .L8008BD7C_5C22C
    /* 5C224 8008BD74 00000000 */   nop
    /* 5C228 8008BD78 25EFFFFC */  addiu      $t7, $t7, -0x4
  .L8008BD7C_5C22C:
    /* 5C22C 8008BD7C 000FC040 */  sll        $t8, $t7, 1
    /* 5C230 8008BD80 27190014 */  addiu      $t9, $t8, 0x14
    /* 5C234 8008BD84 44993000 */  mtc1       $t9, $f6
    /* 5C238 8008BD88 00000000 */  nop
    /* 5C23C 8008BD8C 46803520 */  cvt.s.w    $f20, $f6
    /* 5C240 8008BD90 46140201 */  sub.s      $f8, $f0, $f20
    /* 5C244 8008BD94 46140780 */  add.s      $f30, $f0, $f20
    /* 5C248 8008BD98 0C000E38 */  jal        func_800038E0_44E0
    /* 5C24C 8008BD9C E7A80074 */   swc1      $f8, 0x74($sp)
    /* 5C250 8008BDA0 860C0002 */  lh         $t4, 0x2($s0)
    /* 5C254 8008BDA4 448C5000 */  mtc1       $t4, $f10
    /* 5C258 8008BDA8 00000000 */  nop
    /* 5C25C 8008BDAC 46805020 */  cvt.s.w    $f0, $f10
    /* 5C260 8008BDB0 04410004 */  bgez       $v0, .L8008BDC4_5C274
    /* 5C264 8008BDB4 304D0003 */   andi      $t5, $v0, 0x3
    /* 5C268 8008BDB8 11A00002 */  beqz       $t5, .L8008BDC4_5C274
    /* 5C26C 8008BDBC 00000000 */   nop
    /* 5C270 8008BDC0 25ADFFFC */  addiu      $t5, $t5, -0x4
  .L8008BDC4_5C274:
    /* 5C274 8008BDC4 000D7040 */  sll        $t6, $t5, 1
    /* 5C278 8008BDC8 25CF0014 */  addiu      $t7, $t6, 0x14
    /* 5C27C 8008BDCC 448F2000 */  mtc1       $t7, $f4
    /* 5C280 8008BDD0 00000000 */  nop
    /* 5C284 8008BDD4 46802520 */  cvt.s.w    $f20, $f4
    /* 5C288 8008BDD8 46140400 */  add.s      $f16, $f0, $f20
    /* 5C28C 8008BDDC 46140481 */  sub.s      $f18, $f0, $f20
    /* 5C290 8008BDE0 E7B00084 */  swc1       $f16, 0x84($sp)
    /* 5C294 8008BDE4 0C000E38 */  jal        func_800038E0_44E0
    /* 5C298 8008BDE8 E7B20078 */   swc1      $f18, 0x78($sp)
    /* 5C29C 8008BDEC 86180004 */  lh         $t8, 0x4($s0)
    /* 5C2A0 8008BDF0 C7B00084 */  lwc1       $f16, 0x84($sp)
    /* 5C2A4 8008BDF4 C7B20078 */  lwc1       $f18, 0x78($sp)
    /* 5C2A8 8008BDF8 44983000 */  mtc1       $t8, $f6
    /* 5C2AC 8008BDFC E7BE0080 */  swc1       $f30, 0x80($sp)
    /* 5C2B0 8008BE00 468030A0 */  cvt.s.w    $f2, $f6
    /* 5C2B4 8008BE04 04410004 */  bgez       $v0, .L8008BE18_5C2C8
    /* 5C2B8 8008BE08 30590003 */   andi      $t9, $v0, 0x3
    /* 5C2BC 8008BE0C 13200002 */  beqz       $t9, .L8008BE18_5C2C8
    /* 5C2C0 8008BE10 00000000 */   nop
    /* 5C2C4 8008BE14 2739FFFC */  addiu      $t9, $t9, -0x4
  .L8008BE18_5C2C8:
    /* 5C2C8 8008BE18 00196040 */  sll        $t4, $t9, 1
    /* 5C2CC 8008BE1C 258D0014 */  addiu      $t5, $t4, 0x14
    /* 5C2D0 8008BE20 448D4000 */  mtc1       $t5, $f8
    /* 5C2D4 8008BE24 00000000 */  nop
    /* 5C2D8 8008BE28 46804520 */  cvt.s.w    $f20, $f8
    /* 5C2DC 8008BE2C 46141000 */  add.s      $f0, $f2, $f20
    /* 5C2E0 8008BE30 46141381 */  sub.s      $f14, $f2, $f20
    /* 5C2E4 8008BE34 E7A00088 */  swc1       $f0, 0x88($sp)
    /* 5C2E8 8008BE38 10000058 */  b          .L8008BF9C_5C44C
    /* 5C2EC 8008BE3C E7AE007C */   swc1      $f14, 0x7C($sp)
  .L8008BE40_5C2F0:
    /* 5C2F0 8008BE40 0C000E38 */  jal        func_800038E0_44E0
    /* 5C2F4 8008BE44 00000000 */   nop
    /* 5C2F8 8008BE48 24010005 */  addiu      $at, $zero, 0x5
    /* 5C2FC 8008BE4C 0041001A */  div        $zero, $v0, $at
    /* 5C300 8008BE50 00007010 */  mfhi       $t6
    /* 5C304 8008BE54 000E7880 */  sll        $t7, $t6, 2
    /* 5C308 8008BE58 25F80014 */  addiu      $t8, $t7, 0x14
    /* 5C30C 8008BE5C 44985000 */  mtc1       $t8, $f10
    /* 5C310 8008BE60 0C000E38 */  jal        func_800038E0_44E0
    /* 5C314 8008BE64 46805520 */   cvt.s.w   $f20, $f10
    /* 5C318 8008BE68 2401000B */  addiu      $at, $zero, 0xB
    /* 5C31C 8008BE6C 0041001A */  div        $zero, $v0, $at
    /* 5C320 8008BE70 0000C810 */  mfhi       $t9
    /* 5C324 8008BE74 2B210006 */  slti       $at, $t9, 0x6
    /* 5C328 8008BE78 10200004 */  beqz       $at, .L8008BE8C_5C33C
    /* 5C32C 8008BE7C 001160C0 */   sll       $t4, $s1, 3
    /* 5C330 8008BE80 44802000 */  mtc1       $zero, $f4
    /* 5C334 8008BE84 00000000 */  nop
    /* 5C338 8008BE88 46142501 */  sub.s      $f20, $f4, $f20
  .L8008BE8C_5C33C:
    /* 5C33C 8008BE8C 01916023 */  subu       $t4, $t4, $s1
    /* 5C340 8008BE90 000C6080 */  sll        $t4, $t4, 2
    /* 5C344 8008BE94 3C0E800E */  lui        $t6, %hi(D_800DE840)
    /* 5C348 8008BE98 25CEE840 */  addiu      $t6, $t6, %lo(D_800DE840)
    /* 5C34C 8008BE9C 258D0008 */  addiu      $t5, $t4, 0x8
    /* 5C350 8008BEA0 01AE8021 */  addu       $s0, $t5, $t6
    /* 5C354 8008BEA4 860F0000 */  lh         $t7, 0x0($s0)
    /* 5C358 8008BEA8 448F3000 */  mtc1       $t7, $f6
    /* 5C35C 8008BEAC 00000000 */  nop
    /* 5C360 8008BEB0 46803020 */  cvt.s.w    $f0, $f6
    /* 5C364 8008BEB4 46140201 */  sub.s      $f8, $f0, $f20
    /* 5C368 8008BEB8 46140780 */  add.s      $f30, $f0, $f20
    /* 5C36C 8008BEBC 0C000E38 */  jal        func_800038E0_44E0
    /* 5C370 8008BEC0 E7A80074 */   swc1      $f8, 0x74($sp)
    /* 5C374 8008BEC4 24010005 */  addiu      $at, $zero, 0x5
    /* 5C378 8008BEC8 0041001A */  div        $zero, $v0, $at
    /* 5C37C 8008BECC 0000C010 */  mfhi       $t8
    /* 5C380 8008BED0 0018C880 */  sll        $t9, $t8, 2
    /* 5C384 8008BED4 272C0014 */  addiu      $t4, $t9, 0x14
    /* 5C388 8008BED8 448C5000 */  mtc1       $t4, $f10
    /* 5C38C 8008BEDC 0C000E38 */  jal        func_800038E0_44E0
    /* 5C390 8008BEE0 46805520 */   cvt.s.w   $f20, $f10
    /* 5C394 8008BEE4 2401000B */  addiu      $at, $zero, 0xB
    /* 5C398 8008BEE8 0041001A */  div        $zero, $v0, $at
    /* 5C39C 8008BEEC 00006810 */  mfhi       $t5
    /* 5C3A0 8008BEF0 29A10006 */  slti       $at, $t5, 0x6
    /* 5C3A4 8008BEF4 50200005 */  beql       $at, $zero, .L8008BF0C_5C3BC
    /* 5C3A8 8008BEF8 860E0002 */   lh        $t6, 0x2($s0)
    /* 5C3AC 8008BEFC 44802000 */  mtc1       $zero, $f4
    /* 5C3B0 8008BF00 00000000 */  nop
    /* 5C3B4 8008BF04 46142501 */  sub.s      $f20, $f4, $f20
    /* 5C3B8 8008BF08 860E0002 */  lh         $t6, 0x2($s0)
  .L8008BF0C_5C3BC:
    /* 5C3BC 8008BF0C 448E3000 */  mtc1       $t6, $f6
    /* 5C3C0 8008BF10 00000000 */  nop
    /* 5C3C4 8008BF14 46803020 */  cvt.s.w    $f0, $f6
    /* 5C3C8 8008BF18 46140400 */  add.s      $f16, $f0, $f20
    /* 5C3CC 8008BF1C 46140481 */  sub.s      $f18, $f0, $f20
    /* 5C3D0 8008BF20 E7B00084 */  swc1       $f16, 0x84($sp)
    /* 5C3D4 8008BF24 0C000E38 */  jal        func_800038E0_44E0
    /* 5C3D8 8008BF28 E7B20078 */   swc1      $f18, 0x78($sp)
    /* 5C3DC 8008BF2C 24010005 */  addiu      $at, $zero, 0x5
    /* 5C3E0 8008BF30 0041001A */  div        $zero, $v0, $at
    /* 5C3E4 8008BF34 00007810 */  mfhi       $t7
    /* 5C3E8 8008BF38 000FC080 */  sll        $t8, $t7, 2
    /* 5C3EC 8008BF3C 27190014 */  addiu      $t9, $t8, 0x14
    /* 5C3F0 8008BF40 44994000 */  mtc1       $t9, $f8
    /* 5C3F4 8008BF44 0C000E38 */  jal        func_800038E0_44E0
    /* 5C3F8 8008BF48 46804520 */   cvt.s.w   $f20, $f8
    /* 5C3FC 8008BF4C 2401000B */  addiu      $at, $zero, 0xB
    /* 5C400 8008BF50 0041001A */  div        $zero, $v0, $at
    /* 5C404 8008BF54 00006010 */  mfhi       $t4
    /* 5C408 8008BF58 29810006 */  slti       $at, $t4, 0x6
    /* 5C40C 8008BF5C C7B00084 */  lwc1       $f16, 0x84($sp)
    /* 5C410 8008BF60 10200004 */  beqz       $at, .L8008BF74_5C424
    /* 5C414 8008BF64 C7B20078 */   lwc1      $f18, 0x78($sp)
    /* 5C418 8008BF68 44805000 */  mtc1       $zero, $f10
    /* 5C41C 8008BF6C 00000000 */  nop
    /* 5C420 8008BF70 46145501 */  sub.s      $f20, $f10, $f20
  .L8008BF74_5C424:
    /* 5C424 8008BF74 860D0004 */  lh         $t5, 0x4($s0)
    /* 5C428 8008BF78 E7BE0080 */  swc1       $f30, 0x80($sp)
    /* 5C42C 8008BF7C E7B20078 */  swc1       $f18, 0x78($sp)
    /* 5C430 8008BF80 448D2000 */  mtc1       $t5, $f4
    /* 5C434 8008BF84 E7B00084 */  swc1       $f16, 0x84($sp)
    /* 5C438 8008BF88 468020A0 */  cvt.s.w    $f2, $f4
    /* 5C43C 8008BF8C 46141000 */  add.s      $f0, $f2, $f20
    /* 5C440 8008BF90 46141381 */  sub.s      $f14, $f2, $f20
    /* 5C444 8008BF94 E7A00088 */  swc1       $f0, 0x88($sp)
    /* 5C448 8008BF98 E7AE007C */  swc1       $f14, 0x7C($sp)
  .L8008BF9C_5C44C:
    /* 5C44C 8008BF9C 2401FFFB */  addiu      $at, $zero, -0x5
    /* 5C450 8008BFA0 C7A00088 */  lwc1       $f0, 0x88($sp)
    /* 5C454 8008BFA4 C7AE007C */  lwc1       $f14, 0x7C($sp)
    /* 5C458 8008BFA8 C7B00084 */  lwc1       $f16, 0x84($sp)
    /* 5C45C 8008BFAC C7B20078 */  lwc1       $f18, 0x78($sp)
    /* 5C460 8008BFB0 122101D0 */  beq        $s1, $at, .L8008C6F4_5CBA4
    /* 5C464 8008BFB4 C7BE0080 */   lwc1      $f30, 0x80($sp)
    /* 5C468 8008BFB8 2401FFFA */  addiu      $at, $zero, -0x6
    /* 5C46C 8008BFBC 122101CD */  beq        $s1, $at, .L8008C6F4_5CBA4
    /* 5C470 8008BFC0 24150032 */   addiu     $s5, $zero, 0x32
    /* 5C474 8008BFC4 3C108006 */  lui        $s0, %hi(D_8005BB34)
    /* 5C478 8008BFC8 2610BB34 */  addiu      $s0, $s0, %lo(D_8005BB34)
    /* 5C47C 8008BFCC 24130800 */  addiu      $s3, $zero, 0x800
    /* 5C480 8008BFD0 2402FFFB */  addiu      $v0, $zero, -0x5
    /* 5C484 8008BFD4 001170C0 */  sll        $t6, $s1, 3
  .L8008BFD8_5C488:
    /* 5C488 8008BFD8 01D17023 */  subu       $t6, $t6, $s1
    /* 5C48C 8008BFDC 000E7080 */  sll        $t6, $t6, 2
    /* 5C490 8008BFE0 3C14800E */  lui        $s4, %hi(D_800DE844)
    /* 5C494 8008BFE4 028EA021 */  addu       $s4, $s4, $t6
    /* 5C498 8008BFE8 8694E844 */  lh         $s4, %lo(D_800DE844)($s4)
    /* 5C49C 8008BFEC 528201BB */  beql       $s4, $v0, .L8008C6DC_5CB8C
    /* 5C4A0 8008BFF0 00148C00 */   sll       $s1, $s4, 16
    /* 5C4A4 8008BFF4 8E420000 */  lw         $v0, 0x0($s2)
    /* 5C4A8 8008BFF8 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* 5C4AC 8008BFFC 3C19800E */  lui        $t9, %hi(D_800DE0B6)
    /* 5C4B0 8008C000 244F0008 */  addiu      $t7, $v0, 0x8
    /* 5C4B4 8008C004 AE4F0000 */  sw         $t7, 0x0($s2)
    /* 5C4B8 8008C008 AC400004 */  sw         $zero, 0x4($v0)
    /* 5C4BC 8008C00C AC580000 */  sw         $t8, 0x0($v0)
    /* 5C4C0 8008C010 9339E0B6 */  lbu        $t9, %lo(D_800DE0B6)($t9)
    /* 5C4C4 8008C014 24010001 */  addiu      $at, $zero, 0x1
    /* 5C4C8 8008C018 57210004 */  bnel       $t9, $at, .L8008C02C_5C4DC
    /* 5C4CC 8008C01C E7A00088 */   swc1      $f0, 0x88($sp)
    /* 5C4D0 8008C020 10000011 */  b          .L8008C068_5C518
    /* 5C4D4 8008C024 00005825 */   or        $t3, $zero, $zero
    /* 5C4D8 8008C028 E7A00088 */  swc1       $f0, 0x88($sp)
  .L8008C02C_5C4DC:
    /* 5C4DC 8008C02C E7AE007C */  swc1       $f14, 0x7C($sp)
    /* 5C4E0 8008C030 E7B00084 */  swc1       $f16, 0x84($sp)
    /* 5C4E4 8008C034 0C000E38 */  jal        func_800038E0_44E0
    /* 5C4E8 8008C038 E7B20078 */   swc1      $f18, 0x78($sp)
    /* 5C4EC 8008C03C C7A00088 */  lwc1       $f0, 0x88($sp)
    /* 5C4F0 8008C040 C7AE007C */  lwc1       $f14, 0x7C($sp)
    /* 5C4F4 8008C044 C7B00084 */  lwc1       $f16, 0x84($sp)
    /* 5C4F8 8008C048 C7B20078 */  lwc1       $f18, 0x78($sp)
    /* 5C4FC 8008C04C 04410004 */  bgez       $v0, .L8008C060_5C510
    /* 5C500 8008C050 304B0003 */   andi      $t3, $v0, 0x3
    /* 5C504 8008C054 11600002 */  beqz       $t3, .L8008C060_5C510
    /* 5C508 8008C058 00000000 */   nop
    /* 5C50C 8008C05C 256BFFFC */  addiu      $t3, $t3, -0x4
  .L8008C060_5C510:
    /* 5C510 8008C060 316C00FF */  andi       $t4, $t3, 0xFF
    /* 5C514 8008C064 01805825 */  or         $t3, $t4, $zero
  .L8008C068_5C518:
    /* 5C518 8008C068 8E420000 */  lw         $v0, 0x0($s2)
    /* 5C51C 8008C06C 3C180101 */  lui        $t8, %hi(D_100B4F0)
    /* 5C520 8008C070 2718B4F0 */  addiu      $t8, $t8, %lo(D_100B4F0)
    /* 5C524 8008C074 000B7A40 */  sll        $t7, $t3, 9
    /* 5C528 8008C078 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 5C52C 8008C07C 244D0008 */  addiu      $t5, $v0, 0x8
    /* 5C530 8008C080 AE4D0000 */  sw         $t5, 0x0($s2)
    /* 5C534 8008C084 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 5C538 8008C088 01F8C821 */  addu       $t9, $t7, $t8
    /* 5C53C 8008C08C 03216024 */  and        $t4, $t9, $at
    /* 5C540 8008C090 3C0EFD90 */  lui        $t6, (0xFD900000 >> 16)
    /* 5C544 8008C094 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 5C548 8008C098 AC4C0004 */  sw         $t4, 0x4($v0)
    /* 5C54C 8008C09C 8E420000 */  lw         $v0, 0x0($s2)
    /* 5C550 8008C0A0 3C0F0708 */  lui        $t7, (0x7080200 >> 16)
    /* 5C554 8008C0A4 35EF0200 */  ori        $t7, $t7, (0x7080200 & 0xFFFF)
    /* 5C558 8008C0A8 244D0008 */  addiu      $t5, $v0, 0x8
    /* 5C55C 8008C0AC AE4D0000 */  sw         $t5, 0x0($s2)
    /* 5C560 8008C0B0 3C0EF590 */  lui        $t6, (0xF5900000 >> 16)
    /* 5C564 8008C0B4 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 5C568 8008C0B8 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 5C56C 8008C0BC 8E420000 */  lw         $v0, 0x0($s2)
    /* 5C570 8008C0C0 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* 5C574 8008C0C4 3C0E070F */  lui        $t6, (0x70FF400 >> 16)
    /* 5C578 8008C0C8 24580008 */  addiu      $t8, $v0, 0x8
    /* 5C57C 8008C0CC AE580000 */  sw         $t8, 0x0($s2)
    /* 5C580 8008C0D0 AC400004 */  sw         $zero, 0x4($v0)
    /* 5C584 8008C0D4 AC590000 */  sw         $t9, 0x0($v0)
    /* 5C588 8008C0D8 8E420000 */  lw         $v0, 0x0($s2)
    /* 5C58C 8008C0DC 35CEF400 */  ori        $t6, $t6, (0x70FF400 & 0xFFFF)
    /* 5C590 8008C0E0 3C0DF300 */  lui        $t5, (0xF3000000 >> 16)
    /* 5C594 8008C0E4 244C0008 */  addiu      $t4, $v0, 0x8
    /* 5C598 8008C0E8 AE4C0000 */  sw         $t4, 0x0($s2)
    /* 5C59C 8008C0EC AC4E0004 */  sw         $t6, 0x4($v0)
    /* 5C5A0 8008C0F0 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 5C5A4 8008C0F4 8E420000 */  lw         $v0, 0x0($s2)
    /* 5C5A8 8008C0F8 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* 5C5AC 8008C0FC 3C0D0008 */  lui        $t5, (0x80200 >> 16)
    /* 5C5B0 8008C100 244F0008 */  addiu      $t7, $v0, 0x8
    /* 5C5B4 8008C104 AE4F0000 */  sw         $t7, 0x0($s2)
    /* 5C5B8 8008C108 AC400004 */  sw         $zero, 0x4($v0)
    /* 5C5BC 8008C10C AC580000 */  sw         $t8, 0x0($v0)
    /* 5C5C0 8008C110 8E420000 */  lw         $v0, 0x0($s2)
    /* 5C5C4 8008C114 3C0CF580 */  lui        $t4, (0xF5800400 >> 16)
    /* 5C5C8 8008C118 358C0400 */  ori        $t4, $t4, (0xF5800400 & 0xFFFF)
    /* 5C5CC 8008C11C 24590008 */  addiu      $t9, $v0, 0x8
    /* 5C5D0 8008C120 AE590000 */  sw         $t9, 0x0($s2)
    /* 5C5D4 8008C124 35AD0200 */  ori        $t5, $t5, (0x80200 & 0xFFFF)
    /* 5C5D8 8008C128 AC4D0004 */  sw         $t5, 0x4($v0)
    /* 5C5DC 8008C12C AC4C0000 */  sw         $t4, 0x0($v0)
    /* 5C5E0 8008C130 8E420000 */  lw         $v0, 0x0($s2)
    /* 5C5E4 8008C134 3C180007 */  lui        $t8, (0x7C07C >> 16)
    /* 5C5E8 8008C138 3718C07C */  ori        $t8, $t8, (0x7C07C & 0xFFFF)
    /* 5C5EC 8008C13C 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5C5F0 8008C140 AE4E0000 */  sw         $t6, 0x0($s2)
    /* 5C5F4 8008C144 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
    /* 5C5F8 8008C148 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 5C5FC 8008C14C AC580004 */  sw         $t8, 0x4($v0)
    /* 5C600 8008C150 8E420000 */  lw         $v0, 0x0($s2)
    /* 5C604 8008C154 4600F18D */  trunc.w.s  $f6, $f30
    /* 5C608 8008C158 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
    /* 5C60C 8008C15C 24590008 */  addiu      $t9, $v0, 0x8
    /* 5C610 8008C160 AE590000 */  sw         $t9, 0x0($s2)
    /* 5C614 8008C164 AC400004 */  sw         $zero, 0x4($v0)
    /* 5C618 8008C168 AC4C0000 */  sw         $t4, 0x0($v0)
    /* 5C61C 8008C16C 4600820D */  trunc.w.s  $f8, $f16
    /* 5C620 8008C170 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 5C624 8008C174 440E3000 */  mfc1       $t6, $f6
    /* 5C628 8008C178 4600028D */  trunc.w.s  $f10, $f0
    /* 5C62C 8008C17C 44194000 */  mfc1       $t9, $f8
    /* 5C630 8008C180 A5EE0000 */  sh         $t6, 0x0($t7)
    /* 5C634 8008C184 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 5C638 8008C188 440E5000 */  mfc1       $t6, $f10
    /* 5C63C 8008C18C 240200FF */  addiu      $v0, $zero, 0xFF
    /* 5C640 8008C190 A5990002 */  sh         $t9, 0x2($t4)
    /* 5C644 8008C194 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 5C648 8008C198 4600920D */  trunc.w.s  $f8, $f18
    /* 5C64C 8008C19C 24010001 */  addiu      $at, $zero, 0x1
    /* 5C650 8008C1A0 A5EE0004 */  sh         $t6, 0x4($t7)
    /* 5C654 8008C1A4 8E180000 */  lw         $t8, 0x0($s0)
    /* 5C658 8008C1A8 4600728D */  trunc.w.s  $f10, $f14
    /* 5C65C 8008C1AC A7000006 */  sh         $zero, 0x6($t8)
    /* 5C660 8008C1B0 8E190000 */  lw         $t9, 0x0($s0)
    /* 5C664 8008C1B4 A7200008 */  sh         $zero, 0x8($t9)
    /* 5C668 8008C1B8 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 5C66C 8008C1BC A580000A */  sh         $zero, 0xA($t4)
    /* 5C670 8008C1C0 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 5C674 8008C1C4 A1B6000C */  sb         $s6, 0xC($t5)
    /* 5C678 8008C1C8 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 5C67C 8008C1CC A1D7000D */  sb         $s7, 0xD($t6)
    /* 5C680 8008C1D0 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 5C684 8008C1D4 A1FE000E */  sb         $fp, 0xE($t7)
    /* 5C688 8008C1D8 8E180000 */  lw         $t8, 0x0($s0)
    /* 5C68C 8008C1DC A302000F */  sb         $v0, 0xF($t8)
    /* 5C690 8008C1E0 C7A40074 */  lwc1       $f4, 0x74($sp)
    /* 5C694 8008C1E4 8E190000 */  lw         $t9, 0x0($s0)
    /* 5C698 8008C1E8 4600218D */  trunc.w.s  $f6, $f4
    /* 5C69C 8008C1EC 272C0010 */  addiu      $t4, $t9, 0x10
    /* 5C6A0 8008C1F0 AE0C0000 */  sw         $t4, 0x0($s0)
    /* 5C6A4 8008C1F4 44194000 */  mfc1       $t9, $f8
    /* 5C6A8 8008C1F8 440E3000 */  mfc1       $t6, $f6
    /* 5C6AC 8008C1FC 00000000 */  nop
    /* 5C6B0 8008C200 A58E0000 */  sh         $t6, 0x0($t4)
    /* 5C6B4 8008C204 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 5C6B8 8008C208 440E5000 */  mfc1       $t6, $f10
    /* 5C6BC 8008C20C A5990002 */  sh         $t9, 0x2($t4)
    /* 5C6C0 8008C210 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 5C6C4 8008C214 A5EE0004 */  sh         $t6, 0x4($t7)
    /* 5C6C8 8008C218 8E180000 */  lw         $t8, 0x0($s0)
    /* 5C6CC 8008C21C A7000006 */  sh         $zero, 0x6($t8)
    /* 5C6D0 8008C220 8E190000 */  lw         $t9, 0x0($s0)
    /* 5C6D4 8008C224 A7200008 */  sh         $zero, 0x8($t9)
    /* 5C6D8 8008C228 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 5C6DC 8008C22C A593000A */  sh         $s3, 0xA($t4)
    /* 5C6E0 8008C230 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 5C6E4 8008C234 A1B6000C */  sb         $s6, 0xC($t5)
    /* 5C6E8 8008C238 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 5C6EC 8008C23C 3C0D800E */  lui        $t5, %hi(D_800DE0B6)
    /* 5C6F0 8008C240 A1D7000D */  sb         $s7, 0xD($t6)
    /* 5C6F4 8008C244 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 5C6F8 8008C248 A1FE000E */  sb         $fp, 0xE($t7)
    /* 5C6FC 8008C24C 8E180000 */  lw         $t8, 0x0($s0)
    /* 5C700 8008C250 A302000F */  sb         $v0, 0xF($t8)
    /* 5C704 8008C254 8E190000 */  lw         $t9, 0x0($s0)
    /* 5C708 8008C258 272C0010 */  addiu      $t4, $t9, 0x10
    /* 5C70C 8008C25C AE0C0000 */  sw         $t4, 0x0($s0)
    /* 5C710 8008C260 91ADE0B6 */  lbu        $t5, %lo(D_800DE0B6)($t5)
    /* 5C714 8008C264 15A1003D */  bne        $t5, $at, .L8008C35C_5C80C
    /* 5C718 8008C268 00000000 */   nop
    /* 5C71C 8008C26C 0C000E38 */  jal        func_800038E0_44E0
    /* 5C720 8008C270 00000000 */   nop
    /* 5C724 8008C274 001470C0 */  sll        $t6, $s4, 3
    /* 5C728 8008C278 01D47023 */  subu       $t6, $t6, $s4
    /* 5C72C 8008C27C 000E7080 */  sll        $t6, $t6, 2
    /* 5C730 8008C280 3C18800E */  lui        $t8, %hi(D_800DE840)
    /* 5C734 8008C284 2718E840 */  addiu      $t8, $t8, %lo(D_800DE840)
    /* 5C738 8008C288 25CF0008 */  addiu      $t7, $t6, 0x8
    /* 5C73C 8008C28C 01F88821 */  addu       $s1, $t7, $t8
    /* 5C740 8008C290 86390000 */  lh         $t9, 0x0($s1)
    /* 5C744 8008C294 44992000 */  mtc1       $t9, $f4
    /* 5C748 8008C298 00000000 */  nop
    /* 5C74C 8008C29C 46802020 */  cvt.s.w    $f0, $f4
    /* 5C750 8008C2A0 04410004 */  bgez       $v0, .L8008C2B4_5C764
    /* 5C754 8008C2A4 304C0003 */   andi      $t4, $v0, 0x3
    /* 5C758 8008C2A8 11800002 */  beqz       $t4, .L8008C2B4_5C764
    /* 5C75C 8008C2AC 00000000 */   nop
    /* 5C760 8008C2B0 258CFFFC */  addiu      $t4, $t4, -0x4
  .L8008C2B4_5C764:
    /* 5C764 8008C2B4 000C6840 */  sll        $t5, $t4, 1
    /* 5C768 8008C2B8 25AE0014 */  addiu      $t6, $t5, 0x14
    /* 5C76C 8008C2BC 448E3000 */  mtc1       $t6, $f6
    /* 5C770 8008C2C0 00000000 */  nop
    /* 5C774 8008C2C4 46803520 */  cvt.s.w    $f20, $f6
    /* 5C778 8008C2C8 46140680 */  add.s      $f26, $f0, $f20
    /* 5C77C 8008C2CC 0C000E38 */  jal        func_800038E0_44E0
    /* 5C780 8008C2D0 46140701 */   sub.s     $f28, $f0, $f20
    /* 5C784 8008C2D4 862F0002 */  lh         $t7, 0x2($s1)
    /* 5C788 8008C2D8 448F4000 */  mtc1       $t7, $f8
    /* 5C78C 8008C2DC 00000000 */  nop
    /* 5C790 8008C2E0 46804020 */  cvt.s.w    $f0, $f8
    /* 5C794 8008C2E4 04410004 */  bgez       $v0, .L8008C2F8_5C7A8
    /* 5C798 8008C2E8 30580003 */   andi      $t8, $v0, 0x3
    /* 5C79C 8008C2EC 13000002 */  beqz       $t8, .L8008C2F8_5C7A8
    /* 5C7A0 8008C2F0 00000000 */   nop
    /* 5C7A4 8008C2F4 2718FFFC */  addiu      $t8, $t8, -0x4
  .L8008C2F8_5C7A8:
    /* 5C7A8 8008C2F8 0018C840 */  sll        $t9, $t8, 1
    /* 5C7AC 8008C2FC 272C0014 */  addiu      $t4, $t9, 0x14
    /* 5C7B0 8008C300 448C5000 */  mtc1       $t4, $f10
    /* 5C7B4 8008C304 00000000 */  nop
    /* 5C7B8 8008C308 46805520 */  cvt.s.w    $f20, $f10
    /* 5C7BC 8008C30C 46140580 */  add.s      $f22, $f0, $f20
    /* 5C7C0 8008C310 0C000E38 */  jal        func_800038E0_44E0
    /* 5C7C4 8008C314 46140601 */   sub.s     $f24, $f0, $f20
    /* 5C7C8 8008C318 862D0004 */  lh         $t5, 0x4($s1)
    /* 5C7CC 8008C31C 448D2000 */  mtc1       $t5, $f4
    /* 5C7D0 8008C320 00000000 */  nop
    /* 5C7D4 8008C324 46802020 */  cvt.s.w    $f0, $f4
    /* 5C7D8 8008C328 04410004 */  bgez       $v0, .L8008C33C_5C7EC
    /* 5C7DC 8008C32C 304E0003 */   andi      $t6, $v0, 0x3
    /* 5C7E0 8008C330 11C00002 */  beqz       $t6, .L8008C33C_5C7EC
    /* 5C7E4 8008C334 00000000 */   nop
    /* 5C7E8 8008C338 25CEFFFC */  addiu      $t6, $t6, -0x4
  .L8008C33C_5C7EC:
    /* 5C7EC 8008C33C 000E7840 */  sll        $t7, $t6, 1
    /* 5C7F0 8008C340 25F80014 */  addiu      $t8, $t7, 0x14
    /* 5C7F4 8008C344 44983000 */  mtc1       $t8, $f6
    /* 5C7F8 8008C348 00000000 */  nop
    /* 5C7FC 8008C34C 46803520 */  cvt.s.w    $f20, $f6
    /* 5C800 8008C350 46140080 */  add.s      $f2, $f0, $f20
    /* 5C804 8008C354 1000004D */  b          .L8008C48C_5C93C
    /* 5C808 8008C358 46140301 */   sub.s     $f12, $f0, $f20
  .L8008C35C_5C80C:
    /* 5C80C 8008C35C 0C000E38 */  jal        func_800038E0_44E0
    /* 5C810 8008C360 00000000 */   nop
    /* 5C814 8008C364 24010005 */  addiu      $at, $zero, 0x5
    /* 5C818 8008C368 0041001A */  div        $zero, $v0, $at
    /* 5C81C 8008C36C 0000C810 */  mfhi       $t9
    /* 5C820 8008C370 00196080 */  sll        $t4, $t9, 2
    /* 5C824 8008C374 258D0014 */  addiu      $t5, $t4, 0x14
    /* 5C828 8008C378 448D4000 */  mtc1       $t5, $f8
    /* 5C82C 8008C37C 0C000E38 */  jal        func_800038E0_44E0
    /* 5C830 8008C380 46804520 */   cvt.s.w   $f20, $f8
    /* 5C834 8008C384 2401000B */  addiu      $at, $zero, 0xB
    /* 5C838 8008C388 0041001A */  div        $zero, $v0, $at
    /* 5C83C 8008C38C 00007010 */  mfhi       $t6
    /* 5C840 8008C390 29C10006 */  slti       $at, $t6, 0x6
    /* 5C844 8008C394 10200004 */  beqz       $at, .L8008C3A8_5C858
    /* 5C848 8008C398 001478C0 */   sll       $t7, $s4, 3
    /* 5C84C 8008C39C 4480F000 */  mtc1       $zero, $f30
    /* 5C850 8008C3A0 00000000 */  nop
    /* 5C854 8008C3A4 4614F501 */  sub.s      $f20, $f30, $f20
  .L8008C3A8_5C858:
    /* 5C858 8008C3A8 01F47823 */  subu       $t7, $t7, $s4
    /* 5C85C 8008C3AC 000F7880 */  sll        $t7, $t7, 2
    /* 5C860 8008C3B0 3C19800E */  lui        $t9, %hi(D_800DE840)
    /* 5C864 8008C3B4 2739E840 */  addiu      $t9, $t9, %lo(D_800DE840)
    /* 5C868 8008C3B8 25F80008 */  addiu      $t8, $t7, 0x8
    /* 5C86C 8008C3BC 03198821 */  addu       $s1, $t8, $t9
    /* 5C870 8008C3C0 862C0000 */  lh         $t4, 0x0($s1)
    /* 5C874 8008C3C4 4480F000 */  mtc1       $zero, $f30
    /* 5C878 8008C3C8 448C5000 */  mtc1       $t4, $f10
    /* 5C87C 8008C3CC 00000000 */  nop
    /* 5C880 8008C3D0 46805020 */  cvt.s.w    $f0, $f10
    /* 5C884 8008C3D4 46140680 */  add.s      $f26, $f0, $f20
    /* 5C888 8008C3D8 0C000E38 */  jal        func_800038E0_44E0
    /* 5C88C 8008C3DC 46140701 */   sub.s     $f28, $f0, $f20
    /* 5C890 8008C3E0 24010005 */  addiu      $at, $zero, 0x5
    /* 5C894 8008C3E4 0041001A */  div        $zero, $v0, $at
    /* 5C898 8008C3E8 00006810 */  mfhi       $t5
    /* 5C89C 8008C3EC 000D7080 */  sll        $t6, $t5, 2
    /* 5C8A0 8008C3F0 25CF0014 */  addiu      $t7, $t6, 0x14
    /* 5C8A4 8008C3F4 448F2000 */  mtc1       $t7, $f4
    /* 5C8A8 8008C3F8 0C000E38 */  jal        func_800038E0_44E0
    /* 5C8AC 8008C3FC 46802520 */   cvt.s.w   $f20, $f4
    /* 5C8B0 8008C400 2401000B */  addiu      $at, $zero, 0xB
    /* 5C8B4 8008C404 0041001A */  div        $zero, $v0, $at
    /* 5C8B8 8008C408 0000C010 */  mfhi       $t8
    /* 5C8BC 8008C40C 2B010006 */  slti       $at, $t8, 0x6
    /* 5C8C0 8008C410 50200003 */  beql       $at, $zero, .L8008C420_5C8D0
    /* 5C8C4 8008C414 86390002 */   lh        $t9, 0x2($s1)
    /* 5C8C8 8008C418 4614F501 */  sub.s      $f20, $f30, $f20
    /* 5C8CC 8008C41C 86390002 */  lh         $t9, 0x2($s1)
  .L8008C420_5C8D0:
    /* 5C8D0 8008C420 44993000 */  mtc1       $t9, $f6
    /* 5C8D4 8008C424 00000000 */  nop
    /* 5C8D8 8008C428 46803020 */  cvt.s.w    $f0, $f6
    /* 5C8DC 8008C42C 46140580 */  add.s      $f22, $f0, $f20
    /* 5C8E0 8008C430 0C000E38 */  jal        func_800038E0_44E0
    /* 5C8E4 8008C434 46140601 */   sub.s     $f24, $f0, $f20
    /* 5C8E8 8008C438 24010005 */  addiu      $at, $zero, 0x5
    /* 5C8EC 8008C43C 0041001A */  div        $zero, $v0, $at
    /* 5C8F0 8008C440 00006010 */  mfhi       $t4
    /* 5C8F4 8008C444 000C6880 */  sll        $t5, $t4, 2
    /* 5C8F8 8008C448 25AE0014 */  addiu      $t6, $t5, 0x14
    /* 5C8FC 8008C44C 448E4000 */  mtc1       $t6, $f8
    /* 5C900 8008C450 0C000E38 */  jal        func_800038E0_44E0
    /* 5C904 8008C454 46804520 */   cvt.s.w   $f20, $f8
    /* 5C908 8008C458 2401000B */  addiu      $at, $zero, 0xB
    /* 5C90C 8008C45C 0041001A */  div        $zero, $v0, $at
    /* 5C910 8008C460 00007810 */  mfhi       $t7
    /* 5C914 8008C464 29E10006 */  slti       $at, $t7, 0x6
    /* 5C918 8008C468 50200003 */  beql       $at, $zero, .L8008C478_5C928
    /* 5C91C 8008C46C 86380004 */   lh        $t8, 0x4($s1)
    /* 5C920 8008C470 4614F501 */  sub.s      $f20, $f30, $f20
    /* 5C924 8008C474 86380004 */  lh         $t8, 0x4($s1)
  .L8008C478_5C928:
    /* 5C928 8008C478 44985000 */  mtc1       $t8, $f10
    /* 5C92C 8008C47C 00000000 */  nop
    /* 5C930 8008C480 46805020 */  cvt.s.w    $f0, $f10
    /* 5C934 8008C484 46140080 */  add.s      $f2, $f0, $f20
    /* 5C938 8008C488 46140301 */  sub.s      $f12, $f0, $f20
  .L8008C48C_5C93C:
    /* 5C93C 8008C48C 3C19800E */  lui        $t9, %hi(D_800DE0B6)
    /* 5C940 8008C490 9339E0B6 */  lbu        $t9, %lo(D_800DE0B6)($t9)
    /* 5C944 8008C494 24010001 */  addiu      $at, $zero, 0x1
    /* 5C948 8008C498 4600B486 */  mov.s      $f18, $f22
    /* 5C94C 8008C49C 1721003B */  bne        $t9, $at, .L8008C58C_5CA3C
    /* 5C950 8008C4A0 46001386 */   mov.s     $f14, $f2
    /* 5C954 8008C4A4 4600D10D */  trunc.w.s  $f4, $f26
    /* 5C958 8008C4A8 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 5C95C 8008C4AC 4600B18D */  trunc.w.s  $f6, $f22
    /* 5C960 8008C4B0 440D2000 */  mfc1       $t5, $f4
    /* 5C964 8008C4B4 4600120D */  trunc.w.s  $f8, $f2
    /* 5C968 8008C4B8 A5CD0000 */  sh         $t5, 0x0($t6)
    /* 5C96C 8008C4BC 8E190000 */  lw         $t9, 0x0($s0)
    /* 5C970 8008C4C0 44183000 */  mfc1       $t8, $f6
    /* 5C974 8008C4C4 440D4000 */  mfc1       $t5, $f8
    /* 5C978 8008C4C8 4600E28D */  trunc.w.s  $f10, $f28
    /* 5C97C 8008C4CC A7380002 */  sh         $t8, 0x2($t9)
    /* 5C980 8008C4D0 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 5C984 8008C4D4 4600C10D */  trunc.w.s  $f4, $f24
    /* 5C988 8008C4D8 A5CD0004 */  sh         $t5, 0x4($t6)
    /* 5C98C 8008C4DC 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 5C990 8008C4E0 4600618D */  trunc.w.s  $f6, $f12
    /* 5C994 8008C4E4 A5E00006 */  sh         $zero, 0x6($t7)
    /* 5C998 8008C4E8 8E180000 */  lw         $t8, 0x0($s0)
    /* 5C99C 8008C4EC A7130008 */  sh         $s3, 0x8($t8)
    /* 5C9A0 8008C4F0 8E190000 */  lw         $t9, 0x0($s0)
    /* 5C9A4 8008C4F4 A733000A */  sh         $s3, 0xA($t9)
    /* 5C9A8 8008C4F8 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 5C9AC 8008C4FC A196000C */  sb         $s6, 0xC($t4)
    /* 5C9B0 8008C500 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 5C9B4 8008C504 A1B7000D */  sb         $s7, 0xD($t5)
    /* 5C9B8 8008C508 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 5C9BC 8008C50C 440D5000 */  mfc1       $t5, $f10
    /* 5C9C0 8008C510 A1DE000E */  sb         $fp, 0xE($t6)
    /* 5C9C4 8008C514 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 5C9C8 8008C518 A1F5000F */  sb         $s5, 0xF($t7)
    /* 5C9CC 8008C51C 8E180000 */  lw         $t8, 0x0($s0)
    /* 5C9D0 8008C520 27190010 */  addiu      $t9, $t8, 0x10
    /* 5C9D4 8008C524 AE190000 */  sw         $t9, 0x0($s0)
    /* 5C9D8 8008C528 A72D0000 */  sh         $t5, 0x0($t9)
    /* 5C9DC 8008C52C 8E190000 */  lw         $t9, 0x0($s0)
    /* 5C9E0 8008C530 44182000 */  mfc1       $t8, $f4
    /* 5C9E4 8008C534 440D3000 */  mfc1       $t5, $f6
    /* 5C9E8 8008C538 A7380002 */  sh         $t8, 0x2($t9)
    /* 5C9EC 8008C53C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 5C9F0 8008C540 A5CD0004 */  sh         $t5, 0x4($t6)
    /* 5C9F4 8008C544 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 5C9F8 8008C548 A5E00006 */  sh         $zero, 0x6($t7)
    /* 5C9FC 8008C54C 8E180000 */  lw         $t8, 0x0($s0)
    /* 5CA00 8008C550 A7130008 */  sh         $s3, 0x8($t8)
    /* 5CA04 8008C554 8E190000 */  lw         $t9, 0x0($s0)
    /* 5CA08 8008C558 A720000A */  sh         $zero, 0xA($t9)
    /* 5CA0C 8008C55C 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 5CA10 8008C560 A196000C */  sb         $s6, 0xC($t4)
    /* 5CA14 8008C564 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 5CA18 8008C568 A1B7000D */  sb         $s7, 0xD($t5)
    /* 5CA1C 8008C56C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 5CA20 8008C570 A1DE000E */  sb         $fp, 0xE($t6)
    /* 5CA24 8008C574 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 5CA28 8008C578 A1F5000F */  sb         $s5, 0xF($t7)
    /* 5CA2C 8008C57C 8E180000 */  lw         $t8, 0x0($s0)
    /* 5CA30 8008C580 27190010 */  addiu      $t9, $t8, 0x10
    /* 5CA34 8008C584 1000003A */  b          .L8008C670_5CB20
    /* 5CA38 8008C588 AE190000 */   sw        $t9, 0x0($s0)
  .L8008C58C_5CA3C:
    /* 5CA3C 8008C58C 4600D20D */  trunc.w.s  $f8, $f26
    /* 5CA40 8008C590 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 5CA44 8008C594 4600B28D */  trunc.w.s  $f10, $f22
    /* 5CA48 8008C598 440D4000 */  mfc1       $t5, $f8
    /* 5CA4C 8008C59C 4600110D */  trunc.w.s  $f4, $f2
    /* 5CA50 8008C5A0 A5CD0000 */  sh         $t5, 0x0($t6)
    /* 5CA54 8008C5A4 8E190000 */  lw         $t9, 0x0($s0)
    /* 5CA58 8008C5A8 44185000 */  mfc1       $t8, $f10
    /* 5CA5C 8008C5AC 440D2000 */  mfc1       $t5, $f4
    /* 5CA60 8008C5B0 4600E18D */  trunc.w.s  $f6, $f28
    /* 5CA64 8008C5B4 A7380002 */  sh         $t8, 0x2($t9)
    /* 5CA68 8008C5B8 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 5CA6C 8008C5BC 4600C20D */  trunc.w.s  $f8, $f24
    /* 5CA70 8008C5C0 A5CD0004 */  sh         $t5, 0x4($t6)
    /* 5CA74 8008C5C4 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 5CA78 8008C5C8 4600628D */  trunc.w.s  $f10, $f12
    /* 5CA7C 8008C5CC A5E00006 */  sh         $zero, 0x6($t7)
    /* 5CA80 8008C5D0 8E180000 */  lw         $t8, 0x0($s0)
    /* 5CA84 8008C5D4 A7130008 */  sh         $s3, 0x8($t8)
    /* 5CA88 8008C5D8 8E190000 */  lw         $t9, 0x0($s0)
    /* 5CA8C 8008C5DC A733000A */  sh         $s3, 0xA($t9)
    /* 5CA90 8008C5E0 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 5CA94 8008C5E4 A196000C */  sb         $s6, 0xC($t4)
    /* 5CA98 8008C5E8 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 5CA9C 8008C5EC A1B7000D */  sb         $s7, 0xD($t5)
    /* 5CAA0 8008C5F0 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 5CAA4 8008C5F4 440D3000 */  mfc1       $t5, $f6
    /* 5CAA8 8008C5F8 A1DE000E */  sb         $fp, 0xE($t6)
    /* 5CAAC 8008C5FC 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 5CAB0 8008C600 A1F5000F */  sb         $s5, 0xF($t7)
    /* 5CAB4 8008C604 8E180000 */  lw         $t8, 0x0($s0)
    /* 5CAB8 8008C608 27190010 */  addiu      $t9, $t8, 0x10
    /* 5CABC 8008C60C AE190000 */  sw         $t9, 0x0($s0)
    /* 5CAC0 8008C610 A72D0000 */  sh         $t5, 0x0($t9)
    /* 5CAC4 8008C614 8E190000 */  lw         $t9, 0x0($s0)
    /* 5CAC8 8008C618 44184000 */  mfc1       $t8, $f8
    /* 5CACC 8008C61C 440D5000 */  mfc1       $t5, $f10
    /* 5CAD0 8008C620 A7380002 */  sh         $t8, 0x2($t9)
    /* 5CAD4 8008C624 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 5CAD8 8008C628 A5CD0004 */  sh         $t5, 0x4($t6)
    /* 5CADC 8008C62C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 5CAE0 8008C630 A5E00006 */  sh         $zero, 0x6($t7)
    /* 5CAE4 8008C634 8E180000 */  lw         $t8, 0x0($s0)
    /* 5CAE8 8008C638 A7130008 */  sh         $s3, 0x8($t8)
    /* 5CAEC 8008C63C 8E190000 */  lw         $t9, 0x0($s0)
    /* 5CAF0 8008C640 A720000A */  sh         $zero, 0xA($t9)
    /* 5CAF4 8008C644 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 5CAF8 8008C648 A196000C */  sb         $s6, 0xC($t4)
    /* 5CAFC 8008C64C 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 5CB00 8008C650 A1B7000D */  sb         $s7, 0xD($t5)
    /* 5CB04 8008C654 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 5CB08 8008C658 A1DE000E */  sb         $fp, 0xE($t6)
    /* 5CB0C 8008C65C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 5CB10 8008C660 A1F5000F */  sb         $s5, 0xF($t7)
    /* 5CB14 8008C664 8E180000 */  lw         $t8, 0x0($s0)
    /* 5CB18 8008C668 27190010 */  addiu      $t9, $t8, 0x10
    /* 5CB1C 8008C66C AE190000 */  sw         $t9, 0x0($s0)
  .L8008C670_5CB20:
    /* 5CB20 8008C670 8E420000 */  lw         $v0, 0x0($s2)
    /* 5CB24 8008C674 3C0D0400 */  lui        $t5, (0x400103F >> 16)
    /* 5CB28 8008C678 E7BA0074 */  swc1       $f26, 0x74($sp)
    /* 5CB2C 8008C67C 244C0008 */  addiu      $t4, $v0, 0x8
    /* 5CB30 8008C680 AE4C0000 */  sw         $t4, 0x0($s2)
    /* 5CB34 8008C684 35AD103F */  ori        $t5, $t5, (0x400103F & 0xFFFF)
    /* 5CB38 8008C688 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 5CB3C 8008C68C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 5CB40 8008C690 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 5CB44 8008C694 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 5CB48 8008C698 25CFFFC0 */  addiu      $t7, $t6, -0x40
    /* 5CB4C 8008C69C 01E1C024 */  and        $t8, $t7, $at
    /* 5CB50 8008C6A0 AC580004 */  sw         $t8, 0x4($v0)
    /* 5CB54 8008C6A4 8E420000 */  lw         $v0, 0x0($s2)
    /* 5CB58 8008C6A8 3C0D0004 */  lui        $t5, (0x40602 >> 16)
    /* 5CB5C 8008C6AC 3C0CB100 */  lui        $t4, (0xB1000206 >> 16)
    /* 5CB60 8008C6B0 24590008 */  addiu      $t9, $v0, 0x8
    /* 5CB64 8008C6B4 AE590000 */  sw         $t9, 0x0($s2)
    /* 5CB68 8008C6B8 358C0206 */  ori        $t4, $t4, (0xB1000206 & 0xFFFF)
    /* 5CB6C 8008C6BC 35AD0602 */  ori        $t5, $t5, (0x40602 & 0xFFFF)
    /* 5CB70 8008C6C0 AC4D0004 */  sw         $t5, 0x4($v0)
    /* 5CB74 8008C6C4 AC4C0000 */  sw         $t4, 0x0($v0)
    /* 5CB78 8008C6C8 4600E786 */  mov.s      $f30, $f28
    /* 5CB7C 8008C6CC 4600C406 */  mov.s      $f16, $f24
    /* 5CB80 8008C6D0 46006006 */  mov.s      $f0, $f12
    /* 5CB84 8008C6D4 2402FFFB */  addiu      $v0, $zero, -0x5
    /* 5CB88 8008C6D8 00148C00 */  sll        $s1, $s4, 16
  .L8008C6DC_5CB8C:
    /* 5CB8C 8008C6DC 00117403 */  sra        $t6, $s1, 16
    /* 5CB90 8008C6E0 12820004 */  beq        $s4, $v0, .L8008C6F4_5CBA4
    /* 5CB94 8008C6E4 01C08825 */   or        $s1, $t6, $zero
    /* 5CB98 8008C6E8 2401FFFA */  addiu      $at, $zero, -0x6
    /* 5CB9C 8008C6EC 55C1FE3A */  bnel       $t6, $at, .L8008BFD8_5C488
    /* 5CBA0 8008C6F0 001170C0 */   sll       $t6, $s1, 3
  .L8008C6F4_5CBA4:
    /* 5CBA4 8008C6F4 8FBF006C */  lw         $ra, 0x6C($sp)
    /* 5CBA8 8008C6F8 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 5CBAC 8008C6FC D7B60020 */  ldc1       $f22, 0x20($sp)
    /* 5CBB0 8008C700 D7B80028 */  ldc1       $f24, 0x28($sp)
    /* 5CBB4 8008C704 D7BA0030 */  ldc1       $f26, 0x30($sp)
    /* 5CBB8 8008C708 D7BC0038 */  ldc1       $f28, 0x38($sp)
    /* 5CBBC 8008C70C D7BE0040 */  ldc1       $f30, 0x40($sp)
    /* 5CBC0 8008C710 8FB00048 */  lw         $s0, 0x48($sp)
    /* 5CBC4 8008C714 8FB1004C */  lw         $s1, 0x4C($sp)
    /* 5CBC8 8008C718 8FB20050 */  lw         $s2, 0x50($sp)
    /* 5CBCC 8008C71C 8FB30054 */  lw         $s3, 0x54($sp)
    /* 5CBD0 8008C720 8FB40058 */  lw         $s4, 0x58($sp)
    /* 5CBD4 8008C724 8FB5005C */  lw         $s5, 0x5C($sp)
    /* 5CBD8 8008C728 8FB60060 */  lw         $s6, 0x60($sp)
    /* 5CBDC 8008C72C 8FB70064 */  lw         $s7, 0x64($sp)
    /* 5CBE0 8008C730 8FBE0068 */  lw         $fp, 0x68($sp)
    /* 5CBE4 8008C734 03E00008 */  jr         $ra
    /* 5CBE8 8008C738 27BD0090 */   addiu     $sp, $sp, 0x90
endlabel func_8008BC00_5C0B0
