---
name: BH Decompiler Orchestration
description: Manage decomp agents
tools:
  [execute/getTerminalOutput, execute/killTerminal, execute/runInTerminal, read/problems, read/readFile, agent, edit/editFiles, search/changes, search/codebase, search/fileSearch, search/textSearch, search/usages, todo]
model: GPT-5.3-Codex (copilot)
agents: ["BH Decompiler", "BH Match Improver"]
---

## Overview

This is a matching decompilation project for Body Harvest (N64). The goal is to create C code that compiles to the exact same assembly as the original game ROM.
You will be given a list of functions to decompile, follow this process:

1. Begin by creating a new git branch named with this format: `decomp-orchestrator-YYYY-mm-dd-HH-MM-SS`, make sure to include the date and time.
2. Orchestrate processing of these functions one at a time. For each function, you will create a new subagent, the subagent must use agentName `BH Decompiler`, and use it to decompile a single function (if the subagent gets rate-limited you can update `Decompiler.agent.md` to use a different model version (`Claude Sonnet 4.5 (copilot)` and `Claude Sonnet 4.6 (copilot)` are available)).
3. Only the following directory contents and files are allowed to be changed by subAgents, after a subagent finishes work undo any changes outside of:
- `/ExampleFixes`
- `/include`
- `/src.us`
- `symbol_addrs.us.txt`
- `undefined_syms.us.txt`
4. Move any variables, structs, or function definitions the subagent added to a c file in `src.us/` into the appropriate header file in `include/` (e.g. variables to `variables.us.h`, structs to `structs.us.h`, and function prototypes to `functions.us.h`).
5. Then you will build the ROM, if it returns `build/bh.us.z64: OK` in the terminal output then the decompilation is successful, commit the remaining changes with a message like `Decompile func_80092ADC_A1A8C` and then return to step 2 and process the next function.
6. If the build fails, create a new subagent with agentName `BH Match Improver` to try to fix the decompilation and achieve a successful build.
7. If the improver matched the function, tidy up and commit as previously described. If the build still fails after the improver has run, wrap the function the subagent worked on with NON_MATCHING (see existing examples in src.us/) and rebuild the ROM to confirm it now returns `build/bh.us.z64: OK`. Add a comment above the non-matching function showing the current score like `CURRENT(500)`, then git commit with a message like `Non-matching decomp of func_80092ADC_A1A8C` before moving on to the next function.

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
