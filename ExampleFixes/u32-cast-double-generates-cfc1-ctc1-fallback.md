### `(u32)(double)` cast generates cfc1/ctc1 safe unsigned-conversion block

When target assembly contains a `cfc1/ctc1/cvt.w.d` block with overflow-handling paths (comparison against 2^31 sentinel, retry, or return -1), the source C code uses `(u32)(double_expr)` — not `(s32)`.

**Pattern** in assembly:
```
cfc1    t6, c1_fcsr           // save FP control reg
ctc1    a0(=1), c1_fcsr       // set rounding mode to truncate
nop
cvt.w.d $f8, $f6              // safe convert (may trap)
cfc1    a0, c1_fcsr           // check exception flags
nop
andi    a0, a0, 0x78          // check overflow bits
beqzl   a0, <no_overflow>     // branch if ok
mfc1    a0, $f8               // delay: get result
mtc1    at, $f9               // at = high of 2^31 double (0x41E0 constant)
mtc1    zero, $f8
...sub.d, ctc1, retry...
lui     at, 0x8000
or      a0, a0, at            // add 2^31 (unsigned shift)
...
li      a0, -1                // fallback: return -1
bltz    a0, <negative path>   // if negative: use -1
ctc1    t6, c1_fcsr           // restore FP control
andi    t7, a0, 0xffff        // mask to u16 for sins arg
move    a0, t7
jal     sins
```

**Rule**: Use `(u32)` cast whenever target has the multi-instruction `cfc1/ctc1/cvt.w.d` safe block. Use `(s32)` for simple `trunc.w.d` (no cfc1/ctc1 at all).

- `(s32)(double_expr)` → IDO generates `trunc.w.d` (no overflow check) when range is provably safe
- `(u32)(double_expr)` → IDO always generates the full cfc1/ctc1 unsigned-conversion block

**Example** (from `func_800067B4_73B4`, 53F0.c):
```c
// C source:
sins((u32)((f64)(arg2 - 0x4000) * 1.5 - 16384.0))  // <-- (u32) is key
```
This generates the full cfc1/ctc1 block followed by `andi t7, a0, 0xffff; move a0, t7; jal sins`.
