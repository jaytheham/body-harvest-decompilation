# Typed fire payload preserves the generated instruction sequence

In `func_800C3BD8_D2B88`, adding `EffectFirePayload firePayload` to the effect-entry union replaced pointer-to-word-to-pointer casts with `&entry->firePayload` and `&linkedEntry->firePayload`. The phase reset became `linkedEntry->firePayload.control.phase`. These typed accesses preserved the existing generated instruction sequence.
