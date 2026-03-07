---
name: Body Harvest Decomp
description: Decompile functions from the N64 game Body Harvest
tools:
  [execute/getTerminalOutput, execute/awaitTerminal, execute/killTerminal, execute/runInTerminal, read/problems, read/readFile, edit/createFile, edit/editFiles, search/changes, search/codebase, search/fileSearch, search/searchResults, search/textSearch, search/searchSubagent, search/usages, todo]
model: Claude Sonnet 4.6 (copilot)
---

## Overview

This is a matching decompilation project for Body Harvest (N64). The goal is to create C code that compiles to the exact same assembly as the original game ROM.
You will convert the named N64 assembly function to C89 code, compile it (IDO 5.3 -O2 -mips2 -32), compare the output against the original assembly, and modify the C code iteratively until it produces byte-for-byte identical assembly.

## Project Structure

- `asm/`: Contains original assembly files from the ROM.
- `src.us/`: Contains C source files.
- `include/`: Contains header files for variables, functions, and structs.
- `build/`: Contains compiled object files and the final ROM image.

## Tools

You have access to the following powershell tools to assist you in the decompilation process:

- Compare target and generated assembly for a specific function: `.\tools\asm-diff.ps1 <target function name> <ROM address of next function>"`. E.g. `.\tools\asm-diff.ps1 func_80092ADC_A1A8C A1B6C`. Functions are named like `func_<RAM address>_<ROM address>`. Diff output includes a score for your assembly e.g. `CURRENT (46)`, 0 is a perfect match.
- You can decompile gfx macros using `.\tools\gfxdis.ps1`:
e.g.
```C
dl = D_8005BB2C;
D_8005BB2C = dl + 1;
dl->words.w0 = 0xB6000000;
dl->words.w1 = 0x10001;
```
Is converted by pwsh cmd `.\tools\gfxdis.ps1 -w B6000000 00010001` into: `gsSPClearGeometryMode(G_ZBUFFER | G_FOG),` which becomes `gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);` in C.
- Find similar decompiled functions using coddog: `.\tools\coddog\coddog.exe match func_80092ADC_A1A8C -t 0.7`.
- You should do your own work instead of using the permuter, but it can be run with `.\tools\agent-permuter.ps1`.

# Decompilation Workflow
## Step 1: Generate cleaned C implementation

Run pwsh: `python tools/mips_to_c/m2c.py asm/nonmatchings/overlay_gameplay/outside/884C0/func_80092ADC_A1A8C.s` to generate an initial C implementation from the original assembly.

Clean up the generated C code:

- Add any missing declarations of data symbols used by the function to `include/variables.us.h`.
- Identify structs accessed by the function and add or update definitions in `include/structs.us.h`.
- Add or update declarations for any called functions in `include/functions.us.h`.
- Replace all pointer arithmetic with struct/array access.
- All struct field accesses should use `.` or `->` operators.
- Update void\* parameters that should be typed.
- Unusual constructions like `(arg0 < 0x9C) ^ 1` should be converted into a more natural form `arg0 >= 0x9C`.
- Replace goto-based control flow with structured control flow (if/else, for, while).
- Replace if-do-while and do-while loops with for(;;) or while() loops.
- Search in `/asm/` for any `jal` references to the target function to determine correct parameter and return types.

Identify and fix all these issues in the generated C code before proceeding to the next step.

## Step 2: Insert C into Project

Find the `#pragma GLOBAL_ASM(...` line in the C source file that includes the target assembly. Replace that line with the cleaned up C code from Step 1.

Before continuing review the code and ensure all pointer arithmetic has been replaced with proper struct and array access and all temp pointers variables removed and replaced with direct struct/array references.
Read file `DecompHints.md` for general guidance.

## Step 3: Build ROM

Build the ROM: `.\tools\clean-make.ps1` Important: You must build the entire project, not idividual files, to ensure all symbols are correctly linked and to get an accurate comparison of the generated assembly against the original.

**If compilation errors occur:**

- Check IDO error messages for syntax issues
- Simplify C code (avoid complex expressions in single statements)
- Ensure all extern symbols are declared

If build completes with `build/bh.us.z64: OK` the function is correctly matched and you can stop work. If you see `FAILED` the generated assembly does not match the original, proceed to the next steps for analysis and iteration.

## Step 4: Compare with Original and find similar functions

Use coddog to find any similar functions that are already decompiled which you may be able to copy.

Compare the original assembly and generated assembly to identify differences: note instruction order, registers, immediates, branch conditions.

## Step 5+: Iterate Until Match

Rewrite C code to reduce the number of differences in assembly. First target differences in instructions and their ordering, and only then target register allocation.
**FIRST ALWAYS try removing intermediate variables and simplifying the code**, it is very common that the original code derefenced struct fields and arrays multiple times instead of storing them in a local variable.
Make sure all pointer arithmetic is replaced with proper struct/array access, and that assembly-like if>do>while and goto control flow is replaced with more natural C control flow constructs.
Double check all function call params are necessary and correctly typed.
An arg being `&& 0xFF` or `&& 0xFFFF` repeatedly suggests that the original code was using a smaller type like u8 or s16.
Think about how a person would have originally written the code in C to produce the assembly you see rather than writing the C to match the assembly exactly. Search for patterns in the original assembly and see how other functions were written to achieve similar assembly output.
Read file `ExampleFixes.md` for examples of solving specific patterns.

**Every** time you make changes, rebuild the project and compare the generated assembly to the original, if it doesn't match repeat this step, never give up, keep trying autonomously. Only once the build returns `build/bh.us.z64: OK` proceed to Finalize.

## Finalize

If you had to make changes to the initial C code, think about whether there is some detectable pattern or insight, and if so update `ExampleFixes.md` with brief notes to help future decomp.
Move any newly declared variables or functions from the C source file to `include/variables.us.h` and `include/functions.us.h`.

## Troubleshooting

| Issue                             | Solution                                                    |
| --------------------------------- | ----------------------------------------------------------- |
| `undeclared identifier`           | Add `extern` to `include/variables.us.h`                    |
| IDO syntax error on casts         | Split into separate statements; avoid complex expressions   |
| Link error (missing symbol)       | Ensure symbol is declared with `extern` in a header         |
| Build fails but creates no output | Check for `make` syntax in container; use `make -j QUIET=1` |
| Can't find function in objdump    | Verify function name matches; rebuild first                 |
