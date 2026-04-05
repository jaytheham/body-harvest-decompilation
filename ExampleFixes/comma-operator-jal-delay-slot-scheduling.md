### Comma operator schedules assignment into jal delay slot

**Pattern:** A function call followed by a simple assignment (e.g. `flag = 1`) where the target
has the assignment as the `jal` delay slot instruction (`li s1,1`) but the current emits the
assignment early (e.g. `move s1,s2` before the branch, a delay slot filled with `move a0,t1`).

**Symptom diff:**
```
1715c:    addu    t9,s5,s0    |    1715c:    move    s1,s2      ← flag set early
17164:    move    a0,t1       |    17164:    sra     t1,a0,0x18
17198:    li      s1,1        |    17198:    move    a0,t1       ← flag in wrong slot
```

**Root cause:** When `var_s1 = 1; func_80016C14_17814(...);` is written with `;`, IDO schedules
`var_s1=1` as early as possible (often copying from the constant-1 register `s2` via `move`),
and fills the jal delay slot with something else (`move a0,t1`).

**Fix:** Use the comma operator with the call first, assignment second:
```c
func_80016C14_17814(var_s0, 60.0f, 20.0f, 0.0f), var_s1 = 1;
```

With the function call as the left operand of the comma, IDO schedules `var_s1 = 1` as the very
next operation after the jal, which gets slotted into the jal delay slot (`li s1,1` immediate
instead of register copy). The instruction order for the sign-extend (`sra t1,a0,0x18`) and
address computation (`addu t9,s5,s0`) also resolves correctly.
