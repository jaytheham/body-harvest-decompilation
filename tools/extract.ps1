param(
    [Parameter(Mandatory=$false)]
    [ValidateSet('us','eu', IgnoreCase=$true)]
    [string]$Version = 'us'
)

# Check the container's repository before removing generated files.
docker exec bh-container test -f /bh/bh.us.yaml
if ($LASTEXITCODE -ne 0) {
    throw 'bh-container is not mounted at the repository root. Restart it using StartContainer.ps1 from this repository.'
}

# Clean output directories before extracting new files
if (Test-Path 'asm') {
    Remove-Item -Recurse -Force 'asm'
}
if (Test-Path 'assets') {
    Remove-Item -Recurse -Force 'assets'
}

$versionArg = $Version.ToLower()

docker exec -it bh-container bash -c "make extract VERSION=$versionArg"
