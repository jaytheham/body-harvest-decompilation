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
from datetime import datetime, timedelta, timezone
from pathlib import Path


def parse_args():
    p = argparse.ArgumentParser(description="Generate Body Harvest decomp progress data.")
    p.add_argument("--output", default="docs/progress.json", help="Output JSON path")
    p.add_argument("--repo-root", default=".", help="Repository root directory")
    p.add_argument(
        "--verify-with-asm",
        action="store_true",
        help="Compare counted totals with asm/matchings + asm/nonmatchings .s totals per file",
    )
    return p.parse_args()


# Regex patterns
RE_PRAGMA_GLOBAL_ASM_LINE = re.compile(r'^\s*#pragma\s+GLOBAL_ASM\s*\(')
RE_ENDIF_LINE = re.compile(r'^\s*#endif\b')
RE_NON_MATCHING = re.compile(r'#ifdef\s+NON_MATCHING')

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
    asm_stubs = count_global_asm_stubs(text)
    non_matching = len(RE_NON_MATCHING.findall(text))
    total_defs = count_function_defs(text)
    matched = max(0, total_defs - non_matching)
    total = matched + non_matching + asm_stubs
    return {"matched": matched, "non_matching": non_matching, "asm_stubs": asm_stubs, "total": total}


def count_global_asm_stubs(text: str) -> int:
    lines = text.splitlines()
    count = 0
    for i, line in enumerate(lines):
        if not RE_PRAGMA_GLOBAL_ASM_LINE.match(line):
            continue
        next_line = lines[i + 1].strip() if i + 1 < len(lines) else ""
        if RE_ENDIF_LINE.match(next_line):
            continue
        count += 1
    return count


def count_function_defs(text: str) -> int:
    def strip_comments_and_literals(src: str) -> str:
        out = []
        i = 0
        n = len(src)
        while i < n:
            c = src[i]
            c2 = src[i + 1] if i + 1 < n else ""

            if c == "/" and c2 == "/":
                i += 2
                while i < n and src[i] != "\n":
                    i += 1
                continue

            if c == "/" and c2 == "*":
                i += 2
                while i < n:
                    if src[i] == "\n":
                        out.append("\n")
                    if i + 1 < n and src[i] == "*" and src[i + 1] == "/":
                        i += 2
                        break
                    i += 1
                continue

            if c == '"' or c == "'":
                quote = c
                out.append(" ")
                i += 1
                while i < n:
                    if src[i] == "\\":
                        i += 2
                        continue
                    if src[i] == quote:
                        i += 1
                        break
                    if src[i] == "\n":
                        out.append("\n")
                    i += 1
                continue

            out.append(c)
            i += 1

        return "".join(out)

    def is_function_decl(decl: str) -> bool:
        norm = " ".join(decl.split())
        if not norm or "=" in norm:
            return False

        lparen = norm.find("(")
        rparen = norm.rfind(")")
        if lparen < 0 or rparen < 0 or rparen < lparen:
            return False

        prefix = norm[:lparen].strip()
        if not prefix:
            return False

        lower_prefix = prefix.lower()
        if lower_prefix.startswith(("if ", "for ", "while ", "switch ", "return ", "else ", "do ", "typedef ")):
            return False

        i = len(prefix) - 1
        while i >= 0 and (prefix[i].isalnum() or prefix[i] == "_"):
            i -= 1
        name = prefix[i + 1:]
        if not name or not (name[0].isalpha() or name[0] == "_"):
            return False

        before_name = prefix[:i + 1].strip()
        if not before_name:
            return False

        return True

    cleaned = strip_comments_and_literals(text)
    count = 0
    brace_depth = 0
    paren_depth = 0
    decl_parts = []

    for line in cleaned.splitlines():
        if brace_depth == 0 and line.lstrip().startswith("#"):
            continue

        for ch in line:
            if brace_depth == 0:
                if ch == "(":
                    paren_depth += 1
                    decl_parts.append(ch)
                    continue

                if ch == ")":
                    paren_depth = max(0, paren_depth - 1)
                    decl_parts.append(ch)
                    continue

                if ch == ";" and paren_depth == 0:
                    decl_parts.clear()
                    continue

                if ch == "{" and paren_depth == 0:
                    if is_function_decl("".join(decl_parts)):
                        count += 1
                    decl_parts.clear()
                    brace_depth = 1
                    continue

                if ch == "}":
                    decl_parts.clear()
                    continue

                decl_parts.append(ch)
            else:
                if ch == "{":
                    brace_depth += 1
                elif ch == "}":
                    brace_depth = max(0, brace_depth - 1)

        if brace_depth == 0 and decl_parts:
            decl_parts.append(" ")

    return count


def file_to_segment(rel_path: str) -> str:
    parts = Path(rel_path).parts
    if len(parts) >= 4:
        return f"{parts[1]}/{parts[2]}"
    elif len(parts) >= 3:
        return parts[1]
    return "unknown"


def count_asm_functions_for_source(repo_root: Path, src_dir: Path, source_file: Path) -> int:
    rel_no_ext = source_file.relative_to(src_dir).with_suffix("")
    asm_dirs = [
        repo_root / "asm" / "matchings" / rel_no_ext,
        repo_root / "asm" / "nonmatchings" / rel_no_ext,
    ]
    total = 0
    for d in asm_dirs:
        if d.is_dir():
            total += sum(1 for _ in d.rglob("*.s"))
    return total


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
    asm_stubs = count_global_asm_stubs(blob)
    non_matching = len(RE_NON_MATCHING.findall(blob))
    total_defs = count_function_defs(blob)
    matched = max(0, total_defs - non_matching)
    total = matched + non_matching + asm_stubs
    return {"matched": matched, "non_matching": non_matching, "asm_stubs": asm_stubs, "total": total}


def build_history_item(date_str: str, commit_sha: str, totals: dict) -> dict:
    return {
        "date": date_str,
        "commit": commit_sha[:7],
        "matched": totals["matched"],
        "non_matching": totals["non_matching"],
        "total": totals["total"],
    }


def get_totals_at_commit(cwd: str, src_rel: str, commit_sha: str, totals_cache: dict) -> dict | None:
    if commit_sha in totals_cache:
        return totals_cache[commit_sha]

    tree_out = git_run(["ls-tree", "-r", "--name-only", commit_sha, src_rel], cwd)
    if not tree_out:
        totals_cache[commit_sha] = None
        return None

    totals = {"matched": 0, "non_matching": 0, "asm_stubs": 0, "total": 0}
    for rel_path in tree_out.splitlines():
        if not rel_path.endswith(".c"):
            continue
        blob = git_run(["show", f"{commit_sha}:{rel_path}"], cwd)
        if not blob:
            continue
        counts = analyse_blob(blob)
        for key in totals:
            totals[key] += counts[key]

    if totals["total"] == 0:
        totals_cache[commit_sha] = None
        return None

    totals_cache[commit_sha] = totals
    return totals


def build_history(cwd: str, src_dir: Path) -> list:
    src_rel = str(src_dir.relative_to(Path(cwd)))
    start_date = datetime.strptime("2026-02-01", "%Y-%m-%d").date()
    today = datetime.now(timezone.utc).date()

    if start_date > today:
        return []

    log_out = git_run(
        [
            "log",
            "--format=%H|%ad",
            "--date=short",
            "--since=2026-02-01",
            "--",
            src_rel,
        ],
        cwd
    )

    weekly_commits: dict = {}
    if log_out:
        for line in log_out.splitlines():
            if "|" not in line:
                continue
            sha, date_str = line.split("|", 1)
            sha, date_str = sha.strip(), date_str.strip()
            try:
                commit_date = datetime.strptime(date_str, "%Y-%m-%d").date()
            except ValueError:
                continue
            if commit_date < start_date:
                continue
            week_index = (commit_date - start_date).days // 7
            week_start = start_date + timedelta(days=week_index * 7)
            if week_start not in weekly_commits:
                weekly_commits[week_start] = sha

    totals_cache: dict = {}
    previous_item = None

    baseline_sha = git_run(
        ["log", "-1", "--format=%H", "--before=2026-02-01T00:00:00", "--", src_rel],
        cwd,
    )
    if baseline_sha:
        baseline_totals = get_totals_at_commit(cwd, src_rel, baseline_sha, totals_cache)
        if baseline_totals:
            previous_item = build_history_item(start_date.strftime("%Y-%m-%d"), baseline_sha, baseline_totals)

    history = []
    week_start = start_date
    while week_start <= today:
        date_str = week_start.strftime("%Y-%m-%d")
        week_sha = weekly_commits.get(week_start)

        if week_sha:
            week_totals = get_totals_at_commit(cwd, src_rel, week_sha, totals_cache)
            if week_totals:
                previous_item = build_history_item(date_str, week_sha, week_totals)
                history.append(previous_item)
            elif previous_item:
                carried = dict(previous_item)
                carried["date"] = date_str
                history.append(carried)
        elif previous_item:
            carried = dict(previous_item)
            carried["date"] = date_str
            history.append(carried)

        week_start += timedelta(days=7)

    return history


def main():
    args = parse_args()
    repo_root = os.path.abspath(args.repo_root)
    src_dir = Path(repo_root) / "src.us"
    verify_mode = args.verify_with_asm

    if not src_dir.is_dir():
        print(f"ERROR: src.us not found at {src_dir}", file=sys.stderr)
        sys.exit(1)

    print("Scanning source files...", file=sys.stderr)
    c_files = sorted(src_dir.rglob("*.c"))
    contributors = {} if verify_mode else get_contributors(repo_root, src_dir)

    files_data = []
    asm_mismatches = []
    segment_totals = defaultdict(lambda: {"matched": 0, "non_matching": 0, "asm_stubs": 0, "total": 0})
    overall = {"matched": 0, "non_matching": 0, "asm_stubs": 0, "total": 0}
    contributor_stats = defaultdict(lambda: {"files": 0, "matched": 0, "non_matching": 0, "asm_stubs": 0})

    for f in c_files:
        rel = str(f.relative_to(Path(repo_root)))
        seg = file_to_segment(rel)
        counts = analyse_file(f)
        if args.verify_with_asm:
            asm_total = count_asm_functions_for_source(Path(repo_root), src_dir, f)
            if asm_total != counts["total"]:
                asm_mismatches.append({
                    "path": rel.replace("\\", "/"),
                    "counted_total": counts["total"],
                    "asm_total": asm_total,
                    "matched": counts["matched"],
                    "non_matching": counts["non_matching"],
                    "asm_stubs": counts["asm_stubs"],
                })
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
    contributors_out = []
    if not verify_mode:
        contributors_out = sorted(
            [{"name": n, "files": s["files"], "matched": s["matched"],
              "non_matching": s["non_matching"], "asm_stubs": s["asm_stubs"]}
             for n, s in contributor_stats.items()],
            key=lambda x: x["matched"], reverse=True
        )

    sha, ts = get_commit_info(repo_root)

    history = []
    if not verify_mode:
        print("Building history graph (this may take a moment)...", file=sys.stderr)
        history = build_history(repo_root, src_dir)
    else:
        print("Verify mode: skipping git history and contributor scan for speed.", file=sys.stderr)

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

    if args.verify_with_asm:
        output["asm_verification"] = {
            "checked_files": len(c_files),
            "mismatches": asm_mismatches,
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
    if args.verify_with_asm:
        print(
            f"ASM verification: {len(c_files) - len(asm_mismatches)}/{len(c_files)} files match",
            file=sys.stderr,
        )
        if asm_mismatches:
            print("Top mismatches:", file=sys.stderr)
            for m in asm_mismatches[:20]:
                print(
                    f"  {m['path']}: counted={m['counted_total']} asm={m['asm_total']} "
                    f"(matched={m['matched']}, non_matching={m['non_matching']}, asm_stubs={m['asm_stubs']})",
                    file=sys.stderr,
                )


if __name__ == "__main__":
    main()
