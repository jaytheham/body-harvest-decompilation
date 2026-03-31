### v0/v1 shift when callee is defined before caller in same file

**Pattern**: A function `A` calls another function `B` (both void), then immediately reads a struct field into a named or unnamed register. If `B`'s definition appears BEFORE `A` in the same translation unit, the compiler knows `B` is void, so `$v0` is free after the call → the struct field load uses `$v0`. But the **target** may have the field in `$v1`, meaning in the original source `B` was compiled as implicit-int (either defined after `A` in the TU, or in a separate TU without a forward declaration).

**Signature**: After a `jal B` (void call), the very next struct field load in the target uses `$v1` (not `$v0`), and a cascade of all subsequent register names are shifted +1 from what the current code produces.

**Example** (`func_802D85F8_191108` in greece/18D7E0.c):
- Target: `jal 2d852c` → ... → `lw v1, 0x20(a2)` (unk20 in `$v1`)
- Current: `jal 2d852c` → ... → `lw v0, 0x20(a2)` (unk20 in `$v0`)

Because `func_802D852C_19103C` is now defined as `void` in the same C file *above* the caller, IDO frees `$v0` after the call. In the original game source, `func_802D85F8_191108` was likely compiled *before* `func_802D852C_19103C` was defined, so the compiler used an implicit int declaration, keeping `$v0` "live" after the call.

**Fix approach**: Move the caller (`func_802D85F8_191108`) *before* the callee definition (`func_802D852C_19103C`) in the source file. However, this causes an IDO `cfe: Error: redeclaration` because the implicit int declaration at the call site conflicts with the later void definition. The error prevents compilation.

**Workaround**: If the callee has a matching assembly in `asm/matchings`, use `#pragma GLOBAL_ASM` for the callee in the production build so it is not visible as a typed declaration. This keeps the caller experiencing the implicit-int behavior. Without an available assembly file, this mismatch cannot easily be resolved within C89 constraints.

**Score impact**: This single v0/v1 swap cascades into ~18 register-name differences throughout the inner block (consistent +1 shift), resulting in a score of ~145 even when all instructions, types, and ordering are otherwise correct.

**Key signals**: score ~140-150, all instructions match in count/type/order, register differences form a consistent +1 shift pattern starting from the struct field load after a void call.
