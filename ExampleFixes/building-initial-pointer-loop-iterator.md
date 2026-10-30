`incorrect ASM`: In `func_8011BA80_12AA30`, using one building pointer for both the initial bounds check and iteration placed `move v1,a0` before the saved-bound loads, and delayed the end-pointer `lui`.

-> `code changed`: Keep a separate initial `BuildingInstance *building` and loop `BuildingInstance *iter`. Assign `iter = building` before the initial `if (building < end && building->zCoord < ...)`, then use `iter` in the guarded `do/while`. Use `s32` radius/bounds and `iter->statusFlags |= 0x10000` for the packed status update.

-> `correct ASM`: The end-pointer `lui` moves to ROM `0x12AA90`, the saved bounds load at `0x12AAA8` through `0x12AAB0`, and `move v1,a0` occupies the first bounds-branch delay slot at `0x12AAB8`. The packed assignment emits the target OR/XOR/shift/XOR sequence. The full US ROM matches.
