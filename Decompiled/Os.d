module os;

class OS
{
public:

	enum Priority
	{
		OS_PRIORITY_IDLE = 0,
		OS_PRIORITY_APPMAX = 127,
		OS_PRIORITY_SIMGR = 140,
		OS_PRIORITY_PIMGR = 150,
		OS_PRIORITY_RMONSPIN = 200,
		OS_PRIORITY_RMON = 250,
		OS_PRIORITY_VIMGR = 254,
		OS_PRIORITY_MAX = 255
	}

	enum ViSpecialFeature
	{
		OS_VI_GAMMA_ON = 0x0001,
		OS_VI_GAMMA_OFF = 0x0002,
		OS_VI_GAMMA_DITHER_ON = 0x0004,
		OS_VI_GAMMA_DITHER_OFF = 0x0008,
		OS_VI_DIVOT_ON = 0x0010,
		OS_VI_DIVOT_OFF = 0x0020,
		OS_VI_DITHER_FILTER_ON = 0x0040,
		OS_VI_DITHER_FILTER_OFF = 0x0080
	}

	enum ViMode
	{
		osViModeNtscLpn1, // Individual VI NTSC modes
		osViModeNtscLpf1,
		osViModeNtscLan1,
		osViModeNtscLaf1,
		osViModeNtscLpn2,
		osViModeNtscLpf2,
		osViModeNtscLan2,
		osViModeNtscLaf2,
		osViModeNtscHpn1,
		osViModeNtscHpf1,
		osViModeNtscHan1,
		osViModeNtscHaf1,
		osViModeNtscHpn2,
		osViModeNtscHpf2,
		osViModePalLpn1, // Individual VI PAL modes
		osViModePalLpf1,
		osViModePalLan1,
		osViModePalLaf1,
		osViModePalLpn2,
		osViModePalLpf2,
		osViModePalLan2,
		osViModePalLaf2,
		osViModePalHpn1,
		osViModePalHpf1,
		osViModePalHan1,
		osViModePalHaf1,
		osViModePalHpn2,
		osViModePalHpf2,
		osViModeMpalLpn1, // Individual VI MPAL modes
		osViModeMpalLpf1,
		osViModeMpalLan1,
		osViModeMpalLaf1,
		osViModeMpalLpn2,
		osViModeMpalLpf2,
		osViModeMpalLan2,
		osViModeMpalLaf2,
		osViModeMpalHpn1,
		osViModeMpalHpf1,
		osViModeMpalHan1,
		osViModeMpalHaf1,
		osViModeMpalHpn2,
		osViModeMpalHpf2,
		osViModeFpalLpn1, // Individual VI FPAL modes
		osViModeFpalLpf1,
		osViModeFpalLan1,
		osViModeFpalLaf1,
		osViModeFpalLpn2,
		osViModeFpalLpf2,
		osViModeFpalLan2,
		osViModeFpalLaf2,
		osViModeFpalHpn1,
		osViModeFpalHpf1,
		osViModeFpalHan1,
		osViModeFpalHaf1,
		osViModeFpalHpn2,
		osViModeFpalHpf2
	}

	enum Event
	{
		OS_EVENT_SW1 = 0,     /* CPU SW1 interrupt */
		OS_EVENT_SW2 = 1,     /* CPU SW2 interrupt */
		OS_EVENT_CART = 2,     /* Cartridge interrupt: used by rmon */
		OS_EVENT_COUNTER = 3,     /* Counter int: used by VI/Timer Mgr */
		OS_EVENT_SP = 4,     /* SP task done interrupt */
		OS_EVENT_SI = 5,     /* SI (controller) interrupt */
		OS_EVENT_AI = 6,     /* AI interrupt */
		OS_EVENT_VI = 7,     /* VI interrupt: used by VI/Timer Mgr */
		OS_EVENT_PI = 8,     /* PI interrupt: used by PI Manager */
		OS_EVENT_DP = 9,     /* DP full sync interrupt */
		OS_EVENT_CPU_BREAK = 10,    /* CPU breakpoint: used by rmon */
		OS_EVENT_SP_BREAK = 11,    /* SP breakpoint:  used by rmon */
		OS_EVENT_FAULT = 12,    /* CPU fault event: used by rmon */
		OS_EVENT_THREADSTATUS = 13,    /* CPU thread status: used by rmon */
		OS_EVENT_PRENMI = 14,    /* Pre NMI interrupt */
		OS_EVENT_RDB_READ_DONE = 15,    /* RDB read ok event: used by rmon */
		OS_EVENT_RDB_LOG_DONE = 16,    /* read of log data complete */
		OS_EVENT_RDB_DATA_DONE = 17,    /* read of hostio data complete */
		OS_EVENT_RDB_REQ_RAMROM = 18,    /* host needs ramrom access */
		OS_EVENT_RDB_FREE_RAMROM = 19,    /* host is done with ramrom access */
		OS_EVENT_RDB_DBG_DONE = 20,
		OS_EVENT_RDB_FLUSH_PROF = 21,
		OS_EVENT_RDB_ACK_PROF = 22
	}
}