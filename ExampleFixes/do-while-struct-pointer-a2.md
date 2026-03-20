### `do { arr[a0 + 0x12] } while (a0--)` inner loop: struct pointer forces outer ptr into $a2

When a void no-param leaf function searches a struct array with a `do { ... } while (a0--)` inner counter loop:
- **Use `StructType *ptr` (not `u8 *ptr`)** for the outer pointer. A typed struct pointer causes IDO to allocate it to `$a2` instead of `$v1`.
- Without the struct type (`u8 *`), IDO puts the outer ptr in `$v1` and precomputes the inner ptr into `$a2` (score 120, all instructions correct but wrong registers).
- With the struct type (`BuildingInstance *`), IDO puts the outer ptr in `$a2` and precomputes the inner ptr into `$a3` — matching the target.
- Access the bytes via named field pointer arithmetic: `(&a2->door1InteriorId)[a0]` generates `addiu a3, a2, 2; lbu t6, 0x12(a3)` identical to the target.
- The `do { ... } while (a0--)` also generates the `move v1, a0` dead-code artifact (IDO saves the pre-decrement `a0` to fill the instruction stream).

**Example (score 0 – fully matched):**
```c
void func_80116724_1256D4(void) {
    s32 v0;
    s32 a0;
    BuildingInstance *a2;  // struct ptr -> $a2

    v0 = 1;
    a2 = D_80050AF0;
    do {
        a0 = 2;
        do {
            if (buildingInteriorToLoadId == (&a2->door1InteriorId)[a0]) {
                D_80052540 = v0;
                D_80052544 = a0;
                return;
            }
        } while (a0--);
        v0++;
        a2++;
    } while (v0 != 0xFF);
}
```