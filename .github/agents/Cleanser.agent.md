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
- `src.us/`: C source files.
- `include/`: Headers for variables, functions, structs, library types, and macros.
- `build/`: Readonly - compiled object files and the built ROM image.

## Powershell Tools

- `.\tools\gfxdis.ps1` can be used to convert Gfx macro instructions into C code.
e.g.
```C
dl = D_8005BB2C;
D_8005BB2C = dl + 1;
dl->words.w0 = 0xB6000000;
dl->words.w1 = 0x10001;
```
or
```C
D_8005BB2C++;
D_8005BB2C->words.w0 = 0xB6000000;
D_8005BB2C->words.w1 = 0x00010001;
```
Is converted by pwsh cmd `.\tools\gfxdis.ps1 -w B6000000 00010001` into: `gsSPClearGeometryMode(G_ZBUFFER | G_FOG),` which becomes `gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);` in C.
If you don't know one of the values, you can use `12345678` as a placeholder for the cmd, and then fill it in after the fact.

# Your Job
1. Identify any Gfx macro instructions (look for words.w0 and words.w1) in the target function/C file and replace them with the appropriate C code using gfxdis.ps1
2. Remove any unncessary casts.
3. Replace *all* pointer arithmetic with struct/array access. If there is any pointer arithmetic remaining, you may need to search around the code base and look at other references to a memory address to determine the correct struct/array type and definition to use. If there are no other references to the address, or none typed with a struct/array yet, you will need to identify and create the correct struct/array type and definition based on the assembly of the function itself, and then update the relevant header files with your new struct/array definition.

If the target function doesn't have any of these issues then your job is done and you can stop.

You can check the build with `.\tools\make.ps1`.