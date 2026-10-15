# CFE30 code changes that reproduced target instruction sections

## Spark allocator frame and byte load: func_800CC7B0_DB760

Removing both the explicit full-entry pointer and cached half-width local reduced the frame from `0x70` to the target `0x68`; IDO still cached both expressions across random calls. Reversing the scalar declaration order placed the random halfwords at `0x58`/`0x5A` and the unit index at `0x5E`. A local `{ s16 pad; s8 value; }` placed the signed velocity at `0x66`.

The lifetime parameter had to remain a word for existing callers. Reading `((u8 *)&arg2)[3]` rather than casting its value to `u8` produced the target `lbu` from the big-endian argument home.

## Payload initialization order: func_800DA510_E94C0

Initializing the source payload pointer before the destination entry pointer reproduced every target spill offset. Caching the destination byte flag before the call placed its load at the target position.

## Shield removal: func_800E5E3C_F4DEC

The second print format is `shield remove\n` and takes no substitutions. Removing its three inferred variadic arguments eliminated extra moves, saved registers, and spills. Copying the complete three-byte entry during compaction, rather than assigning its bytes separately, reproduced the target load/store order. A word `newCount` removed redundant signed-halfword truncation.

Keeping the final print and count reload in a comma expression moved the count `lh` before the cached-type `lw`, matching the target:

```c
osSyncPrintf(&D_80143F94_152F44), count = D_80152C96;
```

## Shield update: func_800E5B78_F4B28

A word timer cache plus explicit count refreshes reproduced the byte-store/count-load/mask sequence. Assigning the short copy index before calculating the new count, then reusing the timer word for that count, reproduced the target saved-register reuse.

## Particle setup: func_800C56A4_D4654

A short index and a separate word allocation result allowed comparison of raw `v0` with `-3`, restored `a2` for white, and reproduced the byte-masked loop. Placing the constant kind store after the parameter-backed fields corrected their argument-load registers. Initializing the loop counter inside the kind store put `move s0,zero` after the byte store, exactly as in the target:

```c
D_80154318[idx].payload[10] = (i = 0) + 2;
```

## Random emitter slots: func_800E24B8_F1468

Declaring the cached divisor 30 as a signed short placed the three unsigned-halfword random results at the target `sp+0x24`, `sp+0x26`, and `sp+0x28`, retaining the initial random/absolute-speed branch.

## Linked spark renderer: func_800CCD54_DBD04

Using a do/while traversal and `index = D_80154318[index].unk4` at its end removed the extra saved particle pointer. Together these changes reproduced the 215-instruction order and target `0x90` frame.

## Water-effect initializer: func_800E614C_F50FC

Moving the random-angle call before the three slot-position stores restored the target call/store order.

## Fire update: func_800C3E2C_D2DDC

Compute the linked control payload before updating its phase, retain a named word linked index, and read the primary size through `D_80154318[idx]`. This reproduces the saved-pointer lifetimes and removes the duplicate root alias. Testing `(u32)(rand() % 8) < 1U` retains the target signed-remainder normalization that `== 0` removes. Write `random offset + position` for X/Z and `position + random offset` for Y; these operand orders corrected the temporary allocation. The complete function reached score zero and passed the ROM checksum.
