nonmatching func_800AD814_BC7C4, 0x25C

glabel func_800AD814_BC7C4
    /* BC7C4 800AD814 00047880 */  sll        $t7, $a0, 2
    /* BC7C8 800AD818 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* BC7CC 800AD81C 01E47821 */  addu       $t7, $t7, $a0
    /* BC7D0 800AD820 3C188005 */  lui        $t8, %hi(alienInstances)
    /* BC7D4 800AD824 AFB00018 */  sw         $s0, 0x18($sp)
    /* BC7D8 800AD828 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* BC7DC 800AD82C 000F7900 */  sll        $t7, $t7, 4
    /* BC7E0 800AD830 01F88021 */  addu       $s0, $t7, $t8
    /* BC7E4 800AD834 24190040 */  addiu      $t9, $zero, 0x40
    /* BC7E8 800AD838 24010014 */  addiu      $at, $zero, 0x14
    /* BC7EC 800AD83C AFBF001C */  sw         $ra, 0x1C($sp)
    /* BC7F0 800AD840 AFA40020 */  sw         $a0, 0x20($sp)
    /* BC7F4 800AD844 AFA50024 */  sw         $a1, 0x24($sp)
    /* BC7F8 800AD848 A6190048 */  sh         $t9, 0x48($s0)
    /* BC7FC 800AD84C A207003F */  sb         $a3, 0x3F($s0)
    /* BC800 800AD850 10A10011 */  beq        $a1, $at, .L800AD898_BC848
    /* BC804 800AD854 A2050024 */   sb        $a1, 0x24($s0)
    /* BC808 800AD858 2401000B */  addiu      $at, $zero, 0xB
    /* BC80C 800AD85C 10A1000E */  beq        $a1, $at, .L800AD898_BC848
    /* BC810 800AD860 2401000C */   addiu     $at, $zero, 0xC
    /* BC814 800AD864 10A1000C */  beq        $a1, $at, .L800AD898_BC848
    /* BC818 800AD868 24010004 */   addiu     $at, $zero, 0x4
    /* BC81C 800AD86C 10A1000A */  beq        $a1, $at, .L800AD898_BC848
    /* BC820 800AD870 3C028016 */   lui       $v0, %hi(D_8015EA14)
    /* BC824 800AD874 2442EA14 */  addiu      $v0, $v0, %lo(D_8015EA14)
    /* BC828 800AD878 8C4A0000 */  lw         $t2, 0x0($v0)
    /* BC82C 800AD87C 93A40023 */  lbu        $a0, 0x23($sp)
    /* BC830 800AD880 2405FFFF */  addiu      $a1, $zero, -0x1
    /* BC834 800AD884 254B0001 */  addiu      $t3, $t2, 0x1
    /* BC838 800AD888 AC4B0000 */  sw         $t3, 0x0($v0)
    /* BC83C 800AD88C 0C0471A0 */  jal        func_8011C680_12B630
    /* BC840 800AD890 AFA60028 */   sw        $a2, 0x28($sp)
    /* BC844 800AD894 8FA60028 */  lw         $a2, 0x28($sp)
  .L800AD898_BC848:
    /* BC848 800AD898 8FAC0024 */  lw         $t4, 0x24($sp)
    /* BC84C 800AD89C 258DFFFF */  addiu      $t5, $t4, -0x1
    /* BC850 800AD8A0 2DA1001B */  sltiu      $at, $t5, 0x1B
    /* BC854 800AD8A4 1020006D */  beqz       $at, .L800ADA5C_BCA0C
    /* BC858 800AD8A8 000D6880 */   sll       $t5, $t5, 2
    /* BC85C 800AD8AC 3C018014 */  lui        $at, %hi(jtbl_80142A20_overlay_gameplay_outside)
    /* BC860 800AD8B0 002D0821 */  addu       $at, $at, $t5
    /* BC864 800AD8B4 8C2D2A20 */  lw         $t5, %lo(jtbl_80142A20_overlay_gameplay_outside)($at)
    /* BC868 800AD8B8 01A00008 */  jr         $t5
    /* BC86C 800AD8BC 00000000 */   nop
    /* BC870 800AD8C0 0C02B43C */  jal        func_800AD0F0_BC0A0
    /* BC874 800AD8C4 93A40023 */   lbu       $a0, 0x23($sp)
    /* BC878 800AD8C8 10000065 */  b          .L800ADA60_BCA10
    /* BC87C 800AD8CC 8FBF001C */   lw        $ra, 0x1C($sp)
    /* BC880 800AD8D0 8E0E0020 */  lw         $t6, 0x20($s0)
    /* BC884 800AD8D4 3C010800 */  lui        $at, (0x8000100 >> 16)
    /* BC888 800AD8D8 34210100 */  ori        $at, $at, (0x8000100 & 0xFFFF)
    /* BC88C 800AD8DC 24180030 */  addiu      $t8, $zero, 0x30
    /* BC890 800AD8E0 01C17825 */  or         $t7, $t6, $at
    /* BC894 800AD8E4 AE0F0020 */  sw         $t7, 0x20($s0)
    /* BC898 800AD8E8 1000005C */  b          .L800ADA5C_BCA0C
    /* BC89C 800AD8EC A6180048 */   sh        $t8, 0x48($s0)
    /* BC8A0 800AD8F0 3C038005 */  lui        $v1, %hi(D_80048190)
    /* BC8A4 800AD8F4 24638190 */  addiu      $v1, $v1, %lo(D_80048190)
    /* BC8A8 800AD8F8 8C620000 */  lw         $v0, 0x0($v1)
    /* BC8AC 800AD8FC 24010008 */  addiu      $at, $zero, 0x8
    /* BC8B0 800AD900 240B00C0 */  addiu      $t3, $zero, 0xC0
    /* BC8B4 800AD904 54410004 */  bnel       $v0, $at, .L800AD918_BC8C8
    /* BC8B8 800AD908 8E190020 */   lw        $t9, 0x20($s0)
    /* BC8BC 800AD90C AC600000 */  sw         $zero, 0x0($v1)
    /* BC8C0 800AD910 00001025 */  or         $v0, $zero, $zero
    /* BC8C4 800AD914 8E190020 */  lw         $t9, 0x20($s0)
  .L800AD918_BC8C8:
    /* BC8C8 800AD918 2401FE1F */  addiu      $at, $zero, -0x1E1
    /* BC8CC 800AD91C 244C0001 */  addiu      $t4, $v0, 0x1
    /* BC8D0 800AD920 03214024 */  and        $t0, $t9, $at
    /* BC8D4 800AD924 3C010802 */  lui        $at, (0x8020000 >> 16)
    /* BC8D8 800AD928 AE080020 */  sw         $t0, 0x20($s0)
    /* BC8DC 800AD92C 01015025 */  or         $t2, $t0, $at
    /* BC8E0 800AD930 AE0A0020 */  sw         $t2, 0x20($s0)
    /* BC8E4 800AD934 A60B0048 */  sh         $t3, 0x48($s0)
    /* BC8E8 800AD938 A2020027 */  sb         $v0, 0x27($s0)
    /* BC8EC 800AD93C A6060038 */  sh         $a2, 0x38($s0)
    /* BC8F0 800AD940 10000046 */  b          .L800ADA5C_BCA0C
    /* BC8F4 800AD944 AC6C0000 */   sw        $t4, 0x0($v1)
    /* BC8F8 800AD948 3C038005 */  lui        $v1, %hi(D_80048190)
    /* BC8FC 800AD94C 24638190 */  addiu      $v1, $v1, %lo(D_80048190)
    /* BC900 800AD950 8C620000 */  lw         $v0, 0x0($v1)
    /* BC904 800AD954 24010008 */  addiu      $at, $zero, 0x8
    /* BC908 800AD958 241900C0 */  addiu      $t9, $zero, 0xC0
    /* BC90C 800AD95C 54410004 */  bnel       $v0, $at, .L800AD970_BC920
    /* BC910 800AD960 8E0D0020 */   lw        $t5, 0x20($s0)
    /* BC914 800AD964 AC600000 */  sw         $zero, 0x0($v1)
    /* BC918 800AD968 00001025 */  or         $v0, $zero, $zero
    /* BC91C 800AD96C 8E0D0020 */  lw         $t5, 0x20($s0)
  .L800AD970_BC920:
    /* BC920 800AD970 2401FE1F */  addiu      $at, $zero, -0x1E1
    /* BC924 800AD974 24480001 */  addiu      $t0, $v0, 0x1
    /* BC928 800AD978 01A17024 */  and        $t6, $t5, $at
    /* BC92C 800AD97C 3C010002 */  lui        $at, (0x20080 >> 16)
    /* BC930 800AD980 34210080 */  ori        $at, $at, (0x20080 & 0xFFFF)
    /* BC934 800AD984 AE0E0020 */  sw         $t6, 0x20($s0)
    /* BC938 800AD988 01C1C025 */  or         $t8, $t6, $at
    /* BC93C 800AD98C AE180020 */  sw         $t8, 0x20($s0)
    /* BC940 800AD990 A6190048 */  sh         $t9, 0x48($s0)
    /* BC944 800AD994 A2020027 */  sb         $v0, 0x27($s0)
    /* BC948 800AD998 A6060038 */  sh         $a2, 0x38($s0)
    /* BC94C 800AD99C 1000002F */  b          .L800ADA5C_BCA0C
    /* BC950 800AD9A0 AC680000 */   sw        $t0, 0x0($v1)
    /* BC954 800AD9A4 8E090020 */  lw         $t1, 0x20($s0)
    /* BC958 800AD9A8 312A0600 */  andi       $t2, $t1, 0x600
    /* BC95C 800AD9AC 1140002B */  beqz       $t2, .L800ADA5C_BCA0C
    /* BC960 800AD9B0 240B00A0 */   addiu     $t3, $zero, 0xA0
    /* BC964 800AD9B4 10000029 */  b          .L800ADA5C_BCA0C
    /* BC968 800AD9B8 A60B0048 */   sh        $t3, 0x48($s0)
    /* BC96C 800AD9BC 8E0C0020 */  lw         $t4, 0x20($s0)
    /* BC970 800AD9C0 240E0100 */  addiu      $t6, $zero, 0x100
    /* BC974 800AD9C4 A60E0038 */  sh         $t6, 0x38($s0)
    /* BC978 800AD9C8 358D1020 */  ori        $t5, $t4, 0x1020
    /* BC97C 800AD9CC 10000023 */  b          .L800ADA5C_BCA0C
    /* BC980 800AD9D0 AE0D0020 */   sw        $t5, 0x20($s0)
    /* BC984 800AD9D4 10000021 */  b          .L800ADA5C_BCA0C
    /* BC988 800AD9D8 A6000048 */   sh        $zero, 0x48($s0)
    /* BC98C 800AD9DC 240F00A0 */  addiu      $t7, $zero, 0xA0
    /* BC990 800AD9E0 1000001E */  b          .L800ADA5C_BCA0C
    /* BC994 800AD9E4 A60F0048 */   sh        $t7, 0x48($s0)
    /* BC998 800AD9E8 8E190020 */  lw         $t9, 0x20($s0)
    /* BC99C 800AD9EC 241800A0 */  addiu      $t8, $zero, 0xA0
    /* BC9A0 800AD9F0 24094000 */  addiu      $t1, $zero, 0x4000
    /* BC9A4 800AD9F4 240AC000 */  addiu      $t2, $zero, -0x4000
    /* BC9A8 800AD9F8 37281000 */  ori        $t0, $t9, 0x1000
    /* BC9AC 800AD9FC A6180048 */  sh         $t8, 0x48($s0)
    /* BC9B0 800ADA00 AE080020 */  sw         $t0, 0x20($s0)
    /* BC9B4 800ADA04 A6090006 */  sh         $t1, 0x6($s0)
    /* BC9B8 800ADA08 A60A000E */  sh         $t2, 0xE($s0)
    /* BC9BC 800ADA0C 10000013 */  b          .L800ADA5C_BCA0C
    /* BC9C0 800ADA10 A600002C */   sh        $zero, 0x2C($s0)
    /* BC9C4 800ADA14 8E0B0020 */  lw         $t3, 0x20($s0)
    /* BC9C8 800ADA18 3C010800 */  lui        $at, (0x8001100 >> 16)
    /* BC9CC 800ADA1C 34211100 */  ori        $at, $at, (0x8001100 & 0xFFFF)
    /* BC9D0 800ADA20 240D00C0 */  addiu      $t5, $zero, 0xC0
    /* BC9D4 800ADA24 01616025 */  or         $t4, $t3, $at
    /* BC9D8 800ADA28 A206003C */  sb         $a2, 0x3C($s0)
    /* BC9DC 800ADA2C AE0C0020 */  sw         $t4, 0x20($s0)
    /* BC9E0 800ADA30 A60D0048 */  sh         $t5, 0x48($s0)
    /* BC9E4 800ADA34 0C039EA8 */  jal        func_800E7AA0_F6A50
    /* BC9E8 800ADA38 02002025 */   or        $a0, $s0, $zero
    /* BC9EC 800ADA3C 10000008 */  b          .L800ADA60_BCA10
    /* BC9F0 800ADA40 8FBF001C */   lw        $ra, 0x1C($sp)
    /* BC9F4 800ADA44 8E0E0020 */  lw         $t6, 0x20($s0)
    /* BC9F8 800ADA48 241800A0 */  addiu      $t8, $zero, 0xA0
    /* BC9FC 800ADA4C A6060038 */  sh         $a2, 0x38($s0)
    /* BCA00 800ADA50 35CF1100 */  ori        $t7, $t6, 0x1100
    /* BCA04 800ADA54 AE0F0020 */  sw         $t7, 0x20($s0)
    /* BCA08 800ADA58 A6180048 */  sh         $t8, 0x48($s0)
  .L800ADA5C_BCA0C:
    /* BCA0C 800ADA5C 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800ADA60_BCA10:
    /* BCA10 800ADA60 8FB00018 */  lw         $s0, 0x18($sp)
    /* BCA14 800ADA64 27BD0020 */  addiu      $sp, $sp, 0x20
    /* BCA18 800ADA68 03E00008 */  jr         $ra
    /* BCA1C 800ADA6C 00000000 */   nop
endlabel func_800AD814_BC7C4
