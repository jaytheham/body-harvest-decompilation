### Binary asset split for C `.rodata` (jump table) placement

When a C file with a `switch` statement is followed by a `bin` asset subsegment, the compiler's `.rodata` (containing the jump table + any string constants) is placed AFTER the binary. If the target ROM has the jump table INSIDE the binary asset (at a specific offset), the `.rodata` lands at a different ROM address.

**Target pattern:** Jump table at ROM 0x1F9BA0 is inside the `1F91B0.bin` asset at offset 0x9F0.

**Problem:** C compiler places `.rodata` (jump table + strings) after the entire binary asset, at a different address (e.g., 0x802E0FB0 vs target 0x802E0E90).

**Solution steps:**

1. **Split the binary asset** at the ROM offset where the jump table begins:
   ```
   assets/1F91B0.bin → part1 (offset 0x0 to 0x9EF) + part2 (offset 0x9F0 to end)
   ```
   The split point must be at the jump table start offset within the binary.

2. **Update `bh.us.yaml`** to reference both parts:
   ```yaml
   - [0x1ED9E0, c, overlay_level/java/1ED9E0]
   - [0x1F91B0, bin, overlay_level/java/1F91B0_part1]
   - [0x1F9BA0, bin, overlay_level/java/1F91B0_part2]
   ```
   The part2 start address should be the jump table ROM address.

3. **Update `bh.ld`** to place `.rodata` between the two parts:
   ```ld
   _1F91B0_part1_bin = .;
   build/assets/1F91B0_part1.bin.o(.data);
   . = ALIGN(., 16);
   _overlay_level_javaSegmentDataEnd = .;
   _overlay_level_javaSegmentRoDataStart = .;
   build/src.us/overlay_level/java/1ED9E0.c.o(.rodata);  /* jump table + strings */
   . = ALIGN(., 16);
   _overlay_level_javaSegmentRoDataEnd = .;
   _1F91B0_part2_bin = .;
   build/assets/1F91B0_part2.bin.o(.data);
   ```

**Note:** The `.rodata` may contain more than just the jump table (e.g., string constants from other functions in the same file). If the strings were originally part of the binary, they will be in the part1 asset. The `.rodata` only needs to contain the jump table. If strings shift the `.rodata` position, adjust the split point to account for the string region.

**Limitation:** If the compiler caches `&D_80157F8E` (or similar global addresses) in a callee-saved register (`s0`), the resulting assembly will have an extra save/restore and shifted register allocation. This requires further C code restructuring to prevent the address CSE.
