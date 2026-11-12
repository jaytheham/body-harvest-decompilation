`incorrect ASM`: The compiler reuses the frame value from the fade comparison and emits a register move at the callback gate in `func_8007DDA0_165E60`.
-> `code changed`: Use a separate read alias for the frame comparison and a separate write alias for the timeline step store before the transition callback. Both aliases resolve to their original storage in the US and EU linker scripts.
-> `correct ASM`: The fade callback gate reloads the frame from its global after loading the fade flag, eliminating the extra register move. The enclosing function remains unmatched.

`incorrect ASM`: The cutscene reset places the final store's `lui at` before the timeline address addition. The transition reload likewise places the timeline-step store's `lui at` before its timeline address addition.
-> `code changed`: Keep the last path-step reset and timeline setup call on the same source line. Keep the timeline-step increment and route timeline reload on the same source line.
-> `correct ASM`: Both address additions precede the associated store's `lui at`, as in the target.

`incorrect ASM`: The cutscene reset schedules the frame counter store's `lui at` between the first two index arithmetic instructions. After the route event sound, the route address addition precedes the frame load.
-> `code changed`: Group both final resets with the timeline setup call on one source line. Group the sound call with its route and frame reloads on another source line.
-> `correct ASM`: The index subtraction precedes the frame counter store's `lui at`, and the frame load after the sound precedes the route address addition. The enclosing function remains unmatched.

`incorrect ASM`: The animation update reads the sample directly into `a1` and uses a forced volatile store to reproduce the stack write. The preceding yaw setup computes the route address before the yaw store.
-> `code changed`: Read the initial path directly from the typed route table. Remove the artificial volatile store and place the ordinary animation sample local after the fade padding to give the compiler-generated spill the original stack slot.
-> `correct ASM`: The initial yaw setup matches. The animation block stores the sample at `sp+0x20` and moves the sampled register into `a1` before the callback. The sample register and remaining schedule still differ.
