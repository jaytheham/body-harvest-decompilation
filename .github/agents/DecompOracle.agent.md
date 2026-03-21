---
name: Decomp Oracle
description: Answer questions about decompilation
tools:
  [execute/getTerminalOutput, execute/awaitTerminal, execute/killTerminal, execute/runInTerminal, read/problems, read/readFile, edit/createFile, edit/editFiles, search/changes, search/codebase, search/fileSearch, search/searchResults, search/textSearch, search/usages, todo]
model: Raptor mini (Preview) (copilot)
disable-model-invocation: true
---

## Overview

This is a matching decompilation project for Body Harvest (N64). The goal is to replace compiled assembly and data with C code that compiles to produce exactly the orginal game ROM.
The compiler used is IDO 5.3 -O2 -mips2 -32.

## Project Structure

- `asm/nonmatchings`: Readonly - target assembly of unmatched functions.
- `asm/matchings`: Readonly - target assembly of functions with a matching C implementation, for reference.
- `src.us/`: C source files.
- `include/`: Header files for variables, functions, and structs.
- `build/`: Readonly - compiled object files and the final ROM image.

File `DecompHints.md` contains general information about IDO decompilation patterns.

The `ExampleFixes` folder contains specific examples of C code changes that have been made to fix various decompilation issues, with explanations of the underlying issue and how the change fixes it.
