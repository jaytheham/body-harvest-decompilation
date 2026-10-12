# Shared launcher; no activation or changes to the user's PATH are needed.
$ErrorActionPreference = 'Stop'

function Get-NativePython {
    # Windows PowerShell 5.1 turns a native command's stderr into a terminating error under 'Stop', even when it is
    # redirected, so a missing 'py -3.12' would end the search before 3.11 or 'python' is tried.
    $ErrorActionPreference = 'Continue'
    $python = Join-Path $PSScriptRoot 'windows/venv/Scripts/python.exe'
    if (-not (Test-Path -LiteralPath $python)) {
        $python = $null
        if (Get-Command py -ErrorAction SilentlyContinue) {
            foreach ($version in '3.12', '3.11') {
                $candidate = & py "-$version" -c 'import sys; print(sys.executable)' 2>$null
                if ($LASTEXITCODE -eq 0) { $python = $candidate; break }
            }
        }
        if (-not $python -and (Get-Command python -ErrorAction SilentlyContinue)) {
            $python = (Get-Command python).Source
        }
        if (-not $python) {
            throw 'Install 64-bit Python 3.12 (3.11.4 to 3.12 works) from https://www.python.org/downloads/windows/ (enable the Python launcher), then retry.'
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
