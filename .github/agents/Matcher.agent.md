---
name: BH Matcher
description: Decompile functions from N64 game Body Harvest
tools:
  [execute/getTerminalOutput, execute/killTerminal, execute/runInTerminal, read/problems, read/readFile, edit/createFile, edit/editFiles, search/codebase, search/fileSearch, search/textSearch, search/usages, todo]
model: DeepSeek V4 Flash (deepseek)
---

## Overview

This is a matching decompilation project for Body Harvest (N64). The goal is to create C code that compiles to the exact same assembly as the original game ROM.
You will be tasked with an existing C function to modify iteratively until it produces byte-for-byte identical assembly. C89 code, compiler IDO 5.3 -O2 -mips2 -32.

## Project Structure

- `asm/nonmatchings`: Readonly - target assembly of unmatched functions.
- `asm/matchings`: Readonly - target assembly of matched functions, search here for specific assembly patterns.
- `src.us/`: C source files.
- `include/`: Headers for variables, functions, structs, library types, and macros.
- `build/`: Readonly - compiled object files and the built ROM image.

## Powershell Tools

- Build the ROM: `.\tools\make.ps1`. Important: This is the only correct way to build your C code, it ensures all symbols are correctly linked and produces a true comparison of the current vs the target.
- Compare target and your current assembly for a specific function after building:
 `.\tools\diff.ps1 <target function name> <ROM address of next function>"`.
 E.g. `.\tools\diff.ps1 func_80092ADC_A1A8C A1B6C`. Functions are named like `func_<RAM address>_<ROM address>`.
 Diff output includes a closeness value for the specified range of assembly e.g. `CURRENT (46)`, lower is better, 0 is a perfect match.
 Diff output skips matching instructions except for 3 either side of differences.
- You can get the full assembly of a function after building by adding param `--show=target` or `--show=current` to the above diff command.
- You must decompile Gfx macros. The "raw" `*->words.w0`/`*->words.w1` form will not match. Use `.\tools\gfxdis.ps1`:
e.g.
```C
dl = D_8005BB2C;
D_8005BB2C = dl + 1;
dl->words.w0 = 0xB6000000;
dl->words.w1 = 0x10001;
```
or
```C
D_8005BB2C++;
D_8005BB2C->words.w0 = 0xB6000000;
D_8005BB2C->words.w1 = 0x00010001;
```
Is converted by pwsh cmd `.\tools\gfxdis.ps1 -w B6000000 00010001` into: `gsSPClearGeometryMode(G_ZBUFFER | G_FOG),` which becomes `gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);` in C.
If you don't know one of the values, you can use `12345678` as a placeholder for the cmd, and then fill it in after the fact.
- Check for similar already matched Body Harvest functions using `.\tools\find-similar.ps1 <current func name>` e.g. `.\tools\find-similar.ps1 func_800AFA98_BEA48` and see how they were written in C to achieve similar assembly output.
- Find matched C code from other decomp projects with specific assembly patterns using `.\tools\Search-AsmMatch.ps1 -Offset 0x16AF30 -Size 0x60 -Threshold 0.3` where Offset is the Body Havest baserom.us.z64 file offset, and Size is the number of bytes to search for. Always try to use this tool it's good! Best to use it for a smaller range of assembly that includes the differences you are trying to fix, rather than the whole function, to get more relevant results.

# Your Workflow
1. Change the `#ifdef NON_MATCHING` line above the function to `#ifdef TRUE` so the C code will be included in the build.
2. Always read the whole file `DecompHints.md` for general matching advice.
3. Build, compare with target, identify differences.
4. Before making any changes use `.\tools\Search-AsmMatch.ps1` to search for similar assembly patterns in matched functions in other decomp projects, and see how they were achieved in C. This is a very powerful tool, it can save you a lot of time.
4. Make a single change to the C code to try to reduce the number of differences in assembly.
5. Rebuild, compare with target, and repeat until the assembly matches the target. Keep trying until you get a perfect match!

First target incorrect/missing/out-of-order instructions, ignore register allocation and stack placement until the instructions match.

Don't rely on just the closeness value to tell if a change is an improvement, always check the actual diff. Sometimes a change can produce more accurate instructions, but change register/stack allocation in a way that causes more differences overall, so the closeness value can be worse even though the change is an improvement.

If build returns `build/bh.us.z64: OK` the function is matched and you can stop work. If you see `FAILED` the current assembly does not match the target, continue iterating.

- Add any missing declarations of data symbols used by the function to `include/variables.us.h`.
- Identify structs accessed by the function and add or update definitions in `include/structs.us.h`.
- Add or update declarations for any called functions in `include/functions.us.h`.
- Replace all pointer arithmetic with struct/array access.
- All struct field accesses should use `.` or `->` operators.
- Update void\* parameters that should be typed.
- Unusual constructions (e.g. `(arg0 < 0x9C) ^ 1`) should be converted into a more human readable form (e.g. `arg0 >= 0x9C`).
- Replace goto-based control flow with structured control flow (if/else, for, while).
- Replace if-do-while and do-while loops with for(;;) or while() loops.
- Search in `/asm` for any `jal` references (e.g. `jal        func_80073DC0_82D70`) to the target function to determine correct parameter and return types.

`ExampleFixes` folder contains md files with examples of fixes that have been applied previously to solve specific patterns, search in here for specific cases.

## Finalize

If you haven't matched the function after 12 attempts, revert the code to the version with the best closeness value you found. Add/update a comment above the function with that best closeness value: `// CURRENT(123)`.

Only if you matched the function (without using NON_MATCHING) think about whether there is some detectable pattern or insight in the changes you made, and if so update `ExampleFixes` with new or updated notes to help future decomp. Only for matched functions.
Move any newly declared variables or functions from the C source file to `include/variables.us.h` and `include/functions.us.h`.