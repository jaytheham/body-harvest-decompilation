# Halfword impulse parameter and component spill order

`func_801022F4_1112A4` takes an s16 impulse magnitude, although its initial C implementation used f32. The target loads the argument with lh and converts it with cvt.d.w. Correcting the definition to match the existing header fixed the arithmetic and register differences. Call sites pass native integer arguments.

Declare the second vector component before the first: `f32 temp_f14, temp_f20;`. This moves the second component spill from sp+0x44 to the target sp+0x48 without affecting instruction order. The existing unused s32 local is needed to retain the target 0x50-byte frame; removing it shrinks the frame to 0x48.

Double casts around float trig results and multiplicands were unnecessary and could be removed while preserving exact code generation. Full ROM checksum OK and function diff score 0 verified.
