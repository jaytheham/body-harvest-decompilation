<#
.SYNOPSIS
    Builds a searchable index of normalized MIPS instructions from reference N64 decomp repos.
.DESCRIPTION
    Delegates to the Python index builder (tools/build_index.py) which is much faster.
    Run this once (or whenever reference repos are added/updated) before using Search-AsmMatch.ps1.
.PARAMETER Mode
    Normalization mode: 'strict', 'relaxed', or 'opcode-only' (default).
.PARAMETER WindowSize
    Number of instructions per sliding window (default: 5).
.PARAMETER RepoFilter
    Optional; only index repos matching this name pattern.
.PARAMETER OutputPath
    Path where the index JSON will be saved.
.EXAMPLE
    .\tools\Build-ReferenceIndex.ps1
    .\tools\Build-ReferenceIndex.ps1 -Mode relaxed
#>

param(
    [ValidateSet('strict', 'relaxed', 'opcode-only')]
    [string]$Mode = 'opcode-only',
    [int]$WindowSize = 5,
    [string]$RepoFilter = '*',
    [string]$OutputPath = (Join-Path (Join-Path $PSScriptRoot "..") "reference_index.json")
)

$ErrorActionPreference = "Stop"
$pythonScript = Join-Path $PSScriptRoot "build_index.py"

if (-not (Test-Path $pythonScript)) {
    Write-Error "Python index builder not found at $pythonScript"
    exit 1
}

$referencePath = Join-Path (Join-Path $PSScriptRoot "..") "reference"

$modeFlag = ""
if ($Mode -eq 'relaxed') { $modeFlag = "--relaxed" }
if ($Mode -eq 'opcode-only') { $modeFlag = "--opcode-only" }

$filterFlag = ""
if ($RepoFilter -ne '*') { $filterFlag = "--repo-filter", $RepoFilter }

Write-Host "Build-ReferenceIndex.ps1 (PowerShell wrapper)" -ForegroundColor Green
Write-Host "Mode: $Mode, Window size: $WindowSize" -ForegroundColor Gray
Write-Host ""

& python $pythonScript --reference-path $referencePath --window-size $WindowSize $modeFlag --output $OutputPath --repo-filter $RepoFilter 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Error "Index building failed with exit code $LASTEXITCODE"
    exit 1
}
