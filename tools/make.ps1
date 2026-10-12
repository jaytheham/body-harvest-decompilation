param(
    [ValidateSet('us','eu')][string]$Version = 'us',
    [ValidateRange(1,256)][int]$Jobs = [Math]::Min([Environment]::ProcessorCount, 8),
    [switch]$NonMatching,
    [switch]$Rebuild,
    [switch]$VerboseBuild,
    [switch]$Docker
)

$ErrorActionPreference = 'Stop'
if ($Docker) {
    $matching = if ($NonMatching) { 'NON_MATCHING=1' } else { 'NON_MATCHING=0' }
    & docker exec bh-container make "-j$Jobs" QUIET=1 "VERSION=$($Version.ToLower())" $matching
    if ($LASTEXITCODE -ne 0) { throw "Docker build failed (exit $LASTEXITCODE)." }
    return
}

. (Join-Path $PSScriptRoot 'windows-common.ps1')
$buildArgs = @('build', '--version', $Version.ToLower(), '--jobs', "$Jobs")
if ($NonMatching) { $buildArgs += '--non-matching' }
if ($Rebuild) { $buildArgs += '--rebuild' }
if (-not $VerboseBuild) { $buildArgs += '--quiet' }
Invoke-NativeBuild -BuildArguments $buildArgs
