param(
    [Parameter(Mandatory=$false)]
    [ValidateSet('us','eu', IgnoreCase=$true)]
    [string]$Version = 'us'
)

$versionArg = $Version.ToLower()

docker exec -it bh-container bash -c "make extract VERSION=$versionArg"