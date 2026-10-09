"""Native Windows counterpart of the ROM Makefile (Python 3.12 x64)."""
import argparse
from concurrent.futures import ThreadPoolExecutor
import ctypes
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tarfile
import tempfile
import venv
import zipfile

ROOT = Path(__file__).resolve().parent.parent
CACHE = ROOT / "tools/windows"
PYTHON = CACHE / "venv/Scripts/python.exe"
REQUIREMENTS = ROOT / "tools/requirements-windows.txt"
ARCHIVES = {
    "ido": (
        "https://github.com/decompals/ido-static-recomp/releases/download/v1.2/ido-5.3-recomp-windows.tar.gz",
        "2268f64cab973750e78bdf7aa2ff3cccf78ad1d181507da6faeb61f3d22c2e1e", "ido.tar.gz"),
    "binutils": (
        "https://github.com/decompals/binutils-mips-ps2-decompals/releases/download/v0.10/binutils-mips-ps2-decompals-windows-x86-64.zip",
        "2bb5904ee174e04f1600cc70ffdb3dc36b0efa4d1892ea446be588ba8dc6198c", "binutils.zip"),
    "tcc": (
        "https://download.savannah.gnu.org/releases/tinycc/tcc-0.9.27-win64-bin.zip",
        "34a721949a2583fdff725312da092fa0f5f1f284b702e6f811c6954714faabb2", "tcc.zip"),
    "runtime": (
        "https://repo.msys2.org/msys/x86_64/msys2-runtime-3.6.9-2-x86_64.pkg.tar.zst",
        "20f39ad6d0fd2aae93ca84c2e9efbe567d3d7f5d465dc0810b700d7cbac0c3a4", "msys-runtime.tar.zst"),
}


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(args, *, env=None, output=None, quiet=False):
    result = subprocess.run([a.as_posix() if isinstance(a, Path) else str(a) for a in args], cwd=ROOT, env=env,
                            stdout=output if output else subprocess.PIPE,
                            stderr=subprocess.PIPE)
    if not output and (not quiet or result.returncode):
        sys.stdout.buffer.write(result.stdout)
    if result.stderr and (not quiet or result.returncode or b"implicit declaration" in result.stderr):
        sys.stderr.buffer.write(result.stderr)
    if result.returncode:
        raise RuntimeError(f"Command failed ({result.returncode}): {subprocess.list2cmdline([str(a) for a in args])}")


def download(name):
    url, expected, filename = ARCHIVES[name]
    archive = CACHE / "downloads" / filename
    archive.parent.mkdir(parents=True, exist_ok=True)
    if not archive.exists() or digest(archive) != expected:
        print(f"Downloading {name}...", flush=True)
        partial = archive.with_suffix(archive.suffix + ".partial")
        # Use Windows' certificate store, including enterprise proxy roots.
        # Some upstream servers do not send a complete OpenSSL certificate
        # chain; PowerShell uses Windows' chain discovery without weakening TLS.
        env = os.environ.copy()
        env["BH_DOWNLOAD_URL"] = url
        env["BH_DOWNLOAD_FILE"] = str(partial)
        powershell = Path(os.environ["SystemRoot"]) / "System32/WindowsPowerShell/v1.0/powershell.exe"
        run([powershell, "-NoProfile", "-Command",
             "$ErrorActionPreference='Stop'; $ProgressPreference='SilentlyContinue'; "
             "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; "
             "Invoke-WebRequest -UseBasicParsing -Uri $env:BH_DOWNLOAD_URL "
             "-OutFile $env:BH_DOWNLOAD_FILE -TimeoutSec 120"], env=env)
        if digest(partial) != expected:
            partial.unlink()
            raise RuntimeError(f"SHA256 mismatch for {url}")
        partial.replace(archive)
    return archive


def setup():
    if os.name != "nt" or sys.version_info[:2] != (3, 12) or ctypes.sizeof(ctypes.c_void_p) != 8:
        raise RuntimeError("Native builds require 64-bit Python 3.12 on Windows.")
    CACHE.mkdir(parents=True, exist_ok=True)
    if not PYTHON.exists():
        print("Creating local Python environment...", flush=True)
        venv.EnvBuilder(with_pip=True).create(CACHE / "venv")
    marker = CACHE / "requirements.sha256"
    wanted = digest(REQUIREMENTS)
    if not marker.exists() or marker.read_text() != wanted:
        run([PYTHON, "-m", "pip", "install", "--disable-pip-version-check", "-r", REQUIREMENTS])
        marker.write_text(wanted)
    if Path(sys.executable).resolve() != PYTHON.resolve():
        run([PYTHON, __file__, "setup"])
        return
    for name, executable in (("ido", "cc.exe"), ("binutils", "mips-ps2-decompals-as.exe"), ("tcc", "tcc/tcc.exe")):
        directory = CACHE / name
        installed = directory / ".archive-sha256"
        expected = ARCHIVES[name][1]
        if not (directory / executable).exists() or not installed.exists() or installed.read_text() != expected:
            archive = download(name)
            directory.mkdir(parents=True, exist_ok=True)
            if archive.suffix == ".zip":
                with zipfile.ZipFile(archive) as contents:
                    contents.extractall(directory)
            else:
                with tarfile.open(archive) as contents:
                    contents.extractall(directory, filter="data")
            installed.write_text(expected)
    dll = CACHE / "ido/msys-2.0.dll"
    runtime_marker = CACHE / "ido/.runtime-sha256"
    if not dll.exists() or not runtime_marker.exists() or runtime_marker.read_text() != ARCHIVES["runtime"][1]:
        # Some Windows tar builds require an external zstd executable.
        # Decode in the local Python environment and copy only the needed DLL.
        import zstandard
        with download("runtime").open("rb") as archive:
            with zstandard.ZstdDecompressor().stream_reader(archive) as decoded:
                with tarfile.open(fileobj=decoded, mode="r|") as contents:
                    info = next((entry for entry in contents if entry.name == "usr/bin/msys-2.0.dll"), None)
                    member = contents.extractfile(info) if info is not None else None
                    if member is None:
                        raise RuntimeError("MSYS runtime archive is missing msys-2.0.dll")
                    with member, dll.open("wb") as output:
                        shutil.copyfileobj(member, output)
        runtime_marker.write_text(ARCHIVES["runtime"][1])
    # Upstream's Windows checkout changes this offset-indexed table to CRLF.
    # That corrupts diagnostics and can crash cfe on otherwise valid input.
    table = CACHE / "ido/err.english.cc"
    data = table.read_bytes()
    if b"\r\n" in data:
        table.write_bytes(data.replace(b"\r\n", b"\n"))
    for source, target, extra in (("tools/rnc_propack_source/main.c", CACHE / "rnc64.exe", []),
                                  ("tools/rncu.c", CACHE / "librncu.dll", ["-shared"])):
        if not target.exists() or target.stat().st_mtime_ns < (ROOT / source).stat().st_mtime_ns:
            run([CACHE / "tcc/tcc/tcc.exe", *extra, source, "-o", target])


def extract(version):
    import yaml
    rom = ROOT / f"baserom.{version}.z64"
    config = ROOT / f"bh.{version}.yaml"
    if not rom.exists():
        raise RuntimeError(f"Place your ROM at {rom}")
    expected = yaml.safe_load(config.read_text(encoding="utf-8"))["sha1"]
    if hashlib.sha1(rom.read_bytes()).hexdigest() != expected.lower():
        raise RuntimeError(f"{rom.name} does not match the SHA1 in {config.name}; no files were removed.")
    if version != "us":
        raise RuntimeError("Native extraction currently supports US only; use the Linux Makefile for EU.")
    # Match extract.ps1's clean extraction, anchored to the repository root.
    for name in ("asm", "assets"):
        directory = ROOT / name
        if directory.is_symlink() or directory.resolve() != directory:
            raise RuntimeError(f"Refusing to clean redirected directory: {directory}")
        if directory.exists():
            shutil.rmtree(directory)
    run([sys.executable, "tools/splat/split.py", config.name])
    run([sys.executable, "tools/fixup_tlut.py"])
    # Paths embedded in GAS string literals must use forward slashes too;
    # otherwise e.g. assets\rsp is interpreted as an escaped carriage return.
    for assembly in (ROOT / "asm").rglob("*.s"):
        text = assembly.read_text(encoding="utf-8")
        normalized = re.sub(r'(\.(?:incbin|include)\s+"[^"]+")',
                            lambda match: match.group().replace("\\", "/"), text)
        if normalized != text:
            assembly.write_text(normalized, encoding="utf-8", newline="\n")
    # GNU ld treats backslashes as escapes, not Windows directory separators.
    script = ROOT / "bh.ld"
    script.write_text(script.read_text(encoding="utf-8").replace("\\", "/"), encoding="utf-8", newline="\n")


def compiler_env():
    env = os.environ.copy()
    # IDO uses unquoted temporary paths between compiler stages. Prefer the
    # system temp directory and its short spelling when it contains spaces.
    path = tempfile.gettempdir()
    buf = ctypes.create_unicode_buffer(32768)
    if ctypes.windll.kernel32.GetShortPathNameW(path, buf, len(buf)):
        path = buf.value
    if " " in path:
        raise RuntimeError("IDO needs a temp path without spaces. Set TEMP and TMP to a writable path without spaces.")
    env["TMPDIR"] = path.replace("\\", "/")
    env["USR_LIB"] = "tools/windows/ido"
    return env


def build(args):
    if args.version != "us":
        raise RuntimeError("Native builds currently support US only; use the Linux Makefile for EU.")
    if not (ROOT / "bh.ld").exists() or not (ROOT / "assets/boot.bin").exists():
        raise RuntimeError("Run .\\tools\\extract.ps1 before building.")
    script = (ROOT / "bh.ld").read_text(encoding="utf-8").replace("\\", "/")
    (ROOT / "bh.ld").write_text(script, encoding="utf-8", newline="\n")
    # Splat's script is the source of truth for the link inputs; no duplicated
    # source-directory or asset-format lists are needed here.
    objects = sorted(set(re.findall(r"(build/[^\s():;]+\.o)\(", script)))
    build_dir = ROOT / "build"
    build_dir.mkdir(exist_ok=True)
    binutils = CACHE / "binutils"
    assembler = binutils / "mips-ps2-decompals-as.exe"
    linker = binutils / "mips-ps2-decompals-ld.exe"
    asflags = ["-EB", "-mtune=vr4300", "-march=vr4300", "-mabi=32", "-I", "include"]
    cflags = "-G0 -Xfullwarn -Xcpluscomm -signed -nostdinc -non_shared -Wab,-r4300_mul -D_LANGUAGE_C -D_FINALROM -DF3DEX_GBI -DWIN32 -DSSSV -DNDEBUG -DVERSION_US -woff 649,838".split()
    cflags += ["-I" + p for p in (".", "include", "include/2.0I", "include/libc", "assets", "src.us", "src.us/libultra/audio")]
    if args.non_matching:
        cflags.append("-DNON_MATCHING")
    env = compiler_env()
    # A separate fingerprint prevents reuse of Docker objects or objects from
    # a different NON_MATCHING configuration on the first native build.
    marker = build_dir / ".native-config"
    tool_sources = (Path(__file__), ROOT / "tools/asm-processor/asm_processor.py",
                    ROOT / "tools/image_converter.py", ROOT / "tools/rnc_propack_source/main.c")
    config = json.dumps([cflags, ARCHIVES, [digest(p) for p in tool_sources]], sort_keys=True)
    force = args.rebuild or not marker.exists() or marker.read_text() != config
    if force:
        # A failed build with different flags may leave some successful
        # objects behind. Invalidate the old configuration before compiling,
        # so switching back cannot accidentally reuse those objects.
        marker.unlink(missing_ok=True)
    headers_time = max((p.stat().st_mtime_ns for folder in ("include", "src.us") for p in (ROOT / folder).rglob("*.h")), default=0)
    asm_time = max((p.stat().st_mtime_ns for p in (ROOT / "asm").rglob("*.s")), default=0)

    def binary(source, target):
        run([linker, "-r", "-b", "binary", "-o", target, source], quiet=args.quiet)

    def convert(mode, source, target):
        run([sys.executable, "tools/image_converter.py", mode, source, target], quiet=args.quiet)

    def compile_object(name):
        target = ROOT / name
        source = Path(name.removeprefix("build/").removesuffix(".o"))
        # .png, .pal and compressed files have a generated input, whose source
        # is located below before checking timestamps.
        original = source
        if source.suffix == ".pal":
            original = source.with_suffix(".ci4.png")
        elif source.suffix == ".rnc" and not source.exists():
            original = Path(str(source) + ".png")
        if not original.exists():
            raise RuntimeError(f"Missing build input: {original}")
        newest = original.stat().st_mtime_ns
        if source.suffix == ".c":
            newest = max(newest, headers_time)
            if "GLOBAL_ASM" in source.read_text(encoding="utf-8"):
                newest = max(newest, asm_time)
        if not force and target.exists() and target.stat().st_mtime_ns >= newest:
            return
        target.parent.mkdir(parents=True, exist_ok=True)
        try:
            if source.suffix == ".s":
                run([assembler, *asflags, "-o", target, source], quiet=args.quiet)
            elif source.suffix == ".c":
                global_asm = "GLOBAL_ASM" in source.read_text(encoding="utf-8")
                compiled = source
                processor = [sys.executable, "tools/asm-processor/asm_processor.py", "-O2", source]
                if global_asm:
                    compiled = Path("build") / source
                    with compiled.open("wb") as out:
                        run(processor, output=out, quiet=args.quiet)
                run([CACHE / "ido/cc.exe", "-c", *cflags, "-O2", "-mips2", "-32", "-o", name, compiled], env=env, quiet=args.quiet)
                if global_asm:
                    # shlex understands quoted forward-slash Windows paths.
                    asm_command = '"' + assembler.as_posix() + '" ' + " ".join(asflags)
                    run([*processor, "--post-process", name, "--assembler", asm_command,
                         "--asm-prelude", "tools/asm-processor/prelude.inc"], quiet=args.quiet)
            elif source.suffix == ".png":
                generated = Path("build") / source
                convert(source.suffixes[-2][1:], source, generated)
                binary(generated, target)
            elif source.suffix == ".pal":
                generated = Path("build") / source
                convert("palette", original, generated)
                binary(generated, target)
            elif source.suffix == ".rnc":
                raw = Path("build") / source.with_suffix("")
                packed = Path("build") / source
                if original.suffix == ".png":
                    convert(source.suffixes[-2][1:], original, raw)
                else:
                    shutil.copyfile(original, raw)
                run([CACHE / "rnc64.exe", "p", raw, packed, "/f"], quiet=True)
                data = packed.read_bytes()
                packed.write_bytes(data + bytes((-len(data)) % 16))
                binary(packed, target)
            else:
                binary(source, target)
        except BaseException:
            target.unlink(missing_ok=True)
            raise
        if not args.quiet:
            print(f"Built {name}", flush=True)

    print(f"Building {len(objects)} objects ({args.jobs} workers)...", flush=True)
    with ThreadPoolExecutor(max_workers=args.jobs) as pool:
        list(pool.map(compile_object, objects))
    library = build_dir / "lib/libultra_rom.a"
    library.parent.mkdir(exist_ok=True)
    shutil.copyfile(ROOT / "lib/libultra_rom.a", library)
    run([sys.executable, "tools/set_o32abi_bit.py", "--quiet", library], quiet=args.quiet)
    ldflags = ["-T", "bh.ld", "-T", "undefined_syms.us.txt", "-T", "undefined_syms_auto.txt",
               "-Map", "build/bh.us.map", "--no-check-sections", "build/lib/libultra_rom.a"]
    for symbol in ("osViGetCurrentLine", "osAiGetLength", "osPiGetStatus", "__osLeoInterrupt", "guTranslate"):
        ldflags += ["-u", symbol]
    ldflags += ["-o", "build/bh.us.elf"]
    print("Linking ROM...", flush=True)
    run([linker, *ldflags], quiet=args.quiet)
    run([binutils / "mips-ps2-decompals-objcopy.exe", "-O", "binary", "build/bh.us.elf", "build/bh.us.bin"], quiet=args.quiet)
    rom = build_dir / "bh.us.z64"
    shutil.copyfile(build_dir / "bh.us.bin", rom)
    marker.write_text(config)
    if args.non_matching:
        run([sys.executable, "tools/n64crc.py", rom])
        print("Skipping SHA1 check (NON_MATCHING); CRC updated.")
    else:
        expected = (ROOT / "bh.us.sha1").read_text().split()[0].lower()
        actual = hashlib.sha1(rom.read_bytes()).hexdigest()
        print(f"build/bh.us.z64: {'OK' if actual == expected else 'FAILED'}", flush=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("action", choices=("setup", "extract", "build"))
    parser.add_argument("--version", choices=("us", "eu"), default="us")
    parser.add_argument("--jobs", type=int, default=min(os.cpu_count() or 1, 8))
    parser.add_argument("--non-matching", action="store_true")
    parser.add_argument("--rebuild", action="store_true")
    parser.add_argument("--quiet", action="store_true")
    args = parser.parse_args()
    if args.jobs < 1:
        parser.error("--jobs must be at least 1")
    os.chdir(ROOT)
    setup()
    if args.action == "setup":
        print("Native Windows tools ready.")
    elif Path(sys.executable).resolve() != PYTHON.resolve():
        sys.exit(subprocess.call([str(PYTHON), __file__, *sys.argv[1:]], cwd=ROOT))
    elif args.action == "extract":
        extract(args.version)
    else:
        build(args)


if __name__ == "__main__":
    try:
        main()
    except (RuntimeError, OSError) as error:
        print(f"Error: {error}", file=sys.stderr)
        sys.exit(1)
