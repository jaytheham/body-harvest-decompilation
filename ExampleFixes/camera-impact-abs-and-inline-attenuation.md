`incorrect ASM`: In `func_80135D44_144CF4`, explicit named negated-distance locals put the raw coordinate deltas in f14 and negations in f16. A named attenuation local then uses f14 and pushes final amplitude to f16.

-> `code changed`: Assign each integer component with `BH_ABS((argN / 4) - cameraCoordinate)`. Keep the squared-distance float and its existing eliminated lifetime check. Inline `distance / 50000.0f` in both the amplitude subtraction and comparison, removing the separate attenuation and negation locals.

-> `correct ASM`: Raw deltas and the squared-distance conversion use f2, negations and final amplitude use f14, and the shared single division uses f16. All 117 instructions match; function diff score is zero.
