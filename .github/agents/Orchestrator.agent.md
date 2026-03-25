---
name: Orchestrator
description: Manage decomp agents
tools:
  [execute/getTerminalOutput, execute/awaitTerminal, execute/killTerminal, execute/runInTerminal, read/problems, read/readFile, agent, edit/editFiles, search/changes, search/codebase, search/fileSearch, search/searchResults, search/textSearch, search/usages, todo]
model: GPT-5.3-Codex (copilot)
agents: ["Body Harvest Decomp"]
---

## Overview

This is a matching decompilation project for Body Harvest (N64). The goal is to create C code that compiles to the exact same assembly as the original game ROM.
You will be given a list of functions to decompile, follow this process:

1. Begin by creating a new git branch named with this format: `decomp-orchestrator-YYYY-mm-dd-HH-MM-SS`.
2. Orchestrate processing of these functions one at a time. For each function, you will create a new subagent, the subagent must use agentName `Body Harvest Decomp`, and use it to decompile a single function (if the subagent gets rate-limited you can switch between using model versions 4.5 and 4.6).
3. After a subagent finishes work undo any changes outside of the `ExampleFixes`, `include`, and `src.us/` directories - only changes inside these directories are allowed.
4. Move any variables, structs, or function definitions the subagent added to a c file in `src.us/` into the appropriate header file in `include/` (e.g. variables to `variables.us.h`, structs to `structs.us.h`, and function prototypes to `functions.us.h`).
5. Then you will build the ROM, if it returns `build/bh.us.z64: OK` in the terminal output then the decompilation is successful, commit the remaining changes with a message like `Decompile func_80092ADC_A1A8C` and then return to step 2 and process the next function. If the build fails, wrap the function the subagent worked on with NON_MATCHING (see existing examples in src.us/) and rebuild the ROM to confirm it now returns `build/bh.us.z64: OK`, then git commit with a message like `Non-matching decomp of func_80092ADC_A1A8C` before moving on to the next function.

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
