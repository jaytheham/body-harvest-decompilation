`incorrect ASM`: In `func_80128E48_137DF8`, overwriting `startStep` with the midpoint step keeps the Z endpoint in a register through the earlier vertex writes.

-> `code changed`: Give the midpoint step a separate signed word local in the space previously reserved by four bytes of frame padding. Use the new local for all three midpoint coordinates.

-> `correct ASM`: The Z endpoint uses `sw` and `lw` at the target argument home `sp+0x9C`. The distance calculation and random remainder keep their target instructions. The X and Y endpoint spills still differ.
