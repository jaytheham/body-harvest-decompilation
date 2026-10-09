# Body Harvest N64 Decompilation

[View progress](https://jaytheham.github.io/body-harvest-decompilation/)

Help is welcome! Message me on discord `jaytheham` or @gmail.com

[Help match existing scratches on decomp.me](https://decomp.me/preset/211)

A decompilation to C of the N64 game Body Harvest.

# Building

## Windows (without Docker)

Install **64-bit [Python 3.12](https://www.python.org/downloads/windows/)** with the Python launcher enabled. This is the only build dependency you need to install yourself; use Git to clone the repository, or download its source ZIP. Windows 10/11 and the included PowerShell and `tar.exe` are required.

```powershell
git clone https://github.com/jaytheham/body-harvest-decompilation.git
cd body-harvest-decompilation
```

Place your **US** ROM at `baserom.us.z64` in the repository root, then run:

```powershell
.\tools\extract.ps1
.\tools\make.ps1
```

The first command automatically downloads pinned, SHA256-checked Windows tools and installs the extraction libraries in `tools/windows/venv`. Nothing is installed globally and no environment activation is needed. Initial setup needs internet access; subsequent extractions and builds work offline. You can also run `.\tools\setup.ps1` separately to prepare the tools before supplying the ROM.

A successful matching build prints `build/bh.us.z64: OK`. Builds are incremental and use up to eight workers. Options:

```powershell
.\tools\make.ps1 -Jobs 4
.\tools\make.ps1 -Rebuild
.\tools\make.ps1 -NonMatching
.\tools\make.ps1 -VerboseBuild
```

Some existing `NON_MATCHING` source does not compile; that option reports its source errors. A failed build cannot leave objects from that configuration eligible for reuse in a matching build.

The scripts locate the repository relative to themselves, so they also work when launched from another directory or from a checkout with spaces in its name. If PowerShell blocks scripts, invoke them with `powershell -ExecutionPolicy Bypass -File .\tools\extract.ps1` (and similarly for `make.ps1`); this applies only to that process.

Native builds currently support the US version. The existing Linux/Docker workflow remains available, including `.\tools\extract.ps1 -Docker` and `.\tools\make.ps1 -Docker` for an already running `bh-container`. Other development scripts such as `diff.ps1` still use Docker.

The local tool cache is ignored by Git. To reset setup, remove `tools/windows` and run the commands again. The compiler is [IDO 5.3 v1.2](https://github.com/decompals/ido-static-recomp/releases/tag/v1.2), with [Windows binutils v0.10](https://github.com/decompals/binutils-mips-ps2-decompals/releases/tag/v0.10). A standalone [MSYS runtime](https://repo.msys2.org/msys/x86_64/) DLL supports IDO, and portable [Tiny C](https://download.savannah.gnu.org/releases/tinycc/) builds the repository's RNC tools; no MSYS installation, Bash, Make, WSL, Docker, Visual Studio, or system C compiler is needed.

## Linux / WSL

The instructions below assume that you will be using `Ubuntu 22.04`; either natively, via [WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10), or via [Docker](https://docs.docker.com/get-docker/).
Please check the [packages.txt](packages.txt) and [requirements.txt](requirements.txt) for the prerequisite Linux and Python packages respectively.

### Natively

Clone the repository; note the `--recursive` flag to fetch submodules at the same time:

```sh
git clone --recursive https://github.com/jaytheham/body-harvest-decompilation.git
```

Navigate into the freshly cloned repo

```sh
cd body-harvest-decompilation
```

Place the **US** Body Harvest ROM in the root of this repository, name it `baserom.us.z64`, and then run the first `make` command to extract the ROM:

```sh
make extract
```

Now build the ROM:

```sh
make --jobs
```

If you did everything correctly, you'll be greeted with the following:

```sh
build/bh.us.z64: OK
```

Note: Currently need to change the references to func_802D4CD0 in loader.s to func_802D4CD0_18D7E0
Not sure why this one file is problematic. Should be done automatically during extract.

## Docker

Clone this repository, place the `baserom.us.z64` at its root, and then build the Docker image:

```sh
docker build --no-cache -t bh-local .
```

Run the docker image with:

```sh
docker run --name bh-container --rm -ti -v "${PWD}:/bh" bh-local
```

From here you can run the `make extract` and `make --jobs` commands.

## Building `EU` Version

Place `baserom.eu.z64` in the root of the repository, and suffix each `make` command with `VERSION=eu`. Note that whilst this will build the EU ROM, no effort has been made to decompile this version yet.

## Building `NON_MATCHING` Version

Functions that are not yet a byte-perfect match are wrapped with NON_MATCHING to exclude from the build. In order to build/test the non-matching, pass `NON_MATCHING=1` to the `make` commands.
These functions range from actually matched - but require rodata to be configured - through to nowhere close to matching, and may not be functionally equivalent to the target ASM yet.

# ROM Versions

There are 2 known ROMs of the game:

| Country Code      |      CRC1/CRC2      |                  ROM SHA1                  | Version |
| :---------------- | :-----------------: | :----------------------------------------: | :-----: |
| E - North America | `5326696F/FE9A99C3` | `BBB6666F5014A473747EE4145F036D9FB25D7348` | `B6.5`  |
| P - European      | `0B58B8CD/B7B291D2` | `67750E2E7AB46FEDF65A271AB7F4C7AAD92AE355` | `F2.6`  |

Only US and EU versions were released to the public. If you are in possession of a beta/prototype ROM please contact me!

# Repo layout

```
asm/             ; assembly files split by splat (not checked in)
assets/          ; binary files split by splat (not checked in)
build/           ; build folder (not checked in)
include/
  2.0I/          ; libultra 2.0I headers
lib/libultra.a   ; libultra 2.0I static library
src.{us|eu}/
tools/
  ido5.3_recomp/ ; static recompilation of IDO 5.3 compiler
  splat_ext      ; custom splat extensions
```

# Tools

- [asm-processor](https://github.com/simonlindholm/asm-processor); allows `GLOBAL_ASM` pragma - replacing assembly inside C files
- [asm-differ](https://github.com/simonlindholm/asm-differ); rapidly diff between source/target assembly
- [decomp-permuter](https://github.com/simonlindholm/decomp-permuter); tweaks code, rebuilds, scores; helpful for weird regalloc issues
- [ido-static-recomp](https://github.com/Emill/ido-static-recomp); no need to use qemu-irix anymore!
- [m2c](https://github.com/matt-kempster/m2c); assembly to C code translator
- [rnc_propack_source](https://github.com/lab313ru/rnc_propack_source); open-source compressor/decompressor for RNC file format
- [splat](https://github.com/ethteck/splat); successor to n64split
