"""Compare linked libultra text sections with their original ROM ranges."""
import json
import argparse
import re
import struct
from pathlib import Path

def text_relocations(path):
    data = path.read_bytes()
    if data[:6] != b"\x7fELF\x01\x02":
        raise ValueError(f"Expected big-endian ELF32: {path}")
    section_offset = struct.unpack_from(">I", data, 32)[0]
    section_size, section_count, names_index = struct.unpack_from(">HHH", data, 46)
    sections = [struct.unpack_from(">10I", data, section_offset + i * section_size)
                for i in range(section_count)]
    names_section = sections[names_index]
    names = data[names_section[4]:names_section[4] + names_section[5]]
    for section in sections:
        name = names[section[0]:].split(b"\0", 1)[0]
        if name == b".rel.text":
            for at in range(section[4], section[4] + section[5], 8):
                offset, info = struct.unpack_from(">II", data, at)
                yield offset, info & 0xFF


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--structural", action="store_true", help="Ignore linked symbol addresses")
    parser.add_argument("--disassemble", metavar="SOURCE", help="Show a source's complete text comparison")
    args = parser.parse_args()
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
        if args.disassemble and name != args.disassemble:
            continue
        end = entries[i + 1][0]
        match = re.search(r"^ \.text\s+(0x[0-9a-f]+)\s+(0x[0-9a-f]+) "
                          + re.escape(f"build/src.us/{path}.c.o") + r"$", link_map, re.M)
        if not match:
            print(f"{name}: MISSING")
            continue
        address, size = (int(x, 16) for x in match.groups())
        offset = address - 0x7FFFF400
        expected = bytearray(target[start:end])
        actual = bytearray(current[offset:offset + size])
        relocated = dict(text_relocations(root / f"build/src.us/{path}.c.o"))
        if args.disassemble:
            import rabbitizer
            for at in range(0, max(len(expected), len(actual)), 4):
                sides = []
                for data, address in ((expected, start), (actual, offset)):
                    if at + 4 <= len(data):
                        word = struct.unpack_from(">I", data, at)[0]
                        sides.append(rabbitizer.Instruction(word, address + at + 0x7FFFF400).disassemble())
                    else:
                        sides.append("")
                left = expected[at:at+4]
                right = actual[at:at+4]
                if args.structural and at in relocated and len(left) == len(right) == 4:
                    mask = 0xFC000000 if relocated[at] == 4 else 0xFFFF0000
                    left = int.from_bytes(left, "big") & mask
                    right = int.from_bytes(right, "big") & mask
                mark = " " if left == right else "!"
                print(f"{start+at:06X} {mark} {sides[0]:48} | {sides[1]}")
        if args.structural:
            for at, kind in text_relocations(root / f"build/src.us/{path}.c.o"):
                if at + 4 > min(len(expected), len(actual)):
                    continue
                mask = 0xFC000000 if kind == 4 else 0xFFFF0000
                for data in (expected, actual):
                    word = struct.unpack_from(">I", data, at)[0]
                    struct.pack_into(">I", data, at, word & mask)
        differences = sum(a != b for a, b in zip(expected, actual)) + abs(len(expected) - len(actual))
        if not differences:
            matched += 1
        else:
            print(f"{name}: {differences} different bytes, size {size:#x}/{end-start:#x}, "
                  f"ROM {start:#x}, current {offset:#x}")
    print(f"{matched}/{len(sources)} text sections match")


if __name__ == "__main__":
    main()
