# America 254410 matching checkpoint

Active goal: match all originally NON_MATCHING functions in this file, strictly from the end upward. Goal incomplete.

Completed, each independently verified with diff score 0 and build/bh.us.z64: OK:
- func_802DE5E8_25DD28 (about 61 iterations). See ExampleFixes/reused-skeleton-index-and-six-byte-struct-copy.md.
- func_802DDF50_25D690 (about 25 iterations). See ExampleFixes/named-trig-and-integer-call-results-remove-stack-temps.md.

Next: func_802DDC88_25D3C8, next function boundary func_802DDF04_25D644. Do not advance upward until it matches. There are 24 original unmatched functions remaining.

Data/header changes from DE5E8: D_802E0CDC_26041C is now Vec3s (six-byte copy, padding supplied by next word-aligned symbol); extern added to include/variables.us.h.

Build ONLY via tools/make.ps1. Docker access requires sandbox_permissions require_escalated; auto review approves these project builds and diff/search tools. No permuter, no Git history, no subagents authorized. Assembly/build folders readonly.

Use PowerShell [IO.File]::ReadAllText/WriteAllText to preserve source. Source uses LF; normalize function snippets before replacements. Set-Content -NoNewline was unavailable. Temporary snapshots in .codex are old trial states; use current source and matching notes as truth.