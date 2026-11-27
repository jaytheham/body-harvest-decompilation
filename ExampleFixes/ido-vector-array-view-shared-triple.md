incorrect ASM:

In `func_800F63D0_105380`, the first X offset reads the available float-conversion image and the second reads the signed-short local. The resulting triples are separate, and the final assembler drops the first input's sign extension:

```asm
sll   t9,v0,2
subu  t9,t9,v0
# ... first vertex store ...
sll   t6,t3,2
subu  t6,t6,t3
```

-> code changed:

Read the normalized X component through the existing vector union's array view for the later projection. Keep direct scalar reads of the resulting short local. The array view changes IDO's expression image without adding a volatile access or a memory write:

```c
Vec3fComponents direction;
/* Other accesses and the normalizer use direction.vector. */
temp_f6 = (s16)(s32)(direction.components[0] * var_f2);
```

Moving the projection ahead of an existing vertex-byte store also demonstrates the alias effect, but changes the required load order. Adding a vertex self-store leaves an extra load/store pair. The ordinary array view avoids both changes.

-> correct ASM:

The signed input feeds one shared triple, which remains in a register for both X stores:

```asm
sll   ra,t3,2
subu  ra,ra,t3
# Both vertex sums reuse ra.
```

The two geometry triples now both retain signed inputs. Other assembly differences in the full function remain.
