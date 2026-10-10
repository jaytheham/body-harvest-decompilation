"""Run the bundled permuter with the native Windows build toolchain."""
import importlib.util
import os
import re
from pathlib import Path
import subprocess
import sys

import native_build

ROOT = native_build.ROOT
PERMUTER = ROOT / "tools/decomp-permuter"
TCC = native_build.CACHE / "tcc/tcc/tcc.exe"
sys.path.insert(0, str(PERMUTER))


def preprocess(filename, cpp_args=None):
    return subprocess.check_output(
        [str(TCC), "-E", *(cpp_args or []), "-P", "-nostdinc", "-DPERMUTER", filename],
        encoding="utf-8",
    )


def import_function(args):
    spec = importlib.util.spec_from_file_location("permuter_import", PERMUTER / "import.py")
    importer = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(importer)
    importer.CPP = [TCC.as_posix(), "-E", "-P"]
    original_import_c = importer.import_c_file

    def import_c(*arguments):
        source = original_import_c(*arguments)
        # The bundled parser can interpret sizeof(Type) * (n) as sizeof a
        # cast of a dereference. Group sizeof before parsing expanded macros.
        return re.sub(r"\bsizeof\s*\(([^()]*)\)", r"(sizeof(\1))", source)

    importer.import_c_file = import_c

    def commands(root_dir, c_file, make_flags, build_system):
        if make_flags:
            raise ValueError("Native import does not accept Make flags")
        flags = "-c -G0 -Xfullwarn -Xcpluscomm -signed -nostdinc -non_shared -Wab,-r4300_mul -D_LANGUAGE_C -D_FINALROM -DF3DEX_GBI -DWIN32 -DSSSV -DNDEBUG -DVERSION_US -woff 649,838 -O2 -mips2 -32".split()
        flags += ["-I" + p for p in (".", "include", "include/2.0I", "include/libc", "assets", "src.us", "src.us/libultra/audio")]
        return ([ (native_build.CACHE / "ido/cc.exe").as_posix(), *flags ],
                [(native_build.CACHE / "binutils/mips-ps2-decompals-as.exe").as_posix(),
                 "-EB", "-mtune=vr4300", "-march=vr4300", "-mabi=32", "-I", "include"])

    def write_compile(compiler, cwd, out_file):
        # Keep the upstream import interface, but generate a Python launcher.
        script = Path(out_file).with_suffix(".py")
        script.write_text(
            "import os, subprocess, sys\n"
            "from pathlib import Path\n"
            f"sys.path.insert(0, {str(ROOT / 'tools')!r})\n"
            "import native_build\n"
            "source = Path(sys.argv[1]).resolve().as_posix()\n"
            "output = Path(sys.argv[3]).resolve().as_posix()\n"
            f"os.chdir({cwd!r})\n"
            f"sys.exit(subprocess.call({compiler!r} + [source, '-o', output], env=native_build.compiler_env()))\n",
            encoding="utf-8", newline="\n",
        )

    original_compile_base = importer.compile_base
    importer.find_build_command_line = commands
    importer.write_compile_command = write_compile
    importer.compile_base = lambda script, *rest: original_compile_base(str(Path(script).with_suffix('.py')), *rest)
    original_settings = importer.create_write_settings_toml
    objdump = (native_build.CACHE / "binutils/mips-ps2-decompals-objdump.exe").as_posix()
    importer.create_write_settings_toml = lambda name, kind, filename, command=None: original_settings(name, kind, filename, "'" + objdump + "' -drz -m mips:4300")
    # TinyCC lacks GCC's -fdirectives-only; expand macros during native import.
    importer.main([*args, "--preserve-macros="])


def main():
    os.chdir(ROOT)
    for executable in (TCC, native_build.CACHE / "ido/cc.exe", native_build.CACHE / "binutils/mips-ps2-decompals-as.exe"):
        if not executable.exists():
            raise RuntimeError("Native toolchain is missing; run .\\tools\\setup.ps1 first.")
    if sys.argv[1] == "import":
        import_function(sys.argv[2:])
    elif sys.argv[1] == "run":
        import src.main
        src.main.preprocess = preprocess
        sys.argv = [str(PERMUTER / 'permuter.py'), *sys.argv[2:]]
        src.main.main()
    else:
        raise ValueError("Expected import or run")


if __name__ == "__main__":
    main()
