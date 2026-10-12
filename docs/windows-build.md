# Native Windows build maintenance

`tools/extract.ps1` and `tools/make.ps1` launch `tools/native_build.py`. A standard 64-bit Python 3.11.4 to 3.12 installation supplies `venv` and `pip`; all other tools and libraries live under the ignored `tools/windows` directory. The range is intentional: setup unpacks IDO with `tarfile.extractall(filter=...)`, which first exists in 3.11.4, and the pinned extraction libraries have Windows wheels only up to 3.12 (`pygfxd`/`crunch64` publish nothing for 3.13), so installation does not need a compiler or Rust toolchain.

The Linux Makefile remains the reference build. The Windows driver reads object inputs from splat's generated linker script and uses the Makefile's IDO and assembler flags. It omits the separate host syntax checker to avoid another compiler dependency; IDO still diagnoses C compilation errors. It builds the same RNC C source with portable Tiny C and pads compressed output to 16 bytes. The final SHA1 check is mandatory unless `-NonMatching` was requested.

## Upstream Windows pitfalls

- IDO 5.3 v1.2's `err.english.cc` diagnostic table has CRLF endings in its Windows release. Its offsets assume LF: CRLF produces garbled messages and can crash `cfe`. Setup normalizes only that table, without changing the compiler binaries.
- IDO's release needs `msys-2.0.dll`. Setup extracts only that DLL from a pinned MSYS2 runtime package using Windows' built-in `tar.exe`. It does not install MSYS2 or add anything to PATH.
- IDO passes temporary paths between its compiler stages without quoting. The driver uses the Windows system temporary directory, obtaining its short path when needed. If neither spelling is free of spaces, it reports how to set `TEMP` and `TMP`.
- Python's Windows `Path` formatting uses backslashes. These are escape characters in linker scripts and GAS `.incbin` strings, so extraction normalizes generated paths to forward slashes. Compiler input paths also use forward slashes so IDO can find headers beside the source.
- Native GNU ld inserts a backslash when resolving `-Lbuild/lib -lultra_rom`. That spelling does not match splat's archive selectors, causing library sections to be discarded. Passing `build/lib/libultra_rom.a` explicitly preserves the selectors and link order.
- asm-processor invokes its assembler with an argument list, allowing spaces in checkout and temporary paths.

## Validation

Use a clean source copy with `baserom.us.z64` (and `baserom.eu.z64` for the EU build), without `asm`, `assets`, `build`, or `tools/windows`:

```powershell
.\tools\extract.ps1
.\tools\make.ps1
.\tools\make.ps1
.\tools\extract.ps1 -Version eu
.\tools\make.ps1 -Version eu
```

The NTSC builds must print `build/bh.us.z64: OK` and the EU build must print `build.eu/bh.eu.z64: OK`. Repeat from another working directory, using an absolute script path, and with spaces in the checkout path. Change a C source and confirm only affected objects are rebuilt; change a header and confirm C objects are rebuilt. A configuration fingerprint forces recompilation after tool/flag changes and is invalidated before rebuilding, including when a configuration change fails partway through compilation.

Both ROMs are supported natively. `.\tools\extract.ps1 -Version eu` and `.\tools\make.ps1 -Version eu` operate on the `.eu`-suffixed tree (`asm.eu`, `assets.eu`, `build.eu`, `bh.eu.ld`, `undefined_syms_auto.eu.txt`) while the default `us` version uses the bare NTSC paths, so extracting one version cannot overwrite the other's link inputs. `python tools/verify_build.py --rebuild` cleans and rebuilds both versions in sequence and checks each against its baserom; it does not extract, so run both extractions first when checking that one does not disturb the other. The Makefile also builds both versions (`make extract VERSION=eu`, `make --jobs VERSION=eu`); that route, which `tools/make.ps1 -Docker` runs inside `bh-container`, was checked on Ubuntu 22.04 and 24.04.

Rebuilding after the version-neutral `GLOBAL_ASM` pragma change: the first `make` rebuilds every `GLOBAL_ASM` object once, because those objects now depend on a stamp of the asm-processor command line (`build/.asm_processor.stamp`, `build.eu/.asm_processor.stamp` for EU), which does not exist yet, and on `tools/asm-processor/asm_processor.py`. The first `tools/native_build.py` run recompiles everything once for the same reason, since its configuration fingerprint digests `native_build.py` and `asm_processor.py`. The Makefile does not track the extracted assembly itself: the `.s` files are not prerequisites of the `GLOBAL_ASM` objects (the rule lists the C file, the headers, the stamp and `asm_processor.py`), so re-running `make extract` with changed assembly does not rebuild objects that are up to date. Run `make clean` first. `tools/native_build.py` instead compares the newest extracted `.s` file with every source that contains `GLOBAL_ASM` and rebuilds those objects.

A failed build leaves the previous ROM in place. When the compile or the link fails, `tools/native_build.py` exits non-zero and `make` stops before `sha1sum`, but the `build/bh.us.z64` or `build.eu/bh.eu.z64` of an earlier successful build is still on disk (the ROM is only rewritten after a successful link). Judge a build by its exit status and its `OK` line, not by the ROM file existing. `python tools/verify_build.py` without `--rebuild` only compares the files on disk, so it can pass on that stale ROM; `--rebuild` deletes the ROMs first and reports `BUILD FAILED`.

## Local changes to vendored tools

- `tools/splat/src/splat/segtypes/common/c.py`: `C_GLOBAL_ASM_IDO_RE` accepts `.` and `-` in path components, so `GLOBAL_ASM` pragmas under `asm.eu/` are recognised. Re-apply it after updating splat; without it the EU build fails.
- `tools/asm-processor/asm_processor.py`: the option `--asm-root SOURCE=DESTINATION` rewrites the leading directory of every
  `#pragma GLOBAL_ASM` path (`asm/src/...` becomes `asm.eu/src/...` for `--asm-root asm=asm.eu`) before the file is
  opened or recorded as a dependency, and refuses a DESTINATION directory that does not exist. Source shared between the
  ROM versions names the NA extraction (`asm/`) once; `tools/native_build.py --version eu` and the Makefile for `VERSION=eu`
  pass `--asm-root asm=asm.eu` on both asm-processor invocations of an object (the source pass and `--post-process`), and
  the US build passes nothing, so each build needs only its own extraction. The path is canonicalised like `open()` reads it
  before it is matched (`./asm/x.s`, `asm//x.s` and `asm/../asm/x.s` map like `asm/x.s`; a backslash and the case of `ASM/`
  count on a Windows host only), and a path that resolves under SOURCE without being spelled that way (an absolute path, or
  one that leaves the repository and comes back) stops asm-processor with an error naming the source file, the line and the
  pragma, so a stray spelling cannot read the NA assembly into an EU object. `tests/asm_root_check.sh` covers it. Re-apply it
  after updating asm-processor.

When upgrading a tool, update its version URL and SHA256 in `ARCHIVES`, remove its local cached installation, and repeat the clean extraction and SHA1 verification. Do not remove the hash checks or disable TLS verification to work around download failures.
