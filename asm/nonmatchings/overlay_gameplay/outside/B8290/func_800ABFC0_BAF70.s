nonmatching func_800ABFC0_BAF70, 0xA4

glabel func_800ABFC0_BAF70
    /* BAF70 800ABFC0 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* BAF74 800ABFC4 AFB00018 */  sw         $s0, 0x18($sp)
    /* BAF78 800ABFC8 309000FF */  andi       $s0, $a0, 0xFF
    /* BAF7C 800ABFCC 00107080 */  sll        $t6, $s0, 2
    /* BAF80 800ABFD0 01D07021 */  addu       $t6, $t6, $s0
    /* BAF84 800ABFD4 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* BAF88 800ABFD8 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* BAF8C 800ABFDC 000E7100 */  sll        $t6, $t6, 4
    /* BAF90 800ABFE0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* BAF94 800ABFE4 AFA40030 */  sw         $a0, 0x30($sp)
    /* BAF98 800ABFE8 01CF1821 */  addu       $v1, $t6, $t7
    /* BAF9C 800ABFEC 2465000E */  addiu      $a1, $v1, 0xE
    /* BAFA0 800ABFF0 AFA30020 */  sw         $v1, 0x20($sp)
    /* BAFA4 800ABFF4 0C02023C */  jal        func_800808F0_8F8A0
    /* BAFA8 800ABFF8 320400FF */   andi      $a0, $s0, 0xFF
    /* BAFAC 800ABFFC 8FA30020 */  lw         $v1, 0x20($sp)
    /* BAFB0 800AC000 320400FF */  andi       $a0, $s0, 0xFF
    /* BAFB4 800AC004 2405000A */  addiu      $a1, $zero, 0xA
    /* BAFB8 800AC008 84780000 */  lh         $t8, 0x0($v1)
    /* BAFBC 800AC00C 84680004 */  lh         $t0, 0x4($v1)
    /* BAFC0 800AC010 0018CA03 */  sra        $t9, $t8, 8
    /* BAFC4 800AC014 00084A03 */  sra        $t1, $t0, 8
    /* BAFC8 800AC018 AFB90028 */  sw         $t9, 0x28($sp)
    /* BAFCC 800AC01C 0C020210 */  jal        func_80080840_8F7F0
    /* BAFD0 800AC020 AFA90024 */   sw        $t1, 0x24($sp)
    /* BAFD4 800AC024 14400006 */  bnez       $v0, .L800AC040_BAFF0
    /* BAFD8 800AC028 83A4002B */   lb        $a0, 0x2B($sp)
    /* BAFDC 800AC02C 83A50027 */  lb         $a1, 0x27($sp)
    /* BAFE0 800AC030 0C02CC97 */  jal        func_800B325C_C220C
    /* BAFE4 800AC034 24060800 */   addiu     $a2, $zero, 0x800
    /* BAFE8 800AC038 10400003 */  beqz       $v0, .L800AC048_BAFF8
    /* BAFEC 800AC03C 00000000 */   nop
  .L800AC040_BAFF0:
    /* BAFF0 800AC040 0C02AF9F */  jal        func_800ABE7C_BAE2C
    /* BAFF4 800AC044 320400FF */   andi      $a0, $s0, 0xFF
  .L800AC048_BAFF8:
    /* BAFF8 800AC048 0C02B066 */  jal        func_800AC198_BB148
    /* BAFFC 800AC04C 320400FF */   andi      $a0, $s0, 0xFF
    /* BB000 800AC050 8FBF001C */  lw         $ra, 0x1C($sp)
    /* BB004 800AC054 8FB00018 */  lw         $s0, 0x18($sp)
    /* BB008 800AC058 27BD0030 */  addiu      $sp, $sp, 0x30
    /* BB00C 800AC05C 03E00008 */  jr         $ra
    /* BB010 800AC060 00000000 */   nop
endlabel func_800ABFC0_BAF70
