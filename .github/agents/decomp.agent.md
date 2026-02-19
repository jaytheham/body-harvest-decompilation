---
name: Body Harvest Decomp
description: Decompile a function from the Body Harvest N64 game
tools:
  [
    "search",
    "edit/editFiles",
    "edit/createFile",
    "execute",
    "read",
    "todo",
    "agent/runSubagent",
  ]
---

# Decompilation Workflow

## Overview

This is a matching decompilation project for Body Harvest (N64). The goal is to create C code that, when compiled, produces the exact same assembly as the original game ROM.
Convert the named N64 assembly function to C89 code, compile it using IDO 5.3 (-O2 -mips2 -32) in Docker, and compare the output against the original assembly. Modify the C code iteratively until it produces byte-for-byte identical assembly.

## Project Structure

- `asm/`: Contains original assembly files from the ROM. In `nonmatchings/` each function is in its own `.s` file, others contain multiple functions.
- `src.us/`: Contains C source files.
- `include/`: Contains header files for variables, functions, and structs.
- `build/`: Contains compiled object files and the final ROM image.

## Tools

You are running in windows, you have access to a docker container where you can run linux commands and build the project. You can also edit files on your host machine and those changes will be reflected in the container:

- `docker exec -it bh-container bash -c "grep -r 'D_80047588' include/"` - Search for extern declarations.
- Functions are named like `func_<RAM address>_<ROM address>`. Compare target and generated assembly for a specific function: `docker exec -it bh-container bash -c "tools/asm-differ/diff.py --no-pager --compress-matching 3 <function name> 0x<ROM address of next function>"`.
- `docker exec -it bh-container bash -c "mips-linux-gnu-objdump -d build/src.us/overlay_gameplay/outside/missions.c.o | sed -n '/<func_8007679C_8574C>:/,/^$/p'"` - Disassemble a single function from an object file.

## Step 1: Generate C Implementation

Outside the docker container run:`python tools/mips_to_c/m2c.py asm/nonmatchings/core/1000/func_80000D0C_190C.s` to generate an initial C implementation from the original assembly.

Clean up the generated C code by following these steps:

1. Add any missing declarations of data symbols used by the function to `include/variables.us.h`.
2. Identify structs accessed by the function and add or update definitions in `include/structs.us.h`.
3. Add or update declarations for any called functions in `include/functions.us.h` if they aren't defined in `src.us/` yet.
4. Replace all pointer arithmetic with struct/array access.
5. All struct field accesses should use -> or . operators.
6. Update void\* parameters that should be typed.
7. Unusual constructions like `(arg0 < 0x9C) ^ 1` should be converted into a more natural form `arg0 >= 0x9C`.
8. Replace goto-based control flow with structured control flow (if/else, for, while).
9. Replace if-do-while and do-while loops with for(;;) or while() loops.
10. Search in `/asm/` for any `jal` references to the target function to determine correct parameter and return types.

After making these changes **use runSubagent** and ask the agent replace all pointer arithmetic with proper struct and array access, then review the changes to ensure they are correct and that no pointer arithmetic remains.

Identify and fix all these issues in the generated C code before proceeding to the next step. The goal is to have clean, readable C code that still compiles down to the same assembly as the original.

## Step 2: Insert C into Project

Find the `#pragma GLOBAL_ASM(...` line in the C source file that includes the target assembly. Replace that line with the cleaned up C code you generated in Step 1. Make sure to keep the function signature and return type consistent with any calls to that function from other C code.

## Step 3: Build in Docker

Run the build inside the container:- `docker exec -it bh-container bash -c "make clean && make -j QUIET=1"`

**Expected outcome**: Build completes (SHA1 check may fail, if generated assembly does not match target).

**If compilation errors occur:**

- Check IDO error messages for syntax issues
- Simplify C code (avoid complex expressions in single statements)
- Ensure all extern symbols are declared

If build completes and checksums match: `build/bh.us.z64: OK`. The function is now decompiled and matched and you can stop work. If not, proceed to the next steps for analysis and iteration.

## Step 4: Compare with Original

Compare the original assembly and generated assembly to identify differences:

Note instruction order, registers, immediates, branch conditions

## Step 5: Iterate To Resolve Differences

Rewrite C code to reduce the number of differences in assembly.
**FIRST ALWAYS try removing intermediate variables and simplifying before adding new ones**, it is very common for the original code to derefence struct fields and arrays multiple times instead of storing them in a local variable.
Make sure all pointer arithmetic is replaced with proper struct/array access, and that assembly-like if>do>while and goto control flow is replaced with more natural C control flow constructs.
Double check all function calls param are necessary and correctly typed.
Think about how a person would have originally written the code in C to produce the assembly you see rather than writing the C to match the assembly exactly. Search for patterns in the original assembly and see how other functions were written to achieve similar assembly output.
Read file `DecompHints.md` for common patterns and pitfalls.

If the only differences are register allocation try changing the order of the related operations, even if the new order appears less like the original assembly.

Rebuild and re-compare until the generated assembly is identical to the original. Once the build returns `build/bh.us.z64: OK` proceed to the final step.

## Step 6: Finalize

If you had to make changes to the initial C code, think about whether there is some detectable pattern or insight, and if so update `DecompHints.md` with brief notes to help future decomp.
Move any newly declared variables or functions from the C source file to `include/variables.us.h` and `include/functions.us.h`.

## Troubleshooting

| Issue                             | Solution                                                    |
| --------------------------------- | ----------------------------------------------------------- |
| `undeclared identifier`           | Add `extern` to `include/variables.us.h`                    |
| IDO syntax error on casts         | Split into separate statements; avoid complex expressions   |
| Link error (missing symbol)       | Ensure symbol is declared with `extern` in a header         |
| Build fails but creates no output | Check for `make` syntax in container; use `make -j QUIET=1` |
| Can't find function in objdump    | Verify function name matches; rebuild first                 |
