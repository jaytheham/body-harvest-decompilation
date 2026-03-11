nonmatching func_8000D588_E188, 0x194

glabel func_8000D588_E188
    /* E188 8000D588 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* E18C 8000D58C AFA70064 */  sw         $a3, 0x64($sp)
    /* E190 8000D590 93A80067 */  lbu        $t0, 0x67($sp)
    /* E194 8000D594 AFA40058 */  sw         $a0, 0x58($sp)
    /* E198 8000D598 8FAF0058 */  lw         $t7, 0x58($sp)
    /* E19C 8000D59C AFBF001C */  sw         $ra, 0x1C($sp)
    /* E1A0 8000D5A0 AFB00018 */  sw         $s0, 0x18($sp)
    /* E1A4 8000D5A4 AFA5005C */  sw         $a1, 0x5C($sp)
    /* E1A8 8000D5A8 00087080 */  sll        $t6, $t0, 2
    /* E1AC 8000D5AC 01EEC021 */  addu       $t8, $t7, $t6
    /* E1B0 8000D5B0 9702000C */  lhu        $v0, 0xC($t8)
    /* E1B4 8000D5B4 8CD90018 */  lw         $t9, 0x18($a2)
    /* E1B8 8000D5B8 2409000E */  addiu      $t1, $zero, 0xE
    /* E1BC 8000D5BC 27A40044 */  addiu      $a0, $sp, 0x44
    /* E1C0 8000D5C0 00591021 */  addu       $v0, $v0, $t9
    /* E1C4 8000D5C4 304AFFFF */  andi       $t2, $v0, 0xFFFF
    /* E1C8 8000D5C8 01490019 */  multu      $t2, $t1
    /* E1CC 8000D5CC 27A50034 */  addiu      $a1, $sp, 0x34
    /* E1D0 8000D5D0 00C08025 */  or         $s0, $a2, $zero
    /* E1D4 8000D5D4 27A70024 */  addiu      $a3, $sp, 0x24
    /* E1D8 8000D5D8 00005812 */  mflo       $t3
    /* E1DC 8000D5DC 01EB6021 */  addu       $t4, $t7, $t3
    /* E1E0 8000D5E0 89810050 */  lwl        $at, 0x50($t4)
    /* E1E4 8000D5E4 99810053 */  lwr        $at, 0x53($t4)
    /* E1E8 8000D5E8 AC810000 */  sw         $at, 0x0($a0)
    /* E1EC 8000D5EC 89980054 */  lwl        $t8, 0x54($t4)
    /* E1F0 8000D5F0 99980057 */  lwr        $t8, 0x57($t4)
    /* E1F4 8000D5F4 AC980004 */  sw         $t8, 0x4($a0)
    /* E1F8 8000D5F8 89810058 */  lwl        $at, 0x58($t4)
    /* E1FC 8000D5FC 9981005B */  lwr        $at, 0x5B($t4)
    /* E200 8000D600 AC810008 */  sw         $at, 0x8($a0)
    /* E204 8000D604 9581005C */  lhu        $at, 0x5C($t4)
    /* E208 8000D608 A481000C */  sh         $at, 0xC($a0)
    /* E20C 8000D60C 8FB9005C */  lw         $t9, 0x5C($sp)
    /* E210 8000D610 8CCF0018 */  lw         $t7, 0x18($a2)
    /* E214 8000D614 032E5021 */  addu       $t2, $t9, $t6
    /* E218 8000D618 9543000C */  lhu        $v1, 0xC($t2)
    /* E21C 8000D61C 006F1821 */  addu       $v1, $v1, $t7
    /* E220 8000D620 306BFFFF */  andi       $t3, $v1, 0xFFFF
    /* E224 8000D624 01690019 */  multu      $t3, $t1
    /* E228 8000D628 00007012 */  mflo       $t6
    /* E22C 8000D62C 032E6821 */  addu       $t5, $t9, $t6
    /* E230 8000D630 89A10050 */  lwl        $at, 0x50($t5)
    /* E234 8000D634 99A10053 */  lwr        $at, 0x53($t5)
    /* E238 8000D638 ACA10000 */  sw         $at, 0x0($a1)
    /* E23C 8000D63C 89AA0054 */  lwl        $t2, 0x54($t5)
    /* E240 8000D640 99AA0057 */  lwr        $t2, 0x57($t5)
    /* E244 8000D644 ACAA0004 */  sw         $t2, 0x4($a1)
    /* E248 8000D648 89A10058 */  lwl        $at, 0x58($t5)
    /* E24C 8000D64C 99A1005B */  lwr        $at, 0x5B($t5)
    /* E250 8000D650 ACA10008 */  sw         $at, 0x8($a1)
    /* E254 8000D654 95A1005C */  lhu        $at, 0x5C($t5)
    /* E258 8000D658 A4A1000C */  sh         $at, 0xC($a1)
    /* E25C 8000D65C 0C0034E1 */  jal        func_8000D384_DF84
    /* E260 8000D660 8FA60068 */   lw        $a2, 0x68($sp)
    /* E264 8000D664 27AF0024 */  addiu      $t7, $sp, 0x24
    /* E268 8000D668 8DE10000 */  lw         $at, 0x0($t7)
    /* E26C 8000D66C 44802000 */  mtc1       $zero, $f4
    /* E270 8000D670 AA010024 */  swl        $at, 0x24($s0)
    /* E274 8000D674 BA010027 */  swr        $at, 0x27($s0)
    /* E278 8000D678 8DEE0004 */  lw         $t6, 0x4($t7)
    /* E27C 8000D67C AA0E0028 */  swl        $t6, 0x28($s0)
    /* E280 8000D680 BA0E002B */  swr        $t6, 0x2B($s0)
    /* E284 8000D684 8DE10008 */  lw         $at, 0x8($t7)
    /* E288 8000D688 AA01002C */  swl        $at, 0x2C($s0)
    /* E28C 8000D68C BA01002F */  swr        $at, 0x2F($s0)
    /* E290 8000D690 95E1000C */  lhu        $at, 0xC($t7)
    /* E294 8000D694 E604001C */  swc1       $f4, 0x1C($s0)
    /* E298 8000D698 A6010030 */  sh         $at, 0x30($s0)
    /* E29C 8000D69C 97B80030 */  lhu        $t8, 0x30($sp)
    /* E2A0 8000D6A0 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* E2A4 8000D6A4 44983000 */  mtc1       $t8, $f6
    /* E2A8 8000D6A8 07010004 */  bgez       $t8, .L8000D6BC_E2BC
    /* E2AC 8000D6AC 46803220 */   cvt.s.w   $f8, $f6
    /* E2B0 8000D6B0 44815000 */  mtc1       $at, $f10
    /* E2B4 8000D6B4 00000000 */  nop
    /* E2B8 8000D6B8 460A4200 */  add.s      $f8, $f8, $f10
  .L8000D6BC_E2BC:
    /* E2BC 8000D6BC C6100008 */  lwc1       $f16, 0x8($s0)
    /* E2C0 8000D6C0 C604000C */  lwc1       $f4, 0xC($s0)
    /* E2C4 8000D6C4 C60A0010 */  lwc1       $f10, 0x10($s0)
    /* E2C8 8000D6C8 E6080020 */  swc1       $f8, 0x20($s0)
    /* E2CC 8000D6CC 4600848D */  trunc.w.s  $f18, $f16
    /* E2D0 8000D6D0 860C0000 */  lh         $t4, 0x0($s0)
    /* E2D4 8000D6D4 860D0002 */  lh         $t5, 0x2($s0)
    /* E2D8 8000D6D8 4600218D */  trunc.w.s  $f6, $f4
    /* E2DC 8000D6DC A60C0032 */  sh         $t4, 0x32($s0)
    /* E2E0 8000D6E0 860A0004 */  lh         $t2, 0x4($s0)
    /* E2E4 8000D6E4 4600520D */  trunc.w.s  $f8, $f10
    /* E2E8 8000D6E8 440B9000 */  mfc1       $t3, $f18
    /* E2EC 8000D6EC 440E3000 */  mfc1       $t6, $f6
    /* E2F0 8000D6F0 A60D0034 */  sh         $t5, 0x34($s0)
    /* E2F4 8000D6F4 440C4000 */  mfc1       $t4, $f8
    /* E2F8 8000D6F8 A60A0036 */  sh         $t2, 0x36($s0)
    /* E2FC 8000D6FC A60B0038 */  sh         $t3, 0x38($s0)
    /* E300 8000D700 A60E003A */  sh         $t6, 0x3A($s0)
    /* E304 8000D704 A60C003C */  sh         $t4, 0x3C($s0)
    /* E308 8000D708 8FBF001C */  lw         $ra, 0x1C($sp)
    /* E30C 8000D70C 8FB00018 */  lw         $s0, 0x18($sp)
    /* E310 8000D710 27BD0058 */  addiu      $sp, $sp, 0x58
    /* E314 8000D714 03E00008 */  jr         $ra
    /* E318 8000D718 00000000 */   nop
endlabel func_8000D588_E188
