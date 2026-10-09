param(
    [Parameter(Mandatory=$false)]
    [ValidateSet('us','eu', IgnoreCase=$true)]
    [string]$Version = 'us',
    [switch]$Docker
)

$ErrorActionPreference = 'Stop'
if ($Docker) {
    & docker exec bh-container test -f /bh/bh.us.yaml
    if ($LASTEXITCODE -ne 0) { throw 'bh-container is not mounted at the repository root. Restart it using StartContainer.ps1.' }
    & docker exec bh-container make extract "VERSION=$($Version.ToLower())"
    if ($LASTEXITCODE -ne 0) { throw "Docker extraction failed (exit $LASTEXITCODE)." }
    return
}

. (Join-Path $PSScriptRoot 'windows-common.ps1')
Invoke-NativeBuild -BuildArguments @('extract', '--version', $Version.ToLower())
