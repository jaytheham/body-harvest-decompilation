# Manual Setup Guide for Body Harvest Decompilation

This guide provides instructions for manually setting up a working environment when the automated tools are not available.

## Prerequisites

1. Python 3.8+
2. Basic understanding of MIPS assembly
3. Text editor or IDE

## Manual Setup Process

### 1. Directory Structure

Create the necessary directory structure:

```bash
mkdir -p asm/nonmatchings/core/1000
mkdir -p asm/nonmatchings/core/FD80
mkdir -p build/src.us/core
```

### 2. Function Selection

Choose a simple function to start with. Look for functions that:
- Are relatively short (under 50 lines of assembly)
- Have clear control flow
- Don't have complex data structures

### 3. Manual Extraction Process

1. Identify the function boundaries in the ROM
2. Extract the assembly code manually
3. Create a .s file in the appropriate nonmatchings directory
4. Use mips_to_c to generate initial C code
5. Manually clean up the generated code
6. Test by compiling and comparing assembly output

### 4. Tools Needed

Even without full build environment, you can still work on functions:

- **mips_to_c**: Located in `tools/mips_to_c/`
- **Text editor**: For editing C code
- **Hex editor**: For examining ROM directly if needed

### 5. Workflow

1. Select a function from `src.us/core/1000.c` that has a `#pragma GLOBAL_ASM`
2. Find the corresponding .s file in the original asm directory (once extracted)
3. Run mips_to_c on the assembly file:
   ```bash
   python tools/mips_to_c/m2c.py asm/nonmatchings/core/1000/func_80000XXX_XXXX.s
   ```
4. Clean up the generated C code
5. Replace the `#pragma GLOBAL_ASM` with your cleaned C code
6. Continue refining until the assembly matches

### 6. Useful Commands

Even without full build system, these commands can be helpful:

```bash
# Check for GLOBAL_ASM pragmas
grep -r "GLOBAL_ASM" src.us/

# Count remaining GLOBAL_ASM pragmas
grep -r "GLOBAL_ASM" src.us/ | wc -l

# Find specific function
grep -r "func_80000400" src.us/
```

### 7. Next Steps

Once you have some functions matched:
1. Document patterns you discover in `DecompHints.md`
2. Add examples to `ExampleFixes.md`
3. Update `FUNCTION_ASSIGNMENT.md` to track your progress
4. Consider contributing back to the main repository

This manual approach allows you to make progress even when the full build environment is not available.