### Named channel pointer + same u8 arg in two calls causes extra saved register

When a loop body calls the same function TWICE with the same `u8` argument (the
loop counter), IDO -O2 CSEs the truncation `(u8)s1` / `s1 & 0xFF` into a
**callee-saved register** that survives the first call for reuse in the second.
This inflates the saved-register count by 1 (e.g., 7 data regs instead of 6) and
expands the frame (0x38 instead of 0x30).

**Recognition signs:**
- Two `jal func_8000CD54_D954(arg0, ch, s1)` calls in the same loop body
- Target uses `andi a2, s1, 0xff` freshly at each call site (no saved reg for it)
- Current has `andi sN, s1, 0xff; andi a2, sN, 0xff` before first call, then
  `andi a2, sN, 0xff` for second call — the double-andi pattern with saved reg sN

**Impact:**
- One extra saved register (e.g., s2 for CSE, pushing arg0/arg1/arg2/arg4 all
  up by one to s3/s4/s5/s6)
- Frame inflated by 8 bytes (extra saved reg + alignment)
- Score ~898 with all instructions correct, just register names shifted by +1

**Tried (none eliminated the CSE):**
- Explicit `(u8)s1` cast vs `s1 & 0xFF` vs plain `s1` (implicit u8 truncation)
- All-inline `arg1[s1].xxx` access (no named ch pointer) → 8 saved regs (WORSE)
- Block-scoped `AnimChannelState *ch` declaration in inner block
- `for` loop instead of `do-while`
- Moving `s1 = 0` init before/after the `if (arg2 != 0)` check

**Best version (score 898, NON_MATCHING):**
```c
// Named ch at function scope, s32 s1, pass s1 (not s1&0xFF) to both calls
AnimChannelState *ch;
s32 s1;
...
s1 = 0;
if (arg2 != 0) {
    do {
        ch = &arg1[s1];
        ch->unk18 = 0;
        ch->unk14 = *(u16 *)((s32)arg0 + s1 * 4 + 0xE);
        func_8000CD54_D954(arg0, ch, s1);
        if (arg4 != 0) {
            ch->unk8 = (f32)ch->unk24;
            ch->unk18 = ch->unk18 + 1;
            ch->unkC = (f32)ch->unk26;
            ch->unk0 = ch->unk2A;
            ch->unk2 = ch->unk2C;
            ch->unk4 = ch->unk2E;
            ch->unk10 = (f32)ch->unk28;
            func_8000CD54_D954(arg0, ch, s1);
        }
        s1 = (s1 + 1) & 0xFF;
    } while (arg2 != s1);
}
```

**Root cause:** IDO's GVN hoists `andi s2, s1, 0xff` from inside the `if (arg4 != 0)`
block to before the first call — caching in a callee-save reg as a pre-emptive CSE.
The target compiler does NOT do this hoisting (possibly because the target's
anonymous cfe temp for ch avoids the phantom stack slot, giving IDO just enough
liveness budget to choose rematerialization over precomputation).

**Related:** `declared-entry-pointer-inflates-frame-size.md` — removing a named
pointer and using inline access removes the phantom stack home slot. However, with
a CHANGING loop index, the cfe temp still needs a saved register for the pointer,
and the CSE issue persists regardless.

**Example function:** `func_8000CDFC_D9FC` in `src.us/core/AD60.c`
