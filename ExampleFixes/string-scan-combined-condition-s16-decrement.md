# String scan with an s16 limit: combine the loop conditions

`func_80017394_17F94` matched after moving the string terminator tests into
the same `while` condition as the predecremented `s16` character limit:

```c
while (*ptr != 0xA && *ptr != 0 && *ptr != 0x40 &&
       *ptr != 0x3B && --arg1) {
    /* Process the character, possibly advancing past a control sequence. */
    ptr++;
}
```

The previous form used an outer terminator guard, `while (--arg1)`, and
explicit terminator checks with `break` after `ptr++`. It produced the same
instructions but swapped two at the loop tail: the pointer increment appeared
before the `sll` used to narrow the decremented limit to `s16`.

Combining the conditions placed the narrowing shift before the newline branch
and the pointer increment in that branch's delay slot, exactly as in the target.
Keep the terminator tests before `--arg1`: this preserves short-circuit behavior
for a terminator and the special meaning of an initial zero limit.

Validated with the required full ROM build: `build/bh.us.z64: OK`.
