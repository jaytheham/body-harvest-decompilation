#!/usr/bin/env python3
"""Documentation consistency gate for the PR 423 remediation (stdlib only, Python 3.10+).

Checks a git checkout of the decomp against the merge base of --base and HEAD:

  E2  drive-letter or home-directory path on a line added since the merge base
  E3  a documentation file cites a repository path that is missing now and either existed at the
      merge base (this branch moved or deleted it) or sits on a line this branch added
  W2  a path:line citation whose line number is past the end of the cited file
  W3  a missing cited path that was already missing at the merge base (pre-existing upstream rot)

Exit status: 0 with no errors, 1 with any error, 2 on a git failure.

Usage:
  python check_docs.py --repo <checkout> [--base origin/master]
"""

from __future__ import annotations

import argparse
import re
import subprocess
import sys
from dataclasses import dataclass
from pathlib import Path

# A drive letter not preceded by a word character (so "https://" and the regex "name:\s" do not
# match), then one slash or backslash, then a path character.
DRIVE_PATH = re.compile(r"(?<![\w])[A-Za-z]:[\\/](?![\\/])[\w.$~-]")
HOME_PATH = re.compile(r"(?:/home/|/Users/|\\Users\\)[\w.-]+")

# Repository-relative paths worth checking. Generated trees (asm, asm.eu, assets, build, build.eu)
# are not listed: they never exist in a clean checkout.
CITED_PATH = re.compile(
    r"(?<![\w./-])((?:\.\./)?(?:src\.us|src\.eu|include|tools|docs|ExampleFixes|\.github)"
    r"/[A-Za-z0-9_./-]*[A-Za-z0-9_])(?::(\d+)(?:-(\d+))?)?"
)
GENERATED_PREFIXES = ("tools/windows", "tools/third_party/python_vendor/")

DOC_GLOBS = ("AGENTS.md", "README.md", "DecompHints.md", "docs/*.md", "docs/*.txt",
             "ExampleFixes/*.md", ".github/agents/*.md")


@dataclass(frozen=True)
class Finding:
    """One check result, printed as `CODE path:line: message`."""

    code: str
    path: str
    line: int
    message: str

    def render(self) -> str:
        """Return the one-line report form."""
        return f"{self.code} {self.path}:{self.line}: {self.message}"


def git(repo: Path, *args: str) -> str:
    """Run git in repo and return stdout; exit 2 with git's stderr on failure."""
    result = subprocess.run(["git", "-C", str(repo), *args], capture_output=True, text=True,
                            encoding="utf-8", errors="replace")
    if result.returncode != 0:
        print(f"git {' '.join(args)} failed: {result.stderr.strip()}", file=sys.stderr)
        sys.exit(2)
    return result.stdout


def added_lines(repo: Path, base_commit: str) -> list[tuple[str, int, str]]:
    """(path, new line number, text) for every line added since base_commit, working tree included."""
    diff = git(repo, "diff", "-U0", "--no-color", "--no-ext-diff", base_commit)
    hunk = re.compile(r"^@@ -\d+(?:,\d+)? \+(\d+)(?:,\d+)? @@")
    out: list[tuple[str, int, str]] = []
    path = ""
    new_line = 0
    for raw in diff.splitlines():
        if raw.startswith("+++ "):
            path = raw[6:] if raw.startswith("+++ b/") else ""
            continue
        match = hunk.match(raw)
        if match:
            new_line = int(match.group(1))
            continue
        if raw.startswith("+") and path:
            out.append((path, new_line, raw[1:]))
            new_line += 1
    return out


def tree_paths(repo: Path, commit: str) -> set[str]:
    """Every file path at commit plus every directory that contains one."""
    paths: set[str] = set()
    for name in git(repo, "ls-tree", "-r", "--name-only", commit).splitlines():
        parts = name.split("/")
        paths.update("/".join(parts[:i]) for i in range(1, len(parts) + 1))
    return paths


def doc_files(repo: Path, globs: tuple[str, ...]) -> list[Path]:
    """Documentation files matching globs, sorted."""
    found: set[Path] = set()
    for pattern in globs:
        found.update(p for p in repo.glob(pattern) if p.is_file())
    return sorted(found)


def normalise(cited: str) -> str:
    """Repository-relative spelling of a citation: no leading ../ and no trailing dot."""
    return (cited[3:] if cited.startswith("../") else cited).rstrip(".")


def exists_now(repo: Path, rel: str) -> bool:
    """True when rel exists in the working tree, accepting a yaml-style name without .c."""
    candidate = repo / rel
    return candidate.exists() or (candidate.suffix == "" and candidate.with_suffix(".c").exists())


def existed_at(base_paths: set[str], rel: str) -> bool:
    """True when rel (or rel.c) existed at the merge base."""
    return rel in base_paths or f"{rel}.c" in base_paths


def check_added(lines: list[tuple[str, int, str]]) -> list[Finding]:
    """E2 over added lines."""
    findings: list[Finding] = []
    for path, number, text in lines:
        snippet = text.strip()[:100]
        for regex in (DRIVE_PATH, HOME_PATH):
            hit = regex.search(text)
            if hit:
                findings.append(Finding("E2", path, number, f"machine path {hit.group(0)!r}: {snippet}"))
    return findings


def check_citations(repo: Path, base_paths: set[str], added: set[tuple[str, int]]) -> list[Finding]:
    """E3, W2 and W3 over every documentation file."""
    findings: list[Finding] = []
    for doc in doc_files(repo, DOC_GLOBS):
        rel_doc = doc.relative_to(repo).as_posix()
        for number, line in enumerate(doc.read_text(encoding="utf-8", errors="replace").splitlines(), 1):
            for match in CITED_PATH.finditer(line):
                rel, first = normalise(match.group(1)), match.group(2)
                if rel.startswith(GENERATED_PREFIXES):
                    continue
                if not exists_now(repo, rel):
                    rotted_here = existed_at(base_paths, rel) or (rel_doc, number) in added
                    code = "E3" if rotted_here else "W3"
                    findings.append(Finding(code, rel_doc, number, f"cites missing path {match.group(1)}"))
                    continue
                target = repo / rel
                if first and target.is_file():
                    length = len(target.read_text(encoding="utf-8", errors="replace").splitlines())
                    if int(first) > length:
                        findings.append(Finding("W2", rel_doc, number,
                                                f"{rel}:{first} is past the end ({length} lines)"))
    return findings


def main() -> int:
    """Run every check, print one line per finding and a summary, return the exit status."""
    parser = argparse.ArgumentParser(description="Documentation consistency gate (PR 423 remediation).")
    parser.add_argument("--repo", type=Path, required=True, help="decomp checkout to check")
    parser.add_argument("--base", default="origin/master", help="base ref; its merge base with HEAD is used")
    args = parser.parse_args()
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
    repo = args.repo.resolve()

    base_commit = git(repo, "merge-base", args.base, "HEAD").strip()
    lines = added_lines(repo, base_commit)
    findings = check_added(lines)
    findings += check_citations(repo, tree_paths(repo, base_commit), {(p, n) for p, n, _ in lines})

    for finding in sorted(findings, key=lambda f: (f.code, f.path, f.line)):
        print(finding.render())
    errors = sum(1 for f in findings if f.code.startswith("E"))
    print(f"check_docs: {errors} error(s), {len(findings) - errors} warning(s)")
    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
