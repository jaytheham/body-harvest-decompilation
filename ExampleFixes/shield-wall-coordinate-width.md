## Incorrect ASM

Assigning the scaled right X value to a short emits a left shift by 19 followed by an arithmetic right shift by 16 before the two vertex stores. The extra instruction moves the palette branches and the rest of the function by four bytes.

## Code changed

Use a word temporary to load each endpoint component. Scale the left components when writing the vertex fields, and scale right X in the word temporary before its two stores. Keep the short narrowing for right Z, where the target emits it.

## Correct ASM

Right X is scaled with one left shift by 3. The function returns to 319 instructions, and the palette branches and blue delay-slot copy appear at the target ROM addresses.
