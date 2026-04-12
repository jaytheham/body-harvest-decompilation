---
name: BH Data Matcher
description: Decompile code data from N64 game Body Harvest
tools:
  [execute/getTerminalOutput, execute/killTerminal, execute/runInTerminal, read/problems, read/readFile, edit/createFile, edit/editFiles, search/changes, search/codebase, search/fileSearch, search/textSearch, search/usages, todo]
model: Auto (copilot)
---

## Overview

This is a matching decompilation project for Body Harvest (N64). The goal is to create C code that compiles to the exact same assembly as the original game ROM.
You will be tasked with updating the yaml and C files so `.data`, `.rodata`, and `.bss` sections are defined in C code and compile to match the original ROM. C89 code, compiler IDO 5.3 -O2 -mips2 -32.

## Project Structure

- `asm/nonmatchings`: Readonly, git-ignored - target assembly of unmatched functions.
- `asm/matchings`: Readonly, git-ignored - target assembly of functions with a matching C implementation, for reference.
- `src.us/`: C source files.
- `include/`: Header files for variables, functions, and structs.
- `build/`: Readonly, git-ignored - compiled object files and the final ROM image.
- `bh.ld`: Readonly, git-ignored - Linker script defining the layout of the ROM, including the .data, .rodata, and .bss sections.
- `baserom.us.z64` Readonly, git-ignored - original ROM image, used as a reference for the target assembly and data.
- `bh.us.yaml` - Defines the layout of sections within the ROM, including the .data, .rodata, .bss etc sections.

## Tools

These powershell tools exist to assist you:

- Extract the data from the original ROM and rebuild the linker script: `.\tools\extract.ps1`. This will read the layout defined in `bh.us.yaml`.
- Build the ROM: `.\tools\make.ps1`. Important: This is the only correct way to build your C code, it ensures all symbols are correctly linked.

## Workflow
1. You will be given a ROM address section to work on e.g. `- [0x14AA40, bin]`.
2. Search for variables defined in this section e.g. `D_8013BA94_14AA44`, variables are named `D_<RAM address>_<ROM address>`. There may be many variables defined in the same section, so you should focus on the first few variables in the section to start with.
3. Search for references to these variables in .c and .s files to determine which C file this data belongs to. Note that some of the original C files may currently be combined into a single file, so you may need to split an existing C file into multiple files to match the original layout of the ROM.
Not all functions in C are decompiled yet so you may need to search for variable references in the .s assembly files in `asm/nonmatchings` to determine the correct C file.
4. Update the yaml file to define the target section e.g. `- [0x14A8A0, .data, overlay_gameplay/outside/F6A50]`, the third argument of the section must be the path of the c section this data belongs to. If the target `bin` section appears to contain data for multiple C files split it into multiple sections - leaving a `bin` section for the remaining data - and focus on just the data from the first section.
5. Add definitions for these variables in the appropriate existing C file, make sure to use the correct types, order, and initial values as in the original ROM. Define the variables before the first function in the C file.
6. Run the extract script to rebuild the linker script from the changed yaml file, then run the build script to compile the ROM. You must run extract any time the yaml file is changed, and build after making code changes.
7. Compare the built ROM against the original ROM and identify any differences in the output for the data section. You can also look at the linker script to see which order it is putting the sections into, but you cannot change the order of sections in the linker script as it is auto-generated, you must change the yaml and C code to match the original ROM.

Then continue updating the C code to fix any differences in the output until the built ROM matches the original ROM, this may require changing the types of variables, their order, their initial values, or the layout of data sections. Note the linker script adds padding between sections in some circumstances.

There are some already decompiled data sections in the yaml for reference.

Do not cheat by adding all the remaining bin data as a variable in the last defined non-bin section, you must add variables to the C files which reference them, and split the yaml sections so each data section corresponds to the correct C file as needed to match the original ROM layout.

If the build script returns `build/bh.us.z64: OK` then the built ROM perfectly matches the original ROM.