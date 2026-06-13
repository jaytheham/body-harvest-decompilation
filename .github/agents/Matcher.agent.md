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
 `.\tools\diff.ps1 <target function name> <next function name>"`.
 E.g. `.\tools\diff.ps1 func_80092ADC_A1A8C func_80092BBC_A1B6C`. Functions are named like `func_<RAM address>_<ROM address>`.
 Diff output includes a closeness value for the specified range of assembly e.g. `CURRENT (46)`, lower is better, 0 is a perfect match.
 Diff output skips matching instructions except for 3 either side of differences.
- You can get the full assembly of a function after building by adding param `--show=target` or `--show=current` to the above diff command.
- Useful: Check for already matched functions with sub-sections of assembly that are the same as the target assembly using `.\tools\find-partial.ps1 <current func name>` e.g. `.\tools\find-partial.ps1 func_80120414_12F3C4` use the C implementation of any functions it returns as reference for your own implementation.

# Your Workflow
1. Change the `#ifdef NON_MATCHING` line above the function to `#ifdef TRUE` so the C code will be included in the build.
2. Always read the whole file `DecompHints.md` for general matching advice.
3. Build, compare with target, identify differences.
4. Change the C code in a way that will make the current assembly match the target assembly.
5. Rebuild, compare with target, and repeat until the assembly matches the target. Keep trying until you get a perfect match!

First target incorrect/missing/out-of-order instructions, ignore register allocation and stack placement until all the logic is correct.

Don't rely on just the closeness value to tell if a change is an improvement, always check the actual diff. Sometimes a change can produce more accurate instructions, but change register/stack allocation in a way that causes more differences overall, so the closeness value can be worse even though the change improves the logic.

If build returns `build/bh.us.z64: OK` the function is matched and you can stop work. If you see `FAILED` the current assembly does not match the target, continue iterating.

If a function has a switch statement and there is an associated jump table const defined at the start of the file, delete that const before you begin. The consts are there so that the rodata is built correctly while the functions are NON_MATCHING and the .s file is being used instead, when the C code is being included in the build it will generate its own jump table replacing the need for the const version. 

- Declarations of data symbols used by the function must go in `include/variables.us.h`.
- Identify structs accessed by the function and add or update definitions in `include/structs.us.h`.
- Add or update declarations for any called functions in `include/functions.us.h`.
- Important: Replace all pointer arithmetic with struct/array access!
- Remove unnecessary casts.
- All struct field accesses should use `.` or `->` operators.
- Update void\* parameters that should be typed.
- Unusual constructions (e.g. `(arg0 < 0x9C) ^ 1`) should be converted into simpler forms (e.g. `arg0 >= 0x9C`).
- Replace goto-based control flow with structured control flow (if/else, for, while).
- Replace if-do-while and do-while loops with for(;;) or while() loops.
- Search in `/asm` for any `jal` references (e.g. `jal        func_80073DC0_82D70`) to the target function to determine correct parameter and return types.

`ExampleFixes` folder contains md files with examples of fixes that have been applied previously to solve specific patterns, search in here for specific cases.

## Finalize

If you haven't matched the function after 12 attempts, revert the code to the version with the best closeness value or logic you found. Add/update a comment above the function with the closeness value for that version:`// CURRENT(123)`.

Only if you matched the function (without using NON_MATCHING) think about whether there is some detectable pattern or insight in the changes you made, and if so update `ExampleFixes` with new or updated notes to help future decomp. Only for matched functions.