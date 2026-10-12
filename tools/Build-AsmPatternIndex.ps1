<#
.SYNOPSIS
    Builds an index of normalized MIPS instructions from asm/matchings/ and asm/nonmatchings/.
.DESCRIPTION
    Parses all .s files in the matchings and nonmatchings directories, normalizes each
    instruction to be register/value agnostic, and outputs asm_pattern_index.json.
    Run this once (or whenever .s files change) before using Search-AsmPattern.ps1.
.EXAMPLE
    .\tools\Build-AsmPatternIndex.ps1
#>

param()

$ErrorActionPreference = "Stop"
$pythonScript = Join-Path $PSScriptRoot "build_asm_pattern_index.py"

if (-not (Test-Path $pythonScript)) {
    Write-Error "Build script not found at $pythonScript"
    exit 1
}

Write-Host "Build-AsmPatternIndex.ps1" -ForegroundColor Green
Write-Host ""

python $pythonScript 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Error "Index build failed with exit code $LASTEXITCODE"
    exit 1
}
