# Optional: extract.ps1 and make.ps1 also perform setup automatically.
. (Join-Path $PSScriptRoot 'windows-common.ps1')
Invoke-NativeBuild -BuildArguments @('setup')
