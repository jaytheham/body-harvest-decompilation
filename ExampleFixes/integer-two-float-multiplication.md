# Integer two in float multiplication

In `func_8010F834_11E7E4`, `y *= 2` emits the target single-precision constant load and `mul.s`. The equivalent `y *= 2.0f` is strength-reduced to `add.s`, while `y *= 2.0` promotes the operation to double precision. The integer literal preserves the required multiplication and surrounding instruction scheduling. Reuse the three component locals for normalization, and clear the velocity fields with `0.0f`. The full ROM checksum verifies.

The same rule matched `func_800A5554_B4504`: `(f32)delta / alienTypes[typeIndex].unk40 * 8000.0f * 2` preserves two `mul.s` instructions; a final `2.0f` changes the second to `add.s`.

## Integer zero and one retain the frontend light basis products

`func_8007F3F8_4F8A8` matches with integer factors in its single-precision
expressions: `z = 0 * sinX + 1 * cosX`, and the corresponding zero/one factors
in the other direction components. Float literals `0.0f` and `1.0f` simplify
these products before code generation. Integer literals retain every target
`mul.s`, load zero into f12, one into f18, and give the intermediate z f2.
The former vector snapshots retained the products but added two stack stores;
they and their pointer can be removed. The remaining unused homes can be
represented by word padding rather than unused direction/vector variables.

An unused word between the sinY and sinX declarations puts the Y sine/cosine
spills at sp+0x34/sp+0x38 while leaving the X sine at sp+0x2C. Keep the total
padding unchanged for the 0x58 frame. Removing redundant output-word casts and
explicit widening before multiplication by the cached double is byte-neutral.
The complete 98-instruction function has diff score zero and the full ROM is OK.
## Interior debug camera increments

func_80081764_169824 matches with a word-sized button cache, a fresh direct button test after the helper call, and camera height multiplied by integer 2. Use postfix ++ and -- for the one-unit floating coordinate and distance changes. Replacing these with += one or -= one makes IDO rematerialize global store addresses through AT; increment/decrement retains the target shared vector base in s0 and distance address in v1. Pointer locals, array representations, and volatile accesses do not fix the full function. Integer-address casts recover many stores but disturb alias analysis, button registers, and printf scheduling. The ordinary Vec3f representation and direct increments avoid those casts. Full ROM checksum OK verifies the match.
