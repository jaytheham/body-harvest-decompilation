# Integer coordinates and packed halfword locals

Matched `func_800851C8_94178` with IDO 5.3. Compute both coordinate differences into s32 locals before passing them to the angle function. Explicit f32 locals changed conversion ordering and temporary registers; integer locals let IDO spill the converted arguments automatically. Reuse the X difference local for the final absolute angle difference after its last coordinate use.

Two consecutive s16 declarations (`sp46`, unused, then `sp44`, the saved angle) share a four-byte stack slot. A one- or two-element s16 array reserved more stack space and did not match. Full ROM verification returned OK.
