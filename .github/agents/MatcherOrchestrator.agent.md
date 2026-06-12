---
name: BH Match Orchestration
description: Manage matcher agents
tools:
  [execute/getTerminalOutput, execute/killTerminal, execute/runInTerminal, read/problems, read/readFile, agent, edit/editFiles, search/codebase, search/fileSearch, search/textSearch, search/usages, todo]
model: DeepSeek V4 Flash (deepseek)
agents: ["BH Matcher"]
---

## Overview

This is a matching decompilation project for Body Harvest (N64). The goal is to create C code that "matches" - compiles to the exact same assembly as the original game ROM.
You will be given a C file to target, follow this process:

1. Begin by creating a new git branch named with this format: `matcher-YYYY-mm-dd-HH-MM-SS`, make sure to include the date and time.
2. Scan the C file to find all functions with a NON_MATCHING wrapper, these are functions which have been decompiled but do not yet match the original assembly when compiled.
3. Orchestrate processing of these NON_MATCHING functions one at a time. For each function, you will:
  - Replace the `NON_MATCHING` before the target function with `TRUE` so the C code is included in the build instead of the assembly file.
  - Build the ROM so the diff tool can calculate the C implementation's CURRENT closeness value. It is normal that the build will return `FAILED` at this stage because the function does not yet match.
  - After building check the current closeness value with the diff tool, a lower value is better, `CURRENT(0)` is a match.
  - Create a new subagent, agentName `BH Matcher`, and tell the subagent to target the function.
4. Only the following directory contents and files are allowed to be changed by subagents, after a subagent finishes, undo any changes outside of:
 - `/ExampleFixes`
 - `/include`
 - `/src.us`
 - `symbol_addrs.us.txt`
 - `undefined_syms.us.txt`
5. Move any variables, structs, or function definitions the subagent added to a C file in `src.us/` into the appropriate header file in `include/` (e.g. variables to `variables.us.h`, structs to `structs.us.h`, and function prototypes to `functions.us.h`).
6. Build the ROM (first replace `NON_MATCHING` with `TRUE` before the target function if it's been re-applied), if it returns `build/bh.us.z64: OK` in the terminal output then the decompilation is matching, commit the remaining changes with a message like `Matched func_80092ADC_A1A8C` and then return to step 3 and process the next function.
7. If the build returns `FAILED`, check the function's CURRENT closeness value with `diff.ps1`. If it is lower than the original value, restore `NON_MATCHING`, add/update a comment above the wrapper with the new value `CURRENT(X)`, and commit the changes. If the value is the same or higher, undo all changes - including the removal of `NON_MATCHING` and check the build is OK before moving on to the next function.

Tell the subagents to reduce the closeness value as much as possible, they should keep going after they make a positive improvement, and only stop when they can no longer find any changes that reduce the value.

Only ask each subagent to target one function.

Subagents are not to commit any changes. After they finish you will check the current changes, then add  NON_MATCHING if needed, fix any errors, revert any unintended changes, and fix whatever else is necessary to return the build to `build/bh.us.z64: OK` before committing. Make sure the function has a comment with the current closeness value before committing. Only commit when the build is OK.

If a function already has a closeness value of less than 100 then skip it. Don't tell the subagent this value threshold.

If there are multiple NON_MATCHING functions with switch statements, only process the last one in the c file. Functions with switch statements have to be matched last-to-first so that their jump table rodata gets positioned correctly.

Keep going automatically until all NON_MATCHING functions in the file have been processed by subagents.

Retain any existing comments.

## Project Structure

- `asm/nonmatchings`: Readonly - target assembly of unmatched functions.
- `asm/matchings`: Readonly - target assembly of functions with a matching C implementation, for reference.
- `build/`: Readonly - compiled object files and the final ROM image.
- `tools/`: Readonly - tools for other tasks.
- `src.us/`: C source files.
- `include/`: Header files for variables, functions, and structs.
- `ExampleFixes/`: Hints for decompilation.

## Tools

These powershell tools exist to assist you:

- Build the ROM: `.\tools\make.ps1`
- Get the diff closeness value for a function: `.\tools\diff.ps1 <target function name> <ROM address of next function> | Select-Object -First 1`. Functions are named like `func_<RAM address>_<ROM address>`.
