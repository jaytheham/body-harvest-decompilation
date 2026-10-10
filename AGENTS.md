## Overview

This is a matching decompilation project for Body Harvest (N64). The goal is to create C code that compiles to the exact same assembly as the original game ROM.
You will be tasked with an existing C function to modify iteratively until it produces byte-for-byte identical assembly. C89 code, compiler IDO 5.3 -O2 -mips2 -32.

## Project Structure

- `asm/nonmatchings`: Readonly - target assembly of unmatched functions.
- `asm/matchings`: Readonly - target assembly of matched functions.
- `src.us/`: C source files.
- `include/`: Headers for variables, functions, structs, library types, and macros.
- `build/`: Readonly - compiled object files and the built ROM image.

## Powershell Tools

- Build the ROM: `.\tools\make.ps1`. Important: This is the only correct way to build your C code, it ensures all symbols are correctly linked and produces a true comparison of the current vs the target.
- Compare target and your current assembly for a specific function after building:
 `.\tools\diff.ps1 <target function name> <next function name>"`.
 E.g. `.\tools\diff.ps1 func_80092ADC_A1A8C func_80092BBC_A1B6C`. Functions are named like `func_<RAM address>_<ROM address>`.
 Diff output skips matching instructions except for 3 either side of differences.
- You can get the full assembly of a function after building by adding param `--show=target` or `--show=current` to the above diff command.
- You can see structural-only differences (skip register & stack only differences) in the diff output by adding param `--structural` to the above diff command.
- After building you can use `.\tools\Show-StackLayout.ps1 func_80084628_16C6E8` (or any function name) to see the stack layout for that function.
- Important: Rather than blindly making changes when dealing with incorrect or out-of-order instructions, first check for other functions with sections of assembly that are the same as the target assembly section you are focussed on using `.\tools\Search-AsmPattern.ps1 -Offset <ROM offset> -Count <number of instructions to match>` e.g. `.\tools\Search-AsmPattern.ps1 -Offset 0x884C0 -Count 8` look up the C implementation of any functions it returns as reference for your own implementation - if they're not wrapped in NON_MATCHING then they are already matched and can be used as a reference for how to implement the same logic in your function.
- The majority of the game code is already matched, you should make extensive use of tools to search for matching code that you can copy or use parts of for reference.
- The workbench will help resolve any tricky compiler behaviour `https://github.com/akratch/n64-decomp-workbench/blob/main/docs/START_HERE.md`

# Your Workflow
1. If on master branch, create a new git branch named like `decomp-yyyy-MM-dd-HH-mm`
2. Remove the `#ifdef NON_MATCHING` wrapper around the function so the C code will be included in the build.
3. Read the closest already matched functions before and after the target one, IDO codegen is very dependant on code style, so nearby matched functions will help guide your implementation. Ignore NON_MATCHING wrapped functions as their logic may be wrong.
4. Build, compare with target, identify differences.
5. Change the C code in a way that will make the current assembly match the target assembly.
6. Rebuild, compare with target, and repeat until the assembly matches the target. Keep trying until you get a perfect match!

C files are UTF-8
Line endings are LF

Prioritize incorrect, missing, and out-of-order instructions, ignore register allocation and stack placement until all the logic is correct.
Sometimes a change can produce more accurate logic, but change register/stack allocation in a way that causes more differences overall, this is OK, the goal is to get the logic correct first, then optimize the register/stack allocation to match the target assembly.

The unmatched code in local master is the best known state, there are no other branches or historical commits with better code.

If a function has a switch statement and there is an associated jump table const defined at the start of the C file, delete that const before you begin. The consts are placeholders that make the rodata build correctly while the functions are NON_MATCHING and the .s file is being used instead, when the C code is being included in the build it will generate its own jump table replacing the need for the const version. 

- Declarations of data symbols must go in `include/variables.us.h`.
- Identify structs accessed by the function and add or update definitions in `include/structs.us.h`.
- Add or update declarations for any called functions in `include/functions.us.h`.
- Important: Replace all pointer math with struct/array access!
- Remove unnecessary casts.
- Remove excessive temporary variables.
- Replace goto-based control flow with structured control flow (if/else, for, while).
- Search in `/asm` for any `jal` references (e.g. `jal        func_80073DC0_82D70`) to the target function to determine correct parameter and return types.

`ExampleFixes` folder contains .md files with examples of fixes that have been applied previously to solve specific patterns, search in here for specific cases. Also `DecompHints.md`

If working on multiple functions, make at least 20 attempts to match the current function before moving on.
If build returns `build/bh.us.z64: OK` the function is matched and you can stop work. If you see `FAILED` the current assembly does not match the target, continue iterating.

Be careful when you make changes not to accidently apply those changes to other parts of the file.

## Finalize

Whenever you match a function or a particularly tricky bit of asm think about whether there is some detectable pattern or insight in the changes you made, and if so update `ExampleFixes` with new or updated notes to help future decomp.

After matching a function commit the changes to the current branch.