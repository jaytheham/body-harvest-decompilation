<#
.SYNOPSIS
    Searches the reference index for blocks of assembly similar to a given ROM range.
.DESCRIPTION
    Given a ROM file offset and byte size in Body Harvest's baserom.us.z64,
    delegates to the Python search tool (tools/search_asm.py) to find matching
    patterns from reference repos. Registered-agnostic matching.
.PARAMETER Offset
    ROM file offset in hex (e.g., 0x16B0D4).
.PARAMETER Size
    Number of bytes to search in hex (e.g., 0x7C).
.PARAMETER RomPath
    Path to Body Harvest baserom.z64 (default: baserom.us.z64 in workspace root).
.PARAMETER IndexPath
    Path to reference index JSON (default: reference_index.json in workspace root).
.PARAMETER Threshold
    Minimum similarity score 0.0-1.0 (default: 0.3).
.PARAMETER MaxResults
    Maximum number of results to show (default: 10).
.EXAMPLE
    .\tools\Search-AsmMatch.ps1 -Offset 0x16B0D4 -Size 0x7C
    .\tools\Search-AsmMatch.ps1 -Offset 0x16AF30 -Size 0x9C -Threshold 0.5
#>

param(
    [Parameter(Mandatory = $true)]
    [string]$Offset,
    [Parameter(Mandatory = $true)]
    [string]$Size,
    [string]$RomPath = (Join-Path (Join-Path $PSScriptRoot "..") "baserom.us.z64"),
    [string]$IndexPath = (Join-Path (Join-Path $PSScriptRoot "..") "reference_index.json"),
    [double]$Threshold = 0.3,
    [int]$MaxResults = 10
)

$ErrorActionPreference = "Stop"
$pythonScript = Join-Path $PSScriptRoot "search_asm.py"

if (-not (Test-Path $pythonScript)) {
    Write-Error "Python search tool not found at $pythonScript"
    exit 1
}

Write-Host "Search-AsmMatch.ps1 (PowerShell wrapper)" -ForegroundColor Green
Write-Host ""

python $pythonScript --offset $Offset --size $Size --rom $RomPath --index $IndexPath --threshold $Threshold --max-results $MaxResults 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Error "Search failed with exit code $LASTEXITCODE"
    exit 1
}

