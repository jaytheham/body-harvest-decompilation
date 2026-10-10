#!/usr/bin/env pwsh
# Run asm-differ using the native Windows Python and MIPS binutils.
# Usage:
#   .\diff.ps1 <function name> [<function name with offset>] [--show=target|current] [--structural] [--show-score]
#
# The second argument is expected to be in the form "func_XXXXXXXX_XXXXXX"
# (e.g. "func_8012EC3C_13DBEC").  The part after the last underscore is
# automatically extracted and prefixed with "0x" before being passed to
# diff.py as the ROM address of the next function.  If omitted, only the
# function name is passed.
#
# When --show=target is provided, --diff_mode=single_base is passed to diff.py.
# When --show=current is provided, --diff_mode=single is passed to diff.py.
# When --structural is provided, --structural is passed to diff.py, which
# reports only structural/logical differences (different instructions, offsets,
# or control flow) while ignoring register allocation differences.

param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$FuncName,

    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$RemainingArgs
)

$ErrorActionPreference = 'Stop'
. (Join-Path $PSScriptRoot 'windows-common.ps1')
$python = Get-NativePython

$NextAddr = ''
$diffModeArg = ''
$structuralArg = ''
$showScore = $false
foreach ($arg in $RemainingArgs) {
    if ($arg -like '--show=*') {
        $showValue = $arg -replace '^--show=', ''
        switch ($showValue) {
            'target' { $diffModeArg = '--diff_mode=single_base' }
            'current' { $diffModeArg = '--diff_mode=single' }
            default {
                Write-Error "Unknown value for --show: $showValue. Expected 'target' or 'current'."
                exit 1
            }
        }
    } elseif ($arg -eq '--structural') {
        $structuralArg = '--structural'
    } elseif ($arg -eq '--show-score') {
        $showScore = $true
    } elseif (-not $NextAddr -and -not ($arg -like '--*')) {
        # Treat the first non-flag argument as the optional function+offset string.
        # Extract the offset from after the last underscore.
        $lastUnderscore = $arg.LastIndexOf('_')
        if ($lastUnderscore -ge 0 -and $lastUnderscore -lt $arg.Length - 1) {
            $NextAddr = $arg.Substring($lastUnderscore + 1)
        } else {
            Write-Error "Second argument '$arg' does not contain an underscore-separated offset."
            exit 1
        }
    } else {
        Write-Error "Unknown argument: $arg"
        exit 1
    }
}

# Pass arguments directly, so paths and function names need no shell quoting.
$diffArgs = @((Join-Path $PSScriptRoot 'asm-differ/diff.py'), '--no-pager')
if (-not $diffModeArg) { $diffArgs += @('--compress-matching', '3') }
if ($diffModeArg) { $diffArgs += $diffModeArg }
if ($structuralArg) { $diffArgs += $structuralArg }
$diffArgs += $FuncName
if ($NextAddr) { $diffArgs += "0x$NextAddr" }

# diff_settings.py and ROM/map paths are relative to the repository root.
Push-Location (Join-Path $PSScriptRoot '..')
try {
    if ($showScore) {
        & $python @diffArgs
    } else {
        & $python @diffArgs | ForEach-Object {
            $_ -replace '^(TARGET\s+)CURRENT \([0-9]+\)', '$1CURRENT'
        }
    }
    $diffExitCode = $LASTEXITCODE
} finally {
    Pop-Location
}
exit $diffExitCode
