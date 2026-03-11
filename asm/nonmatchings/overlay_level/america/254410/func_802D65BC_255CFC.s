nonmatching func_802D65BC_255CFC, 0xC8

glabel func_802D65BC_255CFC
    /* 255CFC 802D65BC 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 255D00 802D65C0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 255D04 802D65C4 AFA40028 */  sw         $a0, 0x28($sp)
    /* 255D08 802D65C8 0C02451C */  jal        func_80091470_A0420
    /* 255D0C 802D65CC 93A4002B */   lbu       $a0, 0x2B($sp)
    /* 255D10 802D65D0 93A5002B */  lbu        $a1, 0x2B($sp)
    /* 255D14 802D65D4 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 255D18 802D65D8 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 255D1C 802D65DC 00057080 */  sll        $t6, $a1, 2
    /* 255D20 802D65E0 01C57021 */  addu       $t6, $t6, $a1
    /* 255D24 802D65E4 000E7100 */  sll        $t6, $t6, 4
    /* 255D28 802D65E8 01CF1821 */  addu       $v1, $t6, $t7
    /* 255D2C 802D65EC 8C640020 */  lw         $a0, 0x20($v1)
    /* 255D30 802D65F0 30984000 */  andi       $t8, $a0, 0x4000
    /* 255D34 802D65F4 57000008 */  bnel       $t8, $zero, .L802D6618_255D58
    /* 255D38 802D65F8 30990100 */   andi      $t9, $a0, 0x100
    /* 255D3C 802D65FC 30A400FF */  andi       $a0, $a1, 0xFF
    /* 255D40 802D6600 0C0245C3 */  jal        func_8009170C_A06BC
    /* 255D44 802D6604 AFA3001C */   sw        $v1, 0x1C($sp)
    /* 255D48 802D6608 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 255D4C 802D660C 93A5002B */  lbu        $a1, 0x2B($sp)
    /* 255D50 802D6610 8C640020 */  lw         $a0, 0x20($v1)
    /* 255D54 802D6614 30990100 */  andi       $t9, $a0, 0x100
  .L802D6618_255D58:
    /* 255D58 802D6618 13200016 */  beqz       $t9, .L802D6674_255DB4
    /* 255D5C 802D661C 3C088005 */   lui       $t0, %hi(D_80052A8C)
    /* 255D60 802D6620 8D082A8C */  lw         $t0, %lo(D_80052A8C)($t0)
    /* 255D64 802D6624 30AA003F */  andi       $t2, $a1, 0x3F
    /* 255D68 802D6628 3109003F */  andi       $t1, $t0, 0x3F
    /* 255D6C 802D662C 552A0012 */  bnel       $t1, $t2, .L802D6678_255DB8
    /* 255D70 802D6630 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 255D74 802D6634 84620038 */  lh         $v0, 0x38($v1)
    /* 255D78 802D6638 3C058005 */  lui        $a1, %hi(D_80050AE0)
    /* 255D7C 802D663C 2401FEFF */  addiu      $at, $zero, -0x101
    /* 255D80 802D6640 00025880 */  sll        $t3, $v0, 2
    /* 255D84 802D6644 01625823 */  subu       $t3, $t3, $v0
    /* 255D88 802D6648 000B58C0 */  sll        $t3, $t3, 3
    /* 255D8C 802D664C 00AB2821 */  addu       $a1, $a1, $t3
    /* 255D90 802D6650 8CA50AE0 */  lw         $a1, %lo(D_80050AE0)($a1)
    /* 255D94 802D6654 00817824 */  and        $t7, $a0, $at
    /* 255D98 802D6658 00056302 */  srl        $t4, $a1, 12
    /* 255D9C 802D665C 318D0001 */  andi       $t5, $t4, 0x1
    /* 255DA0 802D6660 11A00003 */  beqz       $t5, .L802D6670_255DB0
    /* 255DA4 802D6664 318E0010 */   andi      $t6, $t4, 0x10
    /* 255DA8 802D6668 51C00003 */  beql       $t6, $zero, .L802D6678_255DB8
    /* 255DAC 802D666C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D6670_255DB0:
    /* 255DB0 802D6670 AC6F0020 */  sw         $t7, 0x20($v1)
  .L802D6674_255DB4:
    /* 255DB4 802D6674 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D6678_255DB8:
    /* 255DB8 802D6678 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 255DBC 802D667C 03E00008 */  jr         $ra
    /* 255DC0 802D6680 00000000 */   nop
endlabel func_802D65BC_255CFC
