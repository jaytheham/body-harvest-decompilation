# Named trig and call results remove phantom stack temporaries

Matched `func_802DDF50_25D690` in `src.us/overlay_level/america/254410.c`, diff score 0 and full ROM checksum OK.

The initial C already reproduced the instruction sequence. Reorder its declarations to put the first s16 at the frame top, the distance-result word at 0x74, two padding words before the two floats, and the player pointer before the type-index s16. Inline the repeated coordinate differences in the squared-distance expression; IDO still computes them once in v0/v1.

A player pointer used only for two field copies allocated v0 where the target used a0. Reuse that pointer as the first argument and coordinate source of the later player interaction call. Load it after both named trig calls so it does not need an extra spill across those calls.

Name every sine/cosine result before converting it. A shared s16 cosine local then occupies 0x5A. The type-index s16 can be reused for sine results after its initial use. Nested trig calls had reserved implicit temporaries below the main locals; naming just the final pair was insufficient because earlier calls still required those temporaries.

The last mismatch was a cached alien ID at 0x48 instead of 0x4C. Naming just one random result did not help. Give all nested integer calls a shared s32 result, including terrain height, random values assigned to fields, and the collision predicate. Together these remove the remaining implicit temporary and move the cached ID to 0x4C without changing any instruction or register. A named f32 sqrt result fits the second original padding word.

The general lesson is to remove all uses of a temporary-producing expression type before expecting its compiler-reserved slot to disappear. Removing only one occurrence can leave assembly and stack layout unchanged.