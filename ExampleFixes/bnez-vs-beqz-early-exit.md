### `bnez` vs `beqz` for early-exit `if (flags & BIT) return 0` pattern

When the function has an early `if (flags & 0x10) { return 0; }` followed by a multiplication block, target assembly may use `bnez t9, RETURN_0_AT_END` (branch to a return-0 label placed AFTER the main code), while a naive `if (flags & 0x10) { return 0; }` generates `beqz t9, SKIP_RETURN` (inline return-0 immediately after the branch).

**Fix**: Negate the condition and put the early exit AFTER the main code:

```c
/* Instead of: */
if (flags & 0x10) { return 0; }
/* main multiply code */
return result;

/* Use: */
if (!(flags & 0x10)) {
    /* main multiply code */
    return result;
}
return 0;  
```

This generates `bnez t9, OUTER_RETURN_0` (jump past multiply if flag SET), with the multiply as the fall-through. The `return 0;` at the end gets placed after all the multiply code. Score improvement can be ~300 points when this pattern is present.
