# Removing a stale NON_MATCHING guard

`func_8011EFBC_12DF6C` in `src.us/overlay_gameplay/outside/buildings.c` carried `// CURRENT(170)` despite having matching C. Removing its `#ifdef NON_MATCHING` / assembly fallback enabled the C implementation and produced all 58 target instructions exactly. A fresh-object build retained the target ROM checksum.

The same guard removal matched `func_80091AC0_A0A70`, whose recorded marker was 40.
