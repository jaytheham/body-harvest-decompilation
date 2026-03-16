
$root = ".\asm\nonmatchings\overlay_gameplay\outside"

# Normalize the root path and capture its name
$rootAbs  = (Resolve-Path $root).Path
$rootName = Split-Path $rootAbs -Leaf
$rootLen  = $rootAbs.Length

Get-ChildItem -Path $root -Recurse -File |
  Sort-Object -Property Length |
  Select-Object -First 100 `
    @{Name='SizeBytes';Expression={$_.Length}}, `
    @{Name='Path';Expression={
        $rel = $_.FullName.Substring($rootLen).TrimStart('\')
        Join-Path $rootName $rel
      }} |
  Format-Table -AutoSize