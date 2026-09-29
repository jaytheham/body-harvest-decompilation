### Keep `u8` argument masking implicit to match IDO register allocation

In `func_80084980_16CA40`, the target masks its second argument with `andi t7,a1,0xff`, compares that byte against `0xFB`, and reuses the masked value for the allocator call. With a `u8` parameter, write the guard as:

```c
if (arg1 == 0xFB) {
	return;
}
```

Do not add an explicit `arg1 &= 0xFF` or compare `(arg1 & 0xFF)`. The explicit mask either moves the value to a different temporary register or creates a redundant second `andi`, shifting the following branch and preventing an exact match. Letting the `u8` parameter type express the truncation gives IDO the single target mask and correct delay-slot argument setup.

The surrounding source order also matters for this function: form the parent position pointer before loading the spread. That keeps the parent pointer in `$t2` and the spread in `$t3`, matching the target while preserving the `0x38`-byte frame and the local slots at `sp+0x30` and `sp+0x2E`.
