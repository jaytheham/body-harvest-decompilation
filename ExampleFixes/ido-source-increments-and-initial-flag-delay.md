# Separate increments can change IDO register priority without changing arithmetic

Matched function: `func_80017490_18090` in `src.us/core/17EE0.c`, IDO 5.3 `-O2 -mips2 -32`.

The candidate had the correct 391 instructions and 0xA0 frame, but two pairs of saved registers were reversed. The text cursor and word-buffer pointer used s3/s2 rather than s2/s3; the text offset and word length used s5/s4 rather than s4/s5.

Changing the two-character control-code skip from:

```c
offset += 2;
```

to:

```c
offset++; offset++;
```

fixed both pairs. IDO still emitted one `addiu offset,offset,2` and one increment of the derived text cursor by two. The register allocator retained the priority contribution of both source increments even though the emitted arithmetic combined them.

A trace from an isolated diagnostic copy of the compiler, without forced allocation, showed:

| Live range | Before: total saving / occurrences | After | Allocation change |
|---|---:|---:|---|
| Derived text cursor | 106 / 18 = 5.888889 | 126 / 18 = 7.000000 | s3 to s2 |
| Word-buffer address | 90 / 13 = 6.923077 | unchanged | s2 to s3 |
| Text offset | 86 / 19 = 4.526316 | 106 / 19 = 5.578948 | s5 to s4 |
| Word length | 111 / 21 = 5.285714 | unchanged | s4 to s5 |

This is useful when arithmetic already matches but allocation priority is wrong: test separate updates that IDO can combine, rather than adding dummy reads or changing declaration order. The effect depends on the surrounding function; verify with the normal project build.

## Initial flag value and branch delay

The final diff was just the order of `move s5,zero` and the initial `beqz`. Initializing the local completion flag fixed it:

```c
s32 finished = 0;
```

Keep the existing language switch that assigns `finished = 0` for cases 1, 2 and default, with an empty case 0. The initializer plus switch generated the target's count initialization before the branch and the zero flag store in its delay slot. Assigning zero separately in every switch arm produced different code. The initializer also removes the uninitialized read possible in the earlier C candidate.

## Statement grouping around text calls

For the terminal and boundary flushes, this grouping matches:

```c
drawText(format, word); wordLength = 0; finished = 1;
```

IDO can schedule the local flag store before the call and the length reset in its delay slot. Splitting these statements across source lines changed the schedule in this function. Preserve the grouping of the matching implementation.

Validation: the normal `tools/make.ps1` reported `build/bh.us.z64: OK`, and `tools/diff.ps1 func_80017490_18090 func_80017AAC_186AC --show-score` reported zero after descriptive variable renaming and indentation cleanup. Diagnostic compiler modifications were restored before this verification.