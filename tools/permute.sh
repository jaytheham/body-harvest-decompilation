#!/usr/bin/env bash
# Helper script to import a function and run the decomp-permuter inside the bh-container.
#
# Usage:
#   ./permute.sh <c_file> <asm_file_or_func_name> [permuter options]
#
# Examples:
#   ./permute.sh src.us/overlay_gameplay/outside/145D70.c func_801372B4_146264 -j4
#   ./permute.sh src.us/core/1000.c asm/nonmatchings/core/1000/func_80000400_400.s -j4
#   ./permute.sh src.us/overlay_gameplay/outside/145D70.c func_801372B4_146264 -j4 -s0
#
# Common permuter options:
#   -j <N>   Use N parallel threads        (e.g. -j4)
#   -s <N>   Stop when score drops below N  (0 = perfect match)

set -e

CONTAINER="bh-container"
C_FILE="$1"
ASM_OR_FUNC="$2"
shift 2 || { echo "Usage: $0 <c_file> <asm_file_or_func_name> [permuter options]"; exit 1; }
PERMUTER_ARGS=("$@")

if ! docker ps --filter "name=$CONTAINER" --filter "status=running" --format "{{.Names}}" | grep -q "^$CONTAINER$"; then
    echo "Error: Container '$CONTAINER' is not running. Start it first." >&2
    exit 1
fi

echo "==> Importing $ASM_OR_FUNC from $C_FILE ..."
IMPORT_OUTPUT=$(docker exec "$CONTAINER" python3 tools/decomp-permuter/import.py "$C_FILE" "$ASM_OR_FUNC" 2>&1)
echo "$IMPORT_OUTPUT"

FUNC_DIR=$(echo "$IMPORT_OUTPUT" | grep "Done. Imported into" | sed 's/.*Done. Imported into //')
if [ -z "$FUNC_DIR" ]; then
    echo "Error: Could not parse output directory from import.py." >&2
    exit 1
fi

echo ""
echo "==> Running permuter on $FUNC_DIR"
[ ${#PERMUTER_ARGS[@]} -gt 0 ] && echo "    Extra args: ${PERMUTER_ARGS[*]}"
echo ""

docker exec -it "$CONTAINER" python3 tools/decomp-permuter/permuter.py "$FUNC_DIR" "${PERMUTER_ARGS[@]}"
