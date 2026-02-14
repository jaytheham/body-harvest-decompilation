# Decompilation Workflow

## Overview

This is a matching decompilation project for Body Harvest (N64). The goal is to create C code that, when compiled, produces the exact same assembly as the original game ROM.
Convert the named N64 assembly function to C89 code, compile it using IDO 5.3 in Docker, and compare the output against the original assembly. Update the C code iteratively until it produces byte-for-byte identical assembly.

## Project Structure

- `asm/`: Contains original assembly files from the ROM. Each function is in its own `.s` file.
- `src.us/`: Contains C source files.
- `include/`: Contains header files for variables, functions, and structs.
- `build/`: Contains compiled object files and the final ROM image.

## Tools

- `python tools/mips_to_c/m2c.py asm/nonmatchings/core/1000/func_80000D0C_190C.s` - Generate an initial C implementation from the original assembly.
- `docker exec -it bh-container bash -c "grep -r 'D_80047588' include/"` - Search for extern declarations.
- `docker exec -it bh-container bash -c "make -j QUIET=1"` - Build the project.
- `docker exec -it bh-container bash -c "mips-linux-gnu-objdump -d build/src.us/overlay_gameplay/outside/missions.c.o | sed -n '/<func_8007679C_8574C>:/,/^$/p'"` - Disassemble a single function from an object file.

## Step 1: Generate C Implementation

Find the `#pragma GLOBAL_ASM(...` line in the C source file that includes the target assembly.
Use mips_to_c to create an initial C implementation from the original assembly and replace the `#pragma GLOBAL_ASM` line with the generated C code.
All edited files must use LF line endings.

## Step 2: Use runSubagent to independently check and fix each of the following common patterns.

- Add any missing declarations of data symbols used by the function to `include/variables.us.h`.
- Identify structs accessed by the function and add or update definitions in `include/structs.us.h`.
- Add or update declarations for any called functions in `include/functions.us.h` if they aren't defined in `src.us/` yet.
- Simplify the generated code and make it more human-readable.
- Update the code to use struct/array access instead of pointer arithmetic.
- All struct field accesses use -> or . operators
- No void\* parameters that should be typed structs
- Struct sizes match the assembly access patterns
- If an arg or `v0` return value is being `& 0xFF` that's a hint that it's actually u8/s8.
- Constructions like `(arg0 < 0x9C) ^ 1` should be converted into a more natural form `arg0 >= 0x9C`.
- Replace goto-based control flow with structured control flow (if/else, for, while).
- Replace if-do-while and do-while loops with for(;;) or while() loops where appropriate.

## Step 3: Build in Docker

Run the build inside the container:

**Expected outcome**: Build completes (SHA1 check may fail, if generated assembly does not match target).

**If compilation errors occur:**

- Check IDO error messages for syntax issues
- Simplify C code (avoid complex expressions in single statements)
- Ensure all extern symbols are declared

If build complete and checksums match: `build/bh.us.z64: OK`. The function is now decompiled and matched and you can stop work. If not, proceed to the next steps for analysis and iteration.

## Step 4: Compare with Original

Compare the original assembly and generated assembly to identify differences:

Note instruction order, registers, immediates, branch conditions

## Step 5: Iterate To Resolve Differences

Rewrite C code to match assumed original intent more closely. Think about how a person would have originally written the code in C to produce the assembly you see.
Read file `DecompHints.md` and `ExampleFixes.md` for common patterns and pitfalls.
Rebuild and re-compare until the generated assembly is identical to the original. Once the build returns `build/bh.us.z64: OK` proceed to the final step.

## Step 6: Finalize

Look back at the changes you had to make, then update `ExampleFixes.md` with any new patterns or insights you discovered during the process to help future decomp.

## Troubleshooting

| Issue                             | Solution                                                    |
| --------------------------------- | ----------------------------------------------------------- |
| `undeclared identifier`           | Add `extern` to `include/variables.us.h`                    |
| IDO syntax error on casts         | Split into separate statements; avoid complex expressions   |
| Link error (missing symbol)       | Ensure symbol is declared with `extern` in a header         |
| Build fails but creates no output | Check for `make` syntax in container; use `make -j QUIET=1` |
| Can't find function in objdump    | Verify function name matches; rebuild first                 |

Important: build runs on linux, all file edits must use LF line endings.
