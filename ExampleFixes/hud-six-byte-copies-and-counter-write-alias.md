# HUD tick: six-byte copies and split counter write

Matched `func_8008D900_1759C0` in `overlay_gameplay/inside/173B60.c`.

The opening `lw at; sw at; lhu at; sh at` sequences are six-byte struct assignments. The original `s32 + u16` representation was eight bytes because of tail padding, so copying it generated two word loads/stores. Represent `Unk800A4354` as two signed halfwords and one unsigned halfword, and initialize the first data object as `{0x0110, 0x0028, 0xFFFF}`. Whole-struct assignments generate the target copies. IDO retains the original global spacing; verify all subsequent symbol addresses and the ROM checksum.

Declare two unused word locals before the three copied structs and two after them. This retains the 0x68 stack frame and copies at 0x58, 0x50, and 0x48. Keep the later graphics commands as normal GBI macros.

The counter update otherwise shares a full address in `v0`. Use a separate write alias, `D_800A436C_18C42C_W = D_800A436C_18C42C + 1`, with its declaration in `variables.us.h` and relocatable linker definition in `undefined_syms.us.txt`. This produces the target folded `lhu` and independent `lui at; sh` without allocating additional data. Changing `+= 1` to postincrement did not fix the address sharing and altered stack homes.

Pass the projection matrix through `K0_TO_PHYS(&D_800FCAD8)` to reproduce the target 0x1FFFFFFF address mask. All remaining control flow and display-list commands matched the existing C reconstruction.

Verification: no function assembly differences and `build/bh.us.z64: OK`.
