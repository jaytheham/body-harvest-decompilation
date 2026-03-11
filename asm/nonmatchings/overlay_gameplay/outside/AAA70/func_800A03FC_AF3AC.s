nonmatching func_800A03FC_AF3AC, 0xF68

glabel func_800A03FC_AF3AC
    /* AF3AC 800A03FC 27BDFE80 */  addiu      $sp, $sp, -0x180
    /* AF3B0 800A0400 3C0F8014 */  lui        $t7, %hi(D_8013D744)
    /* AF3B4 800A0404 AFBF002C */  sw         $ra, 0x2C($sp)
    /* AF3B8 800A0408 AFB40028 */  sw         $s4, 0x28($sp)
    /* AF3BC 800A040C AFB30024 */  sw         $s3, 0x24($sp)
    /* AF3C0 800A0410 AFB20020 */  sw         $s2, 0x20($sp)
    /* AF3C4 800A0414 AFB1001C */  sw         $s1, 0x1C($sp)
    /* AF3C8 800A0418 AFB00018 */  sw         $s0, 0x18($sp)
    /* AF3CC 800A041C 25EFD744 */  addiu      $t7, $t7, %lo(D_8013D744)
    /* AF3D0 800A0420 8DE10000 */  lw         $at, 0x0($t7)
    /* AF3D4 800A0424 3C028014 */  lui        $v0, %hi(D_8013D754)
    /* AF3D8 800A0428 9442D754 */  lhu        $v0, %lo(D_8013D754)($v0)
    /* AF3DC 800A042C 27AE0168 */  addiu      $t6, $sp, 0x168
    /* AF3E0 800A0430 ADC10000 */  sw         $at, 0x0($t6)
    /* AF3E4 800A0434 95E10004 */  lhu        $at, 0x4($t7)
    /* AF3E8 800A0438 27B80160 */  addiu      $t8, $sp, 0x160
    /* AF3EC 800A043C 24420001 */  addiu      $v0, $v0, 0x1
    /* AF3F0 800A0440 A5C10004 */  sh         $at, 0x4($t6)
    /* AF3F4 800A0444 3C0E8014 */  lui        $t6, %hi(D_8013D74C)
    /* AF3F8 800A0448 25CED74C */  addiu      $t6, $t6, %lo(D_8013D74C)
    /* AF3FC 800A044C 8DC10000 */  lw         $at, 0x0($t6)
    /* AF400 800A0450 304FFFFF */  andi       $t7, $v0, 0xFFFF
    /* AF404 800A0454 01E01025 */  or         $v0, $t7, $zero
    /* AF408 800A0458 AF010000 */  sw         $at, 0x0($t8)
    /* AF40C 800A045C 95C10004 */  lhu        $at, 0x4($t6)
    /* AF410 800A0460 3C0F8007 */  lui        $t7, %hi(D_80068084)
    /* AF414 800A0464 3C108015 */  lui        $s0, %hi(D_8014EDE0)
    /* AF418 800A0468 A7010004 */  sh         $at, 0x4($t8)
    /* AF41C 800A046C 8DEF8084 */  lw         $t7, %lo(D_80068084)($t7)
    /* AF420 800A0470 2419FFFF */  addiu      $t9, $zero, -0x1
    /* AF424 800A0474 2610EDE0 */  addiu      $s0, $s0, %lo(D_8014EDE0)
    /* AF428 800A0478 04410004 */  bgez       $v0, .L800A048C_AF43C
    /* AF42C 800A047C 30510007 */   andi      $s1, $v0, 0x7
    /* AF430 800A0480 12200002 */  beqz       $s1, .L800A048C_AF43C
    /* AF434 800A0484 00000000 */   nop
    /* AF438 800A0488 2631FFF8 */  addiu      $s1, $s1, -0x8
  .L800A048C_AF43C:
    /* AF43C 800A048C 06210003 */  bgez       $s1, .L800A049C_AF44C
    /* AF440 800A0490 0011C043 */   sra       $t8, $s1, 1
    /* AF444 800A0494 26210001 */  addiu      $at, $s1, 0x1
    /* AF448 800A0498 0001C043 */  sra        $t8, $at, 1
  .L800A049C_AF44C:
    /* AF44C 800A049C 00187400 */  sll        $t6, $t8, 16
    /* AF450 800A04A0 25F8FFD4 */  addiu      $t8, $t7, -0x2C
    /* AF454 800A04A4 3C0F8015 */  lui        $t7, %hi(D_80157590)
    /* AF458 800A04A8 85EF7590 */  lh         $t7, %lo(D_80157590)($t7)
    /* AF45C 800A04AC 3C018014 */  lui        $at, %hi(D_8013D754)
    /* AF460 800A04B0 000E8C03 */  sra        $s1, $t6, 16
    /* AF464 800A04B4 A422D754 */  sh         $v0, %lo(D_8013D754)($at)
    /* AF468 800A04B8 240E002C */  addiu      $t6, $zero, 0x2C
    /* AF46C 800A04BC 24010003 */  addiu      $at, $zero, 0x3
    /* AF470 800A04C0 A7B80170 */  sh         $t8, 0x170($sp)
    /* AF474 800A04C4 A7AE0172 */  sh         $t6, 0x172($sp)
    /* AF478 800A04C8 11E1039E */  beq        $t7, $at, .L800A1344_B02F4
    /* AF47C 800A04CC A7B90174 */   sh        $t9, 0x174($sp)
    /* AF480 800A04D0 3C188005 */  lui        $t8, %hi(gameplayMode)
    /* AF484 800A04D4 8F182ADC */  lw         $t8, %lo(gameplayMode)($t8)
    /* AF488 800A04D8 2401000A */  addiu      $at, $zero, 0xA
    /* AF48C 800A04DC 17010005 */  bne        $t8, $at, .L800A04F4_AF4A4
    /* AF490 800A04E0 00000000 */   nop
    /* AF494 800A04E4 0C027116 */  jal        func_8009C458_AB408
    /* AF498 800A04E8 00000000 */   nop
    /* AF49C 800A04EC 10000014 */  b          .L800A0540_AF4F0
    /* AF4A0 800A04F0 24140001 */   addiu     $s4, $zero, 0x1
  .L800A04F4_AF4A4:
    /* AF4A4 800A04F4 0C005EDE */  jal        func_80017B78_18778
    /* AF4A8 800A04F8 00000000 */   nop
    /* AF4AC 800A04FC 24140001 */  addiu      $s4, $zero, 0x1
    /* AF4B0 800A0500 52820010 */  beql       $s4, $v0, .L800A0544_AF4F4
    /* AF4B4 800A0504 001178C0 */   sll       $t7, $s1, 3
    /* AF4B8 800A0508 0C006296 */  jal        func_80018A58_19658
    /* AF4BC 800A050C 00000000 */   nop
    /* AF4C0 800A0510 1440000B */  bnez       $v0, .L800A0540_AF4F0
    /* AF4C4 800A0514 3C0E8005 */   lui       $t6, %hi(D_80052AC8)
    /* AF4C8 800A0518 85CE2AC8 */  lh         $t6, %lo(D_80052AC8)($t6)
    /* AF4CC 800A051C 24010002 */  addiu      $at, $zero, 0x2
    /* AF4D0 800A0520 3C198005 */  lui        $t9, %hi(D_80052AD0)
    /* AF4D4 800A0524 51C10007 */  beql       $t6, $at, .L800A0544_AF4F4
    /* AF4D8 800A0528 001178C0 */   sll       $t7, $s1, 3
    /* AF4DC 800A052C 8F392AD0 */  lw         $t9, %lo(D_80052AD0)($t9)
    /* AF4E0 800A0530 53200004 */  beql       $t9, $zero, .L800A0544_AF4F4
    /* AF4E4 800A0534 001178C0 */   sll       $t7, $s1, 3
    /* AF4E8 800A0538 0C02711C */  jal        func_8009C470_AB420
    /* AF4EC 800A053C 00000000 */   nop
  .L800A0540_AF4F0:
    /* AF4F0 800A0540 001178C0 */  sll        $t7, $s1, 3
  .L800A0544_AF4F4:
    /* AF4F4 800A0544 25F80019 */  addiu      $t8, $t7, 0x19
    /* AF4F8 800A0548 00117880 */  sll        $t7, $s1, 2
    /* AF4FC 800A054C 01F17823 */  subu       $t7, $t7, $s1
    /* AF500 800A0550 000F78C0 */  sll        $t7, $t7, 3
    /* AF504 800A0554 00187200 */  sll        $t6, $t8, 8
    /* AF508 800A0558 01F17821 */  addu       $t7, $t7, $s1
    /* AF50C 800A055C 25F80064 */  addiu      $t8, $t7, 0x64
    /* AF510 800A0560 31D9F800 */  andi       $t9, $t6, 0xF800
    /* AF514 800A0564 001870C0 */  sll        $t6, $t8, 3
    /* AF518 800A0568 31CF07C0 */  andi       $t7, $t6, 0x7C0
    /* AF51C 800A056C 032FC025 */  or         $t8, $t9, $t7
    /* AF520 800A0570 00117040 */  sll        $t6, $s1, 1
    /* AF524 800A0574 25D9000A */  addiu      $t9, $t6, 0xA
    /* AF528 800A0578 00197883 */  sra        $t7, $t9, 2
    /* AF52C 800A057C 31EE003E */  andi       $t6, $t7, 0x3E
    /* AF530 800A0580 030EC825 */  or         $t9, $t8, $t6
    /* AF534 800A0584 0011C080 */  sll        $t8, $s1, 2
    /* AF538 800A0588 270E000C */  addiu      $t6, $t8, 0xC
    /* AF53C 800A058C 372F0001 */  ori        $t7, $t9, 0x1
    /* AF540 800A0590 3C018014 */  lui        $at, %hi(D_8013D592)
    /* AF544 800A0594 000ECA00 */  sll        $t9, $t6, 8
    /* AF548 800A0598 0311C023 */  subu       $t8, $t8, $s1
    /* AF54C 800A059C A42FD592 */  sh         $t7, %lo(D_8013D592)($at)
    /* AF550 800A05A0 0018C080 */  sll        $t8, $t8, 2
    /* AF554 800A05A4 270E0032 */  addiu      $t6, $t8, 0x32
    /* AF558 800A05A8 332FF800 */  andi       $t7, $t9, 0xF800
    /* AF55C 800A05AC 000EC8C0 */  sll        $t9, $t6, 3
    /* AF560 800A05B0 333807C0 */  andi       $t8, $t9, 0x7C0
    /* AF564 800A05B4 01F87025 */  or         $t6, $t7, $t8
    /* AF568 800A05B8 26390005 */  addiu      $t9, $s1, 0x5
    /* AF56C 800A05BC 00197883 */  sra        $t7, $t9, 2
    /* AF570 800A05C0 31F8003E */  andi       $t8, $t7, 0x3E
    /* AF574 800A05C4 01D8C825 */  or         $t9, $t6, $t8
    /* AF578 800A05C8 372F0001 */  ori        $t7, $t9, 0x1
    /* AF57C 800A05CC A42FD596 */  sh         $t7, %lo(D_8013D596)($at)
    /* AF580 800A05D0 240300FF */  addiu      $v1, $zero, 0xFF
  .L800A05D4_AF584:
    /* AF584 800A05D4 00601025 */  or         $v0, $v1, $zero
    /* AF588 800A05D8 AE000000 */  sw         $zero, 0x0($s0)
    /* AF58C 800A05DC 26100004 */  addiu      $s0, $s0, 0x4
    /* AF590 800A05E0 1460FFFC */  bnez       $v1, .L800A05D4_AF584
    /* AF594 800A05E4 2463FFFF */   addiu     $v1, $v1, -0x1
    /* AF598 800A05E8 00009825 */  or         $s3, $zero, $zero
    /* AF59C 800A05EC 00137080 */  sll        $t6, $s3, 2
  .L800A05F0_AF5A0:
    /* AF5A0 800A05F0 01D37021 */  addu       $t6, $t6, $s3
    /* AF5A4 800A05F4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* AF5A8 800A05F8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* AF5AC 800A05FC 000E7100 */  sll        $t6, $t6, 4
    /* AF5B0 800A0600 01D89021 */  addu       $s2, $t6, $t8
    /* AF5B4 800A0604 9242001A */  lbu        $v0, 0x1A($s2)
    /* AF5B8 800A0608 28410003 */  slti       $at, $v0, 0x3
    /* AF5BC 800A060C 1020000A */  beqz       $at, .L800A0638_AF5E8
    /* AF5C0 800A0610 00000000 */   nop
    /* AF5C4 800A0614 56820054 */  bnel       $s4, $v0, .L800A0768_AF718
    /* AF5C8 800A0618 26730001 */   addiu     $s3, $s3, 0x1
    /* AF5CC 800A061C 92420024 */  lbu        $v0, 0x24($s2)
    /* AF5D0 800A0620 2401000F */  addiu      $at, $zero, 0xF
    /* AF5D4 800A0624 12820004 */  beq        $s4, $v0, .L800A0638_AF5E8
    /* AF5D8 800A0628 00000000 */   nop
    /* AF5DC 800A062C 10410002 */  beq        $v0, $at, .L800A0638_AF5E8
    /* AF5E0 800A0630 24010010 */   addiu     $at, $zero, 0x10
    /* AF5E4 800A0634 1441004B */  bne        $v0, $at, .L800A0764_AF714
  .L800A0638_AF5E8:
    /* AF5E8 800A0638 3C028005 */   lui       $v0, %hi(D_80052B34)
    /* AF5EC 800A063C 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* AF5F0 800A0640 86510000 */  lh         $s1, 0x0($s2)
    /* AF5F4 800A0644 86500004 */  lh         $s0, 0x4($s2)
    /* AF5F8 800A0648 84590000 */  lh         $t9, 0x0($v0)
    /* AF5FC 800A064C 84580004 */  lh         $t8, 0x4($v0)
    /* AF600 800A0650 02803025 */  or         $a2, $s4, $zero
    /* AF604 800A0654 02398823 */  subu       $s1, $s1, $t9
    /* AF608 800A0658 00117C00 */  sll        $t7, $s1, 16
    /* AF60C 800A065C 000F7403 */  sra        $t6, $t7, 16
    /* AF610 800A0660 02188023 */  subu       $s0, $s0, $t8
    /* AF614 800A0664 0010CC00 */  sll        $t9, $s0, 16
    /* AF618 800A0668 00197C03 */  sra        $t7, $t9, 16
    /* AF61C 800A066C 25D11000 */  addiu      $s1, $t6, 0x1000
    /* AF620 800A0670 00117203 */  sra        $t6, $s1, 8
    /* AF624 800A0674 25F01000 */  addiu      $s0, $t7, 0x1000
    /* AF628 800A0678 000EC400 */  sll        $t8, $t6, 16
    /* AF62C 800A067C 00107A03 */  sra        $t7, $s0, 8
    /* AF630 800A0680 000F7400 */  sll        $t6, $t7, 16
    /* AF634 800A0684 00182403 */  sra        $a0, $t8, 16
    /* AF638 800A0688 000E2C03 */  sra        $a1, $t6, 16
    /* AF63C 800A068C 00808825 */  or         $s1, $a0, $zero
    /* AF640 800A0690 0C026F12 */  jal        func_8009BC48_AABF8
    /* AF644 800A0694 00A08025 */   or        $s0, $a1, $zero
    /* AF648 800A0698 10400011 */  beqz       $v0, .L800A06E0_AF690
    /* AF64C 800A069C 3C198005 */   lui       $t9, %hi(D_80052ACA)
    /* AF650 800A06A0 9244001A */  lbu        $a0, 0x1A($s2)
    /* AF654 800A06A4 1684000A */  bne        $s4, $a0, .L800A06D0_AF680
    /* AF658 800A06A8 00000000 */   nop
    /* AF65C 800A06AC 0C000E38 */  jal        func_800038E0_44E0
    /* AF660 800A06B0 00000000 */   nop
    /* AF664 800A06B4 28410064 */  slti       $at, $v0, 0x64
    /* AF668 800A06B8 50200010 */  beql       $at, $zero, .L800A06FC_AF6AC
    /* AF66C 800A06BC 8E4F0020 */   lw        $t7, 0x20($s2)
    /* AF670 800A06C0 0C0054F6 */  jal        func_800153D8_15FD8
    /* AF674 800A06C4 240400F3 */   addiu     $a0, $zero, 0xF3
    /* AF678 800A06C8 1000000C */  b          .L800A06FC_AF6AC
    /* AF67C 800A06CC 8E4F0020 */   lw        $t7, 0x20($s2)
  .L800A06D0_AF680:
    /* AF680 800A06D0 0C0056F3 */  jal        func_80015BCC_167CC
    /* AF684 800A06D4 00000000 */   nop
    /* AF688 800A06D8 10000008 */  b          .L800A06FC_AF6AC
    /* AF68C 800A06DC 8E4F0020 */   lw        $t7, 0x20($s2)
  .L800A06E0_AF690:
    /* AF690 800A06E0 93392ACA */  lbu        $t9, %lo(D_80052ACA)($t9)
    /* AF694 800A06E4 24010002 */  addiu      $at, $zero, 0x2
    /* AF698 800A06E8 57210004 */  bnel       $t9, $at, .L800A06FC_AF6AC
    /* AF69C 800A06EC 8E4F0020 */   lw        $t7, 0x20($s2)
    /* AF6A0 800A06F0 0C0056F3 */  jal        func_80015BCC_167CC
    /* AF6A4 800A06F4 9244001A */   lbu       $a0, 0x1A($s2)
    /* AF6A8 800A06F8 8E4F0020 */  lw         $t7, 0x20($s2)
  .L800A06FC_AF6AC:
    /* AF6AC 800A06FC 000F72C0 */  sll        $t6, $t7, 11
    /* AF6B0 800A0700 05C20019 */  bltzl      $t6, .L800A0768_AF718
    /* AF6B4 800A0704 26730001 */   addiu     $s3, $s3, 0x1
    /* AF6B8 800A0708 9258001A */  lbu        $t8, 0x1A($s2)
    /* AF6BC 800A070C 02202025 */  or         $a0, $s1, $zero
    /* AF6C0 800A0710 02002825 */  or         $a1, $s0, $zero
    /* AF6C4 800A0714 52980014 */  beql       $s4, $t8, .L800A0768_AF718
    /* AF6C8 800A0718 26730001 */   addiu     $s3, $s3, 0x1
    /* AF6CC 800A071C 0C026F30 */  jal        func_8009BCC0_AAC70
    /* AF6D0 800A0720 24060002 */   addiu     $a2, $zero, 0x2
    /* AF6D4 800A0724 02202025 */  or         $a0, $s1, $zero
    /* AF6D8 800A0728 2605FFFF */  addiu      $a1, $s0, -0x1
    /* AF6DC 800A072C 0C026F30 */  jal        func_8009BCC0_AAC70
    /* AF6E0 800A0730 24060004 */   addiu     $a2, $zero, 0x4
    /* AF6E4 800A0734 2624FFFF */  addiu      $a0, $s1, -0x1
    /* AF6E8 800A0738 02002825 */  or         $a1, $s0, $zero
    /* AF6EC 800A073C 0C026F30 */  jal        func_8009BCC0_AAC70
    /* AF6F0 800A0740 24060004 */   addiu     $a2, $zero, 0x4
    /* AF6F4 800A0744 26240001 */  addiu      $a0, $s1, 0x1
    /* AF6F8 800A0748 02002825 */  or         $a1, $s0, $zero
    /* AF6FC 800A074C 0C026F30 */  jal        func_8009BCC0_AAC70
    /* AF700 800A0750 24060004 */   addiu     $a2, $zero, 0x4
    /* AF704 800A0754 02202025 */  or         $a0, $s1, $zero
    /* AF708 800A0758 26050001 */  addiu      $a1, $s0, 0x1
    /* AF70C 800A075C 0C026F30 */  jal        func_8009BCC0_AAC70
    /* AF710 800A0760 24060004 */   addiu     $a2, $zero, 0x4
  .L800A0764_AF714:
    /* AF714 800A0764 26730001 */  addiu      $s3, $s3, 0x1
  .L800A0768_AF718:
    /* AF718 800A0768 0013CC00 */  sll        $t9, $s3, 16
    /* AF71C 800A076C 00199C03 */  sra        $s3, $t9, 16
    /* AF720 800A0770 2A6100FF */  slti       $at, $s3, 0xFF
    /* AF724 800A0774 5420FF9E */  bnel       $at, $zero, .L800A05F0_AF5A0
    /* AF728 800A0778 00137080 */   sll       $t6, $s3, 2
    /* AF72C 800A077C 3C048016 */  lui        $a0, %hi(D_80158FD8)
    /* AF730 800A0780 84848FD8 */  lh         $a0, %lo(D_80158FD8)($a0)
    /* AF734 800A0784 00009825 */  or         $s3, $zero, $zero
    /* AF738 800A0788 18800045 */  blez       $a0, .L800A08A0_AF850
  .L800A078C_AF73C:
    /* AF73C 800A078C 3C0E8016 */   lui       $t6, %hi(D_80158E80)
    /* AF740 800A0790 01D37021 */  addu       $t6, $t6, $s3
    /* AF744 800A0794 91CE8E80 */  lbu        $t6, %lo(D_80158E80)($t6)
    /* AF748 800A0798 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* AF74C 800A079C 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* AF750 800A07A0 000EC080 */  sll        $t8, $t6, 2
    /* AF754 800A07A4 030EC023 */  subu       $t8, $t8, $t6
    /* AF758 800A07A8 0018C0C0 */  sll        $t8, $t8, 3
    /* AF75C 800A07AC 3C198005 */  lui        $t9, %hi(vehicleInstances)
    /* AF760 800A07B0 030EC023 */  subu       $t8, $t8, $t6
    /* AF764 800A07B4 0018C080 */  sll        $t8, $t8, 2
    /* AF768 800A07B8 2739DCD0 */  addiu      $t9, $t9, %lo(vehicleInstances)
    /* AF76C 800A07BC 03191821 */  addu       $v1, $t8, $t9
    /* AF770 800A07C0 10430031 */  beq        $v0, $v1, .L800A0888_AF838
    /* AF774 800A07C4 3C0F8004 */   lui       $t7, %hi(currentLevel)
    /* AF778 800A07C8 8DEF7F90 */  lw         $t7, %lo(currentLevel)($t7)
    /* AF77C 800A07CC 24060001 */  addiu      $a2, $zero, 0x1
    /* AF780 800A07D0 568F0006 */  bnel       $s4, $t7, .L800A07EC_AF79C
    /* AF784 800A07D4 84710000 */   lh        $s1, 0x0($v1)
    /* AF788 800A07D8 906E001A */  lbu        $t6, 0x1A($v1)
    /* AF78C 800A07DC 24010012 */  addiu      $at, $zero, 0x12
    /* AF790 800A07E0 51C1002A */  beql       $t6, $at, .L800A088C_AF83C
    /* AF794 800A07E4 26730001 */   addiu     $s3, $s3, 0x1
    /* AF798 800A07E8 84710000 */  lh         $s1, 0x0($v1)
  .L800A07EC_AF79C:
    /* AF79C 800A07EC 84580000 */  lh         $t8, 0x0($v0)
    /* AF7A0 800A07F0 84700004 */  lh         $s0, 0x4($v1)
    /* AF7A4 800A07F4 844E0004 */  lh         $t6, 0x4($v0)
    /* AF7A8 800A07F8 02388823 */  subu       $s1, $s1, $t8
    /* AF7AC 800A07FC 0011CC00 */  sll        $t9, $s1, 16
    /* AF7B0 800A0800 00197C03 */  sra        $t7, $t9, 16
    /* AF7B4 800A0804 020E8023 */  subu       $s0, $s0, $t6
    /* AF7B8 800A0808 0010C400 */  sll        $t8, $s0, 16
    /* AF7BC 800A080C 0018CC03 */  sra        $t9, $t8, 16
    /* AF7C0 800A0810 25F11000 */  addiu      $s1, $t7, 0x1000
    /* AF7C4 800A0814 00117A03 */  sra        $t7, $s1, 8
    /* AF7C8 800A0818 27301000 */  addiu      $s0, $t9, 0x1000
    /* AF7CC 800A081C 000F7400 */  sll        $t6, $t7, 16
    /* AF7D0 800A0820 0010CA03 */  sra        $t9, $s0, 8
    /* AF7D4 800A0824 00197C00 */  sll        $t7, $t9, 16
    /* AF7D8 800A0828 000E2403 */  sra        $a0, $t6, 16
    /* AF7DC 800A082C 000F2C03 */  sra        $a1, $t7, 16
    /* AF7E0 800A0830 00808825 */  or         $s1, $a0, $zero
    /* AF7E4 800A0834 0C026F30 */  jal        func_8009BCC0_AAC70
    /* AF7E8 800A0838 00A08025 */   or        $s0, $a1, $zero
    /* AF7EC 800A083C 26120001 */  addiu      $s2, $s0, 0x1
    /* AF7F0 800A0840 02402825 */  or         $a1, $s2, $zero
    /* AF7F4 800A0844 02202025 */  or         $a0, $s1, $zero
    /* AF7F8 800A0848 0C026F30 */  jal        func_8009BCC0_AAC70
    /* AF7FC 800A084C 24060003 */   addiu     $a2, $zero, 0x3
    /* AF800 800A0850 2624FFFF */  addiu      $a0, $s1, -0x1
    /* AF804 800A0854 02002825 */  or         $a1, $s0, $zero
    /* AF808 800A0858 0C026F30 */  jal        func_8009BCC0_AAC70
    /* AF80C 800A085C 24060003 */   addiu     $a2, $zero, 0x3
    /* AF810 800A0860 26240001 */  addiu      $a0, $s1, 0x1
    /* AF814 800A0864 02002825 */  or         $a1, $s0, $zero
    /* AF818 800A0868 0C026F30 */  jal        func_8009BCC0_AAC70
    /* AF81C 800A086C 24060003 */   addiu     $a2, $zero, 0x3
    /* AF820 800A0870 02202025 */  or         $a0, $s1, $zero
    /* AF824 800A0874 02402825 */  or         $a1, $s2, $zero
    /* AF828 800A0878 0C026F30 */  jal        func_8009BCC0_AAC70
    /* AF82C 800A087C 24060003 */   addiu     $a2, $zero, 0x3
    /* AF830 800A0880 3C048016 */  lui        $a0, %hi(D_80158FD8)
    /* AF834 800A0884 84848FD8 */  lh         $a0, %lo(D_80158FD8)($a0)
  .L800A0888_AF838:
    /* AF838 800A0888 26730001 */  addiu      $s3, $s3, 0x1
  .L800A088C_AF83C:
    /* AF83C 800A088C 0013C400 */  sll        $t8, $s3, 16
    /* AF840 800A0890 00189C03 */  sra        $s3, $t8, 16
    /* AF844 800A0894 0264082A */  slt        $at, $s3, $a0
    /* AF848 800A0898 1420FFBC */  bnez       $at, .L800A078C_AF73C
    /* AF84C 800A089C 00000000 */   nop
  .L800A08A0_AF850:
    /* AF850 800A08A0 0C007CB8 */  jal        func_8001F2E0_1FEE0
    /* AF854 800A08A4 00000000 */   nop
    /* AF858 800A08A8 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* AF85C 800A08AC 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* AF860 800A08B0 8E020000 */  lw         $v0, 0x0($s0)
    /* AF864 800A08B4 3C180002 */  lui        $t8, (0x23001 >> 16)
    /* AF868 800A08B8 37183001 */  ori        $t8, $t8, (0x23001 & 0xFFFF)
    /* AF86C 800A08BC 244F0008 */  addiu      $t7, $v0, 0x8
    /* AF870 800A08C0 AE0F0000 */  sw         $t7, 0x0($s0)
    /* AF874 800A08C4 3C0EB600 */  lui        $t6, (0xB6000000 >> 16)
    /* AF878 800A08C8 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AF87C 800A08CC AC580004 */  sw         $t8, 0x4($v0)
    /* AF880 800A08D0 8E020000 */  lw         $v0, 0x0($s0)
    /* AF884 800A08D4 3C0FBC00 */  lui        $t7, (0xBC00000E >> 16)
    /* AF888 800A08D8 35EF000E */  ori        $t7, $t7, (0xBC00000E & 0xFFFF)
    /* AF88C 800A08DC 24590008 */  addiu      $t9, $v0, 0x8
    /* AF890 800A08E0 AE190000 */  sw         $t9, 0x0($s0)
    /* AF894 800A08E4 340EFFFF */  ori        $t6, $zero, 0xFFFF
    /* AF898 800A08E8 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AF89C 800A08EC AC4F0000 */  sw         $t7, 0x0($v0)
    /* AF8A0 800A08F0 8E020000 */  lw         $v0, 0x0($s0)
    /* AF8A4 800A08F4 3C131FFF */  lui        $s3, (0x1FFFFFFF >> 16)
    /* AF8A8 800A08F8 3C0F8015 */  lui        $t7, %hi(D_8014ED98)
    /* AF8AC 800A08FC 24580008 */  addiu      $t8, $v0, 0x8
    /* AF8B0 800A0900 3673FFFF */  ori        $s3, $s3, (0x1FFFFFFF & 0xFFFF)
    /* AF8B4 800A0904 AE180000 */  sw         $t8, 0x0($s0)
    /* AF8B8 800A0908 25EFED98 */  addiu      $t7, $t7, %lo(D_8014ED98)
    /* AF8BC 800A090C 3C190103 */  lui        $t9, (0x1030040 >> 16)
    /* AF8C0 800A0910 37390040 */  ori        $t9, $t9, (0x1030040 & 0xFFFF)
    /* AF8C4 800A0914 01F37024 */  and        $t6, $t7, $s3
    /* AF8C8 800A0918 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AF8CC 800A091C AC590000 */  sw         $t9, 0x0($v0)
    /* AF8D0 800A0920 8E020000 */  lw         $v0, 0x0($s0)
    /* AF8D4 800A0924 3C14E700 */  lui        $s4, (0xE7000000 >> 16)
    /* AF8D8 800A0928 3C0E0050 */  lui        $t6, (0x504240 >> 16)
    /* AF8DC 800A092C 24580008 */  addiu      $t8, $v0, 0x8
    /* AF8E0 800A0930 AE180000 */  sw         $t8, 0x0($s0)
    /* AF8E4 800A0934 AC400004 */  sw         $zero, 0x4($v0)
    /* AF8E8 800A0938 AC540000 */  sw         $s4, 0x0($v0)
    /* AF8EC 800A093C 8E020000 */  lw         $v0, 0x0($s0)
    /* AF8F0 800A0940 3C0FB900 */  lui        $t7, (0xB900031D >> 16)
    /* AF8F4 800A0944 35EF031D */  ori        $t7, $t7, (0xB900031D & 0xFFFF)
    /* AF8F8 800A0948 24590008 */  addiu      $t9, $v0, 0x8
    /* AF8FC 800A094C AE190000 */  sw         $t9, 0x0($s0)
    /* AF900 800A0950 35CE4240 */  ori        $t6, $t6, (0x504240 & 0xFFFF)
    /* AF904 800A0954 3C038015 */  lui        $v1, %hi(D_8014F1FA)
    /* AF908 800A0958 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AF90C 800A095C AC4F0000 */  sw         $t7, 0x0($v0)
    /* AF910 800A0960 8463F1FA */  lh         $v1, %lo(D_8014F1FA)($v1)
    /* AF914 800A0964 3C128005 */  lui        $s2, %hi(D_80052B50)
    /* AF918 800A0968 34018000 */  ori        $at, $zero, 0x8000
    /* AF91C 800A096C 00031823 */  negu       $v1, $v1
    /* AF920 800A0970 0003C200 */  sll        $t8, $v1, 8
    /* AF924 800A0974 26522B50 */  addiu      $s2, $s2, %lo(D_80052B50)
    /* AF928 800A0978 03011821 */  addu       $v1, $t8, $at
    /* AF92C 800A097C 3C118006 */  lui        $s1, %hi(D_8005BB38)
    /* AF930 800A0980 000371C3 */  sra        $t6, $v1, 7
    /* AF934 800A0984 2631BB38 */  addiu      $s1, $s1, %lo(D_8005BB38)
    /* AF938 800A0988 A64E0004 */  sh         $t6, 0x4($s2)
    /* AF93C 800A098C A64E0002 */  sh         $t6, 0x2($s2)
    /* AF940 800A0990 A64E0000 */  sh         $t6, 0x0($s2)
    /* AF944 800A0994 8E270000 */  lw         $a3, 0x0($s1)
    /* AF948 800A0998 02403025 */  or         $a2, $s2, $zero
    /* AF94C 800A099C 27A40170 */  addiu      $a0, $sp, 0x170
    /* AF950 800A09A0 0C000E74 */  jal        func_800039D0_45D0
    /* AF954 800A09A4 00002825 */   or        $a1, $zero, $zero
    /* AF958 800A09A8 8E020000 */  lw         $v0, 0x0($s0)
    /* AF95C 800A09AC 3C190106 */  lui        $t9, (0x1060040 >> 16)
    /* AF960 800A09B0 37390040 */  ori        $t9, $t9, (0x1060040 & 0xFFFF)
    /* AF964 800A09B4 24580008 */  addiu      $t8, $v0, 0x8
    /* AF968 800A09B8 AE180000 */  sw         $t8, 0x0($s0)
    /* AF96C 800A09BC AC590000 */  sw         $t9, 0x0($v0)
    /* AF970 800A09C0 8E2F0000 */  lw         $t7, 0x0($s1)
    /* AF974 800A09C4 3C1F0700 */  lui        $ra, (0x7000000 >> 16)
    /* AF978 800A09C8 01F37024 */  and        $t6, $t7, $s3
    /* AF97C 800A09CC AC4E0004 */  sw         $t6, 0x4($v0)
    /* AF980 800A09D0 8E380000 */  lw         $t8, 0x0($s1)
    /* AF984 800A09D4 8E020000 */  lw         $v0, 0x0($s0)
    /* AF988 800A09D8 27190040 */  addiu      $t9, $t8, 0x40
    /* AF98C 800A09DC 244F0008 */  addiu      $t7, $v0, 0x8
    /* AF990 800A09E0 AE390000 */  sw         $t9, 0x0($s1)
    /* AF994 800A09E4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* AF998 800A09E8 AC400004 */  sw         $zero, 0x4($v0)
    /* AF99C 800A09EC AC540000 */  sw         $s4, 0x0($v0)
    /* AF9A0 800A09F0 8E020000 */  lw         $v0, 0x0($s0)
    /* AF9A4 800A09F4 3C18BA00 */  lui        $t8, (0xBA000E02 >> 16)
    /* AF9A8 800A09F8 37180E02 */  ori        $t8, $t8, (0xBA000E02 & 0xFFFF)
    /* AF9AC 800A09FC 244E0008 */  addiu      $t6, $v0, 0x8
    /* AF9B0 800A0A00 AE0E0000 */  sw         $t6, 0x0($s0)
    /* AF9B4 800A0A04 3C198015 */  lui        $t9, %hi(D_8014EDD8)
    /* AF9B8 800A0A08 AC400004 */  sw         $zero, 0x4($v0)
    /* AF9BC 800A0A0C AC580000 */  sw         $t8, 0x0($v0)
    /* AF9C0 800A0A10 8739EDD8 */  lh         $t9, %lo(D_8014EDD8)($t9)
    /* AF9C4 800A0A14 1720000B */  bnez       $t9, .L800A0A44_AF9F4
    /* AF9C8 800A0A18 3C0F8005 */   lui       $t7, %hi(D_80052B2C)
    /* AF9CC 800A0A1C 8DEF2B2C */  lw         $t7, %lo(D_80052B2C)($t7)
    /* AF9D0 800A0A20 3C198004 */  lui        $t9, %hi(D_80047950)
    /* AF9D4 800A0A24 87397950 */  lh         $t9, %lo(D_80047950)($t9)
    /* AF9D8 800A0A28 85EE0036 */  lh         $t6, 0x36($t7)
    /* AF9DC 800A0A2C 34028000 */  ori        $v0, $zero, 0x8000
    /* AF9E0 800A0A30 03227821 */  addu       $t7, $t9, $v0
    /* AF9E4 800A0A34 01C2C021 */  addu       $t8, $t6, $v0
    /* AF9E8 800A0A38 A7B80162 */  sh         $t8, 0x162($sp)
    /* AF9EC 800A0A3C 1000000B */  b          .L800A0A6C_AFA1C
    /* AF9F0 800A0A40 A7AF016A */   sh        $t7, 0x16A($sp)
  .L800A0A44_AF9F4:
    /* AF9F4 800A0A44 8E020000 */  lw         $v0, 0x0($s0)
    /* AF9F8 800A0A48 A7A00162 */  sh         $zero, 0x162($sp)
    /* AF9FC 800A0A4C A7A0016A */  sh         $zero, 0x16A($sp)
    /* AFA00 800A0A50 244E0008 */  addiu      $t6, $v0, 0x8
    /* AFA04 800A0A54 AE0E0000 */  sw         $t6, 0x0($s0)
    /* AFA08 800A0A58 3C18B900 */  lui        $t8, (0xB9000002 >> 16)
    /* AFA0C 800A0A5C 37180002 */  ori        $t8, $t8, (0xB9000002 & 0xFFFF)
    /* AFA10 800A0A60 24190003 */  addiu      $t9, $zero, 0x3
    /* AFA14 800A0A64 AC590004 */  sw         $t9, 0x4($v0)
    /* AFA18 800A0A68 AC580000 */  sw         $t8, 0x0($v0)
  .L800A0A6C_AFA1C:
    /* AFA1C 800A0A6C 8E020000 */  lw         $v0, 0x0($s0)
    /* AFA20 800A0A70 3C0EBB00 */  lui        $t6, (0xBB000001 >> 16)
    /* AFA24 800A0A74 3C188000 */  lui        $t8, (0x80008000 >> 16)
    /* AFA28 800A0A78 244F0008 */  addiu      $t7, $v0, 0x8
    /* AFA2C 800A0A7C AE0F0000 */  sw         $t7, 0x0($s0)
    /* AFA30 800A0A80 37188000 */  ori        $t8, $t8, (0x80008000 & 0xFFFF)
    /* AFA34 800A0A84 35CE0001 */  ori        $t6, $t6, (0xBB000001 & 0xFFFF)
    /* AFA38 800A0A88 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AFA3C 800A0A8C AC580004 */  sw         $t8, 0x4($v0)
    /* AFA40 800A0A90 8E020000 */  lw         $v0, 0x0($s0)
    /* AFA44 800A0A94 3C0E0503 */  lui        $t6, %hi(D_502E110)
    /* AFA48 800A0A98 25CEE110 */  addiu      $t6, $t6, %lo(D_502E110)
    /* AFA4C 800A0A9C 24590008 */  addiu      $t9, $v0, 0x8
    /* AFA50 800A0AA0 AE190000 */  sw         $t9, 0x0($s0)
    /* AFA54 800A0AA4 01D3C024 */  and        $t8, $t6, $s3
    /* AFA58 800A0AA8 3C0FFD70 */  lui        $t7, (0xFD700000 >> 16)
    /* AFA5C 800A0AAC AC4F0000 */  sw         $t7, 0x0($v0)
    /* AFA60 800A0AB0 AC580004 */  sw         $t8, 0x4($v0)
    /* AFA64 800A0AB4 8E020000 */  lw         $v0, 0x0($s0)
    /* AFA68 800A0AB8 3C0FF570 */  lui        $t7, (0xF5700000 >> 16)
    /* AFA6C 800A0ABC 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
    /* AFA70 800A0AC0 24590008 */  addiu      $t9, $v0, 0x8
    /* AFA74 800A0AC4 AE190000 */  sw         $t9, 0x0($s0)
    /* AFA78 800A0AC8 AC5F0004 */  sw         $ra, 0x4($v0)
    /* AFA7C 800A0ACC AC4F0000 */  sw         $t7, 0x0($v0)
    /* AFA80 800A0AD0 8E020000 */  lw         $v0, 0x0($s0)
    /* AFA84 800A0AD4 3C0FF300 */  lui        $t7, (0xF3000000 >> 16)
    /* AFA88 800A0AD8 00002025 */  or         $a0, $zero, $zero
    /* AFA8C 800A0ADC 244E0008 */  addiu      $t6, $v0, 0x8
    /* AFA90 800A0AE0 AE0E0000 */  sw         $t6, 0x0($s0)
    /* AFA94 800A0AE4 AC400004 */  sw         $zero, 0x4($v0)
    /* AFA98 800A0AE8 AC580000 */  sw         $t8, 0x0($v0)
    /* AFA9C 800A0AEC 8E020000 */  lw         $v0, 0x0($s0)
    /* AFAA0 800A0AF0 3C0E071F */  lui        $t6, (0x71FF200 >> 16)
    /* AFAA4 800A0AF4 35CEF200 */  ori        $t6, $t6, (0x71FF200 & 0xFFFF)
    /* AFAA8 800A0AF8 24590008 */  addiu      $t9, $v0, 0x8
    /* AFAAC 800A0AFC AE190000 */  sw         $t9, 0x0($s0)
    /* AFAB0 800A0B00 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AFAB4 800A0B04 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AFAB8 800A0B08 8E020000 */  lw         $v0, 0x0($s0)
    /* AFABC 800A0B0C 3C0FF568 */  lui        $t7, (0xF5680800 >> 16)
    /* AFAC0 800A0B10 35EF0800 */  ori        $t7, $t7, (0xF5680800 & 0xFFFF)
    /* AFAC4 800A0B14 24580008 */  addiu      $t8, $v0, 0x8
    /* AFAC8 800A0B18 AE180000 */  sw         $t8, 0x0($s0)
    /* AFACC 800A0B1C AC400004 */  sw         $zero, 0x4($v0)
    /* AFAD0 800A0B20 AC540000 */  sw         $s4, 0x0($v0)
    /* AFAD4 800A0B24 8E020000 */  lw         $v0, 0x0($s0)
    /* AFAD8 800A0B28 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* AFADC 800A0B2C 27A50168 */  addiu      $a1, $sp, 0x168
    /* AFAE0 800A0B30 24590008 */  addiu      $t9, $v0, 0x8
    /* AFAE4 800A0B34 AE190000 */  sw         $t9, 0x0($s0)
    /* AFAE8 800A0B38 AC400004 */  sw         $zero, 0x4($v0)
    /* AFAEC 800A0B3C AC4F0000 */  sw         $t7, 0x0($v0)
    /* AFAF0 800A0B40 8E020000 */  lw         $v0, 0x0($s0)
    /* AFAF4 800A0B44 3C190007 */  lui        $t9, (0x7C07C >> 16)
    /* AFAF8 800A0B48 3739C07C */  ori        $t9, $t9, (0x7C07C & 0xFFFF)
    /* AFAFC 800A0B4C 244E0008 */  addiu      $t6, $v0, 0x8
    /* AFB00 800A0B50 AE0E0000 */  sw         $t6, 0x0($s0)
    /* AFB04 800A0B54 AC590004 */  sw         $t9, 0x4($v0)
    /* AFB08 800A0B58 AC580000 */  sw         $t8, 0x0($v0)
    /* AFB0C 800A0B5C 8E020000 */  lw         $v0, 0x0($s0)
    /* AFB10 800A0B60 3C18FC12 */  lui        $t8, (0xFC127E24 >> 16)
    /* AFB14 800A0B64 37187E24 */  ori        $t8, $t8, (0xFC127E24 & 0xFFFF)
    /* AFB18 800A0B68 244F0008 */  addiu      $t7, $v0, 0x8
    /* AFB1C 800A0B6C AE0F0000 */  sw         $t7, 0x0($s0)
    /* AFB20 800A0B70 AC400004 */  sw         $zero, 0x4($v0)
    /* AFB24 800A0B74 AC540000 */  sw         $s4, 0x0($v0)
    /* AFB28 800A0B78 8E020000 */  lw         $v0, 0x0($s0)
    /* AFB2C 800A0B7C 2419F3F9 */  addiu      $t9, $zero, -0xC07
    /* AFB30 800A0B80 00003025 */  or         $a2, $zero, $zero
    /* AFB34 800A0B84 244E0008 */  addiu      $t6, $v0, 0x8
    /* AFB38 800A0B88 AE0E0000 */  sw         $t6, 0x0($s0)
    /* AFB3C 800A0B8C AC590004 */  sw         $t9, 0x4($v0)
    /* AFB40 800A0B90 AC580000 */  sw         $t8, 0x0($v0)
    /* AFB44 800A0B94 0C000E74 */  jal        func_800039D0_45D0
    /* AFB48 800A0B98 8E270000 */   lw        $a3, 0x0($s1)
    /* AFB4C 800A0B9C 8E020000 */  lw         $v0, 0x0($s0)
    /* AFB50 800A0BA0 3C0E0104 */  lui        $t6, (0x1040040 >> 16)
    /* AFB54 800A0BA4 35CE0040 */  ori        $t6, $t6, (0x1040040 & 0xFFFF)
    /* AFB58 800A0BA8 244F0008 */  addiu      $t7, $v0, 0x8
    /* AFB5C 800A0BAC AE0F0000 */  sw         $t7, 0x0($s0)
    /* AFB60 800A0BB0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AFB64 800A0BB4 8E380000 */  lw         $t8, 0x0($s1)
    /* AFB68 800A0BB8 3C1F0700 */  lui        $ra, (0x7000000 >> 16)
    /* AFB6C 800A0BBC 3C038015 */  lui        $v1, %hi(D_8014F1FA)
    /* AFB70 800A0BC0 0313C824 */  and        $t9, $t8, $s3
    /* AFB74 800A0BC4 AC590004 */  sw         $t9, 0x4($v0)
    /* AFB78 800A0BC8 8E2F0000 */  lw         $t7, 0x0($s1)
    /* AFB7C 800A0BCC 8E020000 */  lw         $v0, 0x0($s0)
    /* AFB80 800A0BD0 3C190400 */  lui        $t9, (0x400103F >> 16)
    /* AFB84 800A0BD4 25EE0040 */  addiu      $t6, $t7, 0x40
    /* AFB88 800A0BD8 3C0F8014 */  lui        $t7, %hi(D_8013D5E8)
    /* AFB8C 800A0BDC 24580008 */  addiu      $t8, $v0, 0x8
    /* AFB90 800A0BE0 AE2E0000 */  sw         $t6, 0x0($s1)
    /* AFB94 800A0BE4 AE180000 */  sw         $t8, 0x0($s0)
    /* AFB98 800A0BE8 25EFD5E8 */  addiu      $t7, $t7, %lo(D_8013D5E8)
    /* AFB9C 800A0BEC 01F36824 */  and        $t5, $t7, $s3
    /* AFBA0 800A0BF0 3739103F */  ori        $t9, $t9, (0x400103F & 0xFFFF)
    /* AFBA4 800A0BF4 AC590000 */  sw         $t9, 0x0($v0)
    /* AFBA8 800A0BF8 AC4D0004 */  sw         $t5, 0x4($v0)
    /* AFBAC 800A0BFC 8E020000 */  lw         $v0, 0x0($s0)
    /* AFBB0 800A0C00 3C190002 */  lui        $t9, (0x20406 >> 16)
    /* AFBB4 800A0C04 3C18B102 */  lui        $t8, (0xB1020004 >> 16)
    /* AFBB8 800A0C08 244E0008 */  addiu      $t6, $v0, 0x8
    /* AFBBC 800A0C0C AE0E0000 */  sw         $t6, 0x0($s0)
    /* AFBC0 800A0C10 37180004 */  ori        $t8, $t8, (0xB1020004 & 0xFFFF)
    /* AFBC4 800A0C14 37390406 */  ori        $t9, $t9, (0x20406 & 0xFFFF)
    /* AFBC8 800A0C18 AC590004 */  sw         $t9, 0x4($v0)
    /* AFBCC 800A0C1C AC580000 */  sw         $t8, 0x0($v0)
    /* AFBD0 800A0C20 8E020000 */  lw         $v0, 0x0($s0)
    /* AFBD4 800A0C24 3C18B900 */  lui        $t8, (0xB9000002 >> 16)
    /* AFBD8 800A0C28 37180002 */  ori        $t8, $t8, (0xB9000002 & 0xFFFF)
    /* AFBDC 800A0C2C 244F0008 */  addiu      $t7, $v0, 0x8
    /* AFBE0 800A0C30 AE0F0000 */  sw         $t7, 0x0($s0)
    /* AFBE4 800A0C34 AC400004 */  sw         $zero, 0x4($v0)
    /* AFBE8 800A0C38 AC540000 */  sw         $s4, 0x0($v0)
    /* AFBEC 800A0C3C 8E020000 */  lw         $v0, 0x0($s0)
    /* AFBF0 800A0C40 3C0FB900 */  lui        $t7, (0xB900031D >> 16)
    /* AFBF4 800A0C44 35EF031D */  ori        $t7, $t7, (0xB900031D & 0xFFFF)
    /* AFBF8 800A0C48 244E0008 */  addiu      $t6, $v0, 0x8
    /* AFBFC 800A0C4C AE0E0000 */  sw         $t6, 0x0($s0)
    /* AFC00 800A0C50 AC400004 */  sw         $zero, 0x4($v0)
    /* AFC04 800A0C54 AC580000 */  sw         $t8, 0x0($v0)
    /* AFC08 800A0C58 8E020000 */  lw         $v0, 0x0($s0)
    /* AFC0C 800A0C5C 3C0E0050 */  lui        $t6, (0x504240 >> 16)
    /* AFC10 800A0C60 35CE4240 */  ori        $t6, $t6, (0x504240 & 0xFFFF)
    /* AFC14 800A0C64 24590008 */  addiu      $t9, $v0, 0x8
    /* AFC18 800A0C68 AE190000 */  sw         $t9, 0x0($s0)
    /* AFC1C 800A0C6C AC4E0004 */  sw         $t6, 0x4($v0)
    /* AFC20 800A0C70 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AFC24 800A0C74 8E020000 */  lw         $v0, 0x0($s0)
    /* AFC28 800A0C78 3C0F8014 */  lui        $t7, %hi(D_8013D590)
    /* AFC2C 800A0C7C 25EFD590 */  addiu      $t7, $t7, %lo(D_8013D590)
    /* AFC30 800A0C80 24580008 */  addiu      $t8, $v0, 0x8
    /* AFC34 800A0C84 AE180000 */  sw         $t8, 0x0($s0)
    /* AFC38 800A0C88 01F37024 */  and        $t6, $t7, $s3
    /* AFC3C 800A0C8C 3C19FD10 */  lui        $t9, (0xFD100000 >> 16)
    /* AFC40 800A0C90 AC590000 */  sw         $t9, 0x0($v0)
    /* AFC44 800A0C94 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AFC48 800A0C98 8E020000 */  lw         $v0, 0x0($s0)
    /* AFC4C 800A0C9C 3C19E800 */  lui        $t9, (0xE8000000 >> 16)
    /* AFC50 800A0CA0 3C0EF500 */  lui        $t6, (0xF5000100 >> 16)
    /* AFC54 800A0CA4 24580008 */  addiu      $t8, $v0, 0x8
    /* AFC58 800A0CA8 AE180000 */  sw         $t8, 0x0($s0)
    /* AFC5C 800A0CAC AC400004 */  sw         $zero, 0x4($v0)
    /* AFC60 800A0CB0 AC590000 */  sw         $t9, 0x0($v0)
    /* AFC64 800A0CB4 8E020000 */  lw         $v0, 0x0($s0)
    /* AFC68 800A0CB8 35CE0100 */  ori        $t6, $t6, (0xF5000100 & 0xFFFF)
    /* AFC6C 800A0CBC 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* AFC70 800A0CC0 244F0008 */  addiu      $t7, $v0, 0x8
    /* AFC74 800A0CC4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* AFC78 800A0CC8 AC5F0004 */  sw         $ra, 0x4($v0)
    /* AFC7C 800A0CCC AC4E0000 */  sw         $t6, 0x0($v0)
    /* AFC80 800A0CD0 8E020000 */  lw         $v0, 0x0($s0)
    /* AFC84 800A0CD4 3C0EF000 */  lui        $t6, (0xF0000000 >> 16)
    /* AFC88 800A0CD8 34018B00 */  ori        $at, $zero, 0x8B00
    /* AFC8C 800A0CDC 24580008 */  addiu      $t8, $v0, 0x8
    /* AFC90 800A0CE0 AE180000 */  sw         $t8, 0x0($s0)
    /* AFC94 800A0CE4 AC400004 */  sw         $zero, 0x4($v0)
    /* AFC98 800A0CE8 AC590000 */  sw         $t9, 0x0($v0)
    /* AFC9C 800A0CEC 8E020000 */  lw         $v0, 0x0($s0)
    /* AFCA0 800A0CF0 3C180703 */  lui        $t8, (0x703C000 >> 16)
    /* AFCA4 800A0CF4 3718C000 */  ori        $t8, $t8, (0x703C000 & 0xFFFF)
    /* AFCA8 800A0CF8 244F0008 */  addiu      $t7, $v0, 0x8
    /* AFCAC 800A0CFC AE0F0000 */  sw         $t7, 0x0($s0)
    /* AFCB0 800A0D00 AC580004 */  sw         $t8, 0x4($v0)
    /* AFCB4 800A0D04 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AFCB8 800A0D08 8E020000 */  lw         $v0, 0x0($s0)
    /* AFCBC 800A0D0C 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
    /* AFCC0 800A0D10 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
    /* AFCC4 800A0D14 24590008 */  addiu      $t9, $v0, 0x8
    /* AFCC8 800A0D18 AE190000 */  sw         $t9, 0x0($s0)
    /* AFCCC 800A0D1C AC400004 */  sw         $zero, 0x4($v0)
    /* AFCD0 800A0D20 AC540000 */  sw         $s4, 0x0($v0)
    /* AFCD4 800A0D24 8E020000 */  lw         $v0, 0x0($s0)
    /* AFCD8 800A0D28 34188000 */  ori        $t8, $zero, 0x8000
    /* AFCDC 800A0D2C 27A40170 */  addiu      $a0, $sp, 0x170
    /* AFCE0 800A0D30 244F0008 */  addiu      $t7, $v0, 0x8
    /* AFCE4 800A0D34 AE0F0000 */  sw         $t7, 0x0($s0)
    /* AFCE8 800A0D38 AC580004 */  sw         $t8, 0x4($v0)
    /* AFCEC 800A0D3C AC4E0000 */  sw         $t6, 0x0($v0)
    /* AFCF0 800A0D40 8E020000 */  lw         $v0, 0x0($s0)
    /* AFCF4 800A0D44 3C0EFFFC */  lui        $t6, (0xFFFCF279 >> 16)
    /* AFCF8 800A0D48 3C0FFCFF */  lui        $t7, (0xFCFFFFFF >> 16)
    /* AFCFC 800A0D4C 24590008 */  addiu      $t9, $v0, 0x8
    /* AFD00 800A0D50 AE190000 */  sw         $t9, 0x0($s0)
    /* AFD04 800A0D54 35EFFFFF */  ori        $t7, $t7, (0xFCFFFFFF & 0xFFFF)
    /* AFD08 800A0D58 35CEF279 */  ori        $t6, $t6, (0xFFFCF279 & 0xFFFF)
    /* AFD0C 800A0D5C AC4E0004 */  sw         $t6, 0x4($v0)
    /* AFD10 800A0D60 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AFD14 800A0D64 8E020000 */  lw         $v0, 0x0($s0)
    /* AFD18 800A0D68 3C0F8015 */  lui        $t7, %hi(D_8014EDE0)
    /* AFD1C 800A0D6C 25EFEDE0 */  addiu      $t7, $t7, %lo(D_8014EDE0)
    /* AFD20 800A0D70 24580008 */  addiu      $t8, $v0, 0x8
    /* AFD24 800A0D74 AE180000 */  sw         $t8, 0x0($s0)
    /* AFD28 800A0D78 01F37024 */  and        $t6, $t7, $s3
    /* AFD2C 800A0D7C 3C19FD50 */  lui        $t9, (0xFD500000 >> 16)
    /* AFD30 800A0D80 AC590000 */  sw         $t9, 0x0($v0)
    /* AFD34 800A0D84 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AFD38 800A0D88 8E020000 */  lw         $v0, 0x0($s0)
    /* AFD3C 800A0D8C 3C19F550 */  lui        $t9, (0xF5500000 >> 16)
    /* AFD40 800A0D90 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
    /* AFD44 800A0D94 24580008 */  addiu      $t8, $v0, 0x8
    /* AFD48 800A0D98 AE180000 */  sw         $t8, 0x0($s0)
    /* AFD4C 800A0D9C AC5F0004 */  sw         $ra, 0x4($v0)
    /* AFD50 800A0DA0 AC590000 */  sw         $t9, 0x0($v0)
    /* AFD54 800A0DA4 8E020000 */  lw         $v0, 0x0($s0)
    /* AFD58 800A0DA8 3C19F300 */  lui        $t9, (0xF3000000 >> 16)
    /* AFD5C 800A0DAC 27A50168 */  addiu      $a1, $sp, 0x168
    /* AFD60 800A0DB0 244F0008 */  addiu      $t7, $v0, 0x8
    /* AFD64 800A0DB4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* AFD68 800A0DB8 AC400004 */  sw         $zero, 0x4($v0)
    /* AFD6C 800A0DBC AC4E0000 */  sw         $t6, 0x0($v0)
    /* AFD70 800A0DC0 8E020000 */  lw         $v0, 0x0($s0)
    /* AFD74 800A0DC4 3C0F070F */  lui        $t7, (0x70FF400 >> 16)
    /* AFD78 800A0DC8 35EFF400 */  ori        $t7, $t7, (0x70FF400 & 0xFFFF)
    /* AFD7C 800A0DCC 24580008 */  addiu      $t8, $v0, 0x8
    /* AFD80 800A0DD0 AE180000 */  sw         $t8, 0x0($s0)
    /* AFD84 800A0DD4 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AFD88 800A0DD8 AC590000 */  sw         $t9, 0x0($v0)
    /* AFD8C 800A0DDC 8E020000 */  lw         $v0, 0x0($s0)
    /* AFD90 800A0DE0 3C19F540 */  lui        $t9, (0xF5400400 >> 16)
    /* AFD94 800A0DE4 37390400 */  ori        $t9, $t9, (0xF5400400 & 0xFFFF)
    /* AFD98 800A0DE8 244E0008 */  addiu      $t6, $v0, 0x8
    /* AFD9C 800A0DEC AE0E0000 */  sw         $t6, 0x0($s0)
    /* AFDA0 800A0DF0 AC400004 */  sw         $zero, 0x4($v0)
    /* AFDA4 800A0DF4 AC540000 */  sw         $s4, 0x0($v0)
    /* AFDA8 800A0DF8 8E020000 */  lw         $v0, 0x0($s0)
    /* AFDAC 800A0DFC 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* AFDB0 800A0E00 02403025 */  or         $a2, $s2, $zero
    /* AFDB4 800A0E04 24580008 */  addiu      $t8, $v0, 0x8
    /* AFDB8 800A0E08 AE180000 */  sw         $t8, 0x0($s0)
    /* AFDBC 800A0E0C AC400004 */  sw         $zero, 0x4($v0)
    /* AFDC0 800A0E10 AC590000 */  sw         $t9, 0x0($v0)
    /* AFDC4 800A0E14 8E020000 */  lw         $v0, 0x0($s0)
    /* AFDC8 800A0E18 3C180007 */  lui        $t8, (0x7C07C >> 16)
    /* AFDCC 800A0E1C 3718C07C */  ori        $t8, $t8, (0x7C07C & 0xFFFF)
    /* AFDD0 800A0E20 244F0008 */  addiu      $t7, $v0, 0x8
    /* AFDD4 800A0E24 AE0F0000 */  sw         $t7, 0x0($s0)
    /* AFDD8 800A0E28 AC580004 */  sw         $t8, 0x4($v0)
    /* AFDDC 800A0E2C AC4E0000 */  sw         $t6, 0x0($v0)
    /* AFDE0 800A0E30 8E020000 */  lw         $v0, 0x0($s0)
    /* AFDE4 800A0E34 3C0F0400 */  lui        $t7, (0x400103F >> 16)
    /* AFDE8 800A0E38 35EF103F */  ori        $t7, $t7, (0x400103F & 0xFFFF)
    /* AFDEC 800A0E3C 24590008 */  addiu      $t9, $v0, 0x8
    /* AFDF0 800A0E40 AE190000 */  sw         $t9, 0x0($s0)
    /* AFDF4 800A0E44 AC4D0004 */  sw         $t5, 0x4($v0)
    /* AFDF8 800A0E48 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AFDFC 800A0E4C 8E020000 */  lw         $v0, 0x0($s0)
    /* AFE00 800A0E50 3C190002 */  lui        $t9, (0x20406 >> 16)
    /* AFE04 800A0E54 3C18B102 */  lui        $t8, (0xB1020004 >> 16)
    /* AFE08 800A0E58 244E0008 */  addiu      $t6, $v0, 0x8
    /* AFE0C 800A0E5C AE0E0000 */  sw         $t6, 0x0($s0)
    /* AFE10 800A0E60 37180004 */  ori        $t8, $t8, (0xB1020004 & 0xFFFF)
    /* AFE14 800A0E64 37390406 */  ori        $t9, $t9, (0x20406 & 0xFFFF)
    /* AFE18 800A0E68 AC590004 */  sw         $t9, 0x4($v0)
    /* AFE1C 800A0E6C AC580000 */  sw         $t8, 0x0($v0)
    /* AFE20 800A0E70 8E020000 */  lw         $v0, 0x0($s0)
    /* AFE24 800A0E74 3C0EBD00 */  lui        $t6, (0xBD000000 >> 16)
    /* AFE28 800A0E78 244F0008 */  addiu      $t7, $v0, 0x8
    /* AFE2C 800A0E7C AE0F0000 */  sw         $t7, 0x0($s0)
    /* AFE30 800A0E80 AC400004 */  sw         $zero, 0x4($v0)
    /* AFE34 800A0E84 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AFE38 800A0E88 8463F1FA */  lh         $v1, %lo(D_8014F1FA)($v1)
    /* AFE3C 800A0E8C 8E270000 */  lw         $a3, 0x0($s1)
    /* AFE40 800A0E90 00031823 */  negu       $v1, $v1
    /* AFE44 800A0E94 0003C0C0 */  sll        $t8, $v1, 3
    /* AFE48 800A0E98 0303C021 */  addu       $t8, $t8, $v1
    /* AFE4C 800A0E9C 0018C080 */  sll        $t8, $t8, 2
    /* AFE50 800A0EA0 0303C023 */  subu       $t8, $t8, $v1
    /* AFE54 800A0EA4 0018C080 */  sll        $t8, $t8, 2
    /* AFE58 800A0EA8 0303C023 */  subu       $t8, $t8, $v1
    /* AFE5C 800A0EAC 0018C040 */  sll        $t8, $t8, 1
    /* AFE60 800A0EB0 03011821 */  addu       $v1, $t8, $at
    /* AFE64 800A0EB4 000371C3 */  sra        $t6, $v1, 7
    /* AFE68 800A0EB8 A64E0004 */  sh         $t6, 0x4($s2)
    /* AFE6C 800A0EBC A64E0002 */  sh         $t6, 0x2($s2)
    /* AFE70 800A0EC0 0C000E74 */  jal        func_800039D0_45D0
    /* AFE74 800A0EC4 A64E0000 */   sh        $t6, 0x0($s2)
    /* AFE78 800A0EC8 8E020000 */  lw         $v0, 0x0($s0)
    /* AFE7C 800A0ECC 3C190106 */  lui        $t9, (0x1060040 >> 16)
    /* AFE80 800A0ED0 37390040 */  ori        $t9, $t9, (0x1060040 & 0xFFFF)
    /* AFE84 800A0ED4 24580008 */  addiu      $t8, $v0, 0x8
    /* AFE88 800A0ED8 AE180000 */  sw         $t8, 0x0($s0)
    /* AFE8C 800A0EDC AC590000 */  sw         $t9, 0x0($v0)
    /* AFE90 800A0EE0 8E2F0000 */  lw         $t7, 0x0($s1)
    /* AFE94 800A0EE4 3C0DBA00 */  lui        $t5, (0xBA000E02 >> 16)
    /* AFE98 800A0EE8 35AD0E02 */  ori        $t5, $t5, (0xBA000E02 & 0xFFFF)
    /* AFE9C 800A0EEC 01F37024 */  and        $t6, $t7, $s3
    /* AFEA0 800A0EF0 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AFEA4 800A0EF4 8E380000 */  lw         $t8, 0x0($s1)
    /* AFEA8 800A0EF8 8E020000 */  lw         $v0, 0x0($s0)
    /* AFEAC 800A0EFC 27190040 */  addiu      $t9, $t8, 0x40
    /* AFEB0 800A0F00 244F0008 */  addiu      $t7, $v0, 0x8
    /* AFEB4 800A0F04 AE390000 */  sw         $t9, 0x0($s1)
    /* AFEB8 800A0F08 AE0F0000 */  sw         $t7, 0x0($s0)
    /* AFEBC 800A0F0C AC400004 */  sw         $zero, 0x4($v0)
    /* AFEC0 800A0F10 AC4D0000 */  sw         $t5, 0x0($v0)
    /* AFEC4 800A0F14 8E020000 */  lw         $v0, 0x0($s0)
    /* AFEC8 800A0F18 3C190050 */  lui        $t9, (0x504240 >> 16)
    /* AFECC 800A0F1C 3C18B900 */  lui        $t8, (0xB900031D >> 16)
    /* AFED0 800A0F20 244E0008 */  addiu      $t6, $v0, 0x8
    /* AFED4 800A0F24 AE0E0000 */  sw         $t6, 0x0($s0)
    /* AFED8 800A0F28 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
    /* AFEDC 800A0F2C 37394240 */  ori        $t9, $t9, (0x504240 & 0xFFFF)
    /* AFEE0 800A0F30 AC590004 */  sw         $t9, 0x4($v0)
    /* AFEE4 800A0F34 AC580000 */  sw         $t8, 0x0($v0)
    /* AFEE8 800A0F38 8E020000 */  lw         $v0, 0x0($s0)
    /* AFEEC 800A0F3C 3C186020 */  lui        $t8, (0x602020FF >> 16)
    /* AFEF0 800A0F40 371820FF */  ori        $t8, $t8, (0x602020FF & 0xFFFF)
    /* AFEF4 800A0F44 244F0008 */  addiu      $t7, $v0, 0x8
    /* AFEF8 800A0F48 AE0F0000 */  sw         $t7, 0x0($s0)
    /* AFEFC 800A0F4C 3C0EFA00 */  lui        $t6, (0xFA000000 >> 16)
    /* AFF00 800A0F50 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AFF04 800A0F54 AC580004 */  sw         $t8, 0x4($v0)
    /* AFF08 800A0F58 8E020000 */  lw         $v0, 0x0($s0)
    /* AFF0C 800A0F5C 3C0EFF2F */  lui        $t6, (0xFF2FFFFF >> 16)
    /* AFF10 800A0F60 3C0FFC11 */  lui        $t7, (0xFC119623 >> 16)
    /* AFF14 800A0F64 24590008 */  addiu      $t9, $v0, 0x8
    /* AFF18 800A0F68 AE190000 */  sw         $t9, 0x0($s0)
    /* AFF1C 800A0F6C 35EF9623 */  ori        $t7, $t7, (0xFC119623 & 0xFFFF)
    /* AFF20 800A0F70 35CEFFFF */  ori        $t6, $t6, (0xFF2FFFFF & 0xFFFF)
    /* AFF24 800A0F74 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AFF28 800A0F78 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AFF2C 800A0F7C 8E020000 */  lw         $v0, 0x0($s0)
    /* AFF30 800A0F80 3C19BB00 */  lui        $t9, (0xBB000001 >> 16)
    /* AFF34 800A0F84 37390001 */  ori        $t9, $t9, (0xBB000001 & 0xFFFF)
    /* AFF38 800A0F88 24580008 */  addiu      $t8, $v0, 0x8
    /* AFF3C 800A0F8C AE180000 */  sw         $t8, 0x0($s0)
    /* AFF40 800A0F90 240FFFFF */  addiu      $t7, $zero, -0x1
    /* AFF44 800A0F94 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AFF48 800A0F98 AC590000 */  sw         $t9, 0x0($v0)
    /* AFF4C 800A0F9C 8E020000 */  lw         $v0, 0x0($s0)
    /* AFF50 800A0FA0 3C0F0504 */  lui        $t7, %hi(D_503C8B0)
    /* AFF54 800A0FA4 25EFC8B0 */  addiu      $t7, $t7, %lo(D_503C8B0)
    /* AFF58 800A0FA8 244E0008 */  addiu      $t6, $v0, 0x8
    /* AFF5C 800A0FAC AE0E0000 */  sw         $t6, 0x0($s0)
    /* AFF60 800A0FB0 AC400004 */  sw         $zero, 0x4($v0)
    /* AFF64 800A0FB4 AC4D0000 */  sw         $t5, 0x0($v0)
    /* AFF68 800A0FB8 8E020000 */  lw         $v0, 0x0($s0)
    /* AFF6C 800A0FBC 01F37024 */  and        $t6, $t7, $s3
    /* AFF70 800A0FC0 3C19FD70 */  lui        $t9, (0xFD700000 >> 16)
    /* AFF74 800A0FC4 24580008 */  addiu      $t8, $v0, 0x8
    /* AFF78 800A0FC8 AE180000 */  sw         $t8, 0x0($s0)
    /* AFF7C 800A0FCC AC4E0004 */  sw         $t6, 0x4($v0)
    /* AFF80 800A0FD0 AC590000 */  sw         $t9, 0x0($v0)
    /* AFF84 800A0FD4 8E020000 */  lw         $v0, 0x0($s0)
    /* AFF88 800A0FD8 3C0F0705 */  lui        $t7, (0x7054150 >> 16)
    /* AFF8C 800A0FDC 35EF4150 */  ori        $t7, $t7, (0x7054150 & 0xFFFF)
    /* AFF90 800A0FE0 24580008 */  addiu      $t8, $v0, 0x8
    /* AFF94 800A0FE4 AE180000 */  sw         $t8, 0x0($s0)
    /* AFF98 800A0FE8 3C19F570 */  lui        $t9, (0xF5700000 >> 16)
    /* AFF9C 800A0FEC AC590000 */  sw         $t9, 0x0($v0)
    /* AFFA0 800A0FF0 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AFFA4 800A0FF4 8E020000 */  lw         $v0, 0x0($s0)
    /* AFFA8 800A0FF8 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
    /* AFFAC 800A0FFC 3C0FF300 */  lui        $t7, (0xF3000000 >> 16)
    /* AFFB0 800A1000 244E0008 */  addiu      $t6, $v0, 0x8
    /* AFFB4 800A1004 AE0E0000 */  sw         $t6, 0x0($s0)
    /* AFFB8 800A1008 AC400004 */  sw         $zero, 0x4($v0)
    /* AFFBC 800A100C AC580000 */  sw         $t8, 0x0($v0)
    /* AFFC0 800A1010 8E020000 */  lw         $v0, 0x0($s0)
    /* AFFC4 800A1014 3C0E071F */  lui        $t6, (0x71FF200 >> 16)
    /* AFFC8 800A1018 35CEF200 */  ori        $t6, $t6, (0x71FF200 & 0xFFFF)
    /* AFFCC 800A101C 24590008 */  addiu      $t9, $v0, 0x8
    /* AFFD0 800A1020 AE190000 */  sw         $t9, 0x0($s0)
    /* AFFD4 800A1024 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AFFD8 800A1028 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AFFDC 800A102C 8E020000 */  lw         $v0, 0x0($s0)
    /* AFFE0 800A1030 3C0FF568 */  lui        $t7, (0xF5680800 >> 16)
    /* AFFE4 800A1034 3C0E0005 */  lui        $t6, (0x54150 >> 16)
    /* AFFE8 800A1038 24580008 */  addiu      $t8, $v0, 0x8
    /* AFFEC 800A103C AE180000 */  sw         $t8, 0x0($s0)
    /* AFFF0 800A1040 AC400004 */  sw         $zero, 0x4($v0)
    /* AFFF4 800A1044 AC540000 */  sw         $s4, 0x0($v0)
    /* AFFF8 800A1048 8E020000 */  lw         $v0, 0x0($s0)
    /* AFFFC 800A104C 35CE4150 */  ori        $t6, $t6, (0x54150 & 0xFFFF)
    /* B0000 800A1050 35EF0800 */  ori        $t7, $t7, (0xF5680800 & 0xFFFF)
    /* B0004 800A1054 24590008 */  addiu      $t9, $v0, 0x8
    /* B0008 800A1058 AE190000 */  sw         $t9, 0x0($s0)
    /* B000C 800A105C AC4E0004 */  sw         $t6, 0x4($v0)
    /* B0010 800A1060 AC4F0000 */  sw         $t7, 0x0($v0)
    /* B0014 800A1064 8E020000 */  lw         $v0, 0x0($s0)
    /* B0018 800A1068 3C0F0007 */  lui        $t7, (0x7C07C >> 16)
    /* B001C 800A106C 35EFC07C */  ori        $t7, $t7, (0x7C07C & 0xFFFF)
    /* B0020 800A1070 24580008 */  addiu      $t8, $v0, 0x8
    /* B0024 800A1074 AE180000 */  sw         $t8, 0x0($s0)
    /* B0028 800A1078 3C19F200 */  lui        $t9, (0xF2000000 >> 16)
    /* B002C 800A107C AC590000 */  sw         $t9, 0x0($v0)
    /* B0030 800A1080 AC4F0004 */  sw         $t7, 0x4($v0)
    /* B0034 800A1084 8E020000 */  lw         $v0, 0x0($s0)
    /* B0038 800A1088 3C198014 */  lui        $t9, %hi(D_8013D628)
    /* B003C 800A108C 2739D628 */  addiu      $t9, $t9, %lo(D_8013D628)
    /* B0040 800A1090 244E0008 */  addiu      $t6, $v0, 0x8
    /* B0044 800A1094 AE0E0000 */  sw         $t6, 0x0($s0)
    /* B0048 800A1098 3C180400 */  lui        $t8, (0x400103F >> 16)
    /* B004C 800A109C 3718103F */  ori        $t8, $t8, (0x400103F & 0xFFFF)
    /* B0050 800A10A0 03337824 */  and        $t7, $t9, $s3
    /* B0054 800A10A4 AC4F0004 */  sw         $t7, 0x4($v0)
    /* B0058 800A10A8 AC580000 */  sw         $t8, 0x0($v0)
    /* B005C 800A10AC 8E020000 */  lw         $v0, 0x0($s0)
    /* B0060 800A10B0 3C0F0002 */  lui        $t7, (0x20406 >> 16)
    /* B0064 800A10B4 3C19B102 */  lui        $t9, (0xB1020004 >> 16)
    /* B0068 800A10B8 244E0008 */  addiu      $t6, $v0, 0x8
    /* B006C 800A10BC AE0E0000 */  sw         $t6, 0x0($s0)
    /* B0070 800A10C0 AC400004 */  sw         $zero, 0x4($v0)
    /* B0074 800A10C4 AC540000 */  sw         $s4, 0x0($v0)
    /* B0078 800A10C8 8E020000 */  lw         $v0, 0x0($s0)
    /* B007C 800A10CC 37390004 */  ori        $t9, $t9, (0xB1020004 & 0xFFFF)
    /* B0080 800A10D0 35EF0406 */  ori        $t7, $t7, (0x20406 & 0xFFFF)
    /* B0084 800A10D4 24580008 */  addiu      $t8, $v0, 0x8
    /* B0088 800A10D8 AE180000 */  sw         $t8, 0x0($s0)
    /* B008C 800A10DC AC4F0004 */  sw         $t7, 0x4($v0)
    /* B0090 800A10E0 AC590000 */  sw         $t9, 0x0($v0)
    /* B0094 800A10E4 8E020000 */  lw         $v0, 0x0($s0)
    /* B0098 800A10E8 3C19BB00 */  lui        $t9, (0xBB000001 >> 16)
    /* B009C 800A10EC 3C0F8000 */  lui        $t7, (0x80008000 >> 16)
    /* B00A0 800A10F0 244E0008 */  addiu      $t6, $v0, 0x8
    /* B00A4 800A10F4 AE0E0000 */  sw         $t6, 0x0($s0)
    /* B00A8 800A10F8 AC400004 */  sw         $zero, 0x4($v0)
    /* B00AC 800A10FC AC540000 */  sw         $s4, 0x0($v0)
    /* B00B0 800A1100 8E020000 */  lw         $v0, 0x0($s0)
    /* B00B4 800A1104 35EF8000 */  ori        $t7, $t7, (0x80008000 & 0xFFFF)
    /* B00B8 800A1108 37390001 */  ori        $t9, $t9, (0xBB000001 & 0xFFFF)
    /* B00BC 800A110C 24580008 */  addiu      $t8, $v0, 0x8
    /* B00C0 800A1110 AE180000 */  sw         $t8, 0x0($s0)
    /* B00C4 800A1114 AC4F0004 */  sw         $t7, 0x4($v0)
    /* B00C8 800A1118 AC590000 */  sw         $t9, 0x0($v0)
    /* B00CC 800A111C 8E020000 */  lw         $v0, 0x0($s0)
    /* B00D0 800A1120 24190200 */  addiu      $t9, $zero, 0x200
    /* B00D4 800A1124 3C18B700 */  lui        $t8, (0xB7000000 >> 16)
    /* B00D8 800A1128 244E0008 */  addiu      $t6, $v0, 0x8
    /* B00DC 800A112C AE0E0000 */  sw         $t6, 0x0($s0)
    /* B00E0 800A1130 AC590004 */  sw         $t9, 0x4($v0)
    /* B00E4 800A1134 0C02765B */  jal        func_8009D96C_AC91C
    /* B00E8 800A1138 AC580000 */   sw        $t8, 0x0($v0)
    /* B00EC 800A113C 3C0F8015 */  lui        $t7, %hi(D_8014F1FA)
    /* B00F0 800A1140 3C058007 */  lui        $a1, %hi(D_80068088)
    /* B00F4 800A1144 8CA58088 */  lw         $a1, %lo(D_80068088)($a1)
    /* B00F8 800A1148 85EFF1FA */  lh         $t7, %lo(D_8014F1FA)($t7)
    /* B00FC 800A114C 240E004A */  addiu      $t6, $zero, 0x4A
    /* B0100 800A1150 24A5FFB0 */  addiu      $a1, $a1, -0x50
    /* B0104 800A1154 0C00684C */  jal        func_8001A130_1AD30
    /* B0108 800A1158 01CF2023 */   subu      $a0, $t6, $t7
    /* B010C 800A115C 00002025 */  or         $a0, $zero, $zero
    /* B0110 800A1160 0C000D61 */  jal        isButtonNewlyPressed
    /* B0114 800A1164 24050020 */   addiu     $a1, $zero, 0x20
    /* B0118 800A1168 10400007 */  beqz       $v0, .L800A1188_B0138
    /* B011C 800A116C 3C188005 */   lui       $t8, %hi(D_80052B34)
    /* B0120 800A1170 8F182B34 */  lw         $t8, %lo(D_80052B34)($t8)
    /* B0124 800A1174 9319001A */  lbu        $t9, 0x1A($t8)
    /* B0128 800A1178 13200003 */  beqz       $t9, .L800A1188_B0138
    /* B012C 800A117C 00000000 */   nop
    /* B0130 800A1180 0C00681A */  jal        func_8001A068_1AC68
    /* B0134 800A1184 00000000 */   nop
  .L800A1188_B0138:
    /* B0138 800A1188 3C118005 */  lui        $s1, %hi(D_80053BF8)
    /* B013C 800A118C 26313BF8 */  addiu      $s1, $s1, %lo(D_80053BF8)
    /* B0140 800A1190 240E007F */  addiu      $t6, $zero, 0x7F
    /* B0144 800A1194 A62E0000 */  sh         $t6, 0x0($s1)
    /* B0148 800A1198 862F0000 */  lh         $t7, 0x0($s1)
    /* B014C 800A119C 3C128005 */  lui        $s2, %hi(D_80053BFA)
    /* B0150 800A11A0 3C018005 */  lui        $at, %hi(D_80053BF0)
    /* B0154 800A11A4 26523BFA */  addiu      $s2, $s2, %lo(D_80053BFA)
    /* B0158 800A11A8 241800C8 */  addiu      $t8, $zero, 0xC8
    /* B015C 800A11AC A42F3BF0 */  sh         $t7, %lo(D_80053BF0)($at)
    /* B0160 800A11B0 A6580000 */  sh         $t8, 0x0($s2)
    /* B0164 800A11B4 86590000 */  lh         $t9, 0x0($s2)
    /* B0168 800A11B8 3C138005 */  lui        $s3, %hi(D_80053BFC)
    /* B016C 800A11BC 3C018005 */  lui        $at, %hi(D_80053BF2)
    /* B0170 800A11C0 26733BFC */  addiu      $s3, $s3, %lo(D_80053BFC)
    /* B0174 800A11C4 240E00DC */  addiu      $t6, $zero, 0xDC
    /* B0178 800A11C8 A4393BF2 */  sh         $t9, %lo(D_80053BF2)($at)
    /* B017C 800A11CC A66E0000 */  sh         $t6, 0x0($s3)
    /* B0180 800A11D0 866F0000 */  lh         $t7, 0x0($s3)
    /* B0184 800A11D4 3C018005 */  lui        $at, %hi(D_80053BF4)
    /* B0188 800A11D8 241800FF */  addiu      $t8, $zero, 0xFF
    /* B018C 800A11DC A42F3BF4 */  sh         $t7, %lo(D_80053BF4)($at)
    /* B0190 800A11E0 3C018005 */  lui        $at, %hi(D_80053BF6)
    /* B0194 800A11E4 A4203BF6 */  sh         $zero, %lo(D_80053BF6)($at)
    /* B0198 800A11E8 3C018005 */  lui        $at, %hi(D_80053BFE)
    /* B019C 800A11EC A4383BFE */  sh         $t8, %lo(D_80053BFE)($at)
    /* B01A0 800A11F0 2404001E */  addiu      $a0, $zero, 0x1E
    /* B01A4 800A11F4 2405001E */  addiu      $a1, $zero, 0x1E
    /* B01A8 800A11F8 0C0062BB */  jal        func_80018AEC_196EC
    /* B01AC 800A11FC 24060064 */   addiu     $a2, $zero, 0x64
    /* B01B0 800A1200 10400020 */  beqz       $v0, .L800A1284_B0234
    /* B01B4 800A1204 00000000 */   nop
    /* B01B8 800A1208 0C027116 */  jal        func_8009C458_AB408
    /* B01BC 800A120C 00000000 */   nop
    /* B01C0 800A1210 0C0062A8 */  jal        func_80018AA0_196A0
    /* B01C4 800A1214 00000000 */   nop
    /* B01C8 800A1218 1040001A */  beqz       $v0, .L800A1284_B0234
    /* B01CC 800A121C 2419007F */   addiu     $t9, $zero, 0x7F
    /* B01D0 800A1220 A6390000 */  sh         $t9, 0x0($s1)
    /* B01D4 800A1224 862E0000 */  lh         $t6, 0x0($s1)
    /* B01D8 800A1228 3C018005 */  lui        $at, %hi(D_80053BF0)
    /* B01DC 800A122C 240F00C8 */  addiu      $t7, $zero, 0xC8
    /* B01E0 800A1230 A42E3BF0 */  sh         $t6, %lo(D_80053BF0)($at)
    /* B01E4 800A1234 A64F0000 */  sh         $t7, 0x0($s2)
    /* B01E8 800A1238 86580000 */  lh         $t8, 0x0($s2)
    /* B01EC 800A123C 3C018005 */  lui        $at, %hi(D_80053BF2)
    /* B01F0 800A1240 241900DC */  addiu      $t9, $zero, 0xDC
    /* B01F4 800A1244 A4383BF2 */  sh         $t8, %lo(D_80053BF2)($at)
    /* B01F8 800A1248 A6790000 */  sh         $t9, 0x0($s3)
    /* B01FC 800A124C 866E0000 */  lh         $t6, 0x0($s3)
    /* B0200 800A1250 3C018005 */  lui        $at, %hi(D_80053BF4)
    /* B0204 800A1254 240F00FF */  addiu      $t7, $zero, 0xFF
    /* B0208 800A1258 A42E3BF4 */  sh         $t6, %lo(D_80053BF4)($at)
    /* B020C 800A125C 3C018005 */  lui        $at, %hi(D_80053BF6)
    /* B0210 800A1260 A4203BF6 */  sh         $zero, %lo(D_80053BF6)($at)
    /* B0214 800A1264 3C018005 */  lui        $at, %hi(D_80053BFE)
    /* B0218 800A1268 A42F3BFE */  sh         $t7, %lo(D_80053BFE)($at)
    /* B021C 800A126C 8E020000 */  lw         $v0, 0x0($s0)
    /* B0220 800A1270 24580008 */  addiu      $t8, $v0, 0x8
    /* B0224 800A1274 AE180000 */  sw         $t8, 0x0($s0)
    /* B0228 800A1278 AC400004 */  sw         $zero, 0x4($v0)
    /* B022C 800A127C 0C005F29 */  jal        func_80017CA4_188A4
    /* B0230 800A1280 AC540000 */   sw        $s4, 0x0($v0)
  .L800A1284_B0234:
    /* B0234 800A1284 0C04C007 */  jal        func_8013001C_13EFCC
    /* B0238 800A1288 00000000 */   nop
    /* B023C 800A128C 3C198015 */  lui        $t9, %hi(D_8014ED56)
    /* B0240 800A1290 8739ED56 */  lh         $t9, %lo(D_8014ED56)($t9)
    /* B0244 800A1294 2B210021 */  slti       $at, $t9, 0x21
    /* B0248 800A1298 14200005 */  bnez       $at, .L800A12B0_B0260
    /* B024C 800A129C 00000000 */   nop
    /* B0250 800A12A0 0C027C4C */  jal        func_8009F130_AE0E0
    /* B0254 800A12A4 00000000 */   nop
    /* B0258 800A12A8 10000003 */  b          .L800A12B8_B0268
    /* B025C 800A12AC 00000000 */   nop
  .L800A12B0_B0260:
    /* B0260 800A12B0 3C018015 */  lui        $at, %hi(D_8014ED54)
    /* B0264 800A12B4 A420ED54 */  sh         $zero, %lo(D_8014ED54)($at)
  .L800A12B8_B0268:
    /* B0268 800A12B8 0C006A0A */  jal        func_8001A828_1B428
    /* B026C 800A12BC 00000000 */   nop
    /* B0270 800A12C0 0C04EBD6 */  jal        func_8013AF58_149F08
    /* B0274 800A12C4 00000000 */   nop
    /* B0278 800A12C8 0C027ED6 */  jal        func_8009FB58_AEB08
    /* B027C 800A12CC 00000000 */   nop
    /* B0280 800A12D0 8E020000 */  lw         $v0, 0x0($s0)
    /* B0284 800A12D4 3C198000 */  lui        $t9, (0x80008000 >> 16)
    /* B0288 800A12D8 37398000 */  ori        $t9, $t9, (0x80008000 & 0xFFFF)
    /* B028C 800A12DC 244E0008 */  addiu      $t6, $v0, 0x8
    /* B0290 800A12E0 AE0E0000 */  sw         $t6, 0x0($s0)
    /* B0294 800A12E4 AC400004 */  sw         $zero, 0x4($v0)
    /* B0298 800A12E8 AC540000 */  sw         $s4, 0x0($v0)
    /* B029C 800A12EC 8E020000 */  lw         $v0, 0x0($s0)
    /* B02A0 800A12F0 3C18BB00 */  lui        $t8, (0xBB000000 >> 16)
    /* B02A4 800A12F4 244F0008 */  addiu      $t7, $v0, 0x8
    /* B02A8 800A12F8 AE0F0000 */  sw         $t7, 0x0($s0)
    /* B02AC 800A12FC AC590004 */  sw         $t9, 0x4($v0)
    /* B02B0 800A1300 AC580000 */  sw         $t8, 0x0($v0)
    /* B02B4 800A1304 8E020000 */  lw         $v0, 0x0($s0)
    /* B02B8 800A1308 3C18FFFE */  lui        $t8, (0xFFFE793C >> 16)
    /* B02BC 800A130C 3C0FFCFF */  lui        $t7, (0xFCFFFFFF >> 16)
    /* B02C0 800A1310 244E0008 */  addiu      $t6, $v0, 0x8
    /* B02C4 800A1314 AE0E0000 */  sw         $t6, 0x0($s0)
    /* B02C8 800A1318 35EFFFFF */  ori        $t7, $t7, (0xFCFFFFFF & 0xFFFF)
    /* B02CC 800A131C 3718793C */  ori        $t8, $t8, (0xFFFE793C & 0xFFFF)
    /* B02D0 800A1320 AC580004 */  sw         $t8, 0x4($v0)
    /* B02D4 800A1324 AC4F0000 */  sw         $t7, 0x0($v0)
    /* B02D8 800A1328 8E020000 */  lw         $v0, 0x0($s0)
    /* B02DC 800A132C 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
    /* B02E0 800A1330 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
    /* B02E4 800A1334 24590008 */  addiu      $t9, $v0, 0x8
    /* B02E8 800A1338 AE190000 */  sw         $t9, 0x0($s0)
    /* B02EC 800A133C AC400004 */  sw         $zero, 0x4($v0)
    /* B02F0 800A1340 AC4E0000 */  sw         $t6, 0x0($v0)
  .L800A1344_B02F4:
    /* B02F4 800A1344 8FBF002C */  lw         $ra, 0x2C($sp)
    /* B02F8 800A1348 8FB00018 */  lw         $s0, 0x18($sp)
    /* B02FC 800A134C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* B0300 800A1350 8FB20020 */  lw         $s2, 0x20($sp)
    /* B0304 800A1354 8FB30024 */  lw         $s3, 0x24($sp)
    /* B0308 800A1358 8FB40028 */  lw         $s4, 0x28($sp)
    /* B030C 800A135C 03E00008 */  jr         $ra
    /* B0310 800A1360 27BD0180 */   addiu     $sp, $sp, 0x180
endlabel func_800A03FC_AF3AC
