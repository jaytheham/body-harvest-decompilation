<#
.SYNOPSIS
    Shows a function's stack frame layout from its compiled C output.
.DESCRIPTION
    Disassembles a function from the compiled ELF (or compiles it with
    -DNON_MATCHING first if needed) and displays its stack frame as a
    diagram showing saved registers, argument spills, local variables,
    and gaps.
.PARAMETER FunctionName
    The function name, e.g. "func_80084980_16CA40".
.PARAMETER SourceFile
    Optional path to the C source file, e.g. "src.us/overlay_gameplay/inside/16AF30.c".
    If omitted, the tool searches for the function in the C source tree.
.PARAMETER ForceCompile
    Force recompilation of the C code even if the function is already in the ELF.
    Useful when you've changed the C code and want to see the new layout.
.EXAMPLE
    .\tools\Show-StackLayout.ps1 func_80084980_16CA40
    .\tools\Show-StackLayout.ps1 func_80084980_16CA40 -SourceFile src.us/overlay_gameplay/inside/16AF30.c
    .\tools\Show-StackLayout.ps1 func_8000091C_151C
#>

param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$FunctionName,

    [string]$SourceFile,

    [switch]$ForceCompile
)

$ErrorActionPreference = 'Stop'

# ── Resolve repo root ──────────────────────────────────────────────────
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$repoRoot  = (Resolve-Path (Join-Path $scriptDir '..')).Path
Set-Location $repoRoot

# ── Color helpers ──────────────────────────────────────────────────────
function ColorWrite {
    param([string]$Text, [string]$Color)
    if ($Color) { Write-Host $Text -ForegroundColor $Color -NoNewline }
    else        { Write-Host $Text -NoNewline }
}

function Write-Box {
    param([string]$Title, [string]$Subtitle)
    Write-Host ("-" * 58)
    ColorWrite '  ' 'Gray'
    ColorWrite $Title 'Magenta'
    Write-Host ''
    if ($Subtitle) {
        ColorWrite '  ' 'Gray'
        ColorWrite $Subtitle 'Cyan'
        Write-Host ''
    }
    Write-Host ("-" * 58)
    Write-Host ''
}

function Format-HexOffset {
    param([int]$Value)
    return '0x' + $Value.ToString('X').PadLeft(4, '0')
}

# ── Step 1: Find the C source file ────────────────────────────────────
if (-not $SourceFile -or -not (Test-Path $SourceFile)) {
    # Search for the function name in all .c files
    $found = $null
    $searchRoots = @("src.us")
    foreach ($root in $searchRoots) {
        $files = Get-ChildItem -Path $root -Recurse -Filter "*.c" -File | Select-Object -ExpandProperty FullName
        $matches = Select-String -Path $files -Pattern "\b$FunctionName\s*\(" -SimpleMatch:$false
        if ($matches -and $matches.Count -gt 0) {
            $found = $matches[0].Path
            break
        }
    }
    if (-not $found) {
        Write-Error "Could not find C source containing function '$FunctionName'. Provide -SourceFile."
        exit 1
    }
    $sourceFullPath = $found
} else {
    $sourceFullPath = $SourceFile
    if (-not (Test-Path $sourceFullPath)) {
        $sourceFullPath = Join-Path $repoRoot $SourceFile
    }
}

# Normalize sourceFullPath to absolute path
$sourceFullPath = (Resolve-Path $sourceFullPath).Path

# Derive SourceFile as path relative to repo root (for Docker usage)
$normRoot = $repoRoot.Replace('/', '\').TrimEnd('\')
$normPath = $sourceFullPath.Replace('/', '\')
if ($normPath.StartsWith($normRoot)) {
    $SourceFile = $normPath.Substring($normRoot.Length + 1) -replace '\\', '/'
} else {
    $SourceFile = $normPath -replace '\\', '/'
}

# Clean up SourceFile for display (show relative path)
# Show clean relative source path
$displaySource = $SourceFile -replace '^.*[/\\]src\.(us|eu)[/\\]', 'src.$1/'
Write-Host "Source: $displaySource"

# ── Step 2: Determine if function is NON_MATCHING ─────────────────────
$sourceContent = Get-Content $sourceFullPath -Raw
$isNonMatching = $sourceContent -match '#ifdef\s+NON_MATCHING' -and
                 $sourceContent -match "#pragma\s+GLOBAL_ASM\(""([^""]*$FunctionName[^""]*)""\)"

$header = "Compiled C stack layout"
$subtitle = "Source: $displaySource"
if ($isNonMatching) {
    $subtitle += "  [NON_MATCHING - will compile with -DNON_MATCHING]"
}

Write-Box "$FunctionName" "$subtitle"

# ── Step 3: Get disassembly of the compiled function ──────────────────
$container = 'bh-container'
$disasmFile = "/tmp/${FunctionName}_disasm.txt"

# Build compiler flags matching the project Makefile
$gccFlags = @(
    "-c", "-O2", "-mips2", "-G0",
    "-nostdinc",
    "-I.", "-Iinclude", "-Iinclude/2.0I", "-Iinclude/libc",
    "-Iassets",
    "-Isrc.us", "-Isrc.us/libultra/audio",
    "-D_LANGUAGE_C", "-D_FINALROM", "-DF3DEX_GBI", "-DWIN32", "-DSSSV", "-DNDEBUG", "-DVERSION_US"
)

$elfPath = "build/bh.us.elf"
$compiledObj = "/tmp/${FunctionName}_compiled.o"

if ((-not $isNonMatching) -and (-not $ForceCompile)) {
    # ── Function is in the ELF, disassemble directly ────────────────
    ColorWrite '  Layout from: ' 'Gray'
    Write-Host 'compiled ELF (build/bh.us.elf)'
    Write-Host ''

    $getDisasm = "mips-linux-gnu-objdump -d --start-address=0x80000000 --stop-address=0x80000001 build/bh.us.elf 2>/dev/null; " +
                 "mips-linux-gnu-objdump -t build/bh.us.elf | grep ' $FunctionName$' | head -1"
    $symInfo = docker exec $container bash -c "cd /bh && $getDisasm 2>&1"
    
    # Get the function address and size from the ELF symbol table
    $symCmd = "mips-linux-gnu-objdump -t build/bh.us.elf | grep ' $FunctionName$' | head -1"
    $symLine = docker exec $container bash -c "cd /bh && $symCmd 2>&1"
    
    if (-not $symLine) {
        Write-Error "Function '$FunctionName' not found in ELF symbol table."
        exit 1
    }
    
    # Parse: "80084980 g     F .overlay_gameplay_inside       0000028c func_80084980_16CA40"
    $symEsc = [Regex]::Escape($FunctionName)
    if ($symLine -match "^([0-9a-fA-F]+)\s+g\s+F\s+\S+\s+([0-9a-fA-F]+)\s+$symEsc$") {
        $funcAddr = [Convert]::ToUInt64($Matches[1], 16)
        $funcSize = [Convert]::ToUInt64($Matches[2], 16)
    } else {
        Write-Error "Could not parse symbol line: $symLine"
        exit 1
    }
    
    $startAddr = "0x" + $funcAddr.ToString('X8')
    $endAddr = "0x" + ($funcAddr + $funcSize).ToString('X8')
    
    $disasmCmd = "mips-linux-gnu-objdump -d --start-address=$startAddr --stop-address=$endAddr build/bh.us.elf 2>&1"
    $disasmOutput = docker exec $container bash -c "cd /bh && $disasmCmd"
    
} else {
    # ── Function is NON_MATCHING, compile extracted function ────────
    ColorWrite '  Layout from: ' 'Gray'
    Write-Host "compiled C (extracted + compiled with mips-linux-gnu-gcc)"
    Write-Host ''
    
    # Step 1: Preprocess with -DNON_MATCHING
    $ppFlags = "-E -DNON_MATCHING $($gccFlags -join ' ')"
    $ppCmd = "mips-linux-gnu-gcc $ppFlags -o /tmp/${FunctionName}_pp.c $SourceFile 2>&1"
    docker exec $container bash -c "cd /bh && $ppCmd" 2>&1 | Out-Null
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Preprocessing failed." -ForegroundColor Red
        exit 1
    }
    
    # Step 2-4: Extract function, wrap, compile via helper script
    $scriptPath = "$PSScriptRoot\_compile_func2.sh"
    docker cp "$scriptPath" "${container}:/tmp/compile_helper.sh" 2>&1 | Out-Null
    $buildResult = docker exec $container bash -c "chmod +x /tmp/compile_helper.sh && /tmp/compile_helper.sh $FunctionName 2>&1"
    
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Compilation failed. Trying IDO recompiler..." -ForegroundColor Yellow
        
        $idoFlags = "-c -O2 -G0 -I . -I include -I include/2.0I -I include/libc -I assets -I src.us -I src.us/libultra/audio -D_LANGUAGE_C -D_FINALROM -DF3DEX_GBI -DWIN32 -DSSSV -DNDEBUG -DVERSION_US"
        $idoCmd = "cd /bh && tools/ido5.3_recomp/cc $idoFlags -o /tmp/${FunctionName}_compiled.o /tmp/${FunctionName}_wrap.c"
        $idoResult = docker exec $container bash -c "$idoCmd 2>&1"
        
        if ($LASTEXITCODE -ne 0) {
            Write-Host "Error: Could not compile function." -ForegroundColor Red
            Write-Host "IDO: $idoResult" -ForegroundColor DarkGray
            exit 1
        }
    }
    
    # Step 5: Disassemble
    $disasmCmd = "mips-linux-gnu-objdump -d /tmp/${FunctionName}_compiled.o 2>&1"
    $disasmOutput = docker exec $container bash -c "cd /bh && $disasmCmd"
}

# ── Step 4: Parse the disassembly for stack ops ──────────────────────
$frameSize = 0
$stackOps = @{}  # offset -> { type, reg, desc }

$lines = $disasmOutput -split "`r`n|`n"
$inFunction = $false
$funcRe = [Regex]::Escape($FunctionName)

foreach ($line in $lines) {
    # Detect function entry (objdump format: "addr <FunctionName>:")
    if ($line -match "<$funcRe>:") {
        $inFunction = $true
        continue
    }
    if (-not $inFunction) { continue }
    
    # Stop at next function (any "addr <name>:")
    if ($line -match '^\s*[0-9a-fA-F]+\s+<[^>]+>:') { break }
    if ($line -match '^\s*\.\.\.$') { break }
    
    # Parse instruction: "8000091c:       27bdffc0        addiu   sp,sp,-64"
    if ($line -match '^\s*([0-9a-fA-F]+):\s+[0-9a-fA-F]+\s+(.+?)\s*$') {
        $instr = $Matches[2].Trim()
        
        # Prologue: addiu sp, sp, -N
        if ($instr -match '^addiu\s+sp,\s*sp,\s*(-?\d+)$') {
            $frameSize = [Math]::Abs([int]$Matches[1])
            continue
        }
        
        # sw reg, offset(sp)
        if ($instr -match '^sw\s+(\$?\w+),\s*(-?\d+)\(sp\)$') {
            $reg = $Matches[1] -replace '^\$', ''
            $off = [int]$Matches[2]
            if ($off -ge 0) {
                if ($reg -match '^a[0-3]$') {
                    $stackOps[$off] = @{ Type = 'arg';   Reg = "`$$reg"; Desc = "`$$reg (arg spill)" }
                } elseif ($reg -match '^(ra|s[0-7]|fp|gp)$') {
                    $stackOps[$off] = @{ Type = 'saved'; Reg = "`$$reg"; Desc = "`$$reg" }
                } else {
                    $stackOps[$off] = @{ Type = 'local'; Reg = "`$$reg"; Desc = "`$$reg (temp)" }
                }
            }
            continue
        }
        
        # swc1 $fN, offset(sp)
        if ($instr -match '^swc1\s+\$f(\d+),\s*(-?\d+)\(sp\)$') {
            $off = [int]$Matches[2]
            if ($off -ge 0) {
                $stackOps[$off] = @{ Type = 'local'; Reg = "`$f$($Matches[1])"; Desc = "`$f$($Matches[1]) (float)" }
            }
            continue
        }
        
        # sb/sh
        if ($instr -match '^(sb|sh)\s+(\$?\w+),\s*(-?\d+)\(sp\)$') {
            $op = $Matches[1]
            $reg = $Matches[2] -replace '^\$', ''
            $off = [int]$Matches[3]
            if ($off -ge 0 -and -not $stackOps.ContainsKey($off)) {
                $stackOps[$off] = @{ Type = 'local'; Reg = "`$$reg"; Desc = "`$$reg ($op)" }
            }
            continue
        }
        
        # lw/lh/lb reads
        if ($instr -match '^(lw|lh|lb|lbu|lhu|lwc1)\s+(\$?\w+),\s*(-?\d+)\(sp\)$') {
            $op = $Matches[1]
            $reg = $Matches[2] -replace '^\$', ''
            $off = [int]$Matches[3]
            if ($off -ge 0 -and -not $stackOps.ContainsKey($off)) {
                $stackOps[$off] = @{ Type = 'local'; Reg = "`$$reg"; Desc = "`$$reg (read via $op)" }
            }
            continue
        }
        
        # sd (doubleword store)
        if ($instr -match '^sd\s+(\$?\w+),\s*(-?\d+)\(sp\)$') {
            $reg = $Matches[1] -replace '^\$', ''
            $off = [int]$Matches[2]
            if ($off -ge 0 -and -not $stackOps.ContainsKey($off)) {
                $stackOps[$off] = @{ Type = 'local'; Reg = "`$$reg"; Desc = "`$$reg (sd)" }
            }
            # Doubleword also occupies sp+4
            if ($off + 4 -ge 0 -and -not $stackOps.ContainsKey($off + 4)) {
                $stackOps[$off + 4] = @{ Type = 'local'; Reg = "`$$reg (hi)"; Desc = "`$$reg (sd high)" }
            }
            continue
        }
    }
}

if ($frameSize -eq 0) {
    Write-Error "Could not determine frame size from disassembly. The function may not be in the compiled output."
    exit 1
}

# Check if the disassembly parsed any stack ops at all
if ($stackOps.Count -eq 0) {
    Write-Host ""
    Write-Host "  Stack ops found: none (leaf function? Disassembly below:)" -ForegroundColor Yellow
    Write-Host $disasmOutput -ForegroundColor DarkGray
    Write-Host ""
}

# ── Step 5: Build the layout ──────────────────────────────────────────
$slots = @{}
foreach ($off in $stackOps.Keys) {
    $info = $stackOps[$off]
    $alignedOff = $off - ($off % 4)
    if (-not $slots.ContainsKey($alignedOff)) {
        $slots[$alignedOff] = @{ OrigOffsets = @{} }
    }
    $slots[$alignedOff].OrigOffsets[$off] = $info
}

# ── Step 6: Display ──────────────────────────────────────────────────
$maxUsed = $frameSize
if ($stackOps.Keys.Count -gt 0) {
    $maxOp = ($stackOps.Keys | Sort-Object -Descending | Select-Object -First 1)
    if ($maxOp -gt $maxUsed) { $maxUsed = $maxOp }
}
$maxDisplay = $maxUsed
while ($maxDisplay % 4 -ne 0) { $maxDisplay++ }

# Function info line
Write-Host ("  Frame: 0x" + $frameSize.ToString('X') + " (" + $frameSize + " bytes)")
Write-Host ""

for ($addr = $maxDisplay; $addr -ge 0; $addr -= 4) {
    $offStr = 'sp+' + (Format-HexOffset $addr)
    ColorWrite ('  ' + $offStr + ':') 'Gray'

    # Frame boundary
    if ($addr -eq $frameSize) {
        ColorWrite '  --- frame top ---' 'DarkGray'
        Write-Host ''
    }

    $hasSlot = $slots.ContainsKey($addr)

    if ($hasSlot) {
        $slot = $slots[$addr]
        $descriptions = @()
        $origOffs = $slot.OrigOffsets.Keys | Sort-Object

        foreach ($o in $origOffs) {
            $info = $slot.OrigOffsets[$o]
            $desc = $info.Desc
            $displayColor = 'White'

            if ($info.Type -eq 'saved') { $displayColor = 'Yellow' }
            elseif ($info.Type -eq 'arg') { $displayColor = 'Green' }

            $descriptions += @{ Text = $desc; Color = $displayColor }
        }

        # Combine unique descriptions
        $uniqueDescs = @()
        $seen = @{}
        foreach ($d in $descriptions) {
            if (-not $seen.ContainsKey($d.Text)) {
                $seen[$d.Text] = $true
                $uniqueDescs += $d
            }
        }

        ColorWrite '    ' 'Gray'
        for ($di = 0; $di -lt $uniqueDescs.Count; $di++) {
            if ($di -gt 0) { ColorWrite ', ' 'Gray' }
            ColorWrite $uniqueDescs[$di].Text $uniqueDescs[$di].Color
        }
        Write-Host ''
    } else {
        ColorWrite '    [gap]' 'DarkGray'
        Write-Host ''
    }
}

Write-Host ''

# ── Legend ─────────────────────────────────────────────────────────────
ColorWrite 'Legend: ' 'DarkGray'
ColorWrite 'Saved ' 'Yellow'
ColorWrite 'Arg ' 'Green'
ColorWrite 'Local ' 'White'
ColorWrite '[gap]' 'DarkGray'
Write-Host ''
Write-Host ''

# ── Summary ────────────────────────────────────────────────────────────
$slotCount = $slots.Count
$gapCount = 0
for ($addr = 0; $addr -lt $frameSize; $addr += 4) {
    if (-not $slots.ContainsKey($addr)) { $gapCount++ }
}
Write-Host ('  Frame: 0x' + $frameSize.ToString('X') + ' (' + $frameSize + ' bytes)')
Write-Host ('  Used: ' + $slotCount + ', Gaps: ' + $gapCount)
Write-Host ''
