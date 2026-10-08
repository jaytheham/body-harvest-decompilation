# Array prefix sum: store before pointer comparison

In `func_800717B4_159874`, a `for` loop over a `s32` array produced the right operations but scheduled `sltu` before `sw`. The target has `sw` before `sltu`.

Keep the start and end indices in separate locals, guard the empty range, and use an incrementing `do ... while` loop:

```c
i = start;
stop = end;
if (i < stop) {
    do {
        old = array[i];
        array[i] = sum;
        sum += old;
    } while (++i < stop);
}
```

With IDO 5.3 `-O2`, this produced the desired `lw; addiu; sw; sltu; bnez; addu` loop, including the accumulation in the branch delay slot. A regular `for (i = start; i < stop; i++)` produced `lw; addiu; sltu; sw; bnez; addu` instead.
