nonmatching func_800EC484_FB434, 0x10D8

glabel func_800EC484_FB434
    /* FB434 800EC484 27BDFF40 */  addiu      $sp, $sp, -0xC0
    /* FB438 800EC488 AFBF003C */  sw         $ra, 0x3C($sp)
    /* FB43C 800EC48C AFB00038 */  sw         $s0, 0x38($sp)
    /* FB440 800EC490 00808025 */  or         $s0, $a0, $zero
    /* FB444 800EC494 AFA500C4 */  sw         $a1, 0xC4($sp)
    /* FB448 800EC498 86050004 */  lh         $a1, 0x4($s0)
    /* FB44C 800EC49C 0C0015B4 */  jal        func_800056D0_62D0
    /* FB450 800EC4A0 84840000 */   lh        $a0, 0x0($a0)
    /* FB454 800EC4A4 86040000 */  lh         $a0, 0x0($s0)
    /* FB458 800EC4A8 86050004 */  lh         $a1, 0x4($s0)
    /* FB45C 800EC4AC 0C03E9A4 */  jal        func_800FA690_109640
    /* FB460 800EC4B0 8606000E */   lh        $a2, 0xE($s0)
    /* FB464 800EC4B4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* FB468 800EC4B8 3C0E8005 */  lui        $t6, %hi(D_80048188)
    /* FB46C 800EC4BC 44812000 */  mtc1       $at, $f4
    /* FB470 800EC4C0 8DCE8188 */  lw         $t6, %lo(D_80048188)($t6)
    /* FB474 800EC4C4 3C018015 */  lui        $at, %hi(D_80157A10)
    /* FB478 800EC4C8 3C038015 */  lui        $v1, %hi(D_80157A0C)
    /* FB47C 800EC4CC 15C0000E */  bnez       $t6, .L800EC508_FB4B8
    /* FB480 800EC4D0 E4247A10 */   swc1      $f4, %lo(D_80157A10)($at)
    /* FB484 800EC4D4 8C637A0C */  lw         $v1, %lo(D_80157A0C)($v1)
    /* FB488 800EC4D8 3C188014 */  lui        $t8, %hi(D_8013E5B0)
    /* FB48C 800EC4DC 3C028015 */  lui        $v0, %hi(D_80157A28)
    /* FB490 800EC4E0 00037880 */  sll        $t7, $v1, 2
    /* FB494 800EC4E4 01E37823 */  subu       $t7, $t7, $v1
    /* FB498 800EC4E8 000F7880 */  sll        $t7, $t7, 2
    /* FB49C 800EC4EC 01E37821 */  addu       $t7, $t7, $v1
    /* FB4A0 800EC4F0 000F7880 */  sll        $t7, $t7, 2
    /* FB4A4 800EC4F4 030FC021 */  addu       $t8, $t8, $t7
    /* FB4A8 800EC4F8 8F18E5B0 */  lw         $t8, %lo(D_8013E5B0)($t8)
    /* FB4AC 800EC4FC 24427A28 */  addiu      $v0, $v0, %lo(D_80157A28)
    /* FB4B0 800EC500 33190040 */  andi       $t9, $t8, 0x40
    /* FB4B4 800EC504 13200030 */  beqz       $t9, .L800EC5C8_FB578
  .L800EC508_FB4B8:
    /* FB4B8 800EC508 3C048015 */   lui       $a0, %hi(D_80157A28)
    /* FB4BC 800EC50C 0C004DFC */  jal        func_800137F0_143F0
    /* FB4C0 800EC510 8C847A28 */   lw        $a0, %lo(D_80157A28)($a0)
    /* FB4C4 800EC514 3C038015 */  lui        $v1, %hi(D_80157A0C)
    /* FB4C8 800EC518 8C637A0C */  lw         $v1, %lo(D_80157A0C)($v1)
    /* FB4CC 800EC51C 24010012 */  addiu      $at, $zero, 0x12
    /* FB4D0 800EC520 8FA400C4 */  lw         $a0, 0xC4($sp)
    /* FB4D4 800EC524 10610007 */  beq        $v1, $at, .L800EC544_FB4F4
    /* FB4D8 800EC528 24010015 */   addiu     $at, $zero, 0x15
    /* FB4DC 800EC52C 10610005 */  beq        $v1, $at, .L800EC544_FB4F4
    /* FB4E0 800EC530 24010014 */   addiu     $at, $zero, 0x14
    /* FB4E4 800EC534 10610003 */  beq        $v1, $at, .L800EC544_FB4F4
    /* FB4E8 800EC538 24010013 */   addiu     $at, $zero, 0x13
    /* FB4EC 800EC53C 5461001E */  bnel       $v1, $at, .L800EC5B8_FB568
    /* FB4F0 800EC540 02002025 */   or        $a0, $s0, $zero
  .L800EC544_FB4F4:
    /* FB4F4 800EC544 80820002 */  lb         $v0, 0x2($a0)
    /* FB4F8 800EC548 80830003 */  lb         $v1, 0x3($a0)
    /* FB4FC 800EC54C 00420019 */  multu      $v0, $v0
    /* FB500 800EC550 00004812 */  mflo       $t1
    /* FB504 800EC554 00000000 */  nop
    /* FB508 800EC558 00000000 */  nop
    /* FB50C 800EC55C 00630019 */  multu      $v1, $v1
    /* FB510 800EC560 00005012 */  mflo       $t2
    /* FB514 800EC564 012A5821 */  addu       $t3, $t1, $t2
    /* FB518 800EC568 448B3000 */  mtc1       $t3, $f6
    /* FB51C 800EC56C 0C007650 */  jal        sqrtf
    /* FB520 800EC570 46803320 */   cvt.s.w   $f12, $f6
    /* FB524 800EC574 3C018014 */  lui        $at, %hi(D_80144478)
    /* FB528 800EC578 D42A4478 */  ldc1       $f10, %lo(D_80144478)($at)
    /* FB52C 800EC57C 46000221 */  cvt.d.s    $f8, $f0
    /* FB530 800EC580 44801000 */  mtc1       $zero, $f2
    /* FB534 800EC584 462A4483 */  div.d      $f18, $f8, $f10
    /* FB538 800EC588 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FB53C 800EC58C 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FB540 800EC590 00002825 */  or         $a1, $zero, $zero
    /* FB544 800EC594 46209120 */  cvt.s.d    $f4, $f18
    /* FB548 800EC598 4604103C */  c.lt.s     $f2, $f4
    /* FB54C 800EC59C 00000000 */  nop
    /* FB550 800EC5A0 45020005 */  bc1fl      .L800EC5B8_FB568
    /* FB554 800EC5A4 02002025 */   or        $a0, $s0, $zero
    /* FB558 800EC5A8 44071000 */  mfc1       $a3, $f2
    /* FB55C 800EC5AC 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FB560 800EC5B0 00003025 */   or        $a2, $zero, $zero
    /* FB564 800EC5B4 02002025 */  or         $a0, $s0, $zero
  .L800EC5B8_FB568:
    /* FB568 800EC5B8 0C03B5E3 */  jal        func_800ED78C_FC73C
    /* FB56C 800EC5BC 8FA500C4 */   lw        $a1, 0xC4($sp)
    /* FB570 800EC5C0 100003E0 */  b          .L800ED544_FC4F4
    /* FB574 800EC5C4 860B000E */   lh        $t3, 0xE($s0)
  .L800EC5C8_FB578:
    /* FB578 800EC5C8 8C460000 */  lw         $a2, 0x0($v0)
    /* FB57C 800EC5CC 2401FFF7 */  addiu      $at, $zero, -0x9
    /* FB580 800EC5D0 02002025 */  or         $a0, $s0, $zero
    /* FB584 800EC5D4 30CC0200 */  andi       $t4, $a2, 0x200
    /* FB588 800EC5D8 1180001F */  beqz       $t4, .L800EC658_FB608
    /* FB58C 800EC5DC 34CE0001 */   ori       $t6, $a2, 0x1
    /* FB590 800EC5E0 24010023 */  addiu      $at, $zero, 0x23
    /* FB594 800EC5E4 10610008 */  beq        $v1, $at, .L800EC608_FB5B8
    /* FB598 800EC5E8 3C048015 */   lui       $a0, %hi(D_80157600)
    /* FB59C 800EC5EC 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FB5A0 800EC5F0 24050023 */  addiu      $a1, $zero, 0x23
    /* FB5A4 800EC5F4 00003025 */  or         $a2, $zero, $zero
    /* FB5A8 800EC5F8 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FB5AC 800EC5FC 24070000 */   addiu     $a3, $zero, 0x0
    /* FB5B0 800EC600 3C068015 */  lui        $a2, %hi(D_80157A28)
    /* FB5B4 800EC604 8CC67A28 */  lw         $a2, %lo(D_80157A28)($a2)
  .L800EC608_FB5B8:
    /* FB5B8 800EC608 0C004DFC */  jal        func_800137F0_143F0
    /* FB5BC 800EC60C 00C02025 */   or        $a0, $a2, $zero
    /* FB5C0 800EC610 3C058015 */  lui        $a1, %hi(D_80157600)
    /* FB5C4 800EC614 24A57600 */  addiu      $a1, $a1, %lo(D_80157600)
    /* FB5C8 800EC618 8CAD040C */  lw         $t5, 0x40C($a1)
    /* FB5CC 800EC61C 24010038 */  addiu      $at, $zero, 0x38
    /* FB5D0 800EC620 24060010 */  addiu      $a2, $zero, 0x10
    /* FB5D4 800EC624 15A10006 */  bne        $t5, $at, .L800EC640_FB5F0
    /* FB5D8 800EC628 3C014000 */   lui       $at, (0x40000000 >> 16)
    /* FB5DC 800EC62C 44817000 */  mtc1       $at, $f14
    /* FB5E0 800EC630 C4A60410 */  lwc1       $f6, 0x410($a1)
    /* FB5E4 800EC634 460E3002 */  mul.s      $f0, $f6, $f14
    /* FB5E8 800EC638 10000003 */  b          .L800EC648_FB5F8
    /* FB5EC 800EC63C 44070000 */   mfc1      $a3, $f0
  .L800EC640_FB5F0:
    /* FB5F0 800EC640 C4A00410 */  lwc1       $f0, 0x410($a1)
    /* FB5F4 800EC644 44070000 */  mfc1       $a3, $f0
  .L800EC648_FB5F8:
    /* FB5F8 800EC648 0C0033D3 */  jal        func_8000CF4C_DB4C
    /* FB5FC 800EC64C 8CA40404 */   lw        $a0, 0x404($a1)
    /* FB600 800EC650 100003BC */  b          .L800ED544_FC4F4
    /* FB604 800EC654 860B000E */   lh        $t3, 0xE($s0)
  .L800EC658_FB608:
    /* FB608 800EC658 AC4E0000 */  sw         $t6, 0x0($v0)
    /* FB60C 800EC65C 01C1C024 */  and        $t8, $t6, $at
    /* FB610 800EC660 AC580000 */  sw         $t8, 0x0($v0)
    /* FB614 800EC664 0C03ED0C */  jal        func_800FB430_10A3E0
    /* FB618 800EC668 24050000 */   addiu     $a1, $zero, 0x0
    /* FB61C 800EC66C 0C000D17 */  jal        func_8000345C_405C
    /* FB620 800EC670 24040020 */   addiu     $a0, $zero, 0x20
    /* FB624 800EC674 3C078015 */  lui        $a3, %hi(D_80157A28)
    /* FB628 800EC678 24E77A28 */  addiu      $a3, $a3, %lo(D_80157A28)
    /* FB62C 800EC67C 8CF90000 */  lw         $t9, 0x0($a3)
    /* FB630 800EC680 3C0B8022 */  lui        $t3, %hi(D_80222A70)
    /* FB634 800EC684 33290004 */  andi       $t1, $t9, 0x4
    /* FB638 800EC688 5520005E */  bnel       $t1, $zero, .L800EC804_FB7B4
    /* FB63C 800EC68C 8FA800C4 */   lw        $t0, 0xC4($sp)
    /* FB640 800EC690 8D6B2A70 */  lw         $t3, %lo(D_80222A70)($t3)
    /* FB644 800EC694 860A0002 */  lh         $t2, 0x2($s0)
    /* FB648 800EC698 3C0D8016 */  lui        $t5, %hi(D_80159320)
    /* FB64C 800EC69C 256CFFDC */  addiu      $t4, $t3, -0x24
    /* FB650 800EC6A0 014C082A */  slt        $at, $t2, $t4
    /* FB654 800EC6A4 14200005 */  bnez       $at, .L800EC6BC_FB66C
    /* FB658 800EC6A8 00000000 */   nop
    /* FB65C 800EC6AC 8DAD9320 */  lw         $t5, %lo(D_80159320)($t5)
    /* FB660 800EC6B0 31AE1000 */  andi       $t6, $t5, 0x1000
    /* FB664 800EC6B4 51C00053 */  beql       $t6, $zero, .L800EC804_FB7B4
    /* FB668 800EC6B8 8FA800C4 */   lw        $t0, 0xC4($sp)
  .L800EC6BC_FB66C:
    /* FB66C 800EC6BC 0C007654 */  jal        coss
    /* FB670 800EC6C0 9604000E */   lhu       $a0, 0xE($s0)
    /* FB674 800EC6C4 44824000 */  mtc1       $v0, $f8
    /* FB678 800EC6C8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* FB67C 800EC6CC 44812800 */  mtc1       $at, $f5
    /* FB680 800EC6D0 468042A0 */  cvt.s.w    $f10, $f8
    /* FB684 800EC6D4 44802000 */  mtc1       $zero, $f4
    /* FB688 800EC6D8 3C014030 */  lui        $at, (0x40300000 >> 16)
    /* FB68C 800EC6DC 44814800 */  mtc1       $at, $f9
    /* FB690 800EC6E0 44804000 */  mtc1       $zero, $f8
    /* FB694 800EC6E4 860F0000 */  lh         $t7, 0x0($s0)
    /* FB698 800EC6E8 460054A1 */  cvt.d.s    $f18, $f10
    /* FB69C 800EC6EC 3C018015 */  lui        $at, %hi(D_801575C0)
    /* FB6A0 800EC6F0 46249183 */  div.d      $f6, $f18, $f4
    /* FB6A4 800EC6F4 448F9000 */  mtc1       $t7, $f18
    /* FB6A8 800EC6F8 00000000 */  nop
    /* FB6AC 800EC6FC 46809121 */  cvt.d.w    $f4, $f18
    /* FB6B0 800EC700 46283282 */  mul.d      $f10, $f6, $f8
    /* FB6B4 800EC704 46245180 */  add.d      $f6, $f10, $f4
    /* FB6B8 800EC708 4620320D */  trunc.w.d  $f8, $f6
    /* FB6BC 800EC70C 44194000 */  mfc1       $t9, $f8
    /* FB6C0 800EC710 00000000 */  nop
    /* FB6C4 800EC714 A43975C0 */  sh         $t9, %lo(D_801575C0)($at)
    /* FB6C8 800EC718 0C007660 */  jal        sins
    /* FB6CC 800EC71C 9604000E */   lhu       $a0, 0xE($s0)
    /* FB6D0 800EC720 44829000 */  mtc1       $v0, $f18
    /* FB6D4 800EC724 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* FB6D8 800EC728 44813800 */  mtc1       $at, $f7
    /* FB6DC 800EC72C 468092A0 */  cvt.s.w    $f10, $f18
    /* FB6E0 800EC730 44803000 */  mtc1       $zero, $f6
    /* FB6E4 800EC734 3C014030 */  lui        $at, (0x40300000 >> 16)
    /* FB6E8 800EC738 44819800 */  mtc1       $at, $f19
    /* FB6EC 800EC73C 44809000 */  mtc1       $zero, $f18
    /* FB6F0 800EC740 86090004 */  lh         $t1, 0x4($s0)
    /* FB6F4 800EC744 46005121 */  cvt.d.s    $f4, $f10
    /* FB6F8 800EC748 3C018015 */  lui        $at, %hi(D_801575C2)
    /* FB6FC 800EC74C 46262203 */  div.d      $f8, $f4, $f6
    /* FB700 800EC750 44892000 */  mtc1       $t1, $f4
    /* FB704 800EC754 3C048015 */  lui        $a0, %hi(D_801575C0)
    /* FB708 800EC758 848475C0 */  lh         $a0, %lo(D_801575C0)($a0)
    /* FB70C 800EC75C 468021A1 */  cvt.d.w    $f6, $f4
    /* FB710 800EC760 46324282 */  mul.d      $f10, $f8, $f18
    /* FB714 800EC764 46265200 */  add.d      $f8, $f10, $f6
    /* FB718 800EC768 4620448D */  trunc.w.d  $f18, $f8
    /* FB71C 800EC76C 44059000 */  mfc1       $a1, $f18
    /* FB720 800EC770 00000000 */  nop
    /* FB724 800EC774 00055400 */  sll        $t2, $a1, 16
    /* FB728 800EC778 000A2C03 */  sra        $a1, $t2, 16
    /* FB72C 800EC77C 0C02E134 */  jal        func_800B84D0_C7480
    /* FB730 800EC780 A42575C2 */   sh        $a1, %lo(D_801575C2)($at)
    /* FB734 800EC784 3C188022 */  lui        $t8, %hi(D_80222A70)
    /* FB738 800EC788 8F182A70 */  lw         $t8, %lo(D_80222A70)($t8)
    /* FB73C 800EC78C 00021A03 */  sra        $v1, $v0, 8
    /* FB740 800EC790 00037400 */  sll        $t6, $v1, 16
    /* FB744 800EC794 000E7C03 */  sra        $t7, $t6, 16
    /* FB748 800EC798 2719FFDC */  addiu      $t9, $t8, -0x24
    /* FB74C 800EC79C 00033400 */  sll        $a2, $v1, 16
    /* FB750 800EC7A0 032F082A */  slt        $at, $t9, $t7
    /* FB754 800EC7A4 14200009 */  bnez       $at, .L800EC7CC_FB77C
    /* FB758 800EC7A8 00066C03 */   sra       $t5, $a2, 16
    /* FB75C 800EC7AC 86040000 */  lh         $a0, 0x0($s0)
    /* FB760 800EC7B0 86050004 */  lh         $a1, 0x4($s0)
    /* FB764 800EC7B4 0C02E134 */  jal        func_800B84D0_C7480
    /* FB768 800EC7B8 A7AD00BA */   sh        $t5, 0xBA($sp)
    /* FB76C 800EC7BC 87A600BA */  lh         $a2, 0xBA($sp)
    /* FB770 800EC7C0 00024A03 */  sra        $t1, $v0, 8
    /* FB774 800EC7C4 00C9082A */  slt        $at, $a2, $t1
    /* FB778 800EC7C8 14200005 */  bnez       $at, .L800EC7E0_FB790
  .L800EC7CC_FB77C:
    /* FB77C 800EC7CC 3C0B8016 */   lui       $t3, %hi(D_80159320)
    /* FB780 800EC7D0 8D6B9320 */  lw         $t3, %lo(D_80159320)($t3)
    /* FB784 800EC7D4 316A1000 */  andi       $t2, $t3, 0x1000
    /* FB788 800EC7D8 5140000A */  beql       $t2, $zero, .L800EC804_FB7B4
    /* FB78C 800EC7DC 8FA800C4 */   lw        $t0, 0xC4($sp)
  .L800EC7E0_FB790:
    /* FB790 800EC7E0 0C03AC17 */  jal        func_800EB05C_FA00C
    /* FB794 800EC7E4 00000000 */   nop
    /* FB798 800EC7E8 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FB79C 800EC7EC 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FB7A0 800EC7F0 24050005 */  addiu      $a1, $zero, 0x5
    /* FB7A4 800EC7F4 00003025 */  or         $a2, $zero, $zero
    /* FB7A8 800EC7F8 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FB7AC 800EC7FC 24070000 */   addiu     $a3, $zero, 0x0
    /* FB7B0 800EC800 8FA800C4 */  lw         $t0, 0xC4($sp)
  .L800EC804_FB7B4:
    /* FB7B4 800EC804 3C078015 */  lui        $a3, %hi(D_80157A28)
    /* FB7B8 800EC808 24E77A28 */  addiu      $a3, $a3, %lo(D_80157A28)
    /* FB7BC 800EC80C 95020000 */  lhu        $v0, 0x0($t0)
    /* FB7C0 800EC810 8CE60000 */  lw         $a2, 0x0($a3)
    /* FB7C4 800EC814 304C0020 */  andi       $t4, $v0, 0x20
    /* FB7C8 800EC818 11800006 */  beqz       $t4, .L800EC834_FB7E4
    /* FB7CC 800EC81C 30CD0004 */   andi      $t5, $a2, 0x4
    /* FB7D0 800EC820 15A00004 */  bnez       $t5, .L800EC834_FB7E4
    /* FB7D4 800EC824 34CE2000 */   ori       $t6, $a2, 0x2000
    /* FB7D8 800EC828 ACEE0000 */  sw         $t6, 0x0($a3)
    /* FB7DC 800EC82C 1000033F */  b          .L800ED52C_FC4DC
    /* FB7E0 800EC830 01C03025 */   or        $a2, $t6, $zero
  .L800EC834_FB7E4:
    /* FB7E4 800EC834 30580010 */  andi       $t8, $v0, 0x10
    /* FB7E8 800EC838 1300013C */  beqz       $t8, .L800ECD2C_FBCDC
    /* FB7EC 800EC83C 30CF0004 */   andi      $t7, $a2, 0x4
    /* FB7F0 800EC840 15E0013A */  bnez       $t7, .L800ECD2C_FBCDC
    /* FB7F4 800EC844 34D90008 */   ori       $t9, $a2, 0x8
    /* FB7F8 800EC848 ACF90000 */  sw         $t9, 0x0($a3)
    /* FB7FC 800EC84C 0C03AAF8 */  jal        func_800EABE0_F9B90
    /* FB800 800EC850 02002025 */   or        $a0, $s0, $zero
    /* FB804 800EC854 8FA300C4 */  lw         $v1, 0xC4($sp)
    /* FB808 800EC858 80640002 */  lb         $a0, 0x2($v1)
    /* FB80C 800EC85C 80620003 */  lb         $v0, 0x3($v1)
    /* FB810 800EC860 2881FFFC */  slti       $at, $a0, -0x4
    /* FB814 800EC864 14200004 */  bnez       $at, .L800EC878_FB828
    /* FB818 800EC868 28810005 */   slti      $at, $a0, 0x5
    /* FB81C 800EC86C 50200003 */  beql       $at, $zero, .L800EC87C_FB82C
    /* FB820 800EC870 2841FFFC */   slti      $at, $v0, -0x4
    /* FB824 800EC874 00002025 */  or         $a0, $zero, $zero
  .L800EC878_FB828:
    /* FB828 800EC878 2841FFFC */  slti       $at, $v0, -0x4
  .L800EC87C_FB82C:
    /* FB82C 800EC87C 14200004 */  bnez       $at, .L800EC890_FB840
    /* FB830 800EC880 28410005 */   slti      $at, $v0, 0x5
    /* FB834 800EC884 50200003 */  beql       $at, $zero, .L800EC894_FB844
    /* FB838 800EC888 2881003E */   slti      $at, $a0, 0x3E
    /* FB83C 800EC88C 00001025 */  or         $v0, $zero, $zero
  .L800EC890_FB840:
    /* FB840 800EC890 2881003E */  slti       $at, $a0, 0x3E
  .L800EC894_FB844:
    /* FB844 800EC894 54200003 */  bnel       $at, $zero, .L800EC8A4_FB854
    /* FB848 800EC898 2881FFC3 */   slti      $at, $a0, -0x3D
    /* FB84C 800EC89C 2404003D */  addiu      $a0, $zero, 0x3D
    /* FB850 800EC8A0 2881FFC3 */  slti       $at, $a0, -0x3D
  .L800EC8A4_FB854:
    /* FB854 800EC8A4 50200003 */  beql       $at, $zero, .L800EC8B4_FB864
    /* FB858 800EC8A8 28410040 */   slti      $at, $v0, 0x40
    /* FB85C 800EC8AC 2404FFC3 */  addiu      $a0, $zero, -0x3D
    /* FB860 800EC8B0 28410040 */  slti       $at, $v0, 0x40
  .L800EC8B4_FB864:
    /* FB864 800EC8B4 14200001 */  bnez       $at, .L800EC8BC_FB86C
    /* FB868 800EC8B8 3C028016 */   lui       $v0, %hi(D_80159020)
  .L800EC8BC_FB86C:
    /* FB86C 800EC8BC 8C429020 */  lw         $v0, %lo(D_80159020)($v0)
    /* FB870 800EC8C0 3C188015 */  lui        $t8, %hi(D_80157578)
    /* FB874 800EC8C4 87187578 */  lh         $t8, %lo(D_80157578)($t8)
    /* FB878 800EC8C8 84490000 */  lh         $t1, 0x0($v0)
    /* FB87C 800EC8CC 240F4000 */  addiu      $t7, $zero, 0x4000
    /* FB880 800EC8D0 27A50080 */  addiu      $a1, $sp, 0x80
    /* FB884 800EC8D4 05210003 */  bgez       $t1, .L800EC8E4_FB894
    /* FB888 800EC8D8 00095883 */   sra       $t3, $t1, 2
    /* FB88C 800EC8DC 25210003 */  addiu      $at, $t1, 0x3
    /* FB890 800EC8E0 00015883 */  sra        $t3, $at, 2
  .L800EC8E4_FB894:
    /* FB894 800EC8E4 448B2000 */  mtc1       $t3, $f4
    /* FB898 800EC8E8 27A60074 */  addiu      $a2, $sp, 0x74
    /* FB89C 800EC8EC 01F83823 */  subu       $a3, $t7, $t8
    /* FB8A0 800EC8F0 468022A0 */  cvt.s.w    $f10, $f4
    /* FB8A4 800EC8F4 E7AA0080 */  swc1       $f10, 0x80($sp)
    /* FB8A8 800EC8F8 844A0002 */  lh         $t2, 0x2($v0)
    /* FB8AC 800EC8FC 05410003 */  bgez       $t2, .L800EC90C_FB8BC
    /* FB8B0 800EC900 000A6083 */   sra       $t4, $t2, 2
    /* FB8B4 800EC904 25410003 */  addiu      $at, $t2, 0x3
    /* FB8B8 800EC908 00016083 */  sra        $t4, $at, 2
  .L800EC90C_FB8BC:
    /* FB8BC 800EC90C 448C3000 */  mtc1       $t4, $f6
    /* FB8C0 800EC910 00000000 */  nop
    /* FB8C4 800EC914 46803220 */  cvt.s.w    $f8, $f6
    /* FB8C8 800EC918 E7A80084 */  swc1       $f8, 0x84($sp)
    /* FB8CC 800EC91C 844D0004 */  lh         $t5, 0x4($v0)
    /* FB8D0 800EC920 A7A40096 */  sh         $a0, 0x96($sp)
    /* FB8D4 800EC924 05A10003 */  bgez       $t5, .L800EC934_FB8E4
    /* FB8D8 800EC928 000D7083 */   sra       $t6, $t5, 2
    /* FB8DC 800EC92C 25A10003 */  addiu      $at, $t5, 0x3
    /* FB8E0 800EC930 00017083 */  sra        $t6, $at, 2
  .L800EC934_FB8E4:
    /* FB8E4 800EC934 3C018004 */  lui        $at, %hi(D_80047954)
    /* FB8E8 800EC938 448E9000 */  mtc1       $t6, $f18
    /* FB8EC 800EC93C C42A7954 */  lwc1       $f10, %lo(D_80047954)($at)
    /* FB8F0 800EC940 3C018004 */  lui        $at, %hi(D_80047958)
    /* FB8F4 800EC944 C4267958 */  lwc1       $f6, %lo(D_80047958)($at)
    /* FB8F8 800EC948 46809120 */  cvt.s.w    $f4, $f18
    /* FB8FC 800EC94C 3C018004 */  lui        $at, %hi(D_8004795C)
    /* FB900 800EC950 C428795C */  lwc1       $f8, %lo(D_8004795C)($at)
    /* FB904 800EC954 3C014220 */  lui        $at, (0x42200000 >> 16)
    /* FB908 800EC958 44819000 */  mtc1       $at, $f18
    /* FB90C 800EC95C E7AA0074 */  swc1       $f10, 0x74($sp)
    /* FB910 800EC960 E7A40088 */  swc1       $f4, 0x88($sp)
    /* FB914 800EC964 E7A60078 */  swc1       $f6, 0x78($sp)
    /* FB918 800EC968 E7A8007C */  swc1       $f8, 0x7C($sp)
    /* FB91C 800EC96C 0C03A9F7 */  jal        func_800EA7DC_F978C
    /* FB920 800EC970 E7B20010 */   swc1      $f18, 0x10($sp)
    /* FB924 800EC974 87A40096 */  lh         $a0, 0x96($sp)
    /* FB928 800EC978 3C018015 */  lui        $at, %hi(D_80157570)
    /* FB92C 800EC97C AC227570 */  sw         $v0, %lo(D_80157570)($at)
    /* FB930 800EC980 04800003 */  bltz       $a0, .L800EC990_FB940
    /* FB934 800EC984 27A50080 */   addiu     $a1, $sp, 0x80
    /* FB938 800EC988 10000002 */  b          .L800EC994_FB944
    /* FB93C 800EC98C 00801825 */   or        $v1, $a0, $zero
  .L800EC990_FB940:
    /* FB940 800EC990 00041823 */  negu       $v1, $a0
  .L800EC994_FB944:
    /* FB944 800EC994 3C198004 */  lui        $t9, %hi(D_8003E820)
    /* FB948 800EC998 0323C821 */  addu       $t9, $t9, $v1
    /* FB94C 800EC99C 9339E820 */  lbu        $t9, %lo(D_8003E820)($t9)
    /* FB950 800EC9A0 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* FB954 800EC9A4 3C098014 */  lui        $t1, %hi(D_8013FC0C)
    /* FB958 800EC9A8 44992000 */  mtc1       $t9, $f4
    /* FB95C 800EC9AC 07210004 */  bgez       $t9, .L800EC9C0_FB970
    /* FB960 800EC9B0 468022A0 */   cvt.s.w   $f10, $f4
    /* FB964 800EC9B4 44813000 */  mtc1       $at, $f6
    /* FB968 800EC9B8 00000000 */  nop
    /* FB96C 800EC9BC 46065280 */  add.s      $f10, $f10, $f6
  .L800EC9C0_FB970:
    /* FB970 800EC9C0 8529FC0C */  lh         $t1, %lo(D_8013FC0C)($t1)
    /* FB974 800EC9C4 3C014274 */  lui        $at, (0x42740000 >> 16)
    /* FB978 800EC9C8 44814000 */  mtc1       $at, $f8
    /* FB97C 800EC9CC 01241023 */  subu       $v0, $t1, $a0
    /* FB980 800EC9D0 04400004 */  bltz       $v0, .L800EC9E4_FB994
    /* FB984 800EC9D4 46085403 */   div.s     $f16, $f10, $f8
    /* FB988 800EC9D8 44829000 */  mtc1       $v0, $f18
    /* FB98C 800EC9DC 10000005 */  b          .L800EC9F4_FB9A4
    /* FB990 800EC9E0 468090A0 */   cvt.s.w   $f2, $f18
  .L800EC9E4_FB994:
    /* FB994 800EC9E4 00025823 */  negu       $t3, $v0
    /* FB998 800EC9E8 448B2000 */  mtc1       $t3, $f4
    /* FB99C 800EC9EC 00000000 */  nop
    /* FB9A0 800EC9F0 468020A0 */  cvt.s.w    $f2, $f4
  .L800EC9F4_FB9A4:
    /* FB9A4 800EC9F4 3C018014 */  lui        $at, %hi(D_8013FC10)
    /* FB9A8 800EC9F8 C420FC10 */  lwc1       $f0, %lo(D_8013FC10)($at)
    /* FB9AC 800EC9FC 44805000 */  mtc1       $zero, $f10
    /* FB9B0 800ECA00 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* FB9B4 800ECA04 4600103C */  c.lt.s     $f2, $f0
    /* FB9B8 800ECA08 00003025 */  or         $a2, $zero, $zero
    /* FB9BC 800ECA0C 4502000A */  bc1fl      .L800ECA38_FB9E8
    /* FB9C0 800ECA10 3C014000 */   lui       $at, (0x40000000 >> 16)
    /* FB9C4 800ECA14 44816000 */  mtc1       $at, $f12
    /* FB9C8 800ECA18 00000000 */  nop
    /* FB9CC 800ECA1C 460C003C */  c.lt.s     $f0, $f12
    /* FB9D0 800ECA20 460C0081 */  sub.s      $f2, $f0, $f12
    /* FB9D4 800ECA24 45020004 */  bc1fl      .L800ECA38_FB9E8
    /* FB9D8 800ECA28 3C014000 */   lui       $at, (0x40000000 >> 16)
    /* FB9DC 800ECA2C 44801000 */  mtc1       $zero, $f2
    /* FB9E0 800ECA30 00000000 */  nop
    /* FB9E4 800ECA34 3C014000 */  lui        $at, (0x40000000 >> 16)
  .L800ECA38_FB9E8:
    /* FB9E8 800ECA38 44817000 */  mtc1       $at, $f14
    /* FB9EC 800ECA3C 3C014044 */  lui        $at, (0x40440000 >> 16)
    /* FB9F0 800ECA40 44815800 */  mtc1       $at, $f11
    /* FB9F4 800ECA44 460011A1 */  cvt.d.s    $f6, $f2
    /* FB9F8 800ECA48 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* FB9FC 800ECA4C 462A3203 */  div.d      $f8, $f6, $f10
    /* FBA00 800ECA50 44819800 */  mtc1       $at, $f19
    /* FBA04 800ECA54 44809000 */  mtc1       $zero, $f18
    /* FBA08 800ECA58 3C018014 */  lui        $at, %hi(D_8013FC0C)
    /* FBA0C 800ECA5C 46324100 */  add.d      $f4, $f8, $f18
    /* FBA10 800ECA60 46202320 */  cvt.s.d    $f12, $f4
    /* FBA14 800ECA64 460C703C */  c.lt.s     $f14, $f12
    /* FBA18 800ECA68 00000000 */  nop
    /* FBA1C 800ECA6C 45000002 */  bc1f       .L800ECA78_FBA28
    /* FBA20 800ECA70 00000000 */   nop
    /* FBA24 800ECA74 46007306 */  mov.s      $f12, $f14
  .L800ECA78_FBA28:
    /* FBA28 800ECA78 A424FC0C */  sh         $a0, %lo(D_8013FC0C)($at)
    /* FBA2C 800ECA7C 3C018014 */  lui        $at, %hi(D_8013FC10)
    /* FBA30 800ECA80 0481001C */  bgez       $a0, .L800ECAF4_FBAA4
    /* FBA34 800ECA84 E422FC10 */   swc1      $f2, %lo(D_8013FC10)($at)
    /* FBA38 800ECA88 3C01C004 */  lui        $at, (0xC0040000 >> 16)
    /* FBA3C 800ECA8C 44815800 */  mtc1       $at, $f11
    /* FBA40 800ECA90 44805000 */  mtc1       $zero, $f10
    /* FBA44 800ECA94 460081A1 */  cvt.d.s    $f6, $f16
    /* FBA48 800ECA98 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* FBA4C 800ECA9C 462A3202 */  mul.d      $f8, $f6, $f10
    /* FBA50 800ECAA0 44819800 */  mtc1       $at, $f19
    /* FBA54 800ECAA4 44809000 */  mtc1       $zero, $f18
    /* FBA58 800ECAA8 3C018014 */  lui        $at, %hi(D_80144480)
    /* FBA5C 800ECAAC D4264480 */  ldc1       $f6, %lo(D_80144480)($at)
    /* FBA60 800ECAB0 3C038015 */  lui        $v1, %hi(D_801575CC)
    /* FBA64 800ECAB4 246375CC */  addiu      $v1, $v1, %lo(D_801575CC)
    /* FBA68 800ECAB8 46324102 */  mul.d      $f4, $f8, $f18
    /* FBA6C 800ECABC 46262283 */  div.d      $f10, $f4, $f6
    /* FBA70 800ECAC0 4620520D */  trunc.w.d  $f8, $f10
    /* FBA74 800ECAC4 440C4000 */  mfc1       $t4, $f8
    /* FBA78 800ECAC8 00000000 */  nop
    /* FBA7C 800ECACC 000C6C00 */  sll        $t5, $t4, 16
    /* FBA80 800ECAD0 000D7403 */  sra        $t6, $t5, 16
    /* FBA84 800ECAD4 448E9000 */  mtc1       $t6, $f18
    /* FBA88 800ECAD8 00000000 */  nop
    /* FBA8C 800ECADC 46809120 */  cvt.s.w    $f4, $f18
    /* FBA90 800ECAE0 460C2182 */  mul.s      $f6, $f4, $f12
    /* FBA94 800ECAE4 4600328D */  trunc.w.s  $f10, $f6
    /* FBA98 800ECAE8 44185000 */  mfc1       $t8, $f10
    /* FBA9C 800ECAEC 1000001C */  b          .L800ECB60_FBB10
    /* FBAA0 800ECAF0 AC780000 */   sw        $t8, 0x0($v1)
  .L800ECAF4_FBAA4:
    /* FBAA4 800ECAF4 3C014004 */  lui        $at, (0x40040000 >> 16)
    /* FBAA8 800ECAF8 44819800 */  mtc1       $at, $f19
    /* FBAAC 800ECAFC 44809000 */  mtc1       $zero, $f18
    /* FBAB0 800ECB00 46008221 */  cvt.d.s    $f8, $f16
    /* FBAB4 800ECB04 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* FBAB8 800ECB08 46324102 */  mul.d      $f4, $f8, $f18
    /* FBABC 800ECB0C 44813800 */  mtc1       $at, $f7
    /* FBAC0 800ECB10 44803000 */  mtc1       $zero, $f6
    /* FBAC4 800ECB14 3C018014 */  lui        $at, %hi(D_80144488)
    /* FBAC8 800ECB18 D4284488 */  ldc1       $f8, %lo(D_80144488)($at)
    /* FBACC 800ECB1C 3C038015 */  lui        $v1, %hi(D_801575CC)
    /* FBAD0 800ECB20 246375CC */  addiu      $v1, $v1, %lo(D_801575CC)
    /* FBAD4 800ECB24 46262282 */  mul.d      $f10, $f4, $f6
    /* FBAD8 800ECB28 46285483 */  div.d      $f18, $f10, $f8
    /* FBADC 800ECB2C 4620910D */  trunc.w.d  $f4, $f18
    /* FBAE0 800ECB30 44092000 */  mfc1       $t1, $f4
    /* FBAE4 800ECB34 00000000 */  nop
    /* FBAE8 800ECB38 00095C00 */  sll        $t3, $t1, 16
    /* FBAEC 800ECB3C 000B5403 */  sra        $t2, $t3, 16
    /* FBAF0 800ECB40 448A3000 */  mtc1       $t2, $f6
    /* FBAF4 800ECB44 00000000 */  nop
    /* FBAF8 800ECB48 468032A0 */  cvt.s.w    $f10, $f6
    /* FBAFC 800ECB4C 460C5202 */  mul.s      $f8, $f10, $f12
    /* FBB00 800ECB50 4600448D */  trunc.w.s  $f18, $f8
    /* FBB04 800ECB54 440D9000 */  mfc1       $t5, $f18
    /* FBB08 800ECB58 00000000 */  nop
    /* FBB0C 800ECB5C AC6D0000 */  sw         $t5, 0x0($v1)
  .L800ECB60_FBB10:
    /* FBB10 800ECB60 3C0E8004 */  lui        $t6, %hi(currentControllerStates)
    /* FBB14 800ECB64 95CE7588 */  lhu        $t6, %lo(currentControllerStates)($t6)
    /* FBB18 800ECB68 31CF8000 */  andi       $t7, $t6, 0x8000
    /* FBB1C 800ECB6C 51E00005 */  beql       $t7, $zero, .L800ECB84_FBB34
    /* FBB20 800ECB70 8609000E */   lh        $t1, 0xE($s0)
    /* FBB24 800ECB74 8C780000 */  lw         $t8, 0x0($v1)
    /* FBB28 800ECB78 0018C840 */  sll        $t9, $t8, 1
    /* FBB2C 800ECB7C AC790000 */  sw         $t9, 0x0($v1)
    /* FBB30 800ECB80 8609000E */  lh         $t1, 0xE($s0)
  .L800ECB84_FBB34:
    /* FBB34 800ECB84 8C6B0000 */  lw         $t3, 0x0($v1)
    /* FBB38 800ECB88 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FBB3C 800ECB8C 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FBB40 800ECB90 012B5021 */  addu       $t2, $t1, $t3
    /* FBB44 800ECB94 A60A000E */  sh         $t2, 0xE($s0)
    /* FBB48 800ECB98 8FAC00C4 */  lw         $t4, 0xC4($sp)
    /* FBB4C 800ECB9C C7A20068 */  lwc1       $f2, 0x68($sp)
    /* FBB50 800ECBA0 95820000 */  lhu        $v0, 0x0($t4)
    /* FBB54 800ECBA4 304D0002 */  andi       $t5, $v0, 0x2
    /* FBB58 800ECBA8 11A00006 */  beqz       $t5, .L800ECBC4_FBB74
    /* FBB5C 800ECBAC 304E0001 */   andi      $t6, $v0, 0x1
    /* FBB60 800ECBB0 44071000 */  mfc1       $a3, $f2
    /* FBB64 800ECBB4 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FBB68 800ECBB8 24050016 */   addiu     $a1, $zero, 0x16
    /* FBB6C 800ECBBC 10000058 */  b          .L800ECD20_FBCD0
    /* FBB70 800ECBC0 00000000 */   nop
  .L800ECBC4_FBB74:
    /* FBB74 800ECBC4 11C0000A */  beqz       $t6, .L800ECBF0_FBBA0
    /* FBB78 800ECBC8 304F0004 */   andi      $t7, $v0, 0x4
    /* FBB7C 800ECBCC C7A20068 */  lwc1       $f2, 0x68($sp)
    /* FBB80 800ECBD0 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FBB84 800ECBD4 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FBB88 800ECBD8 44071000 */  mfc1       $a3, $f2
    /* FBB8C 800ECBDC 24050017 */  addiu      $a1, $zero, 0x17
    /* FBB90 800ECBE0 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FBB94 800ECBE4 00003025 */   or        $a2, $zero, $zero
    /* FBB98 800ECBE8 1000004D */  b          .L800ECD20_FBCD0
    /* FBB9C 800ECBEC 00000000 */   nop
  .L800ECBF0_FBBA0:
    /* FBBA0 800ECBF0 11E0000A */  beqz       $t7, .L800ECC1C_FBBCC
    /* FBBA4 800ECBF4 3C038015 */   lui       $v1, %hi(D_80157A0C)
    /* FBBA8 800ECBF8 C7A20068 */  lwc1       $f2, 0x68($sp)
    /* FBBAC 800ECBFC 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FBBB0 800ECC00 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FBBB4 800ECC04 44071000 */  mfc1       $a3, $f2
    /* FBBB8 800ECC08 24050018 */  addiu      $a1, $zero, 0x18
    /* FBBBC 800ECC0C 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FBBC0 800ECC10 00003025 */   or        $a2, $zero, $zero
    /* FBBC4 800ECC14 10000042 */  b          .L800ECD20_FBCD0
    /* FBBC8 800ECC18 00000000 */   nop
  .L800ECC1C_FBBCC:
    /* FBBCC 800ECC1C 8C637A0C */  lw         $v1, %lo(D_80157A0C)($v1)
    /* FBBD0 800ECC20 24010016 */  addiu      $at, $zero, 0x16
    /* FBBD4 800ECC24 1061003E */  beq        $v1, $at, .L800ECD20_FBCD0
    /* FBBD8 800ECC28 24010017 */   addiu     $at, $zero, 0x17
    /* FBBDC 800ECC2C 1061003C */  beq        $v1, $at, .L800ECD20_FBCD0
    /* FBBE0 800ECC30 24010018 */   addiu     $at, $zero, 0x18
    /* FBBE4 800ECC34 1061003A */  beq        $v1, $at, .L800ECD20_FBCD0
    /* FBBE8 800ECC38 30582000 */   andi      $t8, $v0, 0x2000
    /* FBBEC 800ECC3C 1300001C */  beqz       $t8, .L800ECCB0_FBC60
    /* FBBF0 800ECC40 3C028015 */   lui       $v0, %hi(D_80157A28)
    /* FBBF4 800ECC44 3C198015 */  lui        $t9, %hi(D_801575DC)
    /* FBBF8 800ECC48 8F3975DC */  lw         $t9, %lo(D_801575DC)($t9)
    /* FBBFC 800ECC4C 24427A28 */  addiu      $v0, $v0, %lo(D_80157A28)
    /* FBC00 800ECC50 8C4A0000 */  lw         $t2, 0x0($v0)
    /* FBC04 800ECC54 3C0B8014 */  lui        $t3, %hi(D_8013E460)
    /* FBC08 800ECC58 00194940 */  sll        $t1, $t9, 5
    /* FBC0C 800ECC5C 01695821 */  addu       $t3, $t3, $t1
    /* FBC10 800ECC60 8D6BE460 */  lw         $t3, %lo(D_8013E460)($t3)
    /* FBC14 800ECC64 2401FFF7 */  addiu      $at, $zero, -0x9
    /* FBC18 800ECC68 01416024 */  and        $t4, $t2, $at
    /* FBC1C 800ECC6C AC4C0000 */  sw         $t4, 0x0($v0)
    /* FBC20 800ECC70 02002025 */  or         $a0, $s0, $zero
    /* FBC24 800ECC74 0C03A981 */  jal        func_800EA604_F95B4
    /* FBC28 800ECC78 AFAB00A8 */   sw        $t3, 0xA8($sp)
    /* FBC2C 800ECC7C 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FBC30 800ECC80 44070000 */  mfc1       $a3, $f0
    /* FBC34 800ECC84 8FA500A8 */  lw         $a1, 0xA8($sp)
    /* FBC38 800ECC88 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FBC3C 800ECC8C 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FBC40 800ECC90 00003025 */   or        $a2, $zero, $zero
    /* FBC44 800ECC94 3C028015 */  lui        $v0, %hi(D_80157A28)
    /* FBC48 800ECC98 24427A28 */  addiu      $v0, $v0, %lo(D_80157A28)
    /* FBC4C 800ECC9C 8C4D0000 */  lw         $t5, 0x0($v0)
    /* FBC50 800ECCA0 2401FFFE */  addiu      $at, $zero, -0x2
    /* FBC54 800ECCA4 01A17024 */  and        $t6, $t5, $at
    /* FBC58 800ECCA8 1000001D */  b          .L800ECD20_FBCD0
    /* FBC5C 800ECCAC AC4E0000 */   sw        $t6, 0x0($v0)
  .L800ECCB0_FBC60:
    /* FBC60 800ECCB0 0003C880 */  sll        $t9, $v1, 2
    /* FBC64 800ECCB4 0323C823 */  subu       $t9, $t9, $v1
    /* FBC68 800ECCB8 0019C880 */  sll        $t9, $t9, 2
    /* FBC6C 800ECCBC 0323C821 */  addu       $t9, $t9, $v1
    /* FBC70 800ECCC0 0019C880 */  sll        $t9, $t9, 2
    /* FBC74 800ECCC4 3C098014 */  lui        $t1, %hi(D_8013E5B0)
    /* FBC78 800ECCC8 3C0F8015 */  lui        $t7, %hi(D_80157A28)
    /* FBC7C 800ECCCC 01394821 */  addu       $t1, $t1, $t9
    /* FBC80 800ECCD0 8DEF7A28 */  lw         $t7, %lo(D_80157A28)($t7)
    /* FBC84 800ECCD4 8D29E5B0 */  lw         $t1, %lo(D_8013E5B0)($t1)
    /* FBC88 800ECCD8 3C018015 */  lui        $at, %hi(D_80157A28)
    /* FBC8C 800ECCDC 35F80001 */  ori        $t8, $t7, 0x1
    /* FBC90 800ECCE0 312B0008 */  andi       $t3, $t1, 0x8
    /* FBC94 800ECCE4 1560000E */  bnez       $t3, .L800ECD20_FBCD0
    /* FBC98 800ECCE8 AC387A28 */   sw        $t8, %lo(D_80157A28)($at)
    /* FBC9C 800ECCEC 0C03A981 */  jal        func_800EA604_F95B4
    /* FBCA0 800ECCF0 02002025 */   or        $a0, $s0, $zero
    /* FBCA4 800ECCF4 3C0A8015 */  lui        $t2, %hi(D_801575DC)
    /* FBCA8 800ECCF8 8D4A75DC */  lw         $t2, %lo(D_801575DC)($t2)
    /* FBCAC 800ECCFC 3C058014 */  lui        $a1, %hi(D_8013E45C)
    /* FBCB0 800ECD00 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FBCB4 800ECD04 000A6140 */  sll        $t4, $t2, 5
    /* FBCB8 800ECD08 00AC2821 */  addu       $a1, $a1, $t4
    /* FBCBC 800ECD0C 44070000 */  mfc1       $a3, $f0
    /* FBCC0 800ECD10 8CA5E45C */  lw         $a1, %lo(D_8013E45C)($a1)
    /* FBCC4 800ECD14 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FBCC8 800ECD18 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FBCCC 800ECD1C 00003025 */   or        $a2, $zero, $zero
  .L800ECD20_FBCD0:
    /* FBCD0 800ECD20 3C068015 */  lui        $a2, %hi(D_80157A28)
    /* FBCD4 800ECD24 10000201 */  b          .L800ED52C_FC4DC
    /* FBCD8 800ECD28 8CC67A28 */   lw        $a2, %lo(D_80157A28)($a2)
  .L800ECD2C_FBCDC:
    /* FBCDC 800ECD2C 304D2000 */  andi       $t5, $v0, 0x2000
    /* FBCE0 800ECD30 11A00070 */  beqz       $t5, .L800ECEF4_FBEA4
    /* FBCE4 800ECD34 30CE0004 */   andi      $t6, $a2, 0x4
    /* FBCE8 800ECD38 15C0006E */  bnez       $t6, .L800ECEF4_FBEA4
    /* FBCEC 800ECD3C 3C028016 */   lui       $v0, %hi(D_80159020)
    /* FBCF0 800ECD40 8C429020 */  lw         $v0, %lo(D_80159020)($v0)
    /* FBCF4 800ECD44 27A50080 */  addiu      $a1, $sp, 0x80
    /* FBCF8 800ECD48 02002025 */  or         $a0, $s0, $zero
    /* FBCFC 800ECD4C 844F0000 */  lh         $t7, 0x0($v0)
    /* FBD00 800ECD50 05E10003 */  bgez       $t7, .L800ECD60_FBD10
    /* FBD04 800ECD54 000FC083 */   sra       $t8, $t7, 2
    /* FBD08 800ECD58 25E10003 */  addiu      $at, $t7, 0x3
    /* FBD0C 800ECD5C 0001C083 */  sra        $t8, $at, 2
  .L800ECD60_FBD10:
    /* FBD10 800ECD60 44982000 */  mtc1       $t8, $f4
    /* FBD14 800ECD64 00000000 */  nop
    /* FBD18 800ECD68 468021A0 */  cvt.s.w    $f6, $f4
    /* FBD1C 800ECD6C E7A60080 */  swc1       $f6, 0x80($sp)
    /* FBD20 800ECD70 84590002 */  lh         $t9, 0x2($v0)
    /* FBD24 800ECD74 07210003 */  bgez       $t9, .L800ECD84_FBD34
    /* FBD28 800ECD78 00194883 */   sra       $t1, $t9, 2
    /* FBD2C 800ECD7C 27210003 */  addiu      $at, $t9, 0x3
    /* FBD30 800ECD80 00014883 */  sra        $t1, $at, 2
  .L800ECD84_FBD34:
    /* FBD34 800ECD84 44895000 */  mtc1       $t1, $f10
    /* FBD38 800ECD88 00000000 */  nop
    /* FBD3C 800ECD8C 46805220 */  cvt.s.w    $f8, $f10
    /* FBD40 800ECD90 E7A80084 */  swc1       $f8, 0x84($sp)
    /* FBD44 800ECD94 844B0004 */  lh         $t3, 0x4($v0)
    /* FBD48 800ECD98 05610003 */  bgez       $t3, .L800ECDA8_FBD58
    /* FBD4C 800ECD9C 000B5083 */   sra       $t2, $t3, 2
    /* FBD50 800ECDA0 25610003 */  addiu      $at, $t3, 0x3
    /* FBD54 800ECDA4 00015083 */  sra        $t2, $at, 2
  .L800ECDA8_FBD58:
    /* FBD58 800ECDA8 448A9000 */  mtc1       $t2, $f18
    /* FBD5C 800ECDAC 00000000 */  nop
    /* FBD60 800ECDB0 46809120 */  cvt.s.w    $f4, $f18
    /* FBD64 800ECDB4 0C03A981 */  jal        func_800EA604_F95B4
    /* FBD68 800ECDB8 E7A40088 */   swc1      $f4, 0x88($sp)
    /* FBD6C 800ECDBC 8FAC00C4 */  lw         $t4, 0xC4($sp)
    /* FBD70 800ECDC0 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FBD74 800ECDC4 46000086 */  mov.s      $f2, $f0
    /* FBD78 800ECDC8 95820000 */  lhu        $v0, 0x0($t4)
    /* FBD7C 800ECDCC 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FBD80 800ECDD0 24050016 */  addiu      $a1, $zero, 0x16
    /* FBD84 800ECDD4 304D0002 */  andi       $t5, $v0, 0x2
    /* FBD88 800ECDD8 11A00006 */  beqz       $t5, .L800ECDF4_FBDA4
    /* FBD8C 800ECDDC 304E0001 */   andi      $t6, $v0, 0x1
    /* FBD90 800ECDE0 44070000 */  mfc1       $a3, $f0
    /* FBD94 800ECDE4 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FBD98 800ECDE8 00003025 */   or        $a2, $zero, $zero
    /* FBD9C 800ECDEC 1000003E */  b          .L800ECEE8_FBE98
    /* FBDA0 800ECDF0 00000000 */   nop
  .L800ECDF4_FBDA4:
    /* FBDA4 800ECDF4 11C00009 */  beqz       $t6, .L800ECE1C_FBDCC
    /* FBDA8 800ECDF8 304F0004 */   andi      $t7, $v0, 0x4
    /* FBDAC 800ECDFC 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FBDB0 800ECE00 44071000 */  mfc1       $a3, $f2
    /* FBDB4 800ECE04 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FBDB8 800ECE08 24050017 */  addiu      $a1, $zero, 0x17
    /* FBDBC 800ECE0C 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FBDC0 800ECE10 00003025 */   or        $a2, $zero, $zero
    /* FBDC4 800ECE14 10000034 */  b          .L800ECEE8_FBE98
    /* FBDC8 800ECE18 00000000 */   nop
  .L800ECE1C_FBDCC:
    /* FBDCC 800ECE1C 11E00009 */  beqz       $t7, .L800ECE44_FBDF4
    /* FBDD0 800ECE20 3C038015 */   lui       $v1, %hi(D_80157A0C)
    /* FBDD4 800ECE24 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FBDD8 800ECE28 44071000 */  mfc1       $a3, $f2
    /* FBDDC 800ECE2C 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FBDE0 800ECE30 24050018 */  addiu      $a1, $zero, 0x18
    /* FBDE4 800ECE34 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FBDE8 800ECE38 00003025 */   or        $a2, $zero, $zero
    /* FBDEC 800ECE3C 1000002A */  b          .L800ECEE8_FBE98
    /* FBDF0 800ECE40 00000000 */   nop
  .L800ECE44_FBDF4:
    /* FBDF4 800ECE44 8C637A0C */  lw         $v1, %lo(D_80157A0C)($v1)
    /* FBDF8 800ECE48 24010016 */  addiu      $at, $zero, 0x16
    /* FBDFC 800ECE4C 10610026 */  beq        $v1, $at, .L800ECEE8_FBE98
    /* FBE00 800ECE50 24010017 */   addiu     $at, $zero, 0x17
    /* FBE04 800ECE54 10610024 */  beq        $v1, $at, .L800ECEE8_FBE98
    /* FBE08 800ECE58 24010018 */   addiu     $at, $zero, 0x18
    /* FBE0C 800ECE5C 10610022 */  beq        $v1, $at, .L800ECEE8_FBE98
    /* FBE10 800ECE60 02002025 */   or        $a0, $s0, $zero
    /* FBE14 800ECE64 8FA500C4 */  lw         $a1, 0xC4($sp)
    /* FBE18 800ECE68 0C03AF25 */  jal        func_800EBC94_FAC44
    /* FBE1C 800ECE6C E7A20068 */   swc1      $f2, 0x68($sp)
    /* FBE20 800ECE70 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FBE24 800ECE74 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FBE28 800ECE78 8C98040C */  lw         $t8, 0x40C($a0)
    /* FBE2C 800ECE7C 3C098014 */  lui        $t1, %hi(D_8013E5B0)
    /* FBE30 800ECE80 C7A20068 */  lwc1       $f2, 0x68($sp)
    /* FBE34 800ECE84 0018C880 */  sll        $t9, $t8, 2
    /* FBE38 800ECE88 0338C823 */  subu       $t9, $t9, $t8
    /* FBE3C 800ECE8C 0019C880 */  sll        $t9, $t9, 2
    /* FBE40 800ECE90 0338C821 */  addu       $t9, $t9, $t8
    /* FBE44 800ECE94 0019C880 */  sll        $t9, $t9, 2
    /* FBE48 800ECE98 01394821 */  addu       $t1, $t1, $t9
    /* FBE4C 800ECE9C 8D29E5B0 */  lw         $t1, %lo(D_8013E5B0)($t1)
    /* FBE50 800ECEA0 3C0A8015 */  lui        $t2, %hi(D_801575DC)
    /* FBE54 800ECEA4 3C058014 */  lui        $a1, %hi(D_8013E460)
    /* FBE58 800ECEA8 312B0480 */  andi       $t3, $t1, 0x480
    /* FBE5C 800ECEAC 15600008 */  bnez       $t3, .L800ECED0_FBE80
    /* FBE60 800ECEB0 00000000 */   nop
    /* FBE64 800ECEB4 8D4A75DC */  lw         $t2, %lo(D_801575DC)($t2)
    /* FBE68 800ECEB8 44071000 */  mfc1       $a3, $f2
    /* FBE6C 800ECEBC 00003025 */  or         $a2, $zero, $zero
    /* FBE70 800ECEC0 000A6140 */  sll        $t4, $t2, 5
    /* FBE74 800ECEC4 00AC2821 */  addu       $a1, $a1, $t4
    /* FBE78 800ECEC8 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FBE7C 800ECECC 8CA5E460 */   lw        $a1, %lo(D_8013E460)($a1)
  .L800ECED0_FBE80:
    /* FBE80 800ECED0 3C0D8015 */  lui        $t5, %hi(D_80157A28)
    /* FBE84 800ECED4 8DAD7A28 */  lw         $t5, %lo(D_80157A28)($t5)
    /* FBE88 800ECED8 2401FFFE */  addiu      $at, $zero, -0x2
    /* FBE8C 800ECEDC 01A17024 */  and        $t6, $t5, $at
    /* FBE90 800ECEE0 3C018015 */  lui        $at, %hi(D_80157A28)
    /* FBE94 800ECEE4 AC2E7A28 */  sw         $t6, %lo(D_80157A28)($at)
  .L800ECEE8_FBE98:
    /* FBE98 800ECEE8 3C068015 */  lui        $a2, %hi(D_80157A28)
    /* FBE9C 800ECEEC 1000018F */  b          .L800ED52C_FC4DC
    /* FBEA0 800ECEF0 8CC67A28 */   lw        $a2, %lo(D_80157A28)($a2)
  .L800ECEF4_FBEA4:
    /* FBEA4 800ECEF4 34CF0001 */  ori        $t7, $a2, 0x1
    /* FBEA8 800ECEF8 ACEF0000 */  sw         $t7, 0x0($a3)
    /* FBEAC 800ECEFC A6000022 */  sh         $zero, 0x22($s0)
    /* FBEB0 800ECF00 81020002 */  lb         $v0, 0x2($t0)
    /* FBEB4 800ECF04 81030003 */  lb         $v1, 0x3($t0)
    /* FBEB8 800ECF08 00420019 */  multu      $v0, $v0
    /* FBEBC 800ECF0C 0000C012 */  mflo       $t8
    /* FBEC0 800ECF10 00000000 */  nop
    /* FBEC4 800ECF14 00000000 */  nop
    /* FBEC8 800ECF18 00630019 */  multu      $v1, $v1
    /* FBECC 800ECF1C 0000C812 */  mflo       $t9
    /* FBED0 800ECF20 03194821 */  addu       $t1, $t8, $t9
    /* FBED4 800ECF24 44893000 */  mtc1       $t1, $f6
    /* FBED8 800ECF28 0C007650 */  jal        sqrtf
    /* FBEDC 800ECF2C 46803320 */   cvt.s.w   $f12, $f6
    /* FBEE0 800ECF30 3C018014 */  lui        $at, %hi(D_80144490)
    /* FBEE4 800ECF34 D4284490 */  ldc1       $f8, %lo(D_80144490)($at)
    /* FBEE8 800ECF38 460002A1 */  cvt.d.s    $f10, $f0
    /* FBEEC 800ECF3C 3C014170 */  lui        $at, (0x41700000 >> 16)
    /* FBEF0 800ECF40 46285483 */  div.d      $f18, $f10, $f8
    /* FBEF4 800ECF44 44812000 */  mtc1       $at, $f4
    /* FBEF8 800ECF48 8FAB00C4 */  lw         $t3, 0xC4($sp)
    /* FBEFC 800ECF4C E7A0008C */  swc1       $f0, 0x8C($sp)
    /* FBF00 800ECF50 46209420 */  cvt.s.d    $f16, $f18
    /* FBF04 800ECF54 46048182 */  mul.s      $f6, $f16, $f4
    /* FBF08 800ECF58 E7A600B0 */  swc1       $f6, 0xB0($sp)
    /* FBF0C 800ECF5C 816C0003 */  lb         $t4, 0x3($t3)
    /* FBF10 800ECF60 816A0002 */  lb         $t2, 0x2($t3)
    /* FBF14 800ECF64 E7B00090 */  swc1       $f16, 0x90($sp)
    /* FBF18 800ECF68 000C6823 */  negu       $t5, $t4
    /* FBF1C 800ECF6C 448D4000 */  mtc1       $t5, $f8
    /* FBF20 800ECF70 448A5000 */  mtc1       $t2, $f10
    /* FBF24 800ECF74 468043A0 */  cvt.s.w    $f14, $f8
    /* FBF28 800ECF78 0C000E09 */  jal        func_80003824_4424
    /* FBF2C 800ECF7C 46805320 */   cvt.s.w   $f12, $f10
    /* FBF30 800ECF80 3C038015 */  lui        $v1, %hi(D_80157A0C)
    /* FBF34 800ECF84 8C637A0C */  lw         $v1, %lo(D_80157A0C)($v1)
    /* FBF38 800ECF88 3C0E8015 */  lui        $t6, %hi(D_80157A40)
    /* FBF3C 800ECF8C 85CE7A40 */  lh         $t6, %lo(D_80157A40)($t6)
    /* FBF40 800ECF90 0003C880 */  sll        $t9, $v1, 2
    /* FBF44 800ECF94 0323C823 */  subu       $t9, $t9, $v1
    /* FBF48 800ECF98 0019C880 */  sll        $t9, $t9, 2
    /* FBF4C 800ECF9C 004E4023 */  subu       $t0, $v0, $t6
    /* FBF50 800ECFA0 00087C00 */  sll        $t7, $t0, 16
    /* FBF54 800ECFA4 0323C821 */  addu       $t9, $t9, $v1
    /* FBF58 800ECFA8 000FC403 */  sra        $t8, $t7, 16
    /* FBF5C 800ECFAC 3C018014 */  lui        $at, %hi(D_8013E8FC)
    /* FBF60 800ECFB0 0019C880 */  sll        $t9, $t9, 2
    /* FBF64 800ECFB4 3C098014 */  lui        $t1, %hi(D_8013E5B0)
    /* FBF68 800ECFB8 AC38E8FC */  sw         $t8, %lo(D_8013E8FC)($at)
    /* FBF6C 800ECFBC 01394821 */  addu       $t1, $t1, $t9
    /* FBF70 800ECFC0 8D29E5B0 */  lw         $t1, %lo(D_8013E5B0)($t1)
    /* FBF74 800ECFC4 03004025 */  or         $t0, $t8, $zero
    /* FBF78 800ECFC8 C7B00090 */  lwc1       $f16, 0x90($sp)
    /* FBF7C 800ECFCC 312A0480 */  andi       $t2, $t1, 0x480
    /* FBF80 800ECFD0 1140000C */  beqz       $t2, .L800ED004_FBFB4
    /* FBF84 800ECFD4 3C048015 */   lui       $a0, %hi(D_80157600)
    /* FBF88 800ECFD8 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FBF8C 800ECFDC 24050023 */  addiu      $a1, $zero, 0x23
    /* FBF90 800ECFE0 00003025 */  or         $a2, $zero, $zero
    /* FBF94 800ECFE4 24070000 */  addiu      $a3, $zero, 0x0
    /* FBF98 800ECFE8 A7B80064 */  sh         $t8, 0x64($sp)
    /* FBF9C 800ECFEC 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FBFA0 800ECFF0 E7B00090 */   swc1      $f16, 0x90($sp)
    /* FBFA4 800ECFF4 3C038015 */  lui        $v1, %hi(D_80157A0C)
    /* FBFA8 800ECFF8 8C637A0C */  lw         $v1, %lo(D_80157A0C)($v1)
    /* FBFAC 800ECFFC 87A80064 */  lh         $t0, 0x64($sp)
    /* FBFB0 800ED000 C7B00090 */  lwc1       $f16, 0x90($sp)
  .L800ED004_FBFB4:
    /* FBFB4 800ED004 C7A4008C */  lwc1       $f4, 0x8C($sp)
    /* FBFB8 800ED008 3C014024 */  lui        $at, (0x40240000 >> 16)
    /* FBFBC 800ED00C 44819800 */  mtc1       $at, $f19
    /* FBFC0 800ED010 44809000 */  mtc1       $zero, $f18
    /* FBFC4 800ED014 460021A1 */  cvt.d.s    $f6, $f4
    /* FBFC8 800ED018 24010010 */  addiu      $at, $zero, 0x10
    /* FBFCC 800ED01C 4626903C */  c.lt.d     $f18, $f6
    /* FBFD0 800ED020 00000000 */  nop
    /* FBFD4 800ED024 4502003F */  bc1fl      .L800ED124_FC0D4
    /* FBFD8 800ED028 24010010 */   addiu     $at, $zero, 0x10
    /* FBFDC 800ED02C 5061003D */  beql       $v1, $at, .L800ED124_FC0D4
    /* FBFE0 800ED030 24010010 */   addiu     $at, $zero, 0x10
    /* FBFE4 800ED034 14600023 */  bnez       $v1, .L800ED0C4_FC074
    /* FBFE8 800ED038 3C018014 */   lui       $at, %hi(D_8013FC04)
    /* FBFEC 800ED03C C42AFC04 */  lwc1       $f10, %lo(D_8013FC04)($at)
    /* FBFF0 800ED040 3C018014 */  lui        $at, %hi(D_80144498)
    /* FBFF4 800ED044 D4244498 */  ldc1       $f4, %lo(D_80144498)($at)
    /* FBFF8 800ED048 46005221 */  cvt.d.s    $f8, $f10
    /* FBFFC 800ED04C 3C0B8016 */  lui        $t3, %hi(D_80159320)
    /* FC000 800ED050 4628203E */  c.le.d     $f4, $f8
    /* FC004 800ED054 00000000 */  nop
    /* FC008 800ED058 4502001B */  bc1fl      .L800ED0C8_FC078
    /* FC00C 800ED05C 8FB800C4 */   lw        $t8, 0xC4($sp)
    /* FC010 800ED060 8D6B9320 */  lw         $t3, %lo(D_80159320)($t3)
    /* FC014 800ED064 000B6200 */  sll        $t4, $t3, 8
    /* FC018 800ED068 05820017 */  bltzl      $t4, .L800ED0C8_FC078
    /* FC01C 800ED06C 8FB800C4 */   lw        $t8, 0xC4($sp)
    /* FC020 800ED070 860D000E */  lh         $t5, 0xE($s0)
    /* FC024 800ED074 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FC028 800ED078 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FC02C 800ED07C 01A81023 */  subu       $v0, $t5, $t0
    /* FC030 800ED080 00027400 */  sll        $t6, $v0, 16
    /* FC034 800ED084 000E7C03 */  sra        $t7, $t6, 16
    /* FC038 800ED088 29E14000 */  slti       $at, $t7, 0x4000
    /* FC03C 800ED08C 10200003 */  beqz       $at, .L800ED09C_FC04C
    /* FC040 800ED090 24050010 */   addiu     $a1, $zero, 0x10
    /* FC044 800ED094 29E1C001 */  slti       $at, $t7, -0x3FFF
    /* FC048 800ED098 1020000A */  beqz       $at, .L800ED0C4_FC074
  .L800ED09C_FC04C:
    /* FC04C 800ED09C 00003025 */   or        $a2, $zero, $zero
    /* FC050 800ED0A0 24070000 */  addiu      $a3, $zero, 0x0
    /* FC054 800ED0A4 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FC058 800ED0A8 A7A80064 */   sh        $t0, 0x64($sp)
    /* FC05C 800ED0AC 87A80064 */  lh         $t0, 0x64($sp)
    /* FC060 800ED0B0 3C018014 */  lui        $at, %hi(D_8013E8FC)
    /* FC064 800ED0B4 3C038015 */  lui        $v1, %hi(D_80157A0C)
    /* FC068 800ED0B8 8C637A0C */  lw         $v1, %lo(D_80157A0C)($v1)
    /* FC06C 800ED0BC 10000018 */  b          .L800ED120_FC0D0
    /* FC070 800ED0C0 AC28E8FC */   sw        $t0, %lo(D_8013E8FC)($at)
  .L800ED0C4_FC074:
    /* FC074 800ED0C4 8FB800C4 */  lw         $t8, 0xC4($sp)
  .L800ED0C8_FC078:
    /* FC078 800ED0C8 83090003 */  lb         $t1, 0x3($t8)
    /* FC07C 800ED0CC 83190002 */  lb         $t9, 0x2($t8)
    /* FC080 800ED0D0 E7B00090 */  swc1       $f16, 0x90($sp)
    /* FC084 800ED0D4 00095023 */  negu       $t2, $t1
    /* FC088 800ED0D8 448A3000 */  mtc1       $t2, $f6
    /* FC08C 800ED0DC 44999000 */  mtc1       $t9, $f18
    /* FC090 800ED0E0 A7A80064 */  sh         $t0, 0x64($sp)
    /* FC094 800ED0E4 468033A0 */  cvt.s.w    $f14, $f6
    /* FC098 800ED0E8 0C000E09 */  jal        func_80003824_4424
    /* FC09C 800ED0EC 46809320 */   cvt.s.w   $f12, $f18
    /* FC0A0 800ED0F0 3C0B8015 */  lui        $t3, %hi(D_80157A40)
    /* FC0A4 800ED0F4 856B7A40 */  lh         $t3, %lo(D_80157A40)($t3)
    /* FC0A8 800ED0F8 C7B00090 */  lwc1       $f16, 0x90($sp)
    /* FC0AC 800ED0FC 02002025 */  or         $a0, $s0, $zero
    /* FC0B0 800ED100 004B2823 */  subu       $a1, $v0, $t3
    /* FC0B4 800ED104 00056400 */  sll        $t4, $a1, 16
    /* FC0B8 800ED108 44068000 */  mfc1       $a2, $f16
    /* FC0BC 800ED10C 0C03AA3E */  jal        func_800EA8F8_F98A8
    /* FC0C0 800ED110 000C2C03 */   sra       $a1, $t4, 16
    /* FC0C4 800ED114 3C038015 */  lui        $v1, %hi(D_80157A0C)
    /* FC0C8 800ED118 8C637A0C */  lw         $v1, %lo(D_80157A0C)($v1)
    /* FC0CC 800ED11C 87A80064 */  lh         $t0, 0x64($sp)
  .L800ED120_FC0D0:
    /* FC0D0 800ED120 24010010 */  addiu      $at, $zero, 0x10
  .L800ED124_FC0D4:
    /* FC0D4 800ED124 14610023 */  bne        $v1, $at, .L800ED1B4_FC164
    /* FC0D8 800ED128 2407000A */   addiu     $a3, $zero, 0xA
    /* FC0DC 800ED12C C60A004C */  lwc1       $f10, 0x4C($s0)
    /* FC0E0 800ED130 C6040050 */  lwc1       $f4, 0x50($s0)
    /* FC0E4 800ED134 C6060054 */  lwc1       $f6, 0x54($s0)
    /* FC0E8 800ED138 4600520D */  trunc.w.s  $f8, $f10
    /* FC0EC 800ED13C 240E0002 */  addiu      $t6, $zero, 0x2
    /* FC0F0 800ED140 2419001E */  addiu      $t9, $zero, 0x1E
    /* FC0F4 800ED144 4600248D */  trunc.w.s  $f18, $f4
    /* FC0F8 800ED148 44044000 */  mfc1       $a0, $f8
    /* FC0FC 800ED14C 241800C1 */  addiu      $t8, $zero, 0xC1
    /* FC100 800ED150 4600328D */  trunc.w.s  $f10, $f6
    /* FC104 800ED154 44059000 */  mfc1       $a1, $f18
    /* FC108 800ED158 00047C00 */  sll        $t7, $a0, 16
    /* FC10C 800ED15C 000F2403 */  sra        $a0, $t7, 16
    /* FC110 800ED160 44065000 */  mfc1       $a2, $f10
    /* FC114 800ED164 00054C00 */  sll        $t1, $a1, 16
    /* FC118 800ED168 00092C03 */  sra        $a1, $t1, 16
    /* FC11C 800ED16C 240900B4 */  addiu      $t1, $zero, 0xB4
    /* FC120 800ED170 240F0001 */  addiu      $t7, $zero, 0x1
    /* FC124 800ED174 240A0096 */  addiu      $t2, $zero, 0x96
    /* FC128 800ED178 240B0064 */  addiu      $t3, $zero, 0x64
    /* FC12C 800ED17C 00066400 */  sll        $t4, $a2, 16
    /* FC130 800ED180 000C3403 */  sra        $a2, $t4, 16
    /* FC134 800ED184 AFAB0028 */  sw         $t3, 0x28($sp)
    /* FC138 800ED188 AFAA0024 */  sw         $t2, 0x24($sp)
    /* FC13C 800ED18C AFAF0014 */  sw         $t7, 0x14($sp)
    /* FC140 800ED190 AFA90020 */  sw         $t1, 0x20($sp)
    /* FC144 800ED194 AFB8001C */  sw         $t8, 0x1C($sp)
    /* FC148 800ED198 AFB90018 */  sw         $t9, 0x18($sp)
    /* FC14C 800ED19C AFAE0010 */  sw         $t6, 0x10($sp)
    /* FC150 800ED1A0 0C037A82 */  jal        func_800DEA08_ED9B8
    /* FC154 800ED1A4 A7A80064 */   sh        $t0, 0x64($sp)
    /* FC158 800ED1A8 3C038015 */  lui        $v1, %hi(D_80157A0C)
    /* FC15C 800ED1AC 8C637A0C */  lw         $v1, %lo(D_80157A0C)($v1)
    /* FC160 800ED1B0 87A80064 */  lh         $t0, 0x64($sp)
  .L800ED1B4_FC164:
    /* FC164 800ED1B4 24010010 */  addiu      $at, $zero, 0x10
    /* FC168 800ED1B8 14610038 */  bne        $v1, $at, .L800ED29C_FC24C
    /* FC16C 800ED1BC 00000000 */   nop
    /* FC170 800ED1C0 860C000E */  lh         $t4, 0xE($s0)
    /* FC174 800ED1C4 010C2023 */  subu       $a0, $t0, $t4
    /* FC178 800ED1C8 0481001B */  bgez       $a0, .L800ED238_FC1E8
    /* FC17C 800ED1CC 00000000 */   nop
    /* FC180 800ED1D0 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FC184 800ED1D4 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FC188 800ED1D8 0C03AE6D */  jal        func_800EB9B4_FA964
    /* FC18C 800ED1DC A7A80064 */   sh        $t0, 0x64($sp)
    /* FC190 800ED1E0 44824000 */  mtc1       $v0, $f8
    /* FC194 800ED1E4 3C01401C */  lui        $at, (0x401C0000 >> 16)
    /* FC198 800ED1E8 44813800 */  mtc1       $at, $f7
    /* FC19C 800ED1EC 46804120 */  cvt.s.w    $f4, $f8
    /* FC1A0 800ED1F0 44803000 */  mtc1       $zero, $f6
    /* FC1A4 800ED1F4 87A80064 */  lh         $t0, 0x64($sp)
    /* FC1A8 800ED1F8 8603000E */  lh         $v1, 0xE($s0)
    /* FC1AC 800ED1FC 460024A1 */  cvt.d.s    $f18, $f4
    /* FC1B0 800ED200 01036823 */  subu       $t5, $t0, $v1
    /* FC1B4 800ED204 46269283 */  div.d      $f10, $f18, $f6
    /* FC1B8 800ED208 448D4000 */  mtc1       $t5, $f8
    /* FC1BC 800ED20C 44833000 */  mtc1       $v1, $f6
    /* FC1C0 800ED210 46804121 */  cvt.d.w    $f4, $f8
    /* FC1C4 800ED214 46803221 */  cvt.d.w    $f8, $f6
    /* FC1C8 800ED218 462A2482 */  mul.d      $f18, $f4, $f10
    /* FC1CC 800ED21C 46324100 */  add.d      $f4, $f8, $f18
    /* FC1D0 800ED220 4620228D */  trunc.w.d  $f10, $f4
    /* FC1D4 800ED224 440F5000 */  mfc1       $t7, $f10
    /* FC1D8 800ED228 00000000 */  nop
    /* FC1DC 800ED22C A60F000E */  sh         $t7, 0xE($s0)
    /* FC1E0 800ED230 8619000E */  lh         $t9, 0xE($s0)
    /* FC1E4 800ED234 01192023 */  subu       $a0, $t0, $t9
  .L800ED238_FC1E8:
    /* FC1E8 800ED238 18800018 */  blez       $a0, .L800ED29C_FC24C
    /* FC1EC 800ED23C 3C048015 */   lui       $a0, %hi(D_80157600)
    /* FC1F0 800ED240 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FC1F4 800ED244 0C03AE6D */  jal        func_800EB9B4_FA964
    /* FC1F8 800ED248 A7A80064 */   sh        $t0, 0x64($sp)
    /* FC1FC 800ED24C 44823000 */  mtc1       $v0, $f6
    /* FC200 800ED250 3C01401C */  lui        $at, (0x401C0000 >> 16)
    /* FC204 800ED254 44812800 */  mtc1       $at, $f5
    /* FC208 800ED258 46803220 */  cvt.s.w    $f8, $f6
    /* FC20C 800ED25C 44802000 */  mtc1       $zero, $f4
    /* FC210 800ED260 87A80064 */  lh         $t0, 0x64($sp)
    /* FC214 800ED264 8603000E */  lh         $v1, 0xE($s0)
    /* FC218 800ED268 460044A1 */  cvt.d.s    $f18, $f8
    /* FC21C 800ED26C 0103C023 */  subu       $t8, $t0, $v1
    /* FC220 800ED270 46249283 */  div.d      $f10, $f18, $f4
    /* FC224 800ED274 44983000 */  mtc1       $t8, $f6
    /* FC228 800ED278 44832000 */  mtc1       $v1, $f4
    /* FC22C 800ED27C 46803221 */  cvt.d.w    $f8, $f6
    /* FC230 800ED280 468021A1 */  cvt.d.w    $f6, $f4
    /* FC234 800ED284 462A4482 */  mul.d      $f18, $f8, $f10
    /* FC238 800ED288 46323201 */  sub.d      $f8, $f6, $f18
    /* FC23C 800ED28C 4620428D */  trunc.w.d  $f10, $f8
    /* FC240 800ED290 440A5000 */  mfc1       $t2, $f10
    /* FC244 800ED294 00000000 */  nop
    /* FC248 800ED298 A60A000E */  sh         $t2, 0xE($s0)
  .L800ED29C_FC24C:
    /* FC24C 800ED29C 3C0B8015 */  lui        $t3, %hi(D_80157A0C)
    /* FC250 800ED2A0 8D6B7A0C */  lw         $t3, %lo(D_80157A0C)($t3)
    /* FC254 800ED2A4 3C028014 */  lui        $v0, %hi(D_8013E5B0)
    /* FC258 800ED2A8 02002025 */  or         $a0, $s0, $zero
    /* FC25C 800ED2AC 000B6080 */  sll        $t4, $t3, 2
    /* FC260 800ED2B0 018B6023 */  subu       $t4, $t4, $t3
    /* FC264 800ED2B4 000C6080 */  sll        $t4, $t4, 2
    /* FC268 800ED2B8 018B6021 */  addu       $t4, $t4, $t3
    /* FC26C 800ED2BC 000C6080 */  sll        $t4, $t4, 2
    /* FC270 800ED2C0 004C1021 */  addu       $v0, $v0, $t4
    /* FC274 800ED2C4 8C42E5B0 */  lw         $v0, %lo(D_8013E5B0)($v0)
    /* FC278 800ED2C8 304D0100 */  andi       $t5, $v0, 0x100
    /* FC27C 800ED2CC 11A00004 */  beqz       $t5, .L800ED2E0_FC290
    /* FC280 800ED2D0 304E0800 */   andi      $t6, $v0, 0x800
    /* FC284 800ED2D4 44802000 */  mtc1       $zero, $f4
    /* FC288 800ED2D8 00000000 */  nop
    /* FC28C 800ED2DC E7A400B0 */  swc1       $f4, 0xB0($sp)
  .L800ED2E0_FC290:
    /* FC290 800ED2E0 15C00003 */  bnez       $t6, .L800ED2F0_FC2A0
    /* FC294 800ED2E4 00000000 */   nop
    /* FC298 800ED2E8 0C03ED0C */  jal        func_800FB430_10A3E0
    /* FC29C 800ED2EC 8FA500B0 */   lw        $a1, 0xB0($sp)
  .L800ED2F0_FC2A0:
    /* FC2A0 800ED2F0 3C0F8015 */  lui        $t7, %hi(D_80157A28)
    /* FC2A4 800ED2F4 8DEF7A28 */  lw         $t7, %lo(D_80157A28)($t7)
    /* FC2A8 800ED2F8 31F90004 */  andi       $t9, $t7, 0x4
    /* FC2AC 800ED2FC 1320005B */  beqz       $t9, .L800ED46C_FC41C
    /* FC2B0 800ED300 00000000 */   nop
    /* FC2B4 800ED304 96180020 */  lhu        $t8, 0x20($s0)
    /* FC2B8 800ED308 3C0B8022 */  lui        $t3, %hi(D_80222A70)
    /* FC2BC 800ED30C 3C0D8022 */  lui        $t5, %hi(D_80222A70)
    /* FC2C0 800ED310 33090002 */  andi       $t1, $t8, 0x2
    /* FC2C4 800ED314 15200007 */  bnez       $t1, .L800ED334_FC2E4
    /* FC2C8 800ED318 00000000 */   nop
    /* FC2CC 800ED31C 8D6B2A70 */  lw         $t3, %lo(D_80222A70)($t3)
    /* FC2D0 800ED320 860A0002 */  lh         $t2, 0x2($s0)
    /* FC2D4 800ED324 256CFFDC */  addiu      $t4, $t3, -0x24
    /* FC2D8 800ED328 018A082A */  slt        $at, $t4, $t2
    /* FC2DC 800ED32C 14200006 */  bnez       $at, .L800ED348_FC2F8
    /* FC2E0 800ED330 00000000 */   nop
  .L800ED334_FC2E4:
    /* FC2E4 800ED334 8DAD2A70 */  lw         $t5, %lo(D_80222A70)($t5)
    /* FC2E8 800ED338 860E0002 */  lh         $t6, 0x2($s0)
    /* FC2EC 800ED33C 01AE082A */  slt        $at, $t5, $t6
    /* FC2F0 800ED340 1020004A */  beqz       $at, .L800ED46C_FC41C
    /* FC2F4 800ED344 00000000 */   nop
  .L800ED348_FC2F8:
    /* FC2F8 800ED348 0C007654 */  jal        coss
    /* FC2FC 800ED34C 9604000E */   lhu       $a0, 0xE($s0)
    /* FC300 800ED350 44823000 */  mtc1       $v0, $f6
    /* FC304 800ED354 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* FC308 800ED358 44815800 */  mtc1       $at, $f11
    /* FC30C 800ED35C 468034A0 */  cvt.s.w    $f18, $f6
    /* FC310 800ED360 44805000 */  mtc1       $zero, $f10
    /* FC314 800ED364 3C014030 */  lui        $at, (0x40300000 >> 16)
    /* FC318 800ED368 44813800 */  mtc1       $at, $f7
    /* FC31C 800ED36C 44803000 */  mtc1       $zero, $f6
    /* FC320 800ED370 860F0000 */  lh         $t7, 0x0($s0)
    /* FC324 800ED374 46009221 */  cvt.d.s    $f8, $f18
    /* FC328 800ED378 3C018015 */  lui        $at, %hi(D_801575C0)
    /* FC32C 800ED37C 462A4103 */  div.d      $f4, $f8, $f10
    /* FC330 800ED380 448F4000 */  mtc1       $t7, $f8
    /* FC334 800ED384 00000000 */  nop
    /* FC338 800ED388 468042A1 */  cvt.d.w    $f10, $f8
    /* FC33C 800ED38C 46262482 */  mul.d      $f18, $f4, $f6
    /* FC340 800ED390 46325101 */  sub.d      $f4, $f10, $f18
    /* FC344 800ED394 4620218D */  trunc.w.d  $f6, $f4
    /* FC348 800ED398 44183000 */  mfc1       $t8, $f6
    /* FC34C 800ED39C 00000000 */  nop
    /* FC350 800ED3A0 A43875C0 */  sh         $t8, %lo(D_801575C0)($at)
    /* FC354 800ED3A4 0C007660 */  jal        sins
    /* FC358 800ED3A8 9604000E */   lhu       $a0, 0xE($s0)
    /* FC35C 800ED3AC 44824000 */  mtc1       $v0, $f8
    /* FC360 800ED3B0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* FC364 800ED3B4 44812800 */  mtc1       $at, $f5
    /* FC368 800ED3B8 468042A0 */  cvt.s.w    $f10, $f8
    /* FC36C 800ED3BC 44802000 */  mtc1       $zero, $f4
    /* FC370 800ED3C0 3C014030 */  lui        $at, (0x40300000 >> 16)
    /* FC374 800ED3C4 44814800 */  mtc1       $at, $f9
    /* FC378 800ED3C8 44804000 */  mtc1       $zero, $f8
    /* FC37C 800ED3CC 86090004 */  lh         $t1, 0x4($s0)
    /* FC380 800ED3D0 460054A1 */  cvt.d.s    $f18, $f10
    /* FC384 800ED3D4 3C018015 */  lui        $at, %hi(D_801575C2)
    /* FC388 800ED3D8 46249183 */  div.d      $f6, $f18, $f4
    /* FC38C 800ED3DC 44899000 */  mtc1       $t1, $f18
    /* FC390 800ED3E0 3C048015 */  lui        $a0, %hi(D_801575C0)
    /* FC394 800ED3E4 848475C0 */  lh         $a0, %lo(D_801575C0)($a0)
    /* FC398 800ED3E8 46809121 */  cvt.d.w    $f4, $f18
    /* FC39C 800ED3EC 46283282 */  mul.d      $f10, $f6, $f8
    /* FC3A0 800ED3F0 462A2181 */  sub.d      $f6, $f4, $f10
    /* FC3A4 800ED3F4 4620320D */  trunc.w.d  $f8, $f6
    /* FC3A8 800ED3F8 44054000 */  mfc1       $a1, $f8
    /* FC3AC 800ED3FC 00000000 */  nop
    /* FC3B0 800ED400 00055400 */  sll        $t2, $a1, 16
    /* FC3B4 800ED404 000A2C03 */  sra        $a1, $t2, 16
    /* FC3B8 800ED408 0C02E134 */  jal        func_800B84D0_C7480
    /* FC3BC 800ED40C A42575C2 */   sh        $a1, %lo(D_801575C2)($at)
    /* FC3C0 800ED410 3C198022 */  lui        $t9, %hi(D_80222A70)
    /* FC3C4 800ED414 8F392A70 */  lw         $t9, %lo(D_80222A70)($t9)
    /* FC3C8 800ED418 00026A03 */  sra        $t5, $v0, 8
    /* FC3CC 800ED41C 000D7400 */  sll        $t6, $t5, 16
    /* FC3D0 800ED420 000E7C03 */  sra        $t7, $t6, 16
    /* FC3D4 800ED424 2738FFDC */  addiu      $t8, $t9, -0x24
    /* FC3D8 800ED428 030F082A */  slt        $at, $t8, $t7
    /* FC3DC 800ED42C 1020000F */  beqz       $at, .L800ED46C_FC41C
    /* FC3E0 800ED430 00000000 */   nop
    /* FC3E4 800ED434 0C03AC24 */  jal        func_800EB090_FA040
    /* FC3E8 800ED438 00000000 */   nop
    /* FC3EC 800ED43C 96090020 */  lhu        $t1, 0x20($s0)
    /* FC3F0 800ED440 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FC3F4 800ED444 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FC3F8 800ED448 312B0002 */  andi       $t3, $t1, 0x2
    /* FC3FC 800ED44C 15600007 */  bnez       $t3, .L800ED46C_FC41C
    /* FC400 800ED450 24050004 */   addiu     $a1, $zero, 0x4
    /* FC404 800ED454 00003025 */  or         $a2, $zero, $zero
    /* FC408 800ED458 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FC40C 800ED45C 24070000 */   addiu     $a3, $zero, 0x0
    /* FC410 800ED460 3C048014 */  lui        $a0, %hi(D_80144370)
    /* FC414 800ED464 0C00731B */  jal        osSyncPrintf
    /* FC418 800ED468 24844370 */   addiu     $a0, $a0, %lo(D_80144370)
  .L800ED46C_FC41C:
    /* FC41C 800ED46C 3C0A8015 */  lui        $t2, %hi(D_80157A0C)
    /* FC420 800ED470 8D4A7A0C */  lw         $t2, %lo(D_80157A0C)($t2)
    /* FC424 800ED474 24010005 */  addiu      $at, $zero, 0x5
    /* FC428 800ED478 15410009 */  bne        $t2, $at, .L800ED4A0_FC450
    /* FC42C 800ED47C 00000000 */   nop
    /* FC430 800ED480 860C0012 */  lh         $t4, 0x12($s0)
    /* FC434 800ED484 02002025 */  or         $a0, $s0, $zero
    /* FC438 800ED488 000C6943 */  sra        $t5, $t4, 5
    /* FC43C 800ED48C 29A1000A */  slti       $at, $t5, 0xA
    /* FC440 800ED490 10200003 */  beqz       $at, .L800ED4A0_FC450
    /* FC444 800ED494 00000000 */   nop
    /* FC448 800ED498 0C03ED0C */  jal        func_800FB430_10A3E0
    /* FC44C 800ED49C 3C0541A0 */   lui       $a1, (0x41A00000 >> 16)
  .L800ED4A0_FC450:
    /* FC450 800ED4A0 3C068015 */  lui        $a2, %hi(D_80157A28)
    /* FC454 800ED4A4 8CC67A28 */  lw         $a2, %lo(D_80157A28)($a2)
    /* FC458 800ED4A8 24010004 */  addiu      $at, $zero, 0x4
    /* FC45C 800ED4AC 3C038015 */  lui        $v1, %hi(D_80157A0C)
    /* FC460 800ED4B0 30CE0004 */  andi       $t6, $a2, 0x4
    /* FC464 800ED4B4 15C1001D */  bne        $t6, $at, .L800ED52C_FC4DC
    /* FC468 800ED4B8 00000000 */   nop
    /* FC46C 800ED4BC 8C637A0C */  lw         $v1, %lo(D_80157A0C)($v1)
    /* FC470 800ED4C0 24010005 */  addiu      $at, $zero, 0x5
    /* FC474 800ED4C4 10610019 */  beq        $v1, $at, .L800ED52C_FC4DC
    /* FC478 800ED4C8 24010002 */   addiu     $at, $zero, 0x2
    /* FC47C 800ED4CC 14610013 */  bne        $v1, $at, .L800ED51C_FC4CC
    /* FC480 800ED4D0 02002025 */   or        $a0, $s0, $zero
    /* FC484 800ED4D4 02002025 */  or         $a0, $s0, $zero
    /* FC488 800ED4D8 0C03ED0C */  jal        func_800FB430_10A3E0
    /* FC48C 800ED4DC 3C0540A0 */   lui       $a1, (0x40A00000 >> 16)
    /* FC490 800ED4E0 3C058005 */  lui        $a1, %hi(D_80052A8C)
    /* FC494 800ED4E4 8CA52A8C */  lw         $a1, %lo(D_80052A8C)($a1)
    /* FC498 800ED4E8 86090004 */  lh         $t1, 0x4($s0)
    /* FC49C 800ED4EC 86060000 */  lh         $a2, 0x0($s0)
    /* FC4A0 800ED4F0 30B90001 */  andi       $t9, $a1, 0x1
    /* FC4A4 800ED4F4 272500A0 */  addiu      $a1, $t9, 0xA0
    /* FC4A8 800ED4F8 00057C00 */  sll        $t7, $a1, 16
    /* FC4AC 800ED4FC 86070002 */  lh         $a3, 0x2($s0)
    /* FC4B0 800ED500 000F2C03 */  sra        $a1, $t7, 16
    /* FC4B4 800ED504 02002025 */  or         $a0, $s0, $zero
    /* FC4B8 800ED508 0C04DC4C */  jal        func_80137130_1460E0
    /* FC4BC 800ED50C AFA90010 */   sw        $t1, 0x10($sp)
    /* FC4C0 800ED510 3C068015 */  lui        $a2, %hi(D_80157A28)
    /* FC4C4 800ED514 10000005 */  b          .L800ED52C_FC4DC
    /* FC4C8 800ED518 8CC67A28 */   lw        $a2, %lo(D_80157A28)($a2)
  .L800ED51C_FC4CC:
    /* FC4CC 800ED51C 0C03ED0C */  jal        func_800FB430_10A3E0
    /* FC4D0 800ED520 24050000 */   addiu     $a1, $zero, 0x0
    /* FC4D4 800ED524 3C068015 */  lui        $a2, %hi(D_80157A28)
    /* FC4D8 800ED528 8CC67A28 */  lw         $a2, %lo(D_80157A28)($a2)
  .L800ED52C_FC4DC:
    /* FC4DC 800ED52C 0C004DFC */  jal        func_800137F0_143F0
    /* FC4E0 800ED530 00C02025 */   or        $a0, $a2, $zero
    /* FC4E4 800ED534 02002025 */  or         $a0, $s0, $zero
    /* FC4E8 800ED538 0C03B5E3 */  jal        func_800ED78C_FC73C
    /* FC4EC 800ED53C 8FA500C4 */   lw        $a1, 0xC4($sp)
    /* FC4F0 800ED540 860B000E */  lh         $t3, 0xE($s0)
  .L800ED544_FC4F4:
    /* FC4F4 800ED544 A60B0006 */  sh         $t3, 0x6($s0)
    /* FC4F8 800ED548 8FBF003C */  lw         $ra, 0x3C($sp)
    /* FC4FC 800ED54C 8FB00038 */  lw         $s0, 0x38($sp)
    /* FC500 800ED550 27BD00C0 */  addiu      $sp, $sp, 0xC0
    /* FC504 800ED554 03E00008 */  jr         $ra
    /* FC508 800ED558 00000000 */   nop
endlabel func_800EC484_FB434
