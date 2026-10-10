#!/usr/bin/env pwsh
# Import a function and run decomp-permuter with the native Windows toolchain.
# Usage:
#   .\permute.ps1 <c_file> <asm_file_or_func_name> [permuter options]
#
# Examples:
#   .\permute.ps1 src.us/overlay_gameplay/outside/145D70.c func_801372B4_146264 -j6 --best-only
#   .\permute.ps1 src.us/core/1000.c asm/nonmatchings/core/1000/func_80000400_400.s -j6 --best-only
#   .\permute.ps1 src.us/overlay_gameplay/outside/145D70.c func_801372B4_146264 -j6 --best-only
#
# The function directory is created under nonmatchings/<func_name>/ in the repository.
# Run tools/setup.ps1 first. Native import expands preserved macros using TinyCC.
# All arguments after the asm/func argument are forwarded directly to permuter.py.
#
# Common permuter options:
#   -j <N>   Use N parallel threads        (e.g. -j4)
#   --stop-on-zero   Stop when a perfect match is found

param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$CFile,

    [Parameter(Mandatory=$true, Position=1)]
    [string]$AsmFileOrFuncName,

    [Parameter(ValueFromRemainingArguments=$true)]
    [string[]]$PermuterArgs
)

. (Join-Path $PSScriptRoot 'windows-common.ps1')
$python = Get-NativePython
$nativePermuter = Join-Path $PSScriptRoot 'native_permute.py'
Push-Location (Split-Path $PSScriptRoot -Parent)
try {

    # Import the function and capture output to find created directory
    Write-Host "==> Importing $AsmFileOrFuncName from $CFile ..." -ForegroundColor Cyan
    $importOutput = & $python $nativePermuter import $CFile $AsmFileOrFuncName 2>&1
    $importOutput | ForEach-Object { Write-Host $_ }

    if ($LASTEXITCODE -ne 0) {
        Write-Error "import.py failed."
        exit 1
    }

    # Parse the directory from "Done. Imported into nonmatchings/<dir>"
    $doneLines = @($importOutput | Where-Object { $_ -match "Done\. Imported into (.+)" })
    if (-not $doneLines) {
        Write-Error "Could not parse the output directory from import.py output."
        exit 1
    }

    $funcDir = ($doneLines[-1] -replace ".*Done\. Imported into ", "").Trim()

    Write-Host ""
    Write-Host "==> Running permuter on $funcDir" -ForegroundColor Cyan
    if ($PermuterArgs.Count -gt 0) {
        Write-Host "    Extra args: $($PermuterArgs -join ' ')" -ForegroundColor DarkGray
    }
    Write-Host ""

    & $python $nativePermuter run $funcDir @PermuterArgs
    if ($LASTEXITCODE -ne 0) { throw "permuter.py failed (exit $LASTEXITCODE)." }
} finally {
    Pop-Location
}
