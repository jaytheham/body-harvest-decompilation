"""Compare linked libultra text sections with their original ROM ranges."""
import json
import re
from pathlib import Path


def main():
    root = Path(__file__).resolve().parent.parent
    target = (root / "baserom.us.z64").read_bytes()
    current = (root / "build/bh.us.z64").read_bytes()
    config = (root / "bh.us.yaml").read_text()
    link_map = (root / "build/bh.us.map").read_text()
    entries = [(int(m[1], 16), m[2], m[3]) for m in re.finditer(
        r"\[(0x[0-9A-Fa-f]+), ([.\w]+)(?:, ([^\]\n]+))?\]", config)]
    sources = json.loads((root / "src.us/libultra/sources.json").read_text())
    matched = 0
    for i, (start, kind, path) in enumerate(entries):
        if kind != "c" or not path or not path.startswith("libultra/"):
            continue
        name = path.split("/")[-1]
        if name not in sources:
            continue
        end = entries[i + 1][0]
        match = re.search(r"^ \.text\s+(0x[0-9a-f]+)\s+(0x[0-9a-f]+) "
                          + re.escape(f"build/src.us/{path}.c.o") + r"$", link_map, re.M)
        if not match:
            print(f"{name}: MISSING")
            continue
        address, size = (int(x, 16) for x in match.groups())
        offset = address - 0x80000C00
        expected = target[start:end]
        actual = current[offset:offset + size]
        differences = sum(a != b for a, b in zip(expected, actual)) + abs(len(expected) - len(actual))
        if not differences:
            matched += 1
        else:
            print(f"{name}: {differences} different bytes, size {size:#x}/{end-start:#x}, "
                  f"ROM {start:#x}, current {offset:#x}")
    print(f"{matched}/{len(sources)} text sections match")


if __name__ == "__main__":
    main()
