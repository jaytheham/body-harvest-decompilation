#!/usr/bin/env pwsh
# Helper script to import a function and run the decomp-permuter inside the bh-container.
#
# Usage:
#   .\permute.ps1 <c_file> <asm_file_or_func_name> [permuter options]
#
# Examples:
#   .\permute.ps1 src.us/overlay_gameplay/outside/145D70.c func_801372B4_146264 -j6 --best-only
#   .\permute.ps1 src.us/core/1000.c asm/nonmatchings/core/1000/func_80000400_400.s -j6 --best-only
#   .\permute.ps1 src.us/overlay_gameplay/outside/145D70.c func_801372B4_146264 -j6 --best-only
#
# The function directory is created under nonmatchings/<func_name>/ inside the container.
# All arguments after the asm/func argument are forwarded directly to permuter.py.
#
# Common permuter options:
#   -j <N>   Use N parallel threads        (e.g. -j4)
#   -s <N>   Stop when score drops below N  (0 = perfect match)

param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$CFile,

    [Parameter(Mandatory=$true, Position=1)]
    [string]$AsmFileOrFuncName,

    [Parameter(ValueFromRemainingArguments=$true)]
    [string[]]$PermuterArgs
)

$Container = "bh-container"

# Verify the container is running
$running = docker ps --filter "name=$Container" --filter "status=running" --format "{{.Names}}" 2>$null
if ($running -ne $Container) {
    Write-Error "Container '$Container' is not running. Start it first."
    exit 1
}

# Import the function and capture output to find created directory
Write-Host "==> Importing $AsmFileOrFuncName from $CFile ..." -ForegroundColor Cyan
$importOutput = docker exec $Container python3 tools/decomp-permuter/import.py $CFile $AsmFileOrFuncName 2>&1
Write-Host $importOutput

if ($LASTEXITCODE -ne 0) {
    Write-Error "import.py failed."
    exit 1
}

# Parse the directory from "Done. Imported into nonmatchings/<dir>"
$doneLines = $importOutput | Where-Object { $_ -match "Done\. Imported into (.+)" }
if (-not $doneLines) {
    Write-Error "Could not parse the output directory from import.py output."
    exit 1
}

$funcDir = ($doneLines -replace ".*Done\. Imported into ", "").Trim()

Write-Host ""
Write-Host "==> Running permuter on $funcDir" -ForegroundColor Cyan
if ($PermuterArgs.Count -gt 0) {
    Write-Host "    Extra args: $($PermuterArgs -join ' ')" -ForegroundColor DarkGray
}
Write-Host ""

docker exec -it $Container python3 tools/decomp-permuter/permuter.py $funcDir @PermuterArgs
