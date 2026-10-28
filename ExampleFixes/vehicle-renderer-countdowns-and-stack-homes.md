## Incorrect ASM

`func_8010065C_10F60C` initially emitted a scalar matrix-copy loop, omitted the final entries of vehicle/detail countdowns, and used unsigned attachment-coordinate loads. The detail loop calculated its entry pointer before the zero-count guard, extending its lifetime and increasing the frame. Later versions had the correct instructions but different stack homes and temporary registers.

## Code changed

Use the matrix assignment `D_801592C0 = D_80031120_31D20`. Express descending loops with postdecrement tests, including guarded `do` loops for vehicles and detail parts. Initialize pop-loop counters to 3, 4, and 5 for flags `0x40`, `0x80`, and `0x100`. Calculate the detail-entry pointer inside its count guard. Define the attachment coordinates at `VehicleType` offsets `0x5E`–`0x60` as `s8`.

Reuse the existing `vehicle` local for the level-specific setup. Order the first seven locals as follows so CFE assigns the target stack homes:

```c
s32 index;
s32 i;
VehicleType *type;
s32 count;
s32 matrixCount;
s32 listIndex;
void (*updateMtx)(s32);
```

Consume the final flags with `if (((shadowPart++)->flags & 2) && (matrixCount > 0))`, rather than loading a separate flags local and incrementing the pointer separately. Remove the unused flags local and old padding array.

Retain `if (arg0) {}` immediately after the visible-vehicle array update and counter increment. This emits no instructions but preserves the boundary before camera setup. Remove the earlier experimental `if (&arg0 == 0) {}` parameter-homing hint: retaining it assigns the initial display-list address to `t0` instead of the target's `t1`.

## Correct ASM

The matrix assignment emits the target's three-word copy loop and final word. All countdowns include their final entries; attachment coordinates use `lb`. The frame is `0x168`, with the vehicle counter at `sp+0x164`, type pointer at `sp+0x15C`, detail counter at `sp+0x158`, callback at `sp+0x14C`, and derived vehicle-index cursor at `sp+0x6C`.

The postincrement flags expression emits `lh a0,0xE(s6)` followed by the index/pointer increments and `andi t9,a0,2`. The camera pointer uses `v0`, the visible-counter address uses `v1`, and the initial display-list address uses `t1`. All 1,390 instructions match, with SDK graphics macros throughout, and `tools/make.ps1` reports `build/bh.us.z64: OK`.
