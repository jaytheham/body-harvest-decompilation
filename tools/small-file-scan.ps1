
$root = ".\asm\nonmatchings\overlay_gameplay\outside"

# Normalize the root path and capture its length
$rootAbs = (Resolve-Path $root).Path
$rootLen = $rootAbs.Length
$rootPrefix = 'asm/nonmatchings/overlay_gameplay/outside'

Get-ChildItem -Path $root -Recurse -File |
  Sort-Object -Property Length |
  Select-Object -First 100 |
  ForEach-Object {
    $rel = $_.FullName.Substring($rootLen).TrimStart('\\') -replace '\\','/'
    "$rootPrefix/$rel"
  }