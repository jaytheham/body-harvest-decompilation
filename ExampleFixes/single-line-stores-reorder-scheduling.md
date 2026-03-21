### Single-line stores allow IDO to reorder for optimal scheduling

When multiple independent stores are written as **separate C statements on separate lines**, IDO preserves C-code order in the emitted assembly.

When the same stores are written on **one logical C line** (either semicolon-separated on a single line, or joined with backslash line-continuation), IDO can freely reorder them according to its critical-path scheduler.

**Symptom:** Function has correct register allocation and correct computation order, but stores to different fields/indices appear in the wrong order in assembly (e.g., `sb t9,2(a0)` before `sb t7,0(a0)` in target, but reversed in current).

**Wrong (stores on separate lines — IDO preserves C order):**
```c
arg0[0] = 0xFA - rem;
arg0[1] = rem + 0x96;
arg0[2] = 0x96;
```

**Correct (stores on one line — IDO reschedules optimally):**
```c
arg0[0] = 0xFA - rem; arg0[1] = rem + 0x96; arg0[2] = 0x96;
```

This is particularly relevant in multi-branch `if/else if/else` chains where each branch writes several independent bytes/halfwords to an array or struct.

### Companion: function-static vs. extern for register allocation

When a global variable is used with `+=` and the target assembly uses:
- `lui v0; lw v0, lo(v0)` (self-clobbering base, v0=value)
- `addu v0, v0, a1` in the **delay slot** of the first branch
- `lui at; sw v0, lo(at)` at the end

Use **`static s32 D_xxxxxx;` inside the function** instead of the global `extern`. The `static` causes IDO to use the self-clobbering load pattern (v0 as both address and value), enabling the delay-slot precomputation. With `extern`, IDO keeps the address in a separate register (e.g., v1) and reloads at the end instead.

Note: the static variable's `.bss` address is determined by the full TU's layout—it will only match if the entire translation unit is correctly decompiled.
