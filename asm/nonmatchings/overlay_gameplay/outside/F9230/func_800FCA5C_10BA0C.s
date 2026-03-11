nonmatching func_800FCA5C_10BA0C, 0x690

glabel func_800FCA5C_10BA0C
    /* 10BA0C 800FCA5C 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* 10BA10 800FCA60 3C018016 */  lui        $at, %hi(D_80159300)
    /* 10BA14 800FCA64 AC209300 */  sw         $zero, %lo(D_80159300)($at)
    /* 10BA18 800FCA68 3C0E8025 */  lui        $t6, %hi(D_80257A14)
    /* 10BA1C 800FCA6C 95CE7A14 */  lhu        $t6, %lo(D_80257A14)($t6)
    /* 10BA20 800FCA70 3C018014 */  lui        $at, %hi(D_8013FD88)
    /* 10BA24 800FCA74 AC20FD88 */  sw         $zero, %lo(D_8013FD88)($at)
    /* 10BA28 800FCA78 24013039 */  addiu      $at, $zero, 0x3039
    /* 10BA2C 800FCA7C AFBF0044 */  sw         $ra, 0x44($sp)
    /* 10BA30 800FCA80 AFBE0040 */  sw         $fp, 0x40($sp)
    /* 10BA34 800FCA84 AFB7003C */  sw         $s7, 0x3C($sp)
    /* 10BA38 800FCA88 AFB60038 */  sw         $s6, 0x38($sp)
    /* 10BA3C 800FCA8C AFB50034 */  sw         $s5, 0x34($sp)
    /* 10BA40 800FCA90 AFB40030 */  sw         $s4, 0x30($sp)
    /* 10BA44 800FCA94 AFB3002C */  sw         $s3, 0x2C($sp)
    /* 10BA48 800FCA98 AFB20028 */  sw         $s2, 0x28($sp)
    /* 10BA4C 800FCA9C AFB10024 */  sw         $s1, 0x24($sp)
    /* 10BA50 800FCAA0 AFB00020 */  sw         $s0, 0x20($sp)
    /* 10BA54 800FCAA4 11C10006 */  beq        $t6, $at, .L800FCAC0_10BA70
    /* 10BA58 800FCAA8 F7B40018 */   sdc1      $f20, 0x18($sp)
    /* 10BA5C 800FCAAC 00002025 */  or         $a0, $zero, $zero
    /* 10BA60 800FCAB0 0C001B6B */  jal        func_80006DAC_79AC
    /* 10BA64 800FCAB4 24050001 */   addiu     $a1, $zero, 0x1
    /* 10BA68 800FCAB8 10000180 */  b          .L800FD0BC_10C06C
    /* 10BA6C 800FCABC 8FBF0044 */   lw        $ra, 0x44($sp)
  .L800FCAC0_10BA70:
    /* 10BA70 800FCAC0 3C108026 */  lui        $s0, %hi(D_80258250)
    /* 10BA74 800FCAC4 3C118025 */  lui        $s1, %hi(D_80257A70)
    /* 10BA78 800FCAC8 26317A70 */  addiu      $s1, $s1, %lo(D_80257A70)
    /* 10BA7C 800FCACC 26108250 */  addiu      $s0, $s0, %lo(D_80258250)
    /* 10BA80 800FCAD0 24160001 */  addiu      $s6, $zero, 0x1
  .L800FCAD4_10BA84:
    /* 10BA84 800FCAD4 3C0F8004 */  lui        $t7, %hi(currentLevel)
    /* 10BA88 800FCAD8 8DEF7F90 */  lw         $t7, %lo(currentLevel)($t7)
    /* 10BA8C 800FCADC 24010003 */  addiu      $at, $zero, 0x3
    /* 10BA90 800FCAE0 3C188025 */  lui        $t8, %hi(vehicleSpecs)
    /* 10BA94 800FCAE4 15E10004 */  bne        $t7, $at, .L800FCAF8_10BAA8
    /* 10BA98 800FCAE8 27187A00 */   addiu     $t8, $t8, %lo(vehicleSpecs)
    /* 10BA9C 800FCAEC 271905B0 */  addiu      $t9, $t8, 0x5B0
    /* 10BAA0 800FCAF0 52190021 */  beql       $s0, $t9, .L800FCB78_10BB28
    /* 10BAA4 800FCAF4 0211182B */   sltu      $v1, $s0, $s1
  .L800FCAF8_10BAA8:
    /* 10BAA8 800FCAF8 86020034 */  lh         $v0, 0x34($s0)
    /* 10BAAC 800FCAFC 86030036 */  lh         $v1, 0x36($s0)
    /* 10BAB0 800FCB00 920D0016 */  lbu        $t5, 0x16($s0)
    /* 10BAB4 800FCB04 00024043 */  sra        $t0, $v0, 1
    /* 10BAB8 800FCB08 01080019 */  multu      $t0, $t0
    /* 10BABC 800FCB0C 00034843 */  sra        $t1, $v1, 1
    /* 10BAC0 800FCB10 00005012 */  mflo       $t2
    /* 10BAC4 800FCB14 00000000 */  nop
    /* 10BAC8 800FCB18 00000000 */  nop
    /* 10BACC 800FCB1C 01290019 */  multu      $t1, $t1
    /* 10BAD0 800FCB20 00005812 */  mflo       $t3
    /* 10BAD4 800FCB24 014B6021 */  addu       $t4, $t2, $t3
    /* 10BAD8 800FCB28 448C2000 */  mtc1       $t4, $f4
    /* 10BADC 800FCB2C 12CD0009 */  beq        $s6, $t5, .L800FCB54_10BB04
    /* 10BAE0 800FCB30 46802320 */   cvt.s.w   $f12, $f4
    /* 10BAE4 800FCB34 86020038 */  lh         $v0, 0x38($s0)
    /* 10BAE8 800FCB38 00027043 */  sra        $t6, $v0, 1
    /* 10BAEC 800FCB3C 01CE0019 */  multu      $t6, $t6
    /* 10BAF0 800FCB40 00007812 */  mflo       $t7
    /* 10BAF4 800FCB44 448F3000 */  mtc1       $t7, $f6
    /* 10BAF8 800FCB48 00000000 */  nop
    /* 10BAFC 800FCB4C 46803220 */  cvt.s.w    $f8, $f6
    /* 10BB00 800FCB50 46086300 */  add.s      $f12, $f12, $f8
  .L800FCB54_10BB04:
    /* 10BB04 800FCB54 4600628D */  trunc.w.s  $f10, $f12
    /* 10BB08 800FCB58 44195000 */  mfc1       $t9, $f10
    /* 10BB0C 800FCB5C 0C007650 */  jal        sqrtf
    /* 10BB10 800FCB60 AE190008 */   sw        $t9, 0x8($s0)
    /* 10BB14 800FCB64 4600040D */  trunc.w.s  $f16, $f0
    /* 10BB18 800FCB68 44098000 */  mfc1       $t1, $f16
    /* 10BB1C 800FCB6C 00000000 */  nop
    /* 10BB20 800FCB70 A609000C */  sh         $t1, 0xC($s0)
    /* 10BB24 800FCB74 0211182B */  sltu       $v1, $s0, $s1
  .L800FCB78_10BB28:
    /* 10BB28 800FCB78 1060FFD6 */  beqz       $v1, .L800FCAD4_10BA84
    /* 10BB2C 800FCB7C 2610FF90 */   addiu     $s0, $s0, -0x70
    /* 10BB30 800FCB80 3C018016 */  lui        $at, %hi(D_80158FD8)
    /* 10BB34 800FCB84 A4208FD8 */  sh         $zero, %lo(D_80158FD8)($at)
    /* 10BB38 800FCB88 3C018016 */  lui        $at, %hi(D_80159268)
    /* 10BB3C 800FCB8C AC209268 */  sw         $zero, %lo(D_80159268)($at)
    /* 10BB40 800FCB90 3C018016 */  lui        $at, %hi(D_80159318)
    /* 10BB44 800FCB94 A4209318 */  sh         $zero, %lo(D_80159318)($at)
    /* 10BB48 800FCB98 3C018016 */  lui        $at, %hi(D_801591EA)
    /* 10BB4C 800FCB9C A42091EA */  sh         $zero, %lo(D_801591EA)($at)
    /* 10BB50 800FCBA0 3C018016 */  lui        $at, %hi(D_80159226)
    /* 10BB54 800FCBA4 A4209226 */  sh         $zero, %lo(D_80159226)($at)
    /* 10BB58 800FCBA8 3C018016 */  lui        $at, %hi(D_801591BC)
    /* 10BB5C 800FCBAC AC2091BC */  sw         $zero, %lo(D_801591BC)($at)
    /* 10BB60 800FCBB0 3C018016 */  lui        $at, %hi(D_801591F4)
    /* 10BB64 800FCBB4 A42091F4 */  sh         $zero, %lo(D_801591F4)($at)
    /* 10BB68 800FCBB8 3C018016 */  lui        $at, %hi(D_80159246)
    /* 10BB6C 800FCBBC A4209246 */  sh         $zero, %lo(D_80159246)($at)
    /* 10BB70 800FCBC0 3C018016 */  lui        $at, %hi(D_80159248)
    /* 10BB74 800FCBC4 A4209248 */  sh         $zero, %lo(D_80159248)($at)
    /* 10BB78 800FCBC8 3C018016 */  lui        $at, %hi(D_8015926C)
    /* 10BB7C 800FCBCC 240A07D0 */  addiu      $t2, $zero, 0x7D0
    /* 10BB80 800FCBD0 AC2A926C */  sw         $t2, %lo(D_8015926C)($at)
    /* 10BB84 800FCBD4 3C018015 */  lui        $at, %hi(D_8014ED54)
    /* 10BB88 800FCBD8 A420ED54 */  sh         $zero, %lo(D_8014ED54)($at)
    /* 10BB8C 800FCBDC 3C018016 */  lui        $at, %hi(D_8015930E)
    /* 10BB90 800FCBE0 A420930E */  sh         $zero, %lo(D_8015930E)($at)
    /* 10BB94 800FCBE4 3C018016 */  lui        $at, %hi(D_80158E64)
    /* 10BB98 800FCBE8 3C038005 */  lui        $v1, %hi(D_80050AD0)
    /* 10BB9C 800FCBEC AC208E64 */  sw         $zero, %lo(D_80158E64)($at)
    /* 10BBA0 800FCBF0 24630AD0 */  addiu      $v1, $v1, %lo(D_80050AD0)
    /* 10BBA4 800FCBF4 AC600000 */  sw         $zero, 0x0($v1)
    /* 10BBA8 800FCBF8 3C018005 */  lui        $at, %hi(D_80050AD4)
    /* 10BBAC 800FCBFC AC200AD4 */  sw         $zero, %lo(D_80050AD4)($at)
    /* 10BBB0 800FCC00 3C018016 */  lui        $at, %hi(D_801591AC)
    /* 10BBB4 800FCC04 AC2091AC */  sw         $zero, %lo(D_801591AC)($at)
    /* 10BBB8 800FCC08 3C018016 */  lui        $at, %hi(D_80159320)
    /* 10BBBC 800FCC0C AC209320 */  sw         $zero, %lo(D_80159320)($at)
    /* 10BBC0 800FCC10 3C018016 */  lui        $at, %hi(D_8015931A)
    /* 10BBC4 800FCC14 A420931A */  sh         $zero, %lo(D_8015931A)($at)
    /* 10BBC8 800FCC18 3C018016 */  lui        $at, %hi(D_8015920C)
    /* 10BBCC 800FCC1C AC20920C */  sw         $zero, %lo(D_8015920C)($at)
    /* 10BBD0 800FCC20 3C018016 */  lui        $at, %hi(D_80159260)
    /* 10BBD4 800FCC24 A4209260 */  sh         $zero, %lo(D_80159260)($at)
    /* 10BBD8 800FCC28 3C018016 */  lui        $at, %hi(D_80158E78)
    /* 10BBDC 800FCC2C AC208E78 */  sw         $zero, %lo(D_80158E78)($at)
    /* 10BBE0 800FCC30 3C018016 */  lui        $at, %hi(D_80159262)
    /* 10BBE4 800FCC34 A4209262 */  sh         $zero, %lo(D_80159262)($at)
    /* 10BBE8 800FCC38 3C018016 */  lui        $at, %hi(D_80159304)
    /* 10BBEC 800FCC3C 240C006E */  addiu      $t4, $zero, 0x6E
    /* 10BBF0 800FCC40 A42C9304 */  sh         $t4, %lo(D_80159304)($at)
    /* 10BBF4 800FCC44 3C018016 */  lui        $at, %hi(D_801591C4)
    /* 10BBF8 800FCC48 A42091C4 */  sh         $zero, %lo(D_801591C4)($at)
    /* 10BBFC 800FCC4C 3C018016 */  lui        $at, %hi(D_80159274)
    /* 10BC00 800FCC50 A4209274 */  sh         $zero, %lo(D_80159274)($at)
    /* 10BC04 800FCC54 3C018016 */  lui        $at, %hi(D_8015F9EC)
    /* 10BC08 800FCC58 AC20F9EC */  sw         $zero, %lo(D_8015F9EC)($at)
    /* 10BC0C 800FCC5C 3C018016 */  lui        $at, %hi(D_801591A8)
    /* 10BC10 800FCC60 AC2091A8 */  sw         $zero, %lo(D_801591A8)($at)
    /* 10BC14 800FCC64 3C018016 */  lui        $at, %hi(D_80159236)
    /* 10BC18 800FCC68 A4209236 */  sh         $zero, %lo(D_80159236)($at)
    /* 10BC1C 800FCC6C 3C018016 */  lui        $at, %hi(D_8015925C)
    /* 10BC20 800FCC70 AC20925C */  sw         $zero, %lo(D_8015925C)($at)
    /* 10BC24 800FCC74 3C018016 */  lui        $at, %hi(D_80159258)
    /* 10BC28 800FCC78 AC209258 */  sw         $zero, %lo(D_80159258)($at)
    /* 10BC2C 800FCC7C 3C018016 */  lui        $at, %hi(D_80159048)
    /* 10BC30 800FCC80 AC209048 */  sw         $zero, %lo(D_80159048)($at)
    /* 10BC34 800FCC84 3C018016 */  lui        $at, %hi(D_80159250)
    /* 10BC38 800FCC88 A4209250 */  sh         $zero, %lo(D_80159250)($at)
    /* 10BC3C 800FCC8C 3C018016 */  lui        $at, %hi(D_8015904C)
    /* 10BC40 800FCC90 A420904C */  sh         $zero, %lo(D_8015904C)($at)
    /* 10BC44 800FCC94 3C018016 */  lui        $at, %hi(D_801593E8)
    /* 10BC48 800FCC98 A42093E8 */  sh         $zero, %lo(D_801593E8)($at)
    /* 10BC4C 800FCC9C 3C018016 */  lui        $at, %hi(D_801593EA)
    /* 10BC50 800FCCA0 A42093EA */  sh         $zero, %lo(D_801593EA)($at)
    /* 10BC54 800FCCA4 3C018005 */  lui        $at, %hi(D_80052B34)
    /* 10BC58 800FCCA8 AC202B34 */  sw         $zero, %lo(D_80052B34)($at)
    /* 10BC5C 800FCCAC 3C0D8005 */  lui        $t5, %hi(D_80052AE8)
    /* 10BC60 800FCCB0 25AD2AE8 */  addiu      $t5, $t5, %lo(D_80052AE8)
    /* 10BC64 800FCCB4 3C018005 */  lui        $at, %hi(D_80052B2C)
    /* 10BC68 800FCCB8 AC2D2B2C */  sw         $t5, %lo(D_80052B2C)($at)
    /* 10BC6C 800FCCBC 44800000 */  mtc1       $zero, $f0
    /* 10BC70 800FCCC0 3C018016 */  lui        $at, %hi(D_80159264)
    /* 10BC74 800FCCC4 AC209264 */  sw         $zero, %lo(D_80159264)($at)
    /* 10BC78 800FCCC8 3C018016 */  lui        $at, %hi(D_80159238)
    /* 10BC7C 800FCCCC E4209238 */  swc1       $f0, %lo(D_80159238)($at)
    /* 10BC80 800FCCD0 3C018016 */  lui        $at, %hi(D_8015923C)
    /* 10BC84 800FCCD4 E420923C */  swc1       $f0, %lo(D_8015923C)($at)
    /* 10BC88 800FCCD8 3C018016 */  lui        $at, %hi(D_80159272)
    /* 10BC8C 800FCCDC A4209272 */  sh         $zero, %lo(D_80159272)($at)
    /* 10BC90 800FCCE0 3C018016 */  lui        $at, %hi(D_80158C50)
    /* 10BC94 800FCCE4 A4208C50 */  sh         $zero, %lo(D_80158C50)($at)
    /* 10BC98 800FCCE8 3C018016 */  lui        $at, %hi(D_80158C52)
    /* 10BC9C 800FCCEC A4208C52 */  sh         $zero, %lo(D_80158C52)($at)
    /* 10BCA0 800FCCF0 3C018016 */  lui        $at, %hi(D_801591C0)
    /* 10BCA4 800FCCF4 A42091C0 */  sh         $zero, %lo(D_801591C0)($at)
    /* 10BCA8 800FCCF8 3C018015 */  lui        $at, %hi(D_8014ED56)
    /* 10BCAC 800FCCFC A420ED56 */  sh         $zero, %lo(D_8014ED56)($at)
    /* 10BCB0 800FCD00 3C018016 */  lui        $at, %hi(D_80158F80)
    /* 10BCB4 800FCD04 A0208F80 */  sb         $zero, %lo(D_80158F80)($at)
    /* 10BCB8 800FCD08 3C018015 */  lui        $at, %hi(D_801493D8)
    /* 10BCBC 800FCD0C A43693D8 */  sh         $s6, %lo(D_801493D8)($at)
    /* 10BCC0 800FCD10 3C018016 */  lui        $at, %hi(D_80159240)
    /* 10BCC4 800FCD14 240E125C */  addiu      $t6, $zero, 0x125C
    /* 10BCC8 800FCD18 A42E9240 */  sh         $t6, %lo(D_80159240)($at)
    /* 10BCCC 800FCD1C 3C018016 */  lui        $at, %hi(D_80159242)
    /* 10BCD0 800FCD20 240F0038 */  addiu      $t7, $zero, 0x38
    /* 10BCD4 800FCD24 A42F9242 */  sh         $t7, %lo(D_80159242)($at)
    /* 10BCD8 800FCD28 3C018016 */  lui        $at, %hi(D_8015929E)
    /* 10BCDC 800FCD2C A420929E */  sh         $zero, %lo(D_8015929E)($at)
    /* 10BCE0 800FCD30 240404B0 */  addiu      $a0, $zero, 0x4B0
    /* 10BCE4 800FCD34 3C018016 */  lui        $at, %hi(D_8015929C)
    /* 10BCE8 800FCD38 A424929C */  sh         $a0, %lo(D_8015929C)($at)
    /* 10BCEC 800FCD3C 3C180001 */  lui        $t8, (0x186A0 >> 16)
    /* 10BCF0 800FCD40 371886A0 */  ori        $t8, $t8, (0x186A0 & 0xFFFF)
    /* 10BCF4 800FCD44 3C018015 */  lui        $at, %hi(D_8014ED04)
    /* 10BCF8 800FCD48 AC38ED04 */  sw         $t8, %lo(D_8014ED04)($at)
    /* 10BCFC 800FCD4C 3C018016 */  lui        $at, %hi(D_801591C2)
    /* 10BD00 800FCD50 A42091C2 */  sh         $zero, %lo(D_801591C2)($at)
    /* 10BD04 800FCD54 3C198016 */  lui        $t9, %hi(D_80159028)
    /* 10BD08 800FCD58 27399028 */  addiu      $t9, $t9, %lo(D_80159028)
    /* 10BD0C 800FCD5C 3C018016 */  lui        $at, %hi(D_80159020)
    /* 10BD10 800FCD60 AC399020 */  sw         $t9, %lo(D_80159020)($at)
    /* 10BD14 800FCD64 3C018016 */  lui        $at, %hi(D_80158F90)
    /* 10BD18 800FCD68 AC208F90 */  sw         $zero, %lo(D_80158F90)($at)
    /* 10BD1C 800FCD6C 3C018016 */  lui        $at, %hi(D_80158FEC)
    /* 10BD20 800FCD70 AC208FEC */  sw         $zero, %lo(D_80158FEC)($at)
    /* 10BD24 800FCD74 3C088016 */  lui        $t0, %hi(D_80159000)
    /* 10BD28 800FCD78 25089000 */  addiu      $t0, $t0, %lo(D_80159000)
    /* 10BD2C 800FCD7C 3C018016 */  lui        $at, %hi(D_80158FF4)
    /* 10BD30 800FCD80 AC288FF4 */  sw         $t0, %lo(D_80158FF4)($at)
    /* 10BD34 800FCD84 3C058016 */  lui        $a1, %hi(D_80159234)
    /* 10BD38 800FCD88 3C018015 */  lui        $at, %hi(D_80149438)
    /* 10BD3C 800FCD8C 24A59234 */  addiu      $a1, $a1, %lo(D_80159234)
    /* 10BD40 800FCD90 AC209438 */  sw         $zero, %lo(D_80149438)($at)
    /* 10BD44 800FCD94 A4A00000 */  sh         $zero, 0x0($a1)
    /* 10BD48 800FCD98 84A90000 */  lh         $t1, 0x0($a1)
    /* 10BD4C 800FCD9C 3C018016 */  lui        $at, %hi(D_8015930C)
    /* 10BD50 800FCDA0 240A0006 */  addiu      $t2, $zero, 0x6
    /* 10BD54 800FCDA4 A429930C */  sh         $t1, %lo(D_8015930C)($at)
    /* 10BD58 800FCDA8 3C018004 */  lui        $at, %hi(D_80047724)
    /* 10BD5C 800FCDAC A42A7724 */  sh         $t2, %lo(D_80047724)($at)
    /* 10BD60 800FCDB0 3C018004 */  lui        $at, %hi(D_80047726)
    /* 10BD64 800FCDB4 240B0258 */  addiu      $t3, $zero, 0x258
    /* 10BD68 800FCDB8 A42B7726 */  sh         $t3, %lo(D_80047726)($at)
    /* 10BD6C 800FCDBC 3C018004 */  lui        $at, %hi(D_80047728)
    /* 10BD70 800FCDC0 3C028016 */  lui        $v0, %hi(D_80159176)
    /* 10BD74 800FCDC4 A4247728 */  sh         $a0, %lo(D_80047728)($at)
    /* 10BD78 800FCDC8 24429176 */  addiu      $v0, $v0, %lo(D_80159176)
    /* 10BD7C 800FCDCC 24120031 */  addiu      $s2, $zero, 0x31
  .L800FCDD0_10BD80:
    /* 10BD80 800FCDD0 A4400004 */  sh         $zero, 0x4($v0)
    /* 10BD84 800FCDD4 84440004 */  lh         $a0, 0x4($v0)
    /* 10BD88 800FCDD8 02401825 */  or         $v1, $s2, $zero
    /* 10BD8C 800FCDDC 2442FFFA */  addiu      $v0, $v0, -0x6
    /* 10BD90 800FCDE0 A4440008 */  sh         $a0, 0x8($v0)
    /* 10BD94 800FCDE4 A4440006 */  sh         $a0, 0x6($v0)
    /* 10BD98 800FCDE8 1640FFF9 */  bnez       $s2, .L800FCDD0_10BD80
    /* 10BD9C 800FCDEC 2652FFFF */   addiu     $s2, $s2, -0x1
    /* 10BDA0 800FCDF0 3C108005 */  lui        $s0, %hi(D_80050A74)
    /* 10BDA4 800FCDF4 3C118026 */  lui        $s1, %hi(D_80259D7E)
    /* 10BDA8 800FCDF8 3C158016 */  lui        $s5, %hi(D_80158C4F)
    /* 10BDAC 800FCDFC 3C018014 */  lui        $at, %hi(D_80144A78)
    /* 10BDB0 800FCE00 D4344A78 */  ldc1       $f20, %lo(D_80144A78)($at)
    /* 10BDB4 800FCE04 26B58C4F */  addiu      $s5, $s5, %lo(D_80158C4F)
    /* 10BDB8 800FCE08 26319D7E */  addiu      $s1, $s1, %lo(D_80259D7E)
    /* 10BDBC 800FCE0C 26100A74 */  addiu      $s0, $s0, %lo(D_80050A74)
    /* 10BDC0 800FCE10 2412007F */  addiu      $s2, $zero, 0x7F
  .L800FCE14_10BDC4:
    /* 10BDC4 800FCE14 862C0006 */  lh         $t4, 0x6($s1)
    /* 10BDC8 800FCE18 3C0F8025 */  lui        $t7, %hi(vehicleSpecs)
    /* 10BDCC 800FCE1C 25EF7A00 */  addiu      $t7, $t7, %lo(vehicleSpecs)
    /* 10BDD0 800FCE20 318D00FF */  andi       $t5, $t4, 0xFF
    /* 10BDD4 800FCE24 000D70C0 */  sll        $t6, $t5, 3
    /* 10BDD8 800FCE28 01CD7023 */  subu       $t6, $t6, $t5
    /* 10BDDC 800FCE2C 000E7100 */  sll        $t6, $t6, 4
    /* 10BDE0 800FCE30 0200B825 */  or         $s7, $s0, $zero
    /* 10BDE4 800FCE34 0220F025 */  or         $fp, $s1, $zero
    /* 10BDE8 800FCE38 01CFA021 */  addu       $s4, $t6, $t7
    /* 10BDEC 800FCE3C 02002025 */  or         $a0, $s0, $zero
    /* 10BDF0 800FCE40 0C03EBA1 */  jal        func_800FAE84_109E34
    /* 10BDF4 800FCE44 A20C001A */   sb        $t4, 0x1A($s0)
    /* 10BDF8 800FCE48 86380000 */  lh         $t8, 0x0($s1)
    /* 10BDFC 800FCE4C 02002025 */  or         $a0, $s0, $zero
    /* 10BE00 800FCE50 0018CA00 */  sll        $t9, $t8, 8
    /* 10BE04 800FCE54 27280080 */  addiu      $t0, $t9, 0x80
    /* 10BE08 800FCE58 44889000 */  mtc1       $t0, $f18
    /* 10BE0C 800FCE5C 00000000 */  nop
    /* 10BE10 800FCE60 468094A0 */  cvt.s.w    $f18, $f18
    /* 10BE14 800FCE64 44059000 */  mfc1       $a1, $f18
    /* 10BE18 800FCE68 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* 10BE1C 800FCE6C 00000000 */   nop
    /* 10BE20 800FCE70 86290002 */  lh         $t1, 0x2($s1)
    /* 10BE24 800FCE74 02002025 */  or         $a0, $s0, $zero
    /* 10BE28 800FCE78 00095200 */  sll        $t2, $t1, 8
    /* 10BE2C 800FCE7C 254B0080 */  addiu      $t3, $t2, 0x80
    /* 10BE30 800FCE80 448B2000 */  mtc1       $t3, $f4
    /* 10BE34 800FCE84 00000000 */  nop
    /* 10BE38 800FCE88 46802120 */  cvt.s.w    $f4, $f4
    /* 10BE3C 800FCE8C 44052000 */  mfc1       $a1, $f4
    /* 10BE40 800FCE90 0C03ED21 */  jal        func_800FB484_10A434
    /* 10BE44 800FCE94 00000000 */   nop
    /* 10BE48 800FCE98 86040000 */  lh         $a0, 0x0($s0)
    /* 10BE4C 800FCE9C 86050004 */  lh         $a1, 0x4($s0)
    /* 10BE50 800FCEA0 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* 10BE54 800FCEA4 27A60066 */   addiu     $a2, $sp, 0x66
    /* 10BE58 800FCEA8 87AC0066 */  lh         $t4, 0x66($sp)
    /* 10BE5C 800FCEAC 00409825 */  or         $s3, $v0, $zero
    /* 10BE60 800FCEB0 02002025 */  or         $a0, $s0, $zero
    /* 10BE64 800FCEB4 448C3000 */  mtc1       $t4, $f6
    /* 10BE68 800FCEB8 00000000 */  nop
    /* 10BE6C 800FCEBC 468031A0 */  cvt.s.w    $f6, $f6
    /* 10BE70 800FCEC0 44053000 */  mfc1       $a1, $f6
    /* 10BE74 800FCEC4 0C03ED1A */  jal        func_800FB468_10A418
    /* 10BE78 800FCEC8 00000000 */   nop
    /* 10BE7C 800FCECC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 10BE80 800FCED0 12610004 */  beq        $s3, $at, .L800FCEE4_10BE94
    /* 10BE84 800FCED4 24184000 */   addiu     $t8, $zero, 0x4000
    /* 10BE88 800FCED8 960D0020 */  lhu        $t5, 0x20($s0)
    /* 10BE8C 800FCEDC 35AE0800 */  ori        $t6, $t5, 0x800
    /* 10BE90 800FCEE0 A60E0020 */  sh         $t6, 0x20($s0)
  .L800FCEE4_10BE94:
    /* 10BE94 800FCEE4 862F0008 */  lh         $t7, 0x8($s1)
    /* 10BE98 800FCEE8 920D0046 */  lbu        $t5, 0x46($s0)
    /* 10BE9C 800FCEEC 86280008 */  lh         $t0, 0x8($s1)
    /* 10BEA0 800FCEF0 030FC823 */  subu       $t9, $t8, $t7
    /* 10BEA4 800FCEF4 A619000E */  sh         $t9, 0xE($s0)
    /* 10BEA8 800FCEF8 86390006 */  lh         $t9, 0x6($s1)
    /* 10BEAC 800FCEFC 862F000E */  lh         $t7, 0xE($s1)
    /* 10BEB0 800FCF00 24094000 */  addiu      $t1, $zero, 0x4000
    /* 10BEB4 800FCF04 324C003F */  andi       $t4, $s2, 0x3F
    /* 10BEB8 800FCF08 31AEFFC0 */  andi       $t6, $t5, 0xFFC0
    /* 10BEBC 800FCF0C 018EC025 */  or         $t8, $t4, $t6
    /* 10BEC0 800FCF10 01285023 */  subu       $t2, $t1, $t0
    /* 10BEC4 800FCF14 A60A0006 */  sh         $t2, 0x6($s0)
    /* 10BEC8 800FCF18 A2180046 */  sb         $t8, 0x46($s0)
    /* 10BECC 800FCF1C 17200003 */  bnez       $t9, .L800FCF2C_10BEDC
    /* 10BED0 800FCF20 A2AF0000 */   sb        $t7, 0x0($s5)
    /* 10BED4 800FCF24 16400004 */  bnez       $s2, .L800FCF38_10BEE8
    /* 10BED8 800FCF28 00000000 */   nop
  .L800FCF2C_10BEDC:
    /* 10BEDC 800FCF2C 96090020 */  lhu        $t1, 0x20($s0)
    /* 10BEE0 800FCF30 35288001 */  ori        $t0, $t1, 0x8001
    /* 10BEE4 800FCF34 A6080020 */  sh         $t0, 0x20($s0)
  .L800FCF38_10BEE8:
    /* 10BEE8 800FCF38 3C0A8004 */  lui        $t2, %hi(currentLevel)
    /* 10BEEC 800FCF3C 8D4A7F90 */  lw         $t2, %lo(currentLevel)($t2)
    /* 10BEF0 800FCF40 3C198004 */  lui        $t9, %hi(currentLevel)
    /* 10BEF4 800FCF44 56CA000D */  bnel       $s6, $t2, .L800FCF7C_10BF2C
    /* 10BEF8 800FCF48 8638000C */   lh        $t8, 0xC($s1)
    /* 10BEFC 800FCF4C 920B001A */  lbu        $t3, 0x1A($s0)
    /* 10BF00 800FCF50 24010012 */  addiu      $at, $zero, 0x12
    /* 10BF04 800FCF54 3C0D8004 */  lui        $t5, %hi(D_80047F98)
    /* 10BF08 800FCF58 55610008 */  bnel       $t3, $at, .L800FCF7C_10BF2C
    /* 10BF0C 800FCF5C 8638000C */   lh        $t8, 0xC($s1)
    /* 10BF10 800FCF60 8DAD7F98 */  lw         $t5, %lo(D_80047F98)($t5)
    /* 10BF14 800FCF64 59A00005 */  blezl      $t5, .L800FCF7C_10BF2C
    /* 10BF18 800FCF68 8638000C */   lh        $t8, 0xC($s1)
    /* 10BF1C 800FCF6C 960C0020 */  lhu        $t4, 0x20($s0)
    /* 10BF20 800FCF70 318E7FFF */  andi       $t6, $t4, 0x7FFF
    /* 10BF24 800FCF74 A60E0020 */  sh         $t6, 0x20($s0)
    /* 10BF28 800FCF78 8638000C */  lh         $t8, 0xC($s1)
  .L800FCF7C_10BF2C:
    /* 10BF2C 800FCF7C 330F0400 */  andi       $t7, $t8, 0x400
    /* 10BF30 800FCF80 51E0000D */  beql       $t7, $zero, .L800FCFB8_10BF68
    /* 10BF34 800FCF84 8622000A */   lh        $v0, 0xA($s1)
    /* 10BF38 800FCF88 8F397F90 */  lw         $t9, %lo(currentLevel)($t9)
    /* 10BF3C 800FCF8C 24010003 */  addiu      $at, $zero, 0x3
    /* 10BF40 800FCF90 02002025 */  or         $a0, $s0, $zero
    /* 10BF44 800FCF94 17210005 */  bne        $t9, $at, .L800FCFAC_10BF5C
    /* 10BF48 800FCF98 00000000 */   nop
    /* 10BF4C 800FCF9C 9209001A */  lbu        $t1, 0x1A($s0)
    /* 10BF50 800FCFA0 2401000D */  addiu      $at, $zero, 0xD
    /* 10BF54 800FCFA4 51210004 */  beql       $t1, $at, .L800FCFB8_10BF68
    /* 10BF58 800FCFA8 8622000A */   lh        $v0, 0xA($s1)
  .L800FCFAC_10BF5C:
    /* 10BF5C 800FCFAC 0C03F243 */  jal        func_800FC90C_10B8BC
    /* 10BF60 800FCFB0 02202825 */   or        $a1, $s1, $zero
    /* 10BF64 800FCFB4 8622000A */  lh         $v0, 0xA($s1)
  .L800FCFB8_10BF68:
    /* 10BF68 800FCFB8 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* 10BF6C 800FCFBC 56C20004 */  bnel       $s6, $v0, .L800FCFD0_10BF80
    /* 10BF70 800FCFC0 44829000 */   mtc1      $v0, $f18
    /* 10BF74 800FCFC4 10000011 */  b          .L800FD00C_10BFBC
    /* 10BF78 800FCFC8 A616003C */   sh        $s6, 0x3C($s0)
    /* 10BF7C 800FCFCC 44829000 */  mtc1       $v0, $f18
  .L800FCFD0_10BF80:
    /* 10BF80 800FCFD0 92880061 */  lbu        $t0, 0x61($s4)
    /* 10BF84 800FCFD4 46809120 */  cvt.s.w    $f4, $f18
    /* 10BF88 800FCFD8 00085200 */  sll        $t2, $t0, 8
    /* 10BF8C 800FCFDC 448A4000 */  mtc1       $t2, $f8
    /* 10BF90 800FCFE0 00000000 */  nop
    /* 10BF94 800FCFE4 468042A0 */  cvt.s.w    $f10, $f8
    /* 10BF98 800FCFE8 460021A1 */  cvt.d.s    $f6, $f4
    /* 10BF9C 800FCFEC 46005421 */  cvt.d.s    $f16, $f10
    /* 10BFA0 800FCFF0 46343202 */  mul.d      $f8, $f6, $f20
    /* 10BFA4 800FCFF4 00000000 */  nop
    /* 10BFA8 800FCFF8 46288282 */  mul.d      $f10, $f16, $f8
    /* 10BFAC 800FCFFC 4620548D */  trunc.w.d  $f18, $f10
    /* 10BFB0 800FD000 440D9000 */  mfc1       $t5, $f18
    /* 10BFB4 800FD004 00000000 */  nop
    /* 10BFB8 800FD008 A60D003C */  sh         $t5, 0x3C($s0)
  .L800FD00C_10BFBC:
    /* 10BFBC 800FD00C 968C003A */  lhu        $t4, 0x3A($s4)
    /* 10BFC0 800FD010 448C2000 */  mtc1       $t4, $f4
    /* 10BFC4 800FD014 05810004 */  bgez       $t4, .L800FD028_10BFD8
    /* 10BFC8 800FD018 468021A0 */   cvt.s.w   $f6, $f4
    /* 10BFCC 800FD01C 44818000 */  mtc1       $at, $f16
    /* 10BFD0 800FD020 00000000 */  nop
    /* 10BFD4 800FD024 46103180 */  add.s      $f6, $f6, $f16
  .L800FD028_10BFD8:
    /* 10BFD8 800FD028 87CE0010 */  lh         $t6, 0x10($fp)
    /* 10BFDC 800FD02C 46003221 */  cvt.d.s    $f8, $f6
    /* 10BFE0 800FD030 02401825 */  or         $v1, $s2, $zero
    /* 10BFE4 800FD034 448E5000 */  mtc1       $t6, $f10
    /* 10BFE8 800FD038 2610FFA4 */  addiu      $s0, $s0, -0x5C
    /* 10BFEC 800FD03C 2631FFEE */  addiu      $s1, $s1, -0x12
    /* 10BFF0 800FD040 468054A0 */  cvt.s.w    $f18, $f10
    /* 10BFF4 800FD044 26B5FFFF */  addiu      $s5, $s5, -0x1
    /* 10BFF8 800FD048 46009121 */  cvt.d.s    $f4, $f18
    /* 10BFFC 800FD04C 46342402 */  mul.d      $f16, $f4, $f20
    /* 10C000 800FD050 00000000 */  nop
    /* 10C004 800FD054 46304182 */  mul.d      $f6, $f8, $f16
    /* 10C008 800FD058 4620328D */  trunc.w.d  $f10, $f6
    /* 10C00C 800FD05C 440F5000 */  mfc1       $t7, $f10
    /* 10C010 800FD060 00000000 */  nop
    /* 10C014 800FD064 A6EF001C */  sh         $t7, 0x1C($s7)
    /* 10C018 800FD068 1640FF6A */  bnez       $s2, .L800FCE14_10BDC4
    /* 10C01C 800FD06C 2652FFFF */   addiu     $s2, $s2, -0x1
    /* 10C020 800FD070 0C03EB44 */  jal        func_800FAD10_109CC0
    /* 10C024 800FD074 00000000 */   nop
    /* 10C028 800FD078 00002025 */  or         $a0, $zero, $zero
    /* 10C02C 800FD07C 0C03F544 */  jal        func_800FD510_10C4C0
    /* 10C030 800FD080 00002825 */   or        $a1, $zero, $zero
    /* 10C034 800FD084 0C03ED41 */  jal        func_800FB504_10A4B4
    /* 10C038 800FD088 00000000 */   nop
    /* 10C03C 800FD08C 3C198004 */  lui        $t9, %hi(currentLevel)
    /* 10C040 800FD090 8F397F90 */  lw         $t9, %lo(currentLevel)($t9)
    /* 10C044 800FD094 24010005 */  addiu      $at, $zero, 0x5
    /* 10C048 800FD098 3C098016 */  lui        $t1, %hi(D_80159320)
    /* 10C04C 800FD09C 57210007 */  bnel       $t9, $at, .L800FD0BC_10C06C
    /* 10C050 800FD0A0 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 10C054 800FD0A4 8D299320 */  lw         $t1, %lo(D_80159320)($t1)
    /* 10C058 800FD0A8 3C010002 */  lui        $at, (0x20000 >> 16)
    /* 10C05C 800FD0AC 01214025 */  or         $t0, $t1, $at
    /* 10C060 800FD0B0 3C018016 */  lui        $at, %hi(D_80159320)
    /* 10C064 800FD0B4 AC289320 */  sw         $t0, %lo(D_80159320)($at)
    /* 10C068 800FD0B8 8FBF0044 */  lw         $ra, 0x44($sp)
  .L800FD0BC_10C06C:
    /* 10C06C 800FD0BC D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 10C070 800FD0C0 8FB00020 */  lw         $s0, 0x20($sp)
    /* 10C074 800FD0C4 8FB10024 */  lw         $s1, 0x24($sp)
    /* 10C078 800FD0C8 8FB20028 */  lw         $s2, 0x28($sp)
    /* 10C07C 800FD0CC 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 10C080 800FD0D0 8FB40030 */  lw         $s4, 0x30($sp)
    /* 10C084 800FD0D4 8FB50034 */  lw         $s5, 0x34($sp)
    /* 10C088 800FD0D8 8FB60038 */  lw         $s6, 0x38($sp)
    /* 10C08C 800FD0DC 8FB7003C */  lw         $s7, 0x3C($sp)
    /* 10C090 800FD0E0 8FBE0040 */  lw         $fp, 0x40($sp)
    /* 10C094 800FD0E4 03E00008 */  jr         $ra
    /* 10C098 800FD0E8 27BD0088 */   addiu     $sp, $sp, 0x88
endlabel func_800FCA5C_10BA0C
