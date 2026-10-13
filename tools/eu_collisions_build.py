#!/usr/bin/env python3
"""End-to-end EU build that resolves symbol collisions with the shared C source.

The EU port shares matched C with NA in ``src.us/core/``.  Those C symbols keep
their NA names but are *placed* at EU addresses, so EU asm auto-labels can shadow
them, making EU references silently bind to the wrong address.  Resolving that
requires a fixed, order-sensitive sequence:

    clean eu_ blocks
      -> extract (pristine auto-labels)
      -> scan and write eu_ tags + NA aliases
      -> extract (apply the renamed labels)
      -> build
      -> verify

The clean/extract before the scan is the subtle part: an extraction that already
carries eu_ tags renames the very labels the scan looks for, so scanning it finds
nothing (or the wrong set).  Running the whole sequence here keeps it correct.

    python tools/eu_collisions_build.py             # full pipeline + verify
    python tools/eu_collisions_build.py --no-verify # stop after the build
"""
from __future__ import annotations

import argparse
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
PY = sys.executable


def run(*args: str) -> int:
    print(f"\n>>> {' '.join(args)}", flush=True)
    return subprocess.run(args, cwd=ROOT).returncode


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--jobs", type=int, default=4, help="build parallelism")
    ap.add_argument("--no-verify", action="store_true",
                    help="skip the byte-exactness check after building")
    args = ap.parse_args()

    steps = [
        (PY, "tools/gen_eu_symbol_collisions.py", "--clean"),
        (PY, "tools/native_build.py", "extract", "--version", "eu"),
        (PY, "tools/gen_eu_symbol_collisions.py", "--write"),
        (PY, "tools/native_build.py", "extract", "--version", "eu"),
        (PY, "tools/native_build.py", "build", "--version", "eu",
         "--jobs", str(args.jobs)),
    ]
    if not args.no_verify:
        steps.append((PY, "tools/verify_build.py", "--version", "eu"))

    for step in steps:
        rc = run(*step)
        if rc != 0:
            print(f"\nstep failed ({rc}): {' '.join(step)}")
            return rc
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
