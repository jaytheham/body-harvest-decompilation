### Dual u8 counter loop: register allocation and scheduling notes

When a loop has two `u8` counters — one as a loop iteration counter (`var_s1`) and one as an offset accumulator (`var_s0`) — the correct C form for register allocation (`t4` for counter, `t3` for offset) is:

```c
u8 slot;
u8 var_s0;
u8 var_s1;

var_s0 = 0;
var_s1 = 0;
if (arg4 > 0) {
    do {
        slot = func_A(arg0, arg1, arg2, 4, 2);
        func_B(slot, arg3);
        func_C(slot, var_s0);
        var_s0 += 0xC;
    } while (++var_s1 < arg4);
}
```

**Register allocation rules:**
- Placing `var_s0 += 0xC` BEFORE `++var_s1` in C source causes IDO to allocate t3 for the offset (first temp needed) and t4 for the counter (second temp needed). This gives `slt at, t4, s3` (counter temp in condition).
- Placing `var_s1++` BEFORE `var_s0 += 0xC` allocates t3 for counter (wrong) and t4 for offset (wrong).
- The `++var_s1` in the WHILE CONDITION (not as standalone statement) causes the comparison to use the temp `t4` directly — giving `slt at, t4, s3; move s1, t4`.

**Stubborn scheduling issue (score ~80 remaining):**
The target assembly has `andi t3,s0,0xff` AFTER `slt at,t4,s3`, and `move s0,t3` in the branch delay slot. The above code generates `andi t3,s0,0xff` BEFORE `slt at,t4,s3`, with `move s0,t3` in the body and `move s1,t4` in the delay slot.

Attempted variants that all give the same residual score:
- `do { var_s0 += 0xC; } while (++var_s1 < arg4)` — cleanest, score 80
- `while ((var_s0 += 0xC, ++var_s1) < arg4)` — same result
- `for (...; var_s0 += 0xC, var_s1++)` — same result
- `(void)0, var_s0` trick — same result
- `(0, var_s0 += 0xC, ++var_s1)` — same result

The scheduling difference arises because IDO's scheduler sees the offset masking (`andi t3, s0, 0xff`) as "earlier" in the CFE sequence (body comes before condition) and schedules it before the critical-path comparison (`slt at, t4, s3`). The target's optimizer prioritizes the critical path.

**Conclusion:** If exact match is required, `#ifdef NON_MATCHING` may be needed. The code is functionally identical.
