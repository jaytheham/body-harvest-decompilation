# gfxdis.ps1 - wrapper for gfxdis F3DEX display list disassembler
# Source: https://github.com/glankk/n64
#
# Usage:
#   tools\gfxdis.ps1 -w <word> ...      disassemble 32-bit word pairs (hi lo ...)
#   tools\gfxdis.ps1 -d <byte> ...      disassemble hex bytes
#   tools\gfxdis.ps1 -f <file>          disassemble binary file
#   tools\gfxdis.ps1 --gbi f3dex2       GBI variant: f3d / f3dex (default) / f3dex2
#   tools\gfxdis.ps1 --build            force rebuild of Docker image
#
# Example (display list from func_80097B74_A6B24):
#   tools\gfxdis.ps1 -w 03840010 801592A0 03820010 801592B0 E7000000 00000000 B7000000 00002000
#
# NOTE: No param() block - PowerShell 5.1 intercepts flags like -w (ambiguous
# with -WarningAction) when CmdletBinding or param() is present.

$gbi      = "f3dex"
$rebuild  = $false
$passArgs = [System.Collections.Generic.List[string]]::new()

$i = 0
while ($i -lt $args.Count) {
    $a = [string]$args[$i]
    if ($a -ceq '--gbi') {
        $i++; $gbi = [string]$args[$i]
    } elseif ($a -ceq '--build') {
        $rebuild = $true
    } else {
        $passArgs.Add($a)
    }
    $i++
}

$IMAGE = "bh-gfxdis"
$TOOLS = $PSScriptRoot
$N64   = Join-Path $TOOLS "n64"

# Ensure the n64 repo is present
if (-not (Test-Path (Join-Path $N64 "src\gfxdis\gfxdis.c"))) {
    Write-Host "Cloning glankk/n64 ..." -ForegroundColor Yellow
    git -C $TOOLS clone --depth=1 https://github.com/glankk/n64 n64
    if ($LASTEXITCODE -ne 0) { Write-Error "Clone failed"; exit 1 }
}

# Build Docker image if missing or forced
docker image inspect $IMAGE *>$null
if ($LASTEXITCODE -ne 0 -or $rebuild) {
    Write-Host "Building Docker image $IMAGE ..." -ForegroundColor Yellow
    docker build -t $IMAGE -f (Join-Path $TOOLS "Dockerfile.gfxdis") $TOOLS
    if ($LASTEXITCODE -ne 0) { Write-Error "Build failed"; exit 1 }
}

$binary = switch ($gbi) {
    "f3d"    { "gfxdis.f3d"    }
    "f3dex"  { "gfxdis.f3dex"  }
    "f3dex2" { "gfxdis.f3dex2" }
    default  { Write-Error "Unknown GBI '$gbi'. Use: f3d, f3dex, f3dex2"; exit 1 }
}

# Translate -f <filepath> into /work/<rel> inside the container
$repoRoot   = (Resolve-Path (Join-Path $TOOLS "..")).Path
$dockerArgs = [System.Collections.Generic.List[string]]::new()
$expectFile = $false
foreach ($a in $passArgs) {
    if ($expectFile) {
        $abs = Resolve-Path $a -ErrorAction SilentlyContinue
        if ($abs) {
            $rel = [System.IO.Path]::GetRelativePath($repoRoot, $abs.Path) -replace '\\', '/'
            $dockerArgs.Add("/work/$rel")
        } else {
            $dockerArgs.Add($a)
        }
        $expectFile = $false
    } elseif ($a -eq '-f') {
        $dockerArgs.Add($a); $expectFile = $true
    } else {
        $dockerArgs.Add($a)
    }
}

$mount = ($repoRoot -replace '\\', '/')
if ($mount -match '^([A-Za-z]):(.*)') {
    $mount = '/' + $Matches[1].ToLower() + $Matches[2]
}
docker run --rm -v "${mount}:/work" --entrypoint $binary $IMAGE @dockerArgs
