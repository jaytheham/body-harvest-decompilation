`incorrect ASM`: In `func_800DBE20_EADD0`, replacing explicit X/Z delta locals with `sqrtf(SQ(xDeltaExpression) + SQ(zDeltaExpression))` makes IDO load the Z coordinate first. The arithmetic registers and instruction positions otherwise match.

-> `code changed`: Put the Z square first in the source expression and the X square second: `sqrtf(SQ(position[2] - (D_80153BA0.z * four)) + SQ(position[0] - (D_80153BA0.x * four)))`.

-> `correct ASM`: IDO loads `D_80153BA0.x` and `position[0]` first, then the Z values, reproducing the target sequence without the two delta locals.
