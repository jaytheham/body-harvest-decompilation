### `lbu` from `s8` struct field via pointer cast + avoid extra temp for 3rd pre-load

When the target assembly uses `lbu` to read a struct field declared as `s8` (e.g., checking `!= 0` but NOT checking `!= -1`), use a pointer cast to force unsigned byte load without changing the struct:

```c
if (*(u8*)&arg1->unkC != 0) {   // forces lbu without changing s8 field type
```

**Avoid named temp for the "third" pre-loaded field**: In a 3-field interpolation block (`unk0`, `unk2`, `unk4`), IDO pre-loads all three fields before the first division. Declaring `s16 temp_v0`, `s16 temp_v1` for the first two causes IDO to keep sign-extended `arg2` in its original `$a2` register, using `$a3` for the naturally CSE'd third field. Adding a named `s16 temp_a3` for the third field swaps `$a2` and `$a3`, breaking register allocation for the entire function (score 230 → 0 with removal).

**Fix**: Keep `s16 temp_v0` and `s16 temp_v1` as named temps; inline the third field (`arg0->unk4 = arg0->unk4 + ...`). IDO's CSE will still pre-load it once into `$a3` without a named variable.
