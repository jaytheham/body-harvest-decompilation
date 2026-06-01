param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$FunctionName
)

$script:ErrorActionPreference = 'Stop'

if (-not (Test-Path ".\tools\coddog\coddog.exe")) {
    Write-Error "coddog.exe not found at .\tools\coddog\coddog.exe"
    exit 1
}

Write-Host "Running coddog match for function: $FunctionName"

# run command and capture output (only first 3 lines with '%')
$oldEAP = $script:ErrorActionPreference
$script:ErrorActionPreference = 'Continue'
$result = & ".\tools\coddog\coddog.exe" match -t 0.65 $FunctionName 2>&1
$script:ErrorActionPreference = $oldEAP
$matches = $result | Select-String "%" | Select-Object -First 3

if ($matches) {
    $matches
} else {
    Write-Host "no results"
}
