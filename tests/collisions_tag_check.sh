#!/bin/bash
# Run from the repository root with PY set. Needs no extraction, no build and no baserom.
# tools/gen_eu_symbol_collisions.py tags a colliding PAL label eu_<name> in symbol_addrs.eu.txt. A label in the overlay
# range (0x80070000 up) needs "// rom:0x<offset>" because the overlays share one vram range and splat applies a symbol
# there only with it; a core label does not.
set -u
: "${PY:?set PY to a Python 3.10 or 3.12 interpreter with PyYAML (no 3.11: the vendored tree-sitter has no build for it)}"
failures=0
check() {
    local description="$1"
    shift
    if "$@"; then echo "ok   $description"; else echo "FAIL $description"; failures=$((failures + 1)); fi
}
tags=$("$PY" - <<'PYEOF'
import sys
sys.path.insert(0, "tools")
import gen_eu_symbol_collisions as g
print(g.splat_tag("D_800AEC48_7F0F8"))
print(g.splat_tag("D_80031450_32050"))
print(g.splat_tag("D_802DF3E4_25F644"))
print(g.splat_tag("D_80048038"))
PYEOF
)
tags=$(printf "%s" "$tags" | tr -d '\015')
readarray -t t <<< "$tags"
check "an overlay label is tagged with its rom offset" test "${t[0]}" = "eu_D_800AEC48_7F0F8 = 0x800AEC48; // rom:0x7F0F8"
check "a core label is tagged without one" test "${t[1]}" = "eu_D_80031450_32050 = 0x80031450;"
check "a level label is tagged with its rom offset" test "${t[2]}" = "eu_D_802DF3E4_25F644 = 0x802DF3E4; // rom:0x25F644"
check "a label without a rom suffix is tagged without one" test "${t[3]}" = "eu_D_80048038 = 0x80048038;"
if [ "$failures" -eq 0 ]; then
    echo "all collision tag checks passed"
fi
exit "$failures"
