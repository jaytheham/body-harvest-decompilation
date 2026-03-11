nonmatching func_8008B02C_99FDC, 0xDC

glabel func_8008B02C_99FDC
    /* 99FDC 8008B02C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 99FE0 8008B030 AFA40028 */  sw         $a0, 0x28($sp)
    /* 99FE4 8008B034 93AE002B */  lbu        $t6, 0x2B($sp)
    /* 99FE8 8008B038 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 99FEC 8008B03C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 99FF0 8008B040 000E7880 */  sll        $t7, $t6, 2
    /* 99FF4 8008B044 01EE7821 */  addu       $t7, $t7, $t6
    /* 99FF8 8008B048 000F7900 */  sll        $t7, $t7, 4
    /* 99FFC 8008B04C 01F81021 */  addu       $v0, $t7, $t8
    /* 9A000 8008B050 8C430020 */  lw         $v1, 0x20($v0)
    /* 9A004 8008B054 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 9A008 8008B058 30650600 */  andi       $a1, $v1, 0x600
    /* 9A00C 8008B05C 10A00026 */  beqz       $a1, .L8008B0F8_9A0A8
    /* 9A010 8008B060 0003CAC0 */   sll       $t9, $v1, 11
    /* 9A014 8008B064 07220019 */  bltzl      $t9, .L8008B0CC_9A07C
    /* 9A018 8008B068 904C001A */   lbu       $t4, 0x1A($v0)
    /* 9A01C 8008B06C 10A00011 */  beqz       $a1, .L8008B0B4_9A064
    /* 9A020 8008B070 3C078025 */   lui       $a3, %hi(D_8025668C)
    /* 9A024 8008B074 9048001A */  lbu        $t0, 0x1A($v0)
    /* 9A028 8008B078 84440000 */  lh         $a0, 0x0($v0)
    /* 9A02C 8008B07C 84450002 */  lh         $a1, 0x2($v0)
    /* 9A030 8008B080 00084880 */  sll        $t1, $t0, 2
    /* 9A034 8008B084 01284823 */  subu       $t1, $t1, $t0
    /* 9A038 8008B088 00094880 */  sll        $t1, $t1, 2
    /* 9A03C 8008B08C 01284821 */  addu       $t1, $t1, $t0
    /* 9A040 8008B090 000948C0 */  sll        $t1, $t1, 3
    /* 9A044 8008B094 00E93821 */  addu       $a3, $a3, $t1
    /* 9A048 8008B098 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 9A04C 8008B09C 84460004 */  lh         $a2, 0x4($v0)
    /* 9A050 8008B0A0 AFA00010 */  sw         $zero, 0x10($sp)
    /* 9A054 8008B0A4 0C037E12 */  jal        func_800DF848_EE7F8
    /* 9A058 8008B0A8 AFA20024 */   sw        $v0, 0x24($sp)
    /* 9A05C 8008B0AC 8FA20024 */  lw         $v0, 0x24($sp)
    /* 9A060 8008B0B0 8C430020 */  lw         $v1, 0x20($v0)
  .L8008B0B4_9A064:
    /* 9A064 8008B0B4 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 9A068 8008B0B8 240A7FFF */  addiu      $t2, $zero, 0x7FFF
    /* 9A06C 8008B0BC 00615825 */  or         $t3, $v1, $at
    /* 9A070 8008B0C0 A44A002C */  sh         $t2, 0x2C($v0)
    /* 9A074 8008B0C4 AC4B0020 */  sw         $t3, 0x20($v0)
    /* 9A078 8008B0C8 904C001A */  lbu        $t4, 0x1A($v0)
  .L8008B0CC_9A07C:
    /* 9A07C 8008B0CC 3C058025 */  lui        $a1, %hi(D_8025668C)
    /* 9A080 8008B0D0 93A4002B */  lbu        $a0, 0x2B($sp)
    /* 9A084 8008B0D4 000C6880 */  sll        $t5, $t4, 2
    /* 9A088 8008B0D8 01AC6823 */  subu       $t5, $t5, $t4
    /* 9A08C 8008B0DC 000D6880 */  sll        $t5, $t5, 2
    /* 9A090 8008B0E0 01AC6821 */  addu       $t5, $t5, $t4
    /* 9A094 8008B0E4 000D68C0 */  sll        $t5, $t5, 3
    /* 9A098 8008B0E8 00AD2821 */  addu       $a1, $a1, $t5
    /* 9A09C 8008B0EC 84A5668C */  lh         $a1, %lo(D_8025668C)($a1)
    /* 9A0A0 8008B0F0 0C022ABF */  jal        func_8008AAFC_99AAC
    /* 9A0A4 8008B0F4 24060003 */   addiu     $a2, $zero, 0x3
  .L8008B0F8_9A0A8:
    /* 9A0A8 8008B0F8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 9A0AC 8008B0FC 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 9A0B0 8008B100 03E00008 */  jr         $ra
    /* 9A0B4 8008B104 00000000 */   nop
endlabel func_8008B02C_99FDC
