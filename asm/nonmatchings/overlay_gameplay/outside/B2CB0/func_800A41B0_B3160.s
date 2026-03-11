nonmatching func_800A41B0_B3160, 0xA78

glabel func_800A41B0_B3160
    /* B3160 800A41B0 27BDFF68 */  addiu      $sp, $sp, -0x98
    /* B3164 800A41B4 AFA40098 */  sw         $a0, 0x98($sp)
    /* B3168 800A41B8 93AE009B */  lbu        $t6, 0x9B($sp)
    /* B316C 800A41BC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* B3170 800A41C0 AFB00040 */  sw         $s0, 0x40($sp)
    /* B3174 800A41C4 000E7880 */  sll        $t7, $t6, 2
    /* B3178 800A41C8 01EE7821 */  addu       $t7, $t7, $t6
    /* B317C 800A41CC 000F7900 */  sll        $t7, $t7, 4
    /* B3180 800A41D0 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* B3184 800A41D4 01F88021 */  addu       $s0, $t7, $t8
    /* B3188 800A41D8 8607000C */  lh         $a3, 0xC($s0)
    /* B318C 800A41DC 9219001A */  lbu        $t9, 0x1A($s0)
    /* B3190 800A41E0 2409FFFF */  addiu      $t1, $zero, -0x1
    /* B3194 800A41E4 AFBF0044 */  sw         $ra, 0x44($sp)
    /* B3198 800A41E8 10E9002C */  beq        $a3, $t1, .L800A429C_B324C
    /* B319C 800A41EC A7B90080 */   sh        $t9, 0x80($sp)
    /* B31A0 800A41F0 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* B31A4 800A41F4 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* B31A8 800A41F8 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* B31AC 800A41FC 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* B31B0 800A4200 00076100 */  sll        $t4, $a3, 4
    /* B31B4 800A4204 006C6821 */  addu       $t5, $v1, $t4
    /* B31B8 800A4208 29C10004 */  slti       $at, $t6, 0x4
    /* B31BC 800A420C 1020001B */  beqz       $at, .L800A427C_B322C
    /* B31C0 800A4210 81A4000C */   lb        $a0, 0xC($t5)
    /* B31C4 800A4214 00047900 */  sll        $t7, $a0, 4
    /* B31C8 800A4218 006FC021 */  addu       $t8, $v1, $t7
    /* B31CC 800A421C 8302000D */  lb         $v0, 0xD($t8)
    /* B31D0 800A4220 0002C900 */  sll        $t9, $v0, 4
    /* B31D4 800A4224 00796021 */  addu       $t4, $v1, $t9
    /* B31D8 800A4228 8185000D */  lb         $a1, 0xD($t4)
    /* B31DC 800A422C 00056900 */  sll        $t5, $a1, 4
    /* B31E0 800A4230 006D7021 */  addu       $t6, $v1, $t5
    /* B31E4 800A4234 81C6000D */  lb         $a2, 0xD($t6)
    /* B31E8 800A4238 00067900 */  sll        $t7, $a2, 4
    /* B31EC 800A423C 006FC021 */  addu       $t8, $v1, $t7
    /* B31F0 800A4240 8308000D */  lb         $t0, 0xD($t8)
    /* B31F4 800A4244 15090008 */  bne        $t0, $t1, .L800A4268_B3218
    /* B31F8 800A4248 00086900 */   sll       $t5, $t0, 4
    /* B31FC 800A424C 00054600 */  sll        $t0, $a1, 24
    /* B3200 800A4250 00064E00 */  sll        $t1, $a2, 24
    /* B3204 800A4254 0008CE03 */  sra        $t9, $t0, 24
    /* B3208 800A4258 00096603 */  sra        $t4, $t1, 24
    /* B320C 800A425C 03204025 */  or         $t0, $t9, $zero
    /* B3210 800A4260 10000003 */  b          .L800A4270_B3220
    /* B3214 800A4264 01804825 */   or        $t1, $t4, $zero
  .L800A4268_B3218:
    /* B3218 800A4268 006D7021 */  addu       $t6, $v1, $t5
    /* B321C 800A426C 81C9000D */  lb         $t1, 0xD($t6)
  .L800A4270_B3220:
    /* B3220 800A4270 A3A8008F */  sb         $t0, 0x8F($sp)
    /* B3224 800A4274 10000009 */  b          .L800A429C_B324C
    /* B3228 800A4278 A3A9008E */   sb        $t1, 0x8E($sp)
  .L800A427C_B322C:
    /* B322C 800A427C 00047900 */  sll        $t7, $a0, 4
    /* B3230 800A4280 006FC021 */  addu       $t8, $v1, $t7
    /* B3234 800A4284 8308000D */  lb         $t0, 0xD($t8)
    /* B3238 800A4288 0008C900 */  sll        $t9, $t0, 4
    /* B323C 800A428C 00796021 */  addu       $t4, $v1, $t9
    /* B3240 800A4290 8189000D */  lb         $t1, 0xD($t4)
    /* B3244 800A4294 A3A8008F */  sb         $t0, 0x8F($sp)
    /* B3248 800A4298 A3A9008E */  sb         $t1, 0x8E($sp)
  .L800A429C_B324C:
    /* B324C 800A429C 8E050020 */  lw         $a1, 0x20($s0)
    /* B3250 800A42A0 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* B3254 800A42A4 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* B3258 800A42A8 30AD1000 */  andi       $t5, $a1, 0x1000
    /* B325C 800A42AC 83A8008F */  lb         $t0, 0x8F($sp)
    /* B3260 800A42B0 11A0014F */  beqz       $t5, .L800A47F0_B37A0
    /* B3264 800A42B4 83A9008E */   lb        $t1, 0x8E($sp)
    /* B3268 800A42B8 860E002C */  lh         $t6, 0x2C($s0)
    /* B326C 800A42BC 30B84000 */  andi       $t8, $a1, 0x4000
    /* B3270 800A42C0 240200FF */  addiu      $v0, $zero, 0xFF
    /* B3274 800A42C4 25CF0001 */  addiu      $t7, $t6, 0x1
    /* B3278 800A42C8 13000016 */  beqz       $t8, .L800A4324_B32D4
    /* B327C 800A42CC A60F002C */   sh        $t7, 0x2C($s0)
    /* B3280 800A42D0 50E2000D */  beql       $a3, $v0, .L800A4308_B32B8
    /* B3284 800A42D4 860E002C */   lh        $t6, 0x2C($s0)
    /* B3288 800A42D8 860C002C */  lh         $t4, 0x2C($s0)
    /* B328C 800A42DC 0008C900 */  sll        $t9, $t0, 4
    /* B3290 800A42E0 00791021 */  addu       $v0, $v1, $t9
    /* B3294 800A42E4 000C6823 */  negu       $t5, $t4
    /* B3298 800A42E8 000D7240 */  sll        $t6, $t5, 9
    /* B329C 800A42EC 25D82000 */  addiu      $t8, $t6, 0x2000
    /* B32A0 800A42F0 00096100 */  sll        $t4, $t1, 4
    /* B32A4 800A42F4 A4580006 */  sh         $t8, 0x6($v0)
    /* B32A8 800A42F8 006C6821 */  addu       $t5, $v1, $t4
    /* B32AC 800A42FC 0018C823 */  negu       $t9, $t8
    /* B32B0 800A4300 A5B90006 */  sh         $t9, 0x6($t5)
    /* B32B4 800A4304 860E002C */  lh         $t6, 0x2C($s0)
  .L800A4308_B32B8:
    /* B32B8 800A4308 29C10011 */  slti       $at, $t6, 0x11
    /* B32BC 800A430C 1420013D */  bnez       $at, .L800A4804_B37B4
    /* B32C0 800A4310 2401AFFF */   addiu     $at, $zero, -0x5001
    /* B32C4 800A4314 00A17824 */  and        $t7, $a1, $at
    /* B32C8 800A4318 AE0F0020 */  sw         $t7, 0x20($s0)
    /* B32CC 800A431C 10000139 */  b          .L800A4804_B37B4
    /* B32D0 800A4320 01E02825 */   or        $a1, $t7, $zero
  .L800A4324_B32D4:
    /* B32D4 800A4324 8604002C */  lh         $a0, 0x2C($s0)
    /* B32D8 800A4328 3C0B8004 */  lui        $t3, %hi(currentLevel)
    /* B32DC 800A432C 8D6B7F90 */  lw         $t3, %lo(currentLevel)($t3)
    /* B32E0 800A4330 28810010 */  slti       $at, $a0, 0x10
    /* B32E4 800A4334 1020000B */  beqz       $at, .L800A4364_B3314
    /* B32E8 800A4338 240200FF */   addiu     $v0, $zero, 0xFF
    /* B32EC 800A433C 10E20009 */  beq        $a3, $v0, .L800A4364_B3314
    /* B32F0 800A4340 0008C100 */   sll       $t8, $t0, 4
    /* B32F4 800A4344 0004C9C0 */  sll        $t9, $a0, 7
    /* B32F8 800A4348 00781021 */  addu       $v0, $v1, $t8
    /* B32FC 800A434C 00097100 */  sll        $t6, $t1, 4
    /* B3300 800A4350 A4590006 */  sh         $t9, 0x6($v0)
    /* B3304 800A4354 006E7821 */  addu       $t7, $v1, $t6
    /* B3308 800A4358 00196823 */  negu       $t5, $t9
    /* B330C 800A435C 10000017 */  b          .L800A43BC_B336C
    /* B3310 800A4360 A5ED0006 */   sh        $t5, 0x6($t7)
  .L800A4364_B3314:
    /* B3314 800A4364 28810018 */  slti       $at, $a0, 0x18
    /* B3318 800A4368 1020000B */  beqz       $at, .L800A4398_B3348
    /* B331C 800A436C 240200FF */   addiu     $v0, $zero, 0xFF
    /* B3320 800A4370 10E20009 */  beq        $a3, $v0, .L800A4398_B3348
    /* B3324 800A4374 0008C100 */   sll       $t8, $t0, 4
    /* B3328 800A4378 0004C9C0 */  sll        $t9, $a0, 7
    /* B332C 800A437C 00781021 */  addu       $v0, $v1, $t8
    /* B3330 800A4380 00096900 */  sll        $t5, $t1, 4
    /* B3334 800A4384 A4590006 */  sh         $t9, 0x6($v0)
    /* B3338 800A4388 006D7821 */  addu       $t7, $v1, $t5
    /* B333C 800A438C 00197023 */  negu       $t6, $t9
    /* B3340 800A4390 1000000A */  b          .L800A43BC_B336C
    /* B3344 800A4394 A5EE0006 */   sh        $t6, 0x6($t7)
  .L800A4398_B3348:
    /* B3348 800A4398 10E20008 */  beq        $a3, $v0, .L800A43BC_B336C
    /* B334C 800A439C 00086100 */   sll       $t4, $t0, 4
    /* B3350 800A43A0 006CC821 */  addu       $t9, $v1, $t4
    /* B3354 800A43A4 24182000 */  addiu      $t8, $zero, 0x2000
    /* B3358 800A43A8 00097100 */  sll        $t6, $t1, 4
    /* B335C 800A43AC A7380006 */  sh         $t8, 0x6($t9)
    /* B3360 800A43B0 006E7821 */  addu       $t7, $v1, $t6
    /* B3364 800A43B4 340DE000 */  ori        $t5, $zero, 0xE000
    /* B3368 800A43B8 A5ED0006 */  sh         $t5, 0x6($t7)
  .L800A43BC_B336C:
    /* B336C 800A43BC 24010001 */  addiu      $at, $zero, 0x1
    /* B3370 800A43C0 11610003 */  beq        $t3, $at, .L800A43D0_B3380
    /* B3374 800A43C4 24010003 */   addiu     $at, $zero, 0x3
    /* B3378 800A43C8 15610003 */  bne        $t3, $at, .L800A43D8_B3388
    /* B337C 800A43CC 2402000A */   addiu     $v0, $zero, 0xA
  .L800A43D0_B3380:
    /* B3380 800A43D0 10000001 */  b          .L800A43D8_B3388
    /* B3384 800A43D4 2402000F */   addiu     $v0, $zero, 0xF
  .L800A43D8_B3388:
    /* B3388 800A43D8 28810010 */  slti       $at, $a0, 0x10
    /* B338C 800A43DC 5420010A */  bnel       $at, $zero, .L800A4808_B37B8
    /* B3390 800A43E0 0005C000 */   sll       $t8, $a1, 0
    /* B3394 800A43E4 87AC0080 */  lh         $t4, 0x80($sp)
    /* B3398 800A43E8 3C198025 */  lui        $t9, %hi(D_802566BA)
    /* B339C 800A43EC 2401000A */  addiu      $at, $zero, 0xA
    /* B33A0 800A43F0 000CC080 */  sll        $t8, $t4, 2
    /* B33A4 800A43F4 030CC023 */  subu       $t8, $t8, $t4
    /* B33A8 800A43F8 0018C080 */  sll        $t8, $t8, 2
    /* B33AC 800A43FC 030CC021 */  addu       $t8, $t8, $t4
    /* B33B0 800A4400 0018C0C0 */  sll        $t8, $t8, 3
    /* B33B4 800A4404 0338C821 */  addu       $t9, $t9, $t8
    /* B33B8 800A4408 973966BA */  lhu        $t9, %lo(D_802566BA)($t9)
    /* B33BC 800A440C 860D001C */  lh         $t5, 0x1C($s0)
    /* B33C0 800A4410 0321001A */  div        $zero, $t9, $at
    /* B33C4 800A4414 00007012 */  mflo       $t6
    /* B33C8 800A4418 01CD082A */  slt        $at, $t6, $t5
    /* B33CC 800A441C 502000FA */  beql       $at, $zero, .L800A4808_B37B8
    /* B33D0 800A4420 0005C000 */   sll       $t8, $a1, 0
    /* B33D4 800A4424 0082001A */  div        $zero, $a0, $v0
    /* B33D8 800A4428 00007810 */  mfhi       $t7
    /* B33DC 800A442C 14400002 */  bnez       $v0, .L800A4438_B33E8
    /* B33E0 800A4430 00000000 */   nop
    /* B33E4 800A4434 0007000D */  break      7
  .L800A4438_B33E8:
    /* B33E8 800A4438 2401FFFF */  addiu      $at, $zero, -0x1
    /* B33EC 800A443C 14410004 */  bne        $v0, $at, .L800A4450_B3400
    /* B33F0 800A4440 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B33F4 800A4444 14810002 */  bne        $a0, $at, .L800A4450_B3400
    /* B33F8 800A4448 00000000 */   nop
    /* B33FC 800A444C 0006000D */  break      6
  .L800A4450_B3400:
    /* B3400 800A4450 55E000ED */  bnel       $t7, $zero, .L800A4808_B37B8
    /* B3404 800A4454 0005C000 */   sll       $t8, $a1, 0
    /* B3408 800A4458 820C003D */  lb         $t4, 0x3D($s0)
    /* B340C 800A445C 93A4009B */  lbu        $a0, 0x9B($sp)
    /* B3410 800A4460 518000E9 */  beql       $t4, $zero, .L800A4808_B37B8
    /* B3414 800A4464 0005C000 */   sll       $t8, $a1, 0
    /* B3418 800A4468 0C04DD1A */  jal        func_80137468_146418
    /* B341C 800A446C 24050019 */   addiu     $a1, $zero, 0x19
    /* B3420 800A4470 0C007654 */  jal        coss
    /* B3424 800A4474 96040006 */   lhu       $a0, 0x6($s0)
    /* B3428 800A4478 44822000 */  mtc1       $v0, $f4
    /* B342C 800A447C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B3430 800A4480 44815800 */  mtc1       $at, $f11
    /* B3434 800A4484 468021A0 */  cvt.s.w    $f6, $f4
    /* B3438 800A4488 44805000 */  mtc1       $zero, $f10
    /* B343C 800A448C 96040006 */  lhu        $a0, 0x6($s0)
    /* B3440 800A4490 46003221 */  cvt.d.s    $f8, $f6
    /* B3444 800A4494 462A4483 */  div.d      $f18, $f8, $f10
    /* B3448 800A4498 46209120 */  cvt.s.d    $f4, $f18
    /* B344C 800A449C 0C007660 */  jal        sins
    /* B3450 800A44A0 E7A40088 */   swc1      $f4, 0x88($sp)
    /* B3454 800A44A4 44823000 */  mtc1       $v0, $f6
    /* B3458 800A44A8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B345C 800A44AC 44819800 */  mtc1       $at, $f19
    /* B3460 800A44B0 46803220 */  cvt.s.w    $f8, $f6
    /* B3464 800A44B4 44809000 */  mtc1       $zero, $f18
    /* B3468 800A44B8 460042A1 */  cvt.d.s    $f10, $f8
    /* B346C 800A44BC 46325103 */  div.d      $f4, $f10, $f18
    /* B3470 800A44C0 462021A0 */  cvt.s.d    $f6, $f4
    /* B3474 800A44C4 0C000E38 */  jal        func_800038E0_44E0
    /* B3478 800A44C8 E7A60084 */   swc1      $f6, 0x84($sp)
    /* B347C 800A44CC 0C000E38 */  jal        func_800038E0_44E0
    /* B3480 800A44D0 A7A20064 */   sh        $v0, 0x64($sp)
    /* B3484 800A44D4 86180000 */  lh         $t8, 0x0($s0)
    /* B3488 800A44D8 3C014334 */  lui        $at, (0x43340000 >> 16)
    /* B348C 800A44DC 44816000 */  mtc1       $at, $f12
    /* B3490 800A44E0 C7AE0088 */  lwc1       $f14, 0x88($sp)
    /* B3494 800A44E4 44984000 */  mtc1       $t8, $f8
    /* B3498 800A44E8 86180004 */  lh         $t8, 0x4($s0)
    /* B349C 800A44EC 460E6002 */  mul.s      $f0, $f12, $f14
    /* B34A0 800A44F0 C7B00084 */  lwc1       $f16, 0x84($sp)
    /* B34A4 800A44F4 44983000 */  mtc1       $t8, $f6
    /* B34A8 800A44F8 2419001E */  addiu      $t9, $zero, 0x1E
    /* B34AC 800A44FC 46106082 */  mul.s      $f2, $f12, $f16
    /* B34B0 800A4500 AFB90010 */  sw         $t9, 0x10($sp)
    /* B34B4 800A4504 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* B34B8 800A4508 97B90064 */  lhu        $t9, 0x64($sp)
    /* B34BC 800A450C 86050002 */  lh         $a1, 0x2($s0)
    /* B34C0 800A4510 24180004 */  addiu      $t8, $zero, 0x4
    /* B34C4 800A4514 468042A0 */  cvt.s.w    $f10, $f8
    /* B34C8 800A4518 24A5000A */  addiu      $a1, $a1, 0xA
    /* B34CC 800A451C 00057C00 */  sll        $t7, $a1, 16
    /* B34D0 800A4520 000F2C03 */  sra        $a1, $t7, 16
    /* B34D4 800A4524 AFB8001C */  sw         $t8, 0x1C($sp)
    /* B34D8 800A4528 46803220 */  cvt.s.w    $f8, $f6
    /* B34DC 800A452C 241800F0 */  addiu      $t8, $zero, 0xF0
    /* B34E0 800A4530 AFB80028 */  sw         $t8, 0x28($sp)
    /* B34E4 800A4534 E7A20054 */  swc1       $f2, 0x54($sp)
    /* B34E8 800A4538 E7A00058 */  swc1       $f0, 0x58($sp)
    /* B34EC 800A453C 46005480 */  add.s      $f18, $f10, $f0
    /* B34F0 800A4540 46024280 */  add.s      $f10, $f8, $f2
    /* B34F4 800A4544 4600910D */  trunc.w.s  $f4, $f18
    /* B34F8 800A4548 4600548D */  trunc.w.s  $f18, $f10
    /* B34FC 800A454C 44042000 */  mfc1       $a0, $f4
    /* B3500 800A4550 44812000 */  mtc1       $at, $f4
    /* B3504 800A4554 44815000 */  mtc1       $at, $f10
    /* B3508 800A4558 24010005 */  addiu      $at, $zero, 0x5
    /* B350C 800A455C 0321001A */  div        $zero, $t9, $at
    /* B3510 800A4560 44069000 */  mfc1       $a2, $f18
    /* B3514 800A4564 00047400 */  sll        $t6, $a0, 16
    /* B3518 800A4568 000E2403 */  sra        $a0, $t6, 16
    /* B351C 800A456C 00067400 */  sll        $t6, $a2, 16
    /* B3520 800A4570 000E3403 */  sra        $a2, $t6, 16
    /* B3524 800A4574 00007010 */  mfhi       $t6
    /* B3528 800A4578 2401005A */  addiu      $at, $zero, 0x5A
    /* B352C 800A457C 460E2182 */  mul.s      $f6, $f4, $f14
    /* B3530 800A4580 0041001A */  div        $zero, $v0, $at
    /* B3534 800A4584 46105482 */  mul.s      $f18, $f10, $f16
    /* B3538 800A4588 4600320D */  trunc.w.s  $f8, $f6
    /* B353C 800A458C 00007810 */  mfhi       $t7
    /* B3540 800A4590 241900C8 */  addiu      $t9, $zero, 0xC8
    /* B3544 800A4594 AFB9002C */  sw         $t9, 0x2C($sp)
    /* B3548 800A4598 44074000 */  mfc1       $a3, $f8
    /* B354C 800A459C 4600910D */  trunc.w.s  $f4, $f18
    /* B3550 800A45A0 00076600 */  sll        $t4, $a3, 24
    /* B3554 800A45A4 000C3E03 */  sra        $a3, $t4, 24
    /* B3558 800A45A8 240C003C */  addiu      $t4, $zero, 0x3C
    /* B355C 800A45AC 44032000 */  mfc1       $v1, $f4
    /* B3560 800A45B0 AFAC0018 */  sw         $t4, 0x18($sp)
    /* B3564 800A45B4 25EC0028 */  addiu      $t4, $t7, 0x28
    /* B3568 800A45B8 00036E00 */  sll        $t5, $v1, 24
    /* B356C 800A45BC 000D1E03 */  sra        $v1, $t5, 24
    /* B3570 800A45C0 25CD0004 */  addiu      $t5, $t6, 0x4
    /* B3574 800A45C4 AFAD0020 */  sw         $t5, 0x20($sp)
    /* B3578 800A45C8 240D00FF */  addiu      $t5, $zero, 0xFF
    /* B357C 800A45CC 240E0014 */  addiu      $t6, $zero, 0x14
    /* B3580 800A45D0 AFAE0030 */  sw         $t6, 0x30($sp)
    /* B3584 800A45D4 AFAD0034 */  sw         $t5, 0x34($sp)
    /* B3588 800A45D8 AFA30014 */  sw         $v1, 0x14($sp)
    /* B358C 800A45DC AFA3004C */  sw         $v1, 0x4C($sp)
    /* B3590 800A45E0 AFAC0024 */  sw         $t4, 0x24($sp)
    /* B3594 800A45E4 0C03297B */  jal        func_800CA5EC_D959C
    /* B3598 800A45E8 AFA70050 */   sw        $a3, 0x50($sp)
    /* B359C 800A45EC 0C000E38 */  jal        func_800038E0_44E0
    /* B35A0 800A45F0 00000000 */   nop
    /* B35A4 800A45F4 0C000E38 */  jal        func_800038E0_44E0
    /* B35A8 800A45F8 A7A20064 */   sh        $v0, 0x64($sp)
    /* B35AC 800A45FC 860F0000 */  lh         $t7, 0x0($s0)
    /* B35B0 800A4600 C7AA0058 */  lwc1       $f10, 0x58($sp)
    /* B35B4 800A4604 24010005 */  addiu      $at, $zero, 0x5
    /* B35B8 800A4608 448F3000 */  mtc1       $t7, $f6
    /* B35BC 800A460C 860F0004 */  lh         $t7, 0x4($s0)
    /* B35C0 800A4610 86050002 */  lh         $a1, 0x2($s0)
    /* B35C4 800A4614 46803220 */  cvt.s.w    $f8, $f6
    /* B35C8 800A4618 448F3000 */  mtc1       $t7, $f6
    /* B35CC 800A461C 24A5001E */  addiu      $a1, $a1, 0x1E
    /* B35D0 800A4620 00057400 */  sll        $t6, $a1, 16
    /* B35D4 800A4624 000E2C03 */  sra        $a1, $t6, 16
    /* B35D8 800A4628 8FAD004C */  lw         $t5, 0x4C($sp)
    /* B35DC 800A462C 460A4480 */  add.s      $f18, $f8, $f10
    /* B35E0 800A4630 C7AA0054 */  lwc1       $f10, 0x54($sp)
    /* B35E4 800A4634 240E0028 */  addiu      $t6, $zero, 0x28
    /* B35E8 800A4638 46803220 */  cvt.s.w    $f8, $f6
    /* B35EC 800A463C AFAE0010 */  sw         $t6, 0x10($sp)
    /* B35F0 800A4640 240F0046 */  addiu      $t7, $zero, 0x46
    /* B35F4 800A4644 240C0004 */  addiu      $t4, $zero, 0x4
    /* B35F8 800A4648 AFAD0014 */  sw         $t5, 0x14($sp)
    /* B35FC 800A464C 4600910D */  trunc.w.s  $f4, $f18
    /* B3600 800A4650 AFAC001C */  sw         $t4, 0x1C($sp)
    /* B3604 800A4654 AFAF0018 */  sw         $t7, 0x18($sp)
    /* B3608 800A4658 460A4480 */  add.s      $f18, $f8, $f10
    /* B360C 800A465C 44042000 */  mfc1       $a0, $f4
    /* B3610 800A4660 240C00F0 */  addiu      $t4, $zero, 0xF0
    /* B3614 800A4664 AFAC0028 */  sw         $t4, 0x28($sp)
    /* B3618 800A4668 4600910D */  trunc.w.s  $f4, $f18
    /* B361C 800A466C 0004C400 */  sll        $t8, $a0, 16
    /* B3620 800A4670 00182403 */  sra        $a0, $t8, 16
    /* B3624 800A4674 83A70053 */  lb         $a3, 0x53($sp)
    /* B3628 800A4678 44062000 */  mfc1       $a2, $f4
    /* B362C 800A467C 00000000 */  nop
    /* B3630 800A4680 0006C400 */  sll        $t8, $a2, 16
    /* B3634 800A4684 00183403 */  sra        $a2, $t8, 16
    /* B3638 800A4688 97B80064 */  lhu        $t8, 0x64($sp)
    /* B363C 800A468C 0301001A */  div        $zero, $t8, $at
    /* B3640 800A4690 0000C810 */  mfhi       $t9
    /* B3644 800A4694 2401005A */  addiu      $at, $zero, 0x5A
    /* B3648 800A4698 272E0004 */  addiu      $t6, $t9, 0x4
    /* B364C 800A469C 0041001A */  div        $zero, $v0, $at
    /* B3650 800A46A0 00006810 */  mfhi       $t5
    /* B3654 800A46A4 AFAE0020 */  sw         $t6, 0x20($sp)
    /* B3658 800A46A8 240E00FF */  addiu      $t6, $zero, 0xFF
    /* B365C 800A46AC 25AF0028 */  addiu      $t7, $t5, 0x28
    /* B3660 800A46B0 24190014 */  addiu      $t9, $zero, 0x14
    /* B3664 800A46B4 241800C8 */  addiu      $t8, $zero, 0xC8
    /* B3668 800A46B8 AFB8002C */  sw         $t8, 0x2C($sp)
    /* B366C 800A46BC AFB90030 */  sw         $t9, 0x30($sp)
    /* B3670 800A46C0 AFAF0024 */  sw         $t7, 0x24($sp)
    /* B3674 800A46C4 0C03297B */  jal        func_800CA5EC_D959C
    /* B3678 800A46C8 AFAE0034 */   sw        $t6, 0x34($sp)
    /* B367C 800A46CC 0C000E38 */  jal        func_800038E0_44E0
    /* B3680 800A46D0 00000000 */   nop
    /* B3684 800A46D4 0C000E38 */  jal        func_800038E0_44E0
    /* B3688 800A46D8 A7A20064 */   sh        $v0, 0x64($sp)
    /* B368C 800A46DC 860D0000 */  lh         $t5, 0x0($s0)
    /* B3690 800A46E0 C7AA0058 */  lwc1       $f10, 0x58($sp)
    /* B3694 800A46E4 24010005 */  addiu      $at, $zero, 0x5
    /* B3698 800A46E8 448D3000 */  mtc1       $t5, $f6
    /* B369C 800A46EC 860D0004 */  lh         $t5, 0x4($s0)
    /* B36A0 800A46F0 86050002 */  lh         $a1, 0x2($s0)
    /* B36A4 800A46F4 46803220 */  cvt.s.w    $f8, $f6
    /* B36A8 800A46F8 448D3000 */  mtc1       $t5, $f6
    /* B36AC 800A46FC 24A50032 */  addiu      $a1, $a1, 0x32
    /* B36B0 800A4700 0005CC00 */  sll        $t9, $a1, 16
    /* B36B4 800A4704 00192C03 */  sra        $a1, $t9, 16
    /* B36B8 800A4708 8FAE004C */  lw         $t6, 0x4C($sp)
    /* B36BC 800A470C 460A4480 */  add.s      $f18, $f8, $f10
    /* B36C0 800A4710 C7AA0054 */  lwc1       $f10, 0x54($sp)
    /* B36C4 800A4714 24190032 */  addiu      $t9, $zero, 0x32
    /* B36C8 800A4718 46803220 */  cvt.s.w    $f8, $f6
    /* B36CC 800A471C AFB90010 */  sw         $t9, 0x10($sp)
    /* B36D0 800A4720 240D0046 */  addiu      $t5, $zero, 0x46
    /* B36D4 800A4724 240F0004 */  addiu      $t7, $zero, 0x4
    /* B36D8 800A4728 AFAE0014 */  sw         $t6, 0x14($sp)
    /* B36DC 800A472C 4600910D */  trunc.w.s  $f4, $f18
    /* B36E0 800A4730 AFAF001C */  sw         $t7, 0x1C($sp)
    /* B36E4 800A4734 AFAD0018 */  sw         $t5, 0x18($sp)
    /* B36E8 800A4738 460A4480 */  add.s      $f18, $f8, $f10
    /* B36EC 800A473C 44042000 */  mfc1       $a0, $f4
    /* B36F0 800A4740 240F00F0 */  addiu      $t7, $zero, 0xF0
    /* B36F4 800A4744 AFAF0028 */  sw         $t7, 0x28($sp)
    /* B36F8 800A4748 4600910D */  trunc.w.s  $f4, $f18
    /* B36FC 800A474C 00046400 */  sll        $t4, $a0, 16
    /* B3700 800A4750 000C2403 */  sra        $a0, $t4, 16
    /* B3704 800A4754 83A70053 */  lb         $a3, 0x53($sp)
    /* B3708 800A4758 44062000 */  mfc1       $a2, $f4
    /* B370C 800A475C 00000000 */  nop
    /* B3710 800A4760 00066400 */  sll        $t4, $a2, 16
    /* B3714 800A4764 000C3403 */  sra        $a2, $t4, 16
    /* B3718 800A4768 97AC0064 */  lhu        $t4, 0x64($sp)
    /* B371C 800A476C 0181001A */  div        $zero, $t4, $at
    /* B3720 800A4770 0000C010 */  mfhi       $t8
    /* B3724 800A4774 2401005A */  addiu      $at, $zero, 0x5A
    /* B3728 800A4778 27190004 */  addiu      $t9, $t8, 0x4
    /* B372C 800A477C 0041001A */  div        $zero, $v0, $at
    /* B3730 800A4780 00007010 */  mfhi       $t6
    /* B3734 800A4784 AFB90020 */  sw         $t9, 0x20($sp)
    /* B3738 800A4788 241900FF */  addiu      $t9, $zero, 0xFF
    /* B373C 800A478C 25CD0028 */  addiu      $t5, $t6, 0x28
    /* B3740 800A4790 24180014 */  addiu      $t8, $zero, 0x14
    /* B3744 800A4794 240C00C8 */  addiu      $t4, $zero, 0xC8
    /* B3748 800A4798 AFAC002C */  sw         $t4, 0x2C($sp)
    /* B374C 800A479C AFB80030 */  sw         $t8, 0x30($sp)
    /* B3750 800A47A0 AFAD0024 */  sw         $t5, 0x24($sp)
    /* B3754 800A47A4 0C03297B */  jal        func_800CA5EC_D959C
    /* B3758 800A47A8 AFB90034 */   sw        $t9, 0x34($sp)
    /* B375C 800A47AC 8203003D */  lb         $v1, 0x3D($s0)
    /* B3760 800A47B0 10600002 */  beqz       $v1, .L800A47BC_B376C
    /* B3764 800A47B4 246EFFFF */   addiu     $t6, $v1, -0x1
    /* B3768 800A47B8 A20E003D */  sb         $t6, 0x3D($s0)
  .L800A47BC_B376C:
    /* B376C 800A47BC 0C028F9D */  jal        func_800A3E74_B2E24
    /* B3770 800A47C0 93A4009B */   lbu       $a0, 0x9B($sp)
    /* B3774 800A47C4 54400006 */  bnel       $v0, $zero, .L800A47E0_B3790
    /* B3778 800A47C8 920D0024 */   lbu       $t5, 0x24($s0)
    /* B377C 800A47CC 0C029054 */  jal        func_800A4150_B3100
    /* B3780 800A47D0 93A4009B */   lbu       $a0, 0x9B($sp)
    /* B3784 800A47D4 1000000B */  b          .L800A4804_B37B4
    /* B3788 800A47D8 8E050020 */   lw        $a1, 0x20($s0)
    /* B378C 800A47DC 920D0024 */  lbu        $t5, 0x24($s0)
  .L800A47E0_B3790:
    /* B3790 800A47E0 8E050020 */  lw         $a1, 0x20($s0)
    /* B3794 800A47E4 25AF0001 */  addiu      $t7, $t5, 0x1
    /* B3798 800A47E8 10000006 */  b          .L800A4804_B37B4
    /* B379C 800A47EC A20F0024 */   sb        $t7, 0x24($s0)
  .L800A47F0_B37A0:
    /* B37A0 800A47F0 92020026 */  lbu        $v0, 0x26($s0)
    /* B37A4 800A47F4 10400003 */  beqz       $v0, .L800A4804_B37B4
    /* B37A8 800A47F8 244CFFFF */   addiu     $t4, $v0, -0x1
    /* B37AC 800A47FC A20C0026 */  sb         $t4, 0x26($s0)
    /* B37B0 800A4800 8E050020 */  lw         $a1, 0x20($s0)
  .L800A4804_B37B4:
    /* B37B4 800A4804 0005C000 */  sll        $t8, $a1, 0
  .L800A4808_B37B8:
    /* B37B8 800A4808 070300FF */  bgezl      $t8, .L800A4C08_B3BB8
    /* B37BC 800A480C 92020046 */   lbu       $v0, 0x46($s0)
    /* B37C0 800A4810 87B90080 */  lh         $t9, 0x80($sp)
    /* B37C4 800A4814 3C0D8025 */  lui        $t5, %hi(D_802566BA)
    /* B37C8 800A4818 2401000A */  addiu      $at, $zero, 0xA
    /* B37CC 800A481C 00197080 */  sll        $t6, $t9, 2
    /* B37D0 800A4820 01D97023 */  subu       $t6, $t6, $t9
    /* B37D4 800A4824 000E7080 */  sll        $t6, $t6, 2
    /* B37D8 800A4828 01D97021 */  addu       $t6, $t6, $t9
    /* B37DC 800A482C 000E70C0 */  sll        $t6, $t6, 3
    /* B37E0 800A4830 01AE6821 */  addu       $t5, $t5, $t6
    /* B37E4 800A4834 95AD66BA */  lhu        $t5, %lo(D_802566BA)($t5)
    /* B37E8 800A4838 860C001C */  lh         $t4, 0x1C($s0)
    /* B37EC 800A483C 3C0B8004 */  lui        $t3, %hi(currentLevel)
    /* B37F0 800A4840 01A1001A */  div        $zero, $t5, $at
    /* B37F4 800A4844 00007812 */  mflo       $t7
    /* B37F8 800A4848 01EC082A */  slt        $at, $t7, $t4
    /* B37FC 800A484C 502000EE */  beql       $at, $zero, .L800A4C08_B3BB8
    /* B3800 800A4850 92020046 */   lbu       $v0, 0x46($s0)
    /* B3804 800A4854 8D6B7F90 */  lw         $t3, %lo(currentLevel)($t3)
    /* B3808 800A4858 24010004 */  addiu      $at, $zero, 0x4
    /* B380C 800A485C 55610005 */  bnel       $t3, $at, .L800A4874_B3824
    /* B3810 800A4860 29610003 */   slti      $at, $t3, 0x3
    /* B3814 800A4864 9218001B */  lbu        $t8, 0x1B($s0)
    /* B3818 800A4868 24040002 */  addiu      $a0, $zero, 0x2
    /* B381C 800A486C 109800E5 */  beq        $a0, $t8, .L800A4C04_B3BB4
    /* B3820 800A4870 29610003 */   slti      $at, $t3, 0x3
  .L800A4874_B3824:
    /* B3824 800A4874 50200005 */  beql       $at, $zero, .L800A488C_B383C
    /* B3828 800A4878 29610003 */   slti      $at, $t3, 0x3
    /* B382C 800A487C 92190024 */  lbu        $t9, 0x24($s0)
    /* B3830 800A4880 2B21000C */  slti       $at, $t9, 0xC
    /* B3834 800A4884 14200007 */  bnez       $at, .L800A48A4_B3854
    /* B3838 800A4888 29610003 */   slti      $at, $t3, 0x3
  .L800A488C_B383C:
    /* B383C 800A488C 542000DE */  bnel       $at, $zero, .L800A4C08_B3BB8
    /* B3840 800A4890 92020046 */   lbu       $v0, 0x46($s0)
    /* B3844 800A4894 920E0024 */  lbu        $t6, 0x24($s0)
    /* B3848 800A4898 29C10006 */  slti       $at, $t6, 0x6
    /* B384C 800A489C 502000DA */  beql       $at, $zero, .L800A4C08_B3BB8
    /* B3850 800A48A0 92020046 */   lbu       $v0, 0x46($s0)
  .L800A48A4_B3854:
    /* B3854 800A48A4 920D0026 */  lbu        $t5, 0x26($s0)
    /* B3858 800A48A8 30AF1000 */  andi       $t7, $a1, 0x1000
    /* B385C 800A48AC 55A00034 */  bnel       $t5, $zero, .L800A4980_B3930
    /* B3860 800A48B0 92180046 */   lbu       $t8, 0x46($s0)
    /* B3864 800A48B4 15E00031 */  bnez       $t7, .L800A497C_B392C
    /* B3868 800A48B8 34AC1000 */   ori       $t4, $a1, 0x1000
    /* B386C 800A48BC 2401BFFF */  addiu      $at, $zero, -0x4001
    /* B3870 800A48C0 AE0C0020 */  sw         $t4, 0x20($s0)
    /* B3874 800A48C4 0181C824 */  and        $t9, $t4, $at
    /* B3878 800A48C8 AE190020 */  sw         $t9, 0x20($s0)
    /* B387C 800A48CC 0C000E38 */  jal        func_800038E0_44E0
    /* B3880 800A48D0 A600002C */   sh        $zero, 0x2C($s0)
    /* B3884 800A48D4 24010032 */  addiu      $at, $zero, 0x32
    /* B3888 800A48D8 0041001A */  div        $zero, $v0, $at
    /* B388C 800A48DC 00007010 */  mfhi       $t6
    /* B3890 800A48E0 25CD0014 */  addiu      $t5, $t6, 0x14
    /* B3894 800A48E4 A20D0026 */  sb         $t5, 0x26($s0)
    /* B3898 800A48E8 3C038004 */  lui        $v1, %hi(currentLevel)
    /* B389C 800A48EC 8C637F90 */  lw         $v1, %lo(currentLevel)($v1)
    /* B38A0 800A48F0 24010001 */  addiu      $at, $zero, 0x1
    /* B38A4 800A48F4 24040002 */  addiu      $a0, $zero, 0x2
    /* B38A8 800A48F8 1061000B */  beq        $v1, $at, .L800A4928_B38D8
    /* B38AC 800A48FC 240F000D */   addiu     $t7, $zero, 0xD
    /* B38B0 800A4900 1064000D */  beq        $v1, $a0, .L800A4938_B38E8
    /* B38B4 800A4904 2418000A */   addiu     $t8, $zero, 0xA
    /* B38B8 800A4908 24020003 */  addiu      $v0, $zero, 0x3
    /* B38BC 800A490C 1062000E */  beq        $v1, $v0, .L800A4948_B38F8
    /* B38C0 800A4910 240E000A */   addiu     $t6, $zero, 0xA
    /* B38C4 800A4914 24010004 */  addiu      $at, $zero, 0x4
    /* B38C8 800A4918 5061000F */  beql       $v1, $at, .L800A4958_B3908
    /* B38CC 800A491C 920D001B */   lbu       $t5, 0x1B($s0)
    /* B38D0 800A4920 10000017 */  b          .L800A4980_B3930
    /* B38D4 800A4924 92180046 */   lbu       $t8, 0x46($s0)
  .L800A4928_B38D8:
    /* B38D8 800A4928 240C0006 */  addiu      $t4, $zero, 0x6
    /* B38DC 800A492C A20F003C */  sb         $t7, 0x3C($s0)
    /* B38E0 800A4930 10000012 */  b          .L800A497C_B392C
    /* B38E4 800A4934 A20C003D */   sb        $t4, 0x3D($s0)
  .L800A4938_B38E8:
    /* B38E8 800A4938 24190003 */  addiu      $t9, $zero, 0x3
    /* B38EC 800A493C A218003C */  sb         $t8, 0x3C($s0)
    /* B38F0 800A4940 1000000E */  b          .L800A497C_B392C
    /* B38F4 800A4944 A219003D */   sb        $t9, 0x3D($s0)
  .L800A4948_B38F8:
    /* B38F8 800A4948 A20E003C */  sb         $t6, 0x3C($s0)
    /* B38FC 800A494C 1000000B */  b          .L800A497C_B392C
    /* B3900 800A4950 A202003D */   sb        $v0, 0x3D($s0)
    /* B3904 800A4954 920D001B */  lbu        $t5, 0x1B($s0)
  .L800A4958_B3908:
    /* B3908 800A4958 240F0007 */  addiu      $t7, $zero, 0x7
    /* B390C 800A495C 240C000A */  addiu      $t4, $zero, 0xA
    /* B3910 800A4960 548D0005 */  bnel       $a0, $t5, .L800A4978_B3928
    /* B3914 800A4964 A20C003C */   sb        $t4, 0x3C($s0)
    /* B3918 800A4968 A20F003C */  sb         $t7, 0x3C($s0)
    /* B391C 800A496C 10000003 */  b          .L800A497C_B392C
    /* B3920 800A4970 A204003D */   sb        $a0, 0x3D($s0)
    /* B3924 800A4974 A20C003C */  sb         $t4, 0x3C($s0)
  .L800A4978_B3928:
    /* B3928 800A4978 A202003D */  sb         $v0, 0x3D($s0)
  .L800A497C_B392C:
    /* B392C 800A497C 92180046 */  lbu        $t8, 0x46($s0)
  .L800A4980_B3930:
    /* B3930 800A4980 570000A1 */  bnel       $t8, $zero, .L800A4C08_B3BB8
    /* B3934 800A4984 92020046 */   lbu       $v0, 0x46($s0)
    /* B3938 800A4988 86040006 */  lh         $a0, 0x6($s0)
    /* B393C 800A498C 24844000 */  addiu      $a0, $a0, 0x4000
    /* B3940 800A4990 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* B3944 800A4994 0C007660 */  jal        sins
    /* B3948 800A4998 03202025 */   or        $a0, $t9, $zero
    /* B394C 800A499C 44823000 */  mtc1       $v0, $f6
    /* B3950 800A49A0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B3954 800A49A4 44819800 */  mtc1       $at, $f19
    /* B3958 800A49A8 46803220 */  cvt.s.w    $f8, $f6
    /* B395C 800A49AC 44809000 */  mtc1       $zero, $f18
    /* B3960 800A49B0 86040006 */  lh         $a0, 0x6($s0)
    /* B3964 800A49B4 24844000 */  addiu      $a0, $a0, 0x4000
    /* B3968 800A49B8 460042A1 */  cvt.d.s    $f10, $f8
    /* B396C 800A49BC 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* B3970 800A49C0 46325103 */  div.d      $f4, $f10, $f18
    /* B3974 800A49C4 01C02025 */  or         $a0, $t6, $zero
    /* B3978 800A49C8 46202320 */  cvt.s.d    $f12, $f4
    /* B397C 800A49CC 0C007654 */  jal        coss
    /* B3980 800A49D0 E7AC0070 */   swc1      $f12, 0x70($sp)
    /* B3984 800A49D4 44823000 */  mtc1       $v0, $f6
    /* B3988 800A49D8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B398C 800A49DC 44819800 */  mtc1       $at, $f19
    /* B3990 800A49E0 46803220 */  cvt.s.w    $f8, $f6
    /* B3994 800A49E4 44809000 */  mtc1       $zero, $f18
    /* B3998 800A49E8 3C0B8004 */  lui        $t3, %hi(currentLevel)
    /* B399C 800A49EC 8D6B7F90 */  lw         $t3, %lo(currentLevel)($t3)
    /* B39A0 800A49F0 24010001 */  addiu      $at, $zero, 0x1
    /* B39A4 800A49F4 C7AC0070 */  lwc1       $f12, 0x70($sp)
    /* B39A8 800A49F8 460042A1 */  cvt.d.s    $f10, $f8
    /* B39AC 800A49FC 01601825 */  or         $v1, $t3, $zero
    /* B39B0 800A4A00 46325103 */  div.d      $f4, $f10, $f18
    /* B39B4 800A4A04 46202187 */  neg.d      $f6, $f4
    /* B39B8 800A4A08 11610006 */  beq        $t3, $at, .L800A4A24_B39D4
    /* B39BC 800A4A0C 462030A0 */   cvt.s.d   $f2, $f6
    /* B39C0 800A4A10 24010004 */  addiu      $at, $zero, 0x4
    /* B39C4 800A4A14 10610005 */  beq        $v1, $at, .L800A4A2C_B39DC
    /* B39C8 800A4A18 240200FA */   addiu     $v0, $zero, 0xFA
    /* B39CC 800A4A1C 10000005 */  b          .L800A4A34_B39E4
    /* B39D0 800A4A20 00000000 */   nop
  .L800A4A24_B39D4:
    /* B39D4 800A4A24 10000003 */  b          .L800A4A34_B39E4
    /* B39D8 800A4A28 24020140 */   addiu     $v0, $zero, 0x140
  .L800A4A2C_B39DC:
    /* B39DC 800A4A2C 10000001 */  b          .L800A4A34_B39E4
    /* B39E0 800A4A30 240200C8 */   addiu     $v0, $zero, 0xC8
  .L800A4A34_B39E4:
    /* B39E4 800A4A34 44824000 */  mtc1       $v0, $f8
    /* B39E8 800A4A38 860D0000 */  lh         $t5, 0x0($s0)
    /* B39EC 800A4A3C 860C0004 */  lh         $t4, 0x4($s0)
    /* B39F0 800A4A40 46804020 */  cvt.s.w    $f0, $f8
    /* B39F4 800A4A44 448D5000 */  mtc1       $t5, $f10
    /* B39F8 800A4A48 8E190020 */  lw         $t9, 0x20($s0)
    /* B39FC 800A4A4C 86090002 */  lh         $t1, 0x2($s0)
    /* B3A00 800A4A50 3C0D8003 */  lui        $t5, %hi(D_80031420)
    /* B3A04 800A4A54 468054A0 */  cvt.s.w    $f18, $f10
    /* B3A08 800A4A58 46006102 */  mul.s      $f4, $f12, $f0
    /* B3A0C 800A4A5C 448C5000 */  mtc1       $t4, $f10
    /* B3A10 800A4A60 332E0600 */  andi       $t6, $t9, 0x600
    /* B3A14 800A4A64 25290050 */  addiu      $t1, $t1, 0x50
    /* B3A18 800A4A68 46049180 */  add.s      $f6, $f18, $f4
    /* B3A1C 800A4A6C 46001102 */  mul.s      $f4, $f2, $f0
    /* B3A20 800A4A70 468054A0 */  cvt.s.w    $f18, $f10
    /* B3A24 800A4A74 4600320D */  trunc.w.s  $f8, $f6
    /* B3A28 800A4A78 46049180 */  add.s      $f6, $f18, $f4
    /* B3A2C 800A4A7C 44084000 */  mfc1       $t0, $f8
    /* B3A30 800A4A80 4600320D */  trunc.w.s  $f8, $f6
    /* B3A34 800A4A84 440A4000 */  mfc1       $t2, $f8
    /* B3A38 800A4A88 51C0005F */  beql       $t6, $zero, .L800A4C08_B3BB8
    /* B3A3C 800A4A8C 92020046 */   lbu       $v0, 0x46($s0)
    /* B3A40 800A4A90 8DAD1420 */  lw         $t5, %lo(D_80031420)($t5)
    /* B3A44 800A4A94 00082400 */  sll        $a0, $t0, 16
    /* B3A48 800A4A98 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* B3A4C 800A4A9C 31AF0003 */  andi       $t7, $t5, 0x3
    /* B3A50 800A4AA0 11E0002F */  beqz       $t7, .L800A4B60_B3B10
    /* B3A54 800A4AA4 00046403 */   sra       $t4, $a0, 16
    /* B3A58 800A4AA8 44810000 */  mtc1       $at, $f0
    /* B3A5C 800A4AAC 00092C00 */  sll        $a1, $t1, 16
    /* B3A60 800A4AB0 0005C403 */  sra        $t8, $a1, 16
    /* B3A64 800A4AB4 46006282 */  mul.s      $f10, $f12, $f0
    /* B3A68 800A4AB8 03002825 */  or         $a1, $t8, $zero
    /* B3A6C 800A4ABC 01802025 */  or         $a0, $t4, $zero
    /* B3A70 800A4AC0 46001102 */  mul.s      $f4, $f2, $f0
    /* B3A74 800A4AC4 000B6080 */  sll        $t4, $t3, 2
    /* B3A78 800A4AC8 000A3400 */  sll        $a2, $t2, 16
    /* B3A7C 800A4ACC 0006CC03 */  sra        $t9, $a2, 16
    /* B3A80 800A4AD0 018B6023 */  subu       $t4, $t4, $t3
    /* B3A84 800A4AD4 03203025 */  or         $a2, $t9, $zero
    /* B3A88 800A4AD8 4600548D */  trunc.w.s  $f18, $f10
    /* B3A8C 800A4ADC 24190046 */  addiu      $t9, $zero, 0x46
    /* B3A90 800A4AE0 240E0007 */  addiu      $t6, $zero, 0x7
    /* B3A94 800A4AE4 4600218D */  trunc.w.s  $f6, $f4
    /* B3A98 800A4AE8 44079000 */  mfc1       $a3, $f18
    /* B3A9C 800A4AEC AFAE001C */  sw         $t6, 0x1C($sp)
    /* B3AA0 800A4AF0 AFB90018 */  sw         $t9, 0x18($sp)
    /* B3AA4 800A4AF4 44183000 */  mfc1       $t8, $f6
    /* B3AA8 800A4AF8 00076E00 */  sll        $t5, $a3, 24
    /* B3AAC 800A4AFC 000D3E03 */  sra        $a3, $t5, 24
    /* B3AB0 800A4B00 AFB80014 */  sw         $t8, 0x14($sp)
    /* B3AB4 800A4B04 3C188014 */  lui        $t8, %hi(D_8013E3C0)
    /* B3AB8 800A4B08 2718E3C0 */  addiu      $t8, $t8, %lo(D_8013E3C0)
    /* B3ABC 800A4B0C 01981821 */  addu       $v1, $t4, $t8
    /* B3AC0 800A4B10 240D0014 */  addiu      $t5, $zero, 0x14
    /* B3AC4 800A4B14 AFAD0020 */  sw         $t5, 0x20($sp)
    /* B3AC8 800A4B18 240F00C8 */  addiu      $t7, $zero, 0xC8
    /* B3ACC 800A4B1C 906DFFFF */  lbu        $t5, -0x1($v1)
    /* B3AD0 800A4B20 9079FFFD */  lbu        $t9, -0x3($v1)
    /* B3AD4 800A4B24 906EFFFE */  lbu        $t6, -0x2($v1)
    /* B3AD8 800A4B28 AFAF0024 */  sw         $t7, 0x24($sp)
    /* B3ADC 800A4B2C 240F00FF */  addiu      $t7, $zero, 0xFF
    /* B3AE0 800A4B30 AFAF0034 */  sw         $t7, 0x34($sp)
    /* B3AE4 800A4B34 AFA00010 */  sw         $zero, 0x10($sp)
    /* B3AE8 800A4B38 AFA8007C */  sw         $t0, 0x7C($sp)
    /* B3AEC 800A4B3C AFA90078 */  sw         $t1, 0x78($sp)
    /* B3AF0 800A4B40 AFAA0074 */  sw         $t2, 0x74($sp)
    /* B3AF4 800A4B44 AFAD0030 */  sw         $t5, 0x30($sp)
    /* B3AF8 800A4B48 AFB90028 */  sw         $t9, 0x28($sp)
    /* B3AFC 800A4B4C 0C03297B */  jal        func_800CA5EC_D959C
    /* B3B00 800A4B50 AFAE002C */   sw        $t6, 0x2C($sp)
    /* B3B04 800A4B54 8FA8007C */  lw         $t0, 0x7C($sp)
    /* B3B08 800A4B58 8FA90078 */  lw         $t1, 0x78($sp)
    /* B3B0C 800A4B5C 8FAA0074 */  lw         $t2, 0x74($sp)
  .L800A4B60_B3B10:
    /* B3B10 800A4B60 00086400 */  sll        $t4, $t0, 16
    /* B3B14 800A4B64 0009CC00 */  sll        $t9, $t1, 16
    /* B3B18 800A4B68 000A6C00 */  sll        $t5, $t2, 16
    /* B3B1C 800A4B6C 000D7C03 */  sra        $t7, $t5, 16
    /* B3B20 800A4B70 00197403 */  sra        $t6, $t9, 16
    /* B3B24 800A4B74 000CC403 */  sra        $t8, $t4, 16
    /* B3B28 800A4B78 AFB80058 */  sw         $t8, 0x58($sp)
    /* B3B2C 800A4B7C AFAE0054 */  sw         $t6, 0x54($sp)
    /* B3B30 800A4B80 0C000E38 */  jal        func_800038E0_44E0
    /* B3B34 800A4B84 AFAF0050 */   sw        $t7, 0x50($sp)
    /* B3B38 800A4B88 244701C2 */  addiu      $a3, $v0, 0x1C2
    /* B3B3C 800A4B8C 00076243 */  sra        $t4, $a3, 9
    /* B3B40 800A4B90 000CC400 */  sll        $t8, $t4, 16
    /* B3B44 800A4B94 00183C03 */  sra        $a3, $t8, 16
    /* B3B48 800A4B98 3C188004 */  lui        $t8, %hi(currentLevel)
    /* B3B4C 800A4B9C 8F187F90 */  lw         $t8, %lo(currentLevel)($t8)
    /* B3B50 800A4BA0 240E000C */  addiu      $t6, $zero, 0xC
    /* B3B54 800A4BA4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* B3B58 800A4BA8 3C0E8014 */  lui        $t6, %hi(D_8013E3C0)
    /* B3B5C 800A4BAC 0018C880 */  sll        $t9, $t8, 2
    /* B3B60 800A4BB0 25CEE3C0 */  addiu      $t6, $t6, %lo(D_8013E3C0)
    /* B3B64 800A4BB4 0338C823 */  subu       $t9, $t9, $t8
    /* B3B68 800A4BB8 032E1821 */  addu       $v1, $t9, $t6
    /* B3B6C 800A4BBC 240C00FF */  addiu      $t4, $zero, 0xFF
    /* B3B70 800A4BC0 240D0006 */  addiu      $t5, $zero, 0x6
    /* B3B74 800A4BC4 240F0028 */  addiu      $t7, $zero, 0x28
    /* B3B78 800A4BC8 AFAF0018 */  sw         $t7, 0x18($sp)
    /* B3B7C 800A4BCC AFAD0014 */  sw         $t5, 0x14($sp)
    /* B3B80 800A4BD0 AFAC001C */  sw         $t4, 0x1C($sp)
    /* B3B84 800A4BD4 906CFFFF */  lbu        $t4, -0x1($v1)
    /* B3B88 800A4BD8 906DFFFD */  lbu        $t5, -0x3($v1)
    /* B3B8C 800A4BDC 906FFFFE */  lbu        $t7, -0x2($v1)
    /* B3B90 800A4BE0 87A4005A */  lh         $a0, 0x5A($sp)
    /* B3B94 800A4BE4 87A50056 */  lh         $a1, 0x56($sp)
    /* B3B98 800A4BE8 87A60052 */  lh         $a2, 0x52($sp)
    /* B3B9C 800A4BEC AFAC0028 */  sw         $t4, 0x28($sp)
    /* B3BA0 800A4BF0 AFAD0020 */  sw         $t5, 0x20($sp)
    /* B3BA4 800A4BF4 0C037A82 */  jal        func_800DEA08_ED9B8
    /* B3BA8 800A4BF8 AFAF0024 */   sw        $t7, 0x24($sp)
    /* B3BAC 800A4BFC 2418000A */  addiu      $t8, $zero, 0xA
    /* B3BB0 800A4C00 A2180046 */  sb         $t8, 0x46($s0)
  .L800A4C04_B3BB4:
    /* B3BB4 800A4C04 92020046 */  lbu        $v0, 0x46($s0)
  .L800A4C08_B3BB8:
    /* B3BB8 800A4C08 10400002 */  beqz       $v0, .L800A4C14_B3BC4
    /* B3BBC 800A4C0C 2459FFFF */   addiu     $t9, $v0, -0x1
    /* B3BC0 800A4C10 A2190046 */  sb         $t9, 0x46($s0)
  .L800A4C14_B3BC4:
    /* B3BC4 800A4C14 8FBF0044 */  lw         $ra, 0x44($sp)
    /* B3BC8 800A4C18 8FB00040 */  lw         $s0, 0x40($sp)
    /* B3BCC 800A4C1C 27BD0098 */  addiu      $sp, $sp, 0x98
    /* B3BD0 800A4C20 03E00008 */  jr         $ra
    /* B3BD4 800A4C24 00000000 */   nop
endlabel func_800A41B0_B3160
