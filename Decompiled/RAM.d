module ram;

	public:

	static void StoreByte(byte value, uint address) {}
	static void StoreUbyte(ubyte value, uint address) {}
	static void StoreShort(short value, uint address) {}
	static void StoreUshort(ushort value, uint address) {}
	static void StoreWord(int value, uint address) {}

	static byte GetByte(uint address) { return 0 ; }
	static ubyte GetUbyte(uint address) { return 0 ; }
	static short GetShort(uint address) { return 0 ; }
	static ushort GetUshort(uint address) { return 0 ; }
	static int GetWord(uint address) { return 0 ; }

	static int x80000300; // If 0 shows "This gamepak is only available for the NSTC..."

	static short x800313c8;

	static short x800313d0;

	static byte x800313e8;

	static byte x800313ec;

	static byte x800313f0;

	static byte x800313f4;

	static short x800313f8;

	static short x800313fc;

	static int x80031420;

	static byte maxHumanDeathsAllowed; // 800314c4

	static ubyte x80031620;
	static ubyte x80031621;
	static ubyte x80031622;
	static ubyte x80031623;

	static short x80031634;
	static short x80031636;

	static int x80031b84;

	static int x80034484;

	static int x80035610;
	static int x80035614;

	public class OSViMode {
		// 0x50 in size
	}
	static OSViMode[56] osViModes; // 80035630

	static int x80035b5c;
	static int x80035b60;

	public static class x80036734 {
		static ushort x0;

		static int buffer; // 0x4
		static int x8;

		static int x20;
	}

	struct UnkWarpPointData
	{
		short unk_0x0;
		short unk_0x2;
		ubyte unk_0x4;
		ubyte unk_0x5;
		short unk_0x6;
	}
	static UnkWarpPointData[6][5] x8003E000;

	static short x8003e0f0; // Greece boss warp ??? sets x80047f98
	static short x8003e0f2; // Java boss warp ???
	static short x8003e0f4; // America boss warp ???
	static short x8003e0f6; // Siberia boss warp ???
	static short x8003e0f8; // Comet boss warp ???

	static byte x80042da8;

	static int x80047584; // If 0 shows no controller notice at startup
	static short controllerOneButtonState; // 80047588
	static byte x8004758a;
	static byte x8004758b;

	static ushort controllerTwoButtonState; // 8004758e

	static ushort x800475d8;

	static ushort x800475e0;

	static short x800476a0;
	static short guess_enablesInput; // 800476a2

	static int x800476c0;

	static short x8004771c;

	static short x80047720; // Debug graph mode

	static byte x80047743;
	static byte x80047744;
	static byte x80047745;

	static ubyte x8004794c;

	static short x8004794e;

	static float x80047960;
	static short x80047964;

	static int x80047968;

	static byte x80047f80;

	static int D_80047F84;

	static int currentLevel; // 80047f90 1=Greece
	static int x80047f94;
	static int x80047f98;
	static int warpPointNumber; // 80047f9c

	static byte x80048024;
	static byte x80048025;
	static short x80048026;
	static short x80048028;

	static int showDemoText; // 80048034

	static byte weaponSlot1; // 80048138
	static byte weaponSlot2;
	static byte weaponSlot3;
	static byte weaponSlot4;
	static byte weaponSlot5;
	static byte weaponSlot6;
	static byte weaponSlot7;

	static byte numHumansEatenToSpawnMutant; // 80048168

	static short D_8004816A;

	static short x8004816e;
	static short x80048170;

	static short x80048176;

	static int x80048188;

	static int x8004d150;
	static int x8004d154;
	static int x8004d158;

	static int x8004dc48;
	static int x8004dc4c;

	static short x8004dc60;

	static int indoorRoomLayoutToLoadId; // 80052548

	static int x80052550;

	static int x80052a8c;
	static uint millisecondsElapsedInLevel; // x80052a90
	static int x80052a94;
	struct LevelStats
	{
		int score;
		short secondsElapsed;
		short unk_0x6;
	}
	static LevelStats[6] levelStats; // Why are there 6 levels ?? D_80052A98

	static short x80052ac8;
	static byte x80052aca;
	static byte x80052acb; // Rendering Flags? 1=Shadows 2=Objects
	static ubyte playerModifier; // 80052acd 0=Adam 2=EvilAdam

	static int x80052ad0;
	static int x80052ad4;

	static int gameplayMode; // 80052adc

	static int xx80052ad8;

	struct Unk_80052ae8 // 0x44 in size
	{
		float unk_0x0;
		float unk_0x4;
		float unk_0x8;
		float unk_0xc;
		float unk_0x10;
		float unk_0x14;
		short unk_0x18;
		short unk_0x1a;
		short unk_0x1c;
		short unk_0x1e;

		int unk_0x30;
		short unk_0x34;
		short unk_0x36;
		void* unk_0x38;
		short unk_0x3c;
		short unk_0x3e;
	}
	static Unk_80052ae8 x80052ae8;

	static int x80052b2c;
	struct object_x80052b2c // object pointed to by 80052b2c
	{
		float unk_0x0;
		float unk_0x4;
		float unk_0x8;
		float unk_0xc;

		short unk_0x1c;
		short unk_0x1e;
	}

	static int x80052b34;
	struct object_x80052b34 // Object pointed to by 80052b34
	{
		short x; // 0
		short y; // 2
		short z; // 4
		short unk_0x6;

		ubyte x1a;
	}
	static int ticksElapsedDuringFrame; // 80052b38
	static int x80052b3c;

	static int D_80052B5C; // score ?

	static int x800554d0;

	static int x8005bb2c;

	static int x8005bb48;
	static int x8005bb4c;



	static int x80067388;

	static int x80067390;

	static int x80067538;

	static int x80067540;

	static int x800676e8;

	static int x800676f0;

	static int x80067898;

	static int x800678a0;

	static short x80068078;

	static int x80068080;
	static int videoRenderWidthInPixels; // 80068084
	static int x80068088;
	static int fractionOfFramebufferWidthRendered; // 8006808c
	static float x80068090; // video y scale

	static int x8006809C;
	static class object_at_x800680a0 { // object AT 800680a0
		public static short x0;

		public static short x20;

		// 0x40 = OSMesgQueue 

		// 0x58 = OSMesg[8]

		// 0x78 = OSMesgQueue 

		// 0x90 = OSMesg[8]

		public static int x274;
		public static int x278;
		public static int x260;
		public static int x27c;
		public static int x264;
		public static int x268;
		public static int x26c;
		public static int x270;
	}

	static int x80068328;
	static int x8006832c;

	static short x8006c558;

	static float x8008ddf4;

	static float x8008ddfc;

	static short frontEndStateToSwitchTo; // 800946dc

	static short x80094824;

	static short x80094828;

	static short x8009482c;

	static short x80094830;

	static ubyte x800a0968;

	static byte x800a096c;

	static ubyte x800d6d88;
	static ubyte x800d6d89;
	static ubyte x800d6d8a;

	static int x800d6d8c;

	struct unk_800D6DC0
	{
		// 0 -
		ushort unk_0x12;
		ushort unk_0x14;
		ubyte unk_0x16;
		// -
		ubyte unk_0x1c;
		// -
		ubyte unk_0x26;
		// 0x27
		short unk_0x28;
		// 0x2a
	}
	static unk_800D6DC0[42] D_800D6DC0;

	static ubyte x800d74a0;

	static ushort x800d74a4;
	static ushort x800d74a6;

	static ushort D_800D74AA;

	static float x8008ddf8;

	static float x800e659c;

	static float x800e65a0;
	static float x800e65a4;
	static int x800e65a8;
	static int x800e65ac;

	static int x800e65b8;

	static int x800e65d4;

	static ubyte x800e65ed;

	static int x800e6690;

	static int x800e6694;
	static int x800e6698;
	static int x800e669c;

	static int x800e66a4;

	static byte x800e6ad8;

	static int x800e6edc;
	static int x800e6ee0;

	static float npcAnimationSpeed; // 800e6ee8

	static byte x800e6efd;

	static int x800e7398;

	static byte x800e73de; // Indoor camera location / direction / etc
	static ubyte x800e73df;
	static short indoorCameraYaw; // 800e73e0
	static short indoorCameraPitch; // 800e73e4
	static float x800e73e8;

	static float x800e73f0;
	static float x800e73f4;
	static float x800e73f8;

	static float x800e7410;
	static float x800e7414;
	static float x800e7418;

	static int x800eae90;

	// 8013b940 cheat struct array[21]
	// cheat name = byte[12]
	// cheat enable function pointer = uint

	static int x8013d580;

	static int x8013d758;
	static int x8013d75c;

	static int x80149398;
	static int x8014939c;

	static int x801493a0;
	static int x801493a4;

	static short x801493d8;

	static short x801493e0;
	static short x801493e2;

	static byte x801493e6;

	static short x80149404;

	static short x80149434;
	static short x80149436;

	static short x80149440;

	static int x80149444;

	static int x80149470;

	static int x801494b8;
	static ubyte x801494bc;

	static int numberOfMissionConditions; // 80149b28
	static int numberOfGameConditions; // 80149b2c
	static int numberOfCommands; // 80149b30
	static int numberOfMapInfos; // 80149b34
	static int numberOfRandomObjects; // 80149b38
	static int numberOfDialogueConditions; // 80149b3c
	static int numberOfCommandObjects; // 80149b40
	static int numberOfCharacters; // 80149b44
	static short numberOfMissions; // 80149b48
	static short x80149b4a;

	static short x8014ecf0;

	static short x8014ed56;

	static short x80152c90;

	static short x80157590;

	static int x80157a28;

	static short x80157f68;

	static short x80157f96;

	static float x80158e58; // guess_currentAcceleration

	static int x80159300;

	static int x80159320;

	class Object80222a78 // 0x10 in size
	{
		public int x0;
		public int x4;
		public int x8;
		public int xc;
	}

	static Object80222a78[] x80222a78;

	class AlienWave // 0x14 in size
	{
		public ubyte waveType;
		// byte
		public short xPosition;
		public short yPosition; 
		// short
		// 3 more words of data
	}

	static int nextTrigger; // 80223778

	static AlienWave[] alienWaves; // 80223780

	static int x80224680;

	struct Unk_80259490
	{
		short unk_0x0;
		short unk_0x2;

		short unk_0x8;
	}
	static Unk_80259490 x80259490;