Your job is to decompile N64 assembly functions from the `asm/nonmatchings/` directory into C code, ensuring functional equivalence. The final goal is c code that will compile to the _exact_ same assembly - including register allocations - as the original. Follow the workflow outlined below to systematically approach each function.

# Decompilation & Matching Workflow

## Overview

Convert an assembly function to C code, compile it using IDO 5.3 in Docker, and compare the output against the original assembly. Update the C code iteratively until it produces byte-for-byte identical assembly.

Create a todo list of the following steps and mark them off as you complete them:

## Step 1: Select Target Function

Look up the named assembly function in asm/nonmatchings/. For example, `asm/nonmatchings/core/1000/func_80000D0C_190C.s`.

## Step 2: Analyze the Original Assembly

Read the `.s` file to understand:

- Function signature (parameters, return type)
- Data symbols accessed (e.g., `D_80047588`, `D_800475E0`). Check for declarations in `include/variables.us.h` and `include/structs.h`.
- Functions called (check `include/functions.us.h` for declarations)
- Control flow (branches, loops)
- Register usage patterns

## Step 3: Write C Implementation

Translate the assembly logic to a C function.

**Key guidelines:**

- Use types matching the original (`u8`, `s16`, `s32`, etc.)
- Avoid C-ism syntax that IDO compiler may reject (e.g., complex cast+index on one line)
- Break operations into separate statements for clarity

## Step 4: Locate the GLOBAL_ASM Pragma

Find the corresponding `#pragma GLOBAL_ASM(...)` line in the source file (e.g., `src.us/core/1000.c`).

Replace it with the C function implementation:

## Step 5: Declare External Symbols

Check `include/variables.us.h` for declarations of data symbols used by the function (e.g., `D_80047588`, `D_800475E0`).

If missing, add `extern` declarations:

```c
extern u16 D_800475E0;
```

Check `include/structs.h` for relevant struct definitions. If needed, add new struct definitions to match the data layout accessed by the function.

Check `include/functions.us.h` for declarations of any functions called by the target function. If missing, add declarations.

## Step 6: Build in Docker

Run the build inside the container:

```bash
docker exec -it b3619d5e5b69c8a44ca914f1925110d8e87e334595f9eff7dce3ac854f4d6a1e \
  bash -c "cd /bh && make clean && make --jobs"
```

**Expected outcome**: Build completes (SHA1 check may fail, if generated assembly does not match target).

**If compilation errors occur:**

- Check IDO error messages for syntax issues
- Simplify C code (avoid complex expressions in single statements)
- Ensure all extern symbols are declared

If build complete and checksums match: `build/bh.us.z64: OK`. The function is now decompiled and matched. If not, proceed to the next steps for analysis and iteration.

## Step 7: Disassemble Generated Code

View the compiled assembly to compare visually:

```bash
docker exec -it b3619d5e5b69c8a44ca914f1925110d8e87e334595f9eff7dce3ac854f4d6a1e \
  bash -c "cd /bh && mips-linux-gnu-objdump -d build/src.us/main/1000.c.o | grep -A 30 'func_80000D0C_190C>:'"
```

## Step 8: Compare with Original

Place the original assembly and generated assembly side-by-side:

**Original** (from `asm/nonmatchings/core/1000/func_80000D0C_190C.s`):

- Note instruction order, registers, immediates, branch conditions

**Generated** (from objdump output):

- Note instruction order, registers, immediates, branch conditions

## Step 9: Iterate To Resolve Differences

**Byte-perfect matching**: Requires iterating:

Rewrite C code to match original logic more closely.
Read file `DecompHints.md` for common patterns and pitfalls.
Rebuild and re-compare until the generated assembly is identical to the original.

## Step 10: Mark as Complete

Once byte-perfect:

- Leave the C implementation in place (replacing `GLOBAL_ASM`)
- Remove the corresponding `.s` file reference

## Quick Reference: Docker Commands

**Execute shell in container:**

```bash
docker exec -it b3619d5e5b69c8a44ca914f1925110d8e87e334595f9eff7dce3ac854f4d6a1e bash
```

**Build:**

```bash
docker exec -it b3619d5e5b69c8a44ca914f1925110d8e87e334595f9eff7dce3ac854f4d6a1e bash -c "cd /bh && make --jobs"
```

**Disassemble single object:**

```bash
docker exec -it b3619d5e5b69c8a44ca914f1925110d8e87e334595f9eff7dce3ac854f4d6a1e \
  bash -c "cd /bh && mips-linux-gnu-objdump -d build/src.us/main_1000.c.o"
```

**Search for extern declarations:**

```bash
docker exec -it b3619d5e5b69c8a44ca914f1925110d8e87e334595f9eff7dce3ac854f4d6a1e \
  bash -c "cd /bh && grep -r 'D_80047588' include/"
```

## Troubleshooting

| Issue                             | Solution                                                  |
| --------------------------------- | --------------------------------------------------------- |
| `undeclared identifier`           | Add `extern` to `include/variables.us.h`                  |
| IDO syntax error on casts         | Split into separate statements; avoid complex expressions |
| Link error (missing symbol)       | Ensure symbol is declared with `extern` in a header       |
| Build fails but creates no output | Check for `make` syntax in container; use `make --jobs`   |
| Can't find function in objdump    | Verify function name matches; rebuild first               |
