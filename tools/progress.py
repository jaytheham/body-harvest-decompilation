#!/usr/bin/env python3
"""
progress.py — Body Harvest decompilation progress tracker.

Walks src.us/**/*.c, counts matched / NON_MATCHING / GLOBAL_ASM functions
per file and segment, reads git log for history, and emits progress.json.

Usage:
  python3 tools/progress.py [--output path/to/progress.json] [--repo-root DIR]

Output: progress.json consumed by docs/index.html
"""

import argparse
import json
import os
import re
import subprocess
import sys
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path


def parse_args():
    p = argparse.ArgumentParser(description="Generate Body Harvest decomp progress data.")
    p.add_argument("--output", default="docs/progress.json", help="Output JSON path")
    p.add_argument("--repo-root", default=".", help="Repository root directory")
    p.add_argument("--history-commits", type=int, default=200,
                   help="Max commits to scan for history graph")
    return p.parse_args()


# Regex patterns
RE_GLOBAL_ASM = re.compile(r'GLOBAL_ASM\s*\(')
RE_NON_MATCHING = re.compile(r'#ifdef\s+NON_MATCHING')
RE_FUNC_DEF = re.compile(
    r'^(?:static\s+)?'
    r'(?:(?:const|volatile|unsigned|signed)\s+)*'
    r'(?:[A-Za-z_]\w*(?:\s*\*+)?(?:\s+\*+)?)'
    r'\s+\w+\s*\('
    r'[^;]*\)\s*\{',
    re.MULTILINE
)

SEGMENT_DISPLAY = {
    "core": "Core",
    "overlay_gameplay/frontend": "Gameplay / Frontend",
    "overlay_gameplay/outside": "Gameplay / Outside",
    "overlay_gameplay/inside": "Gameplay / Inside",
    "overlay_level/greece": "Level / Greece",
    "overlay_level/java": "Level / Java",
    "overlay_level/america": "Level / America",
    "overlay_level/siberia": "Level / Siberia",
    "overlay_level/comet": "Level / Comet",
}
SEGMENT_ORDER = list(SEGMENT_DISPLAY.keys())


def analyse_file(path: Path) -> dict:
    try:
        text = path.read_text(encoding="utf-8", errors="replace")
    except OSError:
        return {"matched": 0, "non_matching": 0, "asm_stubs": 0, "total": 0}
    asm_stubs = len(RE_GLOBAL_ASM.findall(text))
    non_matching = len(RE_NON_MATCHING.findall(text))
    total_defs = len(RE_FUNC_DEF.findall(text))
    matched = max(0, total_defs - non_matching)
    total = matched + non_matching + asm_stubs
    return {"matched": matched, "non_matching": non_matching, "asm_stubs": asm_stubs, "total": total}


def file_to_segment(rel_path: str) -> str:
    parts = Path(rel_path).parts
    if len(parts) >= 4:
        return f"{parts[1]}/{parts[2]}"
    elif len(parts) >= 3:
        return parts[1]
    return "unknown"


def git_run(args: list, cwd: str) -> str:
    try:
        result = subprocess.run(["git"] + args, cwd=cwd, capture_output=True, text=True, timeout=30)
        return result.stdout.strip()
    except (subprocess.TimeoutExpired, OSError):
        return ""


def get_commit_info(cwd: str) -> tuple:
    sha = git_run(["rev-parse", "--short", "HEAD"], cwd)
    ts = git_run(["log", "-1", "--format=%cI"], cwd)
    return sha, ts


def get_contributors(cwd: str, src_dir: Path) -> dict:
    contributors = {}
    for f in src_dir.rglob("*.c"):
        rel = str(f.relative_to(Path(cwd)))
        out = git_run(["log", "-1", "--format=%an|%ae", "--", rel], cwd)
        if "|" in out:
            name, email = out.split("|", 1)
            contributors[rel] = {"name": name.strip(), "email": email.strip()}
        else:
            contributors[rel] = {"name": "", "email": ""}
    return contributors


def analyse_blob(blob: str) -> dict:
    asm_stubs = len(RE_GLOBAL_ASM.findall(blob))
    non_matching = len(RE_NON_MATCHING.findall(blob))
    total_defs = len(RE_FUNC_DEF.findall(blob))
    matched = max(0, total_defs - non_matching)
    total = matched + non_matching + asm_stubs
    return {"matched": matched, "non_matching": non_matching, "asm_stubs": asm_stubs, "total": total}


def build_history(cwd: str, src_dir: Path, max_commits: int) -> list:
    src_rel = str(src_dir.relative_to(Path(cwd)))
    log_out = git_run(
        ["log", f"--max-count={max_commits}", "--format=%H|%ad", "--date=short", "--", src_rel],
        cwd
    )
    if not log_out:
        return []

    history = []
    seen_dates: set = set()

    for line in log_out.splitlines():
        if "|" not in line:
            continue
        sha, date = line.split("|", 1)
        sha, date = sha.strip(), date.strip()
        if date in seen_dates:
            continue
        seen_dates.add(date)

        tree_out = git_run(["ls-tree", "-r", "--name-only", sha, src_rel], cwd)
        if not tree_out:
            continue

        totals = {"matched": 0, "non_matching": 0, "asm_stubs": 0, "total": 0}
        for rel_path in tree_out.splitlines():
            if not rel_path.endswith(".c"):
                continue
            blob = git_run(["show", f"{sha}:{rel_path}"], cwd)
            if not blob:
                continue
            counts = analyse_blob(blob)
            for key in totals:
                totals[key] += counts[key]

        if totals["total"] == 0:
            continue

        t = totals["total"]
        history.append({
            "date": date,
            "commit": sha[:7],
            "matched_pct": round(totals["matched"] / t * 100, 2),
            "decompiled_pct": round((totals["matched"] + totals["non_matching"]) / t * 100, 2),
            "matched": totals["matched"],
            "total": t,
        })

    history.reverse()
    return history


def main():
    args = parse_args()
    repo_root = os.path.abspath(args.repo_root)
    src_dir = Path(repo_root) / "src.us"

    if not src_dir.is_dir():
        print(f"ERROR: src.us not found at {src_dir}", file=sys.stderr)
        sys.exit(1)

    print("Scanning source files...", file=sys.stderr)
    c_files = sorted(src_dir.rglob("*.c"))
    contributors = get_contributors(repo_root, src_dir)

    files_data = []
    segment_totals = defaultdict(lambda: {"matched": 0, "non_matching": 0, "asm_stubs": 0, "total": 0})
    overall = {"matched": 0, "non_matching": 0, "asm_stubs": 0, "total": 0}
    contributor_stats = defaultdict(lambda: {"files": 0, "matched": 0, "non_matching": 0, "asm_stubs": 0})

    for f in c_files:
        rel = str(f.relative_to(Path(repo_root)))
        seg = file_to_segment(rel)
        counts = analyse_file(f)
        contrib = contributors.get(rel, {})
        name = contrib.get("name", "")

        total_f = counts["total"]
        files_data.append({
            "path": rel.replace("src.us/", ""),
            "segment": seg,
            "matched": counts["matched"],
            "non_matching": counts["non_matching"],
            "asm_stubs": counts["asm_stubs"],
            "total": total_f,
            "matched_pct": round(counts["matched"] / total_f * 100, 1) if total_f else 0,
            "contributor": name,
        })

        for key in ("matched", "non_matching", "asm_stubs", "total"):
            segment_totals[seg][key] += counts[key]
            overall[key] += counts[key]

        if name:
            contributor_stats[name]["files"] += 1
            for key in ("matched", "non_matching", "asm_stubs"):
                contributor_stats[name][key] += counts[key]

    # Segments
    segments_out = {}
    for seg in SEGMENT_ORDER:
        if seg not in segment_totals:
            continue
        t = segment_totals[seg]
        total = t["total"]
        segments_out[seg] = {
            "display_name": SEGMENT_DISPLAY.get(seg, seg),
            "matched": t["matched"],
            "non_matching": t["non_matching"],
            "asm_stubs": t["asm_stubs"],
            "total": total,
            "matched_pct": round(t["matched"] / total * 100, 1) if total else 0,
            "decompiled_pct": round((t["matched"] + t["non_matching"]) / total * 100, 1) if total else 0,
        }
    for seg, t in sorted(segment_totals.items()):
        if seg not in segments_out:
            total = t["total"]
            segments_out[seg] = {
                "display_name": seg,
                "matched": t["matched"],
                "non_matching": t["non_matching"],
                "asm_stubs": t["asm_stubs"],
                "total": total,
                "matched_pct": round(t["matched"] / total * 100, 1) if total else 0,
                "decompiled_pct": round((t["matched"] + t["non_matching"]) / total * 100, 1) if total else 0,
            }

    # Overall
    total = overall["total"]
    overall_out = {
        "total_functions": total,
        "matched": overall["matched"],
        "non_matching": overall["non_matching"],
        "asm_stubs": overall["asm_stubs"],
        "matched_pct": round(overall["matched"] / total * 100, 2) if total else 0,
        "decompiled_pct": round((overall["matched"] + overall["non_matching"]) / total * 100, 2) if total else 0,
    }

    # Contributors
    contributors_out = sorted(
        [{"name": n, "files": s["files"], "matched": s["matched"],
          "non_matching": s["non_matching"], "asm_stubs": s["asm_stubs"]}
         for n, s in contributor_stats.items()],
        key=lambda x: x["matched"], reverse=True
    )

    sha, ts = get_commit_info(repo_root)

    print("Building history graph (this may take a moment)...", file=sys.stderr)
    history = build_history(repo_root, src_dir, args.history_commits)

    output = {
        "generated": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        "commit": sha,
        "commit_timestamp": ts,
        "overall": overall_out,
        "segments": segments_out,
        "files": files_data,
        "contributors": contributors_out,
        "history": history,
    }

    out_path = Path(args.output)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(json.dumps(output, indent=2))
    print(f"Written to {out_path}", file=sys.stderr)
    print(
        f"Overall: {overall_out['matched']}/{total} matched "
        f"({overall_out['matched_pct']}%), {overall_out['decompiled_pct']}% decompiled",
        file=sys.stderr,
    )


if __name__ == "__main__":
    main()
