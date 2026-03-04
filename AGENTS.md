# AGENTS.md - Body Harvest Decompilation Project

This document provides essential information for agentic coding assistants working on the Body Harvest N64 decompilation project. Follow these guidelines to ensure consistency and successful builds.

## Repository Overview

This is a matching decompilation project for the N64 game Body Harvest. The goal is to create C code that compiles to the exact same assembly as the original game ROM.

- **ROM Versions**: US (B6.5) and EU (F2.6)
- **Build System**: Custom Makefile with IDO 5.3 compiler
- **Language**: C89 with IDO 5.3 extensions
- **Architecture**: MIPS VR4300 (Nintendo 64)

## Build Commands

### Basic Build
```bash
# Extract ROM (requires baserom.us.z64 in root)
make extract

# Build entire project
make --jobs

# Build with quiet output
make --jobs QUIET=1
```

### Version-Specific Builds
```bash
# Build EU version
make --jobs VERSION=eu

# Build with non-matching functions allowed
make --jobs NON_MATCHING=1
```

### Clean Commands
```bash
# Clean build artifacts
make clean

# Clean everything including extracted files
make distclean
```

### Single File Compilation (Docker)
```bash
# Compile a specific source file
docker exec -it bh-container bash -c "make build/src.us/path/to/file.c.o"
```

## Testing Commands

### Run Tests for Specific Tools
```bash
# Run mips_to_c tests
python3 tools/mips_to_c/run_tests.py

# Run asm-processor tests
./tools/asm-processor/run-tests.sh

# Run decomp-permuter tests
./tools/decomp-permuter/run-tests.sh

# Run asm-differ tests
python3 tools/asm-differ/test.py
```

### Verify Build Success
```bash
# Check if build was successful
sha1sum --check bh.us.sha1
```

## Diffing Commands

### Compare Function Assembly
```bash
# Compare a specific function
docker exec -it bh-container bash -c "tools/asm-differ/diff.py --no-pager <function_name>"

# Compare with compression
docker exec -it bh-container bash -c "tools/asm-differ/diff.py --no-pager --compress-matching 3 <function_name>"
```

### Disassemble Object Files
```bash
# Disassemble a specific function from object file
docker exec -it bh-container bash -c "mips-linux-gnu-objdump -d build/src.us/path/to/file.c.o | sed -n '/<function_name>:/,/^$/p'"
```

## Code Style Guidelines

### General Formatting
- Use 4-space indentation (no tabs)
- Opening braces on same line as control statement
- No spaces around parentheses in function calls
- Pointer asterisks attached to variable name, not type
- Line length limited to approximately 120 characters

### Naming Conventions
- Functions: `camelCase` or `snake_case` (follow existing patterns)
- Variables: `snake_case`
- Constants: `UPPER_SNAKE_CASE`
- Structs: `PascalCase` with `_s` suffix (e.g., `Player_s`)
- Globals: Prefixed with `D_` followed by RAM address (e.g., `D_80047588`)

### Imports and Headers
- Include order: System headers, project headers, local headers
- Always include `"common.h"` in source files
- Use angle brackets for system headers: `#include <ultra64.h>`
- Use quotes for project headers: `#include "common.h"`

### Types
- Use fixed-width types from `ultra64.h`: `u8`, `s8`, `u16`, `s16`, `u32`, `s32`, `u64`, `s64`, `f32`, `f64`
- Use `void*` for generic pointers
- Use specific pointer types when known
- Use appropriate signed/unsigned types based on data usage

### Function Declarations
- Declare all parameters with specific types
- Use `void` for functions with no parameters
- Match existing function signatures in `include/functions.us.h`
- Add comments for parameter meanings when not obvious

### Structs and Enums
- Define structs in `include/structs.us.h`
- Use explicit padding for alignment
- Group related fields together
- Use meaningful field names based on usage
- Add comments for field meanings

### Comments
- Use `//` for single-line comments
- Use `/* */` for multi-line comments
- Comment complex algorithms and non-obvious code
- Add original function names as comments when renaming

### Error Handling
- Handle all possible error conditions
- Use early returns for error cases
- Log errors with `osSyncPrintf()` when appropriate
- Return appropriate error codes

### Memory Management
- Avoid dynamic allocation (not available on N64)
- Use static arrays and global variables
- Initialize variables before use
- Be careful with stack usage (limited on N64)

## Decompilation Workflow

### 1. Generate Initial C Implementation
```bash
# Generate C from assembly
python tools/mips_to_c/m2c.py asm/nonmatchings/path/to/function.s
```

### 2. Clean Up Generated Code
- Add missing declarations to appropriate header files
- Replace pointer arithmetic with struct/array access
- Convert goto-based control flow to structured control flow
- Ensure all temp pointer variables are removed
- Match parameter and return types with existing code

### 3. Insert C into Project
- Replace `#pragma GLOBAL_ASM(...)` with cleaned C code
- Verify all struct and array accesses are correct
- Remove any remaining temporary variables

### 4. Build and Verify
```bash
# Full rebuild
docker exec -it bh-container bash -c "make clean && make -j QUIET=1"
```

### 5. Iterate Until Matching
- Compare assembly output with original
- Adjust C code to match register allocation and instruction order
- Refer to `DecompHints.md` for common patterns
- Never give up - keep iterating until matching

## Common Patterns and Pitfalls

### Register Allocation
- IDO 5.3 (-O2) has specific register allocation behaviors
- Variable declaration order affects register assignment
- Removing intermediate variables often improves matching
- Use explicit struct/array access instead of pointer arithmetic

### Control Flow
- Replace if-do-while with for/while loops
- Eliminate goto statements
- Use natural C control flow constructs
- Pay attention to branch delay slots

### Data Types
- Use correct signed/unsigned types
- Match parameter types with calling conventions
- Use appropriate struct field types
- Be careful with bit-field allocations

### Optimization Techniques
- Reorder statements to match original instruction order
- Duplicate expressions to help with CSE (Common Subexpression Elimination)
- Use explicit parentheses to control evaluation order
- Avoid complex expressions in single statements

## File Organization

### Source Files
- Located in `src.us/` and `src.eu/`
- Organized by subsystem and memory segment
- Match original ROM organization

### Header Files
- `include/common.h` - Main project header
- `include/functions.us.h` - Function declarations
- `include/structs.us.h` - Struct definitions
- `include/variables.us.h` - Global variable declarations

### Assembly Files
- `asm/nonmatchings/` - Individual function assemblies
- Organized by source file structure
- Used for diffing and reference

### Build Artifacts
- `build/` - Compiled object files and ROM
- Not checked into version control
- Automatically generated during build

## Symbol Management

### Adding New Symbols
- Add declarations to appropriate header files
- Add to `symbol_addrs.us.txt` with correct RAM address
- Remove from `undefined_syms.us.txt` if present

### Renaming Symbols
- Update all references in C source files
- Update declarations in header files
- Update entries in symbol files
- Add comment with original name

## Docker Environment

### Container Access
```bash
# Enter container shell
docker exec -it bh-container bash

# Run commands in container
docker exec -it bh-container bash -c "<command>"
```

### Available Tools in Container
- `mips-linux-gnu-gcc` - Cross-compiler
- `mips-linux-gnu-objdump` - Disassembler
- `sha1sum` - Hash verification
- Python 3 with required packages
- All project-specific tools

## Progress Tracking

### Check Progress
```bash
# Generate progress report
make progress
```

### Progress Files
- `progress.csv` - Overall project progress
- `progress.main.csv` - Main segment progress
- `progress.overlay*.csv` - Overlay segment progress

## Troubleshooting

### Common Issues
1. **Undeclared identifier**: Add extern declaration to appropriate header
2. **IDO syntax error**: Split complex expressions into multiple statements
3. **Link error**: Ensure all symbols are properly declared
4. **Build fails**: Check for Makefile syntax and missing dependencies

### Debugging Steps
1. Verify all required files are present
2. Check Docker container is running
3. Ensure baserom is correctly placed and named
4. Clean and rebuild from scratch
5. Check for typos in function/variable names

## Additional Resources
- `DecompHints.md` - Detailed decompilation tips and patterns
- `ExampleFixes.md` - Specific examples of common fixes
- `README.md` - Project setup and general information
- `.github/agents/*.md` - Specialized agent instructions