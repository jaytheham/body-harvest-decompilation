# Body Harvest N64 Decompilation

Help is welcome!

# Building

The instructions below assume that you will be using `Ubuntu 22.04`; either natively, via [WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10), or via [Docker](https://docs.docker.com/get-docker/).
Please check the [packages.txt](packages.txt) and [requirements.txt](requirements.txt) for the prerequisite Linux and Python packages respectively.

## Natively

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
Not sure why this one file is problematic.

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

Place `baserom.eu.z64` in the root of the repository, and suffix each `make` command with `VERSION=eu`. Note that whilst this will build the EU ROM, minimal effort has been made to decompile this version.

## Building `NON_MATCHING` Version

If there are any functions within the ROM that have been decompiled to a state where they are functionally equivalent, but are not a byte-perfect match. In order to build/test the non-matching, pass `NON_MATCHING=1` to the `make` commands.

# ROM Versions

There are 2 known versions of the ROM:

| Country Code      |      CRC1/CRC2      |                  ROM SHA1                  | Version |
| :---------------- | :-----------------: | :----------------------------------------: | :-----: |
| E - North America | `5326696F/FE9A99C3` | `BBB6666F5014A473747EE4145F036D9FB25D7348` | `B6.5`  |
| P - European      | `0B58B8CD/B7B291D2` | `67750E2E7AB46FEDF65A271AB7F4C7AAD92AE355` | `F2.6`  |

Only US and EU versions were released to the public. If you are in possession of a beta/prototype ROM, please let me know.

# Repo layout

```
asm/             ; assembly files split by splat (not checked in)
assets/          ; binary files split by splat (not checked in)
build/           ; build folder (not checked in)
include/
  2.0I/          ; libultra 2.0I headers
lib/libultra.a   ; libultra 2.0I static library
src.{us|eu})/
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
