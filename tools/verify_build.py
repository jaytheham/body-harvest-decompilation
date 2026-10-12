"""Verify both ROMs build byte-exact, from a clean state.

    python tools/verify_build.py            # check the current builds
    python tools/verify_build.py --rebuild  # clean and rebuild both, then check

Why this exists: `tools/native_build.py build --version eu` already checks the
SHA1 of the version it just built, so a single-version check is covered. What is
not covered is building one version after the other. The EU YAML derives
`bh.ld` and `undefined_syms_auto.txt` from a shared `basename`, so before they
were split per version, extracting EU silently overwrote the US link inputs and
the next US build failed or drifted. A clean rebuild of both, in sequence, is
the check that catches that class of regression.

The rebuild order matters and is deliberate: EU is built after US because EU is
the one whose extract writes the shared files.
"""
import argparse
import hashlib
import pathlib
import subprocess
import sys

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
import decomp_common as dc

ROOT = dc.ROOT
BUILDERS = {"us": ROOT / "build/bh.us.z64", "eu": ROOT / "build.eu/bh.eu.z64"}


def baserom(version):
    return ROOT / f"baserom.{version}.z64"


def recorded(version):
    """The SHA1 the repo pins for a version, from ``bh.<version>.sha1``."""
    path = ROOT / f"bh.{version}.sha1"
    if not path.exists():
        return None
    return path.read_text(encoding="ascii").split()[0].strip().lower()


def check(version):
    """``(ok, detail)`` without building."""
    rom = BUILDERS[version]
    if not rom.exists():
        return False, f"missing {rom.relative_to(ROOT)}; run the build first"
    ref = baserom(version)
    if not ref.exists():
        return False, f"missing {ref.name}"
    sha = hashlib.sha1(rom.read_bytes()).hexdigest()
    if ref.read_bytes() != rom.read_bytes():
        want = hashlib.sha1(ref.read_bytes()).hexdigest()
        return False, f"differs from {ref.name}: built {sha}, reference {want}"
    pinned = recorded(version)
    if pinned and pinned != sha:
        return False, f"matches the baserom but not bh.{version}.sha1: {pinned} vs {sha}"
    return True, f"matches {ref.name} ({sha})"


def rebuild(version, jobs):
    """Rebuild one version.

    Retries with a single job if the first attempt fails. The IDO compiler runs
    under a Cygwin fork layer and each concurrent cc.exe needs a large slice of
    process address space, so several at once can intermittently exhaust it
    (``cygheap read copy failed`` / ``no more processes``). That is an
    environment limit rather than a build error, and it is flaky rather than
    deterministic, so a retry is the honest discriminator: a genuine break fails
    both attempts with the same error, a fork limit only the first.

    Does not clean: see :func:`clean`, which must run once before every version
    is rebuilt, or building EU would delete the US artifacts.
    """
    detail = ""
    for attempt, attempt_jobs in enumerate((jobs, 1)):
        cmd = [sys.executable, "tools/native_build.py", "build",
               "--version", version, "--jobs", str(attempt_jobs)]
        r = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True,
                           encoding="utf-8", errors="replace")
        detail = r.stdout[-3000:] + r.stderr[-3000:]
        if r.returncode == 0:
            return True, ""
        if attempt == 0:
            print(f"{version.upper()}  parallel build failed, retrying serially")
    return False, detail


def clean():
    """Remove both versions' build artifacts, forcing a full relink.

    One clean for the whole verification pass, never per version.
    """
    for d in (ROOT / "build", ROOT / "build.eu"):
        if not d.exists():
            continue
        for p in sorted(d.rglob("*.o")) + sorted(d.glob("*.z64")) + \
                sorted(d.glob("*.elf")) + sorted(d.glob("*.map")) + \
                sorted(d.glob("*.bin")):
            p.unlink()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--rebuild", action="store_true",
                    help="clean and rebuild both versions before verifying")
    ap.add_argument("--version", choices=("us", "eu"), default=None,
                    help="only this version (default: both)")
    ap.add_argument("--jobs", type=int, default=min(__import__("os").cpu_count() or 1, 4))
    args = ap.parse_args()

    order = ("us", "eu") if args.version is None else (args.version,)
    failures = 0

    # Rebuild everything before checking anything: `clean()` wipes both build
    # dirs, so building EU after checking US would delete the artifacts the US
    # check had just validated.
    if args.rebuild:
        clean()
        for version in order:
            ok, detail = rebuild(version, args.jobs)
            if not ok:
                print(f"{version.upper()}  BUILD FAILED")
                print(detail)
                failures += 1

    for version in order:
        ok, detail = check(version)
        state = "OK  " if ok else "FAIL"
        print(f"{version.upper()}  {state} {detail}")
        if not ok:
            failures += 1

    if failures:
        print(f"\n{failures} version(s) failed verification.")
        return 1
    print("\nAll versions verified byte-exact.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
