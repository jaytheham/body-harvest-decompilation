# Decompilation Workflow

## Overview

This is a matching decompilation project for Body Harvest 2 (N64). The goal is to create C code that, when compiled, produces the exact same assembly as the original game ROM.
Convert the named N64 assembly function to C code, compile it using IDO 5.3 in Docker, and compare the output against the original assembly. Update the C code iteratively until it produces byte-for-byte identical assembly.

## Project Structure

- `asm/`: Contains original assembly files from the ROM. Each function is in its own `.s` file.
- `src.us/`: Contains C source files. Each file corresponds to an assembly file and contains a `#pragma GLOBAL_ASM` line that includes the original assembly. This is where you will replace the `GLOBAL_ASM` line with your generated C code.
- `include/`: Contains header files for variables, functions, and structs. You will add `extern` declarations for any global variables or functions used by the function you are decompiling.
- `build/`: Contains compiled object files and the final ROM image. You will check the generated assembly of your compiled C code against the original assembly here.

## Tools

- `docker exec -it bh-container bash` - Access the Docker container where IDO is set up.
- `docker exec -it bh-container bash -c "cd /bh && make -j QUIET=1"` - Build the project inside the Docker container.
- `docker exec -it bh-container bash -c "cd /bh && mips-linux-gnu-objdump -d build/src.us/main_1000.c.o"` - Disassemble a single object file.
- `python tools/mips_to_c/m2c.py asm/nonmatchings/core/1000/func_80000D0C_190C.s` - Generate an initial C implementation from the original assembly.
- `docker exec -it bh-container bash -c "cd /bh && grep -r 'D_80047588' include/"` - Search for extern declarations.

## Step 1: Analyze the Original Assembly

Look up the named assembly e.g. `func_80000D0C_190C.s`. to understand:

- Function signature (parameters, return type)
- Data symbols accessed (e.g., `D_80047588`). Check for declarations in `include/variables.us.h` and types in `include/structs.us.h`.
- Functions called (check `include/functions.us.h` for declarations)
- Control flow (branches, loops)
  Make notes of any complex operations or patterns that may require special attention when translating to C.

## Step 2: Create C Implementation

Find the `#pragma GLOBAL_ASM(...` line in the c source file that includes the target assembly.
Use mips_to_c to create an initial C implementation from the original assembly and replace the `GLOBAL_ASM` line with the generated C code.
All edited files must use LF line endings.

## Step 3: Declare External Symbols

Add any missing declarations of data symbols used by the function to `include/variables.us.h`.

```c
extern u16 D_800475E0;
```

Identify structs and arrays accessed by the function and define them in `include/structs.us.h` if they aren't defined yet. For example, if the function accesses `D_80048198[arg0].unk10`, you may need to define a struct for the elements of `D_80048198` and declare it as an array:

Add or update declarations for any called functions in `include/functions.us.h` if they aren't defined in `src.us/` yet.

## Step 4: Refine C Code Checklist

- Simplify the generated code and make it more human-readable.
- Update the code to use struct/array access instead of pointer arithmetic.
- No pointer arithmetic with manual offset calculations
- All struct field accesses use -> or . operators
- No void\* parameters that should be typed structs
- Struct sizes match the assembly access patterns

Avoid Pointer Arithmetic

When you see pointer arithmetic patterns like _(type_)((u8\*)ptr + offset):

    Identify the access pattern:
        What offset is being accessed? (e.g., 0xC means field at offset 12)
        Is it accessing an array element? (e.g., arg1 * 36 means 36-byte elements)
        What field within the element? (e.g., + 0xA means field at offset 10)

    Create appropriate structs:
        Define the element struct with correct size and field offsets
        Define the container struct with pointer at correct offset
        Use meaningful names or unk[Offset] naming convention

    Verify struct sizes:
        Calculate total size to ensure it matches the multiplier in pointer arithmetic
        Example: arg1 * 36 means struct must be exactly 36 (0x24) bytes

Struct Modification and Extension

When modifying struct definitions:

    Search the entire codebase for other references to the same struct
    Check if other functions access fields at nearby offsets
    Verify ALL affected functions still match after struct changes
    Example: If you add a field at offset 0x14, search for all functions accessing that struct and verify they still compile to the correct offsets

Avoid Redundent Declarations

After adding your decompiled function, check for any redundant extern declarations:

    Search for existing declarations: For each extern function you used, search the codebase to see if it's already declared in a header file:
        Use grep -r "void functionName" include/ to search headers
        Use grep -r "void functionName" src/*.h to search source headers

    Remove redundant externs: If a function is already declared in an included header file, remove your extern declaration to avoid duplication

    Verify the build still works after removing redundant externs

Example: If you added extern void setCallback(void \*); but task_scheduler.h (which is already included) declares it, remove your extern declaration.

## Step 5: Build in Docker

Run the build inside the container:

**Expected outcome**: Build completes (SHA1 check may fail, if generated assembly does not match target).

**If compilation errors occur:**

- Check IDO error messages for syntax issues
- Simplify C code (avoid complex expressions in single statements)
- Ensure all extern symbols are declared

If build complete and checksums match: `build/bh.us.z64: OK`. The function is now decompiled and matched and you can stop work. If not, proceed to the next steps for analysis and iteration.

## Step 6: Compare with Original

Compare the original assembly and generated assembly to identify differences:

Note instruction order, registers, immediates, branch conditions

## Step 7: Iterate To Resolve Differences

Rewrite C code to match assumed original intent more closely. Think about how a person would have originally written the code in C to produce the assembly you see.
Read file `DecompHints.md` and `ExampleFixes.md` for common patterns and pitfalls.
Rebuild and re-compare until the generated assembly is identical to the original. Once the build returns `build/bh.us.z64: OK` proceed to the final step.

## Step 8: Finalize

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
