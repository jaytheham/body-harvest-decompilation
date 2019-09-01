module gameplayOutside;

import n64, ram, greece, gameState;

// U RAM GREECE 70270-13b8e8
class GameplayOutside: IGameState
{
public:
	// RAM GREECE
	static int fnc00070270(int a0)
	{
		if (a0 == 7)
		{
			doGameplayLoop();
		}
		else if (a0 == 8)
		{
			doGameplayLoop();
			guess_enablesInput = 1;
		}
		return 0;
	}

	// RAM GREECE
	static void UpdateGameplayTimer(short a0)
	{
		int ticks = N64.osGetCount();
		int t0;
		if (a0 != 0)
		{
			if (a0 == 1)
			{
				t0 = ticks;
			}
			else if (a0 == 2)
			{
				t0 = ticks;
				millisecondsElapsedInLevel = 0;
			}
			else
			{
				t0 = x80149444;
			}
		}
		else
		{
			t0 = x80149444;
		}
		if (ticks < t0)
		{
			t0++;
		}
		x80149444 = t0;
		auto result = N64.__ll_mul(0, ticks - t0, 0, 0xf4240);

		if (gameplayMode == 1)
		{
			result = N64.__ull_div(result[0], result[1], x80035610, x80035614);
			int t4 = result[1] / 1000;
			millisecondsElapsedInLevel = millisecondsElapsedInLevel + t4;
		}
		x80149444 = ticks;
	}

	// RAM GREECE
	static int fnc000703b0(int a0, int a1)
	{
		int t7 = (a0 << 16) >>> 16;
		int t9 = (a1 << 16) >>> 16;
		bool result = t7 >= x80149434 - 0x800;
		if (result)
		{
			result = t9 >= x80149436 - 0x900;
			if (result)
			{
				result = x80149434 + 0x700 >= t7;
				if (result)
				{
					result = x80149436 + 0x700 >= t9;
				}
			}
		}
		return result;
	}

	// RAM GREECE
	static void fnc00070420(ubyte* a0)
	{
		//	jal		$0007679c		# 00070428:0c01d9e7	v FNC_0007679c
		//	lbu		a0, $0009(a0)		# 0007042c:90840009	
		fnc0007679c(*(a0 + 9));
		//	jr		ra			# 00070438:03e00008	
		return;
	}

	// RAM GREECE
	/// Inits data after save file started
	static void fnc00070440()
	{
		N64.fnc0001599c();
		N64.fnc0001cc6c("WarpPointNumber = %d\n", warpPointNumber);

		if (x80047f98 != 0 && currentLevel != 5)
		{
			x80047f94 = warpPointNumber - 1;
		}
		else
		{
			x80047f94 = 0;
		}

		if (warpPointNumber == 5)
		{
			x80047f94 = x8003E000[currentLevel][warpPointNumber].unk_0x4;
			weaponSlot1 = 2;
			weaponSlot2 = 0;
			weaponSlot3 = 0;
			weaponSlot4 = 0;
			weaponSlot5 = 0;
			weaponSlot6 = 0;
			weaponSlot7 = 0;
		}

		short v1 = x8003E000[currentLevel][warpPointNumber].unk_0x0;
		short a1 = x8003E000[currentLevel][warpPointNumber].unk_0x2;
		short t5 = x8003E000[currentLevel][warpPointNumber].unk_0x6;
		
		x801493a0 = -111;
		x80149398 = 111;
		x801493a4 = -111;
		x8014939c = 111;

		int s0 = (v1 << 24) >>> 16;
		x80052b2c = &x80052ae8;
		x80259490.unk_0x0 = v1;
		x80259490.unk_0x2 = a1;
		x80259490.unk_0x8 = t5;
		int s1 = (a1 << 24) >>> 16;
		x80052ad0 = 1;
		x80052a8c = 0;
		x80052ae8.unk_0x30 = 0;
		x8004816a = 0;
		if (x80047f98 > 0)
		{
			x80052a8c = LevelStats[currentLevel - 1].secondsElapsed;
			x80052ae8.unk_0x30 = LevelStats[currentLevel - 1].score;
			x8004816a = x80052ae8.unk_0x30 = LevelStats[currentLevel - 1].unk_0x6;
		}
	
		if ((playerModifier & 0x80) != 0)
		{
			N64.fnc0001cc6c("Easy mode activated\n");
			playerModifier = playerModifier | 0x40;
		}
		else
		{
			N64.fnc0001cc6c("Easy mode disactivated\n");
			playerModifier = playerModifier & 0xbf;
		}

		if ((playerModifier & 0x40) != 0)
		{
			maxHumanDeathsAllowed = 40;
			numHumansEatenToSpawnMutant = 8;
		}
		else
		{
			maxHumanDeathsAllowed = 25;
			numHumansEatenToSpawnMutant = 6;
		}
		
		x80052ad8 = 0;
		x801493d4 = 0;
		x80052a94 = &x8020eb30;
		x80152c90 = 0;
		x801493dc = 0;
		x801493cc = 0;
		x801493d8 = 1;
		x8004d148 = 1;
		x8004dca8 = 0;
		x801493e0 = 0;
		x801493e2 = 0;
		x801493f0 = x801411a0;
		x801493ec = x801493F0;
		x801493e8 = x801493EC;
		x801493fc = x801411a0;
		x801493f8 = x801493FC;
		x801493f4 = x801493F8;
		x80149400 = 0;
		x80149404 = 0x2d;
		x80149380 = 0;
		x80149408 = 0;
		x8004816e = 0;
		x80048170 = 0;
		x80031414 = 0;
		x8013fcd0 = 0;
		x80048176 = 0;
		x80052acc = 0;
		x80052550 = 0;
		x80031410 = 0;
		fnc0012d824();
		N64.fnc00017ae0();
		N64.fnc000048b8();
		N64.fnc000048e8();
		N64.fnc00004918();
		x80047b70 = 0;
		x80047f80 = 0;
		fnc000a17ec();
		fnc000b41c8(((s0 >> 8) + 0x77) & 0xff, ((s1 >> 8) + 0x77) & 0xff, &x801fea30, 0);
		fnc00076fcc(s0, s1);
		fnc0007aa0c();
		guess_initBuildingsDoors();
		fnc000ea280();
		fnc000f3670();
		guess_initAnimations();
		fnc00124ba8();
		guess_initInventory();
		guess_initSpecialEffects();
		fnc0009bac0();
		N64.fnc0001a500(0);
		guess_initBeacons();
		initCheating();
		guess_initAlienWaves();
		if (warpPointNumber == 5)
		{
			if (currentLevel != 5)
			{
				guess_initTriggers(0x32);
			}
		}
		N64.fnc00007548();
		N64.fnc00017aac();
		fnc000bd2f4();
		N64.fnc00004aec();

		/// There's a do while here but due to hard coded values it will only ever run once
		/// Perhaps there was originally an array of these
		x80052ae8.unk_0x0 = cast(float)s0;
		x80052ae8.unk_0x4 = 4000f;
		x80052ae8.unk_0x8 = cast(float)s1;
		x80052ae8.unk_0xc = cast(float)s0;
		x80052ae8.unk_0x10 = 1000f;
		x80052ae8.unk_0x14 = cast(float)s1;
		x80052ae8.unk_0x18 = s0;
		x80052ae8.unk_0x1a = s1;
		x80052ae8.unk_0x3c = s0;
		x80052ae8.unk_0x3e = s1;
		x80052ae8.unk_0x1c = 0x1770;
		x80052ae8.unk_0x1e = 0x19;
		x80052ae8.unk_0x34 = 0;
		x80052ae8.unk_0x36 = 0;
		x80052ae8.unk_0x38 = &x8004dcd0;
		
		fnc000fca5c();
		guess_initMissions();
		fnc00075e50();
		fnc000bdda0();
		object_x80052b34.unk_0x6 = t5;
		object_x80052b2c.unk_0x1c = 0x12c;
		object_x80052b2c.unk_0x1e = 0x71c;
		//	lw		t7, $0000(v0)		# 000709e8:8c4f0000	t7=$80052b2c
		//	jal		$0001d950		# 000709ec:0c007654	^ FNC_0001d950
		//	lhu		a0, $001e(t7)		# 000709f0:95e4001e	a0=$80052b06
		N64.coss(object_x80052b2c.unk_0x1e);
		//	sll		s0, v0, 16		# 000709f4:00028400	s0=$2b2c0000
		//	sra		t8, s0, 16		# 000709f8:0010c403	
		//	or		s0, t8, zero		# 000709fc:03008025	s0=$00002b2c
		//	jal		$0001d950		# 00070a00:0c007654	^ FNC_0001d950
		//	addiu		a0, zero, $0fa0		# 00070a04:24040fa0	a0=$00000fa0
		N64.coss(0xfa0);
		//	mtc1		v0, $f6			# 00070a08:44823000	
		//	lui		at, $40e0		# 00070a0c:3c0140e0	at=$40e00000
		//	mtc1		at, $f1			# 00070a10:44810800	
		//	cvt.s.w		$f8, $f6		# 00070a14:46803220	
		//	mtc1		zero, $f0		# 00070a18:44800000	
		//	lui		a1, $8005		# 00070a1c:3c058005	a1=$80050000
		//	addiu		a1, a1, $2b2c		# 00070a20:24a52b2c	a1=$80052b2c
		//	lw		v1, $0000(a1)		# 00070a24:8ca30000	v1=$80052b2c
		//	(cop1_s)	$020042a1		# 00070a28:460042a1	
		//	lh		t9, $001c(v1)		# 00070a2c:8479001c	t9=$80052b04
		//	(cop1)		$02205403		# 00070a30:46205403	
		//	mtc1		s0, $f8			# 00070a34:44904000	
		//	mtc1		t9, $f18		# 00070a38:44999000	
		//	cvt.s.w		$f10, $f8		# 00070a3c:468042a0	
		//	lwc1		$f8, $000c(v1)		# 00070a40:c468000c	
		//	(cop1_w)	$02809121		# 00070a44:46809121	
		//	(cop1_s)	$020054a1		# 00070a48:460054a1	
		//	(cop1_s)	$020042a1		# 00070a4c:460042a1	
		//	(cop1)		$02248182		# 00070a50:46248182	
		//	(cop1)		$02209403		# 00070a54:46209403	
		//	(cop1)		$02303102		# 00070a58:46303102	
		//	(cop1)		$022a2480		# 00070a5c:462a2480	
		//	(cop1)		$022091a0		# 00070a60:462091a0	
		//	swc1		$f6, $0000(v1)		# 00070a64:e4660000	
		//	lw		t6, $0000(a1)		# 00070a68:8cae0000	
		//	jal		$0001d980		# 00070a6c:0c007660	^ FNC_0001d980
		//	lhu		a0, $001e(t6)		# 00070a70:95c4001e	
		N64.sins(object_x80052b2c.unk_0x1e);
		//	mtc1		v0, $f16		# 00070a74:44828000	
		//	lui		at, $40e0		# 00070a78:3c0140e0	at=$40e00000
		//	mtc1		at, $f1			# 00070a7c:44810800	
		//	cvt.s.w		$f8, $f16		# 00070a80:46808220	
		//	mtc1		zero, $f0		# 00070a84:44800000	
		//	lui		v1, $8005		# 00070a88:3c038005	v1=$80050000
		//	lw		v1, $2b2c(v1)		# 00070a8c:8c632b2c	v1=$80052b2c
		//	lw		t8, $0000(s1)		# 00070a90:8e380000	
		//	lui		t6, $8005		# 00070a94:3c0e8005	t6=$80050000
		//	(cop1_s)	$02004121		# 00070a98:46004121	
		//	lh		t7, $001c(v1)		# 00070a9c:846f001c	t7=$80052b04
		//	(cop1)		$02202283		# 00070aa0:46202283	
		//	lh		t9, $0002(t8)		# 00070aa4:87190002	
		//	mtc1		t7, $f18		# 00070aa8:448f9000	
		//	mtc1		t9, $f8			# 00070aac:44994000	
		//	(cop1_w)	$028091a1		# 00070ab0:468091a1	
		//	(cop1_w)	$02804121		# 00070ab4:46804121	
		//	(cop1)		$02265402		# 00070ab8:46265402	
		//	(cop1)		$02248480		# 00070abc:46248480	
		//	(cop1)		$022092a0		# 00070ac0:462092a0	
		//	swc1		$f10, $0004(v1)		# 00070ac4:e46a0004	
		//	lw		t6, $2b2c(t6)		# 00070ac8:8dce2b2c	
		//	jal		$0001d950		# 00070acc:0c007654	^ FNC_0001d950
		//	lhu		a0, $001e(t6)		# 00070ad0:95c4001e	
		N64.coss(object_x80052b2c.unk_0x1e);
		//	sll		s0, v0, 16		# 00070ad4:00028400	
		//	sra		t7, s0, 16		# 00070ad8:00107c03	
		//	or		s0, t7, zero		# 00070adc:01e08025	
		//	jal		$0001d980		# 00070ae0:0c007660	^ FNC_0001d980
		//	addiu		a0, zero, $0fa0		# 00070ae4:24040fa0	a0=$00000fa0
		N64.sins(0xfa0);
		//	mtc1		v0, $f6			# 00070ae8:44823000	
		//	lui		at, $40e0		# 00070aec:3c0140e0	at=$40e00000
		//	mtc1		at, $f1			# 00070af0:44810800	
		//	cvt.s.w		$f8, $f6		# 00070af4:46803220	
		//	mtc1		zero, $f0		# 00070af8:44800000	
		//	lui		v1, $8005		# 00070afc:3c038005	v1=$80050000
		//	lw		v1, $2b2c(v1)		# 00070b00:8c632b2c	v1=$80052b2c
		//	lui		at, $8015		# 00070b04:3c018015	at=$80150000
		//	(cop1_s)	$02004421		# 00070b08:46004421	
		//	lh		t8, $001c(v1)		# 00070b0c:8478001c	t8=$80052b04
		//	(cop1)		$02208103		# 00070b10:46208103	
		//	mtc1		s0, $f8			# 00070b14:44904000	
		//	mtc1		t8, $f18		# 00070b18:44989000	
		//	cvt.s.w		$f16, $f8		# 00070b1c:46804420	
		//	lwc1		$f8, $0014(v1)		# 00070b20:c4680014	
		//	(cop1_w)	$028092a1		# 00070b24:468092a1	
		//	(cop1_s)	$020084a1		# 00070b28:460084a1	
		//	(cop1_s)	$02004421		# 00070b2c:46004421	
		//	(cop1)		$022a2182		# 00070b30:462a2182	
		//	(cop1)		$02209103		# 00070b34:46209103	
		//	(cop1)		$02243282		# 00070b38:46243282	
		//	(cop1)		$02305480		# 00070b3c:46305480	
		//	(cop1)		$022091a0		# 00070b40:462091a0	
		//	swc1		$f6, $0008(v1)		# 00070b44:e4660008	
		//	sh		zero, $7590(at)		# 00070b48:a4207590	
		x80157590 = 0;
		x8004dc60 = 0;
		fnc000b0c80();
		fnc000fac90();
		if (showDemoText == 1)
		{
			x800313c8 = 2;
			level.Start(0x13, 0);
		}
		N64.fnc00013324();
		if (x80047f98 != 0)
		{
			if (currentLevel != 5)
			{
				fnc000a5ee8(cast(ubyte)x80047f94);
			}
			else
			{
				level.Start(x80047f94, 0);
				x801493e0 = 0;
			}
		}
		x801493e2 = 1;
	}

	// RAM GREECE
	static void fnc00070bfc() {
		N64.fnc00011e14();
		N64.fnc00004cc8();
		N64.fnc00004d38();
	}

	// RAM 00070cc0
	static void guess_drawSky() {
		N64.fnc00004f64();
		N64.fnc000069fc();
	}

	// RAM GREECE
	/// Does stuff with object fog colour values
	static void fnc00070fb8()
	{
		//FNC_00070fb8:					# 
		//	lui		a3, $8006		# 00070fb8:3c078006	a3=$80060000
		//	addiu		a3, a3, $bb2c		# 00070fbc:24e7bb2c	a3=$8005bb2c
		//	lw		v1, $0000(a3)		# 00070fc0:8ce30000	v1=$8005bb2c
		//	lui		t7, $f800		# 00070fc4:3c0ff800	t7=$f8000000
		//	lui		t8, $8004		# 00070fc8:3c188004	t8=$80040000
		//	addiu		t6, v1, $0008		# 00070fcc:246e0008	t6=$801d3a08
		//	sw		t6, $0000(a3)		# 00070fd0:acee0000	[8005bb2c]
		//	sw		t7, $0000(v1)		# 00070fd4:ac6f0000	[801d3a00]
		//	lbu		t9, $7743(t8)		# 00070fd8:93197743	t9=$80047743
		//	lui		t1, $8004		# 00070fdc:3c098004	t1=$80040000
		//	lbu		t2, $7744(t1)		# 00070fe0:912a7744	t2=$80047744
		//	lui		t5, $8004		# 00070fe4:3c0d8004	t5=$80040000
		//	sll		t0, t9, 24		# 00070fe8:00194600	
		//	lbu		t6, $7745(t5)		# 00070fec:91ae7745	t6=$80047745
		//	lui		t9, $8003		# 00070ff0:3c198003	t9=$80030000
		//	lbu		t9, $13f4(t9)		# 00070ff4:933913f4	t9=$800313f4
		//	sll		t3, t2, 16		# 00070ff8:000a5c00	
		//	or		t4, t0, t3		# 00070ffc:010b6025	
		//	sll		t7, t6, 8		# 00071000:000e7a00	
		//	or		t8, t4, t7		# 00071004:018fc025	
		//	or		t1, t9, zero		# 00071008:03204825	
		//	or		t2, t8, t1		# 0007100c:03095025	
		//	sw		t2, $0004(v1)		# 00071010:ac6a0004	[801d3a04]
		//	or		v0, v1, zero		# 00071014:00601025	v0=$801d3a00
		//	lw		v1, $0000(a3)		# 00071018:8ce30000	v1=$8005bb2c
		//	lui		t3, $bc00		# 0007101c:3c0bbc00	t3=$bc000000
		//	ori		t3, t3, $0008		# 00071020:356b0008	t3=$bc000008
		//	addiu		t0, v1, $0008		# 00071024:24680008	t0=$801d3a08
		//	sw		t0, $0000(a3)		# 00071028:ace80000	[8005bb2c]
		//	sw		t3, $0000(v1)		# 0007102c:ac6b0000	[801d3a00]
		//	lui		t5, $8003		# 00071030:3c0d8003	t5=$80030000
		//	lui		a1, $8003		# 00071034:3c058003	a1=$80030000
		//	lh		a1, $13f8(a1)		# 00071038:84a513f8	a1=$800313f8
		//	lh		t5, $13fc(t5)		# 0007103c:85ad13fc	t5=$800313fc
		//	lui		t6, $0001		# 00071040:3c0e0001	t6=$00010000
		//	ori		t6, t6, $f400		# 00071044:35cef400	t6=$0001f400
		//	subu		a2, t5, a1		# 00071048:01a53023	
		//	div		t6, a2			# 0007104c:01c6001a	
		//	subu		t8, zero, a1		# 00071050:0005c023	
		//	sll		t1, t8, 8		# 00071054:00184a00	
		//	addu		t2, t1, t6		# 00071058:012e5021	
		//	mflo		t4			# 0007105c:00006012	
		//	andi		t7, t4, $ffff		# 00071060:318fffff	
		//	sll		t9, t7, 16		# 00071064:000fcc00	
		//	div		t2, a2			# 00071068:0146001a	
		//	mflo		t0			# 0007106c:00004012	
		//	andi		t3, t0, $ffff		# 00071070:310bffff	
		//	or		t5, t9, t3		# 00071074:032b6825	
		//	or		a0, v1, zero		# 00071078:00602025	
		//	bne		a2, zero, $00071088	# 0007107c:14c00002	v __00071088
		//	nop					# 00071080:00000000	
		//	break		(01c00)			# 00071084:0007000d	
		//__00071088:					# 
		//	addiu		at, zero, $ffff		# 00071088:2401ffff	at=$ffffffff
		//	bne		a2, at, $000710a0	# 0007108c:14c10004	v __000710a0
		//	lui		at, $8000		# 00071090:3c018000	at=$80000000
		//	bne		t6, at, $000710a0	# 00071094:15c10002	v __000710a0
		//	nop					# 00071098:00000000	
		//	break		(01800)			# 0007109c:0006000d	
		//__000710a0:					# 
		//	addu		at, t6, zero		# 000710a0:01c00821	at=$0001f400
		//	bne		a2, zero, $000710b0	# 000710a4:14c00002	v __000710b0
		//	nop					# 000710a8:00000000	
		//	break		(01c00)			# 000710ac:0007000d	
		//__000710b0:					# 
		//	addiu		at, zero, $ffff		# 000710b0:2401ffff	at=$ffffffff
		//	bne		a2, at, $000710c8	# 000710b4:14c10004	v __000710c8
		//	lui		at, $8000		# 000710b8:3c018000	at=$80000000
		//	bne		t2, at, $000710c8	# 000710bc:15410002	v __000710c8
		//	nop					# 000710c0:00000000	
		//	break		(01800)			# 000710c4:0006000d	
		//__000710c8:					# 
		//	sw		t5, $0004(a0)		# 000710c8:ac8d0004	
		//	jr		ra			# 000710cc:03e00008	
		//	nop					# 000710d0:00000000	
	}

	// RAM GREECE
	/// If called from drawComplexObjects causes alien bodies to be red (as if shot)
	static void fnc000710d4() {
	}

	// RAM GREECE
	static void fnc00071148() {
	}

	// RAM GREECE
	static void fnc00071178() {
		fnc000710d4();
	}

	// RAM 00071228
	static void render() {
		fnc000e8890();
		fnc00070fb8();
		drawTileBuffer();
		N64.fnc0001cc6c("DrawTileBuffer OK\n");
		fnc000b19f8();
		N64.fnc0001cc6c("ClearDynamicLightBuffer OK\n");
		fnc000e94b8();
		N64.fnc0001cc6c("SetupForShadows OK\n");
		drawComplexObjectShadows();
		N64.fnc0001cc6c("DrawComplexObjectShadows OK\n");
		fnc000ea12c();
		N64.fnc0001cc6c("DisplayVehicleShadows OK\n");
		fnc000f97fc();
		N64.fnc0001cc6c("DrawLegsShadows OK\n");
		fnc000dd5e0();
		N64.fnc0001cc6c("DrawNonZBufferedEffects OK\n");
		fnc000ea088();
		N64.fnc0001cc6c("StopDrawingShadows OK\n");
		N64.fnc0001cc6c("SHADOWS NOT DRAWN - overflow");
		drawLegs();
		N64.fnc0001cc6c();
		displayBullets();
		N64.fnc0001cc6c();
		displayTrees();
		N64.fnc0001cc6c();
		drawVehicles();
		N64.fnc0001cc6c();
		drawDeadVehicles();
		N64.fnc0001cc6c();
		drawVehicles();
		N64.fnc0001cc6c();
		N64.sins();
		displayBuildings();
		N64.fnc0001cc6c();
		drawComplexObjects();
		N64.fnc0001cc6c("DrawComplexObjects OK\n");
		debug_drawInteractionBoxes();
		N64.fnc0001cc6c("DisplayForces OK\n");
		level.Start();
		level.Start();
		displayBeacons();
		N64.fnc0001cc6c();
		displaySignposts();
		N64.fnc0001cc6c("DisplaySignposts OK\n");
		N64.fnc0001cc6c("DoEndGameStuff OK\n");
		fnc000a3490();
		fnc00071178();
		drawVehicles();
		fnc00070fb8();
		N64.fnc0001cc6c("DisplayVehicles.(1) OK\n");
		displayFXUnderWater();
		N64.fnc0001cc6c();
		DrawVtxBufferWater();
		N64.fnc0001cc6c("DrawVtxBufferWater OK\n");
		DisplayGates();
		N64.fnc0001cc6c("DisplayGates OK\n");
		DrawShieldWalls();
		N64.fnc0001cc6c("DrawShieldWalls OK\n");
		displayFXOnWater();
		N64.fnc0001cc6c("SFX NOT DRAWN - overflow\n");
		N64.fnc0001cc6c("displayFXOnWater OK\n");
		displayLasers();
		N64.fnc0001cc6c("DisplayLasers OK\n");
		drawGhostTarget();
		N64.fnc0001cc6c("DrawGhostTarget OK\n");
		N64.guPerspective();
		displayScanner();
		N64.fnc0001cc6c("DisplayScanner OK\n");
	}

	// RAM GREECE
	static void fnc00071e88() {
	}

	// RAM 00071f28
	static void guess_doGamePlay() {
		render();
		guess_DoAdamActions();
		fnc000bddcc();
		N64.fnc000074f4();
		fnc000bd8b8();
		fnc000e72a0();
		fnc0012b26c();
		fnc00113cec();
		fnc00112f98();
		fnc000f4db0();
		fnc000ae6cc();
		guess_MovementLogic();
		fnc000fb504();
		fnc000a1924();
		fnc000a1a18();
		fnc0012e258();
		fnc0011a604();
		fnc000a854c();
		fnc000a7c6c();
		level.Start();
		fnc00075aa4();
		fnc000a68cc();
		guess_doWeaponChange();
		fnc000be5c0();
		fnc000bed30();
		level.Start();
	}

	// RAM GREECE
	static void fnc000720b8() {
		render();
	}

	// RAM GREECE
	// fnc000720f4
	static void doGameplayLoop() 
	{
		//	addiu		sp, sp, $ff18		# 000720f4:27bdff18	
		//	sw		ra, $0044(sp)		# 000720f8:afbf0044	
		//	addiu		t6, zero, $ffff		# 000720fc:240effff	t6=$ffffffff
		//	lui		at, $8005		# 00072100:3c018005	at=$80050000
		//	sw		s7, $0040(sp)		# 00072104:afb70040	
		//	sw		s6, $003c(sp)		# 00072108:afb6003c	
		//	sw		s5, $0038(sp)		# 0007210c:afb50038	
		//	sw		s4, $0034(sp)		# 00072110:afb40034	
		//	sw		s3, $0030(sp)		# 00072114:afb30030	
		//	sw		s2, $002c(sp)		# 00072118:afb2002c	
		//	sw		s1, $0028(sp)		# 0007211c:afb10028	
		//	sw		s0, $0024(sp)		# 00072120:afb00024	
		//	sw		zero, $00e0(sp)		# 00072124:afa000e0	
		//	sw		zero, $00c4(sp)		# 00072128:afa000c4	
		//	sw		zero, $00c0(sp)		# 0007212c:afa000c0	
		//	sw		zero, $00bc(sp)		# 00072130:afa000bc	
		//	sw		zero, $00b8(sp)		# 00072134:afa000b8	
		//	jal		$00070440		# 00072138:0c01c110	^ FNC_00070440
		//	sh		t6, $2ac8(at)		# 0007213c:a42e2ac8	[80052ac8]
		x80052ac8 = 0xffff;
		fnc00070440();
		//	jal		$0000afdc		# 00072140:0c002bf7	^ FNC_0000afdc
		//	nop					# 00072144:00000000	
		N64.fnc0000afdc();
		//	addiu		t7, zero, $003c		# 00072148:240f003c	t7=$0000003c
		//	lui		at, $8005		# 0007214c:3c018005	at=$80050000
		//	sw		t7, $2ad4(at)		# 00072150:ac2f2ad4	[80052ad4]
		x80052ad4 = 0x3c;
		//	lui		at, $8015		# 00072154:3c018015	at=$80150000
		//	addiu		t8, zero, $0008		# 00072158:24180008	t8=$00000008
		//	jal		$000e8190		# 0007215c:0c03a064	v FNC_000e8190
		//	sh		t8, $ecf0(at)		# 00072160:a438ecf0	[8014ecf0]
		x8014ecf0 = 8;
		fnc000e8190();
		//	lui		s7, $8005		# 00072164:3c178005	s7=$80050000
		//	addiu		s7, s7, $2b34		# 00072168:26f72b34	s7=$80052b34
		//	lui		a1, $8015		# 0007216c:3c058015	a1=$80150000
		//	lh		a1, $93d8(a1)		# 00072170:84a593d8	a1=$801493d8
		//	jal		$000e7b20		# 00072174:0c039ec8	v FNC_000e7b20
		//	lw		a0, $0000(s7)		# 00072178:8ee40000	a0=$80052b34
		fnc000e7b20(x80052b34, x801493d8);
		//	addiu		s6, zero, $0001		# 0007217c:24160001	s6=$00000001
		//	lui		at, $8015		# 00072180:3c018015	at=$80150000
		//	lui		s4, $8005		# 00072184:3c148005	s4=$80050000
		//	sh		s6, $93e0(at)		# 00072188:a43693e0	[801493e0]
		x801493e0 = 1;
		//	addiu		s4, s4, $2adc		# 0007218c:26942adc	s4=$80052adc
		//	sw		s6, $0000(s4)		# 00072190:ae960000	[80052adc]
		gameplayMode = 1;
		//	lui		at, $8015		# 00072194:3c018015	at=$80150000
		//	addiu		t9, zero, $0001		# 00072198:24190001	t9=$00000001
		//	jal		$000effb4		# 0007219c:0c03bfed	v FNC_000effb4
		//	sb		t9, $93e6(at)		# 000721a0:a03993e6	[801493e6]
		x801493e6 = 1;
		fnc000effb4();
		//	jal		$000bed0c		# 000721a4:0c02fb43	v FNC_000bed0c
		//	nop					# 000721a8:00000000	
		fnc000bed0c();
		//	lui		t6, $0004		# 000721ac:3c0e0004	t6=$00040000
		//	addiu		t6, t6, $f320		# 000721b0:25cef320	t6=$0003f320
		//	sw		t6, $005c(sp)		# 000721b4:afae005c	
		//	lui		t7, $0003		# 000721b8:3c0f0003	t7=$00030000
		//	addiu		t7, t7, $0130		# 000721bc:25ef0130	t7=$00030130
		//	lui		t6, $8003		# 000721c0:3c0e8003	t6=$80030000
		//	lui		at, $1fff		# 000721c4:3c011fff	at=$1fff0000
		//	ori		at, at, $ffff		# 000721c8:3421ffff	at=$1fffffff
		//	addiu		t6, t6, $1160		# 000721cc:25ce1160	t6=$80031160
		//	sw		t7, $0058(sp)		# 000721d0:afaf0058	
		//	lui		t8, $8003		# 000721d4:3c188003	t8=$80030000
		//	lui		t9, $8003		# 000721d8:3c198003	t9=$80030000
		//	addiu		t9, t9, $1200		# 000721dc:27391200	t9=$80031200
		//	addiu		t8, t8, $11d0		# 000721e0:271811d0	t8=$800311d0
		//	and		t7, t6, at		# 000721e4:01c17824	
		//	lui		s5, $8005		# 000721e8:3c158005	s5=$80050000
		//	lui		s3, $8005		# 000721ec:3c138005	s3=$80050000
		//	lui		s2, $8006		# 000721f0:3c128006	s2=$80060000
		//	addiu		s2, s2, $bb2c		# 000721f4:2652bb2c	s2=$8005bb2c
		//	addiu		s3, s3, $2a8c		# 000721f8:26732a8c	s3=$80052a8c
		//	addiu		s5, s5, $2acb		# 000721fc:26b52acb	s5=$80052acb
		//	sw		t7, $004c(sp)		# 00072200:afaf004c	
		//	sw		t8, $0054(sp)		# 00072204:afb80054	
		//	sw		t9, $0050(sp)		# 00072208:afb90050	
		do
		{
			//__0007220c:					# 
			//	jal		$000702c0		# 0007220c:0c01c0b0	^ FNC_000702c0
			//	or		a0, zero, zero		# 00072210:00002025	
			UpdateGameplayTimer(0);
			//	lui		a0, $8007		# 00072214:3c048007	a0=$80070000
			//	lui		a1, $8007		# 00072218:3c058007	a1=$80070000
			//	addiu		a1, a1, $8038		# 0007221c:24a58038	a1=$80068038
			//	addiu		a0, a0, $a8d0		# 00072220:2484a8d0	a0=$8006a8d0
			//	jal		$0001ba70		# 00072224:0c006e9c	^ FNC_0001ba70
			//	or		a2, s6, zero		# 00072228:02c03025	
			N64.osRecvMesg(0x8006a8d0, 0x80068038, N64.OsMesgFlag.OS_MESG_BLOCK);
			//	lw		t8, $0000(s4)		# 0007222c:8e980000	
			//	addiu		at, zero, $000c		# 00072230:2401000c	at=$0000000c
			//	lui		t9, $8007		# 00072234:3c198007	t9=$80070000
			//	bne		t8, at, $00072260	# 00072238:17010009	v __00072260
			//	addiu		a0, zero, $1000		# 0007223c:24041000	a0=$00001000
			if (gameplayMode == 0xc && x8006c558 == 0xffff)
			{
				//	lh		t9, $c558(t9)		# 00072240:8739c558	t9=$8006c558
				//	addiu		at, zero, $ffff		# 00072244:2401ffff	at=$ffffffff
				//	lui		v0, $8004		# 00072248:3c028004	v0=$80040000
				//	bne		t9, at, $00072260	# 0007224c:17210004	v __00072260
				//	addiu		v0, v0, $7588		# 00072250:24427588	v0=$80047588
				//	sh		zero, $0000(v0)		# 00072254:a4400000	[80047588]
				controllerOneButtonState = 0;
				//	sb		zero, $0002(v0)		# 00072258:a0400002	[8004758a]
				x8004758a = 0;
				//	sb		zero, $0003(v0)		# 0007225c:a0400003	[8004758b]
				x8004758b= 0;
			}
			//__00072260:					# 
			//	jal		$000033d4		# 00072260:0c000cf5	^ FNC_000033d4
			//	or		a1, zero, zero		# 00072264:00002825	
			N64.fnc000033d4(0x1000, 0);
			//	lui		t6, $8015		# 00072268:3c0e8015	t6=$80150000
			//	lh		t6, $7590(t6)		# 0007226c:85ce7590	t6=$80157590
			//	addiu		at, zero, $0002		# 00072270:24010002	at=$00000002
			//	or		a1, s6, zero		# 00072274:02c02825	
			//	bne		t6, at, $00072290	# 00072278:15c10005	v __00072290
			//	ori		a0, zero, $df3f		# 0007227c:3404df3f	a0=$0000df3f
			if (x80157590 == 2)
			{
				//	jal		$000033d4		# 00072280:0c000cf5	^ FNC_000033d4
				//	ori		a0, zero, $df03		# 00072284:3404df03	a0=$0000df03
				N64.fnc000033d4(0xdf03, 1);
				//	beq		zero, zero, $00072298	# 00072288:10000003	v __00072298
				//	nop					# 0007228c:00000000	
			}
			else
			{
				//__00072290:					# 
				//	jal		$000033d4		# 00072290:0c000cf5	^ FNC_000033d4
				//	or		a1, s6, zero		# 00072294:02c02825	
				N64.fnc000033d4(0xdf3f, 1);
			}
			//__00072298:					# 
			//	jal		$00070bfc		# 00072298:0c01c2ff	^ FNC_00070bfc
			//	nop					# 0007229c:00000000	
			fnc00070bfc();
			//	lw		v0, $0000(s7)		# 000722a0:8ee20000	
			//	lh		a0, $0000(v0)		# 000722a4:84440000	
			//	jal		$000bc2f8		# 000722a8:0c02f0be	v FNC_000bc2f8
			//	lh		a1, $0004(v0)		# 000722ac:84450004	
			fnc000bc2f8(object_x80052b34.x, object_x80052b34.z);
			//	lui		t7, $8004		# 000722b0:3c0f8004	t7=$80040000
			//	lhu		t7, $7588(t7)		# 000722b4:95ef7588	t7=$80047588
			//	andi		t8, t7, $0200		# 000722b8:31f80200	
			//	beq		t8, zero, $000722e0	# 000722bc:13000008	v __000722e0
			//	nop					# 000722c0:00000000	
			if ((controllerOneButtonState & N64.Buttons.D_LEFT) != 0)
			{
				//	lw		v0, $0000(s7)		# 000722c4:8ee20000	
				//	lui		a0, $8014		# 000722c8:3c048014	a0=$80140000
				//	addiu		a0, a0, $10a4		# 000722cc:248410a4	a0="isoPnoit,d% ,d% \nd% "
				//	lh		a1, $0000(v0)		# 000722d0:84450000	
				//	lh		a2, $0002(v0)		# 000722d4:84460002	
				//	jal		$0001cc6c		# 000722d8:0c00731b	^ FNC_0001cc6c
				//	lh		a3, $0004(v0)		# 000722dc:84470004	
				N64.fnc0001cc6c("Postion %d, %d, %d\n", object_x80052b34.x,
					object_x80052b34.y, object_x80052b34.z);
			}
			//__000722e0:					# 
			//	lui		t9, $8015		# 000722e0:3c198015	t9=$80150000
			//	lbu		t9, $93e6(t9)		# 000722e4:933993e6	t9=$801493e6
			//	lui		t6, $8004		# 000722e8:3c0e8004	t6=$80040000
			//	beq		t9, zero, $00072314	# 000722ec:13200009	v __00072314
			//	nop					# 000722f0:00000000	
			if (x801493e6 != 0 && x80047f98 == 0)
			{
				//	lw		t6, $7f98(t6)		# 000722f4:8dce7f98	t6=$80047f98
				//	addiu		a0, zero, $0015		# 000722f8:24040015	a0=$00000015
				//	bne		t6, zero, $00072314	# 000722fc:15c00005	v __00072314
				//	nop					# 00072300:00000000	
				//	jal		$002d4cd0		# 00072304:0c0b5334	v FNC_002d4cd0
				//	or		a1, zero, zero		# 00072308:00002825	
				level.Start(0x15, 0);
				//	lui		at, $8015		# 0007230c:3c018015	at=$80150000
				//	sb		zero, $93e6(at)		# 00072310:a02093e6	[801493e6]
				x801493e6 = 0;
			}
			//__00072314:					# 
			//	lui		t7, $8005		# 00072314:3c0f8005	t7=$80050000
			//	lw		t7, $8034(t7)		# 00072318:8def8034	t7=$80048034
			//	bnel		s6, t7, $00072354	# 0007231c:56cf000d	v __00072354
			//	or		a0, s6, zero		# 00072320:02c02025	
			if (showDemoText == 1)
			{
				//	jal		$0000577c		# 00072324:0c0015df	^ FNC_0000577c
				//	nop					# 00072328:00000000	
				N64.fnc0000577c();
				//	lui		a0, $8014		# 0007232c:3c048014	a0=$80140000
				//	addiu		a0, a0, $10bc		# 00072330:248410bc	a0=$801410bc
				//	jal		$0000a4a4		# 00072334:0c002929	^ FNC_0000a4a4
				//	addiu		a1, zero, $fff4		# 00072338:2405fff4	a1=$fffffff4
				N64.drawText("%Y", 0xfffffff4);
				//	lui		a0, $8014		# 0007233c:3c048014	a0=$80140000
				//	addiu		a0, a0, $10c0		# 00072340:248410c0	a0=$801410c0
				//	addiu		a1, zero, $000f		# 00072344:2405000f	a1=$0000000f
				//	jal		$0000a4a4		# 00072348:0c002929	^ FNC_0000a4a4
				//	or		a2, zero, zero		# 0007234c:00003025	
				N64.drawText("%@Demo", 0xf, 0);
				//	or		a0, s6, zero		# 00072350:02c02025	
			}
			//__00072354:					# 
			//	jal		$00003584		# 00072354:0c000d61	^ FNC_00003584
			//	addiu		a1, zero, $0010		# 00072358:24050010	a1=$00000010
			bool pressed = N64.ButtonIsNewlyPressed(N64.Controller.TWO, N64.Buttons.R);
			//	beql		v0, zero, $00072370	# 0007235c:50400004	v __00072370
			//	lw		v0, $0000(s4)		# 00072360:8e820000	
			if (pressed)
			{
				//	jal		$000bdaf4		# 00072364:0c02f6bd	v FNC_000bdaf4
				//	nop					# 00072368:00000000	
				openCurrentStageGate();
				//	lw		v0, $0000(s4)		# 0007236c:8e820000	
			}
			//__00072370:					# 
			//	sltiu		at, v0, $0011		# 00072370:2c410011	
			//	beq		at, zero, $00072800	# 00072374:10200122	v __00072800
			//	sll		t8, v0, 2		# 00072378:0002c080	
			if (gameplayMode < 0x11)
			{
				//	lui		at, $8014		# 0007237c:3c018014	at=$80140000
				//	addu		at, at, t8		# 00072380:00380821	
				//	lw		t8, $11a8(at)		# 00072384:8c3811a8	
				//	jr		t8			# 00072388:03000008	
				//	nop					# 0007238c:00000000	
				switch (gameplayMode)
				{
					default:
					case 4:
					case 5:
					case 7:
					case 8:
					case 0xd:
					case 0xe:
					case 0xf:
						break;
					case 2:
					case 9:
						//	lui		a0, $00fa		# 00072390:3c0400fa	a0=$00fa0000
						//	jal		$000038d4		# 00072394:0c000e35	^ FNC_000038d4
						//	ori		a0, a0, $cade		# 00072398:3484cade	a0=$00facade
						N64.fnc000038d4(0xfacade);
						//	jal		$000e87c8		# 0007239c:0c03a1f2	v FNC_000e87c8
						//	nop					# 000723a0:00000000	
						updateCamera();
						//	jal		$00070cc0		# 000723a4:0c01c330	^ FNC_00070cc0
						//	nop					# 000723a8:00000000	
						guess_drawSky();
						//	jal		$000720b8		# 000723ac:0c01c82e	^ FNC_000720b8
						//	nop					# 000723b0:00000000	
						fnc000720b8();
						//	jal		$000a140c		# 000723b4:0c028503	v FNC_000a140c
						//	nop					# 000723b8:00000000	
						debugDrawTimingGraph();
						//	jal		$0000b044		# 000723bc:0c002c11	^ FNC_0000b044
						//	nop					# 000723c0:00000000	
						N64.fnc0000b044();
						//	beq		zero, zero, $00072800	# 000723c4:1000010e	v __00072800
						//	lw		v0, $0000(s4)		# 000723c8:8e820000	
						break;
					case 0xb:
						//	jal		$000f0094		# 000723cc:0c03c025	v FNC_000f0094
						//	nop					# 000723d0:00000000	
						fnc000f0094();
						//	jal		$00070cc0		# 000723d4:0c01c330	^ FNC_00070cc0
						//	nop					# 000723d8:00000000	
						guess_drawSky();
						//	jal		$000e87c8		# 000723dc:0c03a1f2	v FNC_000e87c8
						//	nop					# 000723e0:00000000	
						updateCamera();
						//	jal		$00071f28		# 000723e4:0c01c7ca	^ FNC_00071f28
						//	nop					# 000723e8:00000000	
						guess_doGamePlay();
						//	jal		$000a140c		# 000723ec:0c028503	v FNC_000a140c
						//	nop					# 000723f0:00000000	
						debugDrawTimingGraph();
						//	jal		$0000b044		# 000723f4:0c002c11	^ FNC_0000b044
						//	nop					# 000723f8:00000000	
						N64.fnc0000b044();
						//	jal		$000e8a00		# 000723fc:0c03a280	v FNC_000e8a00
						//	nop					# 00072400:00000000	
						guess_castVehicleShadows();
						//	lw		t9, $0000(s3)		# 00072404:8e790000	
						//	lw		v0, $0000(s4)		# 00072408:8e820000	
						//	addiu		t6, t9, $0001		# 0007240c:272e0001	
						//	beq		zero, zero, $00072800	# 00072410:100000fb	v __00072800
						//	sw		t6, $0000(s3)		# 00072414:ae6e0000	
						x80052a8c++;
						break;
					case 1:
						//__00072418:					# 
						//	jal		$000e87c8		# 00072418:0c03a1f2	v FNC_000e87c8
						//	nop					# 0007241c:00000000	
						updateCamera();
						//	jal		$00070cc0		# 00072420:0c01c330	^ FNC_00070cc0
						//	nop					# 00072424:00000000	
						guess_drawSky();
						//	jal		$00071f28		# 00072428:0c01c7ca	^ FNC_00071f28
						//	nop					# 0007242c:00000000	
						guess_doGamePlay();
						//	jal		$000a140c		# 00072430:0c028503	v FNC_000a140c
						//	nop					# 00072434:00000000	
						debugDrawTimingGraph();
						//	jal		$0000b044		# 00072438:0c002c11	^ FNC_0000b044
						//	nop					# 0007243c:00000000	
						N64.fnc0000b044();
						//	jal		$000e8a00		# 00072440:0c03a280	v FNC_000e8a00
						//	nop					# 00072444:00000000	
						guess_castVehicleShadows();
						//	lw		t7, $0000(s3)		# 00072448:8e6f0000	
						//	lw		v0, $0000(s4)		# 0007244c:8e820000	
						//	addiu		t8, t7, $0001		# 00072450:25f80001	
						//	beq		zero, zero, $00072800	# 00072454:100000ea	v __00072800
						//	sw		t8, $0000(s3)		# 00072458:ae780000	
						x80052a8c++;
						break;
					case 3:
						//	jal		$000074f4		# 0007245c:0c001d3d	^ FNC_000074f4
						//	nop					# 00072460:00000000	
						N64.fnc000074f4();
						//	jal		$000f0094		# 00072464:0c03c025	v FNC_000f0094
						//	nop					# 00072468:00000000	
						fnc000f0094();
						//	jal		$000e72a0		# 0007246c:0c039ca8	v FNC_000e72a0
						//	nop					# 00072470:00000000	
						fnc000e72a0();
						//	jal		$000bd8b8		# 00072474:0c02f62e	v FNC_000bd8b8
						//	nop					# 00072478:00000000	
						fnc000bd8b8();
						//	jal		$000a1924		# 0007247c:0c028649	v FNC_000a1924
						//	nop					# 00072480:00000000	
						fnc000a1924();
						//	jal		$00070cc0		# 00072484:0c01c330	^ FNC_00070cc0
						//	nop					# 00072488:00000000	
						guess_drawSky();
						//	jal		$000e87c8		# 0007248c:0c03a1f2	v FNC_000e87c8
						//	nop					# 00072490:00000000	
						updateCamera();
						//	lui		s0, $8005		# 00072494:3c108005	s0=$80050000
						//	lw		s0, $2b2c(s0)		# 00072498:8e102b2c	s0=$80052b2c
						//	lui		at, $8015		# 0007249c:3c018015	at=$80150000
						//	lw		t9, $0038(s0)		# 000724a0:8e190038	t9=$80052b20
						//	sw		t9, $0000(s7)		# 000724a4:aef90000	
						x80052b34 = GetWord(x80052b2c + 0x38);
						//	lh		t6, $0034(s0)		# 000724a8:860e0034	t6=$80052b1c
						//	jal		$00071228		# 000724ac:0c01c48a	^ FNC_00071228
						//	sh		t6, $9440(at)		# 000724b0:a42e9440	[80149440]
						x80149440 = GetShort(x80052b2c + 0x34);
						render();
						//	jal		$000a140c		# 000724b4:0c028503	v FNC_000a140c
						//	nop					# 000724b8:00000000	
						debugDrawTimingGraph();
						//	jal		$0000b044		# 000724bc:0c002c11	^ FNC_0000b044
						//	nop					# 000724c0:00000000	
						N64.fnc0000b044();
						//	jal		$000e8a00		# 000724c4:0c03a280	v FNC_000e8a00
						//	nop					# 000724c8:00000000	
						guess_castVehicleShadows();
						//	lw		t7, $0000(s3)		# 000724cc:8e6f0000	
						//	lw		v0, $0000(s4)		# 000724d0:8e820000	
						//	addiu		t8, t7, $0001		# 000724d4:25f80001	
						//	beq		zero, zero, $00072800	# 000724d8:100000c9	v __00072800
						//	sw		t8, $0000(s3)		# 000724dc:ae780000	
						x80052a8c++;
						break;
					case 0xa: // Show 'Processor Destroyed', score etc
						//	lui		a0, $00fa		# 000724e0:3c0400fa	a0=$00fa0000
						//	jal		$000038d4		# 000724e4:0c000e35	^ FNC_000038d4
						//	ori		a0, a0, $cade		# 000724e8:3484cade	a0=$00facade
						N64.fnc000038d4(0xfacade);
						//	jal		$000e87c8		# 000724ec:0c03a1f2	v FNC_000e87c8
						//	nop					# 000724f0:00000000	
						updateCamera();
						//	jal		$00070cc0		# 000724f4:0c01c330	^ FNC_00070cc0
						//	nop					# 000724f8:00000000	
						guess_drawSky();
						//	jal		$000720b8		# 000724fc:0c01c82e	^ FNC_000720b8
						//	nop					# 00072500:00000000	
						fnc000720b8();
						//	jal		$000a140c		# 00072504:0c028503	v FNC_000a140c
						//	nop					# 00072508:00000000	
						debugDrawTimingGraph();
						//	jal		$0000b044		# 0007250c:0c002c11	^ FNC_0000b044
						//	nop					# 00072510:00000000	
						N64.fnc0000b044();
						//	lui		t9, $8014		# 00072514:3c198014	t9=$80140000
						//	lw		t9, $d580(t9)		# 00072518:8f39d580	t9=$8013d580
						//	lui		v0, $8005		# 0007251c:3c028005	v0=$80050000
						//	addiu		v0, v0, $8170		# 00072520:24428170	v0=$80048170
						//	beq		t9, zero, $0007254c	# 00072524:13200009	v __0007254c
						//	lui		at, $8014		# 00072528:3c018014	at=$80140000
						if (x8013d580 != 0)
						{
							//	sw		s6, $0000(s4)		# 0007252c:ae960000	
							gameplayMode = 1;
							//	sw		zero, $d580(at)		# 00072530:ac20d580	[8013d580]
							x8013d580 = 0;
							//	sh		zero, $0000(v0)		# 00072534:a4400000	[80048170]
							x80048170 = 0;
							//	lh		t6, $0000(v0)		# 00072538:844e0000	t6=$80048170
							//	lui		at, $8005		# 0007253c:3c018005	at=$80050000
							//	sh		t6, $816e(at)		# 00072540:a42e816e	[8004816e]
							x8004816e = x80048170;
							//	lui		at, $8005		# 00072544:3c018005	at=$80050000
							//	sh		zero, $8176(at)		# 00072548:a4208176	[80048176]
							x80048176 = 0;
						}
						//__0007254c:					# 
						//	beq		zero, zero, $00072800	# 0007254c:100000ac	v __00072800
						//	lw		v0, $0000(s4)		# 00072550:8e820000	
						break;
					case 0:
						//	jal		$000135ac		# 00072554:0c004d6b	^ FNC_000135ac
						//	nop					# 00072558:00000000	
						N64.playMapMusic();
						//	jal		$0009811c		# 0007255c:0c026047	v FNC_0009811c
						//	nop					# 00072560:00000000	
						guess_doMap();
						//	sll		a0, s6, 16		# 00072564:00162400	
						//	sra		t7, a0, 16		# 00072568:00047c03	
						//	jal		$000702c0		# 0007256c:0c01c0b0	^ FNC_000702c0
						//	or		a0, t7, zero		# 00072570:01e02025	
						UpdateGameplayTimer(1);
						//	lui		t8, $8005		# 00072574:3c188005	t8=$80050000
						//	lw		t8, $2550(t8)		# 00072578:8f182550	t8=$80052550
						//	addiu		t9, zero, $0006		# 0007257c:24190006	t9=$00000006
						//	lui		at, $8005		# 00072580:3c018005	at=$80050000
						//	beql		t8, zero, $0007259c	# 00072584:53000005	v __0007259c
						//	lw		t6, $0000(s7)		# 00072588:8eee0000	
						if (x80052550 != 0)
						{
							//	sw		t9, $0000(s4)		# 0007258c:ae990000	
							gameplayMode = 6;
							//	beq		zero, zero, $000725dc	# 00072590:10000012	v __000725dc
							//	sw		zero, $2550(at)		# 00072594:ac202550	[80052550]
							x80052550 = 0;
							//	lw		t6, $0000(s7)		# 00072598:8eee0000	
						}
						//__0007259c:					# 
						//	lui		t8, $8015		# 0007259c:3c188015	t8=$80150000
						//	lbu		t7, $001a(t6)		# 000725a0:91cf001a	
						//	bne		t7, zero, $000725dc	# 000725a4:15e0000d	v __000725dc
						//	nop					# 000725a8:00000000	
						//	lw		t8, $7a28(t8)		# 000725ac:8f187a28	t8=$80157a28
						//	lui		t6, $8016		# 000725b0:3c0e8016	t6=$80160000
						//	andi		t9, t8, $0004		# 000725b4:33190004	
						//	bne		t9, zero, $000725dc	# 000725b8:17200008	v __000725dc
						//	nop					# 000725bc:00000000	
						//	lw		t6, $9300(t6)		# 000725c0:8dce9300	t6=$80159300
						//	bne		t6, zero, $000725dc	# 000725c4:15c00005	v __000725dc
						//	nop					# 000725c8:00000000	
						else if (xobject_x80052b34.x1a == 0
							&& (x80157a28 & 4) == 0
							&& x80159300 == 0)
						{
							//	jal		$000ea5b8		# 000725cc:0c03a96e	v FNC_000ea5b8
							//	nop					# 000725d0:00000000	
							fnc000ea5b8();
							//	jal		$000ea434		# 000725d4:0c03a90d	v FNC_000ea434
							//	nop					# 000725d8:00000000	
							guess_initAnimations();
						}
						
						//__000725dc:					# 
						//	lui		at, $8015		# 000725dc:3c018015	at=$80150000
						//	sh		zero, $ed56(at)		# 000725e0:a420ed56	[8014ed56]
						x8014ed56 = 0;
						//	beq		zero, zero, $00072800	# 000725e4:10000086	v __00072800
						//	lw		v0, $0000(s4)		# 000725e8:8e820000	
						break;
					case 0x10: // Open inventory
						//	jal		$000135f4		# 000725ec:0c004d7d	^ FNC_000135f4
						//	nop					# 000725f0:00000000	
						N64.playInventoryMusic();
						//	jal		$0000a024		# 000725f4:0c002809	^ FNC_0000a024
						//	nop					# 000725f8:00000000	
						N64.guess_displayInventory();
						//	lui		t7, $8005		# 000725fc:3c0f8005	t7=$80050000
						//	lw		t7, $2550(t7)		# 00072600:8def2550	t7=$80052550
						//	addiu		t8, zero, $0006		# 00072604:24180006	t8=$00000006
						//	lui		at, $8005		# 00072608:3c018005	at=$80050000
						//	beq		t7, zero, $00072620	# 0007260c:11e00004	v __00072620
						//	nop					# 00072610:00000000	
						if (x80052550 != 0)
						{
							//	sw		t8, $0000(s4)		# 00072614:ae980000	
							gameplayMode = 6;
							//	beq		zero, zero, $00072628	# 00072618:10000003	v __00072628
							//	sw		zero, $2550(at)		# 0007261c:ac202550	[80052550]
							x80052550 = 0;
						}
						else
						{
							//__00072620:					# 
							//	jal		$00116784		# 00072620:0c0459e1	v FNC_00116784
							//	nop					# 00072624:00000000	
							fnc00116784();
						}
						//__00072628:					# 
						//	lui		at, $8015		# 00072628:3c018015	at=$80150000
						//	sh		zero, $ed56(at)		# 0007262c:a420ed56	[8014ed56]
						x8014ed56 = 0;
						//	beq		zero, zero, $00072800	# 00072630:10000073	v __00072800
						//	lw		v0, $0000(s4)		# 00072634:8e820000	
						break;
					case 6:
						//	jal		$00008c18		# 00072638:0c002306	^ FNC_00008c18
						//	nop					# 0007263c:00000000	
						N64.fnc00008c18();
						//	jal		$000ea5b8		# 00072640:0c03a96e	v FNC_000ea5b8
						//	nop					# 00072644:00000000	
						fnc000ea5b8();
						//	jal		$000071d8		# 00072648:0c001c76	^ FNC_000071d8
						//	nop					# 0007264c:00000000	
						N64.fnc000071d8();
						//	jal		$000bed0c		# 00072650:0c02fb43	v FNC_000bed0c
						//	nop					# 00072654:00000000	
						fnc000bed0c();
						//	jal		$000ea434		# 00072658:0c03a90d	v FNC_000ea434
						//	nop					# 0007265c:00000000	
						guess_initAnimations();
						//	jal		$00116784		# 00072660:0c0459e1	v FNC_00116784
						//	nop					# 00072664:00000000	
						fnc00116784();
						//	jal		$00116724		# 00072668:0c0459c9	v FNC_00116724
						//	nop					# 0007266c:00000000	
						fnc00116724();
						//	jal		$00117f34		# 00072670:0c045fcd	v FNC_00117f34
						//	nop					# 00072674:00000000	
						fnc00117f34();
						//	jal		$000ec330		# 00072678:0c03b0cc	v FNC_000ec330
						//	nop					# 0007267c:00000000	
						fnc000ec330();
						//	lui		t9, $8004		# 00072680:3c198004	t9=$80040000
						//	lw		t9, $7968(t9)		# 00072684:8f397968	t9=$80047968
						//	lui		at, $8015		# 00072688:3c018015	at=$80150000
						//	beql		t9, zero, $000726a4	# 0007268c:53200005	v __000726a4
						//	lw		v0, $0000(s7)		# 00072690:8ee20000	
						if (x80047968 != 0)
						{
							//	sh		zero, $7590(at)		# 00072694:a4207590	[80157590]
							x80157590 = 0;
							//	lui		at, $8005		# 00072698:3c018005	at=$80050000
							//	sh		zero, $dc60(at)		# 0007269c:a420dc60	[8004dc60]
							x8004dc60 = 0;
							//	lw		v0, $0000(s7)		# 000726a0:8ee20000	
						}
						//__000726a4:					# 
						//	lh		a0, $0000(v0)		# 000726a4:84440000	
						//	jal		$000b0f20		# 000726a8:0c02c3c8	v FNC_000b0f20
						//	lh		a1, $0004(v0)		# 000726ac:84450004	
						fnc000b0f20(object_x80052b34.x, object_x80052b34.z);
						//	lui		at, $8004		# 000726b0:3c018004	at=$80040000
						//	jal		$000b0c80		# 000726b4:0c02c320	v FNC_000b0c80
						//	sw		v0, $7f94(at)		# 000726b8:ac227f94	[80047f94]
						x80047f94 = x80052b34;
						fnc000b0c80();
						//	jal		$000a9238		# 000726bc:0c02a48e	v FNC_000a9238
						//	nop					# 000726c0:00000000	
						guess_givePowerUp();
						//	jal		$00115a74		# 000726c4:0c04569d	v FNC_00115a74
						//	nop					# 000726c8:00000000	
						fnc00115a74();
						//	sll		a0, s6, 16		# 000726cc:00162400	
						//	sra		t6, a0, 16		# 000726d0:00047403	
						//	jal		$000702c0		# 000726d4:0c01c0b0	^ FNC_000702c0
						//	or		a0, t6, zero		# 000726d8:01c02025	
						UpdateGameplayTimer(1);
						//	lw		v0, $0000(s4)		# 000726dc:8e820000	
						//	addiu		at, zero, $000c		# 000726e0:2401000c	at=$0000000c
						//	bne		v0, at, $00072800	# 000726e4:14410046	v __00072800
						//	nop					# 000726e8:00000000	
						//	beq		zero, zero, $00072800	# 000726ec:10000044	v __00072800
						//	sw		s6, $00e0(sp)		# 000726f0:afb600e0	
						break;
					case 0xc:
						//	lui		at, $8004		# 000726f4:3c018004	at=$80040000
						//	jal		$000e87c8		# 000726f8:0c03a1f2	v FNC_000e87c8
						//	sh		s6, $76a2(at)		# 000726fc:a43676a2	[800476a2]
						guess_enablesInput = 1;
						updateCamera();
						//	jal		$00070cc0		# 00072700:0c01c330	^ FNC_00070cc0
						//	nop					# 00072704:00000000	
						guess_drawSky();
						//	jal		$00071f28		# 00072708:0c01c7ca	^ FNC_00071f28
						//	nop					# 0007270c:00000000	
						guess_doGamePlay();
						//	jal		$000a140c		# 00072710:0c028503	v FNC_000a140c
						//	nop					# 00072714:00000000	
						debugDrawTimingGraph();
						//	jal		$0000b044		# 00072718:0c002c11	^ FNC_0000b044
						//	nop					# 0007271c:00000000	
						N64.fnc0000b044();
						//	jal		$000e8a00		# 00072720:0c03a280	v FNC_000e8a00
						//	nop					# 00072724:00000000	
						guess_castVehicleShadows();
						//	lui		a0, $8005		# 00072728:3c048005	a0=$80050000
						//	addiu		a0, a0, $2ad4		# 0007272c:24842ad4	a0=$80052ad4
						//	lw		t7, $0000(s3)		# 00072730:8e6f0000	
						//	lw		v0, $0000(a0)		# 00072734:8c820000	v0=$80052ad4
						int v0 = x80052ad4;
						//	lui		t6, $8005		# 00072738:3c0e8005	t6=$80050000
						//	addiu		t8, t7, $0001		# 0007273c:25f80001	
						//	addiu		t9, v0, $ffff		# 00072740:2459ffff	t9=$0000003b
						//	sw		t8, $0000(s3)		# 00072744:ae780000	
						x80052a8c++;
						//	bgtz		v0, $00072754		# 00072748:1c400002	v __00072754
						//	sw		t9, $0000(a0)		# 0007274c:ac990000	[80052ad4]
						x80052ad4--;
						if (v0 <= 0)
						{
							//	sw		s6, $00e0(sp)		# 00072750:afb600e0	
						}
						//__00072754:					# 
						//	lw		t6, $2ad4(t6)		# 00072754:8dce2ad4	t6=$80052ad4
						//	addiu		at, zero, $001e		# 00072758:2401001e	at=$0000001e
						//	bne		t6, at, $0007276c	# 0007275c:15c10003	v __0007276c
						//	nop					# 00072760:00000000	
						if (x80052ad4 == 0x1e)
						{
							//	jal		$0009c458		# 00072764:0c027116	v FNC_0009c458
							//	nop					# 00072768:00000000	
							fnc0009c458();
						}
						//__0007276c:					# 
						//	lui		t7, $8005		# 0007276c:3c0f8005	t7=$80050000
						//	lh		t7, $2ac8(t7)		# 00072770:85ef2ac8	t7=$80052ac8
						//	addiu		at, zero, $0002		# 00072774:24010002	at=$00000002
						//	lui		v0, $8005		# 00072778:3c028005	v0=$80050000
						//	bne		t7, at, $000727c4	# 0007277c:15e10011	v __000727c4
						//	nop					# 00072780:00000000	
						if (x80052ac8 == 2 && x80052ad4 < 0x14)
						{
							//	lw		v0, $2ad4(v0)		# 00072784:8c422ad4	v0=$80052ad4
							//	slti		at, v0, $0014		# 00072788:28410014	
							//	beq		at, zero, $000727c4	# 0007278c:1020000d	v __000727c4
							//	subu		a0, zero, v0		# 00072790:00022023	a0=$ffffffc4
							//	sll		t8, a0, 2		# 00072794:0004c080	t8=$ffffff10
							//	subu		t8, t8, a0		# 00072798:0304c023	t8=$ffffff4c
							//	sll		t8, t8, 2		# 0007279c:0018c080	t8=$fffffd30
							//	addu		t8, t8, a0		# 000727a0:0304c021	t8=$fffffcf4
							//	addiu		a0, t8, $0104		# 000727a4:27040104	a0=$fffffdf8
							//	slti		at, a0, $0100		# 000727a8:28810100	
							//	bne		at, zero, $000727bc	# 000727ac:14200003	v __000727bc
							//	or		v1, a0, zero		# 000727b0:00801825	v1=$fffffdf8
							int v1 = ((((0 - x80052ad4) * 3 * 4) + (0 - x80052ad4)) + 0x104);
							if (v1 >= 0x100)
							{
								//	beq		zero, zero, $000727bc	# 000727b4:10000001	v __000727bc
								//	addiu		v1, zero, $00ff		# 000727b8:240300ff	v1=$000000ff
								v1 = 0xff;
							}
							//__000727bc:					# 
							//	jal		$000e35e0		# 000727bc:0c038d78	v FNC_000e35e0
							//	andi		a0, v1, $00ff		# 000727c0:306400ff	
							fnc000e35e0(v1 & 0xff);
						}
						//__000727c4:					# 
						//	lui		t9, $8016		# 000727c4:3c198016	t9=$80160000
						//	lw		t9, $9320(t9)		# 000727c8:8f399320	t9=$80159320
						//	lui		a0, $8014		# 000727cc:3c048014	a0=$80140000
						//	addiu		a0, a0, $10c8		# 000727d0:248410c8	a0=$801410c8
						//	sll		t6, t9, 4		# 000727d4:00197100	
						//	bgez		t6, $000727fc		# 000727d8:05c10008	v __000727fc
						//	addiu		a1, zero, $00ff		# 000727dc:240500ff	a1=$000000ff
						if ((x80159320 << 4) < 0)
						{
							//	addiu		t7, zero, $0080		# 000727e0:240f0080	t7=$00000080
							//	addiu		t8, zero, $0005		# 000727e4:24180005	t8=$00000005
							//	sw		t8, $0014(sp)		# 000727e8:afb80014	
							//	sw		t7, $0010(sp)		# 000727ec:afaf0010	
							//	or		a2, zero, zero		# 000727f0:00003025	
							//	jal		$0000a4a4		# 000727f4:0c002929	^ FNC_0000a4a4
							//	or		a3, zero, zero		# 000727f8:00003825	
							N64.drawText("%C%@UNLUCKY ANDREW!", 0xff, 0, 0);
						}
						//__000727fc:					# 
						//	lw		v0, $0000(s4)		# 000727fc:8e820000	
						break;
				}
			}
			//__00072800:					# 
			//	lui		v1, $8005		# 00072800:3c038005	v1=$80050000
			//	addiu		v1, v1, $2ad8		# 00072804:24632ad8	v1=$80052ad8
			//	lw		t9, $0000(v1)		# 00072808:8c790000	t9=$80052ad8
			//	addiu		at, zero, $000a		# 0007280c:2401000a	at=$0000000a
			//	lui		t7, $8005		# 00072810:3c0f8005	t7=$80050000
			//	addiu		t6, t9, $0001		# 00072814:272e0001	t6=$000003aa
			//	beq		v0, at, $00072834	# 00072818:10410006	v __00072834
			//	sw		t6, $0000(v1)		# 0007281c:ac6e0000	[80052ad8]
			//	lw		t7, $2ad0(t7)		# 00072820:8def2ad0	t7=$80052ad0
			//	addiu		t8, zero, $000c		# 00072824:2418000c	t8=$0000000c
			//	bne		t7, zero, $00072834	# 00072828:15e00002	v __00072834
			//	nop					# 0007282c:00000000	
			//	sw		t8, $0000(s4)		# 00072830:ae980000	
			//__00072834:					# 
			//	jal		$0011dba0		# 00072834:0c0476e8	v FNC_0011dba0
			//	nop					# 00072838:00000000	
			fnc0011dba0();
			//	lw		s0, $0000(s2)		# 0007283c:8e500000	
			//	lui		t6, $b400		# 00072840:3c0eb400	t6=$b4000000
			//	addiu		t9, s0, $0008		# 00072844:26190008	
			//	sw		t9, $0000(s2)		# 00072848:ae590000	
			//	sw		t6, $0000(s0)		# 0007284c:ae0e0000	
			//	lw		t7, $005c(sp)		# 00072850:8faf005c	
			//	lui		t9, $af00		# 00072854:3c19af00	t9=$af000000
			//	ori		t9, t9, $07ff		# 00072858:373907ff	t9=$af0007ff
			//	sw		t7, $0004(s0)		# 0007285c:ae0f0004	
			//	lw		s0, $0000(s2)		# 00072860:8e500000	
			//	addiu		t8, s0, $0008		# 00072864:26180008	
			//	sw		t8, $0000(s2)		# 00072868:ae580000	
			//	sw		t9, $0000(s0)		# 0007286c:ae190000	
			//	lw		t6, $0058(sp)		# 00072870:8fae0058	
			//	jal		$00070bfc		# 00072874:0c01c2ff	^ FNC_00070bfc
			//	sw		t6, $0004(s0)		# 00072878:ae0e0004	
			fnc00070bfc();
			//	lw		s0, $0000(s2)		# 0007287c:8e500000	
			//	lui		t8, $b600		# 00072880:3c18b600	t8=$b6000000
			//	addiu		t9, zero, $ffff		# 00072884:2419ffff	t9=$ffffffff
			//	addiu		t7, s0, $0008		# 00072888:260f0008	
			//	sw		t7, $0000(s2)		# 0007288c:ae4f0000	
			//	sw		t9, $0004(s0)		# 00072890:ae190004	
			//	sw		t8, $0000(s0)		# 00072894:ae180000	
			//	lw		s0, $0000(s2)		# 00072898:8e500000	
			//	addiu		t8, zero, $0204		# 0007289c:24180204	t8=$00000204
			//	lui		t7, $b700		# 000728a0:3c0fb700	t7=$b7000000
			//	addiu		t6, s0, $0008		# 000728a4:260e0008	
			//	sw		t6, $0000(s2)		# 000728a8:ae4e0000	
			//	sw		t8, $0004(s0)		# 000728ac:ae180004	
			//	sw		t7, $0000(s0)		# 000728b0:ae0f0000	
			//	lw		s0, $0000(s2)		# 000728b4:8e500000	
			//	lui		t6, $e700		# 000728b8:3c0ee700	t6=$e7000000
			//	lui		a1, $8005		# 000728bc:3c058005	a1=$80050000
			//	addiu		t9, s0, $0008		# 000728c0:26190008	
			//	sw		t9, $0000(s2)		# 000728c4:ae590000	
			//	sw		zero, $0004(s0)		# 000728c8:ae000004	
			//	sw		t6, $0000(s0)		# 000728cc:ae0e0000	
			//	lh		a1, $dc60(a1)		# 000728d0:84a5dc60	a1=$8004dc60
			//	beql		a1, zero, $00072984	# 000728d4:50a0002b	v __00072984
			//	lw		s0, $0000(s2)		# 000728d8:8e500000	
			//	mtc1		a1, $f4			# 000728dc:44852000	
			//	lui		at, $4080		# 000728e0:3c014080	at=$40800000
			//	mtc1		at, $f0			# 000728e4:44810000	
			//	cvt.s.w		$f6, $f4		# 000728e8:468021a0	
			//	lw		s0, $0000(s2)		# 000728ec:8e500000	
			//	lui		at, $ed00		# 000728f0:3c01ed00	at=$ed000000
			//	lui		t8, $8007		# 000728f4:3c188007	t8=$80070000
			//	addiu		t7, s0, $0008		# 000728f8:260f0008	
			//	sw		t7, $0000(s2)		# 000728fc:ae4f0000	
			//	mul.s		$f8, $f6, $f0		# 00072900:46003202	
			//	(cop1_s)	$0200428d		# 00072904:4600428d	
			//	mfc1		t9, $f10		# 00072908:44195000	
			//	nop					# 0007290c:00000000	
			//	andi		t6, t9, $0fff		# 00072910:332e0fff	
			//	or		t7, t6, at		# 00072914:01c17825	t7=$ed000fff
			//	sw		t7, $0000(s0)		# 00072918:ae0f0000	
			//	lui		t9, $8005		# 0007291c:3c198005	t9=$80050000
			//	lh		t9, $dc60(t9)		# 00072920:8739dc60	t9=$8004dc60
			//	lw		t8, $8088(t8)		# 00072924:8f188088	t8=$80068088
			//	subu		t6, t8, t9		# 00072928:03197023	
			//	mtc1		t6, $f16		# 0007292c:448e8000	
			//	lui		t6, $8007		# 00072930:3c0e8007	t6=$80070000
			//	lw		t6, $8084(t6)		# 00072934:8dce8084	t6=$80068084
			//	cvt.s.w		$f18, $f16		# 00072938:468084a0	
			//	mtc1		t6, $f8			# 0007293c:448e4000	
			//	nop					# 00072940:00000000	
			//	cvt.s.w		$f10, $f8		# 00072944:468042a0	
			//	mul.s		$f4, $f18, $f0		# 00072948:46009102	
			//	(cop1_s)	$0200218d		# 0007294c:4600218d	
			//	mul.s		$f16, $f10, $f0		# 00072950:46005402	
			//	mfc1		t8, $f6			# 00072954:44183000	
			//	nop					# 00072958:00000000	
			//	andi		t9, t8, $0fff		# 0007295c:33190fff	
			//	(cop1_s)	$0200848d		# 00072960:4600848d	
			//	mfc1		t8, $f18		# 00072964:44189000	
			//	nop					# 00072968:00000000	
			//	andi		t6, t8, $0fff		# 0007296c:330e0fff	
			//	sll		t7, t6, 12		# 00072970:000e7b00	t7=$000e6000
			//	or		t8, t7, t9		# 00072974:01f9c025	
			//	beq		zero, zero, $000729f0	# 00072978:1000001d	v __000729f0
			//	sw		t8, $0004(s0)		# 0007297c:ae180004	
			//	lw		s0, $0000(s2)		# 00072980:8e500000	
			//__00072984:					# 
			//	lui		t7, $ed00		# 00072984:3c0fed00	t7=$ed000000
			//	lui		t9, $8007		# 00072988:3c198007	t9=$80070000
			//	addiu		t6, s0, $0008		# 0007298c:260e0008	
			//	sw		t6, $0000(s2)		# 00072990:ae4e0000	
			//	sw		t7, $0000(s0)		# 00072994:ae0f0000	
			//	lw		t9, $8084(t9)		# 00072998:8f398084	t9=$80068084
			//	lui		t8, $8007		# 0007299c:3c188007	t8=$80070000
			//	lw		t8, $8088(t8)		# 000729a0:8f188088	t8=$80068088
			//	mtc1		t9, $f4			# 000729a4:44992000	
			//	lui		at, $4080		# 000729a8:3c014080	at=$40800000
			//	mtc1		t8, $f16		# 000729ac:44988000	
			//	cvt.s.w		$f6, $f4		# 000729b0:468021a0	
			//	mtc1		at, $f0			# 000729b4:44810000	
			//	cvt.s.w		$f18, $f16		# 000729b8:468084a0	
			//	mul.s		$f8, $f6, $f0		# 000729bc:46003202	
			//	(cop1_s)	$0200428d		# 000729c0:4600428d	
			//	mul.s		$f4, $f18, $f0		# 000729c4:46009102	
			//	mfc1		t6, $f10		# 000729c8:440e5000	
			//	nop					# 000729cc:00000000	
			//	andi		t7, t6, $0fff		# 000729d0:31cf0fff	
			//	(cop1_s)	$0200218d		# 000729d4:4600218d	
			//	sll		t9, t7, 12		# 000729d8:000fcb00	
			//	mfc1		t7, $f6			# 000729dc:440f3000	
			//	nop					# 000729e0:00000000	
			//	andi		t8, t7, $0fff		# 000729e4:31f80fff	
			//	or		t6, t9, t8		# 000729e8:03387025	
			//	sw		t6, $0004(s0)		# 000729ec:ae0e0004	
			//__000729f0:					# 
			//	lw		s0, $0000(s2)		# 000729f0:8e500000	
			//	lui		t9, $ff10		# 000729f4:3c19ff10	t9=$ff100000
			//	ori		t9, t9, $013f		# 000729f8:3739013f	t9=$ff10013f
			//	addiu		t7, s0, $0008		# 000729fc:260f0008	
			//	sw		t7, $0000(s2)		# 00072a00:ae4f0000	
			//	lui		t8, $8003		# 00072a04:3c188003	t8=$80030000
			//	sw		t9, $0000(s0)		# 00072a08:ae190000	
			//	lw		t8, $1b84(t8)		# 00072a0c:8f181b84	t8=$80031b84
			//	lui		t7, $8006		# 00072a10:3c0f8006	t7=$80060000
			//	lui		at, $1fff		# 00072a14:3c011fff	at=$1fff0000
			//	sll		t6, t8, 2		# 00072a18:00187080	t6=$00000004
			//	addu		t7, t7, t6		# 00072a1c:01ee7821	t7=$80060004
			//	lw		t7, $bb48(t7)		# 00072a20:8defbb48	t7=$8005bb4c
			//	ori		at, at, $ffff		# 00072a24:3421ffff	at=$1fffffff
			//	lui		a1, $0600		# 00072a28:3c050600	a1=$06000000
			//	and		t9, t7, at		# 00072a2c:01e1c824	
			//	sw		t9, $0004(s0)		# 00072a30:ae190004	
			//	lw		s0, $0000(s2)		# 00072a34:8e500000	
			//	addiu		t8, s0, $0008		# 00072a38:26180008	
			//	sw		t8, $0000(s2)		# 00072a3c:ae580000	
			//	sw		a1, $0000(s0)		# 00072a40:ae050000	
			//	lw		t6, $0054(sp)		# 00072a44:8fae0054	
			//	sw		t6, $0004(s0)		# 00072a48:ae0e0004	
			//	lw		s0, $0000(s2)		# 00072a4c:8e500000	
			//	addiu		t7, s0, $0008		# 00072a50:260f0008	
			//	sw		t7, $0000(s2)		# 00072a54:ae4f0000	
			//	sw		a1, $0000(s0)		# 00072a58:ae050000	
			//	lw		t9, $0050(sp)		# 00072a5c:8fb90050	
			//	jal		$00070fb8		# 00072a60:0c01c3ee	^ FNC_00070fb8
			//	sw		t9, $0004(s0)		# 00072a64:ae190004	
			fnc00070fb8();
			//	lw		s0, $0000(s2)		# 00072a68:8e500000	
			//	lui		t6, $fcff		# 00072a6c:3c0efcff	t6=$fcff0000
			//	lui		t7, $fffe		# 00072a70:3c0ffffe	t7=$fffe0000
			//	addiu		t8, s0, $0008		# 00072a74:26180008	
			//	sw		t8, $0000(s2)		# 00072a78:ae580000	
			//	ori		t7, t7, $7838		# 00072a7c:35ef7838	t7=$fffe7838
			//	ori		t6, t6, $ffff		# 00072a80:35ceffff	t6=$fcffffff
			//	sw		t6, $0000(s0)		# 00072a84:ae0e0000	
			//	sw		t7, $0004(s0)		# 00072a88:ae0f0004	
			//	lw		s0, $0000(s2)		# 00072a8c:8e500000	
			//	lui		t8, $b900		# 00072a90:3c18b900	t8=$b9000000
			//	ori		t8, t8, $031d		# 00072a94:3718031d	t8=$b900031d
			//	addiu		t9, s0, $0008		# 00072a98:26190008	
			//	sw		t9, $0000(s2)		# 00072a9c:ae590000	
			//	lui		t6, $c810		# 00072aa0:3c0ec810	t6=$c8100000
			//	ori		t6, t6, $7858		# 00072aa4:35ce7858	t6=$c8107858
			//	sw		t8, $0000(s0)		# 00072aa8:ae180000	
			//	lui		t7, $8015		# 00072aac:3c0f8015	t7=$80150000
			//	sw		t6, $0004(s0)		# 00072ab0:ae0e0004	
			//	lh		t7, $9404(t7)		# 00072ab4:85ef9404	t7=$80149404
			//	lui		t8, $8015		# 00072ab8:3c188015	t8=$80150000
			//	lui		t9, $8015		# 00072abc:3c198015	t9=$80150000
			//	lh		t9, $7574(t9)		# 00072ac0:87397574	t9=$80157574
			//	lh		t8, $7576(t8)		# 00072ac4:87187576	t8=$80157576
			//	mtc1		t7, $f8			# 00072ac8:448f4000	
			//	mtc1		t9, $f10		# 00072acc:44995000	
			//	mtc1		t8, $f18		# 00072ad0:44989000	
			//	cvt.s.w		$f8, $f8		# 00072ad4:46804220	
			//	lui		a0, $8006		# 00072ad8:3c048006	a0=$80060000
			//	lui		at, $3f80		# 00072adc:3c013f80	at=$3f800000
			//	mtc1		at, $f6			# 00072ae0:44813000	
			//	lw		a0, $bb20(a0)		# 00072ae4:8c84bb20	a0=$8005bb20
			//	cvt.s.w		$f16, $f10		# 00072ae8:46805420	
			//	mfc1		a2, $f8			# 00072aec:44064000	
			//	lui		a1, $8015		# 00072af0:3c058015	a1=$80150000
			//	lui		a3, $3faa		# 00072af4:3c073faa	a3=$3faa0000
			//	ori		a3, a3, $aaab		# 00072af8:34e7aaab	a3=$3faaaaab
			//	cvt.s.w		$f4, $f18		# 00072afc:46809120	
			//	addiu		a1, a1, $93d6		# 00072b00:24a593d6	a1=$801493d6
			//	swc1		$f16, $0010(sp)		# 00072b04:e7b00010	
			//	addiu		a0, a0, $0180		# 00072b08:24840180	a0=$801ce890
			//	swc1		$f6, $0018(sp)		# 00072b0c:e7a60018	
			//	jal		$0001e590		# 00072b10:0c007964	^ FNC_0001e590
			//	swc1		$f4, $0014(sp)		# 00072b14:e7a40014	
			N64.guPerspective();
			//	lw		s0, $0000(s2)		# 00072b18:8e500000	
			//	lui		t7, $bc00		# 00072b1c:3c0fbc00	t7=$bc000000
			//	ori		t7, t7, $000e		# 00072b20:35ef000e	t7=$bc00000e
			//	addiu		t6, s0, $0008		# 00072b24:260e0008	
			//	sw		t6, $0000(s2)		# 00072b28:ae4e0000	
			//	lui		t9, $8015		# 00072b2c:3c198015	t9=$80150000
			//	sw		t7, $0000(s0)		# 00072b30:ae0f0000	
			//	lhu		t9, $93d6(t9)		# 00072b34:973993d6	t9=$801493d6
			//	lui		t6, $0103		# 00072b38:3c0e0103	t6=$01030000
			//	lui		t4, $8006		# 00072b3c:3c0c8006	t4=$80060000
			//	sw		t9, $0004(s0)		# 00072b40:ae190004	
			//	lw		s0, $0000(s2)		# 00072b44:8e500000	
			//	ori		t6, t6, $0040		# 00072b48:35ce0040	t6=$01030040
			//	addiu		t4, t4, $bb20		# 00072b4c:258cbb20	t4=$8005bb20
			//	addiu		t8, s0, $0008		# 00072b50:26180008	
			//	sw		t8, $0000(s2)		# 00072b54:ae580000	
			//	sw		t6, $0000(s0)		# 00072b58:ae0e0000	
			//	lw		t7, $0000(t4)		# 00072b5c:8d8f0000	t7=$8005bb20
			//	lui		t5, $1fff		# 00072b60:3c0d1fff	t5=$1fff0000
			//	ori		t5, t5, $ffff		# 00072b64:35adffff	t5=$1fffffff
			//	addiu		t9, t7, $0180		# 00072b68:25f90180	t9=$801ce890
			//	and		t8, t9, t5		# 00072b6c:032dc024	
			//	sw		t8, $0004(s0)		# 00072b70:ae180004	
			//	lw		s0, $0000(s2)		# 00072b74:8e500000	
			//	lui		t7, $0101		# 00072b78:3c0f0101	t7=$01010000
			//	ori		t7, t7, $0040		# 00072b7c:35ef0040	t7=$01010040
			//	addiu		t6, s0, $0008		# 00072b80:260e0008	
			//	sw		t6, $0000(s2)		# 00072b84:ae4e0000	
			//	sw		t7, $0000(s0)		# 00072b88:ae0f0000	
			//	lw		t9, $0000(t4)		# 00072b8c:8d990000	t9=$8005bb20
			//	ori		at, zero, $e380		# 00072b90:3401e380	at=$0000e380
			//	lui		t3, $8006		# 00072b94:3c0b8006	t3=$80060000
			//	addiu		t8, t9, $0200		# 00072b98:27380200	t8=$801ce910
			//	and		t6, t8, t5		# 00072b9c:030d7024	
			//	sw		t6, $0004(s0)		# 00072ba0:ae0e0004	
			//	lw		s0, $0000(s2)		# 00072ba4:8e500000	
			//	lui		t9, $0102		# 00072ba8:3c190102	t9=$01020000
			//	ori		t9, t9, $0040		# 00072bac:37390040	t9=$01020040
			//	addiu		t7, s0, $0008		# 00072bb0:260f0008	
			//	sw		t7, $0000(s2)		# 00072bb4:ae4f0000	
			//	sw		t9, $0000(s0)		# 00072bb8:ae190000	
			//	lw		t8, $004c(sp)		# 00072bbc:8fb8004c	
			//	lui		t7, $0601		# 00072bc0:3c0f0601	t7=$06010000
			//	addiu		t3, t3, $bb30		# 00072bc4:256bbb30	t3=$8005bb30
			//	sw		t8, $0004(s0)		# 00072bc8:ae180004	
			//	lw		s0, $0000(s2)		# 00072bcc:8e500000	
			//	lui		a0, $8014		# 00072bd0:3c048014	a0=$80140000
			//	addiu		a0, a0, $10dc		# 00072bd4:248410dc	a0=$801410dc
			//	addiu		t6, s0, $0008		# 00072bd8:260e0008	
			//	sw		t6, $0000(s2)		# 00072bdc:ae4e0000	
			//	sw		t7, $0000(s0)		# 00072be0:ae0f0000	
			//	lw		t9, $0000(t4)		# 00072be4:8d990000	
			//	addu		t8, t9, at		# 00072be8:0321c021	
			//	and		t6, t8, t5		# 00072bec:030d7024	
			//	sw		t6, $0004(s0)		# 00072bf0:ae0e0004	
			//	lw		v0, $0000(t3)		# 00072bf4:8d620000	v0=$8005bb30
			//	lui		t9, $e900		# 00072bf8:3c19e900	t9=$e9000000
			//	lui		t6, $b800		# 00072bfc:3c0eb800	t6=$b8000000
			//	addiu		t7, v0, $0008		# 00072c00:244f0008	t7=$801dcbc0
			//	sw		t7, $0000(t3)		# 00072c04:ad6f0000	[8005bb30]
			//	sw		zero, $0004(v0)		# 00072c08:ac400004	[801dcbbc]
			//	sw		t9, $0000(v0)		# 00072c0c:ac590000	[801dcbb8]
			//	lw		v0, $0000(t3)		# 00072c10:8d620000	v0=$8005bb30
			//	addiu		t8, v0, $0008		# 00072c14:24580008	t8=$801dcbc0
			//	sw		t8, $0000(t3)		# 00072c18:ad780000	[8005bb30]
			//	sw		zero, $0004(v0)		# 00072c1c:ac400004	[801dcbbc]
			//	sw		t6, $0000(v0)		# 00072c20:ac4e0000	[801dcbb8]
			//	lw		t7, $0000(s2)		# 00072c24:8e4f0000	
			//	lw		t2, $0000(t4)		# 00072c28:8d8a0000	
			//	sb		zero, $0000(s5)		# 00072c2c:a2a00000	
			//	subu		s1, t7, t2		# 00072c30:01ea8823	
			//	addiu		s1, s1, $fd80		# 00072c34:2631fd80	
			//	sra		t9, s1, 3		# 00072c38:0011c8c3	
			//	slti		at, t9, $1c21		# 00072c3c:2b211c21	
			//	bne		at, zero, $00072c64	# 00072c40:14200008	v __00072c64
			//	or		s1, t9, zero		# 00072c44:03208825	
			//	jal		$0001cc6c		# 00072c48:0c00731b	^ FNC_0001cc6c
			//	addiu		a1, t9, $e3e0		# 00072c4c:2725e3e0	
			N64.fnc0001cc6c("GfxList overflowed by %d");
			//	addiu		t8, zero, $0002		# 00072c50:24180002	t8=$00000002
			//	sb		t8, $0000(s5)		# 00072c54:a2b80000	
			//	lui		t2, $8006		# 00072c58:3c0a8006	t2=$80060000
			//	beq		zero, zero, $00072c88	# 00072c5c:1000000a	v __00072c88
			//	lw		t2, $bb20(t2)		# 00072c60:8d4abb20	t2=$8005bb20
			//__00072c64:					# 
			//	slti		at, s1, $1ab9		# 00072c64:2a211ab9	
			//	bne		at, zero, $00072c88	# 00072c68:14200007	v __00072c88
			//	lui		a0, $8014		# 00072c6c:3c048014	a0=$80140000
			//	jal		$0001cc6c		# 00072c70:0c00731b	^ FNC_0001cc6c
			//	addiu		a0, a0, $10f8		# 00072c74:248410f8	a0=$801410f8
			N64.fnc0001cc6c("GfxList about to overflow!");
			//	addiu		t6, zero, $0001		# 00072c78:240e0001	t6=$00000001
			//	sb		t6, $0000(s5)		# 00072c7c:a2ae0000	
			//	lui		t2, $8006		# 00072c80:3c0a8006	t2=$80060000
			//	lw		t2, $bb20(t2)		# 00072c84:8d4abb20	t2=$8005bb20
			//__00072c88:					# 
			//	lui		v0, $8015		# 00072c88:3c028015	v0=$80150000
			//	lw		v0, $9380(v0)		# 00072c8c:8c429380	v0=$80149380
			//	lui		v1, $8015		# 00072c90:3c038015	v1=$80150000
			//	addiu		v1, v1, $9384		# 00072c94:24639384	v1=$80149384
			//	beq		v0, zero, $00072cac	# 00072c98:10400004	v __00072cac
			//	lui		t6, $8006		# 00072c9c:3c0e8006	t6=$80060000
			//	lw		t7, $0000(v1)		# 00072ca0:8c6f0000	t7=$80149384
			//	addu		t9, t7, s1		# 00072ca4:01f1c821	
			//	sw		t9, $0000(v1)		# 00072ca8:ac790000	[80149384]
			//__00072cac:					# 
			//	lw		t8, $00c4(sp)		# 00072cac:8fb800c4	
			//	lui		a0, $8014		# 00072cb0:3c048014	a0=$80140000
			//	addiu		a0, a0, $1114		# 00072cb4:24841114	a0=$80141114
			//	slt		at, t8, s1		# 00072cb8:0311082a	
			//	beq		at, zero, $00072cc8	# 00072cbc:10200002	v __00072cc8
			//	nop					# 00072cc0:00000000	
			//	sw		s1, $00c4(sp)		# 00072cc4:afb100c4	
			//__00072cc8:					# 
			//	lw		t6, $bb30(t6)		# 00072cc8:8dcebb30	t6=$8005bb30
			//	lui		at, $ffff		# 00072ccc:3c01ffff	at=$ffff0000
			//	ori		at, at, $1c80		# 00072cd0:34211c80	at=$ffff1c80
			//	subu		s1, t6, t2		# 00072cd4:01ca8823	s1=$0000e4a8
			//	addu		s1, s1, at		# 00072cd8:02218821	s1=$00000128
			//	sra		t7, s1, 3		# 00072cdc:001178c3	
			//	slti		at, t7, $0231		# 00072ce0:29e10231	
			//	bne		at, zero, $00072d04	# 00072ce4:14200007	v __00072d04
			//	or		s1, t7, zero		# 00072ce8:01e08825	s1=$00000025
			//	jal		$0001cc6c		# 00072cec:0c00731b	^ FNC_0001cc6c
			//	addiu		a1, t7, $fdd0		# 00072cf0:25e5fdd0	a1=$fffffdf5
			N64.fnc0001cc6c("LineList overflowed by %d");
			//	lui		t2, $8006		# 00072cf4:3c0a8006	t2=$80060000
			//	lui		v0, $8015		# 00072cf8:3c028015	v0=$80150000
			//	lw		v0, $9380(v0)		# 00072cfc:8c429380	v0=$80149380
			//	lw		t2, $bb20(t2)		# 00072d00:8d4abb20	t2=$8005bb20
			//__00072d04:					# 
			//	beq		v0, zero, $00072d20	# 00072d04:10400006	v __00072d20
			//	lui		t7, $8006		# 00072d08:3c0f8006	t7=$80060000
			//	lui		v1, $8015		# 00072d0c:3c038015	v1=$80150000
			//	addiu		v1, v1, $9388		# 00072d10:24639388	v1=$80149388
			//	lw		t9, $0000(v1)		# 00072d14:8c790000	t9=$80149388
			//	addu		t8, t9, s1		# 00072d18:0331c021	
			//	sw		t8, $0000(v1)		# 00072d1c:ac780000	[80149388]
			//__00072d20:					# 
			//	lw		t6, $00c0(sp)		# 00072d20:8fae00c0	
			//	lui		a0, $8014		# 00072d24:3c048014	a0=$80140000
			//	addiu		a0, a0, $1130		# 00072d28:24841130	a0=$80141130
			//	slt		at, t6, s1		# 00072d2c:01d1082a	
			//	beq		at, zero, $00072d3c	# 00072d30:10200002	v __00072d3c
			//	nop					# 00072d34:00000000	
			//	sw		s1, $00c0(sp)		# 00072d38:afb100c0	
			//__00072d3c:					# 
			//	lw		t7, $bb34(t7)		# 00072d3c:8defbb34	t7=$8005bb34
			//	lui		at, $ffff		# 00072d40:3c01ffff	at=$ffff0000
			//	ori		at, at, $0b00		# 00072d44:34210b00	at=$ffff0b00
			//	subu		s1, t7, t2		# 00072d48:01ea8823	s1=$00014970
			//	addu		s1, s1, at		# 00072d4c:02218821	s1=$00005470
			//	sra		t9, s1, 4		# 00072d50:0011c903	
			//	slti		at, t9, $0ed9		# 00072d54:2b210ed9	
			//	bne		at, zero, $00072d84	# 00072d58:1420000a	v __00072d84
			//	or		s1, t9, zero		# 00072d5c:03208825	s1=$00000547
			//	jal		$0001cc6c		# 00072d60:0c00731b	^ FNC_0001cc6c
			//	addiu		a1, t9, $f128		# 00072d64:2725f128	a1=$fffff66f
			N64.fnc0001cc6c("VtxList overflowed by %d");
			//	addiu		t8, zero, $0002		# 00072d68:24180002	t8=$00000002
			//	sb		t8, $0000(s5)		# 00072d6c:a2b80000	
			//	lui		t2, $8006		# 00072d70:3c0a8006	t2=$80060000
			//	lui		v0, $8015		# 00072d74:3c028015	v0=$80150000
			//	lw		v0, $9380(v0)		# 00072d78:8c429380	v0=$80149380
			//	beq		zero, zero, $00072db0	# 00072d7c:1000000c	v __00072db0
			//	lw		t2, $bb20(t2)		# 00072d80:8d4abb20	t2=$8005bb20
			//__00072d84:					# 
			//	slti		at, s1, $0e1b		# 00072d84:2a210e1b	
			//	bne		at, zero, $00072db0	# 00072d88:14200009	v __00072db0
			//	lui		a0, $8014		# 00072d8c:3c048014	a0=$80140000
			//	jal		$0001cc6c		# 00072d90:0c00731b	^ FNC_0001cc6c
			//	addiu		a0, a0, $114c		# 00072d94:2484114c	a0=$8014114c
			N64.fnc0001cc6c("VtxList about to overflow!");
			//	addiu		t6, zero, $0001		# 00072d98:240e0001	t6=$00000001
			//	sb		t6, $0000(s5)		# 00072d9c:a2ae0000	
			//	lui		t2, $8006		# 00072da0:3c0a8006	t2=$80060000
			//	lui		v0, $8015		# 00072da4:3c028015	v0=$80150000
			//	lw		v0, $9380(v0)		# 00072da8:8c429380	v0=$80149380
			//	lw		t2, $bb20(t2)		# 00072dac:8d4abb20	t2=$8005bb20
			//__00072db0:					# 
			//	beq		v0, zero, $00072dcc	# 00072db0:10400006	v __00072dcc
			//	lui		t6, $8006		# 00072db4:3c0e8006	t6=$80060000
			//	lui		v1, $8015		# 00072db8:3c038015	v1=$80150000
			//	addiu		v1, v1, $938c		# 00072dbc:2463938c	v1=$8014938c
			//	lw		t7, $0000(v1)		# 00072dc0:8c6f0000	t7=$8014938c
			//	addu		t9, t7, s1		# 00072dc4:01f1c821	
			//	sw		t9, $0000(v1)		# 00072dc8:ac790000	[8014938c]
			//__00072dcc:					# 
			//	lw		t8, $00bc(sp)		# 00072dcc:8fb800bc	
			//	lui		a0, $8014		# 00072dd0:3c048014	a0=$80140000
			//	addiu		a0, a0, $1168		# 00072dd4:24841168	a0=$80141168
			//	slt		at, t8, s1		# 00072dd8:0311082a	
			//	beq		at, zero, $00072de8	# 00072ddc:10200002	v __00072de8
			//	nop					# 00072de0:00000000	
			//	sw		s1, $00bc(sp)		# 00072de4:afb100bc	
			//__00072de8:					# 
			//	lw		t6, $bb38(t6)		# 00072de8:8dcebb38	t6=$8005bb38
			//	lui		at, $fffe		# 00072dec:3c01fffe	at=$fffe0000
			//	ori		at, at, $1d80		# 00072df0:34211d80	at=$fffe1d80
			//	subu		s1, t6, t2		# 00072df4:01ca8823	s1=$0001ed00
			//	addu		s1, s1, at		# 00072df8:02218821	s1=$00000a80
			//	sra		t7, s1, 6		# 00072dfc:00117983	
			//	slti		at, t7, $0123		# 00072e00:29e10123	
			//	bne		at, zero, $00072e28	# 00072e04:14200008	v __00072e28
			//	or		s1, t7, zero		# 00072e08:01e08825	s1=$0000002a
			//	jal		$0001cc6c		# 00072e0c:0c00731b	^ FNC_0001cc6c
			//	addiu		a1, t7, $fede		# 00072e10:25e5fede	a1=$ffffff08
			N64.fnc0001cc6c("MtxList overflowed by %d");
			//	addiu		t9, zero, $0002		# 00072e14:24190002	t9=$00000002
			//	sb		t9, $0000(s5)		# 00072e18:a2b90000	
			//	lui		v0, $8015		# 00072e1c:3c028015	v0=$80150000
			//	beq		zero, zero, $00072e4c	# 00072e20:1000000a	v __00072e4c
			//	lw		v0, $9380(v0)		# 00072e24:8c429380	v0=$80149380
			//__00072e28:					# 
			//	slti		at, s1, $0115		# 00072e28:2a210115	
			//	bne		at, zero, $00072e4c	# 00072e2c:14200007	v __00072e4c
			//	lui		a0, $8014		# 00072e30:3c048014	a0=$80140000
			//	jal		$0001cc6c		# 00072e34:0c00731b	^ FNC_0001cc6c
			//	addiu		a0, a0, $1184		# 00072e38:24841184	a0=$80141184
			N64.fnc0001cc6c("MtxList about to overflow!");
			//	addiu		t8, zero, $0001		# 00072e3c:24180001	t8=$00000001
			//	sb		t8, $0000(s5)		# 00072e40:a2b80000	
			//	lui		v0, $8015		# 00072e44:3c028015	v0=$80150000
			//	lw		v0, $9380(v0)		# 00072e48:8c429380	v0=$80149380
			//__00072e4c:					# 
			//	beq		v0, zero, $00072e64	# 00072e4c:10400005	v __00072e64
			//	lui		v1, $8015		# 00072e50:3c038015	v1=$80150000
			//	addiu		v1, v1, $9390		# 00072e54:24639390	v1=$80149390
			//	lw		t6, $0000(v1)		# 00072e58:8c6e0000	t6=$80149390
			//	addu		t7, t6, s1		# 00072e5c:01d17821	
			//	sw		t7, $0000(v1)		# 00072e60:ac6f0000	[80149390]
			//__00072e64:					# 
			//	lw		t9, $00b8(sp)		# 00072e64:8fb900b8	
			//	lui		v1, $8015		# 00072e68:3c038015	v1=$80150000
			//	addiu		v1, v1, $9380		# 00072e6c:24639380	v1=$80149380
			//	slt		at, t9, s1		# 00072e70:0331082a	
			//	beq		at, zero, $00072e80	# 00072e74:10200002	v __00072e80
			//	lui		t7, $8004		# 00072e78:3c0f8004	t7=$80040000
			//	sw		s1, $00b8(sp)		# 00072e7c:afb100b8	
			//__00072e80:					# 
			//	beq		v0, zero, $00072ea0	# 00072e80:10400007	v __00072ea0
			//	addiu		t8, v0, $ffff		# 00072e84:2458ffff	
			//	sw		t8, $0000(v1)		# 00072e88:ac780000	[80149380]
			//	bne		t8, zero, $00072ea0	# 00072e8c:17000004	v __00072ea0
			//	or		v0, t8, zero		# 00072e90:03001025	
			//	addiu		t6, zero, $012c		# 00072e94:240e012c	t6=$0000012c
			//	lui		at, $8015		# 00072e98:3c018015	at=$80150000
			//	sw		t6, $9394(at)		# 00072e9c:ac2e9394	[80149394]
			//__00072ea0:					# 
			//	lhu		t7, $758e(t7)		# 00072ea0:95ef758e	t7=$8004758e
			//	lui		v1, $8015		# 00072ea4:3c038015	v1=$80150000
			//	addiu		v1, v1, $9380		# 00072ea8:24639380	v1=$80149380
			//	andi		t9, t7, $2000		# 00072eac:31f92000	
			//	beq		t9, zero, $00072eec	# 00072eb0:1320000e	v __00072eec
			//	nop					# 00072eb4:00000000	
			//	bne		v0, zero, $00072eec	# 00072eb8:1440000c	v __00072eec
			//	addiu		t8, zero, $0064		# 00072ebc:24180064	t8=$00000064
			if ((controllerTwoButtonState & N64.Buttons.Z) != 0 && v0 == 0)
			{
				//	sw		t8, $0000(v1)		# 00072ec0:ac780000	[80149380]
				//	lui		at, $8015		# 00072ec4:3c018015	at=$80150000
				//	sw		zero, $9394(at)		# 00072ec8:ac209394	[80149394]
				//	lui		at, $8015		# 00072ecc:3c018015	at=$80150000
				//	sw		zero, $9384(at)		# 00072ed0:ac209384	[80149384]
				//	lui		at, $8015		# 00072ed4:3c018015	at=$80150000
				//	sw		zero, $9388(at)		# 00072ed8:ac209388	[80149388]
				//	lui		at, $8015		# 00072edc:3c018015	at=$80150000
				//	sw		zero, $938c(at)		# 00072ee0:ac20938c	[8014938c]
				//	lui		at, $8015		# 00072ee4:3c018015	at=$80150000
				//	sw		zero, $9390(at)		# 00072ee8:ac209390	[80149390]
			}
			//__00072eec:					# 
			//	jal		$00073b78		# 00072eec:0c01cede	v FNC_00073b78
			//	nop					# 00072ef0:00000000	
			fnc00073b78();
			//	lw		v0, $0000(s4)		# 00072ef4:8e820000	
			//	lui		a1, $8015		# 00072ef8:3c058015	a1=$80150000
			//	beq		v0, zero, $0007313c	# 00072efc:1040008f	v __0007313c
			//	nop					# 00072f00:00000000	
			//	lh		a1, $93d8(a1)		# 00072f04:84a593d8	a1=$801493d8
			//	addiu		at, zero, $0002		# 00072f08:24010002	at=$00000002
			//	beq		s6, a1, $00072f1c	# 00072f0c:12c50003	v __00072f1c
			//	nop					# 00072f10:00000000	
			//	bne		a1, at, $00072f28	# 00072f14:14a10004	v __00072f28
			//	nop					# 00072f18:00000000	
			//__00072f1c:					# 
			//	jal		$000e7b20		# 00072f1c:0c039ec8	v FNC_000e7b20
			//	lw		a0, $0000(s7)		# 00072f20:8ee40000	
			fnc000e7b20();
			//	lw		v0, $0000(s4)		# 00072f24:8e820000	
			//__00072f28:					# 
			//	bne		s6, v0, $00073134	# 00072f28:16c20082	v __00073134
			//	lui		t6, $8016		# 00072f2c:3c0e8016	t6=$80160000
			//	lw		t6, $9320(t6)		# 00072f30:8dce9320	t6=$80159320
			//	lui		t9, $8016		# 00072f34:3c198016	t9=$80160000
			//	lui		v0, $8015		# 00072f38:3c028015	v0=$80150000
			//	sll		t7, t6, 13		# 00072f3c:000e7b40	
			//	bgez		t7, $00073118		# 00072f40:05e10075	v __00073118
			//	nop					# 00072f44:00000000	
			//	lw		t9, $8ff4(t9)		# 00072f48:8f398ff4	t9=$80158ff4
			//	lui		s0, $8005		# 00072f4c:3c108005	s0=$80050000
			//	beq		t9, zero, $00073118	# 00072f50:13200071	v __00073118
			//	nop					# 00072f54:00000000	
			//	lw		s0, $2b2c(s0)		# 00072f58:8e102b2c	s0=$80052b2c
			//	lui		at, $4080		# 00072f5c:3c014080	at=$40800000
			//	mtc1		at, $f0			# 00072f60:44810000	
			//	lwc1		$f8, $0000(s0)		# 00072f64:c6080000	[80052ae8]
			//	lwc1		$f10, $000c(s0)		# 00072f68:c60a000c	[80052af4]
			//	lwc1		$f6, $0008(s0)		# 00072f6c:c6060008	[80052af0]
			//	sub.s		$f16, $f8, $f10		# 00072f70:460a4401	
			//	lwc1		$f8, $0014(s0)		# 00072f74:c6080014	[80052afc]
			//	div.s		$f18, $f16, $f0		# 00072f78:46008483	
			//	sub.s		$f10, $f6, $f8		# 00072f7c:46083281	
			//	div.s		$f16, $f10, $f0		# 00072f80:46005403	
			//	(cop1_s)	$0200910d		# 00072f84:4600910d	
			//	mfc1		v1, $f4			# 00072f88:44032000	
			//	nop					# 00072f8c:00000000	
			//	multu		v1, v1			# 00072f90:00630019	
			//	mflo		t7			# 00072f94:00007812	
			//	(cop1_s)	$0200848d		# 00072f98:4600848d	
			//	mfc1		a0, $f18		# 00072f9c:44049000	
			//	nop					# 00072fa0:00000000	
			//	multu		a0, a0			# 00072fa4:00840019	
			//	mflo		t9			# 00072fa8:0000c812	
			//	addu		t8, t7, t9		# 00072fac:01f9c021	
			//	mtc1		t8, $f4			# 00072fb0:44982000	
			//	jal		$0001d940		# 00072fb4:0c007650	^ FNC_0001d940
			//	cvt.s.w		$f12, $f4		# 00072fb8:46802320	
			N64.sqrtf();
			//	lui		v0, $8016		# 00072fbc:3c028016	v0=$80160000
			//	lw		v0, $8ff4(v0)		# 00072fc0:8c428ff4	v0=$80158ff4
			//	lui		s0, $8005		# 00072fc4:3c108005	s0=$80050000
			//	lw		s0, $2b2c(s0)		# 00072fc8:8e102b2c	s0=$80052b2c
			//	lh		t7, $0000(v0)		# 00072fcc:844f0000	t7=$80159000
			//	lui		at, $4080		# 00072fd0:3c014080	at=$40800000
			//	lwc1		$f8, $0000(s0)		# 00072fd4:c6080000	[80052ae8]
			//	mtc1		t7, $f10		# 00072fd8:448f5000	
			//	mtc1		at, $f2			# 00072fdc:44811000	
			//	lh		t8, $0004(v0)		# 00072fe0:84580004	t8=$80159004
			//	cvt.s.w		$f16, $f10		# 00072fe4:46805420	
			//	lwc1		$f10, $0008(s0)		# 00072fe8:c60a0008	[80052af0]
			//	(cop1_s)	$0200018d		# 00072fec:4600018d	
			//	sub.s		$f18, $f8, $f16		# 00072ff0:46104481	
			//	mtc1		t8, $f8			# 00072ff4:44984000	
			//	mfc1		s1, $f6			# 00072ff8:44113000	
			//	div.s		$f4, $f18, $f2		# 00072ffc:46029103	
			//	cvt.s.w		$f16, $f8		# 00073000:46804420	
			//	sub.s		$f18, $f10, $f16	# 00073004:46105481	
			//	(cop1_s)	$0200218d		# 00073008:4600218d	
			//	div.s		$f4, $f18, $f2		# 0007300c:46029103	
			//	mfc1		v1, $f6			# 00073010:44033000	
			//	nop					# 00073014:00000000	
			//	multu		v1, v1			# 00073018:00630019	
			//	mflo		t7			# 0007301c:00007812	
			//	(cop1_s)	$0200218d		# 00073020:4600218d	
			//	mfc1		a0, $f6			# 00073024:44043000	
			//	nop					# 00073028:00000000	
			//	multu		a0, a0			# 0007302c:00840019	
			//	mflo		t9			# 00073030:0000c812	
			//	addu		t8, t7, t9		# 00073034:01f9c021	
			//	mtc1		t8, $f8			# 00073038:44984000	
			//	jal		$0001d940		# 0007303c:0c007650	^ FNC_0001d940
			//	cvt.s.w		$f12, $f8		# 00073040:46804320	
			N64.sqrtf();
			//	lui		t8, $8016		# 00073044:3c188016	t8=$80160000
			//	lw		t8, $8ff4(t8)		# 00073048:8f188ff4	t8=$80158ff4
			//	(cop1_s)	$0200028d		# 0007304c:4600028d	
			//	lui		t9, $8005		# 00073050:3c198005	t9=$80050000
			//	lh		t6, $0002(t8)		# 00073054:870e0002	t6=$80159002
			//	lw		t9, $2b2c(t9)		# 00073058:8f392b2c	t9=$80052b2c
			//	mfc1		t7, $f10		# 0007305c:440f5000	
			//	mtc1		t6, $f4			# 00073060:448e2000	
			//	lwc1		$f18, $0004(t9)		# 00073064:c7320004	[80052aec]
			//	mtc1		t7, $f16		# 00073068:448f8000	
			//	cvt.s.w		$f6, $f4		# 0007306c:468021a0	
			//	cvt.s.w		$f12, $f16		# 00073070:46808320	
			//	jal		$00003824		# 00073074:0c000e09	^ FNC_00003824
			//	sub.s		$f14, $f18, $f6		# 00073078:46069381	
			N64.fnc00003824();
			//	sll		s0, v0, 16		# 0007307c:00028400	
			//	sra		t7, s0, 16		# 00073080:00107c03	
			//	or		s0, t7, zero		# 00073084:01e08025	
			//	jal		$0001d980		# 00073088:0c007660	^ FNC_0001d980
			//	andi		a0, v0, $ffff		# 0007308c:3044ffff	
			N64.sins();
			//	addiu		t9, zero, $4000		# 00073090:24194000	t9=$00004000
			//	subu		a0, t9, s0		# 00073094:03302023	
			//	andi		t8, a0, $ffff		# 00073098:3098ffff	
			//	or		a0, t8, zero		# 0007309c:03002025	
			//	jal		$0001d980		# 000730a0:0c007660	^ FNC_0001d980
			//	sh		v0, $006a(sp)		# 000730a4:a7a2006a	
			N64.sins();
			//	lh		t6, $006a(sp)		# 000730a8:87ae006a	
			//	lui		at, $40e0		# 000730ac:3c0140e0	at=$40e00000
			//	mtc1		at, $f5			# 000730b0:44812800	
			//	mtc1		t6, $f8			# 000730b4:448e4000	
			//	mtc1		zero, $f4		# 000730b8:44802000	
			//	mtc1		s1, $f6			# 000730bc:44913000	
			//	cvt.s.w		$f10, $f8		# 000730c0:468042a0	
			//	(cop1_w)	$02803221		# 000730c4:46803221	
			//	(cop1_s)	$02005421		# 000730c8:46005421	
			//	(cop1)		$02248483		# 000730cc:46248483	
			//	mtc1		v0, $f16		# 000730d0:44828000	
			//	nop					# 000730d4:00000000	
			//	cvt.s.w		$f4, $f16		# 000730d8:46808120	
			//	(cop1_s)	$020021a1		# 000730dc:460021a1	
			//	(cop1)		$02324282		# 000730e0:46324282	
			//	mtc1		zero, $f8		# 000730e4:44804000	
			//	mtc1		at, $f9			# 000730e8:44814800	
			//	lui		at, $8015		# 000730ec:3c018015	at=$80150000
			//	(cop1)		$02283483		# 000730f0:46283483	
			//	(cop1)		$02325403		# 000730f4:46325403	
			//	(cop1)		$02208107		# 000730f8:46208107	
			//	(cop1)		$0220218d		# 000730fc:4620218d	
			//	mfc1		t9, $f6			# 00073100:44193000	
			//	nop					# 00073104:00000000	
			//	sh		t9, $93da(at)		# 00073108:a43993da	
			//	lui		at, $8015		# 0007310c:3c018015	at=$80150000
			//	beq		zero, zero, $00073134	# 00073110:10000008	v __00073134
			//	sw		s6, $93d0(at)		# 00073114:ac3693d0	[801493d0]
			//__00073118:					# 
			//	lh		v0, $93da(v0)		# 00073118:844293da	
			//	lui		at, $8015		# 0007311c:3c018015	at=$80150000
			//	sra		t8, v0, 2		# 00073120:0002c083	
			//	subu		t6, v0, t8		# 00073124:00587023	
			//	sh		t6, $93da(at)		# 00073128:a42e93da	[801493da]
			//	lui		at, $8015		# 0007312c:3c018015	at=$80150000
			//	sw		zero, $93d0(at)		# 00073130:ac2093d0	[801493d0]
			//__00073134:					# 
			//	jal		$000959dc		# 00073134:0c025677	v FNC_000959dc
			//	nop					# 00073138:00000000	
			fnc000959dc();
			//__0007313c:					# 
			//	lui		a0, $8007		# 0007313c:3c048007	a0=$80070000
			//	lui		a1, $8003		# 00073140:3c058003	a1=$80030000
			//	addiu		a1, a1, $14cc		# 00073144:24a514cc	a1=$800314cc
			//	addiu		a0, a0, $a8b0		# 00073148:2484a8b0	a0=$8006a8b0
			//	jal		$0001c3d0		# 0007314c:0c0070f4	^ FNC_0001c3d0
			//	or		a2, s6, zero		# 00073150:02c03025	
			N64.osSendMesg(0x8006a8b0, 0x800314cc, N64.OsMesgFlag.OS_MESG_BLOCK);
			//	lw		t7, $00e0(sp)		# 00073154:8faf00e0	
			//	beq		t7, zero, $0007220c	# 00073158:11e0fc2c	^ __0007220c
			//	nop					# 0007315c:00000000	
		} while();
		//	addiu		t9, zero, $0003		# 00073160:24190003	t9=$00000003
		//	lui		at, $8005		# 00073164:3c018005	at=$80050000
		//	sb		t9, $2aca(at)		# 00073168:a0392aca	[80052aca]
		//	addiu		t8, zero, $000f		# 0007316c:2418000f	t8=$0000000f
		//	jal		$000ea5b8		# 00073170:0c03a96e	v FNC_000ea5b8
		//	sw		t8, $0000(s4)		# 00073174:ae980000	
		fnc000ea5b8();
		//	jal		$0001599c		# 00073178:0c005667	^ FNC_0001599c
		//	nop					# 0007317c:00000000	
		N64.fnc0001599c();
		//	lw		ra, $0044(sp)		# 00073180:8fbf0044	
		//	lw		s0, $0024(sp)		# 00073184:8fb00024	
		//	lw		s1, $0028(sp)		# 00073188:8fb10028	
		//	lw		s2, $002c(sp)		# 0007318c:8fb2002c	
		//	lw		s3, $0030(sp)		# 00073190:8fb30030	
		//	lw		s4, $0034(sp)		# 00073194:8fb40034	
		//	lw		s5, $0038(sp)		# 00073198:8fb50038	
		//	lw		s6, $003c(sp)		# 0007319c:8fb6003c	
		//	lw		s7, $0040(sp)		# 000731a0:8fb70040	
		//	jr		ra			# 000731a4:03e00008	
		//	addiu		sp, sp, $00e8		# 000731a8:27bd00e8	
	}

	/// Possible file boundary

	// RAM 000731b0
	static void enableCheatAnnul() {
		fnc00088760();
	}

	// RAM 000732c8
	static void enableCheatFarewell() {
	}

	// RAM 000732e0
	static void enableCheatArsenal() {
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
	}

	// RAM 00073428
	static void enableCheatDurable() {
		fnc000fd410();
	}

	// RAM GREECE
	/// while cheat wander is active ?
	static void fnc000734ac() {
		fnc000fb44c();
		fnc000f9fac();
		fnc000fb468();
		fnc000fb484();
		fnc000fb430();
		fnc000762a8();
	}

	// RAM 0007364c
	static void enableCheatWander() {
		fnc0007622c();
	}

	// RAM 00073670
	static void enableCheatSnared() {
	}

	// RAM 0007367c
	static void enableCheatFreed() {
	}

	// RAM 0007368c
	static void enableCheatAlfa() {
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
	}

	// RAM 0007377c
	static void enableCheatSnuffle() {
	}

	// RAM 00073794
	static void enableCheatAward() {
	}

	// RAM 000737a4
	static void enableCheatSurreal() {
	}

	// RAM 000737bc
	static void enableCheatDefender() {
		fnc000e5cf4();
		fnc000e5e3c();
	}

	// RAM 00073814
	static void enableCheatBleed() {
		fnc00124118();
	}

	// RAM 0007383c
	static void enableCheatSuffer() {
		fnc00087aac();
		fnc000afba4();
	}

	// RAM 0007391c
	static void enableCheatWeasel() {
	}

	// RAM 00073934
	static void enableCheatUseful() {
	}

	// RAM 000739b8
	static void enableCheatDwarf() {
	}

	// RAM 000739c8
	static void enableCheatBanana() {
	}

	// RAM 000739d8
	static void enableCheatDundee() {
		guess_attemptDoAnimation();
	}

	// RAM 000739f8
	static void enableCheatLard() {
	}

	// RAM 00073a08
	static void enableCheatFeeble() {
	}

	// RAM 00073a20
	static void addCharToCheatInputBuffer() {
	}

	// RAM GREECE
	static void initCheating() {
		N64.fnc00002ab4();
	}

	// RAM 00073b30
	static void activateCheat(int cheatNumber) {
		N64.fnc0001a650();
	}

	// RAM GREECE
	static void fnc00073b78() {
		addCharToCheatInputBuffer();
		addCharToCheatInputBuffer();
		addCharToCheatInputBuffer();
		addCharToCheatInputBuffer();
		addCharToCheatInputBuffer();
		addCharToCheatInputBuffer();
		addCharToCheatInputBuffer();
		addCharToCheatInputBuffer();
		addCharToCheatInputBuffer();
		addCharToCheatInputBuffer();
		addCharToCheatInputBuffer();
		activateCheat();
		initCheating();
	}

	// RAM GREECE
	static void fnc00073dc0() {
		fnc000fd858();
		activateCheat();
		N64.fnc00007728();
		fnc0007956c();
		fnc000af764();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000a8a68();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		N64.fnc000072cc();
		level.Start();
		N64.fnc00018d7c();
	}

	// RAM GREECE
	static void fnc00074204() {
	}

	// RAM GREECE
	static void fnc0007447c() {
	}

	// RAM GREECE
	static void fnc000744e0() {
	}

	// RAM GREECE
	static void fnc00074500() {
	}

	// RAM GREECE
	static void fnc0007452c() {
	}

	// RAM GREECE
	static void fnc00074558() {
	}

	// RAM GREECE
	static void fnc00074578() {
		fnc00074500();
		fnc0007452c();
		fnc0007452c();
		fnc0007452c();
	}

	// RAM GREECE
	static void fnc000745f0() {
		fnc00074578();
	}

	// RAM GREECE
	static void fnc0007463c() {
		N64.fnc0001cc6c();
		fnc00074500();
		fnc0007452c();
		fnc00074558();
		fnc00074500();
		fnc000745f0();
	}

	// RAM GREECE
	static void fnc000746f8() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc00074768() {
		fnc0007452c();
	}

	// RAM GREECE
	static void fnc000747a8() {
		fnc00074558();
		fnc00074500();
		N64.fnc0001cc6c();
		fnc00074578();
		fnc00074558();
		N64.fnc000038e0();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc00074970() {
		fnc00074558();
		fnc00074500();
		fnc00074500();
		fnc00074500();
		fnc00074558();
		N64.fnc000078e4();
	}

	// RAM GREECE
	static void fnc00074b2c() {
		fnc00074558();
		fnc00074500();
		N64.fnc0001cc6c();
		fnc00074578();
		fnc00074558();
	}

	// RAM GREECE
	static void fnc00074ca0() {
		fnc00074558();
		N64.fnc0001cc6c();
		fnc00074558();
		fnc00074500();
		fnc00074558();
		fnc0007447c();
		fnc00074578();
		fnc00074500();
		fnc0007452c();
		fnc00074500();
		N64.fnc0001cc6c();
		fnc00074578();
		fnc00074578();
		fnc00074500();
		fnc00074500();
		fnc0007452c();
		fnc00074500();
		fnc0007452c();
		fnc0007452c();
		N64.fnc0001cc6c();
		fnc00074500();
		N64.fnc0001cc6c();
		fnc00074558();
	}

	// RAM GREECE
	static void fnc00074fa8() {
		N64.fnc0001cc6c();
		fnc00074558();
		fnc00074500();
		fnc00074ca0();
		fnc00074500();
		fnc00074500();
	}

	// RAM GREECE
	static void fnc00075148() {
		fnc00074558();
		fnc000744e0();
		fnc0007463c();
		fnc00074558();
		fnc000744e0();
		fnc000746f8();
	}

	// RAM GREECE
	static void fnc00075210() {
		fnc00074558();
		fnc000744e0();
		fnc0007463c();
		fnc00074558();
		fnc000744e0();
		fnc000746f8();
	}

	// RAM GREECE
	static void fnc000752d8() {
		fnc00074558();
		fnc000744e0();
		fnc0007463c();
		fnc00074558();
		fnc000744e0();
		fnc000746f8();
	}

	// RAM GREECE
	static void fnc000753a0() {
		fnc00074558();
		fnc00074500();
		fnc00074500();
		fnc0007452c();
		fnc00074500();
		fnc00074558();
		fnc00074500();
		fnc00074500();
		fnc00074500();
		fnc0007452c();
		fnc00074500();
		fnc00074ca0();
		N64.fnc0001cc6c();
		fnc00074500();
		fnc00074500();
		fnc00074500();
		fnc00074500();
		fnc0007452c();
		fnc00074ca0();
		fnc00074500();
		fnc00074500();
		fnc0007452c();
		fnc00074558();
	}

	// RAM GREECE
	static void fnc00075574() {
		fnc00074558();
		fnc00074500();
		fnc00074500();
		fnc00074558();
	}

	// RAM GREECE
	static void fnc000755e0() {
		fnc00074204();
	}

	// RAM GREECE
	static void fnc0007562c() {
		fnc00076208();
		N64.fnc000078e4();
	}

	// RAM 000756dc
	static void guess_initMissions()
	{
		x801494b8 = &x80224680;
		fnc00074204();
		ubyte v0 = fnc00074558();
		if (v0 != 0xa8 && x801494bc != 0x90 && x801494bc != 0xb0 )
		{
			N64.fnc0001cc6c("**** ERROR: NOT A MISSION FILE ****\n");
		}
		else
		{
			v0 = fnc00074558();
			while (v0 == 0xa8)
			{
				fnc00074500();
				fnc00074768();
				v0 = fnc00074558();
			}
			v0 = fnc00074558();
			if (v0 == 0x87)
			{
				fnc00074500();
			}
			v0 = fnc00074558();
			while (v0 == 0xb0)
			{
				fnc00074500();
				fnc000747a8();
				v0 = fnc00074558();
			}
			v0 = fnc00074558();
			if (v0 == 0x87)
			{
				fnc00074500();
			}
			v0 = fnc00074558();
			while (v0 != 0x87)
			{
				x80149470++;
				v0 = fnc00074558();
				if (v0 == 0x90)
				{
					fnc00074970();
				}
				else
				{
					N64.fnc000078cc(numberOfMissions, &x8004d15c);
				}
				fnc00074b2c();
				fnc00074fa8();
				v0 = fnc00074558();
				if (v0 == 0x84)
				{
					fnc00074500();
					fnc00075148();
				}
				v0 = fnc00074558();
				if (v0 == 0x85)
				{
					fnc00074500();
					fnc00075210();
				}
				v0 = fnc00074558();
				if (v0 == 0x86)
				{
					fnc00074500();
					fnc000752d8();
				}
				numberOfMissions++;
				if (numberOfMissions >= 0x19)
				{
					N64.fnc0001cc6c("**** ERROR: TOO MANY MISSIONS ****\n");
					x80149b4a = 1;
				}
				v0 = fnc00074558();
			}
			fnc00074500();
			fnc000753a0();
			fnc00074500();
			fnc00075574();
			if (x80149b4a != 0)
			{
				N64.fnc0001cc6c("\n");
				N64.fnc0001cc6c("Number of Missions: %4d out of %d\n", numberOfMissions, 24);
				N64.fnc0001cc6c("  Mission Conditions: %4d out of %d\n", numberOfMissionConditions, 128);
				N64.fnc0001cc6c("  Dialogue Conditions: %4d out of %d\n", numberOfDialogueConditions, 64);
				N64.fnc0001cc6c("     Game Conditions: %4d out of %d\n", numberOfGameConditions, 255);
				N64.fnc0001cc6c("           Commands: %4d out of %d\n", numberOfCommands, 254);
				N64.fnc0001cc6c("     Map information: %4d out of %d\n", numberOfMapInfos, 64);
				N64.fnc0001cc6c("      Random objects: %4d out of %d\n", numberOfRandomObjects, 16);
				N64.fnc0001cc6c("     Command objects: %4d out of %d\n", numberOfCommandObjects, 16);
				N64.fnc0001cc6c("          Characters: %4d out of %d\n", numberOfCharacters, 16);
				N64.fnc0001cc6c("Size of mission data: %4d out of %d\n", x801494b8 - &x80224680, 2048);
			}
			
		}
		if ((currentLevel - 1) < 5)
		{
			switch (currentLevel - 1)
			{
				default:
					break;
				case 0:
					level.Start(0x12, 0);
					break;
				case 1:
					level.Start(0x13, 0);
					break;
				case 2:
				case 3:
				case 4:
					level.Start(0, 0);
					break;
			}
		}
	}

	// RAM GREECE
	static void fnc00075aa4() {
		level.Start();
		N64.fnc0000726c();
		fnc001393a0();
		guess_giveItem();
		N64.fnc00008674();
		N64.fnc000078b8();
		N64.fnc000078b8();
		N64.fnc000078b8();
		N64.fnc000078b8();
		N64.fnc000081d4();
		N64.fnc000078b8();
		N64.fnc0001a598();
		N64.fnc00013458();
		N64.fnc000078cc();
		fnc00073dc0();
		fnc0007643c();
		fnc000765c4();
	}

	// RAM GREECE
	static void fnc00075e50() {
		fnc000e5cf4();
		fnc000fad10();
	}

	// RAM GREECE
	static void fnc00076088() {
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
	}

	// RAM GREECE
	static void fnc00076208() {
		N64.fnc000078b8();
	}

	// RAM GREECE
	static void fnc0007622c() {
	}

	// RAM GREECE
	static void fnc000762a8() {
	}

	// RAM GREECE
	static void fnc000762cc() {
	}

	// RAM GREECE
	static void fnc000762e0() {
		fnc00076208();
		N64.fnc000078e4();
		N64.fnc000078cc();
		fnc00073dc0();
	}

	// RAM GREECE
	static void fnc00076390() {
		fnc00076208();
		N64.fnc000078e4();
		N64.fnc000078cc();
		fnc00073dc0();
		N64.fnc00013460();
	}

	// RAM GREECE
	static void fnc0007643c() {
		N64.fnc000078b8();
		N64.fnc000078b8();
		N64.fnc0001a650();
		N64.fnc0001a598();
		fnc00073dc0();
		N64.fnc000078e4();
		N64.fnc000078cc();
	}

	// RAM GREECE
	static void fnc000765c4() {
		N64.fnc000078b8();
		N64.fnc000078b8();
		N64.fnc0001a650();
		N64.fnc0001a598();
		fnc00073dc0();
		N64.fnc000078e4();
		N64.fnc000078cc();
		N64.fnc00013460();
	}

	// RAM GREECE
	static void fnc00076754() {
		fnc0007643c();
	}

	// RAM GREECE
	static void fnc0007679c(ubyte a0) {
		fnc00073dc0();
		N64.fnc000078cc();
	}

	// RAM GREECE
	static void fnc00076820() {
	}

	/// Possible file boundary

	// RAM GREECE
	static void fnc00076830() {
	}

	// RAM GREECE
	static void fnc00076868() {
		fnc000769a8();
	}

	// RAM GREECE
	static void fnc00076918() {
		fnc000769a8();
	}

	// RAM GREECE
	static void fnc000769a8() {
	}

	// RAM GREECE
	static void fnc00076a10() {
		fnc00076830();
		fnc000b84d0();
		N64.fnc000039d0();
		fnc000b84d0();
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc00076fcc() {
		fnc00076a10();
	}

	// RAM 000770d8
	static void fellTree() {
		N64.sins();
		N64.coss();
		N64.guRotate();
		N64.guScale();
	}

	// RAM GREECE
	static void fnc000772ec() {
		N64.sins();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
	}

	// RAM 0007764c
	static void displayTrees() {
		fellTree();
		fnc000772ec();
		fnc000769a8();
		fnc00076868();
		fnc00076a10();
		fnc00076a10();
		fnc00076a10();
		fnc00076a10();
		fnc00076a10();
		fnc00076868();
		fnc00076a10();
		fnc00076a10();
		fnc00076a10();
		fnc00076a10();
		fnc00076a10();
		fnc00076868();
		fnc00076a10();
		fnc00076a10();
		fnc00076a10();
		fnc00076a10();
		fnc00076a10();
		fnc00076868();
		fnc00076a10();
		fnc00076a10();
		fnc00076a10();
		fnc00076a10();
		fnc00076a10();
	}

	// RAM GREECE
	static void fnc00078530() {
	}

	// RAM GREECE
	static void fnc0007858c() {
	}

	// RAM GREECE
	static void fnc000785b4() {
	}

	// RAM GREECE
	static void fnc00078624() {
	}

	// RAM GREECE
	static void fnc00078678() {
	}

	// RAM GREECE
	static void fnc000786c4() {
	}

	// RAM GREECE
	static void fnc000786cc() {
	}

	// RAM GREECE
	static void fnc000786ec() {
	}

	// RAM GREECE
	static void fnc00078720() {
		fnc000785b4();
		fnc000786ec();
		fnc000785b4();
		fnc000786ec();
		fnc000785b4();
		fnc000786ec();
		fnc000785b4();
		fnc000786ec();
	}

	// RAM GREECE
	static void fnc00078828() {
		fnc000785b4();
		fnc00078bc8();
		fnc000786cc();
		fnc000b84d0();
		N64.coss();
		N64.sins();
		fnc000b84d0();
		N64.fnc00003824();
		fnc00076918();
		fnc00076918();
		fnc000786cc();
	}

	// RAM GREECE
	static void fnc00078b58() {
		fnc000785b4();
	}

	// RAM GREECE
	static void fnc00078bc8() {
	}

	// RAM GREECE
	static void fnc00078c40() {
	}

	// RAM GREECE
	static void fnc00078c80() {
	}

	// RAM GREECE
	static void fnc00078cbc() {
	}

	// RAM GREECE
	static void fnc00078cec() {
	}

	// RAM GREECE
	static void fnc00078d1c() {
	}

	// RAM GREECE
	static void fnc00078d4c() {
	}

	// RAM GREECE
	static void fnc00078d64() {
	}

	// RAM GREECE
	static void fnc00078f5c() {
		fnc00078bc8();
		fnc00076868();
	}

	// RAM GREECE
	static void fnc00078fe0() {
		fnc000fafb8();
		fnc000fb11c();
		N64.coss();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.sins();
	}

	// RAM GREECE
	static void fnc000792e0() {
		N64.coss();
		N64.sins();
		fnc000b84d0();
		N64.fnc00003824();
		N64.coss();
		N64.sins();
		fnc000b84d0();
		N64.fnc00003824();
		fnc00076918();
		fnc00078720();
	}

	// RAM GREECE
	static void fnc000794f8() {
	}

	// RAM GREECE
	static void fnc00079510() {
	}

	// RAM GREECE
	static void fnc0007956c() {
		fnc00088000();
		fnc0007956c();
		fnc00079510();
	}

	// RAM GREECE
	static void fnc000797a4() {
		fnc000a8a68();
	}

	// RAM GREECE
	/// Skip this and aliens freeze when they die, never disappear
	static void guess_destroyAlien() {
		fnc0011c6a8();
		fnc000af52c();
		fnc000f375c();
		N64.fnc0001cc6c();
		fnc000f3038();
		fnc000797a4();
		guess_destroyAlien();
	}

	// RAM GREECE
	static void fnc00079b74() {
		fnc00079b74();
		fnc00079b74();
	}

	// RAM GREECE
	static void fnc00079c8c() {
		N64.fnc0001cc6c();
		fnc00079b74();
		fnc00079dc0();
	}

	// RAM GREECE
	static void fnc00079dc0() {
		fnc00079dc0();
	}

	// RAM GREECE
	static void fnc00079e64() {
	}

	// RAM GREECE
	static void fnc00079f08() {
		fnc000b84d0();
		fnc0011de60();
		fnc0011e6fc();
		fnc0011de60();
	}

	// RAM GREECE
	static void fnc0007a198() {
		fnc00079f08();
		fnc00080510();
		fnc000f3990();
		fnc00079c8c();
		fnc00079e64();
	}

	// RAM GREECE
	/// Skipping seems to result in aliens with no physical presence
	static void guess_addActiveObject() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		fnc00079f08();
		N64.fnc0001cc6c();
		fnc0007f0e8();
		N64.fnc0001cc6c();
		fnc00079c8c();
		N64.fnc0001cc6c();
		fnc000f3990();
		N64.fnc0001cc6c();
		fnc00079dc0();
		fnc000cd1f8();
		fnc000cd1f8();
		fnc00079e64();
	}

	// RAM GREECE
	static void fnc0007a4f8() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		fnc000f375c();
		fnc000cd390();
		fnc000cd390();
		fnc00079dc0();
	}

	// RAM GREECE
	static void fnc0007a6b4() {
		fnc000b0d10();
		fnc0007f9c8();
		N64.fnc0001cc6c();
		fnc000b0d10();
		fnc0007f9c8();
		fnc0007f9c8();
		N64.fnc0001cc6c();
		fnc0007f9c8();
	}

	// RAM GREECE
	static void fnc0007aa0c() {
	}

	// RAM 0007aaec
	/// R on controller 2 debug prints current vehicle info + target info (if any)
	/// Skipping this stops aliens/humans moving
	static void guess_MovementLogic() {
		fnc0007af8c();
		fnc0007d690();
		fnc0007d424();
		fnc0007fdd8();
		N64.ButtonIsNewlyPressed();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc0007af8c() {
	}

	// RAM GREECE
	static void fnc0007b170() {
		N64.fnc000039d0();
		fnc0007b170();
	}

	// RAM GREECE
	static void fnc0007b20c() {
		N64.fnc000039d0();
		fnc0007b20c();
	}

	// RAM GREECE
	static void fnc0007b2a0() {
		N64.osVirtualToPhysical();
		fnc0007b20c();
	}

	// RAM GREECE
	static void fnc0007b370() {
		N64.sins();
		N64.sins();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc0007b9cc() {
		fnc000b84d0();
		fnc000b2354();
		fnc000b2354();
		N64.sins();
		N64.coss();
		N64.fnc000038e0();
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc000038d4();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.osVirtualToPhysical();
		fnc0007b170();
	}

	// RAM 0007bec0
	/// Humans' shadows (and more ..?)
	static void drawComplexObjectShadows() {
		fnc0011e6fc();
		fnc000e988c();
	}

	// RAM 0007c044
	/// eg: humans, alien torsos & heads
	static void drawComplexObjects() {
		fnc000b93ac();
		N64.guLookAtReflect();
		fnc000710d4();
		fnc000ef9f0();
		fnc0007b9cc();
		fnc00070fb8();
		fnc0007b370();
		N64.sqrtf();
		N64.fnc0001cc6c();
		N64.fnc000039d0();
		N64.fnc000039d0();
		fnc000710d4();
		fnc00070fb8();
		N64.sins();
		fnc0007b9cc();
	}

	// RAM GREECE
	/// Disable and aliens don't spawn visibly (show on radar tho)
	static void fnc0007d424() {
		fnc000ab8cc();
		guess_destroyAlien();
		fnc00087afc();
		fnc0008030c();
		fnc0008199c();
		fnc00081390();
		N64.fnc0001cc6c();
		guess_addActiveObject();
		fnc0007a6b4();
	}

	// RAM GREECE
	static void fnc0007d690() {
		fnc0007a4f8();
		N64.fnc0001cc6c();
		N64.sins();
		fnc0011de60();
		fnc0011de60();
		fnc000800e4();
		fnc000b84d0();
		fnc0011e6fc();
		fnc000e0e9c();
		fnc000b84d0();
		fnc00080510();
		fnc000ab8cc();
		fnc000f3190();
		fnc000df848();
		guess_destroyAlien();
		fnc00089eb4();
		fnc000b325c();
		fnc000b84d0();
		fnc000b8d80();
		fnc000b8d80();
		guess_destroyAlien();
		fnc00087afc();
		N64.sqrtf();
		fnc00102d00();
		fnc00137468();
		fnc000bc5dc();
		fnc0008199c();
		fnc00081390();
		fnc00088760();
		fnc00124b5c();
		fnc00084d80();
		fnc00088760();
		fnc00124b5c();
		fnc00084d80();
		fnc0007a4f8();
		N64.fnc0001cc6c();
		fnc0011de60();
	}

	// RAM GREECE
	static void fnc0007e500() {
		fnc00084f00();
		fnc00084e54();
	}

	// RAM GREECE
	static void fnc0007e608() {
		fnc0007e500();
	}

	// RAM GREECE
	static void fnc0007e734() {
	}

	// RAM GREECE
	static void fnc0007e788() {
	}

	// RAM GREECE
	static void fnc0007e790() {
	}

	// RAM GREECE
	static void fnc0007e834() {
	}

	// RAM GREECE
	static void fnc0007e980() {
		fnc0007e734();
	}

	// RAM GREECE
	static void fnc0007eb74() {
		N64.fnc00003824();
		fnc0007e734();
		fnc0007e734();
	}

	// RAM GREECE
	static void fnc0007ed9c() {
		fnc000f2d48();
	}

	// RAM GREECE
	static void fnc0007ee24() {
		fnc000f2d48();
	}

	// RAM GREECE
	static void fnc0007ee98() {
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc0007f0e8() {
		N64.fnc0001cc6c();
		fnc000836d0();
		fnc0011de60();
		fnc000831a4();
		fnc0011de60();
		fnc0011bea0();
		fnc0007e980();
		fnc0007ed9c();
		fnc0007e608();
		fnc0010c4ec();
		fnc0010e684();
		fnc00080d98();
		fnc0007eb74();
		N64.fnc0001cc6c();
		fnc0007ed9c();
		fnc00083ef4();
		fnc0007e608();
		fnc00088760();
		fnc00088760();
		fnc0007eb74();
		fnc0007ed9c();
		fnc0007ed9c();
		fnc0007f0e8();
		N64.fnc0001cc6c();
		fnc0007f0e8();
	}

	// RAM GREECE
	static void fnc0007f9c8() {
		fnc00082a98();
		fnc00082ca0();
		fnc00082b30();
		fnc00082c04();
	}

	// RAM GREECE
	static void fnc0007fb08() {
		fnc00082a98();
		fnc00082ca0();
		fnc0007e734();
		fnc0007ee24();
		fnc00082a98();
		fnc00082ca0();
		fnc00088760();
		fnc00088760();
		fnc00082b30();
		fnc00082c04();
		fnc0007e734();
		fnc0007ee24();
	}

	// RAM GREECE
	static void fnc0007fdd8() {
		fnc0007fb08();
		fnc0007f0e8();
		fnc0007a6b4();
		fnc0007a4f8();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000800df() {
	}

	// RAM GREECE
	static void fnc000800e4() {
		fnc000f2ed8();
		fnc000f2890();
		N64.coss();
		N64.sins();
		fnc00080418();
		fnc000f375c();
		fnc000f3990();
	}

	// RAM GREECE
	static void fnc0008030c() {
		N64.coss();
		N64.sins();
		fnc00080418();
	}

	// RAM GREECE
	static void fnc00080418() {
		fnc000b0d10();
		fnc000b0df4();
	}

	// RAM GREECE
	static void fnc00080510() {
		fnc000b84d0();
		fnc0011e6fc();
	}

	// RAM GREECE
	static void fnc0008064c() {
		fnc000808f0();
	}

	// RAM GREECE
	static void fnc0008076c() {
		fnc000808f0();
	}

	// RAM GREECE
	static void fnc00080840() {
	}

	// RAM GREECE
	static void fnc000808e4() {
	}

	// RAM GREECE
	static void fnc000808f0() {
	}

	// RAM GREECE
	static void fnc00080a40() {
	}

	// RAM GREECE
	static void fnc00080a48() {
	}

	// RAM GREECE
	static void fnc00080a54() {
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc00080b44() {
	}

	// RAM GREECE
	static void fnc00080bc0() {
	}

	// RAM GREECE
	static void fnc00080c84() {
	}

	// RAM GREECE
	static void fnc00080ce4() {
	}

	// RAM GREECE
	static void fnc00080d64() {
	}

	// RAM GREECE
	static void fnc00080d70() {
	}

	// RAM GREECE
	static void fnc00080d88() {
	}

	// RAM GREECE
	static void fnc00080d98() {
		N64.fnc0001cc6c();
		N64.fnc000153d8();
		guess_destroyAlien();
		fnc0007eb74();
		fnc0007ed9c();
		fnc000abe7c();
		fnc00124118();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
		N64.fnc00003824();
		fnc00102ddc();
		fnc00137468();
		fnc00088760();
		N64.sins();
		N64.coss();
		fnc000a8a68();
		fnc00137468();
	}

	// RAM GREECE
	static void fnc00081390() {
		N64.fnc00003824();
		N64.fnc00003824();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc0008153c() {
		fnc00081390();
	}

	// RAM GREECE
	static void fnc000816b0() {
		N64.sins();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		N64.coss();
		N64.sins();
	}

	// RAM GREECE
	static void fnc0008199c() {
		fnc000816b0();
		fnc000816b0();
	}

	// RAM GREECE
	static void fnc00081ad4() {
	}

	// RAM GREECE
	static void fnc00081bb0() {
	}

	// RAM GREECE
	static void fnc00081c24() {
		fnc00081ad4();
		fnc0008064c();
	}

	// RAM GREECE
	static void fnc00081c84() {
	}

	// RAM GREECE
	static void fnc00081cf0() {
	}

	// RAM GREECE
	static void fnc00081e5c() {
		fnc00081cf0();
	}

	// RAM GREECE
	static void fnc00081f18() {
		fnc00081c84();
		fnc00081e5c();
	}

	// RAM GREECE
	static void fnc00082084() {
		fnc00081c84();
		fnc00081e5c();
	}

	// RAM GREECE
	static void fnc000821f0() {
		fnc00081e5c();
		N64.fnc000038e0();
		fnc00081c84();
	}

	// RAM GREECE
	static void fnc000822bc() {
		fnc00081e5c();
		N64.fnc000038e0();
		fnc00081c84();
	}

	// RAM GREECE
	static void fnc00082394() {
	}

	// RAM GREECE
	static void fnc000825e8() {
	}

	// RAM GREECE
	static void fnc000826e4() {
		fnc000b325c();
		fnc000b325c();
	}

	// RAM GREECE
	static void fnc000828f0() {
		fnc000b325c();
		fnc000b325c();
	}

	// RAM GREECE
	static void fnc00082990() {
	}

	// RAM GREECE
	static void fnc000829d8() {
	}

	// RAM GREECE
	static void fnc000829ec() {
	}

	// RAM GREECE
	static void fnc00082a70() {
	}

	// RAM GREECE
	static void fnc00082a98() {
		fnc000828f0();
		fnc00082990();
		fnc000829ec();
	}

	// RAM GREECE
	static void fnc00082b30() {
		N64.fnc000056d0();
		fnc00082990();
		fnc000829ec();
	}

	// RAM GREECE
	static void fnc00082c04() {
		fnc000b0c4c();
		fnc00082990();
		fnc000829ec();
	}

	// RAM GREECE
	static void fnc00082ca0() {
		fnc000b325c();
	}

	// RAM GREECE
	static void fnc00082e38() {
	}

	// RAM GREECE
	static void fnc00082ea8() {
	}

	// RAM GREECE
	static void fnc00082eb4() {
		fnc0011e6fc();
		fnc00082e38();
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc00083060() {
		fnc0011e6fc();
		fnc000b84d0();
		fnc00082eb4();
	}

	// RAM GREECE
	static void fnc000831a4() {
		N64.coss();
		N64.sins();
		fnc00083060();
		fnc00082e38();
		N64.coss();
		N64.sins();
		fnc00083060();
		fnc00082e38();
		N64.coss();
		N64.sins();
		fnc00083060();
		fnc00082e38();
	}

	// RAM GREECE
	static void fnc000836d0() {
		fnc000826e4();
		fnc00078530();
		fnc000b84d0();
		N64.fnc00003824();
		fnc00078828();
		N64.fnc00003824();
		N64.fnc00003824();
		fnc000b84d0();
		N64.fnc00003824();
		fnc000b84d0();
		N64.coss();
		N64.sins();
		fnc0010ef40();
		fnc00078d64();
		fnc00078fe0();
		fnc000792e0();
	}

	// RAM GREECE
	static void fnc00083ef4() {
		fnc0007eb74();
		fnc0007f0e8();
		fnc000f2d48();
		fnc001022f4();
	}

	// RAM GREECE
	static void fnc000840b0() {
		N64.fnc000038e0();
		fnc000b325c();
		fnc000b325c();
		fnc000b325c();
		fnc000b325c();
		fnc000b325c();
		N64.fnc000038e0();
		fnc000b325c();
		fnc000b325c();
		fnc000b325c();
		fnc000b325c();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000844d0() {
		fnc000b325c();
		fnc000b325c();
		fnc000b84d0();
		fnc000b325c();
		fnc000b84d0();
		fnc000b325c();
		fnc000b84d0();
		fnc000b325c();
		fnc000b84d0();
		fnc000840b0();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc000847d0() {
		fnc00084904();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc00084904() {
		N64.fnc000038e0();
		N64.coss();
		N64.sins();
	}

	// RAM GREECE
	static void fnc00084ae4() {
		N64.fnc00003824();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc00084c48() {
		N64.sqrtf();
		N64.fnc00003824();
		N64.fnc0001cc6c();
		fnc00102ddc();
	}

	// RAM GREECE
	static void fnc00084cf8() {
		fnc00084ae4();
		fnc00084ae4();
	}

	// RAM GREECE
	static void fnc00084d80() {
		fnc000a4150();
	}

	// RAM GREECE
	static void fnc00084e54() {
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc00084f00() {
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc00084fe8() {
		N64.fnc00003824();
		N64.fnc00003824();
		N64.fnc00003824();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc000850dc() {
		N64.fnc00003824();
		N64.fnc00003824();
		N64.fnc00003824();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc000851c8() {
		fnc00128428();
		N64.fnc00003824();
		N64.fnc00003824();
		N64.fnc00003824();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc00085340() {
		N64.fnc00003824();
		N64.fnc00003824();
		N64.fnc00003824();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc00085448() {
	}

	// RAM GREECE
	static void fnc00085518() {
	}

	// RAM GREECE
	static void fnc00085524() {
	}

	// RAM GREECE
	static void fnc0008554c() {
		fnc00085524();
		fnc000862b4();
		fnc00126268();
	}

	// RAM GREECE
	static void fnc00085690() {
		fnc00084fe8();
		fnc00122524();
	}

	// RAM GREECE
	static void fnc00085748() {
	}

	// RAM GREECE
	static void fnc00085780() {
	}

	// RAM GREECE
	static void fnc000857c4() {
	}

	// RAM GREECE
	static void fnc000857d0() {
	}

	// RAM GREECE
	static void fnc0008582c() {
	}

	// RAM GREECE
	static void fnc00085838() {
	}

	// RAM GREECE
	static void fnc000858f8() {
	}

	// RAM GREECE
	static void fnc00085900() {
	}

	// RAM GREECE
	static void fnc000859d8() {
	}

	// RAM GREECE
	static void fnc000859f4() {
		fnc00084fe8();
	}

	// RAM GREECE
	static void fnc00085a9c() {
	}

	// RAM GREECE
	static void fnc00085ae4() {
	}

	// RAM GREECE
	static void fnc00085b14() {
		N64.fnc00003824();
		fnc00085a9c();
	}

	// RAM GREECE
	static void fnc00085c50() {
		N64.sqrtf();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc00085ce0() {
		fnc00085c50();
		fnc00085a9c();
	}

	// RAM GREECE
	static void fnc00085dc8() {
		fnc00085ce0();
		fnc00085b14();
	}

	// RAM GREECE
	static void fnc00085e2c() {
		N64.fnc00003824();
		fnc00085a9c();
	}

	// RAM GREECE
	static void fnc00085f68() {
		fnc00128428();
		N64.fnc00003824();
		fnc00085a9c();
	}

	// RAM GREECE
	static void fnc000860cc() {
		N64.sqrtf();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc00086164() {
		fnc000860cc();
		fnc00085a9c();
	}

	// RAM GREECE
	static void fnc00086230() {
		fnc00086164();
		fnc00085e2c();
	}

	// RAM GREECE
	static void fnc00086270() {
	}

	// RAM GREECE
	static void fnc000862b4() {
		fnc001269bc();
		fnc001269bc();
		fnc001269bc();
	}

	// RAM GREECE
	static void fnc000865f4() {
		fnc00128504();
		fnc000862b4();
		fnc00128428();
		fnc000862b4();
		fnc00129354();
		fnc00086270();
		fnc00129354();
		fnc00086270();
		fnc00129354();
		fnc00086270();
	}

	// RAM GREECE
	static void fnc000868a4() {
		N64.coss();
		N64.sins();
		N64.cosf();
		N64.sinf();
		fnc000865f4();
	}

	// RAM GREECE
	static void fnc00086a34() {
		N64.sinf();
		N64.cosf();
		N64.sqrtf();
		N64.coss();
		N64.sins();
		fnc000865f4();
	}

	// RAM GREECE
	static void fnc00086d70() {
		fnc00128504();
		N64.sinf();
		N64.cosf();
		N64.sqrtf();
		N64.coss();
		N64.sins();
		fnc000865f4();
	}

	// RAM GREECE
	static void fnc000870d8() {
	}

	// RAM GREECE
	static void fnc00087158() {
	}

	// RAM GREECE
	static void fnc00087188() {
		fnc000870d8();
		fnc00086a34();
	}

	// RAM GREECE
	static void fnc000871cc() {
		fnc000870d8();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		fnc000865f4();
	}

	// RAM GREECE
	static void fnc0008735c() {
		fnc0008064c();
	}

	// RAM GREECE
	static void fnc000873a8() {
		fnc00085838();
		fnc0008735c();
	}

	// RAM GREECE
	static void fnc0008741c() {
		fnc000808f0();
	}

	// RAM GREECE
	static void fnc0008751c() {
		fnc000847d0();
		fnc0008741c();
	}

	// RAM GREECE
	static void fnc00087720() {
		fnc0008554c();
	}

	// RAM GREECE
	static void fnc000877e8() {
		fnc00084e54();
		fnc00087720();
		fnc0008064c();
		fnc0008735c();
		fnc000847d0();
		fnc0008741c();
	}

	// RAM GREECE
	static void fnc000879a4() {
		fnc00128504();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc00087aac() {
	}

	// RAM GREECE
	static void fnc00087afc() {
		fnc000cf80c();
		fnc000cf80c();
		guess_destroyAlien();
	}

	// RAM GREECE
	static void fnc00087c50() {
	}

	// RAM GREECE
	static void fnc00087c74() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc0008064c();
	}

	// RAM GREECE
	static void fnc00087d18() {
		N64.sqrtf();
		fnc00084fe8();
		fnc0008741c();
		fnc0008064c();
	}

	// RAM GREECE
	static void fnc00087e30() {
		fnc00088760();
	}

	// RAM GREECE
	static void fnc00087f08() {
		fnc00088760();
		fnc00087aac();
	}

	// RAM GREECE
	static void fnc00088000() {
		guess_destroyAlien();
		fnc00088760();
	}

	// RAM GREECE
	static void fnc000880b8() {
	}

	// RAM GREECE
	static void fnc0008813c() {
	}

	// RAM GREECE
	static void fnc00088154() {
		N64.fnc000038e0();
		fnc000e05b4();
		N64.coss();
		N64.sins();
		fnc000cee00();
		fnc000cee00();
		fnc000aff9c();
		fnc00088760();
	}

	// RAM GREECE
	static void fnc00088760() {
		fnc000af52c();
		fnc00110fb4();
		N64.fnc000038e0();
		fnc00102ddc();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
		fnc0007643c();
		fnc000df848();
		fnc00089eb4();
		fnc000f2ed8();
		fnc000a4150();
	}

	// RAM GREECE
	static void fnc00088e10() {
	}

	// RAM GREECE
	static void fnc00088e40() {
		fnc00128428();
		fnc000df848();
		fnc0008916c();
		fnc000c7924();
		fnc000c80f0();
		fnc000c8184();
		fnc00088e10();
	}

	// RAM GREECE
	static void fnc00088f78() {
		N64.fnc00011fac();
		N64.fnc00011f90();
	}

	// RAM GREECE
	static void fnc00088ffc() {
		fnc00088ffc();
	}

	// RAM GREECE
	static void fnc0008916c() {
		N64.fnc00012000();
		fnc00088ffc();
	}

	// RAM GREECE
	static void fnc00089200() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000dea08();
	}

	// RAM GREECE
	static void fnc000893c8() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc00081c84();
		fnc00081e5c();
	}

	// RAM GREECE
	/// Kills a "Rioter" ?
	static void fnc00089574() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
		fnc00137468();
		fnc000e05b4();
		fnc00137468();
		fnc00137468();
		fnc000ae190();
		N64.fnc0001cc6c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
		fnc000e05b4();
	}

	// RAM GREECE
	static void fnc00089a2c() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
		fnc00087aac();
	}

	// RAM GREECE
	static void fnc00089c40() {
		fnc00124118();
		fnc000df848();
		fnc000e0ae0();
	}

	// RAM GREECE
	static void fnc00089d04() {
		fnc000ef650();
		fnc000ca5ec();
		fnc00137468();
		fnc000b034c();
		fnc000bddb4();
		fnc000ca5ec();
	}

	// RAM GREECE
	static void fnc00089eb4() {
		fnc000df848();
		fnc000df848();
	}

	// RAM GREECE
	static void fnc00089fac() {
		fnc00137468();
		fnc000df848();
		fnc000c3bd8();
		fnc000808f0();
		fnc00087c74();
		fnc000df848();
		fnc000ca5ec();
		fnc000c3d88();
		fnc00137468();
		fnc00080510();
	}

	// RAM GREECE
	static void fnc0008a32c() {
		fnc00137468();
		guess_destroyAlien();
		guess_destroyAlien();
	}

	// RAM GREECE
	static void fnc0008a3ec() {
		fnc0008a32c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000f32ec();
		N64.sins();
		N64.coss();
		fnc00088e40();
		fnc00128428();
		fnc000e093c();
		fnc00137468();
		fnc00128428();
		N64.sins();
		N64.coss();
		fnc000ca5ec();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000dea08();
		fnc000df848();
		fnc000c7924();
		fnc000df848();
		fnc000f3038();
	}

	// RAM GREECE
	static void fnc0008aafc() {
		fnc000df038();
		fnc000def2c();
		fnc000dfa34();
		fnc000df848();
	}

	// RAM GREECE
	static void fnc0008ac5c() {
		fnc00137468();
		N64.coss();
		N64.sins();
		fnc0008916c();
		fnc00128428();
		fnc000c7924();
		fnc000c80f0();
		fnc000c820c();
		fnc000c8184();
		fnc00088e10();
	}

	// RAM GREECE
	static void fnc0008af58() {
		fnc0008ac5c();
		fnc0008aafc();
	}

	// RAM GREECE
	static void fnc0008b02c() {
		fnc000df848();
		fnc0008aafc();
	}

	// RAM GREECE
	static void fnc0008b108() {
		fnc0008b02c();
	}

	// RAM GREECE
	static void fnc0008b190() {
		fnc00089eb4();
		fnc00137468();
		N64.coss();
		N64.sins();
		fnc000b84d0();
		N64.coss();
		N64.sins();
		fnc000b84d0();
		N64.fnc00003824();
		fnc000f34ac();
		fnc000c2274();
		fnc000df848();
		fnc000c1ecc();
		fnc000b84d0();
		fnc000ca5ec();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000dfa34();
		fnc000dea08();
		fnc000f2d48();
		fnc000f3038();
		fnc000df848();
	}

	// RAM GREECE
	static void fnc0008b870() {
		fnc00137468();
	}

	// RAM GREECE
	/// Kill processor?
	static void fnc0008b8e4() {
		N64.fnc0001cc6c();
		fnc0008b870();
		N64.fnc0001cc6c();
		fnc00081f18();
		fnc000822bc();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000dfa34();
		fnc000e35e0();
		fnc000df848();
		N64.fnc0001cc6c();
		fnc00079dc0();
	}

	// RAM GREECE
	static void fnc0008bc58() {
		fnc000d6adc();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000df848();
		fnc00128504();
		fnc00084e54();
		fnc00123e90();
		guess_destroyAlien();
		fnc000df848();
	}

	// RAM GREECE
	static void fnc0008bf8c() {
		fnc00088e40();
		fnc000df038();
		fnc000df038();
	}

	// RAM GREECE
	static void fnc0008c0f8() {
		fnc00137468();
		N64.fnc000038e0();
		fnc000df848();
		fnc000a5554();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000df038();
		fnc000df038();
		fnc000def2c();
		fnc000df848();
	}

	// RAM GREECE
	static void fnc0008c428() {
		N64.coss();
		N64.sins();
		fnc000b84d0();
		N64.coss();
		N64.sins();
		fnc000b84d0();
		N64.fnc00003824();
		N64.sins();
		N64.coss();
		fnc000b84d0();
		N64.sins();
		N64.coss();
		fnc000b84d0();
		N64.fnc00003824();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc0008c7b0() {
		fnc00081f18();
	}

	// RAM GREECE
	static void fnc0008c8b8() {
		fnc0008c428();
		fnc000df848();
		fnc00089200();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000df848();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000df038();
		fnc000ca5ec();
		fnc0008c7b0();
		fnc000821f0();
		fnc000821f0();
		fnc00137468();
		N64.fnc00028100();
		fnc000b84d0();
		fnc000dea08();
		fnc00135d44();
		fnc000df848();
	}

	// RAM GREECE
	static void fnc0008cf50() {
		fnc00089eb4();
	}

	// RAM GREECE
	static void fnc0008cf8c() {
		fnc00089eb4();
	}

	// RAM GREECE
	static void fnc0008cfc8() {
		fnc00089eb4();
	}

	// RAM GREECE
	static void fnc0008d004() {
		fnc00089eb4();
	}

	// RAM GREECE
	static void fnc0008d040() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc0008d0e0() {
		fnc000fb44c();
		fnc000fb468();
		fnc000fb484();
		fnc000fb430();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
		fnc00088760();
		N64.fnc00006dac();
	}

	// RAM GREECE
	static void fnc0008d3b0() {
	}

	// RAM GREECE
	static void fnc0008d3f4() {
		fnc0008d3b0();
	}

	// RAM GREECE
	static void fnc0008d4a0() {
		fnc00082394();
		fnc00080b44();
		fnc0008d3b0();
	}

	// RAM GREECE
	static void fnc0008d634() {
		fnc0008d4a0();
		fnc0008d3b0();
	}

	// RAM GREECE
	static void fnc0008d71c() {
		fnc0008d634();
		fnc00137468();
		fnc00137468();
		fnc00137468();
		fnc0008d3b0();
	}

	// RAM GREECE
	static void fnc0008d978() {
		fnc00087aac();
	}

	// RAM GREECE
	static void fnc0008da24() {
		fnc00128428();
		fnc00128504();
		N64.fnc00006dac();
		guess_destroyAlien();
		fnc00087aac();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
		fnc000e05b4();
		fnc00137468();
		fnc00137468();
		fnc00137468();
		fnc000ae1c0();
		guess_destroyAlien();
	}

	// RAM GREECE
	static void fnc0008def4() {
		fnc00088760();
		fnc0008da24();
		fnc0008d3f4();
		fnc00128504();
		fnc00080840();
		fnc0008d71c();
		fnc0011d260();
		fnc0008d3f4();
	}

	// RAM GREECE
	static void fnc0008e0d8() {
		fnc0008def4();
		fnc0008d4a0();
		fnc000808f0();
	}

	// RAM GREECE
	static void fnc0008e16c() {
		fnc0008def4();
		fnc00137468();
		fnc0008d0e0();
		fnc000808f0();
		fnc0008d4a0();
	}

	// RAM GREECE
	static void fnc0008e23c() {
		fnc000808f0();
		fnc00088760();
	}

	// RAM GREECE
	static void fnc0008e2b4() {
		fnc00081f18();
	}

	// RAM GREECE
	static void fnc0008e30c() {
		fnc00081bb0();
	}

	// RAM GREECE
	static void fnc0008e3e8() {
	}

	// RAM GREECE
	static void fnc0008e434() {
	}

	// RAM GREECE
	static void fnc0008e46c() {
	}

	// RAM GREECE
	static void fnc0008e478() {
		fnc0008d978();
		fnc00081bb0();
	}

	// RAM GREECE
	static void fnc0008e524() {
		N64.sins();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.coss();
		fnc0011e6fc();
	}

	// RAM GREECE
	static void fnc0008e978() {
		fnc0011e6fc();
		N64.sins();
	}

	// RAM GREECE
	static void fnc0008eb20() {
		fnc0011e6fc();
		N64.sins();
	}

	// RAM GREECE
	static void fnc0008edfc() {
		fnc0008e978();
	}

	// RAM GREECE
	static void fnc0008ee5c() {
		fnc00081e5c();
		fnc00081e5c();
		fnc00081c84();
		fnc00081c84();
	}

	// RAM GREECE
	static void fnc0008ef1c() {
		fnc0008ee5c();
	}

	// RAM GREECE
	static void fnc0008ef7c() {
		fnc00081e5c();
		fnc00081e5c();
		fnc00081e5c();
		fnc00081e5c();
		fnc00081c84();
		fnc00081c84();
		fnc00081c84();
		fnc00081c84();
	}

	// RAM GREECE
	static void fnc0008f0bc() {
		fnc00137468();
		fnc0008e478();
		fnc0008e30c();
		fnc0011b6c0();
		fnc000acf9c();
		fnc00080b44();
		fnc00080b44();
		fnc00087720();
		fnc0009170c();
	}

	// RAM GREECE
	static void fnc0008f6c0() {
		fnc00082394();
		fnc00080b44();
	}

	// RAM GREECE
	static void fnc0008f818() {
		fnc0008f0bc();
		fnc000808f0();
		fnc0008f6c0();
	}

	// RAM GREECE
	static void fnc0008f8d4() {
		fnc00081f18();
		fnc00087188();
	}

	// RAM GREECE
	static void fnc0008f9e4() {
		fnc0008f0bc();
		fnc0008f8d4();
		fnc000850dc();
		fnc0008f6c0();
		fnc000808f0();
		fnc0008e524();
		fnc0008e978();
		fnc0008ef1c();
	}

	// RAM GREECE
	static void fnc0008fc78() {
		fnc0007956c();
	}

	// RAM GREECE
	static void fnc0008fd0c() {
		fnc0008fc78();
		fnc0008fc78();
	}

	// RAM GREECE
	static void fnc0008fe18() {
		fnc0007956c();
		fnc00128428();
		fnc00082394();
	}

	// RAM GREECE
	static void fnc0008ff54() {
		N64.sins();
		N64.coss();
		N64.coss();
		N64.sins();
		fnc00128428();
	}

	// RAM GREECE
	static void fnc0009012c() {
		fnc00087aac();
		fnc000808f0();
		fnc00082394();
		N64.fnc0001cc6c();
		fnc0008fe18();
		fnc00081f18();
		guess_destroyAlien();
		fnc00087aac();
		fnc00081f18();
		fnc00137468();
		fnc0008fe18();
		fnc0008fe18();
	}

	// RAM GREECE
	static void fnc000908c4() {
		fnc0009012c();
	}

	// RAM GREECE
	static void fnc00090948() {
		fnc00081e5c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc00081c84();
	}

	// RAM GREECE
	static void fnc00090a6c() {
		fnc00081e5c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc00081c84();
	}

	// RAM GREECE
	static void fnc00090c14() {
		N64.fnc00003824();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc00090d0c() {
		fnc00086230();
		fnc00081f18();
		fnc000870d8();
		fnc00086a34();
		fnc00137468();
		fnc000871cc();
		fnc00128428();
		fnc000c56a4();
		fnc0008751c();
		fnc00084fe8();
		N64.fnc000038e0();
		fnc00128428();
		N64.fnc000038e0();
		fnc000cc7b0();
		fnc001371b8();
		fnc00084e54();
	}

	// RAM GREECE
	static void fnc00091220() {
		fnc00090d0c();
		fnc0009012c();
		fnc00090c14();
		N64.fnc000038e0();
		fnc00128428();
		fnc000ca5ec();
	}

	// RAM GREECE
	/// Drone hunter logic?
	static void fnc00091470() {
		fnc0011c338();
		fnc00080b44();
		fnc00081bb0();
		N64.fnc0001cc6c();
		fnc0011b6c0();
		fnc00080b44();
		fnc00081ad4();
		fnc00080b44();
		fnc00081ad4();
	}

	// RAM GREECE
	static void fnc0009170c() {
		fnc00080b44();
	}

	// RAM GREECE
	static void fnc0009179c() {
		fnc00081bb0();
	}

	// RAM GREECE
	static void fnc000918e0() {
	}

	// RAM GREECE
	static void fnc000919ac() {
	}

	// RAM GREECE
	static void fnc000919c0() {
		fnc0008e478();
		fnc0009179c();
		fnc0009170c();
		fnc00091470();
		fnc000808f0();
		fnc000918e0();
	}

	// RAM GREECE
	static void fnc00091a78() {
	}

	// RAM GREECE
	static void fnc00091ac0() {
		fnc0011d260();
		fnc0011bea0();
		fnc00137468();
		N64.sins();
		N64.coss();
		fnc00128428();
		fnc000de9b8();
		fnc000b84d0();
		fnc000dee5c();
		fnc000c541c();
		fnc000dea08();
		fnc00135d44();
		fnc00091a78();
	}

	// RAM GREECE
	static void fnc00091e70() {
		fnc000919c0();
		fnc000b325c();
		fnc00091ac0();
		fnc000b325c();
	}

	// RAM GREECE
	static void fnc000920c0() {
		fnc00128428();
		fnc00090948();
		fnc00090948();
		fnc00090948();
		fnc000919c0();
		fnc00091ac0();
		fnc00137468();
		fnc00122524();
		fnc00128288();
		N64.sins();
		N64.coss();
		fnc000c541c();
		fnc00091a78();
		fnc000b325c();
		N64.sins();
		N64.sinf();
		fnc00137468();
		fnc00084f00();
		fnc00084fe8();
		fnc00122524();
		fnc00137468();
		N64.sins();
		N64.coss();
		fnc000ca5ec();
		N64.fnc000038e0();
		fnc000ca5ec();
	}

	// RAM GREECE
	static void fnc00092a50() {
		fnc0007956c();
	}

	// RAM GREECE
	static void fnc00092adc() {
		fnc00092a50();
		fnc00092bbc();
	}

	// RAM GREECE
	static void fnc00092bbc() {
	}

	// RAM GREECE
	static void fnc00092c40() {
		fnc00092bbc();
		fnc00080b44();
		fnc00137468();
	}

	// RAM GREECE
	static void fnc00092dfc() {
		fnc0008064c();
		fnc0008076c();
		fnc000765c4();
		fnc00129354();
		fnc00088760();
		fnc00124b5c();
		fnc00092c40();
	}

	// RAM GREECE
	static void fnc00092ef4() {
		fnc0008064c();
		fnc0008076c();
		fnc00137468();
		fnc0011e6fc();
		fnc000765c4();
		fnc00088760();
		fnc00124b5c();
		fnc00124b5c();
		fnc000df848();
		fnc0008e524();
		fnc0008e978();
		fnc0008edfc();
		fnc0008ef1c();
		fnc00092c40();
	}

	// RAM GREECE
	static void fnc00093164() {
		fnc0008076c();
		fnc0008e478();
		fnc0008e30c();
		fnc0008e3e8();
		fnc0009170c();
		fnc00091470();
		fnc00082394();
		fnc000e52e8();
	}

	// RAM GREECE
	static void fnc000932a8() {
		fnc0008edfc();
		fnc0008ef1c();
		fnc00093164();
		fnc00084fe8();
		fnc00087188();
	}

	// RAM GREECE
	static void fnc0009335c() {
		fnc000873a8();
	}

	// RAM GREECE
	static void fnc00093438() {
		fnc00090948();
		fnc0008735c();
		fnc0008751c();
		fnc0008e2b4();
		fnc00084fe8();
		fnc00085690();
		fnc00137468();
		fnc00137468();
		fnc00087188();
	}

	// RAM GREECE
	static void fnc0009377c() {
		fnc00086230();
		fnc000877e8();
		fnc00084fe8();
		fnc000871cc();
		fnc000a3d00();
	}

	// RAM GREECE
	static void fnc0009395c() {
		N64.coss();
		N64.sins();
		fnc000b84d0();
		fnc000b84d0();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc00093ae4() {
		fnc00084fe8();
	}

	// RAM GREECE
	static void fnc00093c7c() {
		fnc00089200();
		fnc000877e8();
		fnc000b325c();
		fnc0008735c();
		fnc00087720();
		N64.sqrtf();
		N64.fnc00028100();
		fnc000b84d0();
		fnc000dea08();
		fnc000dee5c();
		fnc00135d44();
		fnc000b84d0();
		fnc000dea08();
		fnc00135d44();
		fnc00137468();
		fnc00093ae4();
		fnc0009395c();
		fnc0009395c();
		fnc0009395c();
		fnc0009395c();
		fnc00093ae4();
		fnc00123ac4();
		fnc00123e90();
		fnc00137130();
		fnc000808f0();
		fnc00086230();
		fnc000871cc();
		fnc00081f18();
		fnc00081f18();
		fnc00081f18();
	}

	// RAM GREECE
	static void fnc000946a4() {
		fnc0008735c();
	}

	// RAM GREECE
	static void fnc000946cc() {
		fnc0009395c();
		fnc0009395c();
	}

	// RAM GREECE
	static void fnc00094808() {
		fnc00088760();
		fnc00084f00();
		fnc00084fe8();
	}

	// RAM GREECE
	static void fnc0009490c() {
		fnc000946cc();
		fnc00088760();
		fnc000808f0();
		fnc00081f18();
		fnc00094808();
	}

	// RAM GREECE
	static void fnc00094aa0() {
	}

	// RAM GREECE
	static void fnc00094b4c() {
		fnc00137468();
		fnc00094aa0();
	}

	// RAM GREECE
	static void fnc00094b80() {
		fnc00088760();
	}

	// RAM GREECE
	static void fnc00094be0() {
		fnc00094b80();
		fnc00085e2c();
		N64.sins();
		N64.coss();
		fnc000870d8();
		fnc00086a34();
	}

	// RAM GREECE
	static void fnc00094de0() {
		fnc000808f0();
		fnc00086164();
		fnc000a931c();
		fnc000a931c();
		fnc00084e54();
		fnc00084fe8();
		fnc00087188();
		fnc00081f18();
	}

	// RAM GREECE
	static void fnc000950a8() {
		fnc0008e0d8();
	}

	// RAM GREECE
	static void fnc000950d0() {
		fnc0008e16c();
	}

	/// Possible file boundary

	// RAM 00095100
	static void debug_displayProperty(short subMenuIndex, uint yPosition)
	{
		//	addiu		sp, sp, $ffc0		# 00095100:27bdffc0	
		//	sll		t6, a0, 16		# 00095104:00047400	
		//	sra		t7, t6, 16		# 00095108:000e7c03	
		//	sll		a2, a1, 16		# 0009510c:00053400	
		//	sra		t8, a2, 16		# 00095110:0006c403	
		//	sw		a0, $0040(sp)		# 00095114:afa40040	
		//	slti		at, t7, $0020		# 00095118:29e10020	
		//	or		a0, t7, zero		# 0009511c:01e02025	
		//	or		a2, t8, zero		# 00095120:03003025	
		//	sw		ra, $0024(sp)		# 00095124:afbf0024	
		//	sw		s0, $0020(sp)		# 00095128:afb00020	
		//	beq		at, zero, $00095184	# 0009512c:10200015	v __00095184
		//	sw		a1, $0044(sp)		# 00095130:afa50044	
		uint v0;
		uint v1;
		if (subMenuIndex < 0x20)
		{
			//	lui		t4, $8005		# 00095134:3c0c8005	t4=$80050000
			//	lw		t4, $2b34(t4)		# 00095138:8d8c2b34	t4=$80052b34
			/// 80052b34 = activeVehicle*
			//	sll		t9, t7, 3		# 0009513c:000fc8c0	
			//	subu		t9, t9, t7		# 00095140:032fc823	
			//	lui		t0, $8014		# 00095144:3c088014	t0=$80140000
			//	addiu		t0, t0, $cbc0		# 00095148:2508cbc0	t0=$8013cbc0
			//	sll		t9, t9, 2		# 0009514c:0019c880	
			//	lbu		t5, $001a(t4)		# 00095150:918d001a	t5=$8004dcea
			//	addu		v0, t9, t0		# 00095154:03281021	
			v0 = (subMenuIndex * 28) + 0x8013cbc0; // Pointers to vehicle data
			//	lw		t1, $0008(v0)		# 00095158:8c490008	
			//	lw		t2, $0004(v0)		# 0009515c:8c4a0004	
			//	sll		t6, t5, 3		# 00095160:000d70c0	
			//	subu		t6, t6, t5		# 00095164:01cd7023	
			//	sll		t6, t6, 4		# 00095168:000e7100	
			//	lui		t8, $8025		# 0009516c:3c188025	t8=$80250000
			//	subu		t3, t1, t2		# 00095170:012a5823	
			//	addu		t7, t6, t3		# 00095174:01cb7821	
			//	addiu		t8, t8, $7a00		# 00095178:27187a00	t8=$80257a00
			//	beq		zero, zero, $0009535c	# 0009517c:10000077	v __0009535c
			//	addu		v1, t7, t8		# 00095180:01f81821	
			v1 = (((activeVehicle.unkx1a * 7) * 16) + (*(v0).unkx8 - *(v0).unkx4)) + 0x80257a00;
		}
		else if (subMenuIndex < 0x35)
		{
			//__00095184:					# 
			//	slti		at, a0, $0035		# 00095184:28810035	
			//	beq		at, zero, $000951ac	# 00095188:10200008	v __000951ac
			//	sll		t9, a0, 3		# 0009518c:0004c8c0	
			//	subu		t9, t9, a0		# 00095190:0324c823	
			//	lui		t0, $8014		# 00095194:3c088014	t0=$80140000
			//	addiu		t0, t0, $cbc0		# 00095198:2508cbc0	t0=$8013cbc0
			//	sll		t9, t9, 2		# 0009519c:0019c880	
			//	addu		v0, t9, t0		# 000951a0:03281021	
			v0 = (subMenuIndex * 28) + 0x8013cbc0; // Address of pointer to label string
			//	beq		zero, zero, $0009535c	# 000951a4:1000006d	v __0009535c
			//	lw		v1, $0004(v0)		# 000951a8:8c430004	
			v1 = *(v0).unkx4; // Pointer to value
		}
		else if (subMenuIndex < 0x40)
		{
			//__000951ac:					# 
			//	slti		at, a0, $0040		# 000951ac:28810040	
			//	beq		at, zero, $00095228	# 000951b0:1020001d	v __00095228
			//	sll		t1, a0, 3		# 000951b4:000448c0	
			//	lui		t4, $8014		# 000951b8:3c0c8014	t4=$80140000
			//	lbu		t4, $cba4(t4)		# 000951bc:918ccba4	t4=$8013cba4
			//	lui		t6, $8025		# 000951c0:3c0e8025	t6=$80250000
			//	subu		t1, t1, a0		# 000951c4:01244823	
			//	sll		t5, t4, 2		# 000951c8:000c6880	
			//	subu		t5, t5, t4		# 000951cc:01ac6823	
			//	sll		t5, t5, 2		# 000951d0:000d6880	
			//	addu		t5, t5, t4		# 000951d4:01ac6821	
			//	sll		t5, t5, 3		# 000951d8:000d68c0	
			//	addu		t6, t6, t5		# 000951dc:01cd7021	
			//	lb		t6, $66d0(t6)		# 000951e0:81ce66d0	
			//	lui		t2, $8014		# 000951e4:3c0a8014	t2=$80140000
			//	addiu		t2, t2, $cbc0		# 000951e8:254acbc0	t2=$8013cbc0
			//	sll		t1, t1, 2		# 000951ec:00094880	
			//	sll		t3, t6, 2		# 000951f0:000e5880	
			//	addu		v0, t1, t2		# 000951f4:012a1021	
			v0 = (subMenuIndex * 28) + 0x8013cbc0;
			//	subu		t3, t3, t6		# 000951f8:016e5823	
			//	lw		t7, $0008(v0)		# 000951fc:8c4f0008	
			//	sll		t3, t3, 2		# 00095200:000b5880	
			//	subu		t3, t3, t6		# 00095204:016e5823	
			//	sll		t3, t3, 1		# 00095208:000b5840	
			//	lui		t9, $8016		# 0009520c:3c198016	t9=$80160000
			//	lw		t1, $0004(v0)		# 00095210:8c490004	
			//	addiu		t9, t9, $01f0		# 00095214:273901f0	t9=$801601f0
			//	addu		t8, t3, t7		# 00095218:016fc021	
			//	addu		t0, t8, t9		# 0009521c:03194021	
			//	beq		zero, zero, $0009535c	# 00095220:1000004e	v __0009535c
			//	subu		v1, t0, t1		# 00095224:01091823	
			v1 = (((t6 * 22) + *(v0).unkx8) + 0x801601f0) - *(v0).unkx4;
		}
		else if (subMenuIndex < 0x51)
		{
			//__00095228:					# 
			//	slti		at, a0, $0051		# 00095228:28810051	
			//	beq		at, zero, $00095284	# 0009522c:10200015	v __00095284
			//	sll		t2, a0, 3		# 00095230:000450c0	
			//	lui		t7, $8014		# 00095234:3c0f8014	t7=$80140000
			//	lbu		t7, $cba4(t7)		# 00095238:91efcba4	t7=$8013cba4
			//	subu		t2, t2, a0		# 0009523c:01445023	
			//	lui		t4, $8014		# 00095240:3c0c8014	t4=$80140000
			//	addiu		t4, t4, $cbc0		# 00095244:258ccbc0	t4=$8013cbc0
			//	sll		t2, t2, 2		# 00095248:000a5080	
			//	addu		v0, t2, t4		# 0009524c:014c1021	
			v0 = (subMenuIndex * 28) + 0x8013cbc0;
			//	sll		t8, t7, 2		# 00095250:000fc080	
			//	lw		t5, $0008(v0)		# 00095254:8c4d0008	
			//	lw		t6, $0004(v0)		# 00095258:8c4e0004	
			//	subu		t8, t8, t7		# 0009525c:030fc023	
			//	sll		t8, t8, 2		# 00095260:0018c080	
			//	addu		t8, t8, t7		# 00095264:030fc021	
			//	sll		t8, t8, 3		# 00095268:0018c0c0	
			//	lui		t0, $8025		# 0009526c:3c088025	t0=$80250000
			//	subu		t3, t5, t6		# 00095270:01ae5823	
			//	addu		t9, t8, t3		# 00095274:030bc821	
			//	addiu		t0, t0, $6680		# 00095278:25086680	t0=$80256680
			//	beq		zero, zero, $0009535c	# 0009527c:10000037	v __0009535c
			//	addu		v1, t9, t0		# 00095280:03281821	
			v1 = ((x8013cba4 * 104) + (*(v0).unk8 - *(v0).unk4)) + 0x80256680; // Enemy data
		}
		else if (subMenuIndex < 0x60)
		{
			//__00095284:					# 
			//	slti		at, a0, $0060		# 00095284:28810060	
			//	beq		at, zero, $000952ac	# 00095288:10200008	v __000952ac
			//	sll		t1, a0, 3		# 0009528c:000448c0	
			//	subu		t1, t1, a0		# 00095290:01244823	
			//	lui		t2, $8014		# 00095294:3c0a8014	t2=$80140000
			//	addiu		t2, t2, $cbc0		# 00095298:254acbc0	t2=$8013cbc0
			//	sll		t1, t1, 2		# 0009529c:00094880	
			//	addu		v0, t1, t2		# 000952a0:012a1021	
			v0 = (subMenuIndex * 28) + 0x8013cbc0;
			//	beq		zero, zero, $0009535c	# 000952a4:1000002d	v __0009535c
			//	lw		v1, $0004(v0)		# 000952a8:8c430004	
			v1 = *(v0).unkx4;
		}
		else if (subMenuIndex < 0x64)
		{
			//__000952ac:					# 
			//	slti		at, a0, $0064		# 000952ac:28810064	
			//	beq		at, zero, $000952fc	# 000952b0:10200012	v __000952fc
			//	sll		t2, a0, 3		# 000952b4:000450c0	
			//	sll		t4, a0, 3		# 000952b8:000460c0	
			//	subu		t4, t4, a0		# 000952bc:01846023	
			//	lui		t5, $8014		# 000952c0:3c0d8014	t5=$80140000
			//	addiu		t5, t5, $cbc0		# 000952c4:25adcbc0	t5=$8013cbc0
			//	sll		t4, t4, 2		# 000952c8:000c6080	
			//	addu		v0, t4, t5		# 000952cc:018d1021	
			v0 = (subMenuIndex * 28) + 0x8013cbc0;
			//	lui		t3, $8014		# 000952d0:3c0b8014	t3=$80140000
			//	lbu		t3, $cbbc(t3)		# 000952d4:916bcbbc	t3=$8013cbbc
			//	lw		t6, $0008(v0)		# 000952d8:8c4e0008	
			//	lw		t7, $0004(v0)		# 000952dc:8c4f0004	
			//	lui		t1, $8004		# 000952e0:3c098004	t1=$80040000
			//	sll		t9, t3, 4		# 000952e4:000bc900	
			//	subu		t8, t6, t7		# 000952e8:01cfc023	
			//	addu		t0, t9, t8		# 000952ec:03384021	
			//	addiu		t1, t1, $e290		# 000952f0:2529e290	t1=$8003e290
			//	beq		zero, zero, $0009535c	# 000952f4:10000019	v __0009535c
			//	addu		v1, t0, t1		# 000952f8:01091821	
			v1 = ((x8013cbbc * 16) + (*(v0).unkx8 - *(v0).unkx4)) + 0x8003e290;
		}
		else
		{
			//__000952fc:					# 
			//	lui		t5, $8005		# 000952fc:3c0d8005	t5=$80050000
			//	lw		t5, $2b34(t5)		# 00095300:8dad2b34	t5=$80052b34
			//	lui		t3, $8025		# 00095304:3c0b8025	t3=$80250000
			//	subu		t2, t2, a0		# 00095308:01445023	
			//	lbu		t6, $001a(t5)		# 0009530c:91ae001a	t6=$8004dcea
			//	lui		t4, $8014		# 00095310:3c0c8014	t4=$80140000
			//	addiu		t4, t4, $cbc0		# 00095314:258ccbc0	t4=$8013cbc0
			//	sll		t7, t6, 3		# 00095318:000e78c0	
			//	subu		t7, t7, t6		# 0009531c:01ee7823	
			//	sll		t7, t7, 4		# 00095320:000f7900	
			//	addu		t3, t3, t7		# 00095324:016f5821	
			//	lbu		t3, $7a55(t3)		# 00095328:916b7a55	
			//	sll		t2, t2, 2		# 0009532c:000a5080	
			//	addu		v0, t2, t4		# 00095330:014c1021	
			v0 = (subMenuIndex * 28) + 0x8013cbc0;
			//	lw		t8, $0008(v0)		# 00095334:8c580008	
			//	sll		t9, t3, 2		# 00095338:000bc880	
			//	addu		t9, t9, t3		# 0009533c:032bc821	
			//	lw		t4, $0004(v0)		# 00095340:8c4c0004	
			//	sll		t9, t9, 1		# 00095344:0019c840	
			//	lui		t1, $8014		# 00095348:3c098014	t1=$80140000
			//	addiu		t1, t1, $0768		# 0009534c:25290768	t1=$80140768
			//	addu		t0, t9, t8		# 00095350:03384021	
			//	addu		t2, t0, t1		# 00095354:01095021	
			//	subu		v1, t2, t4		# 00095358:014c1823	
			v1 = ((((0x80257A55 + (*(x80052b34).unkx1a * 28)) * 10) + *(v0).unkx8) + 0x80140768) - *(v0).unkx4;
		}
		

		//__0009535c:					# 
		//	lw		a3, $0000(v0)		# 0009535c:8c470000	
		//	lui		a0, $8014		# 00095360:3c048014	a0=$80140000
		//	addiu		t5, zero, $001c		# 00095364:240d001c	t5=$0000001c
		//	sw		t5, $0010(sp)		# 00095368:afad0010	
		//	addiu		a0, a0, $21a0		# 0009536c:248421a0	a0=$801421a0
		//	sw		v1, $002c(sp)		# 00095370:afa3002c	
		//	sw		v0, $0028(sp)		# 00095374:afa20028	
		//	sw		a2, $0014(sp)		# 00095378:afa60014	
		//	jal		$0000a4a4		# 0009537c:0c002929	^ FNC_0000a4a4
		//	addiu		a1, zero, $0003		# 00095380:24050003	a1=$00000003
		N64.drawText("%@%s%@", 3, yPosition, *v0);
		//	lw		v0, $0028(sp)		# 00095384:8fa20028	
		//	lw		v1, $002c(sp)		# 00095388:8fa3002c	
		//	lw		a0, $0018(v0)		# 0009538c:8c440018	
		//	sltiu		at, a0, $0008		# 00095390:2c810008	
		int s0;
		//	beq		at, zero, $00095418	# 00095394:10200020	v __00095418
		//	sll		t6, a0, 2		# 00095398:00047080	
		if (*(v0).unkx18 < 8)
		{
			//	lui		at, $8014		# 0009539c:3c018014	at=$80140000
			//	addu		at, at, t6		# 000953a0:002e0821	
			//	lw		t6, $2308(at)		# 000953a4:8c2e2308	
			//	jr		t6			# 000953a8:01c00008	
			//	nop					# 000953ac:00000000	
			switch (*(v0).unkx18)
			{
				default:
					break;
				case 0:
					//	beq		zero, zero, $0009541c	# 000953b0:1000001a	v __0009541c
					//	lbu		s0, $0000(v1)		# 000953b4:90700000	
					break;
				case 1:
					//	beq		zero, zero, $0009541c	# 000953b8:10000018	v __0009541c
					//	lb		s0, $0000(v1)		# 000953bc:80700000	
					break;
				case 2:
				case 5:
					//	beq		zero, zero, $0009541c	# 000953c0:10000016	v __0009541c
					//	lh		s0, $0000(v1)		# 000953c4:84700000	
					break;
				case 3:
					//	beq		zero, zero, $0009541c	# 000953c8:10000014	v __0009541c
					//	lw		s0, $0000(v1)		# 000953cc:8c700000	
					break;
				case 4:
					//	lwc1		$f0, $0000(v1)		# 000953d0:c4600000	
					//	lui		at, $8014		# 000953d4:3c018014	at=$80140000
					//	(ldc1)		a2, $2328(at)		# 000953d8:d4262328	
					//	(cop1_s)	$02000121		# 000953dc:46000121	
					//	(cop1)		$02262202		# 000953e0:46262202	
					//	(cop1)		$02204020		# 000953e4:46204020	
					//	(cop1_s)	$0200028d		# 000953e8:4600028d	
					//	mfc1		s0, $f10		# 000953ec:44105000	
					//	beq		zero, zero, $0009541c	# 000953f0:1000000a	v __0009541c
					//	nop					# 000953f4:00000000	
					break;
				case 6:
					//	lb		t3, $0000(v1)		# 000953f8:806b0000	
					//	sw		t3, $0038(sp)		# 000953fc:afab0038	
					//	beq		zero, zero, $0009541c	# 00095400:10000006	v __0009541c
					//	lb		s0, $0001(v1)		# 00095404:80700001	
					break;
				case 7:
					//	lh		t9, $0000(v1)		# 00095408:84790000	
					//	sw		t9, $0038(sp)		# 0009540c:afb90038	
					//	beq		zero, zero, $0009541c	# 00095410:10000002	v __0009541c
					//	lh		s0, $0004(v1)		# 00095414:84700004	
					break;
			}
		}
		else
		{
			//__00095418:					# 
			//	lw		s0, $0000(v1)		# 00095418:8c700000	
		}
		//__0009541c:					# 
		//	lui		v0, $8015		# 0009541c:3c028015	v0=$80150000
		//	lh		v0, $ecf0(v0)		# 00095420:8442ecf0	v0=$8014ecf0
		//	addiu		at, zero, $0001		# 00095424:24010001	at=$00000001
		//	beq		v0, zero, $00095434	# 00095428:10400002	v __00095434
		//	nop					# 0009542c:00000000	
		//	bne		v0, at, $00095474	# 00095430:14410010	v __00095474
		//__00095434:					# 
		//	lui		v0, $8014		# 00095434:3c028014	v0=$80140000
		//	lh		v0, $cbb4(v0)		# 00095438:8442cbb4	v0=$8013cbb4
		//	addiu		at, zero, $000b		# 0009543c:2401000b	at=$0000000b
		//	sll		t8, s0, 3		# 00095440:0010c0c0	
		//	beq		v0, at, $00095458	# 00095444:10410004	v __00095458
		//	lui		a1, $8003		# 00095448:3c058003	a1=$80030000
		//	addiu		at, zero, $000c		# 0009544c:2401000c	at=$0000000c
		//	bnel		v0, at, $00095478	# 00095450:54410009	v __00095478
		//	sltiu		at, a0, $0007		# 00095454:2c810007	
		//__00095458:					# 
		//	lui		a0, $8014		# 00095458:3c048014	a0=$80140000
		//	addu		a1, a1, t8		# 0009545c:00b82821	
		//	lw		a1, $4574(a1)		# 00095460:8ca54574	
		//	jal		$0000a4a4		# 00095464:0c002929	^ FNC_0000a4a4
		//	addiu		a0, a0, $21a8		# 00095468:248421a8	a0=$801421a8
		N64.drawText();
		//	beq		zero, zero, $00095520	# 0009546c:1000002c	v __00095520
		//	lw		ra, $0024(sp)		# 00095470:8fbf0024	
		//__00095474:					# 
		//	sltiu		at, a0, $0007		# 00095474:2c810007	
		//__00095478:					# 
		//	beq		at, zero, $0009551c	# 00095478:10200028	v __0009551c
		//	sll		t0, a0, 2		# 0009547c:00044080	t0=$005086a0
		//	lui		at, $8014		# 00095480:3c018014	at=$80140000
		//	addu		at, at, t0		# 00095484:00280821	at=$806486a0
		//	lw		t0, $2330(at)		# 00095488:8c282330	t0=$8064a9d0
		//	jr		t0			# 0009548c:01000008	
		//	nop					# 00095490:00000000	
		//	lui		a0, $8014		# 00095494:3c048014	a0=$80140000
		//	addiu		a0, a0, $21ac		# 00095498:248421ac	a0=$801421ac
		//	jal		$0000a4a4		# 0009549c:0c002929	^ FNC_0000a4a4
		//	or		a1, s0, zero		# 000954a0:02002825	
		N64.drawText();
		//	beq		zero, zero, $00095520	# 000954a4:1000001e	v __00095520
		//	lw		ra, $0024(sp)		# 000954a8:8fbf0024	
		//	lui		a0, $8014		# 000954ac:3c048014	a0=$80140000
		//	addiu		a0, a0, $21b0		# 000954b0:248421b0	a0=$801421b0
		//	jal		$0000a4a4		# 000954b4:0c002929	^ FNC_0000a4a4
		//	or		a1, s0, zero		# 000954b8:02002825	
		N64.drawText();
		//	beq		zero, zero, $00095520	# 000954bc:10000018	v __00095520
		//	lw		ra, $0024(sp)		# 000954c0:8fbf0024	
		//	mtc1		s0, $f16		# 000954c4:44908000	
		//	lui		at, $8014		# 000954c8:3c018014	at=$80140000
		//	(ldc1)		a2, $2350(at)		# 000954cc:d4262350	
		//	cvt.s.w		$f18, $f16		# 000954d0:468084a0	
		//	lui		at, $8014		# 000954d4:3c018014	at=$80140000
		//	(ldc1)		t2, $2358(at)		# 000954d8:d42a2358	
		//	lui		a0, $8014		# 000954dc:3c048014	a0=$80140000
		//	addiu		a0, a0, $21b4		# 000954e0:248421b4	a0=$801421b4
		//	(cop1_s)	$02009121		# 000954e4:46009121	
		//	(cop1)		$02262202		# 000954e8:46262202	
		//	(cop1)		$022a4403		# 000954ec:462a4403	
		//	mfc1		a3, $f16		# 000954f0:44078000	
		//	mfc1		a2, $f17		# 000954f4:44068800	
		//	jal		$0000a4a4		# 000954f8:0c002929	^ FNC_0000a4a4
		//	nop					# 000954fc:00000000	
		N64.drawText();
		//	beq		zero, zero, $00095520	# 00095500:10000007	v __00095520
		//	lw		ra, $0024(sp)		# 00095504:8fbf0024	
		//	lui		a0, $8014		# 00095508:3c048014	a0=$80140000
		//	addiu		a0, a0, $21b8		# 0009550c:248421b8	a0=$801421b8
		//	lw		a1, $0038(sp)		# 00095510:8fa50038	
		//	jal		$0000a4a4		# 00095514:0c002929	^ FNC_0000a4a4
		//	or		a2, s0, zero		# 00095518:02003025	
		N64.drawText();
		//__0009551c:					# 
		//	lw		ra, $0024(sp)		# 0009551c:8fbf0024	
		//__00095520:					# 
		//	lw		s0, $0020(sp)		# 00095520:8fb00020	
		//	addiu		sp, sp, $0040		# 00095524:27bd0040	
		//	jr		ra			# 00095528:03e00008	
		//	nop					# 0009552c:00000000	
	}

	// RAM GREECE
	/// debug?! does something with left/right button sub/add ing 1
	static void fnc00095530()
	{
		//	sll		t6, a0, 16		# 00095530:00047400	
		//	sra		t7, t6, 16		# 00095534:000e7c03	
		//	addiu		sp, sp, $fff8		# 00095538:27bdfff8	
		//	sw		a0, $0008(sp)		# 0009553c:afa40008	
		//	slti		at, t7, $0020		# 00095540:29e10020	
		//	beq		at, zero, $0009559c	# 00095544:10200015	v __0009559c
		//	or		a0, t7, zero		# 00095548:01e02025	
		//	lui		t3, $8005		# 0009554c:3c0b8005	t3=$80050000
		//	lw		t3, $2b20(t3)		# 00095550:8d6b2b20	t3=$80052b20
		//	sll		t8, t7, 3		# 00095554:000fc0c0	
		//	subu		t8, t8, t7		# 00095558:030fc023	
		//	lbu		t4, $001a(t3)		# 0009555c:916c001a	t4=$8004dcea
		//	lui		t9, $8014		# 00095560:3c198014	t9=$80140000
		//	addiu		t9, t9, $cbc0		# 00095564:2739cbc0	t9=$8013cbc0
		//	sll		t8, t8, 2		# 00095568:0018c080	
		//	addu		v0, t8, t9		# 0009556c:03191021	
		//	lw		t6, $0008(v0)		# 00095570:8c4e0008	
		//	sll		t5, t4, 3		# 00095574:000c68c0	
		//	subu		t5, t5, t4		# 00095578:01ac6823	
		//	sll		t5, t5, 4		# 0009557c:000d6900	
		//	lui		t8, $8025		# 00095580:3c188025	t8=$80250000
		//	lw		t3, $0004(v0)		# 00095584:8c4b0004	
		//	addiu		t8, t8, $7a00		# 00095588:27187a00	t8=$80257a00
		//	addu		t7, t5, t6		# 0009558c:01ae7821	
		//	addu		t9, t7, t8		# 00095590:01f8c821	
		//	beq		zero, zero, $00095774	# 00095594:10000077	v __00095774
		//	subu		v1, t9, t3		# 00095598:032b1823	
		//__0009559c:					# 
		//	slti		at, a0, $0035		# 0009559c:28810035	
		//	beq		at, zero, $000955c4	# 000955a0:10200008	v __000955c4
		//	sll		t4, a0, 3		# 000955a4:000460c0	
		//	subu		t4, t4, a0		# 000955a8:01846023	
		//	lui		t5, $8014		# 000955ac:3c0d8014	t5=$80140000
		//	addiu		t5, t5, $cbc0		# 000955b0:25adcbc0	t5=$8013cbc0
		//	sll		t4, t4, 2		# 000955b4:000c6080	
		//	addu		v0, t4, t5		# 000955b8:018d1021	
		//	beq		zero, zero, $00095774	# 000955bc:1000006d	v __00095774
		//	lw		v1, $0004(v0)		# 000955c0:8c430004	
		//__000955c4:					# 
		//	slti		at, a0, $0040		# 000955c4:28810040	
		//	beq		at, zero, $00095640	# 000955c8:1020001d	v __00095640
		//	sll		t6, a0, 3		# 000955cc:000470c0	
		//	lui		t8, $8014		# 000955d0:3c188014	t8=$80140000
		//	lbu		t8, $cba4(t8)		# 000955d4:9318cba4	t8=$8013cba4
		//	lui		t3, $8025		# 000955d8:3c0b8025	t3=$80250000
		//	subu		t6, t6, a0		# 000955dc:01c47023	
		//	sll		t9, t8, 2		# 000955e0:0018c880	
		//	subu		t9, t9, t8		# 000955e4:0338c823	
		//	sll		t9, t9, 2		# 000955e8:0019c880	
		//	addu		t9, t9, t8		# 000955ec:0338c821	
		//	sll		t9, t9, 3		# 000955f0:0019c8c0	
		//	addu		t3, t3, t9		# 000955f4:01795821	
		//	lb		t3, $66d0(t3)		# 000955f8:816b66d0	
		//	lui		t7, $8014		# 000955fc:3c0f8014	t7=$80140000
		//	addiu		t7, t7, $cbc0		# 00095600:25efcbc0	t7=$8013cbc0
		//	sll		t6, t6, 2		# 00095604:000e7080	
		//	sll		t4, t3, 2		# 00095608:000b6080	
		//	addu		v0, t6, t7		# 0009560c:01cf1021	
		//	subu		t4, t4, t3		# 00095610:018b6023	
		//	lw		t5, $0008(v0)		# 00095614:8c4d0008	
		//	sll		t4, t4, 2		# 00095618:000c6080	
		//	subu		t4, t4, t3		# 0009561c:018b6023	
		//	sll		t4, t4, 1		# 00095620:000c6040	
		//	lui		t7, $8016		# 00095624:3c0f8016	t7=$80160000
		//	lw		t9, $0004(v0)		# 00095628:8c590004	
		//	addiu		t7, t7, $01f0		# 0009562c:25ef01f0	t7=$801601f0
		//	addu		t6, t4, t5		# 00095630:018d7021	
		//	addu		t8, t6, t7		# 00095634:01cfc021	
		//	beq		zero, zero, $00095774	# 00095638:1000004e	v __00095774
		//	subu		v1, t8, t9		# 0009563c:03191823	
		//__00095640:					# 
		//	slti		at, a0, $0051		# 00095640:28810051	
		//	beq		at, zero, $0009569c	# 00095644:10200015	v __0009569c
		//	sll		t3, a0, 3		# 00095648:000458c0	
		//	lui		t8, $8014		# 0009564c:3c188014	t8=$80140000
		//	lbu		t8, $cba4(t8)		# 00095650:9318cba4	t8=$8013cba4
		//	subu		t3, t3, a0		# 00095654:01645823	
		//	lui		t4, $8014		# 00095658:3c0c8014	t4=$80140000
		//	addiu		t4, t4, $cbc0		# 0009565c:258ccbc0	t4=$8013cbc0
		//	sll		t3, t3, 2		# 00095660:000b5880	
		//	addu		v0, t3, t4		# 00095664:016c1021	
		//	sll		t9, t8, 2		# 00095668:0018c880	
		//	lw		t5, $0008(v0)		# 0009566c:8c4d0008	
		//	lw		t6, $0004(v0)		# 00095670:8c4e0004	
		//	subu		t9, t9, t8		# 00095674:0338c823	
		//	sll		t9, t9, 2		# 00095678:0019c880	
		//	addu		t9, t9, t8		# 0009567c:0338c821	
		//	sll		t9, t9, 3		# 00095680:0019c8c0	
		//	lui		t4, $8025		# 00095684:3c0c8025	t4=$80250000
		//	subu		t7, t5, t6		# 00095688:01ae7823	
		//	addu		t3, t9, t7		# 0009568c:032f5821	
		//	addiu		t4, t4, $6680		# 00095690:258c6680	t4=$80256680
		//	beq		zero, zero, $00095774	# 00095694:10000037	v __00095774
		//	addu		v1, t3, t4		# 00095698:016c1821	
		//__0009569c:					# 
		//	slti		at, a0, $0060		# 0009569c:28810060	
		//	beq		at, zero, $000956c4	# 000956a0:10200008	v __000956c4
		//	sll		t5, a0, 3		# 000956a4:000468c0	
		//	subu		t5, t5, a0		# 000956a8:01a46823	
		//	lui		t6, $8014		# 000956ac:3c0e8014	t6=$80140000
		//	addiu		t6, t6, $cbc0		# 000956b0:25cecbc0	t6=$8013cbc0
		//	sll		t5, t5, 2		# 000956b4:000d6880	
		//	addu		v0, t5, t6		# 000956b8:01ae1021	
		//	beq		zero, zero, $00095774	# 000956bc:1000002d	v __00095774
		//	lw		v1, $0004(v0)		# 000956c0:8c430004	
		//__000956c4:					# 
		//	slti		at, a0, $0064		# 000956c4:28810064	
		//	beq		at, zero, $00095714	# 000956c8:10200012	v __00095714
		//	sll		t7, a0, 3		# 000956cc:000478c0	
		//	sll		t8, a0, 3		# 000956d0:0004c0c0	
		//	subu		t8, t8, a0		# 000956d4:0304c023	
		//	lui		t9, $8014		# 000956d8:3c198014	t9=$80140000
		//	addiu		t9, t9, $cbc0		# 000956dc:2739cbc0	t9=$8013cbc0
		//	sll		t8, t8, 2		# 000956e0:0018c080	
		//	addu		v0, t8, t9		# 000956e4:03191021	
		//	lui		t5, $8014		# 000956e8:3c0d8014	t5=$80140000
		//	lbu		t5, $cbbc(t5)		# 000956ec:91adcbbc	t5=$8013cbbc
		//	lw		t7, $0008(v0)		# 000956f0:8c4f0008	
		//	lw		t3, $0004(v0)		# 000956f4:8c4b0004	
		//	lui		t9, $8004		# 000956f8:3c198004	t9=$80040000
		//	sll		t6, t5, 4		# 000956fc:000d7100	
		//	subu		t4, t7, t3		# 00095700:01eb6023	
		//	addu		t8, t6, t4		# 00095704:01ccc021	
		//	addiu		t9, t9, $e290		# 00095708:2739e290	t9=$8003e290
		//	beq		zero, zero, $00095774	# 0009570c:10000019	v __00095774
		//	addu		v1, t8, t9		# 00095710:03191821	
		//__00095714:					# 
		//	lui		t5, $8005		# 00095714:3c0d8005	t5=$80050000
		//	lw		t5, $2b34(t5)		# 00095718:8dad2b34	t5=$80052b34
		//	lui		t8, $8025		# 0009571c:3c188025	t8=$80250000
		//	subu		t7, t7, a0		# 00095720:01e47823	
		//	lbu		t6, $001a(t5)		# 00095724:91ae001a	t6=$8004dcea
		//	lui		t3, $8014		# 00095728:3c0b8014	t3=$80140000
		//	addiu		t3, t3, $cbc0		# 0009572c:256bcbc0	t3=$8013cbc0
		//	sll		t4, t6, 3		# 00095730:000e60c0	
		//	subu		t4, t4, t6		# 00095734:018e6023	
		//	sll		t4, t4, 4		# 00095738:000c6100	
		//	addu		t8, t8, t4		# 0009573c:030cc021	
		//	lbu		t8, $7a55(t8)		# 00095740:93187a55	
		//	sll		t7, t7, 2		# 00095744:000f7880	
		//	addu		v0, t7, t3		# 00095748:01eb1021	
		//	lw		t7, $0008(v0)		# 0009574c:8c4f0008	
		//	sll		t9, t8, 2		# 00095750:0018c880	
		//	addu		t9, t9, t8		# 00095754:0338c821	
		//	lw		t4, $0004(v0)		# 00095758:8c4c0004	
		//	sll		t9, t9, 1		# 0009575c:0019c840	
		//	lui		t5, $8014		# 00095760:3c0d8014	t5=$80140000
		//	addiu		t5, t5, $0768		# 00095764:25ad0768	t5=$80140768
		//	addu		t3, t9, t7		# 00095768:032f5821	
		//	addu		t6, t3, t5		# 0009576c:016d7021	
		//	subu		v1, t6, t4		# 00095770:01cc1823	
		//__00095774:					# 
		//	lw		a3, $0018(v0)		# 00095774:8c470018	
		//	sltiu		at, a3, $0008		# 00095778:2ce10008	
		//	beq		at, zero, $0009580c	# 0009577c:10200023	v __0009580c
		//	sll		t8, a3, 2		# 00095780:0007c080	
		//	lui		at, $8014		# 00095784:3c018014	at=$80140000
		//	addu		at, at, t8		# 00095788:00380821	
		//	lw		t8, $2360(at)		# 0009578c:8c382360	
		//	jr		t8			# 00095790:03000008	
		//	nop					# 00095794:00000000	
		//	lbu		a0, $0000(v1)		# 00095798:90640000	
		//	beq		zero, zero, $00095814	# 0009579c:1000001d	v __00095814
		//	lw		a1, $0000(sp)		# 000957a0:8fa50000	
		//	lb		a0, $0000(v1)		# 000957a4:80640000	
		//	beq		zero, zero, $00095814	# 000957a8:1000001a	v __00095814
		//	lw		a1, $0000(sp)		# 000957ac:8fa50000	
		//	lh		a0, $0000(v1)		# 000957b0:84640000	
		//	beq		zero, zero, $00095814	# 000957b4:10000017	v __00095814
		//	lw		a1, $0000(sp)		# 000957b8:8fa50000	
		//	lw		a0, $0000(v1)		# 000957bc:8c640000	
		//	beq		zero, zero, $00095814	# 000957c0:10000014	v __00095814
		//	lw		a1, $0000(sp)		# 000957c4:8fa50000	
		//	lwc1		$f0, $0000(v1)		# 000957c8:c4600000	
		//	lui		at, $8014		# 000957cc:3c018014	at=$80140000
		//	(ldc1)		a2, $2380(at)		# 000957d0:d4262380	
		//	(cop1_s)	$02000121		# 000957d4:46000121	
		//	lw		a1, $0000(sp)		# 000957d8:8fa50000	
		//	(cop1)		$02262202		# 000957dc:46262202	
		//	(cop1)		$02204020		# 000957e0:46204020	
		//	(cop1_s)	$0200028d		# 000957e4:4600028d	
		//	mfc1		a0, $f10		# 000957e8:44045000	
		//	beq		zero, zero, $00095814	# 000957ec:10000009	v __00095814
		//	nop					# 000957f0:00000000	
		//	lb		a1, $0000(v1)		# 000957f4:80650000	
		//	beq		zero, zero, $00095814	# 000957f8:10000006	v __00095814
		//	lb		a0, $0001(v1)		# 000957fc:80640001	
		//	lh		a1, $0000(v1)		# 00095800:84650000	
		//	beq		zero, zero, $00095814	# 00095804:10000003	v __00095814
		//	lh		a0, $0004(v1)		# 00095808:84640004	
		//__0009580c:					# 
		//	lw		a0, $0000(v1)		# 0009580c:8c640000	
		//	lw		a1, $0000(sp)		# 00095810:8fa50000	
		//__00095814:					# 
		//	lui		t2, $8004		# 00095814:3c0a8004	t2=$80040000
		//	addiu		t2, t2, $7588		# 00095818:254a7588	t2=$80047588
		//	lhu		a2, $0006(t2)		# 0009581c:95460006	a2=$8004758e
		//	addiu		at, zero, $0006		# 00095820:24010006	at=$00000006
		//	andi		t7, a2, $0200		# 00095824:30cf0200	
		//	beq		t7, zero, $00095834	# 00095828:11e00002	v __00095834
		//	andi		t3, a2, $0100		# 0009582c:30cb0100	
		//	addiu		a0, a0, $ffff		# 00095830:2484ffff	
		//__00095834:					# 
		//	beq		t3, zero, $00095840	# 00095834:11600002	v __00095840
		//	nop					# 00095838:00000000	
		//	addiu		a0, a0, $0001		# 0009583c:24840001	
		//__00095840:					# 
		//	bnel		a3, at, $00095890	# 00095840:54e10013	v __00095890
		//	lh		a2, $0014(v0)		# 00095844:84460014	
		//	lh		a2, $0014(v0)		# 00095848:84460014	
		//	lb		t4, $0008(t2)		# 0009584c:814c0008	t4=$80047590
		//	lb		t5, $0009(t2)		# 00095850:814d0009	t5=$80047591
		//	lw		t1, $000c(v0)		# 00095854:8c49000c	
		//	srav		t8, t4, a2		# 00095858:00ccc007	
		//	addu		a1, a1, t8		# 0009585c:00b82821	
		//	srav		t6, t5, a2		# 00095860:00cd7007	
		//	slt		at, a1, t1		# 00095864:00a9082a	
		//	beq		at, zero, $00095874	# 00095868:10200002	v __00095874
		//	subu		a0, a0, t6		# 0009586c:008e2023	
		//	or		a1, t1, zero		# 00095870:01202825	
		//__00095874:					# 
		//	lw		t0, $0010(v0)		# 00095874:8c480010	
		//	slt		at, t0, a1		# 00095878:0105082a	
		//	beql		at, zero, $000958b8	# 0009587c:5020000e	v __000958b8
		//	slt		at, a0, t1		# 00095880:0089082a	
		//	beq		zero, zero, $000958b4	# 00095884:1000000b	v __000958b4
		//	or		a1, t0, zero		# 00095888:01002825	
		//	lh		a2, $0014(v0)		# 0009588c:84460014	
		//__00095890:					# 
		//	lb		t9, $0009(t2)		# 00095890:81590009	t9=$80047591
		//	lb		t3, $0008(t2)		# 00095894:814b0008	t3=$80047590
		//	addiu		t5, a2, $0002		# 00095898:24cd0002	
		//	srav		t7, t9, a2		# 0009589c:00d97807	
		//	addu		a0, a0, t7		# 000958a0:008f2021	
		//	srav		t6, t3, t5		# 000958a4:01ab7007	
		//	addu		a0, a0, t6		# 000958a8:008e2021	
		//	lw		t0, $0010(v0)		# 000958ac:8c480010	
		//	lw		t1, $000c(v0)		# 000958b0:8c49000c	
		//__000958b4:					# 
		//	slt		at, a0, t1		# 000958b4:0089082a	
		//__000958b8:					# 
		//	beq		at, zero, $000958c4	# 000958b8:10200002	v __000958c4
		//	sll		t4, a3, 2		# 000958bc:00076080	
		//	or		a0, t1, zero		# 000958c0:01202025	
		//__000958c4:					# 
		//	slt		at, t0, a0		# 000958c4:0104082a	
		//	beql		at, zero, $000958d8	# 000958c8:50200003	v __000958d8
		//	sltiu		at, a3, $0007		# 000958cc:2ce10007	
		//	or		a0, t0, zero		# 000958d0:01002025	
		//	sltiu		at, a3, $0007		# 000958d4:2ce10007	
		//__000958d8:					# 
		//	beq		at, zero, $00095940	# 000958d8:10200019	v __00095940
		//	lui		at, $8014		# 000958dc:3c018014	at=$80140000
		//	addu		at, at, t4		# 000958e0:002c0821	
		//	lw		t4, $2388(at)		# 000958e4:8c2c2388	
		//	jr		t4			# 000958e8:01800008	
		//	nop					# 000958ec:00000000	
		//	beq		zero, zero, $00095944	# 000958f0:10000014	v __00095944
		//	sb		a0, $0000(v1)		# 000958f4:a0640000	
		//	beq		zero, zero, $00095944	# 000958f8:10000012	v __00095944
		//	sb		a0, $0000(v1)		# 000958fc:a0640000	
		//	beq		zero, zero, $00095944	# 00095900:10000010	v __00095944
		//	sh		a0, $0000(v1)		# 00095904:a4640000	
		//	beq		zero, zero, $00095944	# 00095908:1000000e	v __00095944
		//	sw		a0, $0000(v1)		# 0009590c:ac640000	
		//	mtc1		a0, $f16		# 00095910:44848000	
		//	lui		at, $8014		# 00095914:3c018014	at=$80140000
		//	(ldc1)		a2, $23a8(at)		# 00095918:d42623a8	
		//	cvt.s.w		$f18, $f16		# 0009591c:468084a0	
		//	(cop1_s)	$02009121		# 00095920:46009121	
		//	(cop1)		$02262203		# 00095924:46262203	
		//	(cop1)		$022042a0		# 00095928:462042a0	
		//	beq		zero, zero, $00095944	# 0009592c:10000005	v __00095944
		//	swc1		$f10, $0000(v1)		# 00095930:e46a0000	
		//	sb		a1, $0000(v1)		# 00095934:a0650000	
		//	beq		zero, zero, $00095944	# 00095938:10000002	v __00095944
		//	sb		a0, $0001(v1)		# 0009593c:a0640001	
		//__00095940:					# 
		//	sw		a0, $0000(v1)		# 00095940:ac640000	
		//__00095944:					# 
		//	jr		ra			# 00095944:03e00008	
		//	addiu		sp, sp, $0008		# 00095948:27bd0008	
	}

	// Looks like it ought to do more than just vehicles
	// but freezes on higher sub menu indexes
	// Freezes because 8000ABF0 is trying to load byte from 80000000
	// if give that a valid pointer then 80095418 tries to load a word from a halfword offset (error)
	// RAM 0009594c
	static void debug_displayMenuItems(int subMenuIndex, int numPropertiesToShow)
	{
		
		//	addiu		sp, sp, $ffd8		# 0009594c:27bdffd8	
		//	sw		s3, $0020(sp)		# 00095950:afb30020	
		//	sll		s3, a1, 16		# 00095954:00059c00	
		//	sra		t8, s3, 16		# 00095958:0013c403	
		//	sw		s0, $0014(sp)		# 0009595c:afb00014	
		//	sll		t6, a0, 16		# 00095960:00047400	
		//	sra		t7, t6, 16		# 00095964:000e7c03	
		//	or		s3, t8, zero		# 00095968:03009825	
		//	sw		ra, $0024(sp)		# 0009596c:afbf0024	
		//	sw		s2, $001c(sp)		# 00095970:afb2001c	
		//	sw		s1, $0018(sp)		# 00095974:afb10018	
		//	sw		a0, $0028(sp)		# 00095978:afa40028	
		//	sw		a1, $002c(sp)		# 0009597c:afa5002c	
		//	blez		t8, $000959b8		# 00095980:1b00000d	v __000959b8
		//	or		s0, zero, zero		# 00095984:00008025	
		int propertyNumber = 0;
		if (cast(short)numPropertiesToShow > 0)
		{
			//	or		s1, t7, zero		# 00095988:01e08825	
			do
			{
				propertyNumber++;
				//__0009598c:					# 
				//	addiu		s2, s0, $0001		# 0009598c:26120001	s2=$00000001
				//	sll		a1, s2, 16		# 00095990:00122c00	a1=$00010000
				//	sll		a0, s1, 16		# 00095994:00112400	
				//	sra		t9, a0, 16		# 00095998:0004cc03	
				//	sra		t0, a1, 16		# 0009599c:00054403	
				//	or		a1, t0, zero		# 000959a0:01002825	a1=$00000001
				//	jal		$00095100		# 000959a4:0c025440	^ FNC_00095100
				//	or		a0, t9, zero		# 000959a8:03202025	
				debug_displayProperty(cast(short)subMenuIndex, cast(short)propertyNumber);
				//	or		s0, s2, zero		# 000959ac:02408025	s0=$00000001
				//	bne		s2, s3, $0009598c	# 000959b0:1653fff6	^ __0009598c
				//	addiu		s1, s1, $0001		# 000959b4:26310001	
			}
			while (propertyNumber != numPropertiesToShow);
		}
		//__000959b8:					# 
		//	lw		ra, $0024(sp)		# 000959b8:8fbf0024	
		//	lui		at, $8015		# 000959bc:3c018015	at=$80150000
		//	sw		s3, $ecf4(at)		# 000959c0:ac33ecf4	[8014ecf4]
		x8014ecf4 = numPropertiesToShow;
		//	lw		s3, $0020(sp)		# 000959c4:8fb30020	
		//	lw		s0, $0014(sp)		# 000959c8:8fb00014	
		//	lw		s1, $0018(sp)		# 000959cc:8fb10018	
		//	lw		s2, $001c(sp)		# 000959d0:8fb2001c	
		//	jr		ra			# 000959d4:03e00008	
		//	addiu		sp, sp, $0028		# 000959d8:27bd0028	
	}

	// RAM GREECE
	static void fnc000959dc() {
	}

	/// Possible file boundary

	// RAM GREECE
	static void fnc000959f0() {
	}

	// RAM GREECE
	static void fnc00095a6c() {
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc00095bd4() {
	}

	// RAM GREECE
	static void fnc00095d4c() {
	}

	// RAM 00095f08
	static void guess_drawMapTiles() {
		N64.fnc000038e0();
		fnc000959f0();
		N64.fnc000038e0();
		fnc00095a6c();
		fnc000959f0();
	}

	// RAM GREECE
	static void fnc000966ec() {
		N64.sins();
		N64.coss();
		N64.sins();
		N64.fnc000039d0();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc00096bc4() {
		fnc000b0f20();
	}

	// RAM GREECE
	static void fnc000970c0() {
	}

	// RAM GREECE
	static void fnc00097444() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc00097994() {
		N64.fnc0000c790();
		N64.fnc0000c81c();
		N64.fnc00011fac();
		N64.fnc0000cc3c();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc00097b74() {
		fnc00101ef4();
	}

	// RAM GREECE
	static void fnc00097cb4() {
	}

	// RAM GREECE
	static void fnc00097e1c() {
		N64.coss();
		N64.sins();
		N64.sins();
		N64.sins();
		N64.coss();
		N64.guPerspective();
		N64.guLookAt();
	}

	// RAM 0009811c
	static void guess_doMap() {
		N64.fnc0000505c();
		N64.fnc000050c4();
		guess_drawMapTiles();
		N64.fnc0000505c();
		N64.fnc000050c4();
		N64.fnc0000dc9c();
		N64.fnc0000505c();
		N64.fnc0000e4b0();
		N64.SetGameplayResolution();
		N64.fnc0000e4c4();
		N64.fnc0000afdc();
		N64.fnc00018d7c();
		N64.fnc0000afdc();
		N64.sins();
		fnc00097cb4();
		N64.fnc00014208();
		N64.fnc00014208();
		N64.fnc00015860();
		N64.ButtonIsNewlyPressed();
		N64.fnc000153d8();
		N64.coss();
		N64.sins();
		N64.ButtonIsNewlyPressed();
		N64.fnc000153d8();
		N64.fnc00018d14();
		N64.fnc00018d14();
		N64.fnc00018d7c();
		N64.ButtonIsNewlyPressed();
		N64.fnc000153d8();
		N64.fnc000050c4();
		fnc00095bd4();
		fnc00097e1c();
		N64.fnc000039d0();
		fnc000970c0();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		fnc00097444();
		N64.fnc000153d8();
		fnc000966ec();
		fnc000966ec();
		fnc00095d4c();
		fnc00095d4c();
		N64.coss();
		fnc000966ec();
		fnc000966ec();
		fnc000966ec();
		fnc00095d4c();
		fnc00095d4c();
		N64.fnc000039d0();
		fnc00097b74();
		fnc00097e1c();
		N64.fnc000039d0();
		fnc00097b74();
		fnc00097e1c();
		N64.fnc000039d0();
		N64.fnc000039d0();
		fnc00097994();
		N64.fnc000039d0();
		fnc00097b74();
		fnc00097e1c();
		fnc00096bc4();
		fnc000966ec();
		fnc000966ec();
		N64.fnc0000a2b8();
		N64.fnc0000a2b8();
		N64.fnc0000a2b8();
		N64.fnc0000a2b8();
		N64.fnc000092b8();
		N64.fnc0000a2b8();
		N64.fnc0000a2b8();
		N64.fnc000092b8();
		N64.fnc000092b8();
		N64.fnc0000e53c();
		N64.fnc00018aec();
		N64.fnc00018a58();
		N64.fnc00017ca4();
		N64.fnc0000b044();
		N64.fnc0000505c();
		N64.ButtonIsNewlyPressed();
		N64.fnc00018d58();
		N64.fnc0000afdc();
		N64.fnc000056a8();
		N64.fnc000056a8();
		N64.fnc00011d6c();
		N64.fnc00011d6c();
		N64.fnc000050c4();
		N64.fnc00013324();
	}

	// RAM GREECE
	static void fnc0009bac0() {
		fnc00139b34();
	}

	// RAM GREECE
	static void fnc0009bc48() {
	}

	// RAM GREECE
	static void fnc0009bcb4() {
	}

	// RAM GREECE
	static void fnc0009bcc0() {
		fnc0009bc48();
	}

	// RAM GREECE
	static void fnc0009bdb8() {
	}

	// RAM GREECE
	static void fnc0009bf64() {
		fnc0009bdb8();
		fnc0009bdb8();
		fnc0009bdb8();
		fnc0009bdb8();
		fnc0009bdb8();
	}

	// RAM GREECE
	static void fnc0009c1d8() {
		N64.fnc00003824();
		N64.sins();
		N64.coss();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc0009c458() {
	}

	// RAM GREECE
	static void fnc0009c470() {
	}

	// RAM GREECE
	static void fnc0009c4a0() {
	}

	// RAM GREECE
	static void fnc0009c4b0() {
	}

	// RAM GREECE
	static void fnc0009c4d8() {
	}

	// RAM GREECE
	static void fnc0009c4e8() {
	}

	// RAM GREECE
	static void fnc0009c4f8() {
	}

	// RAM 0009c6cc
	/// Additional params
	/// sp10 Pointer to icon
	/// sp14 Type, 2=Vertical, 3=Horizontal ...
	/// sp18 Values > 0 scale icon smaller
	/// sp1c Alters color of the bar - used to make it flash
	/// sp20 Length of the bar background
	static void drawHudBarWithIcon(int xPosition, int yPosition, float guess_barXScale)
	{
		N64.fnc00004498();
		N64.fnc000039d0();
		N64.fnc000092b8();
		N64.fnc000092b8();
		N64.fnc000092b8();
	}

	// RAM GREECE
	static void fnc0009d900() {
	}

	// RAM 0009d96c
	/// Draws Health/Human/vehicle/+more bars on HUD
	static void drawHudBars() {
		N64.guOrtho();
		N64.fnc000039d0();
		fnc0009d900();
		fnc0009d900();
		fnc0009d900();
		drawAlienHealth();
		drawHudBarWithIcon();
		drawHudBarWithIcon();
		drawHudBarWithIcon();
		drawHudBarWithIcon();
		fnc000880b8();
		fnc0009c4b0();
		fnc0009c4a0();
		fnc0009d900();
		drawHudBarWithIcon();
		drawHudBarWithIcon();
		N64.drawText();
		N64.fnc00018ac8();
		N64.fnc000092b8();
	}

	// RAM 0009e994
	static void drawAlienHealth() {
		N64.fnc00018aa0();
		fnc0013b8c8();
		drawHudBarWithIcon();
	}

	// RAM GREECE
	static void fnc0009ec90() {
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
	}

	// RAM GREECE
	static void fnc0009ee30() {
		fnc0009ec90();
	}

	// RAM GREECE
	static void fnc0009f130() {
		N64.fnc000153d8();
		N64.fnc000153d8();
		N64.fnc000153d8();
		N64.fnc000153d8();
		N64.fnc0001a54c();
		N64.fnc0001a54c();
		N64.fnc0001a54c();
		N64.fnc0001a54c();
		N64.fnc00013810();
		N64.ButtonIsNewlyPressed();
		N64.fnc000153d8();
		N64.fnc00006dac();
		fnc000fd410();
		fnc001392fc();
		N64.fnc00006dac();
	}

	// RAM GREECE
	static void fnc0009fb1c() {
	}

	// RAM GREECE
	static void fnc0009fb58() {
		fnc0009c1d8();
		fnc00076208();
		fnc0009c1d8();
		fnc000f9c40();
		fnc000f9c40();
		N64.fnc000039d0();
		fnc000f9c40();
		fnc000f9c40();
		fnc0009c1d8();
	}

	// RAM 000a03fc
	static void displayScanner() {
		fnc0009c458(); // If this runs all the HuD items shrink to nothing
		N64.fnc00017b78();
		N64.fnc00018a58();
		fnc0009c470();
		fnc0009bc48();
		N64.fnc000038e0();
		N64.fnc000153d8();
		N64.fnc00015bcc();
		N64.fnc00015bcc();
		fnc0009bcc0();
		fnc0009bcc0();
		fnc0009bcc0();
		fnc0009bcc0();
		fnc0009bcc0();
		fnc0009bcc0();
		fnc0009bcc0();
		fnc0009bcc0();
		fnc0009bcc0();
		fnc0009bcc0();
		N64.osWritebackDCacheAll();
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc000039d0();
		drawHudBars();
		N64.fnc0001a130();
		N64.ButtonIsNewlyPressed();
		N64.fnc0001a068(); // shows previous daisy message ?
		N64.fnc00018aec();
		fnc0009c458();
		N64.fnc00018aa0();
		N64.fnc00017ca4();
		fnc0013001c();
		fnc0009f130(); // show pause menu icons
		N64.fnc0001a828();
		fnc0013af58(); // show gun selection
		fnc0009fb58();
	}

	// RAM GREECE
	static void fnc000a1364()
	{
		//	lui		t6, $8014		# 000a1364:3c0e8014	t6=$80140000
		//	lw		t6, $d75c(t6)		# 000a1368:8dced75c	t6=$8013d75c
		//	addiu		sp, sp, $ffe8		# 000a136c:27bdffe8	
		//	sw		ra, $0014(sp)		# 000a1370:afbf0014	
		//	lui		at, $8014		# 000a1374:3c018014	at=$80140000
		//	jal		$0001f540		# 000a1378:0c007d50	^ FNC_0001f540
		//	sw		t6, $d758(at)		# 000a137c:ac2ed758	[8013d758]
		x8013d758 = x8013d75c;
		x8013d75c = N64.osGetCount();
		//	lui		a1, $8014		# 000a1380:3c058014	a1=$80140000
		//	addiu		a1, a1, $d75c		# 000a1384:24a5d75c	a1=$8013d75c
		//	lui		a0, $8015		# 000a1388:3c048015	a0=$80150000
		//	addiu		a0, a0, $f20c		# 000a138c:2484f20c	a0=$8014f20c
		//	sw		v0, $0000(a1)		# 000a1390:aca20000	[8013d75c]
		//	lui		t1, $8015		# 000a1394:3c098015	t1=$80150000
		//	lw		t1, $f610(t1)		# 000a1398:8d29f610	t1=$8014f610
		//	lw		v1, $0000(a0)		# 000a139c:8c830000	v1=$8014f20c
		//	lui		t8, $8014		# 000a13a0:3c188014	t8=$80140000
		//	lw		t8, $d758(t8)		# 000a13a4:8f18d758	t8=$8013d758
		//	sll		t2, t1, 2		# 000a13a8:00095080	
		//	sll		t0, v1, 5		# 000a13ac:00034140	
		//	addu		t3, t0, t2		# 000a13b0:010a5821	
		//	lui		at, $8015		# 000a13b4:3c018015	at=$80150000
		//	addu		at, at, t3		# 000a13b8:002b0821	
		//	subu		t9, v0, t8		# 000a13bc:0058c823	
		//	sw		t9, $f210(at)		# 000a13c0:ac39f210	
		//	addiu		t4, v1, $0001		# 000a13c4:246c0001	
		//	sltiu		at, t4, $0020		# 000a13c8:2d810020	
		//	bne		at, zero, $000a13d8	# 000a13cc:14200002	v __000a13d8
		//	sw		t4, $0000(a0)		# 000a13d0:ac8c0000	[8014f20c]
		//	sw		zero, $0000(a0)		# 000a13d4:ac800000	[8014f20c]
		//__000a13d8:					# 
		//	lw		ra, $0014(sp)		# 000a13d8:8fbf0014	
		//	addiu		sp, sp, $0018		# 000a13dc:27bd0018	
		//	jr		ra			# 000a13e0:03e00008	
		//	nop					# 000a13e4:00000000	
	}

	// RAM GREECE
	static void fnc000a13e8()
	{
		//	addiu		sp, sp, $ffe8		# 000a13e8:27bdffe8	
		//	sw		ra, $0014(sp)		# 000a13ec:afbf0014	
		//	jal		$0001f540		# 000a13f0:0c007d50	^ FNC_0001f540
		//	nop					# 000a13f4:00000000	
		x8013d75c = N64.osGetCount();
		//	lw		ra, $0014(sp)		# 000a13f8:8fbf0014	
		//	lui		at, $8014		# 000a13fc:3c018014	at=$80140000
		//	sw		v0, $d75c(at)		# 000a1400:ac22d75c	[8013d75c]
		//	jr		ra			# 000a1404:03e00008	
		//	addiu		sp, sp, $0018		# 000a1408:27bd0018	
	}

	// RAM 000a140c
	static void debugDrawTimingGraph()
	{
		//	addiu		sp, sp, $ffa8		# 000a140c:27bdffa8	
		//	lui		t6, $8004		# 000a1410:3c0e8004	t6=$80040000
		//	lh		t6, $7720(t6)		# 000a1414:85ce7720	t6=$80047720
		//	sw		ra, $003c(sp)		# 000a1418:afbf003c	
		//	sw		fp, $0038(sp)		# 000a141c:afbe0038	
		//	sw		s7, $0034(sp)		# 000a1420:afb70034	
		//	sw		s6, $0030(sp)		# 000a1424:afb60030	
		//	sw		s5, $002c(sp)		# 000a1428:afb5002c	
		//	sw		s4, $0028(sp)		# 000a142c:afb40028	
		//	sw		s3, $0024(sp)		# 000a1430:afb30024	
		//	sw		s2, $0020(sp)		# 000a1434:afb20020	
		//	sw		s1, $001c(sp)		# 000a1438:afb1001c	
		//	beq		t6, zero, $000a1734	# 000a143c:11c000bd	v __000a1734
		//	sw		s0, $0018(sp)		# 000a1440:afb00018	
		if (x80047720 != 0)
		{
			//	jal		$00008938		# 000a1444:0c00224e	^ FNC_00008938
			//	nop					# 000a1448:00000000	
			N64.debugDrawTimingGraphBars();
			//	lui		s1, $8006		# 000a144c:3c118006	s1=$80060000
			//	addiu		s1, s1, $bb2c		# 000a1450:2631bb2c	s1=$8005bb2c
			//	lw		v0, $0000(s1)		# 000a1454:8e220000	v0=$8005bb2c
			//	lui		t2, $e700		# 000a1458:3c0ae700	t2=$e7000000
			//	lui		t9, $ba00		# 000a145c:3c19ba00	t9=$ba000000
			//	addiu		t7, v0, $0008		# 000a1460:244f0008	t7=$801d3a08
			//	sw		t7, $0000(s1)		# 000a1464:ae2f0000	[8005bb2c]
			//	sw		zero, $0004(v0)		# 000a1468:ac400004	[801d3a04]
			//	sw		t2, $0000(v0)		# 000a146c:ac4a0000	[801d3a00]
			//	lw		v0, $0000(s1)		# 000a1470:8e220000	v0=$8005bb2c
			//	ori		t9, t9, $1402		# 000a1474:37391402	t9=$ba001402
			//	lui		t3, $0030		# 000a1478:3c0b0030	t3=$00300000
			//	addiu		t8, v0, $0008		# 000a147c:24580008	t8=$801d3a08
			//	sw		t8, $0000(s1)		# 000a1480:ae380000	[8005bb2c]
			//	sw		t3, $0004(v0)		# 000a1484:ac4b0004	[801d3a04]
			//	sw		t9, $0000(v0)		# 000a1488:ac590000	[801d3a00]
			//	lw		v0, $0000(s1)		# 000a148c:8e220000	v0=$8005bb2c
			//	lui		t5, $b900		# 000a1490:3c0db900	t5=$b9000000
			//	lui		t6, $0f0a		# 000a1494:3c0e0f0a	t6=$0f0a0000
			//	addiu		t4, v0, $0008		# 000a1498:244c0008	t4=$801d3a08
			//	sw		t4, $0000(s1)		# 000a149c:ae2c0000	[8005bb2c]
			//	ori		t6, t6, $4000		# 000a14a0:35ce4000	t6=$0f0a4000
			//	ori		t5, t5, $031d		# 000a14a4:35ad031d	t5=$b900031d
			//	addiu		a0, zero, $0020		# 000a14a8:24040020	a0=$00000020
			//	addiu		s0, zero, $001f		# 000a14ac:2410001f	s0=$0000001f
			//	sw		t5, $0000(v0)		# 000a14b0:ac4d0000	[801d3a00]
			//	beq		a0, zero, $000a164c	# 000a14b4:10800065	v __000a164c
			//	sw		t6, $0004(v0)		# 000a14b8:ac4e0004	[801d3a04]
			//	lui		s2, $8015		# 000a14bc:3c128015	s2=$80150000
			//	lui		s5, $8004		# 000a14c0:3c158004	s5=$80040000
			//	addiu		s5, s5, $7722		# 000a14c4:26b57722	s5=$80047722
			//	addiu		s2, s2, $f5f0		# 000a14c8:2652f5f0	s2=$8014f5f0
			//	addiu		s3, zero, $00d3		# 000a14cc:241300d3	s3=$000000d3
			//	addiu		s4, zero, $00cf		# 000a14d0:241400cf	s4=$000000cf
			//	lui		fp, $0008		# 000a14d4:3c1e0008	fp=$00080000
			//	lui		s7, $f600		# 000a14d8:3c17f600	s7=$f6000000
			//	lui		s6, $f700		# 000a14dc:3c16f700	s6=$f7000000
			//__000a14e0:					# 
			//	addiu		t8, zero, $0000		# 000a14e0:24180000	
			//	addiu		t9, zero, $0000		# 000a14e4:24190000	
			//	sw		t9, $0044(sp)		# 000a14e8:afb90044	
			//	sw		t8, $0040(sp)		# 000a14ec:afb80040	
			//	addiu		v0, zero, $0007		# 000a14f0:24020007	v0=$00000007
			//	addiu		v1, s2, $001c		# 000a14f4:2643001c	v1=$8014f60c
			//__000a14f8:					# 
			//	lw		t5, $0000(v1)		# 000a14f8:8c6d0000	t5=$8014f60c
			//	lw		t7, $0044(sp)		# 000a14fc:8faf0044	
			//	lw		t6, $0040(sp)		# 000a1500:8fae0040	
			//	addiu		t4, zero, $0000		# 000a1504:240c0000	
			//	addu		t9, t5, t7		# 000a1508:01afc821	
			//	sltu		at, t9, t7		# 000a150c:032f082b	
			//	addu		t8, at, t4		# 000a1510:002cc021	
			//	or		a0, v0, zero		# 000a1514:00402025	a0=$00000007
			//	addu		t8, t8, t6		# 000a1518:030ec021	
			//	sw		t8, $0040(sp)		# 000a151c:afb80040	
			//	sw		t9, $0044(sp)		# 000a1520:afb90044	
			//	addiu		v1, v1, $fffc		# 000a1524:2463fffc	v1=$8014f608
			//	bne		v0, zero, $000a14f8	# 000a1528:1440fff3	^ __000a14f8
			//	addiu		v0, v0, $ffff		# 000a152c:2442ffff	v0=$00000006
			//	lh		a3, $0000(s5)		# 000a1530:86a70000	a3=$80047722
			//	lw		a0, $0040(sp)		# 000a1534:8fa40040	
			//	lw		a1, $0044(sp)		# 000a1538:8fa50044	
			//	jal		$0001d1a0		# 000a153c:0c007468	^ FNC_0001d1a0
			//	sra		a2, a3, 31		# 000a1540:000737c3	
			N64.__ull_rshift();
			//	lui		t2, $e700		# 000a1544:3c0ae700	t2=$e7000000
			//	sw		v0, $0040(sp)		# 000a1548:afa20040	
			//	sw		v1, $0044(sp)		# 000a154c:afa30044	
			//	or		t4, v0, zero		# 000a1550:00406025	t4=$00000006
			//	or		t5, v1, zero		# 000a1554:00606825	t5=$8014f608
			//	bne		t4, zero, $000a1568	# 000a1558:15800003	v __000a1568
			//	andi		t8, s0, $0002		# 000a155c:32180002	
			//	sltiu		at, t5, $00c9		# 000a1560:2da100c9	
			//	bne		at, zero, $000a1578	# 000a1564:14200004	v __000a1578
			//__000a1568:					# 
			//	addiu		t6, zero, $0000		# 000a1568:240e0000	
			//	addiu		t7, zero, $00c8		# 000a156c:240f00c8	t7=$000000c8
			//	sw		t7, $0044(sp)		# 000a1570:afaf0044	
			//	sw		t6, $0040(sp)		# 000a1574:afae0040	
			//__000a1578:					# 
			//	beq		t8, zero, $000a1588	# 000a1578:13000003	v __000a1588
			//	andi		t9, s0, $0001		# 000a157c:32190001	
			//	beq		zero, zero, $000a158c	# 000a1580:10000002	v __000a158c
			//	addiu		t0, zero, $03c0		# 000a1584:240803c0	t0=$000003c0
			//__000a1588:					# 
			//	or		t0, zero, zero		# 000a1588:00004025	
			//__000a158c:					# 
			//	beq		t9, zero, $000a159c	# 000a158c:13200003	v __000a159c
			//	andi		t3, s0, $0004		# 000a1590:320b0004	
			//	beq		zero, zero, $000a15a0	# 000a1594:10000002	v __000a15a0
			//	addiu		t1, zero, $001e		# 000a1598:2409001e	t1=$0000001e
			//__000a159c:					# 
			//	or		t1, zero, zero		# 000a159c:00004825	
			//__000a15a0:					# 
			//	beq		t3, zero, $000a15b0	# 000a15a0:11600003	v __000a15b0
			//	addiu		s2, s2, $ffe0		# 000a15a4:2652ffe0	
			//	beq		zero, zero, $000a15b4	# 000a15a8:10000002	v __000a15b4
			//	addiu		a0, zero, $7800		# 000a15ac:24047800	a0=$00007800
			//__000a15b0:					# 
			//	or		a0, zero, zero		# 000a15b0:00002025	
			//__000a15b4:					# 
			//	lw		a1, $0000(s1)		# 000a15b4:8e250000	
			//	addu		t6, a0, t1		# 000a15b8:00897021	
			//	addu		v1, t6, t0		# 000a15bc:01c81821	
			//	addiu		t4, a1, $0008		# 000a15c0:24ac0008	
			//	sw		t4, $0000(s1)		# 000a15c4:ae2c0000	
			//	sw		zero, $0004(a1)		# 000a15c8:aca00004	
			//	sw		t2, $0000(a1)		# 000a15cc:acaa0000	
			//	lw		a2, $0000(s1)		# 000a15d0:8e260000	
			//	sll		t7, v1, 16		# 000a15d4:00037c00	
			//	or		t8, t7, v1		# 000a15d8:01e3c025	
			//	addiu		t5, a2, $0008		# 000a15dc:24cd0008	
			//	sw		t5, $0000(s1)		# 000a15e0:ae2d0000	
			//	sw		t8, $0004(a2)		# 000a15e4:acd80004	
			//	sw		s6, $0000(a2)		# 000a15e8:acd60000	
			//	lw		t5, $0044(sp)		# 000a15ec:8fad0044	
			//	lw		v0, $0000(s1)		# 000a15f0:8e220000	
			//	andi		t3, s4, $03ff		# 000a15f4:328b03ff	
			//	addiu		t7, t5, $0020		# 000a15f8:25af0020	
			//	addiu		t9, v0, $0008		# 000a15fc:24590008	
			//	sw		t9, $0000(s1)		# 000a1600:ae390000	
			//	andi		t8, t7, $03ff		# 000a1604:31f803ff	
			//	sll		t9, t8, 14		# 000a1608:0018cb80	
			//	or		t4, t9, s7		# 000a160c:03376025	
			//	andi		t5, s3, $03ff		# 000a1610:326d03ff	
			//	sll		t6, t5, 2		# 000a1614:000d7080	
			//	sll		t8, t3, 2		# 000a1618:000bc080	
			//	sltiu		at, t7, $0020		# 000a161c:2de10020	
			//	or		a0, s0, zero		# 000a1620:02002025	
			//	or		t7, t4, t6		# 000a1624:018e7825	
			//	or		t9, t8, fp		# 000a1628:031ec825	
			//	addiu		s3, s3, $fffa		# 000a162c:2673fffa	
			//	addiu		s4, s4, $fffa		# 000a1630:2694fffa	
			//	sw		t9, $0004(v0)		# 000a1634:ac590004	
			//	sw		t7, $0000(v0)		# 000a1638:ac4f0000	
			//	or		a3, v0, zero		# 000a163c:00403825	
			//	bne		s0, zero, $000a14e0	# 000a1640:1600ffa7	^ __000a14e0
			//	addiu		s0, s0, $ffff		# 000a1644:2610ffff	
			//	addiu		s0, zero, $001f		# 000a1648:2410001f	s0=$0000001f
			//__000a164c:					# 
			//	lw		v0, $0000(s1)		# 000a164c:8e220000	
			//	lui		t6, $ba00		# 000a1650:3c0eba00	t6=$ba000000
			//	ori		t6, t6, $1402		# 000a1654:35ce1402	t6=$ba001402
			//	addiu		t5, v0, $0008		# 000a1658:244d0008	
			//	sw		t5, $0000(s1)		# 000a165c:ae2d0000	
			//	sw		zero, $0004(v0)		# 000a1660:ac400004	
			//	sw		t2, $0000(v0)		# 000a1664:ac4a0000	
			//	lw		v0, $0000(s1)		# 000a1668:8e220000	
			//	addiu		t1, zero, $0001		# 000a166c:24090001	t1=$00000001
			//	lui		t3, $b700		# 000a1670:3c0bb700	t3=$b7000000
			//	addiu		t4, v0, $0008		# 000a1674:244c0008	
			//	sw		t4, $0000(s1)		# 000a1678:ae2c0000	
			//	sw		zero, $0004(v0)		# 000a167c:ac400004	
			//	sw		t6, $0000(v0)		# 000a1680:ac4e0000	
			//	lw		v0, $0000(s1)		# 000a1684:8e220000	
			//	lui		t5, $0055		# 000a1688:3c0d0055	t5=$00550000
			//	lui		t9, $b900		# 000a168c:3c19b900	t9=$b9000000
			//	addiu		t7, v0, $0008		# 000a1690:244f0008	
			//	sw		t7, $0000(s1)		# 000a1694:ae2f0000	
			//	sw		t1, $0004(v0)		# 000a1698:ac490004	
			//	sw		t3, $0000(v0)		# 000a169c:ac4b0000	
			//	lw		v0, $0000(s1)		# 000a16a0:8e220000	
			//	ori		t9, t9, $031d		# 000a16a4:3739031d	t9=$b900031d
			//	ori		t5, t5, $2078		# 000a16a8:35ad2078	t5=$00552078
			//	addiu		t8, v0, $0008		# 000a16ac:24580008	
			//	sw		t8, $0000(s1)		# 000a16b0:ae380000	
			//	lui		t0, $8015		# 000a16b4:3c088015	t0=$80150000
			//	sw		t5, $0004(v0)		# 000a16b8:ac4d0004	
			//	sw		t9, $0000(v0)		# 000a16bc:ac590000	
			//	addiu		t0, t0, $f610		# 000a16c0:2508f610	t0=$8014f610
			//	lw		v1, $0000(t0)		# 000a16c4:8d030000	v1=$8014f610
			//	lui		t6, $8014		# 000a16c8:3c0e8014	t6=$80140000
			//	lui		t4, $8014		# 000a16cc:3c0c8014	t4=$80140000
			//	lw		t4, $d764(t4)		# 000a16d0:8d8cd764	t4=$8013d764
			//	lw		t6, $d760(t6)		# 000a16d4:8dced760	t6=$8013d760
			//	lui		at, $8015		# 000a16d8:3c018015	at=$80150000
			//	sll		t3, v1, 2		# 000a16dc:00035880	
			//	addu		at, at, t3		# 000a16e0:002b0821	
			//	subu		t7, t4, t6		# 000a16e4:018e7823	
			//	sw		t7, $f210(at)		# 000a16e8:ac2ff210	
			//	addiu		t8, v1, $0001		# 000a16ec:24780001	
			//	sltiu		at, t8, $0008		# 000a16f0:2f010008	
			//	sw		t8, $0000(t0)		# 000a16f4:ad180000	[8014f610]
			//	bne		at, zero, $000a1708	# 000a16f8:14200003	v __000a1708
			//	or		v1, t8, zero		# 000a16fc:03001825	
			//	sw		zero, $0000(t0)		# 000a1700:ad000000	[8014f610]
			//	or		v1, zero, zero		# 000a1704:00001825	
			//__000a1708:					# 
			//	lui		t5, $8015		# 000a1708:3c0d8015	t5=$80150000
			//	addiu		t5, t5, $f5f0		# 000a170c:25adf5f0	t5=$8014f5f0
			//	sll		t9, v1, 2		# 000a1710:0003c880	
			//	addu		v0, t9, t5		# 000a1714:032d1021	v0=$8014f5f0
			//__000a1718:					# 
			//	or		a0, s0, zero		# 000a1718:02002025	
			//	sw		zero, $0000(v0)		# 000a171c:ac400000	[8014f5f0]
			//	addiu		v0, v0, $ffe0		# 000a1720:2442ffe0	v0=$8014f5d0
			//	bne		s0, zero, $000a1718	# 000a1724:1600fffc	^ __000a1718
			//	addiu		s0, s0, $ffff		# 000a1728:2610ffff	
			//	lui		at, $8015		# 000a172c:3c018015	at=$80150000
			//	sw		t1, $f20c(at)		# 000a1730:ac29f20c	[8014f20c]
		}
		//__000a1734:					# 
		//	lw		ra, $003c(sp)		# 000a1734:8fbf003c	
		//	lw		s0, $0018(sp)		# 000a1738:8fb00018	
		//	lw		s1, $001c(sp)		# 000a173c:8fb1001c	
		//	lw		s2, $0020(sp)		# 000a1740:8fb20020	
		//	lw		s3, $0024(sp)		# 000a1744:8fb30024	
		//	lw		s4, $0028(sp)		# 000a1748:8fb40028	
		//	lw		s5, $002c(sp)		# 000a174c:8fb5002c	
		//	lw		s6, $0030(sp)		# 000a1750:8fb60030	
		//	lw		s7, $0034(sp)		# 000a1754:8fb70034	
		//	lw		fp, $0038(sp)		# 000a1758:8fbe0038	
		//	jr		ra			# 000a175c:03e00008	
		//	addiu		sp, sp, $0058		# 000a1760:27bd0058	
	}

	// RAM GREECE
	static void fnc000a1764() {
	}

	// RAM GREECE
	static void fnc000a17ec() {
		fnc000a1764();
	}

	// RAM GREECE
	static void fnc000a1828() {
	}

	// RAM GREECE
	static void fnc000a1880() {
	}

	// RAM GREECE
	static void fnc000a1888() {
	}

	// RAM GREECE
	static void fnc000a18bc() {
	}

	// RAM GREECE
	static void fnc000a18cc() {
	}

	// RAM GREECE
	static void fnc000a1924() {
		N64.fnc00018a58();
		N64.fnc000153d8();
	}

	// RAM GREECE
	static void fnc000a1a18() {
		fnc000a18cc();
		N64.fnc000143c4();
		fnc001371b0();
		N64.fnc000158c8();
		fnc000a1828();
		fnc000a1828();
		fnc000a1828();
		fnc000a1828();
		fnc000a1828();
		fnc000a1828();
		fnc000a1828();
		fnc000a1828();
		fnc000a1828();
		fnc000a1828();
	}

	// RAM GREECE
	static void fnc000a1dd8() {
	}

	// RAM GREECE
	static void fnc000a2260() {
	}

	// RAM GREECE
	static void fnc000a2a88() {
	}

	// RAM GREECE
	static void fnc000a2aa4() {
	}

	// RAM GREECE
	static void fnc000a2ad8() {
	}

	// RAM GREECE
	static void fnc000a2b04() {
	}

	// RAM GREECE
	static void fnc000a2b20() {
	}

	// RAM GREECE
	static void fnc000a2b38() {
	}

	// RAM GREECE
	static void fnc000a2b4c() {
	}

	// RAM 000a2b58
	/// R-trigger aiming recticle?
	static void drawGhostTarget() {
		fnc000a2a88();
		fnc000a2260();
	}

	// RAM GREECE
	static void fnc000a2d98() {
		N64.sqrtf();
		N64.sqrtf();
		fnc000a2260();
		N64.sqrtf();
		N64.fnc00003824();
		N64.fnc00003824();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000a3490() {
		fnc000fafb8();
		fnc000a2a88();
		fnc000a18cc();
		N64.fnc000047fc();
		N64.sqrtf();
		fnc000a2d98();
	}

	// RAM GREECE
	static void fnc000a3cd0() {
	}

	// RAM GREECE
	static void fnc000a3cec() {
	}

	/// Possible file boundary

	// RAM GREECE
	static void fnc000a3d00() {
		fnc00081e5c();
		fnc00081c84();
	}

	// RAM GREECE
	static void fnc000a3dc8() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000a3e74() {
		N64.fnc0001cc6c("making alien type %d:\n");
		fnc0007956c();
		N64.fnc0001cc6c("made at %d\n");
		N64.fnc000038e0();
		N64.coss();
		N64.sins();
		fnc000a3dc8();
		N64.coss();
		N64.sins();
		fnc000b84d0();
		fnc0011e6fc();
		fnc00080510();
	}

	// RAM GREECE
	static void fnc000a4150() {
	}

	// RAM GREECE
	static void fnc000a41b0() {
		fnc00137468();
		N64.coss();
		N64.sins();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
		fnc000a3e74();
		fnc000a4150();
		N64.fnc000038e0();
		N64.sins();
		N64.coss();
		fnc000ca5ec();
		N64.fnc000038e0();
		fnc000dea08();
	}

	// RAM GREECE
	static void fnc000a4c28() {
		fnc00086230();
		fnc00086230();
		fnc00090948();
		fnc00090948();
		fnc00085e2c();
		fnc00081f18();
		N64.sins();
		N64.coss();
		fnc00128428();
		fnc000c56a4();
		N64.sins();
		N64.coss();
		fnc00084fe8();
		fnc00086d70();
		fnc000871cc();
		fnc000a931c();
		fnc000a931c();
		fnc000a931c();
		fnc00084fe8();
		fnc000871cc();
		fnc00084fe8();
		fnc00137468();
		fnc000a41b0();
	}

	// RAM GREECE
	static void fnc000a52f8() {
	}

	// RAM GREECE
	static void fnc000a53c0() {
	}

	// RAM GREECE
	static void fnc000a553c() {
	}

	// RAM GREECE
	static void fnc000a5554() {
		fnc00137468();
		fnc0008076c();
		fnc000a53c0();
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc000a57e4() {
		N64.fnc00003824();
		N64.coss();
		N64.sins();
		fnc0008751c();
		fnc0008064c();
	}

	// RAM GREECE
	static void fnc000a5a10() {
	}

	// RAM GREECE
	static void fnc000a5a38() {
	}

	// RAM 000a5a50
	static void activateSaveBeacon() {
		N64.fnc0001cc6c("Activate beacon %d\n");
		N64.fnc00009f18();
		fnc00116784();
		fnc000a5f24();
	}

	// RAM 000a5b30
	static void checkIfActivatingSaveBeacon()
	{
		//	addiu		sp, sp, $ffe8		# 000a5b30:27bdffe8	
		//	sw		ra, $0014(sp)		# 000a5b34:afbf0014	
		//	sw		a0, $0018(sp)		# 000a5b38:afa40018	
		//	sw		a1, $001c(sp)		# 000a5b3c:afa5001c	
		//	ori		a1, zero, $8000		# 000a5b40:34058000	a1=$00008000
		//	jal		$00003584		# 000a5b44:0c000d61	^ FNC_00003584
		//	or		a0, zero, zero		# 000a5b48:00002025	
		if (N64.ButtonIsNewlyPressed(N64.Controller.ONE, N64.Buttons.A))
		{
			//	beq		v0, zero, $000a5bc0	# 000a5b4c:1040001c	v __000a5bc0
			//	lui		t6, $8005		# 000a5b50:3c0e8005	t6=$80050000
			//	lw		t6, $2b34(t6)		# 000a5b54:8dce2b34	t6=$80052b34
			//	lui		t8, $8004		# 000a5b58:3c188004	t8=$80040000
			//	lbu		t7, $001a(t6)		# 000a5b5c:91cf001a	t7=$8004dcea
			//	bnel		t7, zero, $000a5bc4	# 000a5b60:55e00018	v __000a5bc4
			//	lw		ra, $0014(sp)		# 000a5b64:8fbf0014	
			if (object_x80052b34.x1a == 0 && x8004794c == 0 && x80048188 != 1)
			{
				//	lbu		t8, $794c(t8)		# 000a5b68:9318794c	t8=$8004794c
				//	lui		t9, $8005		# 000a5b6c:3c198005	t9=$80050000
				//	bnel		t8, zero, $000a5bc4	# 000a5b70:57000014	v __000a5bc4
				//	lw		ra, $0014(sp)		# 000a5b74:8fbf0014	
				//	lw		t9, $8188(t9)		# 000a5b78:8f398188	t9=$80048188
				//	lh		t0, $001e(sp)		# 000a5b7c:87a8001e	
				//	addiu		at, zero, $0001		# 000a5b80:24010001	at=$00000001
				//	beq		t9, at, $000a5bc0	# 000a5b84:1321000e	v __000a5bc0
				//	sll		t1, t0, 2		# 000a5b88:00084880	
				//	subu		t1, t1, t0		# 000a5b8c:01284823	
				//	sll		t1, t1, 4		# 000a5b90:00094900	
				//	lui		a0, $8016		# 000a5b94:3c048016	a0=$80160000
				//	addu		a0, a0, t1		# 000a5b98:00892021	
				//	lh		a0, $faee(a0)		# 000a5b9c:8484faee	
				//	addiu		a1, zero, $0001		# 000a5ba0:24050001	a1=$00000001
				//	addiu		a0, a0, $f000		# 000a5ba4:2484f000	
				//	bgez		a0, $000a5bb8		# 000a5ba8:04810003	v __000a5bb8
				//	sra		t2, a0, 1		# 000a5bac:00045043	
				if (a0 < 0)
				{
					//	addiu		at, a0, $0001		# 000a5bb0:24810001	
					//	sra		t2, at, 1		# 000a5bb4:00015043	
				}
				//__000a5bb8:					# 
				//	jal		$000a5a50		# 000a5bb8:0c029694	^ FNC_000a5a50
				//	or		a0, t2, zero		# 000a5bbc:01402025	
				activateSaveBeacon();
			}
			
		}
		//__000a5bc0:					# 
		//	lw		ra, $0014(sp)		# 000a5bc0:8fbf0014	
		//__000a5bc4:					# 
		//	addiu		sp, sp, $0018		# 000a5bc4:27bd0018	
		//	jr		ra			# 000a5bc8:03e00008	
		//	nop					# 000a5bcc:00000000	
	}

	// RAM GREECE
	static void fnc000a5bd0() {
		fnc000b84d0();
		fnc0012d700();
		fnc0012d684();
		fnc0012d700();
		fnc0012d684();
	}

	// RAM 000a5d3c
	static void guess_initBeacons() {
		N64.fnc0001cc6c();
		fnc000a5bd0();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM 000a5ea8
	static void warpFromSaveBeacon() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000a5ee8() {
		fnc000ec450();
		N64.fnc000153d8();
	}

	// RAM GREECE
	static void fnc000a5f24() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		warpFromSaveBeacon();
	}

	// RAM GREECE
	static void fnc000a6020() {
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
	}

	// RAM GREECE
	static void fnc000a68cc() {
		N64.fnc0000726c();
		fnc000a5f24();
		N64.fnc000073b8();
		fnc000ec450();
		N64.fnc000153d8();
		fnc000e35e0();
		fnc000e35e0();
		fnc000e35e0();
		fnc00135d44();
		fnc000a6020();
		fnc000a6020();
		fnc000a6020();
		fnc000b0c80();
		fnc000fb44c();
		fnc000fb484();
		fnc000b84d0();
		fnc000fb468();
		fnc000b4050();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.fnc000153d8();
		fnc000e35e0();
		fnc000e35e0();
		fnc000e35e0();
		fnc00135d44();
		fnc000a6020();
		fnc000a6020();
		fnc000ec468();
		fnc000fac90();
	}

	// RAM GREECE
	/// Launch beacon?
	static void fnc000a6fd4() {
		N64.fnc0001cc6c();
		N64.fnc00013314();
	}

	// RAM 000a70b8
	static void displayBeacons() {
		fnc000b84d0();
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc000039d0();
		fnc000b9228();
		fnc000b84d0();
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000a7b84() {
		fnc0010c4ec();
		fnc0010cf7c();
		fnc00123ac4();
	}

	// RAM GREECE
	static void fnc000a7c6c() {
		N64.fnc0000345c();
		N64.fnc0000726c();
		N64.fnc00018d7c();
		N64.fnc00018d7c();
		N64.fnc00013324();
		N64.fnc00018d7c();
		N64.fnc00013324();
		fnc000efeb4();
		fnc000b84d0();
		fnc000b84d0();
		fnc000df038();
		fnc000c21f0();
		fnc000c1ecc();
		fnc000c1ecc();
		N64.sqrtf();
		N64.fnc00003824();
		fnc00102ddc();
		fnc000a5bd0();
		fnc000b84d0();
		fnc001371b8();
		fnc000a7b84();
		N64.fnc00018d7c();
		fnc000b84d0();
		fnc001371b8();
		fnc000b84d0();
		fnc001371b8();
		fnc000b99a8();
	}

	// RAM GREECE
	static void fnc000a854c() {
		fnc000f9d60();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000f9fac();
		fnc000f9fac();
		N64.sqrtf();
		fnc000b84d0();
		fnc000cb23c();
		fnc000cbd1c();
		fnc000e5e3c();
	}

	// RAM GREECE
	static void fnc000a8a68() {
		fnc000a5a10();
		fnc000cb19c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000a8c44() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
	}

	// RAM GREECE
	static void fnc000a8e18() {
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		fnc000e60cc();
		fnc000e5cf4();
		fnc00139150();
		fnc00139150();
		fnc00139150();
		fnc00139150();
		fnc00139150();
		fnc00139150();
		fnc00139150();
		guess_giveItem();
		fnc000da994();
		N64.fnc0001a650();
		fnc00139150();
		fnc00139150();
		fnc00139150();
		fnc00139150();
		fnc00139150();
		fnc00139150();
		fnc00139150();
		fnc00139020();
	}

	// RAM 000a9238
	static void guess_givePowerUp() {
		N64.fnc0001cc6c();
		fnc000a8e18();
	}

	// RAM GREECE
	static void fnc000a92b0() {
	}

	/// Possible file boundary

	// RAM GREECE
	static void fnc000a92e0() {
	}

	// RAM GREECE
	static void fnc000a931c() {
		N64.fnc000044d4();
	}

	// RAM GREECE
	static void fnc000a93a4() {
		fnc00088760();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
	}

	// RAM GREECE
	static void fnc000a9738() {
	}

	// RAM GREECE
	static void fnc000a9820() {
	}

	// RAM GREECE
	static void fnc000a9908() {
		fnc00081f18();
	}

	// RAM GREECE
	static void fnc000a99b8() {
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc000a9a90() {
	}

	// RAM GREECE
	static void fnc000a9dc0() {
	}

	// RAM GREECE
	static void fnc000a9e1c() {
		fnc000f2d48();
		fnc000ae454();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc000a9f34() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.sqrtf();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.coss();
		fnc000b84d0();
		fnc000b84d0();
		fnc000ae454();
		fnc000cf80c();
		fnc000b84d0();
		fnc000cf80c();
	}

	// RAM GREECE
	static void fnc000aa340() {
		fnc00089200();
		N64.coss();
		N64.fnc000038e0();
		N64.coss();
		N64.fnc000038e0();
		N64.coss();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ddb60();
		fnc000dde1c();
		fnc000ddee0();
		N64.fnc000038e0();
		fnc001371b8();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000dfa34();
		fnc000e35e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000b84d0();
		N64.sins();
		N64.coss();
		N64.sins();
		fnc000d16bc();
		fnc000df848();
		fnc000e35e0();
		fnc000c3bd8();
		fnc000b84d0();
		N64.sins();
		N64.coss();
		fnc001371b8();
		fnc000b84d0();
		fnc000dfa34();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000d16bc();
		fnc000df848();
		fnc000b8d80();
		fnc000bed24();
		fnc000df848();
		fnc000e35e0();
	}

	// RAM GREECE
	static void fnc000ab250() {
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000ab32c() {
		fnc00088760();
	}

	// RAM GREECE
	static void fnc000ab390() {
		fnc00080840();
		fnc000ab32c();
	}

	// RAM GREECE
	static void fnc000ab408() {
		fnc000ad814();
	}

	// RAM GREECE
	static void fnc000ab4b4() {
	}

	// RAM GREECE
	static void fnc000ab570() {
		fnc00080840();
		fnc0011b3f0();
	}

	// RAM GREECE
	static void fnc000ab6d0() {
	}

	// RAM GREECE
	static void fnc000ab700() {
	}

	// RAM GREECE
	static void fnc000ab730() {
	}

	// RAM GREECE
	static void fnc000ab80c() {
		fnc00080840();
	}

	// RAM GREECE
	static void fnc000ab8cc() {
		fnc0008ff54();
		N64.sins();
		fnc0008ff54();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
		fnc000e05b4();
	}

	// RAM GREECE
	static void fnc000abc2c() {
		fnc000e0ae0();
	}

	// RAM GREECE
	static void fnc000abcc8() {
		fnc000abc2c();
		fnc000ab8cc();
		fnc000ab80c();
		fnc000ab730();
		fnc000ab570();
		fnc000ab4b4();
		fnc000ab408();
		fnc000ab390();
		fnc000ab32c();
		fnc000ab8cc();
		fnc000ab80c();
		fnc000ab730();
		fnc000ab570();
		fnc000ab4b4();
		fnc000ab408();
		fnc000ab390();
		fnc000ab32c();
	}

	// RAM GREECE
	static void fnc000abe7c() {
		N64.fnc000038e0();
		fnc000b325c();
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc000abfc0() {
		fnc000808f0();
		fnc00080840();
		fnc000b325c();
		fnc000abe7c();
		fnc000ac198();
	}

	// RAM GREECE
	static void fnc000ac064() {
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000ac0e4() {
		fnc0012b110();
	}

	// RAM GREECE
	static void fnc000ac198() {
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc000ac2fc() {
		fnc0011b6c0();
		fnc0011b3f0();
		fnc000825e8();
		N64.fnc000038e0();
		fnc000ac198();
		N64.fnc0001cc6c();
		fnc000abe7c();
	}

	// RAM GREECE
	static void fnc000ac5bc() {
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		fnc000a2a88();
		N64.coss();
		N64.sins();
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc000aca3c() {
	}

	// RAM GREECE
	static void fnc000acabc() {
	}

	// RAM GREECE
	static void fnc000acaec() {
	}

	// RAM GREECE
	static void fnc000acb3c() {
		fnc000b325c();
	}

	// RAM GREECE
	static void fnc000acc5c() {
		fnc000abcc8();
		fnc00117464();
		fnc0011b584();
		fnc000ac198();
		fnc000aca3c();
		fnc00080840();
		fnc0011b584();
		fnc000808f0();
		fnc000ac2fc();
		fnc000acb3c();
	}

	// RAM GREECE
	static void fnc000ace40() {
		fnc000aca3c();
		N64.fnc000038e0();
		fnc000abcc8();
		fnc000abfc0();
		fnc000ac5bc();
		fnc000ac064();
		fnc00080840();
		fnc0011b584();
		fnc000808f0();
		fnc000ac2fc();
		fnc000acb3c();
	}

	// RAM GREECE
	static void fnc000acf9c() {
		fnc0011ba80();
	}

	// RAM GREECE
	static void fnc000ad0f0() {
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc000ad240() {
		fnc0011b454();
		fnc0007956c();
		fnc000b0f20();
		fnc0011c680();
		fnc000ad0f0();
		N64.fnc0000726c();
		N64.fnc0000726c();
		fnc000ad814();
	}

	// RAM GREECE
	static void fnc000ad3bc() {
		fnc0011b454();
		fnc0007956c();
		fnc000b0f20();
		fnc0011c680();
		fnc000ad814();
		N64.fnc0000726c();
		N64.fnc0000726c();
		fnc000ad814();
	}

	// RAM GREECE
	static void fnc000ad554() {
		fnc0007956c();
		fnc000b0f20();
		fnc0011c680();
		fnc0011b3f0();
	}

	// RAM GREECE
	static void fnc000ad698() {
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
	}

	// RAM GREECE
	static void fnc000ad814() {
		fnc0011c680();
		fnc000ad0f0();
		fnc000e7aa0();
	}

	// RAM GREECE
	static void fnc000ada70() {
		fnc0007956c();
		fnc000ad814();
	}

	// RAM GREECE
	static void fnc000adaf8() {
		fnc000873a8();
	}

	// RAM GREECE
	static void fnc000adb4c() {
		fnc000ef650();
		fnc0008064c();
		fnc000808f0();
		fnc00084fe8();
		fnc00080840();
		fnc0008554c();
		fnc00084fe8();
		fnc00087aac();
		fnc000808f0();
		fnc000ca5ec();
		N64.fnc00018d7c();
		fnc000fdea8();
		fnc00084e54();
		N64.fnc00018d7c();
		fnc00088760();
	}

	// RAM GREECE
	static void fnc000adfc0() {
		fnc000873a8();
	}

	// RAM GREECE
	static void fnc000adfe8() {
		fnc000873a8();
	}

	// RAM GREECE
	static void fnc000ae010() {
		fnc000808f0();
	}

	// RAM GREECE
	static void fnc000ae190() {
	}

	// RAM GREECE
	static void fnc000ae1c0() {
	}

	// RAM GREECE
	static void fnc000ae1ec() {
		fnc000ad814();
	}

	// RAM GREECE
	static void fnc000ae2c0() {
	}

	// RAM GREECE
	static void fnc000ae300() {
		N64.fnc0000ef00("nextTrigger < MAX_GAME_TRIGGERS", "src/trigger.c", 0x6d);
	}

	// RAM GREECE
	static void fnc000ae3ac() {
	}

	// RAM GREECE
	/// Writes data for the next trigger to be executed?
	/// Data waits at 0x802232C8 (Greece) until the trigger is executed
	static int fnc000ae454(Object80222a78 a3)
	{
		//	lui		t0, $8022		# 000ae454:3c088022	t0=$80220000
		//	addiu		t0, t0, $3778		# 000ae458:25083778	t0=$80223778
		//	lw		v1, $0000(t0)		# 000ae45c:8d030000	v1=$80223778
		//	addiu		sp, sp, $ffe8		# 000ae460:27bdffe8	
		//	sw		ra, $0014(sp)		# 000ae464:afbf0014	
		//	slti		at, v1, $00d0		# 000ae468:286100d0	
		//	bne		at, zero, $000ae4a0	# 000ae46c:1420000c	v __000ae4a0
		//	or		a3, a0, zero		# 000ae470:00803825	
		if (nextTrigger >= 0xd0)
		{
			//	lui		a0, $8014		# 000ae474:3c048014	a0=$80140000
			//	lui		a1, $8014		# 000ae478:3c058014	a1=$80140000
			//	addiu		a1, a1, $2b00		# 000ae47c:24a52b00	a1=$80142b00
			//	addiu		a0, a0, $2ae0		# 000ae480:24842ae0	a0=$80142ae0
			//	addiu		a2, zero, $008f		# 000ae484:2406008f	a2=$0000008f
			//	jal		$0000ef00		# 000ae488:0c003bc0	^ FNC_0000ef00
			//	sw		a3, $0018(sp)		# 000ae48c:afa70018	
			N64.fnc0000ef00("nextTrigger < MAX_GAME_TRIGGERS", "src/trigger.c", 0x8f);
			//	lui		t0, $8022		# 000ae490:3c088022	t0=$80220000
			//	addiu		t0, t0, $3778		# 000ae494:25083778	t0=$80223778
			//	lw		v1, $0000(t0)		# 000ae498:8d030000	v1=$80223778
			//	lw		a3, $0018(sp)		# 000ae49c:8fa70018	
		}
		//__000ae4a0:					# 
		//	slti		at, v1, $00d0		# 000ae4a0:286100d0	
		//	bnel		at, zero, $000ae4b8	# 000ae4a4:54200004	v __000ae4b8
		//	lbu		t6, $0000(a3)		# 000ae4a8:90ee0000	
		if (nextTrigger >= 0xd0)
		{
			//	beq		zero, zero, $000ae578	# 000ae4ac:10000032	v __000ae578
			//	addiu		v0, zero, $ffff		# 000ae4b0:2402ffff	v0=$ffffffff
			return -1;
			//	lbu		t6, $0000(a3)		# 000ae4b4:90ee0000	
		}
		else
		{
			//__000ae4b8:					# 
			//	addiu		at, zero, $0002		# 000ae4b8:24010002	at=$00000002
			//	lui		t8, $8005		# 000ae4bc:3c188005	t8=$80050000
			//	bnel		t6, at, $000ae538	# 000ae4c0:55c1001d	v __000ae538
			//	lw		at, $0000(a3)		# 000ae4c4:8ce10000	
			if ((a3.x0 >> 24) == 2)
			{
				//	lw		t7, $0004(a3)		# 000ae4c8:8cef0004	
				//	lw		t8, $2a8c(t8)		# 000ae4cc:8f182a8c	t8=$80052a8c
				//	subu		t9, t7, t8		# 000ae4d0:01f8c823	
				//	sltiu		at, t9, $003d		# 000ae4d4:2f21003d	
				//	bnel		at, zero, $000ae538	# 000ae4d8:54200017	v __000ae538
				//	lw		at, $0000(a3)		# 000ae4dc:8ce10000	
				if ((a3.x4 - x80052a8c) >= 0x3d)
				{
					//	lw		v0, $000c(a3)		# 000ae4e0:8ce2000c	
					//	lui		t1, $800b		# 000ae4e4:3c09800b	t1=$800b0000
					//	addiu		t1, t1, $fd48		# 000ae4e8:2529fd48	t1=$800afd48
					//	beql		t1, v0, $000ae500	# 000ae4ec:51220004	v __000ae500
					//	lbu		t2, $0009(a3)		# 000ae4f0:90ea0009	
					//	bnel		v0, zero, $000ae538	# 000ae4f4:54400010	v __000ae538
					//	lw		at, $0000(a3)		# 000ae4f8:8ce10000	
					//	lbu		t2, $0009(a3)		# 000ae4fc:90ea0009	
					if (a3.xc == 0x800afd48 || a3.xc == 0)
					{
						//__000ae500:					# 
						//	lui		t4, $8022		# 000ae500:3c0c8022	t4=$80220000
						//	addiu		t4, t4, $3780		# 000ae504:258c3780	t4=$80223780
						//	sll		t3, t2, 2		# 000ae508:000a5880	
						//	addu		t3, t3, t2		# 000ae50c:016a5821	
						//	sll		t3, t3, 2		# 000ae510:000b5880	
						//	addu		v0, t3, t4		# 000ae514:016c1021	
						//	lh		t5, $0002(v0)		# 000ae518:844d0002	
						//	sra		t6, t5, 8		# 000ae51c:000d7203	
						//	sb		t6, $0001(a3)		# 000ae520:a0ee0001	
						a3.x1 = ((alienWaves[a3.x9]).xPosition) >>> 8;
						//	lh		t7, $0004(v0)		# 000ae524:844f0004	
						//	sra		t8, t7, 8		# 000ae528:000fc203	
						//	sb		t8, $0002(a3)		# 000ae52c:a0f80002	
						a3.x2 = ((alienWaves[a3.x9]).yPosition) >>> 8;;
						//	lw		v1, $0000(t0)		# 000ae530:8d030000	v1=$80223778
						//	lw		at, $0000(a3)		# 000ae534:8ce10000	
					}
				}
				
			}
			
			//__000ae538:					# 
			//	lui		t1, $8022		# 000ae538:3c098022	t1=$80220000
			//	addiu		t1, t1, $2a78		# 000ae53c:25292a78	t1=$80222a78
			//	sll		t9, v1, 4		# 000ae540:0003c900	
			//	addu		t2, t9, t1		# 000ae544:03295021	
			//	sw		at, $0000(t2)		# 000ae548:ad410000	
			x80222a78[nextTrigger].x0 = a3.x0;
			//	lw		t4, $0004(a3)		# 000ae54c:8cec0004	
			//	addiu		t5, v1, $0001		# 000ae550:246d0001	
			//	addiu		v0, t5, $ffff		# 000ae554:25a2ffff	
			//	sw		t4, $0004(t2)		# 000ae558:ad4c0004	
			x80222a78[nextTrigger].x4 = a3.x4;
			//	lw		at, $0008(a3)		# 000ae55c:8ce10008	
			//	sll		t6, v0, 16		# 000ae560:00027400	
			//	sra		v0, t6, 16		# 000ae564:000e1403	
			//	sw		at, $0008(t2)		# 000ae568:ad410008	
			x80222a78[nextTrigger].x8 = a3.x8;
			//	lw		t4, $000c(a3)		# 000ae56c:8cec000c	
			//	sw		t4, $000c(t2)		# 000ae570:ad4c000c	
			x80222a78[nextTrigger].xc = a3.xc;
			//	sw		t5, $0000(t0)		# 000ae574:ad0d0000	
			return nextTrigger;
		}
		//__000ae578:					# 
		//	lw		ra, $0014(sp)		# 000ae578:8fbf0014	
		//	addiu		sp, sp, $0018		# 000ae57c:27bd0018	
		//	jr		ra			# 000ae580:03e00008	
		//	nop					# 000ae584:00000000	
	}

	// RAM 000ae588
	static void guess_initAlienWaves() {
		fnc000b0f20();
		N64.fnc0001cc6c("*********************\n");
		N64.fnc0001cc6c("proc stages:%d\n");
		N64.fnc0001cc6c("********************\n");
		fnc0007562c();
		fnc000b0830();
		fnc000b08dc();
	}

	// RAM GREECE
	static void fnc000ae6cc() {
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0001cc6c();
		fnc000afd48();
	}

	// RAM GREECE
	static void fnc000aebc4() {
		N64.fnc00013314();
		fnc000a6fd4();
	}

	// RAM GREECE
	static void fnc000aec34() {
		N64.fnc000136cc();
		fnc00087e30();
		fnc000ae454();
		openCurrentStageGate();
	}

	// RAM 000aee5c
	static void SpawnAlienWave(short xPostion, short yPosition, ubyte waveType, ubyte orientation) {
		N64.fnc0001cc6c("Wave type %d\n");
		fnc0007956c();
		fnc0007956c();
		fnc000ae454();
		fnc0011e6fc();
		fnc000b0f20();
		fnc00080510();
	}

	// RAM GREECE
	static void fnc000af0c0() {
		fnc000b84d0();
		fnc000cf80c();
	}

	// RAM GREECE
	static void fnc000af1f8() {
		fnc000af0c0();
	}

	// RAM GREECE
	static void fnc000af2bc() {
		N64.fnc00017b08();
	}

	// RAM GREECE
	static void fnc000af2dc() {
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000af324() {
		fnc00088000();
	}

	// RAM 000af348
	static void guess_initTriggers() {
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000af390() {
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000af3b8() {
		N64.fnc0001cc6c("Create positional %d in %d seconds\n");
		fnc000ae454();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000af474() {
	}

	// RAM GREECE
	static void fnc000af484() {
	}

	// RAM GREECE
	static void fnc000af494() {
	}

	// RAM GREECE
	static void fnc000af4a4() {
		N64.fnc0001cc6c();
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000af52c() {
		N64.fnc0001cc6c();
		fnc000af764();
	}

	// RAM GREECE
	static void fnc000af5b0() {
		N64.fnc0001cc6c();
		fnc000af764();
	}

	// RAM GREECE
	static void fnc000af634() {
		N64.fnc0001cc6c("\n\nWAVE %d KILLED\n\n");
		fnc000af4a4();
		fnc000af5b0();
		fnc000afba4();
		fnc000af52c();
	}

	// RAM GREECE
	static void fnc000af764() {
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000af7d4() {
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000af870() {
		SpawnAlienWave();
	}

	// RAM GREECE
	static void fnc000af8c4() {
		fnc000af1f8();
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000af95c() {
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000af9c0() {
		fnc0007956c();
		fnc000b0f20();
		fnc0011e6fc();
	}

	// RAM GREECE
	static void fnc000afa98() {
		fnc000af0c0();
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000afb38() {
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000afba4() {
		fnc000afb38();
		N64.fnc0001a650();
	}

	// RAM GREECE
	static void fnc000afbf8()
	{
		//	addiu		sp, sp, $ffa8		# 000afbf8:27bdffa8	
		//	sw		ra, $001c(sp)		# 000afbfc:afbf001c	
		//	sw		s1, $0018(sp)		# 000afc00:afb10018	
		//	sw		s0, $0014(sp)		# 000afc04:afb00014	
		//	lbu		s0, $0009(a0)		# 000afc08:90900009	
		//	lui		t7, $8022		# 000afc0c:3c0f8022	t7=$80220000
		//	addiu		t7, t7, $3780		# 000afc10:25ef3780	t7=$80223780
		//	sll		t6, s0, 2		# 000afc14:00107080	
		//	addu		t6, t6, s0		# 000afc18:01d07021	
		//	sll		t6, t6, 2		# 000afc1c:000e7080	
		//	addu		v1, t6, t7		# 000afc20:01cf1821	
		AlienWave v1 = alienWaves[a0.x9];
		//	or		s1, a0, zero		# 000afc24:00808825	
		//	lh		a0, $0002(v1)		# 000afc28:84640002	
		//	lh		a1, $0004(v1)		# 000afc2c:84650004	
		//	lbu		a2, $0000(v1)		# 000afc30:90660000	
		//	sw		v1, $0024(sp)		# 000afc34:afa30024	
		//	jal		$000aee5c		# 000afc38:0c02bb97	^ FNC_000aee5c
		//	andi		a3, s0, $00ff		# 000afc3c:320700ff	
		SpawnAlienWave(v1.xPostion, v1.yPosition, v1.waveType, a0.x9);
		//	lw		v1, $0024(sp)		# 000afc40:8fa30024	
		//	lui		at, $8005		# 000afc44:3c018005	at=$80050000
		//	addu		at, at, s0		# 000afc48:00300821	
		//	addiu		t8, zero, $0001		# 000afc4c:24180001	t8=$00000001
		//	sb		t8, $8038(at)		# 000afc50:a0388038	
		//	lb		t9, $0000(v1)		# 000afc54:80790000	
		//	andi		a1, v0, $00ff		# 000afc58:304500ff	
		//	addiu		at, zero, $001c		# 000afc5c:2401001c	at=$0000001c
		//	bne		t9, at, $000afcc0	# 000afc60:17210017	v __000afcc0
		//	sb		a1, $0033(sp)		# 000afc64:a3a50033	
		//	lh		t0, $0002(v1)		# 000afc68:84680002	
		//	lh		t2, $0004(v1)		# 000afc6c:846a0004	
		//	lui		t4, $800b		# 000afc70:3c0c800b	t4=$800b0000
		//	addiu		t4, t4, $0390		# 000afc74:258c0390	t4=$800b0390
		//	addiu		t5, zero, $0003		# 000afc78:240d0003	t5=$00000003
		//	sra		t1, t0, 8		# 000afc7c:00084a03	
		//	sra		t3, t2, 8		# 000afc80:000a5a03	
		//	sb		t1, $0049(sp)		# 000afc84:a3a90049	
		//	sb		t3, $004a(sp)		# 000afc88:a3ab004a	
		//	sw		t4, $0054(sp)		# 000afc8c:afac0054	
		//	sb		t5, $0048(sp)		# 000afc90:a3ad0048	
		//	sb		a1, $0050(sp)		# 000afc94:a3a50050	
		//	addiu		a0, sp, $0048		# 000afc98:27a40048	
		//	jal		$000ae454		# 000afc9c:0c02b915	^ FNC_000ae454
		//	sb		a1, $0033(sp)		# 000afca0:a3a50033	
		fnc000ae454();
		//	addiu		at, zero, $ffff		# 000afca4:2401ffff	at=$ffffffff
		//	bnel		v0, at, $000afcc4	# 000afca8:54410006	v __000afcc4
		//	lbu		a1, $0033(sp)		# 000afcac:93a50033	
		//	jal		$0001a650		# 000afcb0:0c006994	^ FNC_0001a650
		//	addiu		a0, zero, $0007		# 000afcb4:24040007	a0=$00000007
		N64.fnc0001a650();
		//	jal		$000ae3ac		# 000afcb8:0c02b8eb	^ FNC_000ae3ac
		//	addiu		a0, sp, $0048		# 000afcbc:27a40048	
		fnc000ae3ac();
		//__000afcc0:					# 
		//	lbu		a1, $0033(sp)		# 000afcc0:93a50033	
		//__000afcc4:					# 
		//	lui		t7, $8005		# 000afcc4:3c0f8005	t7=$80050000
		//	addiu		at, zero, $0019		# 000afcc8:24010019	at=$00000019
		//	sll		t6, a1, 2		# 000afccc:00057080	
		//	addu		t6, t6, a1		# 000afcd0:01c57021	
		//	sll		t6, t6, 4		# 000afcd4:000e7100	
		//	addu		t7, t7, t6		# 000afcd8:01ee7821	
		//	lbu		t7, $81b2(t7)		# 000afcdc:91ef81b2	
		//	lui		t8, $800b		# 000afce0:3c18800b	t8=$800b0000
		//	addiu		t8, t8, $f634		# 000afce4:2718f634	t8=$800af634
		//	bne		t7, at, $000afd10	# 000afce8:15e10009	v __000afd10
		//	addiu		t9, zero, $0003		# 000afcec:24190003	t9=$00000003
		//	sb		s0, $0051(sp)		# 000afcf0:a3b00051	
		//	sb		a1, $0050(sp)		# 000afcf4:a3a50050	
		//	sw		t8, $0054(sp)		# 000afcf8:afb80054	
		//	sb		t9, $0048(sp)		# 000afcfc:a3b90048	
		//	jal		$000ae454		# 000afd00:0c02b915	^ FNC_000ae454
		//	addiu		a0, sp, $0048		# 000afd04:27a40048	
		fnc000ae454();
		//	beq		zero, zero, $000afd38	# 000afd08:1000000b	v __000afd38
		//	lw		ra, $001c(sp)		# 000afd0c:8fbf001c	
		//__000afd10:					# 
		//	lbu		t0, $0003(s1)		# 000afd10:92280003	
		//	lui		t1, $800b		# 000afd14:3c09800b	t1=$800b0000
		//	addiu		t1, t1, $f3b8		# 000afd18:2529f3b8	t1=$800af3b8
		//	beq		t0, zero, $000afd34	# 000afd1c:11000005	v __000afd34
		//	addiu		t2, zero, $000a		# 000afd20:240a000a	t2=$0000000a
		//	sw		t1, $000c(s1)		# 000afd24:ae29000c	
		//	sb		t2, $0000(s1)		# 000afd28:a22a0000	
		//	jal		$000ae454		# 000afd2c:0c02b915	^ FNC_000ae454
		//	or		a0, s1, zero		# 000afd30:02202025	
		fnc000ae454();
		//__000afd34:					# 
		//	lw		ra, $001c(sp)		# 000afd34:8fbf001c	
		//__000afd38:					# 
		//	lw		s0, $0014(sp)		# 000afd38:8fb00014	
		//	lw		s1, $0018(sp)		# 000afd3c:8fb10018	
		//	jr		ra			# 000afd40:03e00008	
		//	addiu		sp, sp, $0058		# 000afd44:27bd0058	
	}

	// RAM GREECE
	static void fnc000afd48() {
		fnc000af1f8();
		N64.fnc0001a650();
		fnc000bece0();
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000afe68() {
		N64.coss();
		N64.sins();
		fnc000afb38();
	}

	// RAM GREECE
	static void fnc000aff9c() {
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000affe8() {
	}

	// RAM GREECE
	static void fnc000afff0() {
	}

	// RAM GREECE
	static void fnc000b0000() {
	}

	// RAM GREECE
	static void fnc000b001c() {
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000b0068() {
		fnc000fdea8();
		fnc000cf80c();
		fnc000fb430();
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000b0110() {
		fnc000cf80c();
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000b018c() {
		N64.fnc00013314();
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000b01e4() {
		N64.fnc000136cc();
		N64.fnc00006dac();
		fnc000ae454();
		N64.fnc00006dac();
		N64.fnc00006dac();
	}

	// RAM GREECE
	static void fnc000b0288() {
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000b02fc() {
	}

	// RAM GREECE
	static void fnc000b034c() {
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000b0390() {
		fnc000ae2c0();
		level.Start();
	}

	// RAM GREECE
	static void fnc000b03cc() {
		N64.fnc00011a40();
		fnc0007956c();
		fnc000b0f20();
		N64.fnc0001cc6c();
		fnc0007956c();
		fnc000ae454();
		N64.fnc0001cc6c();
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000b06c4() {
		fnc000b03cc();
	}

	// RAM GREECE
	static void fnc000b0710() {
		fnc000b84d0();
		fnc000cf80c();
		fnc000becf0();
		fnc000ae454();
	}

	// RAM GREECE
	static void fnc000b0830() {
	}

	// RAM GREECE
	static void fnc000b08dc() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000b0a00() {
	}

	// RAM GREECE
	static void fnc000b0a10() {
	}

	// RAM GREECE
	static void fnc000b0a88() {
	}

	// RAM GREECE
	static void fnc000b0ae8() {
	}

	// RAM GREECE
	static void fnc000b0b24() {
	}

	// RAM GREECE
	static void fnc000b0b60() {
	}

	// RAM GREECE
	static void fnc000b0b8c() {
	}

	// RAM GREECE
	static void fnc000b0b94() {
		fnc000b0a88();
	}

	// RAM GREECE
	static void fnc000b0c4c() {
	}

	// RAM GREECE
	static void fnc000b0c80() {
	}

	// RAM GREECE
	static void fnc000b0d10() {
	}

	// RAM GREECE
	static void fnc000b0d30() {
	}

	// RAM GREECE
	static void fnc000b0d8c() {
	}

	// RAM GREECE
	static void fnc000b0ddc() {
	}

	// RAM GREECE
	static void fnc000b0df4() {
	}

	// RAM GREECE
	static void fnc000b0e20() {
	}

	// RAM GREECE
	static void fnc000b0e3c() {
	}

	// RAM GREECE
	static void fnc000b0e58() {
	}

	// RAM GREECE
	static void fnc000b0e74() {
	}

	// RAM GREECE
	static void fnc000b0f00() {
	}

	// RAM GREECE
	static void fnc000b0f08() {
	}

	// RAM GREECE
	static void fnc000b0f18() {
	}

	// RAM GREECE
	static void fnc000b0f20() {
	}

	// RAM GREECE
	static void fnc000b0fc4() {
	}

	// RAM GREECE
	static void fnc000b1004() {
	}

	// RAM 000b1028
	static void ClipLineToShieldWalls() {
		N64.fnc0001cc6c("ERROR in ClipLineToShieldWalls\n");
	}

	// RAM GREECE
	static void fnc000b165c() {
	}

	// RAM GREECE
	static void fnc000b1814() {
	}

	// RAM GREECE
	/// ClearDynamicLightBuffer ?
	static void fnc000b19f8() {
	}

	// RAM GREECE
	static void fnc000b1a68() {
	}

	// RAM GREECE
	static void fnc000b2354() {
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000b2854() {
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000b2cf0() {
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000b316c() {
	}

	// RAM GREECE
	static void fnc000b31cc() {
	}

	// RAM GREECE
	static void fnc000b31fc() {
	}

	// RAM GREECE
	static void fnc000b325c() {
	}

	// RAM GREECE
	static void fnc000b32ac() {
	}

	// RAM GREECE
	static void fnc000b33bc() {
		N64.cosf();
		N64.sinf();
		N64.coss();
		N64.fnc00003740();
	}

	// RAM GREECE
	static void fnc000b345c() {
		fnc000b1814();
		fnc000b0a10();
		fnc000b0a10();
		fnc000b0a10();
		fnc000b0a10();
		fnc000b0a10();
		fnc000b0a10();
		N64.coss();
		N64.coss();
		fnc000b2cf0();
	}

	// RAM GREECE
	static void fnc000b4050() {
		fnc000b345c();
	}

	// RAM GREECE
	static void fnc000b415c() {
	}

	// RAM GREECE
	static void fnc000b41c8() {
		fnc000b0c80();
		fnc000b32ac();
		fnc000b4050();
		fnc000b0b94();
		fnc000b165c();
	}

	// RAM GREECE
	static void fnc000b42b0() {
		fnc000b1814();
		fnc000b2cf0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000b4660() {
		fnc000b1814();
		fnc000b2cf0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000b49a4() {
		fnc000b1814();
		fnc000b2cf0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000b4d4c() {
		fnc000b1814();
		fnc000b2cf0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000b5090() {
		fnc000b0a10();
		fnc000b0a10();
		fnc000b0a10();
		fnc000b0a10();
		N64.coss();
		N64.coss();
		N64.fnc000056d0();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
	}

	// RAM GREECE
	static void fnc000b5ee4() {
		N64.fnc0001cc6c("Road entry overflow : Contact John W\n");
		N64.fnc0001cc6c("Road entry overflow : Contact John W\n");
	}

	// RAM GREECE
	/// Draw tiles
	static void fnc000b604c() {
		fnc000b960c();
		fnc000b5ee4();
		fnc000b960c();
		fnc000b5ee4();
		fnc000b960c();
		fnc000b5ee4();
		fnc000b960c();
		fnc000b5ee4();
	}

	// RAM GREECE
	/// Draw rotated tiles e.g. roads
	static void fnc000b753c() {
	}

	// RAM GREECE
	static void fnc000b84d0() {
	}

	// RAM GREECE
	static void fnc000b85cc() {
		N64.fnc000056d0();
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc000b8688() {
	}

	// RAM GREECE
	static void fnc000b878c() {
	}

	// RAM GREECE
	static void fnc000b879c() {
		fnc0011d260();
		fnc0011c080();
		fnc000b4050();
		fnc00076fcc();
		fnc000b32ac();
	}

	// RAM GREECE
	static void fnc000b8c2c() {
	}

	// RAM GREECE
	static void fnc000b8d80() {
		fnc000b415c();
		fnc000b4050();
	}

	// RAM GREECE
	static void fnc000b8f30() {
		N64.fnc0001cc6c();
		fnc000b8c2c();
		N64.fnc000056d0();
		fnc000b4050();
		fnc000b84d0();
		fnc000b8c2c();
	}

	// RAM GREECE
	static void fnc000b91c8() {
		fnc000b8c2c();
	}

	// RAM GREECE
	static void fnc000b9228() {
		N64.fnc00003824();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000b93ac() {
		N64.sqrtf();
		N64.fnc00003824();
		N64.sins();
		N64.sins();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000b960c() {
		fnc000b9228();
		fnc000b9228();
		fnc000b9228();
		fnc000b9228();
		fnc000b9228();
	}

	// RAM GREECE
	static void fnc000b9954() {
	}

	// RAM GREECE
	static void fnc000b99a8() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000b9ac8() {
		fnc000b2854();
		fnc000b9954();
		fnc000b9954();
	}

	// RAM GREECE
	static void fnc000b9c28() {
		fnc000b99a8();
		fnc000b99a8();
		fnc000b99a8();
		fnc000b99a8();
		fnc000b99a8();
	}

	// RAM 000b9db8
	/// i.e. draw the ground
	static void drawTileBuffer(ubyte a0)
	{
		//	addiu		sp, sp, $fee8		# 000b9db8:27bdfee8	
		//	sw		ra, $004c(sp)		# 000b9dbc:afbf004c	
		//	sw		s0, $0028(sp)		# 000b9dc0:afb00028	
		//	andi		s0, a0, $00ff		# 000b9dc4:309000ff	
		//	sw		fp, $0048(sp)		# 000b9dc8:afbe0048	
		//	sw		s7, $0044(sp)		# 000b9dcc:afb70044	
		//	sw		s6, $0040(sp)		# 000b9dd0:afb60040	
		//	sw		s5, $003c(sp)		# 000b9dd4:afb5003c	
		//	sw		s4, $0038(sp)		# 000b9dd8:afb40038	
		//	sw		s3, $0034(sp)		# 000b9ddc:afb30034	
		//	sw		s2, $0030(sp)		# 000b9de0:afb20030	
		//	sw		s1, $002c(sp)		# 000b9de4:afb1002c	
		//	sw		a0, $0118(sp)		# 000b9de8:afa40118	
		//	sh		zero, $00f4(sp)		# 000b9dec:a7a000f4	
		//	jal		$000b9ac8		# 000b9df0:0c02e6b2	^ FNC_000b9ac8
		//	sh		zero, $00f2(sp)		# 000b9df4:a7a000f2	
		fnc000b9ac8();
		//	lui		t6, $8015		# 000b9df8:3c0e8015	t6=$80150000
		//	lw		t6, $f838(t6)		# 000b9dfc:8dcef838	t6=$8014f838
		//	beq		t6, zero, $000b9e10	# 000b9e00:11c00003	v __000b9e10
		//	nop					# 000b9e04:00000000	
		if (x8014f838 != 0)
		{
			//	jal		$000b879c		# 000b9e08:0c02e1e7	^ FNC_000b879c
			//	nop					# 000b9e0c:00000000	
			fnc000b879c();
		}
		//__000b9e10:					# 
		//	lui		a0, $8006		# 000b9e10:3c048006	a0=$80060000
		//	addiu		a0, a0, $bb34		# 000b9e14:2484bb34	a0=$8005bb34
		//	lw		s1, $0000(a0)		# 000b9e18:8c910000	s1=$8005bb34
		//	jal		$000b5090		# 000b9e1c:0c02d424	^ FNC_000b5090
		//	andi		a1, s0, $00ff		# 000b9e20:320500ff	
		fnc000b5090(0x8005bb34, a0);
		//	lui		s0, $8006		# 000b9e24:3c108006	s0=$80060000
		//	addiu		s0, s0, $bb2c		# 000b9e28:2610bb2c	s0=$8005bb2c
		//	lw		v0, $0000(s0)		# 000b9e2c:8e020000	v0=$8005bb2c
		//	lui		t8, $ba00		# 000b9e30:3c18ba00	t8=$ba000000
		//	addiu		t9, zero, $2000		# 000b9e34:24192000	t9=$00002000
		//	addiu		t7, v0, $0008		# 000b9e38:244f0008	t7=$801d3a08
		//	sw		t7, $0000(s0)		# 000b9e3c:ae0f0000	[8005bb2c]
		x8005bb2c += 8;
		//	ori		t8, t8, $0c02		# 000b9e40:37180c02	t8=$ba000c02
		//	sw		t9, $0004(v0)		# 000b9e44:ac590004	[801d3a04]
		//	sw		t8, $0000(v0)		# 000b9e48:ac580000	[801d3a00]
		//	lui		at, $8015		# 000b9e4c:3c018015	at=$80150000
		//	sh		zero, $f89a(at)		# 000b9e50:a420f89a	[8014f89a]
		//	lui		at, $8015		# 000b9e54:3c018015	at=$80150000
		//	addiu		t6, zero, $008f		# 000b9e58:240e008f	t6=$0000008f
		//	lui		t5, $8015		# 000b9e5c:3c0d8015	t5=$80150000
		//	sh		t6, $fd28(at)		# 000b9e60:a42efd28	[8014fd28]
		//	addiu		t5, t5, $1dd8		# 000b9e64:25ad1dd8	t5=$80151dd8
		//	lbu		t7, $0964(t5)		# 000b9e68:91af0964	t7=$8015273c
		//	lw		v0, $0000(s0)		# 000b9e6c:8e020000	v0=$8005bb2c
		//	lbu		t8, $0965(t5)		# 000b9e70:91b80965	t8=$8015273d
		//	sh		t7, $010c(sp)		# 000b9e74:a7af010c	
		//	addiu		t9, v0, $0008		# 000b9e78:24590008	t9=$801d3a08
		//	sw		s1, $00f8(sp)		# 000b9e7c:afb100f8	
		//	sw		s1, $00fc(sp)		# 000b9e80:afb100fc	
		//	sw		t9, $0000(s0)		# 000b9e84:ae190000	[8005bb2c]
		//	lui		t7, $c811		# 000b9e88:3c0fc811	t7=$c8110000
		//	lui		t6, $b900		# 000b9e8c:3c0eb900	t6=$b9000000
		//	sh		t8, $010a(sp)		# 000b9e90:a7b8010a	
		//	ori		t6, t6, $031d		# 000b9e94:35ce031d	t6=$b900031d
		//	ori		t7, t7, $2230		# 000b9e98:35ef2230	t7=$c8112230
		//	sw		t7, $0004(v0)		# 000b9e9c:ac4f0004	[801d3a04]
		//	sw		t6, $0000(v0)		# 000b9ea0:ac4e0000	[801d3a00]
		//	lw		v0, $0000(s0)		# 000b9ea4:8e020000	v0=$8005bb2c
		//	lui		t9, $ba00		# 000b9ea8:3c19ba00	t9=$ba000000
		//	ori		t9, t9, $1301		# 000b9eac:37391301	t9=$ba001301
		//	addiu		t8, v0, $0008		# 000b9eb0:24580008	t8=$801d3a08
		//	sw		t8, $0000(s0)		# 000b9eb4:ae180000	[8005bb2c]
		//	lui		t6, $0008		# 000b9eb8:3c0e0008	t6=$00080000
		//	sw		t6, $0004(v0)		# 000b9ebc:ac4e0004	[801d3a04]
		//	sw		t9, $0000(v0)		# 000b9ec0:ac590000	[801d3a00]
		//	lw		v0, $0000(s0)		# 000b9ec4:8e020000	v0=$8005bb2c
		//	lui		t9, $8000		# 000b9ec8:3c198000	t9=$80000000
		//	lui		t8, $bb00		# 000b9ecc:3c18bb00	t8=$bb000000
		//	addiu		t7, v0, $0008		# 000b9ed0:244f0008	
		//	sw		t7, $0000(s0)		# 000b9ed4:ae0f0000	
		//	ori		t8, t8, $0001		# 000b9ed8:37180001	t8=$bb000001
		//	ori		t9, t9, $8000		# 000b9edc:37398000	t9=$80008000
		//	sw		t9, $0004(v0)		# 000b9ee0:ac590004	
		//	sw		t8, $0000(v0)		# 000b9ee4:ac580000	
		//	lw		v0, $0000(s0)		# 000b9ee8:8e020000	
		//	lui		t7, $ba00		# 000b9eec:3c0fba00	t7=$ba000000
		//	ori		t7, t7, $0e02		# 000b9ef0:35ef0e02	t7=$ba000e02
		//	addiu		t6, v0, $0008		# 000b9ef4:244e0008	
		//	sw		t6, $0000(s0)		# 000b9ef8:ae0e0000	
		//	ori		t8, zero, $8000		# 000b9efc:34188000	t8=$00008000
		//	sw		t8, $0004(v0)		# 000b9f00:ac580004	
		//	sw		t7, $0000(v0)		# 000b9f04:ac4f0000	
		//	lw		v0, $0000(s0)		# 000b9f08:8e020000	
		//	lui		t7, $0002		# 000b9f0c:3c0f0002	t7=$00020000
		//	ori		t7, t7, $2200		# 000b9f10:35ef2200	t7=$00022200
		//	addiu		t9, v0, $0008		# 000b9f14:24590008	
		//	sw		t9, $0000(s0)		# 000b9f18:ae190000	
		//	lui		t6, $b700		# 000b9f1c:3c0eb700	t6=$b7000000
		//	sw		t6, $0000(v0)		# 000b9f20:ac4e0000	
		//	sw		t7, $0004(v0)		# 000b9f24:ac4f0004	
		//	lw		v0, $0000(s0)		# 000b9f28:8e020000	
		//	lui		t6, $8025		# 000b9f2c:3c0e8025	t6=$80250000
		//	lui		at, $1fff		# 000b9f30:3c011fff	at=$1fff0000
		//	addiu		t8, v0, $0008		# 000b9f34:24580008	
		//	sw		t8, $0000(s0)		# 000b9f38:ae180000	
		//	ori		at, at, $ffff		# 000b9f3c:3421ffff	at=$1fffffff
		//	addiu		t6, t6, $4e80		# 000b9f40:25ce4e80	t6=$80254e80
		//	and		t7, t6, at		# 000b9f44:01c17824	
		//	lui		t9, $fd10		# 000b9f48:3c19fd10	t9=$fd100000
		//	sw		t9, $0000(v0)		# 000b9f4c:ac590000	
		//	sw		t7, $0004(v0)		# 000b9f50:ac4f0004	
		//	lw		v0, $0000(s0)		# 000b9f54:8e020000	
		//	lui		t9, $e800		# 000b9f58:3c19e800	t9=$e8000000
		//	lui		t7, $f500		# 000b9f5c:3c0ff500	t7=$f5000000
		//	addiu		t8, v0, $0008		# 000b9f60:24580008	
		//	sw		t8, $0000(s0)		# 000b9f64:ae180000	
		//	sw		zero, $0004(v0)		# 000b9f68:ac400004	
		//	sw		t9, $0000(v0)		# 000b9f6c:ac590000	
		//	lw		v0, $0000(s0)		# 000b9f70:8e020000	
		//	lui		t8, $0700		# 000b9f74:3c180700	t8=$07000000
		//	ori		t7, t7, $0100		# 000b9f78:35ef0100	t7=$f5000100
		//	addiu		t6, v0, $0008		# 000b9f7c:244e0008	
		//	sw		t6, $0000(s0)		# 000b9f80:ae0e0000	
		//	sw		t8, $0004(v0)		# 000b9f84:ac580004	
		//	sw		t7, $0000(v0)		# 000b9f88:ac4f0000	
		//	lw		v0, $0000(s0)		# 000b9f8c:8e020000	
		//	lui		ra, $e600		# 000b9f90:3c1fe600	ra=$e6000000
		//	lui		t8, $073f		# 000b9f94:3c18073f	t8=$073f0000
		//	addiu		t9, v0, $0008		# 000b9f98:24590008	
		//	sw		t9, $0000(s0)		# 000b9f9c:ae190000	
		//	sw		zero, $0004(v0)		# 000b9fa0:ac400004	
		//	sw		ra, $0000(v0)		# 000b9fa4:ac5f0000	
		//	lw		v0, $0000(s0)		# 000b9fa8:8e020000	
		//	ori		t8, t8, $c000		# 000b9fac:3718c000	t8=$073fc000
		//	lui		t7, $f000		# 000b9fb0:3c0ff000	t7=$f0000000
		//	addiu		t6, v0, $0008		# 000b9fb4:244e0008	
		//	sw		t6, $0000(s0)		# 000b9fb8:ae0e0000	
		//	sw		t8, $0004(v0)		# 000b9fbc:ac580004	
		//	sw		t7, $0000(v0)		# 000b9fc0:ac4f0000	
		//	lw		v0, $0000(s0)		# 000b9fc4:8e020000	
		//	lui		t6, $e700		# 000b9fc8:3c0ee700	t6=$e7000000
		//	lui		t8, $8015		# 000b9fcc:3c188015	t8=$80150000
		//	addiu		t9, v0, $0008		# 000b9fd0:24590008	
		//	sw		t9, $0000(s0)		# 000b9fd4:ae190000	
		//	sw		zero, $0004(v0)		# 000b9fd8:ac400004	
		//	sw		t6, $0000(v0)		# 000b9fdc:ac4e0000	
		//	lw		v0, $0000(s0)		# 000b9fe0:8e020000	
		//	lui		t6, $bc00		# 000b9fe4:3c0ebc00	t6=$bc000000
		//	addiu		fp, zero, $0004		# 000b9fe8:241e0004	fp=$00000004
		//	addiu		t7, v0, $0008		# 000b9fec:244f0008	
		//	sw		t7, $0000(s0)		# 000b9ff0:ae0f0000	
		//	sw		zero, $0004(v0)		# 000b9ff4:ac400004	
		//	sw		ra, $0000(v0)		# 000b9ff8:ac5f0000	
		//	lw		t8, $93cc(t8)		# 000b9ffc:8f1893cc	t8=$801493cc
		//	lui		t7, $bc00		# 000ba000:3c0fbc00	t7=$bc000000
		//	ori		t7, t7, $0002		# 000ba004:35ef0002	t7=$bc000002
		//	beq		t8, zero, $000ba07c	# 000ba008:1300001c	v __000ba07c
		//	or		ra, zero, zero		# 000ba00c:0000f825	
		//	lw		v0, $0000(s0)		# 000ba010:8e020000	
		//	lui		t7, $8000		# 000ba014:3c0f8000	t7=$80000000
		//	ori		t7, t7, $0040		# 000ba018:35ef0040	t7=$80000040
		//	addiu		t9, v0, $0008		# 000ba01c:24590008	
		//	sw		t9, $0000(s0)		# 000ba020:ae190000	
		//	ori		t6, t6, $0002		# 000ba024:35ce0002	t6=$bc000002
		//	sw		t6, $0000(v0)		# 000ba028:ac4e0000	
		//	sw		t7, $0004(v0)		# 000ba02c:ac4f0004	
		//	lw		v0, $0000(s0)		# 000ba030:8e020000	
		//	lui		t6, $8014		# 000ba034:3c0e8014	t6=$80140000
		//	lui		t9, $0386		# 000ba038:3c190386	t9=$03860000
		//	addiu		t8, v0, $0008		# 000ba03c:24580008	
		//	sw		t8, $0000(s0)		# 000ba040:ae180000	
		//	ori		t9, t9, $0010		# 000ba044:37390010	t9=$03860010
		//	addiu		t6, t6, $d978		# 000ba048:25ced978	t6=$8013d978
		//	sw		t6, $0004(v0)		# 000ba04c:ac4e0004	
		//	sw		t9, $0000(v0)		# 000ba050:ac590000	
		//	lw		v0, $0000(s0)		# 000ba054:8e020000	
		//	lui		t9, $8014		# 000ba058:3c198014	t9=$80140000
		//	lui		t8, $0388		# 000ba05c:3c180388	t8=$03880000
		//	addiu		t7, v0, $0008		# 000ba060:244f0008	
		//	sw		t7, $0000(s0)		# 000ba064:ae0f0000	
		//	ori		t8, t8, $0010		# 000ba068:37180010	t8=$03880010
		//	addiu		t9, t9, $d970		# 000ba06c:2739d970	t9=$8013d970
		//	sw		t9, $0004(v0)		# 000ba070:ac590004	
		//	beq		zero, zero, $000ba0e0	# 000ba074:1000001a	v __000ba0e0
		//	sw		t8, $0000(v0)		# 000ba078:ac580000	
		//__000ba07c:					# 
		//	lw		v0, $0000(s0)		# 000ba07c:8e020000	
		//	lui		t8, $8000		# 000ba080:3c188000	t8=$80000000
		//	ori		t8, t8, $0040		# 000ba084:37180040	t8=$80000040
		//	addiu		t6, v0, $0008		# 000ba088:244e0008	
		//	sw		t6, $0000(s0)		# 000ba08c:ae0e0000	
		//	sw		t8, $0004(v0)		# 000ba090:ac580004	
		//	sw		t7, $0000(v0)		# 000ba094:ac4f0000	
		//	lw		v0, $0000(s0)		# 000ba098:8e020000	
		//	lui		t7, $8014		# 000ba09c:3c0f8014	t7=$80140000
		//	lui		t6, $0386		# 000ba0a0:3c0e0386	t6=$03860000
		//	addiu		t9, v0, $0008		# 000ba0a4:24590008	
		//	sw		t9, $0000(s0)		# 000ba0a8:ae190000	
		//	ori		t6, t6, $0010		# 000ba0ac:35ce0010	t6=$03860010
		//	addiu		t7, t7, $d960		# 000ba0b0:25efd960	t7=$8013d960
		//	sw		t7, $0004(v0)		# 000ba0b4:ac4f0004	
		//	sw		t6, $0000(v0)		# 000ba0b8:ac4e0000	
		//	lw		v0, $0000(s0)		# 000ba0bc:8e020000	
		//	lui		t6, $8014		# 000ba0c0:3c0e8014	t6=$80140000
		//	lui		t9, $0388		# 000ba0c4:3c190388	t9=$03880000
		//	addiu		t8, v0, $0008		# 000ba0c8:24580008	
		//	sw		t8, $0000(s0)		# 000ba0cc:ae180000	
		//	ori		t9, t9, $0010		# 000ba0d0:37390010	t9=$03880010
		//	addiu		t6, t6, $d958		# 000ba0d4:25ced958	t6=$8013d958
		//	sw		t6, $0004(v0)		# 000ba0d8:ac4e0004	
		//	sw		t9, $0000(v0)		# 000ba0dc:ac590000	
		//__000ba0e0:					# 
		//	lh		t7, $010a(sp)		# 000ba0e0:87af010a	
		//	lh		v0, $010c(sp)		# 000ba0e4:87a2010c	
		//	sb		zero, $0117(sp)		# 000ba0e8:a3a00117	
		//	bgez		t7, $000ba0fc		# 000ba0ec:05e10003	v __000ba0fc
		//	sra		t8, t7, 2		# 000ba0f0:000fc083	
		//	addiu		at, t7, $0003		# 000ba0f4:25e10003	
		//	sra		t8, at, 2		# 000ba0f8:0001c083	
		//__000ba0fc:					# 
		//	sw		t8, $006c(sp)		# 000ba0fc:afb8006c	
		//	bgez		v0, $000ba110		# 000ba100:04410003	v __000ba110
		//	sra		t9, v0, 2		# 000ba104:0002c883	
		//	addiu		at, v0, $0003		# 000ba108:24410003	
		//	sra		t9, at, 2		# 000ba10c:0001c883	
		//__000ba110:					# 
		//	sw		t9, $0068(sp)		# 000ba110:afb90068	
		//__000ba114:					# 
		//	lw		t6, $006c(sp)		# 000ba114:8fae006c	
		//	lui		t9, $8022		# 000ba118:3c198022	t9=$80220000
		//	addiu		t9, t9, $ea30		# 000ba11c:2739ea30	t9=$8021ea30
		//	addu		v1, t6, ra		# 000ba120:01df1821	
		//	andi		t7, v1, $00ff		# 000ba124:306f00ff	
		//	sll		t8, t7, 6		# 000ba128:000fc180	
		//	addu		t6, t8, t9		# 000ba12c:03197021	
		//	sll		t8, t7, 10		# 000ba130:000fc280	
		//	ori		at, zero, $8000		# 000ba134:34018000	at=$00008000
		//	addu		t9, t8, at		# 000ba138:0301c821	
		//	sw		t6, $0060(sp)		# 000ba13c:afae0060	
		//	sll		t6, t9, 16		# 000ba140:00197400	
		//	sw		t7, $0054(sp)		# 000ba144:afaf0054	
		//	sra		t7, t6, 16		# 000ba148:000e7c03	
		//	sw		t7, $0050(sp)		# 000ba14c:afaf0050	
		//	or		s7, zero, zero		# 000ba150:0000b825	
		//	or		t5, zero, zero		# 000ba154:00006825	
		//__000ba158:					# 
		//	bne		t5, zero, $000ba180	# 000ba158:15a00009	v __000ba180
		//	lh		v0, $010c(sp)		# 000ba15c:87a2010c	
		//	bgez		v0, $000ba174		# 000ba160:04410004	v __000ba174
		//	andi		s4, v0, $0003		# 000ba164:30540003	
		//	beq		s4, zero, $000ba174	# 000ba168:12800002	v __000ba174
		//	nop					# 000ba16c:00000000	
		//	addiu		s4, s4, $fffc		# 000ba170:2694fffc	
		//__000ba174:					# 
		//	sll		t8, s4, 16		# 000ba174:0014c400	
		//	beq		zero, zero, $000ba184	# 000ba178:10000002	v __000ba184
		//	sra		s4, t8, 16		# 000ba17c:0018a403	
		//__000ba180:					# 
		//	or		s4, zero, zero		# 000ba180:0000a025	
		//__000ba184:					# 
		//	bne		fp, t5, $000ba1b4	# 000ba184:17cd000b	v __000ba1b4
		//	lui		at, $1fff		# 000ba188:3c011fff	at=$1fff0000
		//	lh		s6, $010c(sp)		# 000ba18c:87b6010c	
		//	bgez		s6, $000ba1a4		# 000ba190:06c10004	v __000ba1a4
		//	andi		t6, s6, $0003		# 000ba194:32ce0003	
		//	beq		t6, zero, $000ba1a4	# 000ba198:11c00002	v __000ba1a4
		//	nop					# 000ba19c:00000000	
		//	addiu		t6, t6, $fffc		# 000ba1a0:25cefffc	
		//__000ba1a4:					# 
		//	addiu		s6, t6, $0001		# 000ba1a4:25d60001	
		//	sll		t7, s6, 16		# 000ba1a8:00167c00	
		//	beq		zero, zero, $000ba1c0	# 000ba1ac:10000004	v __000ba1c0
		//	sra		s6, t7, 16		# 000ba1b0:000fb403	
		//__000ba1b4:					# 
		//	sll		s6, fp, 16		# 000ba1b4:001eb400	s6=$00040000
		//	sra		t9, s6, 16		# 000ba1b8:0016cc03	
		//	or		s6, t9, zero		# 000ba1bc:0320b025	s6=$00000004
		//__000ba1c0:					# 
		//	bne		ra, zero, $000ba1ec	# 000ba1c0:17e0000a	v __000ba1ec
		//	ori		at, at, $ffff		# 000ba1c4:3421ffff	at=$1fffffff
		//	lh		s5, $010a(sp)		# 000ba1c8:87b5010a	
		//	bgez		s5, $000ba1e0		# 000ba1cc:06a10004	v __000ba1e0
		//	andi		t6, s5, $0003		# 000ba1d0:32ae0003	
		//	beq		t6, zero, $000ba1e0	# 000ba1d4:11c00002	v __000ba1e0
		//	nop					# 000ba1d8:00000000	
		//	addiu		t6, t6, $fffc		# 000ba1dc:25cefffc	
		//__000ba1e0:					# 
		//	sll		t7, t6, 16		# 000ba1e0:000e7c00	
		//	beq		zero, zero, $000ba1f0	# 000ba1e4:10000002	v __000ba1f0
		//	sra		s5, t7, 16		# 000ba1e8:000fac03	
		//__000ba1ec:					# 
		//	or		s5, zero, zero		# 000ba1ec:0000a825	
		//__000ba1f0:					# 
		//	bne		fp, ra, $000ba220	# 000ba1f0:17df000b	v __000ba220
		//	addiu		a2, zero, $0400		# 000ba1f4:24060400	a2=$00000400
		//	lh		s3, $010a(sp)		# 000ba1f8:87b3010a	
		//	bgez		s3, $000ba210		# 000ba1fc:06610004	v __000ba210
		//	andi		t9, s3, $0003		# 000ba200:32790003	
		//	beq		t9, zero, $000ba210	# 000ba204:13200002	v __000ba210
		//	nop					# 000ba208:00000000	
		//	addiu		t9, t9, $fffc		# 000ba20c:2739fffc	t9=$fffffffc
		//__000ba210:					# 
		//	addiu		s3, t9, $0001		# 000ba210:27330001	s3=$fffffffd
		//	sll		t6, s3, 16		# 000ba214:00137400	t6=$fffd0000
		//	beq		zero, zero, $000ba22c	# 000ba218:10000004	v __000ba22c
		//	sra		s3, t6, 16		# 000ba21c:000e9c03	
		//__000ba220:					# 
		//	sll		s3, fp, 16		# 000ba220:001e9c00	s3=$00040000
		//	sra		t8, s3, 16		# 000ba224:0013c403	
		//	or		s3, t8, zero		# 000ba228:03009825	s3=$00000004
		//__000ba22c:					# 
		//	lw		t9, $0068(sp)		# 000ba22c:8fb90068	
		//	lw		t7, $0060(sp)		# 000ba230:8faf0060	
		//	lw		v0, $0000(s0)		# 000ba234:8e020000	
		//	addu		t3, t9, t5		# 000ba238:032d5821	
		//	andi		t6, t3, $00ff		# 000ba23c:316e00ff	
		//	addu		t2, t7, t6		# 000ba240:01ee5021	
		//	lbu		t8, $0000(t2)		# 000ba244:91580000	
		//	or		t3, t6, zero		# 000ba248:01c05825	
		//	addiu		t6, v0, $0008		# 000ba24c:244e0008	
		//	sw		t6, $0000(s0)		# 000ba250:ae0e0000	
		//	lui		t9, $8025		# 000ba254:3c198025	t9=$80250000
		//	andi		s1, t8, $000f		# 000ba258:3311000f	
		//	sll		t8, s1, 9		# 000ba25c:0011c240	
		//	addiu		t9, t9, $4e80		# 000ba260:27394e80	t9=$80254e80
		//	lui		t7, $fd10		# 000ba264:3c0ffd10	t7=$fd100000
		//	addu		t6, t8, t9		# 000ba268:03197021	
		//	sw		t7, $0000(v0)		# 000ba26c:ac4f0000	
		//	and		t7, t6, at		# 000ba270:01c17824	
		//	sw		t7, $0004(v0)		# 000ba274:ac4f0004	
		//	lw		v0, $0000(s0)		# 000ba278:8e020000	
		//	lui		t9, $e800		# 000ba27c:3c19e800	t9=$e8000000
		//	lui		t7, $f500		# 000ba280:3c0ff500	t7=$f5000000
		//	addiu		t8, v0, $0008		# 000ba284:24580008	
		//	sw		t8, $0000(s0)		# 000ba288:ae180000	
		//	sw		zero, $0004(v0)		# 000ba28c:ac400004	
		//	sw		t9, $0000(v0)		# 000ba290:ac590000	
		//	lw		v0, $0000(s0)		# 000ba294:8e020000	
		//	lui		t8, $0700		# 000ba298:3c180700	t8=$07000000
		//	ori		t7, t7, $0100		# 000ba29c:35ef0100	t7=$f5000100
		//	addiu		t6, v0, $0008		# 000ba2a0:244e0008	
		//	sw		t6, $0000(s0)		# 000ba2a4:ae0e0000	
		//	sw		t8, $0004(v0)		# 000ba2a8:ac580004	
		//	sw		t7, $0000(v0)		# 000ba2ac:ac4f0000	
		//	lw		v0, $0000(s0)		# 000ba2b0:8e020000	
		//	lui		s2, $e600		# 000ba2b4:3c12e600	s2=$e6000000
		//	lui		t8, $073f		# 000ba2b8:3c18073f	t8=$073f0000
		//	addiu		t9, v0, $0008		# 000ba2bc:24590008	
		//	sw		t9, $0000(s0)		# 000ba2c0:ae190000	
		//	sw		zero, $0004(v0)		# 000ba2c4:ac400004	
		//	sw		s2, $0000(v0)		# 000ba2c8:ac520000	
		//	lw		v0, $0000(s0)		# 000ba2cc:8e020000	
		//	ori		t8, t8, $c000		# 000ba2d0:3718c000	t8=$073fc000
		//	lui		t7, $f000		# 000ba2d4:3c0ff000	t7=$f0000000
		//	addiu		t6, v0, $0008		# 000ba2d8:244e0008	
		//	sw		t6, $0000(s0)		# 000ba2dc:ae0e0000	
		//	sw		t8, $0004(v0)		# 000ba2e0:ac580004	
		//	sw		t7, $0000(v0)		# 000ba2e4:ac4f0000	
		//	lw		v0, $0000(s0)		# 000ba2e8:8e020000	
		//	lui		t6, $e700		# 000ba2ec:3c0ee700	t6=$e7000000
		//	addiu		at, zero, $00f0		# 000ba2f0:240100f0	at=$000000f0
		//	addiu		t9, v0, $0008		# 000ba2f4:24590008	
		//	sw		t9, $0000(s0)		# 000ba2f8:ae190000	
		//	sw		zero, $0004(v0)		# 000ba2fc:ac400004	
		//	sw		t6, $0000(v0)		# 000ba300:ac4e0000	
		//	lw		v0, $0000(s0)		# 000ba304:8e020000	
		//	sll		a0, t3, 10		# 000ba308:000b2280	
		//	addiu		a3, zero, $0400		# 000ba30c:24070400	a3=$00000400
		//	addiu		t7, v0, $0008		# 000ba310:244f0008	
		//	sw		t7, $0000(s0)		# 000ba314:ae0f0000	
		//	sw		zero, $0004(v0)		# 000ba318:ac400004	
		//	sw		s2, $0000(v0)		# 000ba31c:ac520000	
		//	lbu		t4, $0000(t2)		# 000ba320:914c0000	
		//	lui		t7, $b600		# 000ba324:3c0fb600	t7=$b6000000
		//	or		s2, t3, zero		# 000ba328:01609025	
		//	andi		t8, t4, $00f0		# 000ba32c:319800f0	
		//	beq		t8, at, $000ba33c	# 000ba330:13010002	v __000ba33c
		//	addiu		t9, t4, $0010		# 000ba334:25990010	
		//	sb		t9, $0000(t2)		# 000ba338:a1590000	
		//__000ba33c:					# 
		//	lw		v0, $0000(s0)		# 000ba33c:8e020000	
		//	lui		t8, $0002		# 000ba340:3c180002	t8=$00020000
		//	ori		at, zero, $8000		# 000ba344:34018000	at=$00008000
		//	addiu		t6, v0, $0008		# 000ba348:244e0008	
		//	sw		t6, $0000(s0)		# 000ba34c:ae0e0000	
		//	addu		a0, a0, at		# 000ba350:00812021	
		//	sw		t8, $0004(v0)		# 000ba354:ac580004	
		//	sw		t7, $0000(v0)		# 000ba358:ac4f0000	
		//	sw		ra, $0070(sp)		# 000ba35c:afbf0070	
		//	sll		t9, a0, 16		# 000ba360:0004cc00	
		//	sra		a0, t9, 16		# 000ba364:00192403	
		//	jal		$000b960c		# 000ba368:0c02e583	^ FNC_000b960c
		//	lh		a1, $0052(sp)		# 000ba36c:87a50052	
		fnc000b960c();
		//	beq		v0, zero, $000ba3e8	# 000ba370:1040001d	v __000ba3e8
		//	lw		ra, $0070(sp)		# 000ba374:8fbf0070	
		//	lh		t7, $00f4(sp)		# 000ba378:87af00f4	
		//	sll		a2, s5, 16		# 000ba37c:00153400	
		//	sra		t6, a2, 16		# 000ba380:00067403	
		//	or		a2, t6, zero		# 000ba384:01c03025	
		//	lw		t6, $0054(sp)		# 000ba388:8fae0054	
		//	sll		a3, s6, 16		# 000ba38c:00163c00	
		//	addiu		t8, t7, $0001		# 000ba390:25f80001	
		//	sra		t7, a3, 16		# 000ba394:00077c03	
		//	sh		t8, $00f4(sp)		# 000ba398:a7b800f4	
		//	or		a3, t7, zero		# 000ba39c:01e03825	
		//	sll		t8, s2, 2		# 000ba3a0:0012c080	
		//	sll		t7, t6, 10		# 000ba3a4:000e7a80	
		//	addu		t6, t8, t7		# 000ba3a8:030f7021	
		//	sll		a1, s4, 16		# 000ba3ac:00142c00	
		//	sra		t9, a1, 16		# 000ba3b0:0005cc03	
		//	sll		t8, s5, 8		# 000ba3b4:0015c200	
		//	addu		t7, t6, t8		# 000ba3b8:01d87821	
		//	or		a1, t9, zero		# 000ba3bc:03202825	
		//	andi		t9, t7, $ffff		# 000ba3c0:31f9ffff	
		//	addu		t6, t9, s4		# 000ba3c4:03347021	
		//	sw		ra, $0070(sp)		# 000ba3c8:afbf0070	
		//	sw		t6, $0014(sp)		# 000ba3cc:afae0014	
		//	lw		a0, $00f8(sp)		# 000ba3d0:8fa400f8	
		//	sw		s3, $0010(sp)		# 000ba3d4:afb30010	
		//	jal		$000b604c		# 000ba3d8:0c02d813	^ FNC_000b604c
		//	sw		s1, $0018(sp)		# 000ba3dc:afb10018	
		fnc000b604c();
		//	beq		zero, zero, $000ba3f4	# 000ba3e0:10000004	v __000ba3f4
		//	lw		ra, $0070(sp)		# 000ba3e4:8fbf0070	
		//__000ba3e8:					# 
		//	lh		t8, $00f2(sp)		# 000ba3e8:87b800f2	
		//	addiu		t7, t8, $0001		# 000ba3ec:270f0001	
		//	sh		t7, $00f2(sp)		# 000ba3f0:a7af00f2	
		//__000ba3f4:					# 
		//	lw		t8, $00f8(sp)		# 000ba3f4:8fb800f8	
		//	addiu		s7, s7, $0001		# 000ba3f8:26f70001	
		//	subu		t9, fp, s4		# 000ba3fc:03d4c823	
		//	andi		t5, s7, $00ff		# 000ba400:32ed00ff	
		//	sll		t6, t9, 4		# 000ba404:00197100	
		//	slti		at, t5, $0005		# 000ba408:29a10005	
		//	addu		t7, t6, t8		# 000ba40c:01d87821	
		//	or		s7, t5, zero		# 000ba410:01a0b825	
		//	bne		at, zero, $000ba158	# 000ba414:1420ff50	^ __000ba158
		//	sw		t7, $00f8(sp)		# 000ba418:afaf00f8	
		//	lbu		v0, $0117(sp)		# 000ba41c:93a20117	
		//	subu		t6, fp, s5		# 000ba420:03d57023	
		//	lw		a0, $00fc(sp)		# 000ba424:8fa400fc	
		//	sll		t8, t6, 3		# 000ba428:000ec0c0	
		//	addu		t8, t8, t6		# 000ba42c:030ec021	
		//	addiu		v0, v0, $0001		# 000ba430:24420001	
		//	andi		ra, v0, $00ff		# 000ba434:305f00ff	
		//	sll		t7, t8, 5		# 000ba438:00187940	
		//	slti		at, ra, $0005		# 000ba43c:2be10005	
		//	addu		a0, t7, a0		# 000ba440:01e42021	
		//	sw		a0, $00fc(sp)		# 000ba444:afa400fc	
		//	sb		ra, $0117(sp)		# 000ba448:a3bf0117	
		//	bne		at, zero, $000ba114	# 000ba44c:1420ff31	^ __000ba114
		//	sw		a0, $00f8(sp)		# 000ba450:afa400f8	
		//	lw		v0, $0000(s0)		# 000ba454:8e020000	
		//	lui		t8, $fc12		# 000ba458:3c18fc12	t8=$fc120000
		//	ori		t8, t8, $7fff		# 000ba45c:37187fff	t8=$fc127fff
		//	addiu		t6, v0, $0008		# 000ba460:244e0008	
		//	sw		t6, $0000(s0)		# 000ba464:ae0e0000	
		//	addiu		t7, zero, $f838		# 000ba468:240ff838	t7=$fffff838
		//	sw		t7, $0004(v0)		# 000ba46c:ac4f0004	
		//	sw		t8, $0000(v0)		# 000ba470:ac580000	
		//	lw		v0, $0000(s0)		# 000ba474:8e020000	
		//	lui		s1, $ba00		# 000ba478:3c11ba00	s1=$ba000000
		//	ori		s1, s1, $0e02		# 000ba47c:36310e02	s1=$ba000e02
		//	addiu		t9, v0, $0008		# 000ba480:24590008	
		//	sw		t9, $0000(s0)		# 000ba484:ae190000	
		//	ori		t6, zero, $8000		# 000ba488:340e8000	t6=$00008000
		//	sw		t6, $0004(v0)		# 000ba48c:ac4e0004	
		//	jal		$000b753c		# 000ba490:0c02dd4f	^ FNC_000b753c
		//	sw		s1, $0000(v0)		# 000ba494:ac510000	
		fnc000b753c();
		//	lw		v0, $0000(s0)		# 000ba498:8e020000	
		//	addiu		t8, v0, $0008		# 000ba49c:24580008	
		//	sw		t8, $0000(s0)		# 000ba4a0:ae180000	
		//	sw		zero, $0004(v0)		# 000ba4a4:ac400004	
		//	sw		s1, $0000(v0)		# 000ba4a8:ac510000	
		//	lw		ra, $004c(sp)		# 000ba4ac:8fbf004c	
		//	lw		fp, $0048(sp)		# 000ba4b0:8fbe0048	
		//	lw		s7, $0044(sp)		# 000ba4b4:8fb70044	
		//	lw		s6, $0040(sp)		# 000ba4b8:8fb60040	
		//	lw		s5, $003c(sp)		# 000ba4bc:8fb5003c	
		//	lw		s4, $0038(sp)		# 000ba4c0:8fb40038	
		//	lw		s3, $0034(sp)		# 000ba4c4:8fb30034	
		//	lw		s2, $0030(sp)		# 000ba4c8:8fb20030	
		//	lw		s1, $002c(sp)		# 000ba4cc:8fb1002c	
		//	lw		s0, $0028(sp)		# 000ba4d0:8fb00028	
		//	jr		ra			# 000ba4d4:03e00008	
		//	addiu		sp, sp, $0118		# 000ba4d8:27bd0118	
	}

	// RAM GREECE
	static void fnc000ba4dc() {
	}

	// RAM GREECE
	static void fnc000ba510() {
	}

	// RAM GREECE
	static void fnc000ba524() {
	}

	// RAM GREECE
	static void fnc000ba52c() {
	}

	// RAM 000ba5b0
	/// Skipping makes water invisible
	static void DrawVtxBufferWater() {
		fnc000b84d0();
		N64.coss();
		fnc000ba52c();
		fnc000ba52c();
		fnc000b84d0();
		fnc000b9228();
		N64.fnc000137e8();
	}

	// RAM GREECE
	static void fnc000bb3d0() {
	}

	// RAM GREECE
	static void fnc000bb4d0() {
	}

	// RAM GREECE
	static void fnc000bb4e8() {
	}

	// RAM GREECE
	static void fnc000bb540() {
	}

	// RAM GREECE
	static void fnc000bb568() {
	}

	// RAM GREECE
	static void fnc000bb57c() {
	}

	// RAM GREECE
	static void fnc000bb5d4() {
	}

	// RAM 000bb5e0
	static void DrawShieldWalls() {
		fnc000bb3d0();
		fnc000b84d0();
		fnc000b1a68();
		fnc000ba52c();
		fnc000ba52c();
		fnc000ba52c();
		fnc000ba52c();
	}

	// RAM GREECE
	static void fnc000bc2f8(short playerX, short playerZ) {
		fnc000b84d0();
		fnc000df9c8();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc00102d00();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000b84d0();
		fnc00124170();
		fnc00124118();
	}

	// RAM GREECE
	static void fnc000bc5dc() {
		fnc000b84d0();
		fnc000df038();
		fnc000df848();
		guess_destroyAlien();
	}

	// RAM GREECE
	static void fnc000bc760() {
		fnc000b84d0();
		N64.fnc000039d0();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000bd20c() {
	}

	// RAM GREECE
	static void fnc000bd2f4() {
		fnc000bd20c();
	}

	// RAM 000bd360
	/// A gate is a portal through the shield wall
	static void DisplayGates() {
		fnc000bb3d0();
		fnc000b93ac();
		fnc000b84d0();
		fnc000bc760();
	}

	// RAM GREECE
	static void fnc000bd688() {
		fnc000b84d0();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000bd8b8() {
		fnc000b0f20();
		fnc000b0c80();
		fnc000fac90();
		fnc000b0c80();
		fnc000fac90();
	}

	// RAM 000bdaf4
	static void openCurrentStageGate()
	{
		//	addiu		sp, sp, $ffb0		# 000bdaf4:27bdffb0	
		//	sw		fp, $0048(sp)		# 000bdaf8:afbe0048	
		//	sw		s7, $0044(sp)		# 000bdafc:afb70044	
		//	sw		s6, $0040(sp)		# 000bdb00:afb60040	
		//	sw		s5, $003c(sp)		# 000bdb04:afb5003c	
		//	sw		s4, $0038(sp)		# 000bdb08:afb40038	
		//	sw		s3, $0034(sp)		# 000bdb0c:afb30034	
		//	sw		s0, $0028(sp)		# 000bdb10:afb00028	
		//	lui		s4, $8004		# 000bdb14:3c148004	s4=$80040000
		//	lui		s5, $8004		# 000bdb18:3c158004	s5=$80040000
		//	lui		s6, $8014		# 000bdb1c:3c168014	s6=$80140000
		//	lui		s7, $8014		# 000bdb20:3c178014	s7=$80140000
		//	lui		fp, $8014		# 000bdb24:3c1e8014	fp=$80140000
		//	sw		ra, $004c(sp)		# 000bdb28:afbf004c	
		//	sw		s2, $0030(sp)		# 000bdb2c:afb20030	
		//	sw		s1, $002c(sp)		# 000bdb30:afb1002c	
		//	addiu		fp, fp, $2dfc		# 000bdb34:27de2dfc	fp=$80142dfc
		//	addiu		s7, s7, $2df0		# 000bdb38:26f72df0	s7=$80142df0
		//	addiu		s6, s6, $7f00		# 000bdb3c:26d67f00	s6=$80147f00
		//	addiu		s5, s5, $7f94		# 000bdb40:26b57f94	s5=$80047f94
		//	addiu		s4, s4, $7f90		# 000bdb44:26947f90	s4=$80047f90
		//	or		s0, zero, zero		# 000bdb48:00008025	
		//	or		s3, zero, zero		# 000bdb4c:00009825	
		int s3 = 0;
		do
		{
			//__000bdb50:					# 
			//	lw		a1, $0000(s4)		# 000bdb50:8e850000	a1=$80047f90
			//	lw		a2, $0000(s5)		# 000bdb54:8ea60000	a2=$80047f94
			//	or		a0, s7, zero		# 000bdb58:02e02025	a0=$80142df0
			//	sll		t6, a1, 2		# 000bdb5c:00057080	t6=$00000004
			//	subu		t6, t6, a1		# 000bdb60:01c57023	t6=$00000003
			//	sll		t6, t6, 2		# 000bdb64:000e7080	t6=$0000000c
			//	addu		t7, s6, t6		# 000bdb68:02ce7821	t7=$80147f0c
			//	sll		t8, a2, 1		# 000bdb6c:0006c040	
			//	addu		t9, t7, t8		# 000bdb70:01f8c821	
			//	jal		$0001cc6c		# 000bdb74:0c00731b	^ FNC_0001cc6c
			//	lhu		a3, $fff4(t9)		# 000bdb78:9727fff4	
			N64.fnc0001cc6c("%d,%d : %d.", currentLevel, x80047f94, GetUshort(((0x80147f00 + (currentLevel * 3 * 4)) + (x80047f94 * 2)) - 12));
			//	lw		t1, $0000(s4)		# 000bdb7c:8e890000	t1=$80047f90
			//	lw		t4, $0000(s5)		# 000bdb80:8eac0000	t4=$80047f94
			//	addiu		t8, zero, $0001		# 000bdb84:24180001	t8=$00000001
			//	sll		t2, t1, 2		# 000bdb88:00095080	t2=$00000004
			//	subu		t2, t2, t1		# 000bdb8c:01495023	t2=$00000003
			//	sll		t2, t2, 2		# 000bdb90:000a5080	t2=$0000000c
			//	addu		t3, s6, t2		# 000bdb94:02ca5821	t3=$80147f0c
			//	sll		t5, t4, 1		# 000bdb98:000c6840	
			//	addu		t6, t3, t5		# 000bdb9c:016d7021	
			//	lhu		t7, $fff4(t6)		# 000bdba0:95cffff4	
			//	sllv		t9, t8, s0		# 000bdba4:0218c804	t9=$00000001
			//	or		a0, fp, zero		# 000bdba8:03c02025	a0=$80142dfc
			//	and		t1, t7, t9		# 000bdbac:01f94824	
			//	beql		t1, zero, $000bdce4	# 000bdbb0:5120004c	v __000bdce4
			//	addiu		s3, s3, $0001		# 000bdbb4:26730001	s3=$00000001
			if ((GetUshort(((0x80147f00 + (currentLevel * 3 * 4)) + (x80047f94 * 2)) - 12) & 1) != 0)
			{
				//	jal		$0001cc6c		# 000bdbb8:0c00731b	^ FNC_0001cc6c
				//	or		a1, s0, zero		# 000bdbbc:02002825	
				N64.fnc0001cc6c("try to open gate : %d.", 0);
				//	lw		t2, $0000(s4)		# 000bdbc0:8e8a0000	
				//	sll		t3, s3, 2		# 000bdbc4:00135880	t3=$00000004
				//	addu		t3, t3, s3		# 000bdbc8:01735821	t3=$00000005
				//	sll		t4, t2, 2		# 000bdbcc:000a6080	
				//	addu		t4, t4, t2		# 000bdbd0:018a6021	
				//	sll		t4, t4, 4		# 000bdbd4:000c6100	
				//	sll		t3, t3, 1		# 000bdbd8:000b5840	t3=$0000000a
				//	lui		t6, $8004		# 000bdbdc:3c0e8004	t6=$80040000
				//	addiu		t6, t6, $e0fc		# 000bdbe0:25cee0fc	t6=$8003e0fc
				//	addu		t5, t4, t3		# 000bdbe4:018b6821	
				//	addu		v0, t5, t6		# 000bdbe8:01ae1021	
				//	lb		v1, $ffb6(v0)		# 000bdbec:8043ffb6	
				//	addiu		at, zero, $0050		# 000bdbf0:24010050	at=$00000050
				//	addiu		a3, zero, $0064		# 000bdbf4:24070064	a3=$00000064
				//	beq		v1, at, $000bdce0	# 000bdbf8:10610039	v __000bdce0
				//	subu		a0, zero, v1		# 000bdbfc:00032023	
				if (GetByte((((currentLevel * 5 * 16) + 0xa) + 0x8003e0fc) - 0x4a) != 0x50)
				{
					//	slt		at, a0, v1		# 000bdc00:0083082a	
					//	beq		at, zero, $000bdc14	# 000bdc04:10200003	v __000bdc14
					//	or		t0, a0, zero		# 000bdc08:00804025	
					//	beq		zero, zero, $000bdc14	# 000bdc0c:10000001	v __000bdc14
					//	or		t0, v1, zero		# 000bdc10:00604025	
					//__000bdc14:					# 
					//	lh		t7, $ffb0(v0)		# 000bdc14:844fffb0	
					//	lh		t2, $ffb4(v0)		# 000bdc18:844affb4	
					//	lh		s1, $ffb2(v0)		# 000bdc1c:8451ffb2	
					//	sll		t9, t7, 24		# 000bdc20:000fce00	
					//	sll		t4, t2, 24		# 000bdc24:000a6600	
					//	addiu		t8, t0, $0001		# 000bdc28:25180001	
					//	sra		s0, t9, 16		# 000bdc2c:00198403	
					//	sra		s2, t4, 16		# 000bdc30:000c9403	
					//	sb		t8, $ffb6(v0)		# 000bdc34:a058ffb6	
					//	sll		a2, s2, 16		# 000bdc38:00123400	
					//	sll		a0, s0, 16		# 000bdc3c:00102400	
					//	sll		a1, s1, 16		# 000bdc40:00112c00	
					//	sra		t6, a1, 16		# 000bdc44:00057403	
					//	sra		t5, a0, 16		# 000bdc48:00046c03	
					//	sra		t8, a2, 16		# 000bdc4c:0006c403	
					//	addiu		t7, zero, $0003		# 000bdc50:240f0003	t7=$00000003
					//	sw		t7, $0010(sp)		# 000bdc54:afaf0010	
					//	or		a2, t8, zero		# 000bdc58:03003025	
					//	or		a0, t5, zero		# 000bdc5c:01a02025	
					//	jal		$000dee5c		# 000bdc60:0c037b97	v FNC_000dee5c
					//	or		a1, t6, zero		# 000bdc64:01c02825	
					fnc000dee5c();
					//	sll		a0, s0, 16		# 000bdc68:00102400	
					//	sll		a1, s1, 16		# 000bdc6c:00112c00	
					//	sll		a2, s2, 16		# 000bdc70:00123400	
					//	sra		t2, a2, 16		# 000bdc74:00065403	
					//	sra		t1, a1, 16		# 000bdc78:00054c03	
					//	sra		t9, a0, 16		# 000bdc7c:0004cc03	
					//	addiu		t4, zero, $0003		# 000bdc80:240c0003	t4=$00000003
					//	sw		t4, $0010(sp)		# 000bdc84:afac0010	
					//	or		a0, t9, zero		# 000bdc88:03202025	
					//	or		a1, t1, zero		# 000bdc8c:01202825	
					//	or		a2, t2, zero		# 000bdc90:01403025	
					//	jal		$000dee5c		# 000bdc94:0c037b97	v FNC_000dee5c
					//	addiu		a3, zero, $0032		# 000bdc98:24070032	a3=$00000032
					fnc000dee5c();
					//	sll		a0, s0, 16		# 000bdc9c:00102400	
					//	sll		a1, s1, 16		# 000bdca0:00112c00	
					//	sll		a2, s2, 16		# 000bdca4:00123400	
					//	sra		t6, a2, 16		# 000bdca8:00067403	
					//	sra		t5, a1, 16		# 000bdcac:00056c03	
					//	sra		t3, a0, 16		# 000bdcb0:00045c03	
					//	addiu		t8, zero, $00c8		# 000bdcb4:241800c8	t8=$000000c8
					//	addiu		t7, zero, $00c8		# 000bdcb8:240f00c8	t7=$000000c8
					//	addiu		t9, zero, $00fa		# 000bdcbc:241900fa	t9=$000000fa
					//	sw		t9, $0018(sp)		# 000bdcc0:afb90018	
					//	sw		t7, $0014(sp)		# 000bdcc4:afaf0014	
					//	sw		t8, $0010(sp)		# 000bdcc8:afb80010	
					//	or		a0, t3, zero		# 000bdccc:01602025	
					//	or		a1, t5, zero		# 000bdcd0:01a02825	
					//	or		a2, t6, zero		# 000bdcd4:01c03025	
					//	jal		$000d05a8		# 000bdcd8:0c03416a	v FNC_000d05a8
					//	addiu		a3, zero, $01f4		# 000bdcdc:240701f4	a3=$000001f4
					fnc000d05a8();
				}
				
				//__000bdce0:					# 
				//	addiu		s3, s3, $0001		# 000bdce0:26730001	
			}
			//__000bdce4:					# 
			s3++;
			//	andi		s0, s3, $00ff		# 000bdce4:327000ff	
			//	slti		at, s0, $0010		# 000bdce8:2a010010	
			//	bne		at, zero, $000bdb50	# 000bdcec:1420ff98	^ __000bdb50
			//	or		s3, s0, zero		# 000bdcf0:02009825	
		} while((s3 & 0xff) < 0x10);
		//	lw		ra, $004c(sp)		# 000bdcf4:8fbf004c	
		//	lw		s0, $0028(sp)		# 000bdcf8:8fb00028	
		//	lw		s1, $002c(sp)		# 000bdcfc:8fb1002c	
		//	lw		s2, $0030(sp)		# 000bdd00:8fb20030	
		//	lw		s3, $0034(sp)		# 000bdd04:8fb30034	
		//	lw		s4, $0038(sp)		# 000bdd08:8fb40038	
		//	lw		s5, $003c(sp)		# 000bdd0c:8fb5003c	
		//	lw		s6, $0040(sp)		# 000bdd10:8fb60040	
		//	lw		s7, $0044(sp)		# 000bdd14:8fb70044	
		//	lw		fp, $0048(sp)		# 000bdd18:8fbe0048	
		//	jr		ra			# 000bdd1c:03e00008	
		//	addiu		sp, sp, $0050		# 000bdd20:27bd0050	
	}

	// RAM GREECE
	static void fnc000bdd24() {
	}

	// RAM GREECE
	static void fnc000bdda0() {
	}

	// RAM GREECE
	static void fnc000bddb4() {
	}

	// RAM GREECE
	static void fnc000bddcc() {
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		fnc000755e0();
		fnc0011bb94();
		fnc00087f08();
		N64.fnc00006dac();
		fnc00123ac4();
		fnc00123ac4();
		fnc000dfba8();
		N64.fnc00018d7c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000b84d0();
		N64.fnc000038e0();
		fnc000c541c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000b84d0();
		N64.fnc000038e0();
		fnc000c541c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000b84d0();
		fnc000df9c8();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000b99a8();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000b84d0();
		N64.fnc000038e0();
		fnc000df9c8();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000b84d0();
		fnc000d16bc();
	}

	// RAM GREECE
	static void fnc000be5c0() {
		fnc000b4050();
		N64.fnc00004a38();
		fnc000b0a10();
		fnc000b0a10();
		fnc000b0a10();
		N64.fnc00004a38();
		fnc000b0a10();
		fnc000b0a10();
		fnc000b0a10();
		N64.fnc00004a38();
		fnc000b0a10();
		fnc000b0a10();
		fnc000b0a10();
		N64.fnc000049d4();
		N64.fnc00004c24();
		fnc000b0a10();
		fnc000b0a10();
		fnc000b0a10();
		fnc000b4050();
		N64.fnc00004a38();
		fnc000b0a10();
		fnc000b0a10();
		fnc000b0a10();
		N64.fnc00004a38();
		fnc000b0a10();
		fnc000b0a10();
		fnc000b0a10();
		N64.fnc00004a38();
		fnc000b0a10();
		fnc000b0a10();
		fnc000b0a10();
		N64.fnc000049d4();
		N64.fnc00004c24();
		fnc000b0a10();
		fnc000b0a10();
		fnc000b0a10();
	}

	// RAM GREECE
	static void fnc000bece0() {
	}

	// RAM GREECE
	static void fnc000becf0() {
	}

	// RAM GREECE
	static void fnc000bed0c() {
	}

	// RAM GREECE
	static void fnc000bed24() {
	}

	// RAM GREECE
	static void fnc000bed30() {
		N64.coss();
		N64.coss();
		N64.fnc00004a38();
		N64.coss();
		N64.coss();
		N64.fnc00004a38();
		N64.fnc00004a38();
		N64.fnc000049d4();
		N64.fnc00004c24();
		fnc000b345c();
		fnc00137468();
	}

	// RAM GREECE
	static void fnc000c0678() {
		N64.fnc000038e0();
		N64.fnc000049d4();
		fnc000b345c();
		N64.fnc000038e0();
		fnc00136ecc();
		N64.fnc00014a3c();
		N64.fnc00014a3c();
		N64.fnc00014a3c();
		N64.fnc00004948();
		fnc000b345c();
		N64.fnc000074bc();
	}

	// RAM GREECE
	static void fnc000c0d1c() {
		N64.sqrtf();
		N64.fnc00007410();
	}

	/// Possible file boundary

	// RAM GREECE
	static void fnc000c0e80() {
	}

	// RAM GREECE
	static void fnc000c0f14() {
	}

	// RAM GREECE
	static void fnc000c0f84() {
	}

	// RAM GREECE
	static void fnc000c0fac() {
	}

	// RAM GREECE
	static void fnc000c0fd4() {
		fnc000c0fac();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000c1024() {
		fnc000c0fd4();
		fnc000c0f84();
	}

	// RAM GREECE
	static void fnc000c1090() {
	}

	// RAM GREECE
	static void fnc000c10c0() {
	}

	// RAM GREECE
	static void fnc000c10f4() {
	}

	// RAM GREECE
	static void fnc000c1128() {
	}

	// RAM GREECE
	static void fnc000c1150() {
		N64.fnc00028048();
		fnc000c0e80();
		fnc000c0e80();
		fnc000c0f14();
		fnc000c1024();
	}

	// RAM GREECE
	static void fnc000c1268() {
	}

	// RAM GREECE
	static void fnc000c1288() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000c1384() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000c1418() {
		N64.fnc0001cc6c();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000c14d4() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		fnc000c1288();
	}

	// RAM GREECE
	static void fnc000c1598() {
		fnc000c14d4();
	}

	// RAM GREECE
	static void fnc000c15c0() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000c17b4() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		fnc000c15c0();
	}

	// RAM GREECE
	static void fnc000c18d0() {
		fnc000c17b4();
	}

	// RAM GREECE
	static void fnc000c18fc() {
		fnc000c17b4();
		fnc000c17b4();
		fnc000c1a4c();
		fnc000c17b4();
		fnc000c1a4c();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000c19d4() {
		fnc000c17b4();
		fnc000c17b4();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000c1a4c() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000c1d40() {
		fnc000c1a4c();
		fnc000c1a4c();
		fnc000c1a4c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000c1e24() {
		fnc000c1a4c();
		fnc000c1a4c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000c1ecc() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000c18d0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc00137368();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc00137368();
	}

	// RAM GREECE
	static void fnc000c21f0() {
		fnc000c1598();
		fnc000c1ecc();
	}

	// RAM GREECE
	static void fnc000c2274() {
		fnc000c21f0();
	}

	// RAM GREECE
	static void fnc000c22ec() {
		N64.fnc0001cc6c();
		fnc000c1418();
		fnc000c1384();
		fnc000c2554();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000c2554() {
		N64.fnc0001cc6c();
		fnc000c1418();
		fnc000c1384();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000c25f8() {
		fnc000c1090();
		fnc000db350();
		fnc000db350();
	}

	// RAM GREECE
	static void fnc000c2b90() {
		fnc000c17b4();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000c2d50() {
		fnc000c1598();
		fnc000c18d0();
		fnc000c1384();
		N64.fnc0001cc6c();
		N64.fnc000038e0();
		fnc000c2b90();
	}

	// RAM GREECE
	static void fnc000c2ee4() {
		fnc000c1384();
		fnc000c1418();
		fnc000c1384();
		fnc000c1418();
		fnc000c1384();
		fnc000c1a4c();
		fnc000c1a4c();
		fnc000c2b90();
	}

	// RAM GREECE
	static void fnc000c31ac() {
		N64.fnc0001cc6c();
		fnc00137368();
	}

	// RAM GREECE
	static void fnc000c3288() {
		N64.fnc0001cc6c();
		fnc000c1418();
		fnc000c1384();
	}

	// RAM GREECE
	static void fnc000c3300() {
		fnc000b93ac();
		N64.sqrtf();
		fnc000dc5b8();
		fnc000c1128();
		fnc000c1128();
		fnc000c10f4();
		fnc000c10f4();
		fnc000c10f4();
		fnc000c10c0();
		fnc000c10c0();
		fnc000c10c0();
		fnc000c10c0();
		fnc000c10f4();
		fnc000dc18c();
	}

	// RAM GREECE
	static void fnc000c3bd8() {
		fnc000c19d4();
	}

	// RAM GREECE
	static void fnc000c3d88() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000c3e2c() {
		fnc000c1418();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ddb60();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ddd90();
		fnc00137368();
		fnc000c1e24();
	}

	// RAM GREECE
	static void fnc000c4274() {
		fnc000b93ac();
		fnc000c1128();
		fnc000c1128();
	}

	// RAM GREECE
	static void fnc000c4900() {
		fnc000c1e24();
	}

	// RAM GREECE
	static void fnc000c4938() {
		N64.fnc000038e0();
		fnc000c17b4();
		N64.fnc000038e0();
		fnc001372b4();
	}

	// RAM GREECE
	static void fnc000c4a64() {
	}

	// RAM GREECE
	static void fnc000c4a84() {
	}

	// RAM GREECE
	static void fnc000c4a98() {
	}

	// RAM GREECE
	static void fnc000c4aa0() {
		fnc000c1418();
		fnc000c1a4c();
		fnc000c4a64();
		fnc000c4a64();
		fnc000c4a64();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000c4cb8() {
		fnc000db714();
		fnc000dba9c();
	}

	// RAM GREECE
	static void fnc000c4f48() {
		fnc000c17b4();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000c1024();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000c541c() {
		fnc000b93ac();
		fnc000c14d4();
		fnc000c17b4();
		N64.fnc0001cc6c();
		fnc000c1384();
		fnc000c1024();
		fnc000c4f48();
	}

	// RAM GREECE
	static void fnc000c56a4() {
		fnc000b93ac();
		fnc000c14d4();
		fnc000c17b4();
		N64.fnc0001cc6c();
		fnc000c1384();
		fnc000c4f48();
	}

	// RAM GREECE
	static void fnc000c5894() {
		fnc000c1418();
		fnc000c1384();
		fnc000c1418();
		fnc000c1384();
		fnc000c1418();
		fnc000c1384();
		fnc000c1a4c();
		fnc000b84d0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000c5d14() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000c613c() {
		fnc000c18fc();
		fnc000dfa98();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000c6558() {
		fnc000c1418();
		fnc000c1d40();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000c6d80() {
		fnc000b93ac();
		N64.sqrtf();
		N64.fnc00003824();
		N64.fnc00003824();
		N64.fnc000039d0();
		N64.fnc000039d0();
		fnc000b2354();
	}

	// RAM GREECE
	static void fnc000c7924() {
		N64.fnc0001cc6c();
		fnc000c18fc();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000c1024();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000c8c7c();
		N64.fnc000038e0();
		fnc000c8c7c();
	}

	// RAM GREECE
	static void fnc000c7e18() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000c7924();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000c8184();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000c820c();
	}

	// RAM GREECE
	static void fnc000c80f0() {
	}

	// RAM GREECE
	static void fnc000c8184() {
	}

	// RAM GREECE
	static void fnc000c820c() {
	}

	// RAM GREECE
	static void fnc000c8294() {
		fnc000c1418();
		fnc00137368();
		fnc000b84d0();
		fnc000c8e10();
		fnc000dea08();
		fnc001371b8();
		fnc000e0e9c();
		fnc000c1d40();
		N64.fnc0000726c();
		N64.fnc0000726c();
		fnc000b84d0();
		fnc000ca5ec();
		fnc000df9c8();
		fnc000b84d0();
		fnc000ca5ec();
		fnc00137130();
		fnc00137130();
		fnc000df038();
		fnc000df038();
		fnc000c1d40();
	}

	// RAM GREECE
	static void fnc000c8814() {
		fnc000b93ac();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000c8c7c() {
		fnc000c14d4();
		fnc000c17b4();
		fnc000c1384();
	}

	// RAM GREECE
	static void fnc000c8e10() {
		N64.fnc000038e0();
		fnc000c17b4();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000c8f5c() {
		fnc000c1418();
		fnc000c1384();
		fnc000c1a4c();
		fnc000c1a4c();
		fnc000c1384();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000c927c() {
		fnc000db350();
	}

	// RAM GREECE
	static void fnc000c9530() {
		fnc000c17b4();
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc000c9668() {
		fnc000c1418();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000c978c() {
		fnc000703b0();
		fnc000b93ac();
		fnc000b84d0();
		fnc000b84d0();
		fnc000b84d0();
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc000ca1b0() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000c17b4();
		N64.fnc000038e0();
		fnc000c1024();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000c1024();
	}

	// RAM GREECE
	static void fnc000ca5ec() {
		fnc000b93ac();
		fnc000c14d4();
		fnc000c19d4();
		N64.fnc0001cc6c();
		fnc000c1384();
	}

	// RAM GREECE
	static void fnc000ca848() {
		fnc000def2c();
		fnc000c9530();
		fnc000c1418();
		fnc000c1384();
		fnc000c1a4c();
		fnc000b84d0();
		fnc000c9530();
		fnc000c1418();
		fnc000c1384();
		fnc000c1a4c();
		N64.fnc000038e0();
		fnc000ca1b0();
		fnc000c1418();
		fnc000c1384();
		fnc00137368();
	}

	// RAM GREECE
	static void fnc000cabc8() {
	}

	// RAM GREECE
	static void fnc000cb19c() {
		fnc000c17b4();
	}

	// RAM GREECE
	static void fnc000cb23c() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000cb394() {
		fnc000c1418();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000cb4f8() {
		fnc000b93ac();
		fnc000b84d0();
		fnc000dafcc();
		fnc000db350();
		fnc000db350();
	}

	// RAM GREECE
	static void fnc000cbd1c() {
		fnc000c541c();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000cbde0() {
		fnc000c17b4();
	}

	// RAM GREECE
	static void fnc000cbe98() {
		fnc000c1418();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000cc090() {
		fnc000b99a8();
	}

	// RAM GREECE
	static void fnc000cc7b0() {
		fnc000c17b4();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000c541c();
	}

	// RAM GREECE
	static void fnc000ccad4() {
		N64.fnc000038e0();
		fnc000cc7b0();
	}

	// RAM GREECE
	static void fnc000ccb60() {
		fnc000c1418();
		fnc000c1a4c();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000ccd54() {
		fnc000c1024();
		fnc000db350();
	}

	// RAM GREECE
	static void fnc000cd0b0() {
		fnc000c17b4();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000cd1f8() {
		fnc000c14d4();
		fnc000c17b4();
		N64.fnc0001cc6c();
		fnc000c1384();
	}

	// RAM GREECE
	static void fnc000cd2e8() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000cd390() {
		fnc000c1418();
		fnc000c1384();
	}

	// RAM GREECE
	static void fnc000cd42c() {
		fnc000c1418();
		fnc000c1384();
		fnc000c1418();
		fnc000c1384();
		fnc000c1a4c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000b84d0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000cd0b0();
	}

	// RAM GREECE
	static void fnc000cd7fc() {
		fnc000db350();
	}

	// RAM GREECE
	static void fnc000cda98() {
		fnc000c17b4();
		fnc000ddb60();
	}

	// RAM GREECE
	static void fnc000cdb40() {
		fnc000c17b4();
		fnc000ddb60();
	}

	// RAM GREECE
	static void fnc000cdbf4() {
		fnc000c1418();
		fnc00124170();
		fnc000dfba8();
		fnc000ddf18();
		fnc000c1a4c();
		fnc001371b8();
	}

	// RAM GREECE
	static void fnc000cdd7c() {
		fnc000ddf18();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000cdde4() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ce040() {
		fnc000c1598();
		fnc000c18d0();
		N64.fnc0001cc6c();
		fnc000c1384();
	}

	// RAM GREECE
	static void fnc000ce100() {
		fnc000c17b4();
	}

	// RAM GREECE
	static void fnc000ce1c0() {
		fnc000c1418();
		fnc000c1384();
		fnc00137368();
		fnc0011d260();
		fnc000f9d60();
		N64.fnc000038e0();
		fnc000e049c();
		fnc000c1418();
		fnc000c1384();
		fnc000c1a4c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ddb60();
		fnc000daa1c();
		N64.fnc000038e0();
		fnc000c9530();
		fnc000c1418();
		fnc000c1384();
		fnc000c1a4c();
		N64.fnc000038e0();
		fnc000c9530();
		fnc000c1418();
		fnc000c1384();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000ce6e8() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000cee00() {
		fnc000b93ac();
		fnc000c17b4();
	}

	// RAM GREECE
	static void fnc000cf070() {
		fnc000c1418();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000cf174() {
		fnc000db350();
	}

	// RAM GREECE
	static void fnc000cf2e0() {
		fnc000b93ac();
		fnc000c1128();
		fnc000c1128();
		fnc000c10f4();
		fnc000c10c0();
		fnc000cf174();
		fnc000cf174();
		fnc000cf174();
		fnc000cf174();
		fnc000cf174();
		fnc000cf174();
		fnc000cf174();
		fnc000cf174();
		fnc000cf174();
		fnc000cf174();
	}

	// RAM GREECE
	static void fnc000cf80c() {
		fnc000c17b4();
		fnc001372b4();
		fnc001372b4();
		fnc000cbde0();
	}

	// RAM GREECE
	static void fnc000cf948() {
		fnc000c1418();
		fnc000c1a4c();
		N64.sqrtf();
		N64.fnc00003824();
		fnc00102ddc();
		fnc00088760();
	}

	// RAM GREECE
	static void fnc000cfd84() {
		fnc000b93ac();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000d05a8() {
		fnc000d0614();
	}

	// RAM GREECE
	static void fnc000d0614() {
		fnc000b93ac();
		fnc000c17b4();
		fnc001371b8();
		fnc000ddb60();
		fnc000dde90();
		N64.fnc000038e0();
		fnc00135d44();
		fnc00135d44();
		fnc00135d44();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000c1024();
		N64.fnc000038e0();
		fnc000d16bc();
	}

	// RAM GREECE
	static void fnc000d0c00() {
		fnc000c1418();
		fnc000c1a4c();
		fnc000dde54();
	}

	// RAM GREECE
	static void fnc000d0de4() {
		fnc000b93ac();
		fnc000c17b4();
		fnc000ddb60();
		fnc000dde90();
		fnc000dde54();
	}

	// RAM GREECE
	static void fnc000d0f5c() {
		fnc000ddd30();
	}

	// RAM GREECE
	static void fnc000d0fe0() {
		fnc000ddde4();
	}

	// RAM GREECE
	static void fnc000d1054() {
		fnc000dde90();
		fnc000dde54();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000d10d0() {
		fnc000b93ac();
		N64.sqrtf();
		N64.fnc00003824();
		N64.fnc00003824();
		N64.fnc000039d0();
		fnc000b2354();
	}

	// RAM GREECE
	static void fnc000d16bc() {
		fnc000c1598();
		N64.sqrtf();
		fnc000c18d0();
		N64.fnc0001cc6c();
		fnc000c1418();
		fnc000c1384();
	}

	// RAM GREECE
	static void fnc000d19dc() {
	}

	// RAM GREECE
	static void fnc000d1a1c() {
		fnc000c1418();
		fnc000c1384();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000d1a94() {
		fnc000c1418();
		fnc000c1384();
		fnc000c1418();
		fnc000c1384();
		fnc000b1a68();
		fnc00137368();
	}

	// RAM GREECE
	static void fnc000d1c24() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000d249c() {
		fnc000c19d4();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000d25a4() {
	}

	// RAM GREECE
	static void fnc000d25d0() {
		fnc000c1418();
		fnc00124118();
		fnc00124118();
		fnc00137368();
		fnc001371b8();
		fnc001371b8();
		fnc00135d44();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ddb60();
	}

	// RAM GREECE
	static void fnc000d2ab0() {
	}

	// RAM GREECE
	static void fnc000d2ecc() {
		fnc000b93ac();
		fnc000d2ab0();
		fnc000d2ab0();
		fnc000d2ab0();
		fnc000d2ab0();
		fnc000d2ab0();
		fnc000d2ab0();
		fnc000d2ab0();
		fnc000d2ab0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000b2354();
	}

	// RAM GREECE
	static void fnc000d3614() {
		fnc000c1e24();
	}

	// RAM GREECE
	static void fnc000d36ec() {
		fnc000c1418();
		fnc000b93ac();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ddb60();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000c7924();
	}

	// RAM GREECE
	static void fnc000d3c88() {
		fnc000c17b4();
		fnc000ddb60();
	}

	// RAM GREECE
	static void fnc000d3d40() {
		fnc000c1418();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000d3e3c() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000d45b4() {
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		fnc000d3e3c();
		fnc000d3e3c();
		fnc000d3e3c();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		fnc000d3e3c();
		fnc000d3e3c();
	}

	// RAM GREECE
	static void fnc000d49cc() {
		fnc000c17b4();
		fnc000ddb60();
	}

	// RAM GREECE
	static void fnc000d4a78() {
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000d4ab0() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000d4b44() {
		fnc000c1418();
		fnc00137368();
	}

	// RAM GREECE
	static void fnc000d4c10() {
		N64.sqrtf();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		fnc000c1024();
		fnc000c1024();
		fnc000c1128();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000d5424() {
		fnc000c19d4();
		fnc000d5fd4();
		fnc000d5fd4();
		fnc000d5fd4();
	}

	// RAM GREECE
	static void fnc000d5588() {
		fnc000c1e24();
	}

	// RAM GREECE
	static void fnc000d55c0() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000d5684() {
		fnc000c1418();
		fnc00137368();
	}

	// RAM GREECE
	static void fnc000d5760() {
		N64.sins();
		N64.coss();
		N64.coss();
		N64.sins();
		fnc000d6084();
		fnc000d6084();
		fnc000d6084();
		fnc000db350();
	}

	// RAM GREECE
	static void fnc000d5af4() {
		N64.fnc000038e0();
		N64.fnc00003740();
		N64.fnc00003740();
		N64.fnc00003740();
		N64.fnc00003740();
		N64.fnc0001cc6c();
		fnc000d5760();
		fnc000d5760();
		fnc000d5760();
	}

	// RAM GREECE
	static void fnc000d5fd4() {
		fnc000c14d4();
		fnc000d6084();
		fnc000d6084();
	}

	// RAM GREECE
	static void fnc000d6084() {
		fnc000c17b4();
	}

	// RAM GREECE
	static void fnc000d6140() {
		fnc000c1418();
		fnc000c1384();
		fnc000c1a4c();
		fnc000c1418();
		fnc000c1384();
	}

	// RAM GREECE
	static void fnc000d6290() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000d6a84() {
	}

	// RAM GREECE
	static void fnc000d6adc() {
		N64.fnc0001cc6c();
		fnc000c14d4();
		fnc000c17b4();
		fnc000c1384();
		fnc000d6a84();
		fnc000d6a84();
		fnc000d6a84();
		fnc000d6a84();
		fnc000d6a84();
		N64.fnc00014a3c();
		fnc00135d08();
	}

	// RAM GREECE
	static void fnc000d6c18() {
	}

	// RAM GREECE
	static void fnc000d6c98() {
	}

	// RAM GREECE
	static void fnc000d6eac() {
		fnc000c1418();
		fnc000c1384();
		fnc000c1a4c();
		fnc000c1384();
		fnc000d6c18();
		fnc000d6c18();
		fnc000d6c18();
		fnc000d6c18();
		fnc000d6c18();
		fnc00135d08();
		N64.fnc00014a3c();
	}

	// RAM GREECE
	static void fnc000d702c() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000d7284() {
		fnc000b93ac();
		fnc000d702c();
		fnc000d702c();
		fnc000d702c();
		fnc000d702c();
		fnc000d702c();
		fnc000b2354();
		fnc000b2354();
		N64.sqrtf();
		fnc000e35e0();
	}

	// RAM GREECE
	static void fnc000d7624() {
		fnc000c17b4();
	}

	// RAM GREECE
	static void fnc000d76a8() {
		N64.fnc0001cc6c();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000d76f4() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000d7790() {
		fnc000c1418();
		fnc00137368();
	}

	// RAM GREECE
	static void fnc000d7870() {
	}

	// RAM GREECE
	static void fnc000d7ef8() {
		fnc000c17b4();
		fnc000c2274();
	}

	// RAM GREECE
	static void fnc000d7fb4() {
		N64.fnc0001cc6c();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000d8000() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000d80b4() {
		fnc000c1418();
		fnc000c1ecc();
		fnc00137368();
	}

	// RAM GREECE
	static void fnc000d8190() {
		N64.fnc000038e0();
		fnc000c1024();
		fnc000c1128();
	}

	// RAM GREECE
	static void fnc000d8fa0() {
		fnc000c17b4();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc001372b4();
	}

	// RAM GREECE
	static void fnc000d90a4() {
		fnc000c1418();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000c1a4c();
	}

	// RAM GREECE
	static void fnc000d9294() {
		fnc000db350();
	}

	// RAM GREECE
	static void fnc000d951c() {
		fnc000c19d4();
	}

	// RAM GREECE
	static void fnc000d95d0() {
		fnc000c1418();
		fnc000c1e24();
	}

	// RAM GREECE
	static void fnc000d96b4() {
	}

	// RAM GREECE
	static void fnc000d9704() {
	}

	// RAM GREECE
	static void fnc000d9754() {
		fnc000c1e24();
	}

	// RAM GREECE
	static void fnc000d978c() {
		fnc000b93ac();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000d99f4() {
		N64.fnc0001cc6c();
		fnc000c19d4();
	}

	// RAM GREECE
	static void fnc000d9a8c() {
	}

	// RAM GREECE
	static void fnc000d9ad4() {
	}

	// RAM GREECE
	static void fnc000d9b14() {
	}

	// RAM GREECE
	static void fnc000d9b54() {
		fnc000c1418();
		fnc000c1e24();
	}

	// RAM GREECE
	static void fnc000d9c60() {
		fnc000c1e24();
	}

	// RAM GREECE
	static void fnc000d9c98() {
		N64.sins();
		fnc000dee5c();
		N64.fnc000038e0();
		fnc000ddd90();
		fnc00135d44();
	}

	// RAM GREECE
	static void fnc000d9dd8() {
		fnc000d99f4();
		N64.fnc000153d8();
	}

	// RAM GREECE
	static void fnc000d9e38() {
		fnc000dee5c();
		N64.fnc000038e0();
		fnc000ddd90();
		fnc00135d44();
	}

	// RAM GREECE
	static void fnc000d9f60() {
		fnc000d99f4();
		N64.fnc000153d8();
		fnc000d9a8c();
	}

	// RAM GREECE
	static void fnc000d9ff8() {
		fnc000d9704();
		fnc000d96b4();
		fnc000d0f5c();
		N64.sins();
		fnc000d0fe0();
		fnc000d1054();
		fnc000dfba8();
		fnc00124170();
	}

	// RAM GREECE
	static void fnc000da260() {
		fnc000d99f4();
		fnc000d951c();
		fnc000d9c60();
		fnc000d9a8c();
		fnc000d0de4();
		fnc000d9c60();
		fnc000d9754();
		fnc000d9a8c();
	}

	// RAM GREECE
	static void fnc000da3a8() {
		fnc000e52e8();
	}

	// RAM GREECE
	static void fnc000da450() {
		fnc000d99f4();
		fnc000d9a8c();
		fnc000d9a8c();
		fnc000d9a8c();
		fnc000d9ad4();
	}

	// RAM GREECE
	static void fnc000da510() {
		fnc000c1024();
		fnc000d16bc();
		fnc000d19dc();
	}

	// RAM GREECE
	static void fnc000da6f0() {
		fnc000d99f4();
		fnc000d9a8c();
		fnc000d9a8c();
		fnc000d9a8c();
		fnc000d9a8c();
		fnc000d9a8c();
	}

	// RAM GREECE
	static void fnc000da7cc() {
		fnc000ddd30();
		fnc000ddde4();
		fnc000c541c();
		fnc000c541c();
	}

	// RAM GREECE
	static void fnc000da994() {
		fnc000d99f4();
		fnc000ddb60();
		fnc000d9a8c();
	}

	// RAM GREECE
	static void fnc000daa1c() {
		fnc000c1e24();
	}

	// RAM GREECE
	static void fnc000dabbc() {
		fnc000c5894();
		fnc000c22ec();
		fnc000c2ee4();
		fnc000c8f5c();
		fnc000ca848();
		fnc000cd42c();
		fnc000ce1c0();
		fnc000d1a94();
		fnc000d6140();
		fnc000d6eac();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		fnc000c3e2c();
		fnc000c4aa0();
		fnc000c6558();
		fnc000c8294();
		fnc000c9668();
		fnc000cb394();
		fnc000cbe98();
		fnc000ccb60();
		fnc000cdbf4();
		fnc000cf070();
		fnc000cf948();
		fnc000d0c00();
		fnc000d25d0();
		fnc000d36ec();
		fnc000d3d40();
		fnc000d4b44();
		fnc000d5684();
		fnc000d7790();
		fnc000d80b4();
		fnc000d90a4();
		fnc000d95d0();
		fnc000d9b54();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000daf24() {
		N64.fnc000038e0();
		fnc000ca1b0();
	}

	// RAM GREECE
	static void fnc000dafcc() {
	}

	// RAM GREECE
	static void fnc000db350() {
	}

	// RAM GREECE
	static void fnc000db714() {
	}

	// RAM GREECE
	static void fnc000dba9c() {
	}

	// RAM GREECE
	static void fnc000dbe20() {
		N64.sqrtf();
		N64.sqrtf();
		N64.sqrtf();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000dc18c() {
	}

	// RAM GREECE
	static void fnc000dc5b8() {
		fnc000c1024();
		fnc000c0fd4();
		fnc000c1024();
		fnc000c1090();
		N64.fnc00003680();
		N64.fnc00003680();
		N64.fnc00003680();
		fnc000c1128();
		fnc000c10c0();
		fnc000c1128();
		fnc000db350();
		fnc000db350();
		fnc000db350();
	}

	// RAM GREECE
	/// DrawNonZBufferedEffects ?
	static void fnc000dd5e0() {
		fnc000c978c();
	}

	// RAM GREECE
	static void fnc000dd604() {
		fnc000c8814();
		fnc000cdde4();
		fnc000dbe20();
		fnc000e7660();
		fnc000de2e8();
		fnc000cb4f8();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		fnc000c3300();
		fnc000c25f8();
		fnc000c5d14();
		fnc000c927c();
		fnc000cabc8();
		fnc000cd7fc();
		fnc000ce6e8();
		fnc000d1c24();
		fnc000d6290();
		fnc000d7284();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		fnc000c4274();
		fnc000c4cb8();
		fnc000cc090();
		fnc000ccd54();
		fnc000cf2e0();
		fnc000d2ecc();
		fnc000d45b4();
		fnc000d4c10();
		fnc000d5af4();
		fnc000d7870();
		fnc000d8190();
		fnc000d9294();
		fnc000d978c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0000726c();
		fnc000e2ed4();
		fnc000e32c4();
		fnc000c6d80();
		fnc000d10d0();
		fnc000e360c();
	}

	// RAM GREECE
	static void fnc000ddb18() {
	}

	// RAM GREECE
	static void fnc000ddb60() {
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000ddd30() {
	}

	// RAM GREECE
	static void fnc000ddd90() {
	}

	// RAM GREECE
	static void fnc000ddde4() {
	}

	// RAM GREECE
	static void fnc000dde1c() {
	}

	// RAM GREECE
	static void fnc000dde54() {
	}

	// RAM GREECE
	static void fnc000dde90() {
	}

	// RAM GREECE
	static void fnc000ddee0() {
	}

	// RAM GREECE
	static void fnc000ddf18() {
	}

	// RAM GREECE
	static void fnc000ddf78() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000de150() {
		fnc000ddf18();
		fnc000ddf18();
	}

	// RAM GREECE
	static void fnc000de2e8() {
		fnc000b9228();
		fnc000db350();
		fnc000dafcc();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000de9b8() {
		fnc000ddb60();
	}

	// RAM GREECE
	static void fnc000dea08() {
		fnc000ddb60();
	}

	// RAM GREECE
	static void fnc000deadc() {
		N64.fnc000038e0();
		fnc000ddb60();
	}

	// RAM GREECE
	static void fnc000deb7c() {
		N64.sins();
		N64.coss();
		N64.fnc000038e0();
		N64.coss();
		N64.sins();
		N64.fnc000038e0();
		fnc000ddb60();
	}

	// RAM GREECE
	// Gets called when making some effects, eg explosions
	static void fnc000dee5c() {
		fnc000ddb60();
		fnc000dde54();
		fnc000dde90();
	}

	// RAM GREECE
	static void fnc000deed0() {
		fnc000ddb60();
		fnc000dde1c();
	}

	// RAM GREECE
	static void fnc000def2c() {
		fnc000ddb60();
		fnc000dde1c();
		fnc000ddee0();
	}

	// RAM GREECE
	static void fnc000df038() {
		N64.fnc000038e0();
		fnc000b93ac();
		fnc000c613c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000d8fa0();
		fnc000c613c();
		fnc00135d44();
		fnc00135d44();
		fnc00135d44();
		fnc000dee5c();
		fnc00137234();
		fnc000ddb60();
		fnc000dde1c();
		fnc000ddb60();
		fnc000dde1c();
		fnc000ddee0();
		fnc000c541c();
		fnc00137234();
		fnc00137234();
		fnc00137234();
		N64.fnc000038e0();
		fnc000c7924();
		fnc000dea08();
		fnc000dea08();
	}

	// RAM GREECE
	static void fnc000df848() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000df038();
	}

	// RAM GREECE
	static void fnc000df9c8() {
		fnc000df038();
	}

	// RAM GREECE
	static void fnc000dfa34() {
		fnc000df848();
	}

	// RAM GREECE
	static void fnc000dfa98() {
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000dfba8() {
		fnc000df038();
		fnc00135d44();
		fnc000dfa98();
		fnc001371b8();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000df9c8();
	}

	// RAM GREECE
	static void fnc000dfe68() {
		fnc000dea08();
	}

	// RAM GREECE
	static void fnc000dfee4() {
		fnc000dea08();
		N64.fnc000038e0();
		fnc000c541c();
	}

	// RAM GREECE
	static void fnc000dffc4() {
		fnc000dea08();
		N64.fnc000038e0();
		fnc000ca5ec();
	}

	// RAM GREECE
	static void fnc000e00f4() {
	}

	// RAM 000e0134
	static void guess_initSpecialEffects() {
		N64.fnc0001cc6c();
		fnc000a1764();
		fnc000e2668();
		fnc000ddb18();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc000e00f4();
		fnc001184e4();
		fnc001184e4();
		fnc000e552c();
	}

	// RAM 000e03fc
	static void debug_printSpecialEffectsInfo() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000e049c() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
	}

	// RAM GREECE
	static void fnc000e05b4() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
	}

	// RAM GREECE
	static void fnc000e0764() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
	}

	// RAM GREECE
	static void fnc000e093c() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
	}

	// RAM GREECE
	static void fnc000e0ae0() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
	}

	// RAM GREECE
	static void fnc000e0c8c() {
		N64.fnc000038e0();
		fnc000ca5ec();
	}

	// RAM GREECE
	static void fnc000e0d28() {
		fnc000daf24();
		fnc000ca5ec();
	}

	// RAM GREECE
	static void fnc000e0e9c() {
		fnc000ddb60();
		fnc000def2c();
		fnc001372b4();
	}

	// RAM GREECE
	static void fnc000e0f4c() {
		fnc00137234();
		fnc00137234();
		fnc00137234();
		fnc000dfe68();
		fnc000dfee4();
		fnc000ddb60();
		fnc000def2c();
		fnc000c4938();
		N64.fnc000038e0();
		fnc000c541c();
		fnc000c4938();
		N64.fnc000038e0();
		fnc000c541c();
		fnc000dffc4();
		N64.fnc000038e0();
		fnc000df038();
		fnc000ddb60();
		fnc000def2c();
		N64.fnc000038e0();
		fnc000df038();
		N64.fnc000038e0();
		fnc000df038();
		fnc000c4938();
		N64.fnc000038e0();
		fnc000df038();
		fnc000c4938();
		fnc000dffc4();
		N64.fnc000038e0();
		fnc000df9c8();
		fnc000ddb60();
		fnc000def2c();
		N64.fnc000038e0();
		fnc000df9c8();
		N64.fnc000038e0();
		fnc000df9c8();
		fnc000c4938();
		N64.fnc000038e0();
		fnc000df9c8();
		fnc000c4938();
		fnc000dffc4();
		fnc000e0e9c();
		fnc000df038();
		fnc000df038();
		fnc000ddb60();
		N64.fnc0001cc6c();
		N64.fnc000038e0();
		fnc000c3bd8();
	}

	// RAM GREECE
	static void fnc000e1c10() {
		fnc000dabbc();
		fnc000de150();
	}

	// RAM GREECE
	static void fnc000e1d48() {
		N64.fnc000038e0();
		fnc000deb7c();
		fnc000deb7c();
	}

	// RAM GREECE
	static void fnc000e1f70() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000deed0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000deed0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000deed0();
	}

	// RAM GREECE
	static void fnc000e24b8() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000deed0();
	}

	// RAM GREECE
	static void fnc000e2668() {
	}

	// RAM GREECE
	static void fnc000e26fc() {
	}

	// RAM GREECE
	static void fnc000e2720() {
	}

	// RAM GREECE
	static void fnc000e2750() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000e2830() {
		fnc000e2750();
		N64.fnc00003824();
		N64.sins();
		fnc000e2750();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000e2db4() {
	}

	// RAM GREECE
	static void fnc000e2ed4() {
		fnc000e2db4();
	}

	// RAM GREECE
	static void fnc000e32c4() {
		fnc000e2db4();
	}

	// RAM GREECE
	static void fnc000e35e0() {
	}

	// RAM GREECE
	static void fnc000e360c() {
	}

	// RAM GREECE
	static void fnc000e3738() {
	}

	// RAM GREECE
	static void fnc000e3808() {
	}

	// RAM GREECE
	static void fnc000e3898() {
	}

	// RAM GREECE
	static void fnc000e3928() {
		N64.fnc00003824();
		fnc00135d44();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
	}

	// RAM GREECE
	static void fnc000e4cec() {
		fnc00128504();
		fnc00126268();
		fnc000b325c();
		fnc000e0e9c();
		fnc000dea08();
		fnc000dea08();
		fnc000c541c();
		fnc000e3928();
		N64.fnc000039d0();
	}

	// RAM 000e5044
	static void displayLasers() {
		fnc000e3928();
		fnc000e4cec();
	}

	// RAM GREECE
	static void fnc000e520c() {
	}

	// RAM GREECE
	static void fnc000e52e8() {
		fnc000b1a68();
	}

	// RAM GREECE
	static void fnc000e5450() {
	}

	// RAM GREECE
	static void fnc000e5520() {
	}

	// RAM GREECE
	static void fnc000e552c() {
	}

	// RAM GREECE
	static void fnc000e5538() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000e5b78() {
	}

	// RAM GREECE
	/// Allocate shield (wtf is a shield?)
	static void fnc000e5cf4() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	/// Remove shield (wtf is a shield?)
	static void fnc000e5e3c() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000e6028() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000e60cc() {
	}

	// RAM GREECE
	static void fnc000e6138() {
	}

	// RAM GREECE
	static void fnc000e614c() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000b84d0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.coss();
		N64.sins();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc000e64b4() {
		fnc000b84d0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.coss();
		N64.sins();
		N64.fnc000047fc();
		N64.fnc000047fc();
		N64.fnc000038e0();
		N64.coss();
		N64.fnc000038e0();
		N64.sins();
		N64.fnc000038e0();
		fnc000e614c();
	}

	// RAM GREECE
	static void fnc000e6a38() {
		N64.fnc00003824();
		N64.coss();
		N64.sins();
	}

	// RAM 000e71f8
	static void displayFXUnderWater() {
	}

	// RAM 000e7234
	/// Ripples, splashes etc
	static void displayFXOnWater() {
		fnc000dd604();
		fnc000e6a38();
		fnc000cfd84();
		fnc000e5538();
	}

	// RAM GREECE
	static void fnc000e72a0() {
		N64.fnc0000726c();
		fnc000e2830();
		fnc000e2830();
		fnc000e1c10();
		fnc000e64b4();
		fnc000e5b78();
		fnc000e520c();
	}

	// RAM GREECE
	static void fnc000e7338() {
		N64.fnc000038e0();
		fnc000b84d0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000df038();
	}

	// RAM GREECE
	static void fnc000e74dc() {
	}

	// RAM GREECE
	static void fnc000e75a0() {
		fnc000b84d0();
		fnc000deadc();
		fnc000c9530();
	}

	// RAM GREECE
	static void fnc000e7660() {
	}

	// RAM GREECE
	static void fnc000e77b4() {
	}

	// RAM GREECE
	static void fnc000e7894() {
		fnc000e7660();
		N64.fnc000038e0();
		fnc000db350();
		fnc000e77b4();
	}

	/// Possible file boundary

	// RAM GREECE
	static void fnc000e7aa0() {
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc000e7b20(int a0, short a1) {
	}

	// RAM GREECE
	static void fnc000e7bc4()
	{
		//	lui		v0, $8005		# 000e7bc4:3c028005	v0=$80050000
		//	lw		v0, $2b34(v0)		# 000e7bc8:8c422b34	v0=$80052b34
		//	lui		at, $8015		# 000e7bcc:3c018015	at=$80150000
		//	lui		t4, $8004		# 000e7bd0:3c0c8004	t4=$80040000
		//	lh		t6, $0000(v0)		# 000e7bd4:844e0000	t6=$8004dcd0
		//	lh		t4, $7710(t4)		# 000e7bd8:858c7710	t4=$80047710
		//	lui		t5, $8004		# 000e7bdc:3c0d8004	t5=$80040000
		//	sra		t7, t6, 2		# 000e7be0:000e7883	
		//	sh		t7, $7580(at)		# 000e7be4:a42f7580	[80157580]
		//	lh		t8, $0002(v0)		# 000e7be8:84580002	t8=$8004dcd2
		//	lui		at, $8015		# 000e7bec:3c018015	at=$80150000
		//	lh		t5, $7712(t5)		# 000e7bf0:85ad7712	t5=$80047712
		//	sra		t9, t8, 2		# 000e7bf4:0018c883	
		//	addiu		t0, t9, $0064		# 000e7bf8:27280064	
		//	sh		t0, $7582(at)		# 000e7bfc:a4287582	[80157582]
		//__000e7c00:					# 
		//	lh		t1, $0004(v0)		# 000e7c00:84490004	t1=$8004dcd4
		//	lui		at, $8015		# 000e7c04:3c018015	at=$80150000
		//	sra		t2, t1, 2		# 000e7c08:00095083	
		//	addiu		t3, t2, $ff38		# 000e7c0c:254bff38	
		//	sh		t3, $7584(at)		# 000e7c10:a42b7584	[80157584]
		//	lui		at, $8015		# 000e7c14:3c018015	at=$80150000
		//	sh		t4, $758c(at)		# 000e7c18:a42c758c	[8015758c]
		//	lui		at, $8015		# 000e7c1c:3c018015	at=$80150000
		//	jr		ra			# 000e7c20:03e00008	
		//	sh		t5, $758e(at)		# 000e7c24:a42d758e	[8015758e]
	}

	// RAM GREECE
	/// Outdoors debug camera? Controller 2 moves camera when function runs
	static void fnc000e7c28()
	{
		//	addiu		sp, sp, $ffc0		# 000e7c28:27bdffc0	
		//	sw		s0, $0024(sp)		# 000e7c2c:afb00024	
		//	lui		s0, $8004		# 000e7c30:3c108004	s0=$80040000
		//	addiu		s0, s0, $7588		# 000e7c34:26107588	s0=$80047588
		//	lhu		v1, $0006(s0)		# 000e7c38:96030006	v1=$8004758e
		//	sw		ra, $002c(sp)		# 000e7c3c:afbf002c	
		//	sw		s1, $0028(sp)		# 000e7c40:afb10028	
		//	andi		t6, v1, $0020		# 000e7c44:306e0020	
		//	bne		t6, zero, $000e8178	# 000e7c48:15c0014b	v __000e8178
		//	(sdc1)		s4, $0018(sp)		# 000e7c4c:f7b40018	
		//	lui		t7, $8015		# 000e7c50:3c0f8015	t7=$80150000
		//	lh		t7, $7590(t7)		# 000e7c54:85ef7590	t7=$80157590
		//	addiu		at, zero, $0004		# 000e7c58:24010004	at=$00000004
		//	lui		v0, $8015		# 000e7c5c:3c028015	v0=$80150000
		//	bne		t7, at, $000e7e48	# 000e7c60:15e10079	v __000e7e48
		//	andi		t8, v1, $0010		# 000e7c64:30780010	
		//	lui		s1, $8015		# 000e7c68:3c118015	s1=$80150000
		//	lb		t9, $0008(s0)		# 000e7c6c:82190008	
		//	lb		t3, $0009(s0)		# 000e7c70:820b0009	
		//	addiu		s1, s1, $758e		# 000e7c74:2631758e	s1=$8015758e
		//	addiu		v0, v0, $758c		# 000e7c78:2442758c	v0=$8015758c
		//	lh		t8, $0000(s1)		# 000e7c7c:86380000	t8=$8015758e
		//	lh		t2, $0000(v0)		# 000e7c80:844a0000	t2=$8015758c
		//	sll		t0, t9, 4		# 000e7c84:00194100	
		//	sll		t4, t3, 3		# 000e7c88:000b60c0	
		//	andi		t6, v1, $0004		# 000e7c8c:306e0004	
		//	subu		t1, t8, t0		# 000e7c90:03084823	
		//	addu		t5, t2, t4		# 000e7c94:014c6821	
		//	sh		t1, $0000(s1)		# 000e7c98:a6290000	[8015758e]
		//	beq		t6, zero, $000e7cb8	# 000e7c9c:11c00006	v __000e7cb8
		//	sh		t5, $0000(v0)		# 000e7ca0:a44d0000	[8015758c]
		//	lui		t7, $8014		# 000e7ca4:3c0f8014	t7=$80140000
		//	lw		t7, $e438(t7)		# 000e7ca8:8defe438	t7=$8013e438
		//	lui		at, $8014		# 000e7cac:3c018014	at=$80140000
		//	addiu		t9, t7, $0005		# 000e7cb0:25f90005	t9=$00000069
		//	sw		t9, $e438(at)		# 000e7cb4:ac39e438	[8013e438]
		//__000e7cb8:					# 
		//	andi		t8, v1, $0008		# 000e7cb8:30780008	
		//	beq		t8, zero, $000e7cd4	# 000e7cbc:13000005	v __000e7cd4
		//	lui		t0, $8014		# 000e7cc0:3c088014	t0=$80140000
		//	lw		t0, $e438(t0)		# 000e7cc4:8d08e438	t0=$8013e438
		//	lui		at, $8014		# 000e7cc8:3c018014	at=$80140000
		//	addiu		t1, t0, $fffb		# 000e7ccc:2509fffb	t1=$0000005f
		//	sw		t1, $e438(at)		# 000e7cd0:ac29e438	[8013e438]
		//__000e7cd4:					# 
		//	lw		t3, $003c(sp)		# 000e7cd4:8fab003c	
		//	lw		t2, $0038(sp)		# 000e7cd8:8faa0038	
		//	lui		at, $8015		# 000e7cdc:3c018015	at=$80150000
		//	sh		t3, $7586(at)		# 000e7ce0:a42b7586	[80157586]
		//	lw		t4, $0034(sp)		# 000e7ce4:8fac0034	
		//	lui		at, $8015		# 000e7ce8:3c018015	at=$80150000
		//	sh		t2, $7588(at)		# 000e7cec:a42a7588	[80157588]
		//	lui		at, $8015		# 000e7cf0:3c018015	at=$80150000
		//	sh		t4, $758a(at)		# 000e7cf4:a42c758a	[8015758a]
		//	jal		$0001d950		# 000e7cf8:0c007654	^ FNC_0001d950
		//	lhu		a0, $0000(v0)		# 000e7cfc:94440000	a0=$8015758c
		N64.coss();
		//	sh		v0, $0032(sp)		# 000e7d00:a7a20032	
		//	jal		$0001d950		# 000e7d04:0c007654	^ FNC_0001d950
		//	lhu		a0, $0000(s1)		# 000e7d08:96240000	a0=$8015758e
		N64.coss();
		//	lh		t5, $0032(sp)		# 000e7d0c:87ad0032	
		//	lui		at, $40e0		# 000e7d10:3c0140e0	at=$40e00000
		//	mtc1		at, $f21		# 000e7d14:4481a800	
		//	mtc1		t5, $f4			# 000e7d18:448d2000	
		//	mtc1		zero, $f20		# 000e7d1c:4480a000	
		//	lui		t6, $8014		# 000e7d20:3c0e8014	t6=$80140000
		//	cvt.s.w		$f6, $f4		# 000e7d24:468021a0	
		//	lw		t6, $e438(t6)		# 000e7d28:8dcee438	t6=$8013e438
		//	lui		t7, $8015		# 000e7d2c:3c0f8015	t7=$80150000
		//	lh		t7, $7586(t7)		# 000e7d30:85ef7586	t7=$80157586
		//	mtc1		t6, $f16		# 000e7d34:448e8000	
		//	lui		at, $8015		# 000e7d38:3c018015	at=$80150000
		//	(cop1_s)	$02003221		# 000e7d3c:46003221	
		//	mtc1		v0, $f6			# 000e7d40:44823000	
		//	(cop1)		$02344283		# 000e7d44:46344283	
		//	lui		a0, $8015		# 000e7d48:3c048015	a0=$80150000
		//	lhu		a0, $758c(a0)		# 000e7d4c:9484758c	a0=$8015758c
		//	cvt.s.w		$f8, $f6		# 000e7d50:46803220	
		//	mtc1		t7, $f6			# 000e7d54:448f3000	
		//	(cop1_w)	$028084a1		# 000e7d58:468084a1	
		//	(cop1_s)	$02004421		# 000e7d5c:46004421	
		//	(cop1_w)	$02803221		# 000e7d60:46803221	
		//	(cop1)		$02325102		# 000e7d64:46325102	
		//	(cop1)		$02348283		# 000e7d68:46348283	
		//	(cop1)		$02245482		# 000e7d6c:46245482	
		//	(cop1)		$02289400		# 000e7d70:46289400	
		//	(cop1)		$0220828d		# 000e7d74:4620828d	
		//	mfc1		t8, $f10		# 000e7d78:44185000	
		//	jal		$0001d980		# 000e7d7c:0c007660	^ FNC_0001d980
		//	sh		t8, $7580(at)		# 000e7d80:a4387580	
		N64.sins();
		//	mtc1		v0, $f4			# 000e7d84:44822000	
		//	lui		t0, $8014		# 000e7d88:3c088014	t0=$80140000
		//	lw		t0, $e438(t0)		# 000e7d8c:8d08e438	t0=$8013e438
		//	cvt.s.w		$f6, $f4		# 000e7d90:468021a0	
		//	lui		t1, $8015		# 000e7d94:3c098015	t1=$80150000
		//	mtc1		t0, $f16		# 000e7d98:44888000	
		//	lh		t1, $7588(t1)		# 000e7d9c:85297588	t1=$80157588
		//	lui		at, $8015		# 000e7da0:3c018015	at=$80150000
		//	(cop1_w)	$028082a1		# 000e7da4:468082a1	
		//	lui		a0, $8015		# 000e7da8:3c048015	a0=$80150000
		//	lhu		a0, $758c(a0)		# 000e7dac:9484758c	a0=$8015758c
		//	(cop1_s)	$020034a1		# 000e7db0:460034a1	
		//	mtc1		t1, $f6			# 000e7db4:44893000	
		//	(cop1)		$02349203		# 000e7db8:46349203	
		//	(cop1_w)	$028034a1		# 000e7dbc:468034a1	
		//	(cop1)		$022a4102		# 000e7dc0:462a4102	
		//	(cop1)		$02322400		# 000e7dc4:46322400	
		//	(cop1)		$0220820d		# 000e7dc8:4620820d	
		//	mfc1		t2, $f8			# 000e7dcc:440a4000	
		//	jal		$0001d950		# 000e7dd0:0c007654	^ FNC_0001d950
		//	sh		t2, $7582(at)		# 000e7dd4:a42a7582	
		N64.coss();
		//	sh		v0, $0032(sp)		# 000e7dd8:a7a20032	
		//	jal		$0001d980		# 000e7ddc:0c007660	^ FNC_0001d980
		//	lhu		a0, $0000(s1)		# 000e7de0:96240000	
		N64.sins();
		//	lh		t4, $0032(sp)		# 000e7de4:87ac0032	
		//	lui		t5, $8014		# 000e7de8:3c0d8014	t5=$80140000
		//	lw		t5, $e438(t5)		# 000e7dec:8dade438	t5=$8013e438
		//	mtc1		t4, $f10		# 000e7df0:448c5000	
		//	lui		t6, $8015		# 000e7df4:3c0e8015	t6=$80150000
		//	mtc1		t5, $f16		# 000e7df8:448d8000	
		//	cvt.s.w		$f6, $f10		# 000e7dfc:468051a0	
		//	lh		t6, $758a(t6)		# 000e7e00:85ce758a	t6=$8015758a
		//	lui		at, $8015		# 000e7e04:3c018015	at=$80150000
		//	(cop1_w)	$02808221		# 000e7e08:46808221	
		//	(cop1_s)	$02003121		# 000e7e0c:46003121	
		//	mtc1		v0, $f6			# 000e7e10:44823000	
		//	(cop1)		$02342483		# 000e7e14:46342483	
		//	cvt.s.w		$f4, $f6		# 000e7e18:46803120	
		//	mtc1		t6, $f6			# 000e7e1c:448e3000	
		//	(cop1_s)	$02002421		# 000e7e20:46002421	
		//	(cop1_w)	$02803121		# 000e7e24:46803121	
		//	(cop1)		$02289282		# 000e7e28:46289282	
		//	(cop1)		$02348483		# 000e7e2c:46348483	
		//	(cop1)		$022a9202		# 000e7e30:462a9202	
		//	(cop1)		$02244400		# 000e7e34:46244400	
		//	(cop1)		$0220848d		# 000e7e38:4620848d	
		//	mfc1		t9, $f18		# 000e7e3c:44199000	
		//	beq		zero, zero, $000e8178	# 000e7e40:100000cd	v __000e8178
		//	sh		t9, $7584(at)		# 000e7e44:a4397584	
		//__000e7e48:					# 
		//	beq		t8, zero, $000e7e94	# 000e7e48:13000012	v __000e7e94
		//	lui		a1, $8015		# 000e7e4c:3c058015	a1=$80150000
		//	lui		s1, $8015		# 000e7e50:3c118015	s1=$80150000
		//	lb		t1, $0008(s0)		# 000e7e54:82090008	
		//	lb		t5, $0009(s0)		# 000e7e58:820d0009	
		//	addiu		s1, s1, $758e		# 000e7e5c:2631758e	s1=$8015758e
		//	addiu		a1, a1, $758c		# 000e7e60:24a5758c	a1=$8015758c
		//	lh		t0, $0000(s1)		# 000e7e64:86280000	t0=$8015758e
		//	lh		t4, $0000(a1)		# 000e7e68:84ac0000	t4=$8015758c
		//	lui		at, $40e0		# 000e7e6c:3c0140e0	at=$40e00000
		//	sll		t3, t1, 4		# 000e7e70:00095900	
		//	sll		t6, t5, 3		# 000e7e74:000d70c0	
		//	mtc1		at, $f21		# 000e7e78:4481a800	
		//	mtc1		zero, $f20		# 000e7e7c:4480a000	
		//	addu		t2, t0, t3		# 000e7e80:010b5021	
		//	addu		t7, t4, t6		# 000e7e84:018e7821	
		//	sh		t2, $0000(s1)		# 000e7e88:a62a0000	[8015758e]
		//	beq		zero, zero, $000e7fd4	# 000e7e8c:10000051	v __000e7fd4
		//	sh		t7, $0000(a1)		# 000e7e90:a4af0000	[8015758c]
		//__000e7e94:					# 
		//	lui		s1, $8015		# 000e7e94:3c118015	s1=$80150000
		//	addiu		s1, s1, $758e		# 000e7e98:2631758e	s1=$8015758e
		//	jal		$0001d980		# 000e7e9c:0c007660	^ FNC_0001d980
		//	lhu		a0, $0000(s1)		# 000e7ea0:96240000	a0=$8015758e
		N64.sins();
		//	sh		v0, $0030(sp)		# 000e7ea4:a7a20030	
		//	jal		$0001d950		# 000e7ea8:0c007654	^ FNC_0001d950
		//	lhu		a0, $0000(s1)		# 000e7eac:96240000	a0=$8015758e
		N64.coss();
		//	mtc1		v0, $f8			# 000e7eb0:44824000	
		//	lui		at, $40e0		# 000e7eb4:3c0140e0	at=$40e00000
		//	mtc1		at, $f21		# 000e7eb8:4481a800	
		//	cvt.s.w		$f4, $f8		# 000e7ebc:46804120	
		//	mtc1		zero, $f20		# 000e7ec0:4480a000	
		//	lb		t9, $0009(s0)		# 000e7ec4:82190009	
		//	lh		t2, $0030(sp)		# 000e7ec8:87aa0030	
		//	lb		t0, $0008(s0)		# 000e7ecc:82080008	
		//	sra		t8, t9, 2		# 000e7ed0:0019c083	
		//	(cop1_s)	$02002421		# 000e7ed4:46002421	
		//	subu		t1, zero, t8		# 000e7ed8:00184823	
		//	(cop1)		$02348483		# 000e7edc:46348483	
		//	mtc1		t1, $f10		# 000e7ee0:44895000	
		//	mtc1		t2, $f16		# 000e7ee4:448a8000	
		//	sra		t3, t0, 2		# 000e7ee8:00085883	
		//	(cop1_w)	$028051a1		# 000e7eec:468051a1	
		//	mtc1		t3, $f8			# 000e7ef0:448b4000	
		//	lui		t5, $8015		# 000e7ef4:3c0d8015	t5=$80150000
		//	lh		t5, $7580(t5)		# 000e7ef8:85ad7580	t5=$80157580
		//	(cop1_w)	$02804121		# 000e7efc:46804121	
		//	lui		at, $8015		# 000e7f00:3c018015	at=$80150000
		//	(cop1)		$02323282		# 000e7f04:46323282	
		//	cvt.s.w		$f6, $f16		# 000e7f08:468081a0	
		//	(cop1_s)	$020034a1		# 000e7f0c:460034a1	
		//	(cop1)		$02349203		# 000e7f10:46349203	
		//	mtc1		t5, $f18		# 000e7f14:448d9000	
		//	(cop1)		$02282402		# 000e7f18:46282402	
		//	(cop1_w)	$02809121		# 000e7f1c:46809121	
		//	(cop1)		$02305180		# 000e7f20:46305180	
		//	(cop1)		$02262200		# 000e7f24:46262200	
		//	(cop1)		$0220428d		# 000e7f28:4620428d	
		//	mfc1		t6, $f10		# 000e7f2c:440e5000	
		//	nop					# 000e7f30:00000000	
		//	sh		t6, $7580(at)		# 000e7f34:a42e7580	
		//	jal		$0001d950		# 000e7f38:0c007654	^ FNC_0001d950
		//	lhu		a0, $0000(s1)		# 000e7f3c:96240000	
		N64.coss();
		//	sh		v0, $0030(sp)		# 000e7f40:a7a20030	
		//	jal		$0001d980		# 000e7f44:0c007660	^ FNC_0001d980
		//	lhu		a0, $0000(s1)		# 000e7f48:96240000	
		N64.sins();
		//	mtc1		v0, $f4			# 000e7f4c:44822000	
		//	lb		t7, $0009(s0)		# 000e7f50:820f0009	
		//	lh		t3, $0030(sp)		# 000e7f54:87ab0030	
		//	cvt.s.w		$f6, $f4		# 000e7f58:468021a0	
		//	sra		t9, t7, 2		# 000e7f5c:000fc883	
		//	subu		t8, zero, t9		# 000e7f60:0019c023	
		//	mtc1		t8, $f16		# 000e7f64:44988000	
		//	lb		t1, $0008(s0)		# 000e7f68:82090008	
		//	lui		t2, $8015		# 000e7f6c:3c0a8015	t2=$80150000
		//	(cop1_s)	$02003221		# 000e7f70:46003221	
		//	(cop1_w)	$028084a1		# 000e7f74:468084a1	
		//	sra		t0, t1, 2		# 000e7f78:00094083	
		//	mtc1		t0, $f4			# 000e7f7c:44882000	
		//	lh		t2, $7584(t2)		# 000e7f80:854a7584	t2=$80157584
		//	(cop1)		$02344283		# 000e7f84:46344283	
		//	mtc1		t3, $f8			# 000e7f88:448b4000	
		//	lui		at, $8015		# 000e7f8c:3c018015	at=$80150000
		//	lui		a1, $8015		# 000e7f90:3c058015	a1=$80150000
		//	(cop1_w)	$028021a1		# 000e7f94:468021a1	
		//	addiu		a1, a1, $758c		# 000e7f98:24a5758c	a1=$8015758c
		//	(cop1)		$022a9402		# 000e7f9c:462a9402	
		//	cvt.s.w		$f18, $f8		# 000e7fa0:468044a0	
		//	(cop1_s)	$020092a1		# 000e7fa4:460092a1	
		//	(cop1)		$02345103		# 000e7fa8:46345103	
		//	mtc1		t2, $f10		# 000e7fac:448a5000	
		//	(cop1)		$02243202		# 000e7fb0:46243202	
		//	(cop1_w)	$028051a1		# 000e7fb4:468051a1	
		//	(cop1)		$02288481		# 000e7fb8:46288481	
		//	(cop1)		$02323100		# 000e7fbc:46323100	
		//	(cop1)		$0220240d		# 000e7fc0:4620240d	
		//	mfc1		t4, $f16		# 000e7fc4:440c8000	
		//	nop					# 000e7fc8:00000000	
		//	sh		t4, $7584(at)		# 000e7fcc:a42c7584	
		//	lhu		v1, $0006(s0)		# 000e7fd0:96030006	
		//__000e7fd4:					# 
		//	andi		t6, v1, $0008		# 000e7fd4:306e0008	
		//	beq		t6, zero, $000e7ff4	# 000e7fd8:11c00006	v __000e7ff4
		//	andi		t8, v1, $0004		# 000e7fdc:30780004	
		//	lui		v0, $8015		# 000e7fe0:3c028015	v0=$80150000
		//	addiu		v0, v0, $7582		# 000e7fe4:24427582	v0=$80157582
		//	lh		t7, $0000(v0)		# 000e7fe8:844f0000	t7=$80157582
		//	addiu		t9, t7, $0001		# 000e7fec:25f90001	
		//	sh		t9, $0000(v0)		# 000e7ff0:a4590000	[80157582]
		//__000e7ff4:					# 
		//	lui		v0, $8015		# 000e7ff4:3c028015	v0=$80150000
		//	beq		t8, zero, $000e800c	# 000e7ff8:13000004	v __000e800c
		//	addiu		v0, v0, $7582		# 000e7ffc:24427582	v0=$80157582
		//	lh		t1, $0000(v0)		# 000e8000:84490000	t1=$80157582
		//	addiu		t0, t1, $ffff		# 000e8004:2528ffff	
		//	sh		t0, $0000(v0)		# 000e8008:a4480000	[80157582]
		//__000e800c:					# 
		//	jal		$0001d950		# 000e800c:0c007654	^ FNC_0001d950
		//	lhu		a0, $0000(a1)		# 000e8010:94a40000	
		N64.coss();
		//	sh		v0, $0032(sp)		# 000e8014:a7a20032	
		//	jal		$0001d950		# 000e8018:0c007654	^ FNC_0001d950
		//	lhu		a0, $0000(s1)		# 000e801c:96240000	
		N64.coss();
		//	lh		t3, $0032(sp)		# 000e8020:87ab0032	
		//	lui		at, $8014		# 000e8024:3c018014	at=$80140000
		//	(ldc1)		a0, $4240(at)		# 000e8028:d4244240	
		//	mtc1		t3, $f8			# 000e802c:448b4000	
		//	lui		t2, $8015		# 000e8030:3c0a8015	t2=$80150000
		//	lh		t2, $7580(t2)		# 000e8034:854a7580	t2=$80157580
		//	cvt.s.w		$f10, $f8		# 000e8038:468042a0	
		//	mtc1		v0, $f8			# 000e803c:44824000	
		//	lui		at, $8015		# 000e8040:3c018015	at=$80150000
		//	lui		a0, $8015		# 000e8044:3c048015	a0=$80150000
		//	lhu		a0, $758c(a0)		# 000e8048:9484758c	a0=$8015758c
		//	(cop1_s)	$020051a1		# 000e804c:460051a1	
		//	cvt.s.w		$f10, $f8		# 000e8050:468042a0	
		//	mtc1		t2, $f8			# 000e8054:448a4000	
		//	(cop1)		$02343483		# 000e8058:46343483	
		//	(cop1_s)	$020051a1		# 000e805c:460051a1	
		//	(cop1_w)	$028042a1		# 000e8060:468042a1	
		//	(cop1)		$02249402		# 000e8064:46249402	
		//	(cop1)		$02343483		# 000e8068:46343483	
		//	(cop1)		$02309102		# 000e806c:46309102	
		//	(cop1)		$02245181		# 000e8070:46245181	
		//	(cop1)		$0220348d		# 000e8074:4620348d	
		//	mfc1		t4, $f18		# 000e8078:440c9000	
		//	jal		$0001d980		# 000e807c:0c007660	^ FNC_0001d980
		//	sh		t4, $7586(at)		# 000e8080:a42c7586	
		N64.sins();
		//	mtc1		v0, $f16		# 000e8084:44828000	
		//	lui		at, $8014		# 000e8088:3c018014	at=$80140000
		//	lui		t6, $8015		# 000e808c:3c0e8015	t6=$80150000
		//	cvt.s.w		$f8, $f16		# 000e8090:46808220	
		//	lh		t6, $7582(t6)		# 000e8094:85ce7582	t6=$80157582
		//	(ldc1)		a2, $4248(at)		# 000e8098:d4264248	
		//	lui		at, $8015		# 000e809c:3c018015	at=$80150000
		//	mtc1		t6, $f16		# 000e80a0:448e8000	
		//	lui		a0, $8015		# 000e80a4:3c048015	a0=$80150000
		//	(cop1_s)	$020042a1		# 000e80a8:460042a1	
		//	(cop1_w)	$02808221		# 000e80ac:46808221	
		//	lhu		a0, $758c(a0)		# 000e80b0:9484758c	a0=$8015758c
		//	(cop1)		$02345103		# 000e80b4:46345103	
		//	(cop1)		$02262482		# 000e80b8:46262482	
		//	(cop1)		$02324281		# 000e80bc:46324281	
		//	(cop1)		$0220510d		# 000e80c0:4620510d	
		//	mfc1		t9, $f4			# 000e80c4:44192000	
		//	jal		$0001d950		# 000e80c8:0c007654	^ FNC_0001d950
		//	sh		t9, $7588(at)		# 000e80cc:a4397588	
		N64.coss();
		//	sh		v0, $0032(sp)		# 000e80d0:a7a20032	
		//	jal		$0001d980		# 000e80d4:0c007660	^ FNC_0001d980
		//	lhu		a0, $0000(s1)		# 000e80d8:96240000	
		N64.sins();
		//	lh		t8, $0032(sp)		# 000e80dc:87b80032	
		//	lui		at, $8014		# 000e80e0:3c018014	at=$80140000
		//	(ldc1)		t2, $4250(at)		# 000e80e4:d42a4250	
		//	mtc1		t8, $f6			# 000e80e8:44983000	
		//	lui		a3, $8015		# 000e80ec:3c078015	a3=$80150000
		//	lh		a3, $7584(a3)		# 000e80f0:84e77584	a3=$80157584
		//	cvt.s.w		$f16, $f6		# 000e80f4:46803420	
		//	mtc1		v0, $f6			# 000e80f8:44823000	
		//	lui		at, $8015		# 000e80fc:3c018015	at=$80150000
		//	lui		a0, $8014		# 000e8100:3c048014	a0=$80140000
		//	addiu		a0, a0, $41f0		# 000e8104:248441f0	a0=$801441f0
		//	lui		a1, $8015		# 000e8108:3c058015	a1=$80150000
		//	(cop1_s)	$02008221		# 000e810c:46008221	
		//	cvt.s.w		$f16, $f6		# 000e8110:46803420	
		//	mtc1		a3, $f6			# 000e8114:44873000	
		//	lui		a2, $8015		# 000e8118:3c068015	a2=$80150000
		//	lui		t5, $8015		# 000e811c:3c0d8015	t5=$80150000
		//	(cop1)		$02344483		# 000e8120:46344483	
		//	(cop1_s)	$02008221		# 000e8124:46008221	
		//	(cop1_w)	$02803421		# 000e8128:46803421	
		//	(cop1)		$022a9102		# 000e812c:462a9102	
		//	(cop1)		$02344483		# 000e8130:46344483	
		//	(cop1)		$02249282		# 000e8134:46249282	
		//	(cop1)		$022a8201		# 000e8138:462a8201	
		//	(cop1)		$0220448d		# 000e813c:4620448d	
		//	mfc1		t0, $f18		# 000e8140:44089000	
		//	nop					# 000e8144:00000000	
		//	sh		t0, $758a(at)		# 000e8148:a428758a	
		//	lhu		t3, $0006(s0)		# 000e814c:960b0006	
		//	andi		t2, t3, $0001		# 000e8150:316a0001	
		//	beql		t2, zero, $000e817c	# 000e8154:51400009	v __000e817c
		//	lw		ra, $002c(sp)		# 000e8158:8fbf002c	
		//	lh		t5, $758c(t5)		# 000e815c:85ad758c	
		//	lh		t4, $0000(s1)		# 000e8160:862c0000	
		//	lh		a1, $7580(a1)		# 000e8164:84a57580	
		//	lh		a2, $7582(a2)		# 000e8168:84c67582	
		//	sw		t5, $0010(sp)		# 000e816c:afad0010	
		//	jal		$0001cc6c		# 000e8170:0c00731b	^ FNC_0001cc6c
		//	sw		t4, $0014(sp)		# 000e8174:afac0014	
		N64.fnc0001cc6c();
		//__000e8178:					# 
		//	lw		ra, $002c(sp)		# 000e8178:8fbf002c	
		//__000e817c:					# 
		//	(ldc1)		s4, $0018(sp)		# 000e817c:d7b40018	
		//	lw		s0, $0024(sp)		# 000e8180:8fb00024	
		//	lw		s1, $0028(sp)		# 000e8184:8fb10028	
		//	jr		ra			# 000e8188:03e00008	
		//	addiu		sp, sp, $0040		# 000e818c:27bd0040	
	}

	// RAM GREECE
	static void fnc000e8190() {
		fnc00132740();
	}

	// RAM GREECE
	static void fnc000e82ac()
	{
		//	lui		a1, $8015		# 000e82ac:3c058015	a1=$80150000
		//	lh		a1, $7590(a1)		# 000e82b0:84a57590	a1=$80157590
		//	addiu		t6, zero, $002d		# 000e82b4:240e002d	t6=$0000002d
		//	lui		at, $8015		# 000e82b8:3c018015	at=$80150000
		//	sh		t6, $9404(at)		# 000e82bc:a42e9404	[80149404]
		x80149404 = 0x2d;
		//	addiu		sp, sp, $ffc8		# 000e82c0:27bdffc8	
		//	addiu		at, zero, $0001		# 000e82c4:24010001	at=$00000001
		//	sw		ra, $002c(sp)		# 000e82c8:afbf002c	
		//	beq		a1, at, $000e82f8	# 000e82cc:10a1000a	v __000e82f8
		//	sw		a0, $0038(sp)		# 000e82d0:afa40038	
		switch (x80157590)
		{
			//	addiu		at, zero, $0002		# 000e82d4:24010002	at=$00000002
			//	beq		a1, at, $000e8300	# 000e82d8:10a10009	v __000e8300
			//	addiu		at, zero, $0003		# 000e82dc:24010003	at=$00000003
			//	beq		a1, at, $000e8308	# 000e82e0:10a10009	v __000e8308
			//	addiu		at, zero, $0004		# 000e82e4:24010004	at=$00000004
			//	beq		a1, at, $000e8300	# 000e82e8:10a10005	v __000e8300
			//	lui		a0, $8014		# 000e82ec:3c048014	a0=$80140000
			//	beq		zero, zero, $000e850c	# 000e82f0:10000086	v __000e850c
			//	nop					# 000e82f4:00000000	
			default:
				break;
			case 1:
				//__000e82f8:					# 
				//	jal		$000e7bc4		# 000e82f8:0c039ef1	^ FNC_000e7bc4
				//	nop					# 000e82fc:00000000	
				fnc000e7bc4();
				goto case;
			case 2:
			case 4:
				//__000e8300:					# 
				//	jal		$000e7c28		# 000e8300:0c039f0a	^ FNC_000e7c28
				//	nop					# 000e8304:00000000	
				fnc000e7c28();
				goto case;
			case 3:
				//__000e8308:					# 
				//	mtc1		zero, $f18		# 000e8308:44809000	
				//	lui		t7, $8015		# 000e830c:3c0f8015	t7=$80150000
				//	lh		t7, $7580(t7)		# 000e8310:85ef7580	t7=$80157580
				//	lui		t8, $8015		# 000e8314:3c188015	t8=$80150000
				//	lh		t8, $7582(t8)		# 000e8318:87187582	t8=$80157582
				//	mtc1		t7, $f16		# 000e831c:448f8000	
				//	lui		t9, $8015		# 000e8320:3c198015	t9=$80150000
				//	lh		t9, $7584(t9)		# 000e8324:87397584	t9=$80157584
				//	cvt.s.w		$f16, $f16		# 000e8328:46808420	
				//	mtc1		t8, $f14		# 000e832c:44987000	
				//	mtc1		t9, $f12		# 000e8330:44996000	
				//	lui		t1, $8015		# 000e8334:3c098015	t1=$80150000
				//	lh		t1, $7586(t1)		# 000e8338:85297586	t1=$80157586
				//	cvt.s.w		$f14, $f14		# 000e833c:468073a0	
				//	mfc1		a1, $f16		# 000e8340:44058000	
				//	mtc1		t1, $f16		# 000e8344:44898000	
				//	lui		t2, $8015		# 000e8348:3c0a8015	t2=$80150000
				//	lh		t2, $7588(t2)		# 000e834c:854a7588	t2=$80157588
				//	cvt.s.w		$f12, $f12		# 000e8350:46806320	
				//	mfc1		a2, $f14		# 000e8354:44067000	
				//	mtc1		t2, $f14		# 000e8358:448a7000	
				//	lui		t3, $8015		# 000e835c:3c0b8015	t3=$80150000
				//	lh		t3, $758a(t3)		# 000e8360:856b758a	t3=$8015758a
				//	cvt.s.w		$f16, $f16		# 000e8364:46808420	
				//	mfc1		a3, $f12		# 000e8368:44076000	
				//	mtc1		t3, $f12		# 000e836c:448b6000	
				//	lui		a0, $8006		# 000e8370:3c048006	a0=$80060000
				//	lw		a0, $bb20(a0)		# 000e8374:8c84bb20	a0=$8005bb20
				//	cvt.s.w		$f14, $f14		# 000e8378:468073a0	
				//	lui		at, $3f80		# 000e837c:3c013f80	at=$3f800000
				//	mtc1		at, $f10		# 000e8380:44815000	
				//	addiu		a0, a0, $0200		# 000e8384:24840200	a0=$801ce910
				//	swc1		$f16, $0010(sp)		# 000e8388:e7b00010	
				//	cvt.s.w		$f12, $f12		# 000e838c:46806320	
				//	swc1		$f14, $0014(sp)		# 000e8390:e7ae0014	
				//	swc1		$f10, $0020(sp)		# 000e8394:e7aa0020	
				//	swc1		$f18, $001c(sp)		# 000e8398:e7b2001c	
				//	swc1		$f18, $0024(sp)		# 000e839c:e7b20024	
				//	jal		$0001de68		# 000e83a0:0c00779a	^ FNC_0001de68
				//	swc1		$f12, $0018(sp)		# 000e83a4:e7ac0018	
				N64.guLookAt();
				//	lui		t4, $8015		# 000e83a8:3c0c8015	t4=$80150000
				//	lh		t4, $7586(t4)		# 000e83ac:858c7586	t4=$80157586
				//	lui		t9, $8015		# 000e83b0:3c198015	t9=$80150000
				//	lh		t9, $7584(t9)		# 000e83b4:87397584	t9=$80157584
				//	lui		t5, $8015		# 000e83b8:3c0d8015	t5=$80150000
				//	lh		t5, $7588(t5)		# 000e83bc:85ad7588	t5=$80157588
				//	mtc1		t9, $f18		# 000e83c0:44999000	
				//	lui		at, $8015		# 000e83c4:3c018015	at=$80150000
				//	sh		t4, $3bac(at)		# 000e83c8:a42c3bac	[80153bac]
				//	cvt.s.w		$f18, $f18		# 000e83cc:468094a0	
				//	lui		t7, $8015		# 000e83d0:3c0f8015	t7=$80150000
				//	lh		t7, $7580(t7)		# 000e83d4:85ef7580	t7=$80157580
				//	lui		t8, $8015		# 000e83d8:3c188015	t8=$80150000
				//	lh		t8, $7582(t8)		# 000e83dc:87187582	t8=$80157582
				//	mtc1		t7, $f16		# 000e83e0:448f8000	
				//	mfc1		a2, $f18		# 000e83e4:44069000	
				//	mtc1		t8, $f18		# 000e83e8:44989000	
				//	cvt.s.w		$f12, $f16		# 000e83ec:46808320	
				//	lui		at, $8015		# 000e83f0:3c018015	at=$80150000
				//	lui		t6, $8015		# 000e83f4:3c0e8015	t6=$80150000
				//	lh		t6, $758a(t6)		# 000e83f8:85ce758a	t6=$8015758a
				//	sh		t5, $3bae(at)		# 000e83fc:a42d3bae	[80153bae]
				//	cvt.s.w		$f14, $f18		# 000e8400:468093a0	
				//	lui		at, $8015		# 000e8404:3c018015	at=$80150000
				//	jal		$000c1268		# 000e8408:0c03049a	^ FNC_000c1268
				//	sh		t6, $3bb0(at)		# 000e840c:a42e3bb0	[80153bb0]
				fnc000c1268();
				//	lui		t1, $8015		# 000e8410:3c098015	t1=$80150000
				//	lh		t1, $7586(t1)		# 000e8414:85297586	t1=$80157586
				//	lui		t2, $8015		# 000e8418:3c0a8015	t2=$80150000
				//	lh		t2, $7580(t2)		# 000e841c:854a7580	t2=$80157580
				//	mtc1		t1, $f6			# 000e8420:44893000	
				//	lui		t3, $8015		# 000e8424:3c0b8015	t3=$80150000
				//	lui		t4, $8015		# 000e8428:3c0c8015	t4=$80150000
				//	lh		t4, $7582(t4)		# 000e842c:858c7582	t4=$80157582
				//	lh		t3, $7588(t3)		# 000e8430:856b7588	t3=$80157588
				//	mtc1		t2, $f10		# 000e8434:448a5000	
				//	cvt.s.w		$f8, $f6		# 000e8438:46803220	
				//	mtc1		t4, $f6			# 000e843c:448c3000	
				//	mtc1		t3, $f18		# 000e8440:448b9000	
				//	lui		t5, $8015		# 000e8444:3c0d8015	t5=$80150000
				//	lui		t6, $8015		# 000e8448:3c0e8015	t6=$80150000
				//	cvt.s.w		$f16, $f10		# 000e844c:46805420	
				//	lh		t6, $7584(t6)		# 000e8450:85ce7584	t6=$80157584
				//	lh		t5, $758a(t5)		# 000e8454:85ad758a	t5=$8015758a
				//	cvt.s.w		$f10, $f6		# 000e8458:468032a0	
				//	mtc1		t6, $f6			# 000e845c:448e3000	
				//	cvt.s.w		$f4, $f18		# 000e8460:46809120	
				//	sub.s		$f0, $f8, $f16		# 000e8464:46104001	
				//	mtc1		t5, $f16		# 000e8468:448d8000	
				//	sub.s		$f8, $f4, $f10		# 000e846c:460a2201	
				//	mul.s		$f10, $f0, $f0		# 000e8470:46000282	
				//	swc1		$f8, $0030(sp)		# 000e8474:e7a80030	
				//	cvt.s.w		$f4, $f6		# 000e8478:46803120	
				//	cvt.s.w		$f18, $f16		# 000e847c:468084a0	
				//	sub.s		$f2, $f18, $f4		# 000e8480:46049081	
				//	mul.s		$f8, $f2, $f2		# 000e8484:46021202	
				//	jal		$0001d940		# 000e8488:0c007650	^ FNC_0001d940
				//	add.s		$f12, $f10, $f8		# 000e848c:46085300	
				N64.sqrtf();
				//	lwc1		$f14, $0030(sp)		# 000e8490:c7ae0030	
				//	mov.s		$f12, $f0		# 000e8494:46000306	
				//	jal		$00003824		# 000e8498:0c000e09	^ FNC_00003824
				//	neg.s		$f14, $f14		# 000e849c:46007387	
				N64.fnc00003824();
				//	lui		t8, $8015		# 000e84a0:3c188015	t8=$80150000
				//	lh		t8, $758a(t8)		# 000e84a4:8718758a	t8=$8015758a
				//	lui		t9, $8015		# 000e84a8:3c198015	t9=$80150000
				//	lh		t9, $7584(t9)		# 000e84ac:87397584	t9=$80157584
				//	lui		t2, $8015		# 000e84b0:3c0a8015	t2=$80150000
				//	lh		t2, $7586(t2)		# 000e84b4:854a7586	t2=$80157586
				//	lui		t3, $8015		# 000e84b8:3c0b8015	t3=$80150000
				//	lh		t3, $7580(t3)		# 000e84bc:856b7580	t3=$80157580
				//	subu		t1, t8, t9		# 000e84c0:03194823	
				//	mtc1		t1, $f18		# 000e84c4:44899000	
				//	subu		t4, t2, t3		# 000e84c8:014b6023	
				//	mtc1		t4, $f16		# 000e84cc:448c8000	
				//	cvt.s.w		$f12, $f18		# 000e84d0:46809320	
				//	subu		t7, zero, v0		# 000e84d4:00027823	
				//	lui		at, $8004		# 000e84d8:3c018004	at=$80040000
				//	sh		t7, $794e(at)		# 000e84dc:a42f794e	[8004794e]
				//	jal		$00003824		# 000e84e0:0c000e09	^ FNC_00003824
				//	cvt.s.w		$f14, $f16		# 000e84e4:468083a0	
				N64.fnc00003824();
				//	lui		t5, $8015		# 000e84e8:3c0d8015	t5=$80150000
				//	lh		t5, $7588(t5)		# 000e84ec:85ad7588	t5=$80157588
				//	lui		at, $8004		# 000e84f0:3c018004	at=$80040000
				//	sh		v0, $7964(at)		# 000e84f4:a4227964	[80047964]
				//	mtc1		t5, $f18		# 000e84f8:448d9000	
				//	lui		at, $8004		# 000e84fc:3c018004	at=$80040000
				//	cvt.s.w		$f4, $f18		# 000e8500:46809120	
				//	beq		zero, zero, $000e8514	# 000e8504:10000003	v __000e8514
				//	swc1		$f4, $7960(at)		# 000e8508:e4247960	[80047960]
		}
		//__000e850c:					# 
		//	jal		$0001cc6c		# 000e850c:0c00731b	^ FNC_0001cc6c
		//	addiu		a0, a0, $4204		# 000e8510:24844204	
		N64.fnc0001cc6c();
		//__000e8514:					# 
		//	jal		$00135f0c		# 000e8514:0c04d7c3	v FNC_00135f0c
		//	nop					# 000e8518:00000000	
		fnc00135f0c();
		//	lui		t6, $8015		# 000e851c:3c0e8015	t6=$80150000
		//	lh		t6, $9404(t6)		# 000e8520:85ce9404	t6=$80149404
		//	lui		at, $8016		# 000e8524:3c018016	at=$80160000
		//	lwc1		$f16, $016c(at)		# 000e8528:c430016c	[8016016c]
		//	mtc1		t6, $f10		# 000e852c:448e5000	
		//	lui		t9, $8015		# 000e8530:3c198015	t9=$80150000
		//	lh		t9, $7590(t9)		# 000e8534:87397590	t9=$80157590
		//	cvt.s.w		$f8, $f10		# 000e8538:46805220	
		//	lui		at, $8015		# 000e853c:3c018015	at=$80150000
		//	lui		t2, $8022		# 000e8540:3c0a8022	t2=$80220000
		//	lui		t1, $8015		# 000e8544:3c098015	t1=$80150000
		//	lui		t6, $8015		# 000e8548:3c0e8015	t6=$80150000
		//	lui		a0, $8006		# 000e854c:3c048006	a0=$80060000
		//	add.s		$f6, $f8, $f16		# 000e8550:46104180	
		//	lui		a1, $8015		# 000e8554:3c058015	a1=$80150000
		//	lui		t4, $8015		# 000e8558:3c0c8015	t4=$80150000
		//	lui		t5, $8015		# 000e855c:3c0d8015	t5=$80150000
		//	(cop1_s)	$0200348d		# 000e8560:4600348d	
		//	mfc1		t8, $f18		# 000e8564:44189000	
		//	nop					# 000e8568:00000000	
		//	sh		t8, $9404(at)		# 000e856c:a4389404	[80149404]
		//	addiu		at, zero, $0003		# 000e8570:24010003	at=$00000003
		//	bne		t9, at, $000e858c	# 000e8574:17210005	v __000e858c
		//	nop					# 000e8578:00000000	
		//	lh		t1, $7582(t1)		# 000e857c:85297582	t1=$80157582
		//	mtc1		t1, $f4			# 000e8580:44892000	
		//	beq		zero, zero, $000e8594	# 000e8584:10000003	v __000e8594
		//	cvt.s.w		$f0, $f4		# 000e8588:46802020	
		//__000e858c:					# 
		//	lui		at, $8004		# 000e858c:3c018004	at=$80040000
		//	lwc1		$f0, $7958(at)		# 000e8590:c4207958	[80047958]
		//__000e8594:					# 
		//	lw		t2, $2a70(t2)		# 000e8594:8d4a2a70	t2=$80222a70
		//	lui		at, $4080		# 000e8598:3c014080	at=$40800000
		//	mtc1		at, $f10		# 000e859c:44815000	
		//	mtc1		t2, $f16		# 000e85a0:448a8000	
		//	or		t3, zero, zero		# 000e85a4:00005825	
		//	mul.s		$f8, $f0, $f10		# 000e85a8:460a0202	
		//	cvt.s.w		$f6, $f16		# 000e85ac:468081a0	
		//	(cop1_s)	$0206403c		# 000e85b0:4606403c	
		//	nop					# 000e85b4:00000000	
		//	bc1f		$000e85c4		# 000e85b8:45000002	v __000e85c4
		//	nop					# 000e85bc:00000000	
		//	addiu		t3, zero, $0001		# 000e85c0:240b0001	t3=$00000001
		//__000e85c4:					# 
		//	lh		t4, $9404(t4)		# 000e85c4:858c9404	t4=$80149404
		//	lh		t5, $7574(t5)		# 000e85c8:85ad7574	t5=$80157574
		//	lh		t6, $7576(t6)		# 000e85cc:85ce7576	t6=$80157576
		//	mtc1		t4, $f18		# 000e85d0:448c9000	
		//	mtc1		t5, $f4			# 000e85d4:448d2000	
		//	mtc1		t6, $f16		# 000e85d8:448e8000	
		//	cvt.s.w		$f18, $f18		# 000e85dc:468094a0	
		//	lui		at, $8015		# 000e85e0:3c018015	at=$80150000
		//	sw		t3, $93cc(at)		# 000e85e4:ac2b93cc	[801493cc]
		//	lui		at, $3f80		# 000e85e8:3c013f80	at=$3f800000
		//	mtc1		at, $f6			# 000e85ec:44813000	
		//	cvt.s.w		$f10, $f4		# 000e85f0:468022a0	
		//	lw		a0, $bb20(a0)		# 000e85f4:8c84bb20	
		//	mfc1		a2, $f18		# 000e85f8:44069000	
		//	lui		a3, $3faa		# 000e85fc:3c073faa	a3=$3faa0000
		//	ori		a3, a3, $aaab		# 000e8600:34e7aaab	a3=$3faaaaab
		//	cvt.s.w		$f8, $f16		# 000e8604:46808220	
		//	swc1		$f10, $0010(sp)		# 000e8608:e7aa0010	
		//	addiu		a1, a1, $93d6		# 000e860c:24a593d6	
		//	swc1		$f6, $0018(sp)		# 000e8610:e7a60018	
		//	addiu		a0, a0, $0180		# 000e8614:24840180	
		//	jal		$0001e590		# 000e8618:0c007964	^ FNC_0001e590
		//	swc1		$f8, $0014(sp)		# 000e861c:e7a80014	
		N64.guPerspective();
		//	lui		v1, $8006		# 000e8620:3c038006	v1=$80060000
		//	addiu		v1, v1, $bb2c		# 000e8624:2463bb2c	v1=$8005bb2c
		//	lw		v0, $0000(v1)		# 000e8628:8c620000	v0=$8005bb2c
		//	lui		t8, $bc00		# 000e862c:3c18bc00	t8=$bc000000
		//	ori		t8, t8, $000e		# 000e8630:3718000e	t8=$bc00000e
		//	addiu		t7, v0, $0008		# 000e8634:244f0008	t7=$801d3a08
		//	sw		t7, $0000(v1)		# 000e8638:ac6f0000	[8005bb2c]
		//	lui		t9, $8015		# 000e863c:3c198015	t9=$80150000
		//	sw		t8, $0000(v0)		# 000e8640:ac580000	[801d3a00]
		//	lhu		t9, $93d6(t9)		# 000e8644:973993d6	t9=$801493d6
		//	lui		t2, $0103		# 000e8648:3c0a0103	t2=$01030000
		//	ori		t2, t2, $0040		# 000e864c:354a0040	t2=$01030040
		//	sw		t9, $0004(v0)		# 000e8650:ac590004	[801d3a04]
		//	lw		v0, $0000(v1)		# 000e8654:8c620000	v0=$8005bb2c
		//	lui		t3, $8006		# 000e8658:3c0b8006	t3=$80060000
		//	lui		t0, $1fff		# 000e865c:3c081fff	t0=$1fff0000
		//	addiu		t1, v0, $0008		# 000e8660:24490008	t1=$801d3a08
		//	sw		t1, $0000(v1)		# 000e8664:ac690000	[8005bb2c]
		//	sw		t2, $0000(v0)		# 000e8668:ac4a0000	[801d3a00]
		//	lw		t3, $bb20(t3)		# 000e866c:8d6bbb20	t3=$8005bb20
		//	ori		t0, t0, $ffff		# 000e8670:3508ffff	t0=$1fffffff
		//	lui		t7, $0101		# 000e8674:3c0f0101	t7=$01010000
		//	addiu		t4, t3, $0180		# 000e8678:256c0180	t4=$801ce890
		//	and		t5, t4, t0		# 000e867c:01886824	
		//	sw		t5, $0004(v0)		# 000e8680:ac4d0004	[801d3a04]
		//	lw		v0, $0000(v1)		# 000e8684:8c620000	v0=$8005bb2c
		//	ori		t7, t7, $0040		# 000e8688:35ef0040	t7=$01010040
		//	lui		t8, $8006		# 000e868c:3c188006	t8=$80060000
		//	addiu		t6, v0, $0008		# 000e8690:244e0008	t6=$801d3a08
		//	sw		t6, $0000(v1)		# 000e8694:ac6e0000	[8005bb2c]
		//	sw		t7, $0000(v0)		# 000e8698:ac4f0000	[801d3a00]
		//	lw		t8, $bb20(t8)		# 000e869c:8f18bb20	t8=$8005bb20
		//	lui		a0, $8004		# 000e86a0:3c048004	a0=$80040000
		//	addiu		t9, t8, $0200		# 000e86a4:27190200	t9=$801ce910
		//	and		t1, t9, t0		# 000e86a8:03284824	
		//	sw		t1, $0004(v0)		# 000e86ac:ac490004	[801d3a04]
		//	lh		a0, $7950(a0)		# 000e86b0:84847950	a0=$80047950
		//	addiu		a0, a0, $4000		# 000e86b4:24844000	
		//	andi		t2, a0, $ffff		# 000e86b8:308affff	
		//	jal		$0001d980		# 000e86bc:0c007660	^ FNC_0001d980
		//	or		a0, t2, zero		# 000e86c0:01402025	
		N64.sins();
		//	mtc1		v0, $f18		# 000e86c4:44829000	
		//	lui		at, $40e0		# 000e86c8:3c0140e0	at=$40e00000
		//	mtc1		at, $f17		# 000e86cc:44818800	
		//	cvt.s.w		$f4, $f18		# 000e86d0:46809120	
		//	mtc1		zero, $f16		# 000e86d4:44808000	
		//	lui		a0, $8004		# 000e86d8:3c048004	a0=$80040000
		//	lh		a0, $7950(a0)		# 000e86dc:84847950	a0=$80047950
		//	lui		at, $8003		# 000e86e0:3c018003	at=$80030000
		//	(cop1_s)	$020022a1		# 000e86e4:460022a1	
		//	addiu		a0, a0, $4000		# 000e86e8:24844000	
		//	(cop1)		$02305203		# 000e86ec:46305203	
		//	andi		t3, a0, $ffff		# 000e86f0:308bffff	
		//	or		a0, t3, zero		# 000e86f4:01602025	
		//	(cop1)		$022041a0		# 000e86f8:462041a0	
		//	jal		$0001d950		# 000e86fc:0c007654	^ FNC_0001d950
		//	swc1		$f6, $1404(at)		# 000e8700:e4261404	
		N64.coss();
		//	mtc1		v0, $f18		# 000e8704:44829000	
		//	lui		at, $40e0		# 000e8708:3c0140e0	at=$40e00000
		//	mtc1		at, $f17		# 000e870c:44818800	
		//	cvt.s.w		$f4, $f18		# 000e8710:46809120	
		//	mtc1		zero, $f16		# 000e8714:44808000	
		//	lw		t4, $0038(sp)		# 000e8718:8fac0038	
		//	lui		at, $8003		# 000e871c:3c018003	at=$80030000
		//	lw		t8, $0038(sp)		# 000e8720:8fb80038	
		//	lui		a1, $8015		# 000e8724:3c058015	a1=$80150000
		//	(cop1_s)	$020022a1		# 000e8728:460022a1	
		//	addiu		a1, a1, $93c0		# 000e872c:24a593c0	a1=$801493c0
		//	(cop1)		$02305203		# 000e8730:46305203	
		//	lui		a2, $8015		# 000e8734:3c068015	a2=$80150000
		//	lui		a3, $8015		# 000e8738:3c078015	a3=$80150000
		//	lui		t0, $8015		# 000e873c:3c088015	t0=$80150000
		//	addiu		t0, t0, $93c4		# 000e8740:250893c4	t0=$801493c4
		//	addiu		a3, a3, $93bc		# 000e8744:24e793bc	a3=$801493bc
		//	addiu		a2, a2, $93c8		# 000e8748:24c693c8	a2=$801493c8
		//	lw		ra, $002c(sp)		# 000e874c:8fbf002c	
		//	(cop1)		$022041a0		# 000e8750:462041a0	
		//	swc1		$f6, $140c(at)		# 000e8754:e426140c	
		//	lh		t5, $003c(t4)		# 000e8758:858d003c	
		//	lui		at, $8015		# 000e875c:3c018015	at=$80150000
		//	addiu		t6, t5, $f880		# 000e8760:25aef880	
		//	sra		t7, t6, 8		# 000e8764:000e7a03	
		//	sw		t7, $0000(a1)		# 000e8768:acaf0000	
		//	lh		t9, $003e(t8)		# 000e876c:8719003e	
		//	addiu		t3, t7, $0010		# 000e8770:25eb0010	
		//	sw		t3, $0000(a3)		# 000e8774:aceb0000	
		//	addiu		t1, t9, $f880		# 000e8778:2729f880	
		//	sra		t2, t1, 8		# 000e877c:00095203	
		//	addiu		t4, t2, $0010		# 000e8780:254c0010	
		//	sw		t2, $0000(a2)		# 000e8784:acca0000	
		//	sw		t4, $0000(t0)		# 000e8788:ad0c0000	
		//	sll		t5, t7, 8		# 000e878c:000f6a00	
		//	sw		t5, $93b0(at)		# 000e8790:ac2d93b0	[801493b0]
		//	lui		at, $8015		# 000e8794:3c018015	at=$80150000
		//	sll		t6, t2, 8		# 000e8798:000a7200	
		//	sw		t6, $93b8(at)		# 000e879c:ac2e93b8	[801493b8]
		//	lw		t7, $0000(a3)		# 000e87a0:8cef0000	
		//	lui		at, $8015		# 000e87a4:3c018015	at=$80150000
		//	sll		t8, t7, 8		# 000e87a8:000fc200	
		//	sw		t8, $93ac(at)		# 000e87ac:ac3893ac	[801493ac]
		//	lw		t9, $0000(t0)		# 000e87b0:8d190000	
		//	lui		at, $8015		# 000e87b4:3c018015	at=$80150000
		//	addiu		sp, sp, $0038		# 000e87b8:27bd0038	
		//	sll		t1, t9, 8		# 000e87bc:00194a00	
		//	jr		ra			# 000e87c0:03e00008	
		//	sw		t1, $93b4(at)		# 000e87c4:ac2993b4	[801493b4]
	}

	// RAM 000e87c8
	static void updateCamera()
	{
		//	lui		a0, $8004		# 000e87c8:3c048004	a0=$80040000
		//	lh		a0, $794e(a0)		# 000e87cc:8484794e	a0=$8004794e
		//	addiu		sp, sp, $ffe8		# 000e87d0:27bdffe8	
		//	sw		ra, $0014(sp)		# 000e87d4:afbf0014	
		//	subu		a0, zero, a0		# 000e87d8:00042023	
		//	sll		t6, a0, 16		# 000e87dc:00047400	
		//	jal		$000b33bc		# 000e87e0:0c02ccef	^ FNC_000b33bc
		//	sra		a0, t6, 16		# 000e87e4:000e2403	
		fnc000b33bc(((0 - x8004794e) << 16) >>> 16);
		//	lui		t8, $8015		# 000e87e8:3c188015	t8=$80150000
		//	lh		t8, $7f68(t8)		# 000e87ec:87187f68	t8=$80157f68
		//	lui		a0, $8015		# 000e87f0:3c048015	a0=$80150000
		//	lui		t9, $8015		# 000e87f4:3c198015	t9=$80150000
		//	blez		t8, $000e881c		# 000e87f8:1b000008	v __000e881c
		//	nop					# 000e87fc:00000000	
		if (x80157f68 > 0)
		{
			//	jal		$000e82ac		# 000e8800:0c03a0ab	^ FNC_000e82ac
			//	addiu		a0, a0, $7f08		# 000e8804:24847f08	a0=$80157f08
			fnc000e82ac(0x80157f08);
			//	lui		a0, $8015		# 000e8808:3c048015	a0=$80150000
			//	jal		$00071e88		# 000e880c:0c01c7a2	^ FNC_00071e88
			//	addiu		a0, a0, $7f08		# 000e8810:24847f08	a0=$80157f08
			fnc00071e88(0x80157f08);
			//	beq		zero, zero, $000e8884	# 000e8814:1000001b	v __000e8884
			//	lw		ra, $0014(sp)		# 000e8818:8fbf0014	
		}
		else
		{
			//__000e881c:					# 
			//	lh		t9, $7590(t9)		# 000e881c:87397590	t9=$80157590
			//	lui		t0, $8015		# 000e8820:3c088015	t0=$80150000
			//	bne		t9, zero, $000e8844	# 000e8824:17200007	v __000e8844
			//	nop					# 000e8828:00000000	
			if (x80157590 == 0 && x80157f96 != 0)
			{
				//	lh		t0, $7f96(t0)		# 000e882c:85087f96	t0=$80157f96
				//	lui		a0, $8016		# 000e8830:3c048016	a0=$80160000
				//	beq		t0, zero, $000e8844	# 000e8834:11000003	v __000e8844
				//	nop					# 000e8838:00000000	
				//	jal		$00132740		# 000e883c:0c04c9d0	v FNC_00132740
				//	addiu		a0, a0, $0080		# 000e8840:24840080	a0=$80160080
				fnc00132740(0x80160080);
			}
			//__000e8844:					# 
			//	lui		a0, $8016		# 000e8844:3c048016	a0=$80160000
			//	lui		a1, $8005		# 000e8848:3c058005	a1=$80050000
			//	lw		a1, $2b2c(a1)		# 000e884c:8ca52b2c	a1=$80052b2c
			//	jal		$00132980		# 000e8850:0c04ca60	v FNC_00132980
			//	addiu		a0, a0, $0080		# 000e8854:24840080	a0=$80160080
			fnc00132980(0x80160080);
			//	lui		t1, $8015		# 000e8858:3c098015	t1=$80150000
			//	lh		t1, $7590(t1)		# 000e885c:85297590	t1=$80157590
			//	lui		a0, $8005		# 000e8860:3c048005	a0=$80050000
			//	beq		t1, zero, $000e8874	# 000e8864:11200003	v __000e8874
			//	nop					# 000e8868:00000000	
			if (x80157590 != 0)
			{
				//	jal		$000e82ac		# 000e886c:0c03a0ab	^ FNC_000e82ac
				//	lw		a0, $2b2c(a0)		# 000e8870:8c842b2c	a0=$80052b2c
				fnc000e82ac();
			}
			//__000e8874:					# 
			//	lui		a0, $8005		# 000e8874:3c048005	a0=$80050000
			//	jal		$00071e88		# 000e8878:0c01c7a2	^ FNC_00071e88
			//	lw		a0, $2b2c(a0)		# 000e887c:8c842b2c	a0=$80052b2c
			fnc00071e88(x80052b2c);
			//	lw		ra, $0014(sp)		# 000e8880:8fbf0014	
		}
		//__000e8884:					# 
		//	addiu		sp, sp, $0018		# 000e8884:27bd0018	
		//	jr		ra			# 000e8888:03e00008	
		//	nop					# 000e888c:00000000	
	}

	// RAM GREECE
	static void fnc000e8890() {
		fnc001330e4();
	}

	/// Possible file boundary

	// RAM 000e88c0
	static void StripModelToBones() {
		N64.fnc00012000();
		N64.fnc0001cc6c("ERROR: StripModelToBones array overflow, size %d, max %d\n");
	}

	// RAM 000e8a00
	static void guess_castVehicleShadows() {
		N64.fnc0001cc6c();
		N64.fnc000039d0();
		N64.guPerspective();
		N64.fnc0001cc6c();
		StripModelToBones();
		fnc000ef14c();
		N64.fnc0001cc6c();
		N64.fnc000039d0();
		StripModelToBones();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	/// SetupForShadows ?
	static void fnc000e94b8() {
	}

	// RAM GREECE
	static void fnc000e95bc() {
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc000e9868() {
	}

	// RAM GREECE
	static void fnc000e988c() {
		N64.sins();
		N64.coss();
		fnc000b84d0();
		fnc000e95bc();
	}

	// RAM GREECE
	/// StopDrawingShadows ?
	static void fnc000ea088() {
	}

	// RAM GREECE
	/// DisplayVehicleShadows ?
	static void fnc000ea12c() {
		fnc000703b0();
		fnc000b93ac();
		fnc000e988c();
	}

	// RAM GREECE
	static void fnc000ea280() {
	}

	// RAM GREECE
	static void fnc000ea298() {
	}

	// RAM GREECE
	static void fnc000ea2b0() {
	}

	// RAM 000ea2bc
	static void guess_attemptDoAnimation() {
		fnc000eb534();
	}

	// RAM GREECE
	static void fnc000ea2fc() {
		N64.fnc0000cdfc();
		N64.fnc0000cdfc();
		N64.fnc0000d278();
	}

	// RAM GREECE
	static void fnc000ea3e8() {
	}

	// RAM GREECE
	static void fnc000ea40c() {
	}

	// RAM 000ea434
	static void guess_initAnimations() {
		N64.guess_allocateCharacterBuffer();
		N64.guess_allocateCharacterBuffer();
		N64.fnc0000c790();
		fnc000eb534();
		N64.guess_allocateCharacterBuffer();
		N64.guess_allocateCharacterBuffer();
		N64.fnc0000c790();
		fnc000eb534();
	}

	// RAM GREECE
	static void fnc000ea5b8() {
		N64.fnc0000c764();
		N64.fnc0000c764();
		N64.fnc0000c764();
		N64.fnc0000c764();
	}

	// RAM GREECE
	static void fnc000ea604() {
		N64.sqrtf();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc000ea7dc() {
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc000ea8f8() {
		fnc000eb534();
		fnc000eb534();
	}

	// RAM GREECE
	static void fnc000eabe0() {
		fnc000ea604();
		fnc000fafb8();
		N64.sins();
		N64.coss();
	}

	// RAM GREECE
	static void fnc000eadf8() {
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
	}

	// RAM GREECE
	static void fnc000eb05c() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000eb090() {
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000eb0c8() {
		fnc000fb430();
		fnc000fb430();
		N64.cosf();
		N64.sinf();
		N64.sinf();
		N64.cosf();
		fnc000fa690();
		fnc000fb44c();
		fnc000fb484();
	}

	// RAM GREECE
	static void fnc000eb534() {
		N64.fnc0001cc6c();
		N64.fnc0000d71c();
		N64.fnc0000cdfc();
	}

	// RAM GREECE
	static void fnc000eb7cc() {
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
	}

	// RAM GREECE
	static void fnc000eb8a4() {
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
	}

	// RAM GREECE
	static void fnc000eb9b4() {
	}

	// RAM GREECE
	static void fnc000eb9bc() {
	}

	// RAM GREECE
	static void fnc000eb9c4() {
	}

	// RAM GREECE
	static void fnc000eba4c() {
	}

	// RAM GREECE
	static void fnc000eba54() {
		fnc000e0e9c();
		fnc001371b8();
		fnc001371b8();
		N64.fnc000038e0();
		fnc001371b8();
		fnc000def2c();
		fnc001371b8();
	}

	// RAM GREECE
	static void fnc000ebc94() {
		fnc000fb430();
	}

	// RAM GREECE
	static void fnc000ebd5c() {
		N64.fnc00001144();
	}

	// RAM GREECE
	static void fnc000ebd9c() {
		N64.fnc0001cc6c();
		fnc000eb05c();
		fnc000eb090();
	}

	// RAM GREECE
	static void fnc000ebe74() {
		N64.cosf();
		N64.sinf();
		N64.sinf();
		N64.cosf();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc000ec0d0() {
		fnc001164c4();
		fnc001165fc();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000ec330() {
		fnc001164c4();
	}

	// RAM GREECE
	static void fnc000ec3a0() {
	}

	// RAM GREECE
	static void fnc000ec3cc() {
	}

	// RAM GREECE
	static void fnc000ec428() {
	}

	// RAM GREECE
	static void fnc000ec450() {
	}

	// RAM GREECE
	static void fnc000ec468() {
	}

	// RAM GREECE
	static void fnc000ec484() {
		N64.fnc000056d0();
		fnc000fa690();
		N64.fnc000137f0();
		N64.sqrtf();
		fnc000eb534();
		fnc000ed78c();
		fnc000eb534();
		N64.fnc000137f0();
		N64.fnc0000cf4c();
		fnc000fb430();
		N64.fnc0000345c();
		N64.coss();
		N64.sins();
		fnc000b84d0();
		fnc000b84d0();
		fnc000eb05c();
		fnc000eb534();
		fnc000eabe0();
		fnc000ea7dc();
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
		fnc000ea604();
		fnc000eb534();
		fnc000ea604();
		fnc000eb534();
		fnc000ea604();
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
		fnc000ebc94();
		fnc000eb534();
		N64.sqrtf();
		N64.fnc00003824();
		fnc000eb534();
		fnc000eb534();
		N64.fnc00003824();
		fnc000ea8f8();
		fnc000dea08();
		fnc000eb9b4();
		fnc000eb9b4();
		fnc000fb430();
		N64.coss();
		N64.sins();
		fnc000b84d0();
		fnc000eb090();
		fnc000eb534();
		N64.fnc0001cc6c();
		fnc000fb430();
		fnc000fb430();
		fnc00137130();
		fnc000fb430();
		N64.fnc000137f0();
		fnc000ed78c();
	}

	// RAM GREECE
	static void fnc000ed55c() {
	}

	// RAM GREECE
	static void fnc000ed78c() {
		fnc00133e94();
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
		fnc00136198();
		fnc000eb534();
		fnc000eadf8();
		fnc000eb534();
		fnc00118114();
		fnc000eb9b4();
		N64.fnc000153d8();
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
		fnc000eadf8();
		fnc000eb534();
		fnc000eb9b4();
		N64.fnc000153d8();
		fnc000eb9b4();
		fnc000fb44c();
		fnc000fb468();
		fnc000fb484();
		fnc000e35e0();
		N64.fnc00001144();
		fnc000fb44c();
		fnc000fb484();
		fnc000eb534();
		fnc000fd510();
		fnc000fdc30();
		fnc000b99a8();
		fnc000eb534();
		fnc000eb534();
		fnc000eb9b4();
		N64.fnc000153d8();
		fnc000eb9b4();
		fnc000fb44c();
		fnc000fb468();
		fnc000fb484();
		fnc000fb44c();
		fnc000fb484();
		fnc000e35e0();
		N64.fnc00001144();
		fnc000fb44c();
		fnc000fb468();
		fnc000fb484();
		fnc000eb05c();
		fnc000eb534();
		fnc000eb090();
		fnc000eb534();
		fnc000b99a8();
		fnc00136198();
		fnc000eb534();
		N64.fnc0001cc6c();
		N64.fnc0000cf4c();
		fnc000eb534();
		fnc000eb05c();
		N64.sqrtf();
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
		N64.fnc00001144();
		fnc000ed55c();
		fnc000eb534();
		fnc00071148();
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
		N64.fnc0001a068();
		fnc000eb534();
		fnc000eb9b4();
		fnc000eb9bc();
		N64.fnc0001cc6c();
		fnc000ef0b0();
		fnc000eb9c4();
		fnc000eabe0();
		fnc0012b150();
		fnc000eb534();
		fnc000eb534();
		fnc000ea604();
		fnc000eb534();
		fnc000eb7cc();
		fnc000eb8a4();
		N64.fnc0000d8dc();
		N64.fnc0000cf4c();
		N64.fnc0000cf4c();
		N64.fnc0000cf4c();
		fnc000eba54();
	}

	// RAM GREECE
	/// Cont 2 button attempts to use weapon model 0 when changing weapon
	static void fnc000ef0b0()
	{
		//	addiu		sp, sp, $ffd0		# 000ef0b0:27bdffd0	
		//	sw		ra, $0014(sp)		# 000ef0b4:afbf0014	
		//	jal		$00012000		# 000ef0b8:0c004800	^ FNC_00012000
		//	nop					# 000ef0bc:00000000	
		uint address = N64.fnc00012000();
		//	or		v1, v0, zero		# 000ef0c0:00401825	
		//	or		a1, zero, zero		# 000ef0c4:00002825	
		int a1 = 0;
		//	or		a0, zero, zero		# 000ef0c8:00002025	
		//	addiu		v0, sp, $0028		# 000ef0cc:27a20028	
		uint v0 = 0 + 0x28; /// Actually SP not 0
		//	addiu		a2, zero, $ffb8		# 000ef0d0:2406ffb8	a2=$ffffffb8
		do
		{
			//__000ef0d4:					# 
			//	lw		at, $0000(v1)		# 000ef0d4:8c610000	
			int at = GetWord(address);
			//__000ef0d8:					# 
			//	addiu		v1, v1, $0008		# 000ef0d8:24630008	
			address += 8;
			//	addiu		a1, a1, $0001		# 000ef0dc:24a50001	a1=$00000001
			a1++;
			//	sw		at, $0000(v0)		# 000ef0e0:ac410000	
			StoreWord(at, v0);
			//	lw		t8, $fffc(v1)		# 000ef0e4:8c78fffc	
			//	sw		t8, $0004(v0)		# 000ef0e8:ac580004	
			StoreWord(GetWord(address - 4), v0 + 4);
			//	lb		t9, $0028(sp)		# 000ef0ec:83b90028	
			//	bne		t9, a2, $000ef0d4	# 000ef0f0:1726fff8	^ __000ef0d4
			//	addu		a0, a0, t9		# 000ef0f4:00992021	
			//	slti		at, a1, $0039		# 000ef0f8:28a10039	
			//	beql		at, zero, $000ef0d8	# 000ef0fc:5020fff6	^ __000ef0d8
			//	lw		at, $0000(v1)		# 000ef100:8c610000	
		} while (at >> 24 != 0xb8 || a1 >= 0x39);
		//	lui		t0, $8004		# 000ef104:3c088004	t0=$80040000
		//	lhu		t0, $758e(t0)		# 000ef108:9508758e	t0=$8004758e
		//	addiu		at, zero, $f772		# 000ef10c:2401f772	at=$fffff772
		//	lw		ra, $0014(sp)		# 000ef110:8fbf0014	
		//	andi		t1, t0, $2000		# 000ef114:31092000	
		//	beq		t1, zero, $000ef128	# 000ef118:11200003	v __000ef128
		//	nop					# 000ef11c:00000000	
		int result = 0;
		//	beq		zero, zero, $000ef144	# 000ef120:10000008	v __000ef144
		//	or		v0, zero, zero		# 000ef124:00001025	
		//__000ef128:					# 
		//	bne		a0, at, $000ef144	# 000ef128:14810006	v __000ef144
		//	or		v0, zero, zero		# 000ef12c:00001025	
		//	addiu		at, zero, $0038		# 000ef130:24010038	at=$00000038
		//	bne		a1, at, $000ef144	# 000ef134:14a10003	v __000ef144
		//	nop					# 000ef138:00000000	
		//	beq		zero, zero, $000ef144	# 000ef13c:10000001	v __000ef144
		//	addiu		v0, zero, $0001		# 000ef140:24020001	v0=$00000001
		if ((controllerTwoButtonState & N64.Buttons.Z) == 0 && a0 == at && a1 == 0x38)
		{
			result = 1;
		}
		//__000ef144:					# 
		//	jr		ra			# 000ef144:03e00008	
		//	addiu		sp, sp, $0030		# 000ef148:27bd0030	
		return result;
	}


	/// This checks the player modifier and writes values that cause either
	/// normal or evil adam to be rendered
	// RAM GREECE
	static void fnc000ef14c() {
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc0000c81c();
		N64.fnc00011fac();
		N64.fnc0000cc3c();
		fnc000eb9b4();
		fnc000d0614();
		N64.fnc00001144();
		fnc001371b8();
		fnc000eb9bc();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ef650() {
		fnc000eba54();
		N64.fnc0001cc6c();
		fnc000eb534();
		fnc000eb534();
		fnc000eb9c4();
		fnc00087188();
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
		fnc000eb534();
		fnc000eb7cc();
		fnc000eb8a4();
		N64.fnc0000d8dc();
		N64.fnc0000cf4c();
	}

	// RAM GREECE
	static void fnc000ef9f0() {
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc0000cc3c();
	}

	// RAM GREECE
	static void fnc000efc28() {
		fnc0007956c();
	}

	// RAM GREECE
	static void fnc000efcc0() {
	}

	// RAM GREECE
	static void fnc000efe50() {
		N64.fnc000101f0();
	}

	// RAM GREECE
	/// Cutscene stuff
	/// 800EFEB4 is called and triggers cutscenes (may need to be followed by 80013468)
	/// Greece values:
	/// a0 = cutscene code pointer?
	/// 800F1DDC = 0
	/// 802D52C4 = 1
	/// 800F1134 = 4
	/// 802D57A0 = 5
	/// 802D64D0 = 6
	/// 802D6904 = 7
	/// 
	/// a1 = cutscene number
	/// 0 = Alpha Zero landing at stage start
	/// 1 = Bridge lowering
	/// 2 = Beacon launch
	/// 3 = ?
	/// 4 = Destroying Shield Generator
	/// 5 = Raising Atlantis
	/// 6 = Dark Adam blowing up bridge
	/// 7 = Dark Adam blowing up planes
	/// 8 = ?
	/// 9 = ?
	/// 	
	/// a2 = bool, pause gameplay while cutscene active?
	static void fnc000efeb4() {
		fnc000efe50();
		fnc000f0340();
	}

	// RAM GREECE
	/// Cutscene stuff
	static void fnc000effb4() {
		fnc0011d260();
		N64.fnc0001cc6c();
		fnc0011d260();
		N64.fnc0001cc6c();
		fnc0011d260();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000f0094() {
		fnc000f066c();
		N64.fnc00013324();
		fnc000b4050();
	}

	// RAM GREECE
	static void fnc000f0234() {
	}

	// RAM GREECE
	static void fnc000f026c() {
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000f02e4() {
	}

		// RAM GREECE
	static void fnc000f02ec() {
	}

	// RAM GREECE
	static void fnc000f0340() {
		fnc000f02ec();
	}

	// RAM GREECE
	static void fnc000f066c() {
		N64.sinf();
		N64.cosf();
		N64.cosf();
		N64.sinf();
		fnc000f02ec();
		fnc00076fcc();
		fnc000b4050();
	}

	// RAM GREECE
	static void fnc000f1004() {
		N64.fnc00018d7c();
		N64.fnc00018d7c();
		N64.fnc00018d7c();
		N64.fnc00018d7c();
		N64.fnc00018d7c();
		N64.fnc00014a3c();
		fnc000b0710();
		N64.fnc000074bc();
	}

	// RAM GREECE
	static void fnc000f1134() {
		N64.fnc00013468();
		fnc00120634();
		fnc00120634();
		fnc0012b21c();
		fnc000b91c8();
		N64.fnc00014a3c();
		fnc00135d08();
		fnc000cd1f8();
		fnc000cd1f8();
		fnc000cd1f8();
		fnc00135d44();
		fnc000df9c8();
		fnc000df9c8();
		fnc000df9c8();
		fnc000cd2e8();
		fnc000cd2e8();
		fnc000cd2e8();
		fnc000b84d0();
		fnc00135d44();
		fnc000cd2e8();
		fnc000cd2e8();
		fnc000cd2e8();
		fnc000cd390();
		fnc000cd390();
		fnc000cd390();
		fnc000c56a4();
		fnc000c56a4();
		fnc000d05a8();
		fnc000dee5c();
		fnc000dee5c();
		fnc000b99a8();
		fnc000df9c8();
		fnc0012d84c();
		fnc000fdea8();
		fnc0011592c();
		fnc000fd510();
		fnc000fad10();
		fnc000dee5c();
		fnc000dee5c();
		fnc000e35e0();
		fnc000e35e0();
		fnc000da6f0();
		N64.coss();
		N64.sins();
		fnc000d9b14();
		fnc000d9c60();
		N64.fnc00007410();
		fnc000fac90();
	}

	// RAM GREECE
	static void fnc000f1ddc() {
		fnc000b84d0();
		fnc000cd390();
		fnc000cd390();
		fnc000cd390();
		fnc000fb44c();
		fnc000fb484();
		fnc000f9f00();
		fnc000fb468();
		fnc000fb44c();
		fnc000fb484();
		fnc000f9f00();
		fnc000fb468();
		fnc000fb44c();
		fnc000fb484();
		fnc000f9f00();
		fnc000fb468();
		fnc000fb44c();
		fnc000fb484();
		fnc000f9f00();
		fnc000fb468();
		fnc000f0234();
		fnc00120634();
		N64.fnc00013468();
		fnc000fb44c();
		fnc000fb468();
		fnc000fb484();
		fnc000cd1f8();
		fnc000cd1f8();
		fnc000cd1f8();
		fnc00135d44();
		fnc000cd2e8();
		fnc000cd2e8();
		fnc000cd2e8();
		fnc000cd390();
		fnc000cd390();
		fnc000cd390();
		fnc000ec3a0();
		fnc000ec484();
		fnc000eb0c8();
		fnc000b84d0();
		fnc000fb468();
		fnc000fb468();
	}

		// RAM GREECE
	static void fnc000f2888() {
	}

	// RAM GREECE
	static void fnc000f2890() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000f2980() {
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
	}

	// RAM GREECE
	static void fnc000f2d48() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		fnc000f2980();
		fnc000f49a4();
	}

	// RAM GREECE
	static void fnc000f2ed8() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		fnc000f2980();
	}

	// RAM GREECE
	static void fnc000f3038() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000f3190() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000f32ec() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		fnc000c2274();
	}

	// RAM GREECE
	static void fnc000f34ac() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000f3580() {
	}

	// RAM GREECE
	static void fnc000f35ac() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000f3670() {
	}

	// RAM GREECE
	static void fnc000f375c() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000f384c() {
		fnc0011e6fc();
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc000f3990() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		fnc000f384c();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		fnc000f384c();
		fnc000f2980();
		fnc000f49a4();
	}

	// RAM GREECE
	static void fnc000f3ee4() {
	}

	// RAM GREECE
	static void fnc000f3fb4() {
	}

	// RAM GREECE
	static void fnc000f4028() {
		N64.sqrtf();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000f41e0() {
	}

	// RAM GREECE
	static void fnc000f4258() {
		N64.sqrtf();
		N64.fnc00003680();
		N64.fnc00003824();
		N64.cosf();
		N64.sinf();
	}

	// RAM GREECE
	static void fnc000f450c() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.coss();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc000f4748() {
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000f41e0();
		fnc000f41e0();
		fnc000f384c();
		fnc000f384c();
		fnc000f3ee4();
		fnc00137468();
	}

	// RAM GREECE
	static void fnc000f49a4() {
		fnc000f41e0();
		fnc000f41e0();
		fnc000f4748();
		fnc000f4748();
		N64.fnc00003824();
		N64.sqrtf();
		N64.sqrtf();
		fnc000f4258();
		N64.sinf();
		N64.cosf();
	}

	// RAM GREECE
	static void fnc000f4db0() {
		fnc0007a4f8();
		fnc000df848();
		fnc000f3038();
		guess_destroyAlien();
		fnc000f375c();
		N64.fnc0001cc6c();
		fnc000f375c();
		fnc000f375c();
		fnc000f375c();
		fnc000f2980();
		fnc000f41e0();
		fnc000f41e0();
		fnc000f49a4();
	}

	// RAM GREECE
	static void fnc000f54ac() {
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000f554c() {
		N64.fnc00003824();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.coss();
	}

	// RAM GREECE
	static void fnc000f63d0() {
		fnc000f54ac();
		N64.fnc00003824();
		N64.sins();
		N64.coss();
	}

	// RAM GREECE
	static void fnc000f7790() {
		fnc000f54ac();
		N64.fnc00003824();
		N64.sins();
		N64.coss();
	}

	// RAM GREECE
	static void fnc000f842c() {
		N64.coss();
		fnc0011e6fc();
		N64.sins();
		N64.fnc000039d0();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		fnc000f4258();
		N64.sins();
		N64.coss();
		fnc000f7790();
		fnc000f554c();
		fnc000f63d0();
		fnc000df038();
		fnc000c1ecc();
		fnc0011e6fc();
		fnc000df038();
	}

	// RAM GREECE
	static void fnc000f8b24() {
		fnc000b93ac();
		N64.guLookAtReflect();
		fnc000f842c();
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000f7790();
		fnc000f554c();
		fnc000f63d0();
	}

	// RAM GREECE
	static void fnc000f9118() {
		fnc0011e6fc();
		fnc000b93ac();
		fnc000b84d0();
		fnc000e95bc();
		N64.coss();
		N64.sins();
		fnc000b84d0();
		fnc0011e6fc();
		fnc0011e6fc();
		fnc0011e6fc();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
	}

	// RAM GREECE
	/// DrawLegsShadows ?
	static void fnc000f97fc() {
		fnc000f9118();
	}

	// RAM 000f98c0
	static void drawLegs() {
		fnc000f8b24();
	}

	// RAM GREECE
	static void fnc000f9c40() {
	}

	// RAM GREECE
	static void fnc000f9c50() {
	}

	// RAM GREECE
	static void fnc000f9c88() {
	}

	// RAM GREECE
	static void fnc000f9ca8() {
	}

	// RAM GREECE
	static void fnc000f9cb0() {
		fnc000f9c40();
		fnc000f9c40();
	}

	// RAM GREECE
	static void fnc000f9d24() {
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc000f9d60() {
		fnc000b85cc();
		fnc0011e6fc();
	}

	// RAM GREECE
	static void fnc000f9e0c() {
		fnc000b85cc();
		fnc0011e788();
	}

	// RAM GREECE
	static void fnc000f9ec4() {
		fnc000b85cc();
	}

	// RAM GREECE
	static void fnc000f9f00() {
		fnc000b85cc();
	}

	// RAM GREECE
	static void fnc000f9f64() {
		fnc000f9d60();
	}

	// RAM GREECE
	static void fnc000f9fac() {
		fnc000f9d60();
	}

	// RAM GREECE
	static void fnc000fa018() {
		N64.coss();
		N64.sins();
		fnc000f9d60();
		fnc000f9d60();
		N64.coss();
		N64.sins();
		fnc000f9d60();
		fnc000f9d60();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc000fa40c() {
		N64.coss();
		N64.sins();
		fnc000b85cc();
		fnc000b85cc();
		fnc000f9cb0();
		fnc000f9cb0();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc000fa690() {
		N64.coss();
		N64.sins();
		fnc000b85cc();
		fnc000b85cc();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc000fa7f0() {
		N64.coss();
		N64.sins();
		fnc000b85cc();
		fnc000b85cc();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc000faa08() {
	}

	// RAM GREECE
	static void fnc000fab8c() {
	}

	// RAM GREECE
	static void fnc000fab9c() {
		fnc000b84d0();
		fnc000b84d0();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000fac90() {
		fnc000b0d10();
	}

	// RAM GREECE
	static void fnc000fad10() {
	}

	// RAM GREECE
	static void fnc000fadf8() {
	}

	// RAM GREECE
	static void fnc000fae4c() {
	}

	// RAM GREECE
	static void fnc000fae60() {
	}

	// RAM GREECE
	static void fnc000fae84() {
		fnc000fae60();
	}

	// RAM GREECE
	static void fnc000faf74() {
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000fafb8() {
	}

	// RAM GREECE
	static void fnc000fafe8() {
	}

	// RAM GREECE
	static void fnc000fb014() {
		N64.coss();
		N64.coss();
	}

	// RAM GREECE
	static void fnc000fb098() {
		N64.sins();
		N64.coss();
	}

	// RAM GREECE
	static void fnc000fb11c() {
		fnc000fb014();
		fnc000fb098();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc000fb160() {
		fnc000fb014();
		fnc000fb098();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc000fb238() {
		fnc001371b8();
		fnc000e0e9c();
	}

	// RAM GREECE
	static void fnc000fb3a0() {
	}

	// RAM GREECE
	static void fnc000fb3c4() {
	}

	// RAM GREECE
	static void fnc000fb3e8() {
	}

	// RAM GREECE
	static void fnc000fb40c() {
	}

	// RAM GREECE
	static void fnc000fb430() {
	}

	// RAM GREECE
	static void fnc000fb44c() {
	}

	// RAM GREECE
	static void fnc000fb468() {
	}

	// RAM GREECE
	static void fnc000fb484() {
	}

	// RAM GREECE
	static void fnc000fb4a0() {
	}

	// RAM GREECE
	static void fnc000fb504() {
		fnc00128504();
		fnc00128504();
		N64.fnc00003824();
		fnc000f9c50();
		N64.sqrtf();
		N64.fnc00003824();
		fnc000f9c50();
		N64.coss();
		fnc000f9c50();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		fnc0012b150();
	}

	// RAM GREECE
	static void fnc000fc1cc() {
		N64.fnc0001a650();
		N64.fnc0001a650();
	}

	// RAM GREECE
	static void fnc000fc434() {
	}

	// RAM GREECE
	static void fnc000fc568() {
	}

	// RAM GREECE
	static void fnc000fc7e0() {
		fnc000b325c();
	}

	// RAM GREECE
	static void fnc000fc90c() {
		fnc000fc7e0();
		fnc000fb44c();
		fnc000fb484();
	}

	// RAM GREECE
	static void fnc000fca5c() {
		N64.fnc00006dac();
		N64.sqrtf();
		fnc000fae84();
		fnc000fb44c();
		fnc000fb484();
		fnc0011e6fc();
		fnc000fb468();
		fnc000fc90c();
		fnc000fad10();
		fnc000fd510();
		fnc000fb504();
	}

	// RAM GREECE
	static void fnc000fd0ec() {
	}

	// RAM GREECE
	static void fnc000fd168() {
	}

	// RAM GREECE
	static void fnc000fd1e4() {
	}

	// RAM GREECE
	static void fnc000fd218() {
		N64.fnc000065a4();
	}

	// RAM GREECE
	static void fnc000fd2ac() {
	}

	// RAM GREECE
	static void fnc000fd2f8() {
	}

	// RAM GREECE
	static void fnc000fd344() {
	}

	// RAM GREECE
	static void fnc000fd390() {
		fnc000fb3e8();
	}

	// RAM GREECE
	static void fnc000fd410() {
		fnc000fd2ac();
		fnc000fd2f8();
		fnc000fd390();
		fnc000fd344();
	}

	// RAM GREECE
	static void fnc000fd4d4() {
	}

	// RAM GREECE
	static void fnc000fd510() {
		fnc000e60cc();
		fnc000e5e3c();
		fnc000fd410();
		N64.fnc00001144();
		N64.fnc0001a650();
		fnc00139778();
		fnc000e5cf4();
		fnc001371b8();
		fnc001371b8();
	}

	// RAM GREECE
	static void fnc000fd858() {
		fnc000e60cc();
		fnc000e5e3c();
		fnc000fad10();
		fnc000fb44c();
		fnc000fb484();
		fnc0011e6fc();
		fnc000fb468();
	}

	// RAM GREECE
	static void fnc000fdb00() {
		N64.fnc000156c8();
		fnc000e7b20();
	}

	// RAM GREECE
	static void fnc000fdb58() {
		fnc00124170();
		fnc000fdd8c();
		fnc000d6adc();
		fnc000b8f30();
		N64.fnc000072cc();
		N64.fnc00006dac();
	}

	// RAM GREECE
	static void fnc000fdc30() {
		fnc000ae190();
		fnc000fdb00();
	}

	// RAM GREECE
	static void fnc000fdd48() {
		fnc000fadf8();
		fnc000fdc30();
	}

	// RAM GREECE
	static void fnc000fdd8c() {
		fnc000fdd48();
	}

	// RAM GREECE
	static void fnc000fde00() {
	}

	// RAM GREECE
	static void fnc000fdea8() {
		fnc000e60cc();
		fnc000e5e3c();
		fnc000fde00();
		fnc000fb430();
		fnc000fb468();
		N64.coss();
		N64.sins();
		fnc000fb44c();
		fnc000fb484();
		N64.coss();
		N64.sins();
		fnc000fb44c();
		N64.sins();
		N64.coss();
		fnc000fb484();
		fnc00115604();
		fnc000f9d60();
		fnc000fb3e8();
		fnc00110fb4();
		fnc0010ef40();
		fnc000fb44c();
		fnc000fb468();
		fnc000fb484();
		guess_initAnimations();
		fnc000ebd9c();
		fnc000fb3e8();
		fnc000fb468();
		fnc000fd510();
		fnc001396a8();
		fnc000e5cf4();
		fnc000fd4d4();
		fnc001371b8();
		fnc00123ac4();
	}

	// RAM GREECE
	static void fnc000fe910() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000fe954() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000fe9ac() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000fea2c() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000feaa0() {
		N64.fnc000038e0();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000feb04() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000feb5c() {
		N64.fnc000039d0();
		fnc000fa40c();
		fnc000fa40c();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000fec78() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000fecd4() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000fed60() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000fedbc() {
		N64.fnc00022f90();
		fnc000ca5ec();
		N64.sins();
		N64.coss();
		fnc000ca5ec();
		fnc000ca5ec();
		fnc00137130();
		fnc00137130();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ff164() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ff1c4() {
		N64.fnc000065a4();
		N64.fnc000039d0();
		N64.fnc00022ff0();
	}

	// RAM GREECE
	static void fnc000ff258() {
		N64.fnc000038e0();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ff2bc() {
		N64.fnc000038e0();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ff334() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ff390() {
		N64.fnc000039d0();
		N64.fnc00022ff0();
		N64.fnc00022f90();
		N64.fnc00022f90();
		N64.fnc00003824();
		N64.sqrtf();
		N64.fnc00003824();
		N64.fnc00022f90();
		N64.sqrtf();
		N64.fnc00003824();
		N64.fnc00022f90();
	}

	// RAM GREECE
	static void fnc000ff5a8() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ff604() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ff664() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ff6c0() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ff720() {
		N64.fnc000039d0();
		N64.fnc00022ff0();
	}

	// RAM GREECE
	static void fnc000ff794() {
		N64.fnc000039d0();
		N64.fnc00022ff0();
	}

	// RAM GREECE
	static void fnc000ff80c() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ff88c() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ff90c() {
		N64.fnc000039d0();
		N64.fnc00022ff0();
	}

	// RAM GREECE
	static void fnc000ff984() {
		N64.fnc000039d0();
		N64.fnc00022ff0();
	}

	// RAM GREECE
	static void fnc000ffa00() {
		N64.fnc000039d0();
		N64.fnc00022ff0();
		N64.fnc00022f90();
		N64.fnc00022f90();
		N64.fnc00003824();
		N64.sqrtf();
		N64.fnc00003824();
		N64.fnc00022f90();
		N64.fnc00022f90();
	}

	// RAM GREECE
	static void fnc000ffc3c() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ffcb8() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc000ffd28() {
		N64.fnc000039d0();
		N64.sins();
		N64.coss();
		N64.fnc000039d0();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc00100114() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc001001b4() {
	}

	// RAM GREECE
	static void fnc001005cc() {
		fnc00109960();
		fnc000fb484();
		fnc000fb430();
	}

	// RAM GREECE
	static void fnc00100638() {
	}

	// RAM 0010065c
	static void drawVehicles() {
		fnc001001b4();
		fnc000fc568();
		fnc000ea5b8();
		N64.guLookAtReflect();
		fnc00109960();
		fnc0012d700();
		fnc0012d700();
		fnc0012d700();
		fnc0012d700();
		fnc0012d700();
		fnc0012d700();
		fnc0012d700();
		fnc000f9d24();
		fnc000b93ac();
		fnc000710d4();
		fnc000fb3e8();
		fnc000fb40c();
		fnc000ef14c();
		fnc000fb3e8();
		fnc000fb40c();
		fnc000ffd28();
		fnc00100114();
		N64.fnc000039d0();
		fnc000ff604();
		fnc000ff5a8();
		fnc000ff6c0();
		fnc000ff664();
		fnc000fe910();
		level.Start();
		level.Start();
		N64.fnc000039d0();
		fnc000ff258();
		fnc00070fb8();
		fnc00070fb8();
	}

	// RAM 00101c14
	/// Vehicles in the process of exploding (and more ..?)
	static void drawDeadVehicles() {
		fnc000b93ac();
		fnc000ffd28();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc00101ef4() {
		N64.fnc000039d0();
		fnc000fe910();
		level.Start();
		level.Start();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc001022f4() {
		N64.coss();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.sqrtf();
		fnc000fb430();
		N64.fnc00003824();
		fnc000f9c50();
		fnc000fb430();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.sqrtf();
		N64.fnc00003824();
		fnc000f9c50();
	}

	// RAM GREECE
	static void fnc00102600() {
		N64.coss();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.sqrtf();
		fnc000fb430();
		N64.fnc00003824();
		fnc000f9c50();
		fnc000fb430();
	}

	// RAM GREECE
	static void fnc001027e8() {
		N64.coss();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.sqrtf();
		N64.sqrtf();
		N64.fnc00003824();
		N64.fnc00003824();
		fnc000fb430();
		fnc000f9c50();
		fnc000fb430();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc00102a0c() {
		N64.coss();
		N64.coss();
		N64.coss();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.sqrtf();
		N64.sqrtf();
		N64.fnc00003824();
		N64.fnc00003824();
		fnc000fb430();
		fnc000f9c50();
		fnc000fb430();
	}

	// RAM GREECE
	static void fnc00102d00() {
		fnc000fb3e8();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc00102ddc() {
		N64.coss();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		fnc000fb3e8();
	}

	// RAM GREECE
	static void fnc00102fa4() {
		fnc000f9f64();
	}

	// RAM GREECE
	static void fnc00103308() {
	}

	// RAM GREECE
	static void fnc00103760() {
		fnc000fafb8();
		fnc000fb3c4();
		fnc000fb3e8();
		fnc000fb40c();
		N64.sqrtf();
		fnc000fde00();
		fnc00102d00();
		fnc00102d00();
		fnc00103308();
		fnc000f9f64();
		fnc000fde00();
	}

	// RAM GREECE
	static void fnc00103d18() {
		fnc00103760();
	}

	// RAM GREECE
	static void fnc00103dd0() {
		N64.fnc0001a650();
		N64.fnc0001a650();
	}

	// RAM GREECE
	/// Do vehicle acceleration?
	static void fnc00103e54() {
		N64.sqrtf();
		fnc00103dd0();
		N64.coss();
		N64.sins();
		fnc000fb430();
		fnc000fb11c();
		N64.fnc00001144();
		N64.fnc00001144();
		N64.fnc00001144();
		fnc001371b8();
	}

	// RAM GREECE
	static void fnc001047c8() {
		fnc00103dd0();
		fnc0011de60();
		fnc000f9fac();
		fnc0011de60();
		N64.fnc00001144();
		N64.fnc00001144();
		N64.sins();
		N64.coss();
		N64.sins();
		fnc001027e8();
		N64.sins();
		N64.sins();
		N64.coss();
		fnc001027e8();
		fnc000fb430();
	}

	// RAM GREECE
	static void fnc00104e00() {
		fnc000f9f00();
		fnc00103dd0();
		N64.sins();
		N64.coss();
		N64.sins();
		fnc00102d00();
		N64.sins();
		N64.sins();
		N64.coss();
		fnc00102d00();
		fnc000fb430();
	}

	// RAM 001052e8
	/// The button press check is Z to shoot the gun.
	/// Skiiping this call stops adam responding to input
	static void guess_DoAdamActions() {
		fnc000fb3e8();
		fnc00104e00();
		fnc001047c8();
		fnc00103e54();
		fnc000ec484();
		fnc00128504();
		N64.coss();
		N64.sins();
		fnc000ce040();
		N64.coss();
		N64.sins();
		fnc000ce100();
		N64.fnc0000726c();
		N64.fnc0000345c();
		N64.fnc0001a650();
		N64.ButtonIsNewlyPressed();
		fnc000fde00();
		fnc000fc1cc();
		fnc00102ddc();
		N64.coss();
		N64.sins();
		fnc0012b150();
		fnc00102ddc();
		N64.coss();
		N64.sins();
		fnc0012b150();
		fnc000fb11c();
		N64.fnc00003824();
		fnc000f9c50();
		fnc000f9c50();
		fnc00102ddc();
		fnc000fb3a0();
		fnc00102ddc();
		fnc000fb430();
		fnc000fb430();
	}

	// RAM GREECE
	static void fnc00106628() {
		N64.fnc00014508();
		fnc000b325c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000b325c();
		fnc000b325c();
		fnc000b325c();
		fnc000b325c();
		fnc000b325c();
		fnc000b325c();
		fnc000b325c();
		fnc000b325c();
		fnc000b325c();
		fnc000b325c();
		fnc000fc7e0();
		N64.fnc00003824();
		fnc000f9c50();
		fnc000f9c50();
		fnc000f9c50();
		fnc000f9c50();
		fnc000f9c50();
		fnc000f9c50();
		fnc000fb3a0();
		fnc000fb3a0();
		fnc000fb3a0();
	}

	// RAM GREECE
	static void fnc00107184() {
		N64.fnc00003824();
		N64.sins();
		N64.coss();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.fnc00003824();
		fnc000f9c50();
	}

	// RAM GREECE
	static void fnc001073fc() {
		fnc000fdd8c();
		fnc000fdd8c();
		fnc00122524();
		fnc000fb160();
		fnc000fb160();
		fnc000fb11c();
		fnc000fb11c();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.sqrtf();
		N64.fnc00003824();
		fnc00102ddc();
		fnc00102ddc();
		N64.fnc00003824();
		fnc00102ddc();
		fnc00102ddc();
		fnc00107184();
		fnc00107184();
	}

	// RAM GREECE
	static void fnc00107890() {
		fnc000fa018();
		fnc00123e90();
		fnc000fdb58();
	}

	// RAM GREECE
	static void fnc00107970() {
		fnc001371b8();
		fnc000fb430();
		fnc000fb238();
		fnc0011de60();
		fnc000fa018();
		fnc000fa018();
		fnc0011de60();
		fnc000f9c50();
		fnc000f9c50();
		fnc00123e90();
		fnc00123e90();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000fb014();
		fnc000fb098();
		N64.sqrtf();
		fnc000c541c();
	}

	// RAM GREECE
	static void fnc00107ebc() {
		N64.coss();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		fnc000fb3e8();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		fnc000fb44c();
		fnc000fb484();
	}

	// RAM GREECE
	static void fnc00108138() {
		fnc0011e6fc();
	}

	// RAM GREECE
	static void fnc001081ac() {
		fnc0011e6fc();
	}

	// RAM GREECE
	static void fnc001081f0() {
		fnc000fae60();
		fnc000fae60();
		fnc000e60cc();
		fnc000e5e3c();
		N64.coss();
		N64.sins();
		fnc000fb3e8();
		N64.fnc000065a4();
		N64.fnc00003824();
		N64.coss();
		N64.sins();
		fnc000fb430();
		fnc000fb430();
		fnc000f9c50();
		fnc000f9c50();
		fnc000fb430();
		fnc000f9c50();
	}

	// RAM GREECE
	static void fnc0010895c() {
		fnc000f9c50();
		fnc000fb238();
	}

	// RAM GREECE
	static void fnc00108b48() {
	}

	// RAM GREECE
	static void fnc00108ca8() {
	}

	// RAM GREECE
	static void fnc00108d80() {
		fnc000fae60();
		fnc000f9c50();
		fnc000f9c50();
		fnc000f9c50();
		fnc000fb430();
		N64.coss();
		N64.sins();
		fnc000f9ec4();
		fnc000fb3e8();
		fnc000fb468();
		fnc000f9ec4();
		fnc000faa08();
		fnc000fb11c();
		fnc000fb3e8();
		fnc001371b8();
	}

	// RAM GREECE
	static void fnc00109370() {
		fnc001081f0();
		fnc00123e90();
		fnc001081f0();
		fnc000fb3e8();
		fnc000fb430();
		fnc000fb468();
	}

	// RAM GREECE
	static void fnc001095bc() {
		N64.sins();
		N64.coss();
		fnc00102ddc();
		N64.sins();
		N64.coss();
		fnc00102ddc();
	}

	// RAM GREECE
	static void fnc001098e8() {
		N64.fnc000056d0();
	}

	// RAM GREECE
	static void fnc00109960() {
	}

	// RAM GREECE
	static void fnc00109988() {
	}

	// RAM GREECE
	static void fnc0010999c() {
		fnc000f9d60();
	}

	// RAM GREECE
	static void fnc00109b34() {
		fnc000fb430();
	}

	// RAM GREECE
	static void fnc00109b74() {
		fnc000c3bd8();
		fnc00123e90();
		fnc00123e90();
		fnc00123e90();
	}

	// RAM GREECE
	static void fnc00109c84() {
		fnc000fae60();
		fnc001098e8();
		fnc00109b74();
		fnc000fb430();
		fnc00108138();
		fnc00108138();
		fnc000f9c50();
		fnc000f9c50();
		fnc001095bc();
		fnc000fb430();
		fnc000fb430();
		fnc000fb11c();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.sqrtf();
		N64.fnc00003824();
		N64.coss();
		N64.sins();
		N64.fnc00003824();
		N64.sins();
		N64.sins();
		N64.sins();
		N64.sins();
		N64.sins();
		N64.sins();
		N64.sins();
		N64.sins();
		N64.sqrtf();
		fnc000fb430();
		N64.fnc00003824();
		fnc000fb430();
		N64.sqrtf();
		fnc000fb11c();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		fnc000e75a0();
		fnc000e75a0();
		fnc000e75a0();
		fnc000e75a0();
		fnc000e75a0();
		fnc000e75a0();
		fnc000fb11c();
		fnc000f9d24();
		N64.fnc000156c8();
		fnc001371b8();
	}

	// RAM GREECE
	static void fnc0010ada4() {
		fnc0011d260();
		fnc0011d260();
		fnc000fae60();
		fnc0011d260();
		N64.fnc0000726c();
		N64.fnc0000726c();
		fnc001371b8();
		fnc001371b8();
		fnc00137130();
		fnc00137130();
		N64.sins();
		fnc000fb44c();
		N64.coss();
		fnc000fb468();
		fnc000fb484();
		N64.coss();
	}

	// RAM GREECE
	static void fnc0010b5c8() {
		fnc000fb430();
	}

	// RAM GREECE
	static void fnc0010b60c() {
		fnc000f9c50();
		fnc000f9c50();
		fnc000fb430();
		fnc001098e8();
		fnc001095bc();
	}

	// RAM GREECE
	static void fnc0010b804() {
		fnc000fb11c();
		fnc00122524();
		fnc000fb160();
		fnc00078828();
		N64.fnc00014180();
	}

	// RAM GREECE
	static void fnc0010b970() {
		fnc00078fe0();
		fnc000792e0();
		N64.fnc00014180();
	}

	// RAM GREECE
	static void fnc0010ba04() {
		fnc000fdea8();
		fnc00109960();
		N64.sins();
		fnc000fb40c();
		fnc000fb11c();
		fnc000e1d48();
		fnc000f9c50();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000fdea8();
		N64.fnc0000345c();
	}

	// RAM GREECE
	static void fnc0010c14c() {
		N64.fnc0001a650();
		N64.fnc000153d8();
		N64.fnc000065a4();
		N64.fnc000156c8();
		N64.fnc000153d8();
		N64.fnc000153d8();
		fnc00128428();
		fnc000df038();
		fnc000fae84();
		fnc000fb44c();
		fnc000fb468();
		fnc000fb484();
		fnc000fb430();
		fnc000fad10();
		fnc000fd510();
		fnc00107ebc();
	}

	// RAM GREECE
	static void fnc0010c454() {
		fnc000fd510();
		fnc000e7b20();
	}

	// RAM GREECE
	static void fnc0010c4ec() {
		fnc000fae60();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		fnc000e60cc();
		N64.sins();
		N64.coss();
	}

	// RAM GREECE
	static void fnc0010ca38() {
		fnc000fae60();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		fnc000e60cc();
		N64.sins();
		N64.coss();
	}

	// RAM GREECE
	static void fnc0010cf7c() {
	}

	// RAM GREECE
	static void fnc0010d0c4() {
	}

	// RAM GREECE
	static void fnc0010d164() {
	}

	// RAM GREECE
	static void fnc0010d200() {
	}

	// RAM GREECE
	static void fnc0010d234() {
	}

	// RAM GREECE
	static void fnc0010d37c() {
	}

	// RAM GREECE
	static void fnc0010d41c() {
	}

	// RAM GREECE
	static void fnc0010d4b8() {
	}

	// RAM GREECE
	static void fnc0010d4ec() {
		N64.fnc00003824();
		fnc0010c4ec();
		N64.fnc00003824();
		N64.fnc00003824();
		N64.fnc00003824();
		fnc000f9c50();
		fnc000f9c50();
	}

	// RAM GREECE
	static void fnc0010dc00() {
		N64.sqrtf();
		N64.coss();
		N64.sins();
		fnc0010cf7c();
		N64.coss();
		N64.sins();
		fnc0010cf7c();
		N64.sins();
		N64.coss();
		fnc0010cf7c();
		N64.sins();
		N64.coss();
		fnc0010cf7c();
	}

	// RAM GREECE
	static void fnc0010e040() {
		N64.sqrtf();
		N64.coss();
		N64.sins();
		fnc0010d234();
		N64.coss();
		N64.sins();
		fnc0010d234();
		N64.sins();
		N64.coss();
		fnc0010d234();
		N64.sins();
		N64.coss();
		fnc0010d234();
	}

	// RAM GREECE
	static void fnc0010e480() {
		fnc0010dc00();
		fnc0010dc00();
		fnc00102d00();
	}

	// RAM GREECE
	static void fnc0010e684() {
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.coss();
		fnc0010cf7c();
	}

	// RAM GREECE
	static void fnc0010ea54() {
		fnc0010ef40();
		fnc0010ef40();
		fnc0010ef40();
		fnc0010ef40();
		fnc000f9d24();
	}

	// RAM GREECE
	static void fnc0010ed84() {
		N64.sqrtf();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc0010ef40() {
	}

	// RAM GREECE
	static void fnc0010f218() {
		N64.fnc0001a650();
		fnc00123e90();
		fnc001371b8();
		fnc000cc7b0();
		fnc000dea08();
		fnc00123e90();
		fnc000dea08();
		fnc00123e90();
		fnc00123e90();
		fnc00123e90();
	}

	// RAM GREECE
	static void fnc0010f5d8() {
		N64.sqrtf();
		fnc00123e90();
		N64.sqrtf();
		fnc00123e90();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc0010f72c() {
		fnc0011d260();
	}

	// RAM GREECE
	static void fnc0010f834() {
		N64.sqrtf();
		fnc00102d00();
	}

	// RAM GREECE
	static void fnc0010f93c() {
		fnc0010f834();
	}

	// RAM GREECE
	static void fnc0010f96c() {
		fnc0010f834();
	}

	// RAM GREECE
	static void fnc0010f9b4() {
		fnc000b84d0();
		fnc0010f834();
	}

	// RAM GREECE
	static void fnc0010fabc() {
	}

	// RAM GREECE
	static void fnc0010fac8() {
	}

	// RAM GREECE
	static void fnc0010fafc() {
		fnc0010f93c();
		fnc0010f834();
		fnc0010f96c();
		fnc0010f9b4();
		fnc000fb468();
		fnc000fdb58();
		fnc000fb468();
		fnc000fdb58();
		fnc000fb11c();
		fnc000fb11c();
		fnc000fb160();
		fnc00088154();
		fnc00083ef4();
		fnc00083ef4();
		fnc000fb430();
		fnc000fb11c();
		fnc00088154();
	}

	// RAM GREECE
	static void fnc0010ff84() {
		fnc0007e608();
		fnc0010e684();
		fnc00080d98();
		fnc0010fac8();
		fnc0010fac8();
	}

	// RAM GREECE
	static void fnc00110144() {
		fnc000b0d10();
		fnc000bd688();
		fnc000b0df4();
		fnc000c4938();
		fnc000ebd5c();
	}

	// RAM GREECE
	static void fnc001103b4() {
		fnc0010dc00();
		fnc000a8e18();
		N64.fnc000153d8();
		fnc000cbd1c();
	}

	// RAM GREECE
	static void fnc0011049c() {
		fnc0012dda8();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010cf7c();
		fnc0010cf7c();
		fnc0010cf7c();
		fnc0010cf7c();
		fnc0012df90();
		fnc0010fac8();
		fnc0010fac8();
	}

	// RAM GREECE
	static void fnc00110818() {
		fnc000fae60();
		fnc000fadf8();
		fnc0010ca38();
		fnc0007e500();
		fnc001073fc();
		fnc0010e040();
		fnc001073fc();
		fnc0010dc00();
		fnc001073fc();
		fnc0010d234();
		fnc001073fc();
		fnc0010cf7c();
		fnc001073fc();
		fnc00124118();
		fnc0010fac8();
		fnc0010fac8();
		fnc00076088();
		N64.fnc0001a650();
		N64.fnc0001a650();
		fnc000e60cc();
		fnc000ebe74();
		fnc0010fac8();
	}

	// RAM GREECE
	static void fnc00110fb4() {
		fnc000fae60();
		fnc0010c4ec();
		fnc001103b4();
		fnc0011049c();
		fnc0010cf7c();
		fnc000fb430();
		fnc00078b58();
		fnc000f9d24();
		fnc0010dc00();
		fnc0010b804();
		fnc00078bc8();
		fnc0010fac8();
		fnc00078b58();
		fnc0010ea54();
		fnc0010b970();
		fnc00078bc8();
		fnc0010fac8();
		fnc0010f72c();
		fnc00117508();
		fnc00116554();
		fnc0010cf7c();
		fnc0010fac8();
		fnc000fb430();
		fnc0011c080();
		fnc0011de60();
		fnc000f9d60();
		fnc000f9d60();
		fnc0011de60();
		fnc0011d260();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010fac8();
		fnc001081ac();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010fac8();
		fnc001081ac();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010fac8();
		fnc0010fac8();
		fnc00108138();
		fnc0010fac8();
		fnc0010fac8();
		fnc00108138();
		fnc0010fac8();
		fnc0010fac8();
		fnc0011d260();
		fnc0011c080();
		fnc000fb430();
		fnc0010ff84();
		fnc0010e480();
		fnc00110144();
		fnc000f9d24();
		fnc000faa08();
		fnc000b84d0();
		fnc00115824();
		fnc00110818();
	}

	// RAM GREECE
	static void fnc0011290c() {
		fnc0011de60();
		fnc000fa40c();
		fnc000fa40c();
		fnc000fa7f0();
		fnc000fa018();
		fnc000fa018();
		fnc000fa018();
		fnc0011de60();
	}

	// RAM GREECE
	static void fnc00112a64() {
	}

	// RAM GREECE
	static void fnc00112a98() {
		fnc000fb44c();
		fnc000fb484();
		fnc0011e6fc();
		fnc000fb468();
		fnc00112a64();
		fnc000fb44c();
		fnc000fb484();
		fnc0011e6fc();
		fnc000fb468();
		fnc000fac90();
		fnc000fad10();
	}

	// RAM GREECE
	static void fnc00112f98() {
		fnc000fb430();
		N64.coss();
		N64.coss();
		fnc000fb3c4();
		N64.sins();
		fnc000fb3e8();
		N64.sins();
		N64.coss();
		fnc000fb40c();
		fnc001098e8();
		fnc00109b74();
	}

	// RAM GREECE
	static void fnc001131d4() {
		fnc000fb44c();
		fnc000fb468();
		fnc000fb484();
	}

	// RAM GREECE
	static void fnc00113248() {
		fnc001131d4();
		fnc000fdea8();
		fnc000fdd8c();
		fnc000e0f4c();
		fnc00135d44();
	}

	// RAM GREECE
	static void fnc00113310() {
		fnc0011de60();
		fnc000f9d60();
		fnc0011de60();
		fnc000f9d24();
		fnc000fb468();
		fnc00107890();
		fnc00107970();
		fnc000fb468();
		fnc00107890();
		fnc00107970();
		fnc00123e90();
		fnc000f9f00();
		fnc000f9f00();
		fnc000fb468();
		fnc000fb238();
		fnc000e1f70();
		fnc001372b4();
	}

	// RAM GREECE
	static void fnc00113808() {
		fnc0010fabc();
		fnc00110fb4();
		fnc00113248();
		fnc000fb44c();
		fnc000fb484();
		fnc00110fb4();
		fnc000fb430();
		fnc00107890();
		fnc000fb44c();
		fnc000fb484();
		fnc00110fb4();
		fnc000fb44c();
		fnc000fb484();
		fnc00110fb4();
		fnc000fde00();
		fnc000fde00();
		fnc000fb430();
		fnc0010fafc();
		fnc000fdb58();
		fnc001131d4();
		fnc000fb430();
		fnc000fb430();
		fnc000fb430();
		fnc00115604();
	}

	// RAM GREECE
	static void fnc00113cec() {
		fnc000fad10();
		level.Start();
		fnc001165fc();
		N64.coss();
		N64.sins();
		N64.coss();
		fnc000fb44c();
		fnc000fb468();
		N64.sins();
		fnc000fb484();
		fnc000fb430();
		fnc000fb430();
		level.Start();
		fnc000f9d24();
		fnc0010f218();
		fnc000e0e9c();
		fnc000cc7b0();
		fnc0010f218();
		fnc0010f218();
		fnc00123e90();
		fnc001371b8();
		fnc000dea08();
		N64.fnc0000726c();
		fnc00112a98();
		N64.fnc000073b8();
		fnc0010ba04();
		fnc0010c14c();
		fnc0010c454();
		N64.fnc00014508();
		fnc000fdea8();
		fnc000e0f4c();
		fnc00135d44();
		fnc000fdd8c();
		fnc00103d18();
		fnc00102fa4();
		fnc00113808();
		N64.fnc00015674();
		fnc00123e90();
		fnc000d8fa0();
		fnc000d8fa0();
		fnc000d8fa0();
		fnc000d8fa0();
		fnc0010ada4();
		fnc0010b5c8();
		fnc00106628();
		N64.fnc00014508();
		fnc0011290c();
		N64.sins();
		N64.sins();
		fnc00108b48();
		fnc00108ca8();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000e0f4c();
		N64.fnc000038e0();
		fnc0010895c();
		fnc000f9fac();
		fnc00113248();
		fnc00108d80();
		fnc001081f0();
		fnc00109370();
		fnc00109c84();
		fnc00109c84();
		fnc0010b60c();
		fnc001081f0();
		fnc0010895c();
		fnc00109c84();
		fnc0010b60c();
		fnc000eb0c8();
		fnc000e1f70();
		fnc00107ebc();
		fnc0010999c();
		fnc00113310();
		fnc0010c4ec();
		fnc0010cf7c();
		fnc00113808();
		fnc000fb44c();
		fnc000fb484();
		N64.fnc0001cc6c();
		fnc00123ac4();
		fnc00115cc0();
		fnc000fad10();
	}

	// RAM GREECE
	static void fnc00115604() {
		fnc000fae60();
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc00115730() {
		fnc000b84d0();
		fnc000fae60();
	}

	// RAM GREECE
	static void fnc00115824() {
		fnc000b84d0();
		fnc000fae60();
	}

	// RAM GREECE
	static void fnc0011592c() {
		fnc000fae84();
		N64.fnc000065a4();
		fnc000fb44c();
		fnc000fb484();
		fnc000b84d0();
		fnc000fb468();
		fnc000fad10();
	}

	// RAM GREECE
	static void fnc00115a74() {
		level.Start();
		N64.fnc000038d4();
		fnc000fae84();
		N64.fnc000038e0();
		fnc000fb44c();
		N64.fnc000038e0();
		fnc000fb484();
		fnc000f9d24();
		fnc000fb468();
		N64.fnc000038e0();
		fnc000fad10();
	}

	// RAM GREECE
	static void fnc00115cc0() {
		fnc000fb44c();
		fnc000fb484();
		fnc000fb44c();
		fnc000fb484();
		fnc000fb44c();
		fnc000fb484();
		fnc000fb430();
	}

	// RAM GREECE
	static void fnc00115f20() {
		fnc0011d260();
		fnc0011d260();
		fnc0011d260();
	}

	// RAM GREECE
	static void fnc0011619c() {
		N64.sinf();
		N64.cosf();
	}

	// RAM GREECE
	static void fnc0011629c() {
		fnc0011d260();
		fnc0011cc40();
	}

	// RAM GREECE
	static void fnc001164c4() {
	}

	// RAM GREECE
	static void fnc00116538() {
	}

	// RAM GREECE
	static void fnc00116554() {
	}

	// RAM GREECE
	static void fnc001165fc() {
		fnc001164c4();
		fnc00116554();
	}

	// RAM GREECE
	static void fnc00116724() {
	}

	// RAM GREECE
	static void fnc00116768() {
	}

	// RAM GREECE
	static void fnc00116784() {
		N64.fnc000047fc();
		N64.fnc000047fc();
	}

	// RAM GREECE
	static void fnc001168e8() {
	}

	// RAM GREECE
	static void fnc00116934() {
	}

	// RAM 0011694c
	static void guess_initBuildingsDoors() {
		fnc00116784();
		fnc000b316c();
		fnc00118114();
		fnc0011c594();
		fnc0011c4d4();
		fnc0011c42c();
		fnc0011cda4();
		fnc0011629c();
		fnc0011629c();
		fnc0011d260();
		fnc0011d260();
		fnc0011d260();
		fnc001168e8();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc00117464() {
	}

	// RAM GREECE
	static void fnc001174fc() {
	}

	/// Is the return value from this used to determine how close a building is?
	/// And if it should be drawn?
	// RAM GREECE
	static void fnc00117508() {
	}

	// RAM GREECE
	static void fnc001176b0() {
	}

	// RAM GREECE
	static void fnc001176dc() {
	}

	// RAM GREECE
	static void fnc001176f4() {
		fnc001165fc();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		N64.coss();
		N64.sins();
		guess_destroyAlien();
	}

	// RAM GREECE
	static void fnc00117a4c() {
		fnc000fdd48();
		fnc000fae84();
		fnc001165fc();
		N64.coss();
		fnc000fb44c();
		fnc000fb468();
		N64.sins();
		fnc000fb484();
		fnc000fd510();
		fnc000fdd48();
		N64.coss();
		N64.sins();
		fnc00112a98();
		N64.coss();
		N64.sins();
		fnc00112a98();
		fnc001176f4();
		N64.coss();
		fnc000fb44c();
		N64.sins();
		fnc000fb484();
		fnc000efeb4();
	}

	// RAM GREECE
	static void fnc00117f10() {
	}

	// RAM GREECE
	static void fnc00117f34() {
		fnc001164c4();
		fnc001165fc();
		fnc00117f10();
		N64.fnc0000ef00("Yaw != -1", "src/buildings.c", 0x469);
		N64.coss();
		fnc000fb44c();
		fnc000fb468();
		N64.sins();
		fnc000fb484();
		fnc001176b0();
		fnc00117a4c();
	}

	// RAM GREECE
	static void fnc00118114() {
	}

	// RAM GREECE
	static void fnc00118148() {
	}

	// RAM GREECE
	static void fnc0011815c() {
		fnc001176b0();
		N64.fnc0000726c();
		N64.fnc0001cc6c();
		N64.fnc0000726c();
		N64.fnc0001a650();
		N64.fnc0001cc6c();
		N64.fnc0000726c();
		fnc000ec0d0();
	}

	// RAM GREECE
	static void fnc001183ec() {
		fnc0011815c();
	}

	// RAM GREECE
	static void fnc00118418() {
		fnc0011815c();
	}

	// RAM GREECE
	static void fnc00118454() {
	}

	// RAM GREECE
	static void fnc00118460() {
		fnc000f9c40();
		fnc000f9c40();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc001184e4() {
	}

	// RAM GREECE
	static void fnc001184f4() {
	}

	// RAM GREECE
	static void fnc00118534() {
	}

	// RAM GREECE
	static void fnc0011853c() {
		fnc001184f4();
	}

	// RAM GREECE
	static void fnc001185f8() {
	}

	// RAM GREECE
	static void fnc0011862c() {
	}

	// RAM GREECE
	static void fnc00118664() {
	}

	// RAM GREECE
	static void fnc00118670() {
		fnc00118460();
		N64.fnc0000726c();
		fnc00118460();
		N64.fnc0000726c();
		fnc00118460();
		N64.fnc0000726c();
	}

	// RAM 00118774
	static void displayBuildings() {
		fnc00117508();
		fnc00115f20();
		fnc0011d260();
		N64.fnc0000726c();
		fnc00118670();
		fnc001185f8();
		fnc001184f4();
		fnc0011853c();
		fnc000b960c();
		fnc001184f4();
		fnc000710d4();
		fnc0011d438();
		N64.fnc000039d0();
		N64.sins();
		N64.coss();
		N64.sins();
		N64.fnc000039d0();
		fnc00116554();
		fnc00116554();
		fnc00116554();
		fnc00118114();
		fnc0012d700();
		fnc0012d700();
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc000039d0();
		fnc00116554();
		fnc00070fb8();
		fnc001185f8();
		fnc00115f20();
	}

	// RAM GREECE
	static void fnc0011a2a0() {
		N64.fnc0000726c();
		fnc0011d260();
		fnc000fae84();
		fnc000fb44c();
		fnc000fb44c();
		fnc000fb468();
		fnc000fb484();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000f9fac();
		fnc00129354();
	}

	// RAM GREECE
	static void fnc0011a604() {
		fnc0011a2a0();
		fnc001176b0();
		fnc00117a4c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc0000726c();
		level.Start();
		N64.fnc000072cc();
		fnc00117464();
		fnc000ad240();
		fnc000b84d0();
		N64.fnc00028100();
		fnc000dea08();
		fnc00135d44();
		fnc000c541c();
		fnc000c541c();
		fnc0011d030();
		fnc000ae190();
		fnc000b84d0();
		fnc0012d84c();
		fnc0012d84c();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
		fnc000a8a68();
		fnc000d249c();
		fnc00117464();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000dea08();
		fnc0011bea0();
		fnc000ad3bc();
		fnc001371b8();
		N64.fnc0000726c();
		fnc001371b8();
		fnc001371b8();
	}

	// RAM GREECE
	static void fnc0011b3f0() {
		fnc00118114();
		fnc001165fc();
	}

	// RAM GREECE
	static void fnc0011b454() {
		fnc00118114();
		fnc001165fc();
		N64.sins();
		N64.coss();
	}

	// RAM GREECE
	static void fnc0011b584() {
		fnc000765c4();
		guess_destroyAlien();
		guess_destroyAlien();
	}

	// RAM GREECE
	static void fnc0011b6c0() {
		fnc00117508();
	}

	// RAM GREECE
	static void fnc0011ba80() {
		fnc00117508();
	}

	// RAM GREECE
	static void fnc0011bb94() {
		N64.sqrtf();
		fnc000b84d0();
		fnc00117464();
		N64.fnc000038e0();
		fnc000df038();
		fnc00135d44();
		fnc000d3614();
		fnc00117464();
		fnc000df038();
		fnc000dee5c();
		fnc00135d44();
		fnc000b325c();
		fnc000dea08();
		fnc000b8d80();
	}

	// RAM GREECE
	static void fnc0011bea0() {
		fnc0011bb94();
	}

	// RAM GREECE
	static void fnc0011bf7c() {
		fnc000d249c();
	}

	// RAM GREECE
	static void fnc0011c080() {
		fnc0011bb94();
	}

	// RAM GREECE
	static void fnc0011c0cc() {
	}

	// RAM GREECE
	static void fnc0011c25c() {
		fnc00117508();
	}

	// RAM GREECE
	static void fnc0011c338() {
		fnc00117508();
	}

	// RAM GREECE
	static void fnc0011c42c() {
		fnc0011c25c();
		fnc0011c25c();
	}

	// RAM GREECE
	static void fnc0011c4d4() {
	}

	// RAM GREECE
	static void fnc0011c594() {
	}

	// RAM GREECE
	static void fnc0011c680() {
	}

	// RAM GREECE
	static void fnc0011c6a8() {
	}

	// RAM GREECE
	static void fnc0011c738() {
	}

	// RAM GREECE
	static void fnc0011c770() {
		fnc0011c25c();
		fnc0011c25c();
	}

	// RAM GREECE
	static void fnc0011c8e8() {
		fnc0011b3f0();
	}

	// RAM GREECE
	static void fnc0011c9d8() {
		fnc0011b3f0();
	}

	// RAM GREECE
	static void fnc0011cbd8() {
	}

	// RAM GREECE
	static void fnc0011cc20() {
	}

	// RAM GREECE
	static void fnc0011cc40() {
		fnc0011cbd8();
		fnc0011cc20();
		fnc000b316c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc0011cda4() {
		fnc0011cc40();
		fnc0011cc40();
		fnc0011d260();
		fnc0011cc40();
	}

	// RAM GREECE
	static void fnc0011d030() {
		fnc000b316c();
	}

	// RAM GREECE
	static void fnc0011d19c() {
		fnc0011cc20();
		fnc0011cbd8();
	}

	// RAM GREECE
	static void fnc0011d260() {
		fnc0011d19c();
	}

	// RAM GREECE
	static void fnc0011d2dc() {
		fnc0011d260();
	}

	// RAM GREECE
	static void fnc0011d438() {
	}

	// RAM GREECE
	static void fnc0011d4fc() {
		N64.fnc0001cc6c();
		N64.fnc000039d0();
		N64.guOrtho();
		StripModelToBones();
		StripModelToBones();
		StripModelToBones();
		StripModelToBones();
		StripModelToBones();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc0011dba0() {
		fnc0011d4fc();
	}

	// RAM GREECE
	static void fnc0011de60() {
	}

	// RAM GREECE
	static void fnc0011de6c() {
		fnc000b84d0();
		fnc0011d260();
		N64.fnc0000726c();
		fnc00115f20();
		fnc00118670();
		fnc0011619c();
		fnc000b84d0();
	}

	// RAM GREECE
	static void fnc0011e6fc() {
		fnc0011d260();
		fnc000b84d0();
		fnc0011de6c();
	}

	// RAM GREECE
	static void fnc0011e788() {
		fnc0011e6fc();
	}

	// RAM GREECE
	static void fnc0011e9f4() {
	}

	// RAM GREECE
	static void fnc0011ea44() {
		fnc000e0d28();
	}

	// RAM GREECE
	static void fnc0011eabc() {
		N64.fnc000072cc();
	}

	// RAM GREECE
	static void fnc0011eaf8() {
		N64.fnc000072cc();
	}

	// RAM GREECE
	static void fnc0011eb40() {
		N64.fnc000039d0();
		N64.sins();
		N64.coss();
		fnc0012d700();
		fnc0012d700();
	}

	// RAM GREECE
	static void fnc0011efbc() {
		N64.fnc0000726c();
		fnc001371b8();
		N64.fnc000072cc();
	}

	// RAM GREECE
	static void fnc0011f094() {
		fnc0011d260();
		fnc0012d700();
		fnc000c3bd8();
	}

	// RAM GREECE
	static void fnc0011f22c() {
	}

	// RAM GREECE
	static void fnc0011f244() {
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc0000726c();
		fnc000f9c40();
		fnc000f9c40();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc0012d700();
		fnc0012d700();
		fnc0012d700();
		fnc0012d700();
	}

	// RAM GREECE
	static void fnc0011f818() {
		N64.fnc0000726c();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc0011f9a0() {
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc0011fa90() {
		fnc00116554();
		fnc00116554();
		fnc0012d700();
	}

	// RAM GREECE
	static void fnc0011fb98() {
		fnc0011fa90();
		fnc0011fa90();
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc0011fc64() {
		fnc0011fa90();
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc0011fcf4() {
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc0011fd40() {
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc0011fd90() {
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc0011fde0() {
		fnc0011fa90();
		fnc0011fa90();
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc0011fea8() {
		fnc0011fa90();
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc0011ff30() {
		fnc0011fa90();
		fnc0011fa90();
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc0011fff8() {
		fnc0011fa90();
		fnc0011fa90();
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc001200b8() {
		fnc0011fa90();
		fnc0011fa90();
		fnc0011fa90();
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc001201c0() {
		fnc0011fa90();
		fnc0011fa90();
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc0012028c() {
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc001202dc() {
		N64.fnc00002ab4();
	}

	// RAM GREECE
	static void fnc00120334() {
		fnc0011fa90();
		fnc0012d700();
	}

	// RAM GREECE
	static void fnc00120414() {
		fnc0011fa90();
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc001204a4() {
		fnc0011fa90();
		fnc0011fa90();
		fnc0011fa90();
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc001205ac() {
		fnc0011fa90();
		fnc0011fa90();
	}

	// RAM GREECE
	static void fnc00120634() {
	}

	// RAM GREECE
	static void fnc00120660() {
	}

	// RAM GREECE
	static void fnc00120674() {
	}

	// RAM GREECE
	static void fnc00120688() {
	}

	// RAM GREECE
	static void fnc0012069c() {
	}

	// RAM GREECE
	static void fnc001206b0() {
		fnc00109960();
		fnc0011d260();
		fnc0011d260();
	}

	// RAM GREECE
	static void fnc00120bc4() {
		N64.fnc000039d0();
		fnc001206b0();
	}

	// RAM GREECE
	static void fnc00120d6c() {
		N64.sins();
		N64.sins();
	}

	// RAM GREECE
	static void fnc0012101c() {
		fnc000df038();
		fnc0012d808();
		N64.fnc000072cc();
	}

	// RAM GREECE
	static void fnc00121128() {
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc0000726c();
		fnc001371b8();
		fnc001371b8();
		N64.fnc0000726c();
		fnc001371b8();
		fnc001371b8();
		fnc0012d700();
		fnc0012d700();
		fnc0012d700();
		fnc0012d700();
	}

	// RAM GREECE
	static void fnc001219a4() {
		fnc0011d260();
		fnc00102d00();
		fnc0012d808();
	}

	// RAM GREECE
	static void fnc001219f4() {
		fnc0011d260();
		fnc0012d84c();
		N64.fnc000072cc();
	}

	// RAM GREECE
	static void fnc00121a64() {
		fnc0011d260();
		fnc0011fa90();
		N64.fnc0000726c();
		fnc0012d84c();
		fnc000df038();
		fnc000df038();
		N64.fnc000039d0();
		fnc0012d700();
		fnc0012d700();
	}

	// RAM GREECE
	static void fnc00121eb4() {
		N64.sins();
		N64.coss();
		N64.sins();
		N64.fnc000039d0();
		N64.fnc000039d0();
		N64.fnc00022a50();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc00122244() {
		fnc000b99a8();
		fnc000d16bc();
	}

	// RAM GREECE
	static void fnc00122320() {
	}

	// RAM GREECE
	static void fnc00122348() {
	}

	// RAM GREECE
	static void fnc0012235c() {
	}

	// RAM GREECE
	static void fnc001223b0() {
		fnc000fafb8();
		N64.fnc00003824();
		N64.fnc00003824();
		fnc000e0764();
	}

	// RAM GREECE
	static void fnc00122524() {
		fnc001223b0();
		fnc00124118();
	}

	// RAM GREECE
	static void fnc001225c4() {
	}

	// RAM GREECE
	static void fnc001226f8() {
		N64.fnc00003824();
		N64.sqrtf();
		N64.sins();
		N64.sins();
		N64.sqrtf();
		N64.fnc00003824();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sins();
		fnc001225c4();
		fnc000c21f0();
		fnc000dea08();
		fnc000c21f0();
		fnc000c21f0();
		fnc000c21f0();
		fnc000da450();
		fnc000da450();
		fnc000dea08();
		fnc000de9b8();
		fnc000c541c();
		fnc000dea08();
		fnc000de9b8();
		fnc000dea08();
		fnc000c541c();
		fnc000de9b8();
		fnc000c2d50();
		fnc000d49cc();
		fnc000d5424();
		fnc000d7624();
		fnc000d7ef8();
		fnc000d7ef8();
		fnc000da6f0();
		fnc000da6f0();
		fnc000da6f0();
		fnc000da260();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc001236f0() {
		fnc000b84d0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc001226f8();
	}

	// RAM GREECE
	static void fnc001238dc() {
		fnc000c3288();
		fnc000d9c60();
		fnc000d76a8();
		fnc000d7fb4();
		fnc000d4a78();
		fnc000d5588();
		fnc000d9c60();
	}

	// RAM GREECE
	static void fnc00123ac4() {
		N64.fnc000038e0();
		fnc000df038();
		N64.fnc0001cc6c();
		fnc001371b8();
		fnc00133260();
		N64.fnc00006dac();
		fnc0009c458();
		fnc000ae190();
		N64.fnc000038e0();
		fnc001371b8();
		fnc000c7924();
		N64.fnc0001cc6c();
		fnc000d6adc();
		N64.fnc000038e0();
		fnc000df038();
		fnc000fdd8c();
		fnc000fdea8();
		fnc00123ac4();
		fnc000fdd8c();
		N64.fnc0001cc6c();
		fnc000fdea8();
	}

	// RAM GREECE
	static void fnc00123e90() {
		N64.fnc00001144();
		fnc00123ac4();
	}

	// RAM GREECE
	static void fnc00124118() {
		fnc00123e90();
	}

	// RAM GREECE
	static void fnc00124170() {
		N64.sqrtf();
		fnc00127c08();
		fnc00122524();
		fnc00102d00();
		fnc000fb430();
		fnc000fb3e8();
		fnc00102d00();
		N64.sqrtf();
		fnc00127c08();
		fnc00124c40();
		fnc0011c080();
		N64.sqrtf();
		fnc0011bea0();
	}

	// RAM GREECE
	static void fnc00124b5c() {
		fnc00124170();
	}

	// RAM GREECE
	static void fnc00124ba8() {
	}

	// RAM GREECE
	static void fnc00124c40() {
		fnc001223b0();
		fnc00122524();
		N64.fnc00003824();
		fnc00088154();
	}

	// RAM 00124d60
	static void displayBullets() {
		fnc000c1150();
		fnc000c31ac();
		fnc000d9b14();
		fnc000d4ab0();
		fnc000d55c0();
		fnc000d76f4();
		fnc000d8000();
		fnc000d9b14();
		fnc000c1ecc();
		fnc000c1ecc();
		fnc000c1ecc();
		N64.fnc00003824();
		N64.fnc000039d0();
		fnc000b2354();
		fnc000a2a88();
		N64.fnc000039d0();
	}

	// RAM GREECE
	static void fnc00125c48() {
	}

	// RAM GREECE
	static void fnc00125ca0() {
		N64.fnc00003824();
		N64.sqrtf();
		N64.fnc00003824();
		fnc000d951c();
	}

	// RAM GREECE
	static void fnc00125d70() {
		N64.fnc000047fc();
		N64.fnc000047fc();
		N64.sqrtf();
		fnc0010ef40();
		N64.fnc000047fc();
		N64.fnc000047fc();
		N64.sqrtf();
		N64.fnc00011f90();
		fnc000b84d0();
		N64.fnc000047fc();
		N64.fnc000047fc();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc00126268() {
		fnc00125d70();
		fnc000b84d0();
		fnc0012e114();
		fnc0011de60();
		fnc0011de6c();
		fnc0011e6fc();
		fnc0011de60();
	}

	// RAM GREECE
	static void fnc00126990() {
		N64.__ll_mul();
	}

	// RAM GREECE
	static void fnc001269bc() {
		fnc00126990();
		fnc00126990();
		N64.__ll_mul();
		N64.__ll_mul();
		N64.__ll_mul();
		N64.__ll_mul();
		fnc00126990();
		N64.fnc0001d2ac();
	}

	// RAM GREECE
	static void fnc00126b80() {
		fnc0010c4ec();
		fnc0010cf7c();
		fnc001269bc();
		fnc001269bc();
		fnc001269bc();
		N64.sqrtf();
		fnc0010d4ec();
		N64.sqrtf();
		fnc0012235c();
		fnc00122320();
		fnc00122320();
		fnc001269bc();
		fnc001269bc();
		fnc001269bc();
		N64.sqrtf();
		fnc00128428();
		fnc001269bc();
		fnc001269bc();
		fnc001269bc();
		N64.fnc0001cc6c();
		N64.sqrtf();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc00127c08() {
		fnc00126268();
		ClipLineToShieldWalls();
		fnc00126b80();
	}

	// RAM GREECE
	static void fnc00127d88() {
		ClipLineToShieldWalls();
		fnc00126268();
		fnc00126b80();
	}

	// RAM GREECE
	static void fnc00127f9c() {
		N64.fnc000047fc();
		N64.fnc000047fc();
		fnc00124c40();
		fnc0012235c();
		N64.fnc000047fc();
		N64.fnc000047fc();
		fnc00124c40();
		fnc0011d260();
		fnc0011bea0();
		fnc000f9f00();
		fnc00124170();
	}

	// RAM GREECE
	static void fnc00128288() {
		fnc00102ddc();
		N64.coss();
		N64.sins();
	}

	// RAM GREECE
	static void fnc00128428() {
		N64.fnc000044d4();
	}

	// RAM GREECE
	static void fnc00128504() {
		fnc000fafb8();
		N64.fnc000038e0();
		fnc00128428();
	}

	// RAM GREECE
	static void fnc00128650() {
		fnc000b84d0();
		fnc000b0d10();
		fnc0012e114();
		N64.fnc000047fc();
		N64.fnc000047fc();
		N64.fnc000047fc();
		fnc0011e6fc();
		fnc0012235c();
		N64.fnc000047fc();
		N64.fnc000047fc();
		N64.fnc000047fc();
		fnc001238dc();
	}

	// RAM GREECE
	static void fnc00128e48() {
		N64.sqrtf();
		N64.fnc000038e0();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc00129354() {
		fnc000fafb8();
		fnc00128504();
		N64.sqrtf();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc00129864();
		fnc00129864();
		fnc00129864();
		N64.fnc00001144();
		N64.fnc0001cc6c();
		N64.fnc00001144();
	}

	// RAM GREECE
	static void fnc00129864() {
		fnc000fafb8();
		fnc00128504();
		fnc001226f8();
		fnc000703b0();
		fnc00137130();
		fnc00137130();
		N64.sqrtf();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000eabe0();
		fnc000cda98();
		fnc00124170();
		fnc000d9dd8();
		fnc000d9f60();
		fnc000d3c88();
		fnc001372b4();
		fnc000de9b8();
		fnc000de9b8();
		fnc000de9b8();
		fnc000dea08();
		fnc00125ca0();
		fnc000df9c8();
		fnc000df9c8();
		fnc00125c48();
		fnc000de9b8();
		fnc00127d88();
		N64.sqrtf();
		fnc000c541c();
		fnc000dea08();
		fnc000c541c();
		fnc000dea08();
		fnc000e52e8();
		fnc000e52e8();
		fnc000e52e8();
		fnc000e5450();
		fnc000dea08();
		fnc000e52e8();
		fnc000d16bc();
		N64.fnc000038e0();
		fnc00128e48();
		N64.fnc00003824();
		N64.sqrtf();
		N64.fnc00003824();
		fnc00137130();
		fnc0011bea0();
		fnc0012e204();
		fnc00137130();
		fnc000794f8();
		fnc00128288();
		fnc00124c40();
		fnc00137130();
		fnc00137130();
		fnc00124c40();
		fnc000c3bd8();
		fnc000c3bd8();
		fnc000b2354();
		fnc000c3bd8();
		fnc000df9c8();
		fnc00124170();
		fnc000d05a8();
		fnc000e0f4c();
		N64.sqrtf();
		fnc001226f8();
		fnc001226f8();
		N64.coss();
		N64.coss();
		N64.sins();
		N64.sins();
		N64.coss();
		fnc00128650();
		fnc00128650();
	}

	// RAM GREECE
	static void fnc0012b110() {
		fnc00129354();
	}

	// RAM GREECE
	static void fnc0012b150() {
		fnc00129354();
	}

	// RAM GREECE
	static void fnc0012b194() {
		fnc00129354();
	}

	// RAM GREECE
	static void fnc0012b21c() {
		fnc001238dc();
	}

	// RAM GREECE
	/// Aliens shooting
	static void fnc0012b26c() {
		fnc0011de60();
		fnc000d8fa0();
		N64.fnc00003824();
		fnc000f9c50();
		N64.fnc000047fc();
		N64.fnc000047fc();
		fnc000b84d0();
		N64.sqrtf();
		N64.coss();
		N64.sins();
		fnc000b84d0();
		fnc000b8f30();
		fnc000dfba8();
		fnc000b0d10();
		N64.fnc000047fc();
		N64.fnc000047fc();
		N64.fnc000047fc();
		fnc0010c4ec();
		fnc0010cf7c();
		N64.fnc00003824();
		N64.sqrtf();
		N64.fnc00003824();
		fnc00128288();
		fnc00124c40();
		fnc0012e114();
		N64.fnc0001cc6c();
		fnc0012e204();
		fnc0011e6fc();
		fnc0011bea0();
		fnc00125d70();
		fnc0012235c();
		fnc00122320();
		fnc00122320();
		N64.fnc000047fc();
		N64.fnc000047fc();
		N64.fnc000047fc();
		fnc00128428();
		fnc001269bc();
		fnc001269bc();
		fnc001269bc();
		fnc00124c40();
		fnc00124c40();
		fnc00124170();
		fnc000b8f30();
		fnc000e0f4c();
		fnc000e0f4c();
		fnc000df9c8();
		fnc000e0f4c();
		fnc000e0f4c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
		fnc000dea08();
		fnc00137130();
		fnc00137130();
		fnc000df038();
		fnc000df9c8();
		fnc000d05a8();
		fnc000d05a8();
		fnc000d05a8();
		fnc000d05a8();
		fnc000d05a8();
		fnc000df038();
		fnc000df038();
		fnc00137234();
		fnc000df038();
		fnc000df038();
		fnc000d05a8();
		fnc000d05a8();
		fnc001236f0();
		fnc000d05a8();
		fnc000b84d0();
		N64.fnc000038e0();
		N64.coss();
		N64.sins();
		fnc001226f8();
		fnc000df038();
		fnc000df038();
		fnc00137234();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		fnc000ca5ec();
		fnc000dea08();
		fnc00137130();
		fnc00137130();
		fnc001238dc();
		fnc0011de60();
	}

	// RAM GREECE
	static void fnc0012d600() {
	}

	// RAM GREECE
	static void fnc0012d64c() {
	}

	// RAM GREECE
	static void fnc0012d684() {
	}

	// RAM GREECE
	static void fnc0012d6a4() {
	}

	// RAM GREECE
	static void fnc0012d6e8() {
	}

	// RAM GREECE
	static void fnc0012d700() {
		fnc0012d6a4();
		fnc0012d600();
	}

	// RAM GREECE
	static void fnc0012d808() {
	}

	// RAM GREECE
	static void fnc0012d824() {
	}

	// RAM GREECE
	static void fnc0012d84c() {
	}

	// RAM 0012d884
	static void debug_drawInteractionBoxes() {
	}

	// RAM GREECE
	static void fnc0012dda8() {
	}

	// RAM GREECE
	static void fnc0012df90() {
	}

	// RAM GREECE
	static void fnc0012e03c() {
	}

	// RAM GREECE
	static void fnc0012e0f8() {
	}

	// RAM GREECE
	static void fnc0012e114() {
	}

	// RAM GREECE
	static void fnc0012e1dc() {
	}

	// RAM GREECE
	static void fnc0012e1f8() {
	}

	// RAM GREECE
	static void fnc0012e204() {
	}

	// RAM GREECE
	static void fnc0012e258() {
		fnc0010c4ec();
		N64.fnc0001cc6c();
		fnc000fb468();
		fnc0010cf7c();
		fnc0010cf7c();
		fnc0010cf7c();
		fnc0010cf7c();
		fnc000fb468();
		fnc000fb3c4();
		fnc000fb40c();
		fnc000fb430();
		fnc000fb3c4();
		fnc000fb40c();
	}

	// RAM GREECE
	static void fnc0012eac0() {
	}

	// RAM GREECE
	static void fnc0012ebc0() {
	}

	// RAM GREECE
	static void fnc0012ec3c() {
	}

	// RAM GREECE
	static void fnc0012ec54() {
	}

	// RAM GREECE
	static void fnc0012ed40() {
	}

	// RAM GREECE
	static void fnc0012ee2c() {
	}

	// RAM GREECE
	static void fnc0012ef18() {
	}

	// RAM GREECE
	static void fnc0012f004() {
	}

	// RAM GREECE
	static void fnc0012f12c() {
	}

	// RAM GREECE
	static void fnc0012f134() {
	}

	// RAM GREECE
	static void fnc0012f240() {
	}

	// RAM GREECE
	static void fnc0012f24c() {
	}

	// RAM GREECE
	static void fnc0012f2dc() {
		N64.coss();
		N64.coss();
		N64.coss();
	}

	// RAM GREECE
	static void fnc0012f4e0() {
		fnc0012f2dc();
		fnc0012ec3c();
		N64.fnc0001cc6c();
		N64.fnc000153d8();
		fnc0012f24c();
	}

	// RAM GREECE
	static void fnc0012fe6c() {
	}

	// RAM GREECE
	static void fnc0012ffb0() {
	}

	// RAM GREECE
	static void fnc0013001c() {
		fnc0012fe6c();
		N64.fnc00006520();
		N64.fnc00006520();
		N64.fnc00006520();
		N64.fnc00006520();
		N64.fnc000092b8();
		N64.drawText();
		N64.drawText();
		fnc001306c4();
		fnc001306c4();
		fnc001306c4();
		fnc00130ba0();
		fnc0012ebc0();
		fnc0012ebc0();
		fnc0012ebc0();
		N64.fnc0000726c();
		fnc0012ebc0();
		fnc00131280();
		fnc001306c4();
		fnc001306c4();
		fnc001306c4();
		fnc0012ebc0();
		fnc0012ebc0();
		fnc0012ebc0();
		fnc00131280();
	}

	// RAM GREECE
	static void fnc001306c4() {
		fnc0012eac0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		N64.fnc000033d4();
	}

	// RAM GREECE
	static void fnc00130ba0() {
		N64.fnc000153d8();
		N64.drawText();
		N64.drawText();
		N64.fnc0000577c();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.fnc0000577c();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		N64.drawText();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012ffb0();
		fnc0012eac0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		N64.ButtonIsNewlyPressed();
	}

	// RAM GREECE
	static void fnc00131280() {
		fnc0012ffb0();
		fnc0012eac0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc00131858();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		fnc0012f4e0();
		N64.ButtonIsNewlyPressed();
	}

	// RAM GREECE
	static void fnc00131858() {
		fnc0012f2dc();
		N64.fnc000153d8();
		N64.fnc000039d0();
		N64.fnc00022d2c();
		N64.fnc000153d8();
		N64.sins();
		N64.fnc000039d0();
		N64.guRotate();
		fnc0012ec3c();
	}

	// RAM GREECE
	static void fnc00132730() {
	}

	// RAM GREECE
	static void fnc00132740() {
		N64.fnc0001cc6c();
		fnc00135cb8();
		fnc000b33bc();
	}

	// RAM GREECE
	static void fnc00132980() {
		N64.fnc00014208();
		N64.fnc00014208();
		N64.sqrtf();
		N64.fnc00003824();
		N64.fnc00003824();
		N64.sqrtf();
		fnc00133288();
		fnc00133934();
		fnc00134d44();
		N64.fnc00015860();
		fnc00135f0c();
		fnc00133c9c();
		fnc0013493c();
		fnc00134ccc();
		fnc000c1268();
		N64.fnc00003824();
	}

	// RAM GREECE
	static void fnc001330e4() {
		N64.guPerspective();
		N64.guLookAt();
	}

	// RAM GREECE
	static void fnc00133260() {
	}

	// RAM GREECE
	static void fnc00133288() {
		fnc001333d0();
		fnc001351dc();
		fnc00133ebc();
		fnc00135380();
		fnc00133f28();
		fnc001343d8();
	}

	// RAM GREECE
	static void fnc001333d0() {
		fnc00132730();
		fnc00132730();
		N64.coss();
		N64.sins();
		fnc001336cc();
	}

	// RAM GREECE
	static void fnc001336cc() {
		N64.sqrtf();
		N64.fnc00003824();
		fnc00132730();
		N64.coss();
		N64.sins();
		N64.sins();
	}

	// RAM GREECE
	static void fnc00133934() {
		fnc00133a54();
		fnc001356f4();
		fnc001354c0();
		fnc00135630();
		fnc001357ec();
		fnc001343d8();
	}

	// RAM GREECE
	static void fnc00133a54() {
		fnc00132730();
		N64.coss();
		N64.sins();
		fnc001336cc();
	}

	// RAM GREECE
	static void fnc00133c9c() {
		N64.sins();
		N64.coss();
		N64.sins();
		N64.coss();
	}

	// RAM GREECE
	static void fnc00133e94() {
	}

	// RAM GREECE
	static void fnc00133eac() {
	}

	// RAM GREECE
	static void fnc00133ebc() {
	}

	// RAM GREECE
	static void fnc00133f28() {
		fnc001361a4();
		fnc00132730();
		fnc00132730();
		fnc00136214();
		fnc00132730();
		fnc00132730();
		fnc000ea298();
	}

	// RAM GREECE
	static void fnc001343d8() {
		fnc00133c9c();
		fnc000b84d0();
		fnc00126268();
		fnc00133c9c();
		fnc000b84d0();
		fnc00126268();
		fnc00133c9c();
		fnc000b84d0();
		fnc00126268();
	}

	// RAM GREECE
	static void fnc0013493c() {
		N64.fnc00003824();
		N64.sins();
		N64.coss();
		fnc000b42b0();
		fnc000b4660();
		fnc000b49a4();
		fnc000b4d4c();
		N64.sins();
		N64.coss();
	}

	// RAM GREECE
	static void fnc00134ccc() {
	}

	// RAM GREECE
	static void fnc00134d44() {
	}

	// RAM GREECE
	static void fnc001351dc() {
		fnc001358e8();
	}

	// RAM GREECE
	static void fnc00135380() {
	}

	// RAM GREECE
	static void fnc001354a0() {
	}

	// RAM GREECE
	static void fnc001354c0() {
		N64.coss();
		N64.sins();
	}

	// RAM GREECE
	static void fnc00135630() {
		fnc00132730();
	}

	// RAM GREECE
	static void fnc001356f4() {
		fnc001358e8();
		N64.fnc0000345c();
	}

	// RAM GREECE
	static void fnc001357ec() {
	}

	// RAM GREECE
	static void fnc001358e8() {
		N64.fnc000033d4();
		fnc000b33bc();
		N64.fnc000153d8();
		N64.fnc00015860();
		fnc000b33bc();
		N64.fnc00014208();
		N64.fnc00014208();
	}

	// RAM GREECE
	static void fnc00135cb8() {
	}

	// RAM GREECE
	static void fnc00135d08() {
	}

	// RAM GREECE
	static void fnc00135d44() {
	}

	// RAM GREECE
	static void fnc00135f0c() {
		N64.fnc00001144();
	}

	// RAM GREECE
	static void fnc00136198() {
	}

	// RAM GREECE
	static void fnc001361a4() {
	}

	// RAM GREECE
	static void fnc00136200() {
	}

	// RAM GREECE
	static void fnc00136214() {
		fnc00133c9c();
		fnc00126268();
		fnc00132730();
		fnc00132730();
		fnc00132730();
		fnc00133c9c();
		fnc00126268();
	}

	// RAM GREECE
	static void fnc00136570() {
	}

	// RAM 001365e0
	static void displaySignposts() {
		fnc0011e6fc();
		fnc000b93ac();
		N64.fnc000039d0();
		fnc0012d700();
		fnc0012d700();
	}

	// RAM GREECE
	static void fnc00136b50() {
		N64.ButtonIsNewlyPressed();
		N64.ButtonIsNewlyPressed();
		fnc000a3cd0();
		fnc00136570();
		N64.fnc00018d7c();
	}

	/// Possible file boundary

	// RAM GREECE
	static void fnc00136dc0() {
		N64.sqrtf();
		N64.sqrtf();
	}

	// RAM GREECE
	static void fnc00136ecc() {
		N64.sqrtf();
		N64.fnc00003680();
		N64.sqrtf();
		N64.sqrtf();
		N64.fnc00003680();
		N64.sqrtf();
		N64.fnc00003680();
	}

	// RAM GREECE
	static void fnc00137130() {
		fnc00136dc0();
		fnc00136ecc();
		N64.fnc00014a3c();
	}

	// RAM GREECE
	static void fnc001371b0() {
	}

	// RAM GREECE
	static void fnc001371b8() {
		fnc00136dc0();
		fnc00136ecc();
		N64.fnc00014a3c();
	}

	// RAM GREECE
	static void fnc00137234() {
		fnc00136dc0();
		fnc00136ecc();
		N64.fnc00014a3c();
	}

	// RAM GREECE
	static void fnc001372b4() {
		fnc00136dc0();
		fnc00136ecc();
		N64.fnc00014a3c();
	}

	// RAM GREECE
	static void fnc00137368() {
		fnc00136dc0();
		fnc00136ecc();
		N64.fnc00014a3c();
	}

	// RAM GREECE
	static void fnc00137468() {
		N64.fnc000038e0();
		fnc00137130();
		fnc00137130();
		fnc00137130();
		fnc00137130();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc00137130();
		fnc00137130();
		fnc00137130();
		fnc001371b8();
		fnc00137130();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc00137130();
		fnc00137130();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc00137130();
		N64.fnc00014a3c();
		fnc00137130();
		fnc00137130();
		fnc001371b8();
		fnc001371b8();
		fnc00137130();
		fnc00137130();
		fnc00137130();
		fnc001371b8();
		fnc00137130();
		fnc00137130();
		fnc00137130();
		N64.fnc00012778();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc00137130();
		fnc001371b8();
		fnc001371b8();
		fnc00137130();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc00137130();
		fnc00137130();
		fnc00137130();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc00137130();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc00137130();
		fnc00137130();
		fnc00137130();
		fnc001371b8();
		fnc00137130();
		fnc00137130();
		fnc00137130();
		fnc001371b8();
		fnc00137130();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc00137130();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
		fnc001371b8();
	}

	// RAM GREECE
	static void fnc00139018() {
	}

		// RAM GREECE
	static void fnc00139020() {
	}

	// RAM GREECE
	static void fnc00139028() {
	}

	// RAM GREECE
	static void fnc00139034() {
	}

	// RAM GREECE
	static void fnc00139050() {
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc001390f4() {
	}

	/// Possible file boundary

	// RAM GREECE
	static void fnc00139150() {
	}

	// RAM GREECE
	static void fnc00139190() {
	}

	// RAM GREECE
	static void fnc001391a4() {
	}

	// RAM 001391dc
	static void guess_giveItem() {
		fnc001393a0();
		fnc00139150();
		N64.fnc0001cc6c();
		fnc00139150();
		fnc00139050();
	}

	// RAM GREECE
	static void fnc001392fc() {
		fnc0013b5e4();
		fnc0013b004();
		fnc00139050();
	}

	// RAM GREECE
	static void fnc001393a0() {
	}

	// RAM GREECE
	static void fnc001393b4() {
	}

	// RAM GREECE
	static void fnc001393cc() {
	}

	// RAM GREECE
	static void fnc001393e4() {
	}

	// RAM GREECE
	static void fnc00139400() {
	}

	// RAM GREECE
	static void fnc00139418() {
	}

	// RAM GREECE
	static void fnc0013942c() {
	}

	// RAM GREECE
	static void fnc00139440() {
	}

	// RAM GREECE
	static void fnc00139458() {
	}

	// RAM GREECE
	static void fnc00139460() {
		fnc001393a0();
		fnc001392fc();
	}

	// RAM GREECE
	static void fnc001394dc() {
		guess_giveItem();
	}

	// RAM GREECE
	static void fnc0013958c() {
	}

	// RAM GREECE
	static void fnc001396a8() {
		fnc001392fc();
		fnc001392fc();
		fnc001392fc();
		fnc001392fc();
		fnc001392fc();
		fnc001392fc();
		fnc001392fc();
		fnc001394dc();
		fnc0013a1cc();
		fnc0013b004();
		fnc000ea2b0();
	}

	// RAM GREECE
	static void fnc00139778() {
		fnc00139460();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		fnc0013a1cc();
		N64.fnc0001cc6c();
		fnc00139460();
		guess_giveItem();
		guess_giveItem();
		N64.fnc0000726c();
		fnc0013a1cc();
		fnc0013958c();
		fnc0013b004();
	}

	// RAM GREECE
	static void fnc0013994c() {
	}

	// RAM 00139984
	static void guess_initInventory() {
		guess_giveItem();
		guess_giveItem();
		guess_giveItem();
		fnc000a8e18();
		fnc000a8e18();
		fnc000a8e18();
		fnc000a8e18();
		fnc000a8e18();
		fnc000a8e18();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc00139b34() {
	}

	// RAM GREECE
	static void fnc00139bc0() {
	}

	// RAM GREECE
	static void fnc00139bd0() {
	}

	// RAM GREECE
	static void fnc00139bdc() {
	}

	// RAM GREECE
	static void fnc00139be8() {
	}

	// RAM GREECE
	static void fnc00139bf8() {
	}

	// RAM GREECE
	static void fnc00139d58() {
	}

	// RAM GREECE
	static void fnc0013a07c() {
	}

	// RAM GREECE
	static void fnc0013a1cc() {
		fnc00139bf8();
		fnc00139d58();
		fnc0013b004();
	}

	// RAM GREECE
	static void fnc0013a218() {
	}

	// RAM GREECE
	static void fnc0013a4c8() {
		fnc0013a218();
		fnc0013a218();
		fnc0013a218();
	}

	// RAM GREECE
	static void fnc0013a630() {
	}

	// RAM GREECE
	static void fnc0013a764() {
		fnc0013994c();
		fnc0013a630();
		fnc0013a4c8();
	}

	// RAM GREECE
	static void fnc0013af58() {
		fnc0013a630();
		fnc0013a764();
		fnc0013a764();
	}

	// RAM GREECE
	static void fnc0013b004() {
		fnc001390f4();
	}

	// RAM GREECE
	static void fnc0013b054() {
	}

	// RAM GREECE
	static void fnc0013b160() {
	}

	// RAM GREECE
	static void fnc0013b17c() {
	}

	// RAM GREECE
	static void fnc0013b198() {
	}

	// RAM GREECE
	static void fnc0013b1b4() {
	}

	// RAM GREECE
	static void fnc0013b1d0() {
	}

	// RAM GREECE
	static void fnc0013b1ec() {
	}

	// RAM GREECE
	static void fnc0013b208() {
	}

	// RAM GREECE
	static void fnc0013b224() {
	}

	// RAM GREECE
	static void fnc0013b240() {
	}

	// RAM GREECE
	static void fnc0013b25c() {
	}

	// RAM GREECE
	static void fnc0013b278() {
	}

	// RAM GREECE
	static void fnc0013b298() {
		fnc0013b004();
		fnc0013b054();
	}

	// RAM GREECE
	static void fnc0013b30c() {
		fnc0013b004();
		fnc0013b054();
	}

	// RAM GREECE
	static void fnc0013b384() {
	}

	// RAM GREECE
	static void fnc0013b480() {
	}

	// RAM GREECE
	static void fnc0013b4a0() {
	}

	// RAM GREECE
	static void fnc0013b4bc() {
	}

	// RAM GREECE
	static void fnc0013b4dc() {
	}

	// RAM GREECE
	static void fnc0013b51c() {
	}

	// RAM GREECE
	static void fnc0013b534() {
		fnc0013994c();
		fnc0013b480();
		N64.fnc0001cc6c();
	}

	// RAM GREECE
	static void fnc0013b5e4() {
		fnc0013b534();
		N64.fnc0001cc6c();
		fnc0013b298();
		fnc0013b30c();
		fnc0013b5e4();
	}

	// RAM 0013b688
	static void guess_doWeaponChange() {
		fnc0013b384();
		fnc0013994c();
		fnc0013a1cc();
		fnc0013b5e4();
		N64.ButtonIsNewlyPressed();
		fnc0013b298();
		fnc0013b5e4();
		N64.ButtonIsNewlyPressed();
		N64.fnc0001cc6c();
		fnc0013b30c();
		fnc0013b5e4();
		N64.fnc0001a650();
		fnc0013b384();
	}

	// RAM GREECE
	static void fnc0013b8c8() {
	}

	// RAM GREECE
	static void fnc0013b8e4() {
	}

}
