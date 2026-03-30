### Inline pointer computation to control v0/v1 register allocation + split shift/add for scheduling

When a function computes values through a pointer (`base = addr + offset; extW = base[-2] - base[-4];`), the pointer variable consumes a v-register. If the pointer should be in v1 (not v0), avoid storing it in a named variable. Instead, inline the pointer expression at each use site:

```c
// WRONG — base gets v0, extW gets v1:
base = (s16 *)((u8 *)&D_8014FD30 + arg3 * 8);
extW = ((base[-2] - base[-4]) >> 1) + arg2;

// CORRECT — compiler CSE's the pointer into v1, extW gets v0:
extW = *((s16 *)((u8 *)&D_8014FD30 + arg3 * 8) - 2) - *((s16 *)((u8 *)&D_8014FD30 + arg3 * 8) - 4);
```

IDO's CSE pass still keeps the pointer in a register (v1), but since it's not a named variable, the register allocator assigns v0 to the first named variable (extW).

#### Variable reuse for overlapX/overlapZ → v1/v0 mapping

When extW (v0) should become overlapZ and a new overlapX should go to v1:
- Reuse `extW` for overlapZ (`extW = extH - dz;`)
- Use a separate `overlapX` variable (gets v1 after pointer dies)
- Compare as `overlapX < extW` → `slt at, v1, v0`

#### Split shift and add to fix instruction scheduling

When `sra` and `addu` for two variables are interleaved incorrectly (e.g., `addu v0` appears before `sra t6`), separate the `>>1` and `+arg2` into distinct statements:

```c
// WRONG — addu scheduled too early:
extW = (extW >> 1) + arg2;
extH = (extH >> 1) + arg2;

// CORRECT — separating shift and add forces correct scheduling:
extW >>= 1;
extH >>= 1;
extW += arg2;
extH += arg2;
```

This creates explicit data dependencies (extW >>= 1 before extW += arg2) that prevent the scheduler from reordering the `addu` before the second `sra`.
