`incorrect ASM`: In `func_800F554C_1044FC`, the initial perpendicular cosine component uses `mfc1 a2,$f6`, while the initial forward sine component uses `mfc1 a3,$f8`. The target assigns the sine component to `a2` and the cosine component to `a3`.

-> `code changed`: Keep the existing signed word component locals, but define `sinBComp = (s32)(radiusThird * sinB);` before `cosAComp = (s32)(radiusThird * cosA);`. Leave `sinAComp` first and the forward cosine component last. This changes the equal-priority expression founding order without introducing an instruction or another local.

-> `correct ASM`: The initial component transfers use `mfc1 a0,$f4`, `mfc1 a2,$f8`, `mfc1 a3,$f6`, and `mfc1 t0,$f4`, matching the target component roles. The geometry instruction order and `0x138` frame remain unchanged. This verified local correction reduces the typed-row draft's diff score from 3736 to 3706; the complete function remains unmatched.
