# PowerShell wrapper for running the m2c converter
param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$Path
)

# Ensure we're in the repository root (script is expected to be run from repo root)
Push-Location (Split-Path -Parent $MyInvocation.MyCommand.Definition) | Out-Null
Set-Location ".."  # move up from tools to repo root

# Resolve the input path relative to repo root
$inputPath = $Path
if (-not (Test-Path $inputPath)) {
    # try appending .s if missing
    if (-not $inputPath.EndsWith('.s')) {
        $alt = "${inputPath}.s"
        if (Test-Path $alt) {
            $inputPath = $alt
        }
    }
}

if (-not (Test-Path $inputPath)) {
    Write-Error "Input file '$Path' not found (tried '$inputPath')."
    exit 1
}

# Execute the python script with the resolved filename
python tools/mips_to_c/m2c.py $inputPath

Pop-Location | Out-Null
