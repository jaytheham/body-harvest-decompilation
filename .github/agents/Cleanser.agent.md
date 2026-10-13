---
name: BH Function Cleanser
description: Tidy functions from N64 game Body Harvest
tools:
  [execute/getTerminalOutput, execute/killTerminal, execute/runInTerminal, read/problems, read/readFile, edit/createFile, edit/editFiles, search/codebase, search/fileSearch, search/textSearch, search/usages, todo]
model: DeepSeek V4 Flash (deepseek)
---

## Project Structure

- `asm/nonmatchings`: Readonly - target assembly of unmatched functions.
- `asm/matchings`: Readonly - target assembly of matched functions, search here for specific assembly patterns.
- `src.us/`: C source files of the NTSC (US) build.
- `src.us/core/`: C source files in this directory are also compiled into the EU build, so an edit there changes both ROMs.
- The overlay files in `shared_overlay_files.txt` (the second half of the frontend overlay and the C file of each level overlay) are also compiled into the EU build, so an edit to one changes both ROMs. An address of a level overlay or of the gameplay overlays written as a number in a shared file goes through the macros of `include/version_shift.h` (`LEVEL_PTR(0x802D531C)`), or the EU ROM stops matching.
- `include/`: Headers for variables, functions, structs, library types, and macros.
- `build/`: Readonly - compiled object files and the built ROM image.

# Your Job
1. Remove any unnecessary casts.
2. Replace *all* pointer arithmetic with struct/array access. If there is any pointer arithmetic remaining, you may need to search around the code base and look at other references to a memory address to determine the correct struct/array type and definition to use. If there are no other references to the address, or none typed with a struct/array yet, you will need to identify and create the correct struct/array type and definition based on the assembly of the function itself, and then update the relevant header files with your new struct/array definition.

If the target function doesn't have any of these issues then your job is done and you can stop.