#!/usr/bin/env python3
"""
progress.py - Body Harvest decompilation progress tracker.

Walks the NTSC build's C sources (src.us/**/*.c, which includes the core that
the PAL build compiles too), counts matched / NON_MATCHING / GLOBAL_ASM functions
per file and segment, reads git log for history, and emits progress.json.

With --version eu it walks the PAL build instead (src.eu/**/*.c and the shared
src.us/core/**/*.c, keeping only the branches the EU build compiles) and emits
progress.eu.json. The default, --version us, is the NTSC count described above.

Usage:
  python3 tools/progress.py [--version {us,eu}] [--output path/to/progress.json] [--repo-root DIR]

Output: progress.json consumed by docs/index.html, progress.eu.json consumed by docs/eu.html
"""

import argparse
import json
import os
import re
import subprocess
import sys
from collections import defaultdict
from dataclasses import dataclass
from datetime import datetime, timedelta, timezone
from functools import lru_cache
from pathlib import Path

VENDOR_PYTHON_DIR = Path(__file__).resolve().parent / "third_party" / "python_vendor"
if VENDOR_PYTHON_DIR.is_dir():
    sys.path.insert(0, str(VENDOR_PYTHON_DIR))

try:
    from tree_sitter_languages import get_parser as ts_get_parser
    _TREE_SITTER_IMPORT_ERROR = None
except ImportError as exc:
    ts_get_parser = None
    _TREE_SITTER_IMPORT_ERROR = exc


def parse_args():
    p = argparse.ArgumentParser(description="Generate Body Harvest decomp progress data.")
    p.add_argument(
        "--version",
        choices=("us", "eu"),
        default="us",
        help="Which build to count: us (NTSC, the default) or eu (PAL)",
    )
    p.add_argument(
        "--output",
        default=None,
        help="Output JSON path (default: docs/progress.json, or docs/progress.eu.json with --version eu)",
    )
    p.add_argument("--repo-root", default=".", help="Repository root directory")
    p.add_argument(
        "--verify-with-asm",
        action="store_true",
        help="Compare counted totals with asm/matchings + asm/nonmatchings .s totals per file (NTSC only)",
    )
    args = p.parse_args()
    if args.version == "eu" and args.verify_with_asm:
        p.error("--verify-with-asm checks the NTSC asm tree and cannot be combined with --version eu")
    if args.output is None:
        args.output = "docs/progress.eu.json" if args.version == "eu" else "docs/progress.json"
    return args


# Regex patterns
RE_PRAGMA_GLOBAL_ASM_LINE = re.compile(r'^\s*#pragma\s+GLOBAL_ASM\s*\(')
RE_ENDIF_LINE = re.compile(r'^\s*#\s*endif\b')
RE_PP_IF = re.compile(r'^\s*#\s*(if|ifdef|ifndef)\b(.*)$')
RE_PP_ELIF = re.compile(r'^\s*#\s*elif\b(.*)$')
RE_PP_ELSE = re.compile(r'^\s*#\s*else\b')
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

# C source roots of the NTSC build. src.us/core holds the files both versions compile; src.eu is
# not counted here. It holds the PAL build's own gameplay-overlay and libultra files, which are
# GLOBAL_ASM stubs (those overlays are not shared with NTSC yet); --version eu counts them.
SOURCE_ROOTS = ("src.us",)
# C source roots of the PAL build, and the version macro its preprocessor defines.
EU_SOURCE_ROOTS = ("src.eu", "src.us/core")
EU_DEFINES = frozenset({"VERSION_EU"})
# The conditions the PAL count evaluates. NON_MATCHING is never defined by a normal build.
VERSION_MACROS = frozenset({"VERSION_US", "VERSION_EU", "NON_MATCHING"})
RE_DEFINED_COND = re.compile(r'(!?)\s*defined\s*(?:\(\s*(\w+)\s*\)|\s(\w+))')
RE_PP_COMMENT = re.compile(r'/\*.*?\*/|//.*$')

# Shown by the EU page. The overlay figures were measured on 2026-10-12 with a scratch script (not committed):
# every NTSC overlay function was compared with its EU counterpart, word by word in the two ROMs. 2216 of the 2354
# functions in the eight overlays (108 byte-identical, 2108 differing only in jump targets and in address loads, a
# lui and the instruction using its low half, with every address in RAM) pass that strict relocation test. Another
# 130 have the same opcode and registers in every word but failed it (an immediate differed with no lui to resolve
# it, or a low half did not resolve to a RAM address); the 16-bit differences of those immediates also occur among the
# verified relocations, so they are probably relocations too, which was not verified. 2346 is the two groups together.
# The split between the two groups depends on the rule used to resolve immediates: a later measurement with two other
# rules divided the 2348 functions with the same opcode and registers in every word as 2333 and 15, and as 2188 and 160
# (docs/eu-port-notes.md), so the 94.14 percent is the result of one rule.
EU_NOTE = (
    "This page counts the PAL (EU) build. Counted: the core, which is the same C as on the US page "
    "(src.us/core), and the stubs under src.eu for the three gameplay overlays, the five level overlays and the one "
    "libultra file there (sl.c). Not counted: the rest of libultra has no tracked EU source, so it cannot be counted "
    "from the repository.\n"
    "The core figures are the same functions as on the US page, so the two pages must not be summed. "
    "Matching a function in a shared core file counts for both versions.\n"
    "The EU overlays are not shared with NTSC yet, so their functions are still assembly stubs here, apart from "
    "empty ones. Measured on 2026-10-12, by comparing the ROM words of every NTSC overlay function with its EU "
    "counterpart: of the 2354 functions in the eight overlays, gameplay and level, 2216 (94.14 percent) are identical "
    "to NTSC apart from relocations, checked by masking jump targets and the halves of address loads. Another 130 "
    "failed that check, but their differing immediates match relocation differences seen elsewhere, so they are "
    "probably relocations too; counting them, 2346 (99.66 percent) are identical or probably identical to NTSC "
    "apart from relocations. The split between those two groups depends on the rule used to resolve immediates: two "
    "other rules divided the 2348 functions with the same opcode and registers in every word as 2333 and 15, and as "
    "2188 and 160, so read 94.14 percent as the result of one rule, not as a fixed property of the ROMs. "
    "Sharing the overlays would lift these figures a great deal."
)


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
    """Count the GLOBAL_ASM pragmas the NTSC build compiles in place of a C body.

    A pragma in the #else/#elif chain of an `#ifdef NON_MATCHING` group is that C body's fallback,
    which RE_NON_MATCHING already counts. A pragma in a `defined(VERSION_EU)` branch is the PAL
    build's copy of a function shared from src.us/core, which NTSC does not compile.
    """
    count = 0
    groups = []  # one [first condition, current branch condition] per open #if group
    for line in text.splitlines():
        opened = RE_PP_IF.match(line)
        elif_branch = RE_PP_ELIF.match(line)
        if opened:
            kind, cond = opened.group(1), opened.group(2).strip()
            first = cond if kind == "ifdef" else f"{kind} {cond}"
            groups.append([first, first])
        elif elif_branch:
            if groups:
                groups[-1][1] = elif_branch.group(1).strip()
        elif RE_PP_ELSE.match(line):
            if groups:
                groups[-1][1] = "else"
        elif RE_ENDIF_LINE.match(line):
            if groups:
                groups.pop()
        elif RE_PRAGMA_GLOBAL_ASM_LINE.match(line):
            if any(first == "NON_MATCHING" and branch != first for first, branch in groups):
                continue
            if any("VERSION_EU" in branch for _, branch in groups):
                continue
            count += 1
    return count


def count_function_defs(text: str) -> int:
    parser = get_c_parser()
    tree = parser.parse(text.encode("utf-8", errors="replace"))

    count = 0
    stack = [tree.root_node]
    while stack:
        node = stack.pop()
        if node.type == "function_definition":
            count += 1
        stack.extend(reversed(node.named_children))

    return count


@lru_cache(maxsize=1)
def get_c_parser():
    if ts_get_parser is None:
        raise RuntimeError(
            "tree-sitter parser dependency missing. Ensure vendored packages exist under tools/third_party/python_vendor."
        ) from _TREE_SITTER_IMPORT_ERROR
    return ts_get_parser("c")


def file_to_segment(sub_path: str) -> str:
    """Segment of a path relative to its source root, e.g. core or overlay_gameplay/frontend."""
    parts = Path(sub_path).parts
    if len(parts) >= 3:
        return f"{parts[0]}/{parts[1]}"
    elif len(parts) >= 2:
        return parts[0]
    return "unknown"


def tree_prefix(repo_root: Path, src_dir: Path) -> Path:
    """Where a source root sits inside its version tree: src.us/core -> core, src.eu and src.us -> nothing."""
    return Path(*src_dir.relative_to(repo_root).parts[1:])


def count_asm_functions_for_source(repo_root: Path, src_dir: Path, source_file: Path) -> int:
    rel_no_ext = (tree_prefix(repo_root, src_dir) / source_file.relative_to(src_dir)).with_suffix("")
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


def get_contributors(cwd: str, src_dirs: list) -> dict:
    contributors = {}
    for f in (c for d in src_dirs for c in d.rglob("*.c")):
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


@dataclass
class _Branch:
    """One open #if group while scanning a file for the PAL count."""

    parent_live: bool  # the text around the group is compiled
    version: bool  # the group tests VERSION_US, VERSION_EU or NON_MATCHING; any other group is left alone
    taken: bool  # a branch of a version group has been chosen already
    live: bool  # the current branch is compiled
    non_matching: bool  # the group was opened by `#ifdef NON_MATCHING`
    fallback: bool  # the current branch is an #elif or #else


def version_condition(kind: str, cond: str, defines: frozenset) -> bool | None:
    """Value of a condition on VERSION_US, VERSION_EU or NON_MATCHING, or None for any other condition.

    kind is the directive (if, ifdef, ifndef) and cond the text after it. Understood: `ifdef NAME`,
    `ifndef NAME` and `if [!]defined(NAME)`, with a trailing comment allowed. A macro is defined if it is in `defines`.
    """
    cond = RE_PP_COMMENT.sub("", cond).strip()
    if kind in ("ifdef", "ifndef"):
        words = cond.split()
        if len(words) != 1:
            return None
        name, negate = words[0], kind == "ifndef"
    else:
        m = RE_DEFINED_COND.fullmatch(cond)
        if not m:
            return None
        name, negate = m.group(2) or m.group(3), bool(m.group(1))
    if name not in VERSION_MACROS:
        return None
    return (name in defines) != negate


def scan_active_branches(text: str, defines: frozenset) -> tuple:
    """Read `text` as a build defining `defines` does: (compiled text, NON_MATCHING groups, GLOBAL_ASM stubs).

    The compiled text keeps the line numbers: a line in a branch the build does not compile, and every directive
    of a version group, is blanked. Only #if groups on VERSION_US, VERSION_EU and NON_MATCHING are evaluated;
    NON_MATCHING is off, and any other #if group is left as written. A GLOBAL_ASM pragma in the #elif/#else chain of
    an `#ifdef NON_MATCHING` group is that group's fallback, which the group count already holds, so it is no stub.
    """
    out, groups = [], []
    non_matching = asm_stubs = 0
    for line in text.splitlines():
        outer_live = groups[-1].live if groups else True
        opened, elif_branch = RE_PP_IF.match(line), RE_PP_ELIF.match(line)
        if opened:
            want = version_condition(opened.group(1), opened.group(2), defines)
            group = _Branch(outer_live, want is not None, bool(want), outer_live and want is not False,
                            bool(RE_NON_MATCHING.search(line)), False)
            non_matching += int(group.non_matching and outer_live)
            groups.append(group)
        elif elif_branch and groups:
            group = groups[-1]
            if group.version:
                want = version_condition("if", elif_branch.group(1), defines)
                group.live = group.parent_live and not group.taken and want is not False
                group.taken = group.taken or want is not False
            else:
                group.live = group.parent_live
            group.fallback = True
        elif RE_PP_ELSE.match(line) and groups:
            group = groups[-1]
            group.live = group.parent_live and not (group.version and group.taken)
            group.taken = True
            group.fallback = True
        elif RE_ENDIF_LINE.match(line) and groups:
            group = groups.pop()
        else:
            live = groups[-1].live if groups else True
            out.append(line if live else "")
            in_fallback = any(g.non_matching and g.fallback for g in groups)
            if live and not in_fallback and RE_PRAGMA_GLOBAL_ASM_LINE.match(line):
                asm_stubs += 1
            continue
        # A directive line: blanked if it belongs to a version group, else kept where its own group is compiled.
        out.append(line if not group.version and group.parent_live else "")
    return "\n".join(out), non_matching, asm_stubs


def analyse_text_eu(text: str) -> dict:
    """Function counts of one source file as the PAL build compiles it.

    matched: C definitions that survive the version conditions. non_matching: `#ifdef NON_MATCHING` groups, whose
    GLOBAL_ASM fallback is what the build compiles. asm_stubs: the other GLOBAL_ASM functions.
    """
    live, non_matching, asm_stubs = scan_active_branches(text, EU_DEFINES)
    matched = count_function_defs(live)
    return {"matched": matched, "non_matching": non_matching, "asm_stubs": asm_stubs,
            "total": matched + non_matching + asm_stubs}


def analyse_file_eu(path: Path) -> dict:
    """analyse_text_eu of a file; an unreadable file counts as empty, as in analyse_file."""
    try:
        return analyse_text_eu(path.read_text(encoding="utf-8", errors="replace"))
    except OSError:
        return {"matched": 0, "non_matching": 0, "asm_stubs": 0, "total": 0}


def build_history_item(date_str: str, commit_sha: str, totals: dict) -> dict:
    return {
        "date": date_str,
        "commit": commit_sha[:7],
        "matched": totals["matched"],
        "non_matching": totals["non_matching"],
        "total": totals["total"],
    }


def get_totals_at_commit(cwd: str, src_rels: list, commit_sha: str, totals_cache: dict,
                         analyse=analyse_blob) -> dict | None:
    if commit_sha in totals_cache:
        return totals_cache[commit_sha]

    tree_out = git_run(["ls-tree", "-r", "--name-only", commit_sha, *src_rels], cwd)
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
        counts = analyse(blob)
        for key in totals:
            totals[key] += counts[key]

    if totals["total"] == 0:
        totals_cache[commit_sha] = None
        return None

    totals_cache[commit_sha] = totals
    return totals


def get_weekly_commits(cwd: str, src_rels: list, start_date) -> dict:
    """Newest commit under src_rels in each week since start_date, keyed by the date the week starts."""
    log_out = git_run(
        [
            "log",
            "--format=%H|%ad",
            "--date=short",
            f"--since={start_date.isoformat()}",
            "--",
            *src_rels,
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
    return weekly_commits


def build_history(cwd: str, src_dirs: list) -> list:
    src_rels = [d.relative_to(Path(cwd)).as_posix() for d in src_dirs]
    start_date = datetime.strptime("2026-02-01", "%Y-%m-%d").date()
    today = datetime.now(timezone.utc).date()

    if start_date > today:
        return []

    weekly_commits = get_weekly_commits(cwd, src_rels, start_date)

    totals_cache: dict = {}
    previous_item = None

    baseline_sha = git_run(
        ["log", "-1", "--format=%H", "--before=2026-02-01T00:00:00", "--", *src_rels],
        cwd,
    )
    if baseline_sha:
        baseline_totals = get_totals_at_commit(cwd, src_rels, baseline_sha, totals_cache)
        if baseline_totals:
            previous_item = build_history_item(start_date.strftime("%Y-%m-%d"), baseline_sha, baseline_totals)

    history = []
    week_start = start_date
    while week_start <= today:
        date_str = week_start.strftime("%Y-%m-%d")
        week_sha = weekly_commits.get(week_start)

        if week_sha:
            week_totals = get_totals_at_commit(cwd, src_rels, week_sha, totals_cache)
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


def build_history_eu(cwd: str, src_dirs: list) -> list:
    """Weekly PAL series, as build_history makes the NTSC one, but only from the point where core was shared.

    The series starts at the first week whose commit has a bh.eu.yaml that names the shared core (../src.us/core):
    before that the PAL sources were per-version trees, which this count does not read. Fewer than two points make
    no history.
    """
    src_rels = [d.relative_to(Path(cwd)).as_posix() for d in src_dirs]
    start_date = datetime.strptime("2026-02-01", "%Y-%m-%d").date()
    today = datetime.now(timezone.utc).date()
    weekly_commits = get_weekly_commits(cwd, src_rels, start_date)

    def shares_core(sha: str) -> bool:
        return "../src.us/core/" in git_run(["show", f"{sha}:bh.eu.yaml"], cwd)

    first_week = next((week for week, sha in sorted(weekly_commits.items()) if shares_core(sha)), None)
    if first_week is None:
        return []

    totals_cache: dict = {}
    history = []
    previous_item = None
    week_start = first_week
    while week_start <= today:
        date_str = week_start.strftime("%Y-%m-%d")
        week_sha = weekly_commits.get(week_start)
        week_totals = get_totals_at_commit(cwd, src_rels, week_sha, totals_cache, analyse_text_eu) if week_sha else None
        if week_totals:
            previous_item = build_history_item(date_str, week_sha, week_totals)
            history.append(previous_item)
        elif previous_item:
            history.append({**previous_item, "date": date_str})
        week_start += timedelta(days=7)

    return history if len(history) >= 2 else []


def main():
    args = parse_args()
    repo_root = os.path.abspath(args.repo_root)
    eu_mode = args.version == "eu"
    roots = EU_SOURCE_ROOTS if eu_mode else SOURCE_ROOTS
    src_dirs = [Path(repo_root) / r for r in roots]
    verify_mode = args.verify_with_asm

    if not src_dirs[0].is_dir():
        print(f"ERROR: {roots[0]} not found at {src_dirs[0]}", file=sys.stderr)
        sys.exit(1)
    src_dirs = [d for d in src_dirs if d.is_dir()]

    print("Scanning source files...", file=sys.stderr)
    prefixes = {d: tree_prefix(Path(repo_root), d) for d in src_dirs}
    c_files = sorted(((d, f) for d in src_dirs for f in d.rglob("*.c")),
                     key=lambda pair: (prefixes[pair[0]] / pair[1].relative_to(pair[0])).as_posix())
    # The PAL view has no per-contributor figures: its core is the shared NTSC work, not the PAL port's.
    contributors = {} if verify_mode or eu_mode else get_contributors(repo_root, src_dirs)

    files_data = []
    asm_mismatches = []
    segment_totals = defaultdict(lambda: {"matched": 0, "non_matching": 0, "asm_stubs": 0, "total": 0})
    overall = {"matched": 0, "non_matching": 0, "asm_stubs": 0, "total": 0}
    contributor_stats = defaultdict(lambda: {"files": 0, "matched": 0, "non_matching": 0, "asm_stubs": 0})

    for src_dir, f in c_files:
        rel = str(f.relative_to(Path(repo_root)))
        sub_path = (prefixes[src_dir] / f.relative_to(src_dir)).as_posix()
        seg = file_to_segment(sub_path)
        counts = analyse_file_eu(f) if eu_mode else analyse_file(f)
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
            "path": sub_path,
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
        history = build_history_eu(repo_root, src_dirs) if eu_mode else build_history(repo_root, src_dirs)
    else:
        print("Verify mode: skipping git history and contributor scan for speed.", file=sys.stderr)

    output = {
        "generated": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        "commit": sha,
        "commit_timestamp": ts,
    }
    if eu_mode:
        output["version"] = "eu"
        output["note"] = EU_NOTE
    output.update({
        "overall": overall_out,
        "segments": segments_out,
        "files": files_data,
        "contributors": contributors_out,
        "history": history,
    })

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
        f"Overall{' (EU)' if eu_mode else ''}: {overall_out['matched']}/{total} matched "
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
