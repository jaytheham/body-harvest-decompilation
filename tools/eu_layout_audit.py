#!/usr/bin/env python3
"""Audit the EU build against the reference ROM, one subsegment at a time.

The EU ROM is assembled from yaml subsegments.  When one subsegment compiles to
a different size than the original, every later subsegment is displaced and the
plain byte-diff explodes into millions of "differences" that are really a single
shift.  This tool localises the cause: for each subsegment it finds the shift at
which the built bytes best match the reference, so a size error shows up as the
one subsegment where the shift changes, and a content error as a low match rate.

    python tools/eu_layout_audit.py                # all segments
    python tools/eu_layout_audit.py --segment core # just one
    python tools/eu_layout_audit.py --min-size 0x40  # skip tiny noisy entries
"""
from __future__ import annotations

import argparse
import pathlib
import sys

import yaml

ROOT = pathlib.Path(__file__).resolve().parent.parent
SHIFTS = (0, 0x10, 0x20, 0x30, -0x10, -0x20)


def load_segments(version: str):
    """Return ``[(name, [(start, size, type, subname), ...]), ...]``."""
    doc = yaml.safe_load((ROOT / f"bh.{version}.yaml").read_text(encoding="utf-8"))
    data = doc["segments"] if isinstance(doc, dict) else doc
    rom_size = (ROOT / f"baserom.{version}.z64").stat().st_size
    segs = [seg for seg in data if isinstance(seg, dict) and "start" in seg]
    out = []
    for i, seg in enumerate(segs):
        subs = seg.get("subsegments") or []
        entries = []
        for s in subs:
            if isinstance(s, dict):
                start, typ, name = s.get("start"), s.get("type"), s.get("name")
            else:
                start, typ = s[0], s[1]
                name = s[2] if len(s) > 2 else ""
            entries.append([start, typ, name])
        nxt = segs[i + 1]["start"] if i + 1 < len(segs) else rom_size
        ends = [e[0] for e in entries[1:]] + [nxt]
        sized = [(e[0], ends[k] - e[0], e[1], e[2])
                 for k, e in enumerate(entries) if ends[k] > e[0]]
        out.append((seg.get("name", "?"), sized))
    return out


def best_shift(built: bytes, ref: bytes, start: int, size: int):
    """``(shift, matches)`` for this subsegment, or ``None`` if out of range."""
    if start + size > len(built) or start + 0x40 > len(ref):
        return None
    window = built[start:start + size]
    results = []
    for sh in SHIFTS:
        base = start + sh
        if base < 0 or base + size > len(ref):
            continue
        m = sum(1 for k in range(size) if window[k] == ref[base + k])
        results.append((m, sh))
    return max(results) if results else None


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--version", default="eu")
    ap.add_argument("--segment", default=None, help="only this segment")
    ap.add_argument("--min-size", type=lambda v: int(v, 0), default=0x20)
    args = ap.parse_args()

    built = (ROOT / f"build.{args.version}/bh.{args.version}.z64").read_bytes()
    ref = (ROOT / f"baserom.{args.version}.z64").read_bytes()

    print(f"built {len(built):#x}  ref {len(ref):#x}  "
          f"({'short' if len(built) < len(ref) else 'long'} "
          f"{abs(len(built) - len(ref)):#x})")
    for name, entries in load_segments(args.version):
        if args.segment and name != args.segment:
            continue
        print(f"\n== {name} ==")
        for start, size, typ, subname in entries:
            if size < args.min_size:
                continue
            res = best_shift(built, ref, start, size)
            if res is None:
                print(f"  {start:#08x} {size:#06x} {typ:9} {subname}  <out of range>")
                continue
            matches, sh = res
            pct = 100.0 * matches / size
            flag = "ok" if (sh == 0 and matches == size) else \
                   ("SHIFT" if sh != 0 else "DIFF")
            print(f"  {start:#08x} {size:#06x} {typ:9} {subname:34} "
                  f"{flag:5} shift={sh:+#x} match={pct:6.1f}%")
    return 0


if __name__ == "__main__":
    sys.exit(main())
