`incorrect ASM`: `func_800C56A4_D4654` had the exact instruction sequence and stack layout, but the normalized unit index occupied `t9` instead of `t8`. The effect flag byte and lifetime input consequently used `t8` instead of `t9`, and the kind constant reused the wrong scratch register.

-> `code changed`: Write the effect's unit link before its unchanged flag byte in C. Move the emitter lifetime assignment after its kind assignment. Keep the kind expression's inline loop-counter initialization, `kind = (i = 0) + 2`. Use a byte loop counter with ordinary increment and the typed spark-emitter fields.

-> `correct ASM`: The successful allocator result normalizes into `t8`, while the flag and lifetime loads use `t9`. The scheduled flag write still precedes the link write, the kind constant reuses `t8`, and the lifetime store remains in the loop-test delay slot. All 124 instructions match; both US and EU ROM checks pass.
