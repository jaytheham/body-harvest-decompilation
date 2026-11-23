# Function-local statics are cached in registers and stored back before calls

`func_8007DDA0_165E60` keeps its route-following state in eleven words of the data section that no other
function references.

## Incorrect ASM

With the state declared as file-scope globals (or file-scope `static`), each use is a separate load into a
temporary, an increment goes through a second temporary, and nothing is written back before a call:

```asm
lw      v0,%lo(D_800A0908_1889C8)(v0)
lw      t6,%lo(D_800A0900_1889C0)(t6)
...
slti    at,v0,3
beqz    at,skip
...
jal     func_80081E90_169F50
...
lw      t9,%lo(D_800A0908_1889C8)(t9)
addiu   t8,t9,1
sw      t8,%lo(D_800A0908_1889C8)(at)
```

Emulating the target with local copies of the globals, explicit write-backs and alias symbols reproduces the
stores but leaves every register and several schedules wrong.

## Code changed

Declare the state inside the function, in data-section order, and use it directly:

```c
void func_8007DDA0_165E60(VehicleInstance *arg0, OSContPad *arg1) {
	static s32 prevFlags = 1;
	static s32 cutsceneFrame = 0;
	static s32 pathIndex = 0;
	static s32 timelineIndex = 0;
	/* ... */
	if (cutsceneFrame >= D_800A05FC_1886BC[D_800E6A34].unk18->transitionFrames[timelineIndex]) {
		if (timelineIndex < 3) {
			func_80081E90_169F50(timelineIndex - 1, timelineIndex, D_800A05FC_1886BC[D_800E6A34].unk18->transitionValues[timelineIndex][1]);
			timelineIndex++;
		}
	}
```

IDO emits a function-local static at the point of its function among the file's data definitions, so any
data that follows it in the ROM must be defined after the function in the C file (here the four padding bytes
at `0x1889E8` moved below the function). Remove the `extern` declarations and any linker aliases of the old
global names. Read fields through the global array each time instead of naming route, path or timeline
pointers: the named pointers take the low registers and push the statics out of place.

## Correct ASM

A static that is used in several blocks gets one register for the whole function. It is written back at the
end of a block that leaves its range and again before a call, even when it has not changed, reloaded after the
call, and incremented in place:

```asm
lw      t4,%lo(D_800A0908_1889C8)(t4)
lw      a2,%lo(D_800A0900_1889C0)(a2)
...
sw      a2,%lo(D_800A0900_1889C0)(at)
sw      t4,%lo(D_800A0908_1889C8)(at)
slti    at,t4,3
beqz    at,skip
...
sw      t4,%lo(D_800A0908_1889C8)(at)
jal     func_80081E90_169F50
...
lw      t4,%lo(D_800A0908_1889C8)(t4)
addiu   t4,t4,1
sw      t4,%lo(D_800A0908_1889C8)(at)
```

A narrowed read of a static held in memory folds into the load: `func_80081E08_169EC8(timelineIndex)` with an
`s16` parameter gives `lh a0,%lo(D_800A0908_1889C8 + 2)`, with no separate symbol for the low half.

Signs that a group of globals is really a set of function-local statics: only one function references them,
they sit together in the data section, the target stores unchanged values before calls, and the same variable
keeps the same high temporary register (`t2`..`t5`) in unrelated blocks.
