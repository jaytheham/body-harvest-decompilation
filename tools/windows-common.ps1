# Shared launcher; no activation or changes to the user's PATH are needed.
$ErrorActionPreference = 'Stop'

function Get-NativePython {
    $python = Join-Path $PSScriptRoot 'windows/venv/Scripts/python.exe'
    if (-not (Test-Path -LiteralPath $python)) {
        $python = $null
        if (Get-Command py -ErrorAction SilentlyContinue) {
            $candidate = & py -3.12 -c 'import sys; print(sys.executable)' 2>$null
            if ($LASTEXITCODE -eq 0) { $python = $candidate }
        }
        if (-not $python -and (Get-Command python -ErrorAction SilentlyContinue)) {
            $python = (Get-Command python).Source
        }
        if (-not $python) {
            throw 'Install 64-bit Python 3.12 from https://www.python.org/downloads/windows/ (enable the Python launcher), then retry.'
        }
    }
    return $python
}

function Invoke-NativeBuild {
    param([string[]]$BuildArguments)
    $python = Get-NativePython
    & $python (Join-Path $PSScriptRoot 'native_build.py') @BuildArguments
    if ($LASTEXITCODE -ne 0) { throw "Native build command failed (exit $LASTEXITCODE)." }
}
