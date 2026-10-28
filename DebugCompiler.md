# Debug IDO 5.3

Paths relative to the repository root:

- Linux tools (WSL Ubuntu): `.decomp-workbench-tool/comet-diagnostics/compiler-source/build/5.3/`
  - `uopt-diagnostics`: optimization, register coloring, spill slots.
  - `uopt-graph`: detailed allocation graphs; does not include slot tracing.
  - `uopt-provenance`: allocation provenance, built with debugging symbols.
  - `ugen-diagnostics`: code generation, temporary registers, scheduling.
- Windows launchers: `.decomp-workbench-tool/comet-diagnostics/windows-trace/`
- Setup/fidelity notes: `.decomp-workbench-tool/comet-diagnostics/de7c4-fresh-diagnostics.md`

## Enable for one source file

Temporarily replace `env=env` on the C compiler invocation in `tools/native_build.py` with:

```python
env=({**env, "USR_LIB": ".decomp-workbench-tool/comet-diagnostics/windows-trace"}
     if source.as_posix() == "src.us/overlay_level/comet/318E20.c" else env)
```

Change the source filter for another file. Setting shell `USR_LIB` alone is ineffective: `compiler_env()` overwrites it.

The UOPT launcher hardcodes `CDX_PROC=129` in `windows-trace/uopt-proxy.c`. Retarget this to the function's compiler procedure ordinal (not its address or symbol ID), then rebuild the launcher:

```powershell
$diag = ".decomp-workbench-tool/comet-diagnostics"
.\tools\windows\tcc\tcc\tcc.exe -o "$diag/windows-trace/uopt.exe" "$diag/windows-trace/uopt-proxy.c"
```

## Trace and build

Enable the target C function. Run in the same PowerShell session:

```powershell
$env:COMET_UOPT_BACKEND = "diagnostics"
$env:COMET_UOPT_TRACE = "1"
$env:COMET_UGEN_BACKEND = "native"
$env:COMET_UGEN_TRACE = "0"
(Get-Item .\src.us\overlay_level\comet\318E20.c).LastWriteTime = Get-Date
.\tools\make.ps1
```

For UGEN tracing, set UOPT to `native`/`0` and UGEN to `diagnostics`/`1`. Backend `stock` selects the pristine Linux stage; `native` selects the normal Windows stage.

Outputs under `$diag` (copy before another run overwrites them):

- `uopt/fresh-globalcolor.log`: register priorities, interference, assignments.
- `uopt/fresh-slots.log`: stack-slot allocations.
- `uopt/fresh-before-*.bin`, `fresh-after-*.bin`: intermediate streams.
- `ugen/fresh-ugen.log`: code-generation/register/scheduling events.

Wait for each build to finish; do not overlap builds. Compare the full target object SHA256 between native and diagnostic runs to verify observational fidelity. Keep behavior-forcing controls disabled. Use traces to guide C edits, restore the build override afterward, and validate matches with the normal `make.ps1` and `diff.ps1` workflow.
