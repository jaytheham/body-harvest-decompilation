### Use `s16` (not `u16`) when comparing a halfword temp with -1 to get `lh` + `bnel`

When a function computes a 16-bit value, stores it to the stack, calls another function, then reloads it and compares with -1:

```asm
; Target assembly
jal     func_other
 sh     t9, 0x1E($sp)        ; store as signed halfword
lh      v0, 0x1E($sp)        ; reload as signed halfword (sign-extends)
addiu   at, $zero, -1
lui     a0, %hi(func_self)
bnel    v0, at, .Lend         ; branch likely if != -1
 lw     ra, 0x14($sp)        ; delay slot (only if branch taken)
jal     func_800074BC_80BC    ; v0 == -1 case
 addiu  a0, a0, %lo(func_self)
```

The key detail: the temp is stored/loaded as a **signed** halfword (`sh`/`lh`), and compared against -1.

- **Wrong** (`u16`): IDO reloads with `lhu` (zero-extend) then manually sign-extends via `sll`/`sra`, and uses `bne` instead of `bnel`:

  ```asm
  lhu     a0, 0x1E($sp)       ; zero-extend (wrong)
  sll     t9, a0, 0x10        ; manual sign extend
  sra     t0, t9, 0x10
  bne     t0, at, .Lend       ; no branch-likely
  ```

- **Correct** (`s16`): IDO reloads with `lh` (sign-extend) and uses `bnel`:

  ```c
  s16 temp = 0x96 - D_8004D1B2;           // s16 type
  func_8009BF64_AAF14((u16)temp);          // cast to u16 for the call (gives andi 0xFFFF)
  if (temp == -1) {                        // comparison with -1 (uses lh + bnel)
      func_800074BC_80BC(func_802D536C_254AAC);
  }
  ```

The `(u16)temp` cast on the function call argument is important — it produces the `andi 0xFFFF` zero-extension needed for the u16 parameter.
