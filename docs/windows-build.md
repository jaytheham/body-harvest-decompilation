# Native Windows build maintenance

`tools/extract.ps1` and `tools/make.ps1` launch `tools/native_build.py`. A standard 64-bit Python 3.11 or 3.12 installation supplies `venv` and `pip`; all other tools and libraries live under the ignored `tools/windows` directory. The 3.11/3.12 range is intentional: the pinned extraction libraries have Windows wheels for these interpreters (3.13 is excluded because `pygfxd`/`crunch64` only publish wheels up to cp312), so installation does not need a compiler or Rust toolchain.

The original Linux Makefile remains unchanged. The Windows driver reads object inputs from splat's generated linker script and uses the Makefile's IDO and assembler flags. It omits the separate host syntax checker to avoid another compiler dependency; IDO still diagnoses C compilation errors. It builds the same RNC C source with portable Tiny C and pads compressed output to 16 bytes. The final SHA1 check is mandatory unless `-NonMatching` was requested.

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

Both ROMs are supported natively. `.\tools\extract.ps1 -Version eu` and `.\tools\make.ps1 -Version eu` operate on the `.eu`-suffixed tree (`asm.eu`, `assets.eu`, `build.eu`, `bh.eu.ld`, `undefined_syms_auto.eu.txt`) while the default `us` version uses the bare NTSC paths, so extracting one version cannot overwrite the other's link inputs. `python tools/verify_build.py --rebuild` cleans and rebuilds both versions in sequence and checks each against its baserom. The Docker route (`tools/make.ps1 -Docker`) remains available.

When upgrading a tool, update its version URL and SHA256 in `ARCHIVES`, remove its local cached installation, and repeat the clean extraction and SHA1 verification. Do not remove the hash checks or disable TLS verification to work around download failures.
