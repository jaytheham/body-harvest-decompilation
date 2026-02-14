# Decompilation & Matching Workflow

## Overview

Convert the named N64 assembly function to C code, compile it using IDO 5.3 in Docker, and compare the output against the original assembly. Update the C code iteratively until it produces byte-for-byte identical assembly.

Create a todo list of the following steps and mark them off as you complete them:

## Step 1: Analyze the Original Assembly

Look up the named assembly e.g. `asm/nonmatchings/core/1000/func_80000D0C_190C.s`. to understand:

- Function signature (parameters, return type)
- Data symbols accessed (e.g., `D_80047588`). Check for declarations in `include/variables.us.h` and types in `include/structs.us.h`.
- Functions called (check `include/functions.us.h` for declarations)
- Control flow (branches, loops)
  Make notes of any complex operations or patterns that may require special attention when translating to C.

## Step 2: Create C Implementation

Find the corresponding `#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80000D0C_190C.s")` line in the source file (e.g., `src.us/core/1000.c`).
Use mips_to_c to create an initial C implementation from the original assembly and replace the `GLOBAL_ASM` line with the generated C code:

```bash
python tools/mips_to_c/m2c.py asm/nonmatchings/core/1000/func_80000D0C_190C.s
```

## Step 3: Declare External Symbols

Add any missing declarations of data symbols used by the function to `include/variables.us.h`.

```c
extern u16 D_800475E0;
```

Identify structs and arrays accessed by the function and define them in `include/structs.us.h` if they aren't defined yet. For example, if the function accesses `D_80048198[arg0].unk10`, you may need to define a struct for the elements of `D_80048198` and declare it as an array:

Add or update declarations for any called functions in `include/functions.us.h` if they aren't defined in `src.us/` yet.

## Step 4: Refine C Code

Simplify the generated code and make it more human-readable.
Update the code to use struct/array access instead of pointer arithmetic.

## Step 5: Build in Docker

Run the build inside the container:

```bash
docker exec -it bh-container \
  bash -c "cd /bh && make clean && make --jobs"
```

**Expected outcome**: Build completes (SHA1 check may fail, if generated assembly does not match target).

**If compilation errors occur:**

- Check IDO error messages for syntax issues
- Simplify C code (avoid complex expressions in single statements)
- Ensure all extern symbols are declared

If build complete and checksums match: `build/bh.us.z64: OK`. The function is now decompiled and matched and you can stop work. If not, proceed to the next steps for analysis and iteration.

## Step 6: Compare with Original

Compare the original assembly and generated assembly to identify differences:

**Original**
from e.g. `asm/nonmatchings/core/1000/func_80000D0C_190C.s`:

**Generated** (from objdump output):

```bash
docker exec -it bh-container \
  bash -c "cd /bh && mips-linux-gnu-objdump -d build/src.us/main/1000.c.o | grep -A 30 'func_80000D0C_190C>:'"
```

Note instruction order, registers, immediates, branch conditions

## Step 7: Iterate To Resolve Differences

**Byte-perfect matching**: Requires iterating:

Rewrite C code to match assumed original intent more closely. Think about how a person would have originally written the code in C to produce the assembly you see.
Read file `DecompHints.md` and `ExampleFixes.md` for common patterns and pitfalls.
Rebuild and re-compare until the generated assembly is identical to the original. Once it is identical proceed to the final step.

## Step 8: Finalize

Compare the original mips_to_c output with your final C code, then update `ExampleFixes.md` with any new patterns or insights you discovered during the process to help future decomp.

## Quick Reference: Docker Commands

**Execute shell in container:**

```bash
docker exec -it bh-container bash
```

**Build:**

```bash
docker exec -it bh-container bash -c "cd /bh && make --jobs"
```

**Disassemble single object:**

```bash
docker exec -it bh-container \
  bash -c "cd /bh && mips-linux-gnu-objdump -d build/src.us/main_1000.c.o"
```

**Search for extern declarations:**

```bash
docker exec -it bh-container \
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

Important: build runs on linux, all file edits must use LF line endings.
