module greece;

import n64, gameplayOutside, level;

class Greece : ILevel
{
public:

	// RAM 002d4cd0 (0018d7e0)
	static int Start(int a0, int a1)
	{
		//	addiu		sp, sp, $ffe8		# 002d4cd0:27bdffe8	
		//	sw		a1, $001c(sp)		# 002d4cd4:afa5001c	
		//	slti		at, a0, $0014		# 002d4cd8:28810014	
		//	or		a1, a0, zero		# 002d4cdc:00802825	
		//	sw		ra, $0014(sp)		# 002d4ce0:afbf0014	
		//	beq		at, zero, $002d4d0c	# 002d4ce4:10200009	v __002d4d0c
		//	sw		a0, $0018(sp)		# 002d4ce8:afa40018	
		if (a0 < 20)
		{
			//__002d4cec:					# 
			//	sll		t6, a0, 2		# 002d4cec:00047080	
			//	lui		t9, $802e		# 002d4cf0:3c19802e	t9=$802e0000
			//	addu		t9, t9, t6		# 002d4cf4:032ec821	
			//	lw		t9, $dbf4(t9)		# 002d4cf8:8f39dbf4	
			//	jalr		t9			# 002d4cfc:0320f809	
			//	nop					# 002d4d00:00000000	
			switch (a0)
			{
				case 0:
					fnc002d531c();
					break;
				case 1:
					fnc002d5460();
					break;
				case 2:
					fnc002d562c();
					break;
				case 3:
					fn002d54ac();
					break;
				case 4:
					fnc002d56e8();
					break;
				case 5:
					fnc002D5720();
					break;
				case 6:
					fnc002D5760();
					break;
				case 7:
					fnc002D5290();
					break;
				case 8:
					fnc002D5434();
					break;
				case 9:
				case 10:
				case 11:
				case 12:
				case 13:
				case 14:
				case 15:
				case 16:
				case 17:
					fnc00076820();
					break;
				case 18:
					fnc002D4E28();
					break;
				case 19:
					fnc002D4F50();
					break;
			}
			//	beq		zero, zero, $002d4e1c	# 002d4d04:10000045	v __002d4e1c
			//	lw		ra, $0014(sp)		# 002d4d08:8fbf0014	
		}
		else
		{
			//__002d4d0c:					# 
			//	slti		at, a1, $0045		# 002d4d0c:28a10045	
			//	bne		at, zero, $002d4d2c	# 002d4d10:14200006	v __002d4d2c
			//	lui		a0, $802e		# 002d4d14:3c04802e	a0=$802e0000
			//	addiu		at, zero, $0045		# 002d4d18:24010045	at=$00000045
			//	beq		a1, at, $002d4df0	# 002d4d1c:10a10034	v __002d4df0
			//	nop					# 002d4d20:00000000	
			//	beq		zero, zero, $002d4e10	# 002d4d24:1000003a	v __002d4e10
			//	nop					# 002d4d28:00000000	
			//__002d4d2c:					# 
			//	slti		at, a1, $001a		# 002d4d2c:28a1001a	
			//	bne		at, zero, $002d4d4c	# 002d4d30:14200006	v __002d4d4c
			//	addiu		t7, a1, $ffec		# 002d4d34:24afffec	
			//	addiu		at, zero, $0044		# 002d4d38:24010044	at=$00000044
			//	beq		a1, at, $002d4e00	# 002d4d3c:10a10030	v __002d4e00
			//	nop					# 002d4d40:00000000	
			//__002d4d44:					# 
			//	beq		zero, zero, $002d4e10	# 002d4d44:10000032	v __002d4e10
			//	nop					# 002d4d48:00000000	
			//__002d4d4c:					# 
			//	sltiu		at, t7, $0006		# 002d4d4c:2de10006	
			//	beq		at, zero, $002d4e10	# 002d4d50:1020002f	v __002d4e10
			//	sll		t7, t7, 2		# 002d4d54:000f7880	
			//	lui		at, $802e		# 002d4d58:3c01802e	at=$802e0000
			//	addu		at, at, t7		# 002d4d5c:002f0821	
			//	lw		t7, $e338(at)		# 002d4d60:8c2fe338	
			//	jr		t7			# 002d4d64:01e00008	
			//	nop					# 002d4d68:00000000	
			//	lui		a0, $800f		# 002d4d6c:3c04800f	a0=$800f0000
			//	addiu		a0, a0, $1134		# 002d4d70:24841134	a0=$800f1134
			//	addiu		a1, zero, $0004		# 002d4d74:24050004	a1=$00000004
			//	jal		$000efeb4		# 002d4d78:0c03bfad	^ FNC_000efeb4
			//	or		a2, zero, zero		# 002d4d7c:00003025	
			GameplayOutside.fnc000efeb4();
			//	beq		zero, zero, $002d4e1c	# 002d4d80:10000026	v __002d4e1c
			//	lw		ra, $0014(sp)		# 002d4d84:8fbf0014	
			//__002d4d88:					# 
			//	lui		a0, $800f		# 002d4d88:3c04800f	a0=$800f0000
			//	addiu		a0, a0, $1ddc		# 002d4d8c:24841ddc	a0=$800f1ddc
			//	or		a1, zero, zero		# 002d4d90:00002825	
			//	jal		$000efeb4		# 002d4d94:0c03bfad	^ FNC_000efeb4
			//	addiu		a2, zero, $0001		# 002d4d98:24060001	a2=$00000001
			GameplayOutside.fnc000efeb4();
			//__002d4d9c:					# 
			//	beq		zero, zero, $002d4e1c	# 002d4d9c:1000001f	v __002d4e1c
			//	lw		ra, $0014(sp)		# 002d4da0:8fbf0014	
			//	lui		a0, $802d		# 002d4da4:3c04802d	a0=$802d0000
			//	addiu		a0, a0, $57a0		# 002d4da8:248457a0	a0=$802d57a0
			//	addiu		a1, zero, $0005		# 002d4dac:24050005	a1=$00000005
			//	jal		$000efeb4		# 002d4db0:0c03bfad	^ FNC_000efeb4
			//	addiu		a2, zero, $0001		# 002d4db4:24060001	a2=$00000001
			GameplayOutside.fnc000efeb4();
			//	beq		zero, zero, $002d4e1c	# 002d4db8:10000018	v __002d4e1c
			//	lw		ra, $0014(sp)		# 002d4dbc:8fbf0014	
			//	jal		$002d6f7c		# 002d4dc0:0c0b5bdf	v FNC_002d6f7c
			//	nop					# 002d4dc4:00000000	
			fnc002d6f7c();
			//	beq		zero, zero, $002d4e1c	# 002d4dc8:10000014	v __002d4e1c
			//	lw		ra, $0014(sp)		# 002d4dcc:8fbf0014	
			//	jal		$002d7334		# 002d4dd0:0c0b5ccd	v FNC_002d7334
			//	nop					# 002d4dd4:00000000	
			fnc002d7334();
			//	beq		zero, zero, $002d4e1c	# 002d4dd8:10000010	v __002d4e1c
			//	lw		ra, $0014(sp)		# 002d4ddc:8fbf0014	
			//	jal		$002d7360		# 002d4de0:0c0b5cd8	v FNC_002d7360
			//	nop					# 002d4de4:00000000	
			fnc002d7360();
			//	beq		zero, zero, $002d4e1c	# 002d4de8:1000000c	v __002d4e1c
			//	lw		ra, $0014(sp)		# 002d4dec:8fbf0014	
			//__002d4df0:					# 
			//	jal		$002d6d20		# 002d4df0:0c0b5b48	v FNC_002d6d20
			//	nop					# 002d4df4:00000000	
			fnc002d6d20();
			//	beq		zero, zero, $002d4e1c	# 002d4df8:10000008	v __002d4e1c
			//	lw		ra, $0014(sp)		# 002d4dfc:8fbf0014	
			//__002d4e00:					# 
			//	jal		$00007690		# 002d4e00:0c001da4	^ FNC_00007690
			//	nop					# 002d4e04:00000000	
			N64.fnc00007690();
			//	beq		zero, zero, $002d4e1c	# 002d4e08:10000004	v __002d4e1c
			//	lw		ra, $0014(sp)		# 002d4e0c:8fbf0014	
			//__002d4e10:					# 
			//	jal		$0001cc6c		# 002d4e10:0c00731b	^ FNC_0001cc6c
			//	addiu		a0, a0, $e2d0		# 002d4e14:2484e2d0	a0=$802d3a70
			N64.fnc0001cc6c("Unwritten Greece Function %d\n");
			//	lw		ra, $0014(sp)		# 002d4e18:8fbf0014	
		}
		
		//__002d4e1c:					# 
		//	addiu		sp, sp, $0018		# 002d4e1c:27bd0018	
		//	jr		ra			# 002d4e20:03e00008	
		//	nop					# 002d4e24:00000000	
		return 0;
	}

	// RAM GREECE
	static void fnc002d4e28() {
		N64.fnc0000726c();
		N64.fnc000073b8();
		N64.fnc0000726c();
		N64.fnc000073b8();
		N64.fnc0000726c();
		N64.fnc000073b8();
		N64.fnc0000726c();
		N64.fnc0000726c();
		N64.fnc00007410();
	}

	// RAM GREECE
	static void fnc002d4ecc() {
		N64.fnc0000726c();
		N64.fnc000074bc();
		N64.fnc00004818();
		N64.fnc00018d7c();
		N64.fnc000074bc();
		N64.fnc000074bc();
	}

	// RAM GREECE
	static void fnc002d4f50() {
		N64.fnc00001400();
	}

	// RAM GREECE
	static void fnc002d4f74() {
		N64.fnc00018d7c();
		N64.fnc00018d7c();
		N64.fnc00018d7c();
		N64.fnc00018d7c();
		N64.fnc00018d7c();
		N64.fnc000074bc();
		N64.fnc000072cc();
	}

	// RAM GREECE
	static void fnc002d5290() {
		N64.fnc00007410();
	}

	// RAM GREECE
	static void fnc002d52c4() {
		N64.fnc000073b8();
	}

	// RAM GREECE
	static void fnc002d531c() {
		N64.fnc000072cc();
		GameplayOutside.fnc000efeb4();
		N64.fnc00013468();
	}

	// RAM GREECE
	static void fnc002d536c() {
		GameplayOutside.fnc0009bf64();
		N64.fnc000074bc();
	}

	// RAM GREECE
	static void fnc002d5434() {
		N64.fnc000074bc();
		N64.fnc000076d4();
	}

	// RAM GREECE
	static void fnc002d5460() {
		GameplayOutside.fnc0011bf7c();
		GameplayOutside.fnc0011bf7c();
		GameplayOutside.fnc0011bf7c();
		GameplayOutside.fnc0011bf7c();
		N64.fnc00007410();
	}

	// RAM GREECE
	static void fnc002d54ac() {
		GameplayOutside.fnc0011c080();
		GameplayOutside.fnc000ae190();
		GameplayOutside.fnc0011c080();
		GameplayOutside.fnc000ae190();
		GameplayOutside.fnc0011c080();
		GameplayOutside.fnc000ae190();
		GameplayOutside.fnc0011c080();
		GameplayOutside.fnc000ae190();
		N64.fnc000074bc();
		N64.fnc000076d4();
	}

	// RAM GREECE
	static void fnc002d5578() {
		N64.fnc000074bc();
		N64.fnc000074bc();
		N64.fnc00007690();
	}

	// RAM GREECE
	static void fnc002d562c() {
		GameplayOutside.fnc00092adc();
		N64.fnc00007410();
	}

	// RAM GREECE
	static void fnc002d5660() {
		N64.fnc000072cc();
		N64.fnc000073b8();
		N64.fnc000074bc();
		N64.fnc000076d4();
		GameplayOutside.fnc00123ac4();
	}

	// RAM GREECE
	static void fnc002d56e8() {
		N64.fnc000072cc();
		N64.fnc00007410();
	}

	// RAM GREECE
	static void fnc002d5720() {
		GameplayOutside.fnc000efeb4();
		N64.fnc00013468();
	}

	// RAM GREECE
	static void fnc002d5760() {
		GameplayOutside.fnc000efeb4();
		N64.fnc00013468();
	}

	// RAM GREECE
	static void fnc002d57a0() {
		GameplayOutside.fnc0011d260();
		N64.fnc0001cc6c("OffsetBuildingNumber %d\n");
		N64.fnc00013468();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000c9530();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000c9530();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000c9530();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000c9530();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000c9530();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000c9530();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000c9530();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000c9530();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000c9530();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000c9530();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000c9530();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000c9530();
		GameplayOutside.fnc000b84d0();
	}

	// RAM GREECE
	static void fnc002d64d0() {
		GameplayOutside.fnc000800e4();
		GameplayOutside.fnc00080510();
		GameplayOutside.fnc0011d260();
		GameplayOutside.fnc000cdb40();
		GameplayOutside.fnc000cdb40();
		N64.fnc000072cc();
		GameplayOutside.fnc0007956c();
		GameplayOutside.fnc0007a198();
		GameplayOutside.fnc000e35e0();
		GameplayOutside.fnc000e35e0();
		GameplayOutside.fnc000e35e0();
		GameplayOutside.fnc000cdd7c();
		GameplayOutside.fnc000cdd7c();
		GameplayOutside.fnc000dfba8();
		GameplayOutside.fnc000c7e18();
		GameplayOutside.fnc000ca5ec();
		GameplayOutside.fnc000ca5ec();
		GameplayOutside.fnc000e35e0();
		N64.fnc000072cc();
		N64.fnc000073b8();
		GameplayOutside.guess_destroyAlien();
	}

	// RAM GREECE
	static void fnc002d6904() {
		N64.fnc0001cc6c("(%d,%d)\n");
		GameplayOutside.fnc000800e4();
		GameplayOutside.fnc00080510();
		GameplayOutside.fnc0007956c();
		GameplayOutside.fnc0007a198();
		GameplayOutside.fnc000cdb40();
		GameplayOutside.fnc000cdd7c();
		GameplayOutside.fnc000dfba8();
		GameplayOutside.fnc00124b5c();
		N64.fnc0001cc6c("transport up point %d,%d,%d\n");
		GameplayOutside.fnc00087aac();
		GameplayOutside.fnc00087afc();
	}

	// RAM GREECE
	static void fnc002d6d20() {
		N64.fnc00004818();
		N64.fnc000076d4();
		GameplayOutside.fnc001393a0();
		N64.fnc000076d4();
		N64.fnc00004818();
		N64.fnc000076d4();
		N64.fnc0000726c();
		N64.fnc000076d4();
		N64.fnc000076d4();
		N64.fnc00004818();
		N64.fnc000076d4();
		N64.fnc00004818();
		N64.fnc000076d4();
		N64.fnc00004818();
		N64.fnc000076d4();
		N64.fnc0000726c();
		N64.fnc00004818();
		N64.fnc000076d4();
		N64.fnc0000726c();
		N64.fnc000076d4();
		N64.fnc00004818();
		N64.fnc000076d4();
		N64.fnc0000726c();
		N64.fnc000076d4();
		N64.fnc0000726c();
		N64.fnc000076d4();
		N64.fnc0000726c();
		N64.fnc000076d4();
	}

	// RAM GREECE
	static void fnc002d6f7c() {
		N64.fnc00011f90();
		N64.fnc00011f90();
		N64.sins();
		N64.coss();
		N64.sqrtf();
		N64.fnc00003824();
		N64.coss();
		N64.sins();
		N64.coss();
		N64.sqrtf();
		N64.fnc00003824();
		N64.coss();
	}

	// RAM GREECE
	static void fnc002d7334() {
	}

	// RAM GREECE
	static void fnc002d7360() {
	}

	// RAM GREECE
	static void fnc002d738c() {
		GameplayOutside.fnc000808f0();
		GameplayOutside.fnc00086164();
		GameplayOutside.fnc000a931c();
		GameplayOutside.fnc000a931c();
		GameplayOutside.fnc00084e54();
		GameplayOutside.fnc00084fe8();
		GameplayOutside.fnc00087188();
		GameplayOutside.fnc00081f18();
	}

	// RAM GREECE
	static void fnc002d763c() {
		GameplayOutside.fnc000df848();
		GameplayOutside.fnc000c2274();
		GameplayOutside.fnc000c3bd8();
	}

	// RAM GREECE
	static void fnc002d775c() {
		fnc002d763c();
		GameplayOutside.fnc00128428();
		GameplayOutside.fnc000c1ecc();
		GameplayOutside.fnc0007956c();
		GameplayOutside.guess_addActiveObject();
		GameplayOutside.fnc00088e10();
		GameplayOutside.fnc000c1ecc();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000dfa34();
		GameplayOutside.fnc000df848();
	}

	// RAM GREECE
	static void fnc002d7d08() {
		GameplayOutside.fnc0009395c();
		GameplayOutside.fnc0009395c();
		GameplayOutside.fnc000b84d0();
		GameplayOutside.fnc00088760();
	}

	// RAM GREECE
	static void fnc002d7ebc() {
		GameplayOutside.fnc00088760();
		GameplayOutside.fnc00084f00();
		GameplayOutside.fnc00084fe8();
	}

	// RAM GREECE
	static void fnc002d7fc0() {
		fnc002d7d08();
		GameplayOutside.fnc00088760();
		GameplayOutside.fnc000808f0();
		GameplayOutside.fnc00081f18();
		fnc002d7ebc();
	}

	// RAM GREECE
	static void fnc002d8150() {
		GameplayOutside.fnc00137468();
		GameplayOutside.fnc00124b5c();
		GameplayOutside.fnc000df848();
		GameplayOutside.fnc000df848();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000df848();
		GameplayOutside.fnc000c2274();
		GameplayOutside.fnc000df848();
		GameplayOutside.fnc000c1ecc();
	}

	// RAM GREECE
	static void fnc002d84a0() {
		GameplayOutside.fnc00085448();
		GameplayOutside.fnc00129354();
		GameplayOutside.fnc00137468();
	}

	// RAM GREECE
	static void fnc002d852c() {
		GameplayOutside.fnc00091470();
		GameplayOutside.fnc0009170c();
		GameplayOutside.fnc000b325c();
		GameplayOutside.fnc00129354();
		GameplayOutside.fnc00137468();
	}

	// RAM GREECE
	static void fnc002d85f8() {
		GameplayOutside.fnc0008e478();
		GameplayOutside.fnc0008e30c();
		fnc002d84a0();
		fnc002d852c();
		GameplayOutside.fnc0008076c();
	}

	// RAM GREECE
	static void fnc002d8724() {
		GameplayOutside.fnc0008e478();
		GameplayOutside.fnc0008e30c();
		GameplayOutside.fnc00085900();
		fnc002d84a0();
		fnc002d852c();
		GameplayOutside.fnc0008076c();
		GameplayOutside.fnc000a53c0();
		GameplayOutside.fnc0008e524();
		GameplayOutside.fnc0008e978();
		GameplayOutside.fnc0008ef1c();
		GameplayOutside.fnc00137468();
	}

	// RAM GREECE
	static void fnc002d8898() {
		GameplayOutside.fnc000df848();
		GameplayOutside.fnc000dea08();
		GameplayOutside.fnc00137468();
		GameplayOutside.fnc0008aafc();
	}

	// RAM GREECE
	static void fnc002d8bac() {
		GameplayOutside.fnc00086230();
		GameplayOutside.fnc000877e8();
		GameplayOutside.fnc00084fe8();
		GameplayOutside.fnc000871cc();
		GameplayOutside.fnc000a3d00();
	}

	// RAM GREECE
	static void fnc002d8d84() {
		GameplayOutside.fnc00137468();
		GameplayOutside.fnc00088e40();
		GameplayOutside.fnc00087c50();
		GameplayOutside.fnc00087c74();
		GameplayOutside.fnc00128428();
		N64.fnc000038e0();
		GameplayOutside.fnc000ca5ec();
		GameplayOutside.fnc00084fe8();
		GameplayOutside.fnc00087188();
		N64.fnc000038e0();
		GameplayOutside.fnc000a3d00();
		GameplayOutside.fnc000df848();
	}

	// RAM GREECE
	static void fnc002d90c4() {
		GameplayOutside.fnc000873a8();
	}

	// RAM GREECE
	static void fnc002d911c() {
		GameplayOutside.fnc0008064c();
		GameplayOutside.fnc0008076c();
		GameplayOutside.fnc000871cc();
		GameplayOutside.fnc00129354();
		N64.fnc000038e0();
		GameplayOutside.fnc000b325c();
		GameplayOutside.fnc000b325c();
		GameplayOutside.fnc000b325c();
		GameplayOutside.fnc000b325c();
		GameplayOutside.fnc000b325c();
		GameplayOutside.fnc000b325c();
		GameplayOutside.fnc000b325c();
		GameplayOutside.fnc000b325c();
		GameplayOutside.fnc000e24b8();
		N64.sins();
	}

	// RAM GREECE
	static void fnc002d95a8() {
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc002d962c() {
		GameplayOutside.fnc00081e5c();
		GameplayOutside.fnc00081c84();
		GameplayOutside.fnc00137468();
		GameplayOutside.fnc000879a4();
		GameplayOutside.fnc000879a4();
		GameplayOutside.fnc00122524();
		GameplayOutside.fnc00128428();
		GameplayOutside.fnc000dee5c();
		GameplayOutside.fnc000c541c();
		GameplayOutside.fnc000dea08();
		GameplayOutside.fnc00135d44();
	}

	// RAM GREECE
	static void fnc002d9964() {
		fnc002d962c();
		GameplayOutside.fnc000877e8();
		GameplayOutside.fnc000877e8();
		GameplayOutside.fnc00086230();
		GameplayOutside.fnc00087188();
		fnc002d95a8();
		GameplayOutside.fnc00090a6c();
		GameplayOutside.fnc00090a6c();
	}

	// RAM GREECE
	static void fnc002d9c60() {
		GameplayOutside.fnc0008916c();
		GameplayOutside.fnc00128428();
		GameplayOutside.fnc000c7924();
		GameplayOutside.fnc000c80f0();
		GameplayOutside.fnc000e093c();
		GameplayOutside.fnc000e093c();
		N64.coss();
		N64.sins();
		GameplayOutside.fnc0008916c();
		GameplayOutside.fnc00128428();
		GameplayOutside.fnc000c7924();
		GameplayOutside.fnc000c80f0();
		GameplayOutside.fnc000c820c();
		GameplayOutside.fnc000c8184();
		GameplayOutside.fnc0008916c();
		GameplayOutside.fnc00128428();
		GameplayOutside.fnc000c7924();
		GameplayOutside.fnc000c80f0();
		GameplayOutside.fnc000c820c();
		GameplayOutside.fnc000c8184();
		GameplayOutside.fnc0008916c();
		GameplayOutside.fnc00128428();
		GameplayOutside.fnc000c7924();
		GameplayOutside.fnc000c80f0();
		GameplayOutside.fnc000c820c();
		GameplayOutside.fnc000c8184();
		GameplayOutside.fnc0008916c();
		GameplayOutside.fnc00128428();
		GameplayOutside.fnc000c7924();
		GameplayOutside.fnc000c80f0();
		GameplayOutside.fnc000c820c();
		GameplayOutside.fnc000c8184();
		GameplayOutside.fnc00088e10();
		GameplayOutside.fnc00088e10();
		GameplayOutside.fnc00088e10();
	}

	// RAM GREECE
	static void fnc002da378() {
		GameplayOutside.fnc00137468();
		fnc002d9c60();
		GameplayOutside.fnc00089eb4();
	}

	// RAM GREECE
	static void fnc002da3ec() {
		GameplayOutside.fnc00137468();
		GameplayOutside.fnc00137468();
		N64.sqrtf();
		GameplayOutside.fnc00090948();
		GameplayOutside.fnc00090948();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000a9820();
		GameplayOutside.fnc00137468();
		GameplayOutside.fnc00084fe8();
		GameplayOutside.fnc00128504();
		GameplayOutside.fnc000868a4();
		GameplayOutside.fnc00137468();
		GameplayOutside.fnc000dea08();
		N64.coss();
		N64.sins();
		GameplayOutside.fnc000ca5ec();
		N64.coss();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000808f0();
		GameplayOutside.fnc0008751c();
		GameplayOutside.fnc0008751c();
		GameplayOutside.fnc00084fe8();
		GameplayOutside.fnc000871cc();
		N64.fnc000038e0();
		GameplayOutside.fnc00087188();
		N64.fnc000038e0();
		N64.coss();
		N64.coss();
		N64.coss();
		GameplayOutside.fnc000ca5ec();
		GameplayOutside.fnc000ca5ec();
		GameplayOutside.fnc000a9738();
		GameplayOutside.fnc000a92e0();
		GameplayOutside.fnc000a9f34();
	}

	// RAM GREECE
	static void fnc002db16c() {
		GameplayOutside.fnc00081f18();
		GameplayOutside.fnc00128504();
		GameplayOutside.fnc000dee5c();
		GameplayOutside.fnc000dea08();
		GameplayOutside.fnc000c541c();
		GameplayOutside.fnc00137468();
		GameplayOutside.fnc00135d44();
		GameplayOutside.fnc000879a4();
		GameplayOutside.fnc00122524();
		GameplayOutside.fnc00137468();
		N64.sins();
		N64.coss();
		GameplayOutside.fnc000c541c();
		N64.fnc00003824();
		GameplayOutside.fnc00102ddc();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc00081f18();
		GameplayOutside.fnc00137468();
		GameplayOutside.fnc000879a4();
		GameplayOutside.fnc00123ac4();
		GameplayOutside.fnc00122524();
		GameplayOutside.fnc00137468();
		GameplayOutside.fnc00102d00();
		N64.sins();
		N64.coss();
		GameplayOutside.fnc000c541c();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc00081f18();
	}

	// RAM GREECE
	static void fnc002dba00() {
		GameplayOutside.fnc000a93a4();
		fnc002db16c();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc002dbb88() {
		GameplayOutside.fnc000a93a4();
	}

	// RAM GREECE
	static void fnc002dbbbc() {
		GameplayOutside.fnc000a93a4();
		fnc002db16c();
		fnc002db16c();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc002dbda8() {
		GameplayOutside.fnc000a93a4();
	}

	// RAM GREECE
	static void fnc002dbddc() {
		GameplayOutside.fnc000a93a4();
		fnc002db16c();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc002dbf64() {
		GameplayOutside.fnc000a93a4();
	}

	// RAM GREECE
	static void fnc002dbf98() {
		GameplayOutside.fnc000a93a4();
		fnc002db16c();
		fnc002db16c();
		N64.fnc000038e0();
	}

	// RAM GREECE
	static void fnc002dc184() {
		GameplayOutside.fnc000a93a4();
	}

	// RAM GREECE
	static void fnc002dc1b8() {
		GameplayOutside.fnc00128428();
		GameplayOutside.fnc000df038();
	}

	// RAM GREECE
	static void fnc002dc2e4() {
		GameplayOutside.fnc0008916c();
		N64.fnc000044d4();
		GameplayOutside.fnc000df038();
		GameplayOutside.fnc000c7924();
		GameplayOutside.fnc00088e10();
		GameplayOutside.fnc000a9738();
		GameplayOutside.fnc00137468();
	}

	// RAM GREECE
	static void fnc002dc500() {
		fnc002dc2e4();
		N64.fnc000044d4();
		N64.fnc000044d4();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		N64.fnc000038e0();
		GameplayOutside.fnc000ca5ec();
		GameplayOutside.fnc000821f0();
		GameplayOutside.fnc00128428();
		GameplayOutside.fnc000df038();
	}

	// RAM GREECE
	static void fnc002dc91c() {
		fnc002dc500();
		GameplayOutside.fnc000a93a4();
	}

	// RAM GREECE
	static void fnc002dc98c() {
		fnc002dc500();
		GameplayOutside.fnc000a93a4();
	}

	// RAM GREECE
	static void fnc002dc9fc() {
		fnc002dc500();
		GameplayOutside.fnc000a93a4();
	}

	// RAM GREECE
	static void fnc002dca6c() {
		fnc002dc500();
		GameplayOutside.fnc000a93a4();
	}

	// RAM GREECE
	static void fnc002dcadc() {
		N64.coss();
		N64.coss();
		GameplayOutside.fnc00090948();
		GameplayOutside.fnc00090948();
		GameplayOutside.fnc0012b21c();
		GameplayOutside.fnc000a92b0();
		GameplayOutside.fnc000df848();
		GameplayOutside.fnc00137468();
		GameplayOutside.fnc000aa340();
		GameplayOutside.fnc00128504();
		N64.coss();
		N64.sins();
		GameplayOutside.fnc000ca5ec();
		GameplayOutside.fnc00128504();
		GameplayOutside.fnc000dea08();
		N64.coss();
		N64.sins();
		GameplayOutside.fnc000ca5ec();
	}
}
