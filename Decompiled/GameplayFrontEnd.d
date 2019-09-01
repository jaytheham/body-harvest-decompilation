module frontEnd;

import n64, ram, gameState;

class FrontEnd: IGameState
{
public:

	// RAM 00070270 (40720)
	int Start(int a0)
	{
		int result;
		//	addiu		t6, a0, $ffff		# 00070270:248effff	
		int t6 = a0 - 1;
		//	addiu		sp, sp, $ffe8		# 00070274:27bdffe8	
		//	sltiu		at, t6, $000e		# 00070278:2dc1000e	
		//	beq		at, zero, $0007037c	# 0007027c:1020003f	v __0007037c
		//	sw		ra, $0014(sp)		# 00070280:afbf0014	
		if (t6 < 0xe)
		{
			//	sll		t6, t6, 2		# 00070284:000e7080	
			//	lui		at, $800b		# 00070288:3c01800b	at=$800b0000
			//	addu		at, at, t6		# 0007028c:002e0821	
			//	lw		t6, $e4e0(at)		# 00070290:8c2ee4e0	
			//	jr		t6			# 00070294:01c00008	
			//	nop					# 00070298:00000000	
			switch (t6)
			{
				default:
					break;
				case 0: /// Normal boot game value
					//	jal		$000789e4		# 0007029c:0c01e279	v FNC_000789e4
					//	nop					# 000702a0:00000000	
					DoFrontEndLoop();
					//	beq		zero, zero, $00070380	# 000702a4:10000036	v __00070380
					//	or		v0, zero, zero		# 000702a8:00001025	
					result = 0;
					break;
				case 1:
					//	lui		a0, $8004		# 000702ac:3c048004	a0=$80040000
					//	lui		a1, $8005		# 000702b0:3c058005	a1=$80050000
					//	lw		a1, $2b2c(a1)		# 000702b4:8ca52b2c	a1=$80052b2c
					//	lw		a0, $7f90(a0)		# 000702b8:8c847f90	a0=$80047f90
					//	addiu		t7, zero, $0001		# 000702bc:240f0001	t7=$00000001
					//	lui		at, $8004		# 000702c0:3c018004	at=$80040000
					//	sh		t7, $76a2(at)		# 000702c4:a42f76a2	[800476a2]
					guess_enablesInput = 1;
					//	addiu		a1, a1, $0030		# 000702c8:24a50030	
					//	jal		$00082cbc		# 000702cc:0c020b2f	v FNC_00082cbc
					//	addiu		a0, a0, $fffe		# 000702d0:2484fffe	
					TransitionToNextLevel(currentLevel - 2, x80052b2c + 0x30);
					//	beq		zero, zero, $00070384	# 000702d4:1000002b	v __00070384
					//	lw		ra, $0014(sp)		# 000702d8:8fbf0014	
					break;
				case 2:
					//	jal		$0007a038		# 000702dc:0c01e80e	v FNC_0007a038
					//	nop					# 000702e0:00000000	
					DisplayGameOver();
					//	beq		zero, zero, $00070380	# 000702e4:10000026	v __00070380
					//	or		v0, zero, zero		# 000702e8:00001025	
					result = 0;
					break;
				case 3:
					//	or		a0, zero, zero		# 000702ec:00002025	
					//	jal		$000796d0		# 000702f0:0c01e5b4	v FNC_000796d0
					//	or		a1, zero, zero		# 000702f4:00002825	
					DisplayTopScores(0, 0);
					//	beq		zero, zero, $00070380	# 000702f8:10000021	v __00070380
					//	or		v0, zero, zero		# 000702fc:00001025	
					result = 0;
					break;
				case 4:
					//	jal		$00070390		# 00070300:0c01c0e4	v FNC_00070390
					//	nop					# 00070304:00000000	
					int newScore = CalculatePlayersTotalScore();
					//	or		a0, v0, zero		# 00070308:00402025	
					//	jal		$000796d0		# 0007030c:0c01e5b4	v FNC_000796d0
					//	or		a1, zero, zero		# 00070310:00002825	
					DisplayTopScores(newScore, 0);
					//	beq		zero, zero, $00070380	# 00070314:1000001a	v __00070380
					//	or		v0, zero, zero		# 00070318:00001025	
					result = 0;
					break;
				case 5:
					//	jal		$00076504		# 0007031c:0c01d941	v FNC_00076504
					//	nop					# 00070320:00000000	
					DisplayCometExplodesCinematic(); /// Then credits
					//	beq		zero, zero, $00070380	# 00070324:10000016	v __00070380
					//	or		v0, zero, zero		# 00070328:00001025	
					result = 0;
					break;
				case 0xc:
					//	jal		$0007685c		# 0007032c:0c01da17	v FNC_0007685c
					//	nop					# 00070330:00000000	
					DisplayEndGameMessage(); /// Then credits
					//	beq		zero, zero, $00070380	# 00070334:10000012	v __00070380
					//	or		v0, zero, zero		# 00070338:00001025	
					result = 0;
					break;
				case 8:
					//	jal		$0007cfb4		# 0007033c:0c01f3ed	v FNC_0007cfb4
					//	addiu		a0, zero, $0001		# 00070340:24040001	a0=$00000001
					DoSaveBeaconLoop(true);
					//	beq		zero, zero, $00070384	# 00070344:1000000f	v __00070384
					//	lw		ra, $0014(sp)		# 00070348:8fbf0014	
					break;
				case 0xd:
					//	jal		$0007cfb4		# 0007034c:0c01f3ed	v FNC_0007cfb4
					//	or		a0, zero, zero		# 00070350:00002025	
					DoSaveBeaconLoop(false);
					//	beq		zero, zero, $00070384	# 00070354:1000000b	v __00070384
					//	lw		ra, $0014(sp)		# 00070358:8fbf0014	
					break;
				case 0xa:
					//	jal		$0007d2b0		# 0007035c:0c01f4ac	v FNC_0007d2b0
					//	nop					# 00070360:00000000	
					DoInventoryLoop();
					//	beq		zero, zero, $00070384	# 00070364:10000007	v __00070384
					//	lw		ra, $0014(sp)		# 00070368:8fbf0014	
					break;
				case 0xb: /// Loads press start screen without logos/intro
					//	addiu		t8, zero, $0015		# 0007036c:24180015	t8=$00000015
					//	lui		at, $8009		# 00070370:3c018009	at=$80090000
					//	jal		$000789e4		# 00070374:0c01e279	v FNC_000789e4
					//	sh		t8, $46dc(at)		# 00070378:a43846dc	[800946dc]
					frontEndStateToSwitchTo = FrontEndState.PRESS_START;
					DoFrontEndLoop();
					goto case;
				case 6:
				case 7:
				case 9:
					result = 0;
			}
		}
		else
		{
			//__0007037c:					# 
			//	or		v0, zero, zero		# 0007037c:00001025	
			result = 0;
		}
		//__00070380:					# 
		//	lw		ra, $0014(sp)		# 00070380:8fbf0014	
		//__00070384:					# 
		//	addiu		sp, sp, $0018		# 00070384:27bd0018	
		//	jr		ra			# 00070388:03e00008	
		//	nop					# 0007038c:00000000	
		return result;
	}

	// RAM 00070390
	int CalculatePlayersTotalScore()
	{
		LevelStats currentLevelStats = levelStats[currentLevel - 1];
		currentLevelStats.score = D_80052B5C;
		currentLevelStats.unk_0x6 = D_8004816A;
		currentLevelStats.secondsElapsed = cast(short)(millisecondsElapsedInLevel / 1000);
		return levelStats[0].score
			+ levelStats[1].score
			+ levelStats[2].score
			+ levelStats[3].score
			+ levelStats[4].score
			+ levelStats[5].score;
	}

	// RAM MAINMENU
	int CalculatePlayersTotalTime()
	{
		levelStats[currentLevel - 1].secondsElapsed = cast(short)(millisecondsElapsedInLevel / 1000);
		return levelStats[0].secondsElapsed
			+ levelStats[1].secondsElapsed
			+ levelStats[2].secondsElapsed
			+ levelStats[3].secondsElapsed
			+ levelStats[4].secondsElapsed
			+ levelStats[5].secondsElapsed;
	}

	// RAM MAINMENU
	unk_800D6DC0* fnc00070494(uint a0)
	{
		for (int i = 41; i >= 0; i--)
		{
			if ((a0 << 16) >>> 16 == D_800D6DC0[i].unk_0x26)
			{
				return &D_800D6DC0[i];
			}
		}
		return null;
	}

	// RAM MAINMENU
	void fnc000704c4() {
	}

	// RAM MAINMENU
	void fnc000704dc() {
	}

	// RAM MAINMENU
	void fnc00070514(int a0) {
		N64.fnc0001cc6c("ERROR: No free windows\n");
	}

	// RAM MAINMENU
	unk_800D6DC0* fnc000706e8(ushort arg0) {
		N64.fnc0001cc6c("ERROR: No free windows\n");
		fnc000704dc();
		return null;
	}

	// RAM MAINMENU
	void fnc000708b8(int arg0)
	{
		unk_800D6DC0* temp_ret = fnc00070494(cast(int) (arg0 << 0x10) >> 0x10);
		if (temp_ret != null)
		{
			if ((*temp_ret).unk_0x12 >= 0x4001)
			{
				(*temp_ret).unk_0x12 = cast(ushort)0x4000;
			}
			(*temp_ret).unk_0x14 = cast(ushort)0xfc00;
		}
	}

	// RAM MAINMENU
	void fnc00070904(int arg0)
	{
		unk_800D6DC0* temp_ret = fnc00070494(cast(int) (arg0 << 0x10) >> 0x10);
		if (temp_ret != null)
		{
			(*temp_ret).unk_0x14 = 0;
			(*temp_ret).unk_0x12 = 0;
			(*temp_ret).unk_0x16 = 0;
		}
	}

	// RAM MAINMENU
	int fnc00070940()
	{
		for (int i = 41; i >= 0; i--)
		{
			D_800D6DC0[i].unk_0x14 = 0;
			D_800D6DC0[i].unk_0x12 = 0;
			D_800D6DC0[i].unk_0x16 = 0;
		}
		return 0;
	}

	// RAM MAINMENU
	unk_800D6DC0* fnc00070970(unk_800D6DC0* arg0, int arg1)
	{
		(*arg0).unk_0x12 = 0;
		(*arg0).unk_0x14 = 0;
		(*arg0).unk_0x16 = 0;
		if (arg1 != 0)
		{
			unk_800D6DC0* temp_ret = fnc000706e8(D_800D74AA);
			if ((D_80047F84 + 2) != (*temp_ret).unk_0x26)
			{
				temp_ret.unk_0x1c = 0;
			}
			else
			{
				temp_ret.unk_0x1c = 1;
				temp_ret.unk_0x28 = -1;
			}
			D_800D74AA = 0;
			return temp_ret;
		}
		D_800D74AA = 0;
		return null;
	}

	// RAM MAINMENU
	void fnc000709f0()
	{
		for (int i = 41; i >= 0; i--)
		{
			if (4 == D_800D6DC0[i].unk_0x16)
			{
				fnc00070970(&D_800D6DC0[i], 0);
			}
			else
			{
				if (D_800D6DC0[i].unk_0x12 >= 0x4001)
				{
					D_800D6DC0[i].unk_0x12 = cast(ushort)0x4000;
				}
				D_800D6DC0[i].unk_0x14 = 0xfc00;
			}
		}
	}

	// RAM MAINMENU
	void fnc00070a8c() {
	}

	// RAM MAINMENU
	void fnc00070aec() {
	}

	// RAM MAINMENU
	void fnc00070b68() {
	}

	// RAM MAINMENU
	void fnc00070bd8() {
	}

	// RAM MAINMENU
	void fnc00070c64(int a0, int a1, int a2) {
		//	addiu		sp, sp, $ffe8		# 00070c64:27bdffe8	
		//	sll		t9, a2, 16		# 00070c68:0006cc00	
		//	sra		t0, t9, 16		# 00070c6c:00194403	
		//	sll		a3, a0, 16		# 00070c70:00043c00	
		//	sll		t7, a1, 16		# 00070c74:00057c00	
		//	andi		t1, t0, $0007		# 00070c78:31090007	
		//	sra		t8, t7, 16		# 00070c7c:000fc403	
		//	sra		t6, a3, 16		# 00070c80:00077403	
		//	sw		ra, $0014(sp)		# 00070c84:afbf0014	
		//	sw		a0, $0018(sp)		# 00070c88:afa40018	
		//	sw		a1, $001c(sp)		# 00070c8c:afa5001c	
		//	bne		t1, zero, $00070cb4	# 00070c90:15200008	v __00070cb4
		//	sw		a2, $0020(sp)		# 00070c94:afa60020	
		if ((((a2 << 16) >>> 16) & 7) == 0)
		{
			//	sra		v0, t0, 3		# 00070c98:000810c3	
			//	slt		at, v0, t8		# 00070c9c:0058082a	
			//	beq		at, zero, $00070cb4	# 00070ca0:10200004	v __00070cb4
			//	addu		a0, v0, t6		# 00070ca4:004e2021	
			if (((a2 << 16) >>> 16) < ((a1 << 16) >>> 16))
			{
				//	sll		t2, a0, 16		# 00070ca8:00045400	
				//	jal		$00070514		# 00070cac:0c01c145	^ FNC_00070514
				//	sra		a0, t2, 16		# 00070cb0:000a2403	
				/// This will only ever be called the first time through the parent loop ?
				fnc00070514(((a0 << 16) >>> 16));
			}
		}
		
		//__00070cb4:					# 
		//	lw		ra, $0014(sp)		# 00070cb4:8fbf0014	
		//	addiu		sp, sp, $0018		# 00070cb8:27bd0018	
		//	jr		ra			# 00070cbc:03e00008	
		//	nop					# 00070cc0:00000000	
		return;
	}

	// RAM MAINMENU
	void fnc00070cc4() {
		//	lui		v0, $8004		# 00070cc4:3c028004	v0=$80040000
		//	lb		v0, $758a(v0)		# 00070cc8:8042758a	v0=$8004758a
		//	addiu		sp, sp, $ffd8		# 00070ccc:27bdffd8	
		//	sw		ra, $0014(sp)		# 00070cd0:afbf0014	
		//	slti		at, v0, $0015		# 00070cd4:28410015	
		//	beq		at, zero, $00070d10	# 00070cd8:1020000d	v __00070d10
		//	sw		zero, $001c(sp)		# 00070cdc:afa0001c	
		if (x8004758a < 0x15)
		{
			//	slti		at, v0, $ffec		# 00070ce0:2841ffec	
			//	bne		at, zero, $00070d10	# 00070ce4:1420000a	v __00070d10
			//	or		a0, zero, zero		# 00070ce8:00002025	
			if (x8004758a >= 0xffec) /// TODO ffec is a negative value!
			{
				//	jal		$00003584		# 00070cec:0c000d61	^ FNC_00003584
				//	addiu		a1, zero, $0300		# 00070cf0:24050300	a1=$00000300
				bool pressed = N64.ButtonIsNewlyPressed(N64.Controller.ONE,
					N64.Buttons.D_RIGHT | N64.Buttons.D_LEFT);
				//	bne		v0, zero, $00070d10	# 00070cf4:14400006	v __00070d10
				//	addiu		t6, zero, $0001		# 00070cf8:240e0001	t6=$00000001
				if (!pressed)
				{
					//	lui		at, $8009		# 00070cfc:3c018009	at=$80090000
					//	sh		t6, $4824(at)		# 00070d00:a42e4824	[80094824]
					x80094824 = 1;
					//	lui		at, $8009		# 00070d04:3c018009	at=$80090000
					//	addiu		t7, zero, $001e		# 00070d08:240f001e	t7=$0000001e
					//	sh		t7, $482c(at)		# 00070d0c:a42f482c	[8009482c]
					x8009482c = 0x1e;
				}
			}
		}
		//__00070d10:					# 
		//	lui		v0, $8004		# 00070d10:3c028004	v0=$80040000
		//	lb		v0, $758b(v0)		# 00070d14:8042758b	v0=$8004758b
		//	slti		at, v0, $0015		# 00070d18:28410015	
		//	beq		at, zero, $00070d50	# 00070d1c:1020000c	v __00070d50
		//	slti		at, v0, $ffec		# 00070d20:2841ffec	
		if (x8004758b < 0x15)
		{
			//	bne		at, zero, $00070d50	# 00070d24:1420000a	v __00070d50
			//	or		a0, zero, zero		# 00070d28:00002025	
			if (x8004758b >= 0xffec) /// TODO ffec is a negative value!
			{
				//	jal		$00003584		# 00070d2c:0c000d61	^ FNC_00003584
				//	addiu		a1, zero, $0c00		# 00070d30:24050c00	a1=$00000c00
				bool pressed = N64.ButtonIsNewlyPressed(N64.Controller.ONE,
					N64.Buttons.D_UP | N64.Buttons.D_DOWN);
				//	bne		v0, zero, $00070d50	# 00070d34:14400006	v __00070d50
				//	addiu		t8, zero, $0001		# 00070d38:24180001	t8=$00000001
				if (!pressed)
				{
					//	lui		at, $8009		# 00070d3c:3c018009	at=$80090000
					//	sh		t8, $4828(at)		# 00070d40:a4384828	[80094828]
					x80094828 = 1;
					//	lui		at, $8009		# 00070d44:3c018009	at=$80090000
					//	addiu		t9, zero, $001e		# 00070d48:2419001e	t9=$0000001e
					//	sh		t9, $4830(at)		# 00070d4c:a4394830	[80094830]
					x80094830 = 0x1e;
				}
			}
		}
		//__00070d50:					# 
		//	lui		v0, $800d		# 00070d50:3c02800d	v0=$800d0000
		//	lh		v0, $74a4(v0)		# 00070d54:844274a4	v0=$800d74a4
		//	addiu		t0, zero, $002a		# 00070d58:2408002a	t0=$0000002a
		//	lui		t4, $8009		# 00070d5c:3c0c8009	t4=$80090000
		//	multu		v0, t0			# 00070d60:00480019	
		//	lh		t4, $4824(t4)		# 00070d64:858c4824	t4=$80094824
		//	lui		a3, $8009		# 00070d68:3c078009	a3=$80090000
		//	sll		v1, v0, 16		# 00070d6c:00021c00	
		//	addiu		a3, a3, $09b0		# 00070d70:24e709b0	a3=$800909b0
		//	sra		t3, v1, 16		# 00070d74:00035c03	
		//	or		v1, t3, zero		# 00070d78:01601825	
		//	lui		t5, $8009		# 00070d7c:3c0d8009	t5=$80090000
		//	lui		t9, $8004		# 00070d80:3c198004	t9=$80040000
		//	mflo		t2			# 00070d84:00005012	
		//	addu		t1, a3, t2		# 00070d88:00ea4821	
		//	bne		t4, zero, $00070db0	# 00070d8c:15800008	v __00070db0
		//	nop					# 00070d90:00000000	
		//	lh		t5, $482c(t5)		# 00070d94:85ad482c	t5=$8009482c
		//	lui		at, $8009		# 00070d98:3c018009	at=$80090000
		//	addiu		t6, t5, $ffff		# 00070d9c:25aeffff	
		//	sll		t7, t6, 16		# 00070da0:000e7c00	
		//	sra		t8, t7, 16		# 00070da4:000fc403	
		//	bne		t8, zero, $00070ec4	# 00070da8:17000046	v __00070ec4
		//	sh		t6, $482c(at)		# 00070dac:a42e482c	[8009482c]
		//__00070db0:					# 
		//	lb		t9, $758a(t9)		# 00070db0:8339758a	t9=$8004758a
		//	or		a0, zero, zero		# 00070db4:00002025	
		//	addiu		a1, zero, $0200		# 00070db8:24050200	a1=$00000200
		//	slti		at, t9, $ffec		# 00070dbc:2b21ffec	
		//	bnel		at, zero, $00070df0	# 00070dc0:5420000b	v __00070df0
		//	lbu		t2, $0022(t1)		# 00070dc4:912a0022	
		//	sh		v1, $0026(sp)		# 00070dc8:a7a30026	
		//	jal		$00003584		# 00070dcc:0c000d61	^ FNC_00003584
		//	sw		t1, $0020(sp)		# 00070dd0:afa90020	
		N64.ButtonIsNewlyPressed(N64.Controller.ONE, N64.Buttons.D_LEFT);
		//	lui		a3, $8009		# 00070dd4:3c078009	a3=$80090000
		//	addiu		a3, a3, $09b0		# 00070dd8:24e709b0	a3=$800909b0
		//	lh		v1, $0026(sp)		# 00070ddc:87a30026	
		//	addiu		t0, zero, $002a		# 00070de0:2408002a	t0=$0000002a
		//	beq		v0, zero, $00070e3c	# 00070de4:10400015	v __00070e3c
		//	lw		t1, $0020(sp)		# 00070de8:8fa90020	
		//	lbu		t2, $0022(t1)		# 00070dec:912a0022	
		//__00070df0:					# 
		//	sll		t3, v1, 2		# 00070df0:00035880	
		//	addu		t3, t3, v1		# 00070df4:01635821	
		//	beq		t2, zero, $00070e3c	# 00070df8:11400010	v __00070e3c
		//	sll		t3, t3, 2		# 00070dfc:000b5880	
		//	addu		t3, t3, v1		# 00070e00:01635821	
		//	sll		t3, t3, 1		# 00070e04:000b5840	
		//	addu		v0, a3, t3		# 00070e08:00eb1021	
		//	addiu		a2, zero, $0003		# 00070e0c:24060003	a2=$00000003
		//	lbu		v1, $0022(v0)		# 00070e10:90430022	
		//__00070e14:					# 
		//	beq		v1, zero, $00070ec4	# 00070e14:1060002b	v __00070ec4
		//	nop					# 00070e18:00000000	
		//	multu		v1, t0			# 00070e1c:00680019	
		//	mflo		t4			# 00070e20:00006012	
		//	addu		v0, a3, t4		# 00070e24:00ec1021	
		//	lbu		t5, $001c(v0)		# 00070e28:904d001c	
		//	beql		a2, t5, $00070e14	# 00070e2c:50cdfff9	^ __00070e14
		//	lbu		v1, $0022(v0)		# 00070e30:90430022	
		//	beq		zero, zero, $00070ec4	# 00070e34:10000023	v __00070ec4
		//	nop					# 00070e38:00000000	
		//__00070e3c:					# 
		//	lui		t6, $8004		# 00070e3c:3c0e8004	t6=$80040000
		//	lb		t6, $758a(t6)		# 00070e40:81ce758a	t6=$8004758a
		//	or		a0, zero, zero		# 00070e44:00002025	
		//	addiu		a1, zero, $0100		# 00070e48:24050100	a1=$00000100
		//	slti		at, t6, $0015		# 00070e4c:29c10015	
		//	beql		at, zero, $00070e80	# 00070e50:5020000b	v __00070e80
		//	lbu		t7, $0023(t1)		# 00070e54:912f0023	
		//	sh		v1, $0026(sp)		# 00070e58:a7a30026	
		//	jal		$00003584		# 00070e5c:0c000d61	^ FNC_00003584
		//	sw		t1, $0020(sp)		# 00070e60:afa90020	
		N64.ButtonIsNewlyPressed(N64.Controller.ONE, N64.Buttons.D_RIGHT);
		//	lui		a3, $8009		# 00070e64:3c078009	a3=$80090000
		//	addiu		a3, a3, $09b0		# 00070e68:24e709b0	a3=$800909b0
		//	lh		v1, $0026(sp)		# 00070e6c:87a30026	
		//	addiu		t0, zero, $002a		# 00070e70:2408002a	t0=$0000002a
		//	beq		v0, zero, $00070ec4	# 00070e74:10400013	v __00070ec4
		//	lw		t1, $0020(sp)		# 00070e78:8fa90020	
		//	lbu		t7, $0023(t1)		# 00070e7c:912f0023	
		//__00070e80:					# 
		//	sll		t8, v1, 2		# 00070e80:0003c080	
		//	addu		t8, t8, v1		# 00070e84:0303c021	
		//	beq		t7, zero, $00070ec4	# 00070e88:11e0000e	v __00070ec4
		//	sll		t8, t8, 2		# 00070e8c:0018c080	
		//	addu		t8, t8, v1		# 00070e90:0303c021	
		//	sll		t8, t8, 1		# 00070e94:0018c040	
		//	addu		v0, a3, t8		# 00070e98:00f81021	
		//	addiu		a2, zero, $0003		# 00070e9c:24060003	a2=$00000003
		//	lbu		v1, $0023(v0)		# 00070ea0:90430023	
		//__00070ea4:					# 
		//	beq		v1, zero, $00070ec4	# 00070ea4:10600007	v __00070ec4
		//	nop					# 00070ea8:00000000	
		//	multu		v1, t0			# 00070eac:00680019	
		//	mflo		t9			# 00070eb0:0000c812	
		//	addu		v0, a3, t9		# 00070eb4:00f91021	
		//	lbu		t2, $001c(v0)		# 00070eb8:904a001c	
		//	beql		a2, t2, $00070ea4	# 00070ebc:50cafff9	^ __00070ea4
		//	lbu		v1, $0023(v0)		# 00070ec0:90430023	
		//__00070ec4:					# 
		//	lui		t3, $800d		# 00070ec4:3c0b800d	t3=$800d0000
		//	lh		t3, $74a4(t3)		# 00070ec8:856b74a4	t3=$800d74a4
		//	addiu		a2, zero, $0003		# 00070ecc:24060003	a2=$00000003
		//	lui		t6, $8009		# 00070ed0:3c0e8009	t6=$80090000
		//	beq		v1, t3, $00070f1c	# 00070ed4:106b0011	v __00070f1c
		//	nop					# 00070ed8:00000000	
		//	beq		v1, zero, $00070f1c	# 00070edc:1060000f	v __00070f1c
		//	lui		at, $800d		# 00070ee0:3c01800d	at=$800d0000
		//	lui		t4, $8009		# 00070ee4:3c0c8009	t4=$80090000
		//	lh		t4, $482c(t4)		# 00070ee8:858c482c	t4=$8009482c
		//	sh		v1, $74a4(at)		# 00070eec:a42374a4	[800d74a4]
		//	lui		at, $8009		# 00070ef0:3c018009	at=$80090000
		//	sh		zero, $4824(at)		# 00070ef4:a4204824	[80094824]
		//	slti		at, t4, $0008		# 00070ef8:29810008	
		//	beq		at, zero, $00070f0c	# 00070efc:10200003	v __00070f0c
		//	addiu		t5, zero, $0008		# 00070f00:240d0008	t5=$00000008
		//	lui		at, $8009		# 00070f04:3c018009	at=$80090000
		//	sh		t5, $482c(at)		# 00070f08:a42d482c	[8009482c]
		//__00070f0c:					# 
		//	jal		$000153d8		# 00070f0c:0c0054f6	^ FNC_000153d8
		//	addiu		a0, zero, $00c9		# 00070f10:240400c9	a0=$000000c9
		///N64.fnc000153d8();
		//	beq		zero, zero, $000710cc	# 00070f14:1000006d	v __000710cc
		//	lw		ra, $0014(sp)		# 00070f18:8fbf0014	
		//__00070f1c:					# 
		//	lh		t6, $4828(t6)		# 00070f1c:85ce4828	t6=$80094828
		//	lui		t7, $8009		# 00070f20:3c0f8009	t7=$80090000
		//	lui		t3, $8004		# 00070f24:3c0b8004	t3=$80040000
		//	bne		t6, zero, $00070f4c	# 00070f28:15c00008	v __00070f4c
		//	nop					# 00070f2c:00000000	
		//	lh		t7, $4830(t7)		# 00070f30:85ef4830	t7=$80094830
		//	lui		at, $8009		# 00070f34:3c018009	at=$80090000
		//	addiu		t8, t7, $ffff		# 00070f38:25f8ffff	
		//	sll		t9, t8, 16		# 00070f3c:0018cc00	
		//	sra		t2, t9, 16		# 00070f40:00195403	
		//	bne		t2, zero, $00071064	# 00070f44:15400047	v __00071064
		//	sh		t8, $4830(at)		# 00070f48:a4384830	[80094830]
		//__00070f4c:					# 
		//	lb		t3, $758b(t3)		# 00070f4c:816b758b	t3=$8004758b
		//	or		a0, zero, zero		# 00070f50:00002025	
		//	addiu		a1, zero, $0800		# 00070f54:24050800	a1=$00000800
		//	slti		at, t3, $0015		# 00070f58:29610015	
		//	beql		at, zero, $00070f90	# 00070f5c:5020000c	v __00070f90
		//	lbu		t4, $0024(t1)		# 00070f60:912c0024	
		//	sh		v1, $0026(sp)		# 00070f64:a7a30026	
		//	jal		$00003584		# 00070f68:0c000d61	^ FNC_00003584
		//	sw		t1, $0020(sp)		# 00070f6c:afa90020	
		N64.ButtonIsNewlyPressed(N64.Controller.ONE, N64.Buttons.D_UP);
		//	lui		a3, $8009		# 00070f70:3c078009	a3=$80090000
		//	addiu		a3, a3, $09b0		# 00070f74:24e709b0	a3=$800909b0
		//	lh		v1, $0026(sp)		# 00070f78:87a30026	
		//	addiu		a2, zero, $0003		# 00070f7c:24060003	a2=$00000003
		//	addiu		t0, zero, $002a		# 00070f80:2408002a	t0=$0000002a
		//	beq		v0, zero, $00070fdc	# 00070f84:10400015	v __00070fdc
		//	lw		t1, $0020(sp)		# 00070f88:8fa90020	
		//	lbu		t4, $0024(t1)		# 00070f8c:912c0024	
		//__00070f90:					# 
		//	sll		t5, v1, 2		# 00070f90:00036880	
		//	addu		t5, t5, v1		# 00070f94:01a36821	
		//	beq		t4, zero, $00070fdc	# 00070f98:11800010	v __00070fdc
		//	sll		t5, t5, 2		# 00070f9c:000d6880	
		//	addu		t5, t5, v1		# 00070fa0:01a36821	
		//	sll		t5, t5, 1		# 00070fa4:000d6840	
		//	addu		v0, a3, t5		# 00070fa8:00ed1021	
		//	lbu		v1, $0024(v0)		# 00070fac:90430024	
		//__00070fb0:					# 
		//	beql		v1, zero, $00070fd4	# 00070fb0:50600008	v __00070fd4
		//	addiu		t8, zero, $0001		# 00070fb4:24180001	t8=$00000001
		//	multu		v1, t0			# 00070fb8:00680019	
		//	mflo		t6			# 00070fbc:00007012	
		//	addu		v0, a3, t6		# 00070fc0:00ee1021	
		//	lbu		t7, $001c(v0)		# 00070fc4:904f001c	
		//	beql		a2, t7, $00070fb0	# 00070fc8:50cffff9	^ __00070fb0
		//	lbu		v1, $0024(v0)		# 00070fcc:90430024	
		//	addiu		t8, zero, $0001		# 00070fd0:24180001	t8=$00000001
		//__00070fd4:					# 
		//	beq		zero, zero, $00071064	# 00070fd4:10000023	v __00071064
		//	sw		t8, $001c(sp)		# 00070fd8:afb8001c	
		//__00070fdc:					# 
		//	lui		t9, $8004		# 00070fdc:3c198004	t9=$80040000
		//	lb		t9, $758b(t9)		# 00070fe0:8339758b	t9=$8004758b
		//	or		a0, zero, zero		# 00070fe4:00002025	
		//	addiu		a1, zero, $0400		# 00070fe8:24050400	a1=$00000400
		//	slti		at, t9, $ffec		# 00070fec:2b21ffec	
		//	bnel		at, zero, $00071024	# 00070ff0:5420000c	v __00071024
		//	lbu		t2, $0025(t1)		# 00070ff4:912a0025	
		//	sh		v1, $0026(sp)		# 00070ff8:a7a30026	
		//	jal		$00003584		# 00070ffc:0c000d61	^ FNC_00003584
		//	sw		t1, $0020(sp)		# 00071000:afa90020	
		N64.ButtonIsNewlyPressed(N64.Controller.ONE, N64.Buttons.D_DOWN);
		//	lui		a3, $8009		# 00071004:3c078009	a3=$80090000
		//	addiu		a3, a3, $09b0		# 00071008:24e709b0	a3=$800909b0
		//	lh		v1, $0026(sp)		# 0007100c:87a30026	
		//	addiu		a2, zero, $0003		# 00071010:24060003	a2=$00000003
		//	addiu		t0, zero, $002a		# 00071014:2408002a	t0=$0000002a
		//	beq		v0, zero, $00071064	# 00071018:10400012	v __00071064
		//	lw		t1, $0020(sp)		# 0007101c:8fa90020	
		//	lbu		t2, $0025(t1)		# 00071020:912a0025	
		//__00071024:					# 
		//	sll		t3, v1, 2		# 00071024:00035880	
		//	addu		t3, t3, v1		# 00071028:01635821	
		//	beq		t2, zero, $00071064	# 0007102c:1140000d	v __00071064
		//	sll		t3, t3, 2		# 00071030:000b5880	
		//	addu		t3, t3, v1		# 00071034:01635821	
		//	sll		t3, t3, 1		# 00071038:000b5840	
		//	addu		v0, a3, t3		# 0007103c:00eb1021	
		//	lbu		v1, $0025(v0)		# 00071040:90430025	
		//__00071044:					# 
		//	beq		v1, zero, $00071064	# 00071044:10600007	v __00071064
		//	nop					# 00071048:00000000	
		//	multu		v1, t0			# 0007104c:00680019	
		//	mflo		t4			# 00071050:00006012	
		//	addu		v0, a3, t4		# 00071054:00ec1021	
		//	lbu		t5, $001c(v0)		# 00071058:904d001c	
		//	beql		a2, t5, $00071044	# 0007105c:50cdfff9	^ __00071044
		//	lbu		v1, $0025(v0)		# 00071060:90430025	
		//__00071064:					# 
		//	lui		t6, $800d		# 00071064:3c0e800d	t6=$800d0000
		//	lh		t6, $74a4(t6)		# 00071068:85ce74a4	t6=$800d74a4
		//	beql		v1, t6, $000710cc	# 0007106c:506e0017	v __000710cc
		//	lw		ra, $0014(sp)		# 00071070:8fbf0014	
		//	beq		v1, zero, $000710c8	# 00071074:10600014	v __000710c8
		//	lui		at, $800d		# 00071078:3c01800d	at=$800d0000
		//	lui		t7, $8009		# 0007107c:3c0f8009	t7=$80090000
		//	lh		t7, $4830(t7)		# 00071080:85ef4830	t7=$80094830
		//	sh		v1, $74a4(at)		# 00071084:a42374a4	[800d74a4]
		//	lui		at, $8009		# 00071088:3c018009	at=$80090000
		//	sh		zero, $4828(at)		# 0007108c:a4204828	[80094828]
		//	slti		at, t7, $0008		# 00071090:29e10008	
		//	beq		at, zero, $000710a4	# 00071094:10200003	v __000710a4
		//	addiu		t8, zero, $0008		# 00071098:24180008	t8=$00000008
		//	lui		at, $8009		# 0007109c:3c018009	at=$80090000
		//	sh		t8, $4830(at)		# 000710a0:a4384830	[80094830]
		//__000710a4:					# 
		//	lw		t9, $001c(sp)		# 000710a4:8fb9001c	
		//	beq		t9, zero, $000710c0	# 000710a8:13200005	v __000710c0
		//	nop					# 000710ac:00000000	
		//	jal		$000153d8		# 000710b0:0c0054f6	^ FNC_000153d8
		//	addiu		a0, zero, $00ca		# 000710b4:240400ca	a0=$000000ca
		///N64.fnc000153d8();
		//	beq		zero, zero, $000710cc	# 000710b8:10000004	v __000710cc
		//	lw		ra, $0014(sp)		# 000710bc:8fbf0014	
		//__000710c0:					# 
		//	jal		$000153d8		# 000710c0:0c0054f6	^ FNC_000153d8
		//	addiu		a0, zero, $00c9		# 000710c4:240400c9	a0=$000000c9
		///N64.fnc000153d8();
		//__000710c8:					# 
		//	lw		ra, $0014(sp)		# 000710c8:8fbf0014	
		//__000710cc:					# 
		//	addiu		sp, sp, $0028		# 000710cc:27bd0028	
		//	jr		ra			# 000710d0:03e00008	
		//	nop					# 000710d4:00000000	
	}

	// RAM MAINMENU
	void fnc000710d8() {
		//N64.ButtonIsNewlyPressed();
		//N64.ButtonIsNewlyPressed();
		//N64.ButtonIsNewlyPressed();
		//fnc00070494();
		//N64.fnc000153d8();
		//fnc00070494();
		//N64.fnc000153d8();
		//N64.fnc000153d8();
		//N64.ButtonIsNewlyPressed();
		//fnc00070494();
		//N64.fnc000153d8();
		//fnc00070494();
		//N64.fnc000153d8();
		//N64.fnc000153d8();
		//N64.ButtonIsNewlyPressed();
		//N64.fnc000153d8();
		//N64.ButtonIsNewlyPressed();
		//N64.fnc000153d8();
	}

	// RAM MAINMENU
	void fnc0007166c() {
		//	addiu		sp, sp, $ffe0		# 0007166c:27bdffe0	
		//	sw		ra, $0014(sp)		# 00071670:afbf0014	
		//	lui		a0, $800d		# 00071674:3c04800d	a0=$800d0000
		//	jal		$00070494		# 00071678:0c01c125	^ FNC_00070494
		//	lh		a0, $74a4(a0)		# 0007167c:848474a4	a0=$800d74a4
		uint resultfnc00070494 = fnc00070494(x800d74a4);
		//	lui		a0, $800d		# 00071680:3c04800d	a0=$800d0000
		//	lh		a0, $74a6(a0)		# 00071684:848474a6	a0=$800d74a6
		//	jal		$00070494		# 00071688:0c01c125	^ FNC_00070494
		//	sw		v0, $001c(sp)		# 0007168c:afa2001c	
		uint resultfnc00070494_2 = fnc00070494(x800d74a6);
		//	lw		v1, $001c(sp)		# 00071690:8fa3001c	
		//	or		a0, v0, zero		# 00071694:00402025	
		//	beql		v1, zero, $0007172c	# 00071698:50600024	v __0007172c
		//	lw		ra, $0014(sp)		# 0007169c:8fbf0014	
		if (resultfnc00070494 != 0)
		{
			//	bnel		v1, v0, $000716b4	# 000716a0:54620004	v __000716b4
			//	lbu		t6, $001c(v1)		# 000716a4:906e001c	
			if (resultfnc00070494 == resultfnc00070494_2)
			{
				//	bnel		v0, zero, $0007172c	# 000716a8:54400020	v __0007172c
				//	lw		ra, $0014(sp)		# 000716ac:8fbf0014	
				if (resultfnc00070494_2 == 0)
				{
					//	lbu		t6, $001c(v1)		# 000716b0:906e001c	
				}
				else
				{
					return;
				}
			}
			byte t6 = GetByte(resultfnc00070494 + 0x1c);
			//__000716b4:					# 
			//	addiu		at, zero, $0003		# 000716b4:24010003	at=$00000003
			//	lui		t7, $800d		# 000716b8:3c0f800d	t7=$800d0000
			//	beql		t6, at, $0007172c	# 000716bc:51c1001b	v __0007172c
			//	lw		ra, $0014(sp)		# 000716c0:8fbf0014	
			if (t6 != 3)
			{
				//	lh		t7, $74a4(t7)		# 000716c4:85ef74a4	t7=$800d74a4
				//	lui		at, $800d		# 000716c8:3c01800d	at=$800d0000
				//	beq		v0, zero, $000716f4	# 000716cc:10400009	v __000716f4
				//	sh		t7, $74a6(at)		# 000716d0:a42f74a6	[800d74a6]
				if (resultfnc00070494_2 != 0)
				{
					//	lbu		t8, $0016(v0)		# 000716d4:90580016	
					byte t8 = GetByte(resultfnc00070494_2 + 0x16);
					//	addiu		at, zero, $0004		# 000716d8:24010004	at=$00000004
					//	addiu		a1, zero, $0001		# 000716dc:24050001	a1=$00000001
					//	bne		t8, at, $000716f4	# 000716e0:17010004	v __000716f4
					//	nop					# 000716e4:00000000	
					if (t8 == 4)
					{
						//	jal		$00070970		# 000716e8:0c01c25c	^ FNC_00070970
						//	sw		v1, $001c(sp)		# 000716ec:afa3001c	
						fnc00070970(resultfnc00070494_2, 1);
						//	lw		v1, $001c(sp)		# 000716f0:8fa3001c	
					}
				}
				//__000716f4:					# 
				//	jal		$000704dc		# 000716f4:0c01c137	^ FNC_000704dc
				//	sw		v1, $001c(sp)		# 000716f8:afa3001c	
				fnc000704dc();
				//	lw		v1, $001c(sp)		# 000716fc:8fa3001c	
				//	addiu		t9, zero, $0001		# 00071700:24190001	t9=$00000001
				//	addiu		t1, zero, $4000		# 00071704:24094000	t1=$00004000
				//	lhu		t0, $0012(v1)		# 00071708:94680012	
				ushort t0 = GetUshort(resultfnc00070494 + 0x12);
				//	addiu		t2, zero, $0400		# 0007170c:240a0400	t2=$00000400
				//	sb		t9, $001c(v1)		# 00071710:a079001c	
				StoreByte(1, resultfnc00070494 + 0x1c);
				//	slti		at, t0, $4001		# 00071714:29014001	
				//	bne		at, zero, $00071728	# 00071718:14200003	v __00071728
				//	sh		zero, $0028(v1)		# 0007171c:a4600028	
				StoreShort(0, resultfnc00070494 + 0x28);
				if (t0 >= 0x4001)
				{
					//	sh		t1, $0012(v1)		# 00071720:a4690012	
					StoreShort(0x4000, resultfnc00070494 + 0x12);
					//	sh		t2, $0014(v1)		# 00071724:a46a0014	
					StoreShort(0x0400, resultfnc00070494 + 0x14);
				}
				//__00071728:					# 
				//	lw		ra, $0014(sp)		# 00071728:8fbf0014	
			}
		}
		//__0007172c:					# 
		//	addiu		sp, sp, $0020		# 0007172c:27bd0020	
		//	jr		ra			# 00071730:03e00008	
		//	nop					# 00071734:00000000	
		return;
	}

	// RAM MAINMENU
	void fnc00071738() {
	}

	// RAM MAINMENU
	void fnc00071760() {
		//N64.fnc0000a2b8();
		//N64.fnc0000a2b8();
		//N64.fnc0000a2b8();
	}

	// RAM MAINMENU
	void fnc00071900() {
	}

	// RAM MAINMENU
	void fnc00071e80() {
	}

	// RAM MAINMENU
	void fnc000722a4() {
		//N64.fnc0000726c();
		//N64.fnc00004f64();
		//N64.guPerspective();
		//N64.guLookAt();
	}

	// RAM MAINMENU
	void fnc00072604() {
		//N64.fnc000039d0();
		//N64.fnc000039d0();
	}

	// RAM MAINMENU
	void fnc000728f4() {
		//N64.fnc000039d0();
		//N64.fnc000039d0();
	}

	// RAM MAINMENU
	/// Checks if selected inventory item is 0xb (weapon crystals)
	void fnc00072b68() {
		//fnc000722a4();
		//fnc00072604();
		//fnc000728f4();
		//N64.fnc000039d0();
		//N64.fnc000039d0();
	}

	// RAM MAINMENU
	void fnc00072e18() {
		//fnc000722a4();
		//N64.fnc000039d0();
		//N64.fnc000039d0();
	}

	// RAM MAINMENU
	void fnc000731a8() {
		//N64.fnc000038e0();
		//N64.fnc000067b4();
		//N64.fnc000067b4();
		//N64.fnc000067b4();
		//N64.fnc000067b4();
		//N64.fnc0001d980();
		//N64.fnc000092b8();
		//N64.fnc000092b8();
		//N64.fnc000092b8();
		//N64.fnc000092b8();
		//N64.fnc000092b8();
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
		//drawText();
		//fnc00071760();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//fnc00071760();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//fnc00071760();
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
		//drawText();
		//fnc00071900();
		//drawText();
		//fnc00072e18();
		//drawText();
		//CalculatePlayersTotalTime();
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
		//drawText();
		//drawText();
		//drawText();
		//CalculatePlayersTotalScore();
		//fnc00071760();
		//CalculatePlayersTotalScore();
		//drawText();
		//drawText();
		//fnc00071900();
		//drawText();
		//fnc00072e18();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//fnc00071e80();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//fnc00072b68();
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
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//fnc00070970();
		//drawText();
	}

	// RAM MAINMENU
	void fnc00075710() {
		//N64.fnc0001db44();
		//N64.fnc0001e074();
	}

	// RAM MAINMENU
	void fnc00075b64(int a0) {
	}

	// RAM MAINMENU
	/// Show version info on title screen if slot 3 named GRIMLN
	void fnc00075c84() {
		//drawText();
		//drawText();
		//drawText();
	}

	// RAM MAINMENU
	void fnc00075d58(bool freezeBackground) {
		//N64.fnc000132cc();
		//fnc000791a0();
		//fnc000791a0();
		//N64.guPerspective();
		//N64.guLookAt();
		//fnc00022810();
		//N64.fnc000039d0();
		//fnc00022810();
		//N64.fnc000039d0();
		//fnc00075c84();
	}

	// RAM MAINMENU
	void fnc000764b4() {
		//fnc00075d58();
		//fnc000731a8();
		//N64.fnc0000b044();
		//N64.fnc0000505c();
	}

	// RAM MAINMENU
	void DisplayCometExplodesCinematic() {
		//CalculatePlayersTotalScore();
		//fnc0007949c();
		//drawText();
		//fnc0007d7e0();
		//N64.fnc0001cc6c("startup\n");
		//N64.fnc00013684();
		//fnc000791a0();
		//fnc0007d91c();
		//N64.fnc0001c3d0();
		//N64.fnc00005aec();
		//N64.fnc00005b30();
		//fnc0007c4bc();
		//fnc0007c7f4();
		//fnc0007d7e0();
		//N64.fnc0001cc6c("kiss sequence\n");
		//fnc000791a0();
		//fnc0007d91c();
		//N64.fnc0001c3d0();
		//N64.fnc00005aec();
		//N64.fnc00005b30();
		//N64.fnc000056a8();
		//N64.fnc000056a8();
		//fnc00070940();
	}

	// RAM 0007685c
	void DisplayEndGameMessage() {
		//CalculatePlayersTotalScore();
		//fnc0007949c();
		//fnc0007c7f4();
		//N64.fnc00013684();
		//fnc0007c4bc();
		//N64.fnc000056a8();
		//N64.fnc000056a8();
		//fnc00070940();
	}

	// RAM 000768c4
	int DoIntroCutsceneLoop() {
		//drawText();
		//fnc0007d7e0();
		//fnc0007bfc4();
		//fnc000791a0();
		//fnc0007d91c();
		//N64.fnc0000b044();
		//N64.fnc0001c3d0();
		//N64.fnc0001322c();
		//N64.fnc000131a4();
		//N64.ButtonIsNewlyPressed();
		//N64.fnc00005aec();
		//N64.fnc00005b30();
		//N64.fnc000056a8();
		//N64.fnc000056a8();
		//fnc00070940();
		return 0;
	}

	// RAM MAINMENU
	/// Called once before showing the 'Select Slot' screen
	int DoFileSelectLoop() {
		//fnc0007166c();
		//N64.fnc00002a88();
		//N64.fnc00002b20();
		//N64.fnc00002ab4();
		//fnc00070c64();
		//fnc00070a8c();
		//fnc00070a8c();
		//fnc00070b68();
		//fnc00070b68();
		//fnc00070cc4();
		//fnc0007166c();
		//N64.ButtonIsNewlyPressed();
		//N64.ButtonIsNewlyPressed();
		//fnc00075d58();
		//fnc000731a8();
		//N64.fnc0000b044();
		//N64.fnc0000505c();
		//N64.fnc000153d8();
		//fnc000709f0();
		//fnc00075d58();
		//fnc00075b64();
		//fnc000731a8();
		//N64.fnc0000b044();
		//N64.fnc0000505c();
		//N64.guess_loadGame();
		//N64.fnc00002ab4();
		//N64.fnc0001cc6c("slot name: %s\n");
		//N64.fnc0001cc6c("empty slot!!!!!!!!!!!!!!!!!!!!!!!!!\n");
		//fnc000709f0();
		//N64.fnc0000afdc();
		return 0;
	}

	// RAM MAINMENU
	int fnc00076fd8()
	{
		return 3;
	}

	// RAM MAINMENU
	void fnc00076fe0(int a0, uint a1) {
	}

	// RAM 0007704c
	int DoPressStartLoop() {
		//	addiu		sp, sp, $ffe0		# 0007704c:27bdffe0	
		//	sw		ra, $001c(sp)		# 00077050:afbf001c	
		//	sw		s1, $0018(sp)		# 00077054:afb10018	
		//	sw		s0, $0014(sp)		# 00077058:afb00014	
		//	or		s0, zero, zero		# 0007705c:00008025	
		int s0 = 0;
		//	jal		$000709f0		# 00077060:0c01c27c	^ FNC_000709f0
		//	addiu		s1, zero, $0001		# 00077064:24110001	s1=$00000001
		int s1 = 1;
		fnc000709f0();
		//	lui		v0, $800d		# 00077068:3c02800d	v0=$800d0000
		//	addiu		v0, v0, $74a6		# 0007706c:244274a6	v0=$800d74a6
		//	addiu		t6, zero, $003f		# 00077070:240e003f	t6=$0000003f
		//	sh		t6, $0000(v0)		# 00077074:a44e0000	[800d74a6]
		x800d74a6 = 0x3f;
		//	lh		t7, $0000(v0)		# 00077078:844f0000	t7=$800d74a6
		//	lui		at, $800d		# 0007707c:3c01800d	at=$800d0000
		//	sh		t7, $74a4(at)		# 00077080:a42f74a4	[800d74a4]
		x800d74a4 = x800d74a6;
		//	sltiu		at, s0, $03e8		# 00077084:2e0103e8	
		do
		{
			//__00077088:					# 
			//	beq		at, zero, $000770a4	# 00077088:10200006	v __000770a4
			//	addiu		a0, zero, $003f		# 0007708c:2404003f	a0=$0000003f
			if (s0 < 0x3e8)
			{
				//	sll		a2, s0, 16		# 00077090:00103400	
				//	sra		t8, a2, 16		# 00077094:0006c403	
				//	or		a2, t8, zero		# 00077098:03003025	
				//	jal		$00070c64		# 0007709c:0c01c319	^ FNC_00070c64
				//	addiu		a1, zero, $0001		# 000770a0:24050001	a1=$00000001
				fnc00070c64(0x3f, 1, (s0 << 16) >>> 16);
			}
			//__000770a4:					# 
			//	sltiu		at, s0, $0011		# 000770a4:2e010011	
			//	bne		at, zero, $000770d8	# 000770a8:1420000b	v __000770d8
			//	or		a0, zero, zero		# 000770ac:00002025	
			if (s0 >= 0x11)
			{
				//	jal		$00003584		# 000770b0:0c000d61	^ FNC_00003584
				//	ori		a1, zero, $9000		# 000770b4:34059000	a1=$00009000
				bool pressed = N64.ButtonIsNewlyPressed(N64.Controller.ONE,
					N64.Buttons.A | N64.Buttons.START);
				//	beq		v0, zero, $000770c4	# 000770b8:10400002	v __000770c4
				//	or		a0, zero, zero		# 000770bc:00002025	
				if (pressed)
				{
					//	addiu		s1, zero, $0002		# 000770c0:24110002	s1=$00000002
					s1 = 2;
				}
				//__000770c4:					# 
				//	jal		$00003584		# 000770c4:0c000d61	^ FNC_00003584
				//	addiu		a1, zero, $4000		# 000770c8:24054000	a1=$00004000
				pressed = N64.ButtonIsNewlyPressed(N64.Controller.ONE, N64.Buttons.B);
				//	beq		v0, zero, $000770d8	# 000770cc:10400002	v __000770d8
				//	nop					# 000770d0:00000000	
				if (pressed)
				{
					//	or		s1, zero, zero		# 000770d4:00008825	
					s1 = 0;
				}
			}
			//__000770d8:					# 
			//	jal		$00075d58		# 000770d8:0c01d756	^ FNC_00075d58
			//	or		a0, zero, zero		# 000770dc:00002025	
			fnc00075d58(false);
			//	jal		$000731a8		# 000770e0:0c01cc6a	^ FNC_000731a8
			//	nop					# 000770e4:00000000	
			fnc000731a8();
			//	jal		$0000b044		# 000770e8:0c002c11	^ FNC_0000b044
			//	nop					# 000770ec:00000000	
			N64.fnc0000b044();
			//	jal		$0000505c		# 000770f0:0c001417	^ FNC_0000505c
			//	nop					# 000770f4:00000000	
			N64.fnc0000505c();
			//	addiu		s0, s0, $0001		# 000770f8:26100001	s0=$00000001
			s0++;
			//	sltiu		at, s0, $0640		# 000770fc:2e010640	
			//	bnel		at, zero, $00077110	# 00077100:54200003	v __00077110
			//	addiu		at, zero, $0001		# 00077104:24010001	at=$00000001
			if (s0 >= 0x640)
			{
				//	addiu		s1, zero, $0003		# 00077108:24110003	s1=$00000003
				s1 = 3;
				//	addiu		at, zero, $0001		# 0007710c:24010001	at=$00000001
			}
			//__00077110:					# 
			//	beql		s1, at, $00077088	# 00077110:5221ffdd	^ __00077088
			//	sltiu		at, s0, $03e8		# 00077114:2e0103e8	
		} while (s1 == 1);
		
		//	jal		$000153d8		# 00077118:0c0054f6	^ FNC_000153d8
		//	addiu		a0, zero, $00c8		# 0007711c:240400c8	a0=$000000c8
		N64.fnc000153d8(0xc8);
		//	addiu		at, zero, $0002		# 00077120:24010002	at=$00000002
		//	bne		s1, at, $000771d0	# 00077124:1621002a	v __000771d0
		//	nop					# 00077128:00000000	
		if (s1 == 2)
		{
			//	jal		$000709f0		# 0007712c:0c01c27c	^ FNC_000709f0
			//	nop					# 00077130:00000000	
			fnc000709f0();
			//	or		s0, zero, zero		# 00077134:00008025	
			s0 = 0;
			//	slti		at, s0, $00aa		# 00077138:2a0100aa	
			do
			{
				//__0007713c:					# 
				//	beq		at, zero, $00077154	# 0007713c:10200005	v __00077154
				//	nop					# 00077140:00000000	
				if (s0 < 0xaa)
				{
					//	jal		$00075d58		# 00077144:0c01d756	^ FNC_00075d58
					//	or		a0, zero, zero		# 00077148:00002025	
					fnc00075d58(false);
					//	beq		zero, zero, $00077160	# 0007714c:10000004	v __00077160
					//	slti		at, s0, $00ab		# 00077150:2a0100ab	
				}
				else
				{
					//__00077154:					# 
					//	jal		$00075d58		# 00077154:0c01d756	^ FNC_00075d58
					//	addiu		a0, zero, $0001		# 00077158:24040001	a0=$00000001
					fnc00075d58(true);
					//	slti		at, s0, $00ab		# 0007715c:2a0100ab	
				}
				//__00077160:					# 
				//	bne		at, zero, $00077170	# 00077160:14200003	v __00077170
				//	or		v0, s0, zero		# 00077164:02001025	
				int v0 = s0;
				if (s0 > 0xab)
				{
					//	beq		zero, zero, $00077170	# 00077168:10000001	v __00077170
					//	addiu		v0, zero, $00aa		# 0007716c:240200aa	v0=$000000aa
					v0 = 0xaa;
				}
				//__00077170:					# 
				//	sll		a0, v0, 16		# 00077170:00022400	a0=$00aa0000
				//	sra		t9, a0, 16		# 00077174:0004cc03	
				//	jal		$00075b64		# 00077178:0c01d6d9	^ FNC_00075b64
				//	or		a0, t9, zero		# 0007717c:03202025	a0=$000000aa
				fnc00075b64((v0 << 16) >>> 16);
				//	jal		$000731a8		# 00077180:0c01cc6a	^ FNC_000731a8
				//	nop					# 00077184:00000000	
				fnc000731a8();
				//	jal		$0000b044		# 00077188:0c002c11	^ FNC_0000b044
				//	nop					# 0007718c:00000000	
				N64.fnc0000b044();
				//	jal		$0000505c		# 00077190:0c001417	^ FNC_0000505c
				//	nop					# 00077194:00000000	
				N64.fnc0000505c();
				//	addiu		s0, s0, $000a		# 00077198:2610000a	s0=$0000000a
				s0 += 0xa;
				//	addiu		at, zero, $00be		# 0007719c:240100be	at=$000000be
				//	bnel		s0, at, $0007713c	# 000771a0:5601ffe6	^ __0007713c
				//	slti		at, s0, $00aa		# 000771a4:2a0100aa	
			} while (s0 != 0xbe);
			//	lui		t0, $8003		# 000771a8:3c088003	t0=$80030000
			//	lw		t0, $1b84(t0)		# 000771ac:8d081b84	t0=$80031b84
			//	lui		a0, $8006		# 000771b0:3c048006	a0=$80060000
			//	lui		a1, $800b		# 000771b4:3c05800b	a1=$800b0000
			//	xori		t1, t0, $0001		# 000771b8:39090001	
			//	sll		t2, t1, 2		# 000771bc:00095080	
			//	addu		a0, a0, t2		# 000771c0:008a2021	
			//	lw		a0, $bb48(a0)		# 000771c4:8c84bb48	
			//	jal		$00076fe0		# 000771c8:0c01dbf8	^ FNC_00076fe0
			//	addiu		a1, a1, $ed88		# 000771cc:24a5ed88	a1=$800aed88
			fnc00076fe0((x80031b84 ^ 1) == 0 ? x8005bb48 : x8005bb4c, 0x800aed88);
		}
		
		//__000771d0:					# 
		//	jal		$0000afdc		# 000771d0:0c002bf7	^ FNC_0000afdc
		//	nop					# 000771d4:00000000	
		N64.fnc0000afdc();
		//	jal		$000709f0		# 000771d8:0c01c27c	^ FNC_000709f0
		//	nop					# 000771dc:00000000	
		fnc000709f0();
		//	lw		ra, $001c(sp)		# 000771e0:8fbf001c	
		//	or		v0, s1, zero		# 000771e4:02201025	
		//	addiu		t3, zero, $0001		# 000771e8:240b0001	t3=$00000001
		//	lui		at, $800d		# 000771ec:3c01800d	at=$800d0000
		//	lw		s1, $0018(sp)		# 000771f0:8fb10018	
		//	lw		s0, $0014(sp)		# 000771f4:8fb00014	
		//	sw		t3, $6d8c(at)		# 000771f8:ac2b6d8c	[800d6d8c]
		x800d6d8c = 1;
		//	jr		ra			# 000771fc:03e00008	
		//	addiu		sp, sp, $0020		# 00077200:27bd0020	
		return s1;
	}

	// RAM MAINMENU
	void fnc00077204() {
		//fnc000709f0();
		//fnc00070c64();
		//fnc00070cc4();
		//fnc0007166c();
		//N64.ButtonIsNewlyPressed();
		//N64.ButtonIsNewlyPressed();
		//fnc00075d58();
		//fnc000731a8();
		//N64.fnc0000b044();
		//N64.fnc0000505c();
		//N64.fnc0000afdc();
		//N64.fnc000153d8();
		//fnc000709f0();
	}

	// RAM 00077344
	int DisplaySelectFileDifficulty() {
		//	addiu		sp, sp, $ffd0		# 00077344:27bdffd0	
		//	sw		ra, $002c(sp)		# 00077348:afbf002c	
		//	sw		s1, $0018(sp)		# 0007734c:afb10018	
		//	sw		s0, $0014(sp)		# 00077350:afb00014	
		//	sw		s5, $0028(sp)		# 00077354:afb50028	
		//	sw		s4, $0024(sp)		# 00077358:afb40024	
		//	sw		s3, $0020(sp)		# 0007735c:afb30020	
		//	sw		s2, $001c(sp)		# 00077360:afb2001c	
		//	or		s0, zero, zero		# 00077364:00008025	
		int s0 = 0;
		//	jal		$000709f0		# 00077368:0c01c27c	^ FNC_000709f0
		//	addiu		s1, zero, $0001		# 0007736c:24110001	s1=$00000001
		int s1 = 1;
		fnc000709f0();
		//	lui		v0, $800d		# 00077370:3c02800d	v0=$800d0000
		//	addiu		v0, v0, $74a6		# 00077374:244274a6	v0=$800d74a6
		//	addiu		s4, zero, $005a		# 00077378:2414005a	s4=$0000005a
		//	sh		s4, $0000(v0)		# 0007737c:a4540000	[800d74a6]
		x800d74a6 = 0x5a;
		//	lh		t6, $0000(v0)		# 00077380:844e0000	t6=$800d74a6
		//	lui		s5, $800d		# 00077384:3c15800d	s5=$800d0000
		//	addiu		s5, s5, $74a4		# 00077388:26b574a4	s5=$800d74a4
		//	lui		s2, $8005		# 0007738c:3c128005	s2=$80050000
		//	addiu		s2, s2, $2acd		# 00077390:26522acd	s2=$80052acd
		//	addiu		s3, zero, $0001		# 00077394:24130001	s3=$00000001
		int s3 = 1;
		//	sh		t6, $0000(s5)		# 00077398:a6ae0000	[800d74a4]
		x800d74a4 = x800d74a6;
		//	sltiu		at, s0, $03e8		# 0007739c:2e0103e8	
		bool result = s0 < 0x3e8;
		//__000773a0:					# 
		do
		{
			//	beq		at, zero, $000773bc	# 000773a0:10200006	v __000773bc
			//	addiu		a0, zero, $0058		# 000773a4:24040058	a0=$00000058
			if (result)
			{
				//	sll		a2, s0, 16		# 000773a8:00103400	
				//	sra		t7, a2, 16		# 000773ac:00067c03	
				//	or		a2, t7, zero		# 000773b0:01e03025	
				//	jal		$00070c64		# 000773b4:0c01c319	^ FNC_00070c64
				//	addiu		a1, zero, $0003		# 000773b8:24050003	a1=$00000003
				fnc00070c64(0x58, 3, (s0 << 16) >>> 16); /// Allocate window?
			}
			//__000773bc:					# 
			//	sltiu		at, s0, $0021		# 000773bc:2e010021	
			//	bne		at, zero, $0007741c	# 000773c0:14200016	v __0007741c
			//	nop					# 000773c4:00000000	
			if (s0 >= 0x21)
			{
				//	jal		$00070cc4		# 000773c8:0c01c331	^ FNC_00070cc4
				//	nop					# 000773cc:00000000	
				fnc00070cc4();
				//	jal		$0007166c		# 000773d0:0c01c59b	^ FNC_0007166c
				//	nop					# 000773d4:00000000	
				fnc0007166c();
				//	or		a0, zero, zero		# 000773d8:00002025	
				//	jal		$00003584		# 000773dc:0c000d61	^ FNC_00003584
				//	ori		a1, zero, $9000		# 000773e0:34059000	a1=$00009000
				bool difficultySelected = N64.ButtonIsNewlyPressed(N64.Controller.ONE, (N64.Buttons.A | N64.Buttons.START));
				//	beq		v0, zero, $00077408	# 000773e4:10400008	v __00077408
				//	or		a0, zero, zero		# 000773e8:00002025	
				if (difficultySelected)
				{
					//	lh		t8, $0000(s5)		# 000773ec:86b80000	t8=$800d74a4
					//	addiu		s1, zero, $0002		# 000773f0:24110002	s1=$00000002
					s1 = 2;
					//	bne		s4, t8, $00077408	# 000773f4:16980004	v __00077408
					//	nop					# 000773f8:00000000	
					if (x800d74a4 == 0x5a) /// If Easy selected
					{
						//	lbu		t9, $0000(s2)		# 000773fc:92590000	t9=$80052acd
						//	ori		t0, t9, $0080		# 00077400:37280080	
						//	sb		t0, $0000(s2)		# 00077404:a2480000	[80052acd]
						playerModifier |= 0x80;
					}
				}
				//__00077408:					# 
				//	jal		$00003584		# 00077408:0c000d61	^ FNC_00003584
				//	addiu		a1, zero, $4000		# 0007740c:24054000	a1=$00004000
				bool exitMode = N64.ButtonIsNewlyPressed(N64.Controller.ONE, N64.Buttons.B);
				//	beq		v0, zero, $0007741c	# 00077410:10400002	v __0007741c
				//	nop					# 00077414:00000000	
				if (exitMode)
				{
					//	or		s1, zero, zero		# 00077418:00008825	
					s1 = 0;
				}
			}
			//__0007741c:					# 
			//	jal		$00075d58		# 0007741c:0c01d756	^ FNC_00075d58
			//	or		a0, zero, zero		# 00077420:00002025	
			fnc00075d58(0); /// Draws new menu frame?
			//	jal		$000731a8		# 00077424:0c01cc6a	^ FNC_000731a8
			//	nop					# 00077428:00000000	
			fnc000731a8();
			//	jal		$0000b044		# 0007742c:0c002c11	^ FNC_0000b044
			//	nop					# 00077430:00000000	
			N64.fnc0000b044();
			//	jal		$0000505c		# 00077434:0c001417	^ FNC_0000505c
			//	nop					# 00077438:00000000	
			N64.fnc0000505c();
			//	sltiu		at, s0, $03e8		# 0007743c:2e0103e8	
			//	beq		at, zero, $0007744c	# 00077440:10200002	v __0007744c
			//	nop					# 00077444:00000000	
			if (s0 < 0x03e8)
			{
				//	addiu		s0, s0, $0001		# 00077448:26100001	
				s0++;
			}
			//__0007744c:					# 
			//	beql		s1, s3, $000773a0	# 0007744c:5233ffd4	^ __000773a0
			//	sltiu		at, s0, $03e8		# 00077450:2e0103e8	
			result = s0 < 0x03e8;
		} while (s1 == s3);
		
		//	jal		$0000afdc		# 00077454:0c002bf7	^ FNC_0000afdc
		//	nop					# 00077458:00000000	
		N64.fnc0000afdc();
		//	jal		$000153d8		# 0007745c:0c0054f6	^ FNC_000153d8
		//	addiu		a0, zero, $00c8		# 00077460:240400c8	a0=$000000c8
		N64.fnc000153d8(0xc8);
		//	jal		$000709f0		# 00077464:0c01c27c	^ FNC_000709f0
		//	nop					# 00077468:00000000	
		fnc000709f0();
		//	lw		ra, $002c(sp)		# 0007746c:8fbf002c	
		//	or		v0, s1, zero		# 00077470:02201025	
		//	lw		s1, $0018(sp)		# 00077474:8fb10018	
		//	lw		s0, $0014(sp)		# 00077478:8fb00014	
		//	lw		s2, $001c(sp)		# 0007747c:8fb2001c	
		//	lw		s3, $0020(sp)		# 00077480:8fb30020	
		//	lw		s4, $0024(sp)		# 00077484:8fb40024	
		//	lw		s5, $0028(sp)		# 00077488:8fb50028	
		//	jr		ra			# 0007748c:03e00008	
		//	addiu		sp, sp, $0030		# 00077490:27bd0030	
		return s1;
	}

	// RAM MAINMENU
	void DoDeleteFile() {
		//fnc000708b8();
		//fnc000708b8();
		//fnc000708b8();
		//fnc00070514();
		//N64.fnc00002ab4();
		//fnc00070a8c();
		//fnc00070b68();
		//fnc0007166c();
		//fnc00070cc4();
		//fnc0007166c();
		//N64.ButtonIsNewlyPressed();
		//N64.ButtonIsNewlyPressed();
		//fnc00075d58();
		//fnc000731a8();
		//N64.fnc0000b044();
		//N64.fnc0000505c();
		//N64.fnc000153d8();
		//fnc00077204();
		//N64.fnc0000afdc();
		//fnc000709f0();
		//fnc000764b4();
	}

	// RAM MAINMENU
	void DoCopyFile() {
		//fnc000708b8();
		//fnc000708b8();
		//fnc000708b8();
		//fnc00070514();
		//N64.fnc00002ab4();
		//fnc00070a8c();
		//fnc00070b68();
		//fnc0007166c();
		//fnc00070cc4();
		//fnc0007166c();
		//N64.ButtonIsNewlyPressed();
		//N64.ButtonIsNewlyPressed();
		//fnc00075d58();
		//fnc000731a8();
		//N64.fnc0000b044();
		//N64.fnc0000505c();
		//N64.fnc0000afdc();
		//fnc000709f0();
		//fnc00070bd8();
		//N64.fnc000153d8();
		//fnc00070a8c();
		//fnc00070cc4();
		//fnc000708b8();
		//fnc00070514();
		//fnc00070cc4();
		//fnc0007166c();
		//N64.ButtonIsNewlyPressed();
		//N64.ButtonIsNewlyPressed();
		//fnc00075d58();
		//fnc000731a8();
		//N64.fnc0000b044();
		//N64.fnc0000505c();
		//N64.fnc000153d8();
		//fnc00077204();
		//N64.fnc0000afdc();
		//fnc000764b4();
		//fnc000709f0();
		//fnc000708b8();
		//DoCopyFile();
	}

	// RAM MAINMENU
	int DoFileDetailsLoop() {
		//fnc00070904();
		//N64.fnc00002a88();
		//N64.fnc00002b20();
		//N64.fnc00002ab4();
		//fnc00070c64();
		//fnc00070cc4();
		//fnc0007166c();
		//N64.ButtonIsNewlyPressed();
		//fnc00070494();
		//fnc000708b8();
		//N64.ButtonIsNewlyPressed();
		//fnc00070494();
		//fnc00075d58();
		//fnc000731a8();
		//N64.fnc0000b044();
		//N64.fnc0000505c();
		//N64.fnc000153d8();
		//N64.fnc0000afdc();
		//fnc000708b8();
		//fnc000708b8();
		//fnc000708b8();
		//fnc000708b8();
		//fnc000708b8();
		return 0;
	}

	// RAM MAINMENU
	int fnc00077ce0() {
		//fnc0007166c();
		//fnc00070c64();
		//fnc00070cc4();
		//fnc0007166c();
		//N64.ButtonIsNewlyPressed();
		//N64.ButtonIsNewlyPressed();
		//fnc00075d58();
		//fnc000731a8();
		//N64.fnc0000b044();
		//N64.fnc0000505c();
		//N64.fnc0000afdc();
		//N64.fnc000153d8();
		//fnc00070940();
		//N64.fnc000153d8();
		//fnc000709f0();
		//N64.fnc000153d8();
		return 0;
	}

	// RAM MAINMENU
	void fnc00077e78() {
	}

	// RAM MAINMENU
	int fnc00077e88() {
		//N64.fnc0001cc6c("locking windows %d to %d\n");
		//fnc00070c64();
		//fnc00070bd8();
		//fnc00070aec();
		//fnc00070a8c();
		//fnc00070aec();
		//fnc00070cc4();
		//fnc0007166c();
		//N64.ButtonIsNewlyPressed();
		//N64.fnc000153d8();
		//fnc00077204();
		//fnc00070c64();
		//N64.ButtonIsNewlyPressed();
		//fnc00075d58();
		//fnc000731a8();
		//N64.fnc0000b044();
		//N64.fnc0000505c();
		//N64.fnc000153d8();
		//N64.fnc0000afdc();
		//fnc000709f0();
		return 0;
	}

	// RAM MAINMENU
	int fnc00078110() {
		//fnc00070c64();
		//fnc00070bd8();
		//fnc00070aec();
		//fnc00070aec();
		//fnc00070aec();
		//fnc00070aec();
		//fnc00070aec();
		//fnc00070aec();
		//fnc00070cc4();
		//fnc0007166c();
		//N64.ButtonIsNewlyPressed();
		//N64.ButtonIsNewlyPressed();
		//fnc00075d58();
		//fnc000731a8();
		//N64.fnc0000b044();
		//N64.fnc0000505c();
		//N64.fnc000153d8();
		//N64.fnc0000afdc();
		//fnc000709f0();
		return 0;
	}

	// RAM 00078424
	int DoChooseFileNameLoop() {
		//	addiu		sp, sp, $ff88		# 00078424:27bdff88	
		//	lui		v1, $800d		# 00078428:3c03800d	v1=$800d0000
		//	addiu		v1, v1, $74a6		# 0007842c:246374a6	v1=$800d74a6
		//	addiu		t6, zero, $0016		# 00078430:240e0016	t6=$00000016
		//	sh		t6, $0000(v1)		# 00078434:a46e0000	[800d74a6]
		//	lh		t7, $0000(v1)		# 00078438:846f0000	t7=$800d74a6
		//	sw		s5, $002c(sp)		# 0007843c:afb5002c	
		//	lui		s5, $800d		# 00078440:3c15800d	s5=$800d0000
		//	addiu		s5, s5, $74a4		# 00078444:26b574a4	s5=$800d74a4
		//	sw		s6, $0030(sp)		# 00078448:afb60030	
		//	sw		s3, $0024(sp)		# 0007844c:afb30024	
		//	sw		s0, $0018(sp)		# 00078450:afb00018	
		//	lui		v0, $8004		# 00078454:3c028004	v0=$80040000
		//	sw		ra, $0034(sp)		# 00078458:afbf0034	
		//	sw		s4, $0028(sp)		# 0007845c:afb40028	
		//	sw		s2, $0020(sp)		# 00078460:afb20020	
		//	sw		s1, $001c(sp)		# 00078464:afb1001c	
		//	or		s3, zero, zero		# 00078468:00009825	
		//	addiu		s6, zero, $0001		# 0007846c:24160001	s6=$00000001
		//	or		s0, zero, zero		# 00078470:00008025	
		//	addiu		v0, v0, $7fad		# 00078474:24427fad	v0=$80047fad
		//	addiu		a0, sp, $0069		# 00078478:27a40069	
		//	addiu		a2, zero, $0005		# 0007847c:24060005	a2=$00000005
		//	addiu		a1, zero, $0020		# 00078480:24050020	a1=$00000020
		//	sh		t7, $0000(s5)		# 00078484:a6af0000	[800d74a4]
		//__00078488:					# 
		//	lbu		t8, $0000(v0)		# 00078488:90580000	t8=$80047fad
		//	or		v1, a2, zero		# 0007848c:00c01825	v1=$00000005
		//	sb		a1, $0000(v0)		# 00078490:a0450000	[80047fad]
		//	addiu		a0, a0, $ffff		# 00078494:2484ffff	
		//	addiu		v0, v0, $ffff		# 00078498:2442ffff	v0=$80047fac
		//	sb		t8, $0001(a0)		# 0007849c:a0980001	
		//	bne		a2, zero, $00078488	# 000784a0:14c0fff9	^ __00078488
		//	addiu		a2, a2, $ffff		# 000784a4:24c6ffff	a2=$00000004
		//	jal		$00070514		# 000784a8:0c01c145	^ FNC_00070514
		//	addiu		a0, zero, $0015		# 000784ac:24040015	a0=$00000015
		///fnc00070514();
		//	lui		s2, $8009		# 000784b0:3c128009	s2=$80090000
		//	addiu		s2, s2, $09b0		# 000784b4:265209b0	s2=$800909b0
		//	addiu		t9, zero, $00a0		# 000784b8:241900a0	t9=$000000a0
		//	addiu		t0, zero, $0088		# 000784bc:24080088	t0=$00000088
		//	addiu		t1, zero, $00d2		# 000784c0:240900d2	t1=$000000d2
		//	addiu		t2, zero, $00c2		# 000784c4:240a00c2	t2=$000000c2
		//	addiu		t3, zero, $0030		# 000784c8:240b0030	t3=$00000030
		//	addiu		t4, zero, $0023		# 000784cc:240c0023	t4=$00000023
		//	sh		t0, $0836(s2)		# 000784d0:a6480836	[800911e6]
		//	sh		t9, $0834(s2)		# 000784d4:a6590834	[800911e4]
		//	sh		t2, $083a(s2)		# 000784d8:a64a083a	[800911ea]
		//	sh		t1, $0838(s2)		# 000784dc:a6490838	[800911e8]
		//	sh		t3, $0840(s2)		# 000784e0:a64b0840	[800911f0]
		//	sh		zero, $083e(s2)		# 000784e4:a640083e	[800911ee]
		//	sh		t4, $0844(s2)		# 000784e8:a64c0844	[800911f4]
		//	sh		zero, $0842(s2)		# 000784ec:a6400842	[800911f2]
		//	jal		$00070514		# 000784f0:0c01c145	^ FNC_00070514
		//	addiu		a0, zero, $0032		# 000784f4:24040032	a0=$00000032
		///fnc00070514();
		//	addiu		a0, zero, $0016		# 000784f8:24040016	a0=$00000016
		//	jal		$00070bd8		# 000784fc:0c01c2f6	^ FNC_00070bd8
		//	addiu		a1, zero, $002f		# 00078500:2405002f	a1=$0000002f
		///fnc00070bd8();
		//	addiu		a0, zero, $0030		# 00078504:24040030	a0=$00000030
		//	jal		$00070aec		# 00078508:0c01c2bb	^ FNC_00070aec
		//	addiu		a1, zero, $0031		# 0007850c:24050031	a1=$00000031
		///fnc00070aec();
		//	addiu		t5, zero, $0001		# 00078510:240d0001	t5=$00000001
		//	sb		t5, $03b8(s2)		# 00078514:a24d03b8	[80090d68]
		//	addiu		s1, zero, $0020		# 00078518:24110020	s1=$00000020
		//	sltiu		at, s3, $001c		# 0007851c:2e61001c	
		//__00078520:					# 
		//	beq		at, zero, $00078594	# 00078520:1020001c	v __00078594
		//	or		s4, zero, zero		# 00078524:0000a025	
		//	andi		t6, s3, $0003		# 00078528:326e0003	
		//	bne		t6, zero, $00078594	# 0007852c:15c00019	v __00078594
		//	srl		v0, s3, 2		# 00078530:00131082	
		//	addiu		a0, v0, $0016		# 00078534:24440016	
		//	sll		t7, a0, 16		# 00078538:00047c00	
		//	sra		a0, t7, 16		# 0007853c:000f2403	
		//	addiu		t9, zero, $0023		# 00078540:24190023	t9=$00000023
		//	addiu		t6, zero, $0031		# 00078544:240e0031	t6=$00000031
		//	subu		t7, t6, v0		# 00078548:01c27823	
		//	subu		t0, t9, v0		# 0007854c:03224023	
		//	addiu		t3, v0, $0024		# 00078550:244b0024	
		//	sll		t4, t3, 16		# 00078554:000b6400	
		//	sll		t1, t0, 16		# 00078558:00084c00	
		//	sll		t8, t7, 16		# 0007855c:000fc400	
		//	sra		t9, t8, 16		# 00078560:0018cc03	
		//	sra		t2, t1, 16		# 00078564:00095403	
		//	sra		t5, t4, 16		# 00078568:000c6c03	
		//	sw		t5, $003c(sp)		# 0007856c:afad003c	
		//	sw		t2, $0040(sp)		# 00078570:afaa0040	
		//	jal		$00070514		# 00078574:0c01c145	^ FNC_00070514
		//	sw		t9, $0038(sp)		# 00078578:afb90038	
		///fnc00070514();
		//	jal		$00070514		# 0007857c:0c01c145	^ FNC_00070514
		//	lh		a0, $0042(sp)		# 00078580:87a40042	
		///fnc00070514();
		//	jal		$00070514		# 00078584:0c01c145	^ FNC_00070514
		//	lh		a0, $003e(sp)		# 00078588:87a4003e	
		///fnc00070514();
		//	jal		$00070514		# 0007858c:0c01c145	^ FNC_00070514
		//	lh		a0, $003a(sp)		# 00078590:87a4003a	
		///fnc00070514();
		//__00078594:					# 
		//	bne		s0, zero, $000785a4	# 00078594:16000003	v __000785a4
		//	addiu		a0, zero, $0030		# 00078598:24040030	a0=$00000030
		//	jal		$00070aec		# 0007859c:0c01c2bb	^ FNC_00070aec
		//	addiu		a1, zero, $0031		# 000785a0:24050031	a1=$00000031
		///fnc00070aec();
		//__000785a4:					# 
		//	sltiu		at, s3, $0041		# 000785a4:2e610041	
		//	bne		at, zero, $00078758	# 000785a8:1420006b	v __00078758
		//	nop					# 000785ac:00000000	
		//	jal		$00070cc4		# 000785b0:0c01c331	^ FNC_00070cc4
		//	nop					# 000785b4:00000000	
		///fnc00070cc4();
		//	jal		$0007166c		# 000785b8:0c01c59b	^ FNC_0007166c
		//	nop					# 000785bc:00000000	
		///fnc0007166c();
		//	or		a0, zero, zero		# 000785c0:00002025	
		//	jal		$00003584		# 000785c4:0c000d61	^ FNC_00003584
		//	ori		a1, zero, $9000		# 000785c8:34059000	a1=$00009000
		///N64.ButtonIsNewlyPressed();
		//	beql		v0, zero, $0007871c	# 000785cc:50400053	v __0007871c
		//	or		a0, zero, zero		# 000785d0:00002025	
		//	lh		v0, $0000(s5)		# 000785d4:86a20000	
		//	addiu		at, zero, $0030		# 000785d8:24010030	at=$00000030
		//	beq		v0, at, $000785f4	# 000785dc:10410005	v __000785f4
		//	addiu		at, zero, $0031		# 000785e0:24010031	at=$00000031
		//	beq		v0, at, $00078678	# 000785e4:10410024	v __00078678
		//	nop					# 000785e8:00000000	
		//	beq		zero, zero, $000786a4	# 000785ec:1000002d	v __000786a4
		//	slti		at, s0, $0006		# 000785f0:2a010006	
		//__000785f4:					# 
		//	blez		s0, $00078624		# 000785f4:1a00000b	v __00078624
		//	addiu		v0, s0, $ffff		# 000785f8:2602ffff	
		//	sll		v1, v0, 16		# 000785fc:00021c00	
		//	sra		t0, v1, 16		# 00078600:00034403	
		//	sll		s0, v0, 16		# 00078604:00028400	
		//	lui		at, $8004		# 00078608:3c018004	at=$80040000
		//	addu		at, at, t0		# 0007860c:00280821	
		//	sra		t1, s0, 16		# 00078610:00104c03	
		//	addiu		t2, zero, $0020		# 00078614:240a0020	t2=$00000020
		//	sb		t2, $7fa8(at)		# 00078618:a02a7fa8	
		//	or		s0, t1, zero		# 0007861c:01208025	
		//	addiu		s4, zero, $0001		# 00078620:24140001	s4=$00000001
		//__00078624:					# 
		//	bne		s0, zero, $0007863c	# 00078624:16000005	v __0007863c
		//	addiu		a0, zero, $0030		# 00078628:24040030	a0=$00000030
		//	jal		$00070aec		# 0007862c:0c01c2bb	^ FNC_00070aec
		//	addiu		a1, zero, $0031		# 00078630:24050031	a1=$00000031
		///fnc00070aec();
		//	addiu		t3, zero, $0016		# 00078634:240b0016	t3=$00000016
		//	sh		t3, $0000(s5)		# 00078638:a6ab0000	
		//__0007863c:					# 
		//	addiu		at, zero, $0005		# 0007863c:24010005	at=$00000005
		//	bne		s0, at, $00078650	# 00078640:16010003	v __00078650
		//	addiu		a0, zero, $0016		# 00078644:24040016	a0=$00000016
		//	jal		$00070bd8		# 00078648:0c01c2f6	^ FNC_00070bd8
		//	addiu		a1, zero, $002f		# 0007864c:2405002f	a1=$0000002f
		///fnc00070bd8();
		//__00078650:					# 
		//	jal		$00070494		# 00078650:0c01c125	^ FNC_00070494
		//	addiu		a0, zero, $0030		# 00078654:24040030	a0=$00000030
		///fnc00070494();
		//	addiu		t4, zero, $36b0		# 00078658:240c36b0	t4=$000036b0
		//	addiu		t5, zero, $0100		# 0007865c:240d0100	t5=$00000100
		//	sh		t4, $0012(v0)		# 00078660:a44c0012	
		//	sh		t5, $0014(v0)		# 00078664:a44d0014	
		//	jal		$000153d8		# 00078668:0c0054f6	^ FNC_000153d8
		//	addiu		a0, zero, $00cb		# 0007866c:240400cb	a0=$000000cb
		///N64.fnc000153d8();
		//	beq		zero, zero, $0007871c	# 00078670:1000002a	v __0007871c
		//	or		a0, zero, zero		# 00078674:00002025	
		//__00078678:					# 
		//	blez		s0, $00078718		# 00078678:1a000027	v __00078718
		//	addiu		a0, zero, $0032		# 0007867c:24040032	a0=$00000032
		//	jal		$00070494		# 00078680:0c01c125	^ FNC_00070494
		//	addiu		s6, zero, $0002		# 00078684:24160002	s6=$00000002
		///fnc00070494();
		//	addiu		t6, zero, $0308		# 00078688:240e0308	t6=$00000308
		//	addiu		t7, zero, $0280		# 0007868c:240f0280	t7=$00000280
		//	sh		zero, $000a(v0)		# 00078690:a440000a	
		//	sh		zero, $000e(v0)		# 00078694:a440000e	
		//	sh		t6, $0004(v0)		# 00078698:a44e0004	
		//	beq		zero, zero, $00078718	# 0007869c:1000001e	v __00078718
		//	sh		t7, $0000(v0)		# 000786a0:a44f0000	
		//__000786a4:					# 
		//	beq		at, zero, $000786c8	# 000786a4:10200008	v __000786c8
		//	addiu		t8, v0, $002b		# 000786a8:2458002b	
		//	lui		at, $8004		# 000786ac:3c018004	at=$80040000
		//	addu		at, at, s0		# 000786b0:00300821	
		//	addiu		s0, s0, $0001		# 000786b4:26100001	
		//	sll		t9, s0, 16		# 000786b8:0010cc00	
		//	sra		s0, t9, 16		# 000786bc:00198403	
		//	sb		t8, $7fa8(at)		# 000786c0:a0387fa8	
		//	addiu		s4, zero, $0001		# 000786c4:24140001	s4=$00000001
		//__000786c8:					# 
		//	addiu		at, zero, $0001		# 000786c8:24010001	at=$00000001
		//	bne		s0, at, $000786dc	# 000786cc:16010003	v __000786dc
		//	addiu		a0, zero, $0030		# 000786d0:24040030	a0=$00000030
		//	jal		$00070bd8		# 000786d4:0c01c2f6	^ FNC_00070bd8
		//	addiu		a1, zero, $0031		# 000786d8:24050031	a1=$00000031
		///fnc00070bd8();
		//__000786dc:					# 
		//	addiu		at, zero, $0006		# 000786dc:24010006	at=$00000006
		//	bne		s0, at, $000786f8	# 000786e0:16010005	v __000786f8
		//	addiu		t1, zero, $0031		# 000786e4:24090031	t1=$00000031
		//	sh		t1, $0000(s5)		# 000786e8:a6a90000	
		//	addiu		a0, zero, $0016		# 000786ec:24040016	a0=$00000016
		//	jal		$00070aec		# 000786f0:0c01c2bb	^ FNC_00070aec
		//	addiu		a1, zero, $002f		# 000786f4:2405002f	a1=$0000002f
		///fnc00070aec();
		//__000786f8:					# 
		//	jal		$00070494		# 000786f8:0c01c125	^ FNC_00070494
		//	lh		a0, $0000(s5)		# 000786fc:86a40000	
		///fnc00070494();
		//	addiu		t2, zero, $36b0		# 00078700:240a36b0	t2=$000036b0
		//	addiu		t3, zero, $0100		# 00078704:240b0100	t3=$00000100
		//	sh		t2, $0012(v0)		# 00078708:a44a0012	
		//	sh		t3, $0014(v0)		# 0007870c:a44b0014	
		//	jal		$000153d8		# 00078710:0c0054f6	^ FNC_000153d8
		//	addiu		a0, zero, $00cb		# 00078714:240400cb	a0=$000000cb
		///N64.fnc000153d8();
		//__00078718:					# 
		//	or		a0, zero, zero		# 00078718:00002025	
		//__0007871c:					# 
		//	jal		$00003584		# 0007871c:0c000d61	^ FNC_00003584
		//	addiu		a1, zero, $4000		# 00078720:24054000	a1=$00004000
		///N64.ButtonIsNewlyPressed();
		//	beq		v0, zero, $00078758	# 00078724:1040000c	v __00078758
		//	addiu		t4, zero, $0003		# 00078728:240c0003	t4=$00000003
		//	lui		at, $8004		# 0007872c:3c018004	at=$80040000
		//	sh		t4, $76a0(at)		# 00078730:a42c76a0	[800476a0]
		//	or		s6, zero, zero		# 00078734:0000b025	
		//	jal		$00070494		# 00078738:0c01c125	^ FNC_00070494
		//	addiu		a0, zero, $0032		# 0007873c:24040032	a0=$00000032
		///fnc00070494();
		//	addiu		t5, zero, $0308		# 00078740:240d0308	t5=$00000308
		//	addiu		t6, zero, $0280		# 00078744:240e0280	t6=$00000280
		//	sh		zero, $000a(v0)		# 00078748:a440000a	
		//	sh		zero, $000e(v0)		# 0007874c:a440000e	
		//	sh		t5, $0004(v0)		# 00078750:a44d0004	
		//	sh		t6, $0000(v0)		# 00078754:a44e0000	
		//__00078758:					# 
		//	beq		s4, zero, $00078820	# 00078758:12800031	v __00078820
		//	lui		t7, $8004		# 0007875c:3c0f8004	t7=$80040000
		//	lbu		t7, $7fa8(t7)		# 00078760:91ef7fa8	t7=$80047fa8
		//	or		a2, zero, zero		# 00078764:00003025	
		//	lui		t8, $8004		# 00078768:3c188004	t8=$80040000
		//	beq		s1, t7, $000787ac	# 0007876c:122f000f	v __000787ac
		//	or		a1, zero, zero		# 00078770:00002825	
		//	addiu		t8, t8, $7fa8		# 00078774:27187fa8	t8=$80047fa8
		//	addiu		t9, sp, $0050		# 00078778:27b90050	
		//	addu		a0, zero, t9		# 0007877c:00192021	
		//	addu		v0, zero, t8		# 00078780:00181021	v0=$80047fa8
		//	lbu		v1, $0000(t8)		# 00078784:93030000	v1=$80047fa8
		//	addiu		a2, a2, $0001		# 00078788:24c60001	a2=$00000001
		//__0007878c:					# 
		//	slti		at, a2, $0006		# 0007878c:28c10006	
		//	sb		v1, $0000(a0)		# 00078790:a0830000	
		//	addiu		v0, v0, $0001		# 00078794:24420001	v0=$80047fa9
		//	beq		at, zero, $000787ac	# 00078798:10200004	v __000787ac
		//	addiu		a0, a0, $0001		# 0007879c:24840001	
		//	lbu		v1, $0000(v0)		# 000787a0:90430000	v1=$80047fa9
		//	bnel		s1, v1, $0007878c	# 000787a4:5623fff9	^ __0007878c
		//	addiu		a2, a2, $0001		# 000787a8:24c60001	a2=$00000002
		//__000787ac:					# 
		//	addiu		a0, sp, $0050		# 000787ac:27a40050	
		//	addu		t0, a0, a2		# 000787b0:00864021	
		//	jal		$0000a2b8		# 000787b4:0c0028ae	^ FNC_0000a2b8
		//	sb		zero, $0000(t0)		# 000787b8:a1000000	
		///N64.fnc0000a2b8();
		//	addiu		v1, v0, $0030		# 000787bc:24430030	v1=$80047fd9
		//	sll		t5, v1, 16		# 000787c0:00036c00	t5=$7fd90000
		//	sra		t6, t5, 16		# 000787c4:000d7403	
		//	lh		t1, $0836(s2)		# 000787c8:86490836	
		//	lh		t2, $083a(s2)		# 000787cc:864a083a	
		//	lh		t3, $0840(s2)		# 000787d0:864b0840	
		//	lh		t4, $0844(s2)		# 000787d4:864c0844	
		//	sra		t7, t6, 1		# 000787d8:000e7843	
		//	addiu		t8, zero, $00a0		# 000787dc:241800a0	t8=$000000a0
		//	subu		t9, t8, t7		# 000787e0:030fc823	t9=$ffffc0b4
		//	sh		t9, $0836(s2)		# 000787e4:a6590836	
		//	sh		v1, $0840(s2)		# 000787e8:a6430840	
		//	addiu		a0, zero, $0032		# 000787ec:24040032	a0=$00000032
		//	sh		t1, $0834(s2)		# 000787f0:a6490834	
		//	sh		t2, $0838(s2)		# 000787f4:a64a0838	
		//	sh		t3, $083e(s2)		# 000787f8:a64b083e	
		//	jal		$00070494		# 000787fc:0c01c125	^ FNC_00070494
		//	sh		t4, $0842(s2)		# 00078800:a64c0842	
		///fnc00070494();
		//	sb		zero, $0016(v0)		# 00078804:a0400016	[80047fbf]
		//	jal		$00070514		# 00078808:0c01c145	^ FNC_00070514
		//	addiu		a0, zero, $0032		# 0007880c:24040032	a0=$00000032
		///fnc00070514();
		//	jal		$00070494		# 00078810:0c01c125	^ FNC_00070494
		//	addiu		a0, zero, $0032		# 00078814:24040032	a0=$00000032
		///fnc00070494();
		//	addiu		t0, zero, $0064		# 00078818:24080064	t0=$00000064
		//	sh		t0, $0028(v0)		# 0007881c:a4480028	
		//__00078820:					# 
		//	jal		$00075d58		# 00078820:0c01d756	^ FNC_00075d58
		//	or		a0, zero, zero		# 00078824:00002025	
		///fnc00075d58();
		//	jal		$000731a8		# 00078828:0c01cc6a	^ FNC_000731a8
		//	nop					# 0007882c:00000000	
		///fnc000731a8();
		//	jal		$0000b044		# 00078830:0c002c11	^ FNC_0000b044
		//	nop					# 00078834:00000000	
		///N64.fnc0000b044();
		//	jal		$0000505c		# 00078838:0c001417	^ FNC_0000505c
		//	nop					# 0007883c:00000000	
		///N64.fnc0000505c();
		//	sltiu		at, s3, $03e8		# 00078840:2e6103e8	
		//	beql		at, zero, $00078854	# 00078844:50200003	v __00078854
		//	addiu		at, zero, $0001		# 00078848:24010001	at=$00000001
		//	addiu		s3, s3, $0001		# 0007884c:26730001	
		//	addiu		at, zero, $0001		# 00078850:24010001	at=$00000001
		//__00078854:					# 
		//	beql		s6, at, $00078520	# 00078854:52c1ff32	^ __00078520
		//	sltiu		at, s3, $001c		# 00078858:2e61001c	
		//	jal		$000153d8		# 0007885c:0c0054f6	^ FNC_000153d8
		//	addiu		a0, zero, $00c8		# 00078860:240400c8	a0=$000000c8
		///N64.fnc000153d8();
		//	beq		s6, zero, $000788a0	# 00078864:12c0000e	v __000788a0
		//	nop					# 00078868:00000000	
		//	jal		$00077344		# 0007886c:0c01dcd1	^ FNC_00077344
		//	nop					# 00078870:00000000	
		///DisplaySelectFileDifficulty();
		//	addiu		at, zero, $0002		# 00078874:24010002	at=$00000002
		//	bne		v0, at, $00078890	# 00078878:14410005	v __00078890
		//	addiu		t2, zero, $0003		# 0007887c:240a0003	t2=$00000003
		//	addiu		t1, zero, $0001		# 00078880:24090001	t1=$00000001
		//	lui		at, $8004		# 00078884:3c018004	at=$80040000
		//	beq		zero, zero, $000788a0	# 00078888:10000005	v __000788a0
		//	sh		t1, $76a0(at)		# 0007888c:a42976a0	[800476a0]
		//__00078890:					# 
		//	lui		at, $8004		# 00078890:3c018004	at=$80040000
		//	jal		$00078424		# 00078894:0c01e109	^ FNC_00078424
		//	sh		t2, $76a0(at)		# 00078898:a42a76a0	[800476a0]
		///DoChooseFileNameLoop();
		//	or		s6, v0, zero		# 0007889c:0040b025	
		//__000788a0:					# 
		//	jal		$0000afdc		# 000788a0:0c002bf7	^ FNC_0000afdc
		//	nop					# 000788a4:00000000	
		///N64.fnc0000afdc();
		//	jal		$000709f0		# 000788a8:0c01c27c	^ FNC_000709f0
		//	nop					# 000788ac:00000000	
		///fnc000709f0();
		//	jal		$000764b4		# 000788b0:0c01d92d	^ FNC_000764b4
		//	nop					# 000788b4:00000000	
		///fnc000764b4();
		//	lw		ra, $0034(sp)		# 000788b8:8fbf0034	
		//	or		v0, s6, zero		# 000788bc:02c01025	
		//	lw		s6, $0030(sp)		# 000788c0:8fb60030	
		//	lw		s0, $0018(sp)		# 000788c4:8fb00018	
		//	lw		s1, $001c(sp)		# 000788c8:8fb1001c	
		//	lw		s2, $0020(sp)		# 000788cc:8fb20020	
		//	lw		s3, $0024(sp)		# 000788d0:8fb30024	
		//	lw		s4, $0028(sp)		# 000788d4:8fb40028	
		//	lw		s5, $002c(sp)		# 000788d8:8fb5002c	
		//	jr		ra			# 000788dc:03e00008	
		//	addiu		sp, sp, $0078		# 000788e0:27bd0078	
		return 0;
	}

	// RAM MAINMENU
	void UnusedFileStart()
	{
		//	addiu		sp, sp, $ffe8		# 000788e4:27bdffe8	
		//	sw		ra, $0014(sp)		# 000788e8:afbf0014	
		//	addiu		t6, zero, $0001		# 000788ec:240e0001	t6=$00000001
		//	lui		at, $8004		# 000788f0:3c018004	at=$80040000
		//	jal		$000050c4		# 000788f4:0c001431	^ FNC_000050c4
		//	sw		t6, $7f90(at)		# 000788f8:ac2e7f90	[80047f90]
		currentLevel = 1;
		N64.fnc000050c4();
		//	lui		v0, $8003		# 000788fc:3c028003	v0=$80030000
		//	lw		v0, $1b84(v0)		# 00078900:8c421b84	v0=$80031b84
		//	lui		v1, $8006		# 00078904:3c038006	v1=$80060000
		//	addiu		v1, v1, $bb48		# 00078908:2463bb48	v1=$8005bb48
		//	xori		t9, v0, $0001		# 0007890c:38590001	
		//	sll		t0, t9, 2		# 00078910:00194080	
		//	sll		t7, v0, 2		# 00078914:00027880	
		//	addu		t8, v1, t7		# 00078918:006fc021	
		//	addu		t1, v1, t0		# 0007891c:00684821	
		//	lw		a1, $0000(t1)		# 00078920:8d250000	
		//	jal		$0000dc9c		# 00078924:0c003727	^ FNC_0000dc9c
		//	lw		a0, $0000(t8)		# 00078928:8f040000	
		N64.fnc0000dc9c(*(int*)(0x8005bb48 + (x80031b84 * 4)), *(int*)(0x8005bb48 + ((x80031b84 ^ 1) * 4)));
		//	jal		$0000505c		# 0007892c:0c001417	^ FNC_0000505c
		//	nop					# 00078930:00000000	
		N64.fnc0000505c();
		//	lui		at, $8005		# 00078934:3c018005	at=$80050000
		//	sw		zero, $8034(at)		# 00078938:ac208034	[80048034]
		x80048034 = 0;
		//	lui		at, $8003		# 0007893c:3c018003	at=$80030000
		//	addiu		t2, zero, $0001		# 00078940:240a0001	t2=$00000001
		//	jal		$00006ddc		# 00078944:0c001b77	^ FNC_00006ddc
		//	sh		t2, $13c8(at)		# 00078948:a42a13c8	[800313c8]
		x800313c8 = 1;
		N64.fnc00006ddc();
		//	lui		at, $8003		# 0007894c:3c018003	at=$80030000
		//	jal		$00011d24		# 00078950:0c004749	^ FNC_00011d24
		//	sh		zero, $13c8(at)		# 00078954:a42013c8	[800313c8]
		x800313c8 = 0;
		N64.fnc00011d24();
		//	lw		ra, $0014(sp)		# 00078958:8fbf0014	
		//	addiu		sp, sp, $0018		# 0007895c:27bd0018	
		//	jr		ra			# 00078960:03e00008	
		//	nop					# 00078964:00000000	
	}

	// RAM MAINMENU
	void FileStart()
	{
		//	addiu		sp, sp, $ffe8		# 00078968:27bdffe8	
		//	sw		ra, $0014(sp)		# 0007896c:afbf0014	
		//	jal		$000050c4		# 00078970:0c001431	^ FNC_000050c4
		//	nop					# 00078974:00000000	
		N64.fnc000050c4();
		//	lui		v0, $8003		# 00078978:3c028003	v0=$80030000
		//	lw		v0, $1b84(v0)		# 0007897c:8c421b84	v0=$80031b84
		//	lui		v1, $8006		# 00078980:3c038006	v1=$80060000
		//	addiu		v1, v1, $bb48		# 00078984:2463bb48	v1=$8005bb48
		//	xori		t8, v0, $0001		# 00078988:38580001	
		//	sll		t9, t8, 2		# 0007898c:0018c880	
		//	sll		t6, v0, 2		# 00078990:00027080	
		//	addu		t7, v1, t6		# 00078994:006e7821	
		//	addu		t0, v1, t9		# 00078998:00794021	
		//	lw		a1, $0000(t0)		# 0007899c:8d050000	
		//	jal		$0000dc9c		# 000789a0:0c003727	^ FNC_0000dc9c
		//	lw		a0, $0000(t7)		# 000789a4:8de40000	
		N64.fnc0000dc9c();
		//	jal		$0000505c		# 000789a8:0c001417	^ FNC_0000505c
		//	nop					# 000789ac:00000000	
		N64.fnc0000505c();
		//	addiu		t1, zero, $0001		# 000789b0:24090001	t1=$00000001
		//	lui		at, $8003		# 000789b4:3c018003	at=$80030000
		//	jal		$00006ddc		# 000789b8:0c001b77	^ FNC_00006ddc
		//	sh		t1, $13c8(at)		# 000789bc:a42913c8	[800313c8]
		N64.fnc00006ddc();
		//	lui		at, $8003		# 000789c0:3c018003	at=$80030000
		//	jal		$00011d24		# 000789c4:0c004749	^ FNC_00011d24
		//	sh		zero, $13c8(at)		# 000789c8:a42013c8	[800313c8]
		N64.fnc00011d24();
		//	jal		$00070940		# 000789cc:0c01c250	^ FNC_00070940
		//	nop					# 000789d0:00000000	
		fnc00070940();
		//	lw		ra, $0014(sp)		# 000789d4:8fbf0014	
		//	addiu		sp, sp, $0018		# 000789d8:27bd0018	
		//	jr		ra			# 000789dc:03e00008	
		//	nop					# 000789e0:00000000	
	}

	enum FrontEndState
	{
		INTRO_CUTSCENE = 0,
		FILE_SELECT = 1,
		INVALID_2 = 2,
		CHOOSE_FILE_NAME = 3,
		FILE_DETAILS = 4,
		INVALID_5 = 5,
		INVALID_6 = 6,
		START_GAMEPLAY = 7,
		FILE_OPTIONS = 8,
		START_DEMO = 9,
		UNUSED_START_GAMEPLAY_1 = 0xa,
		UNUSED_START_GAMEPLAY_2 = 0xb,
		UNUSED_START_GAMEPLAY_3 = 0xc,
		CHANGE_AIM_OPTION = 0xd,
		CHANGE_BLOOD_OPTION = 0xe,
		REPLAY_LEVEL_SELECT = 0xf,
		HIGH_SCORES = 0x10,
		CHANGE_SFX_OPTION = 0x11,
		CHANGE_MUSIC_OPTION = 0x12,
		DELETE_FILE = 0x13,
		COPY_FILE = 0x14,
		PRESS_START = 0x15,
		INVALID_16 = 0x16,
		REPLAY_BOSS_SELECT = 0x17,
		PRE_INTRO_STATE = 0x18
	}

	// RAM 000789e4
	void DoFrontEndLoop()
	{
		//	addiu		sp, sp, $ffc0		# 000789e4:27bdffc0	
		//	addiu		t6, zero, $0003		# 000789e8:240e0003	t6=$00000003
		//	lui		at, $8005		# 000789ec:3c018005	at=$80050000
		//	sb		t6, $2aca(at)		# 000789f0:a02e2aca	[80052aca]
		x80052aca = 3;
		//	sw		ra, $003c(sp)		# 000789f4:afbf003c	
		//	sw		s4, $0028(sp)		# 000789f8:afb40028	
		//	lui		at, $8005		# 000789fc:3c018005	at=$80050000
		//	addiu		t7, zero, $000d		# 00078a00:240f000d	t7=$0000000d
		//	lui		a0, $8007		# 00078a04:3c048007	a0=$80070000
		//	lui		a1, $8007		# 00078a08:3c058007	a1=$80070000
		//	sw		fp, $0038(sp)		# 00078a0c:afbe0038	
		//	sw		s7, $0034(sp)		# 00078a10:afb70034	
		//	sw		s6, $0030(sp)		# 00078a14:afb60030	
		//	sw		s5, $002c(sp)		# 00078a18:afb5002c	
		//	sw		s3, $0024(sp)		# 00078a1c:afb30024	
		//	sw		s2, $0020(sp)		# 00078a20:afb20020	
		//	sw		s1, $001c(sp)		# 00078a24:afb1001c	
		//	sw		s0, $0018(sp)		# 00078a28:afb00018	
		//	or		s4, zero, zero		# 00078a2c:0000a025	
		//	sw		t7, $2adc(at)		# 00078a30:ac2f2adc	[80052adc]
		gameplayMode = 0xd;
		//	lw		a1, $8088(a1)		# 00078a34:8ca58088	a1=$80068088
		//	jal		$0000e4b0		# 00078a38:0c00392c	^ FNC_0000e4b0
		//	lw		a0, $8084(a0)		# 00078a3c:8c848084	a0=$80068084
		N64.fnc0000e4b0(videoRenderWidthInPixels, x80068088);
		//	jal		$00071738		# 00078a40:0c01c5ce	^ FNC_00071738
		//	nop					# 00078a44:00000000	
		fnc00071738();
		//	addiu		t8, zero, $0030		# 00078a48:24180030	t8=$00000030
		//	lui		at, $800d		# 00078a4c:3c01800d	at=$800d0000
		//	sb		t8, $6d88(at)		# 00078a50:a0386d88	[800d6d88]
		x800d6d88 = 0x30;
		//	lui		at, $800d		# 00078a54:3c01800d	at=$800d0000
		//	addiu		t9, zero, $00b9		# 00078a58:241900b9	t9=$000000b9
		//	sb		t9, $6d89(at)		# 00078a5c:a0396d89	[800d6d89]
		x800d6d89 = 0xb9;
		//	addiu		s0, zero, $0020		# 00078a60:24100020	s0=$00000020
		//	lui		at, $800d		# 00078a64:3c01800d	at=$800d0000
		//	jal		$0000afdc		# 00078a68:0c002bf7	^ FNC_0000afdc
		//	sb		s0, $6d8a(at)		# 00078a6c:a0306d8a	[800d6d8a]
		x800d6d8a = 0x20;
		N64.fnc0000afdc();
		//	addiu		v0, zero, $ffff		# 00078a70:2402ffff	v0=$ffffffff
		//	lui		at, $800d		# 00078a74:3c01800d	at=$800d0000
		//	sh		v0, $74a4(at)		# 00078a78:a42274a4	[800d74a4]
		x800d74a4 = 0xffff;
		//	lui		at, $800d		# 00078a7c:3c01800d	at=$800d0000
		//	sh		v0, $74a6(at)		# 00078a80:a42274a6	[800d74a6]
		x800d74a6 = 0xffff;
		//	lui		at, $8004		# 00078a84:3c018004	at=$80040000
		//	jal		$00011d24		# 00078a88:0c004749	^ FNC_00011d24
		//	sw		zero, $7f84(at)		# 00078a8c:ac207f84	[80047f84]
		D_80047F84 = 0;
		N64.fnc00011d24();
		//	jal		$000118f8		# 00078a90:0c00463e	^ FNC_000118f8
		//	nop					# 00078a94:00000000	
		N64.fnc000118f8();
		//	lui		a1, $8006		# 00078a98:3c058006	a1=$80060000
		//	addiu		a1, a1, $bb2c		# 00078a9c:24a5bb2c	a1=$8005bb2c
		//	lw		v1, $0000(a1)		# 00078aa0:8ca30000	v1=$8005bb2c
		//	lui		t1, $ba00		# 00078aa4:3c09ba00	t1=$ba000000
		//	ori		t1, t1, $0402		# 00078aa8:35290402	t1=$ba000402
		//	addiu		t0, v1, $0008		# 00078aac:24680008	t0=$801aec20
		//	sw		t0, $0000(a1)		# 00078ab0:aca80000	[8005bb2c]
		uint v1 = x8005bb2c;
		x8005bb2c += 8;
		//	sw		s0, $0004(v1)		# 00078ab4:ac700004	[801aec1c]
		StoreWord(0x20, v1 + 4);
		//	sw		t1, $0000(v1)		# 00078ab8:ac690000	[801aec18]
		StoreWord(0xba000402, v1);
		//	lw		v1, $0000(a1)		# 00078abc:8ca30000	v1=$8005bb2c
		v1 = x8005bb2c;
		//	lui		t3, $ba00		# 00078ac0:3c0bba00	t3=$ba000000
		//	ori		t3, t3, $0602		# 00078ac4:356b0602	t3=$ba000602
		//	addiu		t2, v1, $0008		# 00078ac8:246a0008	t2=$801aec20
		//	sw		t2, $0000(a1)		# 00078acc:acaa0000	[8005bb2c]
		x8005bb2c += 8;
		//	addiu		t4, zero, $0040		# 00078ad0:240c0040	t4=$00000040
		//	sw		t4, $0004(v1)		# 00078ad4:ac6c0004	[801aec1c]
		StoreWord(0x40, v1 + 4);
		//	jal		$00006d5c		# 00078ad8:0c001b57	^ FNC_00006d5c
		//	sw		t3, $0000(v1)		# 00078adc:ac6b0000	[801aec18]
		StoreWord(0xba000602, v1);
		N64.SetFullResolution();
		//	lui		s0, $8009		# 00078ae0:3c108009	s0=$80090000
		//	addiu		s0, s0, $46dc		# 00078ae4:261046dc	s0=$800946dc
		//	lh		t5, $0000(s0)		# 00078ae8:860d0000	t5=$800946dc
		//	addiu		at, zero, $0015		# 00078aec:24010015	at=$00000015
		//	lui		t6, $8000		# 00078af0:3c0e8000	t6=$80000000
		//	beq		t5, at, $00078b48	# 00078af4:11a10014	v __00078b48
		//	nop					# 00078af8:00000000	
		if (frontEndStateToSwitchTo != FrontEndState.PRESS_START)
		{
			//	lw		t6, $0300(t6)		# 00078afc:8dce0300	t6=$80000300
			//	bne		t6, zero, $00078b10	# 00078b00:15c00003	v __00078b10
			//	nop					# 00078b04:00000000	
			if (x80000300 == 0)
			{
				//	jal		$0007bd98		# 00078b08:0c01ef66	v FNC_0007bd98
				//	nop					# 00078b0c:00000000	
				ShowWrongConsoleRegionNotice();
			}
			//__00078b10:					# 
			//	lui		t7, $8004		# 00078b10:3c0f8004	t7=$80040000
			//	lw		t7, $7584(t7)		# 00078b14:8def7584	t7=$80047584
			//	bne		t7, zero, $00078b28	# 00078b18:15e00003	v __00078b28
			//	nop					# 00078b1c:00000000	
			if (x80047584 == 0)
			{
				//	jal		$0007bc90		# 00078b20:0c01ef24	v FNC_0007bc90
				//	nop					# 00078b24:00000000	
				ShowNoControllerNotice();
			}
			//__00078b28:					# 
			//	jal		$0007b618		# 00078b28:0c01ed86	v FNC_0007b618
			//	nop					# 00078b2c:00000000	
			ShowClearSaveData();
			//	jal		$0007b900		# 00078b30:0c01ee40	v FNC_0007b900
			//	nop					# 00078b34:00000000	
			ShowIntroCopyright();
			//	jal		$0007bb0c		# 00078b38:0c01eec3	v FNC_0007bb0c
			//	nop					# 00078b3c:00000000	
			ShowIntroPublisherLogo();
			//	jal		$0007bec0		# 00078b40:0c01efb0	v FNC_0007bec0
			//	nop					# 00078b44:00000000	
			ShowIntroDmaLogo();
		}
		//__00078b48:					# 
		//	lui		s1, $8003		# 00078b48:3c118003	s1=$80030000
		//	or		s7, zero, zero		# 00078b4c:0000b825	
		int s7 = 0;
		//	addiu		s1, s1, $1420		# 00078b50:26311420	s1=$80031420
		//	addiu		fp, zero, $0004		# 00078b54:241e0004	fp=$00000004
		//	addiu		s6, zero, $0008		# 00078b58:24160008	s6=$00000008
		//	addiu		s5, zero, $0003		# 00078b5c:24150003	s5=$00000003
		//	addiu		s3, zero, $0002		# 00078b60:24130002	s3=$00000002
		//	addiu		s2, zero, $0001		# 00078b64:24120001	s2=$00000001
		do
		{
			//__00078b68:					# 
			//	lui		a0, $8006		# 00078b68:3c048006	a0=$80060000
			//	addiu		a0, a0, $bb2c		# 00078b6c:2484bb2c	a0=$8005bb2c
			//	lw		v1, $0000(a0)		# 00078b70:8c830000	v1=$8005bb2c
			v1 = x8005bb2c;
			//	lui		t9, $ba00		# 00078b74:3c19ba00	t9=$ba000000
			//	ori		t9, t9, $0602		# 00078b78:37390602	t9=$ba000602
			//	addiu		t8, v1, $0008		# 00078b7c:24780008	t8=$801aec20
			//	sw		t8, $0000(a0)		# 00078b80:ac980000	[8005bb2c]
			x8005bb2c += 8;
			//	addiu		t0, zero, $00c0		# 00078b84:240800c0	t0=$000000c0
			//	lui		at, $8004		# 00078b88:3c018004	at=$80040000
			//	sw		t0, $0004(v1)		# 00078b8c:ac680004	[801aec1c]
			StoreWord(0xc0, v1 + 4);
			//	sw		t9, $0000(v1)		# 00078b90:ac790000	[801aec18]
			StoreWord(0xba000602, v1);
			//	sh		s2, $76a2(at)		# 00078b94:a43276a2	[800476a2]
			guess_enablesInput = 1;
			//	lhu		t1, $0000(s0)		# 00078b98:96090000	
			//	sltiu		at, t1, $0019		# 00078b9c:2d210019	
			//	beq		at, zero, $00078b68	# 00078ba0:1020fff1	^ __00078b68
			//	nop					# 00078ba4:00000000	
			if (frontEndStateToSwitchTo >= 0x19)
			{
				continue;
			}
			//	sll		t1, t1, 2		# 00078ba8:00094880	
			//	lui		at, $800b		# 00078bac:3c01800b	at=$800b0000
			//	addu		at, at, t1		# 00078bb0:00290821	
			//	lw		t1, $e7ac(at)		# 00078bb4:8c29e7ac	
			//	jr		t1			# 00078bb8:01200008	
			//	nop					# 00078bbc:00000000	
			switch (frontEndStateToSwitchTo)
			{
				default:
				case FrontEndState.INVALID_2:
				case FrontEndState.INVALID_5:
				case FrontEndState.INVALID_6:
				case FrontEndState.INVALID_16:
					continue;
				case FrontEndState.INTRO_CUTSCENE:
					//	jal		$000768c4		# 00078bc0:0c01da31	^ FNC_000768c4
					//	nop					# 00078bc4:00000000	
					int resultDoIntroCutsceneLoop = DoIntroCutsceneLoop();
					//	beq		v0, s2, $00078be0	# 00078bc8:10520005	v __00078be0
					//	addiu		t2, zero, $0015		# 00078bcc:240a0015	t2=$00000015
					if (resultDoIntroCutsceneLoop != 1)
					{
						//	bne		v0, s3, $00078b68	# 00078bd0:1453ffe5	^ __00078b68
						//	nop					# 00078bd4:00000000	
						if (resultDoIntroCutsceneLoop != 2)
						{
							continue;
						}
						//	beq		zero, zero, $00078b68	# 00078bd8:1000ffe3	^ __00078b68
						//	sh		t2, $0000(s0)		# 00078bdc:a60a0000	
						frontEndStateToSwitchTo = FrontEndState.PRESS_START;
						break;
					}
					//__00078be0:					# 
					//	beq		zero, zero, $00078b68	# 00078be0:1000ffe1	^ __00078b68
					//	sh		zero, $0000(s0)		# 00078be4:a6000000	
					frontEndStateToSwitchTo = FrontEndState.INTRO_CUTSCENE;
					continue;
				case FrontEndState.PRESS_START:
					//	jal		$0007704c		# 00078be8:0c01dc13	^ FNC_0007704c
					//	nop					# 00078bec:00000000	
					int resultDoPressStartLoop = DoPressStartLoop();
					//	beq		v0, zero, $00078c30	# 00078bf0:1040000f	v __00078c30
					//	addiu		t3, s7, $0001		# 00078bf4:26eb0001	
					if (resultDoPressStartLoop != 0)
					{
						//	beq		v0, s3, $00078c10	# 00078bf8:10530005	v __00078c10
						//	addiu		t6, zero, $0009		# 00078bfc:240e0009	t6=$00000009
						if (resultDoPressStartLoop != 2)
						{
							//	beq		v0, s5, $00078c38	# 00078c00:1055000d	v __00078c38
							//	addiu		t7, zero, $0010		# 00078c04:240f0010	t7=$00000010
							if (resultDoPressStartLoop != 3)
							{
								//	beq		zero, zero, $00078b68	# 00078c08:1000ffd7	^ __00078b68
								//	nop					# 00078c0c:00000000	
								continue;
							}
						}
						else
						{
							//__00078c10:					# 
							//	lui		at, $8004		# 00078c10:3c018004	at=$80040000
							//	sw		s2, $7f90(at)		# 00078c14:ac327f90	[80047f90]
							currentLevel = 1;
							//	sh		s2, $0000(s0)		# 00078c18:a6120000	
							frontEndStateToSwitchTo = FrontEndState.FILE_SELECT;
							//	lui		at, $8005		# 00078c1c:3c018005	at=$80050000
							//	sh		zero, $8026(at)		# 00078c20:a4208026	[80048026]
							x80048026 = 0;
							//	lui		at, $8005		# 00078c24:3c018005	at=$80050000
							//	beq		zero, zero, $00078b68	# 00078c28:1000ffcf	^ __00078b68
							//	sh		zero, $8028(at)		# 00078c2c:a4208028	[80048028]
							x80048028 = 0;
							continue;
						}
					}
					else
					{
						//__00078c30:					# 
						//	beq		zero, zero, $00078b68	# 00078c30:1000ffcd	^ __00078b68
						//	sh		zero, $0000(s0)		# 00078c34:a6000000	
						frontEndStateToSwitchTo = FrontEndState.INTRO_CUTSCENE;
						continue;
					}
					//__00078c38:					# 
					//	div		t3, s5			# 00078c38:0175001a	
					//	mfhi		s7			# 00078c3c:0000b810	
					s7 = (s7 + 1) % 3;
					//	sll		t4, s7, 16		# 00078c40:00176400	
					//	sra		t5, t4, 16		# 00078c44:000c6c03	
					//	bne		s5, zero, $00078c54	# 00078c48:16a00002	v __00078c54
					//	nop					# 00078c4c:00000000	
					if (3 == 0)
					{
						//	break		(01c00)			# 00078c50:0007000d	
						/// Unhandled opcode (Break) - crash?
					}
					
					//__00078c54:					# 
					//	addiu		at, zero, $ffff		# 00078c54:2401ffff	at=$ffffffff
					//	bne		s5, at, $00078c6c	# 00078c58:16a10004	v __00078c6c
					//	lui		at, $8000		# 00078c5c:3c018000	at=$80000000
					if (3 == 0xffffffff)
					{
						//	bne		t3, at, $00078c6c	# 00078c60:15610002	v __00078c6c
						//	nop					# 00078c64:00000000	
						//	break		(01800)			# 00078c68:0006000d	
					}
					//__00078c6c:					# 
					//	or		s7, t5, zero		# 00078c6c:01a0b825	
					s7 = (s7 << 16) >>> 16;
					//	bne		t5, zero, $00078c7c	# 00078c70:15a00002	v __00078c7c
					//	nop					# 00078c74:00000000	
					if (s7 == 0)
					{
						//	sh		zero, $0000(s0)		# 00078c78:a6000000
						frontEndStateToSwitchTo = FrontEndState.INTRO_CUTSCENE;
					}
					//__00078c7c:					# 
					//	bne		s7, s2, $00078c88	# 00078c7c:16f20002	v __00078c88
					//	nop					# 00078c80:00000000	
					if (s7 == 1)
					{
						//	sh		t6, $0000(s0)		# 00078c84:a60e0000	
						frontEndStateToSwitchTo = FrontEndState.START_DEMO;
					}
					//__00078c88:					# 
					//	bne		s7, s3, $00078b68	# 00078c88:16f3ffb7	^ __00078b68
					//	nop					# 00078c8c:00000000	
					if (s7 != 2)
					{
						continue;
					}
					//	beq		zero, zero, $00078b68	# 00078c90:1000ffb5	^ __00078b68
					//	sh		t7, $0000(s0)		# 00078c94:a60f0000	
					frontEndStateToSwitchTo = FrontEndState.HIGH_SCORES;
					continue;
				case FrontEndState.FILE_SELECT:
					//	jal		$00076c98		# 00078c98:0c01db26	^ FNC_00076c98
					//	nop					# 00078c9c:00000000	
					int resultDoFileSelectLoop = DoFileSelectLoop();
					//	sltiu		at, v0, $0007		# 00078ca0:2c410007	
					//	beq		at, zero, $00078b68	# 00078ca4:1020ffb0	^ __00078b68
					//	sll		t8, v0, 2		# 00078ca8:0002c080	
					if (resultDoFileSelectLoop >= 7)
					{
						continue;
					}
					//	lui		at, $800b		# 00078cac:3c01800b	at=$800b0000
					//	addu		at, at, t8		# 00078cb0:00380821	
					//	lw		t8, $e810(at)		# 00078cb4:8c38e810	
					//	jr		t8			# 00078cb8:03000008	
					//	nop					# 00078cbc:00000000	
					switch (resultDoFileSelectLoop)
					{
						default:
							continue;
						case 1:
							frontEndStateToSwitchTo = FrontEndState.CHOOSE_FILE_NAME;
							continue;
						//	beq		zero, zero, $00078b68	# 00078cc0:1000ffa9	^ __00078b68
						//	sh		s5, $0000(s0)		# 00078cc4:a6150000	
						case 0:
							//	addiu		t9, zero, $0015		# 00078cc8:24190015	t9=$00000015
							//	beq		zero, zero, $00078b68	# 00078ccc:1000ffa6	^ __00078b68
							//	sh		t9, $0000(s0)		# 00078cd0:a6190000	
							frontEndStateToSwitchTo = FrontEndState.PRESS_START;
							continue;
						case 2:
						case 3:
						case 4:
							//	beq		zero, zero, $00078b68	# 00078cd4:1000ffa4	^ __00078b68
							//	sh		fp, $0000(s0)		# 00078cd8:a61e0000	
							frontEndStateToSwitchTo = FrontEndState.FILE_DETAILS;
							continue;
						case 5:
							//	addiu		t0, zero, $0013		# 00078cdc:24080013	t0=$00000013
							//	beq		zero, zero, $00078b68	# 00078ce0:1000ffa1	^ __00078b68
							//	sh		t0, $0000(s0)		# 00078ce4:a6080000	
							frontEndStateToSwitchTo = FrontEndState.DELETE_FILE;
							continue;
						case 6:
							//	addiu		t1, zero, $0014		# 00078ce8:24090014	t1=$00000014
							//	beq		zero, zero, $00078b68	# 00078cec:1000ff9e	^ __00078b68
							//	sh		t1, $0000(s0)		# 00078cf0:a6090000	
							frontEndStateToSwitchTo = FrontEndState.COPY_FILE;
							continue;
					}
				case FrontEndState.CHOOSE_FILE_NAME:
					//	jal		$00078424		# 00078cf4:0c01e109	^ FNC_00078424
					//	nop					# 00078cf8:00000000	
					int resultDoChooseFileNameLoop = DoChooseFileNameLoop();
					//	beq		v0, zero, $00078d14	# 00078cfc:10400005	v __00078d14
					//	nop					# 00078d00:00000000	
					if (resultDoChooseFileNameLoop != 0)
					{
						//	bne		v0, s3, $00078b68	# 00078d04:1453ff98	^ __00078b68
						//	nop					# 00078d08:00000000	
						if (resultDoChooseFileNameLoop != 2)
						{
							continue;
						}
						//	beq		zero, zero, $00078b68	# 00078d0c:1000ff96	^ __00078b68
						//	sh		fp, $0000(s0)		# 00078d10:a61e0000	
						frontEndStateToSwitchTo = FrontEndState.FILE_DETAILS;
						continue;
					}
					//__00078d14:					# 
					//	beq		zero, zero, $00078b68	# 00078d14:1000ff94	^ __00078b68
					//	sh		s2, $0000(s0)		# 00078d18:a6120000	
					frontEndStateToSwitchTo = FrontEndState.FILE_SELECT;
					continue;
				case FrontEndState.FILE_DETAILS:
					//	jal		$000779fc		# 00078d1c:0c01de7f	^ FNC_000779fc
					//	or		s4, zero, zero		# 00078d20:0000a025	
					int resultDoFileDetailsLoop = DoFileDetailsLoop();
					//	beq		v0, zero, $00078d64	# 00078d24:1040000f	v __00078d64
					//	addiu		t2, zero, $0007		# 00078d28:240a0007	t2=$00000007
					if (resultDoFileDetailsLoop != 0)
					{
						//	beq		v0, s3, $00078d4c	# 00078d2c:10530007	v __00078d4c
						//	addiu		t3, zero, $0009		# 00078d30:240b0009	t3=$00000009
						//	beq		v0, s5, $00078d54	# 00078d34:10550007	v __00078d54
						//	nop					# 00078d38:00000000	
						//	beq		v0, fp, $00078d5c	# 00078d3c:105e0007	v __00078d5c
						//	nop					# 00078d40:00000000	
						//	beq		zero, zero, $00078b68	# 00078d44:1000ff88	^ __00078b68
						//	nop					# 00078d48:00000000	
						switch (resultDoFileDetailsLoop)
						{
							default:
								continue;
							case 2:
								//__00078d4c:					# 
								//	beq		zero, zero, $00078b68	# 00078d4c:1000ff86	^ __00078b68
								//	sh		s6, $0000(s0)		# 00078d50:a6160000	
								frontEndStateToSwitchTo = FrontEndState.FILE_OPTIONS;
								continue;
							case 3:
								//__00078d54:					# 
								//	beq		zero, zero, $00078b68	# 00078d54:1000ff84	^ __00078b68
								//	sh		t2, $0000(s0)		# 00078d58:a60a0000	
								frontEndStateToSwitchTo = FrontEndState.START_GAMEPLAY;
								continue;
							case 4:
								//__00078d5c:					# 
								//	beq		zero, zero, $00078b68	# 00078d5c:1000ff82	^ __00078b68
								//	sh		t3, $0000(s0)		# 00078d60:a60b0000	
								frontEndStateToSwitchTo = FrontEndState.START_DEMO;
								continue;
						}
					}
					//__00078d64:					# 
					//	beq		zero, zero, $00078b68	# 00078d64:1000ff80	^ __00078b68
					//	sh		s2, $0000(s0)		# 00078d68:a6120000	
					frontEndStateToSwitchTo = FrontEndState.FILE_SELECT;
					continue;
				case FrontEndState.START_GAMEPLAY: // DEMO mode without the overlay text and automatic input?
					//	lui		at, $8005		# 00078d6c:3c018005	at=$80050000
					//	jal		$00078968		# 00078d70:0c01e25a	^ FNC_00078968
					//	sw		zero, $8034(at)		# 00078d74:ac208034	[80048034]
					showDemoText = 0;
					FileStart();
					//	addiu		t4, zero, $0015		# 00078d78:240c0015	t4=$00000015
					//	beq		zero, zero, $00078b68	# 00078d7c:1000ff7a	^ __00078b68
					//	sh		t4, $0000(s0)		# 00078d80:a60c0000	
					frontEndStateToSwitchTo = FrontEndState.PRESS_START;
					continue;
				case FrontEndState.FILE_OPTIONS:
					//	jal		$00077ce0		# 00078d84:0c01df38	^ FNC_00077ce0
					//	or		a0, s4, zero		# 00078d88:02802025	
					int resultfnc00077ce0 = fnc00077ce0();
					//	sltiu		at, v0, $0008		# 00078d8c:2c410008	
					//	beq		at, zero, $00078b68	# 00078d90:1020ff75	^ __00078b68
					//	sll		t5, v0, 2		# 00078d94:00026880	
					if (resultfnc00077ce0 >= 8)
					{
						continue;
					}
					//	lui		at, $800b		# 00078d98:3c01800b	at=$800b0000
					//	addu		at, at, t5		# 00078d9c:002d0821	
					//	lw		t5, $e82c(at)		# 00078da0:8c2de82c	
					//	jr		t5			# 00078da4:01a00008	
					//	nop					# 00078da8:00000000	
					switch (resultfnc00077ce0)
					{
						default:
						case 1:
							continue;
						case 2:
							//	addiu		t6, zero, $000f		# 00078dac:240e000f	t6=$0000000f
							//	beq		zero, zero, $00078b68	# 00078db0:1000ff6d	^ __00078b68
							//	sh		t6, $0000(s0)		# 00078db4:a60e0000	
							frontEndStateToSwitchTo = FrontEndState.REPLAY_LEVEL_SELECT;
							continue;
						case 3:
							//	addiu		t7, zero, $0010		# 00078db8:240f0010	t7=$00000010
							//	beq		zero, zero, $00078b68	# 00078dbc:1000ff6a	^ __00078b68
							//	sh		t7, $0000(s0)		# 00078dc0:a60f0000	
							frontEndStateToSwitchTo = FrontEndState.HIGH_SCORES;
							continue;
						case 4:
							//	addiu		t8, zero, $0011		# 00078dc4:24180011	t8=$00000011
							//	beq		zero, zero, $00078b68	# 00078dc8:1000ff67	^ __00078b68
							//	sh		t8, $0000(s0)		# 00078dcc:a6180000	
							frontEndStateToSwitchTo = FrontEndState.CHANGE_SFX_OPTION;
							continue;
						case 5:
							//	addiu		t9, zero, $0012		# 00078dd0:24190012	t9=$00000012
							//	beq		zero, zero, $00078b68	# 00078dd4:1000ff64	^ __00078b68
							//	sh		t9, $0000(s0)		# 00078dd8:a6190000	
							frontEndStateToSwitchTo = FrontEndState.CHANGE_MUSIC_OPTION;
							continue;
						case 6:
							//	addiu		t0, zero, $000d		# 00078ddc:2408000d	t0=$0000000d
							//	beq		zero, zero, $00078b68	# 00078de0:1000ff61	^ __00078b68
							//	sh		t0, $0000(s0)		# 00078de4:a6080000	
							frontEndStateToSwitchTo = FrontEndState.CHANGE_AIM_OPTION;
							continue;
						case 7:
							//	addiu		t1, zero, $000e		# 00078de8:2409000e	t1=$0000000e
							//	beq		zero, zero, $00078b68	# 00078dec:1000ff5e	^ __00078b68
							//	sh		t1, $0000(s0)		# 00078df0:a6090000	
							frontEndStateToSwitchTo = FrontEndState.CHANGE_BLOOD_OPTION;
							continue;
						case 0:
							//	beq		zero, zero, $00078b68	# 00078df4:1000ff5c	^ __00078b68
							//	sh		fp, $0000(s0)		# 00078df8:a61e0000	
							frontEndStateToSwitchTo = FrontEndState.FILE_DETAILS;
							continue;
					}
				case FrontEndState.START_DEMO: // DEMO mode
					//	lui		at, $8005		# 00078dfc:3c018005	at=$80050000
					//	sw		s2, $8034(at)		# 00078e00:ac328034	[80048034]
					showDemoText = 1;
					//	lui		at, $8004		# 00078e04:3c018004	at=$80040000
					//	jal		$00007570		# 00078e08:0c001d5c	^ FNC_00007570
					//	sw		s2, $7f90(at)		# 00078e0c:ac327f90	[80047f90]
					currentLevel = 1;
					N64.fnc00007570();
					//	lui		at, $8004		# 00078e10:3c018004	at=$80040000
					//	sw		zero, $7f94(at)		# 00078e14:ac207f94	[80047f94]
					x80047f94 = 0;
					//	lui		at, $8005		# 00078e18:3c018005	at=$80050000
					//	addiu		t2, zero, $0002		# 00078e1c:240a0002	t2=$00000002
					//	sb		t2, $8138(at)		# 00078e20:a02a8138	[80048138]
					weaponSlot1 = 2;
					//	lui		at, $8004		# 00078e24:3c018004	at=$80040000
					//	sw		zero, $7f9c(at)		# 00078e28:ac207f9c	[80047f9c]
					warpPointNumber = 0;
					//	lui		at, $8005		# 00078e2c:3c018005	at=$80050000
					//	addiu		t4, zero, $0000		# 00078e30:240c0000	
					//	sw		t4, $dc48(at)		# 00078e34:ac2cdc48	[8004dc48]
					x8004dc48 = 0;
					//	lui		at, $8005		# 00078e38:3c018005	at=$80050000
					//	addiu		t5, zero, $0000		# 00078e3c:240d0000	
					//	sw		t5, $dc4c(at)		# 00078e40:ac2ddc4c	[8004dc4c]
					x8004dc4c = 0;
					//	lui		at, $8005		# 00078e44:3c018005	at=$80050000
					//	sb		zero, $8025(at)		# 00078e48:a0208025	[80048025]
					x80048025 = 0;
					//	lui		at, $8005		# 00078e4c:3c018005	at=$80050000
					//	sb		zero, $8024(at)		# 00078e50:a0208024	[80048024]
					x80048024 = 0;
					//	lui		at, $8005		# 00078e54:3c018005	at=$80050000
					//	sb		zero, $2acd(at)		# 00078e58:a0202acd	[80052acd]
					playerModifier = 0;
					//	lui		at, $8005		# 00078e5c:3c018005	at=$80050000
					//	sw		zero, $d154(at)		# 00078e60:ac20d154	[8004d154]
					x8004d154 = 0;
					//	lui		at, $8005		# 00078e64:3c018005	at=$80050000
					//	sw		zero, $d150(at)		# 00078e68:ac20d150	[8004d150]
					x8004d150 = 0;
					//	lui		at, $8005		# 00078e6c:3c018005	at=$80050000
					//	lui		a0, $00fa		# 00078e70:3c0400fa	a0=$00fa0000
					//	sw		zero, $d158(at)		# 00078e74:ac20d158	[8004d158]
					x8004d158 = 0;
					//	jal		$000038d4		# 00078e78:0c000e35	^ FNC_000038d4
					//	ori		a0, a0, $cade		# 00078e7c:3484cade	a0=$00facade
					N64.fnc000038d4(0x00facade);
					//	jal		$00078968		# 00078e80:0c01e25a	^ FNC_00078968
					//	nop					# 00078e84:00000000	
					FileStart();
					//	addiu		t3, zero, $0015		# 00078e88:240b0015	t3=$00000015
					//	beq		zero, zero, $00078b68	# 00078e8c:1000ff36	^ __00078b68
					//	sh		t3, $0000(s0)		# 00078e90:a60b0000	
					frontEndStateToSwitchTo = FrontEndState.PRESS_START;
					continue;
				case FrontEndState.UNUSED_START_GAMEPLAY_1:
					//	jal		$000788e4		# 00078e94:0c01e239	^ FNC_000788e4
					//	nop					# 00078e98:00000000	
					UnusedFileStart();
					//	beq		zero, zero, $00078b68	# 00078e9c:1000ff32	^ __00078b68
					//	nop					# 00078ea0:00000000	
					continue;
				case FrontEndState.UNUSED_START_GAMEPLAY_2:
					//	jal		$000788e4		# 00078ea4:0c01e239	^ FNC_000788e4
					//	nop					# 00078ea8:00000000	
					UnusedFileStart();
					//	beq		zero, zero, $00078b68	# 00078eac:1000ff2e	^ __00078b68
					//	nop					# 00078eb0:00000000	
					continue;
				case FrontEndState.UNUSED_START_GAMEPLAY_3:
					//	jal		$000788e4		# 00078eb4:0c01e239	^ FNC_000788e4
					//	nop					# 00078eb8:00000000	
					UnusedFileStart();
					//	beq		zero, zero, $00078b68	# 00078ebc:1000ff2a	^ __00078b68
					//	nop					# 00078ec0:00000000	
					continue;
				case FrontEndState.REPLAY_LEVEL_SELECT:
					//	jal		$00077e88		# 00078ec4:0c01dfa2	^ FNC_00077e88
					//	or		s4, zero, zero		# 00078ec8:0000a025	
					int v0 = fnc00077e88();
					//	beq		v0, zero, $00078f08	# 00078ecc:1040000e	v __00078f08
					//	addiu		t7, zero, $0017		# 00078ed0:240f0017	t7=$00000017
					if (v0 != 0)
					{
						//	beq		v0, s3, $00078eec	# 00078ed4:10530005	v __00078eec
						//	nop					# 00078ed8:00000000	
						if (v0 != 2)
						{
							//	beq		v0, s5, $00078f00	# 00078edc:10550008	v __00078f00
							//	nop					# 00078ee0:00000000	
							if (v0 != 3)
							{
								//	beq		zero, zero, $00078b68	# 00078ee4:1000ff20	^ __00078b68
								//	nop					# 00078ee8:00000000	
								continue;
							}
						}
						else
						{
							//__00078eec:					# 
							//	jal		$00007570		# 00078eec:0c001d5c	^ FNC_00007570
							//	nop					# 00078ef0:00000000	
							N64.fnc00007570();
							//	addiu		t6, zero, $0007		# 00078ef4:240e0007	t6=$00000007
							//	beq		zero, zero, $00078b68	# 00078ef8:1000ff1b	^ __00078b68
							//	sh		t6, $0000(s0)		# 00078efc:a60e0000	
							frontEndStateToSwitchTo = FrontEndState.START_GAMEPLAY;
							continue;
						}
						//__00078f00:					# 
						//	beq		zero, zero, $00078b68	# 00078f00:1000ff19	^ __00078b68
						//	sh		t7, $0000(s0)		# 00078f04:a60f0000	
						frontEndStateToSwitchTo = FrontEndState.REPLAY_BOSS_SELECT;
						continue;
					}
					//__00078f08:					# 
					//	beq		zero, zero, $00078b68	# 00078f08:1000ff17	^ __00078b68
					//	sh		s6, $0000(s0)		# 00078f0c:a6160000	
					frontEndStateToSwitchTo = FrontEndState.FILE_OPTIONS;
					continue;
				case FrontEndState.REPLAY_BOSS_SELECT:
					//	jal		$00078110		# 00078f10:0c01e044	^ FNC_00078110
					//	or		s4, zero, zero		# 00078f14:0000a025	
					int v0 = fnc00078110();
					//	beql		v0, zero, $00078f98	# 00078f18:5040001f	v __00078f98
					//	addiu		t2, zero, $000f		# 00078f1c:240a000f	t2=$0000000f
					if (v0 != 0)
					{
						//	bne		v0, s3, $00078b68	# 00078f20:1453ff11	^ __00078b68
						//	nop					# 00078f24:00000000	
						if ( v0 != 2)
						{
							continue;
						}
						//	jal		$00007570		# 00078f28:0c001d5c	^ FNC_00007570
						//	nop					# 00078f2c:00000000	
						N64.fnc00007570();
						//	lui		v0, $8004		# 00078f30:3c028004	v0=$80040000
						//	lw		v0, $7f90(v0)		# 00078f34:8c427f90	v0=$80047f90
						//	lui		v1, $8004		# 00078f38:3c038004	v1=$80040000
						//	addiu		a0, zero, $0005		# 00078f3c:24040005	a0=$00000005
						//	sll		t8, v0, 1		# 00078f40:0002c040	
						//	addu		v1, v1, t8		# 00078f44:00781821	
						//	lh		v1, $e0ee(v1)		# 00078f48:8463e0ee	
						short v1_2 = GetShort(0x80030000 + (currentLevel * 2) + 0xe0ee);
						//	lui		at, $8004		# 00078f4c:3c018004	at=$80040000
						//	sw		a0, $7f9c(at)		# 00078f50:ac247f9c	[80047f9c]
						warpPointNumber = 5;
						//	lui		at, $8004		# 00078f54:3c018004	at=$80040000
						//	sw		v1, $7f98(at)		# 00078f58:ac237f98	[80047f98]
						x80047f98 = v1_2;
						//	lui		at, $8004		# 00078f5c:3c018004	at=$80040000
						//	bne		a0, v0, $00078f74	# 00078f60:14820004	v __00078f74
						//	sw		v1, $7f94(at)		# 00078f64:ac237f94	[80047f94]
						if (currentLevel == 5)
						{
							//	addiu		a0, zero, $0000		# 00078f68:24040000	
							//	jal		$000072cc		# 00078f6c:0c001cb3	^ FNC_000072cc
							//	addiu		a1, zero, $001f		# 00078f70:2405001f	a1=$0000001f
							N64.fnc000072cc(0, 0x1f);
						}
						//__00078f74:					# 
						//	lui		v0, $8005		# 00078f74:3c028005	v0=$80050000
						//	addiu		v0, v0, $2acd		# 00078f78:24422acd	v0=$80052acd
						//	lbu		t9, $0000(v0)		# 00078f7c:90590000	t9=$80052acd
						//	addiu		t1, zero, $0007		# 00078f80:24090007	t1=$00000007
						//	sh		t1, $0000(s0)		# 00078f84:a6090000	
						frontEndStateToSwitchTo = FrontEndState.START_GAMEPLAY;
						//	ori		t0, t9, $0011		# 00078f88:37280011	
						//	beq		zero, zero, $00078b68	# 00078f8c:1000fef6	^ __00078b68
						//	sb		t0, $0000(v0)		# 00078f90:a0480000	[80052acd]
						playerModifier |= 0x11;
						continue;
						//	addiu		t2, zero, $000f		# 00078f94:240a000f	t2=$0000000f
					}
					//__00078f98:					# 
					//	beq		zero, zero, $00078b68	# 00078f98:1000fef3	^ __00078b68
					//	sh		t2, $0000(s0)		# 00078f9c:a60a0000	
					frontEndStateToSwitchTo = FrontEndState.REPLAY_LEVEL_SELECT;
					continue;
				case FrontEndState.CHANGE_AIM_OPTION:
					//	lw		v1, $0000(s1)		# 00078fa0:8e230000	
					//	addiu		s4, zero, $0005		# 00078fa4:24140005	s4=$00000005
					//	addiu		at, zero, $fffb		# 00078fa8:2401fffb	at=$fffffffb
					//	andi		t4, v1, $0004		# 00078fac:306c0004	
					//	beq		t4, zero, $00078fc4	# 00078fb0:11800004	v __00078fc4
					//	ori		t3, v1, $0004		# 00078fb4:346b0004	
					if ((x80031420 & 4) != 0)
					{
						//	and		t5, v1, at		# 00078fb8:00616824	
						//	beq		zero, zero, $00078fc8	# 00078fbc:10000002	v __00078fc8
						//	sw		t5, $0000(s1)		# 00078fc0:ae2d0000	
						x80031420 &= 0xfffffffb;
					}
					else
					{
						//__00078fc4:					# 
						//	sw		t3, $0000(s1)		# 00078fc4:ae2b0000	
						x80031420 |= 4;
					}
					//__00078fc8:					# 
					//	beq		zero, zero, $00078b68	# 00078fc8:1000fee7	^ __00078b68
					//	sh		s6, $0000(s0)		# 00078fcc:a6160000	
					frontEndStateToSwitchTo = FrontEndState.FILE_OPTIONS;
					continue;
				case FrontEndState.CHANGE_SFX_OPTION:
					//	lw		v1, $0000(s1)		# 00078fd0:8e230000	
					//	sll		s4, s5, 16		# 00078fd4:0015a400	
					//	sra		t6, s4, 16		# 00078fd8:00147403	
					//	andi		v0, v1, $0060		# 00078fdc:30620060	
					//	srl		t7, v0, 5		# 00078fe0:00027942	
					//	addiu		v0, t7, $ffff		# 00078fe4:25e2ffff	v0=$ffffffff
					int v0 = ((x80031420 & 0x60) >> 5) - 1;
					//	bgez		v0, $00078ff4		# 00078fe8:04410002	v __00078ff4
					//	or		s4, t6, zero		# 00078fec:01c0a025	
					if (v0 < 0)
					{
						//	or		v0, s5, zero		# 00078ff0:02a01025	
						v0 = 3;
					}
					//__00078ff4:					# 
					//	addiu		at, zero, $ff9f		# 00078ff4:2401ff9f	at=$ffffff9f
					//	and		t8, v1, at		# 00078ff8:0061c024	
					//	sll		t0, v0, 5		# 00078ffc:00024140	
					//	sll		a0, v0, 16		# 00079000:00022400	
					//	sw		t8, $0000(s1)		# 00079004:ae380000	
					x80031420 &= 0xffffff9f;
					//	or		t1, t8, t0		# 00079008:03084825	
					//	sra		t2, a0, 16		# 0007900c:00045403	
					//	sw		t1, $0000(s1)		# 00079010:ae290000	
					x80031420 |= v0 << 5;
					//	jal		$00016fd0		# 00079014:0c005bf4	^ FNC_00016fd0
					//	or		a0, t2, zero		# 00079018:01402025	
					N64.fnc00016fd0((v0 << 16) >>> 16);
					//	beq		zero, zero, $00078b68	# 0007901c:1000fed2	^ __00078b68
					//	sh		s6, $0000(s0)		# 00079020:a6160000	
					frontEndStateToSwitchTo = FrontEndState.FILE_OPTIONS;
					continue;
				case FrontEndState.CHANGE_MUSIC_OPTION:
					//	lw		v1, $0000(s1)		# 00079024:8e230000	
					//	sll		s4, fp, 16		# 00079028:001ea400	s4=$00040000
					//	sra		t4, s4, 16		# 0007902c:00146403	
					//	andi		v0, v1, $0018		# 00079030:30620018	
					//	srl		t5, v0, 3		# 00079034:000268c2	
					//	addiu		v0, t5, $ffff		# 00079038:25a2ffff	
					int v0 = ((x80031420 & 0x18) >> 3) - 1;
					//	bgez		v0, $00079048		# 0007903c:04410002	v __00079048
					//	or		s4, t4, zero		# 00079040:0180a025	s4=$00000004
					if (v0 < 0)
					{
						//	or		v0, s5, zero		# 00079044:02a01025	
						v0 = 3;
					}
					//__00079048:					# 
					//	addiu		at, zero, $ffe7		# 00079048:2401ffe7	at=$ffffffe7
					//	and		t3, v1, at		# 0007904c:00615824	
					//	sll		t7, v0, 3		# 00079050:000278c0	
					//	sll		a0, v0, 16		# 00079054:00022400	
					//	sw		t3, $0000(s1)		# 00079058:ae2b0000	
					x80031420 &= 0xffffffe7;
					//	or		t8, t3, t7		# 0007905c:016fc025	
					//	sra		t9, a0, 16		# 00079060:0004cc03	
					//	sw		t8, $0000(s1)		# 00079064:ae380000	
					x80031420 |= v0 << 3;
					//	jal		$000170f4		# 00079068:0c005c3d	^ FNC_000170f4
					//	or		a0, t9, zero		# 0007906c:03202025	
					N64.fnc000170f4((v0 << 16) >>> 16);
					//	beq		zero, zero, $00078b68	# 00079070:1000febd	^ __00078b68
					//	sh		s6, $0000(s0)		# 00079074:a6160000	
					frontEndStateToSwitchTo = FrontEndState.FILE_OPTIONS;
					continue;
				case FrontEndState.HIGH_SCORES:
					//	or		s4, zero, zero		# 00079078:0000a025	
					//	or		a0, zero, zero		# 0007907c:00002025	
					//	jal		$000796d0		# 00079080:0c01e5b4	v FNC_000796d0
					//	or		a1, zero, zero		# 00079084:00002825	
					DisplayTopScores(0, 0);
					//	addiu		t0, zero, $0015		# 00079088:24080015	t0=$00000015
					//	beq		zero, zero, $00078b68	# 0007908c:1000feb6	^ __00078b68
					//	sh		t0, $0000(s0)		# 00079090:a6080000	
					frontEndStateToSwitchTo = FrontEndState.PRESS_START;
					continue;
				case FrontEndState.CHANGE_BLOOD_OPTION:
					//	lw		v1, $0000(s1)		# 00079094:8e230000	
					int v1_2 = x80031420;
					//	addiu		s4, zero, $0006		# 00079098:24140006	s4=$00000006
					//	lui		t1, $8003		# 0007909c:3c098003	t1=$80030000
					//	andi		v0, v1, $0003		# 000790a0:30620003	
					//	addiu		v0, v0, $ffff		# 000790a4:2442ffff	
					//	bgez		v0, $000790c8		# 000790a8:04410007	v __000790c8
					int v0 = (x80031420 & 3) - 1;
					//	addiu		at, zero, $fffc		# 000790ac:2401fffc	at=$fffffffc
					if (v0 < 0)
					{
						//	lh		t1, $13d0(t1)		# 000790b0:852913d0	t1=$800313d0
						//	or		v0, s5, zero		# 000790b4:02a01025	
						v0 = 3;
						//	bne		s3, t1, $000790c8	# 000790b8:16690003	v __000790c8
						//	nop					# 000790bc:00000000	
						if (x800313d0 == 2)
						{
							//	beq		zero, zero, $000790c8	# 000790c0:10000001	v __000790c8
							//	or		v0, s2, zero		# 000790c4:02401025	
							v0 = 1;
						}
					}
					//__000790c8:					# 
					//	bne		v0, s3, $000790d4	# 000790c8:14530002	v __000790d4
					//	and		t2, v1, at		# 000790cc:00615024	
					if (v0 == 2)
					{
						//	or		v0, s2, zero		# 000790d0:02401025	
						v0 = 1;
					}
					//__000790d4:					# 
					//	sw		t2, $0000(s1)		# 000790d4:ae2a0000	
					x80031420 = v1_2 & 0xfffffffc;
					//	or		t5, t2, v0		# 000790d8:01426825	
					//	sw		t5, $0000(s1)		# 000790dc:ae2d0000	
					x80031420 |= v0;
					//	beq		zero, zero, $00078b68	# 000790e0:1000fea1	^ __00078b68
					//	sh		s6, $0000(s0)		# 000790e4:a6160000	
					frontEndStateToSwitchTo = FrontEndState.FILE_OPTIONS;
					continue;
				case FrontEndState.DELETE_FILE:
					//	jal		$00077494		# 000790e8:0c01dd25	^ FNC_00077494
					//	nop					# 000790ec:00000000	
					DoDeleteFile();
					//	beq		zero, zero, $00078b68	# 000790f0:1000fe9d	^ __00078b68
					//	sh		s2, $0000(s0)		# 000790f4:a6120000	
					frontEndStateToSwitchTo = FrontEndState.FILE_SELECT;
					continue;
				case FrontEndState.COPY_FILE:
					//	jal		$000776bc		# 000790f8:0c01ddaf	^ FNC_000776bc
					//	nop					# 000790fc:00000000	
					DoCopyFile();
					//	beq		zero, zero, $00078b68	# 00079100:1000fe99	^ __00078b68
					//	sh		s2, $0000(s0)		# 00079104:a6120000	
					frontEndStateToSwitchTo = FrontEndState.FILE_SELECT;
					continue;
				case FrontEndState.PRE_INTRO_STATE: // Runs before intro cutscene
					//	jal		$00076fd8		# 00079108:0c01dbf6	^ FNC_00076fd8
					//	or		s4, zero, zero		# 0007910c:0000a025	
					int resultfnc00076fd8 = fnc00076fd8();
					//	beq		v0, zero, $00079144	# 00079110:1040000c	v __00079144
					//	lui		at, $8003		# 00079114:3c018003	at=$80030000
					//	beq		v0, s3, $00079138	# 00079118:10530007	v __00079138
					//	nop					# 0007911c:00000000	
					//	beq		v0, s5, $00079144	# 00079120:10550008	v __00079144
					//	lui		at, $8003		# 00079124:3c018003	at=$80030000
					//	beq		v0, fp, $00079154	# 00079128:105e000a	v __00079154
					//	nop					# 0007912c:00000000	
					//	beq		zero, zero, $00079160	# 00079130:1000000b	v __00079160
					//	addiu		t3, zero, $0006		# 00079134:240b0006	t3=$00000006
					if (resultfnc00076fd8 == 2)
					{
						//__00079138:					# 
						//	sh		s3, $13d0(at)		# 00079138:a43313d0	[800313d0]
						x800313d0 = 2; // German
						//	beq		zero, zero, $0007915c	# 0007913c:10000007	v __0007915c
						//	sh		zero, $0000(s0)		# 00079140:a6000000	
						frontEndStateToSwitchTo = FrontEndState.INTRO_CUTSCENE;
					}
					else if (resultfnc00076fd8 == 0 || resultfnc00076fd8 == 3)
					{
						//__00079144:					# 
						//	lui		at, $8003		# 00079144:3c018003	at=$80030000
						//	sh		zero, $13d0(at)		# 00079148:a42013d0	[800313d0]
						x800313d0 = 0; // English
						//	beq		zero, zero, $0007915c	# 0007914c:10000003	v __0007915c
						//	sh		zero, $0000(s0)		# 00079150:a6000000	
						frontEndStateToSwitchTo = FrontEndState.INTRO_CUTSCENE;
					}
					else if (resultfnc00076fd8 == 4)
					{
						//__00079154:					# 
						//	sh		s2, $13d0(at)		# 00079154:a43213d0	[800313d0]
						x800313d0 = 1; // French
						//	sh		zero, $0000(s0)		# 00079158:a6000000	
						frontEndStateToSwitchTo = FrontEndState.INTRO_CUTSCENE;
					}
					//__0007915c:					# 
					//	addiu		t3, zero, $0006		# 0007915c:240b0006	t3=$00000006
					//__00079160:					# 
					//	lui		at, $8004		# 00079160:3c018004	at=$80040000
					//	beq		zero, zero, $00078b68	# 00079164:1000fe80	^ __00078b68
					//	sh		t3, $76a0(at)		# 00079168:a42b76a0	[800476a0]
					x800476a0 = 6;
					continue;
			}
		} while (true);
		//	nop					# 0007916c:00000000	
		//	lw		ra, $003c(sp)		# 00079170:8fbf003c	
		//	lw		s0, $0018(sp)		# 00079174:8fb00018	
		//	lw		s1, $001c(sp)		# 00079178:8fb1001c	
		//	lw		s2, $0020(sp)		# 0007917c:8fb20020	
		//	lw		s3, $0024(sp)		# 00079180:8fb30024	
		//	lw		s4, $0028(sp)		# 00079184:8fb40028	
		//	lw		s5, $002c(sp)		# 00079188:8fb5002c	
		//	lw		s6, $0030(sp)		# 0007918c:8fb60030	
		//	lw		s7, $0034(sp)		# 00079190:8fb70034	
		//	lw		fp, $0038(sp)		# 00079194:8fbe0038	
		//	jr		ra			# 00079198:03e00008	
		//	addiu		sp, sp, $0040		# 0007919c:27bd0040	
	}

	// RAM MAINMENU
	void fnc000791a0() {
		//N64.osRecvMesg();
		//N64.fnc00011e14();
		//N64.fnc00004cc8();
		//N64.fnc00004d38();
		//N64.fnc00004f64();
		//fnc00075710();
		//N64.fnc00005c5c();
		//N64.fnc00005c5c();
		//N64.fnc00005c5c();
		//N64.fnc00004ddc();
	}

	// RAM MAINMENU
	void fnc0007946c() {
	}

	// RAM MAINMENU
	void fnc0007949c() {
	}

	// RAM 000796d0
	void DisplayTopScores(int newScore, int a1) {
		//fnc0007949c();
		//N64.fnc000134cc();
		//fnc000791a0();
		//N64.fnc0000afdc();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//N64.fnc0000577c();
		//drawText();
		//drawText();
		//fnc0007946c();
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
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//N64.ButtonIsNewlyPressed();
		//N64.fnc0000b044();
		//N64.fnc0001c3d0();
		//N64.fnc000153d8();
		//drawText();
	}

	// RAM MAINMENU
	void fnc00079f30() {
	}

	// RAM 0007a038
	void DisplayGameOver() {
		//N64.fnc000050c4();
		//N64.fnc0000dc9c();
		//N64.fnc0000e4b0();
		//N64.fnc0000dc30();
		//N64.fnc0000505c();
		//N64.fnc000137ac();
		//N64.osRecvMesg();
		//N64.fnc00011e14();
		//N64.fnc00004cc8();
		//N64.fnc00004d38();
		//N64.fnc00004f64();
		//N64.fnc00004ddc();
		//N64.fnc00005c5c();
		//N64.fnc00005844();
		//N64.fnc00005844();
		//N64.fnc0001db44();
		//fnc00022810();
		//N64.fnc000039d0();
		//N64.fnc000039d0();
		//N64.fnc000039d0();
		//N64.fnc0000505c();
		//N64.ButtonIsNewlyPressed();
		//N64.fnc000056a8();
		//N64.fnc000056a8();
	}

	// RAM MAINMENU
	void fnc0007a754() {
		//fnc0007c7f4();
	}

	// RAM MAINMENU
	void fnc0007a774() {
		//N64.guPerspective();
		//N64.guLookAt();
		//N64.coss();
		//N64.fnc000039d0();
		//N64.coss();
		//N64.fnc000039d0();
		//N64.coss();
		//N64.fnc0001d980();
		//N64.fnc000039d0();
		//N64.coss();
		//N64.fnc000039d0();
		//N64.fnc0001d980();
		//N64.fnc0001d980();
		//N64.fnc0001d980();
		//N64.fnc000039d0();
	}

	// RAM 0007b618
	void ShowClearSaveData() {
		//fnc000791a0();
		//N64.fnc0000505c();
		//N64.ButtonIsNewlyPressed();
		//fnc000791a0();
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
		//drawText();
		//N64.ButtonIsNewlyPressed();
		//N64.ButtonIsNewlyPressed();
		//N64.fnc00005aec();
		//N64.fnc0000b044();
		//N64.fnc00005b84();
		//N64.fnc0000505c();
		//N64.fnc00005b30();
	}

	// RAM 0007b900
	void ShowIntroCopyright() {
		//fnc000791a0();
		//N64.fnc0000505c();
		//fnc000791a0();
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
		//N64.fnc00005aec();
		//N64.fnc0000b044();
		//N64.fnc00005b84();
		//N64.fnc0000505c();
		//N64.fnc00005b30();
	}

	// RAM 0007bb0c
	void ShowIntroPublisherLogo() {
		//fnc000791a0();
		//N64.fnc0000505c();
		//fnc000791a0();
		//N64.fnc00005c5c();
		//N64.fnc00005aec();
		//N64.fnc0000b044();
		//N64.fnc00005b84();
		//N64.fnc0000505c();
		//N64.fnc00005b30();
	}

	// RAM 0007bc90
	void ShowNoControllerNotice() {
		//fnc000791a0();
		//N64.fnc0000505c();
		//fnc000791a0();
		//drawText();
		//drawText();
		//N64.fnc0000b044();
		//N64.fnc00005b84();
		//N64.fnc0000505c();
		//N64.fnc00005b30();
	}

	// RAM 0007bd98
	void ShowWrongConsoleRegionNotice() {
		//fnc000791a0();
		//N64.fnc0000505c();
		//fnc000791a0();
		//drawText();
		//drawText();
		//drawText();
		//N64.fnc0000b044();
		//N64.fnc00005b84();
		//N64.fnc0000505c();
		//N64.fnc00005b30();
	}

	// RAM 0007bec0
	void ShowIntroDmaLogo() {
		//N64.fnc0001355c();
		//fnc000791a0();
		//fnc0007a774();
		//N64.ButtonIsNewlyPressed();
		//N64.fnc00005aec();
		//N64.fnc00005b84();
		//N64.fnc0000505c();
		//N64.fnc00005b30();
	}

	// RAM MAINMENU
	void fnc0007bfc4() {
		//N64.fnc00013514();
		//fnc000791a0();
		//N64.fnc0000afdc();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//N64.fnc0000b044();
		//N64.ButtonIsNewlyPressed();
		//N64.fnc00005aec();
		//N64.fnc00005b84();
		//N64.fnc0000505c();
		//N64.fnc00005b30();
	}

	// RAM MAINMENU
	void fnc0007c4bc() {
		//fnc000791a0();
		//N64.fnc0000afdc();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//N64.fnc0000b044();
		//N64.fnc00005aec();
		//N64.fnc00005b84();
		//N64.fnc0000505c();
		//N64.fnc00005b30();
	}

	// RAM MAINMENU
	void fnc0007c764() {
		//drawText();
		//drawText();
		//drawText();
	}

	// RAM MAINMENU
	void fnc0007c7f4() {
		//fnc00075d58();
		//fnc00075b64();
		//fnc00075b64();
		//N64.fnc0000afdc();
		//fnc0007c764();
		//N64.fnc0000577c();
		//drawText();
		//fnc0007c764();
		//drawText();
		//drawText();
		//fnc0007c764();
		//drawText();
		//fnc0007c764();
		//drawText();
		//fnc0007c764();
		//drawText();
		//fnc0007c764();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//fnc0007c764();
		//drawText();
		//drawText();
		//fnc0007c764();
		//drawText();
		//drawText();
		//fnc0007c764();
		//drawText();
		//drawText();
		//fnc0007c764();
		//drawText();
		//fnc0007c764();
		//drawText();
		//fnc0007c764();
		//drawText();
		//fnc0007c764();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//fnc0007c764();
		//drawText();
		//drawText();
		//fnc0007c764();
		//drawText();
		//drawText();
		//fnc0007c764();
		//drawText();
		//drawText();
		//fnc0007c764();
		//drawText();
		//fnc0007c764();
		//drawText();
		//fnc0007c764();
		//drawText();
		//fnc0007c764();
		//drawText();
		//drawText();
		//drawText();
		//drawText();
		//fnc0007c764();
		//drawText();
		//drawText();
		//fnc0007c764();
		//drawText();
		//N64.fnc0000b044();
		//N64.fnc0000505c();
		//N64.ButtonIsNewlyPressed();
		//N64.fnc00005aec();
		//N64.fnc00005b84();
		//N64.fnc00005b30();
	}

	// RAM MAINMENU
	void DoSaveBeaconLoop(bool canWarp) {
		//N64.fnc0000afdc();
		//fnc00070940();
		//N64.fnc000050c4();
		//N64.fnc00011e14();
		//N64.fnc00004ddc();
		//N64.fnc00008ca8();
		//fnc00070c64();
		//fnc00070a8c();
		//fnc00070cc4();
		//fnc0007166c();
		//N64.ButtonIsNewlyPressed();
		//fnc000708b8();
		//fnc000708b8();
		//fnc000708b8();
		//N64.fnc000153d8();
		//fnc00070c64();
		//N64.ButtonIsNewlyPressed();
		//fnc000731a8();
		//N64.fnc0000b044();
		//fnc000708b8();
		//fnc000708b8();
		//fnc000708b8();
		//fnc000708b8();
		//fnc000708b8();
		//fnc000708b8();
		//fnc000708b8();
		//N64.fnc0000e53c();
		//N64.fnc0000505c();
		//N64.fnc0000afdc();
	}

	// RAM 0007d2b0
	void DoInventoryLoop() {
		//fnc00070940();
		//N64.SetFullResolution();
		//N64.fnc0000726c();
		//N64.fnc0000726c();
		//N64.fnc0001cc6c("Tesking key %d,  result = %d \n");
		//N64.fnc000050c4();
		//N64.fnc00011e14();
		//N64.fnc00004ddc();
		//N64.fnc00008ca8();
		//fnc00070c64();
		//fnc000710d8();
		//fnc0007166c();
		//N64.ButtonIsNewlyPressed();
		//N64.fnc0001cc6c("WindowSelection=%d,  INVENTORY_WINDOW=%d, Done=%d\n");
		//N64.fnc0001cc6c("*******************InventorySelect=%d, \n");
		//fnc000708b8();
		//fnc000708b8();
		//fnc00070514();
		//fnc00070514();
		//fnc00070494();
		//N64.fnc000153d8();
		//fnc000708b8();
		//fnc000708b8();
		//fnc00070514();
		//fnc00070514();
		//fnc00070494();
		//N64.fnc000153d8();
		//fnc000708b8();
		//fnc000708b8();
		//fnc00070514();
		//fnc00070514();
		//fnc00070494();
		//N64.fnc000153d8();
		//fnc000708b8();
		//fnc000708b8();
		//fnc00070514();
		//fnc00070514();
		//fnc00070494();
		//N64.fnc000153d8();
		//fnc000731a8();
		//N64.fnc0000b044();
		//N64.fnc000153d8();
		//fnc000708b8();
		//fnc000708b8();
		//fnc000708b8();
		//fnc000708b8();
		//N64.fnc0000e53c();
		//N64.fnc0000505c();
		//N64.fnc0000afdc();
		//N64.fnc0001cc6c("INV>>>>WeaponSelect=%d\n");
	}

	// RAM MAINMENU
	void fnc0007d7e0() {
		//fnc0008f574();
		//fnc0007f3ec();
	}

	// RAM MAINMENU
	void fnc0007d91c() {
		//fnc0007ea0c();
		//fnc0007ea0c();
		//fnc0007ea0c();
		//fnc0007e12c();
		//fnc00080668();
		//fnc000819c0();
		//fnc00081f9c();
		//N64.fnc00005c5c();
		//fnc00081ff0();
		//fnc0007ebb8();
		//fnc0008fdf0();
		//fnc0007eb98();
		//fnc00081cac();
		//fnc0007f580();
		//fnc00022810();
		//fnc00081a50();
		//fnc00082074();
		//fnc0007fe8c();
		//fnc0007f580();
		//fnc0008fd9c();
		//fnc0007fbf8();
		//fnc00090648();
	}

	// RAM MAINMENU
	void fnc0007e12c() {
		//fnc000809dc();
		//fnc0008035c();
		//fnc0007ee8c();
		//fnc0007fbc8();
		//fnc00080f8c();
		//fnc00080a84();
		//fnc00080a84();
		//fnc0008098c();
		//fnc0007ee0c();
		//fnc0007fb90();
		//fnc0007fb90();
		//fnc0008f574();
		//fnc00080530();
		//fnc0008fe98();
		//N64.fnc0001cc6c("INVALID MOVIE EVENT!!!!!\n");
	}

	// RAM MAINMENU
	void fnc0007ea0c() {
		//fnc0007ebb0();
	}

	// RAM MAINMENU
	void fnc0007eb98() {
	}

	// RAM MAINMENU
	void fnc0007ebb0() {
	}

	// RAM MAINMENU
	void fnc0007ebb8() {
		//N64.fnc0000345c();
		//fnc0007eee0();
		//fnc0007f188();
		//N64.fnc0001cc6c("ERROR: guLookAt is going to CRASH.\n");
		//N64.guPerspective();
		//N64.guLookAt();
		//fnc000838e0();
		//fnc000839f0();
	}

	// RAM MAINMENU
	void fnc0007ee0c() {
	}

	// RAM MAINMENU
	void fnc0007ee8c() {
	}

	// RAM MAINMENU
	void fnc0007eed0() {
	}

	// RAM MAINMENU
	void fnc0007eee0() {
	}

	// RAM MAINMENU
	void fnc0007f17c() {
	}

	// RAM MAINMENU
	void fnc0007f188() {
		//N64.fnc0001d980();
		//N64.coss();
		//N64.fnc0001d980();
		//N64.coss();
		//N64.fnc0001d980();
		//N64.coss();
	}

	// RAM MAINMENU
	void fnc0007f3ec() {
	}

	// RAM MAINMENU
	void fnc0007f3f8() {
		//N64.fnc0001e5f0();
		//N64.fnc0001e7b0();
		//N64.fnc0001e5f0();
		//N64.fnc0001e7b0();
	}

	// RAM MAINMENU
	void fnc0007f580() {
		//fnc0007f830();
		//fnc0007f3f8();
		//fnc0007f830();
	}

	// RAM MAINMENU
	void fnc0007f830() {
	}

	// RAM MAINMENU
	void fnc0007fb90() {
	}

	// RAM MAINMENU
	void fnc0007fbbc() {
	}

	// RAM MAINMENU
	void fnc0007fbc8() {
	}

	// RAM MAINMENU
	void fnc0007fbe8() {
	}

	// RAM MAINMENU
	void fnc0007fbf8() {
	}

	// RAM MAINMENU
	void fnc0007fe8c() {
		//N64.fnc000039d0();
		//N64.fnc0000c81c();
		//fnc00080b80();
		//fnc000801bc();
		//fnc00081290();
	}

	// RAM MAINMENU
	void fnc000801bc() {
		//N64.fnc0000c81c();
		//fnc00080b80();
	}

	// RAM MAINMENU
	/// Called during start cutscene, mostly before scene changes
	void fnc0008035c() {
		//N64.fnc0001cc6c("ERROR: Too many keyframes for buffers! 100 KF Maximum!\n");
		//fnc00080ad4();
		//fnc00080ad4();
	}

	// RAM MAINMENU
	void fnc00080530() {
	}

	// RAM MAINMENU
	void fnc00080588() {
		//N64.fnc0001cc6c("newAmbientLight r: %d g: %d b: %d\n");
	}

	// RAM MAINMENU
	void fnc00080668() {
		//fnc00080ad4();
	}

	// RAM MAINMENU
	void fnc0008098c() {
	}

	// RAM MAINMENU
	void fnc000809dc() {
		//N64.fnc0001cc6c("ERROR: No free animation buffers! See Frank. \n");
	}

	// RAM MAINMENU
	void fnc00080a84() {
	}

	// RAM MAINMENU
	void fnc00080ad4() {
	}

	// RAM MAINMENU
	void fnc00080b80() {
		//N64.coss();
		//N64.fnc0001d980();
		//N64.coss();
		//N64.fnc0001d980();
		//N64.coss();
		//N64.fnc0001d980();
	}

	// RAM MAINMENU
	void fnc00080f8c() {
	}

	// RAM MAINMENU
	void fnc00081058() {
	}

	// RAM MAINMENU
	void fnc00081290() {
		//N64.fnc000039d0();
	}

	// RAM MAINMENU
	void fnc000819c0() {
	}

	// RAM MAINMENU
	void fnc00081a3c() {
	}

	// RAM MAINMENU
	void fnc00081a50() {
	}

	// RAM MAINMENU
	void fnc00081cac() {
	}

	// RAM MAINMENU
	void fnc00081f9c() {
	}

	// RAM MAINMENU
	void fnc00081ff0() {
	}

	// RAM MAINMENU
	void fnc00082044() {
	}

	// RAM MAINMENU
	void fnc00082074() {
	}

	// RAM MAINMENU
	void fnc000821e0() {
		//N64.fnc00004f64();
		//N64.fnc00004ddc();
		//N64.fnc00004ddc();
		//N64.fnc00004ddc();
	}

	// RAM MAINMENU
	void fnc000823c0() {
	}

	// RAM MAINMENU
	void fnc000823c8() {
	}

	// RAM MAINMENU
	void fnc000823d8() {
		//N64.fnc000039d0();
		//N64.fnc000039d0();
	}

	// RAM MAINMENU
	void fnc00082868() {
	}

	// RAM MAINMENU
	void fnc000829e4() {
	}

	// RAM 00082cbc
	int TransitionToNextLevel(int a0, int a1)
	{
		//	addiu		sp, sp, $fec0		# 00082cbc:27bdfec0	
		//	lui		t7, $8009		# 00082cc0:3c0f8009	t7=$80090000
		//	sw		ra, $0064(sp)		# 00082cc4:afbf0064	
		//	sw		fp, $0060(sp)		# 00082cc8:afbe0060	
		//	sw		s7, $005c(sp)		# 00082ccc:afb7005c	
		//	sw		s6, $0058(sp)		# 00082cd0:afb60058	
		//	sw		s5, $0054(sp)		# 00082cd4:afb50054	
		//	sw		s4, $0050(sp)		# 00082cd8:afb40050	
		//	sw		s3, $004c(sp)		# 00082cdc:afb3004c	
		//	sw		s2, $0048(sp)		# 00082ce0:afb20048	
		//	sw		s1, $0044(sp)		# 00082ce4:afb10044	
		//	sw		s0, $0040(sp)		# 00082ce8:afb00040	
		//	(sdc1)		s6, $0038(sp)		# 00082cec:f7b60038	
		//	(sdc1)		s4, $0030(sp)		# 00082cf0:f7b40030	
		//	sw		a0, $0140(sp)		# 00082cf4:afa40140	
		//	sw		a1, $0144(sp)		# 00082cf8:afa50144	
		//	addiu		t7, t7, $4a84		# 00082cfc:25ef4a84	
		//	lw		at, $0000(t7)		# 00082d00:8de10000	
		//	addiu		t6, sp, $012c		# 00082d04:27ae012c	
		//	lui		t4, $8009		# 00082d08:3c0c8009	t4=$80090000
		//	sw		at, $0000(t6)		# 00082d0c:adc10000	
		//	lhu		at, $0004(t7)		# 00082d10:95e10004	
		//	addiu		t4, t4, $4a8c		# 00082d14:258c4a8c	t4=$80094a8c
		//	addiu		t3, sp, $0124		# 00082d18:27ab0124	
		//	sh		at, $0004(t6)		# 00082d1c:a5c10004	
		//	lw		at, $0000(t4)		# 00082d20:8d810000	at=$80094a8c
		//	lui		t7, $8009		# 00082d24:3c0f8009	t7=$80090000
		//	addiu		t7, t7, $4a94		# 00082d28:25ef4a94	t7=$80094a94
		//	sw		at, $0000(t3)		# 00082d2c:ad610000	
		//	lhu		at, $0004(t4)		# 00082d30:95810004	at=$80094a90
		//	addiu		t6, sp, $011c		# 00082d34:27ae011c	
		//	lui		t4, $8009		# 00082d38:3c0c8009	t4=$80090000
		//	sh		at, $0004(t3)		# 00082d3c:a5610004	
		//	lw		at, $0000(t7)		# 00082d40:8de10000	at=$80094a94
		//	addiu		t4, t4, $4a9c		# 00082d44:258c4a9c	t4=$80094a9c
		//	addiu		t3, sp, $0114		# 00082d48:27ab0114	
		//	sw		at, $0000(t6)		# 00082d4c:adc10000	
		//	lhu		at, $0004(t7)		# 00082d50:95e10004	at=$80094a98
		//	lui		t7, $8009		# 00082d54:3c0f8009	t7=$80090000
		//	addiu		t7, t7, $4aa4		# 00082d58:25ef4aa4	t7=$80094aa4
		//	sh		at, $0004(t6)		# 00082d5c:a5c10004	
		//	lw		at, $0000(t4)		# 00082d60:8d810000	at=$80094a9c
		//	addiu		t6, sp, $010c		# 00082d64:27ae010c	
		//	lui		t8, $8009		# 00082d68:3c188009	t8=$80090000
		//	sw		at, $0000(t3)		# 00082d6c:ad610000	
		//	lhu		at, $0004(t4)		# 00082d70:95810004	at=$80094aa0
		//	lui		t4, $8009		# 00082d74:3c0c8009	t4=$80090000
		//	addiu		t4, t4, $4aac		# 00082d78:258c4aac	t4=$80094aac
		//	sh		at, $0004(t3)		# 00082d7c:a5610004	
		//	lw		at, $0000(t7)		# 00082d80:8de10000	at=$80094aa4
		//	addiu		t3, sp, $0104		# 00082d84:27ab0104	
		//	addiu		t8, t8, $4a1c		# 00082d88:27184a1c	t8=$80094a1c
		//	sw		at, $0000(t6)		# 00082d8c:adc10000	
		//	lhu		at, $0004(t7)		# 00082d90:95e10004	at=$80094aa8
		//	or		s4, zero, zero		# 00082d94:0000a025	
		//	or		fp, zero, zero		# 00082d98:0000f025	
		//	sh		at, $0004(t6)		# 00082d9c:a5c10004	
		//	lw		at, $0000(t4)		# 00082da0:8d810000	at=$80094aac
		//	sw		at, $0000(t3)		# 00082da4:ad610000	
		//	lhu		at, $0004(t4)		# 00082da8:95810004	at=$80094ab0
		//	addiu		t4, zero, $0004		# 00082dac:240c0004	t4=$00000004
		//	sh		at, $0004(t3)		# 00082db0:a5610004	
		//	lw		t6, $0140(sp)		# 00082db4:8fae0140	
		//	lui		at, $8005		# 00082db8:3c018005	at=$80050000
		//	sw		zero, $00d8(sp)		# 00082dbc:afa000d8	
		//	sll		t7, t6, 4		# 00082dc0:000e7900	
		//	addu		v0, t7, t8		# 00082dc4:01f81021	
		//	lw		t2, $0004(v0)		# 00082dc8:8c4a0004	
		//	lw		t9, $0000(v0)		# 00082dcc:8c590000	
		//	sw		zero, $00d0(sp)		# 00082dd0:afa000d0	
		//	addiu		t3, t2, $0001		# 00082dd4:254b0001	
		//	sw		t3, $00fc(sp)		# 00082dd8:afab00fc	
		//	sb		t4, $2aca(at)		# 00082ddc:a02c2aca	[80052aca]
		x80052aca = 4;
		//	jal		$0001363c		# 00082de0:0c004d8f	^ FNC_0001363c
		//	sw		t9, $0100(sp)		# 00082de4:afb90100	
		///N64.fnc0001363c();
		//	jal		$0000afdc		# 00082de8:0c002bf7	^ FNC_0000afdc
		//	nop					# 00082dec:00000000	
		///N64.fnc0000afdc();
		//	jal		$000823c0		# 00082df0:0c0208f0	^ FNC_000823c0
		//	nop					# 00082df4:00000000	
		///fnc000823c0();
		//	lw		v1, $0100(sp)		# 00082df8:8fa30100	
		//	lw		a0, $00fc(sp)		# 00082dfc:8fa400fc	
		//	lui		s7, $0100		# 00082e00:3c170100	s7=$01000000
		//	lui		s5, $1fff		# 00082e04:3c151fff	s5=$1fff0000
		//	addu		v0, a0, v1		# 00082e08:00831021	
		//	addiu		v0, v0, $0001		# 00082e0c:24420001	
		//	bgez		v0, $00082e20		# 00082e10:04410003	v __00082e20
		//	sra		t5, v0, 1		# 00082e14:00026843	
		//	addiu		at, v0, $0001		# 00082e18:24410001	
		//	sra		t5, at, 1		# 00082e1c:00016843	
		//__00082e20:					# 
		//	subu		s6, t5, v1		# 00082e20:01a3b023	
		//	sll		t6, s6, 2		# 00082e24:00167080	
		//	subu		t7, a0, v1		# 00082e28:00837823	
		//	sll		t8, t7, 2		# 00082e2c:000fc080	
		//	addu		t6, t6, s6		# 00082e30:01d67021	
		//	sll		t6, t6, 1		# 00082e34:000e7040	
		//	addu		t8, t8, t7		# 00082e38:030fc021	
		//	sll		t8, t8, 1		# 00082e3c:0018c040	
		//	addiu		s6, t6, $0010		# 00082e40:25d60010	
		//	lui		at, $3f80		# 00082e44:3c013f80	at=$3f800000
		//	addiu		t2, s6, $fff0		# 00082e48:26cafff0	
		//	addiu		t9, t8, $000a		# 00082e4c:2719000a	
		//	lui		s3, $8006		# 00082e50:3c138006	s3=$80060000
		//	lui		s2, $8006		# 00082e54:3c128006	s2=$80060000
		//	mtc1		at, $f22		# 00082e58:4481b000	
		//	mtc1		zero, $f20		# 00082e5c:4480a000	
		//	addiu		s2, s2, $bb2c		# 00082e60:2652bb2c	s2=$8005bb2c
		//	addiu		s3, s3, $bb38		# 00082e64:2673bb38	s3=$8005bb38
		//	sw		t9, $0080(sp)		# 00082e68:afb90080	
		//	sw		t2, $0074(sp)		# 00082e6c:afaa0074	
		//	sw		t5, $0088(sp)		# 00082e70:afad0088	
		//	ori		s5, s5, $ffff		# 00082e74:36b5ffff	s5=$1fffffff
		//	ori		s7, s7, $0040		# 00082e78:36f70040	s7=$01000040
		//	subu		s0, s6, s4		# 00082e7c:02d48023	
		//__00082e80:					# 
		//	sll		t3, s0, 2		# 00082e80:00105880	
		//	lui		a0, $8007		# 00082e84:3c048007	a0=$80070000
		//	lui		a1, $8007		# 00082e88:3c058007	a1=$80070000
		//	addiu		a1, a1, $8038		# 00082e8c:24a58038	a1=$80068038
		//	addiu		a0, a0, $a8d0		# 00082e90:2484a8d0	a0=$8006a8d0
		//	sw		t3, $0070(sp)		# 00082e94:afab0070	
		//	subu		s1, zero, s0		# 00082e98:00108823	
		//	jal		$0001ba70		# 00082e9c:0c006e9c	^ FNC_0001ba70
		//	addiu		a2, zero, $0001		# 00082ea0:24060001	a2=$00000001
		//N64.osRecvMesg();
		//	jal		$00011e14		# 00082ea4:0c004785	^ FNC_00011e14
		//	or		a0, zero, zero		# 00082ea8:00002025	
		///N64.fnc00011e14();
		//	jal		$00004cc8		# 00082eac:0c001332	^ FNC_00004cc8
		//	nop					# 00082eb0:00000000	
		///N64.fnc00004cc8();
		//	jal		$00004d38		# 00082eb4:0c00134e	^ FNC_00004d38
		//	nop					# 00082eb8:00000000	
		///N64.fnc00004d38();
		//	addiu		a0, zero, $00ff		# 00082ebc:240400ff	a0=$000000ff
		//	or		a1, zero, zero		# 00082ec0:00002825	
		//	jal		$000821e0		# 00082ec4:0c020878	^ FNC_000821e0
		//	or		a2, zero, zero		# 00082ec8:00003025	
		///fnc000821e0();
		//	lw		v1, $0000(s2)		# 00082ecc:8e430000	v1=$8005bb2c
		//	sll		t7, fp, 2		# 00082ed0:001e7880	
		//	sll		t8, fp, 2		# 00082ed4:001ec080	
		//	sll		t9, fp, 2		# 00082ed8:001ec880	
		//	addiu		t4, v1, $0008		# 00082edc:246c0008	t4=$801aec20
		//	sw		t4, $0000(s2)		# 00082ee0:ae4c0000	[8005bb2c]
		//	lui		t5, $b900		# 00082ee4:3c0db900	t5=$b9000000
		//	lui		t6, $0050		# 00082ee8:3c0e0050	t6=$00500000
		//	subu		t7, t7, fp		# 00082eec:01fe7823	
		//	subu		t8, t8, fp		# 00082ef0:031ec023	
		//	subu		t9, t9, fp		# 00082ef4:033ec823	
		//	ori		t6, t6, $41c8		# 00082ef8:35ce41c8	t6=$005041c8
		//	ori		t5, t5, $031d		# 00082efc:35ad031d	t5=$b900031d
		//	sll		t7, t7, 3		# 00082f00:000f78c0	
		//	sll		t8, t8, 3		# 00082f04:0018c0c0	
		//	sll		t9, t9, 3		# 00082f08:0019c8c0	
		//	addu		t7, t7, fp		# 00082f0c:01fe7821	
		//	addu		t8, t8, fp		# 00082f10:031ec021	
		//	addu		t9, t9, fp		# 00082f14:033ec821	
		//	sw		t5, $0000(v1)		# 00082f18:ac6d0000	
		//	sw		t6, $0004(v1)		# 00082f1c:ac6e0004	
		//	sll		t7, t7, 4		# 00082f20:000f7900	
		//	sll		t8, t8, 2		# 00082f24:0018c080	
		//	sll		t9, t9, 3		# 00082f28:0019c8c0	
		//	slt		at, s6, s4		# 00082f2c:02d4082a	
		//	sh		t7, $0108(sp)		# 00082f30:a7af0108	
		//	sh		t8, $0106(sp)		# 00082f34:a7b80106	
		//	beq		at, zero, $00082f4c	# 00082f38:10200004	v __00082f4c
		//	sh		t9, $0104(sp)		# 00082f3c:a7b90104	
		//	addiu		t2, zero, $ff60		# 00082f40:240aff60	t2=$ffffff60
		//	sh		t2, $0130(sp)		# 00082f44:a7aa0130	
		//	sh		zero, $011c(sp)		# 00082f48:a7a0011c	
		//__00082f4c:					# 
		//	slt		at, s6, s4		# 00082f4c:02d4082a	
		//	bne		at, zero, $00082f68	# 00082f50:14200005	v __00082f68
		//	lui		a0, $8006		# 00082f54:3c048006	a0=$80060000
		//	sll		t3, s4, 4		# 00082f58:00145900	
		//	addiu		t4, t3, $ff6a		# 00082f5c:256cff6a	
		//	beq		zero, zero, $00082f78	# 00082f60:10000005	v __00082f78
		//	sh		t4, $0128(sp)		# 00082f64:a7ac0128	
		//__00082f68:					# 
		//	subu		t5, s4, s6		# 00082f68:02966823	
		//	sll		t6, t5, 4		# 00082f6c:000d7100	
		//	addiu		t7, t6, $fed4		# 00082f70:25cffed4	
		//	sh		t7, $0128(sp)		# 00082f74:a7af0128	
		//__00082f78:					# 
		//	lui		at, $4248		# 00082f78:3c014248	at=$42480000
		//	mtc1		at, $f4			# 00082f7c:44812000	
		//	lui		at, $800b		# 00082f80:3c01800b	at=$800b0000
		//	lwc1		$f6, $ec3c(at)		# 00082f84:c426ec3c	[800aec3c]
		//	lui		a3, $3faa		# 00082f88:3c073faa	a3=$3faa0000
		//	ori		a3, a3, $aaab		# 00082f8c:34e7aaab	a3=$3faaaaab
		//	lw		a0, $bb3c(a0)		# 00082f90:8c84bb3c	a0=$8005bb3c
		//	addiu		a1, sp, $0132		# 00082f94:27a50132	
		//	lui		a2, $425c		# 00082f98:3c06425c	a2=$425c0000
		//	swc1		$f22, $0018(sp)		# 00082f9c:e7b60018	
		//	swc1		$f4, $0010(sp)		# 00082fa0:e7a40010	
		//	jal		$0001e590		# 00082fa4:0c007964	^ FNC_0001e590
		//	swc1		$f6, $0014(sp)		# 00082fa8:e7a60014	
		///N64.guPerspective();
		//	lh		t8, $010c(sp)		# 00082fac:87b8010c	
		//	lh		t9, $010e(sp)		# 00082fb0:87b9010e	
		//	lh		t2, $0110(sp)		# 00082fb4:87aa0110	
		//	mtc1		t8, $f8			# 00082fb8:44984000	
		//	mtc1		t9, $f16		# 00082fbc:44998000	
		//	mtc1		t2, $f4			# 00082fc0:448a2000	
		//	cvt.s.w		$f10, $f8		# 00082fc4:468042a0	
		//	mfc1		a1, $f20		# 00082fc8:4405a000	
		//	mfc1		a2, $f20		# 00082fcc:4406a000	
		//	mfc1		a3, $f20		# 00082fd0:4407a000	
		//	lw		a0, $0000(s3)		# 00082fd4:8e640000	
		//	cvt.s.w		$f18, $f16		# 00082fd8:468084a0	
		//	swc1		$f10, $0010(sp)		# 00082fdc:e7aa0010	
		//	swc1		$f20, $001c(sp)		# 00082fe0:e7b4001c	
		//	swc1		$f22, $0020(sp)		# 00082fe4:e7b60020	
		//	swc1		$f20, $0024(sp)		# 00082fe8:e7b40024	
		//	cvt.s.w		$f6, $f4		# 00082fec:468021a0	
		//	swc1		$f18, $0014(sp)		# 00082ff0:e7b20014	
		//	jal		$0001de68		# 00082ff4:0c00779a	^ FNC_0001de68
		//	swc1		$f6, $0018(sp)		# 00082ff8:e7a60018	
		///N64.guLookAt();
		//	lw		a3, $0000(s3)		# 00082ffc:8e670000	
		//	or		a0, zero, zero		# 00083000:00002025	
		//	addiu		a1, sp, $0114		# 00083004:27a50114	
		//	or		a2, zero, zero		# 00083008:00003025	
		//	jal		$000039d0		# 0008300c:0c000e74	^ FNC_000039d0
		//	sw		a3, $00b8(sp)		# 00083010:afa700b8	
		///N64.fnc000039d0();
		//	lw		v1, $0000(s2)		# 00083014:8e430000	
		//	lui		t4, $bc00		# 00083018:3c0cbc00	t4=$bc000000
		//	ori		t4, t4, $000e		# 0008301c:358c000e	t4=$bc00000e
		//	addiu		t3, v1, $0008		# 00083020:246b0008	
		//	sw		t3, $0000(s2)		# 00083024:ae4b0000	
		//	sw		t4, $0000(v1)		# 00083028:ac6c0000	
		//	lhu		t5, $0132(sp)		# 0008302c:97ad0132	
		//	lui		t7, $0103		# 00083030:3c0f0103	t7=$01030000
		//	ori		t7, t7, $0040		# 00083034:35ef0040	t7=$01030040
		//	sw		t5, $0004(v1)		# 00083038:ac6d0004	
		//	lw		v1, $0000(s2)		# 0008303c:8e430000	
		//	lui		t8, $8006		# 00083040:3c188006	t8=$80060000
		//	lui		t3, $0102		# 00083044:3c0b0102	t3=$01020000
		//	addiu		t6, v1, $0008		# 00083048:246e0008	
		//	sw		t6, $0000(s2)		# 0008304c:ae4e0000	
		//	sw		t7, $0000(v1)		# 00083050:ac6f0000	
		//	lw		t8, $bb3c(t8)		# 00083054:8f18bb3c	t8=$8005bb3c
		//	ori		t3, t3, $0040		# 00083058:356b0040	t3=$01020040
		//	andi		a0, fp, $000f		# 0008305c:33c4000f	
		//	and		t9, t8, s5		# 00083060:0315c824	
		//	sw		t9, $0004(v1)		# 00083064:ac790004	
		//	lw		v1, $0000(s2)		# 00083068:8e430000	
		//	addiu		t2, v1, $0008		# 0008306c:246a0008	
		//	sw		t2, $0000(s2)		# 00083070:ae4a0000	
		//	sw		t3, $0000(v1)		# 00083074:ac6b0000	
		//	lw		t4, $0000(s3)		# 00083078:8e6c0000	
		//	and		t5, t4, s5		# 0008307c:01956824	
		//	sw		t5, $0004(v1)		# 00083080:ac6d0004	
		//	lw		t6, $0000(s3)		# 00083084:8e6e0000	
		//	addiu		t7, t6, $0040		# 00083088:25cf0040	
		//	jal		$00082868		# 0008308c:0c020a1a	^ FNC_00082868
		//	sw		t7, $0000(s3)		# 00083090:ae6f0000	
		///fnc00082868();
		//	or		a0, s4, zero		# 00083094:02802025	
		//	jal		$000823d8		# 00083098:0c0208f6	^ FNC_000823d8
		//	lw		a1, $0140(sp)		# 0008309c:8fa50140	
		///fnc000823d8();
		//	lw		t8, $0070(sp)		# 000830a0:8fb80070	
		//	slt		at, s1, s0		# 000830a4:0230082a	
		//	beq		at, zero, $000830b8	# 000830a8:10200003	v __000830b8
		//	sh		t8, $0110(sp)		# 000830ac:a7b80110	
		//	beq		zero, zero, $000830bc	# 000830b0:10000002	v __000830bc
		//	or		v0, s0, zero		# 000830b4:02001025	
		//__000830b8:					# 
		//	or		v0, s1, zero		# 000830b8:02201025	
		//__000830bc:					# 
		//	slti		at, v0, $0064		# 000830bc:28410064	
		//	beq		at, zero, $0008310c	# 000830c0:10200012	v __0008310c
		//	sll		a0, s0, 16		# 000830c4:00102400	
		//	addiu		at, zero, $00c8		# 000830c8:240100c8	at=$000000c8
		//	div		a0, at			# 000830cc:0081001a	
		//	mflo		t9			# 000830d0:0000c812	
		//	andi		a0, t9, $ffff		# 000830d4:3324ffff	
		//	jal		$0001d950		# 000830d8:0c007654	^ FNC_0001d950
		//	nop					# 000830dc:00000000	
		///N64.coss();
		//	sll		t3, v0, 5		# 000830e0:00025940	
		//	subu		t3, t3, v0		# 000830e4:01625823	
		//	sll		t3, t3, 2		# 000830e8:000b5880	
		//	addu		t3, t3, v0		# 000830ec:01625821	
		//	sll		t3, t3, 2		# 000830f0:000b5880	
		//	ori		at, zero, $ffff		# 000830f4:3401ffff	at=$0000ffff
		//	div		t3, at			# 000830f8:0161001a	
		//	mflo		t4			# 000830fc:00006012	
		//	addiu		t5, zero, $ff06		# 00083100:240dff06	t5=$ffffff06
		//	subu		t6, t5, t4		# 00083104:01ac7023	
		//	sh		t6, $010c(sp)		# 00083108:a7ae010c	
		//__0008310c:					# 
		//	addiu		a0, sp, $010c		# 0008310c:27a4010c	
		//	addiu		a1, sp, $0104		# 00083110:27a50104	
		//	jal		$000823c8		# 00083114:0c0208f2	^ FNC_000823c8
		//	or		a2, fp, zero		# 00083118:03c03025	
		///fnc000823c8();
		//	lui		at, $44fa		# 0008311c:3c0144fa	at=$44fa0000
		//	mtc1		at, $f8			# 00083120:44814000	
		//	lui		a3, $3faa		# 00083124:3c073faa	a3=$3faa0000
		//	ori		a3, a3, $aaab		# 00083128:34e7aaab	a3=$3faaaaab
		//	lw		a0, $0000(s3)		# 0008312c:8e640000	
		//	addiu		a1, sp, $0132		# 00083130:27a50132	
		//	lui		a2, $425c		# 00083134:3c06425c	a2=$425c0000
		//	swc1		$f22, $0010(sp)		# 00083138:e7b60010	
		//	swc1		$f22, $0018(sp)		# 0008313c:e7b60018	
		//	jal		$0001e590		# 00083140:0c007964	^ FNC_0001e590
		//	swc1		$f8, $0014(sp)		# 00083144:e7a80014	
		///N64.guPerspective();
		//	lw		v1, $0000(s2)		# 00083148:8e430000	
		//	lui		t8, $bc00		# 0008314c:3c18bc00	t8=$bc000000
		//	ori		t8, t8, $000e		# 00083150:3718000e	t8=$bc00000e
		//	addiu		t7, v1, $0008		# 00083154:246f0008	
		//	sw		t7, $0000(s2)		# 00083158:ae4f0000	
		//	sw		t8, $0000(v1)		# 0008315c:ac780000	
		//	lhu		t9, $0132(sp)		# 00083160:97b90132	
		//	lui		t3, $0103		# 00083164:3c0b0103	t3=$01030000
		//	ori		t3, t3, $0040		# 00083168:356b0040	t3=$01030040
		//	sw		t9, $0004(v1)		# 0008316c:ac790004	
		//	lw		v1, $0000(s2)		# 00083170:8e430000	
		//	lui		t9, $0101		# 00083174:3c190101	t9=$01010000
		//	ori		t9, t9, $0040		# 00083178:37390040	t9=$01010040
		//	addiu		t2, v1, $0008		# 0008317c:246a0008	
		//	sw		t2, $0000(s2)		# 00083180:ae4a0000	
		//	sw		t3, $0000(v1)		# 00083184:ac6b0000	
		//	lw		t5, $0000(s3)		# 00083188:8e6d0000	
		//	addiu		a0, sp, $0124		# 0008318c:27a40124	
		//	addiu		a1, sp, $011c		# 00083190:27a5011c	
		//	and		t4, t5, s5		# 00083194:01b56024	
		//	sw		t4, $0004(v1)		# 00083198:ac6c0004	
		//	lw		t6, $0000(s3)		# 0008319c:8e6e0000	
		//	lw		v1, $0000(s2)		# 000831a0:8e430000	
		//	or		a2, zero, zero		# 000831a4:00003025	
		//	addiu		t7, t6, $0040		# 000831a8:25cf0040	
		//	addiu		t8, v1, $0008		# 000831ac:24780008	
		//	sw		t7, $0000(s3)		# 000831b0:ae6f0000	
		//	sw		t8, $0000(s2)		# 000831b4:ae580000	
		//	sw		t9, $0000(v1)		# 000831b8:ac790000	
		//	lw		t2, $00b8(sp)		# 000831bc:8faa00b8	
		//	and		t3, t2, s5		# 000831c0:01555824	
		//	sw		t3, $0004(v1)		# 000831c4:ac6b0004	
		//	jal		$000039d0		# 000831c8:0c000e74	^ FNC_000039d0
		//	lw		a3, $0000(s3)		# 000831cc:8e670000	
		///N64.fnc000039d0();
		//	lw		v1, $0000(s2)		# 000831d0:8e430000	
		//	lui		t4, $0102		# 000831d4:3c0c0102	t4=$01020000
		//	ori		t4, t4, $0040		# 000831d8:358c0040	t4=$01020040
		//	addiu		t5, v1, $0008		# 000831dc:246d0008	
		//	sw		t5, $0000(s2)		# 000831e0:ae4d0000	
		//	sw		t4, $0000(v1)		# 000831e4:ac6c0000	
		//	lw		t6, $0000(s3)		# 000831e8:8e6e0000	
		//	addiu		a0, sp, $012c		# 000831ec:27a4012c	
		//	or		a1, zero, zero		# 000831f0:00002825	
		//	and		t7, t6, s5		# 000831f4:01d57824	
		//	sw		t7, $0004(v1)		# 000831f8:ac6f0004	
		//	lw		t8, $0000(s3)		# 000831fc:8e780000	
		//	or		a2, zero, zero		# 00083200:00003025	
		//	addiu		a3, t8, $0040		# 00083204:27070040	
		//	jal		$000039d0		# 00083208:0c000e74	^ FNC_000039d0
		//	sw		a3, $0000(s3)		# 0008320c:ae670000	
		///N64.fnc000039d0();
		//	slt		at, s4, s6		# 00083210:0296082a	
		//	beq		at, zero, $00083228	# 00083214:10200004	v __00083228
		//	lw		v0, $0088(sp)		# 00083218:8fa20088	
		//	lw		v0, $0100(sp)		# 0008321c:8fa20100	
		//	beq		zero, zero, $0008322c	# 00083220:10000002	v __0008322c
		//	lw		s1, $0088(sp)		# 00083224:8fb10088	
		//__00083228:					# 
		//	lw		s1, $00fc(sp)		# 00083228:8fb100fc	
		//__0008322c:					# 
		//	slt		at, v0, s1		# 0008322c:0051082a	
		//	beq		at, zero, $00083264	# 00083230:1020000c	v __00083264
		//	or		s0, v0, zero		# 00083234:00408025	
		//__00083238:					# 
		//	jal		$000829e4		# 00083238:0c020a79	^ FNC_000829e4
		//	or		a0, s0, zero		# 0008323c:02002025	
		///fnc000829e4();
		//	lw		v1, $0000(s2)		# 00083240:8e430000	
		//	addiu		s0, s0, $0001		# 00083244:26100001	
		//	addiu		t2, v1, $0008		# 00083248:246a0008	
		//	sw		t2, $0000(s2)		# 0008324c:ae4a0000	
		//	sw		s7, $0000(v1)		# 00083250:ac770000	
		//	lw		t3, $0000(s3)		# 00083254:8e6b0000	
		//	and		t5, t3, s5		# 00083258:01756824	
		//	bne		s0, s1, $00083238	# 0008325c:1611fff6	^ __00083238
		//	sw		t5, $0004(v1)		# 00083260:ac6d0004	
		//__00083264:					# 
		//	lw		t4, $0000(s3)		# 00083264:8e6c0000	
		//	ori		a0, zero, $d000		# 00083268:3404d000	a0=$0000d000
		//	addiu		t6, t4, $0040		# 0008326c:258e0040	
		//	jal		$0000345c		# 00083270:0c000d17	^ FNC_0000345c
		//	sw		t6, $0000(s3)		# 00083274:ae6e0000	
		///N64.fnc0000345c();
		//	lw		t7, $00d0(sp)		# 00083278:8faf00d0	
		//	lw		v0, $00d8(sp)		# 0008327c:8fa200d8	
		//	beq		t7, zero, $000834d4	# 00083280:11e00094	v __000834d4
		//	addiu		v0, v0, $0001		# 00083284:24420001	
		//	jal		$0000afdc		# 00083288:0c002bf7	^ FNC_0000afdc
		//	sw		v0, $00d8(sp)		# 0008328c:afa200d8	
		///N64.fnc0000afdc();
		//	lui		v0, $8003		# 00083290:3c028003	v0=$80030000
		//	lh		v0, $13d0(v0)		# 00083294:844213d0	v0=$800313d0
		//	lui		a0, $800b		# 00083298:3c04800b	a0=$800b0000
		//	addiu		a0, a0, $eb2c		# 0008329c:2484eb2c	a0=$800aeb2c
		//	beq		v0, zero, $000832c8	# 000832a0:10400009	v __000832c8
		//	addiu		a1, zero, $0050		# 000832a4:24050050	a1=$00000050
		//	addiu		at, zero, $0001		# 000832a8:24010001	at=$00000001
		//	beq		v0, at, $0008331c	# 000832ac:1041001b	v __0008331c
		//	lui		a0, $800b		# 000832b0:3c04800b	a0=$800b0000
		//	addiu		at, zero, $0002		# 000832b4:24010002	at=$00000002
		//	beq		v0, at, $00083378	# 000832b8:1041002f	v __00083378
		//	lui		a0, $800b		# 000832bc:3c04800b	a0=$800b0000
		//	beq		zero, zero, $000833d0	# 000832c0:10000043	v __000833d0
		//	nop					# 000832c4:00000000	
		//__000832c8:					# 
		//	or		a2, zero, zero		# 000832c8:00003025	
		//	jal		$0000a4a4		# 000832cc:0c002929	^ FNC_0000a4a4
		//	or		a3, zero, zero		# 000832d0:00003825	
		///drawText();
		//	lui		a0, $800b		# 000832d4:3c04800b	a0=$800b0000
		//	addiu		a0, a0, $eb30		# 000832d8:2484eb30	a0="%@Primary objective complete."
		//	addiu		a1, zero, $0080		# 000832dc:24050080	a1=$00000080
		//	jal		$0000a4a4		# 000832e0:0c002929	^ FNC_0000a4a4
		//	addiu		a2, zero, $0002		# 000832e4:24060002	a2=$00000002
		///drawText();
		//	lui		a0, $800b		# 000832e8:3c04800b	a0=$800b0000
		//	addiu		a0, a0, $eb50		# 000832ec:2484eb50	a0="%@Co-ordinates for next"
		//	addiu		a1, zero, $0080		# 000832f0:24050080	a1=$00000080
		//	jal		$0000a4a4		# 000832f4:0c002929	^ FNC_0000a4a4
		//	addiu		a2, zero, $0003		# 000832f8:24060003	a2=$00000003
		///drawText();
		//	lui		a0, $800b		# 000832fc:3c04800b	a0=$800b0000
		//	addiu		a0, a0, $eb68		# 00083300:2484eb68	a0="%@objective selected:"
		//	addiu		a1, zero, $0080		# 00083304:24050080	a1=$00000080
		//	jal		$0000a4a4		# 00083308:0c002929	^ FNC_0000a4a4
		//	addiu		a2, zero, $0004		# 0008330c:24060004	a2=$00000004
		///drawText();
		//	lui		v0, $8003		# 00083310:3c028003	v0=$80030000
		//	beq		zero, zero, $000833d0	# 00083314:1000002e	v __000833d0
		//	lh		v0, $13d0(v0)		# 00083318:844213d0	v0=$800313d0
		//__0008331c:					# 
		//	addiu		a0, a0, $eb80		# 0008331c:2484eb80	a0=$800ad6e8
		//	addiu		a1, zero, $0050		# 00083320:24050050	a1=$00000050
		//	or		a2, zero, zero		# 00083324:00003025	
		//	jal		$0000a4a4		# 00083328:0c002929	^ FNC_0000a4a4
		//	or		a3, zero, zero		# 0008332c:00003825	
		///drawText();
		//	lui		a0, $800b		# 00083330:3c04800b	a0=$800b0000
		//	addiu		a0, a0, $eb84		# 00083334:2484eb84	a0="%@Objectif principal atteint."
		//	addiu		a1, zero, $0080		# 00083338:24050080	a1=$00000080
		//	jal		$0000a4a4		# 0008333c:0c002929	^ FNC_0000a4a4
		//	addiu		a2, zero, $0002		# 00083340:24060002	a2=$00000002
		///drawText();
		//	lui		a0, $800b		# 00083344:3c04800b	a0=$800b0000
		//	addiu		a0, a0, $eba4		# 00083348:2484eba4	a0=$800aeba4
		//	addiu		a1, zero, $0080		# 0008334c:24050080	a1=$00000080
		//	jal		$0000a4a4		# 00083350:0c002929	^ FNC_0000a4a4
		//	addiu		a2, zero, $0003		# 00083354:24060003	a2=$00000003
		///drawText();
		//	lui		a0, $800b		# 00083358:3c04800b	a0=$800b0000
		//	addiu		a0, a0, $ebc4		# 0008335c:2484ebc4	a0="%@le prochain objectif:"
		//	addiu		a1, zero, $0080		# 00083360:24050080	a1=$00000080
		//	jal		$0000a4a4		# 00083364:0c002929	^ FNC_0000a4a4
		//	addiu		a2, zero, $0004		# 00083368:24060004	a2=$00000004
		///drawText();
		//	lui		v0, $8003		# 0008336c:3c028003	v0=$80030000
		//	beq		zero, zero, $000833d0	# 00083370:10000017	v __000833d0
		//	lh		v0, $13d0(v0)		# 00083374:844213d0	v0=$800313d0
		//__00083378:					# 
		//	addiu		a0, a0, $ebdc		# 00083378:2484ebdc	a0=$800ad7a0
		//	addiu		a1, zero, $0050		# 0008337c:24050050	a1=$00000050
		//	or		a2, zero, zero		# 00083380:00003025	
		//	jal		$0000a4a4		# 00083384:0c002929	^ FNC_0000a4a4
		//	or		a3, zero, zero		# 00083388:00003825	
		///drawText();
		//	lui		a0, $800b		# 0008338c:3c04800b	a0=$800b0000
		//	addiu		a0, a0, $ebe0		# 00083390:2484ebe0	a0=$800aebe0
		//	addiu		a1, zero, $0080		# 00083394:24050080	a1=$00000080
		//	jal		$0000a4a4		# 00083398:0c002929	^ FNC_0000a4a4
		//	addiu		a2, zero, $0002		# 0008339c:24060002	a2=$00000002
		///drawText();
		//	lui		a0, $800b		# 000833a0:3c04800b	a0=$800b0000
		//	addiu		a0, a0, $ebf8		# 000833a4:2484ebf8	a0=$800aebf8
		//	addiu		a1, zero, $0080		# 000833a8:24050080	a1=$00000080
		//	jal		$0000a4a4		# 000833ac:0c002929	^ FNC_0000a4a4
		//	addiu		a2, zero, $0003		# 000833b0:24060003	a2=$00000003
		///drawText();
		//	lui		a0, $800b		# 000833b4:3c04800b	a0=$800b0000
		//	addiu		a0, a0, $ec14		# 000833b8:2484ec14	a0=$800aec14
		//	addiu		a1, zero, $0080		# 000833bc:24050080	a1=$00000080
		//	jal		$0000a4a4		# 000833c0:0c002929	^ FNC_0000a4a4
		//	addiu		a2, zero, $0004		# 000833c4:24060004	a2=$00000004
		///drawText();
		//	lui		v0, $8003		# 000833c8:3c028003	v0=$80030000
		//	lh		v0, $13d0(v0)		# 000833cc:844213d0	v0=$800313d0
		//__000833d0:					# 
		//	beq		v0, zero, $000833f8	# 000833d0:10400009	v __000833f8
		//	lui		a0, $800b		# 000833d4:3c04800b	a0=$800b0000
		//	addiu		at, zero, $0001		# 000833d8:24010001	at=$00000001
		//	beq		v0, at, $00083428	# 000833dc:10410012	v __00083428
		//	lui		a0, $800b		# 000833e0:3c04800b	a0=$800b0000
		//	addiu		at, zero, $0002		# 000833e4:24010002	at=$00000002
		//	beq		v0, at, $00083458	# 000833e8:1041001b	v __00083458
		//	lui		a0, $800b		# 000833ec:3c04800b	a0=$800b0000
		//	beq		zero, zero, $00083484	# 000833f0:10000024	v __00083484
		//	or		a0, zero, zero		# 000833f4:00002025	
		//__000833f8:					# 
		//	lui		t8, $8004		# 000833f8:3c188004	t8=$80040000
		//	lw		t8, $7f90(t8)		# 000833fc:8f187f90	t8=$80047f90
		//	lui		a3, $8009		# 00083400:3c078009	a3=$80090000
		//	addiu		a0, a0, $ec24		# 00083404:2484ec24	a0=$ffffec24
		//	sll		t9, t8, 2		# 00083408:0018c880	
		//	addu		a3, a3, t9		# 0008340c:00f93821	
		//	lw		a3, $49d8(a3)		# 00083410:8ce749d8	
		//	addiu		a1, zero, $0080		# 00083414:24050080	a1=$00000080
		//	jal		$0000a4a4		# 00083418:0c002929	^ FNC_0000a4a4
		//	addiu		a2, zero, $0006		# 0008341c:24060006	a2=$00000006
		///drawText();
		//	beq		zero, zero, $00083484	# 00083420:10000018	v __00083484
		//	or		a0, zero, zero		# 00083424:00002025	
		//__00083428:					# 
		//	lui		t2, $8004		# 00083428:3c0a8004	t2=$80040000
		//	lw		t2, $7f90(t2)		# 0008342c:8d4a7f90	t2=$80047f90
		//	lui		a3, $8009		# 00083430:3c078009	a3=$80090000
		//	addiu		a0, a0, $ec2c		# 00083434:2484ec2c	a0=$ffffec2c
		//	sll		t3, t2, 2		# 00083438:000a5880	
		//	addu		a3, a3, t3		# 0008343c:00eb3821	
		//	lw		a3, $49ec(a3)		# 00083440:8ce749ec	
		//	addiu		a1, zero, $0080		# 00083444:24050080	a1=$00000080
		//	jal		$0000a4a4		# 00083448:0c002929	^ FNC_0000a4a4
		//	addiu		a2, zero, $0006		# 0008344c:24060006	a2=$00000006
		///drawText();
		//	beq		zero, zero, $00083484	# 00083450:1000000c	v __00083484
		//	or		a0, zero, zero		# 00083454:00002025	
		//__00083458:					# 
		//	lui		t5, $8004		# 00083458:3c0d8004	t5=$80040000
		//	lw		t5, $7f90(t5)		# 0008345c:8dad7f90	t5=$80047f90
		//	lui		a3, $8009		# 00083460:3c078009	a3=$80090000
		//	addiu		a0, a0, $ec34		# 00083464:2484ec34	a0=$ffffec34
		//	sll		t4, t5, 2		# 00083468:000d6080	
		//	addu		a3, a3, t4		# 0008346c:00ec3821	
		//	lw		a3, $4a00(a3)		# 00083470:8ce74a00	
		//	addiu		a1, zero, $0080		# 00083474:24050080	a1=$00000080
		//	jal		$0000a4a4		# 00083478:0c002929	^ FNC_0000a4a4
		//	addiu		a2, zero, $0006		# 0008347c:24060006	a2=$00000006
		///drawText();
		//	or		a0, zero, zero		# 00083480:00002025	
		//__00083484:					# 
		//	jal		$00003584		# 00083484:0c000d61	^ FNC_00003584
		//	ori		a1, zero, $d000		# 00083488:3405d000	a1=$0000d000
		///N64.ButtonIsNewlyPressed();
		//	beq		v0, zero, $000834a0	# 0008348c:10400004	v __000834a0
		//	lui		t7, $0380		# 00083490:3c0f0380	t7=$03800000
		//	sw		zero, $00d8(sp)		# 00083494:afa000d8	
		//	sw		zero, $00d0(sp)		# 00083498:afa000d0	
		//	addiu		s4, s4, $0001		# 0008349c:26940001	
		//__000834a0:					# 
		//	lw		v1, $0000(s2)		# 000834a0:8e430000	
		//	ori		t7, t7, $0010		# 000834a4:35ef0010	t7=$03800010
		//	lui		t8, $8006		# 000834a8:3c188006	t8=$80060000
		//	addiu		t6, v1, $0008		# 000834ac:246e0008	
		//	sw		t6, $0000(s2)		# 000834b0:ae4e0000	
		//	sw		t7, $0000(v1)		# 000834b4:ac6f0000	
		//	lw		t8, $bb24(t8)		# 000834b8:8f18bb24	t8=$8005bb24
		//	lui		at, $8000		# 000834bc:3c018000	at=$80000000
		//	addu		t9, t8, at		# 000834c0:0301c821	t9=$00031b70
		//	jal		$0000b044		# 000834c4:0c002c11	^ FNC_0000b044
		//	sw		t9, $0004(v1)		# 000834c8:ac790004	
		///N64.fnc0000b044();
		//	beq		zero, zero, $00083544	# 000834cc:1000001d	v __00083544
		//	lw		t6, $0074(sp)		# 000834d0:8fae0074	
		//__000834d4:					# 
		//	bne		s4, s6, $000834f8	# 000834d4:16960008	v __000834f8
		//	lui		t2, $8004		# 000834d8:3c0a8004	t2=$80040000
		//	lhu		t2, $7588(t2)		# 000834dc:954a7588	t2=$80047588
		//	addiu		t5, zero, $0001		# 000834e0:240d0001	t5=$00000001
		//	andi		t3, t2, $9000		# 000834e4:314b9000	
		//	bnel		t3, zero, $000834fc	# 000834e8:55600004	v __000834fc
		//	or		a0, zero, zero		# 000834ec:00002025	
		//	beq		zero, zero, $00083540	# 000834f0:10000013	v __00083540
		//	sw		t5, $00d0(sp)		# 000834f4:afad00d0	
		//__000834f8:					# 
		//	or		a0, zero, zero		# 000834f8:00002025	
		//__000834fc:					# 
		//	jal		$00003584		# 000834fc:0c000d61	^ FNC_00003584
		//	ori		a1, zero, $9000		# 00083500:34059000	a1=$00009000
		///N64.ButtonIsNewlyPressed();
		//	beq		v0, zero, $0008353c	# 00083504:1040000d	v __0008353c
		//	slt		at, s4, s6		# 00083508:0296082a	
		//	beq		at, zero, $00083524	# 0008350c:10200005	v __00083524
		//	addiu		a0, zero, $00ff		# 00083510:240400ff	a0=$000000ff
		//	addu		t4, fp, s6		# 00083514:03d66021	
		//	subu		fp, t4, s4		# 00083518:0194f023	
		//	beq		zero, zero, $00083540	# 0008351c:10000008	v __00083540
		//	or		s4, s6, zero		# 00083520:02c0a025	
		//__00083524:					# 
		//	addiu		a1, zero, $00ff		# 00083524:240500ff	a1=$000000ff
		//	addiu		a2, zero, $00ff		# 00083528:240600ff	a2=$000000ff
		//	jal		$00005aec		# 0008352c:0c0016bb	^ FNC_00005aec
		//	addiu		a3, zero, $0020		# 00083530:24070020	a3=$00000020
		///N64.fnc00005aec();
		//	beq		zero, zero, $00083544	# 00083534:10000003	v __00083544
		//	lw		t6, $0074(sp)		# 00083538:8fae0074	
		//__0008353c:					# 
		//	addiu		s4, s4, $0001		# 0008353c:26940001	
		//__00083540:					# 
		//	lw		t6, $0074(sp)		# 00083540:8fae0074	
		//__00083544:					# 
		//	addiu		t7, s6, $0010		# 00083544:26cf0010	
		//	addiu		fp, fp, $0001		# 00083548:27de0001	
		//	slt		at, s4, t6		# 0008354c:028e082a	
		//	beq		at, zero, $00083560	# 00083550:10200003	v __00083560
		//	addiu		a0, zero, $00ff		# 00083554:240400ff	a0=$000000ff
		//	beq		zero, zero, $00083578	# 00083558:10000007	v __00083578
		//	or		v0, zero, zero		# 0008355c:00001025	
		//__00083560:					# 
		//	slt		at, t7, s4		# 00083560:01f4082a	
		//	beq		at, zero, $00083574	# 00083564:10200003	v __00083574
		//	subu		v0, s4, s6		# 00083568:02961023	
		//	beq		zero, zero, $00083578	# 0008356c:10000002	v __00083578
		//	addiu		v0, zero, $0020		# 00083570:24020020	v0=$00000020
		//__00083574:					# 
		//	addiu		v0, v0, $0010		# 00083574:24420010	v0=$00000030
		//__00083578:					# 
		//	lw		t2, $0080(sp)		# 00083578:8faa0080	
		//	sll		t8, v0, 10		# 0008357c:0002c280	t8=$0000c000
		//	ori		at, zero, $8000		# 00083580:34018000	at=$00008000
		//	addu		t9, t8, at		# 00083584:0301c821	t9=$00014000
		//	slt		at, t2, s4		# 00083588:0154082a	
		//	bne		at, zero, $00083598	# 0008358c:14200002	v __00083598
		//	sh		t9, $0114(sp)		# 00083590:a7b90114	
		//	bne		s4, zero, $000835a8	# 00083594:16800004	v __000835a8
		//__00083598:					# 
		//	addiu		a1, zero, $00ff		# 00083598:240500ff	a1=$000000ff
		//	addiu		a2, zero, $00ff		# 0008359c:240600ff	a2=$000000ff
		//	jal		$00005aec		# 000835a0:0c0016bb	^ FNC_00005aec
		//	addiu		a3, zero, $0020		# 000835a4:24070020	a3=$00000020
		///N64.fnc00005aec();
		//__000835a8:					# 
		//	jal		$00005b84		# 000835a8:0c0016e1	^ FNC_00005b84
		//	nop					# 000835ac:00000000	
		///N64.fnc00005b84();
		//	jal		$0000505c		# 000835b0:0c001417	^ FNC_0000505c
		//	nop					# 000835b4:00000000	
		///N64.fnc0000505c();
		//	jal		$00005b30		# 000835b8:0c0016cc	^ FNC_00005b30
		//	nop					# 000835bc:00000000	
		///N64.fnc00005b30();
		//	beql		v0, zero, $00082e80	# 000835c0:5040fe2f	^ __00082e80
		//	subu		s0, s6, s4		# 000835c4:02d48023	
		//	lw		ra, $0064(sp)		# 000835c8:8fbf0064	
		//	addiu		t3, zero, $0003		# 000835cc:240b0003	t3=$00000003
		//	lui		at, $8005		# 000835d0:3c018005	at=$80050000
		//	(ldc1)		s4, $0030(sp)		# 000835d4:d7b40030	
		//	(ldc1)		s6, $0038(sp)		# 000835d8:d7b60038	
		//	lw		s0, $0040(sp)		# 000835dc:8fb00040	
		//	lw		s1, $0044(sp)		# 000835e0:8fb10044	
		//	lw		s2, $0048(sp)		# 000835e4:8fb20048	
		//	lw		s3, $004c(sp)		# 000835e8:8fb3004c	
		//	lw		s4, $0050(sp)		# 000835ec:8fb40050	
		//	lw		s5, $0054(sp)		# 000835f0:8fb50054	
		//	lw		s6, $0058(sp)		# 000835f4:8fb60058	
		//	lw		s7, $005c(sp)		# 000835f8:8fb7005c	
		//	lw		fp, $0060(sp)		# 000835fc:8fbe0060	
		//	sb		t3, $2aca(at)		# 00083600:a02b2aca	
		//	addiu		sp, sp, $0140		# 00083604:27bd0140	
		//	jr		ra			# 00083608:03e00008	
		//	addiu		v0, zero, $0001		# 0008360c:24020001	v0=$00000001
		return 1;
	}

	// RAM MAINMENU
	void fnc00083610() {
	}

	// RAM MAINMENU
	void fnc000836a4() {
	}

	// RAM MAINMENU
	void fnc00083714() {
	}

	// RAM MAINMENU
	void fnc0008373c() {
	}

	// RAM MAINMENU
	void fnc00083764() {
		//fnc0008373c();
		//N64.fnc0001d940();
	}

	// RAM MAINMENU
	void fnc000837b4() {
		//fnc00083764();
		//fnc00083714();
	}

	// RAM MAINMENU
	void fnc00083820() {
	}

	// RAM MAINMENU
	void fnc00083850() {
	}

	// RAM MAINMENU
	void fnc00083884() {
	}

	// RAM MAINMENU
	void fnc000838b8() {
	}

	// RAM MAINMENU
	void fnc000838e0() {
		//fnc00028048();
		//fnc00083610();
		//fnc00083610();
		//fnc000836a4();
		//fnc000837b4();
	}

	// RAM MAINMENU
	void fnc000839f0() {
	}

	// RAM MAINMENU
	void fnc00083a58() {
	}

	// RAM MAINMENU
	void fnc00083a80() {
	}

	// RAM MAINMENU
	void fnc00083b14() {
	}

	// RAM MAINMENU
	void fnc00083b7c() {
	}

	// RAM MAINMENU
	void fnc00083ba4() {
	}

	// RAM MAINMENU
	void fnc00083c98() {
		//fnc00083b7c();
		//fnc00083b7c();
		//fnc00083dbc();
		//fnc00083b7c();
		//fnc00083dbc();
		//fnc00083dbc();
	}

	// RAM MAINMENU
	void fnc00083d50() {
		//fnc00083b7c();
		//fnc00083b7c();
		//fnc00083dbc();
	}

	// RAM MAINMENU
	void fnc00083dbc() {
	}

	// RAM MAINMENU
	void fnc00083e48() {
	}

	// RAM MAINMENU
	void fnc00083f8c() {
		//fnc00083dbc();
		//fnc00083dbc();
		//fnc00083dbc();
	}

	// RAM MAINMENU
	void fnc0008404c() {
		//fnc00083dbc();
		//fnc00083dbc();
	}

	// RAM MAINMENU
	void fnc000840c4() {
		//fnc00083dbc();
	}

	// RAM MAINMENU
	void fnc0008412c() {
		//fnc00083b7c();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
	}

	// RAM MAINMENU
	void fnc00084324() {
		//fnc00083a58();
		//fnc00083b7c();
		//fnc00083b14();
		//N64.fnc000038e0();
		//fnc0008412c();
	}

	// RAM MAINMENU
	void fnc00084508() {
		//fnc00083dbc();
		//fnc0008412c();
	}

	// RAM MAINMENU
	void fnc0008472c() {
		//fnc000840c4();
		//fnc00083b14();
	}

	// RAM MAINMENU
	void fnc000847e4() {
		//N64.fnc0001d940();
		//fnc000838b8();
		//fnc000838b8();
		//fnc00083884();
		//fnc00083884();
		//fnc00083884();
		//fnc00083850();
		//fnc00083850();
		//fnc00083850();
		//fnc00083850();
		//fnc00083884();
		//fnc000853a8();
	}

	// RAM MAINMENU
	void fnc000853a8() {
	}

	// RAM MAINMENU
	void fnc000857d4() {
		//fnc00083b7c();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//fnc000837b4();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
	}

	// RAM MAINMENU
	void fnc00085cb8() {
	}

	// RAM MAINMENU
	void fnc00085cd8() {
	}

	// RAM MAINMENU
	void fnc00085cec() {
		//fnc00083a58();
		//fnc00083b7c();
		//fnc00083b14();
		//fnc000837b4();
		//fnc00085cb8();
		//fnc000857d4();
	}

	// RAM MAINMENU
	void fnc00085ea8() {
		//fnc00083a58();
		//fnc00083b7c();
		//fnc00083b14();
		//fnc00085cb8();
		//fnc000857d4();
	}

	// RAM MAINMENU
	void fnc00085ff0() {
		//fnc000840c4();
		//fnc00083b14();
		//fnc000840c4();
		//fnc00083b14();
		//fnc00083dbc();
		//N64.fnc0001e7b0();
		//N64.fnc0001e5f0();
		//N64.fnc0001e7b0();
		//N64.fnc0001e5f0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
	}

	// RAM MAINMENU
	void fnc00086528() {
	}

	// RAM MAINMENU
	void fnc00086c58() {
		//fnc00083c98();
		//fnc0008edb4();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
	}

	// RAM MAINMENU
	void fnc000870ac() {
		//fnc00083f8c();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
	}

	// RAM MAINMENU
	void fnc000878a4() {
		//N64.fnc0001d940();
		//N64.fnc00003824();
		//N64.fnc00003824();
		//N64.fnc000039d0();
		//N64.fnc000039d0();
		//N64.fnc000039d0();
		//N64.fnc000039d0();
	}

	// RAM MAINMENU
	void fnc000885a0() {
		//fnc00083c98();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//fnc000837b4();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//fnc000891f8();
		//N64.fnc000038e0();
		//fnc000891f8();
	}

	// RAM MAINMENU
	void fnc00088a38() {
	}

	// RAM MAINMENU
	void fnc00088acc() {
	}

	// RAM MAINMENU
	void fnc00088b54() {
	}

	// RAM MAINMENU
	void fnc00088bdc() {
		//fnc00089388();
		//fnc0008eb20();
		//fnc00083f8c();
	}

	// RAM MAINMENU
	void fnc00088e18() {
		//N64.fnc000039d0();
	}

	// RAM MAINMENU
	void fnc000891f8() {
		//fnc00083a58();
		//fnc00083b7c();
		//fnc00083b14();
	}

	// RAM MAINMENU
	void fnc00089388() {
		//fnc00083b7c();
		//N64.fnc000038e0();
	}

	// RAM MAINMENU
	void fnc000894a0() {
		//fnc00083dbc();
		//fnc00083dbc();
		//fnc00083b14();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
	}

	// RAM MAINMENU
	void fnc00089764() {
		//fnc0008d14c();
	}

	// RAM MAINMENU
	void fnc000899f0() {
		//fnc00083b7c();
	}

	// RAM MAINMENU
	void fnc00089ab4() {
	}

	// RAM MAINMENU
	void fnc00089b38() {
	}

	// RAM MAINMENU
	void fnc0008a094() {
		//fnc00083b7c();
		//N64.fnc000038e0();
		//fnc000837b4();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//fnc000837b4();
	}

	// RAM MAINMENU
	void fnc0008a460() {
		//fnc00083a58();
		//fnc00083d50();
		//fnc00083b14();
	}

	// RAM MAINMENU
	void fnc0008a5f8() {
		//fnc000899f0();
		//fnc000840c4();
		//fnc00083b14();
		//fnc00083dbc();
		//fnc000840c4();
		//fnc00083b14();
		//fnc00083dbc();
		//N64.fnc000038e0();
		//fnc0008a094();
		//N64.fnc000038e0();
		//fnc0008a094();
	}

	// RAM MAINMENU
	void fnc0008a928() {
	}

	// RAM MAINMENU
	void fnc0008aec8() {
		//fnc00083b7c();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
	}

	// RAM MAINMENU
	void fnc0008b08c() {
		//fnc00083a58();
		//fnc00083b7c();
		//fnc00083b14();
	}

	// RAM MAINMENU
	void fnc0008b148() {
	}

	// RAM MAINMENU
	void fnc0008b19c() {
		//fnc000840c4();
		//fnc00083b14();
		//fnc000840c4();
		//fnc00083b14();
	}

	// RAM MAINMENU
	void fnc0008b264() {
		//fnc000840c4();
		//fnc00083b14();
		//fnc00083dbc();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//fnc0008aec8();
	}

	// RAM MAINMENU
	void fnc0008b534() {
		//fnc0008d14c();
	}

	// RAM MAINMENU
	void fnc0008b7bc() {
		//fnc00083a58();
		//N64.fnc0001d940();
		//fnc00083b7c();
		//fnc000840c4();
		//fnc00083b14();
	}

	// RAM MAINMENU
	void fnc0008bad8() {
		//fnc000840c4();
		//fnc00083b14();
	}

	// RAM MAINMENU
	void fnc0008bb38() {
		//fnc000840c4();
		//fnc00083b14();
	}

	// RAM MAINMENU
	void fnc0008bc00() {
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
	}

	// RAM MAINMENU
	void fnc0008c73c() {
		//fnc00083b7c();
	}

	// RAM MAINMENU
	void fnc0008c7e4() {
		//fnc00083dbc();
	}

	// RAM MAINMENU
	void fnc0008c8e0() {
	}

	// RAM MAINMENU
	void fnc0008cc3c() {
		//fnc00084508();
		//fnc0008472c();
		//fnc00085ff0();
		//fnc000870ac();
		//fnc00088bdc();
		//fnc000894a0();
		//fnc00089ab4();
		//fnc0008a5f8();
		//fnc0008b264();
		//fnc0008bb38();
		//fnc0008c7e4();
	}

	// RAM MAINMENU
	void fnc0008cdc8() {
	}

	// RAM MAINMENU
	void fnc0008d14c() {
	}

	// RAM MAINMENU
	void fnc0008d510() {
	}

	// RAM MAINMENU
	void fnc0008d98c() {
		//fnc00088e18();
		//fnc0008e158();
		//fnc0008fa60();
		//fnc000847e4();
		//fnc00089764();
		//fnc00089b38();
		//fnc0008a928();
		//fnc0008b534();
		//fnc0008bc00();
		//fnc000878a4();
	}

	// RAM MAINMENU
	void fnc0008dbec() {
	}

	// RAM MAINMENU
	void fnc0008dc34() {
		//N64.fnc000038e0();
	}

	// RAM MAINMENU
	void fnc0008ddf0() {
	}

	// RAM MAINMENU
	void fnc0008de44() {
	}

	// RAM MAINMENU
	void fnc0008de7c() {
	}

	// RAM MAINMENU
	void fnc0008deb8() {
	}

	// RAM MAINMENU
	void fnc0008df08() {
	}

	// RAM MAINMENU
	void fnc0008df40() {
	}

	// RAM MAINMENU
	void fnc0008dfa0() {
		//fnc0008dc34();
		//fnc0008df40();
	}

	// RAM MAINMENU
	void fnc0008e158() {
		//fnc0008d14c();
		//fnc0008cdc8();
		//fnc0008d510();
	}

	// RAM MAINMENU
	void fnc0008e9dc() {
		//fnc0008dc34();
	}

	// RAM MAINMENU
	void fnc0008eab0() {
		//fnc0008dc34();
		//fnc0008de7c();
		//fnc0008deb8();
	}

	// RAM MAINMENU
	void fnc0008eb20() {
		//N64.fnc000038e0();
		//fnc00086c58();
		//fnc0008eab0();
		//fnc0008dc34();
		//fnc0008de44();
		//fnc0008dc34();
		//fnc0008de44();
		//fnc0008df08();
		//fnc0008e9dc();
		//fnc0008e9dc();
	}

	// RAM MAINMENU
	void fnc0008ed44() {
		//fnc0008eb20();
	}

	// RAM MAINMENU
	void fnc0008edb4() {
		//N64.fnc000038e0();
	}

	// RAM MAINMENU
	void fnc0008eec4() {
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//fnc000837b4();
		//fnc000838b8();
		//fnc00085cec();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//N64.fnc000038e0();
		//fnc000837b4();
		//fnc000838b8();
		//N64.fnc000038e0();
		//fnc0008dc34();
	}

	// RAM MAINMENU
	void fnc0008f1e0() {
		//N64.fnc000038e0();
		//N64.fnc0001e7b0();
		//N64.fnc0001e5f0();
		//N64.fnc0001e7b0();
		//N64.fnc0001e5f0();
		//N64.fnc0001e7b0();
		//N64.fnc0001e5f0();
		//N64.fnc0001e7b0();
		//N64.fnc0001e5f0();
		//fnc000837b4();
		//fnc000838b8();
		//fnc00085cec();
	}

	// RAM MAINMENU
	void fnc0008f534() {
	}

	// RAM MAINMENU
	void fnc0008f574() {
		//fnc0008dbec();
		//fnc0008f534();
		//fnc0008f534();
		//fnc0008f534();
		//fnc0008f534();
	}

	// RAM MAINMENU
	void fnc0008f704() {
	}

	// RAM MAINMENU
	void fnc0008fa60() {
		//fnc0008f704();
		//fnc0008f704();
	}

	// RAM MAINMENU
	void fnc0008faac() {
		//N64.fnc000033d4();
		//N64.fnc000033d4();
		//N64.fnc000033d4();
		//N64.fnc000033d4();
		//N64.fnc000033d4();
		//N64.fnc000033d4();
	}

	// RAM MAINMENU
	void fnc0008fbd4() {
		//fnc0008d14c();
	}

	// RAM MAINMENU
	void fnc0008fd9c() {
		//fnc0008d98c();
	}

	// RAM MAINMENU
	void fnc0008fdf0() {
		//fnc0008cc3c();
		//fnc0008dfa0();
		//fnc0008eec4();
		//fnc0008f1e0();
		//fnc0008faac();
	}

	// RAM MAINMENU
	void fnc0008fe98() {
		//fnc0008b08c();
		//fnc0008b19c();
		//fnc00085cec();
		//fnc0008a460();
		//fnc0008a460();
		//fnc000840c4();
		//fnc0008c73c();
		//fnc0008c73c();
		//fnc0008eb20();
		//fnc0008eb20();
		//fnc0008eb20();
		//fnc0008eb20();
		//fnc0008dc34();
		//fnc0008ddf0();
		//fnc00084324();
		//fnc0008dc34();
		//fnc0008dc34();
		//fnc00085cec();
		//fnc0008dc34();
		//fnc0008b7bc();
		//fnc0008a460();
		//fnc0008dc34();
		//fnc0008dc34();
		//fnc0008dc34();
		//fnc0008dbec();
		//fnc00084324();
		//fnc00084324();
		//fnc00085cec();
	}

	// RAM MAINMENU
	void fnc00090648() {
		//N64.fnc00011e14();
		//N64.fnc00004cc8();
		//N64.fnc00004d38();
		//N64.guPerspective();
		//N64.guLookAt();
		//fnc00086528();
		//fnc0008c8e0();
	}
}
