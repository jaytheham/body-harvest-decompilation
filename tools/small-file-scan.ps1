
param(
    [int]$First = 200
)

$root = '.\asm\nonmatchings\overlay_gameplay\frontend'

# Normalize the root path and capture its length
$rootAbs = (Resolve-Path $root).Path
$rootLen = $rootAbs.Length
$rootPrefix = $root -replace '\\','/' -replace '^[./\\]+',''

$topFiles = Get-ChildItem -Path $root -Recurse -File |
  Sort-Object -Property Length |
  Select-Object -First $First

$results = @()

foreach ($file in $topFiles) {
    $rel = $file.FullName.Substring($rootLen).TrimStart('\\') -replace '\\','/'
    $asmPath = "$rootPrefix/$rel"
    $escapedAsmPath = [regex]::Escape($asmPath)
    $pragmaPattern = "^\s*#pragma\s+GLOBAL_ASM\(`"$escapedAsmPath`"\)\s*$"

    $matches = Get-ChildItem -Path ".\src.us" -Recurse -File -Include *.c |
        Select-String -Pattern $pragmaPattern -SimpleMatch:$false

    foreach ($match in $matches) {
        $lines = Get-Content -Path $match.Path
        $nextIndex = $match.LineNumber
        $nextLine = if ($nextIndex -lt $lines.Count) { $lines[$nextIndex].Trim() } else { "" }

        if ($nextLine -ne '#endif') {
            $results += $asmPath
        }
    }
}

if ($results.Count -eq 0) {
    Write-Output "No matching #pragma GLOBAL_ASM(...) occurrences found where next line is not #endif."
} else {
    $results | Select-Object -Unique
}