## Incorrect ASM

In `func_80128E48_137DF8`, the fully inlined fade calculation left the frame eight bytes too small:

```asm
addiu sp,sp,-0x80
lw t8,0x90(sp)
```

## Code changed

Declare a double intermediate immediately before `length`, after the three integer midpoint locals. Assign the remaining distance to it before multiplying by the double fade coefficient:

```c
f64 fade;
f32 length;
/* existing direction and step locals */

fade = (f64)((length - (f32)startStep) - startStepF);
startStepF = (f32)(s32)(fade * 0.7);
```

Keep the multiplication outside the assignment to `fade`; assigning the complete product to it changes floating-point allocation.

## Correct ASM

```asm
addiu sp,sp,-0x88
lw t8,0x98(sp)
```

The existing float homes remain `sp+0x6C`, `sp+0x68`, `sp+0x64`, and `sp+0x60`. This fixes the frame and local layout only; the endpoint allocation differences in the complete function remain unresolved.

## Incorrect ASM

The endpoint parameters remained cached across the graphics writes, omitting their full-word stores and reloads. Taking their addresses also made IDO recompute the initial half-deltas after `sqrtf`.

## Code changed

Tell IDO 5.3 that the actual `sqrtf` implementation has no side effects, and write the trimmed endpoints through their parameter addresses:

```c
#pragma sgi_no_side_effects(sqrtf)
/* ... */
(&arg3)[0] = (s32)((f32)arg3 - dirX * startStepF);
(&arg4)[0] = (s32)((f32)arg4 - dirY * startStepF);
(&arg5)[0] = (s32)((f32)arg5 - dirZ * startStepF);
```

The linked `sqrtf` consists of `jr ra` with `sqrt.s f0,f12` in its delay slot, so the annotation describes its implementation. IDO recognizes `sgi_no_side_effects`; the tested `no_side_effects` spelling did not have this effect.

## Correct ASM

The half-deltas survive the call. Each endpoint now has a full-word store to its incoming parameter home followed by a later full-word load for the final vertex:

```asm
sw ...,0x94(sp)
sw ...,0x98(sp)
sw ...,0x9c(sp)
/* graphics setup and earlier vertices */
lw ...,0x94(sp)
lw ...,0x98(sp)
lw ...,0x9c(sp)
```

The function now has the target's `0x50C` size and `0x88` frame. This fixes these memory operations only; instruction scheduling and register allocation still differ.

## Incorrect ASM

After the first vertex, IDO forwarded the value written by `D_8005BB34++` into the middle vertex's first coordinate store. The target reloads the pointer instead:

```asm
sw ...,0(v0)
/* missing lw ...,0(v0) */
/* fade calculation */
sh ...,0(cached_increment_result)
```

## Code changed

Read the pointer storage as volatile for this one destination expression. Keep the other vertex accesses ordinary; the target forwards the increment into the final vertex's first coordinate store.

```c
(*(Vtx * volatile *)&D_8005BB34)->v.ob[0] =
    (s16)(s32)((f32)midX + dirX * startStepF);
```

## Correct ASM

```asm
sw ...,0(v0)
lw ...,0(v0)
/* fade calculation */
sh ...,0(reloaded_pointer)
```

## Incorrect ASM

The endpoint conversion contained an extra `nop` after moving the scaled integer back to the FPU. Reserving the graphics packet only inside the later render-mode macro left no packet operation available there.

## Code changed

Replace the otherwise constant color local with the first packet pointer. Capture that packet before scaling the second random offset, advance the cursor after trimming the endpoints, and pass the saved pointer to the render-mode macro. Keep the later color stores as literal `255`.

```c
Gfx *packet;
/* other locals, including fade */
endStep = func_800038E0_44E0() % 30;
/* existing allocation boundary */
packet = D_8005BB30;
endStep = (s32)((f32)endStep * length / 100.0f);
/* endpoint conversion */
D_8005BB30++;
gDPSetRenderMode(packet, G_RM_AA_ZB_XLU_LINE, G_RM_NOOP2);
```

## Correct ASM

The packet operations and constant materialization fill the conversion latency. The resulting function contains all 323 target instructions by opcode count, with no surplus `nop`; its size is `0x50C` and its frame is `0x88`. Register allocation and instruction order still differ, so this is a partial fix, not a complete function match.


## Incorrect ASM

In `func_80128E48_137DF8`, the unsigned second-step temporary with signed arithmetic had the correct `0x88` frame and all 323 target opcodes, but the two float values used the opposite registers:

```asm
cvt.s.w $f2,$f8       /* second endpoint trim: target uses f0 */
mul.s   $f10,$f14,$f2
/* later, rounded fade distance */
cvt.s.w $f0,$f8       /* target uses f2 */
mul.s   $f10,$f14,$f0
```

## Code changed

Keep the existing empty conditional after the second random remainder, and add a second block boundary immediately after the middle vertex's first coordinate store:

```c
endStep = func_800038E0_44E0() % 30;
if (255) {}
/* signed scaling, endpoint trimming, graphics setup, first vertex */
stepLength = startStep;
fade = (length - stepLength) - (s32)endStep;
stepLength = (s32)(fade * 0.7);
(*(Vtx * volatile *)&D_8005BB34)->v.ob[0] = midX + dirX * stepLength;
if (255) {}
D_8005BB34->v.ob[1] = midY + dirY * stepLength;
D_8005BB34->v.ob[2] = midZ + dirZ * stepLength;
```

## Correct ASM

```asm
cvt.s.w $f0,$f8       /* second endpoint trim */
mul.s   $f10,$f14,$f0
/* later, rounded fade distance */
cvt.s.w $f2,$f8
mul.s   $f10,$f14,$f2
```

The empty conditional emits no branch after optimization. This changes allocation across compiler blocks while preserving the frame, function size, and opcode inventory. A normal full-ROM build reduced differing bytes from 409 to 342, all inside this function. Integer register allocation and scheduling still differ; this is a partial fix.
