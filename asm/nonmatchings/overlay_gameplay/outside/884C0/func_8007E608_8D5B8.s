nonmatching func_8007E608_8D5B8, 0x12C

glabel func_8007E608_8D5B8
    /* 8D5B8 8007E608 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 8D5BC 8007E60C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 8D5C0 8007E610 AFA40028 */  sw         $a0, 0x28($sp)
    /* 8D5C4 8007E614 AFA5002C */  sw         $a1, 0x2C($sp)
    /* 8D5C8 8007E618 9086001A */  lbu        $a2, 0x1A($a0)
    /* 8D5CC 8007E61C 24090068 */  addiu      $t1, $zero, 0x68
    /* 8D5D0 8007E620 3C088025 */  lui        $t0, %hi(alienSpecs)
    /* 8D5D4 8007E624 00C90019 */  multu      $a2, $t1
    /* 8D5D8 8007E628 25086680 */  addiu      $t0, $t0, %lo(alienSpecs)
    /* 8D5DC 8007E62C 240AFFFE */  addiu      $t2, $zero, -0x2
    /* 8D5E0 8007E630 8FAD002C */  lw         $t5, 0x2C($sp)
    /* 8D5E4 8007E634 00007812 */  mflo       $t7
    /* 8D5E8 8007E638 010FC021 */  addu       $t8, $t0, $t7
    /* 8D5EC 8007E63C AFB80024 */  sw         $t8, 0x24($sp)
    /* 8D5F0 8007E640 80A2000D */  lb         $v0, 0xD($a1)
    /* 8D5F4 8007E644 8FAF0024 */  lw         $t7, 0x24($sp)
    /* 8D5F8 8007E648 5542000A */  bnel       $t2, $v0, .L8007E674_8D624
    /* 8D5FC 8007E64C 91A3001A */   lbu       $v1, 0x1A($t5)
    /* 8D600 8007E650 90A3001A */  lbu        $v1, 0x1A($a1)
    /* 8D604 8007E654 3C0C8025 */  lui        $t4, %hi(vehicleSpecs)
    /* 8D608 8007E658 258C7A00 */  addiu      $t4, $t4, %lo(vehicleSpecs)
    /* 8D60C 8007E65C 000358C0 */  sll        $t3, $v1, 3
    /* 8D610 8007E660 01635823 */  subu       $t3, $t3, $v1
    /* 8D614 8007E664 000B5900 */  sll        $t3, $t3, 4
    /* 8D618 8007E668 10000006 */  b          .L8007E684_8D634
    /* 8D61C 8007E66C 016C3821 */   addu      $a3, $t3, $t4
    /* 8D620 8007E670 91A3001A */  lbu        $v1, 0x1A($t5)
  .L8007E674_8D624:
    /* 8D624 8007E674 00690019 */  multu      $v1, $t1
    /* 8D628 8007E678 00007012 */  mflo       $t6
    /* 8D62C 8007E67C 010E3821 */  addu       $a3, $t0, $t6
    /* 8D630 8007E680 00000000 */  nop
  .L8007E684_8D634:
    /* 8D634 8007E684 8DE80008 */  lw         $t0, 0x8($t7)
    /* 8D638 8007E688 11420019 */  beq        $t2, $v0, .L8007E6F0_8D6A0
    /* 8D63C 8007E68C 8CE90008 */   lw        $t1, 0x8($a3)
    /* 8D640 8007E690 3C028004 */  lui        $v0, %hi(currentLevel)
    /* 8D644 8007E694 8C427F90 */  lw         $v0, %lo(currentLevel)($v0)
    /* 8D648 8007E698 24010001 */  addiu      $at, $zero, 0x1
    /* 8D64C 8007E69C 2405000D */  addiu      $a1, $zero, 0xD
    /* 8D650 8007E6A0 5441000D */  bnel       $v0, $at, .L8007E6D8_8D688
    /* 8D654 8007E6A4 24010002 */   addiu     $at, $zero, 0x2
    /* 8D658 8007E6A8 14A60004 */  bne        $a1, $a2, .L8007E6BC_8D66C
    /* 8D65C 8007E6AC 00C02025 */   or        $a0, $a2, $zero
    /* 8D660 8007E6B0 24010009 */  addiu      $at, $zero, 0x9
    /* 8D664 8007E6B4 5461000F */  bnel       $v1, $at, .L8007E6F4_8D6A4
    /* 8D668 8007E6B8 8FA40028 */   lw        $a0, 0x28($sp)
  .L8007E6BC_8D66C:
    /* 8D66C 8007E6BC 14A3000C */  bne        $a1, $v1, .L8007E6F0_8D6A0
    /* 8D670 8007E6C0 24010009 */   addiu     $at, $zero, 0x9
    /* 8D674 8007E6C4 5081000B */  beql       $a0, $at, .L8007E6F4_8D6A4
    /* 8D678 8007E6C8 8FA40028 */   lw        $a0, 0x28($sp)
    /* 8D67C 8007E6CC 10000009 */  b          .L8007E6F4_8D6A4
    /* 8D680 8007E6D0 8FA40028 */   lw        $a0, 0x28($sp)
    /* 8D684 8007E6D4 24010002 */  addiu      $at, $zero, 0x2
  .L8007E6D8_8D688:
    /* 8D688 8007E6D8 14410005 */  bne        $v0, $at, .L8007E6F0_8D6A0
    /* 8D68C 8007E6DC 2405000D */   addiu     $a1, $zero, 0xD
    /* 8D690 8007E6E0 10A60001 */  beq        $a1, $a2, .L8007E6E8_8D698
    /* 8D694 8007E6E4 00000000 */   nop
  .L8007E6E8_8D698:
    /* 8D698 8007E6E8 50A30002 */  beql       $a1, $v1, .L8007E6F4_8D6A4
    /* 8D69C 8007E6EC 8FA40028 */   lw        $a0, 0x28($sp)
  .L8007E6F0_8D6A0:
    /* 8D6A0 8007E6F0 8FA40028 */  lw         $a0, 0x28($sp)
  .L8007E6F4_8D6A4:
    /* 8D6A4 8007E6F4 8FA50024 */  lw         $a1, 0x24($sp)
    /* 8D6A8 8007E6F8 8FA6002C */  lw         $a2, 0x2C($sp)
    /* 8D6AC 8007E6FC AFA70020 */  sw         $a3, 0x20($sp)
    /* 8D6B0 8007E700 AFA8001C */  sw         $t0, 0x1C($sp)
    /* 8D6B4 8007E704 0C01F940 */  jal        func_8007E500_8D4B0
    /* 8D6B8 8007E708 AFA90018 */   sw        $t1, 0x18($sp)
    /* 8D6BC 8007E70C 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 8D6C0 8007E710 8FB80024 */  lw         $t8, 0x24($sp)
    /* 8D6C4 8007E714 8FA70020 */  lw         $a3, 0x20($sp)
    /* 8D6C8 8007E718 8FA90018 */  lw         $t1, 0x18($sp)
    /* 8D6CC 8007E71C AF080008 */  sw         $t0, 0x8($t8)
    /* 8D6D0 8007E720 ACE90008 */  sw         $t1, 0x8($a3)
    /* 8D6D4 8007E724 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 8D6D8 8007E728 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 8D6DC 8007E72C 03E00008 */  jr         $ra
    /* 8D6E0 8007E730 00000000 */   nop
endlabel func_8007E608_8D5B8
