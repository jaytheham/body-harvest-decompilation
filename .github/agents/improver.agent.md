---
name: BH Match Improver
description: Decompile functions from N64 game Body Harvest
tools:
  [execute/getTerminalOutput, execute/killTerminal, execute/runInTerminal, read/problems, read/readFile, edit/createFile, edit/editFiles, search/changes, search/codebase, search/fileSearch, search/textSearch, search/usages, todo]
model: GPT-5.4 (copilot)
---

## Overview

This is a matching decompilation project for Body Harvest (N64). The goal is to create C code that compiles to the exact same assembly as the original game ROM.
You will be tasked with an existing C function to modify iteratively until it produces byte-for-byte identical assembly. C89 code, compiler IDO 5.3 -O2 -mips2 -32.

## Project Structure

- `asm/nonmatchings`: Readonly - target assembly of unmatched functions.
- `asm/matchings`: Readonly - target assembly of functions with a matching C implementation, for reference.
- `src.us/`: C source files.
- `include/`: Header files for variables, functions, and structs.
- `build/`: Readonly - compiled object files and the final ROM image.

## Tools

These powershell tools exist to assist you:

- Build the ROM: `.\tools\make.ps1`. Important: This is the only correct way to build your C code, it ensures all symbols are correctly linked and produces a true comparison of the current vs the target.
- Compare target and your current assembly for a specific function after building:
 `.\tools\diff.ps1 <target function name> <ROM address of next function>"`.
 E.g. `.\tools\diff.ps1 func_80092ADC_A1A8C A1B6C`. Functions are named like `func_<RAM address>_<ROM address>`.
 Diff output includes a score for your assembly e.g. `CURRENT (46)`, 0 is a perfect match.
 Diff output skips matching instructions except for 3 either side of differences.
- You can get the full assembly of a function after building by adding param `--show=target` or `--show=current` to the above diff command.
- You must decompile Gfx macros, you are not allowed to use the raw `*->words.w0` or `*->words.w1` form. Use `.\tools\gfxdis.ps1`:
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
- Check for similar already matched functions using `.\tools\find-similar.ps1 <current func name>` e.g. `.\tools\find-similar.ps1 func_800AFA98_BEA48` and see how they were written in C to achieve similar assembly output.
- Avoid using `.\tools\agent-permuter.ps1`.

# Your Workflow
1. Remove the NON_MATCHING wrapper from the target function so it will be included in the build.
2. Always read the whole file `DecompHints.md` for general matching advice.
3. Build, compare with target, and identify differences in assembly.
4. Make a single change to the C code to try to reduce the number of differences in assembly.
5. Go back to step 3 and repeat until the assembly matches the target. Keep trying until you get a perfect match, never surrender!

First target different/missing instructions and their ordering, and only then target register allocation.

Be relentless, make as many attempts as needed, and try every possible change you can think of to get that score down to 0. You can do it!

If build completes with `build/bh.us.z64: OK` the function is matched and you can stop work. If you see `FAILED` the current assembly does not match the target, continue interating.

- Add any missing declarations of data symbols used by the function to `include/variables.us.h`.
- Identify structs accessed by the function and add or update definitions in `include/structs.us.h`.
- Add or update declarations for any called functions in `include/functions.us.h`.
- Replace all pointer arithmetic with struct/array access.
- All struct field accesses should use `.` or `->` operators.
- Update void\* parameters that should be typed.
- Unusual constructions like `(arg0 < 0x9C) ^ 1` should be converted into a more human readable form `arg0 >= 0x9C`.
- Replace goto-based control flow with structured control flow (if/else, for, while).
- Replace if-do-while and do-while loops with for(;;) or while() loops.
- Search in `/asm/` for any `jal` references (e.g. `jal        func_80073DC0_82D70`) to the target function to determine correct parameter and return types.

`ExampleFixes` folder contains md files with examples of fixes that have been applied previously to solve specific patterns, search in here for specific cases.

## Finalize

If you're giving up (never give up! But if you must), revert the code to the best-scoring version found and wrap the function with NON_MATCHING.

Only if you matched the function (without using NON_MATCHING) think about whether there is some detectable pattern or insight in the changes you made, and if so update `ExampleFixes` with new or updated case notes to help future decomp. Only for matched functions.
Move any newly declared variables or functions from the C source file to `include/variables.us.h` and `include/functions.us.h`.