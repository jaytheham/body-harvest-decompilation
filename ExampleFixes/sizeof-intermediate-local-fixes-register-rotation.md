### Register allocation: `sizeof()` with intermediate local `u8` fixes s-register rotation

When a loop iterates over a struct array (e.g. `alienInstances`) and uses a pre-declared compile-time constant (e.g. `sizeof(AlienInstance) = 0x50`) as a multiplier for indexing, IDO may assign the three loop-invariant values (base address, stride, comparison constant) to the wrong saved registers (resulting in a 3-way rotation of `s3`/`s4`/`s5`).

- **Problem**: `&alienInstances[D_8014D408[i]]` uses `alienInstances` (base) and `sizeof(AlienInstance)` (stride = 0x50) via array indexing. The comparison `alien->unk24 == 0x1B` uses the constant 0x1B. IDO allocates saved registers in the order these values appear in the expression tree, producing e.g. `s3=alienInstances, s4=0x50, s5=0x1B` when the target expects `s3=0x1B, s4=alienInstances, s5=0x50`.
- **Fix**: Extract the array index into an intermediate `u8` local variable and use explicit pointer arithmetic with `sizeof()` instead of array indexing:
  ```c
  // Before (register rotation s3↔s5↔s4):
  for (i = 0; i < D_8014D507; i++) {
      alien = &alienInstances[D_8014D408[i]];
      if (alien->unk24 == 0x1B) { ... }
  }

  // After (correct register assignment):
  for (i = 0; i < D_8014D507; i++) {
      alienId = D_8014D408[i];
      alien = (AlienInstance *)((u8 *)alienInstances + alienId * sizeof(AlienInstance));
      if (alien->unk24 == 0x1B) { ... }
  }
  ```
- **Why it works**: Using `sizeof(AlienInstance)` explicitly produces a typed compile-time constant (size_t / u32) rather than an implicit int literal 0x50, which changes the register allocation order. The intermediate `u8` local forces IDO to evaluate the index before the base/stride computation, potentially altering the lifetime analysis and pushing the comparison constant (`0x1B`) into a different s-register slot.
- **Applicable when**: A loop with array indexing using a struct array produces a clean `multu` + `mflo` + `addu` pattern but the loop-invariant constants are assigned to the wrong saved registers in a cyclic shift.
