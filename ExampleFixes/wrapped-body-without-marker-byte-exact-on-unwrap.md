# Enabling an already matching camera reset

`func_8007FBD0_167C90` in `src.us/overlay_gameplay/inside/167C90.c` had a C implementation behind `#ifdef NON_MATCHING`, with no `CURRENT(n)` marker. Removing the guard and assembly fallback compiled that body to the exact 38-instruction target: global state stores followed by one call. A fresh-object build verified the full ROM checksum.
