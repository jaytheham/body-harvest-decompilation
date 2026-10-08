# Trig locals and conditional-expression load order

`func_80107184_116134` required named `s16` locals for sine/cosine results held across another trig call. Keeping both calls inside one arithmetic expression spilled the first return to the stack instead of preserving it in `s1`. The matched `func_80112F98_121F48` demonstrates the same signed-halfword local pattern.

Keep the relative angle in an `s16`, then widen its `u16` view into a `u32` used by both trig calls. An `s32` destination caused redundant masks and moves. A direct cast on the subtraction had the right instructions but shifted every temporary integer register by one.

For the final positive/negative impulse, an if/else matched every instruction except two duplicate loads of the same float argument in opposite registers. A conditional expression with the same float narrowing in both arms fixed their scheduling and matched exactly.
