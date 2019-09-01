module n64;

import std.typecons: tuple, Tuple;

import os, ram, gameState, frontEnd, gameplayInside;

// U RAM GREECE 400-2de04
class N64
{
public:
	IGameState currentState;

	// RAM 00000190
	void testAgainstSavedCRCs() { }

	// RAM 80000400 (ROM 00001000)
	void GameEntryPoint()
	{

		//	lui		t0, $8004		# 00000400:3c088004	t0=$80040000
		//	lui		t1, $0003		# 00000404:3c090003	t1=$00030000
		//	addiu		t0, t0, $fb20		# 00000408:2508fb20	t0=$8003fb20
		int* t0 = &x8003fb20;
		//	ori		t1, t1, $0750		# 0000040c:35290750	t1=$00030750
		int t1 = 0x00030750;
		do
		{
			//__00000410:					# 
			//	addi		t1, t1, $fff8		# 00000410:2129fff8	t1=$00030748
			t1 -= 8;
			//	sw		zero, $0000(t0)		# 00000414:ad000000	[8003fb20]
			*t0 = 0;
			//	sw		zero, $0004(t0)		# 00000418:ad000004	[8003fb24]
			*(t0 + 4) = 0;
			//	bne		t1, zero, $00000410	# 0000041c:1520fffc	^ __00000410
			//	addi		t0, t0, $0008		# 00000420:21080008	t0=$8003fb28
			t0 += 8;
		} while (t1 != 0);
		//	lui		t2, $8001		# 00000424:3c0a8001	t2=$80010000
		//	lui		sp, $8006		# 00000428:3c1d8006	sp=$80060000
		//	addiu		t2, t2, $ef10		# 0000042c:254aef10	t2=$8000ef10
		//	jr		t2			# 00000430:01400008	t2=$8000ef10
		//	addiu		sp, sp, $bf58		# 00000434:27bdbf58	sp=$8005bf58
		/// Set stack pointer initial value
		fnc0000ef10();
		//	nop					# 00000438:00000000	
		//	nop					# 0000043c:00000000	
		//	nop					# 00000440:00000000	
		//	nop					# 00000444:00000000	
		//	nop					# 00000448:00000000	
		//	nop					# 0000044c:00000000	
	}

	// RAM GREECE
	// a0 = 8005CE90
	// a1 = 0000000A
	static void fnc00000450(int a0) {
		//	addiu		sp, sp, $ffc8		# 00000450:27bdffc8	
		//	sw		s3, $002c(sp)		# 00000454:afb3002c	
		//	lui		at, $8004		# 00000458:3c018004	at=$80040000
		//	lui		t6, $8000		# 0000045c:3c0e8000	t6=$80000000
		//	sw		ra, $0034(sp)		# 00000460:afbf0034	
		//	sw		s4, $0030(sp)		# 00000464:afb40030	
		//	sw		s2, $0028(sp)		# 00000468:afb20028	
		//	sw		s1, $0024(sp)		# 0000046c:afb10024	
		//	sw		s0, $0020(sp)		# 00000470:afb00020	
		//	sw		a1, $003c(sp)		# 00000474:afa5003c	
		//	sb		zero, $2da8(at)		# 00000478:a0202da8	[80042da8]
		x80042da8 = 0;
		//	addiu		t6, t6, $0cd4		# 0000047c:25ce0cd4	t6=$80000cd4
		//	or		s3, a0, zero		# 00000480:00809825	
		//	sw		t6, $0010(a0)		# 00000484:ac8e0010	
		//	jal		$0001abe0		# 00000488:0c006af8	v FNC_0001abe0
		//	addiu		a0, zero, $7d00		# 0000048c:24047d00	a0=$00007d00
		fnc0001abe0(0x7d00);
		//	sw		v0, $0018(s3)		# 00000490:ae620018	
		//	lui		t7, $8003		# 00000494:3c0f8003	t7=$80030000
		//	lbu		t7, $1b58(t7)		# 00000498:91ef1b58	t7=$80031b58
		//	lui		s4, $8004		# 0000049c:3c148004	s4=$80040000
		//	addiu		s4, s4, $31ac		# 000004a0:269431ac	s4=$800431ac
		//	bne		t7, zero, $000004d0	# 000004a4:15e0000a	v __000004d0
		//	lui		a0, $8004		# 000004a8:3c048004	a0=$80040000
		//	mtc1		v0, $f4			# 000004ac:44822000	
		//	lui		at, $3f80		# 000004b0:3c013f80	at=$3f800000
		//	mtc1		at, $f8			# 000004b4:44814000	
		//	cvt.s.w		$f6, $f4		# 000004b8:468021a0	
		//	lui		at, $4270		# 000004bc:3c014270	at=$42700000
		//	mtc1		at, $f16		# 000004c0:44818000	
		//	mul.s		$f10, $f6, $f8		# 000004c4:46083282	
		//	beq		zero, zero, $000004f4	# 000004c8:1000000a	v __000004f4
		//	div.s		$f0, $f10, $f16		# 000004cc:46105003	
		//	lw		t9, $0018(s3)		# 000004d0:8e790018	
		//	lui		at, $3f80		# 000004d4:3c013f80	at=$3f800000
		//	mtc1		at, $f6			# 000004d8:44813000	
		//	mtc1		t9, $f18		# 000004dc:44999000	
		//	lui		at, $4248		# 000004e0:3c014248	at=$42480000
		//	mtc1		at, $f10		# 000004e4:44815000	
		//	cvt.s.w		$f4, $f18		# 000004e8:46809120	
		//	mul.s		$f8, $f4, $f6		# 000004ec:46062202	
		//	div.s		$f0, $f8, $f10		# 000004f0:460a4003	
		//	(cop1_s)	$0200040d		# 000004f4:4600040d	
		//	lui		v1, $8004		# 000004f8:3c038004	v1=$80040000
		//	addiu		v1, v1, $31a8		# 000004fc:246331a8	v1=$800431a8
		//	addiu		a0, a0, $fd58		# 00000500:2484fd58	a0=$8003fd58
		//	mfc1		v0, $f16		# 00000504:44028000	
		//	or		a1, s3, zero		# 00000508:02602825	
		//	mtc1		v0, $f18		# 0000050c:44829000	
		//	sw		v0, $0000(v1)		# 00000510:ac620000	[800431a8]
		//	bgez		v0, $0000052c		# 00000514:04410005	v __0000052c
		//	cvt.s.w		$f4, $f18		# 00000518:46809120	
		//	lui		at, $4f80		# 0000051c:3c014f80	at=$4f800000
		//	mtc1		at, $f6			# 00000520:44813000	
		//	nop					# 00000524:00000000	
		//	add.s		$f4, $f4, $f6		# 00000528:46062100	
		//	(cop1_s)	$0200203c		# 0000052c:4600203c	
		//	nop					# 00000530:00000000	
		//	bc1f		$00000544		# 00000534:45000003	v __00000544
		//	addiu		t2, v0, $0001		# 00000538:244a0001	
		//	sw		t2, $0000(v1)		# 0000053c:ac6a0000	[800431a8]
		//	or		v0, t2, zero		# 00000540:01401025	
		//	andi		t3, v0, $000f		# 00000544:304b000f	
		//	beq		t3, zero, $0000055c	# 00000548:11600004	v __0000055c
		//	addiu		at, zero, $fff0		# 0000054c:2401fff0	at=$fffffff0
		//	and		t4, v0, at		# 00000550:00416024	
		//	addiu		v0, t4, $0010		# 00000554:25820010	
		//	sw		v0, $0000(v1)		# 00000558:ac620000	[800431a8]
		//	addiu		t6, v0, $fff0		# 0000055c:244efff0	
		//	lui		at, $8004		# 00000560:3c018004	at=$80040000
		//	sw		t6, $31a4(at)		# 00000564:ac2e31a4	[800431a4]
		//	addiu		t7, v0, $00b0		# 00000568:244f00b0	
		//	jal		$0001adcc		# 0000056c:0c006b73	v FNC_0001adcc
		//	sw		t7, $0000(s4)		# 00000570:ae8f0000	
		fnc0001adcc();
		//	lui		v0, $8004		# 00000574:3c028004	v0=$80040000
		//	addiu		v0, v0, $2db8		# 00000578:24422db8	v0=$80042db8
		//	lui		s1, $8004		# 0000057c:3c118004	s1=$80040000
		//	lui		s0, $8004		# 00000580:3c108004	s0=$80040000
		//	sw		zero, $0004(v0)		# 00000584:ac400004	[80042dbc]
		//	sw		zero, $0000(v0)		# 00000588:ac400000	[80042db8]
		//	addiu		s0, s0, $2dcc		# 0000058c:26102dcc	s0=$80042dcc
		//	addiu		s1, s1, $2db8		# 00000590:26312db8	s1=$80042db8
		//	or		s2, zero, zero		# 00000594:00009025	
		//	or		a0, s0, zero		# 00000598:02002025	a0=$80042dcc
		//	jal		$0001ad70		# 0000059c:0c006b5c	v FNC_0001ad70
		//	or		a1, s1, zero		# 000005a0:02202825	a1=$80042db8
		alLink();
		//	lw		a2, $0014(s3)		# 000005a4:8e660014	
		//	addiu		t8, zero, $0400		# 000005a8:24180400	t8=$00000400
		//	sw		t8, $0010(sp)		# 000005ac:afb80010	
		//	or		a0, zero, zero		# 000005b0:00002025	
		//	or		a1, zero, zero		# 000005b4:00002825	
		//	jal		$0001ae00		# 000005b8:0c006b80	v FNC_0001ae00
		//	addiu		a3, zero, $0001		# 000005bc:24070001	a3=$00000001
		alHeapDBAlloc();
		//	addiu		s2, s2, $0001		# 000005c0:26520001	s2=$00000001
		//	slti		at, s2, $0031		# 000005c4:2a410031	
		//	addiu		s1, s1, $0014		# 000005c8:26310014	s1=$80042dcc
		//	addiu		s0, s0, $0014		# 000005cc:26100014	s0=$80042de0
		//	bne		at, zero, $00000598	# 000005d0:1420fff1	^ __00000598
		//	sw		v0, $fffc(s1)		# 000005d4:ae22fffc	[80042dc8]
		//	lw		a2, $0014(s3)		# 000005d8:8e660014	
		//	addiu		t9, zero, $0400		# 000005dc:24190400	t9=$00000400
		//	sw		t9, $0010(sp)		# 000005e0:afb90010	
		//	or		a0, zero, zero		# 000005e4:00002025	
		//	or		a1, zero, zero		# 000005e8:00002825	
		//	jal		$0001ae00		# 000005ec:0c006b80	v FNC_0001ae00
		//	addiu		a3, zero, $0001		# 000005f0:24070001	a3=$00000001
		alHeapDBAlloc();
		//	sw		v0, $0010(s1)		# 000005f4:ae220010	[80042ddc]
		//	lui		s1, $8004		# 000005f8:3c118004	s1=$80040000
		//	lui		s0, $8004		# 000005fc:3c108004	s0=$80040000
		//	addiu		s0, s0, $fb20		# 00000600:2610fb20	s0=$8003fb20
		//	addiu		s1, s1, $fb28		# 00000604:2631fb28	s1=$8003fb28
		//	lw		a2, $0014(s3)		# 00000608:8e660014	
		//	ori		t0, zero, $8000		# 0000060c:34088000	t0=$00008000
		//	sw		t0, $0010(sp)		# 00000610:afa80010	
		//	or		a0, zero, zero		# 00000614:00002025	
		//	or		a1, zero, zero		# 00000618:00002825	
		//	jal		$0001ae00		# 0000061c:0c006b80	v FNC_0001ae00
		//	addiu		a3, zero, $0001		# 00000620:24070001	a3=$00000001
		alHeapDBAlloc();
		//	addiu		s0, s0, $0004		# 00000624:26100004	s0=$8003fb24
		//	sltu		at, s0, s1		# 00000628:0211082b	
		//	bne		at, zero, $00000608	# 0000062c:1420fff6	^ __00000608
		//	sw		v0, $fffc(s0)		# 00000630:ae02fffc	[8003fb20]
		//	lui		s0, $8004		# 00000634:3c108004	s0=$80040000
		//	lui		s2, $8004		# 00000638:3c128004	s2=$80040000
		//	addiu		s2, s2, $fb2c		# 0000063c:2652fb2c	s2=$8003fb2c
		//	addiu		s0, s0, $fb20		# 00000640:2610fb20	s0=$8003fb20
		//	addiu		s1, zero, $0002		# 00000644:24110002	s1=$00000002
		//	lw		a2, $0014(s3)		# 00000648:8e660014	
		//	addiu		t1, zero, $0090		# 0000064c:24090090	t1=$00000090
		//	sw		t1, $0010(sp)		# 00000650:afa90010	
		//	or		a0, zero, zero		# 00000654:00002025	
		//	or		a1, zero, zero		# 00000658:00002825	
		//	jal		$0001ae00		# 0000065c:0c006b80	v FNC_0001ae00
		//	addiu		a3, zero, $0001		# 00000660:24070001	a3=$00000001
		alHeapDBAlloc();
		//	sw		v0, $0008(s0)		# 00000664:ae020008	[8003fb28]
		//	sh		s1, $0070(v0)		# 00000668:a4510070	
		//	lw		v1, $0008(s0)		# 0000066c:8e030008	v1=$8003fb28
		//	or		a0, zero, zero		# 00000670:00002025	
		//	or		a1, zero, zero		# 00000674:00002825	
		//	sw		v1, $0074(v1)		# 00000678:ac630074	[8019d764]
		//	lw		t2, $0000(s4)		# 0000067c:8e8a0000	
		//	lw		a2, $0014(s3)		# 00000680:8e660014	
		//	addiu		a3, zero, $0001		# 00000684:24070001	a3=$00000001
		//	sll		t3, t2, 2		# 00000688:000a5880	
		//	jal		$0001ae00		# 0000068c:0c006b80	v FNC_0001ae00
		//	sw		t3, $0010(sp)		# 00000690:afab0010	
		alHeapDBAlloc();
		//	lw		t4, $0008(s0)		# 00000694:8e0c0008	t4=$8003fb28
		//	addiu		s0, s0, $0004		# 00000698:26100004	s0=$8003fb24
		//	bne		s0, s2, $00000648	# 0000069c:1612ffea	^ __00000648
		//	sw		v0, $0000(t4)		# 000006a0:ad820000	[8019d6f0]
		//	lui		a0, $8004		# 000006a4:3c048004	a0=$80040000
		//	lui		a1, $8004		# 000006a8:3c058004	a1=$80040000
		//	addiu		a1, a1, $fd38		# 000006ac:24a5fd38	a1=$8003fd38
		//	addiu		a0, a0, $fd20		# 000006b0:2484fd20	a0=$8003fd20
		//	jal		$0001ae60		# 000006b4:0c006b98	v FNC_0001ae60
		//	addiu		a2, zero, $0008		# 000006b8:24060008	a2=$00000008
		osCreateMesgQueue();
		//	lui		a0, $8004		# 000006bc:3c048004	a0=$80040000
		//	lui		a1, $8004		# 000006c0:3c058004	a1=$80040000
		//	addiu		a1, a1, $fd00		# 000006c4:24a5fd00	a1=$8003fd00
		//	addiu		a0, a0, $fce8		# 000006c8:2484fce8	a0=$8003fce8
		//	jal		$0001ae60		# 000006cc:0c006b98	v FNC_0001ae60
		//	addiu		a2, zero, $0008		# 000006d0:24060008	a2=$00000008
		osCreateMesgQueue();
		//	lw		t6, $003c(sp)		# 000006d4:8fae003c	
		//	lui		s0, $8004		# 000006d8:3c108004	s0=$80040000
		//	lui		t5, $8004		# 000006dc:3c0d8004	t5=$80040000
		//	addiu		s0, s0, $fb38		# 000006e0:2610fb38	s0=$8003fb38
		//	addiu		t5, t5, $2da8		# 000006e4:25ad2da8	t5=$80042da8
		//	lui		a2, $8000		# 000006e8:3c068000	a2=$80000000
		//	addiu		a2, a2, $0730		# 000006ec:24c60730	a2=$80000730
		//	sw		t5, $0010(sp)		# 000006f0:afad0010	
		//	or		a0, s0, zero		# 000006f4:02002025	a0=$8003fb38
		//	addiu		a1, zero, $0005		# 000006f8:24050005	a1=$00000005
		//	or		a3, zero, zero		# 000006fc:00003825	
		//	jal		$0001ae90		# 00000700:0c006ba4	v FNC_0001ae90
		//	sw		t6, $0014(sp)		# 00000704:afae0014	
		//osCreateThread(); // Start on function 80000730
		//	jal		$0001afe0		# 00000708:0c006bf8	v FNC_0001afe0
		//	or		a0, s0, zero		# 0000070c:02002025	a0=$8003fb38
		osStartThread(0x8003fb38);
		//	lw		ra, $0034(sp)		# 00000710:8fbf0034	
		//	lw		s0, $0020(sp)		# 00000714:8fb00020	
		//	lw		s1, $0024(sp)		# 00000718:8fb10024	
		//	lw		s2, $0028(sp)		# 0000071c:8fb20028	
		//	lw		s3, $002c(sp)		# 00000720:8fb3002c	
		//	lw		s4, $0030(sp)		# 00000724:8fb40030	
		//	jr		ra			# 00000728:03e00008	
		//	addiu		sp, sp, $0038		# 0000072c:27bd0038	
	}

	// RAM GREECE
	static void fnc00000730() {
		//fnc0001b8f0();
		//osRecvMesg();
		//fnc0000091c();
		//osRecvMesg();
		//fnc00000ad4();
		//alClose();
	}

	// RAM GREECE
	static void fnc0000091c() {
		//fnc00000d0c();
		//osVirtualToPhysical();
		//osAiSetNextBuffer();
		//osAiGetLength();
		//alAudioFrame();
		//fnc0001b860();
		//osSendMesg();
	}

	// RAM GREECE
	static void fnc00000ad4() {
		//osAiGetLength();
	}

	// RAM GREECE
	static void fnc00000b13() {
		//osVirtualToPhysical();
		//osVirtualToPhysical();
		//alUnlink();
		//alLink();
		//osPiStartDma();
		//osVirtualToPhysical();
	}

	// RAM GREECE
	static void fnc00000cd4() {
	}

	// RAM GREECE
	static void fnc00000d0c() {
		//osRecvMesg();
		//alUnlink();
		//alLink();
	}

	// RAM 00000e40
	static void checkForRumblePak() {
		//fnc0001ca80();
		//fnc0001cc6c();
		//fnc0000108c();
	}

	// RAM GREECE
	static void fnc00000ed4() {
		//osRecvMesg();
		//fnc0000ff40();
		//fnc0001c798();
		//fnc0001c630();
		//fnc0001ca80();
		//fnc0001c630();
		//fnc0000ff88();
	}

	// RAM GREECE
	static void fnc00001050() {
		//osSendMesg();
	}

	// RAM GREECE
	static void fnc0000108c() {
		//osSendMesg();
	}

	// RAM GREECE
	static void fnc000010c4() {
		//osSendMesg();
	}

	// RAM GREECE
	static void fnc00001108() {
		//fnc0001ca80();
		//fnc0001c630();
	}

	// RAM GREECE
	static void fnc00001144() {
	}

	// RAM GREECE
	static void fnc00001190() {
		//fnc000010c4();
		//fnc00001050();
		//fnc0000108c();
		//checkForRumblePak();
		//fnc0000108c();
	}

	// RAM GREECE
	static void fnc00001400() {
	}

	// RAM GREECE
	static void fnc0000140c() {
	}

	// RAM GREECE
	static void fnc00001418() {
	}

	// RAM GREECE
	static void fnc00001424() {
		//osCreateMesgQueue();
		//osCreateThread();
		//osStartThread();
		//osCreateMesgQueue();
		//osSetEventMesg();
		//osContInit();
		//osEepromProbe();
		//osContSetCh();
		//fnc00002e48();
		//osSendMesg();
		//checkForRumblePak();
	}

	// RAM GREECE
	static void fnc000015b4() {}

	// RAM 00001624
	static void validateSaveVersionAndChecksum() {
		//fnc0001cc6c("Version %d failed\n");
		//fnc0001cc6c("Checksum failed\n");
	}

	// RAM 000016d8
	static void guess_SetupHighScores() {
		//fnc000015b4();
	}

	// RAM 00001830
	/// Is this identical to function 16d8 ?
	static void guess_SetupHighScores2() {
		//fnc000015b4();
	}

	// RAM GREECE
	static void fnc00001984() {
		//validateSaveVersionAndChecksum();
		//guess_SetupHighScores2();
	}

	// RAM 00001aa4
	static void guess_prepareToSaveGame() {
		//fnc0001cc6c("Save:score %d\n");
		//fnc0001cc6c("People %d\n");
		//fnc0001cc6c("Time %d\n");
		//fnc0001cc6c("-----Save Info-------\n");
		//fnc0001cc6c("Level:%d, completed %d\n");
		//fnc0001cc6c("WarpPointNumber :%d\n");
		//fnc0001cc6c("Game State %x\n");
		//fnc0001cc6c("Inventory\n{");
		//fnc0001cc6c("SAVING Inventory[%d] = %d,\n");
		//fnc0001cc6c("}\n");
		//fnc0001cc6c("\nKeys:\n");
		//__ull_rshift();
		//__ull_rshift();
		//__ull_rshift();
		//__ull_rshift();
		//__ull_rshift();
		//__ull_rshift();
		//__ull_rshift();
		//fnc0001cc6c("(%llx)\n");
		//fnc0001cc6c("\n*************SAVING AlienArtefacts=%d:\n");
		//fnc0001cc6c("\nConversation states:\n");
		//__ull_rshift();
		//__ull_rshift();
		//__ull_rshift();
		//__ull_rshift();
		//__ull_rshift();
		//__ull_rshift();
		//__ull_rshift();
		//fnc0001cc6c("(%llx)\n");
		//fnc0001cc6c("beacon states:%d\n");
		//fnc0001cc6c("complete set: %x\n");
		//fnc0001cc6c("failed set: %x\n");
		//fnc0001cc6c("AMMO SAVE\n{");
		//fnc0001cc6c("SAVING AMMO to the nearest multiple of 1, 2 or 4\n");
		//fnc0001cc6c("SAVING aAmmunition[%d]==%d,");
		//fnc0001cc6c("current objective:%d\n");
		//fnc0001cc6c("game info:%d\n");
		//fnc0001cc6c("alpha tank ammos: %d,%d,%d,%d\n");
		//fnc0001cc6c("}\n");
		//fnc000015b4();
		//fnc0001cc6c("------------------------------\n");
	}

	// RAM GREECE
	static void fnc000020e0() {
		//fnc000015b4();
		//fnc000015b4();
		//osEepromLongWrite();
	}

	// RAM GREECE
	static void fnc000021cc() {
		//fnc000015b4();
	}

	// RAM 00002378
	static void guess_loadGame() {
		//validateSaveVersionAndChecksum();
		//fnc0001cc6c("Restore:Score %d\n");
		//fnc0001cc6c("People:%d\n");
		//fnc0001cc6c("Time:%d\n");
		//fnc0001cc6c("-----Restore Info------\n");
		//fnc0001cc6c("Level:%d, completed %d\n");
		//fnc0001cc6c("Warp point:%d\n");
		//fnc00016fd0();
		//fnc000170f4();
		//fnc0001cc6c("game state: %x\n");
		//fnc0001cc6c("Inventory\n{");
		//fnc0001cc6c("%d,");
		//fnc0001cc6c("}\n");
		//fnc0001cc6c("\nKeys:\n");
		//__ll_lshift();
		//fnc0001cc6c("(%llX)\n");
		//fnc0001cc6c("******************LOADING AlienArtefacts=%d:\n");
		//fnc0001cc6c("\nConversation states:\n");
		//__ll_lshift();
		//fnc0001cc6c("(%llX)\n");
		//fnc0001cc6c("beacon states:%d\n");
		//fnc0001cc6c("Start point:%d\n");
		//fnc0001cc6c("complete set: %x\n");
		//fnc0001cc6c("failed set: %x\n");
		//fnc0001cc6c("AMMO LOAD\n{");
		//fnc0001cc6c("LOADING aAmmunition[%d]==%d\n");
		//fnc0001cc6c("current objective : %d\n");
		//fnc0001cc6c("game info: %x\n");
		//fnc0001cc6c("game info: %x\n");
		//fnc0001cc6c("alpha tank ammos: %d,%d,%d,%d\n");
		//fnc0001cc6c("{\n");
		//fnc0001cc6c();
		//fnc000021cc();
		//guess_loadGame();
	}

	// RAM GREECE
	static void fnc00002a88() {}

	// RAM GREECE
	static void fnc00002ab4() {}

	// RAM GREECE
	static void fnc00002b1c() {}

	// RAM GREECE
	static void fnc00002c58() {}

	// RAM GREECE
	/// saveGame ?
	static void fnc00002ca4() {
		//guess_SetupHighScores();
		//guess_prepareToSaveGame();
		//fnc000015b4();
		//osEepromLongWrite();
	}

	// RAM GREECE
	/// guess_saveHighScoresOnly
	static void fnc00002d04() {
		//guess_SetupHighScores();
		//fnc000015b4();
		//osEepromLongWrite();
	}

	// RAM GREECE
	static void fnc00002d58() {
		//fnc000021cc();
		//fnc000015b4();
		//osEepromLongWrite();
	}

	// RAM GREECE
	/// scrubSavedData ?
	static void fnc00002db0() {
		//fnc0001cc6c("SCRUB GAMENOTE\n");
		//guess_SetupHighScores2();
		//fnc000021cc();
		//fnc000021cc();
		//fnc000021cc();
		//fnc000015b4();
		//osEepromLongWrite();
	}

	// RAM GREECE
	/// restoreSavedData ?
	static void fnc00002e48() {
		//fnc0001d5a0();
		//fnc0001cc6c("RESTORE GAMENOTE\n");
		//validateSaveVersionAndChecksum();
		//fnc00002db0();
	}

	// RAM GREECE
	static void fnc00002eb0() {
		//osContStartReadData();
	}

	// RAM GREECE
	/// wrapper for osContGetReadData ?
	static void fnc00002ed4() {
		//osContGetReadData();
	}

	// RAM GREECE
	static void fnc00002ef8() {
		//fnc00001424();
		//fnc0000ff40();
		//osContStartReadData();
		//osRecvMesg();
		//fnc00002ed4();
		//fnc0000ff88();
		//fnc00001190();
		//fnc000035d8();
		//fnc00002ca4();
		//fnc00002d04();
		//fnc00002d58();
		//fnc00002db0();
		//fnc00001984();
		//fnc000020e0();
		//fnc0000ff40();
		//osContStartReadData();
	}

	// RAM GREECE
	static void fnc00003064() {
		//fnc00006dac();
		//fnc00006dac();
	}

	// RAM GREECE
	static void fnc000033d4(int a0, int a1) {}

	// RAM GREECE
	/// Copies controller button state values around
	/// a0 is a particular button value or values ?
	static void fnc0000345c(ushort a0)
	{
		//	lui		t7, $8003		# 0000345c:3c0f8003	t7=$80030000
		//	lh		t7, $13c8(t7)		# 00003460:85ef13c8	t7=$800313c8
		//	sw		a0, $0000(sp)		# 00003464:afa40000	
		//	andi		t6, a0, $ffff		# 00003468:308effff	
		//	andi		t8, t7, $0008		# 0000346c:31f80008	
		//	bne		t8, zero, $0000357c	# 00003470:17000042	v __0000357c
		//	lui		t9, $8004		# 00003474:3c198004	t9=$80040000
		if ((x800313c8 & 8) == 0)
		{
			//	lhu		t9, $75d8(t9)		# 00003478:973975d8	t9=$800475d8
			//	lui		t8, $8004		# 0000347c:3c188004	t8=$80040000
			//	or		v0, t6, zero		# 00003480:01c01025	
			//	and		t0, t9, t6		# 00003484:032e4024	
			//	beq		t0, zero, $000034b8	# 00003488:1100000b	v __000034b8
			//	lui		t1, $8004		# 0000348c:3c098004	t1=$80040000
			if ((x800475d8 & a0) != 0 && (x800475e0 & a0) != 0)
			{
				//	lhu		t1, $75e0(t1)		# 00003490:952975e0	t1=$800475e0
				//	lui		t3, $8004		# 00003494:3c0b8004	t3=$80040000
				//	and		t2, t1, t6		# 00003498:012e5024	
				//	beq		t2, zero, $000034b8	# 0000349c:11400006	v __000034b8
				//	nop					# 000034a0:00000000	
				//	lhu		t3, $7588(t3)		# 000034a4:956b7588	t3=$80047588
				//	nor		t4, t6, zero		# 000034a8:01c06027	
				//	lui		at, $8004		# 000034ac:3c018004	at=$80040000
				//	and		t5, t3, t4		# 000034b0:016c6824				# 
				//	sh		t5, $7588(at)		# 000034b4:a42d7588	[80047588]			# 
				controllerOneButtonState &= ~a0;
			}
			//__000034b8:					# 
			//	lui		t6, $8004		# 000034b8:3c0e8004	t6=$80040000			# 
			//	lhu		t6, $75da(t6)		# 000034bc:95ce75da	t6=$800475da
			//	nor		v1, v0, zero		# 000034c0:00401827	
			//	lui		t2, $8004		# 000034c4:3c0a8004	t2=$80040000
			//	and		t7, t6, v0		# 000034c8:01c27824	
			//	beq		t7, zero, $000034f8	# 000034cc:11e0000a	v __000034f8
			//	lui		t4, $8004		# 000034d0:3c0c8004	t4=$80040000
			//	lhu		t8, $75e2(t8)		# 000034d4:971875e2	t8=$800475e2
			//	lui		t0, $8004		# 000034d8:3c088004	t0=$80040000
			//	and		t9, t8, v0		# 000034dc:0302c824	
			//	beq		t9, zero, $000034f8	# 000034e0:13200005	v __000034f8
			//	nop					# 000034e4:00000000	
			//	lhu		t0, $758e(t0)		# 000034e8:9508758e	t0=$8004758e
			//	lui		at, $8004		# 000034ec:3c018004	at=$80040000
			//	and		t1, t0, v1		# 000034f0:01034824	
			//	sh		t1, $758e(at)		# 000034f4:a429758e	[8004758e]
			//__000034f8:					# 
			//	lhu		t2, $75dc(t2)		# 000034f8:954a75dc	t2=$800475dc
			//	lui		t8, $8004		# 000034fc:3c188004	t8=$80040000
			//	lui		t0, $8004		# 00003500:3c088004	t0=$80040000
			//	and		t3, t2, v0		# 00003504:01425824	
			//	beq		t3, zero, $00003534	# 00003508:1160000a	v __00003534
			//	nop					# 0000350c:00000000	
			//	lhu		t4, $75e4(t4)		# 00003510:958c75e4	t4=$800475e4
			//	lui		t6, $8004		# 00003514:3c0e8004	t6=$80040000
			//	and		t5, t4, v0		# 00003518:01826824	
			//	beq		t5, zero, $00003534	# 0000351c:11a00005	v __00003534
			//	nop					# 00003520:00000000	
			//	lhu		t6, $7594(t6)		# 00003524:95ce7594	t6=$80047594
			//	lui		at, $8004		# 00003528:3c018004	at=$80040000
			//	and		t7, t6, v1		# 0000352c:01c37824	
			//	sh		t7, $7594(at)		# 00003530:a42f7594	[80047594]
			//__00003534:					# 
			//	lhu		t8, $75de(t8)		# 00003534:971875de	t8=$800475de
			//	and		t9, t8, v0		# 00003538:0302c824	
			//	beq		t9, zero, $00003568	# 0000353c:1320000a	v __00003568
			//	nop					# 00003540:00000000	
			//	lhu		t0, $75e6(t0)		# 00003544:950875e6	t0=$800475e6
			//	lui		t2, $8004		# 00003548:3c0a8004	t2=$80040000
			//	and		t1, t0, v0		# 0000354c:01024824	
			//	beq		t1, zero, $00003568	# 00003550:11200005	v __00003568
			//	nop					# 00003554:00000000	
			//	lhu		t2, $759a(t2)		# 00003558:954a759a	t2=$8004759a
			//	lui		at, $8004		# 0000355c:3c018004	at=$80040000
			//	and		t3, t2, v1		# 00003560:01435824	
			//	sh		t3, $759a(at)		# 00003564:a42b759a	[8004759a]
			//__00003568:					# 
			//	lui		v0, $8004		# 00003568:3c028004	v0=$80040000
			//	addiu		v0, v0, $75f8		# 0000356c:244275f8	v0=$800475f8
			//	lw		t4, $0000(v0)		# 00003570:8c4c0000	t4=$800475f8
			//	and		t5, t4, v1		# 00003574:01836824	
			//	sw		t5, $0000(v0)		# 00003578:ac4d0000	[800475f8]
		}
		//__0000357c:					# 
		//	jr		ra			# 0000357c:03e00008	
		//	nop					# 00003580:00000000	
	}

	enum Controller
	{
		ONE = 0,
		TWO = 1,
		THREE = 2,
		FOUR = 3
	}

	enum Buttons
	{
		NOTHING = 0,
		D_RIGHT = 0x0100,
		D_LEFT = 0x0200,
		D_DOWN = 0x0400,
		D_UP = 0x0800,
		START = 0x1000,
		Z = 0x2000,
		B = 0x4000,
		A = 0x8000,
		C_RIGHT = 0x0001,
		C_LEFT = 0x0002,
		C_DOWN = 0x0004,
		C_UP = 0x0008,
		R = 0x0010,
		L = 0x0020
	}

	// RAM 00003584
	// controllerNumber is 0-based
	static bool ButtonIsNewlyPressed(Controller controllerNumber, ushort interestedButtons)
	{
		//	sll		t7, a0, 2		# 00003584:00047880	
		//	subu		t7, t7, a0		# 00003588:01e47823	
		//	sll		t7, t7, 1		# 0000358c:000f7840	
		//	lui		t8, $8004		# 00003590:3c188004	t8=$80040000
		//	addu		t8, t8, t7		# 00003594:030fc021	
		//	lhu		t8, $7588(t8)		# 00003598:97187588	
		ushort pressedButtons = GetUshort(0x80047588 + (controllerNumber * 6));
		//	andi		t6, a1, $ffff		# 0000359c:30aeffff	
		//	sw		a1, $0004(sp)		# 000035a0:afa50004	
		//	and		v0, t8, t6		# 000035a4:030e1024	
		//	sltu		t9, zero, v0		# 000035a8:0002c82b	
		//	beq		t9, zero, $000035d0	# 000035ac:13200008	v __000035d0
		//	or		v0, t9, zero		# 000035b0:03201025	
		bool result = (pressedButtons & interestedButtons) > 0;
		if (result)
		{
			//	sll		t0, a0, 1		# 000035b4:00044040	
			//	lui		t1, $8004		# 000035b8:3c098004	t1=$80040000
			//	addu		t1, t1, t0		# 000035bc:01284821	
			//	lhu		t1, $75e0(t1)		# 000035c0:952975e0	
			ushort guess_LastFramePressedButtons = GetUshort(0x800475e0 + (controllerNumber * 2));
			//	and		v0, t1, t6		# 000035c4:012e1024	
			result = (guess_LastFramePressedButtons & interestedButtons) < 1;
			//	sltiu		t2, v0, $0001		# 000035c8:2c4a0001	
			//	or		v0, t2, zero		# 000035cc:01401025	
		}
		//__000035d0:					# 
		//	jr		ra			# 000035d0:03e00008	
		//	nop					# 000035d4:00000000	
		return result;
	}

	// RAM GREECE
	static void fnc000035d8() {}

	// RAM GREECE
	static void fnc00003680() {}

	// RAM GREECE
	static void fnc000036c4() {}

	// RAM GREECE
	static void fnc00003714() {}

	// RAM GREECE
	static void fnc00003740() {}

	// RAM GREECE
	static void fnc000037c8() {}

	// RAM GREECE
	static void fnc000037e8() {}

	// RAM GREECE
	static void fnc00003824() {
		//fnc00003740();
		//fnc00003740();
	}

	// RAM GREECE
	static void fnc000038d4(int a0)
	{
		//	lui		at, $8004		# 000038d4:3c018004	at=$80040000
		//	jr		ra			# 000038d8:03e00008	
		//	sw		a0, $76c0(at)		# 000038dc:ac2476c0	[800476c0]
		x800476c0 = a0;
		return;
	}

	// RAM
	// Random number generator? Does anything actually use the result?
	static int fnc000038e0()
	{
		//	lui		v1, $8004		# 000038e0:3c038004	v1=$80040000
		//	addiu		v1, v1, $76c0		# 000038e4:246376c0	v1=$800476c0
		//	lw		t6, $0000(v1)		# 000038e8:8c6e0000	t6=$800476c0
		//	lui		at, $41c6		# 000038ec:3c0141c6	at=$41c60000
		//	ori		at, at, $4e6d		# 000038f0:34214e6d	at=$41c64e6d
		//	multu		t6, at			# 000038f4:01c10019	
		//	mflo		t7			# 000038f8:00007812	
		//	addiu		t8, t7, $3039		# 000038fc:25f83039	
		//	srl		t0, t8, 16		# 00003900:00184402	
		//	sw		t8, $0000(v1)		# 00003904:ac780000	[800476c0]
		x800476c0 = (x800476c0 * 0x41c64e6d) + 0x3039;
		//	jr		ra			# 00003908:03e00008	
		//	andi		v0, t0, $ffff		# 0000390c:3102ffff	
		return (x800476c0 >> 16) & 0xffff;
	}

	// RAM GREECE
	static void fnc00003910() {}

	// RAM GREECE
	static void fnc0000393c() {
		//fnc00003910();
		//sqrtf();
	}

	// RAM GREECE
	/// Is used to position HUD elements ?
	/// NOPing calls to this on the title screen freezes station model in weird positions
	/// so is it something to do with matrices ?
	static void fnc000039d0() {
		//coss();
		//sins();
		//coss();
		//sins();
		//coss();
		//sins();
	}

	// RAM GREECE
	static void fnc00003de8() {
		//coss();
		//sins();
		//coss();
		//sins();
		//coss();
		//sins();
	}

	// RAM GREECE
	static void fnc00004210() {
		//fnc000039d0();
	}

	// RAM GREECE
	static void fnc00004254() {}

	// RAM GREECE
	static void fnc00004498() {}

	// RAM GREECE
	static void fnc000044d4() {
		//coss();
		//sins();
		//sins();
		//coss();
		//coss();
		//sins();
		//sins();
		//coss();
		//coss();
		//sins();
		//sins();
		//coss();
	}

	/// Possible file boundary

	// RAM GREECE
	static void fnc000047d0(int a0, int a1) {}

	// RAM GREECE
	static void fnc000047dc() {}

	// RAM GREECE
	static void fnc000047ec() {}

	// RAM GREECE
	static void fnc000047fc() {}

	// RAM GREECE
	static void fnc00004818() {}

	// RAM GREECE
	static void fnc000048ac() {}

	// RAM GREECE
	/// Zero values starting at 0x47978
	static void fnc000048b8() {}

	// RAM GREECE
	/// Zero values starting at 0x47f50
	static void fnc000048e8() {}

	// RAM GREECE
	/// Zero values starting at 0x47d48
	static void fnc00004918() {}

	// RAM GREECE
	static void fnc00004948() {}

	// RAM GREECE
	static void fnc000049d4() {}

	// RAM GREECE
	static void fnc00004a38() {
		fnc0000726c();
	}

	// RAM GREECE
	static void fnc00004aec() {
		//fnc00004a38();
		//fnc00004948();
		//fnc00004c24();
	}

	// RAM GREECE
	/// nuGfxDisplayOn ?
	static void fnc00004c24() {}

	// RAM GREECE
	static void fnc00004c34() {}

	// RAM GREECE
	static void fnc00004c8c() {}

	// RAM GREECE
	static void fnc00004cc8() {}

	// RAM GREECE
	static void fnc00004d38() {}

	// RAM GREECE
	static void fnc00004ddc() {}

	// RAM GREECE
	static void fnc00004f64() {}

	// RAM GREECE
	static void fnc0000505c() {
		//osSendMesg();
	}

	// RAM GREECE
	static void fnc000050c4() {
		//osRecvMesg();
		//fnc00011e14();
		//fnc00004cc8();
		//fnc00004d38();
	}

	// RAM GREECE
	static void fnc00005110() {}

	// RAM GREECE
	static void fnc000053a0() {
		//guOrtho();
		//fnc000039d0();
		//fnc00005110();
	}

	// RAM GREECE
	static void fnc00005654() {
		//fnc000050c4();
		//fnc00004ddc();
		//fnc0000505c();
	}

	// RAM GREECE
	static void fnc000056a8() {
		//fnc00005654();
	}

	// RAM GREECE
	static void fnc000056d0() {}

	// RAM GREECE
	static void fnc00005728() {}

	// RAM GREECE
	static void fnc0000577c() {
		//drawText();
		//drawText();
		//drawText();
	}

	// RAM GREECE
	static void fnc00005844() {
		//guOrtho();
		//guLookAt();
	}

	// RAM GREECE
	static void fnc00005aec(int a0, int a1, int a2, int a3) {}

	// RAM GREECE
	static int fnc00005b30()
	{
		return 1;
	}

	// RAM GREECE
	static void fnc00005b78() {}

	// RAM GREECE
	static void fnc00005b84() {
		//fnc00005844();
		//fnc0001593c();
		//fnc00005844();
		//fnc0001593c();
	}

	// RAM GREECE
	static void fnc00005c5c() {
		//guOrtho();
		//guRotate();
	}

	// RAM GREECE
	static void fnc00006520() {}

	// RAM GREECE
	static void fnc000065a4() {
		//sins();
	}

	// RAM GREECE
	static void fnc00006655() {
		//sins();
	}

	// RAM GREECE
	static void fnc00006710() {
		//sins();
	}

	// RAM GREECE
	static void fnc000067b4() {
		//sins();
		//sins();
		//sins();
	}

	// RAM GREECE
	static void fnc000069fc() {
		//fnc0000726c();
		//fnc00004ddc();
		//fnc00004ddc();
		//fnc00004ddc();
		//fnc00005c5c();
		//fnc00005c5c();
	}

	// RAM GREECE
	static void fnc00006c4a() {}

	// RAM 00006d5c
	static void SetFullResolution()
	{
		//	addiu		sp, sp, $ffe8		# 00006d5c:27bdffe8	
		//__00006d60:					# 
		//	sw		ra, $0014(sp)		# 00006d60:afbf0014	
		//__00006d64:					# 
		//	jal		$0000f648		# 00006d64:0c003d92	v FNC_0000f648
		//	addiu		a0, zero, $0140		# 00006d68:24040140	a0=$00000140
		setVideoInterfaceXSize(320);
		//	jal		$0000f67c		# 00006d6c:0c003d9f	v FNC_0000f67c
		//	addiu		a0, zero, $00f0		# 00006d70:240400f0	a0=$000000f0
		setVideoInterfaceYSize(240);
		//	lw		ra, $0014(sp)		# 00006d74:8fbf0014	
		//	addiu		sp, sp, $0018		# 00006d78:27bd0018	
		//	jr		ra			# 00006d7c:03e00008	
		//	nop					# 00006d80:00000000	
	}

	// RAM 00006d84
	static void SetGameplayResolution()
	{
		//	addiu		sp, sp, $ffe8		# 00006d84:27bdffe8	
		//	sw		ra, $0014(sp)		# 00006d88:afbf0014	
		//	jal		$0000f648		# 00006d8c:0c003d92	v FNC_0000f648
		//	addiu		a0, zero, $0130		# 00006d90:24040130	a0=$00000130
		setVideoInterfaceXSize(304);
		//	jal		$0000f67c		# 00006d94:0c003d9f	v FNC_0000f67c
		//	addiu		a0, zero, $00e6		# 00006d98:240400e6	a0=$000000e6
		setVideoInterfaceYSize(230);
		//	lw		ra, $0014(sp)		# 00006d9c:8fbf0014	
		//	addiu		sp, sp, $0018		# 00006da0:27bd0018	
		//	jr		ra			# 00006da4:03e00008	
		//	nop					# 00006da8:00000000	
	}

	// RAM GREECE
	static void fnc00006dac() {}

	// RAM GREECE
	static void fnc00006ddc()
	{
		//	addiu		sp, sp, $ffa0		# 00006ddc:27bdffa0	
		//	addiu		t6, zero, $0005		# 00006de0:240e0005	t6=$00000005
		//	lui		at, $8005		# 00006de4:3c018005	at=$80050000
		//__00006de8:					# 
		//	sb		t6, $2aca(at)		# 00006de8:a02e2aca	[80052aca]
		x80052aca = 5;
		//	sw		ra, $003c(sp)		# 00006dec:afbf003c	
		//	sw		s3, $0024(sp)		# 00006df0:afb30024	
		//	lui		at, $8005		# 00006df4:3c018005	at=$80050000
		//	addiu		t7, zero, $0007		# 00006df8:240f0007	t7=$00000007
		//__00006dff:					# 
		//	sw		fp, $0038(sp)		# 00006dfc:afbe0038	
		//__00006e00:					# 
		//	sw		s7, $0034(sp)		# 00006e00:afb70034	
		//	sw		s6, $0030(sp)		# 00006e04:afb60030	
		//	sw		s5, $002c(sp)		# 00006e08:afb5002c	
		//	sw		s4, $0028(sp)		# 00006e0c:afb40028	

		/// This is the first point U and E differ in code, there are more than this
		/// 0xc difference

		//	sw		s2, $0020(sp)		# 00006e10:afb20020	
		//	sw		s1, $001c(sp)		# 00006e14:afb1001c	
		//	sw		s0, $0018(sp)		# 00006e18:afb00018	
		//	or		s3, zero, zero		# 00006e1c:00009825	
		//	jal		$000056a8		# 00006e20:0c0015aa	^ FNC_000056a8
		//	sw		t7, $2adc(at)		# 00006e24:ac2f2adc	[80052adc]
		fnc000056a8();
		//	jal		$000056a8		# 00006e28:0c0015aa	^ FNC_000056a8
		//	nop					# 00006e2c:00000000	
		fnc000056a8();
		//__00006e30:					# 
		//	lui		a0, $8001		# 00006e30:3c048001	a0=$80010000
		//	addiu		a0, a0, $07b4		# 00006e34:248407b4	a0=$800107b4
		//	jal		$0000f190		# 00006e38:0c003c64	v FNC_0000f190
		//	sw		a0, $0040(sp)		# 00006e3c:afa40040	
		fnc0000f190(0x800107b4);
		//	jal		$00010768		# 00006e40:0c0041da	v FNC_00010768
		//	nop					# 00006e44:00000000	
		int result = destroyThreadIfMessageInQueue();
		//	bne		v0, zero, $00006e70	# 00006e48:14400009	v __00006e70
		//	nop					# 00006e4c:00000000	
		while (result == 0)
		{
			//__00006e50:					# 
			//	jal		$000050c4		# 00006e50:0c001431	^ FNC_000050c4
			//	nop					# 00006e54:00000000	
			fnc000050c4();
			//	jal		$0000505c		# 00006e58:0c001417	^ FNC_0000505c
			//	nop					# 00006e5c:00000000	
			fnc0000505c();
			//	jal		$00010768		# 00006e60:0c0041da	v FNC_00010768
			//	nop					# 00006e64:00000000	
			result = destroyThreadIfMessageInQueue();
			//	beq		v0, zero, $00006e50	# 00006e68:1040fff9	^ __00006e50
			//	nop					# 00006e6c:00000000	
		}
		//__00006e70:					# 
		//	lui		fp, $8004		# 00006e70:3c1e8004	fp=$80040000
		//	lui		s6, $8003		# 00006e74:3c168003	s6=$80030000
		//	lui		s5, $8003		# 00006e78:3c158003	s5=$80030000
		//	lui		s4, $8003		# 00006e7c:3c148003	s4=$80030000
		//	lui		s2, $8005		# 00006e80:3c128005	s2=$80050000
		//	lui		s0, $8004		# 00006e84:3c108004	s0=$80040000
		//	addiu		s0, s0, $7f90		# 00006e88:26107f90	s0=$80047f90
		//	addiu		s2, s2, $2ae8		# 00006e8c:26522ae8	s2=$80052ae8
		//	addiu		s4, s4, $13e8		# 00006e90:269413e8	s4=$800313e8
		//	addiu		s5, s5, $13ec		# 00006e94:26b513ec	s5=$800313ec
		//	addiu		s6, s6, $13f0		# 00006e98:26d613f0	s6=$800313f0
		//	addiu		fp, fp, $7fa0		# 00006e9c:27de7fa0	fp=$80047fa0
		//	addiu		s7, zero, $0005		# 00006ea0:24170005	s7=$00000005
		//	addiu		s1, zero, $0001		# 00006ea4:24110001	s1=$00000001
		//__00006ea8:					# 
		//	lui		at, $8005		# 00006ea8:3c018005	at=$80050000
		//	sb		zero, $2aca(at)		# 00006eac:a0202aca	[80052aca]
		x80052aca = 0x00;
		//	lw		v1, $0000(s0)		# 00006eb0:8e030000	v1=$80047f90
		//	lui		t9, $8003		# 00006eb4:3c198003	t9=$80030000
		//	addiu		t9, t9, $1620		# 00006eb8:27391620	t9=$80031620
		//	addiu		t7, v1, $ffff		# 00006ebc:246fffff	
		//__00006ec0:					# 
		//	sll		t8, t7, 2		# 00006ec0:000fc080	
		//	addu		v0, t8, t9		# 00006ec4:03191021	v0=$80031620
		//	lbu		t1, $0000(v0)		# 00006ec8:90490000	t1=$80031620
		//	lui		at, $8004		# 00006ecc:3c018004	at=$80040000
		//__00006ed0:					# 

		/// More differences between U & E here but not in size

		//	lui		t9, $8003		# 00006ed0:3c198003	t9=$80030000
		//	sb		t1, $0000(s4)		# 00006ed4:a2890000	[800313e8]
		x800313e8 = x80031620;
		//__00006ed8:					# 
		//	sb		t1, $7743(at)		# 00006ed8:a0297743	[80047743]
		x80047743 = x80031620;
		//	lbu		t3, $0001(v0)		# 00006edc:904b0001	t3=$80031621
		//	lui		at, $8004		# 00006ee0:3c018004	at=$80040000
		//	addiu		t9, t9, $1634		# 00006ee4:27391634	t9=$80031634
		//__00006ee8:					# 
		//	sb		t3, $0000(s5)		# 00006ee8:a2ab0000	[800313ec]
		x800313ec = x80031621;
		//	sb		t3, $7744(at)		# 00006eec:a02b7744	[80047744]
		x80047744 = x80031621;
		//__00006ef0:					# 
		//	lbu		t5, $0002(v0)		# 00006ef0:904d0002	t5=$80031622
		//	lui		at, $8004		# 00006ef4:3c018004	at=$80040000
		//	sll		t8, t7, 2		# 00006ef8:000fc080	
		//__00006eff:					# 
		//	sb		t5, $0000(s6)		# 00006efc:a2cd0000	[800313f0]
		x800313f0 = x80031622;
		//__00006f00:					# 
		//	sb		t5, $7745(at)		# 00006f00:a02d7745	[80047745]
		x80047745 = x80031622;
		//	lbu		t6, $0003(v0)		# 00006f04:904e0003	t6=$80031623
		//	lui		at, $8003		# 00006f08:3c018003	at=$80030000
		//	addu		a0, t8, t9		# 00006f0c:03192021	a0=$80031634
		//	sb		t6, $13f4(at)		# 00006f10:a02e13f4	[800313f4]
		x800313f4 = x80031623;
		//	lh		t0, $0000(a0)		# 00006f14:84880000	t0=$80031634
		//__00006f18:					# 
		//	lui		at, $8003		# 00006f18:3c018003	at=$80030000
		//	addiu		t2, zero, $53c5		# 00006f1c:240a53c5	t2=$000053c5
		//	sh		t0, $13f8(at)		# 00006f20:a42813f8	[800313f8]
		x800313f8 = x80031634;
		//	lh		t1, $0002(a0)		# 00006f24:84890002	t1=$80031636
		//	lui		at, $8003		# 00006f28:3c018003	at=$80030000
		//	addiu		t3, zero, $0ccf		# 00006f2c:240b0ccf	t3=$00000ccf
		//	sh		t1, $13fc(at)		# 00006f30:a42913fc	[800313fc]
		x800313fc = x80031636;
		//	lui		at, $8004		# 00006f34:3c018004	at=$80040000
		//	sh		t2, $7964(at)		# 00006f38:a42a7964	[80047964]
		x80047964 = 0x53c5;
		//	lui		at, $8004		# 00006f3c:3c018004	at=$80040000
		//	sh		t3, $794e(at)		# 00006f40:a42b794e	[8004794e]
		x8004794e = 0x0ccf;
		//	lui		at, $4374		# 00006f44:3c014374	at=$43740000
		//	mtc1		at, $f4			# 00006f48:44812000	
		//	lui		at, $8004		# 00006f4c:3c018004	at=$80040000
		//	jal		$00006d84		# 00006f50:0c001b61	^ FNC_00006d84
		//	swc1		$f4, $7960(at)		# 00006f54:e4247960	[80047960]
		x80047960 = 244f;
		SetGameplayResolution();
		//	jal		$00070270		# 00006f58:0c01c09c	v FNC_00070270
		//	addiu		a0, zero, $0008		# 00006f5c:24040008	a0=$00000008
		this.currentState.Start(8);
		//__00006f60:					# 
		//	lui		at, $8003		# 00006f60:3c018003	at=$80030000
		//	jal		$000118e4		# 00006f64:0c004639	v FNC_000118e4
		//	sh		zero, $13c8(at)		# 00006f68:a42013c8	[800313c8]
		fnc000118e4();
		//	lui		v0, $8005		# 00006f6c:3c028005	v0=$80050000
		//	lh		v0, $2ac8(v0)		# 00006f70:84422ac8	v0=$80052ac8
		//	beq		v0, zero, $00007128	# 00006f74:1040006c	v __00007128
		//	nop					# 00006f78:00000000	
		//	beq		v0, s1, $00006f94	# 00006f7c:10510005	v __00006f94
		//	addiu		at, zero, $0002		# 00006f80:24010002	at=$00000002
		//	beql		v0, at, $00006fd0	# 00006f84:50410012	v __00006fd0
		//	lw		t5, $0000(s0)		# 00006f88:8e0d0000	
		//	beq		zero, zero, $00007194	# 00006f8c:10000081	v __00007194
		//	nop					# 00006f90:00000000	
		//__00006f94:					# 
		//	jal		$000056a8		# 00006f94:0c0015aa	^ FNC_000056a8
		//	addiu		s3, zero, $0001		# 00006f98:24130001	s3=$00000001
		fnc000056a8();
		//__00006f9f:					# 
		//	jal		$000056a8		# 00006f9c:0c0015aa	^ FNC_000056a8
		//__00006fa0:					# 
		fnc000056a8();
		//	nop					# 00006fa0:00000000	
		//	jal		$00011d24		# 00006fa4:0c004749	v FNC_00011d24
		//__00006fa8:					# 
		fnc00011d24();
		//	nop					# 00006fa8:00000000	
		//__00006fae:					# 
		//	jal		$000115f4		# 00006fac:0c00457d	v FNC_000115f4
		//	nop					# 00006fb0:00000000	
		LoadFrontEndDataToRam();
		//	jal		$00006d5c		# 00006fb4:0c001b57	^ FNC_00006d5c
		//__00006fb8:					# 
		SetFullResolution();
		//	nop					# 00006fb8:00000000	
		//	addiu		t4, zero, $0003		# 00006fbc:240c0003	t4=$00000003

		/// Difference U & E here

		//	sw		zero, $0030(s2)		# 00006fc0:ae400030	
		//	beq		zero, zero, $00007194	# 00006fc4:10000073	v __00007194
		//	sw		t4, $0040(s2)		# 00006fc8:ae4c0040	
		//	lw		t5, $0000(s0)		# 00006fcc:8e0d0000	
		//__00006fd0:					# 
		//	addiu		a0, zero, $00ff		# 00006fd0:240400ff	a0=$000000ff
		//	addiu		a1, zero, $00ff		# 00006fd4:240500ff	a1=$000000ff

		/// Logic difference between U & E here

		//__00006fd8:					# 
		//	bne		s7, t5, $00007000	# 00006fd8:16ed0009	v __00007000
		//	nop					# 00006fdc:00000000	
		//__00006fe0:					# 
		//	jal		$000170f4		# 00006fe0:0c005c3d	v FNC_000170f4
		//	addiu		a0, zero, $0003		# 00006fe4:24040003	a0=$00000003
		fnc000170f4(3);
		//	jal		$000056a8		# 00006fe8:0c0015aa	^ FNC_000056a8
		//	nop					# 00006fec:00000000	
		fnc000056a8();
		//	jal		$000056a8		# 00006ff0:0c0015aa	^ FNC_000056a8
		//	nop					# 00006ff4:00000000	
		fnc000056a8();
		//	beq		zero, zero, $00007018	# 00006ff8:10000007	v __00007018
		//__00006fff:					# 
		//	nop					# 00006ffc:00000000	
		//__00007000:					# 
		//__00007001:					# 
		//	jal		$00005654		# 00007000:0c001595	^ FNC_00005654
		//__00007005:					# 
		fnc00005654();
		//	addiu		a2, zero, $00ff		# 00007004:240600ff	a2=$000000ff
		//__00007008:					# 
		//	addiu		a0, zero, $00ff		# 00007008:240400ff	a0=$000000ff
		//	addiu		a1, zero, $00ff		# 0000700c:240500ff	a1=$000000ff
		//__00007010:					# 
		//__00007012:					# 
		//	jal		$00005654		# 00007010:0c001595	^ FNC_00005654
		//	addiu		a2, zero, $00ff		# 00007014:240600ff	a2=$000000ff
		fnc00005654();
		//__00007018:					# 
		//	jal		$00011d24		# 00007018:0c004749	v FNC_00011d24
		//	nop					# 0000701c:00000000	
		fnc00011d24();
		//	jal		$000115f4		# 00007020:0c00457d	v FNC_000115f4
		//	nop					# 00007024:00000000	
		LoadFrontEndDataToRam();
		//__00007028:					# 
		//	jal		$00006d84		# 00007028:0c001b61	^ FNC_00006d84
		//	nop					# 0000702c:00000000	
		SetGameplayResolution();
		//	lui		t8, $8005		# 00007030:3c188005	t8=$80050000
		//	lw		t8, $2b2c(t8)		# 00007034:8f182b2c	t8=$80052b2c
		//	lw		v1, $0000(s0)		# 00007038:8e030000	
		//	lui		t7, $8005		# 0000703c:3c0f8005	t7=$80050000
		//	lw		t9, $0030(t8)		# 00007040:8f190030	t9=$80052b18
		//	addiu		t7, t7, $2a98		# 00007044:25ef2a98	t7=$80052a98
		//	sll		t6, v1, 3		# 00007048:000370c0	
		//	addu		v0, t6, t7		# 0000704c:01cf1021	
		//	lui		t0, $8005		# 00007050:3c088005	t0=$80050000
		//__00007056:					# 
		//	sw		t9, $fff8(v0)		# 00007054:ac59fff8	
		//	lh		t0, $816a(t0)		# 00007058:8508816a	t0=$8004816a
		//	lui		t1, $8005		# 0000705c:3c098005	t1=$80050000
		//	addiu		at, zero, $03e8		# 00007060:240103e8	at=$000003e8
		//	sh		t0, $fffe(v0)		# 00007064:a448fffe	
		//	lw		t1, $2a90(t1)		# 00007068:8d292a90	t1=$80052a90
		//	lw		t3, $0000(fp)		# 0000706c:8fcb0000	t3=$8009fb80
		//__00007070:					# 
		//	addiu		t4, v1, $0001		# 00007070:246c0001	
		//	divu		t1, at			# 00007074:0121001b	
		//	mflo		t2			# 00007078:00005012	
		//	slt		at, t3, v1		# 0000707c:0163082a	

		/// Logic difference between U & E

		//__00007080:					# 
		//	beq		at, zero, $0000708c	# 00007080:10200002	v __0000708c
		//	sh		t2, $fffc(v0)		# 00007084:a44afffc	
		//	sw		v1, $0000(fp)		# 00007088:afc30000	[80047fa0]
		//__0000708c:					# 
		//	bne		s7, v1, $000070b0	# 0000708c:16e30008	v __000070b0
		//__00007090:					# 
		//	lui		at, $8004		# 00007090:3c018004	at=$80040000
		//	sh		s1, $76a0(at)		# 00007094:a43176a0	[800476a0]
		//	jal		$00006d5c		# 00007098:0c001b57	^ FNC_00006d5c
		//	addiu		s3, zero, $0001		# 0000709c:24130001	s3=$00000001
		SetFullResolution();
		//__000070a0:					# 
		//	jal		$00070270		# 000070a0:0c01c09c	v FNC_00070270
		//	addiu		a0, zero, $0006		# 000070a4:24040006	a0=$00000006
		this.currentState.Start(6);
		//	beq		zero, zero, $00007194	# 000070a8:1000003a	v __00007194
		//	nop					# 000070ac:00000000	
		//__000070b0:					# 
		//	jal		$00007570		# 000070b0:0c001d5c	v FNC_00007570
		//	sw		t4, $0000(s0)		# 000070b4:ae0c0000	
		fnc00007570();
		//__000070b8:					# 
		//	lui		at, $8004		# 000070b8:3c018004	at=$80040000
		//	sh		s1, $76a0(at)		# 000070bc:a43176a0	[800476a0]
		//	jal		$00070270		# 000070c0:0c01c09c	v FNC_00070270
		//	addiu		a0, zero, $0002		# 000070c4:24040002	a0=$00000002
		this.currentState.Start(2);
		//	addiu		a0, zero, $00ff		# 000070c8:240400ff	a0=$000000ff
		//	addiu		a1, zero, $00ff		# 000070cc:240500ff	a1=$000000ff
		//	jal		$00005654		# 000070d0:0c001595	^ FNC_00005654
		//	addiu		a2, zero, $00ff		# 000070d4:240600ff	a2=$000000ff
		fnc00005654();
		//	addiu		a0, zero, $00ff		# 000070d8:240400ff	a0=$000000ff
		//	addiu		a1, zero, $00ff		# 000070dc:240500ff	a1=$000000ff
		//	jal		$00005654		# 000070e0:0c001595	^ FNC_00005654
		//	addiu		a2, zero, $00ff		# 000070e4:240600ff	a2=$000000ff
		fnc00005654();
		//__000070e8:					# 
		//	jal		$0000f190		# 000070e8:0c003c64	v FNC_0000f190
		//	lw		a0, $0040(sp)		# 000070ec:8fa40040	
		fnc0000f190();
		//	jal		$00010768		# 000070f0:0c0041da	v FNC_00010768
		//	nop					# 000070f4:00000000	
		destroyThreadIfMessageInQueue();
		//	bne		v0, zero, $00007194	# 000070f8:14400026	v __00007194
		//	nop					# 000070fc:00000000	
		//__00007100:					# 
		//	jal		$000050c4		# 00007100:0c001431	^ FNC_000050c4
		//	nop					# 00007104:00000000	
		fnc000050c4();
		//	jal		$0000505c		# 00007108:0c001417	^ FNC_0000505c
		//__0000710c:					# 
		//	nop					# 0000710c:00000000	
		fnc0000505c();
		//	jal		$00010768		# 00007110:0c0041da	v FNC_00010768
		//	nop					# 00007114:00000000	
		destroyThreadIfMessageInQueue();
		//	beq		v0, zero, $00007100	# 00007118:1040fff9	^ __00007100
		//	nop					# 0000711c:00000000	
		//	beq		zero, zero, $00007194	# 00007120:1000001c	v __00007194
		//	nop					# 00007124:00000000	
		//__00007128:					# 
		//	jal		$000050c4		# 00007128:0c001431	^ FNC_000050c4
		//	addiu		s3, zero, $0001		# 0000712c:24130001	s3=$00000001
		fnc000050c4();
		//	jal		$0000505c		# 00007130:0c001417	^ FNC_0000505c
		//	nop					# 00007134:00000000	
		fnc0000505c();
		//	jal		$000050c4		# 00007138:0c001431	^ FNC_000050c4
		//	nop					# 0000713c:00000000	
		fnc000050c4();
		//	jal		$0000505c		# 00007140:0c001417	^ FNC_0000505c
		//	nop					# 00007144:00000000	
		fnc0000505c();
		//	jal		$00011d24		# 00007148:0c004749	v FNC_00011d24
		//	nop					# 0000714c:00000000	
		fnc00011d24();
		//	jal		$000115f4		# 00007150:0c00457d	v FNC_000115f4
		//	nop					# 00007154:00000000	
		LoadFrontEndDataToRam();
		//	lui		t5, $8005		# 00007158:3c0d8005	t5=$80050000
		//	lw		t5, $8034(t5)		# 0000715c:8dad8034	t5=$80048034
		//	beq		s1, t5, $00007180	# 00007160:122d0007	v __00007180
		//	nop					# 00007164:00000000	
		//	jal		$00070270		# 00007168:0c01c09c	v FNC_00070270
		//	addiu		a0, zero, $0003		# 0000716c:24040003	a0=$00000003
		this.currentState.Start(3);
		//	jal		$00006d5c		# 00007170:0c001b57	^ FNC_00006d5c
		//	nop					# 00007174:00000000	
		SetFullResolution();
		//__00007178:					# 
		//	jal		$00070270		# 00007178:0c01c09c	v FNC_00070270
		//	or		a0, s7, zero		# 0000717c:02e02025	
		this.currentState.Start(5);
		//__00007180:					# 
		//	jal		$00006d5c		# 00007180:0c001b57	^ FNC_00006d5c
		//__00007186:					# 
		//	nop					# 00007184:00000000	
		SetFullResolution();
		//__00007188:					# 
		//	addiu		t6, zero, $0003		# 00007188:240e0003	t6=$00000003
		//	sw		zero, $0030(s2)		# 0000718c:ae400030	
		//	sw		t6, $0040(s2)		# 00007190:ae4e0040	
		//__00007194:					# 
		//	beq		s3, zero, $00006ea8	# 00007194:1260ff44	^ __00006ea8
		//	nop					# 00007198:00000000	
		//	lw		ra, $003c(sp)		# 0000719c:8fbf003c	
		//__000071a0:					# 
		//	addiu		t7, zero, $0004		# 000071a0:240f0004	t7=$00000004
		//	lui		at, $8007		# 000071a4:3c018007	at=$80070000
		//	lw		s0, $0018(sp)		# 000071a8:8fb00018	
		//	lw		s1, $001c(sp)		# 000071ac:8fb1001c	
		//	lw		s2, $0020(sp)		# 000071b0:8fb20020	
		//	lw		s3, $0024(sp)		# 000071b4:8fb30024	
		//	lw		s4, $0028(sp)		# 000071b8:8fb40028	
		//	lw		s5, $002c(sp)		# 000071bc:8fb5002c	
		//	lw		s6, $0030(sp)		# 000071c0:8fb60030	
		//	lw		s7, $0034(sp)		# 000071c4:8fb70034	
		//	lw		fp, $0038(sp)		# 000071c8:8fbe0038	
		//	sw		t7, $8080(at)		# 000071cc:ac2f8080	[80068080]
		//__000071d0:					# 
		//	jr		ra			# 000071d0:03e00008	
		//	addiu		sp, sp, $0060		# 000071d4:27bd0060	
	}

	// RAM GREECE
	static void fnc000071d8() {
		//fnc0000505c();
		//fnc000056a8();
		//fnc000056a8();
		//SetFullResolution();
		//fnc000117d8();
		//GameplayOutside.//Start();
		//SetGameplayResolution();
		//fnc00011674();
		//fnc00011d6c();
		//fnc000050c4();
	}

	// RAM GREECE
	static void fnc0000726c() {
		__ll_lshift();
	}

	// RAM GREECE
	static void fnc000072cc(int a0, int a1) {
		//fnc0001a650();
		//__ll_lshift();
	}

	// RAM GREECE
	static void fnc000073b8() {
		//__ll_lshift();
	}

	// RAM GREECE
	static void fnc00007410() {
		//fnc0001cc6c("**** ERROR: ALWAYS FUNCTION LIST OVERFLOW ****");
	}

	// RAM GREECE
	static void fnc000074bc() {}

	// RAM GREECE
	static void fnc000074e0() {}

	// RAM GREECE
	static void fnc000074f4() {}

	// RAM GREECE
	static void fnc00007548() {}

	// RAM GREECE
	static void fnc00007570() {}

	// RAM GREECE
	static void fnc00007690() {
		//fnc0001cc6c("Increment objective %d\n");
		//fnc0001a650();
	}

	// RAM GREECE
	static void fnc000076d4() {
		//fnc0001cc6c("Set objective %d\n");
		//fnc0001a650();
	}

	// RAM GREECE
	static void fnc00007728() {}

	// RAM GREECE
	static void fnc00007780() {}

	// RAM GREECE
	static void fnc000077c0() {}

	// RAM GREECE
	static void fnc00007820() {}

	// RAM GREECE
	static void fnc0000785c() {}

	// RAM GREECE
	static void fnc00007878() {}

	// RAM GREECE
	static void fnc0000789c() {}

	// RAM GREECE
	static void fnc000078b8() {}

	// RAM GREECE
	static void fnc000078cc() {}

	// RAM GREECE
	static void fnc000078e4() {}

	// RAM GREECE
	static void fnc00007900() {
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc00007900();
		//fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc00007a20() {
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc00007900();
		//fnc0001cc6c();
		//fnc00007900();
		//fnc00007900();
		//fnc0001cc6c();
		//fnc00007900();
		//fnc00007900();
		//fnc0001cc6c();
		//fnc00007900();
		//fnc0001cc6c();
		//fnc00007900();
		//fnc0001cc6c();
		//fnc00007900();
		//fnc0001cc6c();
		//fnc00007900();
		//fnc0001cc6c();
		//fnc00007900();
		//fnc0001cc6c();
		//fnc00007900();
		//fnc00007900();
		//fnc0001cc6c();
		//fnc00007900();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc00007c78() {
		//fnc0001cc6c();
		//fnc00007a20();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc00007d44() {
		//fnc00007728();
		//fnc00007728();
	}

	// RAM GREECE
	static void fnc00007de0() {
	}

	// RAM GREECE
	static void fnc00007e40() {
	}

	// RAM GREECE
	static void fnc00007e8e() {
	}

	// RAM GREECE
	static void fnc00007ecc() {
	}

	// RAM GREECE
	static void fnc00007f10() {
	}

	// RAM GREECE
	static void fnc00007f40() {
	}

	// RAM GREECE
	static void fnc00007f60() {
	}

	// RAM GREECE
	static void fnc00007fac() {
	}

	// RAM GREECE
	static void fnc00007fdc() {
	}

	// RAM GREECE
	static void fnc00008020() {
	}

	// RAM GREECE
	static void fnc00008030() {
	}

	// RAM GREECE
	static void fnc0000805c() {
	}

	// RAM GREECE
	static void fnc0000807c() {
	}

	// RAM GREECE
	static void fnc000080c0() {
	}

	// RAM GREECE
	static void fnc0000811c() {
	}

	// RAM GREECE
	static void fnc0000814c() {
	}

	// RAM GREECE
	static void fnc0000819c() {
	}

	// RAM GREECE
	static void fnc000081d4() {
		//fnc00007d44();
		//fnc00007d44();
		//fnc00007de0();
		//fnc00007de0();
		//fnc00007f60();
		//fnc00007f60();
		//fnc0000807c();
		//fnc0000807c();
		//fnc000078b8();
		//fnc000078b8();
		//fnc0000789c();
		//fnc0000789c();
		//fnc0000726c();
		//fnc0000726c();
	}

	// RAM GREECE
	static void fnc00008478() {
		//fnc0000726c();
		//fnc0001cc6c("checkin for cutscenes\n");
		//fnc0000726c();
		//fnc0000726c();
	}

	// RAM GREECE
	static void fnc0000851c() {
		//fnc000081d4();
		//fnc0001cc6c("Playing dialog %d because");
		//fnc00007a20();
		//fnc0001cc6c("\n");
		//fnc0001cc6c("**** ERROR: Character %d has no valid responses ****\n");
	}

	// RAM GREECE
	static void fnc00008674() {
		//fnc000081d4();
		//fnc0001cc6c("Daisy message %d will be played in %d seconds because");
		//fnc00007a20();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc00018d7c();
		//fnc0001cc6c("Pending daisy message is no longer valid.\n");
	}

	// RAM 00008938
	static void debugDrawTimingGraphBars()
	{
		//	lui		t6, $8004		# 00008938:3c0e8004	t6=$80040000
		//	lh		t6, $7720(t6)		# 0000893c:85ce7720	t6=$80047720
		//	addiu		sp, sp, $ffa8		# 00008940:27bdffa8	
		//	sw		ra, $001c(sp)		# 00008944:afbf001c	
		//	sw		s1, $0018(sp)		# 00008948:afb10018	
		//	beq		t6, zero, $00008c04	# 0000894c:11c000ad	v __00008c04
		//	sw		s0, $0014(sp)		# 00008950:afb00014	
		if (x80047720 != 0)
		{
			//	lui		s0, $8006		# 00008954:3c108006	s0=$80060000
			//	addiu		s0, s0, $bb2c		# 00008958:2610bb2c	s0=$8005bb2c
			//	lw		t0, $0000(s0)		# 0000895c:8e080000	t0=$8005bb2c
			int t0 = x8005bb2c;
			//	lui		t1, $e700		# 00008960:3c09e700	t1=$e7000000
			//	lui		t9, $ba00		# 00008964:3c19ba00	t9=$ba000000
			//	addiu		t7, t0, $0008		# 00008968:250f0008	t7=$801d3a08
			//	sw		t7, $0000(s0)		# 0000896c:ae0f0000	[8005bb2c]
			x8005bb2c += 8; // An array of words pointer
			//	sw		zero, $0004(t0)		# 00008970:ad000004	[801d3a04]
			StoreWord(0, t0 + 4);
			//	sw		t1, $0000(t0)		# 00008974:ad090000	[801d3a00]
			StoreWord(0xe7000000, t0);
			//	lw		t0, $0000(s0)		# 00008978:8e080000	t0=$8005bb2c
			t0 = x8005bb2c;
			//	ori		t9, t9, $1402		# 0000897c:37391402	t9=$ba001402
			//	lui		t4, $0030		# 00008980:3c0c0030	t4=$00300000
			//	addiu		t8, t0, $0008		# 00008984:25180008	t8=$801d3a08
			//	sw		t8, $0000(s0)		# 00008988:ae180000	[8005bb2c]
			x8005bb2c += 8;
			//	sw		t4, $0004(t0)		# 0000898c:ad0c0004	[801d3a04]
			StoreWord(0x00300000, t0 + 4);
			//	sw		t9, $0000(t0)		# 00008990:ad190000	[801d3a00]
			StoreWord(0xba001402, t0);
			//	lw		t0, $0000(s0)		# 00008994:8e080000	t0=$8005bb2c
			t0 = x8005bb2c;
			//	lui		t7, $0f0a		# 00008998:3c0f0f0a	t7=$0f0a0000
			//	lui		t6, $b900		# 0000899c:3c0eb900	t6=$b9000000
			//	addiu		t5, t0, $0008		# 000089a0:250d0008	t5=$801d3a08
			//	sw		t5, $0000(s0)		# 000089a4:ae0d0000	[8005bb2c]
			x8005bb2c += 8;
			//	ori		t6, t6, $031d		# 000089a8:35ce031d	t6=$b900031d
			//	ori		t7, t7, $4000		# 000089ac:35ef4000	t7=$0f0a4000
			//	sw		t7, $0004(t0)		# 000089b0:ad0f0004	[801d3a04]
			StoreWord(0x0f0a4000, t0 + 4);
			//	sw		t6, $0000(t0)		# 000089b4:ad0e0000	[801d3a00]
			StoreWord(0xb900031d, t0);
			//	lw		t0, $0000(s0)		# 000089b8:8e080000	t0=$8005bb2c
			t0 = x8005bb2c;
			//	lui		t2, $f700		# 000089bc:3c0af700	t2=$f7000000
			//	addiu		t9, zero, $ffff		# 000089c0:2419ffff	t9=$ffffffff
			//	addiu		t8, t0, $0008		# 000089c4:25180008	t8=$801d3a08
			//	sw		t8, $0000(s0)		# 000089c8:ae180000	[8005bb2c]
			x8005bb2c += 8;
			//	addiu		a1, zero, $0005		# 000089cc:24050005	a1=$00000005
			int count = 5;
			//	addiu		a2, zero, $0110		# 000089d0:24060110	a2=$00000110
			//	lui		s1, $f600		# 000089d4:3c11f600	s1=$f6000000
			//	sw		t9, $0004(t0)		# 000089d8:ad190004	[801d3a04]
			StoreWord(0xffffffff, t0 + 4);
			//	sw		t2, $0000(t0)		# 000089dc:ad0a0000	[801d3a00]
			StoreWord(0xf7000000, t0);
			bool result;
			do // Loop draws the white vertical bars
			{
				//__000089e0:					# 
				//	lw		t0, $0000(s0)		# 000089e0:8e080000	t0=$8005bb2c
				t0 = x8005bb2c;
				//	andi		v1, a2, $03ff		# 000089e4:30c303ff	
				//	sll		t5, v1, 14		# 000089e8:00036b80	t5=$00440000
				//	addiu		t4, t0, $0008		# 000089ec:250c0008	t4=$801d3a08
				//	sw		t4, $0000(s0)		# 000089f0:ae0c0000	[8005bb2c]
				x8005bb2c += 8;
				//	or		t6, t5, s1		# 000089f4:01b17025	t6=$f6440000
				//	or		a0, a1, zero		# 000089f8:00a02025	a0=$00000005
				//	ori		t7, t6, $0340		# 000089fc:35cf0340	t7=$f6440340
				//	ori		t8, t5, $0300		# 00008a00:35b80300	t8=$00440300
				//	or		v1, t5, zero		# 00008a04:01a01825	v1=$00440000
				//	addiu		a2, a2, $ffd0		# 00008a08:24c6ffd0	a2=$000000e0
				//	sw		t8, $0004(t0)		# 00008a0c:ad180004	
				StoreWord(((0x0110 & 0x03ff) << 14) | 0x0300, t0 + 4);
				//	sw		t7, $0000(t0)		# 00008a10:ad0f0000	
				StoreWord(0xf6440340, t0);
				//	or		v0, t0, zero		# 00008a14:01001025	
				//	bne		a1, zero, $000089e0	# 00008a18:14a0fff1	^ __000089e0
				result = count != 0;
				//	addiu		a1, a1, $ffff		# 00008a1c:24a5ffff	a1=$00000004
				count--;
			} while (result);
			//	lw		t0, $0000(s0)		# 00008a20:8e080000	
			t0 = x8005bb2c;
			//	lui		t5, $003e		# 00008a24:3c0d003e	t5=$003e0000
			//	ori		t5, t5, $003e		# 00008a28:35ad003e	t5=$003e003e
			//	addiu		t9, t0, $0008		# 00008a2c:25190008	
			//	sw		t9, $0000(s0)		# 00008a30:ae190000	
			x8005bb2c += 8;
			//	sw		zero, $0004(t0)		# 00008a34:ad000004	
			StoreWord(0, t0 + 4);
			//	sw		t1, $0000(t0)		# 00008a38:ad090000	
			StoreWord(0xe7000000, t0);
			//	lw		t0, $0000(s0)		# 00008a3c:8e080000	
			t0 = x8005bb2c;
			//	lui		t7, $8005		# 00008a40:3c0f8005	t7=$80050000
			//	lui		a3, $000f		# 00008a44:3c07000f	a3=$000f0000
			//	addiu		t4, t0, $0008		# 00008a48:250c0008	
			//	sw		t4, $0000(s0)		# 00008a4c:ae0c0000	
			x8005bb2c += 8;
			//	sw		t5, $0004(t0)		# 00008a50:ad0d0004	
			StoreWord(0x003e003e, t0 + 4);
			//	sw		t2, $0000(t0)		# 00008a54:ad0a0000	
			StoreWord(0xf7000000, t0);
			//	lw		t0, $0000(s0)		# 00008a58:8e080000	
			t0 = x8005bb2c;
			//	ori		a3, a3, $4240		# 00008a5c:34e74240	a3=$000f4240
			//	addiu		a2, zero, $0000		# 00008a60:24060000	
			//	addiu		t6, t0, $0008		# 00008a64:250e0008	
			//	sw		t6, $0000(s0)		# 00008a68:ae0e0000	
			x8005bb2c += 8;
			//	lw		a1, $2b38(t7)		# 00008a6c:8de52b38	a1=$80052b38
			//	sw		t0, $0030(sp)		# 00008a70:afa80030	
			//	jal		$0001d308		# 00008a74:0c0074c2	v FNC_0001d308
			//	sra		a0, a1, 31		# 00008a78:000527c3	
			__ll_mul(ticksElapsedDuringFrame >>> 31, ticksElapsedDuringFrame);
			//	lui		a2, $8003		# 00008a7c:3c068003	a2=$80030000
			//	lui		a3, $8003		# 00008a80:3c078003	a3=$80030000
			//	lw		a3, $5614(a3)		# 00008a84:8ce75614	a3=$80035614
			//	lw		a2, $5610(a2)		# 00008a88:8cc65610	a2=$80035610
			//	or		a0, v0, zero		# 00008a8c:00402025	
			//	jal		$0001d208		# 00008a90:0c007482	v FNC_0001d208
			//	or		a1, v1, zero		# 00008a94:00602825	
			__ull_div();
			//	or		a0, v0, zero		# 00008a98:00402025	
			//	or		a1, v1, zero		# 00008a9c:00602825	
			//	addiu		a2, zero, $0000		# 00008aa0:24060000	
			//	jal		$0001d208		# 00008aa4:0c007482	v FNC_0001d208
			//	addiu		a3, zero, $015b		# 00008aa8:2407015b	a3=$0000015b
			__ull_div();
			//	addiu		t9, v1, $0020		# 00008aac:24790020	
			//	lw		t3, $0030(sp)		# 00008ab0:8fab0030	
			//	andi		t5, t9, $03ff		# 00008ab4:332d03ff	
			//__00008ab9:					# 
			//	sll		t6, t5, 14		# 00008ab8:000d7380	
			//	or		t7, t6, s1		# 00008abc:01d17825	
			//	lui		t9, $0008		# 00008ac0:3c190008	t9=$00080000
			//	ori		t9, t9, $0308		# 00008ac4:37390308	t9=$00080308
			//	ori		t8, t7, $031c		# 00008ac8:35f8031c	
			//	sw		t8, $0000(t3)		# 00008acc:ad780000	
			//	sw		t9, $0004(t3)		# 00008ad0:ad790004	
			//	lw		t0, $0000(s0)		# 00008ad4:8e080000	
			//	lui		t5, $e700		# 00008ad8:3c0de700	t5=$e7000000
			//	lui		t8, $f800		# 00008adc:3c18f800	t8=$f8000000
			//	addiu		t4, t0, $0008		# 00008ae0:250c0008	
			//	sw		t4, $0000(s0)		# 00008ae4:ae0c0000	
			//	sw		zero, $0004(t0)		# 00008ae8:ad000004	
			//	sw		t5, $0000(t0)		# 00008aec:ad0d0000	
			//	lw		t0, $0000(s0)		# 00008af0:8e080000	
			//	ori		t8, t8, $f800		# 00008af4:3718f800	t8=$f800f800
			//	lui		t7, $f700		# 00008af8:3c0ff700	t7=$f7000000
			//	addiu		t6, t0, $0008		# 00008afc:250e0008	
			//__00008b00:					# 
			//	sw		t6, $0000(s0)		# 00008b00:ae0e0000	
			//	sw		t8, $0004(t0)		# 00008b04:ad180004	
			//	sw		t7, $0000(t0)		# 00008b08:ad0f0000	
			//	lw		t0, $0000(s0)		# 00008b0c:8e080000	
			//	lui		t4, $8005		# 00008b10:3c0c8005	t4=$80050000
			//	lui		a3, $000f		# 00008b14:3c07000f	a3=$000f0000
			//	addiu		t9, t0, $0008		# 00008b18:25190008	
			//	sw		t9, $0000(s0)		# 00008b1c:ae190000	
			//	lw		a1, $2b3c(t4)		# 00008b20:8d852b3c	a1=$80052b3c
			//	ori		a3, a3, $4240		# 00008b24:34e74240	a3=$000f4240
			//	addiu		a2, zero, $0000		# 00008b28:24060000	
			//	sw		t0, $0024(sp)		# 00008b2c:afa80024	
			//	jal		$0001d308		# 00008b30:0c0074c2	v FNC_0001d308
			//	sra		a0, a1, 31		# 00008b34:000527c3	
			__ll_mul();
			//	lui		a2, $8003		# 00008b38:3c068003	a2=$80030000
			//	lui		a3, $8003		# 00008b3c:3c078003	a3=$80030000
			//	lw		a3, $5614(a3)		# 00008b40:8ce75614	a3=$80035614
			//	lw		a2, $5610(a2)		# 00008b44:8cc65610	a2=$80035610
			//	or		a0, v0, zero		# 00008b48:00402025	
			//	jal		$0001d208		# 00008b4c:0c007482	v FNC_0001d208
			//	or		a1, v1, zero		# 00008b50:00602825	
			__ull_div();
			//	or		a0, v0, zero		# 00008b54:00402025	
			//	or		a1, v1, zero		# 00008b58:00602825	
			//	addiu		a2, zero, $0000		# 00008b5c:24060000	
			//	jal		$0001d208		# 00008b60:0c007482	v FNC_0001d208
			//	addiu		a3, zero, $015b		# 00008b64:2407015b	a3=$0000015b
			__ull_div();
			//	addiu		t7, v1, $0020		# 00008b68:246f0020	
			//	lw		t1, $0024(sp)		# 00008b6c:8fa90024	
			//	andi		t8, t7, $03ff		# 00008b70:31f803ff	
			//	sll		t9, t8, 14		# 00008b74:0018cb80	
			//	or		t4, t9, s1		# 00008b78:03316025	
			//	lui		t7, $0008		# 00008b7c:3c0f0008	t7=$00080000
			//	ori		t7, t7, $0320		# 00008b80:35ef0320	t7=$00080320
			//	ori		t6, t4, $0334		# 00008b84:358e0334	
			//	sw		t6, $0000(t1)		# 00008b88:ad2e0000	
			//	sw		t7, $0004(t1)		# 00008b8c:ad2f0004	
			//	lw		t0, $0000(s0)		# 00008b90:8e080000	
			//	lui		t8, $e700		# 00008b94:3c18e700	t8=$e7000000
			//	lui		t4, $ba00		# 00008b98:3c0cba00	t4=$ba000000
			//	addiu		t5, t0, $0008		# 00008b9c:250d0008	
			//	sw		t5, $0000(s0)		# 00008ba0:ae0d0000	
			//	sw		zero, $0004(t0)		# 00008ba4:ad000004	
			//	sw		t8, $0000(t0)		# 00008ba8:ad180000	
			//	lw		t0, $0000(s0)		# 00008bac:8e080000	
			//	ori		t4, t4, $1402		# 00008bb0:358c1402	t4=$ba001402
			//	addiu		t5, zero, $0001		# 00008bb4:240d0001	t5=$00000001
			//	addiu		t9, t0, $0008		# 00008bb8:25190008	
			//	sw		t9, $0000(s0)		# 00008bbc:ae190000	
			//	sw		zero, $0004(t0)		# 00008bc0:ad000004	
			//	sw		t4, $0000(t0)		# 00008bc4:ad0c0000	
			//	lw		t0, $0000(s0)		# 00008bc8:8e080000	
			//	lui		t7, $b700		# 00008bcc:3c0fb700	t7=$b7000000
			//	lui		t4, $0055		# 00008bd0:3c0c0055	t4=$00550000
			//	addiu		t6, t0, $0008		# 00008bd4:250e0008	
			//	sw		t6, $0000(s0)		# 00008bd8:ae0e0000	
			//	sw		t5, $0004(t0)		# 00008bdc:ad0d0004	
			//	sw		t7, $0000(t0)		# 00008be0:ad0f0000	
			//	lw		t0, $0000(s0)		# 00008be4:8e080000	
			//	lui		t9, $b900		# 00008be8:3c19b900	t9=$b9000000
			//	ori		t9, t9, $031d		# 00008bec:3739031d	t9=$b900031d
			//	addiu		t8, t0, $0008		# 00008bf0:25180008	
			//	sw		t8, $0000(s0)		# 00008bf4:ae180000	
			//	ori		t4, t4, $2078		# 00008bf8:358c2078	t4=$00552078
			//	sw		t4, $0004(t0)		# 00008bfc:ad0c0004	
			//	sw		t9, $0000(t0)		# 00008c00:ad190000	
		}
		//__00008c04:					# 
		//	lw		ra, $001c(sp)		# 00008c04:8fbf001c	
		//	lw		s0, $0014(sp)		# 00008c08:8fb00014	
		//	lw		s1, $0018(sp)		# 00008c0c:8fb10018	
		//	jr		ra			# 00008c10:03e00008	
		//	addiu		sp, sp, $0058		# 00008c14:27bd0058	
	}

	// RAM GREECE
	static void fnc00008c18() {
	}

	// RAM GREECE
	static void fnc00008c44() {
		//fnc0001cc6c("Remember to give power up %d\n");
	}

	// RAM GREECE
	static void fnc00008ca8() {
		//guOrtho();
		//fnc000039d0();
		//fnc00005110();
	}

	// RAM GREECE
	/// Draw BG for HUD elements (health, humans etc)
	static void fnc000092b8() {}

	// RAM GREECE
	static void fnc00009f18() {
		//fnc0000505c();
		//fnc000050c4();
		//fnc0000dc9c();
		//fnc0000505c();
		//fnc000050c4();
		//fnc0000e4b0();
		//fnc0000e4c4();
		//fnc0000505c();
		//SetFullResolution();
		//fnc00011d24();
		//LoadFrontEndDataToRam();
		//GameplayOutside.//Start();
		//GameplayOutside.//Start();
		//fnc000056a8();
		//fnc000056a8();
		//SetGameplayResolution();
		//fnc00011674();
		//fnc00011d6c();
		//fnc000050c4();
	}

	// RAM 0000a024
	static void guess_displayInventory() {
		//fnc0000505c();
		//fnc000050c4();
		//fnc0000dc9c();
		//fnc0000afdc();
		//fnc0000505c();
		//fnc000050c4();
		//fnc0000e4b0();
		//fnc0000e4c4();
		//fnc0000505c();
		//fnc00011d24();
		//LoadFrontEndDataToRam();
		//SetFullResolution();
		//GameplayOutside.//Start();
		//fnc000056a8();
		//fnc000056a8();
		//SetGameplayResolution();
		//fnc00011674();
		//fnc00011d6c();
		//fnc00011d6c();
		//fnc000050c4();
		//fnc00013324();
	}

	/// Possible file boundary
	/// These extra NOPs are only in U
	/// There are more diffs after this

	// RAM GREECE
	static void fnc0000a160() {
		//guOrtho();
		//guLookAt();
		//fnc0000afdc();
	}

	// RAM GREECE
	static void fnc0000a2b8() {
	}

	// RAM GREECE
	static void fnc0000a3dc() {
	}

	// RAM GREECE
	static void fnc0000a43c() {
	}

	// RAM 0000a4a4
	/// Draws text ("%@DEMO" is sent here)
	/// (string formatString, int a1, int a2, string fillerString)
	/// Special replacement codes: It's not as simple as calling with these before with text?
	/// %C color of text
	/// %H %V Horizontal and Vertical scale (0x400 is normal)
	/// %X %Y X and Y coords
	static void drawText() {
		//fnc00004254();
		//fnc0000a3dc();
		//fnc0000a3dc();
		//fnc0000a3dc();
		//fnc0000a3dc();
	}

	// RAM GREECE
	static void fnc0000afdc() {
	}

	// RAM GREECE
	/// framebuffer ?
	static void fnc0000b044() {
		//fnc0000a2b8();
		//fnc0000a2b8();
		//fnc0000a2b8();
		//fnc0000a43c();
		//fnc0000a43c();
		//fnc0000a43c();
		//fnc0000a43c();
	}

	// RAM GREECE
	static void fnc0000c670() {
	}

	// RAM GREECE
	static void fnc0000c6ac() {
	}

	// RAM GREECE
	static void fnc0000c6b8() {
	}

	// RAM GREECE
	static void fnc0000c6c4() {
	}

	// RAM GREECE
	static void fnc0000c6d0() {
	}

	// RAM 0000c6f4
	static int guess_allocateCharacterBuffer()
	{
		return 0;
	}

	// RAM GREECE
	static void fnc0000c74c() {
	}

	// RAM GREECE
	static void fnc0000c764() {
	}

	// RAM GREECE
	static void fnc0000c790() {
	}

	// RAM GREECE
	static void fnc0000c81c() {
		//coss();
		//sins();
		//coss();
		//sins();
		//coss();
		//sins();
	}

	// RAM GREECE
	static void fnc0000cc3c() {
		//fnc0000c81c();
	}

	// RAM GREECE
	static void fnc0000cd54() {
	}

	// RAM GREECE
	static void fnc0000cdfc() {
		//fnc000101f0();
		//fnc000101f0();
		//fnc0000cd54();
		//fnc0000cd54();
	}

	// RAM GREECE
	static void fnc0000cf4c() {
		//fnc0000cd54();
	}

	// RAM GREECE
	static void fnc0000d26c() {
	}

	// RAM GREECE
	static void fnc0000d278() {
		//fnc0000cd54();
	}

	// RAM GREECE
	static void fnc0000d384() {
	}

	// RAM GREECE
	static void fnc0000d588() {
		//fnc0000d384();
	}

	// RAM GREECE
	static void fnc0000d71c() {
		//fnc000101f0();
		//fnc000101f0();
		//fnc000101f0();
		//fnc000101f0();
		//fnc0000d588();
		//fnc0000d588();
	}

	// RAM GREECE
	static void fnc0000d8dc() {
		//fnc0000d588();
	}

	// RAM GREECE
	static void fnc0000dafc() {
		//fnc0000d588();
	}

	// RAM GREECE
	static void fnc0000dc30() {
	}

	// RAM GREECE
	static void fnc0000dc9c() {
	}

	// RAM GREECE
	static void fnc0000dccc() {
		//coss();
		//sins();
		//sins();
		//coss();
	}

	// RAM GREECE
	static void fnc0000defc() {
		//coss();
		//sins();
		//coss();
	}

	// RAM GREECE
	static void fnc0000e048() {
	}

	// RAM GREECE
	static void fnc0000e230() {
	}

	// RAM GREECE
	static void fnc0000e3dc() {
	}

	// RAM GREECE
	static void fnc0000e4b0(int a0, int a1) {
	}

	// RAM GREECE
	static void fnc0000e4c4() {
		//fnc0000dc9c();
	}

	// RAM GREECE
	static void fnc0000e52c() {}

	// RAM GREECE
	static void fnc0000e53c() {
		//guPerspective();
		//sinf();
		//cosf();
		//guLookAt();
		//fnc000039d0();
	}

	// RAM GREECE
	/// Stub of source tagged printf
	/// a0=messageString
	/// a1=sourceFilePathName
	/// a2=sourceLineNumber??
	static void fnc0000ef00(string message, string sourceFilePathName, uint a2)
	{
		//	sw		a0, $0000(sp)		# 0000ef00:afa40000	
		//	sw		a1, $0004(sp)		# 0000ef04:afa50004	
		//	jr		ra			# 0000ef08:03e00008	
		//	sw		a2, $0008(sp)		# 0000ef0c:afa60008	
	}

	// RAM GREECE
	static void fnc0000ef10() {
		//	addiu		sp, sp, $ffe0		# 0000ef10:27bdffe0	
		//	sw		a0, $0020(sp)		# 0000ef14:afa40020	
		//	lui		a0, $8004		# 0000ef18:3c048004	a0=$80040000
		//	lui		t6, $803f		# 0000ef1c:3c0e803f	t6=$803f0000
		//	addiu		a0, a0, $fb20		# 0000ef20:2484fb20	a0=$8003fb20
		//	sw		ra, $001c(sp)		# 0000ef24:afbf001c	
		//	lui		at, $8007		# 0000ef28:3c018007	at=$80070000
		//	ori		t6, t6, $ffff		# 0000ef2c:35ceffff	t6=$803fffff
		//	sh		zero, $8078(at)		# 0000ef30:a4208078	[80068078]
		x80068078 = 0;
		//	jal		$0001e920		# 0000ef34:0c007a48	v FNC_0001e920
		//	subu		a1, t6, a0		# 0000ef38:01c42823	a1=$003c04df
		_blkclr(&x8003fb20, 0x3c04df);
		//	jal		$0001e0d0		# 0000ef3c:0c007834	v FNC_0001e0d0
		//	nop					# 0000ef40:00000000	
		fnc0001e0d0();
		//	lui		a0, $8006		# 0000ef44:3c048006	a0=$80060000
		//	lui		t7, $8006		# 0000ef48:3c0f8006	t7=$80060000
		//	addiu		a0, a0, $7388		# 0000ef4c:24847388	a0=$80067388
		//	addiu		t7, t7, $c760		# 0000ef50:25efc760	t7=$8005c760
		//	lui		a2, $8001		# 0000ef54:3c068001	a2=$80010000
		//	addiu		t8, zero, $000a		# 0000ef58:2418000a	t8=$0000000a
		//	sw		zero, $0000(a0)		# 0000ef5c:ac800000	[80067388]
		x80067388 = 0;
		//	sw		zero, $0008(a0)		# 0000ef60:ac800008	[80067390]
		x80067390 = 0;
		//	sw		t8, $0014(sp)		# 0000ef64:afb80014	
		//	addiu		a2, a2, $efb8		# 0000ef68:24c6efb8	a2=$8000efb8
		//	sw		t7, $0010(sp)		# 0000ef6c:afaf0010	
		//	addiu		a1, zero, $0001		# 0000ef70:24050001	a1=$00000001
		//	jal		$0001ae90		# 0000ef74:0c006ba4	v FNC_0001ae90
		//	or		a3, zero, zero		# 0000ef78:00003825	
		osCreateThread(&x80067388, 1, &fnc0000efb8, 0);
		//	lui		a0, $8006		# 0000ef7c:3c048006	a0=$80060000
		//	jal		$0001afe0		# 0000ef80:0c006bf8	v FNC_0001afe0
		//	addiu		a0, a0, $7388		# 0000ef84:24847388	a0=$80067388
		osStartThread(&x80067388);
		//	lw		ra, $001c(sp)		# 0000ef88:8fbf001c	
		//	addiu		sp, sp, $0020		# 0000ef8c:27bd0020	
		//	jr		ra			# 0000ef90:03e00008	
		//	nop					# 0000ef94:00000000	
	}

	// RAM GREECE
	static void fnc0000ef98()
	{
		//	lui		v0, $8003		# 0000ef98:3c028003	v0=$80030000
		//	lui		t6, $0033		# 0000ef9c:3c0e0033	t6=$00330000
		//	addiu		v0, v0, $5630		# 0000efa0:24425630	v0=$80035630
		//	ori		t6, t6, $0251		# 0000efa4:35ce0251	t6=$00330251
		//	addiu		t7, zero, $036d		# 0000efa8:240f036d	t7=$0000036d
		//	sw		t6, $0530(v0)		# 0000efac:ac4e0530	[80035b60]
		x80035b60 = 0x00330251;
		//	jr		ra			# 0000efb0:03e00008	
		//	sw		t7, $052c(v0)		# 0000efb4:ac4f052c	[80035b5c]
		x80035b5c = 0x0000036d;
	}

	// RAM GREECE
	/// Init video and start major threads
	static void fnc0000efb8(int a0) {
		//	addiu		sp, sp, $ffe0		# 0000efb8:27bdffe0	
		//	lui		v0, $8026		# 0000efbc:3c028026	v0=$80260000
		//	lui		v1, $802b		# 0000efc0:3c03802b	v1=$802b0000
		//	sw		ra, $001c(sp)		# 0000efc4:afbf001c	
		//	sw		a0, $0020(sp)		# 0000efc8:afa40020	
		//	addiu		v1, v1, $2080		# 0000efcc:24632080	v1=$802b2080
		int v1 = 0x802b2080;
		//	addiu		v0, v0, $7080		# 0000efd0:24427080	v0=$80267080
		short* v0 = 0x80267080;
		do // zero the framebuffers
		{
			//__0000efd4:					# 
			//	addiu		v0, v0, $0008		# 0000efd4:24420008	v0=$80267088
			v0 += 8;
			//	sh		zero, $fffa(v0)		# 0000efd8:a440fffa	[80267082]
			*(v0 - 6) = 0;
			//	sh		zero, $fffc(v0)		# 0000efdc:a440fffc	[80267084]
			*(v0 - 4) = 0;
			//	sh		zero, $fffe(v0)		# 0000efe0:a440fffe	[80267086]
			*(v0 - 2) = 0;
			//	bne		v0, v1, $0000efd4	# 0000efe4:1443fffb	^ __0000efd4
			//	sh		zero, $fff8(v0)		# 0000efe8:a440fff8	[80267080]
			*(v0 - 8) = 0;
		} while (v0 != v1);
		//	jal		$0001e9c0		# 0000efec:0c007a70	v FNC_0001e9c0
		//	addiu		a0, zero, $00fe		# 0000eff0:240400fe	a0=$000000fe
		osCreateViManager(OS.Priority.OS_PRIORITY_VIMGR);
		//	lui		v0, $8000		# 0000eff4:3c028000	v0=$80000000
		//	lw		v0, $0300(v0)		# 0000eff8:8c420300	v0=$80000300
		//	bnel		v0, zero, $0000f024	# 0000effc:54400009	v __0000f024
		//	addiu		at, zero, $0002		# 0000f000:24010002	at=$00000002
		if (x80000300 == 0)
		{
			//	jal		$0000ef98		# 0000f004:0c003be6	^ FNC_0000ef98
			//	nop					# 0000f008:00000000	
			fnc0000ef98();
			//	lui		a0, $8003		# 0000f00c:3c048003	a0=$80030000
			//	jal		$0001ed80		# 0000f010:0c007b60	v FNC_0001ed80
			//	addiu		a0, a0, $5b30		# 0000f014:24845b30	a0=$80035b30
			osViSetMode(OS.ViMode.osViModePalLan1);
			//	beq		zero, zero, $0000f048	# 0000f018:1000000b	v __0000f048
			//	nop					# 0000f01c:00000000	
			//	addiu		at, zero, $0002		# 0000f020:24010002	at=$00000002
		}
		else
		{
			//__0000f024:					# 
			//	bne		v0, at, $0000f040	# 0000f024:14410006	v __0000f040
			//	lui		a0, $8003		# 0000f028:3c048003	a0=$80030000
			if (x80000300 == 2)
			{
				//	lui		a0, $8003		# 0000f02c:3c048003	a0=$80030000
				//	jal		$0001ed80		# 0000f030:0c007b60	v FNC_0001ed80
				//	addiu		a0, a0, $5f90		# 0000f034:24845f90	a0=$80035f90
				osViSetMode(OS.ViMode.osViModeMpalLan1);
				//	beq		zero, zero, $0000f048	# 0000f038:10000003	v __0000f048
				//	nop					# 0000f03c:00000000	
			}
			else
			{
				//__0000f040:					# 
				//	jal		$0001ed80		# 0000f040:0c007b60	v FNC_0001ed80
				//	addiu		a0, a0, $56d0		# 0000f044:248456d0	a0=$8003b660
				osViSetMode(OS.ViMode.osViModeNtscLan1);
			}
		}
		//__0000f048:					# 
		//	lui		a0, $8026		# 0000f048:3c048026	a0=$80260000
		//	jal		$0001edf0		# 0000f04c:0c007b7c	v FNC_0001edf0
		//	addiu		a0, a0, $7080		# 0000f050:24847080	a0=$80267080
		osViSwapBuffer(0x80267080);
		//	lui		a0, $8006		# 0000f054:3c048006	a0=$80060000
		//	lui		t6, $8006		# 0000f058:3c0e8006	t6=$80060000
		//	addiu		a0, a0, $7538		# 0000f05c:24847538	a0=$80067538
		//	addiu		t6, t6, $cf68		# 0000f060:25cecf68	t6=$8005cf68
		//	lui		a2, $8001		# 0000f064:3c068001	a2=$80010000
		//	addiu		t7, zero, $0008		# 0000f068:240f0008	t7=$00000008
		//	sw		zero, $0000(a0)		# 0000f06c:ac800000	[80067538]
		x80067538 = 0;
		//	sw		zero, $0008(a0)		# 0000f070:ac800008	[80067540]
		x80067540 = 0;
		//	sw		t7, $0014(sp)		# 0000f074:afaf0014	
		//	addiu		a2, a2, $f6b0		# 0000f078:24c6f6b0	a2=$8000f6b0
		//	sw		t6, $0010(sp)		# 0000f07c:afae0010	
		//	addiu		a1, zero, $0006		# 0000f080:24050006	a1=$00000006
		//	jal		$0001ae90		# 0000f084:0c006ba4	v FNC_0001ae90
		//	lw		a3, $0020(sp)		# 0000f088:8fa70020	
		osCreateThread(0x80067538, 6, &fnc0000f6b0, 0); // Exception handler thread
		//	lui		a0, $8006		# 0000f08c:3c048006	a0=$80060000
		//	lui		t8, $8006		# 0000f090:3c188006	t8=$80060000
		//	addiu		a0, a0, $76e8		# 0000f094:248476e8	a0=$800676e8
		//	addiu		t8, t8, $4f70		# 0000f098:27184f70	t8=$80064f70
		//	lui		a2, $8001		# 0000f09c:3c068001	a2=$80010000
		//	addiu		t9, zero, $0004		# 0000f0a0:24190004	t9=$00000004
		//	sw		zero, $0000(a0)		# 0000f0a4:ac800000	[800676e8]
		x800676e8 = 0;
		//	sw		zero, $0008(a0)		# 0000f0a8:ac800008	[800676f0]
		x800676f0 = 0;
		//	sw		t9, $0014(sp)		# 0000f0ac:afb90014	
		//	addiu		a2, a2, $fe50		# 0000f0b0:24c6fe50	a2=$8000fe50
		//	sw		t8, $0010(sp)		# 0000f0b4:afb80010	
		//	addiu		a1, zero, $0003		# 0000f0b8:24050003	a1=$00000003
		//	jal		$0001ae90		# 0000f0bc:0c006ba4	v FNC_0001ae90
		//	lw		a3, $0020(sp)		# 0000f0c0:8fa70020	
		osCreateThread(0x800676e8, 3, &fnc0000fe50, 0); // Actual gameplay thread
		//	lui		a0, $8006		# 0000f0c4:3c048006	a0=$80060000
		//	lui		t0, $8006		# 0000f0c8:3c088006	t0=$80060000
		//	addiu		a0, a0, $7898		# 0000f0cc:24847898	a0=$80067898
		//	addiu		t0, t0, $6780		# 0000f0d0:25086780	t0=$80066780
		//	lui		a2, $8000		# 0000f0d4:3c068000	a2=$80000000
		//	addiu		t1, zero, $0005		# 0000f0d8:24090005	t1=$00000005
		//	sw		zero, $0000(a0)		# 0000f0dc:ac800000	[80067898]
		x80067898 = 0;
		//	sw		zero, $0008(a0)		# 0000f0e0:ac800008	[800678a0]
		x800678a0 = 0;
		//	sw		t1, $0014(sp)		# 0000f0e4:afa90014	
		//	addiu		a2, a2, $2ef8		# 0000f0e8:24c62ef8	a2=$80002ef8
		//	sw		t0, $0010(sp)		# 0000f0ec:afa80010	
		//	addiu		a1, zero, $0007		# 0000f0f0:24050007	a1=$00000007
		//	jal		$0001ae90		# 0000f0f4:0c006ba4	v FNC_0001ae90
		//	lw		a3, $0020(sp)		# 0000f0f8:8fa70020	
		osCreateThread(0x80067898, 7, &fnc00002ef8, 0); // Controller polling thread
		//	jal		$0000f218		# 0000f0fc:0c003c86	v FNC_0000f218
		//	nop					# 0000f100:00000000	
		fnc0000f218();
		//	lui		a1, $8007		# 0000f104:3c058007	a1=$80070000
		//	lui		a2, $8007		# 0000f108:3c068007	a2=$80070000
		//__0000f10c:					# 
		//	addiu		a2, a2, $8040		# 0000f10c:24c68040	a2=$80068040
		//	addiu		a1, a1, $8060		# 0000f110:24a58060	a1=$80068060
		//	addiu		a0, zero, $0096		# 0000f114:24040096	a0=$00000096
		//	jal		$0001ee40		# 0000f118:0c007b90	v FNC_0001ee40
		//	addiu		a3, zero, $0008		# 0000f11c:24070008	a3=$00000008
		fnc0001ee40(0x96, 0x80068060, 0x80068040, 8);
		//	addiu		a0, zero, $0009		# 0000f120:24040009	a0=$00000009
		//	jal		$000047d0		# 0000f124:0c0011f4	^ FNC_000047d0
		//	addiu		a1, zero, $0005		# 0000f128:24050005	a1=$00000005
		fnc000047d0(9, 5);
		//	lui		a0, $8006		# 0000f12c:3c048006	a0=$80060000
		//	jal		$0001afe0		# 0000f130:0c006bf8	v FNC_0001afe0
		//	addiu		a0, a0, $7538		# 0000f134:24847538	a0=$80067538
		osStartThread(0x80067538);
		//	lui		a0, $8006		# 0000f138:3c048006	a0=$80060000
		//	jal		$0001afe0		# 0000f13c:0c006bf8	v FNC_0001afe0
		//	addiu		a0, a0, $7898		# 0000f140:24847898	a0=$80067898
		osStartThread(0x80067898);
		//	lui		a0, $8006		# 0000f144:3c048006	a0=$80060000
		//	jal		$0001afe0		# 0000f148:0c006bf8	v FNC_0001afe0
		//	addiu		a0, a0, $76e8		# 0000f14c:248476e8	a0=$800676e8
		osStartThread(0x800676e8);
		//	or		a0, zero, zero		# 0000f150:00002025	
		//	jal		$0001efd0		# 0000f154:0c007bf4	v FNC_0001efd0
		//	or		a1, zero, zero		# 0000f158:00002825	
		osSetThreadPri(0, OS.Priority.OS_PRIORITY_IDLE); // Set current thread to idle
		//__0000f15c:					# 
		//	beq		zero, zero, $0000f15c	# 0000f15c:1000ffff	<__0000f15c
		while (true) {}
		//	nop					# 0000f160:00000000	
		//	nop					# 0000f164:00000000	
		//	nop					# 0000f168:00000000	
		//	nop					# 0000f16c:00000000	
		//	nop					# 0000f170:00000000	
		//	nop					# 0000f174:00000000	
		//	nop					# 0000f178:00000000	
		//	nop					# 0000f17c:00000000	
		//	lw		ra, $001c(sp)		# 0000f180:8fbf001c	
		//	addiu		sp, sp, $0020		# 0000f184:27bd0020	
		//	jr		ra			# 0000f188:03e00008	
		//	nop					# 0000f18c:00000000	
	}

	// RAM GREECE
	static void fnc0000f190(uint a0) {
		//osCreateThread();
		//osStartThread();
	}

	// RAM 0000f1e8
	static void stopAndDestroyThread() {
		osStopThread();
		osDestroyThread();
	}

	// RAM GREECE
	static void fnc0000f218() {
		//osCreateMesgQueue();
		//osCreateMesgQueue();
		//osCreateMesgQueue();
		//osCreateMesgQueue();
		//osSetEventMesg();
		//osCreateMesgQueue();
		//osViSetEvent();
		//osCreateMesgQueue();
		//osCreateMesgQueue();
		//osCreateMesgQueue();
		//osCreateMesgQueue();
		//osCreateMesgQueue();
		//osCreateMesgQueue();
	}

	// RAM GREECE
	static void fnc0000f368() {
	}

	// RAM GREECE
	/// Writes the framebuffer address
	static void fnc0000f478()
	{
		//	addiu		sp, sp, $ffe8		# 0000f478:27bdffe8	
		//	sw		ra, $0014(sp)		# 0000f47c:afbf0014	
		//	jal		$0001f2e0		# 0000f480:0c007cb8	v FNC_0001f2e0
		//	sw		a0, $0018(sp)		# 0000f484:afa40018	
		osWritebackDCacheAll();
		//	lui		v0, $8006		# 0000f488:3c028006	v0=$80060000
		//	addiu		v0, v0, $bb20		# 0000f48c:2442bb20	v0=$8005bb20
		//	lw		t6, $0000(v0)		# 0000f490:8c4e0000	t6=$8005bb20
		//	lw		a1, $0018(sp)		# 0000f494:8fa50018	
		//	lui		t8, $8006		# 0000f498:3c188006	t8=$80060000
		//	addiu		t7, t6, $0280		# 0000f49c:25cf0280	t7=$801ce990
		//	sw		t7, $0040(a1)		# 0000f4a0:acaf0040	
		//	lw		t9, $0000(v0)		# 0000f4a4:8c590000	t9=$8005bb20
		//	lw		t8, $bb2c(t8)		# 0000f4a8:8f18bb2c	t8=$8005bb2c
		//	lui		v1, $8003		# 0000f4ac:3c038003	v1=$80030000
		//	lui		t6, $8003		# 0000f4b0:3c0e8003	t6=$80030000
		//	subu		t0, t8, t9		# 0000f4b4:03194023	t0=$000052f0
		//	addiu		t1, t0, $fd80		# 0000f4b8:2509fd80	t1=$00005070
		//	sra		t2, t1, 3		# 0000f4bc:000950c3	
		//	addiu		v1, v1, $de10		# 0000f4c0:2463de10	v1=$8002de10
		//	addiu		t6, t6, $dee0		# 0000f4c4:25cedee0	t6=$8002dee0
		//	lui		t9, $8004		# 0000f4c8:3c198004	t9=$80040000
		//	sll		t3, t2, 3		# 0000f4cc:000a58c0	t3=$00005070
		//	addiu		t4, zero, $0001		# 0000f4d0:240c0001	t4=$00000001
		//	addiu		t5, zero, $0006		# 0000f4d4:240d0006	t5=$00000006
		//	subu		t7, t6, v1		# 0000f4d8:01c37823	t7=$000000d0
		//	lui		t8, $8003		# 0000f4dc:3c188003	t8=$80030000
		//	addiu		t9, t9, $e860		# 0000f4e0:2739e860	t9=$8003e860
		//	addiu		t1, zero, $0800		# 0000f4e4:24090800	t1=$00000800
		//	addiu		t8, t8, $dee0		# 0000f4e8:2718dee0	t8=$8002dee0
		//	addiu		t0, zero, $1000		# 0000f4ec:24081000	t0=$00001000
		//	sw		t4, $0010(a1)		# 0000f4f0:acac0010	
		//	sw		t5, $0014(a1)		# 0000f4f4:acad0014	
		//	sw		t9, $0028(a1)		# 0000f4f8:acb90028	
		//	sw		t1, $002c(a1)		# 0000f4fc:aca9002c	
		//__0000f500:					# 
		//	lw		t1, $0088(a1)		# 0000f500:8ca90088	
		//	lui		t2, $8016		# 0000f504:3c0a8016	t2=$80160000
		//	lui		t4, $8016		# 0000f508:3c0c8016	t4=$80160000
		//	lui		t5, $8016		# 0000f50c:3c0d8016	t5=$80160000
		//	lui		t6, $8016		# 0000f510:3c0e8016	t6=$80160000
		//	lui		t9, $8007		# 0000f514:3c198007	t9=$80070000
		//	sw		t3, $0044(a1)		# 0000f518:acab0044	
		//	sw		t7, $001c(a1)		# 0000f51c:acaf001c	
		//	sw		t8, $0020(a1)		# 0000f520:acb80020	
		//	sw		t0, $0024(a1)		# 0000f524:aca80024	
		//	addiu		t2, t2, $0300		# 0000f528:254a0300	t2=$80160300
		//	addiu		t3, zero, $0400		# 0000f52c:240b0400	t3=$00000400
		//	addiu		t4, t4, $1700		# 0000f530:258c1700	t4=$80161700
		//	addiu		t5, t5, $5700		# 0000f534:25ad5700	t5=$80165700
		//	addiu		t6, t6, $0b00		# 0000f538:25ce0b00	t6=$80160b00
		//	addiu		t7, zero, $0c00		# 0000f53c:240f0c00	t7=$00000c00
		//	addiu		t8, zero, $0063		# 0000f540:24180063	t8=$00000063
		//	addiu		t9, t9, $a908		# 0000f544:2739a908	t9=$8006a908
		//	lui		a0, $8007		# 0000f548:3c048007	a0=$80070000
		//	addiu		t0, a1, $0068		# 0000f54c:24a80068	
		//	addiu		a0, a0, $80a0		# 0000f550:248480a0	a0=$800680a0
		//	sw		v1, $0018(a1)		# 0000f554:aca30018	
		//	sw		t2, $0030(a1)		# 0000f558:acaa0030	
		//	sw		t3, $0034(a1)		# 0000f55c:acab0034	
		//	sw		t4, $0038(a1)		# 0000f560:acac0038	
		//	sw		t5, $003c(a1)		# 0000f564:acad003c	
		//	sw		t6, $0048(a1)		# 0000f568:acae0048	
		//	sw		t7, $004c(a1)		# 0000f56c:acaf004c	
		//	sw		zero, $0000(a1)		# 0000f570:aca00000	
		//	sw		t8, $0008(a1)		# 0000f574:acb80008	
		//	sw		t9, $0050(a1)		# 0000f578:acb90050	
		//	sw		t0, $0054(a1)		# 0000f57c:aca80054	
		//	jal		$0001b860		# 0000f580:0c006e18	v FNC_0001b860
		//	sw		t1, $000c(a1)		# 0000f584:aca9000c	
		fnc0001b860();
		//	lw		a1, $0018(sp)		# 0000f588:8fa50018	
		//	or		a0, v0, zero		# 0000f58c:00402025	
		//	jal		$0001c3d0		# 0000f590:0c0070f4	v FNC_0001c3d0
		//	addiu		a2, zero, $0001		# 0000f594:24060001	a2=$00000001
		osSendMesg();
		//	lw		ra, $0014(sp)		# 0000f598:8fbf0014	
		//	addiu		sp, sp, $0018		# 0000f59c:27bd0018	
		//	jr		ra			# 0000f5a0:03e00008	
		//	nop					# 0000f5a4:00000000	
	}

	// RAM GREECE
	static void fnc0000f5a8() {
		//osWritebackDCacheAll();
		//osPiStartDma();
		//osRecvMesg();
	}

	// RAM GREECE
	static void fnc0000f618()
	{
		//	addiu		sp, sp, $ffe8		# 0000f618:27bdffe8	
		//	sw		ra, $0014(sp)		# 0000f61c:afbf0014	
		//	jal		$0000a160		# 0000f620:0c002858	^ FNC_0000a160
		//	nop					# 0000f624:00000000	
		fnc0000a160();
		//	jal		$0001f310		# 0000f628:0c007cc4	v FNC_0001f310
		//	addiu		a0, zero, $0002		# 0000f62c:24040002	a0=$00000002
		osViSetSpecialFeatures(OS.ViSpecialFeature.OS_VI_GAMMA_OFF);
		//	jal		$0001f310		# 0000f630:0c007cc4	v FNC_0001f310
		//	addiu		a0, zero, $0040		# 0000f634:24040040	a0=$00000040
		osViSetSpecialFeatures(OS.ViSpecialFeature.OS_VI_DITHER_FILTER_ON);
		//	lw		ra, $0014(sp)		# 0000f638:8fbf0014	
		//	addiu		sp, sp, $0018		# 0000f63c:27bd0018	
		//	jr		ra			# 0000f640:03e00008	
		//	nop					# 0000f644:00000000	
	}

	// RAM 0000f648
	static void setVideoInterfaceXSize(int videoWidthInPixels)
	{
		//	mtc1		a0, $f4			# 0000f648:44842000	
		//	lui		at, $8007		# 0000f64c:3c018007	at=$80070000
		//	sw		a0, $8084(at)		# 0000f650:ac248084	[80068084]
		videoRenderWidthInPixels = videoWidthInPixels;
		//	cvt.s.w		$f6, $f4		# 0000f654:468021a0	
		//	lui		at, $43a0		# 0000f658:3c0143a0	at=$43a00000
		//	mtc1		at, $f8			# 0000f65c:44814000	
		//	lui		at, $8007		# 0000f660:3c018007	at=$80070000
		//	addiu		t6, zero, $0002		# 0000f664:240e0002	t6=$00000002
		//	div.s		$f10, $f6, $f8		# 0000f668:46083283	
		//	swc1		$f10, $808c(at)		# 0000f66c:e42a808c	[8006808c]
		fractionOfFramebufferWidthRendered = cast(float)videoWidthInPixels / 320f;
		//	lui		at, $8007		# 0000f670:3c018007	at=$80070000
		//	jr		ra			# 0000f674:03e00008	
		//	sw		t6, $809c(at)		# 0000f678:ac2e809c	[8006809c]
		x8006809c = 2;
	}

	// RAM 0000f67c
	static void setVideoInterfaceYSize(int videoHeightInPixels) {
	}

	// RAM GREECE
	/// Error handler ?
	/// Writes initial framebuffer locations too
	static void fnc0000f6b0()
	{
		//__0000f6b0:					# 
		//	addiu		sp, sp, $ff60		# 0000f6b0:27bdff60	
		//	lui		v0, $8000		# 0000f6b4:3c028000	v0=$80000000
		//	lw		v0, $0300(v0)		# 0000f6b8:8c420300	v0=$80000300
		//	sw		s5, $0034(sp)		# 0000f6bc:afb50034	
		//	sw		s4, $0030(sp)		# 0000f6c0:afb40030	
		//	sw		s0, $0020(sp)		# 0000f6c4:afb00020	
		//	sw		ra, $0044(sp)		# 0000f6c8:afbf0044	
		//	sw		fp, $0040(sp)		# 0000f6cc:afbe0040	
		//	sw		s7, $003c(sp)		# 0000f6d0:afb7003c	
		//	sw		s6, $0038(sp)		# 0000f6d4:afb60038	
		//	sw		s3, $002c(sp)		# 0000f6d8:afb3002c	
		//	sw		s2, $0028(sp)		# 0000f6dc:afb20028	
		//	sw		s1, $0024(sp)		# 0000f6e0:afb10024	
		//	sw		a0, $00a0(sp)		# 0000f6e4:afa400a0	
		//	sw		zero, $007c(sp)		# 0000f6e8:afa0007c	
		//	or		s4, zero, zero		# 0000f6ec:0000a025	
		int s4 = 0;
		//	or		s0, zero, zero		# 0000f6f0:00008025	
		//	bne		v0, zero, $0000f72c	# 0000f6f4:1440000d	v __0000f72c
		//	or		s5, zero, zero		# 0000f6f8:0000a825	
		if (x80000300 == 0)
		{
			//	lui		s1, $8007		# 0000f6fc:3c118007	s1=$80070000
			//	addiu		s1, s1, $80a0		# 0000f700:263180a0	s1=$800680a0
			//	lui		a1, $8007		# 0000f704:3c058007	a1=$80070000
			//	addiu		t6, zero, $0001		# 0000f708:240e0001	t6=$00000001
			//	sw		t6, $0010(sp)		# 0000f70c:afae0010	
			//	addiu		a1, a1, $a330		# 0000f710:24a5a330	a1=$8006a330
			//	or		a0, s1, zero		# 0000f714:02202025	a0=$800680a0
			//	addiu		a2, zero, $000c		# 0000f718:2406000c	a2=$0000000c
			//	jal		$0001b940		# 0000f71c:0c006e50	v FNC_0001b940
			//	addiu		a3, zero, $0010		# 0000f720:24070010	a3=$00000010
			fnc0001b940(0x800680a0, 0x8006a330, 0xc, 0x10);
			//	beq		zero, zero, $0000f78c	# 0000f724:10000019	v __0000f78c
			//	nop					# 0000f728:00000000	
		}
		else
		{
			//__0000f72c:					# 
			//	addiu		at, zero, $0002		# 0000f72c:24010002	at=$00000002
			//	bne		v0, at, $0000f768	# 0000f730:1441000d	v __0000f768
			//	lui		s1, $8007		# 0000f734:3c118007	s1=$80070000
			if (x80000300 == 2)
			{
				//	lui		s1, $8007		# 0000f738:3c118007	s1=$80070000
				//	addiu		s1, s1, $80a0		# 0000f73c:263180a0	s1=$800680a0
				//	lui		a1, $8007		# 0000f740:3c058007	a1=$80070000
				//	addiu		t7, zero, $0001		# 0000f744:240f0001	t7=$00000001
				//	sw		t7, $0010(sp)		# 0000f748:afaf0010	
				//	addiu		a1, a1, $a330		# 0000f74c:24a5a330	a1=$8006a330
				//	or		a0, s1, zero		# 0000f750:02202025	a0=$800680a0
				//	addiu		a2, zero, $000c		# 0000f754:2406000c	a2=$0000000c
				//	jal		$0001b940		# 0000f758:0c006e50	v FNC_0001b940
				//	addiu		a3, zero, $001e		# 0000f75c:2407001e	a3=$0000001e
				fnc0001b940(0x800680a0, 0x8006a330, 0xc, 0x1e);
				//	beq		zero, zero, $0000f78c	# 0000f760:1000000a	v __0000f78c
				//	nop					# 0000f764:00000000	
			}
			else
			{
				//__0000f768:					# 
				//	addiu		s1, s1, $80a0		# 0000f768:263180a0	s1=$80060140
				//	lui		a1, $8007		# 0000f76c:3c058007	a1=$80070000
				//	addiu		t8, zero, $0001		# 0000f770:24180001	t8=$00000001
				//	sw		t8, $0010(sp)		# 0000f774:afb80010	
				//	addiu		a1, a1, $a330		# 0000f778:24a5a330	a1=$8006a330
				//	or		a0, s1, zero		# 0000f77c:02202025	a0=$80060140
				//	addiu		a2, zero, $000c		# 0000f780:2406000c	a2=$0000000c
				//	jal		$0001b940		# 0000f784:0c006e50	v FNC_0001b940
				//	addiu		a3, zero, $0002		# 0000f788:24070002	a3=$00000002
				fnc0001b940(0x800680a0, 0x8006a330, 0xc, 2); /// NSTC calls this, using a3=0x10 shows a black border at top
			}
		}
		//__0000f78c:					# 
		//	lui		t1, $8007		# 0000f78c:3c098007	t1=$80070000
		//	addiu		t1, t1, $a940		# 0000f790:2529a940	t1=$8006a940
		//	lui		v1, $8026		# 0000f794:3c038026	v1=$80260000
		//	lui		a3, $8029		# 0000f798:3c078029	a3=$80290000
		//	lui		t0, $8006		# 0000f79c:3c088006	t0=$80060000
		//	addiu		t0, t0, $bb48		# 0000f7a0:2508bb48	t0=$8005bb48
		//	addiu		a3, a3, $c880		# 0000f7a4:24e7c880	a3=$8028c880
		//	addiu		v1, v1, $7080		# 0000f7a8:24637080	v1=$80267080
		//	addiu		v0, zero, $0002		# 0000f7ac:24020002	v0=$00000002
		//	sh		v0, $0068(t1)		# 0000f7b0:a5220068	[8006a9a8]
		x8006A9A8 = 2;
		//	sh		v0, $00f8(t1)		# 0000f7b4:a52200f8	[8006aa38]
		x8006AA38 = 2;
		//	sw		v1, $0088(t1)		# 0000f7b8:ad230088	[8006a9c8]
		x8006A9C8 = 0x80267080;
		//	sw		a3, $0118(t1)		# 0000f7bc:ad270118	[8006aa58]
		x8006AA58 = 0x8028c880;
		//	sw		v1, $0000(t0)		# 0000f7c0:ad030000	[8005bb48]
		x8005bb48 = 0x80267080;
		//	sw		a3, $0004(t0)		# 0000f7c4:ad070004	[8005bb4c]
		x8005bb4c = 0x8028c880;
		//	lui		at, $8003		# 0000f7c8:3c018003	at=$80030000
		//	lui		a2, $8007		# 0000f7cc:3c068007	a2=$80070000
		//	sw		zero, $1b84(at)		# 0000f7d0:ac201b84	[80031b84]
		x80031b84 = 0;
		//	addiu		a2, a2, $a908		# 0000f7d4:24c6a908	a2=$8006a908
		//	or		a0, s1, zero		# 0000f7d8:02202025	a0=$80060140
		//	jal		$0001b8f0		# 0000f7dc:0c006e3c	v FNC_0001b8f0
		//	addiu		a1, sp, $0080		# 0000f7e0:27a50080	
		fnc0001b8f0(0x800680a0, 0x80 /* + sp*/, 0x8006a908);
		//	jal		$00012a74		# 0000f7e4:0c004a9d	v FNC_00012a74
		//	nop					# 0000f7e8:00000000	
		fnc00012a74();
		//	lui		a0, $8007		# 0000f7ec:3c048007	a0=$80070000
		//	lui		a1, $8007		# 0000f7f0:3c058007	a1=$80070000
		//	lw		a1, $8038(a1)		# 0000f7f4:8ca58038	a1=$80068038
		//	addiu		a0, a0, $a8d0		# 0000f7f8:2484a8d0	a0=$8006a8d0
		//	jal		$0001c3d0		# 0000f7fc:0c0070f4	v FNC_0001c3d0
		//	addiu		a2, zero, $0001		# 0000f800:24060001	a2=$00000001
		osSendMesg(0x8006a8d0, x80068038, 1);
		//	lui		at, $3f80		# 0000f804:3c013f80	at=$3f800000
		//	mtc1		at, $f0			# 0000f808:44810000	
		//	lui		at, $8007		# 0000f80c:3c018007	at=$80070000
		//	addiu		t2, zero, $0000		# 0000f810:240a0000	
		//	addiu		t3, zero, $0cec		# 0000f814:240b0cec	t3=$00000cec
		//	sw		t3, $832c(at)		# 0000f818:ac2b832c	[8006832c]
		x8006832c = 0xcec;
		//	sw		t2, $8328(at)		# 0000f81c:ac2a8328	[80068328]
		x80068328 = 0;
		//	lui		at, $8006		# 0000f820:3c018006	at=$80060000
		//	addiu		t4, zero, $0000		# 0000f824:240c0000	
		//	addiu		t5, zero, $0cec		# 0000f828:240d0cec	t5=$00000cec
		//	sw		t5, $bb54(at)		# 0000f82c:ac2dbb54	[8005bb54]
		x8005bb54 = 0xcec;
		//	sw		t4, $bb50(at)		# 0000f830:ac2cbb50	[8005bb50]
		x8005bb50 = 0;
		//	lui		at, $8006		# 0000f834:3c018006	at=$80060000
		//	addiu		t6, zero, $0000		# 0000f838:240e0000	
		//	addiu		t7, zero, $0cec		# 0000f83c:240f0cec	t7=$00000cec
		//	sw		t7, $bf5c(at)		# 0000f840:ac2fbf5c	[8005bf5c]
		x8005bf5c = 0xcec;
		//	sw		t6, $bf58(at)		# 0000f844:ac2ebf58	[8005bf58]
		x8005bf58 = 0;
		//	lui		at, $8006		# 0000f848:3c018006	at=$80060000
		//	addiu		t8, zero, $0000		# 0000f84c:24180000	
		//	addiu		t9, zero, $0cec		# 0000f850:24190cec	t9=$00000cec
		//	sw		t9, $c764(at)		# 0000f854:ac39c764	[8005c764]
		x8005c764 = 0xcec;
		//	sw		t8, $c760(at)		# 0000f858:ac38c760	[8005c760]
		x8005c760 = 0;
		//	lui		at, $8006		# 0000f85c:3c018006	at=$80060000
		//	sw		t2, $cf68(at)		# 0000f860:ac2acf68	[8005cf68]
		x8005cf68 = 0;
		//	sw		t3, $cf6c(at)		# 0000f864:ac2bcf6c	[8005cf6c]
		x8005cf6c = 0xcec;
		//	lui		at, $8006		# 0000f868:3c018006	at=$80060000
		//	sw		t4, $4f70(at)		# 0000f86c:ac2c4f70	[80064f70]
		x80064f70 = 0;
		//	sw		t5, $4f74(at)		# 0000f870:ac2d4f74	[80064f74]
		x80064f74 = 0xcec;
		//	lui		at, $8006		# 0000f874:3c018006	at=$80060000
		//	sw		t6, $5f78(at)		# 0000f878:ac2e5f78	[80065f78]
		x80065f78 = 0;
		//	sw		t7, $5f7c(at)		# 0000f87c:ac2f5f7c	[80065f7c]
		x80065f7c = 0xcec;
		//	lui		at, $8006		# 0000f880:3c018006	at=$80060000
		//	sw		t8, $6780(at)		# 0000f884:ac386780	[80066780]
		x80066780 = 0;
		//	sw		t9, $6784(at)		# 0000f888:ac396784	[80066784]
		x80066784 = 0xcec;
		//	lui		s1, $8007		# 0000f88c:3c118007	s1=$80070000
		//	lui		s3, $8007		# 0000f890:3c138007	s3=$80070000
		//	lui		s6, $8007		# 0000f894:3c168007	s6=$80070000
		//	addiu		s6, s6, $8080		# 0000f898:26d68080	s6=$80068080
		//	addiu		s3, s3, $807c		# 0000f89c:2673807c	s3=$8006807c
		//	addiu		s1, s1, $809c		# 0000f8a0:2631809c	s1=$8006809c
		//	sw		zero, $0000(s6)		# 0000f8a4:aec00000	[80068080]
		x80068080 = 0;
		//	sw		zero, $0000(s3)		# 0000f8a8:ae600000	[8006807c]
		x8006807c = 0;
		//	sw		zero, $0000(s1)		# 0000f8ac:ae200000	[8006809c]
		x8006809c = 0;
		//	lui		at, $8007		# 0000f8b0:3c018007	at=$80070000
		//	swc1		$f0, $8094(at)		# 0000f8b4:e4208094	[80068094]
		x80068094 = 1f;
		//	lui		at, $8007		# 0000f8b8:3c018007	at=$80070000
		//	addiu		a0, zero, $0140		# 0000f8bc:24040140	a0=$00000140
		//	jal		$0000f648		# 0000f8c0:0c003d92	^ FNC_0000f648
		//	swc1		$f0, $8098(at)		# 0000f8c4:e4208098	[80068098]
		setVideoInterfaceXSize(320);
		//	jal		$0000f67c		# 0000f8c8:0c003d9f	^ FNC_0000f67c
		//	addiu		a0, zero, $00f0		# 0000f8cc:240400f0	a0=$000000f0
		setVideoInterfaceYSize(240);
		//	addiu		t2, zero, $0400		# 0000f8d0:240a0400	t2=$00000400
		//	lui		at, $8003		# 0000f8d4:3c018003	at=$80030000
		//	sw		t2, $5b5c(at)		# 0000f8d8:ac2a5b5c	[80035b5c]
		//	jal		$0001f4d0		# 0000f8dc:0c007d34	v FNC_0001f4d0
		//	addiu		a0, zero, $0001		# 0000f8e0:24040001	a0=$00000001
		osViBlack(true);
		//	addiu		fp, zero, $0004		# 0000f8e4:241e0004	fp=$00000004
		//	sw		fp, $0000(s6)		# 0000f8e8:aede0000	[80068080]
		x80068080 = 4;
		//	addiu		s7, zero, $0001		# 0000f8ec:24170001	s7=$00000001
		//	lw		s2, $0068(sp)		# 0000f8f0:8fb20068	
		do
		{
			do
			{
				//__0000f8f4:					# 
				//	lui		t4, $8007		# 0000f8f4:3c0c8007	t4=$80070000
				//	lw		t4, $8328(t4)		# 0000f8f8:8d8c8328	t4=$80068328
				//	lui		t5, $8007		# 0000f8fc:3c0d8007	t5=$80070000
				//	lw		t5, $832c(t5)		# 0000f900:8dad832c	t5=$8006832c
				//	bne		t4, zero, $0000f910	# 0000f904:15800002	v __0000f910
				//	addiu		at, zero, $0cec		# 0000f908:24010cec	at=$00000cec
				//	beq		t5, at, $0000f91c	# 0000f90c:11a10003	v __0000f91c
				if (x80068328 != 0 || x8006832c != 0xcec)
				{
					//__0000f910:					# 
					//	lui		a0, $8003		# 0000f910:3c048003	a0=$80030000
					//	jal		$0001cc6c		# 0000f914:0c00731b	v FNC_0001cc6c
					//	addiu		a0, a0, $7660		# 0000f918:24847660	a0="ehcSeludatS O kcfrev\nwol"
					fnc0001cc6c("Schedule Stack Overflow\n");
				}
				//__0000f91c:					# 
				//	lui		t6, $8006		# 0000f91c:3c0e8006	t6=$80060000
				//	lw		t6, $bb50(t6)		# 0000f920:8dcebb50	t6=$8005bb50
				//	lui		t7, $8006		# 0000f924:3c0f8006	t7=$80060000
				//	lw		t7, $bb54(t7)		# 0000f928:8defbb54	t7=$8005bb54
				//	bne		t6, zero, $0000f938	# 0000f92c:15c00002	v __0000f938
				//	addiu		at, zero, $0cec		# 0000f930:24010cec	at=$00000cec
				//	beq		t7, at, $0000f944	# 0000f934:11e10003	v __0000f944
				if (x8005bb50 != 0 || x8005bb54 != 0xcec)
				{
					//__0000f938:					# 
					//	lui		a0, $8003		# 0000f938:3c048003	a0=$80030000
					//	jal		$0001cc6c		# 0000f93c:0c00731b	v FNC_0001cc6c
					//	addiu		a0, a0, $767c		# 0000f940:2484767c	a0="tooBatS O kcfrev\nwol"
					fnc0001cc6c("Boot Stack Overflow\n");
				}
				//__0000f944:					# 
				//	lui		t8, $8006		# 0000f944:3c188006	t8=$80060000
				//	lw		t8, $bf58(t8)		# 0000f948:8f18bf58	t8=$8005bf58
				//	lui		t9, $8006		# 0000f94c:3c198006	t9=$80060000
				//	lw		t9, $bf5c(t9)		# 0000f950:8f39bf5c	t9=$8005bf5c
				//	bne		t8, zero, $0000f960	# 0000f954:17000002	v __0000f960
				//	addiu		at, zero, $0cec		# 0000f958:24010cec	at=$00000cec
				//	beq		t9, at, $0000f96c	# 0000f95c:13210003	v __0000f96c
				if (x8005bf58 != 0 || x8005bf5c != 0xcec)
				{
					//__0000f960:					# 
					//	lui		a0, $8003		# 0000f960:3c048003	a0=$80030000
					//	jal		$0001cc6c		# 0000f964:0c00731b	v FNC_0001cc6c
					//	addiu		a0, a0, $7694		# 0000f968:24847694	a0="eldIatS O kcfrev\nwol"
					fnc0001cc6c("Idle Stack Overflow\n");
				}
				//__0000f96c:					# 
				//	lui		t2, $8006		# 0000f96c:3c0a8006	t2=$80060000
				//	lw		t2, $c760(t2)		# 0000f970:8d4ac760	t2=$8005c760
				//	lui		t3, $8006		# 0000f974:3c0b8006	t3=$80060000
				//	lw		t3, $c764(t3)		# 0000f978:8d6bc764	t3=$8005c764
				//	bne		t2, zero, $0000f988	# 0000f97c:15400002	v __0000f988
				//	addiu		at, zero, $0cec		# 0000f980:24010cec	at=$00000cec
				//	beq		t3, at, $0000f994	# 0000f984:11610003	v __0000f994
				if (x8005c760 != 0 || x8005c764 != 0xcec)
				{
					//__0000f988:					# 
					//	lui		a0, $8003		# 0000f988:3c048003	a0=$80030000
					//	jal		$0001cc6c		# 0000f98c:0c00731b	v FNC_0001cc6c
					//	addiu		a0, a0, $76ac		# 0000f990:248476ac	a0=$800376ac
					fnc0001cc6c("IO Stack Overflow\n");
				}
				//__0000f994:					# 
				//	lui		t4, $8006		# 0000f994:3c0c8006	t4=$80060000
				//	lw		t4, $cf68(t4)		# 0000f998:8d8ccf68	t4=$8005cf68
				//	lui		t5, $8006		# 0000f99c:3c0d8006	t5=$80060000
				//	lw		t5, $cf6c(t5)		# 0000f9a0:8dadcf6c	t5=$8005cf6c
				//	bne		t4, zero, $0000f9b0	# 0000f9a4:15800002	v __0000f9b0
				//	addiu		at, zero, $0cec		# 0000f9a8:24010cec	at=$00000cec
				//	beq		t5, at, $0000f9bc	# 0000f9ac:11a10003	v __0000f9bc
				if (x8005cf68 != 0 || x8005cf6c != 0xcec)
				{
					//__0000f9b0:					# 
					//	lui		a0, $8003		# 0000f9b0:3c048003	a0=$80030000
					//	jal		$0001cc6c		# 0000f9b4:0c00731b	v FNC_0001cc6c
					//	addiu		a0, a0, $76c0		# 0000f9b8:248476c0	a0="niaMatS O kcfrev\nwol"
					fnc0001cc6c("Main Stack Overflow\n");
				}
				//__0000f9bc:					# 
				//	lui		t6, $8006		# 0000f9bc:3c0e8006	t6=$80060000
				//	lw		t6, $4f70(t6)		# 0000f9c0:8dce4f70	t6=$80064f70
				//	lui		t7, $8006		# 0000f9c4:3c0f8006	t7=$80060000
				//	lw		t7, $4f74(t7)		# 0000f9c8:8def4f74	t7=$80064f74
				//	bne		t6, zero, $0000f9d8	# 0000f9cc:15c00002	v __0000f9d8
				//	addiu		at, zero, $0cec		# 0000f9d0:24010cec	at=$00000cec
				//	beq		t7, at, $0000f9e4	# 0000f9d4:11e10003	v __0000f9e4
				if (x8005cf70 != 0 || x8005cf74 != 0xcec)
				{
					//__0000f9d8:					# 
					//	lui		a0, $8003		# 0000f9d8:3c048003	a0=$80030000
					//	jal		$0001cc6c		# 0000f9dc:0c00731b	v FNC_0001cc6c
					//	addiu		a0, a0, $76d8		# 0000f9e0:248476d8	a0="nomRatS O kcfrev\nwol"
					fnc0001cc6c("Rmon Stack Overflow\n");
				}
				//__0000f9e4:					# 
				//	lui		t8, $8006		# 0000f9e4:3c188006	t8=$80060000
				//	lw		t8, $5f78(t8)		# 0000f9e8:8f185f78	t8=$80065f78
				//	lui		t9, $8006		# 0000f9ec:3c198006	t9=$80060000
				//	lw		t9, $5f7c(t9)		# 0000f9f0:8f395f7c	t9=$80065f7c
				//	bne		t8, zero, $0000fa00	# 0000f9f4:17000002	v __0000fa00
				//	addiu		at, zero, $0cec		# 0000f9f8:24010cec	at=$00000cec
				//	beq		t9, at, $0000fa0c	# 0000f9fc:13210003	v __0000fa0c
				if (x8005cf78 != 0 || x8005cf7c != 0xcec)
				{
					//__0000fa00:					# 
					//	lui		a0, $8003		# 0000fa00:3c048003	a0=$80030000
					//	jal		$0001cc6c		# 0000fa04:0c00731b	v FNC_0001cc6c
					//	addiu		a0, a0, $76f0		# 0000fa08:248476f0	a0=$800376f0
					fnc0001cc6c("Controller Stack Overflow\n");
				}
				//__0000fa0c:					# 
				//	lui		t2, $8006		# 0000fa0c:3c0a8006	t2=$80060000
				//	lw		t2, $6780(t2)		# 0000fa10:8d4a6780	t2=$80066780
				//	lui		t3, $8006		# 0000fa14:3c0b8006	t3=$80060000
				//	lw		t3, $6784(t3)		# 0000fa18:8d6b6784	t3=$80066784
				//	bne		t2, zero, $0000fa28	# 0000fa1c:15400002	v __0000fa28
				//	addiu		at, zero, $0cec		# 0000fa20:24010cec	at=$00000cec
				//	beq		t3, at, $0000fa34	# 0000fa24:11610003	v __0000fa34
				if (x8005cf80 != 0 || x8005cf84 != 0xcec)
				{
					//__0000fa28:					# 
					//	lui		a0, $8003		# 0000fa28:3c048003	a0=$80030000
					//	jal		$0001cc6c		# 0000fa2c:0c00731b	v FNC_0001cc6c
					//	addiu		a0, a0, $770c		# 0000fa30:2484770c	a0=$8003770c
					fnc0001cc6c("Load Level Stack Overflow\n");
				}
				//__0000fa34:					# 
				//	lui		a0, $8007		# 0000fa34:3c048007	a0=$80070000
				//	addiu		a0, a0, $a908		# 0000fa38:2484a908	a0=$8006a908
				//	addiu		a1, sp, $0070		# 0000fa3c:27a50070	
				//	jal		$0001ba70		# 0000fa40:0c006e9c	v FNC_0001ba70
				//	or		a2, s7, zero		# 0000fa44:02e03025	
				osRecvMesg(0x8006a908, 0x70 /* + sp */, 1); // Is the stack thing an 'out' param?
				//	lw		t4, $0070(sp)		# 0000fa48:8fac0070	
				//	lui		v0, $8003		# 0000fa4c:3c028003	v0=$80030000
				//	addiu		v0, v0, $13d4		# 0000fa50:244213d4	v0=$800313d4
				//	lh		v1, $0000(t4)		# 0000fa54:85830000	
				//	addiu		at, zero, $0002		# 0000fa58:24010002	at=$00000002
				//	beql		v1, s7, $0000fa80	# 0000fa5c:50770008	v __0000fa80
				//	lw		t5, $0000(v0)		# 0000fa60:8c4d0000	t5=$800313d4
				if (v1 != 1)
				{
					//	beq		v1, at, $0000fd04	# 0000fa64:106100a7	v __0000fd04
					//	nop					# 0000fa68:00000000	
					if (v1 == 2)
					{
						break;
					}
					//	beq		v1, fp, $0000fd74	# 0000fa6c:107e00c1	v __0000fd74
					//	nop					# 0000fa70:00000000	

					/// This has to be a goto unless I can rearrange the logic somehow

					//	beq		zero, zero, $0000f8f4	# 0000fa74:1000ff9f	^ __0000f8f4
					//	nop					# 0000fa78:00000000	
					continue;
					//	lw		t5, $0000(v0)		# 0000fa7c:8c4d0000	t5=$800313d4
				}
				//__0000fa80:					# 
				//	addiu		s5, s5, $0001		# 0000fa80:26b50001	
				//	sll		t7, s5, 16		# 0000fa84:00157c00	
				//	slti		at, s0, $0002		# 0000fa88:2a010002	
				//	addiu		t6, t5, $0001		# 0000fa8c:25ae0001	t6=$00001086
				//	sw		t6, $0000(v0)		# 0000fa90:ac4e0000	[800313d4]
				//	bne		at, zero, $0000faa0	# 0000fa94:14200002	v __0000faa0
				//	sra		s5, t7, 16		# 0000fa98:000fac03	
				//	addiu		s2, s2, $0001		# 0000fa9c:26520001	
				//__0000faa0:					# 
				//	slti		at, s2, $000b		# 0000faa0:2a41000b	
				//	bne		at, zero, $0000fab8	# 0000faa4:14200004	v __0000fab8
				//	lui		a0, $8003		# 0000faa8:3c048003	a0=$80030000
				//	addiu		a0, a0, $7728		# 0000faac:24847728	a0=$80037728
				//	jal		$0001cc6c		# 0000fab0:0c00731b	v FNC_0001cc6c
				//	or		s2, zero, zero		# 0000fab4:00009025	
				fnc0001cc6c("RCP hang detected\n");
				//__0000fab8:					# 
				//	jal		$00013818		# 0000fab8:0c004e06	v FNC_00013818
				//	nop					# 0000fabc:00000000	
				fnc00013818();
				//	jal		$00004c34		# 0000fac0:0c00130d	^ FNC_00004c34
				//	nop					# 0000fac4:00000000	
				fnc00004c34();
				//	lui		v0, $8005		# 0000fac8:3c028005	v0=$80050000
				//	lbu		v0, $2aca(v0)		# 0000facc:90422aca	v0=$80052aca
				//	addiu		at, zero, $0002		# 0000fad0:24010002	at=$00000002
				//	lui		t3, $8005		# 0000fad4:3c0b8005	t3=$80050000
				//	beq		v0, zero, $0000faf8	# 0000fad8:10400007	v __0000faf8
				//	nop					# 0000fadc:00000000	
				//	beq		v0, at, $0000faf8	# 0000fae0:10410005	v __0000faf8
				//	addiu		at, zero, $0005		# 0000fae4:24010005	at=$00000005
				//	beq		v0, at, $0000faf8	# 0000fae8:10410003	v __0000faf8
				//	nop					# 0000faec:00000000	
				//	bne		fp, v0, $0000fb1c	# 0000faf0:17c2000a	v __0000fb1c
				//	sll		v1, s7, 16		# 0000faf4:00171c00	
				//__0000faf8:					# 
				//	lui		v0, $8005		# 0000faf8:3c028005	v0=$80050000
				//	lw		v0, $2adc(v0)		# 0000fafc:8c422adc	v0=$80052adc
				//	addiu		at, zero, $0006		# 0000fb00:24010006	at=$00000006
				//	bne		v0, at, $0000fb14	# 0000fb04:14410003	v __0000fb14
				//	nop					# 0000fb08:00000000	
				//	beq		zero, zero, $0000fb2c	# 0000fb0c:10000007	v __0000fb2c
				//	addiu		v1, zero, $0002		# 0000fb10:24030002	v1=$00000002
				//__0000fb14:					# 
				//	beq		zero, zero, $0000fb2c	# 0000fb14:10000005	v __0000fb2c
				//	addiu		v1, zero, $0003		# 0000fb18:24030003	v1=$00000003
				//__0000fb1c:					# 
				//	sra		t9, v1, 16		# 0000fb1c:0003cc03	
				//	lui		v0, $8005		# 0000fb20:3c028005	v0=$80050000
				//	lw		v0, $2adc(v0)		# 0000fb24:8c422adc	v0=$80052adc
				//	or		v1, t9, zero		# 0000fb28:03201825	
				//__0000fb2c:					# 
				//	beq		v0, zero, $0000fb54	# 0000fb2c:10400009	v __0000fb54
				//	addiu		at, zero, $000e		# 0000fb30:2401000e	at=$0000000e
				//	beq		v0, at, $0000fb54	# 0000fb34:10410007	v __0000fb54
				//	addiu		at, zero, $0007		# 0000fb38:24010007	at=$00000007
				//	beql		v0, at, $0000fb58	# 0000fb3c:50410006	v __0000fb58
				//	sll		v1, s7, 16		# 0000fb40:00171c00	
				//	beq		fp, v0, $0000fb54	# 0000fb44:13c20003	v __0000fb54
				//	addiu		at, zero, $0010		# 0000fb48:24010010	at=$00000010
				//	bne		v0, at, $0000fb60	# 0000fb4c:14410004	v __0000fb60
				//	nop					# 0000fb50:00000000	
				//__0000fb54:					# 
				//	sll		v1, s7, 16		# 0000fb54:00171c00	
				//__0000fb58:					# 
				//	sra		t2, v1, 16		# 0000fb58:00035403	
				//	or		v1, t2, zero		# 0000fb5c:01401825	
				//__0000fb60:					# 
				//	lbu		t3, $2acc(t3)		# 0000fb60:916b2acc	t3=$80052acc
				//	slti		at, s0, $0002		# 0000fb64:2a010002	
				//	beq		t3, zero, $0000fb74	# 0000fb68:11600002	v __0000fb74
				//	nop					# 0000fb6c:00000000	
				//	addiu		v1, zero, $0002		# 0000fb70:24030002	v1=$00000002
				//__0000fb74:					# 
				//	beq		at, zero, $0000f8f4	# 0000fb74:1020ff5f	^ __0000f8f4
				//	nop					# 0000fb78:00000000	
				//	slt		at, s5, v1		# 0000fb7c:02a3082a	
				//	bne		at, zero, $0000f8f4	# 0000fb80:1420ff5c	^ __0000f8f4
				//	nop					# 0000fb84:00000000	
				//	jal		$0000f368		# 0000fb88:0c003cda	^ FNC_0000f368
				//	or		s5, zero, zero		# 0000fb8c:0000a825	
				fnc0000f368();
				//	jal		$00003064		# 0000fb90:0c000c19	^ FNC_00003064
				//	nop					# 0000fb94:00000000	
				fnc00003064();
				//	jal		$0001f540		# 0000fb98:0c007d50	v FNC_0001f540
				//	nop					# 0000fb9c:00000000	
				uint startFrameTicks = osGetCount();
				//	lw		v1, $0000(s6)		# 0000fba0:8ec30000	
				//	sw		v0, $0058(sp)		# 0000fba4:afa20058	
				//	beq		v1, zero, $0000fbb8	# 0000fba8:10600003	v __0000fbb8
				//	addiu		t4, v1, $ffff		# 0000fbac:246cffff	
				if (x80068080 == 0)
				{
					//	sw		s7, $0000(s3)		# 0000fbb0:ae770000	
					x8006807c = 1;
					//	sw		t4, $0000(s6)		# 0000fbb4:aecc0000	
					x80068080--;
				}
				//__0000fbb8:					# 
				//	lw		t5, $0000(s3)		# 0000fbb8:8e6d0000	
				//	beq		t5, zero, $0000fc34	# 0000fbbc:11a0001d	v __0000fc34
				//	nop					# 0000fbc0:00000000	
				if (x8006807c != 0)
				{
					//	lw		t6, $0000(s6)		# 0000fbc4:8ece0000	
					//	lui		a0, $8003		# 0000fbc8:3c048003	a0=$80030000
					//	bne		t6, zero, $0000fc08	# 0000fbcc:15c0000e	v __0000fc08
					//	nop					# 0000fbd0:00000000	
					if (x80068080 == 0)
					{
						//	lui		a0, $8003		# 0000fbd4:3c048003	a0=$80030000
						//	jal		$0001cc6c		# 0000fbd8:0c00731b	v FNC_0001cc6c
						//	addiu		a0, a0, $773c		# 0000fbdc:2484773c	a0=$8003773c
						fnc0001cc6c("black screen off\n");
						//	jal		$0001f4d0		# 0000fbe0:0c007d34	v FNC_0001f4d0
						//	or		a0, zero, zero		# 0000fbe4:00002025	
						osViBlack(false);
						//	addiu		t7, zero, $036d		# 0000fbe8:240f036d	t7=$0000036d
						//	lui		at, $8003		# 0000fbec:3c018003	at=$80030000
						//	sw		t7, $5b5c(at)		# 0000fbf0:ac2f5b5c	[80035b5c]
						x80035b5c = 0x36d;
						//__0000fbf5:					# 
						//	lui		at, $8007		# 0000fbf4:3c018007	at=$80070000
						//	jal		$0001f550		# 0000fbf8:0c007d54	v FNC_0001f550
						//	lwc1		$f12, $8090(at)		# 0000fbfc:c42c8090	[80068090]
						osViSetYScale(x80068090);
						//	beq		zero, zero, $0000fc34	# 0000fc00:1000000c	v __0000fc34
						//	sw		zero, $0000(s3)		# 0000fc04:ae600000	
						x8006807c = 0;
					}
					else
					{
						//__0000fc08:					# 
						//	jal		$0001cc6c		# 0000fc08:0c00731b	v FNC_0001cc6c
						//	addiu		a0, a0, $7750		# 0000fc0c:24847750	a0=$00007750
						fnc0001cc6c("black screen on\n");
						//	addiu		t8, zero, $0400		# 0000fc10:24180400	t8=$00000400
						//	lui		at, $8003		# 0000fc14:3c018003	at=$80030000
						//	sw		t8, $5b5c(at)		# 0000fc18:ac385b5c	[80035b5c]
						x80035b5c = 0x400;
						//	lui		at, $3f80		# 0000fc1c:3c013f80	at=$3f800000
						//	mtc1		at, $f12		# 0000fc20:44816000	
						//	jal		$0001f550		# 0000fc24:0c007d54	v FNC_0001f550
						//	nop					# 0000fc28:00000000	
						osViSetYScale(1f);
						//	jal		$0001f4d0		# 0000fc2c:0c007d34	v FNC_0001f4d0
						//	addiu		a0, zero, $0001		# 0000fc30:24040001	a0=$00000001
						osViBlack(true);
					}
				}
				//__0000fc34:					# 
				//	lui		a0, $8007		# 0000fc34:3c048007	a0=$80070000
				//	lui		a1, $8007		# 0000fc38:3c058007	a1=$80070000
				//	lw		a1, $8038(a1)		# 0000fc3c:8ca58038	a1=$80068038
				//	addiu		a0, a0, $a8d0		# 0000fc40:2484a8d0	a0=$8006a8d0
				//	jal		$0001c3d0		# 0000fc44:0c0070f4	v FNC_0001c3d0
				//	or		a2, s7, zero		# 0000fc48:02e03025	
				/// This message starts the gameplay loop
				osSendMesg(0x8006a8d0, x80068038, x8006807c);
				//	lw		v1, $0000(s1)		# 0000fc4c:8e230000	
				//	addiu		at, zero, $0002		# 0000fc50:24010002	at=$00000002
				//	lui		a0, $8007		# 0000fc54:3c048007	a0=$80070000
				//	bne		v1, at, $0000fc68	# 0000fc58:14610003	v __0000fc68
				//	addiu		a0, a0, $a8b0		# 0000fc5c:2484a8b0	a0=$8006a8b0
				if (x8006809c == 2)
				{
					//	addiu		t9, v1, $ffff		# 0000fc60:2479ffff	
					//	sw		t9, $0000(s1)		# 0000fc64:ae390000	
					x8006809c--;
				}
				//__0000fc68:					# 
				//	lui		a1, $8007		# 0000fc68:3c058007	a1=$80070000
				//	addiu		a1, a1, $8038		# 0000fc6c:24a58038	a1=$80068038
				//	jal		$0001ba70		# 0000fc70:0c006e9c	v FNC_0001ba70
				//	or		a2, s7, zero		# 0000fc74:02e03025	
				/// This message is sent at the end of the gameplay loop
				osRecvMesg(0x8006a8b0, x80068038, x8006807c);
				//	jal		$0001f540		# 0000fc78:0c007d50	v FNC_0001f540
				//	nop					# 0000fc7c:00000000	
				uint endFrameTicks = osGetCount();
				//	lw		t2, $0058(sp)		# 0000fc80:8faa0058	
				//	lui		v1, $8006		# 0000fc84:3c038006	v1=$80060000
				//	lw		v1, $bb20(v1)		# 0000fc88:8c63bb20	v1=$8005bb20
				//	lui		at, $8005		# 0000fc8c:3c018005	at=$80050000
				//	subu		t3, v0, t2		# 0000fc90:004a5823	
				//	sw		t3, $2b38(at)		# 0000fc94:ac2b2b38	[80052b38]
				ticksElapsedDuringFrame = endFrameTicks - startFrameTicks;
				//	sll		t5, s4, 3		# 0000fc98:001468c0	
				//	ori		at, zero, $e378		# 0000fc9c:3401e378	at=$0000e378
				//	addu		t5, t5, s4		# 0000fca0:01b46821	
				//	lui		t6, $8007		# 0000fca4:3c0e8007	t6=$80070000
				//	lui		t4, $b800		# 0000fca8:3c0cb800	t4=$b8000000
				//	addiu		t6, t6, $a940		# 0000fcac:25cea940	t6=$8006a940
				//	sll		t5, t5, 4		# 0000fcb0:000d6900	
				//	addu		v1, v1, at		# 0000fcb4:00611821	v1=$801dca88
				//	sw		t4, $0000(v1)		# 0000fcb8:ac6c0000	[801dca88]
				//	sw		zero, $0004(v1)		# 0000fcbc:ac600004	[801dca8c]
				//	jal		$0000f478		# 0000fcc0:0c003d1e	^ FNC_0000f478
				//	addu		a0, t5, t6		# 0000fcc4:01ae2021	
				fnc0000f478();
				//	jal		$0001f540		# 0000fcc8:0c007d50	v FNC_0001f540
				//	nop					# 0000fccc:00000000	
				uint startTicks = osGetCount();
				//	sll		t7, s4, 2		# 0000fcd0:00147880	
				//	addu		t8, sp, t7		# 0000fcd4:03afc021	
				//	lui		v1, $8003		# 0000fcd8:3c038003	v1=$80030000
				//	addiu		v1, v1, $1b84		# 0000fcdc:24631b84	v1=$80031b84
				//	sw		v0, $005c(t8)		# 0000fce0:af02005c	

				/// 5c + 0 = ticks

				//	lw		t9, $0000(v1)		# 0000fce4:8c790000	t9=$80031b84
				//	addiu		t2, zero, $0001		# 0000fce8:240a0001	t2=$00000001
				//	xori		t4, s4, $0001		# 0000fcec:3a8c0001	
				//	subu		t3, t2, t9		# 0000fcf0:01595823	
				//	sw		t3, $0000(v1)		# 0000fcf4:ac6b0000	[80031b84]
				//	or		s4, t4, zero		# 0000fcf8:0180a025	s4=$00000001
				s4 ^= 1;
				//	beq		zero, zero, $0000f8f4	# 0000fcfc:1000fefd	^ __0000f8f4
				//	addiu		s0, s0, $0001		# 0000fd00:26100001	
			}
			(while true);
			//__0000fd04:					# 
			//	jal		$0001f540		# 0000fd04:0c007d50	v FNC_0001f540
			//	or		s2, zero, zero		# 0000fd08:00009025	
			uint endTicks = osGetCount();
			//	lw		v1, $007c(sp)		# 0000fd0c:8fa3007c	
			//	lui		at, $8005		# 0000fd10:3c018005	at=$80050000
			//	addiu		s0, s0, $ffff		# 0000fd14:2610ffff	
			//	sll		t5, v1, 2		# 0000fd18:00036880	
			//	addu		t6, sp, t5		# 0000fd1c:03ad7021	
			//	lw		t6, $005c(t6)		# 0000fd20:8dce005c	
			//	xori		t8, v1, $0001		# 0000fd24:38780001	
			//	sw		t8, $007c(sp)		# 0000fd28:afb8007c	
			//	subu		t7, v0, t6		# 0000fd2c:004e7823	
			//	sw		t7, $2b3c(at)		# 0000fd30:ac2f2b3c	[80052b3c]
			x80052b3c = endTicks - t6;
			//	lw		t2, $0000(s1)		# 0000fd34:8e2a0000	
			//	bne		s7, t2, $0000f8f4	# 0000fd38:16eafeee	^ __0000f8f4
			//	nop					# 0000fd3c:00000000	
			//	lw		t9, $0000(s3)		# 0000fd40:8e790000	
			//	lui		at, $8007		# 0000fd44:3c018007	at=$80070000
			//	bne		t9, zero, $0000f8f4	# 0000fd48:1720feea	^ __0000f8f4
			//	nop					# 0000fd4c:00000000	
			//	jal		$0001f5b0		# 0000fd50:0c007d6c	v FNC_0001f5b0
			//	lwc1		$f12, $808c(at)		# 0000fd54:c42c808c	[8006808c]
			osViSetXScale(); // For gameplay
			//	lui		at, $8007		# 0000fd58:3c018007	at=$80070000
			//	jal		$0001f550		# 0000fd5c:0c007d54	v FNC_0001f550
			//	lwc1		$f12, $8090(at)		# 0000fd60:c42c8090	[80068090]
			osViSetYScale();
			//	lw		t3, $0000(s1)		# 0000fd64:8e2b0000	
			//	addiu		t4, t3, $ffff		# 0000fd68:256cffff	
			//	beq		zero, zero, $0000f8f4	# 0000fd6c:1000fee1	^ __0000f8f4
			//	sw		t4, $0000(s1)		# 0000fd70:ae2c0000	
		}
		while (true);
		
		//__0000fd74:					# 
		//	lui		at, $8007		# 0000fd74:3c018007	at=$80070000
		//	sh		s7, $8078(at)		# 0000fd78:a4378078	[80068078]
		//	or		v0, zero, zero		# 0000fd7c:00001025	
		//	or		s4, zero, zero		# 0000fd80:0000a025	
		//	or		s0, zero, zero		# 0000fd84:00008025	
		//	or		s5, zero, zero		# 0000fd88:0000a825	
		//	or		s2, zero, zero		# 0000fd8c:00009025	
		//	jal		$0001599c		# 0000fd90:0c005667	v FNC_0001599c
		//	addiu		v1, zero, $0001		# 0000fd94:24030001	v1=$00000001
		fnc0001599c();
		//	jal		$00001108		# 0000fd98:0c000442	^ FNC_00001108
		//	nop					# 0000fd9c:00000000	
		fnc00001108();
		//	lui		v0, $8003		# 0000fda0:3c028003	v0=$80030000
		//	lui		t6, $005f		# 0000fda4:3c0e005f	t6=$005f0000
		//	lui		at, $3f80		# 0000fda8:3c013f80	at=$3f800000
		//	addiu		v0, v0, $5630		# 0000fdac:24425630	v0=$80035630
		//	addiu		t5, zero, $0400		# 0000fdb0:240d0400	t5=$00000400
		//	ori		t6, t6, $0239		# 0000fdb4:35ce0239	t6=$005f0239
		//	mtc1		at, $f12		# 0000fdb8:44816000	
		//	sw		t5, $052c(v0)		# 0000fdbc:ac4d052c	[80035b5c]
		//	jal		$0001f5b0		# 0000fdc0:0c007d6c	v FNC_0001f5b0
		//	sw		t6, $0530(v0)		# 0000fdc4:ac4e0530	[80035b60]
		osViSetXScale();
		//	lui		at, $3f80		# 0000fdc8:3c013f80	at=$3f800000
		//	mtc1		at, $f12		# 0000fdcc:44816000	
		//	jal		$0001f550		# 0000fdd0:0c007d54	v FNC_0001f550
		//	nop					# 0000fdd4:00000000	
		osViSetYScale();
		//	jal		$0001f4d0		# 0000fdd8:0c007d34	v FNC_0001f4d0
		//	addiu		a0, zero, $0001		# 0000fddc:24040001	a0=$00000001
		osViBlack();
		//	lui		a0, $8006		# 0000fde0:3c048006	a0=$80060000
		//	jal		$0001f170		# 0000fde4:0c007c5c	v FNC_0001f170
		//	addiu		a0, a0, $7da8		# 0000fde8:24847da8	a0=$80067da8
		osDestroyThread();
		//	lui		a0, $8006		# 0000fdec:3c048006	a0=$80060000
		//	jal		$0001f170		# 0000fdf0:0c007c5c	v FNC_0001f170
		//	addiu		a0, a0, $7898		# 0000fdf4:24847898	a0=$80067898
		osDestroyThread();
		//	lui		a0, $8006		# 0000fdf8:3c048006	a0=$80060000
		//	jal		$0001f170		# 0000fdfc:0c007c5c	v FNC_0001f170
		//__0000fe00:					# 
		//	addiu		a0, a0, $76e8		# 0000fe00:248476e8	a0=$800676e8
		osDestroyThread();
		//__0000fe04:					# 
		//	beq		zero, zero, $0000fe04	# 0000fe04:1000ffff	<__0000fe04
		//	nop					# 0000fe08:00000000	
		//	nop					# 0000fe0c:00000000	
		//	nop					# 0000fe10:00000000	
		//	nop					# 0000fe14:00000000	
		//	nop					# 0000fe18:00000000	
		//	nop					# 0000fe1c:00000000	
		//	lw		ra, $0044(sp)		# 0000fe20:8fbf0044	
		//	lw		s0, $0020(sp)		# 0000fe24:8fb00020	
		//	lw		s1, $0024(sp)		# 0000fe28:8fb10024	
		//	lw		s2, $0028(sp)		# 0000fe2c:8fb20028	
		//	lw		s3, $002c(sp)		# 0000fe30:8fb3002c	
		//	lw		s4, $0030(sp)		# 0000fe34:8fb40030	
		//	lw		s5, $0034(sp)		# 0000fe38:8fb50034	
		//	lw		s6, $0038(sp)		# 0000fe3c:8fb60038	
		//	lw		s7, $003c(sp)		# 0000fe40:8fb7003c	
		//	lw		fp, $0040(sp)		# 0000fe44:8fbe0040	
		//	jr		ra			# 0000fe48:03e00008	
		//	addiu		sp, sp, $00a0		# 0000fe4c:27bd00a0	
	}

	// RAM GREECE
	static void fnc0000fe50() {
		//	addiu		sp, sp, $ffe8		# 0000fe50:27bdffe8	
		//	sw		a0, $0018(sp)		# 0000fe54:afa40018	
		//	sw		ra, $0014(sp)		# 0000fe58:afbf0014	
		//	lui		a0, $8007		# 0000fe5c:3c048007	a0=$80070000
		//	lui		a1, $8007		# 0000fe60:3c058007	a1=$80070000
		//	addiu		a1, a1, $8038		# 0000fe64:24a58038	a1=$80068038
		//	addiu		a0, a0, $a8d0		# 0000fe68:2484a8d0	a0=$8006a8d0
		//	jal		$0001ba70		# 0000fe6c:0c006e9c	v FNC_0001ba70
		//	addiu		a2, zero, $0001		# 0000fe70:24060001	a2=$00000001
		osRecvMesg(0x8006a8d0, 0x80068038, 1);
		//	jal		$0001f310		# 0000fe74:0c007cc4	v FNC_0001f310
		//	addiu		a0, zero, $0040		# 0000fe78:24040040	a0=$00000040
		osViSetSpecialFeatures(OS.ViSpecialFeature.OS_VI_DITHER_FILTER_ON);
		//	jal		$0000f618		# 0000fe7c:0c003d86	^ FNC_0000f618
		//	nop					# 0000fe80:00000000	
		fnc0000f618();
		//	addiu		t6, zero, $0003		# 0000fe84:240e0003	t6=$00000003
		//	lui		at, $8005		# 0000fe88:3c018005	at=$80050000
		//	jal		$000056a8		# 0000fe8c:0c0015aa	^ FNC_000056a8
		//	sb		t6, $2aca(at)		# 0000fe90:a02e2aca	[80052aca]
		x80052aca = 3;
		fnc000056a8();
		//	jal		$000056a8		# 0000fe94:0c0015aa	^ FNC_000056a8
		//	nop					# 0000fe98:00000000	
		fnc000056a8();
		//	lui		a0, $8007		# 0000fe9c:3c048007	a0=$80070000
		//	lui		a1, $8007		# 0000fea0:3c058007	a1=$80070000
		//	addiu		a1, a1, $8038		# 0000fea4:24a58038	a1=$80068038
		//	addiu		a0, a0, $a8f0		# 0000fea8:2484a8f0	a0=$8006a8f0
		//	jal		$0001ba70		# 0000feac:0c006e9c	v FNC_0001ba70
		//	addiu		a2, zero, $0001		# 0000feb0:24060001	a2=$00000001
		osRecvMesg(0x8006a8f0, 0x80068038, 1);
		//	jal		$00001984		# 0000feb4:0c000661	^ FNC_00001984
		//	nop					# 0000feb8:00000000	
		fnc00001984();
		//	lui		a0, $8003		# 0000febc:3c048003	a0=$80030000
		//	lui		a1, $0002		# 0000fec0:3c050002	a1=$00020000
		//	ori		a1, a1, $8928		# 0000fec4:34a58928	a1=$00028928
		//	jal		$0001cc6c		# 0000fec8:0c00731b	v FNC_0001cc6c
		//	addiu		a0, a0, $7764		# 0000fecc:24847764	a0=$80037764
		fnc0001cc6c("level data %x\n", 0x00028928);
		//	jal		$000115f4		# 0000fed0:0c00457d	v FNC_000115f4
		//	nop					# 0000fed4:00000000	
		LoadFrontEndDataToRam();
		//	jal		$00070270		# 0000fed8:0c01c09c	v FNC_00070270
		//	addiu		a0, zero, $0001		# 0000fedc:24040001	a0=$00000001

		/// Hack
		IGameState CurrentGameState = new FrontEnd();
		/// End Hack

		CurrentGameState.Start(1);
		//	lw		ra, $0014(sp)		# 0000fee0:8fbf0014	
		//	addiu		sp, sp, $0018		# 0000fee4:27bd0018	
		//	jr		ra			# 0000fee8:03e00008	
		//	nop					# 0000feec:00000000	
		return;
	}

	// RAM GREECE
	static void fnc0000fef0() {
		//osCreateMesgQueue();
		//osSendMesg();
	}

	// RAM GREECE
	static void fnc0000ff40() {
		//fnc0000fef0();
		//osRecvMesg();
	}

	// RAM GREECE
	static void fnc0000ff88() {
		//osSendMesg();
	}

	/// Start of loader.c

	// RAM GREECE
	static void fnc0000ffc0(uint a0, int a1, int a2, int a3) {
		//osWritebackDCacheAll();
		//osPiStartDma();
		//osRecvMesg();
		//osPiGetStatus();
		//fnc0001cc6c("PI_STATUS_IO_BUSY\n");
		//fnc0001cc6c();
		//fnc0001cc6c();
		//osPiStartDma();
		//osRecvMesg();
		//osPiGetStatus();
		//fnc0001cc6c("PI_STATUS_IO_BUSY\n");
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c("romsize %6d, ");
	}

	// RAM GREECE
	/// Loads cached data into RAM
	static void fnc000101f0(uint a0, int a1, int a2)
	{
		//	addiu		sp, sp, $ffe8		# 000101f0:27bdffe8	
		//	sw		a1, $001c(sp)		# 000101f4:afa5001c	
		//	or		a1, a0, zero		# 000101f8:00802825	
		//	sw		a0, $0018(sp)		# 000101fc:afa40018	
		//	sw		ra, $0014(sp)		# 00010200:afbf0014	
		//	or		a3, a2, zero		# 00010204:00c03825	
		//	lui		a0, $8006		# 00010208:3c048006	a0=$80060000
		//	lw		a2, $001c(sp)		# 0001020c:8fa6001c	
		//	jal		$0000ffc0		# 00010210:0c003ff0	^ FNC_0000ffc0
		//	addiu		a0, a0, $7f70		# 00010214:24847f70	a0=$80067f70
		fnc0000ffc0(0x80067f70, a0, a1, a2);
		//	lw		ra, $0014(sp)		# 00010218:8fbf0014	
		//	addiu		sp, sp, $0018		# 0001021c:27bd0018	
		//	jr		ra			# 00010220:03e00008	
		//	nop					# 00010224:00000000	
		return;
	}

	// RAM GREECE
	static void fnc00010228() {
		//osWritebackDCacheAll();
		//osPiStartDma();
		//osRecvMesg();
	}

	// RAM GREECE
	static void fnc00010290() {
		//fnc00010228();
	}

	// RAM GREECE
	static void fnc000102ec() {
		//fnc00010290();
	}

	// RAM GREECE
	/// Load MIO0 ?
	static void fnc0001032c() {
		//fnc00010228();
		//fnc0001cc6c("header ID wrong, ");
		//fnc0001cc6c("packed %6d, unpacked %6d, ");
		//fnc000101f0();
		//fnc0001a460();
	}

	// RAM GREECE
	static void fnc00010420() {
		//fnc0001032c();
	}

	// RAM GREECE
	static void fnc00010444() {
		//fnc00010420();
		//fnc000101f0();
	}

	// RAM GREECE
	static void fnc00010490() {
	}

	// RAM GREECE
	static void fnc000104ac() {
		//fnc000102ec();
		//fnc000102ec();
		//fnc000102ec();
		//fnc000102ec();
		//fnc000102ec();
		//fnc000102ec();
		//fnc000102ec();
		//fnc000102ec();
		//fnc000102ec();
		//fnc00010290();
		//fnc00010290();
	}

	// RAM GREECE
	static void fnc000105f0() {
		//fnc000104ac();
		//fnc000101f0();
		//fnc000101f0();
		//fnc000101f0();
		//fnc000101f0();
		//fnc000101f0();
		//fnc000101f0();
		//fnc000101f0();
		//fnc000101f0();
		//fnc000101f0();
		//fnc0001032c();
		//fnc0001032c();
	}

	// RAM 00010768
	static int destroyThreadIfMessageInQueue()
	{
		//	addiu		sp, sp, $ffe8		# 00010768:27bdffe8	
		//	sw		ra, $0014(sp)		# 0001076c:afbf0014	
		//	lui		a0, $8006		# 00010770:3c048006	a0=$80060000
		//	addiu		a0, a0, $7f88		# 00010774:24847f88	a0=$80067f88
		//	or		a1, zero, zero		# 00010778:00002825	
		//	jal		$0001ba70		# 0001077c:0c006e9c	v FNC_0001ba70
		//	or		a2, zero, zero		# 00010780:00003025	
		osRecvMesg(0x80067f88, 0, 0);
		//	addiu		at, zero, $ffff		# 00010784:2401ffff	at=$ffffffff
		//	beql		v0, at, $000107a4	# 00010788:50410006	v __000107a4
		//	or		v0, zero, zero		# 0001078c:00001025	
		if (v0 != -1) // if there was a mesg in queue
		{
			//	jal		$0000f1e8		# 00010790:0c003c7a	^ FNC_0000f1e8
			//	nop					# 00010794:00000000	
			stopAndDestroyThread();
			//	beq		zero, zero, $000107a4	# 00010798:10000002	v __000107a4
			//	addiu		v0, zero, $0001		# 0001079c:24020001	v0=$00000001
			return 1;
			//	or		v0, zero, zero		# 000107a0:00001025	
		}
		//__000107a4:					# 
		//	lw		ra, $0014(sp)		# 000107a4:8fbf0014	
		//	addiu		sp, sp, $0018		# 000107a8:27bd0018	
		//	jr		ra			# 000107ac:03e00008	
		//	nop					# 000107b0:00000000	
		return 0;
	}

	// RAM 000107b4
	static void loadLevel() {
		//fnc0001cc6c("\n\nLoading level %d\n\n");
		//loadLevelData();
		//fnc00011674();
		//loadLevelCode();
		//fnc00011d6c();
		//fnc000118f8();
		//fnc0001cc6c("------------------------------\n");
		//fnc0001cc6c("  Start of anim data: %x\n");
		//fnc0001cc6c("    End of anim data: %x\n");
		//fnc0001cc6c("                Size: %x (%.2fK)\n");
		//osSendMesg();
		//osSetThreadPri();
	}

	// RAM 000108d0
	static void loadLevelData() {
		//fnc00010490();
		//osWritebackDCacheAll();
		//fnc0001cc6c("         postData:");
		//fnc00010420();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("      texBlockMap:");
		//fnc00010420();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c(" landscapeColours:");
		//fnc00010420();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c(" landscapePalette:");
		//fnc00010420();
		//fnc0001cc6c("should be %6d, %s\n");
		//osSetThreadPri();
		//fnc0001cc6c("      treeStructs:");
		//fnc00010420();
		//fnc0001cc6c("should be %6d, Free structs:%d\n");
		//fnc0001cc6c("            trees:");
		//fnc00010420();
		//fnc0001cc6c("should be %6d, %s\n");
		//osWritebackDCacheAll();
		//fnc0001cc6c("          treeGfx:");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c(" WaterTableHeight:");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("    BuildingTypes:");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("        Buildings:");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("     triggerArray:");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("      nextTrigger:");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("    levelWaveData:");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("VehicleStartInfos:");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("         Missions:");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("data verified\n");
		//fnc0001cc6c();
		//fnc0001cc6c(" terrainTextures:");
		//fnc00010420();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("      terrainCMAP:");
		//fnc00010420();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("      skyBackDrop:");
		//fnc00010420();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("  skyBackDropCMAP:");
		//fnc00010420();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("        typeArray:");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("     LandVehicles:");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("data verified\n");
		//fnc0001cc6c("**** DATA BAD ****\n");
		//fnc0001cc6c("     SignPostData:");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("      SignStrings:  %d version                              ");
		//fnc000101f0();
		//fnc000101f0();
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("    signs_dialogue_offsets:    ");
		//fnc000101f0();
		//fnc000101f0();
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("    commsMessages:                                ");
		//fnc000101f0();
		//fnc000101f0();
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("    comms_dialogue_offsets:    ");
		//fnc000101f0();
		//fnc000101f0();
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("commsSentenceInfo:                                ");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("            Doors:                                ");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
		//fnc0001cc6c("         BCPoints:                                ");
		//fnc000101f0();
		//fnc0001cc6c("should be %6d, %s\n");
	}

	// RAM 000115f4
	static void LoadFrontEndDataToRam()
	{
		//	addiu		sp, sp, $ffe8		# 000115f4:27bdffe8	
		//	lui		a0, $8007		# 000115f8:3c048007	a0=$80070000
		//	lui		t6, $8009		# 000115fc:3c0e8009	t6=$80090000
		//	addiu		a0, a0, $0270		# 00011600:24840270	a0=$80070270
		//	sw		ra, $0014(sp)		# 00011604:afbf0014	
		//	addiu		t6, t6, $09b0		# 00011608:25ce09b0	t6=$800909b0
		//	jal		$0001f6f0		# 0001160c:0c007dbc	v FNC_0001f6f0
		//	subu		a1, t6, a0		# 00011610:01c42823	a1=$00020740
		CopyRomToRamIn32ByteChunks(0x80070270, 0x00020740);
		//	lui		a0, $8009		# 00011614:3c048009	a0=$80090000
		//	lui		t7, $800b		# 00011618:3c0f800b	t7=$800b0000
		//	addiu		a0, a0, $09b0		# 0001161c:248409b0	a0=$800909b0
		//	addiu		t7, t7, $ed70		# 00011620:25efed70	t7=$800aed70
		//	jal		$0001f770		# 00011624:0c007ddc	v FNC_0001f770
		//	subu		a1, t7, a0		# 00011628:01e42823	a1=$0001e3c0
		CopyRomToRamIn16ByteChunks(0x800909b0, 0x0001e3c0);
		//	lui		v0, $0004		# 0001162c:3c020004	v0=$00040000
		//	lui		t8, $0008		# 00011630:3c180008	t8=$00080000
		//	addiu		a1, v0, $0720		# 00011634:24450720	a1=$00040720
		//	addiu		t8, t8, $f220		# 00011638:2718f220	t8=$0007f220
		//	lui		a0, $8007		# 0001163c:3c048007	a0=$80070000
		//	addiu		a0, a0, $0270		# 00011640:24840270	a0=$80070270
		//	jal		$000101f0		# 00011644:0c00407c	^ FNC_000101f0
		//	subu		a2, t8, a1		# 00011648:03053023	a2=$0003eb00
		fnc000101f0(0x80070270, 0x00040720, 0x0003eb00);
		//	lui		a0, $800b		# 0001164c:3c04800b	a0=$800b0000
		//	lui		t9, $800e		# 00011650:3c19800e	t9=$800e0000
		//	addiu		a0, a0, $ed70		# 00011654:2484ed70	a0=$800aed70
		//	addiu		t9, t9, $1d70		# 00011658:27391d70	t9=$800e1d70
		//	jal		$0001e920		# 0001165c:0c007a48	v FNC_0001e920
		//	subu		a1, t9, a0		# 00011660:03242823	a1=$00033000
		_blkclr(0x800aed70, 0x00033000);
		//	lw		ra, $0014(sp)		# 00011664:8fbf0014	
		//	addiu		sp, sp, $0018		# 00011668:27bd0018	
		//	jr		ra			# 0001166c:03e00008	
		//	nop					# 00011670:00000000	
		return;
	}

	// RAM GREECE
	static void fnc00011674() {
		//CopyRomToRamIn32ByteChunks();
		//CopyRomToRamIn16ByteChunks();
		//fnc000101f0();
	}

	// RAM 000116dc
	static void loadLevelCode() {
		//fnc0001cc6c("Loading level %d code\n");
		//fnc000101f0();
		//fnc0001cc6c("%x from %x size %x\n");
		//fnc0001cc6c("end %x\n");
	}

	// RAM GREECE
	static void fnc000117d8() {
		//CopyRomToRamIn32ByteChunks();
		//CopyRomToRamIn16ByteChunks();
		//fnc000101f0();
		//_blkclr();
	}

	// RAM GREECE
	static void fnc00011858(int currentLevel, uint a1) {
		//fnc0001032c();
		//fnc0001cc6c(" ******************************************\n");
		//fnc0001cc6c(" *\n * WARNING: inside textures too large\n *\n");
		//fnc0001cc6c(" ******************************************\n");
	}

	// RAM GREECE
	static void fnc000118e4() {
	}

	// RAM GREECE
	static void fnc000118f8() {
		//fnc00010420();
		//fnc00010420();
		//fnc00010420();
		//fnc00010420();
		//fnc00010420();
		//fnc00010420();
	}

	// RAM GREECE
	static void fnc000119a8() {
		//fnc000101f0();
	}

	// RAM GREECE
	static void fnc000119f4() {
		//fnc000101f0();
	}

	// RAM GREECE
	static void fnc00011a40() {
		//fnc000101f0();
	}

	// RAM GREECE
	static void fnc00011ac8() {
		//fnc000101f0();
	}

	// RAM GREECE
	static void fnc00011b14() {
		//fnc000101f0();
	}

	// RAM GREECE
	static void fnc00011b60() {
		//fnc000101f0();
	}

	// RAM GREECE
	static void fnc00011be8() {
		//fnc000101f0();
	}

	// RAM 00011c34
	static void debug_printModelSegmentStart() {
		//fnc0001cc6c("------------------------------\n");
		//fnc0001cc6c("Start of model segment: %8x\n");
	}

	// RAM 00011c6c
	static void debug_printModelSegmentEnd() {
		//fnc0000ef00("free>0", "src/loader.c", 0x47a);
		//fnc0001cc6c("------------------------------\n");
		//fnc0001cc6c("End of model segment: %8x\n");
		//fnc0001cc6c("    Start of ZBuffer: %8x\n");
		//fnc0001cc6c("                Free: %x, (%.2fK)\n");
		//fnc0001cc6c("------------------------------\n");
	}

	// RAM GREECE
	static void fnc00011d24() {
		//debug_printModelSegmentStart();
		//fnc000119a8();
		//fnc00011ac8();
		//fnc00011be8();
		//debug_printModelSegmentEnd();
	}

	// RAM GREECE
	static void fnc00011d6c() {
		//debug_printModelSegmentStart();
		//fnc000119a8();
		//fnc000119f4();
		//fnc00011a40();
		//debug_printModelSegmentEnd();
	}

	// RAM GREECE
	static void fnc00011dbc(ubyte currentLevel) {
		//debug_printModelSegmentStart();
		//fnc000119a8();
		//fnc00011b14();
		//fnc00011b60();
		//fnc00011ac8();
		//debug_printModelSegmentEnd();
	}

	// End of loader.c ?

	// RAM GREECE
	static void fnc00011e14() {
		//fnc00004c8c();
	}

	// RAM GREECE
	static void fnc00011f90() {}

	// RAM GREECE
	static void fnc00011fac() {}

	// RAM GREECE
	static void fnc00011fc8() {}

	// RAM GREECE
	static void fnc00011fe4() {}

	// RAM GREECE
	static void fnc00012000() {
		//fnc00011fac();
		//fnc00011fc8();
		//fnc00011fe4();
		//fnc00011f90();
	}

	/// End of loader.c ?

	// RAM GREECE
	static void fnc00012080() {
	}

	// RAM GREECE
	static void fnc00012100() {
	}

	// RAM GREECE
	static void fnc00012128() {
	}

	// RAM GREECE
	static void fnc00012144() {
	}

	// RAM GREECE
	static void fnc00012164() {
	}

	// RAM GREECE
	static void fnc000121b4() {
		//fnc00012128();
	}

	// RAM GREECE
	static void fnc000123a4() {
		//fnc00012080();
	}

	// RAM GREECE
	static void fnc0001244c() {
	}

	// RAM GREECE
	static void fnc0001246c() {
	}

	// RAM GREECE
	static void fnc00012494() {
	}

	// RAM GREECE
	static void fnc000124a8() {
	}

	// RAM GREECE
	static void fnc000124c8() {
	}

	// RAM GREECE
	static void fnc000124f0() {
	}

	// RAM GREECE
	static void fnc00012508() {
	}

	// RAM GREECE
	static void fnc00012528() {
	}

	// RAM GREECE
	static void fnc00012550() {
	}

	// RAM GREECE
	static void fnc00012568() {
	}

	// RAM GREECE
	static void fnc00012584() {
	}

	// RAM GREECE
	static void fnc000125c0() {
	}

	// RAM GREECE
	static void fnc000125d8() {
	}

	// RAM GREECE
	static void fnc000125f4() {
	}

	// RAM GREECE
	static void fnc00012620() {
	}

	// RAM GREECE
	static void fnc00012638() {
	}

	// RAM GREECE
	static void fnc00012658() {
	}

	// RAM GREECE
	static void fnc00012698() {
	}

	// RAM GREECE
	static void fnc000126b0() {
	}

	// RAM GREECE
	static void fnc000126cc() {
	}

	// RAM GREECE
	static void fnc00012708() {
	}

	// RAM GREECE
	static void fnc00012720() {
	}

	// RAM GREECE
	static void fnc0001273c() {
	}

	// RAM GREECE
	static void fnc00012760() {
	}

	// RAM GREECE
	static void fnc00012778() {
	}

	// RAM GREECE
	static void fnc00012798() {
	}

	// RAM GREECE
	static void fnc000127b8() {
	}

	// RAM GREECE
	static void fnc000127cc() {
	}

	// RAM GREECE
	static void fnc000127ec() {
	}

	// RAM GREECE
	static void fnc00012820() {
	}

	// RAM GREECE
	static void fnc00012834() {
	}

	// RAM GREECE
	static void fnc0001284c() {
	}

	// RAM GREECE
	static void fnc0001286c() {
		//fnc0001cc6c();
		//alSndpSetSound();
		//alSndpGetState();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//alSndpGetState();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//alSndpGetState();
		//fnc0001cc6c();
		//fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000129fc() {
		//fnc0000f5a8();
	}

	// RAM GREECE
	static void fnc00012a74() {
		//fnc0001f860();
		//alHeapDBAlloc();
		//fnc0000f5a8();
		//fnc0001f9a4();
		//osAiSetFrequency();
		//fnc00000450();
		//alHeapDBAlloc();
		//N64.fnc00020bb0();
		//alHeapDBAlloc();
		//alHeapDBAlloc();
		//N64.fnc000212f4();
		//alHeapDBAlloc();
		//fnc00012080();
		//alHeapDBAlloc();
		//fnc0000f5a8();
		//alHeapDBAlloc();
		//fnc0000f5a8();
		//fnc0001faa8();
		//alHeapDBAlloc();
	}

	// RAM GREECE
	static void fnc00012e88() {
	}

	// RAM GREECE
	static void fnc00012ea8() {
	}

	// RAM GREECE
	static void fnc00012ec4() {
		//fnc00012e88();
		//fnc000129fc();
		//N64.fnc00021430();
		//N64.fnc000219cc();
		//N64.fnc00021f30();
		//N64.fnc00021f70();
		//N64.fnc00021fb0();
	}

	// RAM GREECE
	static void fnc00013178() {
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc000131a4() {
		//fnc00015c94();
		//fnc00015c94();
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc0001322c() {
		//fnc00015c94();
		//fnc00015c94();
		//fnc00015c94();
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc000132cc() {
		//fnc00015c94();
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc00013314() {
	}

	// RAM GREECE
	static void fnc00013324() {
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc00013398() {
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc00013410() {
		//fnc00015c94();
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc00013458() {
	}

	// RAM GREECE
	static void fnc00013460() {
	}

	// RAM GREECE
	static void fnc00013468() {
		//fnc00015c94();
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc000134cc() {
		//fnc00015c94();
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc00013514() {
		//fnc00015c94();
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc0001355c() {
		//fnc00015c94();
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc000135a4() {
	}

	// RAM 000135ac
	static void playMapMusic() {
		//fnc00015c94();
		//fnc00015c94();
	}

	// RAM 000135f4
	static void playInventoryMusic() {
		//fnc00015c94();
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc0001363c() {
		//fnc00015c94();
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc00013684() {
		//fnc00015c94();
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc000136cc() {
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc000136f0() {
		//fnc00013324();
	}

	// RAM GREECE
	static void fnc00013720() {
		//fnc0001cc6c();
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc000137ac() {
		//fnc00015c94();
	}

	// RAM GREECE
	static void fnc000137d8() {
	}

	// RAM GREECE
	static void fnc000137e0() {
	}

	// RAM GREECE
	static void fnc000137e8() {
	}

	// RAM GREECE
	static void fnc000137f0() {
	}

	// RAM GREECE
	static void fnc00013810() {
	}

	// RAM GREECE
	static void fnc00013818() {
		//fnc00017224();
		//fnc00016cd8();
		//fnc00016e54();
		//fnc00013324();
		//fnc000056d0();
		//sqrtf();
		//fnc00014a3c();
		//fnc00014a3c();
		//fnc00013324();
		//fnc00013fc4();
		//fnc00013f64();
		//fnc00012720();
		//fnc00013b48();
	}

	// RAM GREECE
	static void fnc00013b48() {
		//N64.fnc00021fe0();
		//N64.fnc00022080();
		//alSndpSetSound();
		//fnc000038e0();
		//fnc000038e0();
		//fnc000038e0();
		//N64.fnc000220b0();
		//N64.alSndpSetPitch();
		//N64.alSndpSetVol();
		//N64.alSndpSetPan();
		//N64.fnc00022230();
	}

	// RAM GREECE
	static void fnc00013e44() {
	}

	// RAM GREECE
	static void fnc00013e64() {
		//fnc0001599c();
		//fnc00016abc();
		//N64.fnc000222a0();
	}

	// RAM GREECE
	static void fnc00013f64() {
	}

	// RAM GREECE
	static void fnc00013f84() {
	}

	// RAM GREECE
	static void fnc00013fc4() {
		//fnc000123a4();
		//fnc000123a4();
		//alSndpSetSound();
		//alSndpGetState();
		//fnc000157d4();
		//fnc00013e44();
		//alSndpGetState();
		//N64.fnc000222d0();
		//fnc000123a4();
	}

	// RAM GREECE
	static void fnc00014180() {
		//fnc000153d8();
	}

		// RAM GREECE
	static void fnc00014200() {
	}

	// RAM GREECE
	static void fnc00014208() {
		//fnc00014a3c();
	}

	// RAM GREECE
	static void fnc00014278() {
		//fnc000121b4();
	}

	// RAM GREECE
	static void fnc000143c4() {
		//fnc00012638();
		//fnc000121b4();
	}

	// RAM GREECE
	static void fnc00014508() {
		//sqrtf();
		//fnc00014a3c();
		//sqrtf();
		//sqrtf();
		//fnc00014a3c();
	}

	// RAM GREECE
	static void fnc00014a3c() {
		//fnc000056d0();
		//fnc000127cc();
		//alSndpSetSound();
		//alSndpGetState();
		//N64.alSndpSetPan();
		//N64.alSndpSetPitch();
		//N64.alSndpSetVol();
		//fnc000157d4();
		//fnc00012638();
		//fnc000121b4();
	}

	// RAM GREECE
	static void fnc00015210() {
		//fnc000121b4();
	}

	// RAM GREECE
	static void fnc00015380() {
	}

	// RAM GREECE
	static void fnc00015388() {
		//fnc00014a3c();
	}

	// RAM GREECE
	static void fnc000153d8(int a0) {
		//fnc000121b4();
	}

	// RAM GREECE
	static void fnc00015500() {
		//alSndpSetSound();
		//alSndpGetState();
		//N64.alSndpSetVol();
	}

	// RAM GREECE
	static void fnc000155b0() {
		//alSndpSetSound();
		//N64.alSndpSetPitch();
	}

	// RAM GREECE
	static void fnc00015600() {
		//alSndpSetSound();
		//alSndpGetState();
		//N64.alSndpSetPan();
	}

	// RAM GREECE
	static void fnc00015674() {
		//fnc000153d8();
	}

	// RAM GREECE
	static void fnc000156c8() {
		//fnc000124a8();
		//alSndpSetSound();
		//N64.alSndpStop();
		//fnc00012834();
		//alSndpSetSound();
		//N64.alSndpStop();
	}

	// RAM GREECE
	static void fnc000157d4() {
		//fnc0001244c();
		//alSndpSetSound();
		//N64.alSndpStop();
	}

	// RAM GREECE
	static void fnc00015860() {
		//fnc00012508();
		//fnc000157d4();
	}

	// RAM GREECE
	static void fnc000158c8() {
		//fnc00012508();
		//fnc000157d4();
	}

	// RAM GREECE
	static void fnc0001593c() {
	}

	// RAM GREECE
	static void fnc00015944() {
		//fnc00012e88();
		//N64.fnc00021f70();
	}

	// RAM GREECE
	static void fnc0001599c() {
		//alSndpSetSound();
		//alSndpGetState();
		//fnc0001244c();
		//fnc000121b4();
		//N64.alSndpStop();
		//fnc00013e64();
	}

	// RAM GREECE
	static void fnc00015bcc() {
		//fnc00013410();
		//fnc00013398();
	}

	// RAM GREECE
	static void fnc00015c58() {
		//N64.alSeqpSetChlVol();
	}

	// RAM GREECE
	static void fnc00015c94() {
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016c14();
		//fnc00016b38();
		//fnc000165ec();
		//fnc00016b38();
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016c14();
		//fnc00016b38();
		//fnc000165ec();
		//fnc00016b38();
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016c14();
		//fnc00016b38();
		//fnc000165ec();
		//fnc00016b38();
		//fnc00016b74();
		//fnc000165ec();
		//fnc00016b74();
		//fnc000165ec();
		//fnc00016b74();
		//fnc000165ec();
		//fnc00016b74();
		//fnc000165ec();
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016c14();
		//fnc00016b38();
		//fnc000165ec();
		//fnc00016b38();
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016b38();
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016c14();
		//fnc00016b38();
		//fnc000165ec();
		//fnc00016b38();
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016c14();
		//fnc00016b38();
		//fnc000165ec();
		//fnc00016b38();
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016b38();
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016c14();
		//fnc00016b38();
		//fnc000165ec();
		//fnc00016b38();
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016c14();
		//fnc00016b38();
		//fnc000165ec();
		//fnc00016b38();
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016c14();
		//fnc00016b38();
		//fnc000165ec();
		//fnc00016b38();
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016b38();
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016c14();
		//fnc00016b38();
		//fnc000165ec();
		//fnc00016b38();
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016b38();
		//fnc000164c4();
		//fnc000165ec();
		//fnc00016b38();
	}

	// RAM GREECE
	static void fnc000164c4() {
		//fnc00016c14();
	}

	// RAM GREECE
	static void fnc000165ec() {
		//fnc00016abc();
		//fnc00012e88();
		//fnc00013e64();
		//fnc00016abc();
		//fnc00012e88();
		//fnc00016abc();
		//fnc00012e88();
		//fnc00013e64();
		//fnc00012e88();
		//fnc00016abc();
		//fnc00012e88();
		//fnc00013e64();
		//fnc00013e64();
		//fnc0001cc6c();
		//fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc00016abc() {
	}

	// RAM GREECE
	static void fnc00016b38() {
	}

	// RAM GREECE
	static void fnc00016b74() {
		//fnc00013e64();
	}

	// RAM GREECE
	static void fnc00016c14() {
	}

	// RAM GREECE
	static void fnc00016c8c() {
	}

	// RAM GREECE
	static void fnc00016cd8() {
		//N64.fnc00021f70();
		//fnc00013e64();
	}

	// RAM GREECE
	static void fnc00016e54() {
		//alSndpSetSound();
		//N64.alSndpSetVol();
	}

	// RAM GREECE
	static void fnc00016fd0(int a0) {
		//alSndpSetSound();
		//N64.alSndpSetVol();
	}

	// RAM GREECE
	static void fnc000170f4(int a0) {
		//N64.fnc00021f70();
	}

	// RAM GREECE
	static void fnc00017224() {
		//fnc00012e88();
		//fnc00012ec4();
	}

	// RAM GREECE
	static void fnc000172e0() {
	}

	// RAM GREECE
	static void fnc00017394() {
	}

	// RAM GREECE
	static void fnc00017490() {
		//fnc00017394();
		//fnc00017394();
		//fnc000172e0();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//fnc00017394();
		//fnc00017394();
		//drawText();
		//drawText();
		//fnc000172e0();
		//drawText();
		//drawText();
		//drawText();
		//fnc000172e0();
		//drawText();
		//drawText();
	}

	// RAM GREECE
	static void fnc00017aac() {
	}

	// RAM GREECE
	static void fnc00017ae0() {
	}

	// RAM GREECE
	static void fnc00017b08() {
		//fnc0001cc6c();
		//fnc0000c6b8();
	}

	// RAM GREECE
	static void fnc00017b78() {
	}

	// RAM GREECE
	static void fnc00017be8() {
	}

	// RAM GREECE
	static void fnc00017bf0() {
	}

	// RAM GREECE
	static void fnc00017bf8() {
		//fnc000101f0();
		//fnc000101f0();
	}

	// RAM GREECE
	static void fnc00017ca4() {
		//fnc000190d4();
		//fnc0001a024();
		//fnc0001cc6c();
		//fnc00018d7c();
		//fnc00018d7c();
		//fnc0001a024();
		//fnc0001a024();
		//fnc00017490();
		//fnc00017490();
		//fnc00017490();
		//fnc00017490();
		//fnc00017490();
		//fnc00017490();
		//fnc00017490();
		//fnc0000c670();
		//fnc0000c6c4();
		//fnc000072cc();
		//fnc000072cc();
		//fnc000073b8();
		//fnc000073b8();
		//fnc0000c6b8();
		//fnc0001a160();
		//ButtonIsNewlyPressed();
		//fnc0000c670();
		//fnc0000c6c4();
		//fnc0000c6b8();
		//fnc0000c6b8();
		//ButtonIsNewlyPressed();
		//fnc0001a024();
		//fnc0000c6c4();
		//fnc0000b044();
		//fnc0000c670();
		//fnc0000c6c4();
		//coss();
	}

	// RAM GREECE
	static void fnc00018a58() {
		//fnc00017b78();
	}

	// RAM GREECE
	static void fnc00018aa0() {
	}

	// RAM GREECE
	static void fnc00018ac0() {
	}

	// RAM GREECE
	static void fnc00018ac8() {
	}

	// RAM GREECE
	static void fnc00018ae4() {
	}

	// RAM GREECE
	static void fnc00018aec() {
		//fnc00017b78();
		//fnc000153d8();
		//fnc000092b8();
	}

	// RAM GREECE
	static void fnc00018d14() {
		//fnc0001a024();
	}

	// RAM GREECE
	static void fnc00018d58() {
		//fnc00018d14();
	}

	// RAM GREECE
	static void fnc00018d7c() {
		//fnc0001cc6c();
		//fnc00019f80();
		//fnc00017b08();
		//fnc00015380();
		//fnc00019ea8();
		//fnc0001a024();
		//fnc0001cc6c();
		//fnc0001a37c();
		//fnc00017b08();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001a37c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc00017b08();
	}

	// RAM GREECE
	static void fnc000190d4() {
		//fnc00017bf8();
		//fnc00017bf8();
		//fnc00017bf8();
		//fnc00017bf8();
		//fnc00017bf8();
	}

	// RAM GREECE
	static void fnc00019abc() {
		//fnc000153d8();
	}

	// RAM GREECE
	static void fnc00019ea8() {
		//fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc00019f08() {
		//fnc00019f80();
		//fnc0000c6b8();
	}

	// RAM GREECE
	static void fnc00019f80() {
		//fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc0001a024() {
	}

	// RAM GREECE
	static void fnc0001a068() {
		//fnc00017b78();
		//fnc00017b78();
		//fnc00019f80();
		//fnc00018d7c();
		//fnc00019f08();
	}

	// RAM GREECE
	static int fnc0001a114() {
		return 0;
	}

	// RAM GREECE
	static void fnc0001a130() {
		//fnc00019abc();
	}

	// RAM GREECE
	static void fnc0001a160() {
		//drawText();
		//drawText();
		//drawText();
		//fnc0000577c();
		//drawText();
		//drawText();
		//fnc0000577c();
		//drawText();
		//drawText();
		//fnc0000577c();
		//drawText();
		//drawText();
		//drawText();
		//fnc0000577c();
		//drawText();
		//drawText();
		//fnc0000577c();
		//drawText();
		//drawText();
		//fnc0000577c();
		//drawText();
		//ButtonIsNewlyPressed();
	}

	// RAM GREECE
	static void fnc0001a37c() {
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
		//fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc0001a448() {
	}

	// RAM GREECE
	static void fnc0001a460() {
	}

	/// Possible file boundary

	// RAM GREECE
	static void fnc0001a500() {
	}

	// RAM GREECE
	static void fnc0001a54c() {
	}

	// RAM GREECE
	static void fnc0001a598() {
	}

	// RAM GREECE
	static void fnc0001a650() {
		//fnc00014a3c();
		//fnc0001a598();
		//fnc0001a598();
		//fnc0001a598();
		//fnc0001cc6c();
		//fnc0001a598();
	}

	// RAM GREECE
	static void fnc0001a7a0() {
	}

	// RAM GREECE
	static void fnc0001a7f4() {
	}

	// RAM GREECE
	static void fnc0001a804() {
	}

	// RAM GREECE
	static void fnc0001a814() {
	}

	// RAM GREECE
	static void fnc0001a828() {
		//drawText();
		//fnc00018ac8();
		//fnc0000a2b8();
		//fnc00018ac8();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
	}

	// RAM GREECE
	static void fnc0001adcc() {
	}

	// RAM GREECE
	/// 0001b7e0
	static void osAiSetFrequency() {
	}

	/// Possible file boundary

	// RAM GREECE
	static void fnc0001abe0(int a0) {
	}

	// RAM GREECE
	/// 0001ad40
	static void alUnlink() {
	}

	// RAM GREECE
	/// 0001ad70
	static void alLink() {}

	// RAM GREECE
	/// 0001ad94
	static void alClose() {
		//N64.alSynDelete();
	}

	// RAM GREECE
	/// 0001adcc
	static void alInit() {
		//fnc0001c0d0();
	}

	// RAM GREECE
	/// 0001ae00
	static void alHeapDBAlloc() {}

	// RAM 0001ae60
	/// OSMesgQueue *mq,
	/// OSMesg *msg,
	/// s32 count
	/// The osCreateMesgQueue, osSendMesg, osJamMesg, and osRecvMesg functions are messaging and synchronization facilities.
	/// Message queues provide a highly flexible communication and synchronization mechanism.
	/// The facilities are useful among threads, as well as between threads and events (primarily interrupts).
	/// See osSetEventMesg for a complete list of events.
	/// The osCreateMesgQueue call initializes a given OSMesgQueue structure (mq) to an empty state.
	/// The msg argument points to an OSMesg array that is used for storing messages in this queue.
	/// The count argument specifies the total number of messages the given queue can hold (the size of the array). 
	static void osCreateMesgQueue() {}

	// RAM GREECE
	/// 0001ae90
	static void osCreateThread(int threadPointer, int id, void function() entryFuncPointer, int arg) {	}
	static void osCreateThread(int threadPointer, int id, void function(int a0) entryFuncPointer, int arg) {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	/// Possible file boundary

	// RAM GREECE
	/// 0001afe0
	static void osStartThread(uint a0) {
		//N64.fnc000239b0();
		//N64.fnc000237cc();
		//N64.fnc000237cc();
		//N64.fnc000237cc();
		//N64.fnc00023814();
		//N64.fnc000237cc();
		//N64.fnc00023824();
		//N64.fnc000236cc();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	static void fnc0001b130() {
		//N64.fnc00023b10();
		//N64.fnc00023b50();
	}

	// RAM GREECE
	static void fnc0001b180() {
		//osWritebackDCacheAll();
		//N64.fnc00023cac();
		//N64.fnc00023e3c();
		//N64.fnc00023e80();
	}

	// RAM GREECE
	static void fnc0001b220() {
		//fnc0001b130();
	}

	// RAM GREECE
	static void fnc0001b404()
	{
		//	addiu		sp, sp, $ffe8		# 0001b404:27bdffe8	
		//	sw		ra, $0014(sp)		# 0001b408:afbf0014	
		//	lw		t6, $0004(s0)		# 0001b40c:8e0e0004	
		//	addiu		a2, zero, $0001		# 0001b410:24060001	a2=$00000001
		//	or		v0, zero, zero		# 0001b414:00001025	
		//	andi		t7, t6, $0003		# 0001b418:31cf0003	
		//	bne		t7, zero, $0001b484	# 0001b41c:15e00019	v __0001b484
		//	nop					# 0001b420:00000000	
		//	lw		a0, $0050(s0)		# 0001b424:8e040050	
		//	jal		$0001c3d0		# 0001b428:0c0070f4	v FNC_0001c3d0
		//	lw		a1, $0054(s0)		# 0001b42c:8e050054	
		osSendMesg();
		//	lw		t8, $0010(s0)		# 0001b430:8e180010	
		//	addiu		at, zero, $0001		# 0001b434:24010001	at=$00000001
		//	bne		t8, at, $0001b47c	# 0001b438:17010010	v __0001b47c
		//	nop					# 0001b43c:00000000	
		//	lw		v0, $0008(s0)		# 0001b440:8e020008	
		//	andi		t9, v0, $0040		# 0001b444:30590040	
		//	beq		t9, zero, $0001b47c	# 0001b448:1320000c	v __0001b47c
		//	andi		t6, v0, $0020		# 0001b44c:304e0020	
		//	beq		t6, zero, $0001b47c	# 0001b450:11c0000a	v __0001b47c
		//	lui		t7, $8003		# 0001b454:3c0f8003	t7=$80030000
		//	lw		t7, $4de8(t7)		# 0001b458:8def4de8	t7=$80034de8
		//	beq		t7, zero, $0001b474	# 0001b45c:11e00005	v __0001b474
		//	nop					# 0001b460:00000000	
		//	jal		$0001f4d0		# 0001b464:0c007d34	v FNC_0001f4d0
		//	or		a0, zero, zero		# 0001b468:00002025	
		osViBlack(false);
		//	lui		at, $8003		# 0001b46c:3c018003	at=$80030000
		//	sw		zero, $4de8(at)		# 0001b470:ac204de8	[80034de8]
		//__0001b474:					# 
		//	jal		$0001edf0		# 0001b474:0c007b7c	v FNC_0001edf0
		//	lw		a0, $000c(s0)		# 0001b478:8e04000c	
		osViSwapBuffer();
		//__0001b47c:					# 
		//	beq		zero, zero, $0001b484	# 0001b47c:10000001	v __0001b484
		//	addiu		v0, zero, $0001		# 0001b480:24020001	v0=$00000001
		//__0001b484:					# 
		//	lw		ra, $0014(sp)		# 0001b484:8fbf0014	
		//	addiu		sp, sp, $0018		# 0001b488:27bd0018	
		//	jr		ra			# 0001b48c:03e00008	
		//	nop					# 0001b490:00000000	
	}

	// RAM GREECE
	static void fnc0001b494()
	{
		//	jr		ra			# 0001b494:03e00008	
		//	nop					# 0001b498:00000000	
	}

	// RAM GREECE
	static void fnc0001b49c()
	{
		//	jr		ra			# 0001b49c:03e00008	
		//	nop					# 0001b4a0:00000000	
	}

	// RAM GREECE
	static void fnc0001b4a4()
	{
		//	jr		ra			# 0001b4a4:03e00008	
		//	nop					# 0001b4a8:00000000	
	}

	// RAM GREECE
	static void fnc0001b4ac()
	{
		//	jr		ra			# 0001b4ac:03e00008	
		//	nop					# 0001b4b0:00000000	
	}

	// RAM GREECE
	static void fnc0001b4a4() {
	}

	// RAM GREECE
	static void fnc0001b4b4() {
		//osRecvMesg();
		//osRecvMesg();
		//N64.fnc00023f30();
		//fnc0001b220();
		//fnc0001b180();
		//osSendMesg();
	}

	// RAM GREECE
	static void fnc0001b634() {
		//osRecvMesg();
		//fnc0001b4b4();
		//N64.fnc00023a90();
		//fnc0001b404();
		//fnc0001b220();
		//fnc0001b180();
		//fnc0001b404();
		//fnc0001b220();
		//fnc0001b180();
		//osSendMesg();
	}

	// RAM GREECE
	static void fnc0001b860() {}

	// RAM GREECE
	static void fnc0001b868() {
		//N64.osSetIntMask();
		//N64.osSetIntMask();
	}

	// RAM GREECE
	static void fnc0001b8f0() {
		//N64.osSetIntMask();
		//N64.osSetIntMask();
	}

	// RAM GREECE
	static void fnc0001b940(uint a0, uint a1, uint a2, OS.ViMode osViMode)
	{
		//	addiu		sp, sp, $ffd8		# 0001b940:27bdffd8	
		//	sw		s1, $0020(sp)		# 0001b944:afb10020	
		//	sw		s0, $001c(sp)		# 0001b948:afb0001c	
		//	sw		ra, $0024(sp)		# 0001b94c:afbf0024	
		//	sw		a1, $002c(sp)		# 0001b950:afa5002c	
		//	sw		a2, $0030(sp)		# 0001b954:afa60030	
		//	sw		a3, $0034(sp)		# 0001b958:afa70034	
		//	addiu		t6, zero, $0001		# 0001b95c:240e0001	t6=$00000001
		//	addiu		t7, zero, $0004		# 0001b960:240f0004	t7=$00000004
		//	or		s0, a0, zero		# 0001b964:00808025	
		//	sw		zero, $0274(a0)		# 0001b968:ac800274	
		object_at_x800680a0.x274 = 0;
		//	sw		zero, $0278(a0)		# 0001b96c:ac800278	
		object_at_x800680a0.x278 = 0;
		//	sw		zero, $0260(a0)		# 0001b970:ac800260	
		object_at_x800680a0.x260 = 0;
		//	sw		zero, $027c(a0)		# 0001b974:ac80027c	
		object_at_x800680a0.x27c = 0;
		//	sw		zero, $0264(a0)		# 0001b978:ac800264	
		object_at_x800680a0.x264 = 0;
		//	sw		zero, $0268(a0)		# 0001b97c:ac800268	
		object_at_x800680a0.x268 = 0;
		//	sw		zero, $026c(a0)		# 0001b980:ac80026c	
		object_at_x800680a0.x26c = 0;
		//	sw		zero, $0270(a0)		# 0001b984:ac800270	
		object_at_x800680a0.x270 = 0;
		//	sh		t6, $0000(a0)		# 0001b988:a48e0000	
		object_at_x800680a0.x0 = 0;
		//	sh		t7, $0020(a0)		# 0001b98c:a48f0020	
		object_at_x800680a0.x20 = 0;
		//	addiu		s1, a0, $0040		# 0001b990:24910040	
		//	or		a0, s1, zero		# 0001b994:02202025	
		//	addiu		a1, s0, $0058		# 0001b998:26050058	
		//	jal		$0001ae60		# 0001b99c:0c006b98	^ FNC_0001ae60
		//	addiu		a2, zero, $0008		# 0001b9a0:24060008	a2=$00000008
		osCreateMesgQueue(&object_at_x800680a0.x40, &object_at_x800680a0.x58, 8);
		//	addiu		a0, s0, $0078		# 0001b9a4:26040078	
		//	addiu		a1, s0, $0090		# 0001b9a8:26050090	
		//	jal		$0001ae60		# 0001b9ac:0c006b98	^ FNC_0001ae60
		//	addiu		a2, zero, $0008		# 0001b9b0:24060008	a2=$00000008
		osCreateMesgQueue(&object_at_x800680a0.x78, &object_at_x800680a0.x90, 8);
		//	jal		$0001e9c0		# 0001b9b4:0c007a70	v FNC_0001e9c0
		//	addiu		a0, zero, $00fe		# 0001b9b8:240400fe	a0=$000000fe
		osCreateViManager(OS.Priority.OS_PRIORITY_VIMGR);
		//	lbu		t8, $0037(sp)		# 0001b9bc:93b80037	
		//	lui		t0, $8003		# 0001b9c0:3c088003	t0=$80030000
		//	addiu		t0, t0, $5630		# 0001b9c4:25085630	t0=$80035630
		//	sll		t9, t8, 2		# 0001b9c8:0018c880	
		//	addu		t9, t9, t8		# 0001b9cc:0338c821	
		//	sll		t9, t9, 4		# 0001b9d0:0019c900	
		//	jal		$0001ed80		# 0001b9d4:0c007b60	v FNC_0001ed80
		//	addu		a0, t9, t0		# 0001b9d8:03282021	
		osViSetMode(osViMode);
		//	jal		$0001f4d0		# 0001b9dc:0c007d34	v FNC_0001f4d0
		//	addiu		a0, zero, $0001		# 0001b9e0:24040001	a0=$00000001
		osViBlack(true);
		//	addiu		a0, zero, $0004		# 0001b9e4:24040004	a0=$00000004
		//	or		a1, s1, zero		# 0001b9e8:02202825	
		//	jal		$0001cc90		# 0001b9ec:0c007324	v FNC_0001cc90
		//	addiu		a2, zero, $029b		# 0001b9f0:2406029b	a2=$0000029b
		osSetEventMesg(OS.Event.OS_EVENT_SP, &object_at_x800680a0.x40, 0x29b);
		//	addiu		a0, zero, $0009		# 0001b9f4:24040009	a0=$00000009
		//	or		a1, s1, zero		# 0001b9f8:02202825	
		//	jal		$0001cc90		# 0001b9fc:0c007324	v FNC_0001cc90
		//	addiu		a2, zero, $029c		# 0001ba00:2406029c	a2=$0000029c
		osSetEventMesg(OS.Event.OS_EVENT_DP, &object_at_x800680a0.x40, 0x29c);
		//	addiu		a0, zero, $000e		# 0001ba04:2404000e	a0=$0000000e
		//	or		a1, s1, zero		# 0001ba08:02202825	
		//	jal		$0001cc90		# 0001ba0c:0c007324	v FNC_0001cc90
		//	addiu		a2, zero, $029d		# 0001ba10:2406029d	a2=$0000029d
		osSetEventMesg(OS.Event.OS_EVENT_PRENMI, &object_at_x800680a0.x40, 0x29d);
		//	or		a0, s1, zero		# 0001ba14:02202025	
		//	addiu		a1, zero, $029a		# 0001ba18:2405029a	a1=$0000029a
		//	jal		$0001f270		# 0001ba1c:0c007c9c	v FNC_0001f270
		//	lbu		a2, $003b(sp)		# 0001ba20:93a6003b	
		osViSetEvent(&object_at_x800680a0.x40, 0x29a, 1); // a2 is 1 for all three calls to this func
		//	lw		t1, $002c(sp)		# 0001ba24:8fa9002c	
		//	lw		t2, $0030(sp)		# 0001ba28:8faa0030	
		//	addiu		s1, s0, $00b0		# 0001ba2c:261100b0	
		//	lui		a2, $8002		# 0001ba30:3c068002	a2=$80020000
		//	addiu		a2, a2, $b634		# 0001ba34:24c6b634	a2=$8001b634
		//	or		a0, s1, zero		# 0001ba38:02202025	
		//	addiu		a1, zero, $0004		# 0001ba3c:24050004	a1=$00000004
		//	or		a3, s0, zero		# 0001ba40:02003825	
		//	sw		t1, $0010(sp)		# 0001ba44:afa90010	
		//	jal		$0001ae90		# 0001ba48:0c006ba4	^ FNC_0001ae90
		//	sw		t2, $0014(sp)		# 0001ba4c:afaa0014	
		osCreateThread(&object_at_x800680a0.xb0, 4, &fnc0001b634, 0x800680a0);
		//	jal		$0001afe0		# 0001ba50:0c006bf8	^ FNC_0001afe0
		//	or		a0, s1, zero		# 0001ba54:02202025	
		osStartThread(&object_at_x800680a0.xb0);
		//	lw		ra, $0024(sp)		# 0001ba58:8fbf0024	
		//	lw		s0, $001c(sp)		# 0001ba5c:8fb0001c	
		//	lw		s1, $0020(sp)		# 0001ba60:8fb10020	
		//	jr		ra			# 0001ba64:03e00008	
		//	addiu		sp, sp, $0028		# 0001ba68:27bd0028	
		//	nop					# 0001ba6c:00000000	
	}

	enum OsMesgFlag
	{
		OS_MESG_NO_BLOCK = 0,
		OS_MESG_BLOCK = 1
	}

	// RAM GREECE 0001ba70
	/// Copies the first message in the message queue into the address specified by the msg argument
	static int osRecvMesg(uint messageQueue, uint message, OsMesgFlag flag) {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
		//N64.fnc000236cc();
		//N64.fnc00023814();
		//osStartThread();
		//N64.fnc000239d0();
		return 0;
	}

	// RAM GREECE
	/// 0001bbb0
	static void osVirtualToPhysical() {
		//N64.__osProbeTLB();
	}

	/// Possible file boundary

	// RAM GREECE
	/// 0001bc30
	static void osAiSetNextBuffer() {
		//N64.fnc00024010();
		//osVirtualToPhysical();
	}

	// RAM GREECE
	/// 0001bce0
	static void osAiGetLength() {
	}

	// RAM GREECE
	static void fnc0001bcf8() {
	}

	// RAM GREECE
	static void fnc0001bd50() {
		//alUnlink();
		//alLink();
	}

	// RAM GREECE
	static void fnc0001bd88() {
		//alUnlink();
		//alLink();
	}

	// RAM GREECE
	static void fnc0001bde8() {
	}

	// RAM GREECE
	static void fnc0001be00() {
	}

	// RAM GREECE
	/// 0001be38
	static void alAudioFrame() {
		//fnc0001bd88();
	}

	// RAM GREECE
	static void fnc0001c0d0() {
		//alHeapDBAlloc();
		//N64.fnc00024040();
		//alHeapDBAlloc();
		//alHeapDBAlloc();
		//N64.fnc000240d8();
		//alHeapDBAlloc();
		//alHeapDBAlloc();
		//N64.fnc00024084();
		//N64.fnc000247e0();
		//N64.fnc00024880();
		//alHeapDBAlloc();
		//alLink();
		//N64.fnc000241b4();
		//N64.fnc000249d0();
		//N64.fnc0002412c();
		//N64.fnc00025520();
		//N64.fnc0002425c();
		//N64.fnc00025934();
		//N64.fnc00026480();
		//N64.fnc00026590();
		//alHeapDBAlloc();
	}

	// RAM GREECE
	/// 0001c3d0
	static void osSendMesg() {
		//N64.fnc000239b0();
		//N64.fnc000236cc();
		//N64.fnc000239d0();
		//N64.fnc00023814();
		//osStartThread();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	/// 0001c520
	static void osPiStartDma() {
		//N64.fnc000267a0();
		//N64.fnc00026650();
		//N64.fnc000267a0();
		//osSendMesg();
	}

	// RAM GREECE
	static void fnc0001c630() {
		//N64.fnc00026b90();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026bd4();
	}

	// RAM GREECE
	static void fnc0001c798() {
		//N64.fnc00026b90();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026bd4();
	}

	// RAM GREECE
	static void fnc0001c904() {
		//N64.fnc00026cb0();
	}

	// RAM GREECE
	/// osMotorInit ?
	static void fnc0001ca80() {
		//N64.fnc00026e30();
		//N64.fnc00026e30();
		//N64.fnc000271b0();
		//fnc0001c904();
		//fnc0001c904();
	}

	/// Possible file boundary

	// RAM GREECE
	static void fnc0001cc50() {
	}

	// RAM GREECE
	/// osSyncPrintf
	static void fnc0001cc6c() {}
	static void fnc0001cc6c(string formatString) {}
	static void fnc0001cc6c(T)(string formatString, T a0) {}

	// RAM 0001cc90
	/// OSEvent e
	/// OSMesgQueue *mq
	/// OSMesg m
	/// It associates a message queue and message with an event, which usually corresponds to an interrupt or an exception of some kind.
	/// When an event occurs, the message registered with osSetEventMesg is sent to the associated message queue.
	/// The message sending is of the non-blocking form; if the message queue is full, the message is dropped.
	static void osSetEventMesg() {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	/// 0001cd00
	static void osContInit() {
		//N64.fnc00027540();
		//__ll_mul();
		//__ull_div();
		//osCreateMesgQueue();
		//__ll_mul();
		//__ull_div();
		//N64.fnc000275d0();
		//osRecvMesg();
		//fnc0001cfc8();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026c00();
		//osRecvMesg();
		//fnc0001cef8();
		//N64.fnc00026b40();
		//osCreateMesgQueue();
	}

	// RAM GREECE
	static void fnc0001cef8() {
	}

	// RAM GREECE
	static void fnc0001cfc8() {
	}

	// RAM GREECE
	/// 0001d0c0
	static void osEepromProbe() {
		//N64.fnc00026b90();
		//N64.fnc0002796c();
		//N64.fnc00026bd4();
	}

	// RAM GREECE
	/// 0001d130
	static void osContSetCh() {
		//N64.fnc00026b90();
		//N64.fnc00026bd4();
	}

	/// Possible file boundary

	// RAM GREECE
	/// 0001d1a0
	static void __ull_rshift() {
	}

	// RAM GREECE
	static void fnc0001d1cc() {
	}

	// RAM GREECE
	/// 0001d208
	static Tuple!(int, int) __ull_div() {
		return tuple(0,0);
	}

	// RAM GREECE
	/// 0001d244
	static void __ll_lshift() {
	}

	// RAM GREECE
	static void fnc0001d270() {
	}

	// RAM GREECE
	static void fnc0001d2ac() {
	}

	// RAM GREECE
	/// 0001d308
	static Tuple!(int, int) __ll_mul(int a0, int a1, int a2, int a3) {
		return tuple(0,0);
	}

	// RAM GREECE
	static void fnc0001d338() {
	}

	// RAM GREECE
	static void fnc0001d398() {
	}

	// RAM GREECE
	static void fnc0001d434() {
	}

	// RAM GREECE
	/// 0001d460
	static void osEepromLongWrite() {
		//N64.fnc000276b0();
		//__ll_mul();
		//__ull_div();
		//N64.fnc000275d0();
		//osRecvMesg();
	}

	// RAM GREECE
	/// eepRomRead ?
	static void fnc0001d5a0() {
		//N64.fnc00027b90();
		//__ll_mul();
		//__ull_div();
		//N64.fnc000275d0();
		//osRecvMesg();
	}

	// RAM GREECE
	/// 0001d6e0
	static void osContStartReadData() {
		//N64.fnc00026b90();
		//fnc0001d84c();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026c00();
		//N64.fnc00026bd4();
	}

	// RAM GREECE
	/// 0001d7a4
	static void osContGetReadData() {
	}

	// RAM GREECE
	static void fnc0001d84c() {
	}

	// RAM GREECE
	/// 0001d940
	static void sqrtf() {
	}

	// RAM 0001d950
	static void coss() {
		//sins();
	}

	// RAM 0001d980
	static void sins() {
	}

	// RAM GREECE
	static void fnc0001d9e8() {
	}

	// RAM GREECE
	static void fnc0001d9f0() {
		//N64.fnc00027f90();
	}

	// RAM 0001db44
	static void guOrtho() {
		//fnc0001d9f0();
		//N64.fnc00027e90();
	}

	// RAM GREECE
	static void fnc0001dbb0() {
		//N64.fnc00027f90();
		//sqrtf();
		//sqrtf();
		//sqrtf();
	}

	// RAM 0001de68
	static void guLookAt() {
		//fnc0001dbb0();
		//N64.fnc00027e90();
	}

	// RAM GREECE
	static void fnc0001dee0() {
		//N64.fnc00028100();
		//sinf();
		//cosf();
		//N64.fnc00027f90();
	}

	// RAM 0001e074
	static void guRotate() {
		//fnc0001dee0();
		//N64.fnc00027e90();
	}

	// RAM GREECE
	static void fnc0001e0d0() {
		//N64.__osGetSR();
		//N64.__osSetSR();
		//N64.__osSetFpcCsr();
		//N64.fnc000281c0();
		//N64.fnc000281c0();
		//N64.fnc00028210();
		//N64.fnc00028210();
		//N64.fnc00028260();
		//CopyRomToRamIn32ByteChunks();
		//N64.osMapTLBRdb();
		//N64.fnc00028340();
		//__ll_mul();
		//__ull_div();
		//_blkclr();
	}

	// RAM GREECE
	static void fnc0001e360() {
		//N64.fnc00027f90();
		//cosf();
		//sinf();
	}

	// RAM 0001e590
	static void guPerspective() {
		//fnc0001e360();
		//N64.fnc00027e90();
	}

	// RAM GREECE
	/// 0001e5f0
	static void sinf() {
	}

	// RAM GREECE
	static void fnc0001e668() {
	}

	// RAM GREECE
	static void fnc0001e670() {
	}

	// RAM GREECE
	static void fnc0001e76c() {
	}

	// RAM GREECE
	static void fnc0001e788() {
	}

	// RAM GREECE
	static void fnc0001e7a4() {
	}

	// RAM GREECE
	/// 0001e7b0
	static void cosf() {
	}

	// RAM GREECE
	static void fnc0001e8d4() {
	}

	// RAM GREECE
	static void fnc0001e8f0() {
	}

	// RAM GREECE
	static void fnc0001e90c() {
	}

	// RAM GREECE
	/// 0001e920
	/// Clear a memory block with zeros
	static void _blkclr(int startAddress, int size) {
	}

	// RAM 0001e9c0
	/// OSPri pri - Priority (Normally, use OS_PRIORITY_VIMGR) 
	/// The VI manager is a system thread that must be created and invoked at the beginning of the appliation.
	/// To do this, call osCreateViManager() for the VI manager to allow vertical retrace interrupt to occur at an early stage.
	/// Usually, this priority should be set to OS_PRIORITY_VIMGR.
	/// The VI manager is designed to service both the VI interrupt (OS_EVENT_VI) and CPU counter interrupt(OS_EVENT_COUNTER) in the most efficient manner.
	/// Each interrupting event can be performed using osViSetEvent or osSetTimer. 
	static void osCreateViManager(OS.Priority priority) {
		//N64.fnc000283a0();
		//osCreateMesgQueue();
		//osSetEventMesg();
		//osSetEventMesg();
		//N64.osGetThreadPri();
		//osSetThreadPri();
		//N64.fnc000239b0();
		//osCreateThread();
		//N64.fnc000287c0();
		//osStartThread();
		//N64.fnc000239d0();
		//osSetThreadPri();
	}

	// RAM GREECE
	static void fnc0001eb48() {
		//N64.fnc00028900();
		//osRecvMesg();
		//N64.osViSwapContext();
		//N64.fnc00028900();
		//osSendMesg();
		//osGetCount();
		//osGetCount();
		//N64.fnc0002842c();
	}

	// RAM 0001ed80
	/// OSViMode *mode - VI mode 
	/// This function sets the display mode in the VI.
	/// The VI supports a total of 56 display modes.
	/// These break down into 14 NTSC modes, 14 PAL modes, 14 MPAL modes, and 14 full-screen display PAL (FPAL) modes.
	/// The attributes of each mode, such as interlace and non-interlace, 16-bit color pixels and 32-bit color pixels, low-resolution and high-resolution, etc., can be set.
	/// In addition, the resolution can be dropped or images can be rescaled in order to increase rendering speed.
	/// The 56 modes are indicated by 5 switches, viz., high/low resolution, 16/32-bit color pixels, anti-aliasing/point sampling, filter/non-filter processing, and NTSC/PAL/MPAL/FPAL format.
	static void osViSetMode(int OSVIMode) {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	/// 0001edf0
	/// Registers the head address of the frame buffer to be displayed at the next vertical retrace interrupt. 
	static void osViSwapBuffer(int headOfFrameBuffer) {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	static void fnc0001ee40(int a0, uint a1, uint a2, int a3) {
		//osCreateMesgQueue();
		//osCreateMesgQueue();
		//N64.fnc00028e60();
		//osSetEventMesg();
		//N64.osGetThreadPri();
		//osSetThreadPri();
		//N64.fnc000239b0();
		//osCreateThread();
		//osStartThread();
		//N64.fnc000239d0();
		//osSetThreadPri();
	}

	// RAM 0001efd0
	/// The osSetThreadPri call sets the priority of thread specified by the t argument to the value specified by the pri argument.
	/// If t is NULL, then the priority of the current thread is set.
	/// As with osCreateThread, the priority value should range from OS_PRIORITY_IDLE (0) to OS_PRIORITY_APPMAX (127).
	/// If t is runnable or blocked waiting to send or receive a message, it is a member of a priority-ordered queue.
	/// The osSetThreadPri call may cause the queue to be reordered to reflect the change in priority.
	/// In addition, if the thread becomes the highest priority runnable thread, the caller of osSetThreadPri immediately yields the CPU and the thread t will be allowed to run. 
	/// OSThread *t, OSPri pri
	static void osSetThreadPri(int a0, int priority) {
		//N64.fnc000239b0();
		//N64.fnc00023060();
		//N64.fnc000237cc();
		//N64.fnc000236cc();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	/// 0001f0b0
	static void osStopThread() {
		//N64.fnc000239b0();
		//N64.fnc000236cc();
		//N64.fnc00023060();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	/// 0001f170
	static void osDestroyThread() {
		//N64.fnc000239b0();
		//N64.fnc00023060();
		//N64.fnc00023824();
		//N64.fnc000239d0();
	}

	// RAM 0001f270
	/// OSMesgQueue *mq - Message queue address
	/// OSMesg msg - Message announced when vertical retrace occurs
	/// u32 retraceCount
	/// This function registers the specified message queue and message in the VI manager.
	/// The program can thus receive the message (msg) announced by the message queue (mq)) from the VI manager when a vertical retrace occurs.
	/// The send cycle for the message is changed according to the value set in the retrace count (retraceCount).
	/// For instance, while the cycle is 60Hz when this is set to 1, it becomes a low speed 30Hz when it is set to 2, decreasing the frequency at which the application receives the vertical retrace announcement (message send cycle = 60Hz/retrace count). 
	static void osViSetEvent() {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	/// 0001f2e0
	static void osWritebackDCacheAll() {
	}

	// RAM GREECE 0001f310
	/// Turns special VI functions ON/OFF. 
	static void osViSetSpecialFeatures(OS.ViSpecialFeature flags) {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	/// 0001f4d0
	static void osViBlack(bool enableBlackout) {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM 0001f540
	/// It returns the current value of the MIPS R4300 Count register
	/// A free running counter that increments at half the CPU clock speed.
	/// This counter increments at 46.875 Mhz and each counter tick represents
	/// approximately 21.33 nanoseconds.
	/// When the counter reaches its maximum value, it will roll over to zero and continue.
	/// Because the counter is 32 bits long, the counter will wrap approximately every 92 seconds.
	public static uint osGetCount()
	{
		return 0;
	}

	// RAM GREECE
	/// 0001f550
	static void osViSetYScale() {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	/// 0001f5b0
	static void osViSetXScale() {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	/// 0001f6e0
	static void osPiGetStatus() {
	}

	// RAM 0001f6f0
	static void CopyRomToRamIn32ByteChunks(int copyDestination, int copySize)
	{
		//	blez		a1, $0001f738		# 0001f6f0:18a00011	v __0001f738
		//	nop					# 0001f6f4:00000000	
		if (copySize <= 0)
		{
			return;
		}
		//	addiu		t3, zero, $4000		# 0001f6f8:240b4000	t3=$00004000
		//	sltu		at, a1, t3		# 0001f6fc:00ab082b	
		//	beq		at, zero, $0001f740	# 0001f700:1020000f	v __0001f740
		//	nop					# 0001f704:00000000	
		if (copySize < 0x4000)
		{
			//	or		t0, a0, zero		# 0001f708:00804025	
			//	addu		t1, a0, a1		# 0001f70c:00854821	
			//	sltu		at, t0, t1		# 0001f710:0109082b	
			//	beq		at, zero, $0001f738	# 0001f714:10200008	v __0001f738
			//	nop					# 0001f718:00000000	
			if (copyDestination >= copyDestination + copySize)
			{
				return;
			}
			//	andi		t2, t0, $001f		# 0001f71c:310a001f	
			uint t2 = copyDestination & 0x1f;
			//	addiu		t1, t1, $ffe0		# 0001f720:2529ffe0	
			uint t1 = copyDestination + copySize - 0x20;
			//	subu		t0, t0, t2		# 0001f724:010a4023	
			uint t0 = copyDestination - t2;
			bool result;
			do
			{
				//__0001f728:					# 
				//	cache		dxltg, $0000(t0)	# 0001f728:bd100000	
				// Copy 0x20 of data from ROM ?
				//	sltu		at, t0, t1		# 0001f72c:0109082b	
				result = t0 < t1;
				//	bne		at, zero, $0001f728	# 0001f730:1420fffd	^ __0001f728
				//	addiu		t0, t0, $0020		# 0001f734:25080020	
				t0 += 0x20;
			} while (result);
			//__0001f738:					# 
			//	jr		ra			# 0001f738:03e00008	
			//	nop					# 0001f73c:00000000	
			return;
		}
		//__0001f740:					# 
		//	lui		t0, $8000		# 0001f740:3c088000	t0=$80000000
		uint t0 = 0x80000000;
		//	addu		t1, t0, t3		# 0001f744:010b4821	
		uint t1 = 0x80004000;
		//	addiu		t1, t1, $ffe0		# 0001f748:2529ffe0	
		t1 -= 0x20;
		bool result;
		do
		{
			//__0001f74c:					# 
			//	cache		ixltg, $0000(t0)	# 0001f74c:bd000000	
			// Copy 0x20 of data from ROM ?
			//	sltu		at, t0, t1		# 0001f750:0109082b	
			result = t0 < t1;
			//	bne		at, zero, $0001f74c	# 0001f754:1420fffd	^ __0001f74c
			//	addiu		t0, t0, $0020		# 0001f758:25080020	t0=$80000020
			t0 += 0x20;
		} while (result);
		//	jr		ra			# 0001f75c:03e00008	
		//	nop					# 0001f760:00000000	
		//	nop					# 0001f764:00000000	
		//	nop					# 0001f768:00000000	
		//	nop					# 0001f76c:00000000	
	}

	// RAM 0001f770
	static void CopyRomToRamIn16ByteChunks(uint a0, int a1)
	{
		//	blez		a1, $0001f7f0		# 0001f770:18a0001f	v __0001f7f0
		//	nop					# 0001f774:00000000	
		if (a1 <= 0)
		{
			return;
		}
		//	addiu		t3, zero, $2000		# 0001f778:240b2000	t3=$00002000
		//	sltu		at, a1, t3		# 0001f77c:00ab082b	
		//	beq		at, zero, $0001f7f8	# 0001f780:1020001d	v __0001f7f8
		//	nop					# 0001f784:00000000	
		if (a1 < 0x2000)
		{
			//	or		t0, a0, zero		# 0001f788:00804025	
			//	addu		t1, a0, a1		# 0001f78c:00854821	
			uint t1 = a0 + a1;
			//	sltu		at, t0, t1		# 0001f790:0109082b	
			//	beq		at, zero, $0001f7f0	# 0001f794:10200016	v __0001f7f0
			//	nop					# 0001f798:00000000	
			if (a0 >= t1)
			{
				return;
			}
			//	andi		t2, t0, $000f		# 0001f79c:310a000f	
			uint t2 = a0 & 0xf;
			//	beq		t2, zero, $0001f7c0	# 0001f7a0:11400007	v __0001f7c0
			//	addiu		t1, t1, $fff0		# 0001f7a4:2529fff0	
			t1 -= 0x10;
			if (t2 != 0)
			{
				//	subu		t0, t0, t2		# 0001f7a8:010a4023	
				a0 = a0 - t2;
				//	cache		$21, $0000(t0)		# 0001f7ac:bd150000	

				//	sltu		at, t0, t1		# 0001f7b0:0109082b	
				//	beq		at, zero, $0001f7f0	# 0001f7b4:1020000e	v __0001f7f0
				//	nop					# 0001f7b8:00000000	
				if (a0 >= t1)
				{
					return;
				}
				//	addiu		t0, t0, $0010		# 0001f7bc:25080010	
				a0 += 0x10;
			}
			
			//__0001f7c0:					# 
			//	andi		t2, t1, $000f		# 0001f7c0:312a000f	
			//	beq		t2, zero, $0001f7e0	# 0001f7c4:11400006	v __0001f7e0
			//	nop					# 0001f7c8:00000000	
			if ((t1 & 0xf) > 0)
			{
				//	subu		t1, t1, t2		# 0001f7cc:012a4823	
				t1 -= (t1 & 0xf);
				//	cache		$21, $0010(t1)		# 0001f7d0:bd350010	

				//	sltu		at, t1, t0		# 0001f7d4:0128082b	
				//	bne		at, zero, $0001f7f0	# 0001f7d8:14200005	v __0001f7f0
				//	nop					# 0001f7dc:00000000	
				if (t1 < a0)
				{
					return;
				}
			}
			//__0001f7e0:					# 
			bool result;
			do
			{
				//	cache		dxldt, $0000(t0)	# 0001f7e0:bd110000	

				//	sltu		at, t0, t1		# 0001f7e4:0109082b	
				result = a0 < t1;
				//	bne		at, zero, $0001f7e0	# 0001f7e8:1420fffd	^ __0001f7e0
				//	addiu		t0, t0, $0010		# 0001f7ec:25080010	
				a0 += 0x10;
			} while (result);
			//__0001f7f0:					# 
			//	jr		ra			# 0001f7f0:03e00008	
			//	nop					# 0001f7f4:00000000	
			return;
		}
		//__0001f7f8:					# 
		//	lui		t0, $8000		# 0001f7f8:3c088000	t0=$80000000
		uint t0 = 0x80000000;
		//	addu		t1, t0, t3		# 0001f7fc:010b4821	
		//	addiu		t1, t1, $fff0		# 0001f800:2529fff0	
		uint t1 = t0 + 0x1ff0;
		bool result;
		do
		{
			//__0001f804:					# 
			//	cache		ixldt, $0000(t0)	# 0001f804:bd010000	

			//	sltu		at, t0, t1		# 0001f808:0109082b	
			result = a0 < t1;
			//	bne		at, zero, $0001f804	# 0001f80c:1420fffd	^ __0001f804
			//	addiu		t0, t0, $0010		# 0001f810:25080010	t0=$80000010
			a0 += 0x10;
		} while (result);
		//	jr		ra			# 0001f814:03e00008	
		return;
		//	nop					# 0001f818:00000000	
		//	nop					# 0001f81c:00000000	
	}

	// RAM GREECE
	/// 0001f820
	/// a0 sndp is the pointer to a sound player
	/// a1 id is a unique number that identifies a sound within a sound player;
	///  this id is returned when the sound is allocated to the sound player
	/// It sets the current target to the sound specified by the id argument.
	/// Future calls to routines that set arguments refer to the target sound.
	static void alSndpSetSound() {
	}

	// RAM GREECE
	/// 0001f840
	/// a0 sndp is the pointer to a sound player
	/// It gets the play state of the current target sound.
	/// To set the target sound, call alSndpSetSound.
	/// Possible states are AL_PLAYING, AL_STOPPING, and AL_STOPPED:
	/// AL_PLAYING means the sound is currently playing
	/// AL_STOPPING means the sound is in its release phase
	/// AL_STOPPED means the sound is no longer playing
	static void alSndpGetState() {
	}

	// RAM GREECE
	static void fnc0001f860() {
	}

	// RAM GREECE
	static void fnc0001f8a0() {
	}

	// RAM GREECE
	static void fnc0001f8b0() {
	}

	// RAM GREECE
	static void fnc0001f9a4() {
		//fnc0001f8b0();
		//fnc0001f8b0();
	}

	// RAM GREECE
	static void fnc0001faa8() {
	}

	// RAM GREECE
	static void fnc0001faf0() {
		//N64.fnc00021dbc();
		//N64.fnc0002b11c();
	}

	// RAM GREECE
	static void fnc0001fb60() {
	}

	// RAM GREECE
	static void fnc0001fb88() {
	}

	// RAM GREECE
	static void fnc0001fb9c() {
		//fnc0001fb60();
		//alUnlink();
		//alLink();
		//N64.osSetIntMask();
		//alLink();
		//alLink();
		//N64.osSetIntMask();
	}

	// RAM GREECE
	static void fnc0001fd6c() {
		//N64.fnc00029dc0();
		//N64.fnc00029d50();
		//N64.fnc0002b6d8();
		//N64.fnc0002b820();
		//N64.fnc0002b11c();
		//N64.fnc0002b11c();
		//N64.fnc00029c94();
		//N64.fnc00029874();
		//N64.fnc0002b870();
		//N64.fnc0002b11c();
		//N64.fnc0002b11c();
		//N64.fnc00029cdc();
		//N64.fnc000298fc();
		//N64.fnc00029cdc();
		//N64.fnc00029874();
		//N64.fnc00029850();
		//N64.fnc0002b4c0();
		//N64.fnc00029874();
		//N64.fnc00029850();
		//N64.fnc0002b4c0();
		//N64.fnc00029c94();
		//N64.fnc0002b960();
		//N64.fnc00029874();
		//N64.fnc00029850();
		//N64.fnc0002b4c0();
		//N64.fnc000298fc();
		//N64.fnc0002b9f0();
		//N64.fnc000296c0();
		//N64.fnc0002b820();
		//N64.fnc0002b560();
	}

	// RAM GREECE
	static void fnc00020594() {
		//N64.fnc000216d4();
		//fnc0001fd6c();
		//fnc0001faf0();
		//fnc0001fb9c();
		//fnc0001faf0();
		//N64.fnc0002b11c();
		//fnc0001faf0();
		//N64.fnc0002b11c();
		//N64.fnc0002b390();
		//N64.fnc0002b410();
		//N64.fnc0002ad00();
		//N64.fnc00029ad0();
		//N64.fnc00029874();
		//N64.fnc0002b4c0();
		//N64.fnc00029874();
		//N64.fnc00029850();
		//N64.fnc0002b4c0();
		//N64.fnc0002b11c();
		//N64.fnc0002b560();
		//N64.fnc0002b11c();
		//fnc0001fd6c();
		//fnc0001fb9c();
		//N64.fnc00029874();
		//N64.fnc00029850();
		//N64.fnc0002b4c0();
		//fnc0001faf0();
		//N64.fnc0002b390();
		//N64.fnc0002b410();
		//N64.fnc0002ad00();
		//N64.fnc00029ad0();
		//N64.fnc0002b000();
		//N64.fnc0002b000();
		//N64.fnc0002b000();
		//N64.fnc00029a28();
		//N64.fnc000298fc();
		//N64.fnc0002b11c();
		//fnc0001fb60();
		//N64.fnc00029794();
		//N64.fnc00029794();
		//N64.fnc0002b240();
	}

	// RAM GREECE
	static void fnc00020bb0() {
		//alHeapDBAlloc();
		//N64.fnc0002ae04();
		//alHeapDBAlloc();
		//alHeapDBAlloc();
		//N64.fnc0002b2cc();
		//N64.fnc0002b340();
	}

	// RAM GREECE
	static void fnc00020d20() {
		//N64.osSetIntMask();
		//alUnlink();
		//alLink();
		//N64.osSetIntMask();
	}

	// RAM GREECE
	static void fnc00020d9c() {
	}

	// RAM GREECE
	static void fnc00020dac() {
		//N64.fnc0002b11c();
		//N64.fnc0002b6d8();
		//N64.fnc0002ba90();
		//N64.fnc0002b960();
		//N64.fnc0002b4c0();
		//N64.fnc0002b560();
		//N64.fnc0002b9f0();
		//N64.fnc0002b11c();
		//N64.fnc0002b4c0();
		//N64.fnc0002b11c();
		//N64.fnc0002b390();
		//N64.fnc0002b410();
		//N64.fnc00020d20();
		//N64.fnc0002b960();
		//N64.fnc0002b560();
		//N64.fnc0002b9f0();
		//N64.fnc0002b4c0();
		//N64.fnc0002b4c0();
		//N64.fnc0002b11c();
		//N64.fnc0002b390();
		//N64.fnc0002b410();
		//N64.fnc00020d20();
		//N64.fnc0002b240();
	}

	// RAM GREECE
	static void fnc000212f4() {
		//alHeapDBAlloc();
		//alHeapDBAlloc();
		//N64.fnc0002b2cc();
		//N64.fnc0002b340();
		//N64.fnc0002b11c();
		//N64.fnc0002b240();
	}

	// RAM GREECE
	static void fnc00021430() {
		//N64.fnc0002b11c();
	}

	// RAM GREECE
	static void fnc00021470() {
	}

	// RAM GREECE
	static void fnc00021510() {
	}

	// RAM GREECE
	static void fnc000215b0() {
	}

	// RAM GREECE
	static void fnc000215f4() {
	}

	// RAM GREECE
	static void fnc00021674() {
		//N64.fnc000215b0();
		//N64.fnc000215b0();
	}

	// RAM GREECE
	static void fnc000216d4() {
		//N64.fnc000215b0();
		//N64.fnc000215b0();
		//N64.fnc000215b0();
		//N64.fnc000215b0();
		//N64.fnc000215b0();
		//N64.fnc000215b0();
		//N64.fnc000215b0();
		//N64.fnc000215b0();
		//N64.fnc000215b0();
		//N64.fnc00021674();
		//N64.fnc00021674();
	}

	// RAM GREECE
	static void fnc000219cc() {
		//N64.fnc00021674();
	}

	// RAM GREECE
	static void fnc00021ae0() {
		//N64.fnc000219cc();
		//N64.fnc000216d4();
	}

	// RAM GREECE
	static void fnc00021c4c() {
	}

	// RAM GREECE
	static void fnc00021d28() {
	}

	// RAM GREECE
	static void fnc00021d34() {
	}

	// RAM GREECE
	static void fnc00021d50() {
	}

	// RAM GREECE
	static void fnc00021dbc() {
	}

	// RAM GREECE
	static void fnc00021dd8() {
	}

	// RAM GREECE
	static void fnc00021f30() {
		N64.fnc0002b11c();
	}

	// RAM GREECE
	static void fnc00021f70() {
		//N64.fnc0002b11c();
	}

	// RAM GREECE
	static void fnc00021fb0() {
		//N64.fnc0002b11c();
	}

	// RAM GREECE
	static void fnc00021fe0() {
	}

	// RAM GREECE
	static void fnc00022058() {
	}

	// RAM GREECE
	static void fnc00022080() {
	}

	// RAM GREECE
	static void fnc000220b0() {
		//N64.fnc0002b11c();
	}

	// RAM GREECE
	/// 00022110
	static void alSndpSetPitch() {
		//N64.fnc0002b11c();
	}

	// RAM GREECE
	/// 00022170
	static void alSndpSetVol() {
		//N64.fnc0002b11c();
	}

	// RAM GREECE
	/// 000221d0
	static void alSndpSetPan() {
		//N64.fnc0002b11c();
	}

	// RAM GREECE
	static void fnc00022230() {
		//N64.fnc0002b11c();
	}

	// RAM GREECE
	static void fnc000222a0() {
		//N64.fnc0002b11c();
	}

	// RAM GREECE
	static void fnc000222d0() {
	}

	// RAM GREECE
	/// 00022320
	static void alSndpStop() {
		//N64.fnc0002b11c();
	}

	// RAM GREECE
	/// 00022370
	static void alSeqpSetChlVol() {
		//N64.fnc0002b11c();
	}

	// RAM GREECE
	static void fnc000223d0() {
		//N64.fnc00027f90();
		//sqrtf();
		//sqrtf();
		//sqrtf();
	}

	// RAM GREECE
	/// 00022810
	static void guLookAtReflect() {
		//N64.fnc000223d0();
		//N64.fnc00027e90();
	}

	// RAM GREECE
	static void fnc00022890() {
		//N64.fnc00028100();
		//sinf();
		//cosf();
		//sqrtf();
		//N64.fnc00027f90();
	}

	// RAM GREECE
	static void fnc00022a50() {
		//N64.fnc00022890();
		//N64.fnc00027e90();
	}

	// RAM GREECE
	static void fnc00022aa0() {
		//N64.fnc00027f90();
	}

	// RAM GREECE
	static void fnc00022ae8() {
		//N64.fnc00027f90();
		//N64.fnc00027e90();
	}

	// RAM GREECE
	static void fnc00022b40() {
		//N64.fnc00027f90();
	}

	// RAM GREECE
	/// 00022b94
	static void guScale() {
		//N64.fnc00022b40();
		//N64.fnc00027e90();
	}

	// RAM GREECE
	static void fnc00022be0() {
		//sinf();
		//cosf();
		//sinf();
		//cosf();
		//sinf();
		//cosf();
		//N64.fnc00027f90();
	}

	// RAM GREECE
	static void fnc00022d2c() {
		//N64.fnc00022be0();
		//N64.fnc00027e90();
	}

	// RAM GREECE
	static void fnc00022d80() {
	}

	// RAM GREECE
	static void fnc00022e20() {
	}

	// RAM GREECE
	static void fnc00022f90() {
		//N64.fnc00028048();
		//N64.fnc00022d80();
	}

	// RAM GREECE
	static void fnc00022ff0() {
		//N64.fnc00028048();
		//N64.fnc00028048();
		//N64.fnc00022e20();
		//N64.fnc00027e90();
	}

	// RAM GREECE
	/// 00023050
	static void alSynDelete() {
	}

	// RAM GREECE
	static void fnc00023060() {
	}

	// RAM GREECE
	static void fnc000230a0() {
		//N64.fnc000235e4();
		//N64.fnc000235e4();
		//N64.fnc000235e4();
		//N64.fnc000235e4();
		//N64.fnc000235e4();
		//N64.fnc000235e4();
		//N64.fnc000235e4();
		//N64.fnc000235e4();
		//N64.fnc000235e4();
		//N64.fnc000235e4();
		//N64.fnc000235e4();
		//N64.fnc000235e4();
		//N64.fnc000235e4();
		//N64.fnc000237cc();
		//N64.fnc000235e4();
		//N64.fnc00023814();
		//N64.fnc000237cc();
		//N64.fnc000237cc();
	}

	// RAM GREECE
	/// This is actually part of the previous function
	static void fnc000235e4() {
	}

	// RAM GREECE
	/// This is actually part of the previous function
	static void fnc000236cc() {
	}

	// RAM GREECE
	/// This is actually part of the previous function
	static void fnc000237cc() {
	}

	// RAM GREECE
	static void fnc00023814() {
	}

	// RAM GREECE
	static void fnc00023824() {
		//N64.fnc00023814();
		//osDestroyThread();
	}

	// RAM GREECE
	/// This is actually the end of the previous function
	static void fnc000239b0() {
	}

	// RAM GREECE
	static void fnc000239d0() {
	}

	// RAM GREECE
	/// 000239F0
	static void osSetIntMask() {
	}

	// RAM GREECE
	static void fnc00023a90() {
		//N64.fnc0002c3a0();
	}

	// RAM GREECE
	static void fnc00023b10() {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	static void fnc00023b50() {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	static void fnc00023b90() {
		//N64.fnc0002c3b0();
		//osVirtualToPhysical();
		//osVirtualToPhysical();
		//osVirtualToPhysical();
		//osVirtualToPhysical();
		//osVirtualToPhysical();
		//osVirtualToPhysical();
		//osVirtualToPhysical();
	}

	// RAM GREECE
	static void fnc00023cac() {
		//N64.fnc00023b90();
		//N64.fnc00028260();
		//N64.fnc0002c6c0();
		//N64.fnc0002c6d0();
		//N64.fnc0002c6d0();
		//N64.fnc0002c710();
		//N64.fnc0002c710();
		//N64.fnc0002c7a0();
		//N64.fnc0002c7a0();
		//N64.fnc0002c710();
		//N64.fnc0002c710();
	}

	// RAM GREECE
	static void fnc00023e3c() {
		//N64.fnc0002c7a0();
		//N64.fnc0002c7a0();
		//N64.fnc0002c6c0();
	}

	// RAM GREECE
	static void fnc00023e80() {
		//N64.fnc0002c7d0();
		//osVirtualToPhysical();
		//osVirtualToPhysical();
	}

	// RAM GREECE
	static void fnc00023f30() {
		//N64.fnc0002c6c0();
	}

	// RAM GREECE
	/// 00023F50
	static void __osProbeTLB() {
	}

	// RAM GREECE
	static void fnc00024010() {
	}

	// RAM GREECE
	static void fnc00024040() {
		//N64.alFilterNew();
	}

	// RAM GREECE
	static void fnc00024084() {
		//N64.alFilterNew();
	}

	// RAM GREECE
	static void fnc000240d8() {
		//N64.alFilterNew();
	}

	// RAM GREECE
	static void fnc0002412c() {
		//N64.alFilterNew();
		//alHeapDBAlloc();
	}

	// RAM GREECE
	static void fnc000241b4() {
		//N64.alFilterNew();
		//alHeapDBAlloc();
		//alHeapDBAlloc();
	}

	// RAM GREECE
	static void fnc0002425c() {
		//N64.alFilterNew();
		//alHeapDBAlloc();
	}

	// RAM GREECE
	static void fnc00024300() {
	}

	// RAM GREECE
	static void fnc000243a0() {
		//N64.alFilterNew();
		//alHeapDBAlloc();
		//alHeapDBAlloc();
		//alHeapDBAlloc();
		//alHeapDBAlloc();
		//alHeapDBAlloc();
		//alHeapDBAlloc();
		//N64.fnc00024300();
	}

	// RAM GREECE
	static void fnc000247e0() {
		//N64.fnc000243a0();
		//N64.fnc0002d114();
		//N64.fnc00024880();
	}

	// RAM GREECE
	static void fnc00024880() {
	}

	// RAM GREECE
	static void fnc000248b0() {
	}

	// RAM GREECE
	static void fnc000249d0() {
		//N64.fnc0002d470();
	}

	// RAM GREECE
	static void fnc00024ba4() {
	}

	// RAM GREECE
	static void fnc00024f50() {
	}

	// RAM GREECE
	static void fnc0002507c() {
		//N64.fnc00024f50();
		//N64.fnc00024f50();
		//N64.fnc00024f50();
	}

	// RAM GREECE
	static void fnc00025520() {
	}

	// RAM GREECE
	static void fnc0002560c() {
		osVirtualToPhysical();
	}

	// RAM GREECE
	static void fnc00025820() {
	}

	// RAM GREECE
	static void fnc00025848() {
	}

	// RAM GREECE
	static void fnc00025870() {
	}

	// RAM GREECE
	static void fnc00025934() {
	}

	// RAM GREECE
	static void fnc00025a14() {
		//N64.fnc00025848();
	}

	// RAM GREECE
	static void fnc00025be4() {
		//N64.fnc00025a14();
		//N64.fnc00025a14();
		//osVirtualToPhysical();
		//osVirtualToPhysical();
	}

	// RAM GREECE
	static void fnc00025e7c() {
	}

	// RAM GREECE
	static void fnc00025ea8() {
	}

	// RAM GREECE
	static void fnc00025f2c() {
		//N64.fnc00025be4();
		//N64.fnc00025e7c();
		//N64.fnc00025e7c();
		//N64.fnc00025be4();
		//fnc0001bd50();
		//N64.fnc00025be4();
		//fnc0001bde8();
		//N64.fnc00025be4();
	}

	// RAM GREECE
	static void fnc00026480() {
	}

	// RAM GREECE
	static void fnc000264b0() {
	}

	// RAM GREECE
	static void fnc00026590() {
	}

	// RAM GREECE
	static void fnc000265b0() {
	}

	// RAM GREECE
	static void fnc000265b8() {
	}

	// RAM GREECE
	static void fnc000265c4() {
	}

	// RAM GREECE
	static void fnc00026650() {
		//N64.fnc000239b0();
		//N64.fnc000236cc();
		//N64.fnc000239d0();
		//N64.fnc00023814();
		//osStartThread();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	static void fnc000267a0() {
	}

	// RAM GREECE
	static void fnc000267b8() {
	}

	// RAM GREECE
	static void fnc000267d0() {
		//N64.fnc00026b90();
		//N64.fnc00026970();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026a6c();
		//N64.fnc00026bd4();
	}

	// RAM GREECE
	static void fnc00026970() {
	}

	// RAM GREECE
	static void fnc00026a6c() {
	}

	// RAM GREECE
	static void fnc00026b40() {
		//osCreateMesgQueue();
		//osSendMesg();
	}

	// RAM GREECE
	static void fnc00026b90() {
		//N64.fnc00026b40();
		//osRecvMesg();
	}

	// RAM GREECE
	static void fnc00026bd4() {
		//osSendMesg();
	}

	// RAM GREECE
	static void fnc00026c00() {
		//N64.fnc0002d4f0();
		//N64.fnc00028260();
		//osVirtualToPhysical();
		//CopyRomToRamIn16ByteChunks();
	}

	// RAM GREECE
	static void fnc00026cb0() {
	}

	// RAM GREECE
	static void fnc00026d60() {
	}

	// RAM GREECE
	static void fnc00026e30() {
		//N64.fnc00026b90();
		//N64.fnc00027034();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026d60();
		//N64.fnc0002d520();
		//N64.fnc00026bd4();
		//N64.fnc00026bd4();
	}

	// RAM GREECE
	static void fnc00027034() {
		//N64.fnc00026cb0();
	}

	// RAM GREECE
	static void fnc000271b0() {
		//N64.fnc00026b90();
		//N64.fnc000273cc();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026d60();
		//N64.fnc0002d520();
		//N64.fnc00026bd4();
		//N64.fnc00026bd4();
	}

	// RAM GREECE
	static void fnc000273cc() {
		//N64.fnc00026cb0();
	}

	// RAM GREECE
	static void fnc00027540() {
		//N64.fnc000239b0();
		//osGetCount();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	static void fnc000275d0() {
		//N64.fnc00028618();
		//N64.fnc000285a4();
	}

	// RAM GREECE
	static void fnc000276b0() {
		//N64.fnc00026b90();
		//N64.fnc0002796c();
		//N64.fnc0002796c();
		//N64.fnc00027860();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026bd4();
	}

	// RAM GREECE
	static void fnc00027860() {
	}

	// RAM GREECE
	static void fnc0002796c() {
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026c00();
		//osRecvMesg();
	}

	// RAM GREECE
	static void fnc00027b90() {
		//N64.fnc00026b90();
		//N64.fnc0002796c();
		//N64.fnc0002796c();
		//N64.fnc00027d80();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026bd4();
	}

	// RAM GREECE
	static void fnc00027d80() {
	}

	// RAM GREECE
	static void fnc00027e90() {
	}

	// RAM GREECE
	static void fnc00027f90() {
	}

	// RAM GREECE
	static void fnc00028018() {
		//N64.fnc00027f90();
		//N64.fnc00027e90();
	}

	// RAM GREECE
	static void fnc00028048() {
	}

	// RAM GREECE
	static void fnc00028100() {
		//sqrtf();
	}

	// RAM GREECE
	/// 00028190
	static void __osSetSR() {
	}

	// RAM GREECE
	/// 000281A0
	static void __osGetSR() {
	}

	// RAM GREECE
	/// 000281B0
	static void __osSetFpcCsr() {
	}

	// RAM GREECE
	static void fnc000281c0() {
		//N64.fnc0002d4f0();
	}

	// RAM GREECE
	static void fnc00028210() {
		//N64.fnc0002d4f0();
	}

	// RAM GREECE
	static void fnc00028260() {
	}

	// RAM GREECE
	static void fnc000282b0() {
	}

	// RAM GREECE
	/// 000282E0
	static void osMapTLBRdb() {
	}

	// RAM GREECE
	static void fnc00028340() {
	}

	// RAM GREECE
	static void fnc000283a0() {
	}

	// RAM GREECE
	static void fnc0002842c() {
		//N64.__osSetCompare();
		//osGetCount();
		//N64.fnc000285a4();
		//osSendMesg();
		//N64.fnc00028618();
	}

	// RAM GREECE
	static void fnc000285a4() {
		//N64.fnc000239b0();
		//osGetCount();
		//N64.__osSetCompare();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	static void fnc00028618() {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	/// 000287A0
	static void osGetThreadPri() {
	}

	// RAM GREECE
	static void fnc000287c0() {
		//_blkclr();
		//N64.osViSwapContext();
	}

	// RAM GREECE
	static void fnc00028900() {
	}

	// RAM 00028910
	static void osViSwapContext()
	{
		//	addiu		sp, sp, $ffb8		# 00028910:27bdffb8	
		//	sw		s1, $001c(sp)		# 00028914:afb1001c	
		//	sw		ra, $0024(sp)		# 00028918:afbf0024	
		//	sw		s2, $0020(sp)		# 0002891c:afb20020	
		//	sw		s0, $0018(sp)		# 00028920:afb00018	
		//	sw		zero, $0030(sp)		# 00028924:afa00030	
		//	lui		s1, $8003		# 00028928:3c118003	s1=$80030000
		//	lui		t6, $a440		# 0002892c:3c0ea440	t6=$a4400000
		//	lw		s1, $6734(s1)		# 00028930:8e316734	s1=$80036734
		//	lw		t7, $0010(t6)		# 00028934:8dcf0010	t7=$a4400010
		//	lw		s0, $0008(s1)		# 00028938:8e300008	s0=$80036708
		//	andi		t8, t7, $0001		# 0002893c:31f80001	
		//	sw		t8, $0030(sp)		# 00028940:afb80030	
		//	jal		$0001bbb0		# 00028944:0c006eec	^ FNC_0001bbb0
		//	lw		a0, $0004(s1)		# 00028948:8e240004	a0=$80036704
		osVirtualToPhysical(x80036734.buffer);
		//	lw		t9, $0030(sp)		# 0002894c:8fb90030	
		//	or		s2, v0, zero		# 00028950:00409025	
		//	sll		t0, t9, 2		# 00028954:00194080	
		//	addu		t0, t0, t9		# 00028958:01194021	
		//	sll		t0, t0, 2		# 0002895c:00084080	
		//	addu		t1, s0, t0		# 00028960:02084821	
		//	lw		t2, $0028(t1)		# 00028964:8d2a0028	
		//	addu		t3, t2, s2		# 00028968:01525821	
		//	sw		t3, $003c(sp)		# 0002896c:afab003c	
		//	lhu		t4, $0000(s1)		# 00028970:962c0000	t4=$80036700
		//	andi		t5, t4, $0002		# 00028974:318d0002	
		//	beq		t5, zero, $0002899c	# 00028978:11a00008	v __0002899c
		//	nop					# 0002897c:00000000	
		if ((x80036734.x0 & 2) != 0)
		{
			//	lw		t7, $0020(s0)		# 00028980:8e0f0020	t7=$800356f0
			//	lw		t6, $0020(s1)		# 00028984:8e2e0020	t6=$80036720
			//	addiu		at, zero, $f000		# 00028988:2401f000	at=$fffff000
			//	and		t8, t7, at		# 0002898c:01e1c024	
			//	or		t9, t6, t8		# 00028990:01d8c825	t9=$000001e6
			//	beq		zero, zero, $000289a4	# 00028994:10000003	v __000289a4
			//	sw		t9, $0020(s1)		# 00028998:ae390020	[80036720]
			x80036734.x20 |= x80036734.x8.x20 & 0xfffff000;
		}
		else
		{
			//__0002899c:					# 
			//	lw		t0, $0020(s0)		# 0002899c:8e080020	t0=$800356f0
			//	sw		t0, $0020(s1)		# 000289a0:ae280020	[80036720]
			x80036734.x20 = x80036734.x8.x20;
		}
		//__000289a4:					# 
		//	lhu		t1, $0000(s1)		# 000289a4:96290000	t1=$80036700
		//	andi		t2, t1, $0004		# 000289a8:312a0004	
		//	beq		t2, zero, $00028ab4	# 000289ac:11400041	v __00028ab4
		//	nop					# 000289b0:00000000	
		//	lw		t3, $0030(sp)		# 000289b4:8fab0030	
		//	sll		t4, t3, 2		# 000289b8:000b6080	
		//	addu		t4, t4, t3		# 000289bc:018b6021	
		//	sll		t4, t4, 2		# 000289c0:000c6080	
		//	addu		t5, s0, t4		# 000289c4:020c6821	
		//	lw		t7, $002c(t5)		# 000289c8:8daf002c	
		//	andi		t6, t7, $0fff		# 000289cc:31ee0fff	
		//	mtc1		t6, $f6			# 000289d0:448e3000	
		//	sw		t6, $0034(sp)		# 000289d4:afae0034	
		//	lwc1		$f4, $0024(s1)		# 000289d8:c6240024	
		//	bgez		t6, $000289f4		# 000289dc:05c10005	v __000289f4
		//	cvt.s.w		$f8, $f6		# 000289e0:46803220	
		//	lui		at, $4f80		# 000289e4:3c014f80	at=$4f800000
		//	mtc1		at, $f10		# 000289e8:44815000	
		//	nop					# 000289ec:00000000	
		//	add.s		$f8, $f8, $f10		# 000289f0:460a4200	
		//__000289f4:					# 
		//	mul.s		$f16, $f4, $f8		# 000289f4:46082402	
		//	addiu		t9, zero, $0001		# 000289f8:24190001	t9=$00000001
		//	cfc1		t8, $f31		# 000289fc:4458f800	
		//	ctc1		t9, $f31		# 00028a00:44d9f800	
		//	nop					# 00028a04:00000000	
		//	cvt.w.s		$f18, $f16		# 00028a08:460084a4	
		//	cfc1		t9, $f31		# 00028a0c:4459f800	
		//	nop					# 00028a10:00000000	
		//	andi		at, t9, $0004		# 00028a14:33210004	
		//	andi		t9, t9, $0078		# 00028a18:33390078	
		//	beq		t9, zero, $00028a6c	# 00028a1c:13200013	v __00028a6c
		//	lui		at, $4f00		# 00028a20:3c014f00	at=$4f000000
		//	mtc1		at, $f18		# 00028a24:44819000	
		//	addiu		t9, zero, $0001		# 00028a28:24190001	t9=$00000001
		//	sub.s		$f18, $f16, $f18	# 00028a2c:46128481	
		//	ctc1		t9, $f31		# 00028a30:44d9f800	
		//	nop					# 00028a34:00000000	
		//	cvt.w.s		$f18, $f18		# 00028a38:460094a4	
		//	cfc1		t9, $f31		# 00028a3c:4459f800	
		//	nop					# 00028a40:00000000	
		//	andi		at, t9, $0004		# 00028a44:33210004	
		//	andi		t9, t9, $0078		# 00028a48:33390078	
		//	bne		t9, zero, $00028a64	# 00028a4c:17200005	v __00028a64
		//	nop					# 00028a50:00000000	
		//	mfc1		t9, $f18		# 00028a54:44199000	
		//	lui		at, $8000		# 00028a58:3c018000	at=$80000000
		//	beq		zero, zero, $00028a7c	# 00028a5c:10000007	v __00028a7c
		//	or		t9, t9, at		# 00028a60:0321c825	
		//__00028a64:					# 
		//	beq		zero, zero, $00028a7c	# 00028a64:10000005	v __00028a7c
		//	addiu		t9, zero, $ffff		# 00028a68:2419ffff	t9=$ffffffff
		//__00028a6c:					# 
		//	mfc1		t9, $f18		# 00028a6c:44199000	
		//	nop					# 00028a70:00000000	
		//	bltz		t9, $00028a64		# 00028a74:0720fffb	^ __00028a64
		//	nop					# 00028a78:00000000	
		//__00028a7c:					# 
		//	sw		t9, $002c(s1)		# 00028a7c:ae39002c	
		//	lw		t1, $0030(sp)		# 00028a80:8fa90030	
		//	lw		t0, $002c(s1)		# 00028a84:8e28002c	
		//	addiu		at, zero, $f000		# 00028a88:2401f000	at=$fffff000
		//	sll		t2, t1, 2		# 00028a8c:00095080	
		//	addu		t2, t2, t1		# 00028a90:01495021	
		//	sll		t2, t2, 2		# 00028a94:000a5080	
		//	addu		t3, s0, t2		# 00028a98:020a5821	
		//	lw		t4, $002c(t3)		# 00028a9c:8d6c002c	
		//	ctc1		t8, $f31		# 00028aa0:44d8f800	
		//	and		t5, t4, at		# 00028aa4:01816824	
		//	or		t7, t0, t5		# 00028aa8:010d7825	
		//	beq		zero, zero, $00028ad0	# 00028aac:10000008	v __00028ad0
		//	sw		t7, $002c(s1)		# 00028ab0:ae2f002c	
		//__00028ab4:					# 
		//	lw		t6, $0030(sp)		# 00028ab4:8fae0030	
		//	sll		t8, t6, 2		# 00028ab8:000ec080	
		//	addu		t8, t8, t6		# 00028abc:030ec021	
		//	sll		t8, t8, 2		# 00028ac0:0018c080	
		//	addu		t9, s0, t8		# 00028ac4:0218c821	
		//	lw		t1, $002c(t9)		# 00028ac8:8f29002c	
		//	sw		t1, $002c(s1)		# 00028acc:ae29002c	
		//__00028ad0:					# 
		//	lw		t2, $001c(s0)		# 00028ad0:8e0a001c	
		//	sw		t2, $0038(sp)		# 00028ad4:afaa0038	
		//	lhu		t3, $0000(s1)		# 00028ad8:962b0000	
		//	andi		t4, t3, $0020		# 00028adc:316c0020	
		//	beq		t4, zero, $00028aec	# 00028ae0:11800002	v __00028aec
		//	nop					# 00028ae4:00000000	
		//	sw		zero, $0038(sp)		# 00028ae8:afa00038	
		//__00028aec:					# 
		//	lhu		t0, $0000(s1)		# 00028aec:96280000	
		//	andi		t5, t0, $0040		# 00028af0:310d0040	
		//	beq		t5, zero, $00028b0c	# 00028af4:11a00005	v __00028b0c
		//	nop					# 00028af8:00000000	
		//	sw		zero, $002c(s1)		# 00028afc:ae20002c	
		//	jal		$0001bbb0		# 00028b00:0c006eec	^ FNC_0001bbb0
		//	lw		a0, $0004(s1)		# 00028b04:8e240004	
		osVirtualToPhysical();
		//	sw		v0, $003c(sp)		# 00028b08:afa2003c	
		//__00028b0c:					# 
		//	lhu		t7, $0000(s1)		# 00028b0c:962f0000	
		//	andi		t6, t7, $0080		# 00028b10:31ee0080	
		//	beq		t6, zero, $00028b3c	# 00028b14:11c00009	v __00028b3c
		//	nop					# 00028b18:00000000	
		//	lhu		t8, $0028(s1)		# 00028b1c:96380028	
		//	lui		at, $03ff		# 00028b20:3c0103ff	at=$03ff0000
		//	lw		a0, $0004(s1)		# 00028b24:8e240004	
		//	sll		t9, t8, 16		# 00028b28:0018cc00	
		//	and		t1, t9, at		# 00028b2c:03214824	
		//	jal		$0001bbb0		# 00028b30:0c006eec	^ FNC_0001bbb0
		//	sw		t1, $002c(s1)		# 00028b34:ae29002c	
		osVirtualToPhysical();
		//	sw		v0, $003c(sp)		# 00028b38:afa2003c	
		//__00028b3c:					# 
		//	lw		t2, $003c(sp)		# 00028b3c:8faa003c	
		//	lui		t3, $a440		# 00028b40:3c0ba440	t3=$a4400000
		//	lui		t0, $a440		# 00028b44:3c08a440	t0=$a4400000
		//	sw		t2, $0004(t3)		# 00028b48:ad6a0004	[a4400004]
		//	lw		t4, $0008(s0)		# 00028b4c:8e0c0008	
		//	lui		t7, $a440		# 00028b50:3c0fa440	t7=$a4400000
		//	lui		t8, $a440		# 00028b54:3c18a440	t8=$a4400000
		//	sw		t4, $0008(t0)		# 00028b58:ad0c0008	[a4400008]
		//	lw		t5, $000c(s0)		# 00028b5c:8e0d000c	
		//	lui		t1, $a440		# 00028b60:3c09a440	t1=$a4400000
		//	lui		at, $8003		# 00028b64:3c018003	at=$80030000
		//	sw		t5, $0014(t7)		# 00028b68:aded0014	[a4400014]
		//	lw		t6, $0010(s0)		# 00028b6c:8e0e0010	
		//	sw		t6, $0018(t8)		# 00028b70:af0e0018	[a4400018]
		//	lw		t9, $0014(s0)		# 00028b74:8e190014	
		//	sw		t9, $001c(t1)		# 00028b78:ad39001c	[a440001c]
		//	lw		t2, $0018(s0)		# 00028b7c:8e0a0018	
		//	lui		t9, $a440		# 00028b80:3c19a440	t9=$a4400000
		//	sw		t2, $0020(t3)		# 00028b84:ad6a0020	[a4400020]
		//	lw		t4, $0038(sp)		# 00028b88:8fac0038	
		//	sw		t4, $0024(t0)		# 00028b8c:ad0c0024	[a4400024]
		//	lw		t5, $0030(sp)		# 00028b90:8fad0030	
		//	sll		t7, t5, 2		# 00028b94:000d7880	
		//	addu		t7, t7, t5		# 00028b98:01ed7821	
		//	sll		t7, t7, 2		# 00028b9c:000f7880	
		//	addu		t6, s0, t7		# 00028ba0:020f7021	
		//	lw		t8, $0030(t6)		# 00028ba4:8dd80030	
		//	sw		t8, $0028(t9)		# 00028ba8:af380028	[a4400028]
		//	lw		t1, $0030(sp)		# 00028bac:8fa90030	
		//	sll		t2, t1, 2		# 00028bb0:00095080	
		//	addu		t2, t2, t1		# 00028bb4:01495021	
		//	sll		t2, t2, 2		# 00028bb8:000a5080	
		//	addu		t3, s0, t2		# 00028bbc:020a5821	
		//	lw		t4, $0034(t3)		# 00028bc0:8d6c0034	
		//	lui		t2, $a440		# 00028bc4:3c0aa440	t2=$a4400000
		//	sw		t4, $002c(t0)		# 00028bc8:ad0c002c	[a440002c]
		//	lw		t5, $0030(sp)		# 00028bcc:8fad0030	
		//	lui		t4, $a440		# 00028bd0:3c0ca440	t4=$a4400000
		//	sll		t7, t5, 2		# 00028bd4:000d7880	
		//	addu		t7, t7, t5		# 00028bd8:01ed7821	
		//	sll		t7, t7, 2		# 00028bdc:000f7880	
		//	addu		t6, s0, t7		# 00028be0:020f7021	
		//	lw		t8, $0038(t6)		# 00028be4:8dd80038	
		//	lui		t5, $a440		# 00028be8:3c0da440	t5=$a4400000
		//	lui		t7, $8003		# 00028bec:3c0f8003	t7=$80030000
		//	sw		t8, $000c(t9)		# 00028bf0:af38000c	[a440000c]
		//	lw		t1, $0020(s1)		# 00028bf4:8e290020	
		//	lui		t8, $8003		# 00028bf8:3c188003	t8=$80030000
		//	lui		t6, $8003		# 00028bfc:3c0e8003	t6=$80030000
		//	sw		t1, $0030(t2)		# 00028c00:ad490030	[a4400030]
		//	lw		t3, $002c(s1)		# 00028c04:8e2b002c	
		//	sw		t3, $0034(t4)		# 00028c08:ad8b0034	[a4400034]
		//	lw		t0, $000c(s1)		# 00028c0c:8e28000c	
		//	sw		t0, $0000(t5)		# 00028c10:ada80000	[a4400000]
		//	lw		t7, $6730(t7)		# 00028c14:8def6730	t7=$80036730
		//	sw		t7, $6734(at)		# 00028c18:ac2f6734	
		//	lui		at, $8003		# 00028c1c:3c018003	at=$80030000
		//	sw		s1, $6730(at)		# 00028c20:ac316730	[80036730]
		//	lw		t8, $6730(t8)		# 00028c24:8f186730	t8=$80036730
		//	lw		t6, $6734(t6)		# 00028c28:8dce6734	t6=$80036734
		//	addiu		t2, t8, $0030		# 00028c2c:270a0030	t2=$80036700
		//__00028c30:					# 
		//	lw		at, $0000(t8)		# 00028c30:8f010000	at=$800366d0
		//	addiu		t8, t8, $000c		# 00028c34:2718000c	t8=$800366dc
		//	addiu		t6, t6, $000c		# 00028c38:25ce000c	t6=$8003670c
		//	sw		at, $fff4(t6)		# 00028c3c:adc1fff4	[80036700]
		//	lw		at, $fff8(t8)		# 00028c40:8f01fff8	at=$800366d4
		//	sw		at, $fff8(t6)		# 00028c44:adc1fff8	[80036704]
		//	lw		at, $fffc(t8)		# 00028c48:8f01fffc	at=$800366d8
		//	bne		t8, t2, $00028c30	# 00028c4c:170afff8	^ __00028c30
		//	sw		at, $fffc(t6)		# 00028c50:adc1fffc	[80036708]
		//	lw		ra, $0024(sp)		# 00028c54:8fbf0024	
		//	lw		s0, $0018(sp)		# 00028c58:8fb00018	
		//	lw		s1, $001c(sp)		# 00028c5c:8fb1001c	
		//	lw		s2, $0020(sp)		# 00028c60:8fb20020	
		//	jr		ra			# 00028c64:03e00008	
		//	addiu		sp, sp, $0048		# 00028c68:27bd0048	
	}

	// RAM GREECE
	static void fnc00028c70() {
		//N64.fnc00028340();
		//_blkclr();
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	static void fnc00028d60() {
		//_blkclr();
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	static void fnc00028e60() {
		//osCreateMesgQueue();
		//osSendMesg();
	}

	// RAM GREECE
	static void fnc00028eb0() {
		//N64.fnc00028e60();
		//osRecvMesg();
	}

	// RAM GREECE
	static void fnc00028ef4() {
		//osSendMesg();
	}

	// RAM GREECE
	static void fnc00028f20() {
		//osVirtualToPhysical();
	}

	// RAM GREECE
	static void fnc00029000() {
		//osVirtualToPhysical();
	}

	// RAM GREECE
	static void fnc00029230() {
		//osRecvMesg();
		//osRecvMesg();
		//N64.fnc0002d640();
		//N64.fnc0002d6a0();
		//osRecvMesg();
		//N64.fnc0002d6a0();
		//N64.fnc0002d6a0();
		//N64.fnc0002d6f0();
		//N64.fnc0002d6a0();
		//N64.fnc0002d740();
		//osSendMesg();
		//osSendMesg();
		//N64.fnc0002d790();
		//osRecvMesg();
		//osRecvMesg();
		//osRecvMesg();
		//osRecvMesg();
		//osSendMesg();
		//osRecvMesg();
		//osSendMesg();
		//osSendMesg();
	}

	// RAM GREECE
	static void fnc000296c0() {
	}

	// RAM GREECE
	static void fnc00029714() {
	}

	// RAM GREECE
	static void fnc00029794() {
		//N64.fnc00029714();
		//N64.fnc000296c0();
		//N64.fnc00029714();
		//N64.fnc000296c0();
	}

	// RAM GREECE
	static void fnc00029848() {
	}

	// RAM GREECE
	static void fnc0002986c() {
	}

	// RAM GREECE
	static void fnc00029850() {
	}

	// RAM GREECE
	static void fnc00029874() {
	}

	// RAM GREECE
	static void fnc000298fc() {
		//alUnlink();
		//alLink();
		//N64.alSynSetPriority();
		//N64.fnc0002b4c0();
		//N64.fnc0002b11c();
	}

	// RAM GREECE
	static void fnc00029a28() {
		//alUnlink();
		//alLink();
	}

	// RAM GREECE
	static void fnc00029ad0() {
	}

	// RAM GREECE
	static void fnc00029b28() {
	}

	// RAM GREECE
	static void fnc00029b40() {
		//N64.fnc0002dc50();
		//N64.fnc0002d818();
		//N64.fnc0002d7fc();
		//N64.fnc0002b11c();
	}

	// RAM GREECE
	static void fnc00029c1c() {
	}

	// RAM GREECE
	static void fnc00029c88() {
	}

	// RAM GREECE
	static void fnc00029c94() {
	}

	// RAM GREECE
	static void fnc00029cdc() {
	}

	// RAM GREECE
	static void fnc00029d38() {
	}

	// RAM GREECE
	static void fnc00029d50() {
	}

	// RAM GREECE
	static void fnc00029dc0() {
	}

	// RAM GREECE
	static void fnc00029e6c() {
	}

	// RAM GREECE
	static void fnc00029ebc() {
		//N64.fnc00029dc0();
		//N64.fnc00029d50();
		//N64.fnc0002b6d8();
		//N64.fnc0002b820();
		//N64.fnc0002b11c();
		//N64.fnc0002b11c();
		//N64.fnc00029c94();
		//N64.fnc00029874();
		//N64.fnc0002b870();
		//N64.fnc0002b11c();
		//N64.fnc00029cdc();
		//N64.fnc000298fc();
		//N64.fnc00029cdc();
		//N64.fnc00029874();
		//N64.fnc0002b4c0();
		//N64.fnc00029874();
		//N64.fnc0002b4c0();
		//N64.fnc00029c94();
		//N64.fnc0002b960();
		//N64.fnc00029874();
		//N64.fnc0002b4c0();
		//N64.fnc000298fc();
		//N64.fnc0002b9f0();
		//N64.fnc000296c0();
		//N64.fnc0002b820();
		//N64.fnc0002b560();
	}

	// RAM GREECE
	static void fnc0002a6d4() {
		//N64.fnc0002d874();
		//N64.fnc00029ebc();
		//N64.fnc00029b40();
		//N64.fnc00029c1c();
		//N64.fnc00029b40();
		//N64.fnc0002b11c();
		//N64.fnc0002b11c();
		//N64.fnc0002b390();
		//N64.fnc0002b410();
		//N64.fnc0002ad00();
		//N64.fnc00029ad0();
		//N64.fnc00029874();
		//N64.fnc0002b4c0();
		//N64.fnc00029874();
		//N64.fnc0002b4c0();
		//N64.fnc0002b11c();
		//N64.fnc0002b560();
		//N64.fnc0002b11c();
		//N64.fnc00029ebc();
		//N64.fnc00029c1c();
		//N64.fnc00029b40();
		//N64.fnc0002b390();
		//N64.fnc0002b410();
		//N64.fnc0002ad00();
		//N64.fnc00029ad0();
		//N64.fnc0002b000();
		//N64.fnc0002b000();
		//N64.fnc00029a28();
		//N64.fnc000298fc();
		//N64.fnc0002b11c();
		//N64.fnc00029874();
		//N64.fnc0002b4c0();
		//N64.fnc00029794();
		//N64.fnc00029794();
		//N64.fnc0002b240();
	}

	// RAM GREECE
	static void fnc0002ad00() {
		//alUnlink();
		//alLink();
	}

	// RAM GREECE
	static void fnc0002ae04() {
		//N64.fnc00029714();
	}

	// RAM GREECE
	static void fnc0002ae74() {
		//alHeapDBAlloc();
		//N64.fnc0002ae04();
		//alHeapDBAlloc();
		//alHeapDBAlloc();
		//N64.fnc0002b2cc();
		//N64.fnc0002b340();
	}

	// RAM GREECE
	static void fnc0002b000() {
		//N64.osSetIntMask();
		//alUnlink();
		//alLink();
		//N64.osSetIntMask();
	}

	// RAM GREECE
	static void fnc0002b0ac() {
		//N64.osSetIntMask();
		//alUnlink();
		//alLink();
		//N64.osSetIntMask();
	}

	// RAM GREECE
	static void fnc0002b11c() {
		//N64.osSetIntMask();
		//N64.osSetIntMask();
		//alUnlink();
		//N64.fnc0002d470();
		//alLink();
		//alLink();
		//N64.osSetIntMask();
	}

	// RAM GREECE
	static void fnc0002b240() {
		//N64.osSetIntMask();
		//alUnlink();
		//N64.fnc0002d470();
		//alLink();
		//N64.osSetIntMask();
	}

	// RAM GREECE
	static void fnc0002b2cc() {
		//alLink();
	}

	// RAM GREECE
	static void fnc0002b340() {
		//N64.osSetIntMask();
		//N64.osSetIntMask();
	}

	// RAM GREECE
	static void fnc0002b390() {
		//fnc0001be00();
	}

	// RAM GREECE
	static void fnc0002b410() {
		//fnc0001be00();
		//fnc0001bd50();
	}

	// RAM GREECE
	static void fnc0002b4c0() {
		//fnc0001be00();
		//fnc0001bcf8();
	}

	// RAM GREECE
	static void fnc0002b560() {
		//fnc0001be00();
	}

	// RAM GREECE
	static void fnc0002b5f0() {
	//	alUnlink();
	//	alLink();
	//	alUnlink();
	//	alLink();
	}

	// RAM GREECE
	static void fnc0002b6d8() {
		//N64.fnc0002b5f0();
		//fnc0001be00();
		//fnc0001be00();
	}

	// RAM GREECE
	static void fnc0002b820() {
	}

	// RAM GREECE
	static void fnc0002b870() {
		//fnc0001be00();
		//fnc0001bcf8();
	}

	// RAM GREECE
	static void fnc0002b960() {
		//fnc0001be00();
	}

	// RAM GREECE
	static void fnc0002b9f0() {
		//fnc0001be00();
	}

	// RAM GREECE
	static void fnc0002ba90() {
		//fnc0001be00();
	}

	// RAM GREECE
	static void fnc0002bb20() {
		//N64.fnc0002c2ac();
		//N64.fnc0002c2ac();
		//N64.fnc0002c1c4();
		//N64.fnc0002c2ac();
		//N64.fnc00029000();
		//N64.fnc0002c1c4();
		//N64.fnc0002c1c4();
		//N64.fnc0002c1c4();
		//N64.fnc0002c1c4();
		//N64.fnc00029000();
		//N64.fnc0002c1c4();
		//N64.fnc0002c2ac();
		//N64.fnc0002c1c4();
		//N64.fnc00029000();
		//N64.fnc0002c1c4();
		//N64.fnc0002c1c4();
	}

	// RAM GREECE
	static void fnc0002c1c4() {
		//N64.fnc0002c2ac();
	}

	// RAM GREECE
	static void fnc0002c2ac() {
		//N64.fnc00023814();
		//N64.fnc000237cc();
	}

	// RAM GREECE
	static void fnc0002c3a0() {
	}

	// RAM GREECE
	static void fnc0002c3b0() {
	}

	// RAM GREECE
	static void fnc0002c424() {
	}

	// RAM GREECE
	static void fnc0002c594() {
	}

	// RAM GREECE
	// This is actually part of the previous function
	static void fnc0002c6c0() {
	}

	// RAM GREECE
	static void fnc0002c6d0() {
	}

	// RAM GREECE
	static void fnc0002c710() {
		//N64.fnc0002c7a0();
		//osVirtualToPhysical();
	}

	// RAM GREECE
	static void fnc0002c7a0() {
	}

	// RAM GREECE
	static void fnc0002c7d0() {
	}

	// RAM GREECE
	/// 0002C800
	static void alFilterNew() {
	}

	// RAM GREECE
	static void fnc0002c820() {
	}

	// RAM GREECE
	static void fnc0002c8c8() {
		//osVirtualToPhysical();
		//osVirtualToPhysical();
	}

	// RAM GREECE
	static void fnc0002c980() {
		//osVirtualToPhysical();
		//osVirtualToPhysical();
		//osVirtualToPhysical();
	}

	// RAM GREECE
	static void fnc0002cb08() {
		//osVirtualToPhysical();
		//osVirtualToPhysical();
		//osVirtualToPhysical();
	}

	// RAM GREECE
	static void fnc0002cc94() {
		//N64.fnc0002c820();
		//N64.fnc0002cb08();
		//osVirtualToPhysical();
		//N64.fnc0002cb08();
	}

	// RAM GREECE
	static void fnc0002ceb8() {
		//N64.fnc00024300();
	}

	// RAM GREECE
	static void fnc0002d114() {
	}

	// RAM GREECE
	static void fnc0002d12c() {
		//N64.fnc0002c980();
		//N64.fnc0002cb08();
		//N64.fnc0002cc94();
		//N64.fnc0002c980();
		//N64.fnc0002c980();
		//N64.fnc0002c8c8();
		//N64.fnc0002c980();
	}

	// RAM GREECE
	static void fnc0002d470() {
	}

	// RAM GREECE
	static void fnc0002d4f0() {
	}

	// RAM GREECE
	static void fnc0002d520() {
		//N64.fnc00026970();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026c00();
		//osRecvMesg();
		//N64.fnc00026a6c();
	}

	// RAM GREECE
	/// 0002D630
	static void __osSetCompare() {
	}

	// RAM GREECE
	static void fnc0002d640() {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	static void fnc0002d6a0() {
	}

	// RAM GREECE
	static void fnc0002d6f0() {
	}

	// RAM GREECE
	static void fnc0002d740() {
		//N64.fnc000239b0();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	static void fnc0002d790() {
		//N64.fnc000239b0();
		//N64.fnc000236cc();
		//N64.fnc000239d0();
	}

	// RAM GREECE
	static void fnc0002d7e0() {
	}

	// RAM GREECE
	static void fnc0002d7fc() {
	}

	// RAM GREECE
	static void fnc0002d818() {
	}

	// RAM GREECE
	static void fnc0002d828() {
	}

	// RAM GREECE
	static void fnc0002d874() {
		//N64.fnc0002d828();
	}

	// RAM GREECE
	static void fnc0002d9f8() {
		//N64.fnc0002d874();
	}

	// RAM GREECE
	static void fnc0002db18() {
	}

	// RAM GREECE
	static void fnc0002dbd4() {
	}

	// RAM GREECE
	static void fnc0002dbe0() {
	}

	// RAM GREECE
	static void fnc0002dbfc() {
	}

	// RAM GREECE
	static void fnc0002dc50() {
		//N64.fnc0002d828();
	}

	// RAM GREECE
	static void fnc0002dca8() {
	}

	// RAM GREECE
	static void fnc0002dcf8() {
	}

	// RAM GREECE
	static void fnc0002dd28() {
		//N64.fnc0002dca8();
		//N64.fnc0002dca8();
		//N64.fnc0002dcf8();
		//N64.fnc0002dcf8();
		//N64.fnc0002dcf8();
		//N64.fnc0002dca8();
		//N64.fnc0002dca8();
	}

	// RAM GREECE
	/// 0002de00
	static void alSynSetPriority() {
	}
}
