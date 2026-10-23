`incorrect ASM`: In `func_800DC5B8_EB568`, IDO copies the incoming byte argument into a saved register with `sll`/`sra` at entry. The target retains the argument in its ABI home and loads it with `lb` during the scalar opacity calculations.

-> `code changed`: Initialize the existing packet cursor with `&arg2`, using `void *gfx` so that the byte address is valid without an alignment-changing cast. Read `arg2` directly. Before each packet write, replace the cursor with the aligned display-list pointer and access the packet through a `Gfx *` view. This reuses one pointer slot rather than adding an opacity pointer local.

-> `correct ASM`: The early byte sign-extension and saved-argument copy disappear. IDO emits one `lb` from `sp+0xFB`, and the frame remains `0xF0`. Register coloring and a separate cached scratch-vector address still differ; this is not yet a complete function match.
