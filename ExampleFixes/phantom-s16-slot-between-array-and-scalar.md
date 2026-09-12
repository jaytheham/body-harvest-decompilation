# Phantom 2-byte stack slot between a 4-byte array and a scalar (sp34/sp38 pattern)

## Problem

A function has, from the top of the local area downward:

```
sp3E   (s16)   @ 0x3E
[gap]          @ 0x3C   <- 2 bytes (array alignment)
sp38[2](s16)   @ 0x38   <- 4-byte aligned array
[gap]          @ 0x36   <- 2 bytes  (target only!)
sp34   (s16)   @ 0x34
```

The C equivalent (`s16 sp3E; s16 sp38[2]; s16 sp34;` plus the other locals) compiles to the
same layout **except** `sp34` lands at `0x36` and the free 2 bytes are at `0x34-0x35`.
So the frame size is right (`0x60`) but the lowest local is 2 bytes too high.

Seen in `func_802D738C_18FE9C` (greece/18D7E0.c) and its sibling
`func_802D7B68_1F0878` (java/1ED9E0.c) — both still NON_MATCHING with this exact 1-slot diff.

## Key facts established experimentally

- Frame size follows `frame = align8(fixed + L)` where `L` is the *counted* size of the
  declared locals and `fixed` is the cfe-temp / saved-reg area (here `fixed = 0x38`).
  `L = 40` → frame `0x60`; any construct that makes the compiler count `L = 42`
  (or a 4-byte slot for a small var) → frame `0x68`. So **the target cannot have an extra
  2 bytes of counted locals** — the extra gap must be a *phantom* (slot reserved,
  size not counted).
- Small aggregates/unused vars get rounded up to **4-byte slots**: an unused `s16`,
  a `struct { s16 x; }`, and `s16 arr[1]` all pushed the frame from `0x60` to `0x68`.
- `s16 sp38[2]` is placed at a 4-byte-aligned offset (packing model:
  `offset = align_down(N - size, align)`), which is what creates the 2-byte `0x3C` gap.

## The mechanism that DOES produce the target layout

Declaring a **used** `s16` between the array and the scalar reserves a 2-byte slot exactly
where the target gap is:

```c
s16 sp3E;
s16 sp38[2];
s16 sp36;      /* phantom: slot at 0x36, shifts sp34 down to 0x34 */
s16 sp34;
```

When the variable's value is **rematerializable** (e.g. loaded from memory and only stored
back to memory), the optimizer eliminates the variable but IDO still reserves its layout
slot, and its size does **not** get added to the counted `L`. This gave the *exact* target
layout (frame `0x60`, `sp34@0x34`, `sp38@0x38`, gap at `0x36`) with an empty
`--structural` diff.

Example usage that worked layout-wise (frame stayed `0x60`):

```c
sp36 = alienInstances[arg0].unk6;
D_8014DD50[sp5E].unk6 = sp36;
D_8014DD50[sp5C].unk6 = -sp36;
```

## Why it is not a full fix here

Introducing a real C variable makes IDO allocate a **variable register** (`v0` here),
whereas the target computes the same value into a **temp register** (`t4`), and the
difference cascades through the whole function (~35 register-only diffs). The original
source therefore had *no extra user variable* in these expressions — the phantom slot
must come from a compiler-generated artefact that we could not reproduce:

- `sp36 = <const>` used before/after a call → variable becomes "homed" → frame grows to `0x68`.
- using it in the cooldown (`sp34 = sp36`), the flags result, the `unk1E` tail, or an
  intermediate of the `unkC` chain → frame grows and/or regalloc changes.
- ternary for the cooldown, `s16 sp34[1]`, `struct { s16 x; } sp34` → frame `0x68`.

## Related

- `ExampleFixes/phantom-stack-gap-local-pointer.md` — same idea with a 4-byte pointer home.
- `ExampleFixes/cfe-temp-stack-gap-declared-vs-temp.md` — cfe temp vs declared local gap.
- `ExampleFixes/s16array-before-alien-s32-last-stack-layout.md` — the sibling
  `func_802D7FC0_190AD0` matched with an array + `s32` scalar producing a 4-byte gap.

## Takeaway

If the target shows a gap **immediately above the lowest `s16`** and the frame is already
the correct size, the source had an extra `s16` there whose value was fully rematerializable
(eliminated after layout). Reproducing it with a real variable fixes the layout but usually
shifts register allocation from `t*` to `v*`; if that regalloc must stay intact, the slot
likely came from a compiler artefact that has to be found by another route.
