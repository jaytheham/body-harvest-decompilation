<#
.SYNOPSIS
    Builds a searchable index of normalized MIPS instructions from reference N64 decomp repos.
.DESCRIPTION
    Delegates to the Python index builder (tools/build_index.py) which is much faster.
    Run this once (or whenever reference repos are added/updated) before using Search-AsmMatch.ps1.
.PARAMETER Mode
    Normalization mode: 'strict', 'relaxed', or 'opcode-only' (default).
.PARAMETER WindowSize
    Number of instructions per sliding window (default: 5).
.PARAMETER RepoFilter
    Optional; only index repos matching this name pattern.
.PARAMETER OutputPath
    Path where the index JSON will be saved.
.EXAMPLE
    .\tools\Build-ReferenceIndex.ps1
    .\tools\Build-ReferenceIndex.ps1 -Mode relaxed
#>

param(
    [ValidateSet('strict', 'relaxed', 'opcode-only')]
    [string]$Mode = 'opcode-only',
    [int]$WindowSize = 5,
    [string]$RepoFilter = '*',
    [string]$OutputPath = (Join-Path (Join-Path $PSScriptRoot "..") "reference_index.json")
)

$ErrorActionPreference = "Stop"
$pythonScript = Join-Path $PSScriptRoot "build_index.py"

if (-not (Test-Path $pythonScript)) {
    Write-Error "Python index builder not found at $pythonScript"
    exit 1
}

$modeFlag = ""
if ($Mode -eq 'relaxed') { $modeFlag = "--relaxed" }
if ($Mode -eq 'opcode-only') { $modeFlag = "--opcode-only" }

Write-Host "Build-ReferenceIndex.ps1 (PowerShell wrapper)" -ForegroundColor Green
Write-Host "Mode: $Mode, Window size: $WindowSize" -ForegroundColor Gray
Write-Host ""

& python $pythonScript --window-size $WindowSize $modeFlag --output $OutputPath 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Error "Index building failed with exit code $LASTEXITCODE"
    exit 1
}
    <#
    Parses a splat-style yaml and extracts all c/asm code subsegments
    with their ROM offset ranges and source file paths.
    Returns a list of hashtables with keys: StartOffset, EndOffset, SourceFile
    #>
    param(
        [string]$YamlPath,
        [string]$RepoRoot,
        [string]$DefaultSrcPath = "src"
    )

    $doc = Invoke-PythonYamlParse -YamlPath $YamlPath
    if (-not $doc -or -not $doc.segments) {
        Write-Warning "No segments found in $YamlPath"
        return @()
    }

    $segments = @()
    foreach ($seg in $doc.segments) {
        if ($seg.type -ne "code") { continue }
        $segStart = if ($seg.start -is [int]) { $seg.start } else { [System.Convert]::ToInt32($seg.start, 16) }
        $subs = $seg.subsegments
        if (-not $subs) { continue }

        # Resolve src_path: project-level option can override default
        $srcPath = $DefaultSrcPath
        if ($doc.options -and $doc.options.src_path) {
            $srcPath = $doc.options.src_path
        }

        # Overlay dir can override the base path for overlays
        $overlayDir = if ($seg.dir) { $seg.dir } else { $null }

        # We need subsegment boundaries from the 'start' field of each subsegment
        # Handle both inline array [offset, type, name] and object {start:..., type:..., name:...}
        $subEntries = @()
        foreach ($sub in $subs) {
            if ($sub -is [System.Collections.IList]) {
                # Inline array format: [offset, type, name]
                $subStart = if ($sub[0] -is [int]) { $sub[0] } else { [System.Convert]::ToInt32($sub[0], 16) }
                $subType = [string]$sub[1]
                $subName = [string]$sub[2]
                if ($subType -eq "auto" -and $sub.Count -ge 3) {
                    $subType = [string]$sub[1]
                    $subName = [string]$sub[2]
                }
                $subEntries += @{
                    StartOffset = $subStart
                    Type = $subType
                    Name = $subName
                }
            } elseif ($sub -is [PSCustomObject]) {
                $sb = $sub
                $subProps = @{}
                $sb.PSObject.Properties | ForEach-Object { $subProps[$_.Name] = $_.Value }

                if (-not $subProps.ContainsKey("start")) { continue }
                $subStart = if ($subProps["start"] -is [int]) { $subProps["start"] } else { [System.Convert]::ToInt32($subProps["start"], 16) }
                $subType = if ($subProps.ContainsKey("type")) { [string]$subProps["type"] } else { "c" }
                $subName = if ($subProps.ContainsKey("name")) { [string]$subProps["name"] } else { "" }

                $subEntries += @{
                    StartOffset = $subStart
                    Type = $subType
                    Name = $subName
                }
            }
        }

        # Sort by start offset and deduce end offsets from the next entry
        $subEntries = $subEntries | Sort-Object StartOffset
        for ($i = 0; $i -lt $subEntries.Count; $i++) {
            $entry = $subEntries[$i]
            # Only index code types (c, asm, hasm)
            $codeTypes = @("c", "asm", "hasm")
            if ($entry.Type -notin $codeTypes) { continue }

            # Determine end offset
            if ($i + 1 -lt $subEntries.Count) {
                $endOffset = $subEntries[$i + 1].StartOffset
            } else {
                # Last subsegment - estimate size (e.g., 0x1000 = 4KB default)
                $endOffset = $entry.StartOffset + 0x1000
            }

            # Build source file path
            $srcFile = ""
            if ($overlayDir) {
                $srcFile = Join-Path $overlayDir "$($entry.Name).c"
            } else {
                $srcFile = "$($entry.Name).c"
            }

            $segments += @{
                StartOffset = $entry.StartOffset
                EndOffset   = $endOffset
                SourceFile  = $srcFile.Replace('\', '/')
                SourceRoot  = $srcPath
            }
        }
    }
    return $segments
}

function Get-Sf64Segments {
    <#
    SF64 stores segment definitions across multiple yaml files.
    This reads header.yaml, main.yaml, and overlays.yaml and merges them.
    #>
    param([string]$RepoRoot)

    # Determine which rev folder to use
    $yamlDirs = Get-ChildItem (Join-Path $RepoRoot "yamls") -Recurse -Directory
    $revDir = $null
    foreach ($d in $yamlDirs) {
        if (Test-Path (Join-Path $d.FullName "header.yaml")) {
            $revDir = $d.FullName
            break
        }
    }
    if (-not $revDir) { return @() }

    $allSegments = @()
    $yamlFiles = @("main.yaml", "overlays.yaml")
    foreach ($yf in $yamlFiles) {
        $yp = Join-Path $revDir $yf
        if (-not (Test-Path $yp)) { continue }

        $doc = Invoke-PythonYamlParse -YamlPath $yp
        if (-not $doc -or $doc -isnot [System.Collections.IList]) { continue }

        foreach ($seg in $doc) {
            if ($seg.type -ne "code") { continue }

            $segStart = if ($seg.start -is [int]) { $seg.start } else { [System.Convert]::ToInt32($seg.start, 16) }
            $subs = $seg.subsegments
            if (-not $subs) { continue }

            $overlayDir = if ($seg.dir) { $seg.dir } else { $null }
            $srcPath = "src"

            $subEntries = @()
            foreach ($sub in $subs) {
                if ($sub -is [System.Collections.IList]) {
                    $rawStart = $sub[0]
                    if ($rawStart -eq "auto") {
                        # auto-offset subsegment: skip for now
                        continue
                    }
                    $subStart = if ($rawStart -is [int]) { $rawStart } else { [System.Convert]::ToInt32($rawStart, 16) }
                    $subType = [string]$sub[1]
                    $subName = [string]$sub[2]
                    $subEntries += @{
                        StartOffset = $subStart
                        Type = $subType
                        Name = $subName
                    }
                }
            }

            $subEntries = $subEntries | Sort-Object StartOffset
            for ($i = 0; $i -lt $subEntries.Count; $i++) {
                $entry = $subEntries[$i]
                $codeTypes = @("c", "asm", "hasm")
                if ($entry.Type -notin $codeTypes) { continue }

                if ($i + 1 -lt $subEntries.Count) {
                    $endOffset = $subEntries[$i + 1].StartOffset
                } else {
                    $endOffset = $entry.StartOffset + 0x1000
                }

                if ($overlayDir) {
                    $srcFile = "$overlayDir/$($entry.Name).c"
                } else {
                    $srcFile = "$($entry.Name).c"
                }

                $allSegments += @{
                    StartOffset = $entry.StartOffset
                    EndOffset   = $endOffset
                    SourceFile  = $srcFile
                    SourceRoot  = $srcPath
                }
            }
        }
    }
    return $allSegments
}

# ─── Index Building ───────────────────────────────────────────────────────────

function Build-RepoIndex {
    param(
        [string]$RepoPath,
        [string]$RepoName,
        [int]$WindowSize
    )

    Write-Host "  Indexing $RepoName ..." -ForegroundColor Cyan

    # Detect repo type and get code segments
    $segments = @()

    # Try splat yaml first (most common)
    $yamlFiles = Get-ChildItem $RepoPath -Filter "*.yaml" -File
    foreach ($yf in $yamlFiles) {
        $segs = Get-CodeSegmentsFromSplatYaml -YamlPath $yf.FullName -RepoRoot $RepoPath
        if ($segs.Count -gt 0) {
            $segments += $segs
        }
    }

    # Try Pilotwings64-style: config/us/*.yaml
    $configDirs = Get-ChildItem (Join-Path $RepoPath "config") -Directory -ErrorAction SilentlyContinue
    foreach ($cd in $configDirs) {
        $yfs = Get-ChildItem $cd.FullName -Filter "*.yaml" -File
        foreach ($yf in $yfs) {
            $segs = Get-CodeSegmentsFromSplatYaml -YamlPath $yf.FullName -RepoRoot $RepoPath
            if ($segs.Count -gt 0) {
                $segments += $segs
            }
        }
    }

    # Try sf64-style: yamls/*/rev*/main.yaml + overlays.yaml
    $sf64segs = Get-Sf64Segments -RepoRoot $RepoPath
    if ($sf64segs.Count -gt 0) {
        $segments += $sf64segs
    }

    if ($segments.Count -eq 0) {
        Write-Host "    No code segments found, skipping." -ForegroundColor Yellow
        return $null
    }

    Write-Host "    Found $($segments.Count) code regions" -ForegroundColor Gray

    # Read the ROM
    $romPath = Join-Path $RepoPath "baserom.z64"
    if (-not (Test-Path $romPath)) {
        # Try baserom.us.z64
        $romPath = Join-Path $RepoPath "baserom.us.z64"
    }
    if (-not (Test-Path $romPath)) {
        # Try starfox64.us.rev1.uncompressed.z64
        $romPath = Join-Path $RepoPath "baserom.us.rev1.uncompressed.z64"
    }
    if (-not (Test-Path $romPath)) {
        Write-Warning "    No baserom.z64 found in $RepoPath, skipping."
        return $null
    }

    $romBytes = [System.IO.File]::ReadAllBytes($romPath)
    $romSize = $romBytes.Length

    Write-Host "    ROM size: $romSize bytes" -ForegroundColor Gray

    # Process each segment
    $hashIndex = New-Object 'System.Collections.Generic.Dictionary[string, System.Collections.Generic.List[hashtable]]'
    $fileIndex = @{}

    $totalInstructions = 0
    $totalWindows = 0
    $normList = New-Object 'System.Collections.Generic.List[uint32]' 65536

    foreach ($seg in $segments) {
        $startOff = $seg.StartOffset
        $endOff = $seg.EndOffset
        $srcFile = $seg.SourceFile
        $srcRoot = $seg.SourceRoot

        # Clamp to ROM size
        if ($startOff -ge $romSize) { continue }
        if ($endOff -gt $romSize) { $endOff = $romSize }
        if ($endOff -le $startOff) { continue }

        # Build the full source file path
        $fullSrcPath = Join-Path (Join-Path $RepoPath $srcRoot) $srcFile

        # Track file info
        $fileKey = $fullSrcPath
        if (-not $fileIndex.ContainsKey($fileKey)) {
            $fileIndex[$fileKey] = @{
                RepoName    = $RepoName
                SourceRoot  = $srcRoot
                SourceFile  = $srcFile
                Segments    = New-Object 'System.Collections.Generic.List[hashtable]'
            }
        }
        $fileIndex[$fileKey].Segments.Add(@{ StartOffset = $startOff; EndOffset = $endOff })

        # Read and normalize instructions into a flat list
        $normList.Clear()
        for ($off = $startOff; $off + 4 -le $endOff; $off += 4) {
            $inst = ([UInt32]$romBytes[$off] -shl 24) -bor
                    ([UInt32]$romBytes[$off + 1] -shl 16) -bor
                    ([UInt32]$romBytes[$off + 2] -shl 8) -bor
                    [UInt32]$romBytes[$off + 3]

            $norm = Get-NormalizedInstruction -Inst $inst
            if ($norm -eq 0) { continue }
            $normList.Add($norm)
        }

        $totalInstructions += $normList.Count
        if ($normList.Count -lt $WindowSize) { continue }

        for ($i = 0; $i -le $normList.Count - $WindowSize; $i++) {
            # Build hash string: "{X8}{X8}{X8}{X8}{X8}"
            $hashStr = "{0:X8}{1:X8}{2:X8}{3:X8}{4:X8}" -f $normList[$i], $normList[$i+1], $normList[$i+2], $normList[$i+3], $normList[$i+4]

            $record = @{
                RepoName   = $RepoName
                RomOffset  = $startOff + $i * 4
                SourceFile = $srcFile
                SourceRoot = $srcRoot
            }

            $list = $null
            if (-not $hashIndex.TryGetValue($hashStr, [ref]$list)) {
                $list = New-Object 'System.Collections.Generic.List[hashtable]'
                $hashIndex[$hashStr] = $list
            }
            $list.Add($record)
            $totalWindows++
        }
    }

    Write-Host "    Indexed $totalInstructions instructions, $totalWindows windows" -ForegroundColor Gray
    return @{
        RepoName        = $RepoName
        HashIndex       = $hashIndex
        FileIndex       = $fileIndex
        TotalWindows    = $totalWindows
        TotalInstrs     = $totalInstructions
    }
}

# ─── Main ─────────────────────────────────────────────────────────────────────

Write-Host "Build-ReferenceIndex.ps1" -ForegroundColor Green
Write-Host "Reference path: $ReferencePath" -ForegroundColor Gray
Write-Host "Output: $OutputPath" -ForegroundColor Gray
Write-Host "Window size: $WindowSize instructions" -ForegroundColor Gray
Write-Host ""

# Find reference repos
$repos = Get-ChildItem $ReferencePath -Directory
$repos = $repos | Where-Object { $_.Name -like $RepoFilter }

if ($repos.Count -eq 0) {
    Write-Error "No reference repos found in $ReferencePath"
    exit 1
}

Write-Host "Found $($repos.Count) reference repos:" -ForegroundColor Green
foreach ($r in $repos) { Write-Host "  - $($r.Name)" -ForegroundColor Gray }
Write-Host ""

$allRepoData = @{}
$combinedHashIndex = New-Object 'System.Collections.Generic.Dictionary[string, System.Collections.Generic.List[hashtable]]'
$combinedFileIndex = @{}
$totalWindows = 0
$totalRepos = 0

foreach ($repo in $repos) {
    $result = Build-RepoIndex -RepoPath $repo.FullName -RepoName $repo.Name -WindowSize $WindowSize
    if ($result) {
        $totalRepos++

        # Merge hash index
        foreach ($kv in $result.HashIndex.GetEnumerator()) {
            $merged = $null
            if (-not $combinedHashIndex.TryGetValue($kv.Key, [ref]$merged)) {
                $merged = New-Object 'System.Collections.Generic.List[hashtable]'
                $combinedHashIndex[$kv.Key] = $merged
            }
            $merged.AddRange($kv.Value)
        }

        # Merge file index
        foreach ($kv in $result.FileIndex.GetEnumerator()) {
            if (-not $combinedFileIndex.ContainsKey($kv.Key)) {
                $combinedFileIndex[$kv.Key] = $kv.Value
            } else {
                $combinedFileIndex[$kv.Key].Segments.AddRange($kv.Value.Segments)
            }
        }

        $totalWindows += $result.TotalWindows
        $allRepoData[$repo.Name] = @{
            TotalWindows = $result.TotalWindows
            TotalInstrs  = $result.TotalInstrs
        }
    }
}

Write-Host ""
Write-Host "Indexing complete!" -ForegroundColor Green
Write-Host "  Repos indexed: $totalRepos"
Write-Host "  Total windows: $totalWindows"
foreach ($kv in $allRepoData.GetEnumerator()) {
    Write-Host "    $($kv.Key): $($kv.Value.TotalWindows) windows, $($kv.Value.TotalInstrs) instructions" -ForegroundColor Gray
}

# Convert Generic Lists to arrays for JSON serialization, and convert generic list segments too
$hashIndexForJson = @{}
foreach ($kv in $combinedHashIndex.GetEnumerator()) {
    $hashIndexForJson[$kv.Key] = $kv.Value.ToArray()
}

$fileIndexForJson = @{}
foreach ($kv in $combinedFileIndex.GetEnumerator()) {
    $f = $kv.Value
    $fileIndexForJson[$kv.Key] = @{
        RepoName   = $f.RepoName
        SourceRoot = $f.SourceRoot
        SourceFile = $f.SourceFile
        Segments   = $f.Segments.ToArray()
    }
}

# Build serializable output
$output = @{
    IndexVersion = 1
    WindowSize   = $WindowSize
    BuildDate    = (Get-Date -Format "yyyy-MM-dd HH:mm:ss")
    Repos        = $allRepoData
    HashIndex    = $hashIndexForJson
    FileIndex    = $fileIndexForJson
}

$json = $output | ConvertTo-Json -Depth 10 -Compress
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText($OutputPath, $json, $utf8NoBom)

Write-Host ""
Write-Host "Index saved to: $OutputPath" -ForegroundColor Cyan
Write-Host "Index size: $([math]::Round($json.Length / 1MB, 2)) MB" -ForegroundColor Gray
