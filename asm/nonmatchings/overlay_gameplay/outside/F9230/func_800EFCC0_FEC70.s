nonmatching func_800EFCC0_FEC70, 0x190

glabel func_800EFCC0_FEC70
    /* FEC70 800EFCC0 24060001 */  addiu      $a2, $zero, 0x1
    /* FEC74 800EFCC4 24020005 */  addiu      $v0, $zero, 0x5
    /* FEC78 800EFCC8 10C0001A */  beqz       $a2, .L800EFD34_FECE4
    /* FEC7C 800EFCCC 00001825 */   or        $v1, $zero, $zero
    /* FEC80 800EFCD0 00007080 */  sll        $t6, $zero, 2
    /* FEC84 800EFCD4 01C07023 */  subu       $t6, $t6, $zero
    /* FEC88 800EFCD8 3C0F8015 */  lui        $t7, %hi(D_80157E90)
    /* FEC8C 800EFCDC 25EF7E90 */  addiu      $t7, $t7, %lo(D_80157E90)
    /* FEC90 800EFCE0 000E70C0 */  sll        $t6, $t6, 3
    /* FEC94 800EFCE4 01CF2821 */  addu       $a1, $t6, $t7
    /* FEC98 800EFCE8 24060001 */  addiu      $a2, $zero, 0x1
  .L800EFCEC_FEC9C:
    /* FEC9C 800EFCEC 8CA10000 */  lw         $at, 0x0($a1)
    /* FECA0 800EFCF0 24630001 */  addiu      $v1, $v1, 0x1
    /* FECA4 800EFCF4 24840018 */  addiu      $a0, $a0, 0x18
    /* FECA8 800EFCF8 AC81FFE8 */  sw         $at, -0x18($a0)
    /* FECAC 800EFCFC 8CB90004 */  lw         $t9, 0x4($a1)
    /* FECB0 800EFD00 24A50018 */  addiu      $a1, $a1, 0x18
    /* FECB4 800EFD04 AC99FFEC */  sw         $t9, -0x14($a0)
    /* FECB8 800EFD08 8CA1FFF0 */  lw         $at, -0x10($a1)
    /* FECBC 800EFD0C AC81FFF0 */  sw         $at, -0x10($a0)
    /* FECC0 800EFD10 8CB9FFF4 */  lw         $t9, -0xC($a1)
    /* FECC4 800EFD14 AC99FFF4 */  sw         $t9, -0xC($a0)
    /* FECC8 800EFD18 8CA1FFF8 */  lw         $at, -0x8($a1)
    /* FECCC 800EFD1C AC81FFF8 */  sw         $at, -0x8($a0)
    /* FECD0 800EFD20 8CB9FFFC */  lw         $t9, -0x4($a1)
    /* FECD4 800EFD24 14C3FFF1 */  bne        $a2, $v1, .L800EFCEC_FEC9C
    /* FECD8 800EFD28 AC99FFFC */   sw        $t9, -0x4($a0)
    /* FECDC 800EFD2C 24010005 */  addiu      $at, $zero, 0x5
    /* FECE0 800EFD30 10610045 */  beq        $v1, $at, .L800EFE48_FEDF8
  .L800EFD34_FECE4:
    /* FECE4 800EFD34 00035080 */   sll       $t2, $v1, 2
    /* FECE8 800EFD38 01435023 */  subu       $t2, $t2, $v1
    /* FECEC 800EFD3C 3C0B8015 */  lui        $t3, %hi(D_80157E90)
    /* FECF0 800EFD40 256B7E90 */  addiu      $t3, $t3, %lo(D_80157E90)
    /* FECF4 800EFD44 000A50C0 */  sll        $t2, $t2, 3
    /* FECF8 800EFD48 014B2821 */  addu       $a1, $t2, $t3
    /* FECFC 800EFD4C 00026080 */  sll        $t4, $v0, 2
    /* FED00 800EFD50 01826023 */  subu       $t4, $t4, $v0
    /* FED04 800EFD54 3C0D8015 */  lui        $t5, %hi(D_80157ED8)
    /* FED08 800EFD58 25AD7ED8 */  addiu      $t5, $t5, %lo(D_80157ED8)
    /* FED0C 800EFD5C 000C60C0 */  sll        $t4, $t4, 3
    /* FED10 800EFD60 018D4821 */  addu       $t1, $t4, $t5
    /* FED14 800EFD64 24A60018 */  addiu      $a2, $a1, 0x18
    /* FED18 800EFD68 24A70030 */  addiu      $a3, $a1, 0x30
    /* FED1C 800EFD6C 24A80048 */  addiu      $t0, $a1, 0x48
  .L800EFD70_FED20:
    /* FED20 800EFD70 8CA10000 */  lw         $at, 0x0($a1)
    /* FED24 800EFD74 25080060 */  addiu      $t0, $t0, 0x60
    /* FED28 800EFD78 24840060 */  addiu      $a0, $a0, 0x60
    /* FED2C 800EFD7C AC81FFA0 */  sw         $at, -0x60($a0)
    /* FED30 800EFD80 8CAF0004 */  lw         $t7, 0x4($a1)
    /* FED34 800EFD84 24A50060 */  addiu      $a1, $a1, 0x60
    /* FED38 800EFD88 24C60060 */  addiu      $a2, $a2, 0x60
    /* FED3C 800EFD8C AC8FFFA4 */  sw         $t7, -0x5C($a0)
    /* FED40 800EFD90 8CA1FFA8 */  lw         $at, -0x58($a1)
    /* FED44 800EFD94 24E70060 */  addiu      $a3, $a3, 0x60
    /* FED48 800EFD98 AC81FFA8 */  sw         $at, -0x58($a0)
    /* FED4C 800EFD9C 8CAFFFAC */  lw         $t7, -0x54($a1)
    /* FED50 800EFDA0 AC8FFFAC */  sw         $t7, -0x54($a0)
    /* FED54 800EFDA4 8CA1FFB0 */  lw         $at, -0x50($a1)
    /* FED58 800EFDA8 AC81FFB0 */  sw         $at, -0x50($a0)
    /* FED5C 800EFDAC 8CAFFFB4 */  lw         $t7, -0x4C($a1)
    /* FED60 800EFDB0 AC8FFFB4 */  sw         $t7, -0x4C($a0)
    /* FED64 800EFDB4 8CC1FFA0 */  lw         $at, -0x60($a2)
    /* FED68 800EFDB8 AC81FFB8 */  sw         $at, -0x48($a0)
    /* FED6C 800EFDBC 8CD9FFA4 */  lw         $t9, -0x5C($a2)
    /* FED70 800EFDC0 AC99FFBC */  sw         $t9, -0x44($a0)
    /* FED74 800EFDC4 8CC1FFA8 */  lw         $at, -0x58($a2)
    /* FED78 800EFDC8 AC81FFC0 */  sw         $at, -0x40($a0)
    /* FED7C 800EFDCC 8CD9FFAC */  lw         $t9, -0x54($a2)
    /* FED80 800EFDD0 AC99FFC4 */  sw         $t9, -0x3C($a0)
    /* FED84 800EFDD4 8CC1FFB0 */  lw         $at, -0x50($a2)
    /* FED88 800EFDD8 AC81FFC8 */  sw         $at, -0x38($a0)
    /* FED8C 800EFDDC 8CD9FFB4 */  lw         $t9, -0x4C($a2)
    /* FED90 800EFDE0 AC99FFCC */  sw         $t9, -0x34($a0)
    /* FED94 800EFDE4 8CE1FFA0 */  lw         $at, -0x60($a3)
    /* FED98 800EFDE8 AC81FFD0 */  sw         $at, -0x30($a0)
    /* FED9C 800EFDEC 8CEBFFA4 */  lw         $t3, -0x5C($a3)
    /* FEDA0 800EFDF0 AC8BFFD4 */  sw         $t3, -0x2C($a0)
    /* FEDA4 800EFDF4 8CE1FFA8 */  lw         $at, -0x58($a3)
    /* FEDA8 800EFDF8 AC81FFD8 */  sw         $at, -0x28($a0)
    /* FEDAC 800EFDFC 8CEBFFAC */  lw         $t3, -0x54($a3)
    /* FEDB0 800EFE00 AC8BFFDC */  sw         $t3, -0x24($a0)
    /* FEDB4 800EFE04 8CE1FFB0 */  lw         $at, -0x50($a3)
    /* FEDB8 800EFE08 AC81FFE0 */  sw         $at, -0x20($a0)
    /* FEDBC 800EFE0C 8CEBFFB4 */  lw         $t3, -0x4C($a3)
    /* FEDC0 800EFE10 AC8BFFE4 */  sw         $t3, -0x1C($a0)
    /* FEDC4 800EFE14 8D01FFA0 */  lw         $at, -0x60($t0)
    /* FEDC8 800EFE18 AC81FFE8 */  sw         $at, -0x18($a0)
    /* FEDCC 800EFE1C 8D0DFFA4 */  lw         $t5, -0x5C($t0)
    /* FEDD0 800EFE20 AC8DFFEC */  sw         $t5, -0x14($a0)
    /* FEDD4 800EFE24 8D01FFA8 */  lw         $at, -0x58($t0)
    /* FEDD8 800EFE28 AC81FFF0 */  sw         $at, -0x10($a0)
    /* FEDDC 800EFE2C 8D0DFFAC */  lw         $t5, -0x54($t0)
    /* FEDE0 800EFE30 AC8DFFF4 */  sw         $t5, -0xC($a0)
    /* FEDE4 800EFE34 8D01FFB0 */  lw         $at, -0x50($t0)
    /* FEDE8 800EFE38 AC81FFF8 */  sw         $at, -0x8($a0)
    /* FEDEC 800EFE3C 8D0DFFB4 */  lw         $t5, -0x4C($t0)
    /* FEDF0 800EFE40 1509FFCB */  bne        $t0, $t1, .L800EFD70_FED20
    /* FEDF4 800EFE44 AC8DFFFC */   sw        $t5, -0x4($a0)
  .L800EFE48_FEDF8:
    /* FEDF8 800EFE48 03E00008 */  jr         $ra
    /* FEDFC 800EFE4C 24020005 */   addiu     $v0, $zero, 0x5
endlabel func_800EFCC0_FEC70
