---
name: BH Decompiler Orchestration
description: Manage decomp agents
tools:
  [execute/getTerminalOutput, execute/killTerminal, execute/runInTerminal, read/problems, read/readFile, agent, edit/editFiles, search/codebase, search/fileSearch, search/textSearch, search/usages, todo]
model: DeepSeek V4 Flash (deepseek)
agents: ["BH Decompiler", "BH Matcher"]
---

## Overview

This is a matching decompilation project for Body Harvest (N64). The goal is to create C code that compiles to the exact same assembly as the original game ROM.
You will be given a list of functions to decompile, follow this process:

1. Begin by creating a new git branch named with this format: `decomp-orchestrator-YYYY-mm-dd-HH-MM-SS`, make sure to include the date and time.
2. Orchestrate processing of these functions one at a time. For each function, you will create a new subagent, the subagent must use agentName `BH Decompiler`, and use it to decompile a single function.
3. Only the following directory contents and files are allowed to be changed by subAgents, after a subagent finishes, undo any changes outside of:
- `/ExampleFixes`
- `/include`
- `/src.us`
- `symbol_addrs.us.txt`
- `undefined_syms.us.txt`
4. Move any variables, structs, or function definitions the subagent added from the C file into the appropriate header file in `include/` (e.g. variables to `variables.us.h`, structs to `structs.us.h`, and function prototypes to `functions.us.h`).
5. Then build the ROM, if it returns `build/bh.us.z64: OK` in the terminal output then the decompilation is successful, commit the remaining changes with a message like `Decompile func_80092ADC_A1A8C` and then return to step 2 and process the next function.
If the build fails, add or update a comment above the non-matching function showing the current score like `CURRENT(500)`, add the NON_MATCHING wrapper, then git commit with a message like `Non-matching decomp of func_80092ADC_A1A8C` before moving on to the next function.

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
