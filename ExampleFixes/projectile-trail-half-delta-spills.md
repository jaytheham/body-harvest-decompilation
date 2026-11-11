`incorrect ASM` -> In `func_80128E48_137DF8`, updating the endpoint arguments through their addresses makes IDO regenerate the three subtractions and shifts after `sqrtf`. The enabled C candidate also uses a smaller frame than the target.

`code changed` -> Assign directly to the endpoint arguments, reuse the incoming start coordinates for the first vertex, and keep the half-delta expressions inline. Place 16 bytes of stack padding before the length and eight bytes after the start step.

`correct ASM` -> IDO uses the target 0x88-byte frame and spills the three half-deltas to sp+0x30, sp+0x2C, and sp+0x28 across `sqrtf`. The enabled C candidate matches through the second random remainder and still differs in endpoint stores and graphics command scheduling.
