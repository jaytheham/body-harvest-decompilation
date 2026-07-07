<#
.SYNOPSIS
    Searches for functions containing the same normalized ASM instruction sequence.
.DESCRIPTION
    Given a ROM offset and instruction count, finds all functions across both
    asm/matchings/ and asm/nonmatchings/ that contain the exact same instruction
    pattern (ignoring register names and literal values).
    Matching results are shown before nonmatching results.
.PARAMETER Offset
    ROM file offset in hex (e.g., 0x884C0).
.PARAMETER Count
    Number of instructions to match.
.PARAMETER IndexPath
    Path to asm_pattern_index.json (default: asm_pattern_index.json in workspace root).
.EXAMPLE
    .\tools\Search-AsmPattern.ps1 -Offset 0x884C0 -Count 5
    .\tools\Search-AsmPattern.ps1 -Offset 0x1050 -Count 10
#>

param(
    [Parameter(Mandatory = $true)]
    [string]$Offset,

    [Parameter(Mandatory = $true)]
    [int]$Count,

    [string]$IndexPath = (Join-Path (Join-Path $PSScriptRoot "..") "asm_pattern_index.json")
)

$ErrorActionPreference = "Stop"
$pythonScript = Join-Path $PSScriptRoot "search_asm_pattern.py"

if (-not (Test-Path $pythonScript)) {
    Write-Error "Search tool not found at $pythonScript"
    exit 1
}

Write-Host "Search-AsmPattern.ps1" -ForegroundColor Green
Write-Host ""

python $pythonScript --offset $Offset --count $Count --index $IndexPath 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Error "Search failed with exit code $LASTEXITCODE"
    exit 1
}
