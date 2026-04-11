# Switch Statement: Case Ordering, Jump Table, and Binary Asset Split

## Problem
When decompiling a function with a `switch` statement, multiple issues arise that prevent matching:

## Fix 1: Remove the explicit bound check before switch

IDO generates `sltiu at, reg, N` as part of switch dispatch. Do **not** add an explicit `if ((u8)arg >= N) return;` bound check — it generates extra `andi` and duplicate `slti`/`sltiu` instructions. Let the switch generate its own bounds check naturally.

## Fix 2: Reorder switch cases to match original code order

IDO places case handler code in the ORDER cases appear in the source. The original programmer may have written cases in a non-sequential order. Determine the correct case order from the jump table in the ROM:

```python
import struct
with open('build/bh.us.z64', 'rb') as f:
    f.seek(jtbl_ROM_offset)
    entries = struct.unpack('>NI', f.read(N*4))
# Sort by ROM address to get source order
sorted_cases = sorted(enumerate(entries), key=lambda x: x[1])
```

The case order in C should match the physical order of case handlers in the binary.

## Fix 3: `beq` vs `bne` for state-check early return

If existing state check comes BEFORE non-special code:
- `if (state != N) { non-special } else { special; return; }` → generates `beq v1, t0, special_label` (fall-through is non-special)
- `if (state == N) { special; return; } non-special` → generates `bne v1, t0, skip_if` (fall-through is special) 

Check the target assembly branch direction to determine the right C structure.

## Fix 4: Don't share func_800165EC + store after if/else branches

If each branch (in-range and out-of-range) in the assembly has its OWN call to `func_800165EC` + store, do **not** factor them out. Put `D_array[func_800165EC()] = val; return;` inside **each** branch separately. IDO does not generalize common-tail when values are computed differently.

## Fix 5: Binary asset split for C-generated jump table

When replacing an assembly function that used an absolute-addressed jump table (`jtbl_XXXXXXXX`), the C compiler generates its switch table in `.rodata`, at a different address than the original.

**Solution**: Split the binary data asset that contains the original jump table:

1. Find the jump table offset in the binary asset:
   ```
   offset = jtbl_RAM_address - asset_RAM_start
   ```

2. Split into two files at that offset (removing the 80 bytes that the C `.rodata` will replace):
   ```python
   part1 = data[:offset]
   part2 = data[offset + rodata_size:]  # skip the original table bytes
   ```

3. Update `bh.ld`: replace the single asset entry with:
   ```ld
   build/assets/FILE_1.bin.o(.data);
   build/src.us/FILE.c.o(.rodata);
   build/assets/FILE_2.bin.o(.data);
   ```

4. Remove `build/src.us/FILE.c.o(.rodata)` from the rodata section of the linker script.

This ensures the C compiler's jump table lands at exactly the right ROM address.
