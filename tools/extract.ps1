param(
    [Parameter(Mandatory=$false)]
    [ValidateSet('us','eu', IgnoreCase=$true)]
    [string]$Version = 'us'
)

# Clean output directories before extracting new files
if (Test-Path 'asm') {
    Remove-Item -Recurse -Force 'asm'
}
if (Test-Path 'assets') {
    Remove-Item -Recurse -Force 'assets'
}

$versionArg = $Version.ToLower()

docker exec -it bh-container bash -c "make extract VERSION=$versionArg"