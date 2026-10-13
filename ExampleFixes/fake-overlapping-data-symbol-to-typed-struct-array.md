# Fake overlapping data symbol -> properly typed struct array

## Symptom

Two `u8` arrays in a `.c` data section where the second one is declared at an address
part-way into the real data:

```c
u8 D_8009E4C8_186588[0xC] = { ... };   /* 12 bytes */
u8 D_8009E4D4_186594[0x40C] = { ... }; /* starts only 0xC bytes later */
```

`D_8009E4D4_186594` (= `D_8009E4C8_186588 + 0xC`) is a fake symbol used purely to make the
byte blob compile; it does not exist as its own object in the ROM.

## How the real shape was recovered

1. The matched function that indexes the table showed the addressing arithmetic:

   ```asm
   sll   $t1, $v1, 2
   subu  $t1, $t1, $v1      ; v1*3
   sll   $t1, $t1, 2        ; v1*12
   addu  $t1, $t1, $v1      ; v1*13
   sll   $t1, $t1, 4        ; v1*208 = row stride 0xD0
   sll   $t2, $t0, 4        ; t0*16  = column stride 0x10
   addu  $t3, $t1, $t2
   ```

   So the element stride is `0x10` and each row holds `0xD0 / 0x10 = 0xD` (13) elements.
   The top-of-table `0xC` offset of the fake symbol is simply the `unkC` byte of element 0.

2. The data section size (`D_8009E8D8 - D_8009E4C8 = 0x410`) divided by the row stride
   gives exactly 5 rows -> `5 x 13 = 65` elements.

3. Regrouping the raw bytes on 16-byte boundaries starting at `D_8009E4C8_186588` (and not
   at the fake symbol) yields consistent records, e.g. `{ segAddr, dataPtr, animId, flags }`,
   with all padding bytes zero and every pointer landing inside `D_8009D298_185358`.

## Fix

Replace the two `u8` blobs with one typed array and index it as a struct:

```c
/* includes/structs.us.h already had: typedef Unk8009E4C8 Unk8009E4C8_Row[0xD]; */
Unk8009E4C8_Row D_8009E4C8_186588[5] = {
	/* category 0 */
	{
		{ 0x05012750, (s16 *)&D_8009D298_185358[0x0000], 0x4E, 0x06 },
		...
	},
	...
};
```

References become real member accesses instead of hand-rolled byte offsets:

```c
temp_v0 = &D_8009E4C8_186588[temp_v1][temp_t0];
func_8007DAA8_165B68(&D_800E6AD8, temp_v0->unk8, NULL, 0.0f, temp_v0->unkC);
...
func_8000CF4C_DB4C(..., D_8009E4C8_186588[temp_v1][temp_t0].unkC, ...);
```

After removing the fake data symbol, 8 trailing bytes (`D_8009E8D8` = 0 and the first word of
the `D_8009E8DC_18699C` alias) still have to be emitted so the section stays the same size;
they were kept in a small raw array with a comment naming the aliases.

## Gotcha: read-only non-matching `.s` files

Non-matching functions still use `#pragma GLOBAL_ASM("...s")`, and those `.s` files are
read-only and *do* reference the old symbol name (`lui %hi(D_8009E4D4_186594)` /
`lbu %lo(D_8009E4D4_186594)($a2)`). Removing the C definition breaks the link:

```
undefined reference to `D_8009E4D4_186594'
```

Keep it alive as an absolute address symbol next to the other "overlap" symbols in
`undefined_syms.us.txt`:

```
/* Symbols within overlay_gameplay/inside 1648A0.c data section (addresses aliased into D_8009E4C8_186588) */
D_8009E4D4_186594 = 0x8009E4D4;
D_8009E8D8_186998 = 0x8009E8D8;
D_8009E8DC_18699C = 0x8009E8DC;
```

Because the alias is only an address, the bytes it points at come from the new typed array,
so `%hi`/`%lo` resolve to exactly the same addresses as before.

## Verification

The whole-ROM build is the check: `.\tools\make.ps1` must still print
`build/bh.us.z64: OK`. Also re-run the byte extraction over the new initializer and compare
the 16-byte groups against the original blob - the struct field order must reproduce the
original byte order (`u32`, pointer, `s32`, `u8`, 3 pad bytes).
