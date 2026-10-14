"""Verify both ROMs build byte-exact, from a clean state.

    python tools/verify_build.py            # check the current builds
    python tools/verify_build.py --rebuild  # clean and rebuild both, then check

Without --rebuild the script only compares the existing build/bh.us.z64 and
build.eu/bh.eu.z64 with the baseroms and bh.<version>.sha1; that part runs anywhere.
--rebuild deletes the objects and ROMs of the selected versions and rebuilds them
with tools/native_build.py, so it is Windows-only, like the native build itself.

It does not extract. It shows that the current extractions of the selected versions
build byte-exact from clean objects, one after the other. It does not show that
extracting one version leaves the other's link inputs alone: to check that, run
both extractions first (US, then EU) and then this script with --rebuild.
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


def clean(versions):
    """Remove the build artifacts of the given versions, forcing a full relink.

    One clean for the whole verification pass, never per version.
    """
    for d in (BUILDERS[version].parent for version in versions):
        if not d.exists():
            continue
        if d.is_symlink() or d.resolve() != d:
            raise RuntimeError(f"Refusing to clean redirected directory: {d}")
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

    # Rebuild everything before checking anything: `clean()` wipes the build
    # dirs of every selected version, so cleaning between checks would delete
    # artifacts an earlier check had just validated.
    if args.rebuild:
        clean(order)
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
