`incorrect ASM`: In `drawText`, `switch (v1)` with the zero selector case produces `blez v1` followed by no selector copy, then tests `v1` directly for the zero case.

-> `code changed`: Keep the zero selector case and use `switch (v1 ^ 0)`. The identity expression changes IDO's switch temporary materialization without changing the selector value.

-> `correct ASM`: The dispatch becomes `blez v1` with `move a0,v1` in its delay slot, and the zero-selector block tests `a0`, matching the target dispatch. Other differences remain in the complete function.
