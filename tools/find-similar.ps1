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

# run command and capture output
& ".\tools\coddog\coddog.exe" match -t 0.7 $FunctionName | Select-String "\(decompiled\)" | Select-Object -First 3
