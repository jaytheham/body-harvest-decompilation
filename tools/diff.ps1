#!/usr/bin/env pwsh
# Helper script to run the asm-differ diff inside the bh-container.
# Usage:
#   .\asm-diff.ps1 <function name> [<ROM address of next function>]
#
# When the second argument is supplied it is prefixed with "0x" before
# being passed to diff.py.  If it is omitted the script will only pass the
# function name.

param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$FuncName,

    [Parameter(Mandatory = $false, Position = 1)]
    [string]$NextAddr
)

$Container = 'bh-container'

# build the command string that will be given to bash -c inside the container
$bashCmd = "tools/asm-differ/diff.py --no-pager --compress-matching 3 '$FuncName'"
if ($NextAddr) {
    # prefix with 0x when an address was provided
    $bashCmd += " 0x$NextAddr"
}

# execute the command in the container
docker exec -it $Container bash -c "$bashCmd"
