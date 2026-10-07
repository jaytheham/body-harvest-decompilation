# Partial fire allocator: explicit union payload access

`func_800C3BD8_D2B88` remains NON_MATCHING, with diff score 695 after the corrected halfword return declaration of `func_800C19D4_D0984`.

Adding `EffectFirePayload firePayload` to the entry union replaces the pointer-to-word-to-pointer casts with `&entry->firePayload` and `&linkedEntry->firePayload`. The zero phase store uses `linkedEntry->firePayload.control.phase`. These typed accesses retain the best instruction sequence and score. The candidate remains guarded.

The main structural mismatch is the target's late `addiu v1,t1,8` before three linked payload stores. IDO normally folds the addition into those stores. A trivial block around the pointer assignment restores the addition, but schedules it in the earlier lifetime comparison delay slot; it also delays the red-channel copy and changes other registers (score 940). Wrapping the pointer plus stores, changing scope boundaries around root and linked payloads, assigning the red channel earlier, using a word-sized width, changing height types, and using the global array instead of a cached base did not improve the match. This continuation checked 49 compiled variants in addition to prior experiments.

The baseline artifact is `.match-c3bd8-union.txt`; the address-restoring candidate is `.match-c3bd8-unionblocks1.txt`. Full ROM checksum passes with NON_MATCHING active.
