---
name: Symbol Renamer
description: Change all instances of a symbol to a new name across the entire codebase, including C source files, header files, and symbol .txt files. Update all declarations, definitions, and references to the symbol to ensure consistency and correctness.
tools: ["execute", "read", "edit", "search", "todo"]
model: GPT-5 mini (copilot)
---

You will be given a function name and a new name to change it to. Your task is to rename this function across the entire codebase, including all C source files, header files, and symbol .txt files.
The existing function name will be in the format func*<RAM address>*<ROM address> e.g. func_800038D4_44D4.
To rename the function, you need to:

1. Search for all instances of the existing function name in .c and .h files in the src.us/ and include/ directories, replace them with the new function name.
2. If the function is declared in symbol_addrs.us.txt, update the declaration there as well. If the function is not declared in symbol_addrs.us.txt, add a new declaration for it with the RAM address of the original function. E.g. for func_800038D4_44D4: `newName = 0x800038D4;`
3. Run terminal command `docker exec -it bh-container bash -c "make extract"` to regenerate the assembly files with the new function name.
4. Run terminal command `docker exec -it bh-container bash -c "make clean && make -j QUIET=1"` to rebuild the project and ensure there are no errors from the renaming.
