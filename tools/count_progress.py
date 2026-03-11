#!/usr/bin/env python3
"""
count_progress.py — Body Harvest decompilation progress tracker.

Counts GLOBAL_ASM and NON_MATCHING hostile functions remaining per zone.
Writes progress.json to repo root.

Usage: python3 tools/count_progress.py
"""

import json
import re
import subprocess
from datetime import datetime, timezone
from pathlib import Path

REPO_ROOT = Path(__file__).parent.parent

# Zone definitions: (display_name, source_file_glob_pattern)
ZONES = [
    ("greece/18D7E0",   "src.us/overlay_level/greece/18D7E0.c"),
    ("java/1ED9E0",     "src.us/overlay_level/java/1ED9E0.c"),
    ("siberia/2B7100",  "src.us/overlay_level/siberia/2B7100.c"),
    ("america/254410",  "src.us/overlay_level/america/254410.c"),
    ("comet/318E20",    "src.us/overlay_level/comet/318E20.c"),
]

# Patterns that mark a function as not yet matched
HOSTILE_PATTERNS = [
    re.compile(r'#pragma\s+GLOBAL_ASM\s*\('),
    re.compile(r'#ifdef\s+NON_MATCHING'),
]

def count_hostiles(path: Path) -> int:
    """Count unmatched functions in a zone file."""
    if not path.exists():
        return -1
    text = path.read_text()
    counts = [len(p.findall(text)) for p in HOSTILE_PATTERNS]
    return max(counts)  # each function appears once in exactly one pattern


def total_functions(path: Path) -> int:
    """Count all defined functions (GLOBAL_ASM + NON_MATCHING + bare C bodies)."""
    if not path.exists():
        return -1
    text = path.read_text()
    # Count function definitions: lines like `void func_...` or `s32 func_...` etc.
    # Use a simple heuristic: count GLOBAL_ASM + NON_MATCHING stubs + bare function defs
    global_asm = len(re.findall(r'#pragma\s+GLOBAL_ASM\s*\(', text))
    non_matching = len(re.findall(r'#ifdef\s+NON_MATCHING', text))
    # Bare C function defs (not inside a NON_MATCHING block) — match `type func_XXXXXXXX`
    bare = len(re.findall(r'^(?:void|s32|u32|s16|u16|s8|u8|f32|f64)\s+func_[0-9A-Fa-f_]+\s*\(', text, re.MULTILINE))
    return global_asm + non_matching + bare


def get_git_commit() -> str:
    try:
        return subprocess.check_output(
            ["git", "rev-parse", "--short", "HEAD"],
            cwd=REPO_ROOT, text=True
        ).strip()
    except Exception:
        return "unknown"


def main():
    progress = {
        "generated_at": datetime.now(timezone.utc).isoformat(),
        "commit": get_git_commit(),
        "zones": {},
        "totals": {
            "hostile": 0,
            "matched": 0,
            "total": 0,
        }
    }

    for zone_name, zone_rel in ZONES:
        path = REPO_ROOT / zone_rel
        hostile = count_hostiles(path)
        total = total_functions(path)
        matched = (total - hostile) if (total >= 0 and hostile >= 0) else -1

        progress["zones"][zone_name] = {
            "file": zone_rel,
            "hostile": hostile,
            "matched": matched,
            "total": total,
            "percent": round(100.0 * matched / total, 1) if total > 0 else 0.0,
        }

        if total >= 0:
            progress["totals"]["hostile"] += hostile
            progress["totals"]["matched"] += matched
            progress["totals"]["total"] += total

    t = progress["totals"]
    t["percent"] = round(100.0 * t["matched"] / t["total"], 1) if t["total"] > 0 else 0.0

    out_path = REPO_ROOT / "progress.json"
    out_path.write_text(json.dumps(progress, indent=2) + "\n")

    print(f"Progress written to {out_path}")
    print(f"Totals: {t['matched']}/{t['total']} matched ({t['percent']}%)")
    for zone_name, data in progress["zones"].items():
        print(f"  {zone_name}: {data['matched']}/{data['total']} ({data['percent']}%) — {data['hostile']} hostile")


if __name__ == "__main__":
    main()
