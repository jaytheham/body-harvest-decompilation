# Light animation pointer and reciprocal lifetimes

Frontend func_8007F830_4FCE0 matched with a typed keyframe snapshot and one working void pointer reused for the input frame, track, and old red-channel address. Keep the frame index separate from the remaining duration. Read the old angle and unsigned channel values into scalar snapshots before interpolation; preserve `elapsed = total - remaining` and `total - elapsed` in the reciprocal.

Initializing the keyframe pointer from the track and using an empty `if (keyframe) {}` before its real assignment reserves the snapshot register without emitted instructions. This changed the initial frame load/copy from `lw v1; move a1,v1` to the target `lw a1; move v1,a1`, and preserved the frame-index register. The marker is deliberate matching code.

The last mismatch was green interpolation using the named factor in f0 instead of the original reciprocal result in f2. Repeating `1.0f / (f32)(total - elapsed)` in the green expression lets IDO reuse its common subexpression in f2. Blue still uses the named factor in f0. An additional factor local emitted another move and did not match.

Verified with diff score 0 and `build/bh.us.z64: OK`.
