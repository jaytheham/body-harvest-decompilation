# Short strength argument and float declaration order

`func_801022F4_1112A4` takes its impulse strength as s16, not f32. The target loads that argument with lh and converts it directly to double using cvt.d.w. Keep the cast to f64 in its double precision trig expressions; converting the short through f32 inserts cvt.s.w and cvt.d.s, changes scheduling, and permutes floating point temporaries. The existing header and matched caller established the s16 parameter.

Once the signature was corrected, the remaining differences were four accesses to a float local at sp+0x44 instead of sp+0x48. Declaring that float before the other float local aligned its reserved stack home while preserving register allocation. The whole-ROM checksum passed.
