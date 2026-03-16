#!/usr/bin/env bash
# gfxdis.sh - bash equivalent of gfxdis.ps1
# Wraps gfxdis F3DEX display list disassembler via Docker
#
# Usage:
#   tools/gfxdis.sh -w <word> ...      disassemble 32-bit word pairs (hi lo ...)
#   tools/gfxdis.sh -d <byte> ...      disassemble hex bytes
#   tools/gfxdis.sh -f <file>          disassemble binary file
#   tools/gfxdis.sh --gbi f3dex2       GBI variant: f3d / f3dex (default) / f3dex2
#   tools/gfxdis.sh --build            force rebuild of Docker image
#
# Example:
#   tools/gfxdis.sh -w E7000000 00000000 B7000000 00002000

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
N64="$SCRIPT_DIR/n64"
IMAGE="bh-gfxdis"
GBI="f3dex"
REBUILD=false
PASS_ARGS=()

while [[ $# -gt 0 ]]; do
    case "$1" in
        --gbi)   GBI="$2"; shift 2 ;;
        --build) REBUILD=true; shift ;;
        -f)
            # Translate host path to container path
            ABS="$(realpath "$2" 2>/dev/null || echo "$2")"
            REL="${ABS#$REPO_ROOT/}"
            PASS_ARGS+=("-f" "/work/$REL")
            shift 2
            ;;
        *) PASS_ARGS+=("$1"); shift ;;
    esac
done

# Ensure n64 repo is present
if [[ ! -f "$N64/src/gfxdis/gfxdis.c" ]]; then
    echo "Cloning glankk/n64 ..."
    git -C "$SCRIPT_DIR" clone --depth=1 https://github.com/glankk/n64 n64
fi

# Build Docker image if missing or forced
if ! docker image inspect "$IMAGE" &>/dev/null || [[ "$REBUILD" == true ]]; then
    echo "Building Docker image $IMAGE ..."
    docker build -t "$IMAGE" -f "$SCRIPT_DIR/Dockerfile.gfxdis" "$SCRIPT_DIR"
fi

case "$GBI" in
    f3d)    BINARY="gfxdis.f3d" ;;
    f3dex)  BINARY="gfxdis.f3dex" ;;
    f3dex2) BINARY="gfxdis.f3dex2" ;;
    *) echo "Unknown GBI '$GBI'. Use: f3d, f3dex, f3dex2" >&2; exit 1 ;;
esac

docker run --rm -v "${REPO_ROOT}:/work" --entrypoint "$BINARY" "$IMAGE" "${PASS_ARGS[@]}"
