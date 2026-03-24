---
name: Body Harvest Decomp
description: Decompile functions from N64 game Body Harvest
tools:
  [execute/getTerminalOutput, execute/awaitTerminal, execute/killTerminal, execute/runInTerminal, read/problems, read/readFile, edit/createFile, edit/editFiles, search/changes, search/codebase, search/fileSearch, search/searchResults, search/textSearch, search/usages, todo]
model: GPT-5.3-Codex (copilot)
---

## Overview

This is a matching decompilation project for Body Harvest (N64). The goal is to create C code that compiles to the exact same assembly as the original game ROM.
You will convert the named N64 assembly function to C89 code, compile it (IDO 5.3 -O2 -mips2 -32), compare the output against the target assembly, and modify the C code iteratively until it produces byte-for-byte identical assembly.

## Project Structure

- `asm/nonmatchings`: Readonly - target assembly of unmatched functions.
- `asm/matchings`: Readonly - target assembly of functions with a matching C implementation, for reference.
- `src.us/`: C source files.
- `include/`: Header files for variables, functions, and structs.
- `build/`: Readonly - compiled object files and the final ROM image.

## Tools

These powershell tools exist to assist you:

- Build the ROM: `.\tools\make.ps1`
- Compare target and your current assembly for a specific function after building:
 `.\tools\diff.ps1 <target function name> <ROM address of next function>"`.
 E.g. `.\tools\diff.ps1 func_80092ADC_A1A8C A1B6C`. Functions are named like `func_<RAM address>_<ROM address>`.
 Diff output includes a score for your assembly e.g. `CURRENT (46)`, 0 is a perfect match.
 Diff output skips matching instructions except for 3 either side of differences.
- You can get the full assembly of a function after building by adding param `--show=target` or `--show=current` to the above diff command.
- You must decompile Gfx macros. Use `.\tools\gfxdis.ps1`:
e.g.
```C
dl = D_8005BB2C;
D_8005BB2C = dl + 1;
dl->words.w0 = 0xB6000000;
dl->words.w1 = 0x10001;
```
or
```C
D_8005BB2C = D_8005BB2C++;
D_8005BB2C->words.w0 = 0xB6000000;
D_8005BB2C->words.w1 = 0x00010001;
```
Is converted by pwsh cmd `.\tools\gfxdis.ps1 -w B6000000 00010001` into: `gsSPClearGeometryMode(G_ZBUFFER | G_FOG),` which becomes `gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);` in C.
If you don't know one of the values, you can use `12345678` as a placeholder and then fill it in after the fact.
- Find similar functions to use their C implementations as reference using: `.\tools\find-similar.ps1 func_80092ADC_A1A8C`.
- Avoid using the permuter `.\tools\agent-permuter.ps1`.

# Decompilation Workflow
## Step 1: Generate cleaned C implementation

Run pwsh: `.\tools\run-m2c.ps1 asm/nonmatchings/overlay_gameplay/outside/884C0/func_80093AE4_A2A9.s` to generate an initial C implementation from the target assembly.

Clean up the generated C code:

- Add any missing declarations of data symbols used by the function to `include/variables.us.h`.
- Identify structs accessed by the function and add or update definitions in `include/structs.us.h`.
- Add or update declarations for any called functions in `include/functions.us.h`.
- Replace all pointer arithmetic with struct/array access.
- All struct field accesses should use `.` or `->` operators.
- Update void\* parameters that should be typed.
- Unusual constructions like `(arg0 < 0x9C) ^ 1` should be converted into a more human readable form `arg0 >= 0x9C`.
- Replace goto-based control flow with structured control flow (if/else, for, while).
- Replace if-do-while and do-while loops with for(;;) or while() loops.
- Search in `/asm/` for any `jal` references to the target function to determine correct parameter and return types.

Identify and fix all these issues in the generated C code before proceeding to the next step.

## Step 2: Insert C into Project

Find the `#pragma GLOBAL_ASM(...` line in the C source file that includes the target assembly. Replace that line with the cleaned up C code from Step 1.

Before continuing review the code and ensure all pointer arithmetic has been replaced with proper struct and array access, and all temp pointer variables are removed and replaced with direct struct/array references.

## Step 3: Build ROM

Build the ROM: `.\tools\make.ps1` Important: This is the only correct way to build your C code, it ensures all symbols are correctly linked and produces a true comparison of the current vs the target.

**If compilation errors occur:**

- Check IDO error messages for syntax issues
- Simplify C code (avoid complex expressions in single statements)
- Ensure all extern symbols are declared

If build completes with `build/bh.us.z64: OK` the function is matched and you can stop work. If you see `FAILED` the current assembly does not match the target, proceed to the next steps for analysis and iteration.

## Step 4: Compare with target and find similar functions

Use `.\tools\find-similar.ps1` to find any similar functions that are already decompiled which you may be able to copy.
At this point always read the whole file `DecompHints.md` for general matching advice.
Use `.\tools\diff.ps1` to compare the target and current assembly to identify differences: note instruction order, registers, immediates, branch conditions.

## Step 5+: Iterate Until Match

Rewrite C code to reduce the number of differences in assembly. First target differences in instructions and their ordering, and only then target register allocation.
**FIRST ALWAYS try removing intermediate variables and simplifying the code**, it is very common that the original code derefenced struct fields and arrays multiple times instead of storing them in a local variable.
Make sure all pointer arithmetic is replaced with proper struct/array access, and that assembly-like if>do>while and goto control flow is replaced with more natural C control flow constructs.
Double check all function call params are necessary and correctly typed.
An arg being `&& 0xFF` or `&& 0xFFFF` repeatedly suggests that the original code was using a smaller type like u8 or s16.
Think about how a person would have originally written the code in C to produce the assembly you see rather than writing the C to match the assembly exactly. Search for patterns in the target assembly and see how other functions were written to achieve similar assembly output.
`ExampleFixes` folder contains md files with examples of fixes that have been applied previously to solve specific patterns, search in here for stubborn cases.

**Every** time you make changes, rebuild the project and compare the current assembly to the target, if it doesn't match repeat this step, never give up, keep trying autonomously. Only once the build returns `build/bh.us.z64: OK` proceed to Finalize.

## Finalize

If you matched the function (without using NON_MATCHING) and had to make changes to the initial C code, think about whether there is some detectable pattern or insight, and if so update `ExampleFixes` with new or updated case notes to help future decomp.
Move any newly declared variables or functions from the C source file to `include/variables.us.h` and `include/functions.us.h`.

## Troubleshooting

| Issue                             | Solution                                                    |
| --------------------------------- | ----------------------------------------------------------- |
| `undeclared identifier`           | Add `extern` to `include/variables.us.h`                    |
| Link error (missing symbol)       | Ensure symbol is declared with `extern` in a header         |
