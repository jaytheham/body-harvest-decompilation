---
name: Orchestrator
description: Manage decomp agents
tools:
  [execute/getTerminalOutput, execute/awaitTerminal, execute/killTerminal, execute/runInTerminal, read/problems, read/readFile, agent, edit/editFiles, search/changes, search/codebase, search/fileSearch, search/searchResults, search/textSearch, search/usages, todo]
model: Claude Sonnet 4.6 (copilot)
agents: ["Body Harvest Decomp"]
---

## Overview

This is a matching decompilation project for Body Harvest (N64). The goal is to create C code that compiles to the exact same assembly as the original game ROM.
You will be given a list of functions to decompile. 
Begin by creating a new git branch to work on like `decomp-orchestrator-2026-03-01-20-15-45`.
You will then process these functions one at a time. For each function, you will create a new subagent with the Body Harvest Decomp template and use it to decompile a single function.
After a subagent finishes work undo any changes outside of the `ExampleFixes`, `include`, and `src.us/` directories - only changes inside these directories are allowed. Then you will build the ROM, if it retuns `build/bh.us.z64: OK` in the terminal output then the decompilation is successful, commit the remaining changes with a message like `Decompile func_80092ADC_A1A8C` and then move on to the next function. If the build fails, wrap the subagent's work with NON_MATCHING (see existing examples in src.us/) and rebuild the ROM to confirm it now returns `build/bh.us.z64: OK`, then git commit with a message like `Non-matching decomp of func_80092ADC_A1A8C` before moving on to the next function.

## Project Structure

- `asm/nonmatchings`: Readonly - target assembly of unmatched functions.
- `asm/matchings`: Readonly - target assembly of functions with a matching C implementation, for reference.
- `src.us/`: C source files.
- `include/`: Header files for variables, functions, and structs.
- `build/`: Readonly - compiled object files and the final ROM image.

## Tools

These powershell tools exist to assist you:

- Build the ROM: `.\tools\make.ps1`
